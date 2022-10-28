
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001c40')]      |
| SIG_REGION                | [('0x80003210', '0x80003900', '222 dwords')]      |
| COV_LABELS                | ukcrsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukcrsa16-01.S    |
| Total Number of coverpoints| 404     |
| Total Coverpoints Hit     | 398      |
| Total Signature Updates   | 222      |
| STAT1                     | 109      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 111     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001bf4]:UKCRSA16 t6, t5, t4
      [0x80001bf8]:sd t6, 1472(gp)
 -- Signature Address: 0x800038e0 Data: 0xF7BFFFFF0000FDFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 63487
      - rs2_h2_val == 64
      - rs2_h1_val == 64511
      - rs2_h0_val == 65535
      - rs1_h3_val == 63487
      - rs1_h2_val == 65527
      - rs1_h1_val == 61439
      - rs1_h0_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001c2c]:UKCRSA16 t6, t5, t4
      [0x80001c30]:sd t6, 1488(gp)
 -- Signature Address: 0x800038f0 Data: 0xBFF5FFFF0002FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 64511
      - rs2_h1_val == 65407
      - rs2_h0_val == 16
      - rs1_h3_val == 49151
      - rs1_h2_val == 65519
      - rs1_h0_val == 16384






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x12', 'rs2 : x12', 'rd : x29', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 2048', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800003d0]:UKCRSA16 t4, a2, a2
	-[0x800003d4]:sd t4, 0(sp)
Current Store : [0x800003d8] : sd a2, 8(sp) -- Store: [0x80003218]:0x000A000500110800




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x21', 'rs1 == rs2 == rd', 'rs2_h3_val == 63487', 'rs2_h2_val == 64', 'rs2_h1_val == 64511', 'rs2_h0_val == 65535', 'rs1_h3_val == 63487', 'rs1_h2_val == 64', 'rs1_h1_val == 64511', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000410]:UKCRSA16 s5, s5, s5
	-[0x80000414]:sd s5, 16(sp)
Current Store : [0x80000418] : sd s5, 24(sp) -- Store: [0x80003228]:0xF7BFF83F0000FFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x30', 'rd : x28', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 2048', 'rs2_h1_val == 512', 'rs2_h0_val == 49151', 'rs1_h3_val == 16384', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x8000044c]:UKCRSA16 t3, t1, t5
	-[0x80000450]:sd t3, 32(sp)
Current Store : [0x80000454] : sd t1, 40(sp) -- Store: [0x80003238]:0x4000000A10000003




