
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x801b35b0')]      |
| SIG_REGION                | [('0x801b6208', '0x801b6308', '32 dwords')]      |
| COV_LABELS                | jal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jal-01.S/jal-01.S    |
| Total Number of coverpoints| 37     |
| Total Coverpoints Hit     | 3      |
| Total Signature Updates   | 32      |
| STAT1                     | 1      |
| STAT2                     | 31      |
| STAT3                     | 32     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800b2e90]:jal zero, 4
      [0x800b2e94]:auipc a4, 1048568
      [0x800b2e98]:addi a4, a4, 4068
      [0x800b2e9c]:andi a4, a4, 4092
      [0x800b2ea0]:sub gp, gp, a4
      [0x800b2ea4]:sd gp, 8(s1)
 -- Signature Address: 0x801b6210 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800b2eb8]:jal zero, 524304
      [0x80132ec8]:auipc a4, 1048448
      [0x80132ecc]:addi a4, a4, 4064
      [0x80132ed0]:andi a4, a4, 4092
      [0x80132ed4]:sub s2, s2, a4
      [0x80132ed8]:sd s2, 16(s1)
 -- Signature Address: 0x801b6218 Data: 0x0000000000080011
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b2ef4]:jal zero, 4
      [0x801b2ef8]:auipc a4, 1048448
      [0x801b2efc]:addi a4, a4, 4068
      [0x801b2f00]:andi a4, a4, 4092
      [0x801b2f04]:sub sp, sp, a4
      [0x801b2f08]:sd sp, 24(s1)
 -- Signature Address: 0x801b6220 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b2f30]:jal zero, 4
      [0x801b2f34]:auipc a4, 0
      [0x801b2f38]:addi a4, a4, 4056
      [0x801b2f3c]:andi a4, a4, 4092
      [0x801b2f40]:sub s4, s4, a4
      [0x801b2f44]:sd s4, 32(s1)
 -- Signature Address: 0x801b6228 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b2f6c]:jal zero, 4
      [0x801b2f70]:auipc a4, 0
      [0x801b2f74]:addi a4, a4, 4056
      [0x801b2f78]:andi a4, a4, 4092
      [0x801b2f7c]:sub a0, a0, a4
      [0x801b2f80]:sd a0, 40(s1)
 -- Signature Address: 0x801b6230 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b2fa8]:jal zero, 4
      [0x801b2fac]:auipc a4, 0
      [0x801b2fb0]:addi a4, a4, 4056
      [0x801b2fb4]:andi a4, a4, 4092
      [0x801b2fb8]:sub s11, s11, a4
      [0x801b2fbc]:sd s11, 48(s1)
 -- Signature Address: 0x801b6238 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b2fe4]:jal zero, 4
      [0x801b2fe8]:auipc a4, 0
      [0x801b2fec]:addi a4, a4, 4056
      [0x801b2ff0]:andi a4, a4, 4092
      [0x801b2ff4]:sub a5, a5, a4
      [0x801b2ff8]:sd a5, 56(s1)
 -- Signature Address: 0x801b6240 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3020]:jal zero, 4
      [0x801b3024]:auipc a4, 0
      [0x801b3028]:addi a4, a4, 4056
      [0x801b302c]:andi a4, a4, 4092
      [0x801b3030]:sub s8, s8, a4
      [0x801b3034]:sd s8, 64(s1)
 -- Signature Address: 0x801b6248 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b305c]:jal zero, 4
      [0x801b3060]:auipc a4, 0
      [0x801b3064]:addi a4, a4, 4056
      [0x801b3068]:andi a4, a4, 4092
      [0x801b306c]:sub a2, a2, a4
      [0x801b3070]:sd a2, 72(s1)
 -- Signature Address: 0x801b6250 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3098]:jal zero, 4
      [0x801b309c]:auipc a4, 0
      [0x801b30a0]:addi a4, a4, 4056
      [0x801b30a4]:andi a4, a4, 4092
      [0x801b30a8]:sub s7, s7, a4
      [0x801b30ac]:sd s7, 80(s1)
 -- Signature Address: 0x801b6258 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b30d4]:jal zero, 4
      [0x801b30d8]:auipc a4, 0
      [0x801b30dc]:addi a4, a4, 4056
      [0x801b30e0]:andi a4, a4, 4092
      [0x801b30e4]:sub a6, a6, a4
      [0x801b30e8]:sd a6, 88(s1)
 -- Signature Address: 0x801b6260 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3110]:jal zero, 4
      [0x801b3114]:auipc a4, 0
      [0x801b3118]:addi a4, a4, 4056
      [0x801b311c]:andi a4, a4, 4092
      [0x801b3120]:sub tp, tp, a4
      [0x801b3124]:sd tp, 96(s1)
 -- Signature Address: 0x801b6268 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b314c]:jal zero, 4
      [0x801b3150]:auipc a4, 0
      [0x801b3154]:addi a4, a4, 4056
      [0x801b3158]:andi a4, a4, 4092
      [0x801b315c]:sub t1, t1, a4
      [0x801b3160]:sd t1, 104(s1)
 -- Signature Address: 0x801b6270 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3188]:jal zero, 4
      [0x801b318c]:auipc a4, 0
      [0x801b3190]:addi a4, a4, 4056
      [0x801b3194]:andi a4, a4, 4092
      [0x801b3198]:sub t2, t2, a4
      [0x801b319c]:sd t2, 112(s1)
 -- Signature Address: 0x801b6278 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b31c4]:jal zero, 4
      [0x801b31c8]:auipc a4, 0
      [0x801b31cc]:addi a4, a4, 4056
      [0x801b31d0]:andi a4, a4, 4092
      [0x801b31d4]:sub s6, s6, a4
      [0x801b31d8]:sd s6, 120(s1)
 -- Signature Address: 0x801b6280 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3200]:jal zero, 4
      [0x801b3204]:auipc a4, 0
      [0x801b3208]:addi a4, a4, 4056
      [0x801b320c]:andi a4, a4, 4092
      [0x801b3210]:sub s5, s5, a4
      [0x801b3214]:sd s5, 128(s1)
 -- Signature Address: 0x801b6288 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b323c]:jal zero, 4
      [0x801b3240]:auipc a4, 0
      [0x801b3244]:addi a4, a4, 4056
      [0x801b3248]:andi a4, a4, 4092
      [0x801b324c]:sub t3, t3, a4
      [0x801b3250]:sd t3, 136(s1)
 -- Signature Address: 0x801b6290 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3278]:jal zero, 4
      [0x801b327c]:auipc a4, 0
      [0x801b3280]:addi a4, a4, 4056
      [0x801b3284]:andi a4, a4, 4092
      [0x801b3288]:sub a7, a7, a4
      [0x801b328c]:sd a7, 144(s1)
 -- Signature Address: 0x801b6298 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b32b4]:jal zero, 4
      [0x801b32b8]:auipc a4, 0
      [0x801b32bc]:addi a4, a4, 4056
      [0x801b32c0]:andi a4, a4, 4092
      [0x801b32c4]:sub t5, t5, a4
      [0x801b32c8]:sd t5, 152(s1)
 -- Signature Address: 0x801b62a0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b32f0]:jal zero, 4
      [0x801b32f4]:auipc a4, 0
      [0x801b32f8]:addi a4, a4, 4056
      [0x801b32fc]:andi a4, a4, 4092
      [0x801b3300]:sub a3, a3, a4
      [0x801b3304]:sd a3, 160(s1)
 -- Signature Address: 0x801b62a8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b332c]:jal zero, 4
      [0x801b3330]:auipc a4, 0
      [0x801b3334]:addi a4, a4, 4056
      [0x801b3338]:andi a4, a4, 4092
      [0x801b333c]:sub t0, t0, a4
      [0x801b3340]:sd t0, 168(s1)
 -- Signature Address: 0x801b62b0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3368]:jal zero, 4
      [0x801b336c]:auipc a4, 0
      [0x801b3370]:addi a4, a4, 4056
      [0x801b3374]:andi a4, a4, 4092
      [0x801b3378]:sub zero, zero, a4
      [0x801b337c]:sd zero, 176(s1)
 -- Signature Address: 0x801b62b8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b33a4]:jal zero, 4
      [0x801b33a8]:auipc a4, 0
      [0x801b33ac]:addi a4, a4, 4056
      [0x801b33b0]:andi a4, a4, 4092
      [0x801b33b4]:sub s9, s9, a4
      [0x801b33b8]:sd s9, 184(s1)
 -- Signature Address: 0x801b62c0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b33e0]:jal zero, 4
      [0x801b33e4]:auipc a4, 0
      [0x801b33e8]:addi a4, a4, 4056
      [0x801b33ec]:andi a4, a4, 4092
      [0x801b33f0]:sub s3, s3, a4
      [0x801b33f4]:sd s3, 192(s1)
 -- Signature Address: 0x801b62c8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b341c]:jal zero, 4
      [0x801b3420]:auipc a4, 0
      [0x801b3424]:addi a4, a4, 4056
      [0x801b3428]:andi a4, a4, 4092
      [0x801b342c]:sub s10, s10, a4
      [0x801b3430]:sd s10, 200(s1)
 -- Signature Address: 0x801b62d0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3458]:jal zero, 4
      [0x801b345c]:auipc a4, 0
      [0x801b3460]:addi a4, a4, 4056
      [0x801b3464]:andi a4, a4, 4092
      [0x801b3468]:sub fp, fp, a4
      [0x801b346c]:sd fp, 208(s1)
 -- Signature Address: 0x801b62d8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3494]:jal zero, 4
      [0x801b3498]:auipc a4, 0
      [0x801b349c]:addi a4, a4, 4056
      [0x801b34a0]:andi a4, a4, 4092
      [0x801b34a4]:sub ra, ra, a4
      [0x801b34a8]:sd ra, 216(s1)
 -- Signature Address: 0x801b62e0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b34d0]:jal zero, 4
      [0x801b34d4]:auipc sp, 0
      [0x801b34d8]:addi sp, sp, 4056
      [0x801b34dc]:andi sp, sp, 4092
      [0x801b34e0]:sub a4, a4, sp
      [0x801b34e4]:sd a4, 224(s1)
 -- Signature Address: 0x801b62e8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3514]:jal zero, 4
      [0x801b3518]:auipc sp, 0
      [0x801b351c]:addi sp, sp, 4056
      [0x801b3520]:andi sp, sp, 4092
      [0x801b3524]:sub t4, t4, sp
      [0x801b3528]:sd t4, 0(ra)
 -- Signature Address: 0x801b62f0 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b3550]:jal zero, 4
      [0x801b3554]:auipc sp, 0
      [0x801b3558]:addi sp, sp, 4056
      [0x801b355c]:andi sp, sp, 4092
      [0x801b3560]:sub t6, t6, sp
      [0x801b3564]:sd t6, 8(ra)
 -- Signature Address: 0x801b62f8 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x801b358c]:jal zero, 4
      [0x801b3590]:auipc sp, 0
      [0x801b3594]:addi sp, sp, 4056
      [0x801b3598]:andi sp, sp, 4092
      [0x801b359c]:sub s1, s1, sp
      [0x801b35a0]:sd s1, 16(ra)
 -- Signature Address: 0x801b6300 Data: 0x000000000000001B
 -- Redundant Coverpoints hit by the op
      - opcode : jal
      - rd : x0
      - imm_val > 0






