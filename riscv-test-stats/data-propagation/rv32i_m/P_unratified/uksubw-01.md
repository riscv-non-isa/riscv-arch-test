
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b70')]      |
| SIG_REGION                | [('0x80002210', '0x80002530', '200 words')]      |
| COV_LABELS                | uksubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uksubw-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 240      |
| Total Signature Updates   | 198      |
| STAT1                     | 96      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 99     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000085c]:UKSUBW t6, t5, t4
      [0x80000860]:csrrs t5, vxsat, zero
      [0x80000864]:sw t6, 296(ra)
 -- Signature Address: 0x80002438 Data: 0x00008000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b0c]:UKSUBW t6, t5, t4
      [0x80000b10]:csrrs t5, vxsat, zero
      [0x80000b14]:sw t6, 504(ra)
 -- Signature Address: 0x80002508 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs2_w0_val == 2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b60]:UKSUBW t6, t5, t4
      [0x80000b64]:csrrs t5, vxsat, zero
      [0x80000b68]:sw t6, 528(ra)
 -- Signature Address: 0x80002520 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 4026531839
      - rs1_w0_val == 1024






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksubw', 'rs1 : x18', 'rs2 : x18', 'rd : x18', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2147483648', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000114]:UKSUBW s2, s2, s2
	-[0x80000118]:csrrs s2, vxsat, zero
	-[0x8000011c]:sw s2, 0(tp)