Last Coverpoint : ['rs1 : x26', 'rs2 : x8', 'rd : x26', 'rs1 == rd != rs2', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h3_val == 256', 'rs2_h2_val == 49151', 'rs2_h1_val == 65533', 'rs2_h0_val == 65279', 'rs1_h3_val == 2', 'rs1_h1_val == 65533', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000484]:UKCRSA16 s10, s10, fp
	-[0x80000488]:sd s10, 48(sp)
Current Store : [0x8000048c] : sd s10, 56(sp) -- Store: [0x80003248]:0x0000010600FEFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x3', 'rd : x3', 'rs2 == rd != rs1', 'rs2_h3_val == 65534', 'rs2_h1_val == 8192', 'rs2_h0_val == 1', 'rs1_h3_val == 32', 'rs1_h2_val == 57343', 'rs1_h1_val == 32768', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800004b0]:UKCRSA16 gp, t5, gp
	-[0x800004b4]:sd gp, 64(sp)
Current Store : [0x800004b8] : sd t5, 72(sp) -- Store: [0x80003258]:0x0020DFFF80000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x0', 'rd : x4', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 65533', 'rs1_h2_val == 32', 'rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x800004ec]:UKCRSA16 tp, t4, zero
	-[0x800004f0]:sd tp, 80(sp)
Current Store : [0x800004f4] : sd t4, 88(sp) -- Store: [0x80003268]:0xFFFD0020FFEF0006




Last Coverpoint : ['rs1 : x1', 'rs2 : x26', 'rd : x7', 'rs2_h3_val == 21845', 'rs2_h1_val == 32767', 'rs2_h0_val == 57343', 'rs1_h3_val == 65531', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80000530]:UKCRSA16 t2, ra, s10
	-[0x80000534]:sd t2, 96(sp)
Current Store : [0x80000538] : sd ra, 104(sp) -- Store: [0x80003278]:0xFFFB00020007FFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x7', 'rd : x24', 'rs2_h3_val == 32767', 'rs2_h2_val == 512', 'rs2_h1_val == 65519', 'rs2_h0_val == 512', 'rs1_h2_val == 65519', 'rs1_h1_val == 32767', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000564]:UKCRSA16 s8, s1, t2
	-[0x80000568]:sd s8, 112(sp)
Current Store : [0x8000056c] : sd s1, 120(sp) -- Store: [0x80003288]:0x0006FFEF7FFFFDFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x16', 'rd : x19', 'rs2_h3_val == 49151', 'rs2_h2_val == 63487', 'rs2_h0_val == 1024', 'rs1_h3_val == 61439', 'rs1_h2_val == 32768', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800005a0]:UKCRSA16 s3, gp, a6
	-[0x800005a4]:sd s3, 128(sp)
Current Store : [0x800005a8] : sd gp, 136(sp) -- Store: [0x80003298]:0xEFFF8000000F0400




Last Coverpoint : ['rs1 : x0', 'rs2 : x14', 'rd : x31', 'rs1_h0_val == 0', 'rs2_h3_val == 57343', 'rs2_h0_val == 65527', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800005d4]:UKCRSA16 t6, zero, a4
	-[0x800005d8]:sd t6, 144(sp)
Current Store : [0x800005dc] : sd zero, 152(sp) -- Store: [0x800032a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x15', 'rd : x25', 'rs2_h3_val == 61439', 'rs2_h2_val == 8192', 'rs1_h3_val == 65534', 'rs1_h2_val == 16', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000610]:UKCRSA16 s9, a0, a5
	-[0x80000614]:sd s9, 160(sp)
Current Store : [0x80000618] : sd a0, 168(sp) -- Store: [0x800032b8]:0xFFFE0010DFFF000F




Last Coverpoint : ['rs1 : x15', 'rs2 : x5', 'rd : x0', 'rs2_h3_val == 64511', 'rs2_h1_val == 65407', 'rs2_h0_val == 16', 'rs1_h3_val == 49151', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000648]:UKCRSA16 zero, a5, t0
	-[0x8000064c]:sd zero, 176(sp)
Current Store : [0x80000650] : sd a5, 184(sp) -- Store: [0x800032c8]:0xBFFFFFEF00124000




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x6', 'rs2_h3_val == 65023', 'rs2_h1_val == 65471', 'rs2_h0_val == 64511', 'rs1_h2_val == 65503', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x80000684]:UKCRSA16 t1, a6, a3
	-[0x80000688]:sd t1, 192(sp)
Current Store : [0x8000068c] : sd a6, 200(sp) -- Store: [0x800032d8]:0x0003FFDF0009DFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x23', 'rd : x13', 'rs2_h3_val == 65279', 'rs2_h2_val == 4096', 'rs2_h1_val == 65279', 'rs2_h0_val == 256', 'rs1_h3_val == 1', 'rs1_h2_val == 8192', 'rs1_h1_val == 65535', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x800006bc]:UKCRSA16 a3, s2, s7
	-[0x800006c0]:sd a3, 208(sp)
Current Store : [0x800006c4] : sd s2, 216(sp) -- Store: [0x800032e8]:0x00012000FFFF8000




Last Coverpoint : ['rs1 : x13', 'rs2 : x25', 'rd : x12', 'rs2_h3_val == 65407', 'rs1_h3_val == 43690', 'rs1_h1_val == 65279', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800006f8]:UKCRSA16 a2, a3, s9
	-[0x800006fc]:sd a2, 224(sp)
Current Store : [0x80000700] : sd a3, 232(sp) -- Store: [0x800032f8]:0xAAAA0000FEFF0200




Last Coverpoint : ['rs1 : x17', 'rs2 : x31', 'rd : x30', 'rs2_h3_val == 65471', 'rs2_h1_val == 4', 'rs1_h3_val == 57343', 'rs1_h1_val == 32', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000734]:UKCRSA16 t5, a7, t6
	-[0x80000738]:sd t5, 240(sp)
Current Store : [0x8000073c] : sd a7, 248(sp) -- Store: [0x80003308]:0xDFFF000E00200100




Last Coverpoint : ['rs1 : x8', 'rs2 : x20', 'rd : x27', 'rs2_h3_val == 65503', 'rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x80000770]:UKCRSA16 s11, fp, s4
	-[0x80000774]:sd s11, 256(sp)
Current Store : [0x80000778] : sd fp, 264(sp) -- Store: [0x80003318]:0xEFFF0005FFFE0011




Last Coverpoint : ['rs1 : x5', 'rs2 : x29', 'rd : x10', 'rs2_h3_val == 65519', 'rs2_h2_val == 65503', 'rs1_h2_val == 65407', 'rs1_h1_val == 61439', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800007bc]:UKCRSA16 a0, t0, t4
	-[0x800007c0]:sd a0, 0(gp)
Current Store : [0x800007c4] : sd t0, 8(gp) -- Store: [0x80003328]:0xAAAAFF7FEFFF0010




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x20', 'rs2_h3_val == 65527', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x800007f8]:UKCRSA16 s4, s11, ra
	-[0x800007fc]:sd s4, 16(gp)
Current Store : [0x80000800] : sd s11, 24(gp) -- Store: [0x80003338]:0xFFFB0800FBFF000C




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rd : x17', 'rs2_h3_val == 65531', 'rs2_h0_val == 65519', 'rs1_h2_val == 65527', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x8000082c]:UKCRSA16 a7, t6, s3
	-[0x80000830]:sd a7, 32(gp)
Current Store : [0x80000834] : sd t6, 40(gp) -- Store: [0x80003348]:0x000FFFF7000AFFDF




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x11', 'rs2_h3_val == 65533', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000860]:UKCRSA16 a1, s9, tp
	-[0x80000864]:sd a1, 48(gp)
Current Store : [0x80000868] : sd s9, 56(gp) -- Store: [0x80003358]:0x00070000FFEF8000




Last Coverpoint : ['rs1 : x22', 'rs2 : x17', 'rd : x9', 'rs2_h3_val == 32768', 'rs2_h2_val == 2048', 'rs1_h1_val == 2', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x8000089c]:UKCRSA16 s1, s6, a7
	-[0x800008a0]:sd s1, 64(gp)
Current Store : [0x800008a4] : sd s6, 72(gp) -- Store: [0x80003368]:0x000900100002FFFE




Last Coverpoint : ['rs1 : x2', 'rs2 : x28', 'rd : x5', 'rs2_h3_val == 16384', 'rs2_h1_val == 65023']
Last Code Sequence : 
	-[0x800008d4]:UKCRSA16 t0, sp, t3
	-[0x800008d8]:sd t0, 80(gp)
Current Store : [0x800008dc] : sd sp, 88(gp) -- Store: [0x80003378]:0x000F0005FBFF0800




Last Coverpoint : ['rs1 : x23', 'rs2 : x27', 'rd : x22', 'rs2_h3_val == 8192', 'rs2_h2_val == 65531', 'rs2_h1_val == 43690', 'rs2_h0_val == 4', 'rs1_h1_val == 65023', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000918]:UKCRSA16 s6, s7, s11
	-[0x8000091c]:sd s6, 96(gp)
Current Store : [0x80000920] : sd s7, 104(gp) -- Store: [0x80003388]:0x40000020FDFFFFFD




Last Coverpoint : ['rs1 : x4', 'rs2 : x18', 'rd : x8', 'rs2_h3_val == 4096', 'rs2_h1_val == 1', 'rs1_h3_val == 65503', 'rs1_h1_val == 65503', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000950]:UKCRSA16 fp, tp, s2
	-[0x80000954]:sd fp, 112(gp)
Current Store : [0x80000958] : sd tp, 120(gp) -- Store: [0x80003398]:0xFFDF0009FFDF2000




Last Coverpoint : ['rs1 : x20', 'rs2 : x11', 'rd : x18', 'rs2_h3_val == 1024', 'rs2_h1_val == 49151', 'rs1_h3_val == 4', 'rs1_h2_val == 8']
Last Code Sequence : 
	-[0x80000984]:UKCRSA16 s2, s4, a1
	-[0x80000988]:sd s2, 128(gp)
Current Store : [0x8000098c] : sd s4, 136(gp) -- Store: [0x800033a8]:0x00040008000EFFDF




Last Coverpoint : ['rs1 : x11', 'rs2 : x6', 'rd : x14', 'rs2_h3_val == 512', 'rs2_h0_val == 65407', 'rs1_h3_val == 512', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x800009c0]:UKCRSA16 a4, a1, t1
	-[0x800009c4]:sd a4, 144(gp)
Current Store : [0x800009c8] : sd a1, 152(gp) -- Store: [0x800033b8]:0x0200000CFFDFF7FF




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x2', 'rs2_h3_val == 128', 'rs2_h1_val == 4096', 'rs1_h3_val == 256', 'rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x800009f4]:UKCRSA16 sp, s3, s6
	-[0x800009f8]:sd sp, 160(gp)
Current Store : [0x800009fc] : sd s3, 168(gp) -- Store: [0x800033c8]:0x0100FFEFAAAA0005




Last Coverpoint : ['rs1 : x7', 'rs2 : x2', 'rd : x1', 'rs2_h3_val == 64', 'rs2_h2_val == 57343', 'rs1_h2_val == 63487', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000a28]:UKCRSA16 ra, t2, sp
	-[0x80000a2c]:sd ra, 176(gp)
Current Store : [0x80000a30] : sd t2, 184(gp) -- Store: [0x800033d8]:0xAAAAF7FFFFFFFFEF




Last Coverpoint : ['rs1 : x14', 'rs2 : x24', 'rd : x23', 'rs2_h3_val == 32', 'rs1_h3_val == 65527', 'rs1_h1_val == 65531', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000a64]:UKCRSA16 s7, a4, s8
	-[0x80000a68]:sd s7, 192(gp)
Current Store : [0x80000a6c] : sd a4, 200(gp) -- Store: [0x800033e8]:0xFFF70011FFFBEFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x10', 'rd : x16', 'rs2_h3_val == 16', 'rs2_h1_val == 16384', 'rs2_h0_val == 63487', 'rs1_h2_val == 65531']
Last Code Sequence : 
	-[0x80000aa0]:UKCRSA16 a6, s8, a0
	-[0x80000aa4]:sd a6, 208(gp)
Current Store : [0x80000aa8] : sd s8, 216(gp) -- Store: [0x800033f8]:0xFFFDFFFB000C0100




Last Coverpoint : ['rs1 : x28', 'rs2 : x9', 'rd : x15', 'rs2_h3_val == 8', 'rs2_h2_val == 16384']
Last Code Sequence : 
	-[0x80000adc]:UKCRSA16 a5, t3, s1
	-[0x80000ae0]:sd a5, 224(gp)
Current Store : [0x80000ae4] : sd t3, 232(gp) -- Store: [0x80003408]:0x000FFFDF00000800




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 16', 'rs2_h1_val == 256', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80000b10]:UKCRSA16 t6, t5, t4
	-[0x80000b14]:sd t6, 240(gp)
Current Store : [0x80000b18] : sd t5, 248(gp) -- Store: [0x80003418]:0x00200400000C0010




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == 32', 'rs1_h3_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000b44]:UKCRSA16 t6, t5, t4
	-[0x80000b48]:sd t6, 256(gp)
Current Store : [0x80000b4c] : sd t5, 264(gp) -- Store: [0x80003428]:0x5555FFFB00035555




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 65533', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000b74]:UKCRSA16 t6, t5, t4
	-[0x80000b78]:sd t6, 272(gp)
Current Store : [0x80000b7c] : sd t5, 280(gp) -- Store: [0x80003438]:0x0007004020008000




Last Coverpoint : ['rs2_h3_val == 65535', 'rs2_h2_val == 2', 'rs2_h1_val == 57343']
Last Code Sequence : 
	-[0x80000bac]:UKCRSA16 t6, t5, t4
	-[0x80000bb0]:sd t6, 288(gp)
Current Store : [0x80000bb4] : sd t5, 296(gp) -- Store: [0x80003448]:0x000EFFDF000F0000




Last Coverpoint : ['rs2_h2_val == 64511', 'rs1_h1_val == 4', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000be8]:UKCRSA16 t6, t5, t4
	-[0x80000bec]:sd t6, 304(gp)
Current Store : [0x80000bf0] : sd t5, 312(gp) -- Store: [0x80003458]:0xFFFD000800040020




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000c1c]:UKCRSA16 t6, t5, t4
	-[0x80000c20]:sd t6, 320(gp)
Current Store : [0x80000c24] : sd t5, 328(gp) -- Store: [0x80003468]:0xFFFDFFEF00010100