```

## Details of STAT3

```
[0x800aae50]:jal a1, 1398100
[0x800003a4]:xori a1, a1, 1

[0x800aae8c]:jal gp, 32768
[0x800b2e8c]:xori gp, gp, 3

[0x80132eb4]:jal s2, 1572864
[0x800b2eb4]:xori s2, s2, 1

[0x80132ef0]:jal sp, 524288
[0x801b2ef0]:xori sp, sp, 3

[0x801b2f20]:jal s4, 12
[0x801b2f2c]:xori s4, s4, 3

[0x801b2f5c]:jal a0, 12
[0x801b2f68]:xori a0, a0, 3

[0x801b2f98]:jal s11, 12
[0x801b2fa4]:xori s11, s11, 3

[0x801b2fd4]:jal a5, 12
[0x801b2fe0]:xori a5, a5, 3

[0x801b3010]:jal s8, 12
[0x801b301c]:xori s8, s8, 3

[0x801b304c]:jal a2, 12
[0x801b3058]:xori a2, a2, 3

[0x801b3088]:jal s7, 12
[0x801b3094]:xori s7, s7, 3

[0x801b30c4]:jal a6, 12
[0x801b30d0]:xori a6, a6, 3

[0x801b3100]:jal tp, 12
[0x801b310c]:xori tp, tp, 3