Current Store : [0x80000120] : sw s2, 4(tp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x19', 'rd : x23', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x8000012c]:UKSUBW s7, s3, s3
	-[0x80000130]:csrrs s3, vxsat, zero
	-[0x80000134]:sw s7, 8(tp)
Current Store : [0x80000138] : sw s3, 12(tp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x16', 'rd : x11', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x8000014c]:UKSUBW a1, zero, a6
	-[0x80000150]:csrrs zero, vxsat, zero
	-[0x80000154]:sw a1, 16(tp)
Current Store : [0x80000158] : sw zero, 20(tp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x26', 'rd : x26', 'rs2 == rd != rs1', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x8000016c]:UKSUBW s10, a1, s10
	-[0x80000170]:csrrs a1, vxsat, zero
	-[0x80000174]:sw s10, 24(tp)
Current Store : [0x80000178] : sw a1, 28(tp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x7', 'rs1 == rd != rs2', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x8000018c]:UKSUBW t2, t2, t3
	-[0x80000190]:csrrs t2, vxsat, zero
	-[0x80000194]:sw t2, 32(tp)
Current Store : [0x80000198] : sw t2, 36(tp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x29', 'rd : x20', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800001a8]:UKSUBW s4, a7, t4
	-[0x800001ac]:csrrs a7, vxsat, zero
	-[0x800001b0]:sw s4, 40(tp)
Current Store : [0x800001b4] : sw a7, 44(tp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x15', 'rs2_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800001c4]:UKSUBW a5, a6, a3
	-[0x800001c8]:csrrs a6, vxsat, zero
	-[0x800001cc]:sw a5, 48(tp)
Current Store : [0x800001d0] : sw a6, 52(tp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x20', 'rd : x27', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x800001e4]:UKSUBW s11, s7, s4
	-[0x800001e8]:csrrs s7, vxsat, zero
	-[0x800001ec]:sw s11, 56(tp)
Current Store : [0x800001f0] : sw s7, 60(tp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x13', 'rs2_w0_val == 0', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000200]:UKSUBW a3, s9, zero
	-[0x80000204]:csrrs s9, vxsat, zero
	-[0x80000208]:sw a3, 64(tp)
Current Store : [0x8000020c] : sw s9, 68(tp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x30', 'rd : x5', 'rs2_w0_val == 4160749567', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x8000021c]:UKSUBW t0, s1, t5
	-[0x80000220]:csrrs s1, vxsat, zero
	-[0x80000224]:sw t0, 72(tp)
Current Store : [0x80000228] : sw s1, 76(tp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x17', 'rd : x6', 'rs2_w0_val == 4227858431', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x8000023c]:UKSUBW t1, s5, a7
	-[0x80000240]:csrrs s5, vxsat, zero
	-[0x80000244]:sw t1, 80(tp)
Current Store : [0x80000248] : sw s5, 84(tp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x14', 'rd : x0', 'rs2_w0_val == 4261412863', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x8000025c]:UKSUBW zero, gp, a4
	-[0x80000260]:csrrs gp, vxsat, zero
	-[0x80000264]:sw zero, 88(tp)
Current Store : [0x80000268] : sw gp, 92(tp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x22', 'rd : x24', 'rs2_w0_val == 4278190079', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000278]:UKSUBW s8, s10, s6
	-[0x8000027c]:csrrs s10, vxsat, zero
	-[0x80000280]:sw s8, 96(tp)
Current Store : [0x80000284] : sw s10, 100(tp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x27', 'rd : x21', 'rs2_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000294]:UKSUBW s5, a4, s11
	-[0x80000298]:csrrs a4, vxsat, zero
	-[0x8000029c]:sw s5, 104(tp)
Current Store : [0x800002a0] : sw a4, 108(tp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x1', 'rd : x16', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800002b0]:UKSUBW a6, s8, ra
	-[0x800002b4]:csrrs s8, vxsat, zero
	-[0x800002b8]:sw a6, 112(tp)
Current Store : [0x800002bc] : sw s8, 116(tp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x9', 'rd : x30', 'rs2_w0_val == 4292870143', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x800002d0]:UKSUBW t5, a5, s1
	-[0x800002d4]:csrrs a5, vxsat, zero
	-[0x800002d8]:sw t5, 120(tp)
Current Store : [0x800002dc] : sw a5, 124(tp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x2', 'rd : x9', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800002ec]:UKSUBW s1, t3, sp
	-[0x800002f0]:csrrs t3, vxsat, zero
	-[0x800002f4]:sw s1, 128(tp)
Current Store : [0x800002f8] : sw t3, 132(tp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x8', 'rd : x2', 'rs2_w0_val == 4294443007', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000308]:UKSUBW sp, s6, fp
	-[0x8000030c]:csrrs s6, vxsat, zero
	-[0x80000310]:sw sp, 136(tp)
Current Store : [0x80000314] : sw s6, 140(tp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x3', 'rd : x12', 'rs2_w0_val == 4294705151', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000330]:UKSUBW a2, a0, gp
	-[0x80000334]:csrrs a0, vxsat, zero
	-[0x80000338]:sw a2, 0(s1)
Current Store : [0x8000033c] : sw a0, 4(s1) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x7', 'rd : x8', 'rs2_w0_val == 4294836223']
Last Code Sequence : 
	-[0x8000034c]:UKSUBW fp, t1, t2
	-[0x80000350]:csrrs t1, vxsat, zero
	-[0x80000354]:sw fp, 8(s1)
Current Store : [0x80000358] : sw t1, 12(s1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x5', 'rd : x3', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000368]:UKSUBW gp, fp, t0
	-[0x8000036c]:csrrs fp, vxsat, zero
	-[0x80000370]:sw gp, 16(s1)
Current Store : [0x80000374] : sw fp, 20(s1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x23', 'rd : x29', 'rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000388]:UKSUBW t4, sp, s7
	-[0x8000038c]:csrrs sp, vxsat, zero
	-[0x80000390]:sw t4, 24(s1)
Current Store : [0x80000394] : sw sp, 28(s1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x6', 'rd : x17', 'rs2_w0_val == 4294950911', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800003a8]:UKSUBW a7, ra, t1
	-[0x800003ac]:csrrs ra, vxsat, zero
	-[0x800003b0]:sw a7, 32(s1)
Current Store : [0x800003b4] : sw ra, 36(s1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x31', 'rd : x1', 'rs2_w0_val == 4294959103', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800003c4]:UKSUBW ra, a3, t6
	-[0x800003c8]:csrrs a3, vxsat, zero
	-[0x800003cc]:sw ra, 40(s1)
Current Store : [0x800003d0] : sw a3, 44(s1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x25', 'rd : x31', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800003e4]:UKSUBW t6, a2, s9
	-[0x800003e8]:csrrs a2, vxsat, zero
	-[0x800003ec]:sw t6, 48(s1)
Current Store : [0x800003f0] : sw a2, 52(s1) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x24', 'rd : x28', 'rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000404]:UKSUBW t3, s11, s8
	-[0x80000408]:csrrs s11, vxsat, zero
	-[0x8000040c]:sw t3, 56(s1)
Current Store : [0x80000410] : sw s11, 60(s1) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x19', 'rs2_w0_val == 4294966271']
Last Code Sequence : 
	-[0x8000041c]:UKSUBW s3, t5, a0
	-[0x80000420]:csrrs t5, vxsat, zero
	-[0x80000424]:sw s3, 64(s1)
Current Store : [0x80000428] : sw t5, 68(s1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x10', 'rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000434]:UKSUBW a0, t0, a1
	-[0x80000438]:csrrs t0, vxsat, zero
	-[0x8000043c]:sw a0, 72(s1)
Current Store : [0x80000440] : sw t0, 76(s1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x4', 'rd : x25', 'rs2_w0_val == 4294967039', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000450]:UKSUBW s9, t4, tp
	-[0x80000454]:csrrs t4, vxsat, zero
	-[0x80000458]:sw s9, 80(s1)
Current Store : [0x8000045c] : sw t4, 84(s1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rd : x22', 'rs2_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000468]:UKSUBW s6, s4, a2
	-[0x8000046c]:csrrs s4, vxsat, zero
	-[0x80000470]:sw s6, 88(s1)
Current Store : [0x80000474] : sw s4, 92(s1) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x15', 'rd : x4', 'rs2_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000484]:UKSUBW tp, t6, a5
	-[0x80000488]:csrrs t6, vxsat, zero
	-[0x8000048c]:sw tp, 96(s1)
Current Store : [0x80000490] : sw t6, 100(s1) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x14', 'rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x8000049c]:UKSUBW a4, tp, s5
	-[0x800004a0]:csrrs tp, vxsat, zero
	-[0x800004a4]:sw a4, 104(s1)
Current Store : [0x800004a8] : sw tp, 108(s1) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967279']
Last Code Sequence : 
	-[0x800004bc]:UKSUBW t6, t5, t4
	-[0x800004c0]:csrrs t5, vxsat, zero
	-[0x800004c4]:sw t6, 0(ra)
Current Store : [0x800004c8] : sw t5, 4(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967287']
Last Code Sequence : 
	-[0x800004d4]:UKSUBW t6, t5, t4
	-[0x800004d8]:csrrs t5, vxsat, zero
	-[0x800004dc]:sw t6, 8(ra)
Current Store : [0x800004e0] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967291', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800004ec]:UKSUBW t6, t5, t4
	-[0x800004f0]:csrrs t5, vxsat, zero
	-[0x800004f4]:sw t6, 16(ra)
Current Store : [0x800004f8] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000504]:UKSUBW t6, t5, t4
	-[0x80000508]:csrrs t5, vxsat, zero
	-[0x8000050c]:sw t6, 24(ra)
Current Store : [0x80000510] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967294', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x8000051c]:UKSUBW t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 32(ra)
Current Store : [0x80000528] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000534]:UKSUBW t6, t5, t4
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 40(ra)
Current Store : [0x80000540] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000054c]:UKSUBW t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 48(ra)
Current Store : [0x80000558] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000568]:UKSUBW t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 56(ra)
Current Store : [0x80000574] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000580]:UKSUBW t6, t5, t4
	-[0x80000584]:csrrs t5, vxsat, zero
	-[0x80000588]:sw t6, 64(ra)
Current Store : [0x8000058c] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000598]:UKSUBW t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 72(ra)
Current Store : [0x800005a4] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800005b0]:UKSUBW t6, t5, t4
	-[0x800005b4]:csrrs t5, vxsat, zero
	-[0x800005b8]:sw t6, 80(ra)
Current Store : [0x800005bc] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800005c8]:UKSUBW t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 88(ra)
Current Store : [0x800005d4] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x800005e4]:UKSUBW t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 96(ra)
Current Store : [0x800005f0] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800005fc]:UKSUBW t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 104(ra)
Current Store : [0x80000608] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000614]:UKSUBW t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 112(ra)
Current Store : [0x80000620] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000062c]:UKSUBW t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 120(ra)
Current Store : [0x80000638] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000644]:UKSUBW t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 128(ra)
Current Store : [0x80000650] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x8000065c]:UKSUBW t6, t5, t4
	-[0x80000660]:csrrs t5, vxsat, zero
	-[0x80000664]:sw t6, 136(ra)
Current Store : [0x80000668] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000674]:UKSUBW t6, t5, t4
	-[0x80000678]:csrrs t5, vxsat, zero
	-[0x8000067c]:sw t6, 144(ra)
Current Store : [0x80000680] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000068c]:UKSUBW t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 152(ra)
Current Store : [0x80000698] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800006a4]:UKSUBW t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 160(ra)
Current Store : [0x800006b0] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800006bc]:UKSUBW t6, t5, t4
	-[0x800006c0]:csrrs t5, vxsat, zero
	-[0x800006c4]:sw t6, 168(ra)
Current Store : [0x800006c8] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x800006d4]:UKSUBW t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 176(ra)
Current Store : [0x800006e0] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800006ec]:UKSUBW t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 184(ra)
Current Store : [0x800006f8] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000708]:UKSUBW t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 192(ra)
Current Store : [0x80000714] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000720]:UKSUBW t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 200(ra)
Current Store : [0x8000072c] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000738]:UKSUBW t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 208(ra)
Current Store : [0x80000744] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000754]:UKSUBW t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 216(ra)
Current Store : [0x80000760] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000770]:UKSUBW t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 224(ra)
Current Store : [0x8000077c] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x8000078c]:UKSUBW t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 232(ra)
Current Store : [0x80000798] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x800007a8]:UKSUBW t6, t5, t4
	-[0x800007ac]:csrrs t5, vxsat, zero
	-[0x800007b0]:sw t6, 240(ra)