Last Coverpoint : ['rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000c50]:UKCRSA16 t6, t5, t4
	-[0x80000c54]:sd t6, 336(gp)
Current Store : [0x80000c58] : sd t5, 344(gp) -- Store: [0x80003478]:0x000A00060012AAAA




Last Coverpoint : ['rs2_h0_val == 61439', 'rs1_h2_val == 43690', 'rs1_h1_val == 65471', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000c8c]:UKCRSA16 t6, t5, t4
	-[0x80000c90]:sd t6, 352(gp)
Current Store : [0x80000c94] : sd t5, 360(gp) -- Store: [0x80003488]:0x0009AAAAFFBF7FFF




Last Coverpoint : ['rs2_h2_val == 65527', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000cc8]:UKCRSA16 t6, t5, t4
	-[0x80000ccc]:sd t6, 368(gp)
Current Store : [0x80000cd0] : sd t5, 376(gp) -- Store: [0x80003498]:0x0100000EFFDFBFFF




Last Coverpoint : ['rs2_h2_val == 65279', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000d04]:UKCRSA16 t6, t5, t4
	-[0x80000d08]:sd t6, 384(gp)
Current Store : [0x80000d0c] : sd t5, 392(gp) -- Store: [0x800034a8]:0xBFFF0400FFDFFBFF




Last Coverpoint : ['rs2_h0_val == 65531', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000d30]:UKCRSA16 t6, t5, t4
	-[0x80000d34]:sd t6, 400(gp)
Current Store : [0x80000d38] : sd t5, 408(gp) -- Store: [0x800034b8]:0x000000130020FEFF




Last Coverpoint : ['rs1_h2_val == 65279', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x80000d6c]:UKCRSA16 t6, t5, t4
	-[0x80000d70]:sd t6, 416(gp)
Current Store : [0x80000d74] : sd t5, 424(gp) -- Store: [0x800034c8]:0x0002FEFF0012FF7F




Last Coverpoint : ['rs2_h3_val == 43690', 'rs2_h1_val == 2048', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x80000da8]:UKCRSA16 t6, t5, t4
	-[0x80000dac]:sd t6, 432(gp)
Current Store : [0x80000db0] : sd t5, 440(gp) -- Store: [0x800034d8]:0x000EFF7F2000FFBF




Last Coverpoint : ['rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x80000ddc]:UKCRSA16 t6, t5, t4
	-[0x80000de0]:sd t6, 448(gp)
Current Store : [0x80000de4] : sd t5, 456(gp) -- Store: [0x800034e8]:0x0005FFFBFFEFFFFB




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h1_val == 8', 'rs1_h3_val == 2048', 'rs1_h2_val == 49151', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000e10]:UKCRSA16 t6, t5, t4
	-[0x80000e14]:sd t6, 464(gp)
Current Store : [0x80000e18] : sd t5, 472(gp) -- Store: [0x800034f8]:0x0800BFFF00011000




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h2_val == 65533', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000e4c]:UKCRSA16 t6, t5, t4
	-[0x80000e50]:sd t6, 480(gp)
Current Store : [0x80000e54] : sd t5, 488(gp) -- Store: [0x80003508]:0x0012FFFDFFFD0080




Last Coverpoint : ['rs1_h2_val == 65471', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000e80]:UKCRSA16 t6, t5, t4
	-[0x80000e84]:sd t6, 496(gp)
Current Store : [0x80000e88] : sd t5, 504(gp) -- Store: [0x80003518]:0x0001FFBF000D0040




Last Coverpoint : ['rs2_h0_val == 43690', 'rs1_h3_val == 65519', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000ebc]:UKCRSA16 t6, t5, t4
	-[0x80000ec0]:sd t6, 512(gp)
Current Store : [0x80000ec4] : sd t5, 520(gp) -- Store: [0x80003528]:0xFFEFFFF700020008




Last Coverpoint : ['rs2_h2_val == 65471', 'rs2_h1_val == 128', 'rs1_h3_val == 32768', 'rs1_h2_val == 32767', 'rs1_h1_val == 128', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000ef0]:UKCRSA16 t6, t5, t4
	-[0x80000ef4]:sd t6, 528(gp)
Current Store : [0x80000ef8] : sd t5, 536(gp) -- Store: [0x80003538]:0x80007FFF00800004




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000f2c]:UKCRSA16 t6, t5, t4
	-[0x80000f30]:sd t6, 544(gp)
Current Store : [0x80000f34] : sd t5, 552(gp) -- Store: [0x80003548]:0x000E2000FFFE0002




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h3_val == 65407']
Last Code Sequence : 
	-[0x80000f68]:UKCRSA16 t6, t5, t4
	-[0x80000f6c]:sd t6, 560(gp)
Current Store : [0x80000f70] : sd t5, 568(gp) -- Store: [0x80003558]:0xFF7F00400013BFFF




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000f98]:UKCRSA16 t6, t5, t4
	-[0x80000f9c]:sd t6, 576(gp)
Current Store : [0x80000fa0] : sd t5, 584(gp) -- Store: [0x80003568]:0x0003040000128000




Last Coverpoint : ['rs2_h2_val == 61439']
Last Code Sequence : 
	-[0x80000fd4]:UKCRSA16 t6, t5, t4
	-[0x80000fd8]:sd t6, 592(gp)
Current Store : [0x80000fdc] : sd t5, 600(gp) -- Store: [0x80003578]:0xFFEF00090011FBFF




Last Coverpoint : ['rs2_h2_val == 65023']
Last Code Sequence : 
	-[0x80001018]:UKCRSA16 t6, t5, t4
	-[0x8000101c]:sd t6, 608(gp)
Current Store : [0x80001020] : sd t5, 616(gp) -- Store: [0x80003588]:0xFFDF00400080FFDF




Last Coverpoint : ['rs2_h2_val == 65407', 'rs1_h2_val == 1', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x80001054]:UKCRSA16 t6, t5, t4
	-[0x80001058]:sd t6, 624(gp)
Current Store : [0x8000105c] : sd t5, 632(gp) -- Store: [0x80003598]:0x55550001FFF70020




Last Coverpoint : ['rs2_h2_val == 65519']
Last Code Sequence : 
	-[0x80001090]:UKCRSA16 t6, t5, t4
	-[0x80001094]:sd t6, 640(gp)
Current Store : [0x80001098] : sd t5, 648(gp) -- Store: [0x800035a8]:0x01000009AAAA0011




Last Coverpoint : ['rs2_h2_val == 65534', 'rs1_h3_val == 64511']
Last Code Sequence : 
	-[0x800010cc]:UKCRSA16 t6, t5, t4
	-[0x800010d0]:sd t6, 656(gp)
Current Store : [0x800010d4] : sd t5, 664(gp) -- Store: [0x800035b8]:0xFBFF0011FFEF5555




Last Coverpoint : ['rs2_h2_val == 32768']
Last Code Sequence : 
	-[0x80001100]:UKCRSA16 t6, t5, t4
	-[0x80001104]:sd t6, 672(gp)
Current Store : [0x80001108] : sd t5, 680(gp) -- Store: [0x800035c8]:0x00050000FFEFDFFF




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x8000113c]:UKCRSA16 t6, t5, t4
	-[0x80001140]:sd t6, 688(gp)
Current Store : [0x80001144] : sd t5, 696(gp) -- Store: [0x800035d8]:0xFFFE0006000ADFFF




Last Coverpoint : ['rs2_h2_val == 256']
Last Code Sequence : 
	-[0x80001178]:UKCRSA16 t6, t5, t4
	-[0x8000117c]:sd t6, 704(gp)
Current Store : [0x80001180] : sd t5, 712(gp) -- Store: [0x800035e8]:0xAAAA8000000A0080




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x800011b4]:UKCRSA16 t6, t5, t4
	-[0x800011b8]:sd t6, 720(gp)
Current Store : [0x800011bc] : sd t5, 728(gp) -- Store: [0x800035f8]:0xFFF7000A8000FEFF




Last Coverpoint : ['rs2_h2_val == 4']
Last Code Sequence : 
	-[0x800011ec]:UKCRSA16 t6, t5, t4
	-[0x800011f0]:sd t6, 736(gp)
Current Store : [0x800011f4] : sd t5, 744(gp) -- Store: [0x80003608]:0x0001000920004000




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h1_val == 32768', 'rs1_h3_val == 128', 'rs1_h2_val == 65535']
Last Code Sequence : 
	-[0x80001218]:UKCRSA16 t6, t5, t4
	-[0x8000121c]:sd t6, 752(gp)
Current Store : [0x80001220] : sd t5, 760(gp) -- Store: [0x80003618]:0x0080FFFFDFFFFEFF




Last Coverpoint : ['rs2_h2_val == 65535', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001254]:UKCRSA16 t6, t5, t4
	-[0x80001258]:sd t6, 768(gp)
Current Store : [0x8000125c] : sd t5, 776(gp) -- Store: [0x80003628]:0xAAAAFEFF5555DFFF