[0x801b313c]:jal t1, 12
[0x801b3148]:xori t1, t1, 3

[0x801b3178]:jal t2, 12
[0x801b3184]:xori t2, t2, 3

[0x801b31b4]:jal s6, 12
[0x801b31c0]:xori s6, s6, 3

[0x801b31f0]:jal s5, 12
[0x801b31fc]:xori s5, s5, 3

[0x801b322c]:jal t3, 12
[0x801b3238]:xori t3, t3, 3

[0x801b3268]:jal a7, 12
[0x801b3274]:xori a7, a7, 3

[0x801b32a4]:jal t5, 12
[0x801b32b0]:xori t5, t5, 3

[0x801b32e0]:jal a3, 12
[0x801b32ec]:xori a3, a3, 3

[0x801b331c]:jal t0, 12
[0x801b3328]:xori t0, t0, 3

[0x801b3358]:jal zero, 12
[0x801b3364]:xori zero, zero, 3

[0x801b3394]:jal s9, 12
[0x801b33a0]:xori s9, s9, 3

[0x801b33d0]:jal s3, 12
[0x801b33dc]:xori s3, s3, 3

[0x801b340c]:jal s10, 12
[0x801b3418]:xori s10, s10, 3

[0x801b3448]:jal fp, 12
[0x801b3454]:xori fp, fp, 3

[0x801b3484]:jal ra, 12
[0x801b3490]:xori ra, ra, 3

[0x801b34c0]:jal a4, 12
[0x801b34cc]:xori a4, a4, 3

[0x801b3504]:jal t4, 12
[0x801b3510]:xori t4, t4, 3

[0x801b3540]:jal t6, 12
[0x801b354c]:xori t6, t6, 3

[0x801b357c]:jal s1, 12
[0x801b3588]:xori s1, s1, 3



```

## Details of STAT4:

```

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

|s.no|            signature             |          coverpoints           |                                                                                                  code                                                                                                   |
|---:|----------------------------------|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x801b6208]<br>0x00000000000AAABD|- rd : x0<br> - imm_val > 0<br> |[0x800003a8]:jal zero, 699068<br> [0x800aae64]:auipc a4, 1048405<br> [0x800aae68]:addi a4, a4, 1332<br> [0x800aae6c]:andi a4, a4, 4092<br> [0x800aae70]:sub a1, a1, a4<br> [0x800aae74]:sd a1, 0(s1)<br> |