Current Store : [0x800007b4] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x800007c4]:UKSUBW t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 248(ra)
Current Store : [0x800007d0] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x800007e0]:UKSUBW t6, t5, t4
	-[0x800007e4]:csrrs t5, vxsat, zero
	-[0x800007e8]:sw t6, 256(ra)
Current Store : [0x800007ec] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x800007f8]:UKSUBW t6, t5, t4
	-[0x800007fc]:csrrs t5, vxsat, zero
	-[0x80000800]:sw t6, 264(ra)
Current Store : [0x80000804] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000810]:UKSUBW t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 272(ra)
Current Store : [0x8000081c] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000828]:UKSUBW t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 280(ra)
Current Store : [0x80000834] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000844]:UKSUBW t6, t5, t4
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sw t6, 288(ra)
Current Store : [0x80000850] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000085c]:UKSUBW t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 296(ra)
Current Store : [0x80000868] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x8000087c]:UKSUBW t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 304(ra)
Current Store : [0x80000888] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000898]:UKSUBW t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 312(ra)
Current Store : [0x800008a4] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x800008b4]:UKSUBW t6, t5, t4
	-[0x800008b8]:csrrs t5, vxsat, zero
	-[0x800008bc]:sw t6, 320(ra)
Current Store : [0x800008c0] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x800008d0]:UKSUBW t6, t5, t4
	-[0x800008d4]:csrrs t5, vxsat, zero
	-[0x800008d8]:sw t6, 328(ra)
Current Store : [0x800008dc] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4026531839', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x800008f0]:UKSUBW t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 336(ra)
Current Store : [0x800008fc] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x8000090c]:UKSUBW t6, t5, t4
	-[0x80000910]:csrrs t5, vxsat, zero
	-[0x80000914]:sw t6, 344(ra)
Current Store : [0x80000918] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x80000928]:UKSUBW t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 352(ra)
Current Store : [0x80000934] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000944]:UKSUBW t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 360(ra)
Current Store : [0x80000950] : sw t5, 364(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000960]:UKSUBW t6, t5, t4
	-[0x80000964]:csrrs t5, vxsat, zero
	-[0x80000968]:sw t6, 368(ra)
Current Store : [0x8000096c] : sw t5, 372(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x8000097c]:UKSUBW t6, t5, t4
	-[0x80000980]:csrrs t5, vxsat, zero
	-[0x80000984]:sw t6, 376(ra)
Current Store : [0x80000988] : sw t5, 380(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80000998]:UKSUBW t6, t5, t4
	-[0x8000099c]:csrrs t5, vxsat, zero
	-[0x800009a0]:sw t6, 384(ra)
Current Store : [0x800009a4] : sw t5, 388(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x800009b0]:UKSUBW t6, t5, t4
	-[0x800009b4]:csrrs t5, vxsat, zero
	-[0x800009b8]:sw t6, 392(ra)
Current Store : [0x800009bc] : sw t5, 396(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800009c8]:UKSUBW t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 400(ra)
Current Store : [0x800009d4] : sw t5, 404(ra) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800009e0]:UKSUBW t6, t5, t4
	-[0x800009e4]:csrrs t5, vxsat, zero
	-[0x800009e8]:sw t6, 408(ra)
Current Store : [0x800009ec] : sw t5, 412(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800009f8]:UKSUBW t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 416(ra)
Current Store : [0x80000a04] : sw t5, 420(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a10]:UKSUBW t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 424(ra)
Current Store : [0x80000a1c] : sw t5, 428(ra) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000a2c]:UKSUBW t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 432(ra)
Current Store : [0x80000a38] : sw t5, 436(ra) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000a44]:UKSUBW t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 440(ra)
Current Store : [0x80000a50] : sw t5, 444(ra) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000a5c]:UKSUBW t6, t5, t4
	-[0x80000a60]:csrrs t5, vxsat, zero
	-[0x80000a64]:sw t6, 448(ra)