Last Coverpoint : ['rs2_h0_val == 65471', 'rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x80001290]:UKCRSA16 t6, t5, t4
	-[0x80001294]:sd t6, 784(gp)
Current Store : [0x80001298] : sd t5, 792(gp) -- Store: [0x80003638]:0x04000011DFFF0011




Last Coverpoint : ['rs2_h0_val == 65503']
Last Code Sequence : 
	-[0x800012cc]:UKCRSA16 t6, t5, t4
	-[0x800012d0]:sd t6, 800(gp)
Current Store : [0x800012d4] : sd t5, 808(gp) -- Store: [0x80003648]:0x4000000B00050009




Last Coverpoint : ['rs2_h1_val == 65527', 'rs2_h0_val == 65533', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80001308]:UKCRSA16 t6, t5, t4
	-[0x8000130c]:sd t6, 816(gp)
Current Store : [0x80001310] : sd t5, 824(gp) -- Store: [0x80003658]:0x40000080FDFF0010




Last Coverpoint : ['rs2_h0_val == 65534']
Last Code Sequence : 
	-[0x80001340]:UKCRSA16 t6, t5, t4
	-[0x80001344]:sd t6, 832(gp)
Current Store : [0x80001348] : sd t5, 840(gp) -- Store: [0x80003668]:0xDFFF000E0020FFFD




Last Coverpoint : ['rs2_h0_val == 32768', 'rs1_h1_val == 65407']
Last Code Sequence : 
	-[0x80001378]:UKCRSA16 t6, t5, t4
	-[0x8000137c]:sd t6, 848(gp)
Current Store : [0x80001380] : sd t5, 856(gp) -- Store: [0x80003678]:0x08000009FF7F0002




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800013a8]:UKCRSA16 t6, t5, t4
	-[0x800013ac]:sd t6, 864(gp)
Current Store : [0x800013b0] : sd t5, 872(gp) -- Store: [0x80003688]:0x0400000300050040




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h2_val == 256', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800013d4]:UKCRSA16 t6, t5, t4
	-[0x800013d8]:sd t6, 880(gp)
Current Store : [0x800013dc] : sd t5, 888(gp) -- Store: [0x80003698]:0x000F010004000000




Last Coverpoint : ['rs2_h1_val == 61439', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80001410]:UKCRSA16 t6, t5, t4
	-[0x80001414]:sd t6, 896(gp)
Current Store : [0x80001418] : sd t5, 904(gp) -- Store: [0x800036a8]:0x0100000F0000EFFF




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h2_val == 4096', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80001448]:UKCRSA16 t6, t5, t4
	-[0x8000144c]:sd t6, 912(gp)
Current Store : [0x80001450] : sd t5, 920(gp) -- Store: [0x800036b8]:0x0013100000100020




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80001484]:UKCRSA16 t6, t5, t4
	-[0x80001488]:sd t6, 928(gp)
Current Store : [0x8000148c] : sd t5, 936(gp) -- Store: [0x800036c8]:0xFF7F080000040080




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800014b8]:UKCRSA16 t6, t5, t4
	-[0x800014bc]:sd t6, 944(gp)
Current Store : [0x800014c0] : sd t5, 952(gp) -- Store: [0x800036d8]:0xF7FF7FFFFFEF0006




Last Coverpoint : ['rs2_h1_val == 65534', 'rs2_h0_val == 2', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800014e8]:UKCRSA16 t6, t5, t4
	-[0x800014ec]:sd t6, 960(gp)
Current Store : [0x800014f0] : sd t5, 968(gp) -- Store: [0x800036e8]:0x0200000C08000000




Last Coverpoint : ['rs2_h1_val == 65503']
Last Code Sequence : 
	-[0x80001520]:UKCRSA16 t6, t5, t4
	-[0x80001524]:sd t6, 976(gp)
Current Store : [0x80001528] : sd t5, 984(gp) -- Store: [0x800036f8]:0x400010000080FFFF




Last Coverpoint : ['rs1_h3_val == 32767', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001558]:UKCRSA16 t6, t5, t4
	-[0x8000155c]:sd t6, 992(gp)
Current Store : [0x80001560] : sd t5, 1000(gp) -- Store: [0x80003708]:0x7FFF40000006FBFF




Last Coverpoint : ['rs1_h3_val == 65023']
Last Code Sequence : 
	-[0x80001588]:UKCRSA16 t6, t5, t4
	-[0x8000158c]:sd t6, 1008(gp)
Current Store : [0x80001590] : sd t5, 1016(gp) -- Store: [0x80003718]:0xFDFF00050011000B




Last Coverpoint : ['rs1_h3_val == 65279']
Last Code Sequence : 
	-[0x800015bc]:UKCRSA16 t6, t5, t4
	-[0x800015c0]:sd t6, 1024(gp)
Current Store : [0x800015c4] : sd t5, 1032(gp) -- Store: [0x80003728]:0xFEFFAAAAFFFEAAAA




Last Coverpoint : ['rs1_h3_val == 65471']
Last Code Sequence : 
	-[0x800015f4]:UKCRSA16 t6, t5, t4
	-[0x800015f8]:sd t6, 1040(gp)
Current Store : [0x800015fc] : sd t5, 1048(gp) -- Store: [0x80003738]:0xFFBF000F000A1000




Last Coverpoint : ['rs1_h2_val == 61439']
Last Code Sequence : 
	-[0x80001630]:UKCRSA16 t6, t5, t4
	-[0x80001634]:sd t6, 1056(gp)
Current Store : [0x80001638] : sd t5, 1064(gp) -- Store: [0x80003748]:0x0400EFFF0001EFFF




Last Coverpoint : ['rs1_h2_val == 64511', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x8000166c]:UKCRSA16 t6, t5, t4
	-[0x80001670]:sd t6, 1072(gp)
Current Store : [0x80001674] : sd t5, 1080(gp) -- Store: [0x80003758]:0x0006FBFF02000800




Last Coverpoint : ['rs1_h2_val == 65023']
Last Code Sequence : 
	-[0x800016a8]:UKCRSA16 t6, t5, t4
	-[0x800016ac]:sd t6, 1088(gp)
Current Store : [0x800016b0] : sd t5, 1096(gp) -- Store: [0x80003768]:0x5555FDFF10008000




Last Coverpoint : ['rs1_h2_val == 65534']
Last Code Sequence : 
	-[0x800016e0]:UKCRSA16 t6, t5, t4
	-[0x800016e4]:sd t6, 1104(gp)
Current Store : [0x800016e8] : sd t5, 1112(gp) -- Store: [0x80003778]:0x7FFFFFFE5555FEFF




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h3_val == 16']
Last Code Sequence : 
	-[0x80001718]:UKCRSA16 t6, t5, t4
	-[0x8000171c]:sd t6, 1120(gp)
Current Store : [0x80001720] : sd t5, 1128(gp) -- Store: [0x80003788]:0x0010200000050400




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80001754]:UKCRSA16 t6, t5, t4
	-[0x80001758]:sd t6, 1136(gp)
Current Store : [0x8000175c] : sd t5, 1144(gp) -- Store: [0x80003798]:0x00100200000E0005




Last Coverpoint : ['rs2_h1_val == 63487', 'rs1_h1_val == 63487']
Last Code Sequence : 
	-[0x80001788]:UKCRSA16 t6, t5, t4
	-[0x8000178c]:sd t6, 1152(gp)
Current Store : [0x80001790] : sd t5, 1160(gp) -- Store: [0x800037a8]:0xFFFD0007F7FF7FFF




Last Coverpoint : ['rs1_h3_val == 8']
Last Code Sequence : 
	-[0x800017bc]:UKCRSA16 t6, t5, t4
	-[0x800017c0]:sd t6, 1168(gp)
Current Store : [0x800017c4] : sd t5, 1176(gp) -- Store: [0x800037b8]:0x0008000604000001




Last Coverpoint : ['rs1_h2_val == 4']
Last Code Sequence : 
	-[0x800017ec]:UKCRSA16 t6, t5, t4
	-[0x800017f0]:sd t6, 1184(gp)
Current Store : [0x800017f4] : sd t5, 1192(gp) -- Store: [0x800037c8]:0xBFFF00040007000A




Last Coverpoint : ['rs2_h1_val == 65531']
Last Code Sequence : 
	-[0x80001828]:UKCRSA16 t6, t5, t4
	-[0x8000182c]:sd t6, 1200(gp)
Current Store : [0x80001830] : sd t5, 1208(gp) -- Store: [0x800037d8]:0xBFFFFFFB00100006




Last Coverpoint : ['rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x80001868]:UKCRSA16 t6, t5, t4
	-[0x8000186c]:sd t6, 1216(gp)
Current Store : [0x80001870] : sd t5, 1224(gp) -- Store: [0x800037e8]:0x5555FFDFBFFF0007




Last Coverpoint : ['rs2_h2_val == 43690', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80001898]:UKCRSA16 t6, t5, t4
	-[0x8000189c]:sd t6, 1232(gp)
Current Store : [0x800018a0] : sd t5, 1240(gp) -- Store: [0x800037f8]:0x000BDFFFFF7F0006




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x800018cc]:UKCRSA16 t6, t5, t4
	-[0x800018d0]:sd t6, 1248(gp)
Current Store : [0x800018d4] : sd t5, 1256(gp) -- Store: [0x80003808]:0xFFBF0003FFF7FFDF




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x8000190c]:UKCRSA16 t6, t5, t4
	-[0x80001910]:sd t6, 1264(gp)
Current Store : [0x80001914] : sd t5, 1272(gp) -- Store: [0x80003818]:0x2000F7FFDFFF0006




Last Coverpoint : ['rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001948]:UKCRSA16 t6, t5, t4
	-[0x8000194c]:sd t6, 1280(gp)
Current Store : [0x80001950] : sd t5, 1288(gp) -- Store: [0x80003828]:0x10004000FFFD5555




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80001984]:UKCRSA16 t6, t5, t4
	-[0x80001988]:sd t6, 1296(gp)
Current Store : [0x8000198c] : sd t5, 1304(gp) -- Store: [0x80003838]:0x0009FFBF0001AAAA




Last Coverpoint : ['rs2_h1_val == 65535']
Last Code Sequence : 
	-[0x800019c0]:UKCRSA16 t6, t5, t4
	-[0x800019c4]:sd t6, 1312(gp)
Current Store : [0x800019c8] : sd t5, 1320(gp) -- Store: [0x80003848]:0x000F000A000A0200




Last Coverpoint : ['rs1_h3_val == 64']
Last Code Sequence : 
	-[0x800019f4]:UKCRSA16 t6, t5, t4
	-[0x800019f8]:sd t6, 1328(gp)
Current Store : [0x800019fc] : sd t5, 1336(gp) -- Store: [0x80003858]:0x004000208000FFFD




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80001a30]:UKCRSA16 t6, t5, t4
	-[0x80001a34]:sd t6, 1344(gp)
Current Store : [0x80001a38] : sd t5, 1352(gp) -- Store: [0x80003868]:0x2000FFFF40000003




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80001a6c]:UKCRSA16 t6, t5, t4
	-[0x80001a70]:sd t6, 1360(gp)
Current Store : [0x80001a74] : sd t5, 1368(gp) -- Store: [0x80003878]:0x0100002000030002




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80001a9c]:UKCRSA16 t6, t5, t4
	-[0x80001aa0]:sd t6, 1376(gp)
Current Store : [0x80001aa4] : sd t5, 1384(gp) -- Store: [0x80003888]:0x0012002001002000




Last Coverpoint : ['rs1_h3_val == 65535']
Last Code Sequence : 
	-[0x80001ad0]:UKCRSA16 t6, t5, t4
	-[0x80001ad4]:sd t6, 1392(gp)
Current Store : [0x80001ad8] : sd t5, 1400(gp) -- Store: [0x80003898]:0xFFFF00015555FFBF




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80001b0c]:UKCRSA16 t6, t5, t4
	-[0x80001b10]:sd t6, 1408(gp)
Current Store : [0x80001b14] : sd t5, 1416(gp) -- Store: [0x800038a8]:0x0040FBFF0040000B




Last Coverpoint : ['rs2_h0_val == 65023']
Last Code Sequence : 
	-[0x80001b44]:UKCRSA16 t6, t5, t4
	-[0x80001b48]:sd t6, 1424(gp)
Current Store : [0x80001b4c] : sd t5, 1432(gp) -- Store: [0x800038b8]:0x0011FFF780004000




Last Coverpoint : ['rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001b7c]:UKCRSA16 t6, t5, t4
	-[0x80001b80]:sd t6, 1440(gp)
Current Store : [0x80001b84] : sd t5, 1448(gp) -- Store: [0x800038c8]:0x000B5555000A2000




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80001bb4]:UKCRSA16 t6, t5, t4
	-[0x80001bb8]:sd t6, 1456(gp)
Current Store : [0x80001bbc] : sd t5, 1464(gp) -- Store: [0x800038d8]:0x000900020008BFFF




Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 63487', 'rs2_h2_val == 64', 'rs2_h1_val == 64511', 'rs2_h0_val == 65535', 'rs1_h3_val == 63487', 'rs1_h2_val == 65527', 'rs1_h1_val == 61439', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80001bf4]:UKCRSA16 t6, t5, t4
	-[0x80001bf8]:sd t6, 1472(gp)
Current Store : [0x80001bfc] : sd t5, 1480(gp) -- Store: [0x800038e8]:0xF7FFFFF7EFFF0200




Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 64511', 'rs2_h1_val == 65407', 'rs2_h0_val == 16', 'rs1_h3_val == 49151', 'rs1_h2_val == 65519', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80001c2c]:UKCRSA16 t6, t5, t4
	-[0x80001c30]:sd t6, 1488(gp)
Current Store : [0x80001c34] : sd t5, 1496(gp) -- Store: [0x800038f8]:0xBFFFFFEF00124000





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