Current Store : [0x80000a68] : sw t5, 452(ra) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a74]:UKSUBW t6, t5, t4
	-[0x80000a78]:csrrs t5, vxsat, zero
	-[0x80000a7c]:sw t6, 456(ra)
Current Store : [0x80000a80] : sw t5, 460(ra) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000a8c]:UKSUBW t6, t5, t4
	-[0x80000a90]:csrrs t5, vxsat, zero
	-[0x80000a94]:sw t6, 464(ra)
Current Store : [0x80000a98] : sw t5, 468(ra) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000aa8]:UKSUBW t6, t5, t4
	-[0x80000aac]:csrrs t5, vxsat, zero
	-[0x80000ab0]:sw t6, 472(ra)
Current Store : [0x80000ab4] : sw t5, 476(ra) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000ac0]:UKSUBW t6, t5, t4
	-[0x80000ac4]:csrrs t5, vxsat, zero
	-[0x80000ac8]:sw t6, 480(ra)
Current Store : [0x80000acc] : sw t5, 484(ra) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000adc]:UKSUBW t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 488(ra)
Current Store : [0x80000ae8] : sw t5, 492(ra) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000af4]:UKSUBW t6, t5, t4
	-[0x80000af8]:csrrs t5, vxsat, zero
	-[0x80000afc]:sw t6, 496(ra)
Current Store : [0x80000b00] : sw t5, 500(ra) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs2_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000b0c]:UKSUBW t6, t5, t4
	-[0x80000b10]:csrrs t5, vxsat, zero
	-[0x80000b14]:sw t6, 504(ra)
Current Store : [0x80000b18] : sw t5, 508(ra) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000b24]:UKSUBW t6, t5, t4
	-[0x80000b28]:csrrs t5, vxsat, zero
	-[0x80000b2c]:sw t6, 512(ra)
Current Store : [0x80000b30] : sw t5, 516(ra) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000b44]:UKSUBW t6, t5, t4
	-[0x80000b48]:csrrs t5, vxsat, zero
	-[0x80000b4c]:sw t6, 520(ra)
Current Store : [0x80000b50] : sw t5, 524(ra) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['opcode : uksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4026531839', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000b60]:UKSUBW t6, t5, t4
	-[0x80000b64]:csrrs t5, vxsat, zero
	-[0x80000b68]:sw t6, 528(ra)
Current Store : [0x80000b6c] : sw t5, 532(ra) -- Store: [0x80002524]:0x00000001





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