|s.no|            signature             |                                                                                                                                                                                                               coverpoints                                                                                                                                                                                                               |                                  code                                   |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0005000F00000811|- opcode : ukcrsa16<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 2048<br> - rs1_h0_val == 2048<br>      |[0x800003d0]:UKCRSA16 t4, a2, a2<br> [0x800003d4]:sd t4, 0(sp)<br>       |
|   2|[0x80003220]<br>0xF7BFF83F0000FFFF|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs2_h3_val == 63487<br> - rs2_h2_val == 64<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 65535<br> - rs1_h3_val == 63487<br> - rs1_h2_val == 64<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 65535<br>                                                                                                                                                          |[0x80000410]:UKCRSA16 s5, s5, s5<br> [0x80000414]:sd s5, 16(sp)<br>      |
|   3|[0x80003230]<br>0x3FF6080A00000203|- rs1 : x6<br> - rs2 : x30<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 2048<br> - rs2_h1_val == 512<br> - rs2_h0_val == 49151<br> - rs1_h3_val == 16384<br> - rs1_h1_val == 4096<br> |[0x8000044c]:UKCRSA16 t3, t1, t5<br> [0x80000450]:sd t3, 32(sp)<br>      |
|   4|[0x80003240]<br>0x0000010600FEFFFF|- rs1 : x26<br> - rs2 : x8<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h3_val == 256<br> - rs2_h2_val == 49151<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 65279<br> - rs1_h3_val == 2<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 65527<br>                                                                                                                |[0x80000484]:UKCRSA16 s10, s10, fp<br> [0x80000488]:sd s10, 48(sp)<br>   |
|   5|[0x80003250]<br>0x0016FFFF7FFF2001|- rs1 : x30<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs2_h3_val == 65534<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 1<br> - rs1_h3_val == 32<br> - rs1_h2_val == 57343<br> - rs1_h1_val == 32768<br> - rs1_h0_val == 1<br>                                                                                                                                                                                            |[0x800004b0]:UKCRSA16 gp, t5, gp<br> [0x800004b4]:sd gp, 64(sp)<br>      |
|   6|[0x80003260]<br>0xFFFD0020FFEF0006|- rs1 : x29<br> - rs2 : x0<br> - rd : x4<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 65533<br> - rs1_h2_val == 32<br> - rs1_h1_val == 65519<br>                                                                                                                                                                                                                          |[0x800004ec]:UKCRSA16 tp, t4, zero<br> [0x800004f0]:sd tp, 80(sp)<br>    |
|   7|[0x80003270]<br>0xFFF555570000FFFF|- rs1 : x1<br> - rs2 : x26<br> - rd : x7<br> - rs2_h3_val == 21845<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 57343<br> - rs1_h3_val == 65531<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                               |[0x80000530]:UKCRSA16 t2, ra, s10<br> [0x80000534]:sd t2, 96(sp)<br>     |
|   8|[0x80003280]<br>0x0000FFFF7DFFFFFF|- rs1 : x9<br> - rs2 : x7<br> - rd : x24<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 512<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 512<br> - rs1_h2_val == 65519<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                           |[0x80000564]:UKCRSA16 s8, s1, t2<br> [0x80000568]:sd s8, 112(sp)<br>     |
|   9|[0x80003290]<br>0x0000FFFF0000FFFF|- rs1 : x3<br> - rs2 : x16<br> - rd : x19<br> - rs2_h3_val == 49151<br> - rs2_h2_val == 63487<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 61439<br> - rs1_h2_val == 32768<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                  |[0x800005a0]:UKCRSA16 s3, gp, a6<br> [0x800005a4]:sd s3, 128(sp)<br>     |
|  10|[0x800032a0]<br>0x0000DFFF00000012|- rs1 : x0<br> - rs2 : x14<br> - rd : x31<br> - rs1_h0_val == 0<br> - rs2_h3_val == 57343<br> - rs2_h0_val == 65527<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                |[0x800005d4]:UKCRSA16 t6, zero, a4<br> [0x800005d8]:sd t6, 144(sp)<br>   |
|  11|[0x800032b0]<br>0xDFFEF00FDFEC020F|- rs1 : x10<br> - rs2 : x15<br> - rd : x25<br> - rs2_h3_val == 61439<br> - rs2_h2_val == 8192<br> - rs1_h3_val == 65534<br> - rs1_h2_val == 16<br> - rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                             |[0x80000610]:UKCRSA16 s9, a0, a5<br> [0x80000614]:sd s9, 160(sp)<br>     |
|  12|[0x800032c0]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x5<br> - rd : x0<br> - rs2_h3_val == 64511<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 16<br> - rs1_h3_val == 49151<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                              |[0x80000648]:UKCRSA16 zero, a5, t0<br> [0x8000064c]:sd zero, 176(sp)<br> |
|  13|[0x800032d0]<br>0x0000FFFF0000FFFF|- rs1 : x16<br> - rs2 : x13<br> - rd : x6<br> - rs2_h3_val == 65023<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 64511<br> - rs1_h2_val == 65503<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                          |[0x80000684]:UKCRSA16 t1, a6, a3<br> [0x80000688]:sd t1, 192(sp)<br>     |
|  14|[0x800032e0]<br>0x0000FFFFFEFFFFFF|- rs1 : x18<br> - rs2 : x23<br> - rd : x13<br> - rs2_h3_val == 65279<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 256<br> - rs1_h3_val == 1<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                   |[0x800006bc]:UKCRSA16 a3, s2, s7<br> [0x800006c0]:sd a3, 208(sp)<br>     |
|  15|[0x800032f0]<br>0xAAA7FF7F03000203|- rs1 : x13<br> - rs2 : x25<br> - rd : x12<br> - rs2_h3_val == 65407<br> - rs1_h3_val == 43690<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                     |[0x800006f8]:UKCRSA16 a2, a3, s9<br> [0x800006fc]:sd a2, 224(sp)<br>     |
|  16|[0x80003300]<br>0xDFF1FFCD000D0104|- rs1 : x17<br> - rs2 : x31<br> - rd : x30<br> - rs2_h3_val == 65471<br> - rs2_h1_val == 4<br> - rs1_h3_val == 57343<br> - rs1_h1_val == 32<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                  |[0x80000734]:UKCRSA16 t5, a7, t6<br> [0x80000738]:sd t5, 240(sp)<br>     |
|  17|[0x80003310]<br>0xEFFAFFE4FFED0014|- rs1 : x8<br> - rs2 : x20<br> - rd : x27<br> - rs2_h3_val == 65503<br> - rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000770]:UKCRSA16 s11, fp, s4<br> [0x80000774]:sd s11, 256(sp)<br>   |
|  18|[0x80003320]<br>0x0000FFFFEFF40015|- rs1 : x5<br> - rs2 : x29<br> - rd : x10<br> - rs2_h3_val == 65519<br> - rs2_h2_val == 65503<br> - rs1_h2_val == 65407<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                             |[0x800007bc]:UKCRSA16 a0, t0, t4<br> [0x800007c0]:sd a0, 0(gp)<br>       |
|  19|[0x80003330]<br>0xFFEEFFFF0000001E|- rs1 : x27<br> - rs2 : x1<br> - rd : x20<br> - rs2_h3_val == 65527<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                         |[0x800007f8]:UKCRSA16 s4, s11, ra<br> [0x800007fc]:sd s4, 16(gp)<br>     |
|  20|[0x80003340]<br>0x0000FFFF0000FFFF|- rs1 : x31<br> - rs2 : x19<br> - rd : x17<br> - rs2_h3_val == 65531<br> - rs2_h0_val == 65519<br> - rs1_h2_val == 65527<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                   |[0x8000082c]:UKCRSA16 a7, t6, s3<br> [0x80000830]:sd a7, 32(gp)<br>      |
|  21|[0x80003350]<br>0x0000FFFDEFEF800D|- rs1 : x25<br> - rs2 : x4<br> - rd : x11<br> - rs2_h3_val == 65533<br> - rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000860]:UKCRSA16 a1, s9, tp<br> [0x80000864]:sd a1, 48(gp)<br>      |
|  22|[0x80003360]<br>0x000080100000FFFF|- rs1 : x22<br> - rs2 : x17<br> - rd : x9<br> - rs2_h3_val == 32768<br> - rs2_h2_val == 2048<br> - rs1_h1_val == 2<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                                         |[0x8000089c]:UKCRSA16 s1, s6, a7<br> [0x800008a0]:sd s1, 64(gp)<br>      |
|  23|[0x80003370]<br>0x000540050000FFFF|- rs1 : x2<br> - rs2 : x28<br> - rd : x5<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 65023<br>                                                                                                                                                                                                                                                                                                                                         |[0x800008d4]:UKCRSA16 t0, sp, t3<br> [0x800008d8]:sd t0, 80(gp)<br>      |
|  24|[0x80003380]<br>0x00002020FDFBFFFF|- rs1 : x23<br> - rs2 : x27<br> - rd : x22<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 65531<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 4<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                                    |[0x80000918]:UKCRSA16 s6, s7, s11<br> [0x8000091c]:sd s6, 96(gp)<br>     |
|  25|[0x80003390]<br>0x3FE01009FFDE2001|- rs1 : x4<br> - rs2 : x18<br> - rd : x8<br> - rs2_h3_val == 4096<br> - rs2_h1_val == 1<br> - rs1_h3_val == 65503<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                 |[0x80000950]:UKCRSA16 fp, tp, s2<br> [0x80000954]:sd fp, 112(gp)<br>     |
|  26|[0x800033a0]<br>0x000004080000FFFF|- rs1 : x20<br> - rs2 : x11<br> - rd : x18<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 49151<br> - rs1_h3_val == 4<br> - rs1_h2_val == 8<br>                                                                                                                                                                                                                                                                                            |[0x80000984]:UKCRSA16 s2, s4, a1<br> [0x80000988]:sd s2, 128(gp)<br>     |
|  27|[0x800033b0]<br>0x0000020C0060F805|- rs1 : x11<br> - rs2 : x6<br> - rd : x14<br> - rs2_h3_val == 512<br> - rs2_h0_val == 65407<br> - rs1_h3_val == 512<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                        |[0x800009c0]:UKCRSA16 a4, a1, t1<br> [0x800009c4]:sd a4, 144(gp)<br>     |
|  28|[0x800033c0]<br>0x0000FFFFAAA01005|- rs1 : x19<br> - rs2 : x22<br> - rd : x2<br> - rs2_h3_val == 128<br> - rs2_h1_val == 4096<br> - rs1_h3_val == 256<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                         |[0x800009f4]:UKCRSA16 sp, s3, s6<br> [0x800009f8]:sd sp, 160(gp)<br>     |
|  29|[0x800033d0]<br>0x0000F83F0010FFF9|- rs1 : x7<br> - rs2 : x2<br> - rd : x1<br> - rs2_h3_val == 64<br> - rs2_h2_val == 57343<br> - rs1_h2_val == 63487<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                         |[0x80000a28]:UKCRSA16 ra, t2, sp<br> [0x80000a2c]:sd ra, 176(gp)<br>     |
|  30|[0x800033e0]<br>0x001800310000FFFF|- rs1 : x14<br> - rs2 : x24<br> - rd : x23<br> - rs2_h3_val == 32<br> - rs1_h3_val == 65527<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                      |[0x80000a64]:UKCRSA16 s7, a4, s8<br> [0x80000a68]:sd s7, 192(gp)<br>     |
|  31|[0x800033f0]<br>0xDFFDFFFF00004100|- rs1 : x24<br> - rs2 : x10<br> - rd : x16<br> - rs2_h3_val == 16<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 63487<br> - rs1_h2_val == 65531<br>                                                                                                                                                                                                                                                                                      |[0x80000aa0]:UKCRSA16 a6, s8, a0<br> [0x80000aa4]:sd a6, 208(gp)<br>     |
|  32|[0x80003400]<br>0x0000FFE7000087FF|- rs1 : x28<br> - rs2 : x9<br> - rd : x15<br> - rs2_h3_val == 8<br> - rs2_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000adc]:UKCRSA16 a5, t3, s1<br> [0x80000ae0]:sd a5, 224(gp)<br>     |
|  33|[0x80003410]<br>0x0010040400000110|- rs2_h3_val == 4<br> - rs2_h2_val == 16<br> - rs2_h1_val == 256<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000b10]:UKCRSA16 t6, t5, t4<br> [0x80000b14]:sd t6, 240(gp)<br>     |
|  34|[0x80003420]<br>0x5535FFFD00006555|- rs2_h3_val == 2<br> - rs2_h2_val == 32<br> - rs1_h3_val == 21845<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000b44]:UKCRSA16 t6, t5, t4<br> [0x80000b48]:sd t6, 256(gp)<br>     |
|  35|[0x80003430]<br>0x000000410000800F|- rs2_h3_val == 1<br> - rs2_h2_val == 65533<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b74]:UKCRSA16 t6, t5, t4<br> [0x80000b78]:sd t6, 272(gp)<br>     |
|  36|[0x80003440]<br>0x000CFFFF0003DFFF|- rs2_h3_val == 65535<br> - rs2_h2_val == 2<br> - rs2_h1_val == 57343<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000bac]:UKCRSA16 t6, t5, t4<br> [0x80000bb0]:sd t6, 288(gp)<br>     |
|  37|[0x80003450]<br>0x03FE80080000002A|- rs2_h2_val == 64511<br> - rs1_h1_val == 4<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80000be8]:UKCRSA16 t6, t5, t4<br> [0x80000bec]:sd t6, 304(gp)<br>     |
|  38|[0x80003460]<br>0xFFEDFFEF00000101|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000c1c]:UKCRSA16 t6, t5, t4<br> [0x80000c20]:sd t6, 320(gp)<br>     |
|  39|[0x80003470]<br>0x000A00150008BAAA|- rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c50]:UKCRSA16 t6, t5, t4<br> [0x80000c54]:sd t6, 336(gp)<br>     |
|  40|[0x80003480]<br>0x0000FFFF0FC09FFF|- rs2_h0_val == 61439<br> - rs1_h2_val == 43690<br> - rs1_h1_val == 65471<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000c8c]:UKCRSA16 t6, t5, t4<br> [0x80000c90]:sd t6, 352(gp)<br>     |
|  41|[0x80003490]<br>0x0000FFFFFFD0C000|- rs2_h2_val == 65527<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000cc8]:UKCRSA16 t6, t5, t4<br> [0x80000ccc]:sd t6, 368(gp)<br>     |
|  42|[0x800034a0]<br>0x0000FBFFFFD3FC08|- rs2_h2_val == 65279<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d04]:UKCRSA16 t6, t5, t4<br> [0x80000d08]:sd t6, 384(gp)<br>     |
|  43|[0x800034b0]<br>0x000000230000FFFF|- rs2_h0_val == 65531<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d30]:UKCRSA16 t6, t5, t4<br> [0x80000d34]:sd t6, 400(gp)<br>     |
|  44|[0x800034c0]<br>0x0000FF120000FFFF|- rs1_h2_val == 65279<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d6c]:UKCRSA16 t6, t5, t4<br> [0x80000d70]:sd t6, 416(gp)<br>     |
|  45|[0x800034d0]<br>0x0000FFFF1FFAFFFF|- rs2_h3_val == 43690<br> - rs2_h1_val == 2048<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000da8]:UKCRSA16 t6, t5, t4<br> [0x80000dac]:sd t6, 432(gp)<br>     |
|  46|[0x800034e0]<br>0x0000FFFFFFEAFFFF|- rs1_h0_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000ddc]:UKCRSA16 t6, t5, t4<br> [0x80000de0]:sd t6, 448(gp)<br>     |
|  47|[0x800034f0]<br>0x0780C00100001008|- rs2_h2_val == 128<br> - rs2_h1_val == 8<br> - rs1_h3_val == 2048<br> - rs1_h2_val == 49151<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                |[0x80000e10]:UKCRSA16 t6, t5, t4<br> [0x80000e14]:sd t6, 464(gp)<br>     |
|  48|[0x80003500]<br>0x0000FFFFFFF60090|- rs2_h1_val == 16<br> - rs1_h2_val == 65533<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x80000e4c]:UKCRSA16 t6, t5, t4<br> [0x80000e50]:sd t6, 480(gp)<br>     |
|  49|[0x80003510]<br>0x0000FFC300020140|- rs1_h2_val == 65471<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e80]:UKCRSA16 t6, t5, t4<br> [0x80000e84]:sd t6, 496(gp)<br>     |
|  50|[0x80003520]<br>0xF7EFFFFF00000108|- rs2_h0_val == 43690<br> - rs1_h3_val == 65519<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000ebc]:UKCRSA16 t6, t5, t4<br> [0x80000ec0]:sd t6, 512(gp)<br>     |
|  51|[0x80003530]<br>0x00008008006D0084|- rs2_h2_val == 65471<br> - rs2_h1_val == 128<br> - rs1_h3_val == 32768<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 128<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                      |[0x80000ef0]:UKCRSA16 t6, t5, t4<br> [0x80000ef4]:sd t6, 528(gp)<br>     |
|  52|[0x80003540]<br>0x000B200B007F0014|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f2c]:UKCRSA16 t6, t5, t4<br> [0x80000f30]:sd t6, 544(gp)<br>     |
|  53|[0x80003550]<br>0xAA2A04400003C1FF|- rs2_h2_val == 21845<br> - rs1_h3_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f68]:UKCRSA16 t6, t5, t4<br> [0x80000f6c]:sd t6, 560(gp)<br>     |
|  54|[0x80003560]<br>0x00000411000D8020|- rs2_h2_val == 32767<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000f98]:UKCRSA16 t6, t5, t4<br> [0x80000f9c]:sd t6, 576(gp)<br>     |
|  55|[0x80003570]<br>0x0FF000100010FC06|- rs2_h2_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000fd4]:UKCRSA16 t6, t5, t4<br> [0x80000fd8]:sd t6, 592(gp)<br>     |
|  56|[0x80003580]<br>0x01E002400000FFFF|- rs2_h2_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001018]:UKCRSA16 t6, t5, t4<br> [0x8000101c]:sd t6, 608(gp)<br>     |
|  57|[0x80003590]<br>0x00000041F7F7FE1F|- rs2_h2_val == 65407<br> - rs1_h2_val == 1<br> - rs1_h1_val == 65527<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80001054]:UKCRSA16 t6, t5, t4<br> [0x80001058]:sd t6, 624(gp)<br>     |
|  58|[0x800035a0]<br>0x00000010AA97FFD0|- rs2_h2_val == 65519<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001090]:UKCRSA16 t6, t5, t4<br> [0x80001094]:sd t6, 640(gp)<br>     |
|  59|[0x800035b0]<br>0x00000016FFE9FFFF|- rs2_h2_val == 65534<br> - rs1_h3_val == 64511<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x800010cc]:UKCRSA16 t6, t5, t4<br> [0x800010d0]:sd t6, 656(gp)<br>     |
|  60|[0x800035c0]<br>0x0000FFFEEFEFE002|- rs2_h2_val == 32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001100]:UKCRSA16 t6, t5, t4<br> [0x80001104]:sd t6, 672(gp)<br>     |
|  61|[0x800035d0]<br>0xFBFEC0050003E005|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000113c]:UKCRSA16 t6, t5, t4<br> [0x80001140]:sd t6, 688(gp)<br>     |
|  62|[0x800035e0]<br>0xA9AA90000000E07F|- rs2_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001178]:UKCRSA16 t6, t5, t4<br> [0x8000117c]:sd t6, 704(gp)<br>     |
|  63|[0x800035f0]<br>0xFFEF800A7FF6FF0F|- rs2_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800011b4]:UKCRSA16 t6, t5, t4<br> [0x800011b8]:sd t6, 720(gp)<br>     |
|  64|[0x80003600]<br>0x0000001400005000|- rs2_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800011ec]:UKCRSA16 t6, t5, t4<br> [0x800011f0]:sd t6, 736(gp)<br>     |
|  65|[0x80003610]<br>0x007FFFFFDFFCFFFF|- rs2_h2_val == 1<br> - rs2_h1_val == 32768<br> - rs1_h3_val == 128<br> - rs1_h2_val == 65535<br>                                                                                                                                                                                                                                                                                                                                        |[0x80001218]:UKCRSA16 t6, t5, t4<br> [0x8000121c]:sd t6, 752(gp)<br>     |
|  66|[0x80003620]<br>0x0000FF010000FFFF|- rs2_h2_val == 65535<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001254]:UKCRSA16 t6, t5, t4<br> [0x80001258]:sd t6, 768(gp)<br>     |
|  67|[0x80003630]<br>0x03F9801100000023|- rs2_h0_val == 65471<br> - rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001290]:UKCRSA16 t6, t5, t4<br> [0x80001294]:sd t6, 784(gp)<br>     |
|  68|[0x80003640]<br>0x0000FFFF00000011|- rs2_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012cc]:UKCRSA16 t6, t5, t4<br> [0x800012d0]:sd t6, 800(gp)<br>     |
|  69|[0x80003650]<br>0x0000C07F0000FFFF|- rs2_h1_val == 65527<br> - rs2_h0_val == 65533<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80001308]:UKCRSA16 t6, t5, t4<br> [0x8000130c]:sd t6, 816(gp)<br>     |
|  70|[0x80003660]<br>0xDFFF100E0000FFFF|- rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001340]:UKCRSA16 t6, t5, t4<br> [0x80001344]:sd t6, 832(gp)<br>     |
|  71|[0x80003670]<br>0x07F100107F7F0008|- rs2_h0_val == 32768<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001378]:UKCRSA16 t6, t5, t4<br> [0x8000137c]:sd t6, 848(gp)<br>     |
|  72|[0x80003680]<br>0x03F100030000004D|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013a8]:UKCRSA16 t6, t5, t4<br> [0x800013ac]:sd t6, 864(gp)<br>     |
|  73|[0x80003690]<br>0x000005000000000B|- rs2_h0_val == 8192<br> - rs1_h2_val == 256<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                |[0x800013d4]:UKCRSA16 t6, t5, t4<br> [0x800013d8]:sd t6, 880(gp)<br>     |
|  74|[0x800036a0]<br>0x00F700170000FFFF|- rs2_h1_val == 61439<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001410]:UKCRSA16 t6, t5, t4<br> [0x80001414]:sd t6, 896(gp)<br>     |
|  75|[0x800036b0]<br>0x0000100F00000027|- rs2_h0_val == 64<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x80001448]:UKCRSA16 t6, t5, t4<br> [0x8000144c]:sd t6, 912(gp)<br>     |
|  76|[0x800036c0]<br>0xFF5FFFFF00000092|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001484]:UKCRSA16 t6, t5, t4<br> [0x80001488]:sd t6, 928(gp)<br>     |
|  77|[0x800036d0]<br>0xF7FA800BFFE71006|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800014b8]:UKCRSA16 t6, t5, t4<br> [0x800014bc]:sd t6, 944(gp)<br>     |
|  78|[0x800036e0]<br>0x01ED040C07FEFFFE|- rs2_h1_val == 65534<br> - rs2_h0_val == 2<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x800014e8]:UKCRSA16 t6, t5, t4<br> [0x800014ec]:sd t6, 960(gp)<br>     |
|  79|[0x800036f0]<br>0x3FF9FFFF0080FFFF|- rs2_h1_val == 65503<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001520]:UKCRSA16 t6, t5, t4<br> [0x80001524]:sd t6, 976(gp)<br>     |
|  80|[0x80003700]<br>0x000040000002FFFF|- rs1_h3_val == 32767<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001558]:UKCRSA16 t6, t5, t4<br> [0x8000155c]:sd t6, 992(gp)<br>     |
|  81|[0x80003710]<br>0xFDF100070011400B|- rs1_h3_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001588]:UKCRSA16 t6, t5, t4<br> [0x8000158c]:sd t6, 1008(gp)<br>    |
|  82|[0x80003720]<br>0x0000AAABFFF0ACAA|- rs1_h3_val == 65279<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800015bc]:UKCRSA16 t6, t5, t4<br> [0x800015c0]:sd t6, 1024(gp)<br>    |
|  83|[0x80003730]<br>0xFFBD001D00001003|- rs1_h3_val == 65471<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800015f4]:UKCRSA16 t6, t5, t4<br> [0x800015f8]:sd t6, 1040(gp)<br>    |
|  84|[0x80003740]<br>0x03FDFFFF0000F003|- rs1_h2_val == 61439<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001630]:UKCRSA16 t6, t5, t4<br> [0x80001634]:sd t6, 1056(gp)<br>    |
|  85|[0x80003750]<br>0x0002FC0F00001000|- rs1_h2_val == 64511<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000166c]:UKCRSA16 t6, t5, t4<br> [0x80001670]:sd t6, 1072(gp)<br>    |
|  86|[0x80003760]<br>0x1555FE0F0000800D|- rs1_h2_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800016a8]:UKCRSA16 t6, t5, t4<br> [0x800016ac]:sd t6, 1088(gp)<br>    |
|  87|[0x80003770]<br>0x7FF0FFFF5547FFFF|- rs1_h2_val == 65534<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800016e0]:UKCRSA16 t6, t5, t4<br> [0x800016e4]:sd t6, 1104(gp)<br>    |
|  88|[0x80003780]<br>0x0000200900005955|- rs2_h1_val == 21845<br> - rs1_h3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001718]:UKCRSA16 t6, t5, t4<br> [0x8000171c]:sd t6, 1120(gp)<br>    |
|  89|[0x80003790]<br>0x0000ACAA0000FFE4|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001754]:UKCRSA16 t6, t5, t4<br> [0x80001758]:sd t6, 1136(gp)<br>    |
|  90|[0x800037a0]<br>0x000E00130000FFFF|- rs2_h1_val == 63487<br> - rs1_h1_val == 63487<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001788]:UKCRSA16 t6, t5, t4<br> [0x8000178c]:sd t6, 1152(gp)<br>    |
|  91|[0x800037b0]<br>0x000001060380AAAB|- rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017bc]:UKCRSA16 t6, t5, t4<br> [0x800017c0]:sd t6, 1168(gp)<br>    |
|  92|[0x800037c0]<br>0x000055590007000A|- rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017ec]:UKCRSA16 t6, t5, t4<br> [0x800017f0]:sd t6, 1184(gp)<br>    |
|  93|[0x800037d0]<br>0x0000FFFF0009FFFF|- rs2_h1_val == 65531<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001828]:UKCRSA16 t6, t5, t4<br> [0x8000182c]:sd t6, 1200(gp)<br>    |
|  94|[0x800037e0]<br>0x5555FFE800000016|- rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001868]:UKCRSA16 t6, t5, t4<br> [0x8000186c]:sd t6, 1216(gp)<br>    |
|  95|[0x800037f0]<br>0x0000FFFFFEFF0406|- rs2_h2_val == 43690<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001898]:UKCRSA16 t6, t5, t4<br> [0x8000189c]:sd t6, 1232(gp)<br>    |
|  96|[0x80003800]<br>0xFF9F0005FBF7FFFF|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018cc]:UKCRSA16 t6, t5, t4<br> [0x800018d0]:sd t6, 1248(gp)<br>    |
|  97|[0x80003810]<br>0x1FF8FFFFDFFFFF85|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000190c]:UKCRSA16 t6, t5, t4<br> [0x80001910]:sd t6, 1264(gp)<br>    |
|  98|[0x80003820]<br>0x0FEEFFFFFFF35566|- rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001948]:UKCRSA16 t6, t5, t4<br> [0x8000194c]:sd t6, 1280(gp)<br>    |
|  99|[0x80003830]<br>0x0000FFC50000AAAC|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001984]:UKCRSA16 t6, t5, t4<br> [0x80001988]:sd t6, 1296(gp)<br>    |
| 100|[0x80003840]<br>0x0000040A0000FFFF|- rs2_h1_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800019c0]:UKCRSA16 t6, t5, t4<br> [0x800019c4]:sd t6, 1312(gp)<br>    |
| 101|[0x80003850]<br>0x000000320000FFFF|- rs1_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800019f4]:UKCRSA16 t6, t5, t4<br> [0x800019f8]:sd t6, 1328(gp)<br>    |
| 102|[0x80003860]<br>0x0000FFFF0000000A|- rs2_h0_val == 21845<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001a30]:UKCRSA16 t6, t5, t4<br> [0x80001a34]:sd t6, 1344(gp)<br>    |
| 103|[0x80003870]<br>0x0000FF9F00000010|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001a6c]:UKCRSA16 t6, t5, t4<br> [0x80001a70]:sd t6, 1360(gp)<br>    |
| 104|[0x80003880]<br>0x0000FFFF00002009|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001a9c]:UKCRSA16 t6, t5, t4<br> [0x80001aa0]:sd t6, 1376(gp)<br>    |
| 105|[0x80003890]<br>0x00100008554BFFC4|- rs1_h3_val == 65535<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001ad0]:UKCRSA16 t6, t5, t4<br> [0x80001ad4]:sd t6, 1392(gp)<br>    |
| 106|[0x800038a0]<br>0x0038FC7F0000080B|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001b0c]:UKCRSA16 t6, t5, t4<br> [0x80001b10]:sd t6, 1408(gp)<br>    |
| 107|[0x800038b0]<br>0x000AFFFF0000FFFF|- rs2_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001b44]:UKCRSA16 t6, t5, t4<br> [0x80001b48]:sd t6, 1424(gp)<br>    |
| 108|[0x800038c0]<br>0x000075550000DFFF|- rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001b7c]:UKCRSA16 t6, t5, t4<br> [0x80001b80]:sd t6, 1440(gp)<br>    |
| 109|[0x800038d0]<br>0x0000AAAC0008FFFF|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001bb4]:UKCRSA16 t6, t5, t4<br> [0x80001bb8]:sd t6, 1456(gp)<br>    |