|s.no|        signature         |                                                                                                          coverpoints                                                                                                          |                                                    code                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : uksubw<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2147483648<br> - rs1_w0_val == 2147483648<br> |[0x80000114]:UKSUBW s2, s2, s2<br> [0x80000118]:csrrs s2, vxsat, zero<br> [0x8000011c]:sw s2, 0(tp)<br>      |
|   2|[0x80002218]<br>0x00000000|- rs1 : x19<br> - rs2 : x19<br> - rd : x23<br> - rs1 == rs2 != rd<br>                                                                                                                                                          |[0x8000012c]:UKSUBW s7, s3, s3<br> [0x80000130]:csrrs s3, vxsat, zero<br> [0x80000134]:sw s7, 8(tp)<br>      |
|   3|[0x80002220]<br>0x00000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x11<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w0_val == 0<br> - rs2_w0_val == 2048<br>                                                                                     |[0x8000014c]:UKSUBW a1, zero, a6<br> [0x80000150]:csrrs zero, vxsat, zero<br> [0x80000154]:sw a1, 16(tp)<br> |
|   4|[0x80002228]<br>0x54D55555|- rs1 : x11<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 4286578687<br>                       |[0x8000016c]:UKSUBW s10, a1, s10<br> [0x80000170]:csrrs a1, vxsat, zero<br> [0x80000174]:sw s10, 24(tp)<br>  |
|   5|[0x80002230]<br>0x00000001|- rs1 : x7<br> - rs2 : x28<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 4294959103<br>                                                                                              |[0x8000018c]:UKSUBW t2, t2, t3<br> [0x80000190]:csrrs t2, vxsat, zero<br> [0x80000194]:sw t2, 32(tp)<br>     |
|   6|[0x80002238]<br>0x00000000|- rs1 : x17<br> - rs2 : x29<br> - rd : x20<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 32768<br>                                                                                                                        |[0x800001a8]:UKSUBW s4, a7, t4<br> [0x800001ac]:csrrs a7, vxsat, zero<br> [0x800001b0]:sw s4, 40(tp)<br>     |
|   7|[0x80002240]<br>0x00000000|- rs1 : x16<br> - rs2 : x13<br> - rd : x15<br> - rs2_w0_val == 3221225471<br>                                                                                                                                                  |[0x800001c4]:UKSUBW a5, a6, a3<br> [0x800001c8]:csrrs a6, vxsat, zero<br> [0x800001cc]:sw a5, 48(tp)<br>     |
|   8|[0x80002248]<br>0x18000000|- rs1 : x23<br> - rs2 : x20<br> - rd : x27<br> - rs2_w0_val == 3758096383<br> - rs1_w0_val == 4160749567<br>                                                                                                                   |[0x800001e4]:UKSUBW s11, s7, s4<br> [0x800001e8]:csrrs s7, vxsat, zero<br> [0x800001ec]:sw s11, 56(tp)<br>   |
|   9|[0x80002250]<br>0x00000400|- rs1 : x25<br> - rs2 : x0<br> - rd : x13<br> - rs2_w0_val == 0<br> - rs1_w0_val == 1024<br>                                                                                                                                   |[0x80000200]:UKSUBW a3, s9, zero<br> [0x80000204]:csrrs s9, vxsat, zero<br> [0x80000208]:sw a3, 64(tp)<br>   |
|  10|[0x80002258]<br>0x00000000|- rs1 : x9<br> - rs2 : x30<br> - rd : x5<br> - rs2_w0_val == 4160749567<br> - rs1_w0_val == 131072<br>                                                                                                                         |[0x8000021c]:UKSUBW t0, s1, t5<br> [0x80000220]:csrrs s1, vxsat, zero<br> [0x80000224]:sw t0, 72(tp)<br>     |
|  11|[0x80002260]<br>0x03F00000|- rs1 : x21<br> - rs2 : x17<br> - rd : x6<br> - rs2_w0_val == 4227858431<br> - rs1_w0_val == 4293918719<br>                                                                                                                    |[0x8000023c]:UKSUBW t1, s5, a7<br> [0x80000240]:csrrs s5, vxsat, zero<br> [0x80000244]:sw t1, 80(tp)<br>     |
|  12|[0x80002268]<br>0x00000000|- rs1 : x3<br> - rs2 : x14<br> - rd : x0<br> - rs2_w0_val == 4261412863<br> - rs1_w0_val == 4294950911<br>                                                                                                                     |[0x8000025c]:UKSUBW zero, gp, a4<br> [0x80000260]:csrrs gp, vxsat, zero<br> [0x80000264]:sw zero, 88(tp)<br> |
|  13|[0x80002270]<br>0x00000000|- rs1 : x26<br> - rs2 : x22<br> - rd : x24<br> - rs2_w0_val == 4278190079<br> - rs1_w0_val == 268435456<br>                                                                                                                    |[0x80000278]:UKSUBW s8, s10, s6<br> [0x8000027c]:csrrs s10, vxsat, zero<br> [0x80000280]:sw s8, 96(tp)<br>   |
|  14|[0x80002278]<br>0x00000000|- rs1 : x14<br> - rs2 : x27<br> - rd : x21<br> - rs2_w0_val == 4286578687<br>                                                                                                                                                  |[0x80000294]:UKSUBW s5, a4, s11<br> [0x80000298]:csrrs a4, vxsat, zero<br> [0x8000029c]:sw s5, 104(tp)<br>   |
|  15|[0x80002280]<br>0x00000000|- rs1 : x24<br> - rs2 : x1<br> - rd : x16<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 33554432<br>                                                                                                                      |[0x800002b0]:UKSUBW a6, s8, ra<br> [0x800002b4]:csrrs s8, vxsat, zero<br> [0x800002b8]:sw a6, 112(tp)<br>    |
|  16|[0x80002288]<br>0x00000000|- rs1 : x15<br> - rs2 : x9<br> - rd : x30<br> - rs2_w0_val == 4292870143<br> - rs1_w0_val == 4278190079<br>                                                                                                                    |[0x800002d0]:UKSUBW t5, a5, s1<br> [0x800002d4]:csrrs a5, vxsat, zero<br> [0x800002d8]:sw t5, 120(tp)<br>    |
|  17|[0x80002290]<br>0x00000000|- rs1 : x28<br> - rs2 : x2<br> - rd : x9<br> - rs2_w0_val == 4293918719<br> - rs1_w0_val == 512<br>                                                                                                                            |[0x800002ec]:UKSUBW s1, t3, sp<br> [0x800002f0]:csrrs t3, vxsat, zero<br> [0x800002f4]:sw s1, 128(tp)<br>    |
|  18|[0x80002298]<br>0x0007FFF8|- rs1 : x22<br> - rs2 : x8<br> - rd : x2<br> - rs2_w0_val == 4294443007<br> - rs1_w0_val == 4294967287<br>                                                                                                                     |[0x80000308]:UKSUBW sp, s6, fp<br> [0x8000030c]:csrrs s6, vxsat, zero<br> [0x80000310]:sw sp, 136(tp)<br>    |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x10<br> - rs2 : x3<br> - rd : x12<br> - rs2_w0_val == 4294705151<br> - rs1_w0_val == 4026531839<br>                                                                                                                    |[0x80000330]:UKSUBW a2, a0, gp<br> [0x80000334]:csrrs a0, vxsat, zero<br> [0x80000338]:sw a2, 0(s1)<br>      |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x6<br> - rs2 : x7<br> - rd : x8<br> - rs2_w0_val == 4294836223<br>                                                                                                                                                     |[0x8000034c]:UKSUBW fp, t1, t2<br> [0x80000350]:csrrs t1, vxsat, zero<br> [0x80000354]:sw fp, 8(s1)<br>      |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x8<br> - rs2 : x5<br> - rd : x3<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 8<br>                                                                                                                               |[0x80000368]:UKSUBW gp, fp, t0<br> [0x8000036c]:csrrs fp, vxsat, zero<br> [0x80000370]:sw gp, 16(s1)<br>     |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x2<br> - rs2 : x23<br> - rd : x29<br> - rs2_w0_val == 4294934527<br>                                                                                                                                                   |[0x80000388]:UKSUBW t4, sp, s7<br> [0x8000038c]:csrrs sp, vxsat, zero<br> [0x80000390]:sw t4, 24(s1)<br>     |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x1<br> - rs2 : x6<br> - rd : x17<br> - rs2_w0_val == 4294950911<br> - rs1_w0_val == 1431655765<br>                                                                                                                     |[0x800003a8]:UKSUBW a7, ra, t1<br> [0x800003ac]:csrrs ra, vxsat, zero<br> [0x800003b0]:sw a7, 32(s1)<br>     |
|  24|[0x800022c8]<br>0x00000000|- rs1 : x13<br> - rs2 : x31<br> - rd : x1<br> - rs2_w0_val == 4294959103<br> - rs1_w0_val == 65536<br>                                                                                                                         |[0x800003c4]:UKSUBW ra, a3, t6<br> [0x800003c8]:csrrs a3, vxsat, zero<br> [0x800003cc]:sw ra, 40(s1)<br>     |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x12<br> - rs2 : x25<br> - rd : x31<br> - rs2_w0_val == 4294963199<br> - rs1_w0_val == 2147483647<br>                                                                                                                   |[0x800003e4]:UKSUBW t6, a2, s9<br> [0x800003e8]:csrrs a2, vxsat, zero<br> [0x800003ec]:sw t6, 48(s1)<br>     |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x27<br> - rs2 : x24<br> - rd : x28<br> - rs2_w0_val == 4294965247<br>                                                                                                                                                  |[0x80000404]:UKSUBW t3, s11, s8<br> [0x80000408]:csrrs s11, vxsat, zero<br> [0x8000040c]:sw t3, 56(s1)<br>   |
|  27|[0x800022e0]<br>0x000003F8|- rs1 : x30<br> - rs2 : x10<br> - rd : x19<br> - rs2_w0_val == 4294966271<br>                                                                                                                                                  |[0x8000041c]:UKSUBW s3, t5, a0<br> [0x80000420]:csrrs t5, vxsat, zero<br> [0x80000424]:sw s3, 64(s1)<br>     |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x5<br> - rs2 : x11<br> - rd : x10<br> - rs2_w0_val == 4294966783<br>                                                                                                                                                   |[0x80000434]:UKSUBW a0, t0, a1<br> [0x80000438]:csrrs t0, vxsat, zero<br> [0x8000043c]:sw a0, 72(s1)<br>     |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x29<br> - rs2 : x4<br> - rd : x25<br> - rs2_w0_val == 4294967039<br> - rs1_w0_val == 4294963199<br>                                                                                                                    |[0x80000450]:UKSUBW s9, t4, tp<br> [0x80000454]:csrrs t4, vxsat, zero<br> [0x80000458]:sw s9, 80(s1)<br>     |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x20<br> - rs2 : x12<br> - rd : x22<br> - rs2_w0_val == 4294967167<br>                                                                                                                                                  |[0x80000468]:UKSUBW s6, s4, a2<br> [0x8000046c]:csrrs s4, vxsat, zero<br> [0x80000470]:sw s6, 88(s1)<br>     |
|  31|[0x80002300]<br>0x00000000|- rs1 : x31<br> - rs2 : x15<br> - rd : x4<br> - rs2_w0_val == 4294967231<br>                                                                                                                                                   |[0x80000484]:UKSUBW tp, t6, a5<br> [0x80000488]:csrrs t6, vxsat, zero<br> [0x8000048c]:sw tp, 96(s1)<br>     |
|  32|[0x80002308]<br>0x00000000|- rs1 : x4<br> - rs2 : x21<br> - rd : x14<br> - rs2_w0_val == 4294967263<br>                                                                                                                                                   |[0x8000049c]:UKSUBW a4, tp, s5<br> [0x800004a0]:csrrs tp, vxsat, zero<br> [0x800004a4]:sw a4, 104(s1)<br>    |
|  33|[0x80002310]<br>0x00000000|- rs2_w0_val == 4294967279<br>                                                                                                                                                                                                 |[0x800004bc]:UKSUBW t6, t5, t4<br> [0x800004c0]:csrrs t5, vxsat, zero<br> [0x800004c4]:sw t6, 0(ra)<br>      |
|  34|[0x80002318]<br>0x00000000|- rs2_w0_val == 4294967287<br>                                                                                                                                                                                                 |[0x800004d4]:UKSUBW t6, t5, t4<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 8(ra)<br>      |
|  35|[0x80002320]<br>0x00000000|- rs2_w0_val == 4294967291<br> - rs1_w0_val == 128<br>                                                                                                                                                                         |[0x800004ec]:UKSUBW t6, t5, t4<br> [0x800004f0]:csrrs t5, vxsat, zero<br> [0x800004f4]:sw t6, 16(ra)<br>     |
|  36|[0x80002328]<br>0x00000000|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                 |[0x80000504]:UKSUBW t6, t5, t4<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 24(ra)<br>     |
|  37|[0x80002330]<br>0x00000000|- rs2_w0_val == 4294967294<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                  |[0x8000051c]:UKSUBW t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 32(ra)<br>     |
|  38|[0x80002338]<br>0x00000000|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                 |[0x80000534]:UKSUBW t6, t5, t4<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 40(ra)<br>     |
|  39|[0x80002340]<br>0x00000000|- rs2_w0_val == 536870912<br>                                                                                                                                                                                                  |[0x8000054c]:UKSUBW t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 48(ra)<br>     |
|  40|[0x80002348]<br>0xEFDFFFFF|- rs2_w0_val == 268435456<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                   |[0x80000568]:UKSUBW t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 56(ra)<br>     |
|  41|[0x80002350]<br>0x38000000|- rs2_w0_val == 134217728<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                   |[0x80000580]:UKSUBW t6, t5, t4<br> [0x80000584]:csrrs t5, vxsat, zero<br> [0x80000588]:sw t6, 64(ra)<br>     |
|  42|[0x80002358]<br>0x00000000|- rs2_w0_val == 67108864<br> - rs1_w0_val == 4096<br>                                                                                                                                                                          |[0x80000598]:UKSUBW t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 72(ra)<br>     |
|  43|[0x80002360]<br>0x00000000|- rs2_w0_val == 33554432<br> - rs1_w0_val == 262144<br>                                                                                                                                                                        |[0x800005b0]:UKSUBW t6, t5, t4<br> [0x800005b4]:csrrs t5, vxsat, zero<br> [0x800005b8]:sw t6, 80(ra)<br>     |
|  44|[0x80002368]<br>0x00000000|- rs2_w0_val == 16777216<br> - rs1_w0_val == 64<br>                                                                                                                                                                            |[0x800005c8]:UKSUBW t6, t5, t4<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 88(ra)<br>     |
|  45|[0x80002370]<br>0xFF7BFFFF|- rs2_w0_val == 8388608<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                     |[0x800005e4]:UKSUBW t6, t5, t4<br> [0x800005e8]:csrrs t5, vxsat, zero<br> [0x800005ec]:sw t6, 96(ra)<br>     |
|  46|[0x80002378]<br>0x00000000|- rs2_w0_val == 512<br> - rs1_w0_val == 256<br>                                                                                                                                                                                |[0x800005fc]:UKSUBW t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 104(ra)<br>    |
|  47|[0x80002380]<br>0x00000000|- rs2_w0_val == 8192<br> - rs1_w0_val == 16<br>                                                                                                                                                                                |[0x80000614]:UKSUBW t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 112(ra)<br>    |
|  48|[0x80002388]<br>0x00000000|- rs1_w0_val == 4<br>                                                                                                                                                                                                          |[0x8000062c]:UKSUBW t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 120(ra)<br>    |
|  49|[0x80002390]<br>0x00000000|- rs2_w0_val == 4096<br> - rs1_w0_val == 2<br>                                                                                                                                                                                 |[0x80000644]:UKSUBW t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 128(ra)<br>    |
|  50|[0x80002398]<br>0x00000000|- rs2_w0_val == 128<br> - rs1_w0_val == 1<br>                                                                                                                                                                                  |[0x8000065c]:UKSUBW t6, t5, t4<br> [0x80000660]:csrrs t5, vxsat, zero<br> [0x80000664]:sw t6, 136(ra)<br>    |
|  51|[0x800023a0]<br>0xFFFFFFDF|- rs2_w0_val == 32<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                          |[0x80000674]:UKSUBW t6, t5, t4<br> [0x80000678]:csrrs t5, vxsat, zero<br> [0x8000067c]:sw t6, 144(ra)<br>    |
|  52|[0x800023a8]<br>0xFFBFFFFE|- rs2_w0_val == 4194304<br>                                                                                                                                                                                                    |[0x8000068c]:UKSUBW t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 152(ra)<br>    |
|  53|[0x800023b0]<br>0x00000000|- rs2_w0_val == 2097152<br>                                                                                                                                                                                                    |[0x800006a4]:UKSUBW t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 160(ra)<br>    |
|  54|[0x800023b8]<br>0xFFEFFFFD|- rs2_w0_val == 1048576<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                     |[0x800006bc]:UKSUBW t6, t5, t4<br> [0x800006c0]:csrrs t5, vxsat, zero<br> [0x800006c4]:sw t6, 168(ra)<br>    |
|  55|[0x800023c0]<br>0x01F80000|- rs2_w0_val == 524288<br>                                                                                                                                                                                                     |[0x800006d4]:UKSUBW t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 176(ra)<br>    |
|  56|[0x800023c8]<br>0x00000000|- rs2_w0_val == 262144<br>                                                                                                                                                                                                     |[0x800006ec]:UKSUBW t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 184(ra)<br>    |
|  57|[0x800023d0]<br>0x55535555|- rs2_w0_val == 131072<br>                                                                                                                                                                                                     |[0x80000708]:UKSUBW t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 192(ra)<br>    |
|  58|[0x800023d8]<br>0x0FFF0000|- rs2_w0_val == 65536<br>                                                                                                                                                                                                      |[0x80000720]:UKSUBW t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 200(ra)<br>    |
|  59|[0x800023e0]<br>0xFFFF7FDF|- rs2_w0_val == 32768<br> - rs1_w0_val == 4294967263<br>                                                                                                                                                                       |[0x80000738]:UKSUBW t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 208(ra)<br>    |
|  60|[0x800023e8]<br>0xFFBFBFFF|- rs2_w0_val == 16384<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                       |[0x80000754]:UKSUBW t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 216(ra)<br>    |
|  61|[0x800023f0]<br>0xFFFFF3FF|- rs2_w0_val == 1024<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                        |[0x80000770]:UKSUBW t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 224(ra)<br>    |
|  62|[0x800023f8]<br>0xBFFFFEFF|- rs2_w0_val == 256<br> - rs1_w0_val == 3221225471<br>                                                                                                                                                                         |[0x8000078c]:UKSUBW t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 232(ra)<br>    |
|  63|[0x80002400]<br>0xFF7FFFBF|- rs2_w0_val == 64<br>                                                                                                                                                                                                         |[0x800007a8]:UKSUBW t6, t5, t4<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sw t6, 240(ra)<br>    |
|  64|[0x80002408]<br>0xFFFFEFEF|- rs2_w0_val == 16<br>                                                                                                                                                                                                         |[0x800007c4]:UKSUBW t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 248(ra)<br>    |
|  65|[0x80002410]<br>0xFFFFBFF7|- rs2_w0_val == 8<br>                                                                                                                                                                                                          |[0x800007e0]:UKSUBW t6, t5, t4<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sw t6, 256(ra)<br>    |
|  66|[0x80002418]<br>0x0000003C|- rs2_w0_val == 4<br>                                                                                                                                                                                                          |[0x800007f8]:UKSUBW t6, t5, t4<br> [0x800007fc]:csrrs t5, vxsat, zero<br> [0x80000800]:sw t6, 264(ra)<br>    |
|  67|[0x80002420]<br>0x00000000|- rs2_w0_val == 2<br>                                                                                                                                                                                                          |[0x80000810]:UKSUBW t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 272(ra)<br>    |
|  68|[0x80002428]<br>0xFFFFFFEE|- rs2_w0_val == 1<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                           |[0x80000828]:UKSUBW t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 280(ra)<br>    |
|  69|[0x80002430]<br>0x00000000|- rs2_w0_val == 4294967295<br>                                                                                                                                                                                                 |[0x80000844]:UKSUBW t6, t5, t4<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sw t6, 288(ra)<br>    |
|  70|[0x80002440]<br>0x00000000|- rs1_w0_val == 2863311530<br>                                                                                                                                                                                                 |[0x8000087c]:UKSUBW t6, t5, t4<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sw t6, 304(ra)<br>    |
|  71|[0x80002448]<br>0xDFFFFEFF|- rs1_w0_val == 3758096383<br>                                                                                                                                                                                                 |[0x80000898]:UKSUBW t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 312(ra)<br>    |
|  72|[0x80002450]<br>0xFBFFFFED|- rs1_w0_val == 4227858431<br>                                                                                                                                                                                                 |[0x800008b4]:UKSUBW t6, t5, t4<br> [0x800008b8]:csrrs t5, vxsat, zero<br> [0x800008bc]:sw t6, 320(ra)<br>    |
|  73|[0x80002458]<br>0x00000000|- rs1_w0_val == 4261412863<br>                                                                                                                                                                                                 |[0x800008d0]:UKSUBW t6, t5, t4<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sw t6, 328(ra)<br>    |
|  74|[0x80002460]<br>0x0FF80000|- rs2_w0_val == 4026531839<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                  |[0x800008f0]:UKSUBW t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 336(ra)<br>    |
|  75|[0x80002468]<br>0xFFFBFFFF|- rs1_w0_val == 4294836223<br>                                                                                                                                                                                                 |[0x8000090c]:UKSUBW t6, t5, t4<br> [0x80000910]:csrrs t5, vxsat, zero<br> [0x80000914]:sw t6, 344(ra)<br>    |
|  76|[0x80002470]<br>0xFFFE7FFF|- rs1_w0_val == 4294901759<br>                                                                                                                                                                                                 |[0x80000928]:UKSUBW t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 352(ra)<br>    |
|  77|[0x80002478]<br>0xFFFF5FFF|- rs1_w0_val == 4294934527<br>                                                                                                                                                                                                 |[0x80000944]:UKSUBW t6, t5, t4<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sw t6, 360(ra)<br>    |
|  78|[0x80002480]<br>0x0007FC00|- rs1_w0_val == 4294966271<br>                                                                                                                                                                                                 |[0x80000960]:UKSUBW t6, t5, t4<br> [0x80000964]:csrrs t5, vxsat, zero<br> [0x80000968]:sw t6, 368(ra)<br>    |
|  79|[0x80002488]<br>0x01FFFE00|- rs1_w0_val == 4294966783<br>                                                                                                                                                                                                 |[0x8000097c]:UKSUBW t6, t5, t4<br> [0x80000980]:csrrs t5, vxsat, zero<br> [0x80000984]:sw t6, 376(ra)<br>    |
|  80|[0x80002490]<br>0x0001FF00|- rs1_w0_val == 4294967039<br>                                                                                                                                                                                                 |[0x80000998]:UKSUBW t6, t5, t4<br> [0x8000099c]:csrrs t5, vxsat, zero<br> [0x800009a0]:sw t6, 384(ra)<br>    |
|  81|[0x80002498]<br>0xFFFFFF6D|- rs1_w0_val == 4294967167<br>                                                                                                                                                                                                 |[0x800009b0]:UKSUBW t6, t5, t4<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sw t6, 392(ra)<br>    |
|  82|[0x800024a0]<br>0x00000000|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                                 |[0x800009c8]:UKSUBW t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 400(ra)<br>    |
|  83|[0x800024a8]<br>0xF7FFFFFB|- rs1_w0_val == 4294967291<br>                                                                                                                                                                                                 |[0x800009e0]:UKSUBW t6, t5, t4<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sw t6, 408(ra)<br>    |
|  84|[0x800024b0]<br>0x1FFFFFF1|- rs1_w0_val == 536870912<br>                                                                                                                                                                                                  |[0x800009f8]:UKSUBW t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 416(ra)<br>    |
|  85|[0x800024b8]<br>0x07FFFFF5|- rs1_w0_val == 134217728<br>                                                                                                                                                                                                  |[0x80000a10]:UKSUBW t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 424(ra)<br>    |
|  86|[0x800024c0]<br>0x00000000|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                   |[0x80000a2c]:UKSUBW t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 432(ra)<br>    |
|  87|[0x800024c8]<br>0x01000000|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                   |[0x80000a44]:UKSUBW t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 440(ra)<br>    |
|  88|[0x800024d0]<br>0x00800000|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                    |[0x80000a5c]:UKSUBW t6, t5, t4<br> [0x80000a60]:csrrs t5, vxsat, zero<br> [0x80000a64]:sw t6, 448(ra)<br>    |
|  89|[0x800024d8]<br>0x00000000|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                    |[0x80000a74]:UKSUBW t6, t5, t4<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sw t6, 456(ra)<br>    |
|  90|[0x800024e0]<br>0x00000000|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                    |[0x80000a8c]:UKSUBW t6, t5, t4<br> [0x80000a90]:csrrs t5, vxsat, zero<br> [0x80000a94]:sw t6, 464(ra)<br>    |
|  91|[0x800024e8]<br>0x00000000|- rs1_w0_val == 16384<br>                                                                                                                                                                                                      |[0x80000aa8]:UKSUBW t6, t5, t4<br> [0x80000aac]:csrrs t5, vxsat, zero<br> [0x80000ab0]:sw t6, 472(ra)<br>    |
|  92|[0x800024f0]<br>0x00000000|- rs1_w0_val == 8192<br>                                                                                                                                                                                                       |[0x80000ac0]:UKSUBW t6, t5, t4<br> [0x80000ac4]:csrrs t5, vxsat, zero<br> [0x80000ac8]:sw t6, 480(ra)<br>    |
|  93|[0x800024f8]<br>0x00000000|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                    |[0x80000adc]:UKSUBW t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 488(ra)<br>    |
|  94|[0x80002500]<br>0x0007FFFC|- rs1_w0_val == 524288<br>                                                                                                                                                                                                     |[0x80000af4]:UKSUBW t6, t5, t4<br> [0x80000af8]:csrrs t5, vxsat, zero<br> [0x80000afc]:sw t6, 496(ra)<br>    |
|  95|[0x80002510]<br>0x00000012|- rs1_w0_val == 32<br>                                                                                                                                                                                                         |[0x80000b24]:UKSUBW t6, t5, t4<br> [0x80000b28]:csrrs t5, vxsat, zero<br> [0x80000b2c]:sw t6, 512(ra)<br>    |
|  96|[0x80002518]<br>0x00000000|- rs1_w0_val == 2048<br>                                                                                                                                                                                                       |[0x80000b44]:UKSUBW t6, t5, t4<br> [0x80000b48]:csrrs t5, vxsat, zero<br> [0x80000b4c]:sw t6, 520(ra)<br>    |
