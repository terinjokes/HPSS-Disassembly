; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    dec bc                                        ; $4000: $0b
    dec bc                                        ; $4001: $0b
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    sbc h                                         ; $4005: $9c
    ld [bc], a                                    ; $4006: $02
    inc [hl]                                      ; $4007: $34
    ld [bc], a                                    ; $4008: $02
    sbc d                                         ; $4009: $9a
    inc b                                         ; $400a: $04
    cpl                                           ; $400b: $2f
    dec b                                         ; $400c: $05
    cp [hl]                                       ; $400d: $be
    rlca                                          ; $400e: $07
    ld c, l                                       ; $400f: $4d
    ld a, [bc]                                    ; $4010: $0a
    and h                                         ; $4011: $a4
    dec bc                                        ; $4012: $0b
    jr z, jr_00b_4022                             ; $4013: $28 $0d

    ld h, $0d                                     ; $4015: $26 $0d
    ret z                                         ; $4017: $c8

    ld e, a                                       ; $4018: $5f
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    add hl, bc                                    ; $401b: $09
    nop                                           ; $401c: $00
    rlca                                          ; $401d: $07
    dec b                                         ; $401e: $05
    jr nc, jr_00b_4021                            ; $401f: $30 $00

jr_00b_4021:
    add hl, bc                                    ; $4021: $09

jr_00b_4022:
    inc c                                         ; $4022: $0c
    ld bc, $0305                                  ; $4023: $01 $05 $03
    nop                                           ; $4026: $00
    ld e, a                                       ; $4027: $5f
    ld bc, $0000                                  ; $4028: $01 $00 $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    rrca                                          ; $402d: $0f
    inc c                                         ; $402e: $0c
    ld bc, $0056                                  ; $402f: $01 $56 $00
    nop                                           ; $4032: $00
    rla                                           ; $4033: $17
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    dec de                                        ; $4036: $1b
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    inc de                                        ; $4039: $13
    nop                                           ; $403a: $00
    adc [hl]                                      ; $403b: $8e
    inc d                                         ; $403c: $14
    nop                                           ; $403d: $00
    ld [hl], $15                                  ; $403e: $36 $15
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    ld d, $2f                                     ; $4042: $16 $2f
    nop                                           ; $4044: $00
    dec de                                        ; $4045: $1b
    inc b                                         ; $4046: $04
    nop                                           ; $4047: $00
    inc de                                        ; $4048: $13
    nop                                           ; $4049: $00
    adc $14                                       ; $404a: $ce $14
    nop                                           ; $404c: $00
    dec a                                         ; $404d: $3d
    dec d                                         ; $404e: $15
    nop                                           ; $404f: $00
    nop                                           ; $4050: $00
    ld d, $2c                                     ; $4051: $16 $2c
    nop                                           ; $4053: $00
    dec de                                        ; $4054: $1b
    ld b, $00                                     ; $4055: $06 $00
    ld e, a                                       ; $4057: $5f
    ld bc, $6d00                                  ; $4058: $01 $00 $6d
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    dec d                                         ; $405d: $15
    ld b, e                                       ; $405e: $43
    nop                                           ; $405f: $00
    inc sp                                        ; $4060: $33
    ld bc, $1782                                  ; $4061: $01 $82 $17
    inc l                                         ; $4064: $2c
    nop                                           ; $4065: $00
    dec d                                         ; $4066: $15
    ld b, $00                                     ; $4067: $06 $00
    add hl, de                                    ; $4069: $19
    nop                                           ; $406a: $00
    jr z, jr_00b_4088                             ; $406b: $28 $1b

    ld b, $00                                     ; $406d: $06 $00
    dec d                                         ; $406f: $15
    ccf                                           ; $4070: $3f
    nop                                           ; $4071: $00
    inc sp                                        ; $4072: $33
    ld bc, $1583                                  ; $4073: $01 $83 $15
    ld b, e                                       ; $4076: $43
    nop                                           ; $4077: $00
    inc sp                                        ; $4078: $33
    ld bc, $2e84                                  ; $4079: $01 $84 $2e
    inc a                                         ; $407c: $3c
    nop                                           ; $407d: $00
    rla                                           ; $407e: $17
    cpl                                           ; $407f: $2f
    nop                                           ; $4080: $00
    ld e, $2f                                     ; $4081: $1e $2f
    nop                                           ; $4083: $00
    dec d                                         ; $4084: $15
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    inc sp                                        ; $4087: $33

jr_00b_4088:
    ld bc, $1585                                  ; $4088: $01 $85 $15
    ccf                                           ; $408b: $3f
    nop                                           ; $408c: $00
    inc sp                                        ; $408d: $33
    ld bc, $1786                                  ; $408e: $01 $86 $17
    inc l                                         ; $4091: $2c
    nop                                           ; $4092: $00
    dec d                                         ; $4093: $15
    ld [bc], a                                    ; $4094: $02
    nop                                           ; $4095: $00
    add hl, de                                    ; $4096: $19
    nop                                           ; $4097: $00
    jr z, jr_00b_40b5                             ; $4098: $28 $1b

    ld [bc], a                                    ; $409a: $02
    nop                                           ; $409b: $00
    dec d                                         ; $409c: $15
    inc b                                         ; $409d: $04
    nop                                           ; $409e: $00
    add hl, de                                    ; $409f: $19
    nop                                           ; $40a0: $00
    ld a, l                                       ; $40a1: $7d
    ld e, $2c                                     ; $40a2: $1e $2c
    nop                                           ; $40a4: $00
    ld a, d                                       ; $40a5: $7a
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    ld d, a                                       ; $40a8: $57
    nop                                           ; $40a9: $00
    nop                                           ; $40aa: $00
    nop                                           ; $40ab: $00
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    ld e, a                                       ; $40ae: $5f
    ld bc, $0000                                  ; $40af: $01 $00 $00
    nop                                           ; $40b2: $00
    nop                                           ; $40b3: $00
    ld e, a                                       ; $40b4: $5f

jr_00b_40b5:
    nop                                           ; $40b5: $00
    nop                                           ; $40b6: $00
    add hl, bc                                    ; $40b7: $09
    nop                                           ; $40b8: $00
    rlca                                          ; $40b9: $07
    dec b                                         ; $40ba: $05
    rlca                                          ; $40bb: $07
    nop                                           ; $40bc: $00
    ld e, a                                       ; $40bd: $5f
    ld bc, $1500                                  ; $40be: $01 $00 $15
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    inc sp                                        ; $40c3: $33
    ld bc, $1578                                  ; $40c4: $01 $78 $15
    ld c, a                                       ; $40c7: $4f
    nop                                           ; $40c8: $00
    inc sp                                        ; $40c9: $33
    ld bc, $007e                                  ; $40ca: $01 $7e $00
    nop                                           ; $40cd: $00
    nop                                           ; $40ce: $00
    add hl, bc                                    ; $40cf: $09
    nop                                           ; $40d0: $00
    ld d, d                                       ; $40d1: $52
    dec b                                         ; $40d2: $05
    ld b, $00                                     ; $40d3: $06 $00
    ld e, a                                       ; $40d5: $5f
    ld bc, $1500                                  ; $40d6: $01 $00 $15
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    inc sp                                        ; $40db: $33
    ld bc, $1595                                  ; $40dc: $01 $95 $15
    ld c, a                                       ; $40df: $4f
    nop                                           ; $40e0: $00
    inc sp                                        ; $40e1: $33
    ld a, [bc]                                    ; $40e2: $0a
    rla                                           ; $40e3: $17
    add hl, bc                                    ; $40e4: $09
    nop                                           ; $40e5: $00
    ld d, e                                       ; $40e6: $53
    dec b                                         ; $40e7: $05
    dec b                                         ; $40e8: $05
    nop                                           ; $40e9: $00
    ld e, a                                       ; $40ea: $5f
    ld bc, $1500                                  ; $40eb: $01 $00 $15
    ld c, a                                       ; $40ee: $4f
    nop                                           ; $40ef: $00
    inc sp                                        ; $40f0: $33
    ld [bc], a                                    ; $40f1: $02
    dec de                                        ; $40f2: $1b
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    add hl, bc                                    ; $40f6: $09
    nop                                           ; $40f7: $00
    ld b, $05                                     ; $40f8: $06 $05
    dec b                                         ; $40fa: $05
    nop                                           ; $40fb: $00
    ld e, a                                       ; $40fc: $5f
    ld bc, $1500                                  ; $40fd: $01 $00 $15
    ld c, a                                       ; $4100: $4f
    nop                                           ; $4101: $00
    inc sp                                        ; $4102: $33
    ld bc, $0051                                  ; $4103: $01 $51 $00
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    add hl, bc                                    ; $4108: $09
    nop                                           ; $4109: $00
    ld [$0505], sp                                ; $410a: $08 $05 $05
    nop                                           ; $410d: $00
    ld e, a                                       ; $410e: $5f
    ld bc, $1500                                  ; $410f: $01 $00 $15
    ld c, a                                       ; $4112: $4f
    nop                                           ; $4113: $00
    inc sp                                        ; $4114: $33
    ld bc, $0051                                  ; $4115: $01 $51 $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    add hl, bc                                    ; $411a: $09
    nop                                           ; $411b: $00
    add hl, bc                                    ; $411c: $09
    dec b                                         ; $411d: $05
    dec b                                         ; $411e: $05
    nop                                           ; $411f: $00
    ld e, a                                       ; $4120: $5f
    ld bc, $1500                                  ; $4121: $01 $00 $15
    ld c, a                                       ; $4124: $4f
    nop                                           ; $4125: $00
    inc sp                                        ; $4126: $33
    ld bc, $0051                                  ; $4127: $01 $51 $00
    nop                                           ; $412a: $00
    nop                                           ; $412b: $00
    add hl, bc                                    ; $412c: $09
    nop                                           ; $412d: $00
    ld d, [hl]                                    ; $412e: $56
    dec b                                         ; $412f: $05
    dec b                                         ; $4130: $05
    nop                                           ; $4131: $00
    ld e, a                                       ; $4132: $5f
    ld bc, $1500                                  ; $4133: $01 $00 $15
    ld c, a                                       ; $4136: $4f
    nop                                           ; $4137: $00
    inc sp                                        ; $4138: $33
    ld bc, $0051                                  ; $4139: $01 $51 $00
    nop                                           ; $413c: $00
    nop                                           ; $413d: $00
    add hl, bc                                    ; $413e: $09
    nop                                           ; $413f: $00
    dec bc                                        ; $4140: $0b
    dec b                                         ; $4141: $05
    dec bc                                        ; $4142: $0b
    nop                                           ; $4143: $00
    ld d, [hl]                                    ; $4144: $56
    nop                                           ; $4145: $00
    nop                                           ; $4146: $00
    rla                                           ; $4147: $17
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    inc e                                         ; $414a: $1c
    dec sp                                        ; $414b: $3b
    ld bc, $015f                                  ; $414c: $01 $5f $01
    nop                                           ; $414f: $00
    dec d                                         ; $4150: $15
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    inc sp                                        ; $4153: $33
    inc bc                                        ; $4154: $03
    ld [hl], c                                    ; $4155: $71
    dec d                                         ; $4156: $15
    ld c, a                                       ; $4157: $4f
    nop                                           ; $4158: $00
    inc sp                                        ; $4159: $33
    inc bc                                        ; $415a: $03
    ld [hl], d                                    ; $415b: $72
    ld d, a                                       ; $415c: $57
    nop                                           ; $415d: $00
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    add hl, bc                                    ; $4162: $09
    nop                                           ; $4163: $00
    ld e, h                                       ; $4164: $5c
    dec b                                         ; $4165: $05
    dec bc                                        ; $4166: $0b
    nop                                           ; $4167: $00
    ld d, [hl]                                    ; $4168: $56
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    rla                                           ; $416b: $17
    nop                                           ; $416c: $00
    nop                                           ; $416d: $00
    inc e                                         ; $416e: $1c
    dec sp                                        ; $416f: $3b
    ld bc, $015f                                  ; $4170: $01 $5f $01
    nop                                           ; $4173: $00
    dec d                                         ; $4174: $15
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    inc sp                                        ; $4177: $33
    inc b                                         ; $4178: $04
    call nc, Call_00b_4f15                        ; $4179: $d4 $15 $4f
    nop                                           ; $417c: $00
    inc sp                                        ; $417d: $33
    inc b                                         ; $417e: $04
    ld [$0057], a                                 ; $417f: $ea $57 $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    add hl, bc                                    ; $4186: $09
    nop                                           ; $4187: $00
    db $10                                        ; $4188: $10
    dec b                                         ; $4189: $05
    dec bc                                        ; $418a: $0b
    nop                                           ; $418b: $00
    ld d, [hl]                                    ; $418c: $56
    nop                                           ; $418d: $00
    nop                                           ; $418e: $00
    rla                                           ; $418f: $17
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    inc e                                         ; $4192: $1c
    dec sp                                        ; $4193: $3b
    ld bc, $015f                                  ; $4194: $01 $5f $01
    nop                                           ; $4197: $00
    dec d                                         ; $4198: $15
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    inc sp                                        ; $419b: $33
    ld [bc], a                                    ; $419c: $02
    ld b, l                                       ; $419d: $45
    dec d                                         ; $419e: $15
    ld c, a                                       ; $419f: $4f
    nop                                           ; $41a0: $00
    inc sp                                        ; $41a1: $33
    ld [bc], a                                    ; $41a2: $02
    and c                                         ; $41a3: $a1
    ld d, a                                       ; $41a4: $57
    nop                                           ; $41a5: $00
    nop                                           ; $41a6: $00
    nop                                           ; $41a7: $00
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    add hl, bc                                    ; $41aa: $09
    nop                                           ; $41ab: $00
    ld de, $0b05                                  ; $41ac: $11 $05 $0b
    nop                                           ; $41af: $00
    ld d, [hl]                                    ; $41b0: $56
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    rla                                           ; $41b3: $17
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00
    inc e                                         ; $41b6: $1c
    dec sp                                        ; $41b7: $3b
    ld bc, $015f                                  ; $41b8: $01 $5f $01
    nop                                           ; $41bb: $00
    dec d                                         ; $41bc: $15
    nop                                           ; $41bd: $00
    nop                                           ; $41be: $00
    inc sp                                        ; $41bf: $33
    ld [bc], a                                    ; $41c0: $02
    ld b, l                                       ; $41c1: $45
    dec d                                         ; $41c2: $15
    ld c, a                                       ; $41c3: $4f
    nop                                           ; $41c4: $00
    inc sp                                        ; $41c5: $33
    ld [bc], a                                    ; $41c6: $02
    and c                                         ; $41c7: $a1
    ld d, a                                       ; $41c8: $57
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    nop                                           ; $41cb: $00
    nop                                           ; $41cc: $00
    nop                                           ; $41cd: $00
    add hl, bc                                    ; $41ce: $09
    nop                                           ; $41cf: $00
    ccf                                           ; $41d0: $3f
    dec b                                         ; $41d1: $05
    add hl, bc                                    ; $41d2: $09
    nop                                           ; $41d3: $00
    ld d, [hl]                                    ; $41d4: $56
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    rla                                           ; $41d7: $17
    nop                                           ; $41d8: $00
    nop                                           ; $41d9: $00
    inc e                                         ; $41da: $1c
    dec sp                                        ; $41db: $3b
    ld bc, $015f                                  ; $41dc: $01 $5f $01
    nop                                           ; $41df: $00
    dec d                                         ; $41e0: $15
    ld c, a                                       ; $41e1: $4f
    nop                                           ; $41e2: $00
    inc sp                                        ; $41e3: $33
    add hl, bc                                    ; $41e4: $09
    and $57                                       ; $41e5: $e6 $57
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    add hl, bc                                    ; $41ec: $09
    nop                                           ; $41ed: $00
    dec a                                         ; $41ee: $3d
    dec b                                         ; $41ef: $05
    add hl, bc                                    ; $41f0: $09
    nop                                           ; $41f1: $00
    ld d, [hl]                                    ; $41f2: $56
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    rla                                           ; $41f5: $17
    nop                                           ; $41f6: $00
    nop                                           ; $41f7: $00
    inc e                                         ; $41f8: $1c
    dec sp                                        ; $41f9: $3b
    ld bc, $015f                                  ; $41fa: $01 $5f $01
    nop                                           ; $41fd: $00
    dec d                                         ; $41fe: $15
    ld c, a                                       ; $41ff: $4f
    nop                                           ; $4200: $00
    inc sp                                        ; $4201: $33
    dec bc                                        ; $4202: $0b
    ld e, a                                       ; $4203: $5f
    ld d, a                                       ; $4204: $57
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    add hl, bc                                    ; $420a: $09
    nop                                           ; $420b: $00
    ld d, h                                       ; $420c: $54
    dec b                                         ; $420d: $05
    add hl, bc                                    ; $420e: $09
    nop                                           ; $420f: $00
    ld d, [hl]                                    ; $4210: $56
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    rla                                           ; $4213: $17
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    inc e                                         ; $4216: $1c
    dec sp                                        ; $4217: $3b
    ld bc, $015f                                  ; $4218: $01 $5f $01
    nop                                           ; $421b: $00
    dec d                                         ; $421c: $15
    ld c, a                                       ; $421d: $4f
    nop                                           ; $421e: $00
    inc sp                                        ; $421f: $33
    ld bc, $5751                                  ; $4220: $01 $51 $57
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    add hl, bc                                    ; $4228: $09
    nop                                           ; $4229: $00
    ld e, e                                       ; $422a: $5b
    dec b                                         ; $422b: $05
    add hl, bc                                    ; $422c: $09
    nop                                           ; $422d: $00
    ld d, [hl]                                    ; $422e: $56
    nop                                           ; $422f: $00
    nop                                           ; $4230: $00
    rla                                           ; $4231: $17
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    inc e                                         ; $4234: $1c
    dec sp                                        ; $4235: $3b
    ld bc, $015f                                  ; $4236: $01 $5f $01
    nop                                           ; $4239: $00
    dec d                                         ; $423a: $15
    ld c, a                                       ; $423b: $4f
    nop                                           ; $423c: $00
    inc sp                                        ; $423d: $33
    dec bc                                        ; $423e: $0b
    ld e, a                                       ; $423f: $5f
    ld d, a                                       ; $4240: $57
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    ld e, a                                       ; $4246: $5f
    ld bc, $0000                                  ; $4247: $01 $00 $00
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    ld e, a                                       ; $424c: $5f
    nop                                           ; $424d: $00
    nop                                           ; $424e: $00
    add hl, bc                                    ; $424f: $09
    nop                                           ; $4250: $00
    dec bc                                        ; $4251: $0b
    dec b                                         ; $4252: $05
    ld e, $00                                     ; $4253: $1e $00
    rrca                                          ; $4255: $0f
    ld [$0901], sp                                ; $4256: $08 $01 $09
    dec c                                         ; $4259: $0d
    ld bc, $0305                                  ; $425a: $01 $05 $03
    nop                                           ; $425d: $00
    ld e, a                                       ; $425e: $5f
    ld bc, $0000                                  ; $425f: $01 $00 $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    ld d, [hl]                                    ; $4264: $56
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    rla                                           ; $4267: $17
    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    dec de                                        ; $426a: $1b
    ld [bc], a                                    ; $426b: $02
    nop                                           ; $426c: $00
    inc de                                        ; $426d: $13
    nop                                           ; $426e: $00
    inc [hl]                                      ; $426f: $34
    inc d                                         ; $4270: $14
    nop                                           ; $4271: $00
    adc d                                         ; $4272: $8a
    dec d                                         ; $4273: $15
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    ld d, $4d                                     ; $4276: $16 $4d
    nop                                           ; $4278: $00
    ld d, d                                       ; $4279: $52
    nop                                           ; $427a: $00
    nop                                           ; $427b: $00
    dec de                                        ; $427c: $1b
    inc b                                         ; $427d: $04
    nop                                           ; $427e: $00
    ld e, a                                       ; $427f: $5f
    ld bc, $1700                                  ; $4280: $01 $00 $17
    ld c, l                                       ; $4283: $4d
    nop                                           ; $4284: $00
    dec d                                         ; $4285: $15
    inc b                                         ; $4286: $04
    nop                                           ; $4287: $00
    add hl, de                                    ; $4288: $19
    nop                                           ; $4289: $00
    inc l                                         ; $428a: $2c
    dec de                                        ; $428b: $1b
    ld b, $00                                     ; $428c: $06 $00
    dec d                                         ; $428e: $15
    nop                                           ; $428f: $00
    nop                                           ; $4290: $00
    inc sp                                        ; $4291: $33
    inc bc                                        ; $4292: $03
    ld [hl], c                                    ; $4293: $71
    dec d                                         ; $4294: $15
    add hl, sp                                    ; $4295: $39
    nop                                           ; $4296: $00
    inc sp                                        ; $4297: $33
    inc bc                                        ; $4298: $03
    add d                                         ; $4299: $82
    dec d                                         ; $429a: $15
    inc b                                         ; $429b: $04
    nop                                           ; $429c: $00
    add hl, de                                    ; $429d: $19
    nop                                           ; $429e: $00
    ld h, h                                       ; $429f: $64
    ld e, $4d                                     ; $42a0: $1e $4d
    nop                                           ; $42a2: $00
    rrca                                          ; $42a3: $0f
    dec c                                         ; $42a4: $0d
    ld bc, $0057                                  ; $42a5: $01 $57 $00
    nop                                           ; $42a8: $00
    nop                                           ; $42a9: $00
    nop                                           ; $42aa: $00
    nop                                           ; $42ab: $00
    ld e, a                                       ; $42ac: $5f
    ld bc, $0000                                  ; $42ad: $01 $00 $00
    nop                                           ; $42b0: $00
    nop                                           ; $42b1: $00
    ld e, a                                       ; $42b2: $5f
    nop                                           ; $42b3: $00
    nop                                           ; $42b4: $00
    add hl, bc                                    ; $42b5: $09
    nop                                           ; $42b6: $00
    ld d, e                                       ; $42b7: $53
    dec b                                         ; $42b8: $05
    dec b                                         ; $42b9: $05
    nop                                           ; $42ba: $00
    ld e, a                                       ; $42bb: $5f
    ld bc, $1500                                  ; $42bc: $01 $00 $15
    ld d, l                                       ; $42bf: $55
    nop                                           ; $42c0: $00
    inc sp                                        ; $42c1: $33
    ld [bc], a                                    ; $42c2: $02
    inc e                                         ; $42c3: $1c
    nop                                           ; $42c4: $00
    nop                                           ; $42c5: $00
    nop                                           ; $42c6: $00
    add hl, bc                                    ; $42c7: $09
    nop                                           ; $42c8: $00
    ld b, $05                                     ; $42c9: $06 $05
    dec b                                         ; $42cb: $05
    nop                                           ; $42cc: $00
    ld e, a                                       ; $42cd: $5f
    ld bc, $1500                                  ; $42ce: $01 $00 $15
    ld d, l                                       ; $42d1: $55
    nop                                           ; $42d2: $00
    inc sp                                        ; $42d3: $33
    ld bc, $0052                                  ; $42d4: $01 $52 $00
    nop                                           ; $42d7: $00
    nop                                           ; $42d8: $00
    add hl, bc                                    ; $42d9: $09
    nop                                           ; $42da: $00
    rlca                                          ; $42db: $07
    dec b                                         ; $42dc: $05
    dec b                                         ; $42dd: $05
    nop                                           ; $42de: $00
    ld e, a                                       ; $42df: $5f
    ld bc, $1500                                  ; $42e0: $01 $00 $15
    ld d, l                                       ; $42e3: $55
    nop                                           ; $42e4: $00
    inc sp                                        ; $42e5: $33
    ld bc, $0052                                  ; $42e6: $01 $52 $00
    nop                                           ; $42e9: $00
    nop                                           ; $42ea: $00
    add hl, bc                                    ; $42eb: $09
    nop                                           ; $42ec: $00
    ld d, d                                       ; $42ed: $52
    dec b                                         ; $42ee: $05
    rlca                                          ; $42ef: $07
    nop                                           ; $42f0: $00
    ld e, a                                       ; $42f1: $5f
    ld bc, $1500                                  ; $42f2: $01 $00 $15
    nop                                           ; $42f5: $00
    nop                                           ; $42f6: $00
    inc sp                                        ; $42f7: $33
    ld bc, $1595                                  ; $42f8: $01 $95 $15
    ld d, l                                       ; $42fb: $55
    nop                                           ; $42fc: $00
    inc sp                                        ; $42fd: $33
    ld a, [bc]                                    ; $42fe: $0a
    jr jr_00b_4301                                ; $42ff: $18 $00

jr_00b_4301:
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    add hl, bc                                    ; $4303: $09
    nop                                           ; $4304: $00
    ld [$0505], sp                                ; $4305: $08 $05 $05
    nop                                           ; $4308: $00
    ld e, a                                       ; $4309: $5f
    ld bc, $1500                                  ; $430a: $01 $00 $15
    ld d, l                                       ; $430d: $55
    nop                                           ; $430e: $00
    inc sp                                        ; $430f: $33
    ld bc, $0052                                  ; $4310: $01 $52 $00
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    add hl, bc                                    ; $4315: $09
    nop                                           ; $4316: $00
    add hl, bc                                    ; $4317: $09
    dec b                                         ; $4318: $05
    dec b                                         ; $4319: $05
    nop                                           ; $431a: $00
    ld e, a                                       ; $431b: $5f
    ld bc, $1500                                  ; $431c: $01 $00 $15
    ld d, l                                       ; $431f: $55
    nop                                           ; $4320: $00
    inc sp                                        ; $4321: $33
    ld bc, $0052                                  ; $4322: $01 $52 $00
    nop                                           ; $4325: $00
    nop                                           ; $4326: $00
    add hl, bc                                    ; $4327: $09
    nop                                           ; $4328: $00
    ld d, [hl]                                    ; $4329: $56
    dec b                                         ; $432a: $05
    dec b                                         ; $432b: $05
    nop                                           ; $432c: $00
    ld e, a                                       ; $432d: $5f
    ld bc, $1500                                  ; $432e: $01 $00 $15
    ld d, l                                       ; $4331: $55
    nop                                           ; $4332: $00
    inc sp                                        ; $4333: $33
    ld bc, $0052                                  ; $4334: $01 $52 $00
    nop                                           ; $4337: $00
    nop                                           ; $4338: $00
    add hl, bc                                    ; $4339: $09
    nop                                           ; $433a: $00
    dec bc                                        ; $433b: $0b
    dec b                                         ; $433c: $05
    dec bc                                        ; $433d: $0b
    nop                                           ; $433e: $00
    ld d, [hl]                                    ; $433f: $56
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    rla                                           ; $4342: $17
    nop                                           ; $4343: $00
    nop                                           ; $4344: $00
    inc e                                         ; $4345: $1c
    ld b, a                                       ; $4346: $47
    inc bc                                        ; $4347: $03
    ld e, a                                       ; $4348: $5f
    ld bc, $1500                                  ; $4349: $01 $00 $15
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    inc sp                                        ; $434e: $33
    inc bc                                        ; $434f: $03
    ld [hl], c                                    ; $4350: $71
    dec d                                         ; $4351: $15
    ld d, l                                       ; $4352: $55
    nop                                           ; $4353: $00
    inc sp                                        ; $4354: $33
    inc bc                                        ; $4355: $03
    xor e                                         ; $4356: $ab
    ld d, a                                       ; $4357: $57
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435a: $00
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    add hl, bc                                    ; $435d: $09
    nop                                           ; $435e: $00
    ld e, h                                       ; $435f: $5c
    dec b                                         ; $4360: $05
    dec bc                                        ; $4361: $0b
    nop                                           ; $4362: $00
    ld d, [hl]                                    ; $4363: $56
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    rla                                           ; $4366: $17
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    inc e                                         ; $4369: $1c
    ld b, a                                       ; $436a: $47
    inc bc                                        ; $436b: $03
    ld e, a                                       ; $436c: $5f
    ld bc, $1500                                  ; $436d: $01 $00 $15
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    inc sp                                        ; $4372: $33
    inc b                                         ; $4373: $04
    call nc, Call_00b_5515                        ; $4374: $d4 $15 $55
    nop                                           ; $4377: $00
    inc sp                                        ; $4378: $33
    inc b                                         ; $4379: $04
    rst $20                                       ; $437a: $e7
    ld d, a                                       ; $437b: $57
    nop                                           ; $437c: $00
    nop                                           ; $437d: $00
    nop                                           ; $437e: $00
    nop                                           ; $437f: $00
    nop                                           ; $4380: $00
    add hl, bc                                    ; $4381: $09
    nop                                           ; $4382: $00
    db $10                                        ; $4383: $10
    dec b                                         ; $4384: $05
    dec bc                                        ; $4385: $0b
    nop                                           ; $4386: $00
    ld d, [hl]                                    ; $4387: $56
    nop                                           ; $4388: $00
    nop                                           ; $4389: $00
    rla                                           ; $438a: $17
    nop                                           ; $438b: $00
    nop                                           ; $438c: $00
    inc e                                         ; $438d: $1c
    ld b, a                                       ; $438e: $47
    inc bc                                        ; $438f: $03
    ld e, a                                       ; $4390: $5f
    ld bc, $1500                                  ; $4391: $01 $00 $15
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    inc sp                                        ; $4396: $33
    ld [bc], a                                    ; $4397: $02
    ld b, l                                       ; $4398: $45
    dec d                                         ; $4399: $15
    ld d, l                                       ; $439a: $55
    nop                                           ; $439b: $00
    inc sp                                        ; $439c: $33
    ld [bc], a                                    ; $439d: $02
    and d                                         ; $439e: $a2
    ld d, a                                       ; $439f: $57
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    add hl, bc                                    ; $43a5: $09
    nop                                           ; $43a6: $00
    ld de, $0b05                                  ; $43a7: $11 $05 $0b
    nop                                           ; $43aa: $00
    ld d, [hl]                                    ; $43ab: $56
    nop                                           ; $43ac: $00
    nop                                           ; $43ad: $00
    rla                                           ; $43ae: $17
    nop                                           ; $43af: $00
    nop                                           ; $43b0: $00
    inc e                                         ; $43b1: $1c
    ld b, a                                       ; $43b2: $47
    inc bc                                        ; $43b3: $03
    ld e, a                                       ; $43b4: $5f
    ld bc, $1500                                  ; $43b5: $01 $00 $15
    nop                                           ; $43b8: $00
    nop                                           ; $43b9: $00
    inc sp                                        ; $43ba: $33
    ld [bc], a                                    ; $43bb: $02
    ld b, l                                       ; $43bc: $45
    dec d                                         ; $43bd: $15
    ld d, l                                       ; $43be: $55
    nop                                           ; $43bf: $00
    inc sp                                        ; $43c0: $33
    ld [bc], a                                    ; $43c1: $02
    and d                                         ; $43c2: $a2
    ld d, a                                       ; $43c3: $57
    nop                                           ; $43c4: $00
    nop                                           ; $43c5: $00
    nop                                           ; $43c6: $00
    nop                                           ; $43c7: $00
    nop                                           ; $43c8: $00
    add hl, bc                                    ; $43c9: $09
    nop                                           ; $43ca: $00
    ccf                                           ; $43cb: $3f
    dec b                                         ; $43cc: $05
    add hl, bc                                    ; $43cd: $09
    nop                                           ; $43ce: $00
    ld d, [hl]                                    ; $43cf: $56
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    rla                                           ; $43d2: $17
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    inc e                                         ; $43d5: $1c
    ld b, a                                       ; $43d6: $47
    inc bc                                        ; $43d7: $03
    ld e, a                                       ; $43d8: $5f
    ld bc, $1500                                  ; $43d9: $01 $00 $15
    ld d, l                                       ; $43dc: $55
    nop                                           ; $43dd: $00
    inc sp                                        ; $43de: $33
    add hl, bc                                    ; $43df: $09
    rst $20                                       ; $43e0: $e7
    ld d, a                                       ; $43e1: $57
    nop                                           ; $43e2: $00
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    nop                                           ; $43e6: $00
    add hl, bc                                    ; $43e7: $09
    nop                                           ; $43e8: $00
    dec a                                         ; $43e9: $3d
    dec b                                         ; $43ea: $05
    add hl, bc                                    ; $43eb: $09
    nop                                           ; $43ec: $00
    ld d, [hl]                                    ; $43ed: $56
    nop                                           ; $43ee: $00
    nop                                           ; $43ef: $00
    rla                                           ; $43f0: $17
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    inc e                                         ; $43f3: $1c
    ld b, a                                       ; $43f4: $47
    inc bc                                        ; $43f5: $03
    ld e, a                                       ; $43f6: $5f
    ld bc, $1500                                  ; $43f7: $01 $00 $15
    ld d, l                                       ; $43fa: $55
    nop                                           ; $43fb: $00
    inc sp                                        ; $43fc: $33
    dec bc                                        ; $43fd: $0b
    ld l, [hl]                                    ; $43fe: $6e
    ld d, a                                       ; $43ff: $57
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    add hl, bc                                    ; $4405: $09
    nop                                           ; $4406: $00
    ld d, h                                       ; $4407: $54
    dec b                                         ; $4408: $05
    add hl, bc                                    ; $4409: $09
    nop                                           ; $440a: $00
    ld d, [hl]                                    ; $440b: $56
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    rla                                           ; $440e: $17
    nop                                           ; $440f: $00
    nop                                           ; $4410: $00
    inc e                                         ; $4411: $1c
    ld b, a                                       ; $4412: $47
    inc bc                                        ; $4413: $03
    ld e, a                                       ; $4414: $5f
    ld bc, $1500                                  ; $4415: $01 $00 $15
    ld d, l                                       ; $4418: $55
    nop                                           ; $4419: $00
    inc sp                                        ; $441a: $33
    ld bc, $5752                                  ; $441b: $01 $52 $57
    nop                                           ; $441e: $00
    nop                                           ; $441f: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    add hl, bc                                    ; $4423: $09
    nop                                           ; $4424: $00
    ld e, e                                       ; $4425: $5b
    dec b                                         ; $4426: $05
    add hl, bc                                    ; $4427: $09
    nop                                           ; $4428: $00
    ld d, [hl]                                    ; $4429: $56
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    rla                                           ; $442c: $17
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    inc e                                         ; $442f: $1c
    ld b, a                                       ; $4430: $47
    inc bc                                        ; $4431: $03
    ld e, a                                       ; $4432: $5f
    ld bc, $1500                                  ; $4433: $01 $00 $15
    ld d, l                                       ; $4436: $55
    nop                                           ; $4437: $00
    inc sp                                        ; $4438: $33
    dec bc                                        ; $4439: $0b
    ld [hl], c                                    ; $443a: $71
    ld d, a                                       ; $443b: $57
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    nop                                           ; $443f: $00
    nop                                           ; $4440: $00
    ld e, a                                       ; $4441: $5f
    ld bc, $0000                                  ; $4442: $01 $00 $00
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    ld e, a                                       ; $4447: $5f
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    add hl, bc                                    ; $444a: $09
    nop                                           ; $444b: $00
    ld d, e                                       ; $444c: $53
    dec b                                         ; $444d: $05
    dec b                                         ; $444e: $05
    nop                                           ; $444f: $00
    ld e, a                                       ; $4450: $5f
    ld bc, $1500                                  ; $4451: $01 $00 $15
    ld d, [hl]                                    ; $4454: $56
    nop                                           ; $4455: $00
    inc sp                                        ; $4456: $33
    ld [bc], a                                    ; $4457: $02
    dec e                                         ; $4458: $1d
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    add hl, bc                                    ; $445c: $09
    nop                                           ; $445d: $00
    ld b, $05                                     ; $445e: $06 $05
    dec b                                         ; $4460: $05
    nop                                           ; $4461: $00
    ld e, a                                       ; $4462: $5f
    ld bc, $1500                                  ; $4463: $01 $00 $15
    ld d, [hl]                                    ; $4466: $56
    nop                                           ; $4467: $00
    inc sp                                        ; $4468: $33
    ld bc, $005e                                  ; $4469: $01 $5e $00
    nop                                           ; $446c: $00
    nop                                           ; $446d: $00
    add hl, bc                                    ; $446e: $09
    nop                                           ; $446f: $00
    rlca                                          ; $4470: $07
    dec b                                         ; $4471: $05
    dec b                                         ; $4472: $05
    nop                                           ; $4473: $00
    ld e, a                                       ; $4474: $5f
    ld bc, $1500                                  ; $4475: $01 $00 $15
    ld d, [hl]                                    ; $4478: $56
    nop                                           ; $4479: $00
    inc sp                                        ; $447a: $33
    ld bc, $005e                                  ; $447b: $01 $5e $00
    nop                                           ; $447e: $00
    nop                                           ; $447f: $00
    add hl, bc                                    ; $4480: $09
    nop                                           ; $4481: $00
    ld d, d                                       ; $4482: $52
    dec b                                         ; $4483: $05
    dec b                                         ; $4484: $05
    nop                                           ; $4485: $00
    ld e, a                                       ; $4486: $5f
    ld bc, $1500                                  ; $4487: $01 $00 $15
    ld d, [hl]                                    ; $448a: $56
    nop                                           ; $448b: $00
    inc sp                                        ; $448c: $33
    ld bc, $005e                                  ; $448d: $01 $5e $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    add hl, bc                                    ; $4492: $09
    nop                                           ; $4493: $00
    ld [$0505], sp                                ; $4494: $08 $05 $05
    nop                                           ; $4497: $00
    ld e, a                                       ; $4498: $5f
    ld bc, $1500                                  ; $4499: $01 $00 $15
    ld d, [hl]                                    ; $449c: $56
    nop                                           ; $449d: $00
    inc sp                                        ; $449e: $33
    ld bc, $005e                                  ; $449f: $01 $5e $00
    nop                                           ; $44a2: $00
    nop                                           ; $44a3: $00
    add hl, bc                                    ; $44a4: $09
    nop                                           ; $44a5: $00
    add hl, bc                                    ; $44a6: $09
    dec b                                         ; $44a7: $05
    dec b                                         ; $44a8: $05
    nop                                           ; $44a9: $00
    ld e, a                                       ; $44aa: $5f
    ld bc, $1500                                  ; $44ab: $01 $00 $15
    ld d, [hl]                                    ; $44ae: $56
    nop                                           ; $44af: $00
    inc sp                                        ; $44b0: $33
    ld bc, $005e                                  ; $44b1: $01 $5e $00
    nop                                           ; $44b4: $00
    nop                                           ; $44b5: $00
    add hl, bc                                    ; $44b6: $09
    nop                                           ; $44b7: $00
    ld d, [hl]                                    ; $44b8: $56
    dec b                                         ; $44b9: $05
    dec b                                         ; $44ba: $05
    nop                                           ; $44bb: $00
    ld e, a                                       ; $44bc: $5f
    ld bc, $1500                                  ; $44bd: $01 $00 $15
    ld d, [hl]                                    ; $44c0: $56
    nop                                           ; $44c1: $00
    inc sp                                        ; $44c2: $33
    ld bc, $005e                                  ; $44c3: $01 $5e $00
    nop                                           ; $44c6: $00
    nop                                           ; $44c7: $00
    add hl, bc                                    ; $44c8: $09
    nop                                           ; $44c9: $00
    dec bc                                        ; $44ca: $0b
    dec b                                         ; $44cb: $05
    dec bc                                        ; $44cc: $0b
    nop                                           ; $44cd: $00
    ld d, [hl]                                    ; $44ce: $56
    nop                                           ; $44cf: $00
    nop                                           ; $44d0: $00
    rla                                           ; $44d1: $17
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    inc e                                         ; $44d4: $1c
    ld c, b                                       ; $44d5: $48
    inc b                                         ; $44d6: $04
    ld e, a                                       ; $44d7: $5f
    ld bc, $1500                                  ; $44d8: $01 $00 $15
    nop                                           ; $44db: $00
    nop                                           ; $44dc: $00
    inc sp                                        ; $44dd: $33
    inc bc                                        ; $44de: $03
    ld [hl], c                                    ; $44df: $71
    dec d                                         ; $44e0: $15
    ld d, [hl]                                    ; $44e1: $56
    nop                                           ; $44e2: $00
    inc sp                                        ; $44e3: $33
    inc bc                                        ; $44e4: $03
    xor h                                         ; $44e5: $ac
    ld d, a                                       ; $44e6: $57
    nop                                           ; $44e7: $00
    nop                                           ; $44e8: $00
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    nop                                           ; $44eb: $00
    add hl, bc                                    ; $44ec: $09
    nop                                           ; $44ed: $00
    ld e, h                                       ; $44ee: $5c
    dec b                                         ; $44ef: $05
    dec bc                                        ; $44f0: $0b
    nop                                           ; $44f1: $00
    ld d, [hl]                                    ; $44f2: $56
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    rla                                           ; $44f5: $17
    nop                                           ; $44f6: $00
    nop                                           ; $44f7: $00
    inc e                                         ; $44f8: $1c
    ld c, b                                       ; $44f9: $48
    inc b                                         ; $44fa: $04
    ld e, a                                       ; $44fb: $5f
    ld bc, $1500                                  ; $44fc: $01 $00 $15
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    inc sp                                        ; $4501: $33
    inc b                                         ; $4502: $04
    call nc, Call_00b_5615                        ; $4503: $d4 $15 $56
    nop                                           ; $4506: $00
    inc sp                                        ; $4507: $33
    inc b                                         ; $4508: $04
    add sp, $57                                   ; $4509: $e8 $57
    nop                                           ; $450b: $00
    nop                                           ; $450c: $00
    nop                                           ; $450d: $00
    nop                                           ; $450e: $00
    nop                                           ; $450f: $00
    add hl, bc                                    ; $4510: $09
    nop                                           ; $4511: $00
    db $10                                        ; $4512: $10
    dec b                                         ; $4513: $05
    dec bc                                        ; $4514: $0b
    nop                                           ; $4515: $00
    ld d, [hl]                                    ; $4516: $56
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    rla                                           ; $4519: $17
    nop                                           ; $451a: $00
    nop                                           ; $451b: $00
    inc e                                         ; $451c: $1c
    ld c, b                                       ; $451d: $48
    inc b                                         ; $451e: $04
    ld e, a                                       ; $451f: $5f
    ld bc, $1500                                  ; $4520: $01 $00 $15
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    inc sp                                        ; $4525: $33
    ld [bc], a                                    ; $4526: $02
    ld b, l                                       ; $4527: $45
    dec d                                         ; $4528: $15
    ld d, [hl]                                    ; $4529: $56
    nop                                           ; $452a: $00
    inc sp                                        ; $452b: $33
    ld [bc], a                                    ; $452c: $02
    and e                                         ; $452d: $a3
    ld d, a                                       ; $452e: $57
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    add hl, bc                                    ; $4534: $09
    nop                                           ; $4535: $00
    ld de, $0b05                                  ; $4536: $11 $05 $0b
    nop                                           ; $4539: $00
    ld d, [hl]                                    ; $453a: $56
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    rla                                           ; $453d: $17
    nop                                           ; $453e: $00
    nop                                           ; $453f: $00
    inc e                                         ; $4540: $1c
    ld c, b                                       ; $4541: $48
    inc b                                         ; $4542: $04
    ld e, a                                       ; $4543: $5f
    ld bc, $1500                                  ; $4544: $01 $00 $15
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    inc sp                                        ; $4549: $33
    ld [bc], a                                    ; $454a: $02
    ld b, l                                       ; $454b: $45
    dec d                                         ; $454c: $15
    ld d, [hl]                                    ; $454d: $56
    nop                                           ; $454e: $00
    inc sp                                        ; $454f: $33
    ld [bc], a                                    ; $4550: $02
    and e                                         ; $4551: $a3
    ld d, a                                       ; $4552: $57
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    add hl, bc                                    ; $4558: $09
    nop                                           ; $4559: $00
    ccf                                           ; $455a: $3f
    dec b                                         ; $455b: $05
    add hl, bc                                    ; $455c: $09
    nop                                           ; $455d: $00
    ld d, [hl]                                    ; $455e: $56
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    rla                                           ; $4561: $17
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    inc e                                         ; $4564: $1c
    ld c, b                                       ; $4565: $48
    inc b                                         ; $4566: $04
    ld e, a                                       ; $4567: $5f
    ld bc, $1500                                  ; $4568: $01 $00 $15
    ld d, [hl]                                    ; $456b: $56
    nop                                           ; $456c: $00
    inc sp                                        ; $456d: $33
    add hl, bc                                    ; $456e: $09
    add sp, $57                                   ; $456f: $e8 $57
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    nop                                           ; $4575: $00
    add hl, bc                                    ; $4576: $09
    nop                                           ; $4577: $00
    dec a                                         ; $4578: $3d
    dec b                                         ; $4579: $05
    add hl, bc                                    ; $457a: $09
    nop                                           ; $457b: $00
    ld d, [hl]                                    ; $457c: $56
    nop                                           ; $457d: $00
    nop                                           ; $457e: $00
    rla                                           ; $457f: $17
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    inc e                                         ; $4582: $1c
    ld c, b                                       ; $4583: $48
    inc b                                         ; $4584: $04
    ld e, a                                       ; $4585: $5f
    ld bc, $1500                                  ; $4586: $01 $00 $15
    ld d, [hl]                                    ; $4589: $56
    nop                                           ; $458a: $00
    inc sp                                        ; $458b: $33
    dec bc                                        ; $458c: $0b
    ld l, c                                       ; $458d: $69
    ld d, a                                       ; $458e: $57
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    add hl, bc                                    ; $4594: $09
    nop                                           ; $4595: $00
    ld d, h                                       ; $4596: $54
    dec b                                         ; $4597: $05
    add hl, bc                                    ; $4598: $09
    nop                                           ; $4599: $00
    ld d, [hl]                                    ; $459a: $56
    nop                                           ; $459b: $00
    nop                                           ; $459c: $00
    rla                                           ; $459d: $17
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    inc e                                         ; $45a0: $1c
    ld c, b                                       ; $45a1: $48
    inc b                                         ; $45a2: $04
    ld e, a                                       ; $45a3: $5f
    ld bc, $1500                                  ; $45a4: $01 $00 $15
    ld d, [hl]                                    ; $45a7: $56
    nop                                           ; $45a8: $00
    inc sp                                        ; $45a9: $33
    ld bc, $575e                                  ; $45aa: $01 $5e $57
    nop                                           ; $45ad: $00
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    add hl, bc                                    ; $45b2: $09
    nop                                           ; $45b3: $00
    ld e, e                                       ; $45b4: $5b
    dec b                                         ; $45b5: $05
    add hl, bc                                    ; $45b6: $09
    nop                                           ; $45b7: $00
    ld d, [hl]                                    ; $45b8: $56
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    rla                                           ; $45bb: $17
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    inc e                                         ; $45be: $1c
    ld c, b                                       ; $45bf: $48
    inc b                                         ; $45c0: $04
    ld e, a                                       ; $45c1: $5f
    ld bc, $1500                                  ; $45c2: $01 $00 $15
    ld d, [hl]                                    ; $45c5: $56
    nop                                           ; $45c6: $00
    inc sp                                        ; $45c7: $33
    dec bc                                        ; $45c8: $0b
    ld l, c                                       ; $45c9: $69
    ld d, a                                       ; $45ca: $57
    nop                                           ; $45cb: $00
    nop                                           ; $45cc: $00
    nop                                           ; $45cd: $00
    nop                                           ; $45ce: $00
    nop                                           ; $45cf: $00
    ld e, a                                       ; $45d0: $5f
    ld bc, $0000                                  ; $45d1: $01 $00 $00
    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00
    ld e, a                                       ; $45d6: $5f
    nop                                           ; $45d7: $00
    nop                                           ; $45d8: $00
    add hl, bc                                    ; $45d9: $09
    nop                                           ; $45da: $00
    ld d, e                                       ; $45db: $53
    dec b                                         ; $45dc: $05
    dec b                                         ; $45dd: $05
    nop                                           ; $45de: $00
    ld e, a                                       ; $45df: $5f
    ld bc, $1500                                  ; $45e0: $01 $00 $15
    ld c, l                                       ; $45e3: $4d
    nop                                           ; $45e4: $00
    inc sp                                        ; $45e5: $33
    ld [bc], a                                    ; $45e6: $02
    ld c, $00                                     ; $45e7: $0e $00
    nop                                           ; $45e9: $00
    nop                                           ; $45ea: $00
    add hl, bc                                    ; $45eb: $09
    nop                                           ; $45ec: $00
    ld b, $05                                     ; $45ed: $06 $05
    dec b                                         ; $45ef: $05
    nop                                           ; $45f0: $00
    ld e, a                                       ; $45f1: $5f
    ld bc, $1500                                  ; $45f2: $01 $00 $15
    ld c, l                                       ; $45f5: $4d
    nop                                           ; $45f6: $00
    inc sp                                        ; $45f7: $33
    ld bc, $005b                                  ; $45f8: $01 $5b $00
    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    add hl, bc                                    ; $45fd: $09
    nop                                           ; $45fe: $00
    rlca                                          ; $45ff: $07
    dec b                                         ; $4600: $05
    dec b                                         ; $4601: $05
    nop                                           ; $4602: $00
    ld e, a                                       ; $4603: $5f
    ld bc, $1500                                  ; $4604: $01 $00 $15
    ld c, l                                       ; $4607: $4d
    nop                                           ; $4608: $00
    inc sp                                        ; $4609: $33
    ld bc, $005b                                  ; $460a: $01 $5b $00
    nop                                           ; $460d: $00
    nop                                           ; $460e: $00
    add hl, bc                                    ; $460f: $09
    nop                                           ; $4610: $00
    ld d, d                                       ; $4611: $52
    dec b                                         ; $4612: $05
    dec b                                         ; $4613: $05
    nop                                           ; $4614: $00
    ld e, a                                       ; $4615: $5f
    ld bc, $1500                                  ; $4616: $01 $00 $15
    ld c, l                                       ; $4619: $4d
    nop                                           ; $461a: $00
    inc sp                                        ; $461b: $33
    ld bc, $005b                                  ; $461c: $01 $5b $00
    nop                                           ; $461f: $00
    nop                                           ; $4620: $00
    add hl, bc                                    ; $4621: $09
    nop                                           ; $4622: $00
    ld [$0505], sp                                ; $4623: $08 $05 $05
    nop                                           ; $4626: $00
    ld e, a                                       ; $4627: $5f
    ld bc, $1500                                  ; $4628: $01 $00 $15
    ld c, l                                       ; $462b: $4d
    nop                                           ; $462c: $00
    inc sp                                        ; $462d: $33
    ld bc, $005b                                  ; $462e: $01 $5b $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    add hl, bc                                    ; $4633: $09
    nop                                           ; $4634: $00
    add hl, bc                                    ; $4635: $09
    dec b                                         ; $4636: $05
    dec b                                         ; $4637: $05
    nop                                           ; $4638: $00
    ld e, a                                       ; $4639: $5f
    ld bc, $1500                                  ; $463a: $01 $00 $15
    ld c, l                                       ; $463d: $4d
    nop                                           ; $463e: $00
    inc sp                                        ; $463f: $33
    ld bc, $005b                                  ; $4640: $01 $5b $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    add hl, bc                                    ; $4645: $09
    nop                                           ; $4646: $00
    ld d, [hl]                                    ; $4647: $56
    dec b                                         ; $4648: $05
    dec b                                         ; $4649: $05
    nop                                           ; $464a: $00
    ld e, a                                       ; $464b: $5f
    ld bc, $1500                                  ; $464c: $01 $00 $15
    ld c, l                                       ; $464f: $4d
    nop                                           ; $4650: $00
    inc sp                                        ; $4651: $33
    ld bc, $005b                                  ; $4652: $01 $5b $00
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    add hl, bc                                    ; $4657: $09
    nop                                           ; $4658: $00
    dec bc                                        ; $4659: $0b
    dec b                                         ; $465a: $05
    dec bc                                        ; $465b: $0b
    nop                                           ; $465c: $00
    ld d, [hl]                                    ; $465d: $56
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    rla                                           ; $4660: $17
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    inc e                                         ; $4663: $1c
    dec sp                                        ; $4664: $3b
    dec b                                         ; $4665: $05
    ld e, a                                       ; $4666: $5f
    ld bc, $1500                                  ; $4667: $01 $00 $15
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    inc sp                                        ; $466c: $33
    inc bc                                        ; $466d: $03
    ld [hl], c                                    ; $466e: $71
    dec d                                         ; $466f: $15
    ld c, l                                       ; $4670: $4d
    nop                                           ; $4671: $00
    inc sp                                        ; $4672: $33
    inc bc                                        ; $4673: $03
    xor l                                         ; $4674: $ad
    ld d, a                                       ; $4675: $57
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    add hl, bc                                    ; $467b: $09
    nop                                           ; $467c: $00
    ld e, h                                       ; $467d: $5c
    dec b                                         ; $467e: $05
    dec bc                                        ; $467f: $0b
    nop                                           ; $4680: $00
    ld d, [hl]                                    ; $4681: $56
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    rla                                           ; $4684: $17
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    inc e                                         ; $4687: $1c
    dec sp                                        ; $4688: $3b
    dec b                                         ; $4689: $05
    ld e, a                                       ; $468a: $5f
    ld bc, $1500                                  ; $468b: $01 $00 $15
    nop                                           ; $468e: $00
    nop                                           ; $468f: $00
    inc sp                                        ; $4690: $33
    inc b                                         ; $4691: $04
    call nc, $4d15                                ; $4692: $d4 $15 $4d
    nop                                           ; $4695: $00
    inc sp                                        ; $4696: $33
    inc b                                         ; $4697: $04
    jp hl                                         ; $4698: $e9


    ld d, a                                       ; $4699: $57
    nop                                           ; $469a: $00
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    add hl, bc                                    ; $469f: $09
    nop                                           ; $46a0: $00
    db $10                                        ; $46a1: $10
    dec b                                         ; $46a2: $05
    dec bc                                        ; $46a3: $0b
    nop                                           ; $46a4: $00
    ld d, [hl]                                    ; $46a5: $56
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    rla                                           ; $46a8: $17
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    inc e                                         ; $46ab: $1c
    dec sp                                        ; $46ac: $3b
    dec b                                         ; $46ad: $05
    ld e, a                                       ; $46ae: $5f
    ld bc, $1500                                  ; $46af: $01 $00 $15
    nop                                           ; $46b2: $00
    nop                                           ; $46b3: $00
    inc sp                                        ; $46b4: $33
    ld [bc], a                                    ; $46b5: $02
    ld b, l                                       ; $46b6: $45
    dec d                                         ; $46b7: $15
    ld c, l                                       ; $46b8: $4d
    nop                                           ; $46b9: $00
    inc sp                                        ; $46ba: $33
    ld [bc], a                                    ; $46bb: $02
    and b                                         ; $46bc: $a0
    ld d, a                                       ; $46bd: $57
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    add hl, bc                                    ; $46c3: $09
    nop                                           ; $46c4: $00
    ld de, $0b05                                  ; $46c5: $11 $05 $0b
    nop                                           ; $46c8: $00
    ld d, [hl]                                    ; $46c9: $56
    nop                                           ; $46ca: $00
    nop                                           ; $46cb: $00
    rla                                           ; $46cc: $17
    nop                                           ; $46cd: $00
    nop                                           ; $46ce: $00
    inc e                                         ; $46cf: $1c
    dec sp                                        ; $46d0: $3b
    dec b                                         ; $46d1: $05
    ld e, a                                       ; $46d2: $5f
    ld bc, $1500                                  ; $46d3: $01 $00 $15
    nop                                           ; $46d6: $00
    nop                                           ; $46d7: $00
    inc sp                                        ; $46d8: $33
    ld [bc], a                                    ; $46d9: $02
    ld b, l                                       ; $46da: $45
    dec d                                         ; $46db: $15
    ld c, l                                       ; $46dc: $4d
    nop                                           ; $46dd: $00
    inc sp                                        ; $46de: $33
    ld [bc], a                                    ; $46df: $02
    and b                                         ; $46e0: $a0
    ld d, a                                       ; $46e1: $57
    nop                                           ; $46e2: $00
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    nop                                           ; $46e6: $00
    add hl, bc                                    ; $46e7: $09
    nop                                           ; $46e8: $00
    ccf                                           ; $46e9: $3f
    dec b                                         ; $46ea: $05
    add hl, bc                                    ; $46eb: $09
    nop                                           ; $46ec: $00
    ld d, [hl]                                    ; $46ed: $56
    nop                                           ; $46ee: $00
    nop                                           ; $46ef: $00
    rla                                           ; $46f0: $17
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    inc e                                         ; $46f3: $1c
    dec sp                                        ; $46f4: $3b
    dec b                                         ; $46f5: $05
    ld e, a                                       ; $46f6: $5f
    ld bc, $1500                                  ; $46f7: $01 $00 $15
    ld c, l                                       ; $46fa: $4d
    nop                                           ; $46fb: $00
    inc sp                                        ; $46fc: $33
    add hl, bc                                    ; $46fd: $09
    jp hl                                         ; $46fe: $e9


    ld d, a                                       ; $46ff: $57
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    add hl, bc                                    ; $4705: $09
    nop                                           ; $4706: $00
    dec a                                         ; $4707: $3d
    dec b                                         ; $4708: $05
    add hl, bc                                    ; $4709: $09
    nop                                           ; $470a: $00
    ld d, [hl]                                    ; $470b: $56
    nop                                           ; $470c: $00
    nop                                           ; $470d: $00
    rla                                           ; $470e: $17
    nop                                           ; $470f: $00
    nop                                           ; $4710: $00
    inc e                                         ; $4711: $1c
    dec sp                                        ; $4712: $3b
    dec b                                         ; $4713: $05
    ld e, a                                       ; $4714: $5f
    ld bc, $1500                                  ; $4715: $01 $00 $15
    ld c, l                                       ; $4718: $4d
    nop                                           ; $4719: $00
    inc sp                                        ; $471a: $33
    dec bc                                        ; $471b: $0b
    ld l, e                                       ; $471c: $6b
    ld d, a                                       ; $471d: $57
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    add hl, bc                                    ; $4723: $09
    nop                                           ; $4724: $00
    ld d, h                                       ; $4725: $54
    dec b                                         ; $4726: $05
    add hl, bc                                    ; $4727: $09
    nop                                           ; $4728: $00
    ld d, [hl]                                    ; $4729: $56
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    rla                                           ; $472c: $17
    nop                                           ; $472d: $00
    nop                                           ; $472e: $00
    inc e                                         ; $472f: $1c
    dec sp                                        ; $4730: $3b
    dec b                                         ; $4731: $05
    ld e, a                                       ; $4732: $5f
    ld bc, $1500                                  ; $4733: $01 $00 $15
    ld c, l                                       ; $4736: $4d
    nop                                           ; $4737: $00
    inc sp                                        ; $4738: $33
    ld bc, $575b                                  ; $4739: $01 $5b $57
    nop                                           ; $473c: $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    nop                                           ; $4740: $00
    add hl, bc                                    ; $4741: $09
    nop                                           ; $4742: $00
    ld e, e                                       ; $4743: $5b
    dec b                                         ; $4744: $05
    add hl, bc                                    ; $4745: $09
    nop                                           ; $4746: $00
    ld d, [hl]                                    ; $4747: $56
    nop                                           ; $4748: $00
    nop                                           ; $4749: $00
    rla                                           ; $474a: $17
    nop                                           ; $474b: $00
    nop                                           ; $474c: $00
    inc e                                         ; $474d: $1c
    dec sp                                        ; $474e: $3b
    dec b                                         ; $474f: $05
    ld e, a                                       ; $4750: $5f
    ld bc, $1500                                  ; $4751: $01 $00 $15
    ld c, l                                       ; $4754: $4d
    nop                                           ; $4755: $00
    inc sp                                        ; $4756: $33
    dec bc                                        ; $4757: $0b
    ld l, e                                       ; $4758: $6b
    ld d, a                                       ; $4759: $57
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    ld e, a                                       ; $475f: $5f
    ld bc, $0000                                  ; $4760: $01 $00 $00
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    ld e, a                                       ; $4765: $5f
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    add hl, bc                                    ; $4768: $09
    nop                                           ; $4769: $00
    ld h, $05                                     ; $476a: $26 $05
    dec de                                        ; $476c: $1b
    nop                                           ; $476d: $00
    inc de                                        ; $476e: $13
    rst $38                                       ; $476f: $ff
    db $ec                                        ; $4770: $ec
    inc d                                         ; $4771: $14
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    dec d                                         ; $4774: $15
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    ld d, $37                                     ; $4777: $16 $37
    ld bc, $0052                                  ; $4779: $01 $52 $00
    nop                                           ; $477c: $00
    dec de                                        ; $477d: $1b
    inc b                                         ; $477e: $04
    nop                                           ; $477f: $00
    inc de                                        ; $4780: $13
    nop                                           ; $4781: $00
    inc d                                         ; $4782: $14
    inc d                                         ; $4783: $14
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    dec d                                         ; $4786: $15
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
    ld d, $38                                     ; $4789: $16 $38
    ld bc, $0052                                  ; $478b: $01 $52 $00
    nop                                           ; $478e: $00
    dec de                                        ; $478f: $1b
    inc b                                         ; $4790: $04
    nop                                           ; $4791: $00
    inc de                                        ; $4792: $13
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    inc d                                         ; $4795: $14
    nop                                           ; $4796: $00
    inc d                                         ; $4797: $14
    dec d                                         ; $4798: $15
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    ld d, $39                                     ; $479b: $16 $39
    ld bc, $0052                                  ; $479d: $01 $52 $00
    nop                                           ; $47a0: $00
    dec de                                        ; $47a1: $1b
    inc b                                         ; $47a2: $04
    nop                                           ; $47a3: $00
    ld e, a                                       ; $47a4: $5f
    ld bc, $1700                                  ; $47a5: $01 $00 $17
    add hl, sp                                    ; $47a8: $39
    nop                                           ; $47a9: $00
    ld [hl+], a                                   ; $47aa: $22
    nop                                           ; $47ab: $00
    nop                                           ; $47ac: $00
    rla                                           ; $47ad: $17
    scf                                           ; $47ae: $37
    nop                                           ; $47af: $00
    ld [hl+], a                                   ; $47b0: $22
    add hl, sp                                    ; $47b1: $39
    nop                                           ; $47b2: $00
    rla                                           ; $47b3: $17
    jr c, jr_00b_47b6                             ; $47b4: $38 $00

jr_00b_47b6:
    ld [hl+], a                                   ; $47b6: $22
    scf                                           ; $47b7: $37
    nop                                           ; $47b8: $00
    nop                                           ; $47b9: $00
    nop                                           ; $47ba: $00
    nop                                           ; $47bb: $00
    add hl, bc                                    ; $47bc: $09
    nop                                           ; $47bd: $00
    daa                                           ; $47be: $27
    dec b                                         ; $47bf: $05
    dec de                                        ; $47c0: $1b
    nop                                           ; $47c1: $00
    inc de                                        ; $47c2: $13
    rst $38                                       ; $47c3: $ff
    db $ec                                        ; $47c4: $ec
    inc d                                         ; $47c5: $14
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    dec d                                         ; $47c8: $15
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    ld d, $37                                     ; $47cb: $16 $37
    ld bc, $0052                                  ; $47cd: $01 $52 $00
    nop                                           ; $47d0: $00
    dec de                                        ; $47d1: $1b
    inc b                                         ; $47d2: $04
    nop                                           ; $47d3: $00
    inc de                                        ; $47d4: $13
    nop                                           ; $47d5: $00
    inc d                                         ; $47d6: $14
    inc d                                         ; $47d7: $14
    nop                                           ; $47d8: $00
    nop                                           ; $47d9: $00
    dec d                                         ; $47da: $15
    nop                                           ; $47db: $00
    nop                                           ; $47dc: $00
    ld d, $38                                     ; $47dd: $16 $38
    ld bc, $0052                                  ; $47df: $01 $52 $00
    nop                                           ; $47e2: $00
    dec de                                        ; $47e3: $1b
    inc b                                         ; $47e4: $04
    nop                                           ; $47e5: $00
    inc de                                        ; $47e6: $13
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    inc d                                         ; $47e9: $14
    nop                                           ; $47ea: $00
    inc d                                         ; $47eb: $14
    dec d                                         ; $47ec: $15
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    ld d, $39                                     ; $47ef: $16 $39
    ld bc, $0052                                  ; $47f1: $01 $52 $00
    nop                                           ; $47f4: $00
    dec de                                        ; $47f5: $1b
    inc b                                         ; $47f6: $04
    nop                                           ; $47f7: $00
    ld e, a                                       ; $47f8: $5f
    ld bc, $1700                                  ; $47f9: $01 $00 $17
    add hl, sp                                    ; $47fc: $39
    nop                                           ; $47fd: $00
    ld [hl+], a                                   ; $47fe: $22
    nop                                           ; $47ff: $00
    nop                                           ; $4800: $00
    rla                                           ; $4801: $17
    scf                                           ; $4802: $37
    nop                                           ; $4803: $00
    ld [hl+], a                                   ; $4804: $22
    add hl, sp                                    ; $4805: $39
    nop                                           ; $4806: $00
    rla                                           ; $4807: $17
    jr c, jr_00b_480a                             ; $4808: $38 $00

jr_00b_480a:
    ld [hl+], a                                   ; $480a: $22
    scf                                           ; $480b: $37
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    nop                                           ; $480f: $00
    add hl, bc                                    ; $4810: $09
    nop                                           ; $4811: $00
    ld c, b                                       ; $4812: $48
    dec b                                         ; $4813: $05
    inc de                                        ; $4814: $13
    nop                                           ; $4815: $00
    inc de                                        ; $4816: $13
    rst $38                                       ; $4817: $ff
    db $ec                                        ; $4818: $ec
    inc d                                         ; $4819: $14
    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    dec d                                         ; $481c: $15
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    ld d, $37                                     ; $481f: $16 $37
    ld bc, $0052                                  ; $4821: $01 $52 $00
    nop                                           ; $4824: $00
    dec de                                        ; $4825: $1b
    inc b                                         ; $4826: $04
    nop                                           ; $4827: $00
    inc de                                        ; $4828: $13
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    inc d                                         ; $482b: $14
    nop                                           ; $482c: $00
    inc d                                         ; $482d: $14
    dec d                                         ; $482e: $15
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    ld d, $39                                     ; $4831: $16 $39
    ld bc, $0052                                  ; $4833: $01 $52 $00
    nop                                           ; $4836: $00
    dec de                                        ; $4837: $1b
    inc b                                         ; $4838: $04
    nop                                           ; $4839: $00
    ld e, a                                       ; $483a: $5f
    ld bc, $1700                                  ; $483b: $01 $00 $17
    add hl, sp                                    ; $483e: $39
    nop                                           ; $483f: $00
    ld [hl+], a                                   ; $4840: $22
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    rla                                           ; $4843: $17
    scf                                           ; $4844: $37
    nop                                           ; $4845: $00
    ld [hl+], a                                   ; $4846: $22
    add hl, sp                                    ; $4847: $39
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    nop                                           ; $484b: $00
    add hl, bc                                    ; $484c: $09
    nop                                           ; $484d: $00
    inc sp                                        ; $484e: $33
    dec b                                         ; $484f: $05
    inc de                                        ; $4850: $13
    nop                                           ; $4851: $00
    add hl, bc                                    ; $4852: $09
    ld [$0501], sp                                ; $4853: $08 $01 $05
    ld a, [bc]                                    ; $4856: $0a
    nop                                           ; $4857: $00
    inc de                                        ; $4858: $13
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    inc d                                         ; $485b: $14
    nop                                           ; $485c: $00
    jr jr_00b_4874                                ; $485d: $18 $15

    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    ld d, $39                                     ; $4861: $16 $39
    ld bc, $0052                                  ; $4863: $01 $52 $00
    nop                                           ; $4866: $00
    ld e, d                                       ; $4867: $5a
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    ld [hl+], a                                   ; $486a: $22
    nop                                           ; $486b: $00
    nop                                           ; $486c: $00
    ld e, a                                       ; $486d: $5f
    ld bc, $0000                                  ; $486e: $01 $00 $00
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    add hl, bc                                    ; $4873: $09

jr_00b_4874:
    ld [$0502], sp                                ; $4874: $08 $02 $05
    inc bc                                        ; $4877: $03
    nop                                           ; $4878: $00
    dec d                                         ; $4879: $15
    dec l                                         ; $487a: $2d
    nop                                           ; $487b: $00
    rlca                                          ; $487c: $07
    ld a, [bc]                                    ; $487d: $0a
    ld h, d                                       ; $487e: $62
    add hl, bc                                    ; $487f: $09
    ld [$0503], sp                                ; $4880: $08 $03 $05
    ld [bc], a                                    ; $4883: $02
    nop                                           ; $4884: $00
    inc bc                                        ; $4885: $03
    ld e, [hl]                                    ; $4886: $5e
    nop                                           ; $4887: $00
    add hl, bc                                    ; $4888: $09
    nop                                           ; $4889: $00
    ld b, e                                       ; $488a: $43
    dec b                                         ; $488b: $05
    rlca                                          ; $488c: $07
    nop                                           ; $488d: $00
    rrca                                          ; $488e: $0f
    add hl, bc                                    ; $488f: $09
    nop                                           ; $4890: $00
    add hl, bc                                    ; $4891: $09
    dec b                                         ; $4892: $05
    ld [bc], a                                    ; $4893: $02
    dec b                                         ; $4894: $05
    ld [bc], a                                    ; $4895: $02
    nop                                           ; $4896: $00
    inc bc                                        ; $4897: $03
    ccf                                           ; $4898: $3f
    nop                                           ; $4899: $00
    ld e, a                                       ; $489a: $5f
    ld bc, $0000                                  ; $489b: $01 $00 $00
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    add hl, bc                                    ; $48a0: $09
    nop                                           ; $48a1: $00
    ld e, b                                       ; $48a2: $58
    dec b                                         ; $48a3: $05
    dec bc                                        ; $48a4: $0b
    nop                                           ; $48a5: $00
    add hl, bc                                    ; $48a6: $09
    add hl, bc                                    ; $48a7: $09
    nop                                           ; $48a8: $00
    dec b                                         ; $48a9: $05
    rlca                                          ; $48aa: $07
    nop                                           ; $48ab: $00
    inc de                                        ; $48ac: $13
    nop                                           ; $48ad: $00
    sub c                                         ; $48ae: $91
    inc d                                         ; $48af: $14
    ld bc, $15fe                                  ; $48b0: $01 $fe $15
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00
    ld d, $16                                     ; $48b5: $16 $16
    nop                                           ; $48b7: $00
    ld d, d                                       ; $48b8: $52
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    dec de                                        ; $48bb: $1b
    inc b                                         ; $48bc: $04
    nop                                           ; $48bd: $00
    ld e, a                                       ; $48be: $5f
    ld bc, $0000                                  ; $48bf: $01 $00 $00
    nop                                           ; $48c2: $00
    nop                                           ; $48c3: $00
    add hl, bc                                    ; $48c4: $09
    nop                                           ; $48c5: $00
    ld e, h                                       ; $48c6: $5c
    dec b                                         ; $48c7: $05
    add hl, bc                                    ; $48c8: $09
    nop                                           ; $48c9: $00
    inc de                                        ; $48ca: $13
    nop                                           ; $48cb: $00
    sub c                                         ; $48cc: $91
    inc d                                         ; $48cd: $14
    ld bc, $15fe                                  ; $48ce: $01 $fe $15
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    ld d, $16                                     ; $48d3: $16 $16
    nop                                           ; $48d5: $00
    ld d, d                                       ; $48d6: $52
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    dec de                                        ; $48d9: $1b
    inc b                                         ; $48da: $04
    nop                                           ; $48db: $00
    ld e, a                                       ; $48dc: $5f
    ld bc, $0000                                  ; $48dd: $01 $00 $00
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    add hl, bc                                    ; $48e2: $09
    nop                                           ; $48e3: $00
    scf                                           ; $48e4: $37
    dec b                                         ; $48e5: $05
    inc bc                                        ; $48e6: $03
    nop                                           ; $48e7: $00
    ld e, a                                       ; $48e8: $5f
    ld bc, $0000                                  ; $48e9: $01 $00 $00
    nop                                           ; $48ec: $00
    nop                                           ; $48ed: $00
    add hl, bc                                    ; $48ee: $09
    nop                                           ; $48ef: $00
    ld e, d                                       ; $48f0: $5a
    dec b                                         ; $48f1: $05
    inc bc                                        ; $48f2: $03
    nop                                           ; $48f3: $00
    ld e, a                                       ; $48f4: $5f
    ld bc, $0000                                  ; $48f5: $01 $00 $00
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    add hl, bc                                    ; $48fa: $09
    nop                                           ; $48fb: $00
    inc [hl]                                      ; $48fc: $34
    dec b                                         ; $48fd: $05
    inc bc                                        ; $48fe: $03
    nop                                           ; $48ff: $00
    ld e, a                                       ; $4900: $5f
    ld bc, $0000                                  ; $4901: $01 $00 $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    add hl, bc                                    ; $4906: $09
    nop                                           ; $4907: $00
    ld b, c                                       ; $4908: $41
    dec b                                         ; $4909: $05
    inc bc                                        ; $490a: $03
    nop                                           ; $490b: $00
    ld e, a                                       ; $490c: $5f
    ld bc, $0000                                  ; $490d: $01 $00 $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    inc de                                        ; $4912: $13
    nop                                           ; $4913: $00
    or $14                                        ; $4914: $f6 $14
    nop                                           ; $4916: $00
    ld h, d                                       ; $4917: $62
    dec d                                         ; $4918: $15
    inc b                                         ; $4919: $04
    nop                                           ; $491a: $00
    ld d, $48                                     ; $491b: $16 $48
    nop                                           ; $491d: $00
    ld d, d                                       ; $491e: $52
    nop                                           ; $491f: $00
    nop                                           ; $4920: $00
    inc de                                        ; $4921: $13
    nop                                           ; $4922: $00
    add d                                         ; $4923: $82
    inc d                                         ; $4924: $14
    nop                                           ; $4925: $00
    cp [hl]                                       ; $4926: $be
    dec d                                         ; $4927: $15
    ld bc, $1600                                  ; $4928: $01 $00 $16
    ld b, c                                       ; $492b: $41
    nop                                           ; $492c: $00
    ld d, d                                       ; $492d: $52
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    inc de                                        ; $4930: $13
    nop                                           ; $4931: $00
    ld [hl], $14                                  ; $4932: $36 $14
    nop                                           ; $4934: $00
    db $ed                                        ; $4935: $ed
    dec d                                         ; $4936: $15
    inc bc                                        ; $4937: $03
    nop                                           ; $4938: $00
    ld d, $47                                     ; $4939: $16 $47
    nop                                           ; $493b: $00
    ld d, d                                       ; $493c: $52
    nop                                           ; $493d: $00
    nop                                           ; $493e: $00
    inc de                                        ; $493f: $13
    nop                                           ; $4940: $00
    sbc c                                         ; $4941: $99
    inc d                                         ; $4942: $14
    ld bc, $1587                                  ; $4943: $01 $87 $15
    dec b                                         ; $4946: $05
    nop                                           ; $4947: $00
    ld d, $3b                                     ; $4948: $16 $3b
    nop                                           ; $494a: $00
    ld d, d                                       ; $494b: $52
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    ld e, a                                       ; $494e: $5f
    ld bc, $0000                                  ; $494f: $01 $00 $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    ld d, [hl]                                    ; $4954: $56
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    rla                                           ; $4957: $17
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    inc de                                        ; $495a: $13
    ld bc, $5888                                  ; $495b: $01 $88 $58
    nop                                           ; $495e: $00
    sbc [hl]                                      ; $495f: $9e
    dec de                                        ; $4960: $1b
    ld [bc], a                                    ; $4961: $02
    nop                                           ; $4962: $00
    inc de                                        ; $4963: $13
    nop                                           ; $4964: $00
    xor a                                         ; $4965: $af
    inc d                                         ; $4966: $14
    ld bc, $1588                                  ; $4967: $01 $88 $15
    nop                                           ; $496a: $00
    nop                                           ; $496b: $00
    ld d, $37                                     ; $496c: $16 $37
    nop                                           ; $496e: $00
    ld d, d                                       ; $496f: $52
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    dec de                                        ; $4972: $1b
    ld b, $00                                     ; $4973: $06 $00
    ld e, a                                       ; $4975: $5f
    ld bc, $2700                                  ; $4976: $01 $00 $27
    nop                                           ; $4979: $00
    rrca                                          ; $497a: $0f
    dec d                                         ; $497b: $15
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    inc sp                                        ; $497e: $33
    rlca                                          ; $497f: $07
    sbc e                                         ; $4980: $9b
    dec d                                         ; $4981: $15
    add hl, de                                    ; $4982: $19
    nop                                           ; $4983: $00
    inc sp                                        ; $4984: $33
    rlca                                          ; $4985: $07
    sbc h                                         ; $4986: $9c
    rla                                           ; $4987: $17
    scf                                           ; $4988: $37
    nop                                           ; $4989: $00
    ld e, [hl]                                    ; $498a: $5e
    ld bc, $1500                                  ; $498b: $01 $00 $15
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    add hl, de                                    ; $4990: $19
    nop                                           ; $4991: $00
    ld d, h                                       ; $4992: $54
    ld e, $37                                     ; $4993: $1e $37
    nop                                           ; $4995: $00
    rrca                                          ; $4996: $0f
    dec b                                         ; $4997: $05
    inc bc                                        ; $4998: $03
    ld d, a                                       ; $4999: $57
    nop                                           ; $499a: $00
    nop                                           ; $499b: $00
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    ld d, [hl]                                    ; $499f: $56
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    rla                                           ; $49a2: $17
    nop                                           ; $49a3: $00
    nop                                           ; $49a4: $00
    inc de                                        ; $49a5: $13
    ld bc, $5886                                  ; $49a6: $01 $86 $58
    nop                                           ; $49a9: $00
    db $fd                                        ; $49aa: $fd
    dec de                                        ; $49ab: $1b
    ld b, $00                                     ; $49ac: $06 $00
    inc de                                        ; $49ae: $13
    nop                                           ; $49af: $00
    push af                                       ; $49b0: $f5
    inc d                                         ; $49b1: $14
    ld bc, $1572                                  ; $49b2: $01 $72 $15
    nop                                           ; $49b5: $00
    nop                                           ; $49b6: $00
    ld d, $39                                     ; $49b7: $16 $39
    nop                                           ; $49b9: $00
    ld d, d                                       ; $49ba: $52
    nop                                           ; $49bb: $00
    nop                                           ; $49bc: $00
    ld e, d                                       ; $49bd: $5a
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    dec de                                        ; $49c0: $1b
    inc b                                         ; $49c1: $04
    nop                                           ; $49c2: $00
    inc de                                        ; $49c3: $13
    nop                                           ; $49c4: $00
    ldh [rNR14], a                                ; $49c5: $e0 $14
    ld bc, $1586                                  ; $49c7: $01 $86 $15
    nop                                           ; $49ca: $00
    nop                                           ; $49cb: $00
    ld d, $37                                     ; $49cc: $16 $37
    nop                                           ; $49ce: $00
    ld d, d                                       ; $49cf: $52
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    ld e, d                                       ; $49d2: $5a
    nop                                           ; $49d3: $00
    nop                                           ; $49d4: $00
    dec de                                        ; $49d5: $1b
    ld [bc], a                                    ; $49d6: $02
    nop                                           ; $49d7: $00
    ld e, a                                       ; $49d8: $5f
    ld bc, $2700                                  ; $49d9: $01 $00 $27
    nop                                           ; $49dc: $00
    ld a, [bc]                                    ; $49dd: $0a
    dec d                                         ; $49de: $15
    nop                                           ; $49df: $00
    nop                                           ; $49e0: $00
    inc sp                                        ; $49e1: $33
    rlca                                          ; $49e2: $07
    add b                                         ; $49e3: $80
    dec d                                         ; $49e4: $15
    add hl, de                                    ; $49e5: $19
    nop                                           ; $49e6: $00
    inc sp                                        ; $49e7: $33
    rlca                                          ; $49e8: $07
    add c                                         ; $49e9: $81
    dec d                                         ; $49ea: $15
    nop                                           ; $49eb: $00
    nop                                           ; $49ec: $00
    inc sp                                        ; $49ed: $33
    rlca                                          ; $49ee: $07
    add d                                         ; $49ef: $82
    dec d                                         ; $49f0: $15
    add hl, de                                    ; $49f1: $19
    nop                                           ; $49f2: $00
    inc sp                                        ; $49f3: $33
    rlca                                          ; $49f4: $07
    add e                                         ; $49f5: $83
    dec d                                         ; $49f6: $15
    dec d                                         ; $49f7: $15
    nop                                           ; $49f8: $00
    inc sp                                        ; $49f9: $33
    rlca                                          ; $49fa: $07
    add h                                         ; $49fb: $84
    dec d                                         ; $49fc: $15
    add hl, de                                    ; $49fd: $19
    nop                                           ; $49fe: $00
    inc sp                                        ; $49ff: $33
    rlca                                          ; $4a00: $07
    add l                                         ; $4a01: $85
    dec d                                         ; $4a02: $15
    nop                                           ; $4a03: $00
    nop                                           ; $4a04: $00
    inc sp                                        ; $4a05: $33
    rlca                                          ; $4a06: $07
    add [hl]                                      ; $4a07: $86
    ld e, a                                       ; $4a08: $5f
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    inc de                                        ; $4a0b: $13
    nop                                           ; $4a0c: $00
    cp [hl]                                       ; $4a0d: $be
    inc d                                         ; $4a0e: $14
    ld bc, $1540                                  ; $4a0f: $01 $40 $15
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    ld d, $4a                                     ; $4a14: $16 $4a
    nop                                           ; $4a16: $00
    ld d, d                                       ; $4a17: $52
    nop                                           ; $4a18: $00
    nop                                           ; $4a19: $00
    ld e, a                                       ; $4a1a: $5f
    ld bc, $1500                                  ; $4a1b: $01 $00 $15
    inc b                                         ; $4a1e: $04
    nop                                           ; $4a1f: $00
    add hl, de                                    ; $4a20: $19
    nop                                           ; $4a21: $00
    ld b, [hl]                                    ; $4a22: $46
    dec d                                         ; $4a23: $15
    jr c, jr_00b_4a26                             ; $4a24: $38 $00

jr_00b_4a26:
    inc sp                                        ; $4a26: $33
    rlca                                          ; $4a27: $07
    add a                                         ; $4a28: $87
    dec d                                         ; $4a29: $15
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    inc sp                                        ; $4a2c: $33
    rlca                                          ; $4a2d: $07
    adc b                                         ; $4a2e: $88
    dec de                                        ; $4a2f: $1b
    ld [bc], a                                    ; $4a30: $02
    nop                                           ; $4a31: $00
    daa                                           ; $4a32: $27
    nop                                           ; $4a33: $00
    ld b, $15                                     ; $4a34: $06 $15
    jr c, jr_00b_4a38                             ; $4a36: $38 $00

jr_00b_4a38:
    inc sp                                        ; $4a38: $33
    rlca                                          ; $4a39: $07
    adc c                                         ; $4a3a: $89
    dec d                                         ; $4a3b: $15
    inc b                                         ; $4a3c: $04
    nop                                           ; $4a3d: $00
    add hl, de                                    ; $4a3e: $19
    nop                                           ; $4a3f: $00
    ld e, [hl]                                    ; $4a40: $5e
    ld e, $4a                                     ; $4a41: $1e $4a
    nop                                           ; $4a43: $00
    dec d                                         ; $4a44: $15
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    inc sp                                        ; $4a47: $33
    rlca                                          ; $4a48: $07
    adc d                                         ; $4a49: $8a
    rla                                           ; $4a4a: $17
    scf                                           ; $4a4b: $37
    nop                                           ; $4a4c: $00
    ld e, a                                       ; $4a4d: $5f
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    ld e, [hl]                                    ; $4a50: $5e
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    dec d                                         ; $4a53: $15
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    add hl, de                                    ; $4a56: $19
    nop                                           ; $4a57: $00
    ld b, [hl]                                    ; $4a58: $46
    ld e, [hl]                                    ; $4a59: $5e
    ld bc, $1700                                  ; $4a5a: $01 $00 $17
    add hl, sp                                    ; $4a5d: $39
    nop                                           ; $4a5e: $00
    ld e, a                                       ; $4a5f: $5f
    ld bc, $1500                                  ; $4a60: $01 $00 $15
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    add hl, de                                    ; $4a65: $19
    nop                                           ; $4a66: $00
    ld b, [hl]                                    ; $4a67: $46
    ld e, $39                                     ; $4a68: $1e $39
    nop                                           ; $4a6a: $00
    rla                                           ; $4a6b: $17
    scf                                           ; $4a6c: $37
    nop                                           ; $4a6d: $00
    ld e, $37                                     ; $4a6e: $1e $37
    nop                                           ; $4a70: $00
    ld h, d                                       ; $4a71: $62
    inc [hl]                                      ; $4a72: $34
    nop                                           ; $4a73: $00
    ld d, a                                       ; $4a74: $57
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    rrca                                          ; $4a7a: $0f
    ld [$0f01], sp                                ; $4a7b: $08 $01 $0f
    ld a, [$1300]                                 ; $4a7e: $fa $00 $13
    nop                                           ; $4a81: $00
    ret z                                         ; $4a82: $c8

    inc d                                         ; $4a83: $14
    ld bc, $158b                                  ; $4a84: $01 $8b $15
    nop                                           ; $4a87: $00
    nop                                           ; $4a88: $00
    ld d, $39                                     ; $4a89: $16 $39
    nop                                           ; $4a8b: $00
    ld d, d                                       ; $4a8c: $52
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    dec de                                        ; $4a8f: $1b
    ld [bc], a                                    ; $4a90: $02
    nop                                           ; $4a91: $00
    ld [hl+], a                                   ; $4a92: $22
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    ld e, a                                       ; $4a95: $5f
    ld bc, $2700                                  ; $4a96: $01 $00 $27
    nop                                           ; $4a99: $00
    inc d                                         ; $4a9a: $14
    add hl, bc                                    ; $4a9b: $09
    add hl, bc                                    ; $4a9c: $09
    nop                                           ; $4a9d: $00
    dec b                                         ; $4a9e: $05
    dec b                                         ; $4a9f: $05
    nop                                           ; $4aa0: $00
    dec d                                         ; $4aa1: $15
    dec d                                         ; $4aa2: $15
    nop                                           ; $4aa3: $00
    inc sp                                        ; $4aa4: $33
    rlca                                          ; $4aa5: $07
    ld [hl], a                                    ; $4aa6: $77
    rrca                                          ; $4aa7: $0f
    add hl, bc                                    ; $4aa8: $09
    ld bc, $0303                                  ; $4aa9: $01 $03 $03
    nop                                           ; $4aac: $00
    dec d                                         ; $4aad: $15
    dec d                                         ; $4aae: $15
    nop                                           ; $4aaf: $00
    inc sp                                        ; $4ab0: $33
    rlca                                          ; $4ab1: $07
    ld a, b                                       ; $4ab2: $78
    ld h, c                                       ; $4ab3: $61
    ld bc, $5700                                  ; $4ab4: $01 $00 $57
    nop                                           ; $4ab7: $00
    nop                                           ; $4ab8: $00
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    nop                                           ; $4abb: $00
    add hl, bc                                    ; $4abc: $09
    nop                                           ; $4abd: $00
    ld e, b                                       ; $4abe: $58
    dec b                                         ; $4abf: $05
    ld [$0900], sp                                ; $4ac0: $08 $00 $09
    add hl, bc                                    ; $4ac3: $09
    nop                                           ; $4ac4: $00
    dec b                                         ; $4ac5: $05
    ld b, $00                                     ; $4ac6: $06 $00
    dec d                                         ; $4ac8: $15
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    inc sp                                        ; $4acb: $33
    inc b                                         ; $4acc: $04
    dec d                                         ; $4acd: $15
    dec d                                         ; $4ace: $15
    ld l, $00                                     ; $4acf: $2e $00
    inc sp                                        ; $4ad1: $33
    inc b                                         ; $4ad2: $04
    rla                                           ; $4ad3: $17
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    nop                                           ; $4ad6: $00
    add hl, bc                                    ; $4ad7: $09
    nop                                           ; $4ad8: $00
    ld e, h                                       ; $4ad9: $5c
    dec b                                         ; $4ada: $05
    ld hl, $0900                                  ; $4adb: $21 $00 $09
    dec c                                         ; $4ade: $0d
    ld bc, $0205                                  ; $4adf: $01 $05 $02
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    ld e, a                                       ; $4ae6: $5f
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    ld d, [hl]                                    ; $4ae9: $56
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    rla                                           ; $4aec: $17
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    inc e                                         ; $4aef: $1c
    ld d, $00                                     ; $4af0: $16 $00
    ld e, a                                       ; $4af2: $5f
    ld bc, $1500                                  ; $4af3: $01 $00 $15
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    inc sp                                        ; $4af8: $33
    inc b                                         ; $4af9: $04
    cp d                                          ; $4afa: $ba
    dec d                                         ; $4afb: $15
    ld l, $00                                     ; $4afc: $2e $00
    inc sp                                        ; $4afe: $33
    inc b                                         ; $4aff: $04
    cp e                                          ; $4b00: $bb
    dec d                                         ; $4b01: $15
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    inc sp                                        ; $4b04: $33
    inc b                                         ; $4b05: $04
    cp h                                          ; $4b06: $bc
    dec d                                         ; $4b07: $15
    ld l, $00                                     ; $4b08: $2e $00
    inc sp                                        ; $4b0a: $33
    inc b                                         ; $4b0b: $04
    cp l                                          ; $4b0c: $bd
    dec d                                         ; $4b0d: $15
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    inc sp                                        ; $4b10: $33
    inc b                                         ; $4b11: $04
    cp [hl]                                       ; $4b12: $be
    dec d                                         ; $4b13: $15
    ld l, $00                                     ; $4b14: $2e $00
    inc sp                                        ; $4b16: $33
    inc b                                         ; $4b17: $04
    cp a                                          ; $4b18: $bf
    rla                                           ; $4b19: $17
    ld d, $00                                     ; $4b1a: $16 $00
    ld e, d                                       ; $4b1c: $5a
    nop                                           ; $4b1d: $00
    nop                                           ; $4b1e: $00
    ld e, [hl]                                    ; $4b1f: $5e
    ld bc, $1500                                  ; $4b20: $01 $00 $15
    ld [bc], a                                    ; $4b23: $02
    nop                                           ; $4b24: $00
    add hl, de                                    ; $4b25: $19
    nop                                           ; $4b26: $00
    ld e, $15                                     ; $4b27: $1e $15
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    add hl, de                                    ; $4b2b: $19
    nop                                           ; $4b2c: $00
    ld e, d                                       ; $4b2d: $5a
    ld e, $16                                     ; $4b2e: $1e $16
    nop                                           ; $4b30: $00
    rrca                                          ; $4b31: $0f
    dec c                                         ; $4b32: $0d
    ld bc, $5b62                                  ; $4b33: $01 $62 $5b
    nop                                           ; $4b36: $00
    ld d, a                                       ; $4b37: $57
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    nop                                           ; $4b3f: $00
    ld e, a                                       ; $4b40: $5f
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    add hl, bc                                    ; $4b43: $09
    nop                                           ; $4b44: $00
    ld b, e                                       ; $4b45: $43
    dec b                                         ; $4b46: $05
    inc b                                         ; $4b47: $04
    nop                                           ; $4b48: $00
    add hl, bc                                    ; $4b49: $09
    dec b                                         ; $4b4a: $05
    inc bc                                        ; $4b4b: $03
    dec b                                         ; $4b4c: $05
    ld [bc], a                                    ; $4b4d: $02
    nop                                           ; $4b4e: $00
    inc bc                                        ; $4b4f: $03
    dec c                                         ; $4b50: $0d
    nop                                           ; $4b51: $00
    add hl, bc                                    ; $4b52: $09
    nop                                           ; $4b53: $00
    inc sp                                        ; $4b54: $33
    dec b                                         ; $4b55: $05
    add hl, bc                                    ; $4b56: $09
    nop                                           ; $4b57: $00
    add hl, bc                                    ; $4b58: $09
    ld [$0501], sp                                ; $4b59: $08 $01 $05
    rlca                                          ; $4b5c: $07
    nop                                           ; $4b5d: $00
    add hl, bc                                    ; $4b5e: $09
    ld a, [bc]                                    ; $4b5f: $0a
    nop                                           ; $4b60: $00
    dec b                                         ; $4b61: $05
    inc b                                         ; $4b62: $04
    nop                                           ; $4b63: $00
    rrca                                          ; $4b64: $0f
    ld a, [bc]                                    ; $4b65: $0a
    ld bc, $5903                                  ; $4b66: $01 $03 $59
    nop                                           ; $4b69: $00
    inc bc                                        ; $4b6a: $03
    ld [bc], a                                    ; $4b6b: $02
    nop                                           ; $4b6c: $00
    inc bc                                        ; $4b6d: $03
    dec h                                         ; $4b6e: $25
    nop                                           ; $4b6f: $00
    ld e, a                                       ; $4b70: $5f
    ld bc, $0000                                  ; $4b71: $01 $00 $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    ld d, [hl]                                    ; $4b76: $56
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    ld e, a                                       ; $4b79: $5f
    ld bc, $1500                                  ; $4b7a: $01 $00 $15
    ld a, [hl-]                                   ; $4b7d: $3a
    nop                                           ; $4b7e: $00
    inc sp                                        ; $4b7f: $33
    rlca                                          ; $4b80: $07
    sbc l                                         ; $4b81: $9d
    dec d                                         ; $4b82: $15
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    inc sp                                        ; $4b85: $33
    rlca                                          ; $4b86: $07
    sbc [hl]                                      ; $4b87: $9e
    rla                                           ; $4b88: $17
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    inc de                                        ; $4b8b: $13
    nop                                           ; $4b8c: $00
    push de                                       ; $4b8d: $d5
    ld [hl], c                                    ; $4b8e: $71
    nop                                           ; $4b8f: $00
    dec h                                         ; $4b90: $25
    daa                                           ; $4b91: $27
    nop                                           ; $4b92: $00
    dec b                                         ; $4b93: $05
    dec d                                         ; $4b94: $15
    dec l                                         ; $4b95: $2d
    nop                                           ; $4b96: $00
    inc sp                                        ; $4b97: $33
    rlca                                          ; $4b98: $07
    sbc a                                         ; $4b99: $9f
    dec d                                         ; $4b9a: $15
    ld a, [hl-]                                   ; $4b9b: $3a
    nop                                           ; $4b9c: $00
    inc sp                                        ; $4b9d: $33
    rlca                                          ; $4b9e: $07
    and b                                         ; $4b9f: $a0
    daa                                           ; $4ba0: $27
    nop                                           ; $4ba1: $00
    ld a, [bc]                                    ; $4ba2: $0a
    ld e, a                                       ; $4ba3: $5f
    nop                                           ; $4ba4: $00
    nop                                           ; $4ba5: $00
    rla                                           ; $4ba6: $17
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    dec de                                        ; $4ba9: $1b
    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    inc de                                        ; $4bac: $13
    nop                                           ; $4bad: $00
    dec b                                         ; $4bae: $05
    inc d                                         ; $4baf: $14
    nop                                           ; $4bb0: $00
    or h                                          ; $4bb1: $b4
    dec d                                         ; $4bb2: $15
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    ld d, $49                                     ; $4bb5: $16 $49
    nop                                           ; $4bb7: $00
    ld d, d                                       ; $4bb8: $52
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    ld e, d                                       ; $4bbb: $5a
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    ld e, a                                       ; $4bbe: $5f
    ld bc, $5e00                                  ; $4bbf: $01 $00 $5e
    ld bc, $1300                                  ; $4bc2: $01 $00 $13
    nop                                           ; $4bc5: $00
    jp nc, Jump_000_0077                          ; $4bc6: $d2 $77 $00

    and e                                         ; $4bc9: $a3
    ld e, $49                                     ; $4bca: $1e $49
    nop                                           ; $4bcc: $00
    rla                                           ; $4bcd: $17
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    dec de                                        ; $4bd0: $1b
    ld [bc], a                                    ; $4bd1: $02
    nop                                           ; $4bd2: $00
    rrca                                          ; $4bd3: $0f
    dec b                                         ; $4bd4: $05
    inc b                                         ; $4bd5: $04
    ld d, a                                       ; $4bd6: $57
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    ld d, [hl]                                    ; $4bdc: $56
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    rla                                           ; $4bdf: $17
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    dec de                                        ; $4be2: $1b
    inc b                                         ; $4be3: $04
    nop                                           ; $4be4: $00
    ld e, a                                       ; $4be5: $5f
    ld bc, $1500                                  ; $4be6: $01 $00 $15
    dec d                                         ; $4be9: $15
    nop                                           ; $4bea: $00
    inc sp                                        ; $4beb: $33
    rlca                                          ; $4bec: $07
    halt                                          ; $4bed: $76
    rla                                           ; $4bee: $17
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    dec d                                         ; $4bf1: $15
    inc b                                         ; $4bf2: $04
    nop                                           ; $4bf3: $00
    add hl, de                                    ; $4bf4: $19
    nop                                           ; $4bf5: $00
    inc d                                         ; $4bf6: $14
    dec de                                        ; $4bf7: $1b
    inc b                                         ; $4bf8: $04
    nop                                           ; $4bf9: $00
    ld d, a                                       ; $4bfa: $57
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    ld d, [hl]                                    ; $4c00: $56
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    ld a, d                                       ; $4c03: $7a
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    rla                                           ; $4c06: $17
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    ld e, a                                       ; $4c09: $5f
    ld bc, $1300                                  ; $4c0a: $01 $00 $13
    nop                                           ; $4c0d: $00
    jp c, $0071                                   ; $4c0e: $da $71 $00

    ld a, [$001b]                                 ; $4c11: $fa $1b $00
    nop                                           ; $4c14: $00
    daa                                           ; $4c15: $27
    nop                                           ; $4c16: $00
    dec b                                         ; $4c17: $05
    ld e, a                                       ; $4c18: $5f
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    inc de                                        ; $4c1b: $13
    ld bc, $141c                                  ; $4c1c: $01 $1c $14
    nop                                           ; $4c1f: $00
    cp [hl]                                       ; $4c20: $be
    dec d                                         ; $4c21: $15
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    ld d, $4a                                     ; $4c24: $16 $4a
    nop                                           ; $4c26: $00
    ld d, d                                       ; $4c27: $52
    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    ld e, d                                       ; $4c2a: $5a
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
    ld e, a                                       ; $4c2d: $5f
    ld bc, $1500                                  ; $4c2e: $01 $00 $15
    ld b, $00                                     ; $4c31: $06 $00
    add hl, de                                    ; $4c33: $19
    nop                                           ; $4c34: $00
    jr c, jr_00b_4c4c                             ; $4c35: $38 $15

    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    add hl, de                                    ; $4c39: $19
    nop                                           ; $4c3a: $00
    inc a                                         ; $4c3b: $3c
    ld e, $4a                                     ; $4c3c: $1e $4a
    nop                                           ; $4c3e: $00
    dec d                                         ; $4c3f: $15
    dec d                                         ; $4c40: $15
    nop                                           ; $4c41: $00
    inc sp                                        ; $4c42: $33
    rlca                                          ; $4c43: $07
    ld l, l                                       ; $4c44: $6d
    dec d                                         ; $4c45: $15
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    inc sp                                        ; $4c48: $33
    rlca                                          ; $4c49: $07
    ld l, [hl]                                    ; $4c4a: $6e
    ld e, a                                       ; $4c4b: $5f

jr_00b_4c4c:
    nop                                           ; $4c4c: $00
    nop                                           ; $4c4d: $00
    inc de                                        ; $4c4e: $13
    nop                                           ; $4c4f: $00
    ret z                                         ; $4c50: $c8

    inc d                                         ; $4c51: $14
    ld bc, $1588                                  ; $4c52: $01 $88 $15
    nop                                           ; $4c55: $00
    nop                                           ; $4c56: $00
    ld d, $58                                     ; $4c57: $16 $58
    nop                                           ; $4c59: $00
    ld d, d                                       ; $4c5a: $52
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    ld e, d                                       ; $4c5d: $5a
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    dec de                                        ; $4c60: $1b
    inc b                                         ; $4c61: $04
    nop                                           ; $4c62: $00
    ld e, a                                       ; $4c63: $5f
    ld bc, $1700                                  ; $4c64: $01 $00 $17
    nop                                           ; $4c67: $00
    nop                                           ; $4c68: $00
    inc de                                        ; $4c69: $13
    nop                                           ; $4c6a: $00
    xor $71                                       ; $4c6b: $ee $71
    nop                                           ; $4c6d: $00
    rst $08                                       ; $4c6e: $cf
    inc bc                                        ; $4c6f: $03
    daa                                           ; $4c70: $27
    nop                                           ; $4c71: $00
    ld d, [hl]                                    ; $4c72: $56
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    ld a, d                                       ; $4c75: $7a
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    rla                                           ; $4c78: $17
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    ld e, a                                       ; $4c7b: $5f
    ld bc, $1300                                  ; $4c7c: $01 $00 $13
    nop                                           ; $4c7f: $00
    jp c, $0071                                   ; $4c80: $da $71 $00

    jr z, jr_00b_4ca0                             ; $4c83: $28 $1b

    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    daa                                           ; $4c87: $27
    nop                                           ; $4c88: $00
    dec b                                         ; $4c89: $05
    ld e, a                                       ; $4c8a: $5f
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    inc de                                        ; $4c8d: $13
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    inc d                                         ; $4c90: $14
    nop                                           ; $4c91: $00
    cp [hl]                                       ; $4c92: $be
    dec d                                         ; $4c93: $15
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    ld d, $4a                                     ; $4c96: $16 $4a
    nop                                           ; $4c98: $00
    ld d, d                                       ; $4c99: $52
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    ld e, d                                       ; $4c9c: $5a
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    ld e, a                                       ; $4c9f: $5f

jr_00b_4ca0:
    ld bc, $1500                                  ; $4ca0: $01 $00 $15
    ld [bc], a                                    ; $4ca3: $02
    nop                                           ; $4ca4: $00
    add hl, de                                    ; $4ca5: $19
    nop                                           ; $4ca6: $00
    jr c, jr_00b_4cbe                             ; $4ca7: $38 $15

    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    add hl, de                                    ; $4cab: $19
    nop                                           ; $4cac: $00
    inc a                                         ; $4cad: $3c
    ld e, $4a                                     ; $4cae: $1e $4a
    nop                                           ; $4cb0: $00
    dec d                                         ; $4cb1: $15
    dec d                                         ; $4cb2: $15
    nop                                           ; $4cb3: $00
    inc sp                                        ; $4cb4: $33
    rlca                                          ; $4cb5: $07
    ld l, l                                       ; $4cb6: $6d
    dec d                                         ; $4cb7: $15
    nop                                           ; $4cb8: $00
    nop                                           ; $4cb9: $00
    inc sp                                        ; $4cba: $33
    rlca                                          ; $4cbb: $07
    ld l, [hl]                                    ; $4cbc: $6e
    ld e, a                                       ; $4cbd: $5f

jr_00b_4cbe:
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    inc de                                        ; $4cc0: $13
    nop                                           ; $4cc1: $00
    ld e, a                                       ; $4cc2: $5f
    inc d                                         ; $4cc3: $14
    ld bc, $1588                                  ; $4cc4: $01 $88 $15
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    ld d, $58                                     ; $4cc9: $16 $58
    nop                                           ; $4ccb: $00
    ld d, d                                       ; $4ccc: $52
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    ld e, d                                       ; $4ccf: $5a
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    dec de                                        ; $4cd2: $1b
    inc b                                         ; $4cd3: $04
    nop                                           ; $4cd4: $00
    ld e, a                                       ; $4cd5: $5f
    ld bc, $1700                                  ; $4cd6: $01 $00 $17
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    inc de                                        ; $4cdb: $13
    nop                                           ; $4cdc: $00
    xor $71                                       ; $4cdd: $ee $71
    nop                                           ; $4cdf: $00
    ld d, e                                       ; $4ce0: $53
    inc bc                                        ; $4ce1: $03
    ld bc, $1700                                  ; $4ce2: $01 $00 $17
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    dec d                                         ; $4ce7: $15
    inc b                                         ; $4ce8: $04
    nop                                           ; $4ce9: $00
    add hl, de                                    ; $4cea: $19
    nop                                           ; $4ceb: $00
    inc a                                         ; $4cec: $3c
    dec de                                        ; $4ced: $1b
    inc b                                         ; $4cee: $04
    nop                                           ; $4cef: $00
    dec d                                         ; $4cf0: $15
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    inc sp                                        ; $4cf3: $33
    rlca                                          ; $4cf4: $07
    ld l, a                                       ; $4cf5: $6f
    dec d                                         ; $4cf6: $15
    dec d                                         ; $4cf7: $15
    nop                                           ; $4cf8: $00
    inc sp                                        ; $4cf9: $33
    rlca                                          ; $4cfa: $07
    ld [hl], b                                    ; $4cfb: $70
    dec d                                         ; $4cfc: $15
    inc b                                         ; $4cfd: $04
    nop                                           ; $4cfe: $00
    add hl, de                                    ; $4cff: $19
    nop                                           ; $4d00: $00
    inc a                                         ; $4d01: $3c
    dec de                                        ; $4d02: $1b
    inc b                                         ; $4d03: $04
    nop                                           ; $4d04: $00
    dec d                                         ; $4d05: $15
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    inc sp                                        ; $4d08: $33
    rlca                                          ; $4d09: $07
    ld [hl], c                                    ; $4d0a: $71
    rla                                           ; $4d0b: $17
    ld e, b                                       ; $4d0c: $58
    nop                                           ; $4d0d: $00
    dec d                                         ; $4d0e: $15
    ld [bc], a                                    ; $4d0f: $02
    nop                                           ; $4d10: $00
    add hl, de                                    ; $4d11: $19
    nop                                           ; $4d12: $00
    ld c, e                                       ; $4d13: $4b
    ld e, $58                                     ; $4d14: $1e $58
    nop                                           ; $4d16: $00
    dec d                                         ; $4d17: $15
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    inc sp                                        ; $4d1a: $33
    rlca                                          ; $4d1b: $07
    ld [hl], d                                    ; $4d1c: $72
    ld l, $25                                     ; $4d1d: $2e $25
    nop                                           ; $4d1f: $00
    dec d                                         ; $4d20: $15
    add hl, de                                    ; $4d21: $19
    nop                                           ; $4d22: $00
    inc sp                                        ; $4d23: $33
    rlca                                          ; $4d24: $07
    ld [hl], e                                    ; $4d25: $73
    dec d                                         ; $4d26: $15
    dec d                                         ; $4d27: $15
    nop                                           ; $4d28: $00
    inc sp                                        ; $4d29: $33
    rlca                                          ; $4d2a: $07
    ld [hl], h                                    ; $4d2b: $74
    dec d                                         ; $4d2c: $15
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    inc sp                                        ; $4d2f: $33
    rlca                                          ; $4d30: $07
    ld [hl], l                                    ; $4d31: $75
    dec d                                         ; $4d32: $15
    dec d                                         ; $4d33: $15
    nop                                           ; $4d34: $00
    inc sp                                        ; $4d35: $33
    rlca                                          ; $4d36: $07
    halt                                          ; $4d37: $76
    ld d, a                                       ; $4d38: $57
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    nop                                           ; $4d3c: $00
    nop                                           ; $4d3d: $00
    ld e, a                                       ; $4d3e: $5f
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    add hl, bc                                    ; $4d41: $09
    nop                                           ; $4d42: $00
    ld b, e                                       ; $4d43: $43
    dec b                                         ; $4d44: $05
    inc b                                         ; $4d45: $04
    nop                                           ; $4d46: $00
    add hl, bc                                    ; $4d47: $09
    dec b                                         ; $4d48: $05
    inc bc                                        ; $4d49: $03
    dec b                                         ; $4d4a: $05
    ld [bc], a                                    ; $4d4b: $02
    nop                                           ; $4d4c: $00
    inc bc                                        ; $4d4d: $03
    rrca                                          ; $4d4e: $0f
    nop                                           ; $4d4f: $00
    add hl, bc                                    ; $4d50: $09
    nop                                           ; $4d51: $00
    inc sp                                        ; $4d52: $33
    dec b                                         ; $4d53: $05
    dec bc                                        ; $4d54: $0b
    nop                                           ; $4d55: $00
    add hl, bc                                    ; $4d56: $09
    ld [$0501], sp                                ; $4d57: $08 $01 $05
    add hl, bc                                    ; $4d5a: $09
    nop                                           ; $4d5b: $00
    add hl, bc                                    ; $4d5c: $09
    ld a, [bc]                                    ; $4d5d: $0a
    nop                                           ; $4d5e: $00
    dec b                                         ; $4d5f: $05
    dec b                                         ; $4d60: $05
    nop                                           ; $4d61: $00
    rrca                                          ; $4d62: $0f
    ld a, [bc]                                    ; $4d63: $0a
    ld bc, $2d15                                  ; $4d64: $01 $15 $2d
    nop                                           ; $4d67: $00
    rlca                                          ; $4d68: $07
    dec bc                                        ; $4d69: $0b
    add sp, $03                                   ; $4d6a: $e8 $03
    inc bc                                        ; $4d6c: $03
    nop                                           ; $4d6d: $00
    dec d                                         ; $4d6e: $15
    dec l                                         ; $4d6f: $2d
    nop                                           ; $4d70: $00
    rlca                                          ; $4d71: $07
    dec bc                                        ; $4d72: $0b
    call nz, $015f                                ; $4d73: $c4 $5f $01
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    ld d, [hl]                                    ; $4d7a: $56
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    ld e, a                                       ; $4d7d: $5f
    ld bc, $1500                                  ; $4d7e: $01 $00 $15
    ld a, [hl-]                                   ; $4d81: $3a
    nop                                           ; $4d82: $00
    inc sp                                        ; $4d83: $33
    rlca                                          ; $4d84: $07
    sbc l                                         ; $4d85: $9d
    dec d                                         ; $4d86: $15
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    inc sp                                        ; $4d89: $33
    rlca                                          ; $4d8a: $07
    sbc [hl]                                      ; $4d8b: $9e
    rla                                           ; $4d8c: $17
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    inc de                                        ; $4d8f: $13
    nop                                           ; $4d90: $00
    push de                                       ; $4d91: $d5
    ld [hl], c                                    ; $4d92: $71
    nop                                           ; $4d93: $00
    db $fc                                        ; $4d94: $fc
    daa                                           ; $4d95: $27
    nop                                           ; $4d96: $00
    dec b                                         ; $4d97: $05
    dec d                                         ; $4d98: $15
    dec l                                         ; $4d99: $2d
    nop                                           ; $4d9a: $00
    inc sp                                        ; $4d9b: $33
    rlca                                          ; $4d9c: $07
    sbc a                                         ; $4d9d: $9f
    dec d                                         ; $4d9e: $15
    ld a, [hl-]                                   ; $4d9f: $3a
    nop                                           ; $4da0: $00
    inc sp                                        ; $4da1: $33
    rlca                                          ; $4da2: $07
    and b                                         ; $4da3: $a0
    daa                                           ; $4da4: $27
    nop                                           ; $4da5: $00
    ld a, [bc]                                    ; $4da6: $0a
    ld e, a                                       ; $4da7: $5f
    nop                                           ; $4da8: $00
    nop                                           ; $4da9: $00
    rla                                           ; $4daa: $17
    nop                                           ; $4dab: $00
    nop                                           ; $4dac: $00
    dec de                                        ; $4dad: $1b
    nop                                           ; $4dae: $00
    nop                                           ; $4daf: $00
    inc de                                        ; $4db0: $13
    ld bc, $141c                                  ; $4db1: $01 $1c $14
    nop                                           ; $4db4: $00
    or h                                          ; $4db5: $b4
    dec d                                         ; $4db6: $15
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    ld d, $49                                     ; $4db9: $16 $49
    nop                                           ; $4dbb: $00
    ld d, d                                       ; $4dbc: $52
    nop                                           ; $4dbd: $00
    nop                                           ; $4dbe: $00
    ld e, d                                       ; $4dbf: $5a
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    ld e, a                                       ; $4dc2: $5f
    ld bc, $5e00                                  ; $4dc3: $01 $00 $5e
    ld bc, $1300                                  ; $4dc6: $01 $00 $13
    nop                                           ; $4dc9: $00
    jp nc, Jump_000_0077                          ; $4dca: $d2 $77 $00

    ld a, e                                       ; $4dcd: $7b
    ld e, $49                                     ; $4dce: $1e $49
    nop                                           ; $4dd0: $00
    rla                                           ; $4dd1: $17
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    dec de                                        ; $4dd4: $1b
    ld b, $00                                     ; $4dd5: $06 $00
    rrca                                          ; $4dd7: $0f
    dec b                                         ; $4dd8: $05
    inc b                                         ; $4dd9: $04
    ld d, a                                       ; $4dda: $57
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    nop                                           ; $4ddd: $00
    nop                                           ; $4dde: $00
    nop                                           ; $4ddf: $00
    ld e, a                                       ; $4de0: $5f
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    add hl, bc                                    ; $4de3: $09
    nop                                           ; $4de4: $00
    inc sp                                        ; $4de5: $33
    dec b                                         ; $4de6: $05
    ld de, $0900                                  ; $4de7: $11 $00 $09
    ld [$0501], sp                                ; $4dea: $08 $01 $05
    rrca                                          ; $4ded: $0f
    nop                                           ; $4dee: $00
    add hl, bc                                    ; $4def: $09
    ld a, [bc]                                    ; $4df0: $0a
    ld bc, $0d05                                  ; $4df1: $01 $05 $0d
    nop                                           ; $4df4: $00
    ld d, [hl]                                    ; $4df5: $56
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00
    rla                                           ; $4df8: $17
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    dec de                                        ; $4dfb: $1b
    inc b                                         ; $4dfc: $04
    nop                                           ; $4dfd: $00
    ld e, a                                       ; $4dfe: $5f
    ld bc, $1500                                  ; $4dff: $01 $00 $15
    dec d                                         ; $4e02: $15
    nop                                           ; $4e03: $00
    inc sp                                        ; $4e04: $33
    rlca                                          ; $4e05: $07
    halt                                          ; $4e06: $76
    rla                                           ; $4e07: $17
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    dec d                                         ; $4e0a: $15
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    add hl, de                                    ; $4e0d: $19
    nop                                           ; $4e0e: $00
    inc d                                         ; $4e0f: $14
    dec de                                        ; $4e10: $1b
    inc b                                         ; $4e11: $04
    nop                                           ; $4e12: $00
    ld d, a                                       ; $4e13: $57
    nop                                           ; $4e14: $00

Call_00b_4e15:
    nop                                           ; $4e15: $00
    nop                                           ; $4e16: $00
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    ld e, a                                       ; $4e19: $5f
    ld bc, $0000                                  ; $4e1a: $01 $00 $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    dec bc                                        ; $4e1f: $0b
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    dec l                                         ; $4e23: $2d
    ld bc, $01c8                                  ; $4e24: $01 $c8 $01
    rlc d                                         ; $4e27: $cb $02
    scf                                           ; $4e29: $37
    inc bc                                        ; $4e2a: $03
    call z, $dc05                                 ; $4e2b: $cc $05 $dc
    rlca                                          ; $4e2e: $07
    cp a                                          ; $4e2f: $bf
    add hl, bc                                    ; $4e30: $09
    and d                                         ; $4e31: $a2
    add hl, bc                                    ; $4e32: $09
    xor e                                         ; $4e33: $ab
    ld a, [bc]                                    ; $4e34: $0a
    ld l, b                                       ; $4e35: $68
    add hl, bc                                    ; $4e36: $09
    nop                                           ; $4e37: $00
    rlca                                          ; $4e38: $07
    dec b                                         ; $4e39: $05
    ld b, $00                                     ; $4e3a: $06 $00
    dec d                                         ; $4e3c: $15
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    inc sp                                        ; $4e3f: $33
    ld bc, $157b                                  ; $4e40: $01 $7b $15
    ld b, b                                       ; $4e43: $40
    nop                                           ; $4e44: $00
    inc sp                                        ; $4e45: $33
    ld bc, $0081                                  ; $4e46: $01 $81 $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    add hl, bc                                    ; $4e4b: $09
    nop                                           ; $4e4c: $00
    ld e, h                                       ; $4e4d: $5c
    dec b                                         ; $4e4e: $05
    ld b, $00                                     ; $4e4f: $06 $00
    dec d                                         ; $4e51: $15
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    inc sp                                        ; $4e54: $33
    inc b                                         ; $4e55: $04
    cp b                                          ; $4e56: $b8
    dec d                                         ; $4e57: $15
    ld b, b                                       ; $4e58: $40
    nop                                           ; $4e59: $00
    inc sp                                        ; $4e5a: $33
    inc b                                         ; $4e5b: $04
    cp c                                          ; $4e5c: $b9
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    ld e, a                                       ; $4e63: $5f
    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    add hl, bc                                    ; $4e66: $09
    nop                                           ; $4e67: $00
    rlca                                          ; $4e68: $07
    dec b                                         ; $4e69: $05
    ld b, $00                                     ; $4e6a: $06 $00
    ld e, a                                       ; $4e6c: $5f
    ld bc, $1500                                  ; $4e6d: $01 $00 $15
    nop                                           ; $4e70: $00
    nop                                           ; $4e71: $00
    inc sp                                        ; $4e72: $33
    ld bc, $1578                                  ; $4e73: $01 $78 $15
    ld d, b                                       ; $4e76: $50
    nop                                           ; $4e77: $00
    inc sp                                        ; $4e78: $33
    ld bc, $097a                                  ; $4e79: $01 $7a $09
    nop                                           ; $4e7c: $00
    ld d, d                                       ; $4e7d: $52
    dec b                                         ; $4e7e: $05
    ld b, $00                                     ; $4e7f: $06 $00
    ld e, a                                       ; $4e81: $5f
    ld bc, $1500                                  ; $4e82: $01 $00 $15
    nop                                           ; $4e85: $00
    nop                                           ; $4e86: $00
    inc sp                                        ; $4e87: $33
    ld bc, $1595                                  ; $4e88: $01 $95 $15
    ld d, b                                       ; $4e8b: $50
    nop                                           ; $4e8c: $00
    inc sp                                        ; $4e8d: $33
    ld a, [bc]                                    ; $4e8e: $0a
    dec d                                         ; $4e8f: $15
    add hl, bc                                    ; $4e90: $09
    nop                                           ; $4e91: $00
    ld [$0705], sp                                ; $4e92: $08 $05 $07
    nop                                           ; $4e95: $00
    ld e, a                                       ; $4e96: $5f
    ld bc, $1500                                  ; $4e97: $01 $00 $15
    nop                                           ; $4e9a: $00
    nop                                           ; $4e9b: $00
    inc sp                                        ; $4e9c: $33
    ld bc, $15cd                                  ; $4e9d: $01 $cd $15
    ld d, b                                       ; $4ea0: $50
    nop                                           ; $4ea1: $00
    inc sp                                        ; $4ea2: $33
    ld bc, $00d6                                  ; $4ea3: $01 $d6 $00
    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    add hl, bc                                    ; $4ea8: $09
    nop                                           ; $4ea9: $00
    ld d, e                                       ; $4eaa: $53
    dec b                                         ; $4eab: $05
    dec b                                         ; $4eac: $05
    nop                                           ; $4ead: $00
    ld e, a                                       ; $4eae: $5f
    ld bc, $1500                                  ; $4eaf: $01 $00 $15
    ld d, b                                       ; $4eb2: $50
    nop                                           ; $4eb3: $00
    inc sp                                        ; $4eb4: $33
    ld [bc], a                                    ; $4eb5: $02
    rra                                           ; $4eb6: $1f
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    add hl, bc                                    ; $4eba: $09
    nop                                           ; $4ebb: $00
    ld b, $05                                     ; $4ebc: $06 $05
    dec b                                         ; $4ebe: $05
    nop                                           ; $4ebf: $00
    ld e, a                                       ; $4ec0: $5f
    ld bc, $1500                                  ; $4ec1: $01 $00 $15
    ld d, b                                       ; $4ec4: $50
    nop                                           ; $4ec5: $00
    inc sp                                        ; $4ec6: $33
    ld bc, $0056                                  ; $4ec7: $01 $56 $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    add hl, bc                                    ; $4ecc: $09
    nop                                           ; $4ecd: $00
    add hl, bc                                    ; $4ece: $09
    dec b                                         ; $4ecf: $05
    dec b                                         ; $4ed0: $05
    nop                                           ; $4ed1: $00
    ld e, a                                       ; $4ed2: $5f
    ld bc, $1500                                  ; $4ed3: $01 $00 $15
    ld d, b                                       ; $4ed6: $50
    nop                                           ; $4ed7: $00
    inc sp                                        ; $4ed8: $33
    ld bc, $0056                                  ; $4ed9: $01 $56 $00
    nop                                           ; $4edc: $00
    nop                                           ; $4edd: $00
    add hl, bc                                    ; $4ede: $09
    nop                                           ; $4edf: $00
    ld d, [hl]                                    ; $4ee0: $56
    dec b                                         ; $4ee1: $05
    dec b                                         ; $4ee2: $05
    nop                                           ; $4ee3: $00
    ld e, a                                       ; $4ee4: $5f
    ld bc, $1500                                  ; $4ee5: $01 $00 $15
    ld d, b                                       ; $4ee8: $50
    nop                                           ; $4ee9: $00
    inc sp                                        ; $4eea: $33
    ld bc, $0056                                  ; $4eeb: $01 $56 $00
    nop                                           ; $4eee: $00
    nop                                           ; $4eef: $00
    add hl, bc                                    ; $4ef0: $09
    nop                                           ; $4ef1: $00
    dec bc                                        ; $4ef2: $0b
    dec b                                         ; $4ef3: $05
    dec bc                                        ; $4ef4: $0b
    nop                                           ; $4ef5: $00
    ld d, [hl]                                    ; $4ef6: $56
    nop                                           ; $4ef7: $00
    nop                                           ; $4ef8: $00
    rla                                           ; $4ef9: $17
    nop                                           ; $4efa: $00
    nop                                           ; $4efb: $00
    inc e                                         ; $4efc: $1c
    ld b, d                                       ; $4efd: $42
    ld bc, $015f                                  ; $4efe: $01 $5f $01
    nop                                           ; $4f01: $00
    dec d                                         ; $4f02: $15
    nop                                           ; $4f03: $00
    nop                                           ; $4f04: $00
    inc sp                                        ; $4f05: $33
    inc bc                                        ; $4f06: $03
    ld [hl], c                                    ; $4f07: $71
    dec d                                         ; $4f08: $15
    ld d, b                                       ; $4f09: $50
    nop                                           ; $4f0a: $00
    inc sp                                        ; $4f0b: $33
    inc bc                                        ; $4f0c: $03
    ld [hl], e                                    ; $4f0d: $73
    ld d, a                                       ; $4f0e: $57
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    add hl, bc                                    ; $4f14: $09

Call_00b_4f15:
    nop                                           ; $4f15: $00
    ld e, h                                       ; $4f16: $5c
    dec b                                         ; $4f17: $05
    dec bc                                        ; $4f18: $0b
    nop                                           ; $4f19: $00
    ld d, [hl]                                    ; $4f1a: $56
    nop                                           ; $4f1b: $00
    nop                                           ; $4f1c: $00
    rla                                           ; $4f1d: $17
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    inc e                                         ; $4f20: $1c
    ld b, d                                       ; $4f21: $42
    ld bc, $015f                                  ; $4f22: $01 $5f $01
    nop                                           ; $4f25: $00
    dec d                                         ; $4f26: $15
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00
    inc sp                                        ; $4f29: $33
    inc b                                         ; $4f2a: $04
    call nc, Call_00b_5015                        ; $4f2b: $d4 $15 $50
    nop                                           ; $4f2e: $00
    inc sp                                        ; $4f2f: $33
    inc b                                         ; $4f30: $04
    ld [$0057], a                                 ; $4f31: $ea $57 $00
    nop                                           ; $4f34: $00
    nop                                           ; $4f35: $00
    nop                                           ; $4f36: $00
    nop                                           ; $4f37: $00
    add hl, bc                                    ; $4f38: $09
    nop                                           ; $4f39: $00
    db $10                                        ; $4f3a: $10
    dec b                                         ; $4f3b: $05
    dec bc                                        ; $4f3c: $0b
    nop                                           ; $4f3d: $00
    ld d, [hl]                                    ; $4f3e: $56
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    rla                                           ; $4f41: $17
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    inc e                                         ; $4f44: $1c
    ld b, d                                       ; $4f45: $42
    ld bc, $015f                                  ; $4f46: $01 $5f $01
    nop                                           ; $4f49: $00
    dec d                                         ; $4f4a: $15
    nop                                           ; $4f4b: $00
    nop                                           ; $4f4c: $00
    inc sp                                        ; $4f4d: $33
    ld [bc], a                                    ; $4f4e: $02
    ld b, l                                       ; $4f4f: $45
    dec d                                         ; $4f50: $15
    ld d, b                                       ; $4f51: $50
    nop                                           ; $4f52: $00
    inc sp                                        ; $4f53: $33
    ld [bc], a                                    ; $4f54: $02
    sbc h                                         ; $4f55: $9c
    ld d, a                                       ; $4f56: $57
    nop                                           ; $4f57: $00
    nop                                           ; $4f58: $00
    nop                                           ; $4f59: $00
    nop                                           ; $4f5a: $00
    nop                                           ; $4f5b: $00
    add hl, bc                                    ; $4f5c: $09
    nop                                           ; $4f5d: $00
    ld de, $0b05                                  ; $4f5e: $11 $05 $0b
    nop                                           ; $4f61: $00
    ld d, [hl]                                    ; $4f62: $56
    nop                                           ; $4f63: $00
    nop                                           ; $4f64: $00
    rla                                           ; $4f65: $17
    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    inc e                                         ; $4f68: $1c
    ld b, d                                       ; $4f69: $42
    ld bc, $015f                                  ; $4f6a: $01 $5f $01
    nop                                           ; $4f6d: $00
    dec d                                         ; $4f6e: $15
    nop                                           ; $4f6f: $00
    nop                                           ; $4f70: $00
    inc sp                                        ; $4f71: $33
    ld [bc], a                                    ; $4f72: $02
    ld b, l                                       ; $4f73: $45
    dec d                                         ; $4f74: $15
    ld d, b                                       ; $4f75: $50
    nop                                           ; $4f76: $00
    inc sp                                        ; $4f77: $33
    ld [bc], a                                    ; $4f78: $02
    sbc h                                         ; $4f79: $9c
    ld d, a                                       ; $4f7a: $57
    nop                                           ; $4f7b: $00
    nop                                           ; $4f7c: $00
    nop                                           ; $4f7d: $00
    nop                                           ; $4f7e: $00
    nop                                           ; $4f7f: $00
    add hl, bc                                    ; $4f80: $09
    nop                                           ; $4f81: $00
    ccf                                           ; $4f82: $3f
    dec b                                         ; $4f83: $05
    add hl, bc                                    ; $4f84: $09
    nop                                           ; $4f85: $00
    ld d, [hl]                                    ; $4f86: $56
    nop                                           ; $4f87: $00
    nop                                           ; $4f88: $00
    rla                                           ; $4f89: $17
    nop                                           ; $4f8a: $00
    nop                                           ; $4f8b: $00
    inc e                                         ; $4f8c: $1c
    ld b, d                                       ; $4f8d: $42
    ld bc, $015f                                  ; $4f8e: $01 $5f $01
    nop                                           ; $4f91: $00
    dec d                                         ; $4f92: $15
    ld d, b                                       ; $4f93: $50
    nop                                           ; $4f94: $00
    inc sp                                        ; $4f95: $33
    add hl, bc                                    ; $4f96: $09
    ld [$0057], a                                 ; $4f97: $ea $57 $00
    nop                                           ; $4f9a: $00
    nop                                           ; $4f9b: $00
    nop                                           ; $4f9c: $00
    nop                                           ; $4f9d: $00
    add hl, bc                                    ; $4f9e: $09
    nop                                           ; $4f9f: $00
    dec a                                         ; $4fa0: $3d
    dec b                                         ; $4fa1: $05
    add hl, bc                                    ; $4fa2: $09
    nop                                           ; $4fa3: $00
    ld d, [hl]                                    ; $4fa4: $56
    nop                                           ; $4fa5: $00
    nop                                           ; $4fa6: $00
    rla                                           ; $4fa7: $17
    nop                                           ; $4fa8: $00
    nop                                           ; $4fa9: $00
    inc e                                         ; $4faa: $1c
    ld b, d                                       ; $4fab: $42
    ld bc, $015f                                  ; $4fac: $01 $5f $01
    nop                                           ; $4faf: $00
    dec d                                         ; $4fb0: $15
    ld d, b                                       ; $4fb1: $50
    nop                                           ; $4fb2: $00
    inc sp                                        ; $4fb3: $33
    dec bc                                        ; $4fb4: $0b
    ld h, b                                       ; $4fb5: $60
    ld d, a                                       ; $4fb6: $57
    nop                                           ; $4fb7: $00
    nop                                           ; $4fb8: $00
    nop                                           ; $4fb9: $00
    nop                                           ; $4fba: $00
    nop                                           ; $4fbb: $00
    add hl, bc                                    ; $4fbc: $09
    nop                                           ; $4fbd: $00
    ld d, h                                       ; $4fbe: $54
    dec b                                         ; $4fbf: $05
    add hl, bc                                    ; $4fc0: $09
    nop                                           ; $4fc1: $00
    ld d, [hl]                                    ; $4fc2: $56
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    rla                                           ; $4fc5: $17
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    inc e                                         ; $4fc8: $1c
    ld b, d                                       ; $4fc9: $42
    ld bc, $015f                                  ; $4fca: $01 $5f $01
    nop                                           ; $4fcd: $00
    dec d                                         ; $4fce: $15
    ld d, b                                       ; $4fcf: $50
    nop                                           ; $4fd0: $00
    inc sp                                        ; $4fd1: $33
    ld bc, $5756                                  ; $4fd2: $01 $56 $57
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    nop                                           ; $4fd8: $00
    nop                                           ; $4fd9: $00
    add hl, bc                                    ; $4fda: $09
    nop                                           ; $4fdb: $00
    ld e, e                                       ; $4fdc: $5b
    dec b                                         ; $4fdd: $05
    add hl, bc                                    ; $4fde: $09
    nop                                           ; $4fdf: $00
    ld d, [hl]                                    ; $4fe0: $56
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    rla                                           ; $4fe3: $17
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    inc e                                         ; $4fe6: $1c
    ld b, d                                       ; $4fe7: $42
    ld bc, $015f                                  ; $4fe8: $01 $5f $01
    nop                                           ; $4feb: $00
    dec d                                         ; $4fec: $15
    ld d, b                                       ; $4fed: $50
    nop                                           ; $4fee: $00
    inc sp                                        ; $4fef: $33
    dec bc                                        ; $4ff0: $0b
    ld h, b                                       ; $4ff1: $60
    ld d, a                                       ; $4ff2: $57
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    ld e, a                                       ; $4ff8: $5f
    ld bc, $0000                                  ; $4ff9: $01 $00 $00
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
    nop                                           ; $4fff: $00
    nop                                           ; $5000: $00
    ld e, a                                       ; $5001: $5f
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    add hl, bc                                    ; $5004: $09
    nop                                           ; $5005: $00
    ld de, $2005                                  ; $5006: $11 $05 $20
    nop                                           ; $5009: $00
    add hl, bc                                    ; $500a: $09
    rra                                           ; $500b: $1f
    ld bc, $0305                                  ; $500c: $01 $05 $03
    nop                                           ; $500f: $00
    ld e, a                                       ; $5010: $5f
    ld bc, $0000                                  ; $5011: $01 $00 $00
    nop                                           ; $5014: $00

Call_00b_5015:
    nop                                           ; $5015: $00
    add hl, bc                                    ; $5016: $09
    ld e, $01                                     ; $5017: $1e $01
    dec b                                         ; $5019: $05
    ld a, [de]                                    ; $501a: $1a
    nop                                           ; $501b: $00
    ld d, [hl]                                    ; $501c: $56
    nop                                           ; $501d: $00
    nop                                           ; $501e: $00
    rla                                           ; $501f: $17
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    dec de                                        ; $5022: $1b
    ld b, $00                                     ; $5023: $06 $00
    inc de                                        ; $5025: $13
    rst $38                                       ; $5026: $ff
    rst $20                                       ; $5027: $e7
    inc d                                         ; $5028: $14
    rst $38                                       ; $5029: $ff
    or $15                                        ; $502a: $f6 $15
    nop                                           ; $502c: $00
    nop                                           ; $502d: $00
    ld d, $2f                                     ; $502e: $16 $2f
    ld bc, $021b                                  ; $5030: $01 $1b $02
    nop                                           ; $5033: $00
    rla                                           ; $5034: $17
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    dec de                                        ; $5037: $1b
    ld b, $00                                     ; $5038: $06 $00
    ld e, a                                       ; $503a: $5f
    ld bc, $1500                                  ; $503b: $01 $00 $15
    nop                                           ; $503e: $00
    nop                                           ; $503f: $00
    inc sp                                        ; $5040: $33
    ld [bc], a                                    ; $5041: $02
    ld e, d                                       ; $5042: $5a
    dec d                                         ; $5043: $15
    ld b, e                                       ; $5044: $43
    nop                                           ; $5045: $00
    inc sp                                        ; $5046: $33
    ld [bc], a                                    ; $5047: $02
    ld e, e                                       ; $5048: $5b
    dec d                                         ; $5049: $15
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    inc sp                                        ; $504c: $33
    ld [bc], a                                    ; $504d: $02
    ld e, h                                       ; $504e: $5c
    dec d                                         ; $504f: $15
    ld b, e                                       ; $5050: $43
    nop                                           ; $5051: $00
    inc sp                                        ; $5052: $33
    ld [bc], a                                    ; $5053: $02
    ld e, l                                       ; $5054: $5d
    ld l, $3c                                     ; $5055: $2e $3c
    nop                                           ; $5057: $00
    rla                                           ; $5058: $17
    cpl                                           ; $5059: $2f
    nop                                           ; $505a: $00
    ld e, $2f                                     ; $505b: $1e $2f
    nop                                           ; $505d: $00
    ld d, a                                       ; $505e: $57
    nop                                           ; $505f: $00
    nop                                           ; $5060: $00
    rrca                                          ; $5061: $0f
    rra                                           ; $5062: $1f
    ld bc, $0000                                  ; $5063: $01 $00 $00
    nop                                           ; $5066: $00
    ld e, a                                       ; $5067: $5f
    ld bc, $0000                                  ; $5068: $01 $00 $00
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    ld e, a                                       ; $506d: $5f
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    add hl, bc                                    ; $5070: $09
    nop                                           ; $5071: $00
    ld d, e                                       ; $5072: $53
    dec b                                         ; $5073: $05
    dec b                                         ; $5074: $05
    nop                                           ; $5075: $00
    ld e, a                                       ; $5076: $5f
    ld bc, $1500                                  ; $5077: $01 $00 $15
    ld d, h                                       ; $507a: $54
    nop                                           ; $507b: $00
    inc sp                                        ; $507c: $33
    ld [bc], a                                    ; $507d: $02
    jr nz, jr_00b_5080                            ; $507e: $20 $00

jr_00b_5080:
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    add hl, bc                                    ; $5082: $09
    nop                                           ; $5083: $00
    ld b, $05                                     ; $5084: $06 $05
    dec b                                         ; $5086: $05
    nop                                           ; $5087: $00
    ld e, a                                       ; $5088: $5f
    ld bc, $1500                                  ; $5089: $01 $00 $15
    ld d, h                                       ; $508c: $54
    nop                                           ; $508d: $00
    inc sp                                        ; $508e: $33
    ld bc, $0057                                  ; $508f: $01 $57 $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    add hl, bc                                    ; $5094: $09
    nop                                           ; $5095: $00
    rlca                                          ; $5096: $07
    dec b                                         ; $5097: $05
    dec b                                         ; $5098: $05
    nop                                           ; $5099: $00
    ld e, a                                       ; $509a: $5f
    ld bc, $1500                                  ; $509b: $01 $00 $15
    ld d, h                                       ; $509e: $54
    nop                                           ; $509f: $00
    inc sp                                        ; $50a0: $33
    ld bc, $0057                                  ; $50a1: $01 $57 $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    add hl, bc                                    ; $50a6: $09
    nop                                           ; $50a7: $00
    ld d, d                                       ; $50a8: $52
    dec b                                         ; $50a9: $05
    rlca                                          ; $50aa: $07
    nop                                           ; $50ab: $00
    ld e, a                                       ; $50ac: $5f
    ld bc, $1500                                  ; $50ad: $01 $00 $15
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    inc sp                                        ; $50b2: $33
    ld bc, $1595                                  ; $50b3: $01 $95 $15
    ld d, h                                       ; $50b6: $54
    nop                                           ; $50b7: $00
    inc sp                                        ; $50b8: $33
    ld a, [bc]                                    ; $50b9: $0a
    ld d, $00                                     ; $50ba: $16 $00
    nop                                           ; $50bc: $00
    nop                                           ; $50bd: $00
    add hl, bc                                    ; $50be: $09
    nop                                           ; $50bf: $00
    ld [$0505], sp                                ; $50c0: $08 $05 $05
    nop                                           ; $50c3: $00
    ld e, a                                       ; $50c4: $5f
    ld bc, $1500                                  ; $50c5: $01 $00 $15
    ld d, h                                       ; $50c8: $54
    nop                                           ; $50c9: $00
    inc sp                                        ; $50ca: $33
    ld bc, $0057                                  ; $50cb: $01 $57 $00
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00
    add hl, bc                                    ; $50d0: $09
    nop                                           ; $50d1: $00
    add hl, bc                                    ; $50d2: $09
    dec b                                         ; $50d3: $05
    dec b                                         ; $50d4: $05
    nop                                           ; $50d5: $00
    ld e, a                                       ; $50d6: $5f
    ld bc, $1500                                  ; $50d7: $01 $00 $15
    ld d, h                                       ; $50da: $54
    nop                                           ; $50db: $00
    inc sp                                        ; $50dc: $33
    ld bc, $0057                                  ; $50dd: $01 $57 $00
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    add hl, bc                                    ; $50e2: $09
    nop                                           ; $50e3: $00
    ld d, [hl]                                    ; $50e4: $56
    dec b                                         ; $50e5: $05
    dec b                                         ; $50e6: $05
    nop                                           ; $50e7: $00
    ld e, a                                       ; $50e8: $5f
    ld bc, $1500                                  ; $50e9: $01 $00 $15
    ld d, h                                       ; $50ec: $54
    nop                                           ; $50ed: $00
    inc sp                                        ; $50ee: $33
    ld bc, $0057                                  ; $50ef: $01 $57 $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    add hl, bc                                    ; $50f4: $09
    nop                                           ; $50f5: $00
    dec bc                                        ; $50f6: $0b
    dec b                                         ; $50f7: $05
    dec bc                                        ; $50f8: $0b
    nop                                           ; $50f9: $00
    ld d, [hl]                                    ; $50fa: $56
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00
    rla                                           ; $50fd: $17
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    inc e                                         ; $5100: $1c
    ld b, [hl]                                    ; $5101: $46
    inc b                                         ; $5102: $04
    ld e, a                                       ; $5103: $5f
    ld bc, $1500                                  ; $5104: $01 $00 $15
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    inc sp                                        ; $5109: $33
    inc bc                                        ; $510a: $03
    ld [hl], c                                    ; $510b: $71
    dec d                                         ; $510c: $15
    ld d, h                                       ; $510d: $54
    nop                                           ; $510e: $00
    inc sp                                        ; $510f: $33
    inc bc                                        ; $5110: $03
    xor a                                         ; $5111: $af
    ld d, a                                       ; $5112: $57
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00

Call_00b_5115:
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    add hl, bc                                    ; $5118: $09
    nop                                           ; $5119: $00
    ld e, h                                       ; $511a: $5c
    dec b                                         ; $511b: $05
    dec bc                                        ; $511c: $0b
    nop                                           ; $511d: $00
    ld d, [hl]                                    ; $511e: $56
    nop                                           ; $511f: $00
    nop                                           ; $5120: $00
    rla                                           ; $5121: $17
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    inc e                                         ; $5124: $1c
    ld b, [hl]                                    ; $5125: $46
    inc b                                         ; $5126: $04
    ld e, a                                       ; $5127: $5f
    ld bc, $1500                                  ; $5128: $01 $00 $15
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    inc sp                                        ; $512d: $33
    inc b                                         ; $512e: $04
    call nc, Call_00b_5415                        ; $512f: $d4 $15 $54
    nop                                           ; $5132: $00
    inc sp                                        ; $5133: $33
    inc b                                         ; $5134: $04
    db $eb                                        ; $5135: $eb
    ld d, a                                       ; $5136: $57
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    nop                                           ; $513b: $00
    add hl, bc                                    ; $513c: $09
    nop                                           ; $513d: $00
    db $10                                        ; $513e: $10
    dec b                                         ; $513f: $05
    dec bc                                        ; $5140: $0b
    nop                                           ; $5141: $00
    ld d, [hl]                                    ; $5142: $56
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    rla                                           ; $5145: $17
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    inc e                                         ; $5148: $1c
    ld b, [hl]                                    ; $5149: $46
    inc b                                         ; $514a: $04
    ld e, a                                       ; $514b: $5f
    ld bc, $1500                                  ; $514c: $01 $00 $15
    nop                                           ; $514f: $00
    nop                                           ; $5150: $00
    inc sp                                        ; $5151: $33
    ld [bc], a                                    ; $5152: $02
    ld b, l                                       ; $5153: $45
    dec d                                         ; $5154: $15
    ld d, h                                       ; $5155: $54
    nop                                           ; $5156: $00
    inc sp                                        ; $5157: $33
    ld [bc], a                                    ; $5158: $02
    sbc l                                         ; $5159: $9d
    ld d, a                                       ; $515a: $57
    nop                                           ; $515b: $00
    nop                                           ; $515c: $00
    nop                                           ; $515d: $00
    nop                                           ; $515e: $00
    nop                                           ; $515f: $00
    add hl, bc                                    ; $5160: $09
    nop                                           ; $5161: $00
    ld de, $0b05                                  ; $5162: $11 $05 $0b
    nop                                           ; $5165: $00
    ld d, [hl]                                    ; $5166: $56
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    rla                                           ; $5169: $17
    nop                                           ; $516a: $00
    nop                                           ; $516b: $00
    inc e                                         ; $516c: $1c
    ld b, [hl]                                    ; $516d: $46
    inc b                                         ; $516e: $04
    ld e, a                                       ; $516f: $5f
    ld bc, $1500                                  ; $5170: $01 $00 $15
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    inc sp                                        ; $5175: $33
    ld [bc], a                                    ; $5176: $02
    ld b, l                                       ; $5177: $45
    dec d                                         ; $5178: $15
    ld d, h                                       ; $5179: $54
    nop                                           ; $517a: $00
    inc sp                                        ; $517b: $33
    ld [bc], a                                    ; $517c: $02
    sbc l                                         ; $517d: $9d
    ld d, a                                       ; $517e: $57
    nop                                           ; $517f: $00
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    add hl, bc                                    ; $5184: $09
    nop                                           ; $5185: $00
    ccf                                           ; $5186: $3f
    dec b                                         ; $5187: $05
    add hl, bc                                    ; $5188: $09
    nop                                           ; $5189: $00
    ld d, [hl]                                    ; $518a: $56
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    rla                                           ; $518d: $17
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    inc e                                         ; $5190: $1c
    ld b, [hl]                                    ; $5191: $46
    inc b                                         ; $5192: $04
    ld e, a                                       ; $5193: $5f
    ld bc, $1500                                  ; $5194: $01 $00 $15
    ld d, h                                       ; $5197: $54
    nop                                           ; $5198: $00
    inc sp                                        ; $5199: $33
    add hl, bc                                    ; $519a: $09
    db $eb                                        ; $519b: $eb
    ld d, a                                       ; $519c: $57
    nop                                           ; $519d: $00
    nop                                           ; $519e: $00
    nop                                           ; $519f: $00
    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    add hl, bc                                    ; $51a2: $09
    nop                                           ; $51a3: $00
    dec a                                         ; $51a4: $3d
    dec b                                         ; $51a5: $05
    add hl, bc                                    ; $51a6: $09
    nop                                           ; $51a7: $00
    ld d, [hl]                                    ; $51a8: $56
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    rla                                           ; $51ab: $17
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    inc e                                         ; $51ae: $1c
    ld b, [hl]                                    ; $51af: $46
    inc b                                         ; $51b0: $04
    ld e, a                                       ; $51b1: $5f
    ld bc, $1500                                  ; $51b2: $01 $00 $15
    ld d, h                                       ; $51b5: $54
    nop                                           ; $51b6: $00
    inc sp                                        ; $51b7: $33
    dec bc                                        ; $51b8: $0b
    ld l, l                                       ; $51b9: $6d
    ld d, a                                       ; $51ba: $57
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    nop                                           ; $51bd: $00
    nop                                           ; $51be: $00
    nop                                           ; $51bf: $00
    add hl, bc                                    ; $51c0: $09
    nop                                           ; $51c1: $00
    ld d, h                                       ; $51c2: $54
    dec b                                         ; $51c3: $05
    add hl, bc                                    ; $51c4: $09
    nop                                           ; $51c5: $00
    ld d, [hl]                                    ; $51c6: $56
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    rla                                           ; $51c9: $17
    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    inc e                                         ; $51cc: $1c
    ld b, [hl]                                    ; $51cd: $46
    inc b                                         ; $51ce: $04
    ld e, a                                       ; $51cf: $5f
    ld bc, $1500                                  ; $51d0: $01 $00 $15
    ld d, h                                       ; $51d3: $54
    nop                                           ; $51d4: $00
    inc sp                                        ; $51d5: $33
    ld bc, $5757                                  ; $51d6: $01 $57 $57
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    add hl, bc                                    ; $51de: $09
    nop                                           ; $51df: $00
    ld e, e                                       ; $51e0: $5b
    dec b                                         ; $51e1: $05
    add hl, bc                                    ; $51e2: $09
    nop                                           ; $51e3: $00
    ld d, [hl]                                    ; $51e4: $56
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    rla                                           ; $51e7: $17
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    inc e                                         ; $51ea: $1c
    ld b, [hl]                                    ; $51eb: $46
    inc b                                         ; $51ec: $04
    ld e, a                                       ; $51ed: $5f
    ld bc, $1500                                  ; $51ee: $01 $00 $15
    ld d, h                                       ; $51f1: $54
    nop                                           ; $51f2: $00
    inc sp                                        ; $51f3: $33
    dec bc                                        ; $51f4: $0b
    ld [hl], d                                    ; $51f5: $72
    ld d, a                                       ; $51f6: $57
    nop                                           ; $51f7: $00
    nop                                           ; $51f8: $00
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    nop                                           ; $51fb: $00
    ld e, a                                       ; $51fc: $5f
    ld bc, $0000                                  ; $51fd: $01 $00 $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    ld e, a                                       ; $5202: $5f
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    add hl, bc                                    ; $5205: $09
    nop                                           ; $5206: $00
    ld h, $05                                     ; $5207: $26 $05
    dec de                                        ; $5209: $1b
    nop                                           ; $520a: $00
    inc de                                        ; $520b: $13
    rst $38                                       ; $520c: $ff
    db $ec                                        ; $520d: $ec
    inc d                                         ; $520e: $14
    nop                                           ; $520f: $00
    nop                                           ; $5210: $00
    dec d                                         ; $5211: $15
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00
    ld d, $37                                     ; $5214: $16 $37
    ld bc, $0052                                  ; $5216: $01 $52 $00
    nop                                           ; $5219: $00
    dec de                                        ; $521a: $1b
    inc b                                         ; $521b: $04
    nop                                           ; $521c: $00
    inc de                                        ; $521d: $13
    nop                                           ; $521e: $00
    inc d                                         ; $521f: $14
    inc d                                         ; $5220: $14
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    dec d                                         ; $5223: $15
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    ld d, $38                                     ; $5226: $16 $38
    ld bc, $0052                                  ; $5228: $01 $52 $00
    nop                                           ; $522b: $00
    dec de                                        ; $522c: $1b
    inc b                                         ; $522d: $04
    nop                                           ; $522e: $00
    inc de                                        ; $522f: $13
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    inc d                                         ; $5232: $14
    nop                                           ; $5233: $00
    inc d                                         ; $5234: $14
    dec d                                         ; $5235: $15
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    ld d, $39                                     ; $5238: $16 $39
    ld bc, $0052                                  ; $523a: $01 $52 $00
    nop                                           ; $523d: $00
    dec de                                        ; $523e: $1b
    inc b                                         ; $523f: $04
    nop                                           ; $5240: $00
    ld e, a                                       ; $5241: $5f
    ld bc, $1700                                  ; $5242: $01 $00 $17
    add hl, sp                                    ; $5245: $39
    nop                                           ; $5246: $00
    ld [hl+], a                                   ; $5247: $22
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    rla                                           ; $524a: $17
    scf                                           ; $524b: $37
    nop                                           ; $524c: $00
    ld [hl+], a                                   ; $524d: $22
    add hl, sp                                    ; $524e: $39
    nop                                           ; $524f: $00
    rla                                           ; $5250: $17
    jr c, jr_00b_5253                             ; $5251: $38 $00

jr_00b_5253:
    ld [hl+], a                                   ; $5253: $22
    scf                                           ; $5254: $37
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    add hl, bc                                    ; $5259: $09
    nop                                           ; $525a: $00
    daa                                           ; $525b: $27
    dec b                                         ; $525c: $05
    dec de                                        ; $525d: $1b
    nop                                           ; $525e: $00
    inc de                                        ; $525f: $13
    rst $38                                       ; $5260: $ff
    db $ec                                        ; $5261: $ec
    inc d                                         ; $5262: $14
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    dec d                                         ; $5265: $15
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    ld d, $37                                     ; $5268: $16 $37
    ld bc, $0052                                  ; $526a: $01 $52 $00
    nop                                           ; $526d: $00
    dec de                                        ; $526e: $1b
    inc b                                         ; $526f: $04
    nop                                           ; $5270: $00
    inc de                                        ; $5271: $13
    nop                                           ; $5272: $00
    inc d                                         ; $5273: $14
    inc d                                         ; $5274: $14
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    dec d                                         ; $5277: $15
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    ld d, $38                                     ; $527a: $16 $38
    ld bc, $0052                                  ; $527c: $01 $52 $00
    nop                                           ; $527f: $00
    dec de                                        ; $5280: $1b
    inc b                                         ; $5281: $04
    nop                                           ; $5282: $00
    inc de                                        ; $5283: $13
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    inc d                                         ; $5286: $14
    nop                                           ; $5287: $00
    inc d                                         ; $5288: $14
    dec d                                         ; $5289: $15
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    ld d, $39                                     ; $528c: $16 $39
    ld bc, $0052                                  ; $528e: $01 $52 $00
    nop                                           ; $5291: $00
    dec de                                        ; $5292: $1b
    inc b                                         ; $5293: $04
    nop                                           ; $5294: $00
    ld e, a                                       ; $5295: $5f
    ld bc, $1700                                  ; $5296: $01 $00 $17
    add hl, sp                                    ; $5299: $39
    nop                                           ; $529a: $00
    ld [hl+], a                                   ; $529b: $22
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    rla                                           ; $529e: $17
    scf                                           ; $529f: $37
    nop                                           ; $52a0: $00
    ld [hl+], a                                   ; $52a1: $22
    add hl, sp                                    ; $52a2: $39
    nop                                           ; $52a3: $00
    rla                                           ; $52a4: $17
    jr c, jr_00b_52a7                             ; $52a5: $38 $00

jr_00b_52a7:
    ld [hl+], a                                   ; $52a7: $22
    scf                                           ; $52a8: $37
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    nop                                           ; $52ac: $00
    add hl, bc                                    ; $52ad: $09
    nop                                           ; $52ae: $00
    ld h, $05                                     ; $52af: $26 $05
    dec de                                        ; $52b1: $1b
    nop                                           ; $52b2: $00
    inc de                                        ; $52b3: $13
    rst $38                                       ; $52b4: $ff
    db $ec                                        ; $52b5: $ec
    inc d                                         ; $52b6: $14
    nop                                           ; $52b7: $00
    nop                                           ; $52b8: $00
    dec d                                         ; $52b9: $15
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    ld d, $37                                     ; $52bc: $16 $37
    ld bc, $0052                                  ; $52be: $01 $52 $00
    nop                                           ; $52c1: $00
    dec de                                        ; $52c2: $1b
    inc b                                         ; $52c3: $04
    nop                                           ; $52c4: $00
    inc de                                        ; $52c5: $13
    nop                                           ; $52c6: $00
    inc d                                         ; $52c7: $14
    inc d                                         ; $52c8: $14
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    dec d                                         ; $52cb: $15
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    ld d, $38                                     ; $52ce: $16 $38
    ld bc, $0052                                  ; $52d0: $01 $52 $00
    nop                                           ; $52d3: $00
    dec de                                        ; $52d4: $1b
    inc b                                         ; $52d5: $04
    nop                                           ; $52d6: $00
    inc de                                        ; $52d7: $13
    nop                                           ; $52d8: $00
    nop                                           ; $52d9: $00
    inc d                                         ; $52da: $14
    nop                                           ; $52db: $00
    inc d                                         ; $52dc: $14
    dec d                                         ; $52dd: $15
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    ld d, $39                                     ; $52e0: $16 $39
    ld bc, $0052                                  ; $52e2: $01 $52 $00
    nop                                           ; $52e5: $00
    dec de                                        ; $52e6: $1b
    inc b                                         ; $52e7: $04
    nop                                           ; $52e8: $00
    ld e, a                                       ; $52e9: $5f
    ld bc, $1700                                  ; $52ea: $01 $00 $17
    add hl, sp                                    ; $52ed: $39
    nop                                           ; $52ee: $00
    ld [hl+], a                                   ; $52ef: $22
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    rla                                           ; $52f2: $17
    scf                                           ; $52f3: $37
    nop                                           ; $52f4: $00
    ld [hl+], a                                   ; $52f5: $22
    add hl, sp                                    ; $52f6: $39
    nop                                           ; $52f7: $00
    rla                                           ; $52f8: $17
    jr c, jr_00b_52fb                             ; $52f9: $38 $00

jr_00b_52fb:
    ld [hl+], a                                   ; $52fb: $22
    scf                                           ; $52fc: $37
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    nop                                           ; $5300: $00
    add hl, bc                                    ; $5301: $09
    nop                                           ; $5302: $00
    ld c, b                                       ; $5303: $48
    dec b                                         ; $5304: $05
    inc de                                        ; $5305: $13
    nop                                           ; $5306: $00
    inc de                                        ; $5307: $13
    rst $38                                       ; $5308: $ff
    db $ec                                        ; $5309: $ec
    inc d                                         ; $530a: $14
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    dec d                                         ; $530d: $15
    nop                                           ; $530e: $00
    nop                                           ; $530f: $00
    ld d, $37                                     ; $5310: $16 $37
    ld bc, $0052                                  ; $5312: $01 $52 $00

Call_00b_5315:
    nop                                           ; $5315: $00
    dec de                                        ; $5316: $1b
    inc b                                         ; $5317: $04
    nop                                           ; $5318: $00
    inc de                                        ; $5319: $13
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    inc d                                         ; $531c: $14
    nop                                           ; $531d: $00
    inc d                                         ; $531e: $14
    dec d                                         ; $531f: $15
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    ld d, $39                                     ; $5322: $16 $39
    ld bc, $0052                                  ; $5324: $01 $52 $00
    nop                                           ; $5327: $00
    dec de                                        ; $5328: $1b
    inc b                                         ; $5329: $04
    nop                                           ; $532a: $00
    ld e, a                                       ; $532b: $5f
    ld bc, $1700                                  ; $532c: $01 $00 $17
    add hl, sp                                    ; $532f: $39
    nop                                           ; $5330: $00
    ld [hl+], a                                   ; $5331: $22
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    rla                                           ; $5334: $17
    scf                                           ; $5335: $37
    nop                                           ; $5336: $00
    ld [hl+], a                                   ; $5337: $22
    add hl, sp                                    ; $5338: $39
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    add hl, bc                                    ; $533d: $09
    nop                                           ; $533e: $00
    ld e, b                                       ; $533f: $58
    dec b                                         ; $5340: $05
    inc bc                                        ; $5341: $03
    nop                                           ; $5342: $00
    ld e, a                                       ; $5343: $5f
    ld bc, $0000                                  ; $5344: $01 $00 $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    add hl, bc                                    ; $5349: $09
    nop                                           ; $534a: $00
    scf                                           ; $534b: $37
    dec b                                         ; $534c: $05
    inc bc                                        ; $534d: $03
    nop                                           ; $534e: $00
    ld e, a                                       ; $534f: $5f
    ld bc, $0000                                  ; $5350: $01 $00 $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    add hl, bc                                    ; $5355: $09
    nop                                           ; $5356: $00
    ld e, d                                       ; $5357: $5a
    dec b                                         ; $5358: $05
    inc bc                                        ; $5359: $03
    nop                                           ; $535a: $00
    ld e, a                                       ; $535b: $5f
    ld bc, $0000                                  ; $535c: $01 $00 $00
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    add hl, bc                                    ; $5361: $09
    nop                                           ; $5362: $00
    ld b, e                                       ; $5363: $43
    dec b                                         ; $5364: $05
    inc bc                                        ; $5365: $03
    nop                                           ; $5366: $00
    ld e, a                                       ; $5367: $5f
    ld bc, $0000                                  ; $5368: $01 $00 $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    add hl, bc                                    ; $536d: $09
    nop                                           ; $536e: $00
    inc [hl]                                      ; $536f: $34
    dec b                                         ; $5370: $05
    inc bc                                        ; $5371: $03
    nop                                           ; $5372: $00
    ld e, a                                       ; $5373: $5f
    ld bc, $0000                                  ; $5374: $01 $00 $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    add hl, bc                                    ; $5379: $09
    nop                                           ; $537a: $00
    ld b, c                                       ; $537b: $41
    dec b                                         ; $537c: $05
    inc bc                                        ; $537d: $03
    nop                                           ; $537e: $00
    ld e, a                                       ; $537f: $5f
    ld bc, $0000                                  ; $5380: $01 $00 $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    inc de                                        ; $5385: $13
    nop                                           ; $5386: $00
    adc c                                         ; $5387: $89
    inc d                                         ; $5388: $14
    ld bc, $1537                                  ; $5389: $01 $37 $15
    ld b, $00                                     ; $538c: $06 $00
    ld d, $44                                     ; $538e: $16 $44
    nop                                           ; $5390: $00
    ld d, d                                       ; $5391: $52
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    inc de                                        ; $5394: $13
    nop                                           ; $5395: $00
    or $14                                        ; $5396: $f6 $14
    ld bc, $1543                                  ; $5398: $01 $43 $15
    ld bc, $1600                                  ; $539b: $01 $00 $16
    ld b, d                                       ; $539e: $42
    nop                                           ; $539f: $00
    ld d, d                                       ; $53a0: $52
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    inc de                                        ; $53a3: $13
    nop                                           ; $53a4: $00
    dec hl                                        ; $53a5: $2b
    inc d                                         ; $53a6: $14
    ld bc, $15a3                                  ; $53a7: $01 $a3 $15
    rlca                                          ; $53aa: $07
    nop                                           ; $53ab: $00
    ld d, $40                                     ; $53ac: $16 $40
    nop                                           ; $53ae: $00
    ld d, d                                       ; $53af: $52
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    inc de                                        ; $53b2: $13
    nop                                           ; $53b3: $00
    rst $08                                       ; $53b4: $cf
    inc d                                         ; $53b5: $14
    ld [bc], a                                    ; $53b6: $02
    ld e, $15                                     ; $53b7: $1e $15
    inc b                                         ; $53b9: $04
    nop                                           ; $53ba: $00
    ld d, $46                                     ; $53bb: $16 $46
    nop                                           ; $53bd: $00
    ld d, d                                       ; $53be: $52
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    add hl, bc                                    ; $53c1: $09
    nop                                           ; $53c2: $00
    rlca                                          ; $53c3: $07
    dec b                                         ; $53c4: $05
    add hl, bc                                    ; $53c5: $09
    nop                                           ; $53c6: $00
    inc de                                        ; $53c7: $13
    nop                                           ; $53c8: $00
    pop bc                                        ; $53c9: $c1
    inc d                                         ; $53ca: $14
    nop                                           ; $53cb: $00
    ld a, [hl-]                                   ; $53cc: $3a
    dec d                                         ; $53cd: $15
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    ld d, $2d                                     ; $53d0: $16 $2d
    nop                                           ; $53d2: $00
    ld d, d                                       ; $53d3: $52
    nop                                           ; $53d4: $00
    nop                                           ; $53d5: $00
    dec de                                        ; $53d6: $1b
    inc b                                         ; $53d7: $04
    nop                                           ; $53d8: $00
    ld e, a                                       ; $53d9: $5f
    ld bc, $0000                                  ; $53da: $01 $00 $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    add hl, bc                                    ; $53df: $09
    nop                                           ; $53e0: $00
    ld e, h                                       ; $53e1: $5c
    dec b                                         ; $53e2: $05
    add hl, bc                                    ; $53e3: $09
    nop                                           ; $53e4: $00
    inc de                                        ; $53e5: $13
    nop                                           ; $53e6: $00
    pop bc                                        ; $53e7: $c1
    inc d                                         ; $53e8: $14
    nop                                           ; $53e9: $00
    ld a, [hl-]                                   ; $53ea: $3a
    dec d                                         ; $53eb: $15
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    ld d, $2d                                     ; $53ee: $16 $2d
    nop                                           ; $53f0: $00
    ld d, d                                       ; $53f1: $52
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    dec de                                        ; $53f4: $1b
    inc b                                         ; $53f5: $04
    nop                                           ; $53f6: $00
    ld e, a                                       ; $53f7: $5f
    ld bc, $0000                                  ; $53f8: $01 $00 $00
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    add hl, bc                                    ; $53fd: $09
    nop                                           ; $53fe: $00
    ld d, e                                       ; $53ff: $53
    dec b                                         ; $5400: $05
    inc b                                         ; $5401: $04
    nop                                           ; $5402: $00
    ld a, d                                       ; $5403: $7a
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    ld e, a                                       ; $5406: $5f
    ld bc, $0000                                  ; $5407: $01 $00 $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    ld e, a                                       ; $540c: $5f
    ld bc, $0000                                  ; $540d: $01 $00 $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    ld e, a                                       ; $5412: $5f
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00

Call_00b_5415:
    add hl, bc                                    ; $5415: $09
    nop                                           ; $5416: $00
    ld d, e                                       ; $5417: $53
    dec b                                         ; $5418: $05
    add hl, bc                                    ; $5419: $09
    nop                                           ; $541a: $00
    ld d, [hl]                                    ; $541b: $56
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    rla                                           ; $541e: $17
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    inc e                                         ; $5421: $1c
    ld b, h                                       ; $5422: $44
    ld b, $5f                                     ; $5423: $06 $5f
    ld bc, $1500                                  ; $5425: $01 $00 $15
    ld d, l                                       ; $5428: $55
    nop                                           ; $5429: $00
    inc sp                                        ; $542a: $33
    ld [bc], a                                    ; $542b: $02
    ld e, $57                                     ; $542c: $1e $57
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    add hl, bc                                    ; $5433: $09
    nop                                           ; $5434: $00
    ld b, $05                                     ; $5435: $06 $05
    add hl, bc                                    ; $5437: $09
    nop                                           ; $5438: $00
    ld d, [hl]                                    ; $5439: $56
    nop                                           ; $543a: $00
    nop                                           ; $543b: $00
    rla                                           ; $543c: $17
    nop                                           ; $543d: $00
    nop                                           ; $543e: $00
    inc e                                         ; $543f: $1c
    ld b, h                                       ; $5440: $44
    ld b, $5f                                     ; $5441: $06 $5f
    ld bc, $1500                                  ; $5443: $01 $00 $15
    ld d, l                                       ; $5446: $55
    nop                                           ; $5447: $00
    inc sp                                        ; $5448: $33
    ld bc, $5758                                  ; $5449: $01 $58 $57
    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    add hl, bc                                    ; $5451: $09
    nop                                           ; $5452: $00
    rlca                                          ; $5453: $07
    dec b                                         ; $5454: $05
    add hl, bc                                    ; $5455: $09
    nop                                           ; $5456: $00
    ld d, [hl]                                    ; $5457: $56
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    rla                                           ; $545a: $17
    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    inc e                                         ; $545d: $1c
    ld b, h                                       ; $545e: $44
    ld b, $5f                                     ; $545f: $06 $5f
    ld bc, $1500                                  ; $5461: $01 $00 $15
    ld d, l                                       ; $5464: $55
    nop                                           ; $5465: $00
    inc sp                                        ; $5466: $33
    ld bc, $5758                                  ; $5467: $01 $58 $57
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    nop                                           ; $546e: $00
    add hl, bc                                    ; $546f: $09
    nop                                           ; $5470: $00
    ld d, d                                       ; $5471: $52
    dec b                                         ; $5472: $05
    add hl, bc                                    ; $5473: $09
    nop                                           ; $5474: $00
    ld d, [hl]                                    ; $5475: $56
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    rla                                           ; $5478: $17
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    inc e                                         ; $547b: $1c
    ld b, h                                       ; $547c: $44
    ld b, $5f                                     ; $547d: $06 $5f
    ld bc, $1500                                  ; $547f: $01 $00 $15
    ld d, l                                       ; $5482: $55
    nop                                           ; $5483: $00
    inc sp                                        ; $5484: $33
    ld bc, $5758                                  ; $5485: $01 $58 $57
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    add hl, bc                                    ; $548d: $09
    nop                                           ; $548e: $00
    ld [$0905], sp                                ; $548f: $08 $05 $09
    nop                                           ; $5492: $00
    ld d, [hl]                                    ; $5493: $56
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    rla                                           ; $5496: $17
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    inc e                                         ; $5499: $1c
    ld b, h                                       ; $549a: $44
    ld b, $5f                                     ; $549b: $06 $5f
    ld bc, $1500                                  ; $549d: $01 $00 $15
    ld d, l                                       ; $54a0: $55
    nop                                           ; $54a1: $00
    inc sp                                        ; $54a2: $33
    ld bc, $5758                                  ; $54a3: $01 $58 $57
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    add hl, bc                                    ; $54ab: $09
    nop                                           ; $54ac: $00
    add hl, bc                                    ; $54ad: $09
    dec b                                         ; $54ae: $05
    add hl, bc                                    ; $54af: $09
    nop                                           ; $54b0: $00
    ld d, [hl]                                    ; $54b1: $56
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    rla                                           ; $54b4: $17
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    inc e                                         ; $54b7: $1c
    ld b, h                                       ; $54b8: $44
    ld b, $5f                                     ; $54b9: $06 $5f
    ld bc, $1500                                  ; $54bb: $01 $00 $15
    ld d, l                                       ; $54be: $55
    nop                                           ; $54bf: $00
    inc sp                                        ; $54c0: $33
    ld bc, $5758                                  ; $54c1: $01 $58 $57
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    add hl, bc                                    ; $54c9: $09
    nop                                           ; $54ca: $00
    ld d, [hl]                                    ; $54cb: $56
    dec b                                         ; $54cc: $05
    add hl, bc                                    ; $54cd: $09
    nop                                           ; $54ce: $00
    ld d, [hl]                                    ; $54cf: $56
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    rla                                           ; $54d2: $17
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    inc e                                         ; $54d5: $1c
    ld b, h                                       ; $54d6: $44
    ld b, $5f                                     ; $54d7: $06 $5f
    ld bc, $1500                                  ; $54d9: $01 $00 $15
    ld d, l                                       ; $54dc: $55
    nop                                           ; $54dd: $00
    inc sp                                        ; $54de: $33
    ld bc, $5758                                  ; $54df: $01 $58 $57
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    add hl, bc                                    ; $54e7: $09
    nop                                           ; $54e8: $00
    dec bc                                        ; $54e9: $0b
    dec b                                         ; $54ea: $05
    dec bc                                        ; $54eb: $0b
    nop                                           ; $54ec: $00
    ld d, [hl]                                    ; $54ed: $56
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    rla                                           ; $54f0: $17
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    inc e                                         ; $54f3: $1c
    ld b, h                                       ; $54f4: $44
    ld b, $5f                                     ; $54f5: $06 $5f
    ld bc, $1500                                  ; $54f7: $01 $00 $15
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    inc sp                                        ; $54fc: $33
    inc bc                                        ; $54fd: $03
    ld [hl], c                                    ; $54fe: $71
    dec d                                         ; $54ff: $15
    ld d, l                                       ; $5500: $55
    nop                                           ; $5501: $00
    inc sp                                        ; $5502: $33
    inc bc                                        ; $5503: $03
    or b                                          ; $5504: $b0
    ld d, a                                       ; $5505: $57
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    add hl, bc                                    ; $550b: $09
    nop                                           ; $550c: $00
    ld e, h                                       ; $550d: $5c
    dec b                                         ; $550e: $05
    dec bc                                        ; $550f: $0b
    nop                                           ; $5510: $00
    ld d, [hl]                                    ; $5511: $56
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    rla                                           ; $5514: $17

Call_00b_5515:
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    inc e                                         ; $5517: $1c
    ld b, h                                       ; $5518: $44
    ld b, $5f                                     ; $5519: $06 $5f
    ld bc, $1500                                  ; $551b: $01 $00 $15
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    inc sp                                        ; $5520: $33
    inc b                                         ; $5521: $04
    call nc, Call_00b_5515                        ; $5522: $d4 $15 $55
    nop                                           ; $5525: $00
    inc sp                                        ; $5526: $33
    inc b                                         ; $5527: $04
    db $ec                                        ; $5528: $ec
    ld d, a                                       ; $5529: $57
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    add hl, bc                                    ; $552f: $09
    nop                                           ; $5530: $00
    db $10                                        ; $5531: $10
    dec b                                         ; $5532: $05
    dec bc                                        ; $5533: $0b
    nop                                           ; $5534: $00
    ld d, [hl]                                    ; $5535: $56
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    rla                                           ; $5538: $17
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    inc e                                         ; $553b: $1c
    ld b, h                                       ; $553c: $44
    ld b, $5f                                     ; $553d: $06 $5f
    ld bc, $1500                                  ; $553f: $01 $00 $15
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    inc sp                                        ; $5544: $33
    ld [bc], a                                    ; $5545: $02
    ld b, l                                       ; $5546: $45
    dec d                                         ; $5547: $15
    ld d, l                                       ; $5548: $55
    nop                                           ; $5549: $00
    inc sp                                        ; $554a: $33
    ld [bc], a                                    ; $554b: $02
    sbc [hl]                                      ; $554c: $9e
    ld d, a                                       ; $554d: $57
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    add hl, bc                                    ; $5553: $09
    nop                                           ; $5554: $00
    ld de, $0b05                                  ; $5555: $11 $05 $0b
    nop                                           ; $5558: $00
    ld d, [hl]                                    ; $5559: $56
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    rla                                           ; $555c: $17
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    inc e                                         ; $555f: $1c
    ld b, h                                       ; $5560: $44
    ld b, $5f                                     ; $5561: $06 $5f
    ld bc, $1500                                  ; $5563: $01 $00 $15
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    inc sp                                        ; $5568: $33
    ld [bc], a                                    ; $5569: $02
    ld b, l                                       ; $556a: $45
    dec d                                         ; $556b: $15
    ld d, l                                       ; $556c: $55
    nop                                           ; $556d: $00
    inc sp                                        ; $556e: $33
    ld [bc], a                                    ; $556f: $02
    sbc [hl]                                      ; $5570: $9e
    ld d, a                                       ; $5571: $57
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    add hl, bc                                    ; $5577: $09
    nop                                           ; $5578: $00
    ccf                                           ; $5579: $3f
    dec b                                         ; $557a: $05
    add hl, bc                                    ; $557b: $09
    nop                                           ; $557c: $00
    ld d, [hl]                                    ; $557d: $56
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    rla                                           ; $5580: $17
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    inc e                                         ; $5583: $1c
    ld b, h                                       ; $5584: $44
    ld b, $5f                                     ; $5585: $06 $5f
    ld bc, $1500                                  ; $5587: $01 $00 $15
    ld d, l                                       ; $558a: $55
    nop                                           ; $558b: $00
    inc sp                                        ; $558c: $33
    add hl, bc                                    ; $558d: $09
    db $ec                                        ; $558e: $ec
    ld d, a                                       ; $558f: $57
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    add hl, bc                                    ; $5595: $09
    nop                                           ; $5596: $00
    dec a                                         ; $5597: $3d
    dec b                                         ; $5598: $05
    add hl, bc                                    ; $5599: $09
    nop                                           ; $559a: $00
    ld d, [hl]                                    ; $559b: $56
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    rla                                           ; $559e: $17
    nop                                           ; $559f: $00
    nop                                           ; $55a0: $00
    inc e                                         ; $55a1: $1c
    ld b, h                                       ; $55a2: $44
    ld b, $5f                                     ; $55a3: $06 $5f
    ld bc, $1500                                  ; $55a5: $01 $00 $15
    ld d, l                                       ; $55a8: $55
    nop                                           ; $55a9: $00
    inc sp                                        ; $55aa: $33
    dec bc                                        ; $55ab: $0b
    ld [hl], c                                    ; $55ac: $71
    ld d, a                                       ; $55ad: $57
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    add hl, bc                                    ; $55b3: $09
    nop                                           ; $55b4: $00
    ld d, h                                       ; $55b5: $54
    dec b                                         ; $55b6: $05
    add hl, bc                                    ; $55b7: $09
    nop                                           ; $55b8: $00
    ld d, [hl]                                    ; $55b9: $56
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    rla                                           ; $55bc: $17
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    inc e                                         ; $55bf: $1c
    ld b, h                                       ; $55c0: $44
    ld b, $5f                                     ; $55c1: $06 $5f
    ld bc, $1500                                  ; $55c3: $01 $00 $15
    ld d, l                                       ; $55c6: $55
    nop                                           ; $55c7: $00
    inc sp                                        ; $55c8: $33
    ld bc, $5758                                  ; $55c9: $01 $58 $57
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    add hl, bc                                    ; $55d1: $09
    nop                                           ; $55d2: $00
    ld e, e                                       ; $55d3: $5b
    dec b                                         ; $55d4: $05
    add hl, bc                                    ; $55d5: $09
    nop                                           ; $55d6: $00
    ld d, [hl]                                    ; $55d7: $56
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    rla                                           ; $55da: $17
    nop                                           ; $55db: $00
    nop                                           ; $55dc: $00
    inc e                                         ; $55dd: $1c
    ld b, h                                       ; $55de: $44
    ld b, $5f                                     ; $55df: $06 $5f
    ld bc, $1500                                  ; $55e1: $01 $00 $15
    ld d, l                                       ; $55e4: $55
    nop                                           ; $55e5: $00
    inc sp                                        ; $55e6: $33
    dec bc                                        ; $55e7: $0b
    ld [hl], c                                    ; $55e8: $71
    ld d, a                                       ; $55e9: $57
    nop                                           ; $55ea: $00
    nop                                           ; $55eb: $00
    nop                                           ; $55ec: $00
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    ld e, a                                       ; $55ef: $5f
    ld bc, $0000                                  ; $55f0: $01 $00 $00
    nop                                           ; $55f3: $00
    nop                                           ; $55f4: $00
    ld e, a                                       ; $55f5: $5f
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    add hl, bc                                    ; $55f8: $09
    nop                                           ; $55f9: $00
    ld d, e                                       ; $55fa: $53
    dec b                                         ; $55fb: $05
    add hl, bc                                    ; $55fc: $09
    nop                                           ; $55fd: $00
    ld d, [hl]                                    ; $55fe: $56
    nop                                           ; $55ff: $00
    nop                                           ; $5600: $00
    rla                                           ; $5601: $17
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    inc e                                         ; $5604: $1c
    ld b, b                                       ; $5605: $40
    rlca                                          ; $5606: $07
    ld e, a                                       ; $5607: $5f
    ld bc, $1500                                  ; $5608: $01 $00 $15
    ld c, [hl]                                    ; $560b: $4e
    nop                                           ; $560c: $00
    inc sp                                        ; $560d: $33
    ld [bc], a                                    ; $560e: $02
    rrca                                          ; $560f: $0f
    ld d, a                                       ; $5610: $57
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00

Call_00b_5615:
    nop                                           ; $5615: $00
    add hl, bc                                    ; $5616: $09
    nop                                           ; $5617: $00
    ld b, $05                                     ; $5618: $06 $05
    add hl, bc                                    ; $561a: $09
    nop                                           ; $561b: $00
    ld d, [hl]                                    ; $561c: $56
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    rla                                           ; $561f: $17
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    inc e                                         ; $5622: $1c
    ld b, b                                       ; $5623: $40
    rlca                                          ; $5624: $07
    ld e, a                                       ; $5625: $5f
    ld bc, $1500                                  ; $5626: $01 $00 $15
    ld c, [hl]                                    ; $5629: $4e
    nop                                           ; $562a: $00
    inc sp                                        ; $562b: $33
    ld bc, $5759                                  ; $562c: $01 $59 $57
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    add hl, bc                                    ; $5634: $09
    nop                                           ; $5635: $00
    rlca                                          ; $5636: $07
    dec b                                         ; $5637: $05
    add hl, bc                                    ; $5638: $09
    nop                                           ; $5639: $00
    ld d, [hl]                                    ; $563a: $56
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    rla                                           ; $563d: $17
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    inc e                                         ; $5640: $1c
    ld b, b                                       ; $5641: $40
    rlca                                          ; $5642: $07
    ld e, a                                       ; $5643: $5f
    ld bc, $1500                                  ; $5644: $01 $00 $15
    ld c, [hl]                                    ; $5647: $4e
    nop                                           ; $5648: $00
    inc sp                                        ; $5649: $33
    ld bc, $5759                                  ; $564a: $01 $59 $57
    nop                                           ; $564d: $00
    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    add hl, bc                                    ; $5652: $09
    nop                                           ; $5653: $00
    ld d, d                                       ; $5654: $52
    dec b                                         ; $5655: $05
    add hl, bc                                    ; $5656: $09
    nop                                           ; $5657: $00
    ld d, [hl]                                    ; $5658: $56
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    rla                                           ; $565b: $17
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    inc e                                         ; $565e: $1c
    ld b, b                                       ; $565f: $40
    rlca                                          ; $5660: $07
    ld e, a                                       ; $5661: $5f
    ld bc, $1500                                  ; $5662: $01 $00 $15
    ld c, [hl]                                    ; $5665: $4e
    nop                                           ; $5666: $00
    inc sp                                        ; $5667: $33
    ld bc, $5759                                  ; $5668: $01 $59 $57
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    add hl, bc                                    ; $5670: $09
    nop                                           ; $5671: $00
    ld [$0905], sp                                ; $5672: $08 $05 $09
    nop                                           ; $5675: $00
    ld d, [hl]                                    ; $5676: $56
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    rla                                           ; $5679: $17
    nop                                           ; $567a: $00
    nop                                           ; $567b: $00
    inc e                                         ; $567c: $1c
    ld b, b                                       ; $567d: $40
    rlca                                          ; $567e: $07
    ld e, a                                       ; $567f: $5f
    ld bc, $1500                                  ; $5680: $01 $00 $15
    ld c, [hl]                                    ; $5683: $4e
    nop                                           ; $5684: $00
    inc sp                                        ; $5685: $33
    ld bc, $5759                                  ; $5686: $01 $59 $57
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    nop                                           ; $568b: $00
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    add hl, bc                                    ; $568e: $09
    nop                                           ; $568f: $00
    add hl, bc                                    ; $5690: $09
    dec b                                         ; $5691: $05
    add hl, bc                                    ; $5692: $09
    nop                                           ; $5693: $00
    ld d, [hl]                                    ; $5694: $56
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    rla                                           ; $5697: $17
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    inc e                                         ; $569a: $1c
    ld b, b                                       ; $569b: $40
    rlca                                          ; $569c: $07
    ld e, a                                       ; $569d: $5f
    ld bc, $1500                                  ; $569e: $01 $00 $15
    ld c, [hl]                                    ; $56a1: $4e
    nop                                           ; $56a2: $00
    inc sp                                        ; $56a3: $33
    ld bc, $5759                                  ; $56a4: $01 $59 $57
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    add hl, bc                                    ; $56ac: $09
    nop                                           ; $56ad: $00
    ld d, [hl]                                    ; $56ae: $56
    dec b                                         ; $56af: $05
    add hl, bc                                    ; $56b0: $09
    nop                                           ; $56b1: $00
    ld d, [hl]                                    ; $56b2: $56
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    rla                                           ; $56b5: $17
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    inc e                                         ; $56b8: $1c
    ld b, b                                       ; $56b9: $40
    rlca                                          ; $56ba: $07
    ld e, a                                       ; $56bb: $5f
    ld bc, $1500                                  ; $56bc: $01 $00 $15
    ld c, [hl]                                    ; $56bf: $4e
    nop                                           ; $56c0: $00
    inc sp                                        ; $56c1: $33
    ld bc, $5759                                  ; $56c2: $01 $59 $57
    nop                                           ; $56c5: $00
    nop                                           ; $56c6: $00
    nop                                           ; $56c7: $00
    nop                                           ; $56c8: $00
    nop                                           ; $56c9: $00
    add hl, bc                                    ; $56ca: $09
    nop                                           ; $56cb: $00
    dec bc                                        ; $56cc: $0b
    dec b                                         ; $56cd: $05
    dec bc                                        ; $56ce: $0b
    nop                                           ; $56cf: $00
    ld d, [hl]                                    ; $56d0: $56
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    rla                                           ; $56d3: $17
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    inc e                                         ; $56d6: $1c
    ld b, b                                       ; $56d7: $40
    rlca                                          ; $56d8: $07
    ld e, a                                       ; $56d9: $5f
    ld bc, $1500                                  ; $56da: $01 $00 $15
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    inc sp                                        ; $56df: $33
    inc bc                                        ; $56e0: $03
    ld [hl], c                                    ; $56e1: $71
    dec d                                         ; $56e2: $15
    ld c, [hl]                                    ; $56e3: $4e
    nop                                           ; $56e4: $00
    inc sp                                        ; $56e5: $33
    inc bc                                        ; $56e6: $03
    or c                                          ; $56e7: $b1
    ld d, a                                       ; $56e8: $57
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    add hl, bc                                    ; $56ee: $09
    nop                                           ; $56ef: $00
    ld e, h                                       ; $56f0: $5c
    dec b                                         ; $56f1: $05
    dec bc                                        ; $56f2: $0b
    nop                                           ; $56f3: $00
    ld d, [hl]                                    ; $56f4: $56
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    rla                                           ; $56f7: $17
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    inc e                                         ; $56fa: $1c
    ld b, b                                       ; $56fb: $40
    rlca                                          ; $56fc: $07
    ld e, a                                       ; $56fd: $5f
    ld bc, $1500                                  ; $56fe: $01 $00 $15
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    inc sp                                        ; $5703: $33
    inc b                                         ; $5704: $04
    call nc, Call_00b_4e15                        ; $5705: $d4 $15 $4e
    nop                                           ; $5708: $00
    inc sp                                        ; $5709: $33
    inc b                                         ; $570a: $04
    db $ed                                        ; $570b: $ed
    ld d, a                                       ; $570c: $57
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    add hl, bc                                    ; $5712: $09
    nop                                           ; $5713: $00
    db $10                                        ; $5714: $10
    dec b                                         ; $5715: $05
    dec bc                                        ; $5716: $0b
    nop                                           ; $5717: $00
    ld d, [hl]                                    ; $5718: $56
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    rla                                           ; $571b: $17
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    inc e                                         ; $571e: $1c
    ld b, b                                       ; $571f: $40
    rlca                                          ; $5720: $07
    ld e, a                                       ; $5721: $5f
    ld bc, $1500                                  ; $5722: $01 $00 $15
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    inc sp                                        ; $5727: $33
    ld [bc], a                                    ; $5728: $02
    ld b, l                                       ; $5729: $45
    dec d                                         ; $572a: $15
    ld c, [hl]                                    ; $572b: $4e
    nop                                           ; $572c: $00
    inc sp                                        ; $572d: $33
    ld [bc], a                                    ; $572e: $02
    sbc a                                         ; $572f: $9f
    ld d, a                                       ; $5730: $57
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    add hl, bc                                    ; $5736: $09
    nop                                           ; $5737: $00
    ld de, $0b05                                  ; $5738: $11 $05 $0b
    nop                                           ; $573b: $00
    ld d, [hl]                                    ; $573c: $56
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    rla                                           ; $573f: $17
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    inc e                                         ; $5742: $1c
    ld b, b                                       ; $5743: $40
    rlca                                          ; $5744: $07
    ld e, a                                       ; $5745: $5f
    ld bc, $1500                                  ; $5746: $01 $00 $15
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    inc sp                                        ; $574b: $33
    ld [bc], a                                    ; $574c: $02
    ld b, l                                       ; $574d: $45
    dec d                                         ; $574e: $15
    ld c, [hl]                                    ; $574f: $4e
    nop                                           ; $5750: $00
    inc sp                                        ; $5751: $33
    ld [bc], a                                    ; $5752: $02
    sbc a                                         ; $5753: $9f
    ld d, a                                       ; $5754: $57
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    add hl, bc                                    ; $575a: $09
    nop                                           ; $575b: $00
    ccf                                           ; $575c: $3f
    dec b                                         ; $575d: $05
    add hl, bc                                    ; $575e: $09
    nop                                           ; $575f: $00
    ld d, [hl]                                    ; $5760: $56
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    rla                                           ; $5763: $17
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    inc e                                         ; $5766: $1c
    ld b, b                                       ; $5767: $40
    rlca                                          ; $5768: $07
    ld e, a                                       ; $5769: $5f
    ld bc, $1500                                  ; $576a: $01 $00 $15
    ld c, [hl]                                    ; $576d: $4e
    nop                                           ; $576e: $00
    inc sp                                        ; $576f: $33
    add hl, bc                                    ; $5770: $09
    db $ed                                        ; $5771: $ed
    ld d, a                                       ; $5772: $57
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    add hl, bc                                    ; $5778: $09
    nop                                           ; $5779: $00
    dec a                                         ; $577a: $3d
    dec b                                         ; $577b: $05
    add hl, bc                                    ; $577c: $09
    nop                                           ; $577d: $00
    ld d, [hl]                                    ; $577e: $56
    nop                                           ; $577f: $00
    nop                                           ; $5780: $00
    rla                                           ; $5781: $17
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    inc e                                         ; $5784: $1c
    ld b, b                                       ; $5785: $40
    rlca                                          ; $5786: $07
    ld e, a                                       ; $5787: $5f
    ld bc, $1500                                  ; $5788: $01 $00 $15
    ld c, [hl]                                    ; $578b: $4e
    nop                                           ; $578c: $00
    inc sp                                        ; $578d: $33
    dec bc                                        ; $578e: $0b
    ld h, [hl]                                    ; $578f: $66
    ld d, a                                       ; $5790: $57
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    add hl, bc                                    ; $5796: $09
    nop                                           ; $5797: $00
    ld d, h                                       ; $5798: $54
    dec b                                         ; $5799: $05
    add hl, bc                                    ; $579a: $09
    nop                                           ; $579b: $00
    ld d, [hl]                                    ; $579c: $56
    nop                                           ; $579d: $00
    nop                                           ; $579e: $00
    rla                                           ; $579f: $17
    nop                                           ; $57a0: $00
    nop                                           ; $57a1: $00
    inc e                                         ; $57a2: $1c
    ld b, b                                       ; $57a3: $40
    rlca                                          ; $57a4: $07
    ld e, a                                       ; $57a5: $5f
    ld bc, $1500                                  ; $57a6: $01 $00 $15
    ld c, [hl]                                    ; $57a9: $4e
    nop                                           ; $57aa: $00
    inc sp                                        ; $57ab: $33
    ld bc, $5759                                  ; $57ac: $01 $59 $57
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    add hl, bc                                    ; $57b4: $09
    nop                                           ; $57b5: $00
    ld e, e                                       ; $57b6: $5b
    dec b                                         ; $57b7: $05
    add hl, bc                                    ; $57b8: $09
    nop                                           ; $57b9: $00
    ld d, [hl]                                    ; $57ba: $56
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    rla                                           ; $57bd: $17
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    inc e                                         ; $57c0: $1c
    ld b, b                                       ; $57c1: $40
    rlca                                          ; $57c2: $07
    ld e, a                                       ; $57c3: $5f
    ld bc, $1500                                  ; $57c4: $01 $00 $15
    ld c, [hl]                                    ; $57c7: $4e
    nop                                           ; $57c8: $00
    inc sp                                        ; $57c9: $33
    dec bc                                        ; $57ca: $0b
    ld h, [hl]                                    ; $57cb: $66
    ld d, a                                       ; $57cc: $57
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    nop                                           ; $57d0: $00
    nop                                           ; $57d1: $00
    ld e, a                                       ; $57d2: $5f
    ld bc, $0000                                  ; $57d3: $01 $00 $00
    nop                                           ; $57d6: $00
    nop                                           ; $57d7: $00
    dec d                                         ; $57d8: $15
    dec a                                         ; $57d9: $3d
    nop                                           ; $57da: $00
    inc sp                                        ; $57db: $33
    ld [bc], a                                    ; $57dc: $02
    jr nc, jr_00b_57df                            ; $57dd: $30 $00

jr_00b_57df:
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    ld e, a                                       ; $57e1: $5f
    nop                                           ; $57e2: $00
    nop                                           ; $57e3: $00
    add hl, bc                                    ; $57e4: $09
    nop                                           ; $57e5: $00
    ld h, $05                                     ; $57e6: $26 $05
    rlca                                          ; $57e8: $07
    nop                                           ; $57e9: $00
    ld d, [hl]                                    ; $57ea: $56
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    ld e, a                                       ; $57ed: $5f
    ld bc, $1500                                  ; $57ee: $01 $00 $15
    dec a                                         ; $57f1: $3d
    nop                                           ; $57f2: $00
    inc sp                                        ; $57f3: $33
    ld bc, $57cc                                  ; $57f4: $01 $cc $57
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    add hl, bc                                    ; $57fc: $09
    nop                                           ; $57fd: $00
    daa                                           ; $57fe: $27
    dec b                                         ; $57ff: $05
    rlca                                          ; $5800: $07
    nop                                           ; $5801: $00
    ld d, [hl]                                    ; $5802: $56
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    ld e, a                                       ; $5805: $5f
    ld bc, $1500                                  ; $5806: $01 $00 $15
    dec a                                         ; $5809: $3d
    nop                                           ; $580a: $00
    inc sp                                        ; $580b: $33
    ld bc, $57cc                                  ; $580c: $01 $cc $57
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    add hl, bc                                    ; $5814: $09
    nop                                           ; $5815: $00
    scf                                           ; $5816: $37
    dec b                                         ; $5817: $05
    rlca                                          ; $5818: $07
    nop                                           ; $5819: $00
    ld d, [hl]                                    ; $581a: $56
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    ld e, a                                       ; $581d: $5f
    ld bc, $1500                                  ; $581e: $01 $00 $15
    dec a                                         ; $5821: $3d
    nop                                           ; $5822: $00
    inc sp                                        ; $5823: $33
    ld bc, $57cc                                  ; $5824: $01 $cc $57
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    add hl, bc                                    ; $582c: $09
    nop                                           ; $582d: $00
    add hl, sp                                    ; $582e: $39
    dec b                                         ; $582f: $05
    rlca                                          ; $5830: $07
    nop                                           ; $5831: $00
    ld d, [hl]                                    ; $5832: $56
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    ld e, a                                       ; $5835: $5f
    ld bc, $1500                                  ; $5836: $01 $00 $15
    dec a                                         ; $5839: $3d
    nop                                           ; $583a: $00
    inc sp                                        ; $583b: $33
    ld bc, $57cc                                  ; $583c: $01 $cc $57
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    add hl, bc                                    ; $5844: $09
    nop                                           ; $5845: $00
    ld e, d                                       ; $5846: $5a
    dec b                                         ; $5847: $05
    rlca                                          ; $5848: $07
    nop                                           ; $5849: $00
    ld d, [hl]                                    ; $584a: $56
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    ld e, a                                       ; $584d: $5f
    ld bc, $1500                                  ; $584e: $01 $00 $15
    dec a                                         ; $5851: $3d
    nop                                           ; $5852: $00
    inc sp                                        ; $5853: $33
    ld bc, $57cc                                  ; $5854: $01 $cc $57
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    add hl, bc                                    ; $585c: $09
    nop                                           ; $585d: $00
    ld b, c                                       ; $585e: $41
    dec b                                         ; $585f: $05
    rlca                                          ; $5860: $07
    nop                                           ; $5861: $00
    ld d, [hl]                                    ; $5862: $56
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    ld e, a                                       ; $5865: $5f
    ld bc, $1500                                  ; $5866: $01 $00 $15
    dec a                                         ; $5869: $3d
    nop                                           ; $586a: $00
    inc sp                                        ; $586b: $33
    ld bc, $57cc                                  ; $586c: $01 $cc $57
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    add hl, bc                                    ; $5874: $09
    nop                                           ; $5875: $00
    ld c, b                                       ; $5876: $48
    dec b                                         ; $5877: $05
    rlca                                          ; $5878: $07
    nop                                           ; $5879: $00
    ld d, [hl]                                    ; $587a: $56
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    ld e, a                                       ; $587d: $5f
    ld bc, $1500                                  ; $587e: $01 $00 $15
    dec a                                         ; $5881: $3d
    nop                                           ; $5882: $00
    inc sp                                        ; $5883: $33
    ld bc, $57cc                                  ; $5884: $01 $cc $57
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    ld d, [hl]                                    ; $588c: $56
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    ld e, a                                       ; $588f: $5f
    ld bc, $2e00                                  ; $5890: $01 $00 $2e
    dec d                                         ; $5893: $15
    nop                                           ; $5894: $00
    ld d, a                                       ; $5895: $57
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    ld a, c                                       ; $5898: $79
    ld b, $2d                                     ; $5899: $06 $2d
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    ld e, a                                       ; $589e: $5f
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    add hl, bc                                    ; $58a1: $09
    nop                                           ; $58a2: $00
    ld h, $05                                     ; $58a3: $26 $05
    rlca                                          ; $58a5: $07
    nop                                           ; $58a6: $00
    ld d, [hl]                                    ; $58a7: $56
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    ld e, a                                       ; $58aa: $5f
    ld bc, $1500                                  ; $58ab: $01 $00 $15
    dec a                                         ; $58ae: $3d
    nop                                           ; $58af: $00
    inc sp                                        ; $58b0: $33
    ld bc, $57cc                                  ; $58b1: $01 $cc $57
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    add hl, bc                                    ; $58b9: $09
    nop                                           ; $58ba: $00
    daa                                           ; $58bb: $27
    dec b                                         ; $58bc: $05
    rlca                                          ; $58bd: $07
    nop                                           ; $58be: $00
    ld d, [hl]                                    ; $58bf: $56
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    ld e, a                                       ; $58c2: $5f
    ld bc, $1500                                  ; $58c3: $01 $00 $15
    dec a                                         ; $58c6: $3d
    nop                                           ; $58c7: $00
    inc sp                                        ; $58c8: $33
    ld bc, $57cc                                  ; $58c9: $01 $cc $57
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    add hl, bc                                    ; $58d1: $09
    nop                                           ; $58d2: $00
    scf                                           ; $58d3: $37
    dec b                                         ; $58d4: $05
    rlca                                          ; $58d5: $07
    nop                                           ; $58d6: $00
    ld d, [hl]                                    ; $58d7: $56
    nop                                           ; $58d8: $00
    nop                                           ; $58d9: $00
    ld e, a                                       ; $58da: $5f
    ld bc, $1500                                  ; $58db: $01 $00 $15
    dec a                                         ; $58de: $3d
    nop                                           ; $58df: $00
    inc sp                                        ; $58e0: $33
    ld bc, $57cc                                  ; $58e1: $01 $cc $57
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    add hl, bc                                    ; $58e9: $09
    nop                                           ; $58ea: $00
    add hl, sp                                    ; $58eb: $39
    dec b                                         ; $58ec: $05
    rlca                                          ; $58ed: $07
    nop                                           ; $58ee: $00
    ld d, [hl]                                    ; $58ef: $56
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    ld e, a                                       ; $58f2: $5f
    ld bc, $1500                                  ; $58f3: $01 $00 $15
    dec a                                         ; $58f6: $3d
    nop                                           ; $58f7: $00
    inc sp                                        ; $58f8: $33
    ld bc, $57cc                                  ; $58f9: $01 $cc $57
    nop                                           ; $58fc: $00
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    nop                                           ; $5900: $00
    add hl, bc                                    ; $5901: $09
    nop                                           ; $5902: $00
    ld e, d                                       ; $5903: $5a
    dec b                                         ; $5904: $05
    rlca                                          ; $5905: $07
    nop                                           ; $5906: $00
    ld d, [hl]                                    ; $5907: $56
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    ld e, a                                       ; $590a: $5f
    ld bc, $1500                                  ; $590b: $01 $00 $15
    dec a                                         ; $590e: $3d
    nop                                           ; $590f: $00
    inc sp                                        ; $5910: $33
    ld bc, $57cc                                  ; $5911: $01 $cc $57
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    add hl, bc                                    ; $5919: $09
    nop                                           ; $591a: $00
    ld b, c                                       ; $591b: $41
    dec b                                         ; $591c: $05
    rlca                                          ; $591d: $07
    nop                                           ; $591e: $00
    ld d, [hl]                                    ; $591f: $56
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    ld e, a                                       ; $5922: $5f
    ld bc, $1500                                  ; $5923: $01 $00 $15
    dec a                                         ; $5926: $3d
    nop                                           ; $5927: $00
    inc sp                                        ; $5928: $33
    ld bc, $57cc                                  ; $5929: $01 $cc $57
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    add hl, bc                                    ; $5931: $09
    nop                                           ; $5932: $00
    ld c, b                                       ; $5933: $48
    dec b                                         ; $5934: $05
    rlca                                          ; $5935: $07
    nop                                           ; $5936: $00
    ld d, [hl]                                    ; $5937: $56
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    ld e, a                                       ; $593a: $5f
    ld bc, $1500                                  ; $593b: $01 $00 $15
    dec a                                         ; $593e: $3d
    nop                                           ; $593f: $00
    inc sp                                        ; $5940: $33
    ld bc, $57cc                                  ; $5941: $01 $cc $57
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    ld d, [hl]                                    ; $5949: $56
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    ld e, a                                       ; $594c: $5f
    ld bc, $2e00                                  ; $594d: $01 $00 $2e
    dec d                                         ; $5950: $15
    nop                                           ; $5951: $00
    ld d, a                                       ; $5952: $57
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    ld a, c                                       ; $5955: $79
    add hl, bc                                    ; $5956: $09
    dec l                                         ; $5957: $2d
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595a: $00
    ld c, $00                                     ; $595b: $0e $00
    nop                                           ; $595d: $00
    ld bc, $02f2                                  ; $595e: $01 $f2 $02
    ld b, b                                       ; $5961: $40
    inc b                                         ; $5962: $04
    jp nz, $cf06                                  ; $5963: $c2 $06 $cf

    ld [$0ab2], sp                                ; $5966: $08 $b2 $0a
    sub l                                         ; $5969: $95
    dec bc                                        ; $596a: $0b
    cp b                                          ; $596b: $b8
    inc c                                         ; $596c: $0c
    db $db                                        ; $596d: $db
    dec c                                         ; $596e: $0d
    sbc e                                         ; $596f: $9b
    dec c                                         ; $5970: $0d
    db $ec                                        ; $5971: $ec
    ld c, $a6                                     ; $5972: $0e $a6
    rrca                                          ; $5974: $0f
    ld h, e                                       ; $5975: $63
    rrca                                          ; $5976: $0f
    sbc $5f                                       ; $5977: $de $5f
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    add hl, bc                                    ; $597b: $09
    nop                                           ; $597c: $00
    rlca                                          ; $597d: $07
    dec b                                         ; $597e: $05
    ld a, [bc]                                    ; $597f: $0a
    nop                                           ; $5980: $00
    ld d, [hl]                                    ; $5981: $56
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    rla                                           ; $5984: $17
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    inc e                                         ; $5987: $1c
    ld c, b                                       ; $5988: $48
    nop                                           ; $5989: $00
    ld e, a                                       ; $598a: $5f
    ld bc, $1500                                  ; $598b: $01 $00 $15
    nop                                           ; $598e: $00
    nop                                           ; $598f: $00
    inc sp                                        ; $5990: $33
    ld bc, $1578                                  ; $5991: $01 $78 $15
    ld d, [hl]                                    ; $5994: $56
    nop                                           ; $5995: $00
    inc sp                                        ; $5996: $33
    ld bc, $5787                                  ; $5997: $01 $87 $57
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    add hl, bc                                    ; $599c: $09
    nop                                           ; $599d: $00
    ld [$0b05], sp                                ; $599e: $08 $05 $0b
    nop                                           ; $59a1: $00
    ld d, [hl]                                    ; $59a2: $56
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    rla                                           ; $59a5: $17
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    inc e                                         ; $59a8: $1c
    ld c, b                                       ; $59a9: $48
    nop                                           ; $59aa: $00
    ld e, a                                       ; $59ab: $5f
    ld bc, $1500                                  ; $59ac: $01 $00 $15
    nop                                           ; $59af: $00
    nop                                           ; $59b0: $00
    inc sp                                        ; $59b1: $33
    ld bc, $15cd                                  ; $59b2: $01 $cd $15
    ld d, [hl]                                    ; $59b5: $56
    nop                                           ; $59b6: $00
    inc sp                                        ; $59b7: $33
    ld bc, $57d5                                  ; $59b8: $01 $d5 $57
    nop                                           ; $59bb: $00
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    nop                                           ; $59be: $00
    nop                                           ; $59bf: $00
    add hl, bc                                    ; $59c0: $09
    nop                                           ; $59c1: $00
    ld d, e                                       ; $59c2: $53
    dec b                                         ; $59c3: $05
    add hl, bc                                    ; $59c4: $09
    nop                                           ; $59c5: $00
    ld d, [hl]                                    ; $59c6: $56
    nop                                           ; $59c7: $00
    nop                                           ; $59c8: $00
    rla                                           ; $59c9: $17
    nop                                           ; $59ca: $00
    nop                                           ; $59cb: $00
    inc e                                         ; $59cc: $1c
    ld c, b                                       ; $59cd: $48
    nop                                           ; $59ce: $00
    ld e, a                                       ; $59cf: $5f
    ld bc, $1500                                  ; $59d0: $01 $00 $15
    ld d, [hl]                                    ; $59d3: $56
    nop                                           ; $59d4: $00
    inc sp                                        ; $59d5: $33
    ld [bc], a                                    ; $59d6: $02
    ld hl, $0057                                  ; $59d7: $21 $57 $00
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    add hl, bc                                    ; $59de: $09
    nop                                           ; $59df: $00
    ld b, $05                                     ; $59e0: $06 $05
    add hl, bc                                    ; $59e2: $09
    nop                                           ; $59e3: $00
    ld d, [hl]                                    ; $59e4: $56
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    rla                                           ; $59e7: $17
    nop                                           ; $59e8: $00
    nop                                           ; $59e9: $00
    inc e                                         ; $59ea: $1c
    ld c, b                                       ; $59eb: $48
    nop                                           ; $59ec: $00
    ld e, a                                       ; $59ed: $5f
    ld bc, $1500                                  ; $59ee: $01 $00 $15
    ld d, [hl]                                    ; $59f1: $56
    nop                                           ; $59f2: $00
    inc sp                                        ; $59f3: $33
    ld bc, $5761                                  ; $59f4: $01 $61 $57
    nop                                           ; $59f7: $00
    nop                                           ; $59f8: $00
    nop                                           ; $59f9: $00
    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    add hl, bc                                    ; $59fc: $09
    nop                                           ; $59fd: $00
    ld d, d                                       ; $59fe: $52
    dec b                                         ; $59ff: $05
    dec bc                                        ; $5a00: $0b
    nop                                           ; $5a01: $00
    ld d, [hl]                                    ; $5a02: $56
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    rla                                           ; $5a05: $17
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    inc e                                         ; $5a08: $1c
    ld c, b                                       ; $5a09: $48
    nop                                           ; $5a0a: $00
    ld e, a                                       ; $5a0b: $5f
    ld bc, $1500                                  ; $5a0c: $01 $00 $15
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    inc sp                                        ; $5a11: $33
    ld bc, $1595                                  ; $5a12: $01 $95 $15
    ld d, [hl]                                    ; $5a15: $56
    nop                                           ; $5a16: $00
    inc sp                                        ; $5a17: $33
    ld a, [bc]                                    ; $5a18: $0a
    inc de                                        ; $5a19: $13
    ld d, a                                       ; $5a1a: $57
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    add hl, bc                                    ; $5a20: $09
    nop                                           ; $5a21: $00
    add hl, bc                                    ; $5a22: $09
    dec b                                         ; $5a23: $05
    add hl, bc                                    ; $5a24: $09
    nop                                           ; $5a25: $00
    ld d, [hl]                                    ; $5a26: $56
    nop                                           ; $5a27: $00
    nop                                           ; $5a28: $00
    rla                                           ; $5a29: $17
    nop                                           ; $5a2a: $00
    nop                                           ; $5a2b: $00
    inc e                                         ; $5a2c: $1c
    ld c, b                                       ; $5a2d: $48
    nop                                           ; $5a2e: $00
    ld e, a                                       ; $5a2f: $5f
    ld bc, $1500                                  ; $5a30: $01 $00 $15
    ld d, [hl]                                    ; $5a33: $56
    nop                                           ; $5a34: $00
    inc sp                                        ; $5a35: $33
    ld bc, $5761                                  ; $5a36: $01 $61 $57
    nop                                           ; $5a39: $00
    nop                                           ; $5a3a: $00
    nop                                           ; $5a3b: $00
    nop                                           ; $5a3c: $00
    nop                                           ; $5a3d: $00
    add hl, bc                                    ; $5a3e: $09
    nop                                           ; $5a3f: $00
    ld d, [hl]                                    ; $5a40: $56
    dec b                                         ; $5a41: $05
    add hl, bc                                    ; $5a42: $09
    nop                                           ; $5a43: $00
    ld d, [hl]                                    ; $5a44: $56
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    rla                                           ; $5a47: $17
    nop                                           ; $5a48: $00
    nop                                           ; $5a49: $00
    inc e                                         ; $5a4a: $1c
    ld c, b                                       ; $5a4b: $48
    nop                                           ; $5a4c: $00
    ld e, a                                       ; $5a4d: $5f
    ld bc, $1500                                  ; $5a4e: $01 $00 $15
    ld d, [hl]                                    ; $5a51: $56
    nop                                           ; $5a52: $00
    inc sp                                        ; $5a53: $33
    ld bc, $5761                                  ; $5a54: $01 $61 $57
    nop                                           ; $5a57: $00
    nop                                           ; $5a58: $00
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    add hl, bc                                    ; $5a5c: $09
    nop                                           ; $5a5d: $00
    dec bc                                        ; $5a5e: $0b
    dec b                                         ; $5a5f: $05
    dec bc                                        ; $5a60: $0b
    nop                                           ; $5a61: $00
    ld d, [hl]                                    ; $5a62: $56
    nop                                           ; $5a63: $00
    nop                                           ; $5a64: $00
    rla                                           ; $5a65: $17
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    inc e                                         ; $5a68: $1c
    ld c, b                                       ; $5a69: $48
    nop                                           ; $5a6a: $00
    ld e, a                                       ; $5a6b: $5f
    ld bc, $1500                                  ; $5a6c: $01 $00 $15
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    inc sp                                        ; $5a71: $33
    inc bc                                        ; $5a72: $03
    ld [hl], c                                    ; $5a73: $71
    dec d                                         ; $5a74: $15
    ld d, [hl]                                    ; $5a75: $56
    nop                                           ; $5a76: $00
    inc sp                                        ; $5a77: $33
    inc bc                                        ; $5a78: $03
    ld a, d                                       ; $5a79: $7a
    ld d, a                                       ; $5a7a: $57
    nop                                           ; $5a7b: $00
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    add hl, bc                                    ; $5a80: $09
    nop                                           ; $5a81: $00
    ld e, h                                       ; $5a82: $5c
    dec b                                         ; $5a83: $05
    dec bc                                        ; $5a84: $0b
    nop                                           ; $5a85: $00
    ld d, [hl]                                    ; $5a86: $56
    nop                                           ; $5a87: $00
    nop                                           ; $5a88: $00
    rla                                           ; $5a89: $17
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    inc e                                         ; $5a8c: $1c
    ld c, b                                       ; $5a8d: $48
    nop                                           ; $5a8e: $00
    ld e, a                                       ; $5a8f: $5f
    ld bc, $1500                                  ; $5a90: $01 $00 $15
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    inc sp                                        ; $5a95: $33
    inc b                                         ; $5a96: $04
    call nc, Call_00b_5615                        ; $5a97: $d4 $15 $56
    nop                                           ; $5a9a: $00
    inc sp                                        ; $5a9b: $33
    inc b                                         ; $5a9c: $04
    db $e3                                        ; $5a9d: $e3
    ld d, a                                       ; $5a9e: $57
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    add hl, bc                                    ; $5aa4: $09
    nop                                           ; $5aa5: $00
    db $10                                        ; $5aa6: $10
    dec b                                         ; $5aa7: $05
    dec bc                                        ; $5aa8: $0b
    nop                                           ; $5aa9: $00
    ld d, [hl]                                    ; $5aaa: $56
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    rla                                           ; $5aad: $17
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    inc e                                         ; $5ab0: $1c
    ld c, b                                       ; $5ab1: $48
    nop                                           ; $5ab2: $00
    ld e, a                                       ; $5ab3: $5f
    ld bc, $1500                                  ; $5ab4: $01 $00 $15
    nop                                           ; $5ab7: $00
    nop                                           ; $5ab8: $00
    inc sp                                        ; $5ab9: $33
    ld [bc], a                                    ; $5aba: $02
    ld b, l                                       ; $5abb: $45
    dec d                                         ; $5abc: $15
    ld d, [hl]                                    ; $5abd: $56
    nop                                           ; $5abe: $00
    inc sp                                        ; $5abf: $33
    ld [bc], a                                    ; $5ac0: $02
    sbc e                                         ; $5ac1: $9b
    ld d, a                                       ; $5ac2: $57
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    add hl, bc                                    ; $5ac8: $09
    nop                                           ; $5ac9: $00
    ld de, $0b05                                  ; $5aca: $11 $05 $0b
    nop                                           ; $5acd: $00
    ld d, [hl]                                    ; $5ace: $56
    nop                                           ; $5acf: $00
    nop                                           ; $5ad0: $00
    rla                                           ; $5ad1: $17
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    inc e                                         ; $5ad4: $1c
    ld c, b                                       ; $5ad5: $48
    nop                                           ; $5ad6: $00
    ld e, a                                       ; $5ad7: $5f
    ld bc, $1500                                  ; $5ad8: $01 $00 $15
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    inc sp                                        ; $5add: $33
    ld [bc], a                                    ; $5ade: $02
    ld b, l                                       ; $5adf: $45
    dec d                                         ; $5ae0: $15
    ld d, [hl]                                    ; $5ae1: $56
    nop                                           ; $5ae2: $00
    inc sp                                        ; $5ae3: $33
    ld [bc], a                                    ; $5ae4: $02
    sbc e                                         ; $5ae5: $9b
    ld d, a                                       ; $5ae6: $57
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    add hl, bc                                    ; $5aec: $09
    nop                                           ; $5aed: $00
    ccf                                           ; $5aee: $3f
    dec b                                         ; $5aef: $05
    add hl, bc                                    ; $5af0: $09
    nop                                           ; $5af1: $00
    ld d, [hl]                                    ; $5af2: $56
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    rla                                           ; $5af5: $17
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    inc e                                         ; $5af8: $1c
    ld c, b                                       ; $5af9: $48
    nop                                           ; $5afa: $00
    ld e, a                                       ; $5afb: $5f
    ld bc, $1500                                  ; $5afc: $01 $00 $15
    ld d, [hl]                                    ; $5aff: $56
    nop                                           ; $5b00: $00
    inc sp                                        ; $5b01: $33
    add hl, bc                                    ; $5b02: $09
    xor $57                                       ; $5b03: $ee $57
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    add hl, bc                                    ; $5b0a: $09
    nop                                           ; $5b0b: $00
    dec a                                         ; $5b0c: $3d
    dec b                                         ; $5b0d: $05
    add hl, bc                                    ; $5b0e: $09
    nop                                           ; $5b0f: $00
    ld d, [hl]                                    ; $5b10: $56
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    rla                                           ; $5b13: $17
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    inc e                                         ; $5b16: $1c
    ld c, b                                       ; $5b17: $48
    nop                                           ; $5b18: $00
    ld e, a                                       ; $5b19: $5f
    ld bc, $1500                                  ; $5b1a: $01 $00 $15
    ld d, [hl]                                    ; $5b1d: $56
    nop                                           ; $5b1e: $00
    inc sp                                        ; $5b1f: $33
    dec bc                                        ; $5b20: $0b
    ld h, h                                       ; $5b21: $64
    ld d, a                                       ; $5b22: $57
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    add hl, bc                                    ; $5b28: $09
    nop                                           ; $5b29: $00
    ld d, h                                       ; $5b2a: $54
    dec b                                         ; $5b2b: $05
    add hl, bc                                    ; $5b2c: $09
    nop                                           ; $5b2d: $00
    ld d, [hl]                                    ; $5b2e: $56
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    rla                                           ; $5b31: $17
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    inc e                                         ; $5b34: $1c
    ld c, b                                       ; $5b35: $48
    nop                                           ; $5b36: $00
    ld e, a                                       ; $5b37: $5f
    ld bc, $1500                                  ; $5b38: $01 $00 $15
    ld d, [hl]                                    ; $5b3b: $56
    nop                                           ; $5b3c: $00
    inc sp                                        ; $5b3d: $33
    ld bc, $5761                                  ; $5b3e: $01 $61 $57
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    add hl, bc                                    ; $5b46: $09
    nop                                           ; $5b47: $00
    ld e, e                                       ; $5b48: $5b
    dec b                                         ; $5b49: $05
    add hl, bc                                    ; $5b4a: $09
    nop                                           ; $5b4b: $00
    ld d, [hl]                                    ; $5b4c: $56
    nop                                           ; $5b4d: $00
    nop                                           ; $5b4e: $00
    rla                                           ; $5b4f: $17
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    inc e                                         ; $5b52: $1c
    ld c, b                                       ; $5b53: $48
    nop                                           ; $5b54: $00
    ld e, a                                       ; $5b55: $5f
    ld bc, $1500                                  ; $5b56: $01 $00 $15
    ld d, [hl]                                    ; $5b59: $56
    nop                                           ; $5b5a: $00
    inc sp                                        ; $5b5b: $33
    dec bc                                        ; $5b5c: $0b
    ld h, h                                       ; $5b5d: $64
    ld d, a                                       ; $5b5e: $57
    nop                                           ; $5b5f: $00
    nop                                           ; $5b60: $00
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    ld e, a                                       ; $5b64: $5f
    ld bc, $0000                                  ; $5b65: $01 $00 $00
    nop                                           ; $5b68: $00
    nop                                           ; $5b69: $00
    ld e, a                                       ; $5b6a: $5f
    nop                                           ; $5b6b: $00
    nop                                           ; $5b6c: $00
    add hl, bc                                    ; $5b6d: $09
    nop                                           ; $5b6e: $00
    ld de, $0d05                                  ; $5b6f: $11 $05 $0d
    nop                                           ; $5b72: $00
    ld d, [hl]                                    ; $5b73: $56
    nop                                           ; $5b74: $00
    nop                                           ; $5b75: $00
    rla                                           ; $5b76: $17
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    inc e                                         ; $5b79: $1c
    ld c, l                                       ; $5b7a: $4d
    nop                                           ; $5b7b: $00
    ld e, a                                       ; $5b7c: $5f
    ld bc, $1500                                  ; $5b7d: $01 $00 $15
    add hl, sp                                    ; $5b80: $39
    nop                                           ; $5b81: $00
    inc sp                                        ; $5b82: $33
    ld [bc], a                                    ; $5b83: $02
    ld c, h                                       ; $5b84: $4c
    dec d                                         ; $5b85: $15
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    inc sp                                        ; $5b88: $33
    ld [bc], a                                    ; $5b89: $02
    ld c, l                                       ; $5b8a: $4d
    dec d                                         ; $5b8b: $15
    add hl, sp                                    ; $5b8c: $39
    nop                                           ; $5b8d: $00
    inc sp                                        ; $5b8e: $33
    ld [bc], a                                    ; $5b8f: $02
    ld c, [hl]                                    ; $5b90: $4e
    ld d, a                                       ; $5b91: $57
    nop                                           ; $5b92: $00
    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    nop                                           ; $5b95: $00
    nop                                           ; $5b96: $00
    add hl, bc                                    ; $5b97: $09
    nop                                           ; $5b98: $00
    ld e, b                                       ; $5b99: $58
    dec b                                         ; $5b9a: $05
    ld [$5f00], sp                                ; $5b9b: $08 $00 $5f
    ld bc, $0900                                  ; $5b9e: $01 $00 $09
    add hl, bc                                    ; $5ba1: $09
    nop                                           ; $5ba2: $00
    dec b                                         ; $5ba3: $05
    dec b                                         ; $5ba4: $05
    nop                                           ; $5ba5: $00
    dec d                                         ; $5ba6: $15
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    inc sp                                        ; $5ba9: $33
    inc b                                         ; $5baa: $04
    dec d                                         ; $5bab: $15
    dec d                                         ; $5bac: $15
    add hl, sp                                    ; $5bad: $39
    nop                                           ; $5bae: $00
    inc sp                                        ; $5baf: $33
    inc b                                         ; $5bb0: $04
    ld d, $5f                                     ; $5bb1: $16 $5f
    ld bc, $0000                                  ; $5bb3: $01 $00 $00
    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    ld e, a                                       ; $5bb8: $5f
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    add hl, bc                                    ; $5bbb: $09
    nop                                           ; $5bbc: $00
    ld d, e                                       ; $5bbd: $53
    dec b                                         ; $5bbe: $05
    ld [bc], a                                    ; $5bbf: $02
    nop                                           ; $5bc0: $00
    ld a, d                                       ; $5bc1: $7a
    nop                                           ; $5bc2: $00
    nop                                           ; $5bc3: $00
    add hl, bc                                    ; $5bc4: $09
    nop                                           ; $5bc5: $00
    ld de, $0205                                  ; $5bc6: $11 $05 $02
    nop                                           ; $5bc9: $00
    ld a, d                                       ; $5bca: $7a
    nop                                           ; $5bcb: $00
    nop                                           ; $5bcc: $00
    add hl, bc                                    ; $5bcd: $09
    nop                                           ; $5bce: $00
    ld d, h                                       ; $5bcf: $54
    dec b                                         ; $5bd0: $05
    ld [bc], a                                    ; $5bd1: $02
    nop                                           ; $5bd2: $00
    ld a, d                                       ; $5bd3: $7a
    nop                                           ; $5bd4: $00
    nop                                           ; $5bd5: $00
    add hl, bc                                    ; $5bd6: $09
    nop                                           ; $5bd7: $00
    ld h, $05                                     ; $5bd8: $26 $05
    ld hl, $1300                                  ; $5bda: $21 $00 $13
    rst $38                                       ; $5bdd: $ff
    db $ec                                        ; $5bde: $ec
    inc d                                         ; $5bdf: $14
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    dec d                                         ; $5be2: $15
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    ld d, $37                                     ; $5be5: $16 $37
    ld bc, $0052                                  ; $5be7: $01 $52 $00
    nop                                           ; $5bea: $00
    dec de                                        ; $5beb: $1b
    inc b                                         ; $5bec: $04
    nop                                           ; $5bed: $00
    inc de                                        ; $5bee: $13
    nop                                           ; $5bef: $00
    inc d                                         ; $5bf0: $14
    inc d                                         ; $5bf1: $14
    nop                                           ; $5bf2: $00
    nop                                           ; $5bf3: $00
    dec d                                         ; $5bf4: $15
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    ld d, $38                                     ; $5bf7: $16 $38
    ld bc, $0052                                  ; $5bf9: $01 $52 $00
    nop                                           ; $5bfc: $00
    dec de                                        ; $5bfd: $1b
    inc b                                         ; $5bfe: $04
    nop                                           ; $5bff: $00
    inc de                                        ; $5c00: $13
    nop                                           ; $5c01: $00
    nop                                           ; $5c02: $00
    inc d                                         ; $5c03: $14
    nop                                           ; $5c04: $00
    inc d                                         ; $5c05: $14
    dec d                                         ; $5c06: $15
    nop                                           ; $5c07: $00
    nop                                           ; $5c08: $00
    ld d, $39                                     ; $5c09: $16 $39
    ld bc, $0052                                  ; $5c0b: $01 $52 $00
    nop                                           ; $5c0e: $00
    dec de                                        ; $5c0f: $1b
    inc b                                         ; $5c10: $04
    nop                                           ; $5c11: $00
    inc de                                        ; $5c12: $13
    nop                                           ; $5c13: $00
    ld e, [hl]                                    ; $5c14: $5e
    inc d                                         ; $5c15: $14
    ld bc, $152e                                  ; $5c16: $01 $2e $15
    inc c                                         ; $5c19: $0c
    nop                                           ; $5c1a: $00
    ld d, $2d                                     ; $5c1b: $16 $2d
    nop                                           ; $5c1d: $00
    ld d, d                                       ; $5c1e: $52
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    dec de                                        ; $5c21: $1b
    inc b                                         ; $5c22: $04
    nop                                           ; $5c23: $00
    ld e, a                                       ; $5c24: $5f
    ld bc, $1700                                  ; $5c25: $01 $00 $17
    add hl, sp                                    ; $5c28: $39
    nop                                           ; $5c29: $00
    ld [hl+], a                                   ; $5c2a: $22
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    rla                                           ; $5c2d: $17
    scf                                           ; $5c2e: $37
    nop                                           ; $5c2f: $00
    ld [hl+], a                                   ; $5c30: $22
    add hl, sp                                    ; $5c31: $39
    nop                                           ; $5c32: $00
    rla                                           ; $5c33: $17
    jr c, jr_00b_5c36                             ; $5c34: $38 $00

jr_00b_5c36:
    ld [hl+], a                                   ; $5c36: $22
    scf                                           ; $5c37: $37
    nop                                           ; $5c38: $00
    nop                                           ; $5c39: $00
    nop                                           ; $5c3a: $00
    nop                                           ; $5c3b: $00
    add hl, bc                                    ; $5c3c: $09
    nop                                           ; $5c3d: $00
    daa                                           ; $5c3e: $27
    dec b                                         ; $5c3f: $05
    dec h                                         ; $5c40: $25
    nop                                           ; $5c41: $00
    add hl, bc                                    ; $5c42: $09
    inc c                                         ; $5c43: $0c
    nop                                           ; $5c44: $00
    dec b                                         ; $5c45: $05
    inc bc                                        ; $5c46: $03
    nop                                           ; $5c47: $00
    ld e, a                                       ; $5c48: $5f
    ld bc, $0000                                  ; $5c49: $01 $00 $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    inc de                                        ; $5c4e: $13
    rst $38                                       ; $5c4f: $ff
    db $ec                                        ; $5c50: $ec
    inc d                                         ; $5c51: $14
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    dec d                                         ; $5c54: $15
    nop                                           ; $5c55: $00
    nop                                           ; $5c56: $00
    ld d, $37                                     ; $5c57: $16 $37
    ld bc, $0052                                  ; $5c59: $01 $52 $00
    nop                                           ; $5c5c: $00
    dec de                                        ; $5c5d: $1b
    inc b                                         ; $5c5e: $04
    nop                                           ; $5c5f: $00
    inc de                                        ; $5c60: $13
    nop                                           ; $5c61: $00
    inc d                                         ; $5c62: $14
    inc d                                         ; $5c63: $14
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    dec d                                         ; $5c66: $15
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    ld d, $38                                     ; $5c69: $16 $38
    ld bc, $0052                                  ; $5c6b: $01 $52 $00
    nop                                           ; $5c6e: $00
    dec de                                        ; $5c6f: $1b
    inc b                                         ; $5c70: $04
    nop                                           ; $5c71: $00
    inc de                                        ; $5c72: $13
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    inc d                                         ; $5c75: $14
    nop                                           ; $5c76: $00
    inc d                                         ; $5c77: $14
    dec d                                         ; $5c78: $15
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    ld d, $39                                     ; $5c7b: $16 $39
    ld bc, $0052                                  ; $5c7d: $01 $52 $00
    nop                                           ; $5c80: $00
    dec de                                        ; $5c81: $1b
    inc b                                         ; $5c82: $04
    nop                                           ; $5c83: $00
    inc de                                        ; $5c84: $13
    nop                                           ; $5c85: $00
    ld e, [hl]                                    ; $5c86: $5e
    inc d                                         ; $5c87: $14
    ld bc, $152e                                  ; $5c88: $01 $2e $15
    inc c                                         ; $5c8b: $0c
    nop                                           ; $5c8c: $00
    ld d, $2d                                     ; $5c8d: $16 $2d
    nop                                           ; $5c8f: $00
    ld d, d                                       ; $5c90: $52
    nop                                           ; $5c91: $00
    nop                                           ; $5c92: $00
    dec de                                        ; $5c93: $1b
    inc b                                         ; $5c94: $04
    nop                                           ; $5c95: $00
    ld e, a                                       ; $5c96: $5f
    ld bc, $1700                                  ; $5c97: $01 $00 $17
    add hl, sp                                    ; $5c9a: $39
    nop                                           ; $5c9b: $00
    ld [hl+], a                                   ; $5c9c: $22
    nop                                           ; $5c9d: $00
    nop                                           ; $5c9e: $00
    rla                                           ; $5c9f: $17
    scf                                           ; $5ca0: $37
    nop                                           ; $5ca1: $00
    ld [hl+], a                                   ; $5ca2: $22
    add hl, sp                                    ; $5ca3: $39
    nop                                           ; $5ca4: $00
    rla                                           ; $5ca5: $17
    jr c, jr_00b_5ca8                             ; $5ca6: $38 $00

jr_00b_5ca8:
    ld [hl+], a                                   ; $5ca8: $22
    scf                                           ; $5ca9: $37
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    nop                                           ; $5cac: $00
    nop                                           ; $5cad: $00
    add hl, bc                                    ; $5cae: $09
    nop                                           ; $5caf: $00
    ld b, e                                       ; $5cb0: $43
    dec b                                         ; $5cb1: $05
    ld a, [de]                                    ; $5cb2: $1a
    nop                                           ; $5cb3: $00
    ld a, [bc]                                    ; $5cb4: $0a
    dec b                                         ; $5cb5: $05
    add hl, bc                                    ; $5cb6: $09
    dec b                                         ; $5cb7: $05
    ld d, $00                                     ; $5cb8: $16 $00
    add hl, bc                                    ; $5cba: $09
    ld [$0500], sp                                ; $5cbb: $08 $00 $05
    inc d                                         ; $5cbe: $14
    nop                                           ; $5cbf: $00
    ld d, [hl]                                    ; $5cc0: $56
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    inc de                                        ; $5cc3: $13
    nop                                           ; $5cc4: $00
    scf                                           ; $5cc5: $37
    inc d                                         ; $5cc6: $14
    ld bc, $15ae                                  ; $5cc7: $01 $ae $15
    nop                                           ; $5cca: $00
    nop                                           ; $5ccb: $00
    ld d, $16                                     ; $5ccc: $16 $16
    nop                                           ; $5cce: $00
    ld d, d                                       ; $5ccf: $52
    nop                                           ; $5cd0: $00
    nop                                           ; $5cd1: $00
    ld e, a                                       ; $5cd2: $5f
    ld bc, $5e00                                  ; $5cd3: $01 $00 $5e
    ld bc, $1500                                  ; $5cd6: $01 $00 $15
    inc b                                         ; $5cd9: $04
    nop                                           ; $5cda: $00
    add hl, de                                    ; $5cdb: $19
    nop                                           ; $5cdc: $00
    ld l, [hl]                                    ; $5cdd: $6e
    dec de                                        ; $5cde: $1b
    ld [bc], a                                    ; $5cdf: $02
    nop                                           ; $5ce0: $00
    dec d                                         ; $5ce1: $15
    ld l, $00                                     ; $5ce2: $2e $00
    inc sp                                        ; $5ce4: $33
    rlca                                          ; $5ce5: $07
    jp c, Jump_000_0015                           ; $5ce6: $da $15 $00

    nop                                           ; $5ce9: $00
    add hl, de                                    ; $5cea: $19
    nop                                           ; $5ceb: $00
    ld l, [hl]                                    ; $5cec: $6e
    ld e, $16                                     ; $5ced: $1e $16
    nop                                           ; $5cef: $00
    ld d, a                                       ; $5cf0: $57
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    rrca                                          ; $5cf3: $0f
    ld [$0001], sp                                ; $5cf4: $08 $01 $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    ld e, a                                       ; $5cf9: $5f
    ld bc, $0000                                  ; $5cfa: $01 $00 $00
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    add hl, bc                                    ; $5cff: $09
    nop                                           ; $5d00: $00
    add hl, sp                                    ; $5d01: $39
    dec b                                         ; $5d02: $05
    add hl, bc                                    ; $5d03: $09
    nop                                           ; $5d04: $00
    inc de                                        ; $5d05: $13
    nop                                           ; $5d06: $00
    sbc h                                         ; $5d07: $9c
    inc d                                         ; $5d08: $14
    nop                                           ; $5d09: $00
    rst $30                                       ; $5d0a: $f7
    dec d                                         ; $5d0b: $15
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    ld d, $4a                                     ; $5d0e: $16 $4a
    nop                                           ; $5d10: $00
    ld d, d                                       ; $5d11: $52
    nop                                           ; $5d12: $00
    nop                                           ; $5d13: $00
    dec de                                        ; $5d14: $1b
    inc b                                         ; $5d15: $04
    nop                                           ; $5d16: $00
    ld e, a                                       ; $5d17: $5f
    ld bc, $0000                                  ; $5d18: $01 $00 $00
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    add hl, bc                                    ; $5d1d: $09
    nop                                           ; $5d1e: $00
    ld c, b                                       ; $5d1f: $48
    dec b                                         ; $5d20: $05
    inc de                                        ; $5d21: $13
    nop                                           ; $5d22: $00
    inc de                                        ; $5d23: $13
    rst $38                                       ; $5d24: $ff
    db $ec                                        ; $5d25: $ec
    inc d                                         ; $5d26: $14
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    dec d                                         ; $5d29: $15
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    ld d, $68                                     ; $5d2c: $16 $68
    ld bc, $0052                                  ; $5d2e: $01 $52 $00
    nop                                           ; $5d31: $00
    dec de                                        ; $5d32: $1b
    inc b                                         ; $5d33: $04
    nop                                           ; $5d34: $00
    inc de                                        ; $5d35: $13
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    inc d                                         ; $5d38: $14
    nop                                           ; $5d39: $00
    inc d                                         ; $5d3a: $14
    dec d                                         ; $5d3b: $15
    nop                                           ; $5d3c: $00
    nop                                           ; $5d3d: $00
    ld d, $69                                     ; $5d3e: $16 $69
    ld bc, $0052                                  ; $5d40: $01 $52 $00
    nop                                           ; $5d43: $00
    dec de                                        ; $5d44: $1b
    inc b                                         ; $5d45: $04
    nop                                           ; $5d46: $00
    ld e, a                                       ; $5d47: $5f
    ld bc, $1700                                  ; $5d48: $01 $00 $17
    ld l, c                                       ; $5d4b: $69
    nop                                           ; $5d4c: $00
    ld [hl+], a                                   ; $5d4d: $22
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    rla                                           ; $5d50: $17
    ld l, b                                       ; $5d51: $68
    nop                                           ; $5d52: $00
    ld [hl+], a                                   ; $5d53: $22
    ld l, c                                       ; $5d54: $69
    nop                                           ; $5d55: $00
    nop                                           ; $5d56: $00
    nop                                           ; $5d57: $00
    nop                                           ; $5d58: $00
    add hl, bc                                    ; $5d59: $09
    nop                                           ; $5d5a: $00
    ld e, b                                       ; $5d5b: $58
    dec b                                         ; $5d5c: $05
    inc bc                                        ; $5d5d: $03
    nop                                           ; $5d5e: $00
    ld e, a                                       ; $5d5f: $5f
    ld bc, $0000                                  ; $5d60: $01 $00 $00
    nop                                           ; $5d63: $00
    nop                                           ; $5d64: $00
    add hl, bc                                    ; $5d65: $09
    nop                                           ; $5d66: $00
    scf                                           ; $5d67: $37
    dec b                                         ; $5d68: $05
    inc bc                                        ; $5d69: $03
    nop                                           ; $5d6a: $00
    ld e, a                                       ; $5d6b: $5f
    ld bc, $0000                                  ; $5d6c: $01 $00 $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    add hl, bc                                    ; $5d71: $09
    nop                                           ; $5d72: $00
    ld e, d                                       ; $5d73: $5a
    dec b                                         ; $5d74: $05
    inc bc                                        ; $5d75: $03
    nop                                           ; $5d76: $00
    ld e, a                                       ; $5d77: $5f
    ld bc, $0000                                  ; $5d78: $01 $00 $00
    nop                                           ; $5d7b: $00
    nop                                           ; $5d7c: $00
    add hl, bc                                    ; $5d7d: $09
    nop                                           ; $5d7e: $00
    inc [hl]                                      ; $5d7f: $34
    dec b                                         ; $5d80: $05
    inc bc                                        ; $5d81: $03
    nop                                           ; $5d82: $00
    ld e, a                                       ; $5d83: $5f
    ld bc, $0000                                  ; $5d84: $01 $00 $00
    nop                                           ; $5d87: $00
    nop                                           ; $5d88: $00
    add hl, bc                                    ; $5d89: $09
    nop                                           ; $5d8a: $00
    ld b, c                                       ; $5d8b: $41
    dec b                                         ; $5d8c: $05
    inc bc                                        ; $5d8d: $03
    nop                                           ; $5d8e: $00
    ld e, a                                       ; $5d8f: $5f
    ld bc, $0000                                  ; $5d90: $01 $00 $00
    nop                                           ; $5d93: $00
    nop                                           ; $5d94: $00
    ld e, a                                       ; $5d95: $5f
    nop                                           ; $5d96: $00
    nop                                           ; $5d97: $00
    inc de                                        ; $5d98: $13
    nop                                           ; $5d99: $00
    ld a, l                                       ; $5d9a: $7d
    inc d                                         ; $5d9b: $14
    nop                                           ; $5d9c: $00
    dec a                                         ; $5d9d: $3d
    dec d                                         ; $5d9e: $15
    inc bc                                        ; $5d9f: $03
    nop                                           ; $5da0: $00
    ld d, $47                                     ; $5da1: $16 $47
    nop                                           ; $5da3: $00
    ld d, d                                       ; $5da4: $52
    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    inc de                                        ; $5da7: $13
    ld bc, $140b                                  ; $5da8: $01 $0b $14
    ld bc, $152c                                  ; $5dab: $01 $2c $15
    dec b                                         ; $5dae: $05
    nop                                           ; $5daf: $00
    ld d, $43                                     ; $5db0: $16 $43
    nop                                           ; $5db2: $00
    ld d, d                                       ; $5db3: $52
    nop                                           ; $5db4: $00
    nop                                           ; $5db5: $00
    dec de                                        ; $5db6: $1b
    ld b, $00                                     ; $5db7: $06 $00
    inc de                                        ; $5db9: $13
    ld bc, $1407                                  ; $5dba: $01 $07 $14
    ld bc, $159e                                  ; $5dbd: $01 $9e $15
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    ld d, $48                                     ; $5dc2: $16 $48
    nop                                           ; $5dc4: $00
    ld d, d                                       ; $5dc5: $52
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00
    dec de                                        ; $5dc8: $1b
    ld b, $00                                     ; $5dc9: $06 $00
    inc de                                        ; $5dcb: $13
    nop                                           ; $5dcc: $00
    ld c, h                                       ; $5dcd: $4c
    inc d                                         ; $5dce: $14
    ld bc, $1563                                  ; $5dcf: $01 $63 $15
    inc b                                         ; $5dd2: $04
    nop                                           ; $5dd3: $00
    ld d, $41                                     ; $5dd4: $16 $41
    nop                                           ; $5dd6: $00
    ld d, d                                       ; $5dd7: $52
    nop                                           ; $5dd8: $00
    nop                                           ; $5dd9: $00
    add hl, bc                                    ; $5dda: $09
    nop                                           ; $5ddb: $00
    ld d, h                                       ; $5ddc: $54
    dec b                                         ; $5ddd: $05
    ld c, $00                                     ; $5dde: $0e $00
    ld a, d                                       ; $5de0: $7a
    nop                                           ; $5de1: $00
    nop                                           ; $5de2: $00
    add hl, bc                                    ; $5de3: $09
    inc c                                         ; $5de4: $0c
    ld bc, $0305                                  ; $5de5: $01 $05 $03
    nop                                           ; $5de8: $00
    ld e, a                                       ; $5de9: $5f
    ld bc, $0000                                  ; $5dea: $01 $00 $00
    nop                                           ; $5ded: $00
    nop                                           ; $5dee: $00
    inc de                                        ; $5def: $13
    nop                                           ; $5df0: $00
    ld b, c                                       ; $5df1: $41
    inc d                                         ; $5df2: $14
    nop                                           ; $5df3: $00
    ld d, a                                       ; $5df4: $57
    dec d                                         ; $5df5: $15
    nop                                           ; $5df6: $00
    nop                                           ; $5df7: $00
    ld d, $4d                                     ; $5df8: $16 $4d
    nop                                           ; $5dfa: $00
    ld d, d                                       ; $5dfb: $52
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    dec de                                        ; $5dfe: $1b
    inc b                                         ; $5dff: $04
    nop                                           ; $5e00: $00
    ld e, a                                       ; $5e01: $5f
    ld bc, $0000                                  ; $5e02: $01 $00 $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    add hl, bc                                    ; $5e07: $09
    nop                                           ; $5e08: $00
    ld de, $0305                                  ; $5e09: $11 $05 $03
    nop                                           ; $5e0c: $00
    ld a, d                                       ; $5e0d: $7a
    nop                                           ; $5e0e: $00
    nop                                           ; $5e0f: $00
    inc bc                                        ; $5e10: $03
    ld b, $00                                     ; $5e11: $06 $00
    add hl, bc                                    ; $5e13: $09
    nop                                           ; $5e14: $00
    rrca                                          ; $5e15: $0f
    dec b                                         ; $5e16: $05
    ld [bc], a                                    ; $5e17: $02
    nop                                           ; $5e18: $00
    inc bc                                        ; $5e19: $03
    inc bc                                        ; $5e1a: $03
    nop                                           ; $5e1b: $00
    ld e, a                                       ; $5e1c: $5f
    ld bc, $0000                                  ; $5e1d: $01 $00 $00
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    inc de                                        ; $5e22: $13
    nop                                           ; $5e23: $00
    cp h                                          ; $5e24: $bc
    inc d                                         ; $5e25: $14
    nop                                           ; $5e26: $00
    inc [hl]                                      ; $5e27: $34
    dec d                                         ; $5e28: $15
    nop                                           ; $5e29: $00
    nop                                           ; $5e2a: $00
    ld d, $4d                                     ; $5e2b: $16 $4d
    nop                                           ; $5e2d: $00
    ld d, d                                       ; $5e2e: $52
    nop                                           ; $5e2f: $00
    nop                                           ; $5e30: $00
    dec de                                        ; $5e31: $1b
    inc b                                         ; $5e32: $04
    nop                                           ; $5e33: $00
    ld e, a                                       ; $5e34: $5f
    ld bc, $0000                                  ; $5e35: $01 $00 $00
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    ld e, a                                       ; $5e3a: $5f
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    add hl, bc                                    ; $5e3d: $09
    nop                                           ; $5e3e: $00
    add hl, bc                                    ; $5e3f: $09
    dec b                                         ; $5e40: $05
    dec bc                                        ; $5e41: $0b
    nop                                           ; $5e42: $00
    ld d, [hl]                                    ; $5e43: $56
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    rla                                           ; $5e46: $17
    nop                                           ; $5e47: $00
    nop                                           ; $5e48: $00
    inc e                                         ; $5e49: $1c
    ld b, a                                       ; $5e4a: $47
    inc bc                                        ; $5e4b: $03
    ld e, a                                       ; $5e4c: $5f
    ld bc, $1500                                  ; $5e4d: $01 $00 $15
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    inc sp                                        ; $5e52: $33
    ld [bc], a                                    ; $5e53: $02
    nop                                           ; $5e54: $00
    dec d                                         ; $5e55: $15
    ld d, l                                       ; $5e56: $55
    nop                                           ; $5e57: $00
    inc sp                                        ; $5e58: $33
    ld bc, $57fd                                  ; $5e59: $01 $fd $57
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    add hl, bc                                    ; $5e61: $09
    nop                                           ; $5e62: $00
    ld d, e                                       ; $5e63: $53
    dec b                                         ; $5e64: $05
    add hl, bc                                    ; $5e65: $09
    nop                                           ; $5e66: $00
    ld d, [hl]                                    ; $5e67: $56
    nop                                           ; $5e68: $00
    nop                                           ; $5e69: $00
    rla                                           ; $5e6a: $17
    nop                                           ; $5e6b: $00
    nop                                           ; $5e6c: $00
    inc e                                         ; $5e6d: $1c
    ld b, a                                       ; $5e6e: $47
    inc bc                                        ; $5e6f: $03
    ld e, a                                       ; $5e70: $5f
    ld bc, $1500                                  ; $5e71: $01 $00 $15
    ld d, l                                       ; $5e74: $55
    nop                                           ; $5e75: $00
    inc sp                                        ; $5e76: $33
    ld [bc], a                                    ; $5e77: $02
    ld [hl+], a                                   ; $5e78: $22
    ld d, a                                       ; $5e79: $57
    nop                                           ; $5e7a: $00
    nop                                           ; $5e7b: $00
    nop                                           ; $5e7c: $00
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    add hl, bc                                    ; $5e7f: $09
    nop                                           ; $5e80: $00
    ld b, $05                                     ; $5e81: $06 $05
    add hl, bc                                    ; $5e83: $09
    nop                                           ; $5e84: $00
    ld d, [hl]                                    ; $5e85: $56
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    rla                                           ; $5e88: $17
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    inc e                                         ; $5e8b: $1c
    ld b, a                                       ; $5e8c: $47
    inc bc                                        ; $5e8d: $03
    ld e, a                                       ; $5e8e: $5f
    ld bc, $1500                                  ; $5e8f: $01 $00 $15
    ld d, l                                       ; $5e92: $55
    nop                                           ; $5e93: $00
    inc sp                                        ; $5e94: $33
    ld bc, $575f                                  ; $5e95: $01 $5f $57
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    nop                                           ; $5e9b: $00
    nop                                           ; $5e9c: $00
    add hl, bc                                    ; $5e9d: $09
    nop                                           ; $5e9e: $00
    rlca                                          ; $5e9f: $07
    dec b                                         ; $5ea0: $05
    add hl, bc                                    ; $5ea1: $09
    nop                                           ; $5ea2: $00
    ld d, [hl]                                    ; $5ea3: $56
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    rla                                           ; $5ea6: $17
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    inc e                                         ; $5ea9: $1c
    ld b, a                                       ; $5eaa: $47
    inc bc                                        ; $5eab: $03
    ld e, a                                       ; $5eac: $5f
    ld bc, $1500                                  ; $5ead: $01 $00 $15
    ld d, l                                       ; $5eb0: $55
    nop                                           ; $5eb1: $00
    inc sp                                        ; $5eb2: $33
    ld bc, $575f                                  ; $5eb3: $01 $5f $57
    nop                                           ; $5eb6: $00
    nop                                           ; $5eb7: $00
    nop                                           ; $5eb8: $00
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    add hl, bc                                    ; $5ebb: $09
    nop                                           ; $5ebc: $00
    ld d, d                                       ; $5ebd: $52
    dec b                                         ; $5ebe: $05
    dec bc                                        ; $5ebf: $0b
    nop                                           ; $5ec0: $00
    ld d, [hl]                                    ; $5ec1: $56
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    rla                                           ; $5ec4: $17
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    inc e                                         ; $5ec7: $1c
    ld b, a                                       ; $5ec8: $47
    inc bc                                        ; $5ec9: $03
    ld e, a                                       ; $5eca: $5f
    ld bc, $1500                                  ; $5ecb: $01 $00 $15
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    inc sp                                        ; $5ed0: $33
    ld bc, $1595                                  ; $5ed1: $01 $95 $15
    ld d, l                                       ; $5ed4: $55
    nop                                           ; $5ed5: $00
    inc sp                                        ; $5ed6: $33
    ld a, [bc]                                    ; $5ed7: $0a
    inc d                                         ; $5ed8: $14
    ld d, a                                       ; $5ed9: $57
    nop                                           ; $5eda: $00
    nop                                           ; $5edb: $00
    nop                                           ; $5edc: $00
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    add hl, bc                                    ; $5edf: $09
    nop                                           ; $5ee0: $00
    ld [$0905], sp                                ; $5ee1: $08 $05 $09
    nop                                           ; $5ee4: $00
    ld d, [hl]                                    ; $5ee5: $56
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    rla                                           ; $5ee8: $17
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    inc e                                         ; $5eeb: $1c
    ld b, a                                       ; $5eec: $47
    inc bc                                        ; $5eed: $03
    ld e, a                                       ; $5eee: $5f
    ld bc, $1500                                  ; $5eef: $01 $00 $15
    ld d, l                                       ; $5ef2: $55
    nop                                           ; $5ef3: $00
    inc sp                                        ; $5ef4: $33
    ld bc, $575f                                  ; $5ef5: $01 $5f $57
    nop                                           ; $5ef8: $00
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    nop                                           ; $5efc: $00
    add hl, bc                                    ; $5efd: $09
    nop                                           ; $5efe: $00
    add hl, bc                                    ; $5eff: $09
    dec b                                         ; $5f00: $05
    add hl, bc                                    ; $5f01: $09
    nop                                           ; $5f02: $00
    ld d, [hl]                                    ; $5f03: $56
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    rla                                           ; $5f06: $17
    nop                                           ; $5f07: $00
    nop                                           ; $5f08: $00
    inc e                                         ; $5f09: $1c
    ld b, a                                       ; $5f0a: $47
    inc bc                                        ; $5f0b: $03
    ld e, a                                       ; $5f0c: $5f
    ld bc, $1500                                  ; $5f0d: $01 $00 $15
    ld d, l                                       ; $5f10: $55
    nop                                           ; $5f11: $00
    inc sp                                        ; $5f12: $33
    ld bc, $575f                                  ; $5f13: $01 $5f $57
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    nop                                           ; $5f18: $00
    nop                                           ; $5f19: $00
    nop                                           ; $5f1a: $00
    add hl, bc                                    ; $5f1b: $09
    nop                                           ; $5f1c: $00
    ld d, [hl]                                    ; $5f1d: $56
    dec b                                         ; $5f1e: $05
    add hl, bc                                    ; $5f1f: $09
    nop                                           ; $5f20: $00
    ld d, [hl]                                    ; $5f21: $56
    nop                                           ; $5f22: $00
    nop                                           ; $5f23: $00
    rla                                           ; $5f24: $17
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    inc e                                         ; $5f27: $1c
    ld b, a                                       ; $5f28: $47
    inc bc                                        ; $5f29: $03
    ld e, a                                       ; $5f2a: $5f
    ld bc, $1500                                  ; $5f2b: $01 $00 $15
    ld d, l                                       ; $5f2e: $55
    nop                                           ; $5f2f: $00
    inc sp                                        ; $5f30: $33
    ld bc, $575f                                  ; $5f31: $01 $5f $57
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    add hl, bc                                    ; $5f39: $09
    nop                                           ; $5f3a: $00
    dec bc                                        ; $5f3b: $0b
    dec b                                         ; $5f3c: $05
    dec bc                                        ; $5f3d: $0b
    nop                                           ; $5f3e: $00
    ld d, [hl]                                    ; $5f3f: $56
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    rla                                           ; $5f42: $17
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    inc e                                         ; $5f45: $1c
    ld b, a                                       ; $5f46: $47
    inc bc                                        ; $5f47: $03
    ld e, a                                       ; $5f48: $5f
    ld bc, $1500                                  ; $5f49: $01 $00 $15
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    inc sp                                        ; $5f4e: $33
    inc bc                                        ; $5f4f: $03
    ld [hl], c                                    ; $5f50: $71
    dec d                                         ; $5f51: $15
    ld d, l                                       ; $5f52: $55
    nop                                           ; $5f53: $00
    inc sp                                        ; $5f54: $33
    inc bc                                        ; $5f55: $03
    xor c                                         ; $5f56: $a9
    ld d, a                                       ; $5f57: $57
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    nop                                           ; $5f5c: $00
    add hl, bc                                    ; $5f5d: $09
    nop                                           ; $5f5e: $00
    ld e, h                                       ; $5f5f: $5c
    dec b                                         ; $5f60: $05
    dec bc                                        ; $5f61: $0b
    nop                                           ; $5f62: $00
    ld d, [hl]                                    ; $5f63: $56
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    rla                                           ; $5f66: $17
    nop                                           ; $5f67: $00
    nop                                           ; $5f68: $00
    inc e                                         ; $5f69: $1c
    ld b, a                                       ; $5f6a: $47
    inc bc                                        ; $5f6b: $03
    ld e, a                                       ; $5f6c: $5f
    ld bc, $1500                                  ; $5f6d: $01 $00 $15
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    inc sp                                        ; $5f72: $33
    inc b                                         ; $5f73: $04
    call nc, Call_00b_5515                        ; $5f74: $d4 $15 $55
    nop                                           ; $5f77: $00
    inc sp                                        ; $5f78: $33
    inc b                                         ; $5f79: $04
    db $e4                                        ; $5f7a: $e4
    ld d, a                                       ; $5f7b: $57
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00
    nop                                           ; $5f80: $00
    add hl, bc                                    ; $5f81: $09
    nop                                           ; $5f82: $00
    db $10                                        ; $5f83: $10
    dec b                                         ; $5f84: $05
    dec bc                                        ; $5f85: $0b
    nop                                           ; $5f86: $00
    ld d, [hl]                                    ; $5f87: $56
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    rla                                           ; $5f8a: $17
    nop                                           ; $5f8b: $00
    nop                                           ; $5f8c: $00
    inc e                                         ; $5f8d: $1c
    ld b, a                                       ; $5f8e: $47
    inc bc                                        ; $5f8f: $03
    ld e, a                                       ; $5f90: $5f
    ld bc, $1500                                  ; $5f91: $01 $00 $15
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    inc sp                                        ; $5f96: $33
    ld [bc], a                                    ; $5f97: $02
    ld b, l                                       ; $5f98: $45
    dec d                                         ; $5f99: $15
    ld d, l                                       ; $5f9a: $55
    nop                                           ; $5f9b: $00
    inc sp                                        ; $5f9c: $33
    ld [bc], a                                    ; $5f9d: $02
    sbc d                                         ; $5f9e: $9a
    ld d, a                                       ; $5f9f: $57
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    add hl, bc                                    ; $5fa5: $09
    nop                                           ; $5fa6: $00
    ld de, $0b05                                  ; $5fa7: $11 $05 $0b
    nop                                           ; $5faa: $00
    ld d, [hl]                                    ; $5fab: $56
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    rla                                           ; $5fae: $17
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    inc e                                         ; $5fb1: $1c
    ld b, a                                       ; $5fb2: $47
    inc bc                                        ; $5fb3: $03
    ld e, a                                       ; $5fb4: $5f
    ld bc, $1500                                  ; $5fb5: $01 $00 $15
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    inc sp                                        ; $5fba: $33
    ld [bc], a                                    ; $5fbb: $02
    ld b, l                                       ; $5fbc: $45
    dec d                                         ; $5fbd: $15
    ld d, l                                       ; $5fbe: $55
    nop                                           ; $5fbf: $00
    inc sp                                        ; $5fc0: $33
    ld [bc], a                                    ; $5fc1: $02
    sbc d                                         ; $5fc2: $9a
    ld d, a                                       ; $5fc3: $57
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    add hl, bc                                    ; $5fc9: $09
    nop                                           ; $5fca: $00
    ccf                                           ; $5fcb: $3f
    dec b                                         ; $5fcc: $05
    add hl, bc                                    ; $5fcd: $09
    nop                                           ; $5fce: $00
    ld d, [hl]                                    ; $5fcf: $56
    nop                                           ; $5fd0: $00
    nop                                           ; $5fd1: $00
    rla                                           ; $5fd2: $17
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    inc e                                         ; $5fd5: $1c
    ld b, a                                       ; $5fd6: $47
    inc bc                                        ; $5fd7: $03
    ld e, a                                       ; $5fd8: $5f
    ld bc, $1500                                  ; $5fd9: $01 $00 $15
    ld d, l                                       ; $5fdc: $55
    nop                                           ; $5fdd: $00
    inc sp                                        ; $5fde: $33
    add hl, bc                                    ; $5fdf: $09
    rst $28                                       ; $5fe0: $ef
    ld d, a                                       ; $5fe1: $57
    nop                                           ; $5fe2: $00
    nop                                           ; $5fe3: $00
    nop                                           ; $5fe4: $00
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    add hl, bc                                    ; $5fe7: $09
    nop                                           ; $5fe8: $00
    dec a                                         ; $5fe9: $3d
    dec b                                         ; $5fea: $05
    add hl, bc                                    ; $5feb: $09
    nop                                           ; $5fec: $00
    ld d, [hl]                                    ; $5fed: $56
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    rla                                           ; $5ff0: $17
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    inc e                                         ; $5ff3: $1c
    ld b, a                                       ; $5ff4: $47
    inc bc                                        ; $5ff5: $03
    ld e, a                                       ; $5ff6: $5f
    ld bc, $1500                                  ; $5ff7: $01 $00 $15
    ld d, l                                       ; $5ffa: $55
    nop                                           ; $5ffb: $00
    inc sp                                        ; $5ffc: $33
    dec bc                                        ; $5ffd: $0b
    ld l, a                                       ; $5ffe: $6f
    ld d, a                                       ; $5fff: $57
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    add hl, bc                                    ; $6005: $09
    nop                                           ; $6006: $00
    ld d, h                                       ; $6007: $54
    dec b                                         ; $6008: $05
    add hl, bc                                    ; $6009: $09
    nop                                           ; $600a: $00
    ld d, [hl]                                    ; $600b: $56
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    rla                                           ; $600e: $17
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    inc e                                         ; $6011: $1c
    ld b, a                                       ; $6012: $47
    inc bc                                        ; $6013: $03
    ld e, a                                       ; $6014: $5f
    ld bc, $1500                                  ; $6015: $01 $00 $15
    ld d, l                                       ; $6018: $55
    nop                                           ; $6019: $00
    inc sp                                        ; $601a: $33
    ld [bc], a                                    ; $601b: $02
    ld [hl+], a                                   ; $601c: $22
    ld d, a                                       ; $601d: $57
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    add hl, bc                                    ; $6023: $09
    nop                                           ; $6024: $00
    ld e, e                                       ; $6025: $5b
    dec b                                         ; $6026: $05
    add hl, bc                                    ; $6027: $09
    nop                                           ; $6028: $00
    ld d, [hl]                                    ; $6029: $56
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    rla                                           ; $602c: $17
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    inc e                                         ; $602f: $1c
    ld b, a                                       ; $6030: $47
    inc bc                                        ; $6031: $03
    ld e, a                                       ; $6032: $5f
    ld bc, $1500                                  ; $6033: $01 $00 $15
    ld d, l                                       ; $6036: $55
    nop                                           ; $6037: $00
    inc sp                                        ; $6038: $33
    dec bc                                        ; $6039: $0b
    ld l, d                                       ; $603a: $6a
    ld d, a                                       ; $603b: $57
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00
    ld e, a                                       ; $6041: $5f
    ld bc, $0000                                  ; $6042: $01 $00 $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    ld e, a                                       ; $6047: $5f
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    add hl, bc                                    ; $604a: $09
    nop                                           ; $604b: $00
    ld d, e                                       ; $604c: $53
    dec b                                         ; $604d: $05
    add hl, bc                                    ; $604e: $09
    nop                                           ; $604f: $00
    ld d, [hl]                                    ; $6050: $56
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    rla                                           ; $6053: $17
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    inc e                                         ; $6056: $1c
    ld b, c                                       ; $6057: $41
    inc b                                         ; $6058: $04
    ld e, a                                       ; $6059: $5f
    ld bc, $1500                                  ; $605a: $01 $00 $15
    ld c, a                                       ; $605d: $4f
    nop                                           ; $605e: $00
    inc sp                                        ; $605f: $33
    ld [bc], a                                    ; $6060: $02
    inc hl                                        ; $6061: $23
    ld d, a                                       ; $6062: $57
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    add hl, bc                                    ; $6068: $09
    nop                                           ; $6069: $00
    ld b, $05                                     ; $606a: $06 $05
    add hl, bc                                    ; $606c: $09
    nop                                           ; $606d: $00
    ld d, [hl]                                    ; $606e: $56
    nop                                           ; $606f: $00
    nop                                           ; $6070: $00
    rla                                           ; $6071: $17
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    inc e                                         ; $6074: $1c
    ld b, c                                       ; $6075: $41
    inc b                                         ; $6076: $04
    ld e, a                                       ; $6077: $5f
    ld bc, $1500                                  ; $6078: $01 $00 $15
    ld c, a                                       ; $607b: $4f
    nop                                           ; $607c: $00
    inc sp                                        ; $607d: $33
    ld bc, $575c                                  ; $607e: $01 $5c $57
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    add hl, bc                                    ; $6086: $09
    nop                                           ; $6087: $00
    rlca                                          ; $6088: $07
    dec b                                         ; $6089: $05
    add hl, bc                                    ; $608a: $09
    nop                                           ; $608b: $00
    ld d, [hl]                                    ; $608c: $56
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    rla                                           ; $608f: $17
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    inc e                                         ; $6092: $1c
    ld b, c                                       ; $6093: $41
    inc b                                         ; $6094: $04
    ld e, a                                       ; $6095: $5f
    ld bc, $1500                                  ; $6096: $01 $00 $15
    ld c, a                                       ; $6099: $4f
    nop                                           ; $609a: $00
    inc sp                                        ; $609b: $33
    ld bc, $575c                                  ; $609c: $01 $5c $57
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    add hl, bc                                    ; $60a4: $09
    nop                                           ; $60a5: $00
    ld d, d                                       ; $60a6: $52
    dec b                                         ; $60a7: $05
    add hl, bc                                    ; $60a8: $09
    nop                                           ; $60a9: $00
    ld d, [hl]                                    ; $60aa: $56
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    rla                                           ; $60ad: $17
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    inc e                                         ; $60b0: $1c
    ld b, c                                       ; $60b1: $41
    inc b                                         ; $60b2: $04
    ld e, a                                       ; $60b3: $5f
    ld bc, $1500                                  ; $60b4: $01 $00 $15
    ld c, a                                       ; $60b7: $4f
    nop                                           ; $60b8: $00
    inc sp                                        ; $60b9: $33
    ld bc, $575c                                  ; $60ba: $01 $5c $57
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    add hl, bc                                    ; $60c2: $09
    nop                                           ; $60c3: $00
    ld [$0905], sp                                ; $60c4: $08 $05 $09
    nop                                           ; $60c7: $00
    ld d, [hl]                                    ; $60c8: $56
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    rla                                           ; $60cb: $17
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    inc e                                         ; $60ce: $1c
    ld b, c                                       ; $60cf: $41
    inc b                                         ; $60d0: $04
    ld e, a                                       ; $60d1: $5f
    ld bc, $1500                                  ; $60d2: $01 $00 $15
    ld c, a                                       ; $60d5: $4f
    nop                                           ; $60d6: $00
    inc sp                                        ; $60d7: $33
    ld bc, $575c                                  ; $60d8: $01 $5c $57
    nop                                           ; $60db: $00
    nop                                           ; $60dc: $00
    nop                                           ; $60dd: $00
    nop                                           ; $60de: $00
    nop                                           ; $60df: $00
    add hl, bc                                    ; $60e0: $09
    nop                                           ; $60e1: $00
    add hl, bc                                    ; $60e2: $09
    dec b                                         ; $60e3: $05
    add hl, bc                                    ; $60e4: $09
    nop                                           ; $60e5: $00
    ld d, [hl]                                    ; $60e6: $56
    nop                                           ; $60e7: $00
    nop                                           ; $60e8: $00
    rla                                           ; $60e9: $17
    nop                                           ; $60ea: $00
    nop                                           ; $60eb: $00
    inc e                                         ; $60ec: $1c
    ld b, c                                       ; $60ed: $41
    inc b                                         ; $60ee: $04
    ld e, a                                       ; $60ef: $5f
    ld bc, $1500                                  ; $60f0: $01 $00 $15
    ld c, a                                       ; $60f3: $4f
    nop                                           ; $60f4: $00
    inc sp                                        ; $60f5: $33
    ld bc, $575c                                  ; $60f6: $01 $5c $57
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    nop                                           ; $60fd: $00
    add hl, bc                                    ; $60fe: $09
    nop                                           ; $60ff: $00
    ld d, [hl]                                    ; $6100: $56
    dec b                                         ; $6101: $05
    add hl, bc                                    ; $6102: $09
    nop                                           ; $6103: $00
    ld d, [hl]                                    ; $6104: $56
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    rla                                           ; $6107: $17
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    inc e                                         ; $610a: $1c
    ld b, c                                       ; $610b: $41
    inc b                                         ; $610c: $04
    ld e, a                                       ; $610d: $5f
    ld bc, $1500                                  ; $610e: $01 $00 $15
    ld c, a                                       ; $6111: $4f
    nop                                           ; $6112: $00
    inc sp                                        ; $6113: $33
    ld bc, $575c                                  ; $6114: $01 $5c $57
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    add hl, bc                                    ; $611c: $09
    nop                                           ; $611d: $00
    dec bc                                        ; $611e: $0b
    dec b                                         ; $611f: $05
    dec bc                                        ; $6120: $0b
    nop                                           ; $6121: $00
    ld d, [hl]                                    ; $6122: $56
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    rla                                           ; $6125: $17
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    inc e                                         ; $6128: $1c
    ld b, c                                       ; $6129: $41
    inc b                                         ; $612a: $04
    ld e, a                                       ; $612b: $5f
    ld bc, $1500                                  ; $612c: $01 $00 $15
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    inc sp                                        ; $6131: $33
    inc bc                                        ; $6132: $03
    ld [hl], c                                    ; $6133: $71
    dec d                                         ; $6134: $15
    ld c, a                                       ; $6135: $4f
    nop                                           ; $6136: $00
    inc sp                                        ; $6137: $33
    inc bc                                        ; $6138: $03
    xor d                                         ; $6139: $aa
    ld d, a                                       ; $613a: $57
    nop                                           ; $613b: $00
    nop                                           ; $613c: $00
    nop                                           ; $613d: $00
    nop                                           ; $613e: $00
    nop                                           ; $613f: $00
    add hl, bc                                    ; $6140: $09
    nop                                           ; $6141: $00
    ld e, h                                       ; $6142: $5c
    dec b                                         ; $6143: $05
    dec bc                                        ; $6144: $0b
    nop                                           ; $6145: $00
    ld d, [hl]                                    ; $6146: $56
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    rla                                           ; $6149: $17
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    inc e                                         ; $614c: $1c
    ld b, c                                       ; $614d: $41
    inc b                                         ; $614e: $04
    ld e, a                                       ; $614f: $5f
    ld bc, $1500                                  ; $6150: $01 $00 $15
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    inc sp                                        ; $6155: $33
    inc b                                         ; $6156: $04
    call nc, Call_00b_4f15                        ; $6157: $d4 $15 $4f
    nop                                           ; $615a: $00
    inc sp                                        ; $615b: $33
    inc b                                         ; $615c: $04
    push hl                                       ; $615d: $e5
    ld d, a                                       ; $615e: $57
    nop                                           ; $615f: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    add hl, bc                                    ; $6164: $09
    nop                                           ; $6165: $00
    db $10                                        ; $6166: $10
    dec b                                         ; $6167: $05
    dec bc                                        ; $6168: $0b
    nop                                           ; $6169: $00
    ld d, [hl]                                    ; $616a: $56
    nop                                           ; $616b: $00
    nop                                           ; $616c: $00
    rla                                           ; $616d: $17
    nop                                           ; $616e: $00
    nop                                           ; $616f: $00
    inc e                                         ; $6170: $1c
    ld b, c                                       ; $6171: $41
    inc b                                         ; $6172: $04
    ld e, a                                       ; $6173: $5f
    ld bc, $1500                                  ; $6174: $01 $00 $15
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    inc sp                                        ; $6179: $33
    ld [bc], a                                    ; $617a: $02
    ld b, l                                       ; $617b: $45
    dec d                                         ; $617c: $15
    ld c, a                                       ; $617d: $4f
    nop                                           ; $617e: $00
    inc sp                                        ; $617f: $33
    ld [bc], a                                    ; $6180: $02
    sbc c                                         ; $6181: $99
    ld d, a                                       ; $6182: $57
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    add hl, bc                                    ; $6188: $09
    nop                                           ; $6189: $00
    ld de, $0b05                                  ; $618a: $11 $05 $0b
    nop                                           ; $618d: $00
    ld d, [hl]                                    ; $618e: $56
    nop                                           ; $618f: $00
    nop                                           ; $6190: $00
    rla                                           ; $6191: $17
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    inc e                                         ; $6194: $1c
    ld b, c                                       ; $6195: $41
    inc b                                         ; $6196: $04
    ld e, a                                       ; $6197: $5f
    ld bc, $1500                                  ; $6198: $01 $00 $15
    nop                                           ; $619b: $00
    nop                                           ; $619c: $00
    inc sp                                        ; $619d: $33
    ld [bc], a                                    ; $619e: $02
    ld b, l                                       ; $619f: $45
    dec d                                         ; $61a0: $15
    ld c, a                                       ; $61a1: $4f
    nop                                           ; $61a2: $00
    inc sp                                        ; $61a3: $33
    ld [bc], a                                    ; $61a4: $02
    sbc c                                         ; $61a5: $99
    ld d, a                                       ; $61a6: $57
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    add hl, bc                                    ; $61ac: $09
    nop                                           ; $61ad: $00
    ccf                                           ; $61ae: $3f
    dec b                                         ; $61af: $05
    add hl, bc                                    ; $61b0: $09
    nop                                           ; $61b1: $00
    ld d, [hl]                                    ; $61b2: $56
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    rla                                           ; $61b5: $17
    nop                                           ; $61b6: $00
    nop                                           ; $61b7: $00
    inc e                                         ; $61b8: $1c
    ld b, c                                       ; $61b9: $41
    inc b                                         ; $61ba: $04
    ld e, a                                       ; $61bb: $5f
    ld bc, $1500                                  ; $61bc: $01 $00 $15
    ld c, a                                       ; $61bf: $4f
    nop                                           ; $61c0: $00
    inc sp                                        ; $61c1: $33
    add hl, bc                                    ; $61c2: $09
    ldh a, [$57]                                  ; $61c3: $f0 $57
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    add hl, bc                                    ; $61ca: $09
    nop                                           ; $61cb: $00
    dec a                                         ; $61cc: $3d
    dec b                                         ; $61cd: $05
    add hl, bc                                    ; $61ce: $09
    nop                                           ; $61cf: $00
    ld d, [hl]                                    ; $61d0: $56
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    rla                                           ; $61d3: $17
    nop                                           ; $61d4: $00
    nop                                           ; $61d5: $00
    inc e                                         ; $61d6: $1c
    ld b, c                                       ; $61d7: $41
    inc b                                         ; $61d8: $04
    ld e, a                                       ; $61d9: $5f
    ld bc, $1500                                  ; $61da: $01 $00 $15
    ld c, a                                       ; $61dd: $4f
    nop                                           ; $61de: $00
    inc sp                                        ; $61df: $33
    dec bc                                        ; $61e0: $0b
    ld h, b                                       ; $61e1: $60
    ld d, a                                       ; $61e2: $57
    nop                                           ; $61e3: $00
    nop                                           ; $61e4: $00
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    add hl, bc                                    ; $61e8: $09
    nop                                           ; $61e9: $00
    ld d, h                                       ; $61ea: $54
    dec b                                         ; $61eb: $05
    add hl, bc                                    ; $61ec: $09
    nop                                           ; $61ed: $00
    ld d, [hl]                                    ; $61ee: $56
    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    rla                                           ; $61f1: $17
    nop                                           ; $61f2: $00
    nop                                           ; $61f3: $00
    inc e                                         ; $61f4: $1c
    ld b, c                                       ; $61f5: $41
    inc b                                         ; $61f6: $04
    ld e, a                                       ; $61f7: $5f
    ld bc, $1500                                  ; $61f8: $01 $00 $15
    ld c, a                                       ; $61fb: $4f
    nop                                           ; $61fc: $00
    inc sp                                        ; $61fd: $33
    ld bc, $575c                                  ; $61fe: $01 $5c $57
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    add hl, bc                                    ; $6206: $09
    nop                                           ; $6207: $00
    ld e, e                                       ; $6208: $5b
    dec b                                         ; $6209: $05
    add hl, bc                                    ; $620a: $09
    nop                                           ; $620b: $00
    ld d, [hl]                                    ; $620c: $56
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    rla                                           ; $620f: $17
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    inc e                                         ; $6212: $1c
    ld b, c                                       ; $6213: $41
    inc b                                         ; $6214: $04
    ld e, a                                       ; $6215: $5f
    ld bc, $1500                                  ; $6216: $01 $00 $15
    ld c, a                                       ; $6219: $4f
    nop                                           ; $621a: $00
    inc sp                                        ; $621b: $33
    dec bc                                        ; $621c: $0b
    ld h, b                                       ; $621d: $60
    ld d, a                                       ; $621e: $57
    nop                                           ; $621f: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    ld e, a                                       ; $6224: $5f
    ld bc, $0000                                  ; $6225: $01 $00 $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    ld e, a                                       ; $622a: $5f
    nop                                           ; $622b: $00
    nop                                           ; $622c: $00
    add hl, bc                                    ; $622d: $09
    nop                                           ; $622e: $00
    ld d, e                                       ; $622f: $53
    dec b                                         ; $6230: $05
    add hl, bc                                    ; $6231: $09
    nop                                           ; $6232: $00
    ld d, [hl]                                    ; $6233: $56
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    rla                                           ; $6236: $17
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    inc e                                         ; $6239: $1c
    ld b, e                                       ; $623a: $43
    dec b                                         ; $623b: $05
    ld e, a                                       ; $623c: $5f
    ld bc, $1500                                  ; $623d: $01 $00 $15
    ld d, c                                       ; $6240: $51
    nop                                           ; $6241: $00
    inc sp                                        ; $6242: $33
    ld [bc], a                                    ; $6243: $02
    db $10                                        ; $6244: $10
    ld d, a                                       ; $6245: $57
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    add hl, bc                                    ; $624b: $09
    nop                                           ; $624c: $00
    ld b, $05                                     ; $624d: $06 $05
    add hl, bc                                    ; $624f: $09
    nop                                           ; $6250: $00
    ld d, [hl]                                    ; $6251: $56
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    rla                                           ; $6254: $17
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    inc e                                         ; $6257: $1c
    ld b, e                                       ; $6258: $43
    dec b                                         ; $6259: $05
    ld e, a                                       ; $625a: $5f
    ld bc, $1500                                  ; $625b: $01 $00 $15
    ld d, c                                       ; $625e: $51
    nop                                           ; $625f: $00
    inc sp                                        ; $6260: $33
    ld bc, $575d                                  ; $6261: $01 $5d $57
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    add hl, bc                                    ; $6269: $09
    nop                                           ; $626a: $00
    rlca                                          ; $626b: $07
    dec b                                         ; $626c: $05
    add hl, bc                                    ; $626d: $09
    nop                                           ; $626e: $00
    ld d, [hl]                                    ; $626f: $56
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    rla                                           ; $6272: $17
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    inc e                                         ; $6275: $1c
    ld b, e                                       ; $6276: $43
    dec b                                         ; $6277: $05
    ld e, a                                       ; $6278: $5f
    ld bc, $1500                                  ; $6279: $01 $00 $15
    ld d, c                                       ; $627c: $51
    nop                                           ; $627d: $00
    inc sp                                        ; $627e: $33
    ld bc, $575d                                  ; $627f: $01 $5d $57
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    add hl, bc                                    ; $6287: $09
    nop                                           ; $6288: $00
    ld d, d                                       ; $6289: $52
    dec b                                         ; $628a: $05
    add hl, bc                                    ; $628b: $09
    nop                                           ; $628c: $00
    ld d, [hl]                                    ; $628d: $56
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    rla                                           ; $6290: $17
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    inc e                                         ; $6293: $1c
    ld b, e                                       ; $6294: $43
    dec b                                         ; $6295: $05
    ld e, a                                       ; $6296: $5f
    ld bc, $1500                                  ; $6297: $01 $00 $15
    ld d, c                                       ; $629a: $51
    nop                                           ; $629b: $00
    inc sp                                        ; $629c: $33
    ld bc, $575d                                  ; $629d: $01 $5d $57
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    add hl, bc                                    ; $62a5: $09
    nop                                           ; $62a6: $00
    ld [$0905], sp                                ; $62a7: $08 $05 $09
    nop                                           ; $62aa: $00
    ld d, [hl]                                    ; $62ab: $56
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    rla                                           ; $62ae: $17
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    inc e                                         ; $62b1: $1c
    ld b, e                                       ; $62b2: $43
    dec b                                         ; $62b3: $05
    ld e, a                                       ; $62b4: $5f
    ld bc, $1500                                  ; $62b5: $01 $00 $15
    ld d, c                                       ; $62b8: $51
    nop                                           ; $62b9: $00
    inc sp                                        ; $62ba: $33
    ld bc, $575d                                  ; $62bb: $01 $5d $57
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    add hl, bc                                    ; $62c3: $09
    nop                                           ; $62c4: $00
    add hl, bc                                    ; $62c5: $09
    dec b                                         ; $62c6: $05
    add hl, bc                                    ; $62c7: $09
    nop                                           ; $62c8: $00
    ld d, [hl]                                    ; $62c9: $56
    nop                                           ; $62ca: $00
    nop                                           ; $62cb: $00
    rla                                           ; $62cc: $17
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    inc e                                         ; $62cf: $1c
    ld b, e                                       ; $62d0: $43
    dec b                                         ; $62d1: $05
    ld e, a                                       ; $62d2: $5f
    ld bc, $1500                                  ; $62d3: $01 $00 $15
    ld d, c                                       ; $62d6: $51
    nop                                           ; $62d7: $00
    inc sp                                        ; $62d8: $33
    ld bc, $575d                                  ; $62d9: $01 $5d $57
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    add hl, bc                                    ; $62e1: $09
    nop                                           ; $62e2: $00
    ld d, [hl]                                    ; $62e3: $56
    dec b                                         ; $62e4: $05
    add hl, bc                                    ; $62e5: $09
    nop                                           ; $62e6: $00
    ld d, [hl]                                    ; $62e7: $56
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    rla                                           ; $62ea: $17
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    inc e                                         ; $62ed: $1c
    ld b, e                                       ; $62ee: $43
    dec b                                         ; $62ef: $05
    ld e, a                                       ; $62f0: $5f
    ld bc, $1500                                  ; $62f1: $01 $00 $15
    ld d, c                                       ; $62f4: $51
    nop                                           ; $62f5: $00
    inc sp                                        ; $62f6: $33
    ld bc, $575d                                  ; $62f7: $01 $5d $57
    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    add hl, bc                                    ; $62ff: $09
    nop                                           ; $6300: $00
    dec bc                                        ; $6301: $0b
    dec b                                         ; $6302: $05
    dec bc                                        ; $6303: $0b
    nop                                           ; $6304: $00
    ld d, [hl]                                    ; $6305: $56
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    rla                                           ; $6308: $17
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    inc e                                         ; $630b: $1c
    ld b, e                                       ; $630c: $43
    dec b                                         ; $630d: $05
    ld e, a                                       ; $630e: $5f
    ld bc, $1500                                  ; $630f: $01 $00 $15
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    inc sp                                        ; $6314: $33
    inc bc                                        ; $6315: $03
    ld [hl], c                                    ; $6316: $71
    dec d                                         ; $6317: $15
    ld d, c                                       ; $6318: $51
    nop                                           ; $6319: $00
    inc sp                                        ; $631a: $33
    inc bc                                        ; $631b: $03
    xor e                                         ; $631c: $ab
    ld d, a                                       ; $631d: $57
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    add hl, bc                                    ; $6323: $09
    nop                                           ; $6324: $00
    ld e, h                                       ; $6325: $5c
    dec b                                         ; $6326: $05
    dec bc                                        ; $6327: $0b
    nop                                           ; $6328: $00
    ld d, [hl]                                    ; $6329: $56
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    rla                                           ; $632c: $17
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    inc e                                         ; $632f: $1c
    ld b, e                                       ; $6330: $43
    dec b                                         ; $6331: $05
    ld e, a                                       ; $6332: $5f
    ld bc, $1500                                  ; $6333: $01 $00 $15
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    inc sp                                        ; $6338: $33
    inc b                                         ; $6339: $04
    call nc, Call_00b_5115                        ; $633a: $d4 $15 $51
    nop                                           ; $633d: $00
    inc sp                                        ; $633e: $33
    inc b                                         ; $633f: $04
    and $57                                       ; $6340: $e6 $57
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    add hl, bc                                    ; $6347: $09
    nop                                           ; $6348: $00
    db $10                                        ; $6349: $10
    dec b                                         ; $634a: $05
    dec bc                                        ; $634b: $0b
    nop                                           ; $634c: $00
    ld d, [hl]                                    ; $634d: $56
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    rla                                           ; $6350: $17
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    inc e                                         ; $6353: $1c
    ld b, e                                       ; $6354: $43
    dec b                                         ; $6355: $05
    ld e, a                                       ; $6356: $5f
    ld bc, $1500                                  ; $6357: $01 $00 $15
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    inc sp                                        ; $635c: $33
    ld [bc], a                                    ; $635d: $02
    ld b, l                                       ; $635e: $45
    dec d                                         ; $635f: $15
    ld d, c                                       ; $6360: $51
    nop                                           ; $6361: $00
    inc sp                                        ; $6362: $33
    ld [bc], a                                    ; $6363: $02
    sbc b                                         ; $6364: $98
    ld d, a                                       ; $6365: $57
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    add hl, bc                                    ; $636b: $09
    nop                                           ; $636c: $00
    ld de, $0b05                                  ; $636d: $11 $05 $0b
    nop                                           ; $6370: $00
    ld d, [hl]                                    ; $6371: $56
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    rla                                           ; $6374: $17
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    inc e                                         ; $6377: $1c
    ld b, e                                       ; $6378: $43
    dec b                                         ; $6379: $05
    ld e, a                                       ; $637a: $5f
    ld bc, $1500                                  ; $637b: $01 $00 $15
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    inc sp                                        ; $6380: $33
    ld [bc], a                                    ; $6381: $02
    ld b, l                                       ; $6382: $45
    dec d                                         ; $6383: $15
    ld d, c                                       ; $6384: $51
    nop                                           ; $6385: $00
    inc sp                                        ; $6386: $33
    ld [bc], a                                    ; $6387: $02
    sbc b                                         ; $6388: $98
    ld d, a                                       ; $6389: $57
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00
    nop                                           ; $638d: $00
    nop                                           ; $638e: $00
    add hl, bc                                    ; $638f: $09
    nop                                           ; $6390: $00
    ld d, h                                       ; $6391: $54
    dec b                                         ; $6392: $05
    add hl, bc                                    ; $6393: $09
    nop                                           ; $6394: $00
    ld d, [hl]                                    ; $6395: $56
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    rla                                           ; $6398: $17
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    inc e                                         ; $639b: $1c
    ld b, e                                       ; $639c: $43
    dec b                                         ; $639d: $05
    ld e, a                                       ; $639e: $5f
    ld bc, $1500                                  ; $639f: $01 $00 $15
    ld d, c                                       ; $63a2: $51
    nop                                           ; $63a3: $00
    inc sp                                        ; $63a4: $33
    ld bc, $575d                                  ; $63a5: $01 $5d $57
    nop                                           ; $63a8: $00
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    nop                                           ; $63ac: $00
    add hl, bc                                    ; $63ad: $09
    nop                                           ; $63ae: $00
    ccf                                           ; $63af: $3f
    dec b                                         ; $63b0: $05
    add hl, bc                                    ; $63b1: $09
    nop                                           ; $63b2: $00
    ld d, [hl]                                    ; $63b3: $56
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    rla                                           ; $63b6: $17
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    inc e                                         ; $63b9: $1c
    ld b, e                                       ; $63ba: $43
    dec b                                         ; $63bb: $05
    ld e, a                                       ; $63bc: $5f
    ld bc, $1500                                  ; $63bd: $01 $00 $15
    ld d, c                                       ; $63c0: $51
    nop                                           ; $63c1: $00
    inc sp                                        ; $63c2: $33
    add hl, bc                                    ; $63c3: $09
    pop af                                        ; $63c4: $f1
    ld d, a                                       ; $63c5: $57
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    nop                                           ; $63c8: $00
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    add hl, bc                                    ; $63cb: $09
    nop                                           ; $63cc: $00
    dec a                                         ; $63cd: $3d
    dec b                                         ; $63ce: $05
    add hl, bc                                    ; $63cf: $09
    nop                                           ; $63d0: $00
    ld d, [hl]                                    ; $63d1: $56
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    rla                                           ; $63d4: $17
    nop                                           ; $63d5: $00
    nop                                           ; $63d6: $00
    inc e                                         ; $63d7: $1c
    ld b, e                                       ; $63d8: $43
    dec b                                         ; $63d9: $05
    ld e, a                                       ; $63da: $5f
    ld bc, $1500                                  ; $63db: $01 $00 $15
    ld d, c                                       ; $63de: $51
    nop                                           ; $63df: $00
    inc sp                                        ; $63e0: $33
    dec bc                                        ; $63e1: $0b
    ld [hl], d                                    ; $63e2: $72
    ld d, a                                       ; $63e3: $57
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    add hl, bc                                    ; $63e9: $09
    nop                                           ; $63ea: $00
    ld e, e                                       ; $63eb: $5b
    dec b                                         ; $63ec: $05
    add hl, bc                                    ; $63ed: $09
    nop                                           ; $63ee: $00
    ld d, [hl]                                    ; $63ef: $56
    nop                                           ; $63f0: $00
    nop                                           ; $63f1: $00
    rla                                           ; $63f2: $17
    nop                                           ; $63f3: $00
    nop                                           ; $63f4: $00
    inc e                                         ; $63f5: $1c
    ld b, e                                       ; $63f6: $43
    dec b                                         ; $63f7: $05
    ld e, a                                       ; $63f8: $5f
    ld bc, $1500                                  ; $63f9: $01 $00 $15
    ld d, c                                       ; $63fc: $51
    nop                                           ; $63fd: $00
    inc sp                                        ; $63fe: $33
    dec bc                                        ; $63ff: $0b
    ld h, d                                       ; $6400: $62
    ld d, a                                       ; $6401: $57
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    ld e, a                                       ; $6407: $5f
    ld bc, $0000                                  ; $6408: $01 $00 $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    ld e, a                                       ; $640d: $5f
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    add hl, bc                                    ; $6410: $09
    nop                                           ; $6411: $00
    ld d, a                                       ; $6412: $57
    dec b                                         ; $6413: $05
    ld e, l                                       ; $6414: $5d
    nop                                           ; $6415: $00
    add hl, bc                                    ; $6416: $09
    rrca                                          ; $6417: $0f
    ld bc, $0305                                  ; $6418: $01 $05 $03
    nop                                           ; $641b: $00
    ld e, a                                       ; $641c: $5f
    ld bc, $0000                                  ; $641d: $01 $00 $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    ld d, [hl]                                    ; $6422: $56
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    rla                                           ; $6425: $17
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    dec de                                        ; $6428: $1b
    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    inc de                                        ; $642b: $13
    nop                                           ; $642c: $00
    adc h                                         ; $642d: $8c
    inc d                                         ; $642e: $14
    ld [bc], a                                    ; $642f: $02
    jr z, @+$17                                   ; $6430: $28 $15

    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    ld d, $37                                     ; $6434: $16 $37
    nop                                           ; $6436: $00
    ld d, d                                       ; $6437: $52
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    dec de                                        ; $643a: $1b
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    inc de                                        ; $643d: $13
    nop                                           ; $643e: $00
    xor a                                         ; $643f: $af
    inc d                                         ; $6440: $14
    ld [bc], a                                    ; $6441: $02
    daa                                           ; $6442: $27
    dec d                                         ; $6443: $15
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    ld d, $38                                     ; $6446: $16 $38
    nop                                           ; $6448: $00
    ld d, d                                       ; $6449: $52
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    dec de                                        ; $644c: $1b
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    inc de                                        ; $644f: $13
    nop                                           ; $6450: $00
    jp nz, Jump_000_0214                          ; $6451: $c2 $14 $02

    jr nz, @+$17                                  ; $6454: $20 $15

    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    ld d, $39                                     ; $6458: $16 $39
    nop                                           ; $645a: $00
    ld d, d                                       ; $645b: $52
    nop                                           ; $645c: $00
    nop                                           ; $645d: $00
    dec de                                        ; $645e: $1b
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    inc de                                        ; $6461: $13
    nop                                           ; $6462: $00
    sbc h                                         ; $6463: $9c
    inc d                                         ; $6464: $14
    ld bc, $15f3                                  ; $6465: $01 $f3 $15
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    ld d, $49                                     ; $646a: $16 $49
    nop                                           ; $646c: $00
    ld d, d                                       ; $646d: $52
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    dec de                                        ; $6470: $1b
    ld [bc], a                                    ; $6471: $02
    nop                                           ; $6472: $00
    inc de                                        ; $6473: $13
    nop                                           ; $6474: $00
    xor l                                         ; $6475: $ad
    inc d                                         ; $6476: $14
    ld bc, $15f3                                  ; $6477: $01 $f3 $15
    nop                                           ; $647a: $00
    nop                                           ; $647b: $00
    ld d, $4a                                     ; $647c: $16 $4a
    nop                                           ; $647e: $00
    ld d, d                                       ; $647f: $52
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    dec de                                        ; $6482: $1b
    ld b, $00                                     ; $6483: $06 $00
    ld e, a                                       ; $6485: $5f
    ld bc, $1500                                  ; $6486: $01 $00 $15
    ld bc, $7400                                  ; $6489: $01 $00 $74
    ld c, d                                       ; $648c: $4a
    nop                                           ; $648d: $00
    dec d                                         ; $648e: $15
    jr c, jr_00b_6491                             ; $648f: $38 $00

jr_00b_6491:
    inc sp                                        ; $6491: $33
    inc bc                                        ; $6492: $03
    and $15                                       ; $6493: $e6 $15
    ld a, [hl-]                                   ; $6495: $3a
    nop                                           ; $6496: $00
    inc sp                                        ; $6497: $33
    inc bc                                        ; $6498: $03
    rst $20                                       ; $6499: $e7
    dec d                                         ; $649a: $15
    jr c, jr_00b_649d                             ; $649b: $38 $00

jr_00b_649d:
    inc sp                                        ; $649d: $33
    inc bc                                        ; $649e: $03
    add sp, $15                                   ; $649f: $e8 $15
    ld a, [hl-]                                   ; $64a1: $3a
    nop                                           ; $64a2: $00
    inc sp                                        ; $64a3: $33
    inc bc                                        ; $64a4: $03
    jp hl                                         ; $64a5: $e9


    dec d                                         ; $64a6: $15
    jr c, jr_00b_64a9                             ; $64a7: $38 $00

jr_00b_64a9:
    inc sp                                        ; $64a9: $33
    inc bc                                        ; $64aa: $03
    ld [$005e], a                                 ; $64ab: $ea $5e $00
    nop                                           ; $64ae: $00
    rla                                           ; $64af: $17
    ld c, d                                       ; $64b0: $4a
    nop                                           ; $64b1: $00
    dec d                                         ; $64b2: $15
    ld bc, $1900                                  ; $64b3: $01 $00 $19
    nop                                           ; $64b6: $00
    ld h, h                                       ; $64b7: $64
    rla                                           ; $64b8: $17
    ld c, c                                       ; $64b9: $49
    nop                                           ; $64ba: $00
    dec d                                         ; $64bb: $15
    rlca                                          ; $64bc: $07
    nop                                           ; $64bd: $00
    add hl, de                                    ; $64be: $19
    nop                                           ; $64bf: $00
    ld h, h                                       ; $64c0: $64
    dec h                                         ; $64c1: $25
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    ld e, $49                                     ; $64c4: $1e $49
    nop                                           ; $64c6: $00
    rla                                           ; $64c7: $17
    ld c, d                                       ; $64c8: $4a
    nop                                           ; $64c9: $00
    ld e, $4a                                     ; $64ca: $1e $4a
    nop                                           ; $64cc: $00
    inc de                                        ; $64cd: $13
    ld [bc], a                                    ; $64ce: $02
    inc l                                         ; $64cf: $2c
    dec d                                         ; $64d0: $15
    ld bc, $7300                                  ; $64d1: $01 $00 $73
    nop                                           ; $64d4: $00
    sbc a                                         ; $64d5: $9f
    rla                                           ; $64d6: $17
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    ld e, c                                       ; $64d9: $59
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    dec d                                         ; $64dc: $15
    inc l                                         ; $64dd: $2c
    nop                                           ; $64de: $00
    inc sp                                        ; $64df: $33
    inc bc                                        ; $64e0: $03
    db $eb                                        ; $64e1: $eb
    dec d                                         ; $64e2: $15
    add hl, de                                    ; $64e3: $19
    nop                                           ; $64e4: $00
    inc sp                                        ; $64e5: $33
    inc bc                                        ; $64e6: $03
    db $ec                                        ; $64e7: $ec
    dec d                                         ; $64e8: $15
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    inc sp                                        ; $64eb: $33
    inc bc                                        ; $64ec: $03
    db $ed                                        ; $64ed: $ed
    ld l, $15                                     ; $64ee: $2e $15
    nop                                           ; $64f0: $00
    dec d                                         ; $64f1: $15
    dec d                                         ; $64f2: $15
    nop                                           ; $64f3: $00
    inc sp                                        ; $64f4: $33
    inc bc                                        ; $64f5: $03
    xor $15                                       ; $64f6: $ee $15
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    inc sp                                        ; $64fa: $33
    inc bc                                        ; $64fb: $03
    rst $28                                       ; $64fc: $ef
    rla                                           ; $64fd: $17
    jr c, jr_00b_6500                             ; $64fe: $38 $00

jr_00b_6500:
    ld [hl+], a                                   ; $6500: $22
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    rla                                           ; $6503: $17
    add hl, sp                                    ; $6504: $39
    nop                                           ; $6505: $00
    ld [hl+], a                                   ; $6506: $22
    jr c, jr_00b_6509                             ; $6507: $38 $00

jr_00b_6509:
    rla                                           ; $6509: $17
    scf                                           ; $650a: $37
    nop                                           ; $650b: $00
    ld [hl+], a                                   ; $650c: $22
    add hl, sp                                    ; $650d: $39
    nop                                           ; $650e: $00
    ld a, d                                       ; $650f: $7a
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    rla                                           ; $6512: $17
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    inc de                                        ; $6515: $13
    ld [bc], a                                    ; $6516: $02
    rrca                                          ; $6517: $0f
    ld [hl], a                                    ; $6518: $77
    ld bc, $0f2c                                  ; $6519: $01 $2c $0f
    rrca                                          ; $651c: $0f
    ld bc, $0057                                  ; $651d: $01 $57 $00
    nop                                           ; $6520: $00
    ld c, l                                       ; $6521: $4d
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    jr z, jr_00b_654d                             ; $6524: $28 $27

    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    ld e, a                                       ; $652a: $5f
    ld bc, $0000                                  ; $652b: $01 $00 $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    ld e, a                                       ; $6530: $5f
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    add hl, bc                                    ; $6533: $09
    nop                                           ; $6534: $00
    ld d, a                                       ; $6535: $57
    dec b                                         ; $6536: $05
    ld e, l                                       ; $6537: $5d
    nop                                           ; $6538: $00
    add hl, bc                                    ; $6539: $09
    rrca                                          ; $653a: $0f
    ld bc, $0305                                  ; $653b: $01 $05 $03
    nop                                           ; $653e: $00
    ld e, a                                       ; $653f: $5f
    ld bc, $0000                                  ; $6540: $01 $00 $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    ld d, [hl]                                    ; $6545: $56
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    rla                                           ; $6548: $17
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    dec de                                        ; $654b: $1b
    ld [bc], a                                    ; $654c: $02

jr_00b_654d:
    nop                                           ; $654d: $00
    inc de                                        ; $654e: $13
    nop                                           ; $654f: $00
    ld h, [hl]                                    ; $6550: $66
    inc d                                         ; $6551: $14
    ld bc, $15d6                                  ; $6552: $01 $d6 $15
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    ld d, $37                                     ; $6557: $16 $37
    nop                                           ; $6559: $00
    ld d, d                                       ; $655a: $52
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    dec de                                        ; $655d: $1b
    ld [bc], a                                    ; $655e: $02
    nop                                           ; $655f: $00
    inc de                                        ; $6560: $13
    nop                                           ; $6561: $00
    ld d, l                                       ; $6562: $55
    inc d                                         ; $6563: $14
    ld bc, $15ec                                  ; $6564: $01 $ec $15
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    ld d, $38                                     ; $6569: $16 $38
    nop                                           ; $656b: $00
    ld d, d                                       ; $656c: $52
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    dec de                                        ; $656f: $1b
    ld [bc], a                                    ; $6570: $02
    nop                                           ; $6571: $00
    inc de                                        ; $6572: $13
    nop                                           ; $6573: $00
    ld h, [hl]                                    ; $6574: $66
    inc d                                         ; $6575: $14
    ld bc, $15f6                                  ; $6576: $01 $f6 $15
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    ld d, $39                                     ; $657b: $16 $39
    nop                                           ; $657d: $00
    ld d, d                                       ; $657e: $52
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
    dec de                                        ; $6581: $1b
    ld [bc], a                                    ; $6582: $02
    nop                                           ; $6583: $00
    inc de                                        ; $6584: $13
    nop                                           ; $6585: $00
    xor l                                         ; $6586: $ad
    inc d                                         ; $6587: $14
    ld bc, $15d9                                  ; $6588: $01 $d9 $15
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    ld d, $49                                     ; $658d: $16 $49
    nop                                           ; $658f: $00
    ld d, d                                       ; $6590: $52
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    dec de                                        ; $6593: $1b
    inc b                                         ; $6594: $04
    nop                                           ; $6595: $00
    inc de                                        ; $6596: $13
    nop                                           ; $6597: $00
    xor l                                         ; $6598: $ad
    inc d                                         ; $6599: $14
    ld bc, $15e8                                  ; $659a: $01 $e8 $15
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    ld d, $4a                                     ; $659f: $16 $4a
    nop                                           ; $65a1: $00
    ld d, d                                       ; $65a2: $52
    nop                                           ; $65a3: $00
    nop                                           ; $65a4: $00
    dec de                                        ; $65a5: $1b
    nop                                           ; $65a6: $00
    nop                                           ; $65a7: $00
    ld e, a                                       ; $65a8: $5f
    ld bc, $1500                                  ; $65a9: $01 $00 $15
    ld bc, $7400                                  ; $65ac: $01 $00 $74
    ld c, d                                       ; $65af: $4a
    nop                                           ; $65b0: $00
    dec d                                         ; $65b1: $15
    jr c, jr_00b_65b4                             ; $65b2: $38 $00

jr_00b_65b4:
    inc sp                                        ; $65b4: $33
    inc bc                                        ; $65b5: $03
    and $15                                       ; $65b6: $e6 $15
    ld a, [hl-]                                   ; $65b8: $3a
    nop                                           ; $65b9: $00
    inc sp                                        ; $65ba: $33
    inc bc                                        ; $65bb: $03
    rst $20                                       ; $65bc: $e7
    dec d                                         ; $65bd: $15
    jr c, jr_00b_65c0                             ; $65be: $38 $00

jr_00b_65c0:
    inc sp                                        ; $65c0: $33
    inc bc                                        ; $65c1: $03
    add sp, $15                                   ; $65c2: $e8 $15
    ld a, [hl-]                                   ; $65c4: $3a
    nop                                           ; $65c5: $00
    inc sp                                        ; $65c6: $33
    inc bc                                        ; $65c7: $03
    jp hl                                         ; $65c8: $e9


    dec d                                         ; $65c9: $15
    jr c, jr_00b_65cc                             ; $65ca: $38 $00

jr_00b_65cc:
    inc sp                                        ; $65cc: $33
    inc bc                                        ; $65cd: $03
    ld [$005e], a                                 ; $65ce: $ea $5e $00
    nop                                           ; $65d1: $00
    rla                                           ; $65d2: $17
    ld c, d                                       ; $65d3: $4a
    nop                                           ; $65d4: $00
    dec d                                         ; $65d5: $15
    inc bc                                        ; $65d6: $03
    nop                                           ; $65d7: $00
    add hl, de                                    ; $65d8: $19
    nop                                           ; $65d9: $00
    ld h, h                                       ; $65da: $64
    rla                                           ; $65db: $17
    ld c, c                                       ; $65dc: $49
    nop                                           ; $65dd: $00
    dec d                                         ; $65de: $15
    ld bc, $1900                                  ; $65df: $01 $00 $19
    nop                                           ; $65e2: $00
    ld h, h                                       ; $65e3: $64
    dec h                                         ; $65e4: $25
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    ld e, $49                                     ; $65e7: $1e $49
    nop                                           ; $65e9: $00
    rla                                           ; $65ea: $17
    ld c, d                                       ; $65eb: $4a
    nop                                           ; $65ec: $00
    ld e, $4a                                     ; $65ed: $1e $4a
    nop                                           ; $65ef: $00
    inc de                                        ; $65f0: $13
    ld bc, $15e2                                  ; $65f1: $01 $e2 $15
    ld bc, $7300                                  ; $65f4: $01 $00 $73
    nop                                           ; $65f7: $00
    ld e, a                                       ; $65f8: $5f
    rla                                           ; $65f9: $17
    nop                                           ; $65fa: $00
    nop                                           ; $65fb: $00
    ld e, c                                       ; $65fc: $59
    nop                                           ; $65fd: $00
    nop                                           ; $65fe: $00
    dec d                                         ; $65ff: $15
    inc l                                         ; $6600: $2c
    nop                                           ; $6601: $00
    inc sp                                        ; $6602: $33
    inc bc                                        ; $6603: $03
    db $eb                                        ; $6604: $eb
    dec d                                         ; $6605: $15
    add hl, de                                    ; $6606: $19
    nop                                           ; $6607: $00
    inc sp                                        ; $6608: $33
    inc bc                                        ; $6609: $03
    db $ec                                        ; $660a: $ec
    dec d                                         ; $660b: $15
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    inc sp                                        ; $660e: $33
    inc bc                                        ; $660f: $03
    db $ed                                        ; $6610: $ed
    ld l, $15                                     ; $6611: $2e $15
    nop                                           ; $6613: $00
    dec d                                         ; $6614: $15
    dec d                                         ; $6615: $15
    nop                                           ; $6616: $00
    inc sp                                        ; $6617: $33
    inc bc                                        ; $6618: $03
    xor $15                                       ; $6619: $ee $15
    nop                                           ; $661b: $00
    nop                                           ; $661c: $00
    inc sp                                        ; $661d: $33
    inc bc                                        ; $661e: $03
    rst $28                                       ; $661f: $ef
    rla                                           ; $6620: $17
    scf                                           ; $6621: $37
    nop                                           ; $6622: $00
    ld [hl+], a                                   ; $6623: $22
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    rla                                           ; $6626: $17
    jr c, jr_00b_6629                             ; $6627: $38 $00

jr_00b_6629:
    ld [hl+], a                                   ; $6629: $22
    scf                                           ; $662a: $37
    nop                                           ; $662b: $00
    rla                                           ; $662c: $17
    add hl, sp                                    ; $662d: $39
    nop                                           ; $662e: $00
    ld [hl+], a                                   ; $662f: $22
    jr c, jr_00b_6632                             ; $6630: $38 $00

jr_00b_6632:
    rla                                           ; $6632: $17
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    inc de                                        ; $6635: $13
    ld [bc], a                                    ; $6636: $02
    rrca                                          ; $6637: $0f
    ld [hl], a                                    ; $6638: $77
    ld bc, $7a2c                                  ; $6639: $01 $2c $7a
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    rrca                                          ; $663e: $0f
    rrca                                          ; $663f: $0f
    ld bc, $0057                                  ; $6640: $01 $57 $00
    nop                                           ; $6643: $00
    ld c, l                                       ; $6644: $4d
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    jr z, @+$29                                   ; $6647: $28 $27

    nop                                           ; $6649: $00
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    ld e, a                                       ; $664d: $5f
    ld bc, $0000                                  ; $664e: $01 $00 $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    ld e, a                                       ; $6653: $5f
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    add hl, bc                                    ; $6656: $09
    nop                                           ; $6657: $00
    daa                                           ; $6658: $27
    dec b                                         ; $6659: $05
    inc l                                         ; $665a: $2c
    nop                                           ; $665b: $00
    add hl, bc                                    ; $665c: $09
    inc c                                         ; $665d: $0c
    ld bc, $0305                                  ; $665e: $01 $05 $03
    nop                                           ; $6661: $00
    ld e, a                                       ; $6662: $5f
    ld bc, $0000                                  ; $6663: $01 $00 $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    ld d, [hl]                                    ; $6668: $56
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    rla                                           ; $666b: $17
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    dec de                                        ; $666e: $1b
    ld b, $00                                     ; $666f: $06 $00
    inc de                                        ; $6671: $13
    ld bc, $1415                                  ; $6672: $01 $15 $14
    ld bc, $15fe                                  ; $6675: $01 $fe $15
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    ld d, $37                                     ; $667a: $16 $37
    nop                                           ; $667c: $00
    ld d, d                                       ; $667d: $52
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    dec de                                        ; $6680: $1b
    inc b                                         ; $6681: $04
    nop                                           ; $6682: $00
    inc de                                        ; $6683: $13
    ld bc, $1406                                  ; $6684: $01 $06 $14
    ld [bc], a                                    ; $6687: $02
    ld c, $15                                     ; $6688: $0e $15
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    ld d, $38                                     ; $668c: $16 $38
    nop                                           ; $668e: $00
    ld d, d                                       ; $668f: $52
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    dec de                                        ; $6692: $1b
    ld [bc], a                                    ; $6693: $02
    nop                                           ; $6694: $00
    inc de                                        ; $6695: $13
    ld bc, $1415                                  ; $6696: $01 $15 $14
    ld [bc], a                                    ; $6699: $02
    ld e, $15                                     ; $669a: $1e $15
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    ld d, $39                                     ; $669e: $16 $39
    nop                                           ; $66a0: $00
    ld d, d                                       ; $66a1: $52
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    dec de                                        ; $66a4: $1b
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    ld e, a                                       ; $66a7: $5f
    ld bc, $1500                                  ; $66a8: $01 $00 $15
    dec d                                         ; $66ab: $15
    nop                                           ; $66ac: $00
    inc sp                                        ; $66ad: $33
    inc bc                                        ; $66ae: $03
    db $f4                                        ; $66af: $f4
    dec d                                         ; $66b0: $15
    add hl, de                                    ; $66b1: $19
    nop                                           ; $66b2: $00
    inc sp                                        ; $66b3: $33
    inc bc                                        ; $66b4: $03
    push af                                       ; $66b5: $f5
    dec d                                         ; $66b6: $15
    nop                                           ; $66b7: $00
    nop                                           ; $66b8: $00
    inc sp                                        ; $66b9: $33
    inc bc                                        ; $66ba: $03
    or $15                                        ; $66bb: $f6 $15
    add hl, de                                    ; $66bd: $19
    nop                                           ; $66be: $00
    inc sp                                        ; $66bf: $33
    inc bc                                        ; $66c0: $03
    rst $30                                       ; $66c1: $f7
    rla                                           ; $66c2: $17
    scf                                           ; $66c3: $37
    nop                                           ; $66c4: $00
    ld [hl+], a                                   ; $66c5: $22
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    rla                                           ; $66c8: $17
    jr c, jr_00b_66cb                             ; $66c9: $38 $00

jr_00b_66cb:
    ld [hl+], a                                   ; $66cb: $22
    scf                                           ; $66cc: $37
    nop                                           ; $66cd: $00
    rla                                           ; $66ce: $17
    add hl, sp                                    ; $66cf: $39
    nop                                           ; $66d0: $00
    ld [hl+], a                                   ; $66d1: $22
    jr c, jr_00b_66d4                             ; $66d2: $38 $00

jr_00b_66d4:
    ld d, a                                       ; $66d4: $57
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    rrca                                          ; $66d7: $0f
    inc c                                         ; $66d8: $0c
    ld bc, $0000                                  ; $66d9: $01 $00 $00
    nop                                           ; $66dc: $00
    add hl, bc                                    ; $66dd: $09
    nop                                           ; $66de: $00
    ld c, b                                       ; $66df: $48
    dec b                                         ; $66e0: $05
    rrca                                          ; $66e1: $0f
    nop                                           ; $66e2: $00
    add hl, bc                                    ; $66e3: $09
    db $10                                        ; $66e4: $10
    ld bc, $0305                                  ; $66e5: $01 $05 $03
    nop                                           ; $66e8: $00
    ld e, a                                       ; $66e9: $5f
    ld bc, $0000                                  ; $66ea: $01 $00 $00
    nop                                           ; $66ed: $00
    nop                                           ; $66ee: $00
    ld d, [hl]                                    ; $66ef: $56
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    rrca                                          ; $66f2: $0f
    rst $38                                       ; $66f3: $ff
    inc b                                         ; $66f4: $04
    rla                                           ; $66f5: $17
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    dec de                                        ; $66f8: $1b
    ld [bc], a                                    ; $66f9: $02
    nop                                           ; $66fa: $00
    ld e, a                                       ; $66fb: $5f
    ld bc, $1500                                  ; $66fc: $01 $00 $15
    nop                                           ; $66ff: $00
    nop                                           ; $6700: $00
    inc sp                                        ; $6701: $33
    inc b                                         ; $6702: $04
    adc $57                                       ; $6703: $ce $57
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    rrca                                          ; $6707: $0f
    db $10                                        ; $6708: $10
    ld bc, $0000                                  ; $6709: $01 $00 $00
    nop                                           ; $670c: $00
    ld e, a                                       ; $670d: $5f
    ld bc, $0000                                  ; $670e: $01 $00 $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    add hl, bc                                    ; $6713: $09
    nop                                           ; $6714: $00
    add hl, sp                                    ; $6715: $39
    dec b                                         ; $6716: $05
    add hl, de                                    ; $6717: $19
    nop                                           ; $6718: $00
    add hl, bc                                    ; $6719: $09
    ld [bc], a                                    ; $671a: $02
    nop                                           ; $671b: $00
    dec b                                         ; $671c: $05
    dec b                                         ; $671d: $05
    nop                                           ; $671e: $00
    dec d                                         ; $671f: $15
    jr c, jr_00b_6722                             ; $6720: $38 $00

jr_00b_6722:
    inc sp                                        ; $6722: $33
    inc b                                         ; $6723: $04
    ld b, [hl]                                    ; $6724: $46
    rrca                                          ; $6725: $0f
    ld [bc], a                                    ; $6726: $02
    ld bc, $0000                                  ; $6727: $01 $00 $00
    nop                                           ; $672a: $00
    add hl, bc                                    ; $672b: $09
    ld [bc], a                                    ; $672c: $02
    ld bc, $0505                                  ; $672d: $01 $05 $05
    nop                                           ; $6730: $00
    dec d                                         ; $6731: $15
    jr c, jr_00b_6734                             ; $6732: $38 $00

jr_00b_6734:
    inc sp                                        ; $6734: $33
    inc b                                         ; $6735: $04
    ld b, a                                       ; $6736: $47
    rrca                                          ; $6737: $0f
    ld [bc], a                                    ; $6738: $02
    ld [bc], a                                    ; $6739: $02
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    add hl, bc                                    ; $673d: $09
    ld [bc], a                                    ; $673e: $02
    ld [bc], a                                    ; $673f: $02
    dec b                                         ; $6740: $05
    dec b                                         ; $6741: $05
    nop                                           ; $6742: $00
    dec d                                         ; $6743: $15
    jr c, jr_00b_6746                             ; $6744: $38 $00

jr_00b_6746:
    inc sp                                        ; $6746: $33
    inc b                                         ; $6747: $04
    ld c, e                                       ; $6748: $4b
    rrca                                          ; $6749: $0f
    ld [bc], a                                    ; $674a: $02
    inc bc                                        ; $674b: $03
    nop                                           ; $674c: $00
    nop                                           ; $674d: $00
    nop                                           ; $674e: $00
    add hl, bc                                    ; $674f: $09
    ld [bc], a                                    ; $6750: $02
    inc bc                                        ; $6751: $03
    dec b                                         ; $6752: $05
    dec b                                         ; $6753: $05
    nop                                           ; $6754: $00
    dec d                                         ; $6755: $15
    jr c, jr_00b_6758                             ; $6756: $38 $00

jr_00b_6758:
    inc sp                                        ; $6758: $33
    inc b                                         ; $6759: $04
    ld c, l                                       ; $675a: $4d
    rrca                                          ; $675b: $0f
    ld [bc], a                                    ; $675c: $02
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    ld e, a                                       ; $6764: $5f
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    add hl, bc                                    ; $6767: $09
    nop                                           ; $6768: $00
    ld d, e                                       ; $6769: $53
    dec b                                         ; $676a: $05
    inc hl                                        ; $676b: $23
    nop                                           ; $676c: $00
    add hl, bc                                    ; $676d: $09
    jr z, jr_00b_6771                             ; $676e: $28 $01

    dec b                                         ; $6770: $05

jr_00b_6771:
    inc bc                                        ; $6771: $03
    nop                                           ; $6772: $00
    ld e, a                                       ; $6773: $5f
    ld bc, $0000                                  ; $6774: $01 $00 $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    ld d, [hl]                                    ; $6779: $56
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    inc de                                        ; $677c: $13
    nop                                           ; $677d: $00
    ld c, a                                       ; $677e: $4f
    inc d                                         ; $677f: $14
    nop                                           ; $6780: $00
    ld c, a                                       ; $6781: $4f
    dec d                                         ; $6782: $15
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    ld d, $2f                                     ; $6785: $16 $2f
    nop                                           ; $6787: $00
    dec de                                        ; $6788: $1b
    ld b, $00                                     ; $6789: $06 $00
    rla                                           ; $678b: $17
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    dec de                                        ; $678e: $1b
    ld [bc], a                                    ; $678f: $02
    nop                                           ; $6790: $00
    ld e, a                                       ; $6791: $5f
    ld bc, $1500                                  ; $6792: $01 $00 $15
    ld b, e                                       ; $6795: $43
    nop                                           ; $6796: $00
    inc sp                                        ; $6797: $33
    ld [bc], a                                    ; $6798: $02
    ld sp, $0015                                  ; $6799: $31 $15 $00
    nop                                           ; $679c: $00
    inc sp                                        ; $679d: $33
    ld [bc], a                                    ; $679e: $02
    ld [hl-], a                                   ; $679f: $32
    dec d                                         ; $67a0: $15
    ld b, e                                       ; $67a1: $43
    nop                                           ; $67a2: $00
    inc sp                                        ; $67a3: $33
    ld [bc], a                                    ; $67a4: $02
    inc sp                                        ; $67a5: $33
    rla                                           ; $67a6: $17
    cpl                                           ; $67a7: $2f
    nop                                           ; $67a8: $00
    ld hl, $001a                                  ; $67a9: $21 $1a $00
    daa                                           ; $67ac: $27
    nop                                           ; $67ad: $00
    inc d                                         ; $67ae: $14
    ld l, $1e                                     ; $67af: $2e $1e
    nop                                           ; $67b1: $00
    rrca                                          ; $67b2: $0f
    rst $38                                       ; $67b3: $ff
    inc bc                                        ; $67b4: $03
    dec d                                         ; $67b5: $15
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    inc sp                                        ; $67b8: $33
    ld [bc], a                                    ; $67b9: $02
    inc [hl]                                      ; $67ba: $34
    dec d                                         ; $67bb: $15
    ld b, e                                       ; $67bc: $43
    nop                                           ; $67bd: $00
    inc sp                                        ; $67be: $33
    ld [bc], a                                    ; $67bf: $02
    dec [hl]                                      ; $67c0: $35
    ld l, $09                                     ; $67c1: $2e $09
    nop                                           ; $67c3: $00
    rla                                           ; $67c4: $17
    cpl                                           ; $67c5: $2f
    nop                                           ; $67c6: $00
    ld e, $2f                                     ; $67c7: $1e $2f
    nop                                           ; $67c9: $00
    ld h, d                                       ; $67ca: $62
    stop                                          ; $67cb: $10 $00
    ld d, a                                       ; $67cd: $57
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    add hl, bc                                    ; $67d3: $09
    nop                                           ; $67d4: $00
    ld d, h                                       ; $67d5: $54
    dec b                                         ; $67d6: $05
    ld d, $00                                     ; $67d7: $16 $00
    add hl, bc                                    ; $67d9: $09
    inc c                                         ; $67da: $0c
    ld bc, $0305                                  ; $67db: $01 $05 $03
    nop                                           ; $67de: $00
    ld e, a                                       ; $67df: $5f
    ld bc, $0000                                  ; $67e0: $01 $00 $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    add hl, bc                                    ; $67e5: $09
    db $10                                        ; $67e6: $10
    ld bc, $0305                                  ; $67e7: $01 $05 $03
    nop                                           ; $67ea: $00
    ld e, a                                       ; $67eb: $5f
    ld bc, $0000                                  ; $67ec: $01 $00 $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    ld d, [hl]                                    ; $67f1: $56
    nop                                           ; $67f2: $00
    nop                                           ; $67f3: $00
    rla                                           ; $67f4: $17
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    inc e                                         ; $67f7: $1c
    ld c, l                                       ; $67f8: $4d
    nop                                           ; $67f9: $00
    ld e, a                                       ; $67fa: $5f
    ld bc, $1500                                  ; $67fb: $01 $00 $15
    add hl, sp                                    ; $67fe: $39
    nop                                           ; $67ff: $00
    inc sp                                        ; $6800: $33
    ld [bc], a                                    ; $6801: $02
    ld l, l                                       ; $6802: $6d
    dec d                                         ; $6803: $15
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    inc sp                                        ; $6806: $33
    ld [bc], a                                    ; $6807: $02
    ld l, [hl]                                    ; $6808: $6e
    dec d                                         ; $6809: $15
    add hl, sp                                    ; $680a: $39
    nop                                           ; $680b: $00
    inc sp                                        ; $680c: $33
    ld [bc], a                                    ; $680d: $02
    ld l, a                                       ; $680e: $6f
    ld d, a                                       ; $680f: $57
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    rrca                                          ; $6812: $0f
    db $10                                        ; $6813: $10
    ld bc, $0000                                  ; $6814: $01 $00 $00
    nop                                           ; $6817: $00
    ld e, a                                       ; $6818: $5f
    ld bc, $0000                                  ; $6819: $01 $00 $00
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    ld e, a                                       ; $681e: $5f
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    add hl, bc                                    ; $6821: $09
    nop                                           ; $6822: $00
    ld h, $05                                     ; $6823: $26 $05
    rlca                                          ; $6825: $07
    nop                                           ; $6826: $00
    ld d, [hl]                                    ; $6827: $56
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    ld e, a                                       ; $682a: $5f
    ld bc, $1500                                  ; $682b: $01 $00 $15
    dec a                                         ; $682e: $3d
    nop                                           ; $682f: $00
    inc sp                                        ; $6830: $33
    ld bc, $57cc                                  ; $6831: $01 $cc $57
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    add hl, bc                                    ; $6839: $09
    nop                                           ; $683a: $00
    daa                                           ; $683b: $27
    dec b                                         ; $683c: $05
    rlca                                          ; $683d: $07
    nop                                           ; $683e: $00
    ld d, [hl]                                    ; $683f: $56
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    ld e, a                                       ; $6842: $5f
    ld bc, $1500                                  ; $6843: $01 $00 $15
    dec a                                         ; $6846: $3d
    nop                                           ; $6847: $00
    inc sp                                        ; $6848: $33
    ld bc, $57cc                                  ; $6849: $01 $cc $57
    nop                                           ; $684c: $00
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    add hl, bc                                    ; $6851: $09
    nop                                           ; $6852: $00
    scf                                           ; $6853: $37
    dec b                                         ; $6854: $05
    rlca                                          ; $6855: $07
    nop                                           ; $6856: $00
    ld d, [hl]                                    ; $6857: $56
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    ld e, a                                       ; $685a: $5f
    ld bc, $1500                                  ; $685b: $01 $00 $15
    dec a                                         ; $685e: $3d
    nop                                           ; $685f: $00
    inc sp                                        ; $6860: $33
    ld bc, $57cc                                  ; $6861: $01 $cc $57
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    add hl, bc                                    ; $6869: $09
    nop                                           ; $686a: $00
    add hl, sp                                    ; $686b: $39
    dec b                                         ; $686c: $05
    rlca                                          ; $686d: $07
    nop                                           ; $686e: $00
    ld d, [hl]                                    ; $686f: $56
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    ld e, a                                       ; $6872: $5f
    ld bc, $1500                                  ; $6873: $01 $00 $15
    dec a                                         ; $6876: $3d
    nop                                           ; $6877: $00
    inc sp                                        ; $6878: $33
    ld bc, $57cc                                  ; $6879: $01 $cc $57
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00
    add hl, bc                                    ; $6881: $09
    nop                                           ; $6882: $00
    ld e, d                                       ; $6883: $5a
    dec b                                         ; $6884: $05
    rlca                                          ; $6885: $07
    nop                                           ; $6886: $00
    ld d, [hl]                                    ; $6887: $56
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    ld e, a                                       ; $688a: $5f
    ld bc, $1500                                  ; $688b: $01 $00 $15
    dec a                                         ; $688e: $3d
    nop                                           ; $688f: $00
    inc sp                                        ; $6890: $33
    ld bc, $57cc                                  ; $6891: $01 $cc $57
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    add hl, bc                                    ; $6899: $09
    nop                                           ; $689a: $00
    ld b, c                                       ; $689b: $41
    dec b                                         ; $689c: $05
    rlca                                          ; $689d: $07
    nop                                           ; $689e: $00
    ld d, [hl]                                    ; $689f: $56
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    ld e, a                                       ; $68a2: $5f
    ld bc, $1500                                  ; $68a3: $01 $00 $15
    dec a                                         ; $68a6: $3d
    nop                                           ; $68a7: $00
    inc sp                                        ; $68a8: $33
    ld bc, $57cc                                  ; $68a9: $01 $cc $57
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    add hl, bc                                    ; $68b1: $09
    nop                                           ; $68b2: $00
    ld c, b                                       ; $68b3: $48
    dec b                                         ; $68b4: $05
    rlca                                          ; $68b5: $07
    nop                                           ; $68b6: $00
    ld d, [hl]                                    ; $68b7: $56
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    ld e, a                                       ; $68ba: $5f
    ld bc, $1500                                  ; $68bb: $01 $00 $15
    dec a                                         ; $68be: $3d
    nop                                           ; $68bf: $00
    inc sp                                        ; $68c0: $33
    ld bc, $57cc                                  ; $68c1: $01 $cc $57
    nop                                           ; $68c4: $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    ld d, [hl]                                    ; $68c9: $56
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    ld e, a                                       ; $68cc: $5f
    ld bc, $2e00                                  ; $68cd: $01 $00 $2e
    dec d                                         ; $68d0: $15
    nop                                           ; $68d1: $00
    ld d, a                                       ; $68d2: $57
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    ld a, c                                       ; $68d5: $79
    inc bc                                        ; $68d6: $03
    ld l, $00                                     ; $68d7: $2e $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    ld e, a                                       ; $68db: $5f
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    add hl, bc                                    ; $68de: $09
    nop                                           ; $68df: $00
    ld h, $05                                     ; $68e0: $26 $05
    ld [de], a                                    ; $68e2: $12
    nop                                           ; $68e3: $00
    ld d, [hl]                                    ; $68e4: $56
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    rla                                           ; $68e7: $17
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    inc e                                         ; $68ea: $1c
    dec l                                         ; $68eb: $2d
    inc c                                         ; $68ec: $0c
    ld e, a                                       ; $68ed: $5f
    ld bc, $0900                                  ; $68ee: $01 $00 $09
    rlca                                          ; $68f1: $07
    ld bc, $0705                                  ; $68f2: $01 $05 $07
    nop                                           ; $68f5: $00
    dec d                                         ; $68f6: $15
    ld b, b                                       ; $68f7: $40
    nop                                           ; $68f8: $00
    inc sp                                        ; $68f9: $33
    add hl, bc                                    ; $68fa: $09
    ld h, a                                       ; $68fb: $67
    dec d                                         ; $68fc: $15
    nop                                           ; $68fd: $00
    nop                                           ; $68fe: $00
    ld b, d                                       ; $68ff: $42
    nop                                           ; $6900: $00
    ld bc, $0057                                  ; $6901: $01 $57 $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    dec d                                         ; $6908: $15
    ld b, b                                       ; $6909: $40
    nop                                           ; $690a: $00
    inc sp                                        ; $690b: $33
    add hl, bc                                    ; $690c: $09
    ld h, [hl]                                    ; $690d: $66
    rrca                                          ; $690e: $0f
    rlca                                          ; $690f: $07
    ld bc, $0057                                  ; $6910: $01 $57 $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    add hl, bc                                    ; $6917: $09
    nop                                           ; $6918: $00
    daa                                           ; $6919: $27
    dec b                                         ; $691a: $05
    ld [de], a                                    ; $691b: $12
    nop                                           ; $691c: $00
    ld d, [hl]                                    ; $691d: $56
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    rla                                           ; $6920: $17
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    inc e                                         ; $6923: $1c
    dec l                                         ; $6924: $2d
    inc c                                         ; $6925: $0c
    ld e, a                                       ; $6926: $5f
    ld bc, $0900                                  ; $6927: $01 $00 $09
    rlca                                          ; $692a: $07
    ld bc, $0705                                  ; $692b: $01 $05 $07
    nop                                           ; $692e: $00
    dec d                                         ; $692f: $15
    ld b, b                                       ; $6930: $40
    nop                                           ; $6931: $00
    inc sp                                        ; $6932: $33
    add hl, bc                                    ; $6933: $09
    ld h, a                                       ; $6934: $67
    dec d                                         ; $6935: $15
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    ld b, d                                       ; $6938: $42
    nop                                           ; $6939: $00
    ld bc, $0057                                  ; $693a: $01 $57 $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    dec d                                         ; $6941: $15
    ld b, b                                       ; $6942: $40
    nop                                           ; $6943: $00
    inc sp                                        ; $6944: $33
    add hl, bc                                    ; $6945: $09
    ld h, [hl]                                    ; $6946: $66
    rrca                                          ; $6947: $0f
    rlca                                          ; $6948: $07
    ld bc, $0057                                  ; $6949: $01 $57 $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    ld e, a                                       ; $6950: $5f
    ld bc, $0000                                  ; $6951: $01 $00 $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    ld e, a                                       ; $6956: $5f
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    add hl, bc                                    ; $6959: $09
    nop                                           ; $695a: $00
    ld de, $2005                                  ; $695b: $11 $05 $20
    nop                                           ; $695e: $00
    add hl, bc                                    ; $695f: $09
    rra                                           ; $6960: $1f
    ld bc, $0305                                  ; $6961: $01 $05 $03
    nop                                           ; $6964: $00
    ld e, a                                       ; $6965: $5f
    ld bc, $0000                                  ; $6966: $01 $00 $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    add hl, bc                                    ; $696b: $09
    ld e, $01                                     ; $696c: $1e $01
    dec b                                         ; $696e: $05
    ld a, [de]                                    ; $696f: $1a
    nop                                           ; $6970: $00
    ld d, [hl]                                    ; $6971: $56
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    rla                                           ; $6974: $17
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    dec de                                        ; $6977: $1b
    ld b, $00                                     ; $6978: $06 $00
    inc de                                        ; $697a: $13
    rst $38                                       ; $697b: $ff
    rst $20                                       ; $697c: $e7
    inc d                                         ; $697d: $14
    rst $38                                       ; $697e: $ff
    or $15                                        ; $697f: $f6 $15
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    ld d, $2f                                     ; $6983: $16 $2f
    ld bc, $021b                                  ; $6985: $01 $1b $02
    nop                                           ; $6988: $00
    rla                                           ; $6989: $17
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    dec de                                        ; $698c: $1b
    ld b, $00                                     ; $698d: $06 $00
    ld e, a                                       ; $698f: $5f
    ld bc, $1500                                  ; $6990: $01 $00 $15
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    inc sp                                        ; $6995: $33
    ld [bc], a                                    ; $6996: $02
    ld e, d                                       ; $6997: $5a
    dec d                                         ; $6998: $15
    ld b, e                                       ; $6999: $43
    nop                                           ; $699a: $00
    inc sp                                        ; $699b: $33
    ld [bc], a                                    ; $699c: $02
    ld e, e                                       ; $699d: $5b
    dec d                                         ; $699e: $15
    nop                                           ; $699f: $00
    nop                                           ; $69a0: $00
    inc sp                                        ; $69a1: $33
    ld [bc], a                                    ; $69a2: $02
    ld e, h                                       ; $69a3: $5c
    dec d                                         ; $69a4: $15
    ld b, e                                       ; $69a5: $43
    nop                                           ; $69a6: $00
    inc sp                                        ; $69a7: $33
    ld [bc], a                                    ; $69a8: $02
    ld e, l                                       ; $69a9: $5d
    ld l, $3c                                     ; $69aa: $2e $3c
    nop                                           ; $69ac: $00
    rla                                           ; $69ad: $17
    cpl                                           ; $69ae: $2f
    nop                                           ; $69af: $00
    ld e, $2f                                     ; $69b0: $1e $2f
    nop                                           ; $69b2: $00
    ld d, a                                       ; $69b3: $57
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    rrca                                          ; $69b6: $0f
    rra                                           ; $69b7: $1f
    ld bc, $0000                                  ; $69b8: $01 $00 $00
    nop                                           ; $69bb: $00
    ld e, a                                       ; $69bc: $5f
    ld bc, $0000                                  ; $69bd: $01 $00 $00
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    dec c                                         ; $69c2: $0d
    nop                                           ; $69c3: $00
    nop                                           ; $69c4: $00
    nop                                           ; $69c5: $00
    jr jr_00b_69ca                                ; $69c6: $18 $02

    dec h                                         ; $69c8: $25
    ld [bc], a                                    ; $69c9: $02

jr_00b_69ca:
    and b                                         ; $69ca: $a0
    inc b                                         ; $69cb: $04
    add e                                         ; $69cc: $83
    ld b, $6c                                     ; $69cd: $06 $6c
    ld [$0a49], sp                                ; $69cf: $08 $49 $0a
    inc l                                         ; $69d2: $2c
    ld a, [bc]                                    ; $69d3: $0a
    ld d, [hl]                                    ; $69d4: $56
    dec bc                                        ; $69d5: $0b
    inc de                                        ; $69d6: $13
    dec bc                                        ; $69d7: $0b
    ret nc                                        ; $69d8: $d0

    inc c                                         ; $69d9: $0c
    adc l                                         ; $69da: $8d
    dec c                                         ; $69db: $0d
    ld [$0009], sp                                ; $69dc: $08 $09 $00
    rlca                                          ; $69df: $07
    dec b                                         ; $69e0: $05
    ld b, $00                                     ; $69e1: $06 $00
    dec d                                         ; $69e3: $15
    nop                                           ; $69e4: $00
    nop                                           ; $69e5: $00
    inc sp                                        ; $69e6: $33
    ld bc, $157b                                  ; $69e7: $01 $7b $15
    ld l, $00                                     ; $69ea: $2e $00
    inc sp                                        ; $69ec: $33
    ld bc, $0089                                  ; $69ed: $01 $89 $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    nop                                           ; $69f4: $00
    ld e, a                                       ; $69f5: $5f
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    add hl, bc                                    ; $69f8: $09
    nop                                           ; $69f9: $00
    ld d, d                                       ; $69fa: $52
    dec b                                         ; $69fb: $05
    ld a, [bc]                                    ; $69fc: $0a
    nop                                           ; $69fd: $00
    ld d, [hl]                                    ; $69fe: $56
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    rla                                           ; $6a01: $17
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    inc e                                         ; $6a04: $1c
    ld b, l                                       ; $6a05: $45
    ld bc, $015f                                  ; $6a06: $01 $5f $01
    nop                                           ; $6a09: $00
    dec d                                         ; $6a0a: $15
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    inc sp                                        ; $6a0d: $33
    ld bc, $1595                                  ; $6a0e: $01 $95 $15
    ld d, e                                       ; $6a11: $53
    nop                                           ; $6a12: $00
    inc sp                                        ; $6a13: $33
    ld a, [bc]                                    ; $6a14: $0a
    ld de, $0057                                  ; $6a15: $11 $57 $00
    nop                                           ; $6a18: $00
    add hl, bc                                    ; $6a19: $09
    nop                                           ; $6a1a: $00
    rlca                                          ; $6a1b: $07
    dec b                                         ; $6a1c: $05
    ld a, [bc]                                    ; $6a1d: $0a
    nop                                           ; $6a1e: $00
    ld d, [hl]                                    ; $6a1f: $56
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    rla                                           ; $6a22: $17
    nop                                           ; $6a23: $00
    nop                                           ; $6a24: $00
    inc e                                         ; $6a25: $1c
    ld b, l                                       ; $6a26: $45
    ld bc, $015f                                  ; $6a27: $01 $5f $01
    nop                                           ; $6a2a: $00
    dec d                                         ; $6a2b: $15
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    inc sp                                        ; $6a2e: $33
    ld bc, $1578                                  ; $6a2f: $01 $78 $15
    ld d, e                                       ; $6a32: $53
    nop                                           ; $6a33: $00
    inc sp                                        ; $6a34: $33
    ld bc, $5788                                  ; $6a35: $01 $88 $57
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    add hl, bc                                    ; $6a3a: $09
    nop                                           ; $6a3b: $00
    ld [$0b05], sp                                ; $6a3c: $08 $05 $0b
    nop                                           ; $6a3f: $00
    ld d, [hl]                                    ; $6a40: $56
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    rla                                           ; $6a43: $17
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    inc e                                         ; $6a46: $1c
    ld b, l                                       ; $6a47: $45
    ld bc, $015f                                  ; $6a48: $01 $5f $01
    nop                                           ; $6a4b: $00
    dec d                                         ; $6a4c: $15
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    inc sp                                        ; $6a4f: $33
    ld bc, $15cd                                  ; $6a50: $01 $cd $15
    ld d, e                                       ; $6a53: $53
    nop                                           ; $6a54: $00
    inc sp                                        ; $6a55: $33
    ld bc, $57d4                                  ; $6a56: $01 $d4 $57
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    add hl, bc                                    ; $6a5e: $09
    nop                                           ; $6a5f: $00
    ld d, e                                       ; $6a60: $53
    dec b                                         ; $6a61: $05
    add hl, bc                                    ; $6a62: $09
    nop                                           ; $6a63: $00
    ld d, [hl]                                    ; $6a64: $56
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    rla                                           ; $6a67: $17
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    inc e                                         ; $6a6a: $1c
    ld b, l                                       ; $6a6b: $45
    ld bc, $015f                                  ; $6a6c: $01 $5f $01
    nop                                           ; $6a6f: $00
    dec d                                         ; $6a70: $15
    ld d, e                                       ; $6a71: $53
    nop                                           ; $6a72: $00
    inc sp                                        ; $6a73: $33
    ld [bc], a                                    ; $6a74: $02
    inc h                                         ; $6a75: $24
    ld d, a                                       ; $6a76: $57
    nop                                           ; $6a77: $00
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00
    add hl, bc                                    ; $6a7c: $09
    nop                                           ; $6a7d: $00
    ld b, $05                                     ; $6a7e: $06 $05
    add hl, bc                                    ; $6a80: $09
    nop                                           ; $6a81: $00
    ld d, [hl]                                    ; $6a82: $56
    nop                                           ; $6a83: $00
    nop                                           ; $6a84: $00
    rla                                           ; $6a85: $17
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    inc e                                         ; $6a88: $1c
    ld b, l                                       ; $6a89: $45
    ld bc, $015f                                  ; $6a8a: $01 $5f $01
    nop                                           ; $6a8d: $00
    dec d                                         ; $6a8e: $15
    ld d, e                                       ; $6a8f: $53
    nop                                           ; $6a90: $00
    inc sp                                        ; $6a91: $33
    ld bc, $5762                                  ; $6a92: $01 $62 $57
    nop                                           ; $6a95: $00
    nop                                           ; $6a96: $00
    nop                                           ; $6a97: $00
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    add hl, bc                                    ; $6a9a: $09
    nop                                           ; $6a9b: $00
    rlca                                          ; $6a9c: $07
    dec b                                         ; $6a9d: $05
    add hl, bc                                    ; $6a9e: $09
    nop                                           ; $6a9f: $00
    ld d, [hl]                                    ; $6aa0: $56
    nop                                           ; $6aa1: $00
    nop                                           ; $6aa2: $00
    rla                                           ; $6aa3: $17
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    inc e                                         ; $6aa6: $1c
    ld b, l                                       ; $6aa7: $45
    ld bc, $015f                                  ; $6aa8: $01 $5f $01
    nop                                           ; $6aab: $00
    dec d                                         ; $6aac: $15
    ld d, e                                       ; $6aad: $53
    nop                                           ; $6aae: $00
    inc sp                                        ; $6aaf: $33
    ld bc, $5762                                  ; $6ab0: $01 $62 $57
    nop                                           ; $6ab3: $00
    nop                                           ; $6ab4: $00
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    add hl, bc                                    ; $6ab8: $09
    nop                                           ; $6ab9: $00
    add hl, bc                                    ; $6aba: $09
    dec b                                         ; $6abb: $05
    add hl, bc                                    ; $6abc: $09
    nop                                           ; $6abd: $00
    ld d, [hl]                                    ; $6abe: $56
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    rla                                           ; $6ac1: $17
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    inc e                                         ; $6ac4: $1c
    ld b, l                                       ; $6ac5: $45
    ld bc, $015f                                  ; $6ac6: $01 $5f $01
    nop                                           ; $6ac9: $00
    dec d                                         ; $6aca: $15
    ld d, e                                       ; $6acb: $53
    nop                                           ; $6acc: $00
    inc sp                                        ; $6acd: $33
    ld bc, $5762                                  ; $6ace: $01 $62 $57
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    nop                                           ; $6ad4: $00
    nop                                           ; $6ad5: $00
    add hl, bc                                    ; $6ad6: $09
    nop                                           ; $6ad7: $00
    ld d, [hl]                                    ; $6ad8: $56
    dec b                                         ; $6ad9: $05
    add hl, bc                                    ; $6ada: $09
    nop                                           ; $6adb: $00
    ld d, [hl]                                    ; $6adc: $56
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    rla                                           ; $6adf: $17
    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    inc e                                         ; $6ae2: $1c
    ld b, l                                       ; $6ae3: $45
    ld bc, $015f                                  ; $6ae4: $01 $5f $01
    nop                                           ; $6ae7: $00
    dec d                                         ; $6ae8: $15
    ld d, e                                       ; $6ae9: $53
    nop                                           ; $6aea: $00
    inc sp                                        ; $6aeb: $33
    ld bc, $5762                                  ; $6aec: $01 $62 $57
    nop                                           ; $6aef: $00
    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    nop                                           ; $6af2: $00
    nop                                           ; $6af3: $00
    add hl, bc                                    ; $6af4: $09
    nop                                           ; $6af5: $00
    dec bc                                        ; $6af6: $0b
    dec b                                         ; $6af7: $05
    dec bc                                        ; $6af8: $0b
    nop                                           ; $6af9: $00
    ld d, [hl]                                    ; $6afa: $56
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    rla                                           ; $6afd: $17
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    inc e                                         ; $6b00: $1c
    ld b, l                                       ; $6b01: $45
    ld bc, $015f                                  ; $6b02: $01 $5f $01
    nop                                           ; $6b05: $00
    dec d                                         ; $6b06: $15
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    inc sp                                        ; $6b09: $33
    inc bc                                        ; $6b0a: $03
    ld [hl], c                                    ; $6b0b: $71
    dec d                                         ; $6b0c: $15
    ld d, e                                       ; $6b0d: $53
    nop                                           ; $6b0e: $00
    inc sp                                        ; $6b0f: $33
    inc bc                                        ; $6b10: $03
    ld a, e                                       ; $6b11: $7b
    ld d, a                                       ; $6b12: $57
    nop                                           ; $6b13: $00
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    nop                                           ; $6b17: $00
    add hl, bc                                    ; $6b18: $09
    nop                                           ; $6b19: $00
    ld e, h                                       ; $6b1a: $5c
    dec b                                         ; $6b1b: $05
    dec bc                                        ; $6b1c: $0b
    nop                                           ; $6b1d: $00
    ld d, [hl]                                    ; $6b1e: $56
    nop                                           ; $6b1f: $00
    nop                                           ; $6b20: $00
    rla                                           ; $6b21: $17
    nop                                           ; $6b22: $00
    nop                                           ; $6b23: $00
    inc e                                         ; $6b24: $1c
    ld b, l                                       ; $6b25: $45
    ld bc, $015f                                  ; $6b26: $01 $5f $01
    nop                                           ; $6b29: $00
    dec d                                         ; $6b2a: $15
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    inc sp                                        ; $6b2d: $33
    inc b                                         ; $6b2e: $04
    call nc, Call_00b_5315                        ; $6b2f: $d4 $15 $53
    nop                                           ; $6b32: $00
    inc sp                                        ; $6b33: $33
    inc b                                         ; $6b34: $04
    ld [c], a                                     ; $6b35: $e2
    ld d, a                                       ; $6b36: $57
    nop                                           ; $6b37: $00
    nop                                           ; $6b38: $00
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    add hl, bc                                    ; $6b3c: $09
    nop                                           ; $6b3d: $00
    db $10                                        ; $6b3e: $10
    dec b                                         ; $6b3f: $05
    dec bc                                        ; $6b40: $0b
    nop                                           ; $6b41: $00
    ld d, [hl]                                    ; $6b42: $56
    nop                                           ; $6b43: $00
    nop                                           ; $6b44: $00
    rla                                           ; $6b45: $17
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    inc e                                         ; $6b48: $1c
    ld b, l                                       ; $6b49: $45
    ld bc, $015f                                  ; $6b4a: $01 $5f $01
    nop                                           ; $6b4d: $00
    dec d                                         ; $6b4e: $15
    nop                                           ; $6b4f: $00
    nop                                           ; $6b50: $00
    inc sp                                        ; $6b51: $33
    ld [bc], a                                    ; $6b52: $02
    ld b, l                                       ; $6b53: $45
    dec d                                         ; $6b54: $15
    ld d, e                                       ; $6b55: $53
    nop                                           ; $6b56: $00
    inc sp                                        ; $6b57: $33
    ld [bc], a                                    ; $6b58: $02
    sub h                                         ; $6b59: $94
    ld d, a                                       ; $6b5a: $57
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    add hl, bc                                    ; $6b60: $09
    nop                                           ; $6b61: $00
    ld de, $0b05                                  ; $6b62: $11 $05 $0b
    nop                                           ; $6b65: $00
    ld d, [hl]                                    ; $6b66: $56
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    rla                                           ; $6b69: $17
    nop                                           ; $6b6a: $00
    nop                                           ; $6b6b: $00
    inc e                                         ; $6b6c: $1c
    ld b, l                                       ; $6b6d: $45
    ld bc, $015f                                  ; $6b6e: $01 $5f $01
    nop                                           ; $6b71: $00
    dec d                                         ; $6b72: $15
    nop                                           ; $6b73: $00
    nop                                           ; $6b74: $00
    inc sp                                        ; $6b75: $33
    ld [bc], a                                    ; $6b76: $02
    ld b, l                                       ; $6b77: $45
    dec d                                         ; $6b78: $15
    ld d, e                                       ; $6b79: $53
    nop                                           ; $6b7a: $00
    inc sp                                        ; $6b7b: $33
    ld [bc], a                                    ; $6b7c: $02
    sub h                                         ; $6b7d: $94
    ld d, a                                       ; $6b7e: $57
    nop                                           ; $6b7f: $00
    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    nop                                           ; $6b82: $00
    nop                                           ; $6b83: $00
    add hl, bc                                    ; $6b84: $09
    nop                                           ; $6b85: $00
    ld d, h                                       ; $6b86: $54
    dec b                                         ; $6b87: $05
    add hl, bc                                    ; $6b88: $09
    nop                                           ; $6b89: $00
    ld d, [hl]                                    ; $6b8a: $56
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    rla                                           ; $6b8d: $17
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    inc e                                         ; $6b90: $1c
    ld b, l                                       ; $6b91: $45
    ld bc, $015f                                  ; $6b92: $01 $5f $01
    nop                                           ; $6b95: $00
    dec d                                         ; $6b96: $15
    ld d, e                                       ; $6b97: $53
    nop                                           ; $6b98: $00
    inc sp                                        ; $6b99: $33
    ld [bc], a                                    ; $6b9a: $02
    inc h                                         ; $6b9b: $24
    ld d, a                                       ; $6b9c: $57
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    nop                                           ; $6ba0: $00
    nop                                           ; $6ba1: $00
    add hl, bc                                    ; $6ba2: $09
    nop                                           ; $6ba3: $00
    ccf                                           ; $6ba4: $3f
    dec b                                         ; $6ba5: $05
    add hl, bc                                    ; $6ba6: $09
    nop                                           ; $6ba7: $00
    ld d, [hl]                                    ; $6ba8: $56
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00
    rla                                           ; $6bab: $17
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    inc e                                         ; $6bae: $1c
    ld b, l                                       ; $6baf: $45
    ld bc, $015f                                  ; $6bb0: $01 $5f $01
    nop                                           ; $6bb3: $00
    dec d                                         ; $6bb4: $15
    ld d, e                                       ; $6bb5: $53
    nop                                           ; $6bb6: $00
    inc sp                                        ; $6bb7: $33
    add hl, bc                                    ; $6bb8: $09
    ld a, [c]                                     ; $6bb9: $f2
    ld d, a                                       ; $6bba: $57
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    add hl, bc                                    ; $6bc0: $09
    nop                                           ; $6bc1: $00
    dec a                                         ; $6bc2: $3d
    dec b                                         ; $6bc3: $05
    add hl, bc                                    ; $6bc4: $09
    nop                                           ; $6bc5: $00
    ld d, [hl]                                    ; $6bc6: $56
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    rla                                           ; $6bc9: $17
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    inc e                                         ; $6bcc: $1c
    ld b, l                                       ; $6bcd: $45
    ld bc, $015f                                  ; $6bce: $01 $5f $01
    nop                                           ; $6bd1: $00
    dec d                                         ; $6bd2: $15
    ld d, e                                       ; $6bd3: $53
    nop                                           ; $6bd4: $00
    inc sp                                        ; $6bd5: $33
    dec bc                                        ; $6bd6: $0b
    ld h, c                                       ; $6bd7: $61
    ld d, a                                       ; $6bd8: $57
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    add hl, bc                                    ; $6bde: $09
    nop                                           ; $6bdf: $00
    ld e, e                                       ; $6be0: $5b
    dec b                                         ; $6be1: $05
    add hl, bc                                    ; $6be2: $09
    nop                                           ; $6be3: $00
    ld d, [hl]                                    ; $6be4: $56
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    rla                                           ; $6be7: $17
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    inc e                                         ; $6bea: $1c
    ld b, l                                       ; $6beb: $45
    ld bc, $015f                                  ; $6bec: $01 $5f $01
    nop                                           ; $6bef: $00
    dec d                                         ; $6bf0: $15
    ld d, e                                       ; $6bf1: $53
    nop                                           ; $6bf2: $00
    inc sp                                        ; $6bf3: $33
    dec bc                                        ; $6bf4: $0b
    ld h, c                                       ; $6bf5: $61
    ld d, a                                       ; $6bf6: $57
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    ld e, a                                       ; $6bfc: $5f
    ld bc, $0000                                  ; $6bfd: $01 $00 $00
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    ld e, a                                       ; $6c02: $5f
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    add hl, bc                                    ; $6c05: $09
    nop                                           ; $6c06: $00
    ld d, e                                       ; $6c07: $53
    dec b                                         ; $6c08: $05
    dec h                                         ; $6c09: $25
    nop                                           ; $6c0a: $00
    add hl, bc                                    ; $6c0b: $09
    rla                                           ; $6c0c: $17
    ld bc, $0305                                  ; $6c0d: $01 $05 $03
    nop                                           ; $6c10: $00
    ld e, a                                       ; $6c11: $5f
    ld bc, $0000                                  ; $6c12: $01 $00 $00
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    add hl, bc                                    ; $6c17: $09
    ld a, [bc]                                    ; $6c18: $0a
    ld bc, $1f05                                  ; $6c19: $01 $05 $1f
    nop                                           ; $6c1c: $00
    ld a, d                                       ; $6c1d: $7a
    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    ld d, [hl]                                    ; $6c20: $56
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    rla                                           ; $6c23: $17
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    dec de                                        ; $6c26: $1b
    ld [bc], a                                    ; $6c27: $02
    nop                                           ; $6c28: $00
    inc de                                        ; $6c29: $13
    nop                                           ; $6c2a: $00
    add e                                         ; $6c2b: $83
    inc d                                         ; $6c2c: $14
    nop                                           ; $6c2d: $00
    ld h, b                                       ; $6c2e: $60
    dec d                                         ; $6c2f: $15
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00
    ld d, $0d                                     ; $6c32: $16 $0d
    nop                                           ; $6c34: $00
    dec de                                        ; $6c35: $1b
    ld [bc], a                                    ; $6c36: $02
    nop                                           ; $6c37: $00
    ld e, a                                       ; $6c38: $5f
    ld bc, $1500                                  ; $6c39: $01 $00 $15
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    inc sp                                        ; $6c3e: $33
    inc bc                                        ; $6c3f: $03
    ld c, $17                                     ; $6c40: $0e $17
    dec c                                         ; $6c42: $0d
    nop                                           ; $6c43: $00
    dec d                                         ; $6c44: $15
    ld b, $00                                     ; $6c45: $06 $00
    add hl, de                                    ; $6c47: $19
    nop                                           ; $6c48: $00
    inc d                                         ; $6c49: $14
    dec de                                        ; $6c4a: $1b
    ld b, $00                                     ; $6c4b: $06 $00
    dec d                                         ; $6c4d: $15
    ld bc, $3300                                  ; $6c4e: $01 $00 $33
    inc bc                                        ; $6c51: $03
    rrca                                          ; $6c52: $0f
    dec d                                         ; $6c53: $15
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    inc sp                                        ; $6c56: $33
    inc bc                                        ; $6c57: $03
    db $10                                        ; $6c58: $10
    add hl, sp                                    ; $6c59: $39
    ld e, c                                       ; $6c5a: $59
    ld bc, $0115                                  ; $6c5b: $01 $15 $01
    nop                                           ; $6c5e: $00
    inc sp                                        ; $6c5f: $33
    inc bc                                        ; $6c60: $03
    ld de, $2b0f                                  ; $6c61: $11 $0f $2b
    ld bc, $1762                                  ; $6c64: $01 $62 $17
    nop                                           ; $6c67: $00
    ld a, d                                       ; $6c68: $7a
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    ld d, l                                       ; $6c6b: $55
    ld bc, $0f00                                  ; $6c6c: $01 $00 $0f
    rla                                           ; $6c6f: $17
    ld bc, $0057                                  ; $6c70: $01 $57 $00
    nop                                           ; $6c73: $00
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    ld e, a                                       ; $6c77: $5f
    ld bc, $0000                                  ; $6c78: $01 $00 $00
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    ld e, a                                       ; $6c7d: $5f
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    add hl, bc                                    ; $6c80: $09
    nop                                           ; $6c81: $00
    ld h, $05                                     ; $6c82: $26 $05
    ld hl, $1300                                  ; $6c84: $21 $00 $13
    rst $38                                       ; $6c87: $ff
    db $ec                                        ; $6c88: $ec
    inc d                                         ; $6c89: $14
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    dec d                                         ; $6c8c: $15
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    ld d, $37                                     ; $6c8f: $16 $37
    ld bc, $0052                                  ; $6c91: $01 $52 $00
    nop                                           ; $6c94: $00
    dec de                                        ; $6c95: $1b
    inc b                                         ; $6c96: $04
    nop                                           ; $6c97: $00
    inc de                                        ; $6c98: $13
    nop                                           ; $6c99: $00
    inc d                                         ; $6c9a: $14
    inc d                                         ; $6c9b: $14
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    dec d                                         ; $6c9e: $15
    nop                                           ; $6c9f: $00
    nop                                           ; $6ca0: $00
    ld d, $38                                     ; $6ca1: $16 $38
    ld bc, $0052                                  ; $6ca3: $01 $52 $00
    nop                                           ; $6ca6: $00
    dec de                                        ; $6ca7: $1b
    inc b                                         ; $6ca8: $04
    nop                                           ; $6ca9: $00
    inc de                                        ; $6caa: $13
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    inc d                                         ; $6cad: $14
    nop                                           ; $6cae: $00
    inc d                                         ; $6caf: $14
    dec d                                         ; $6cb0: $15
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    ld d, $39                                     ; $6cb3: $16 $39
    ld bc, $0052                                  ; $6cb5: $01 $52 $00
    nop                                           ; $6cb8: $00
    dec de                                        ; $6cb9: $1b
    inc b                                         ; $6cba: $04
    nop                                           ; $6cbb: $00
    inc de                                        ; $6cbc: $13
    nop                                           ; $6cbd: $00
    rl h                                          ; $6cbe: $cb $14
    ld bc, $155c                                  ; $6cc0: $01 $5c $15
    dec bc                                        ; $6cc3: $0b
    nop                                           ; $6cc4: $00
    ld d, $5b                                     ; $6cc5: $16 $5b
    nop                                           ; $6cc7: $00
    ld d, d                                       ; $6cc8: $52
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    dec de                                        ; $6ccb: $1b
    ld b, $00                                     ; $6ccc: $06 $00
    ld e, a                                       ; $6cce: $5f
    ld bc, $1700                                  ; $6ccf: $01 $00 $17
    add hl, sp                                    ; $6cd2: $39
    nop                                           ; $6cd3: $00
    ld [hl+], a                                   ; $6cd4: $22
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    rla                                           ; $6cd7: $17
    scf                                           ; $6cd8: $37
    nop                                           ; $6cd9: $00
    ld [hl+], a                                   ; $6cda: $22
    add hl, sp                                    ; $6cdb: $39
    nop                                           ; $6cdc: $00
    rla                                           ; $6cdd: $17
    jr c, jr_00b_6ce0                             ; $6cde: $38 $00

jr_00b_6ce0:
    ld [hl+], a                                   ; $6ce0: $22
    scf                                           ; $6ce1: $37
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    add hl, bc                                    ; $6ce6: $09
    nop                                           ; $6ce7: $00
    daa                                           ; $6ce8: $27
    dec b                                         ; $6ce9: $05
    ld hl, $1300                                  ; $6cea: $21 $00 $13
    rst $38                                       ; $6ced: $ff
    db $ec                                        ; $6cee: $ec
    inc d                                         ; $6cef: $14
    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    dec d                                         ; $6cf2: $15
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    ld d, $37                                     ; $6cf5: $16 $37
    ld bc, $0052                                  ; $6cf7: $01 $52 $00
    nop                                           ; $6cfa: $00
    dec de                                        ; $6cfb: $1b
    inc b                                         ; $6cfc: $04
    nop                                           ; $6cfd: $00
    inc de                                        ; $6cfe: $13
    nop                                           ; $6cff: $00
    inc d                                         ; $6d00: $14
    inc d                                         ; $6d01: $14
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    dec d                                         ; $6d04: $15
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    ld d, $38                                     ; $6d07: $16 $38
    ld bc, $0052                                  ; $6d09: $01 $52 $00
    nop                                           ; $6d0c: $00
    dec de                                        ; $6d0d: $1b
    inc b                                         ; $6d0e: $04
    nop                                           ; $6d0f: $00
    inc de                                        ; $6d10: $13
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    inc d                                         ; $6d13: $14
    nop                                           ; $6d14: $00
    inc d                                         ; $6d15: $14
    dec d                                         ; $6d16: $15
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    ld d, $39                                     ; $6d19: $16 $39
    ld bc, $0052                                  ; $6d1b: $01 $52 $00
    nop                                           ; $6d1e: $00
    dec de                                        ; $6d1f: $1b
    inc b                                         ; $6d20: $04
    nop                                           ; $6d21: $00
    inc de                                        ; $6d22: $13
    nop                                           ; $6d23: $00
    rl h                                          ; $6d24: $cb $14
    ld bc, $155c                                  ; $6d26: $01 $5c $15
    dec bc                                        ; $6d29: $0b
    nop                                           ; $6d2a: $00
    ld d, $5b                                     ; $6d2b: $16 $5b
    nop                                           ; $6d2d: $00
    ld d, d                                       ; $6d2e: $52
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    dec de                                        ; $6d31: $1b
    ld b, $00                                     ; $6d32: $06 $00
    ld e, a                                       ; $6d34: $5f
    ld bc, $1700                                  ; $6d35: $01 $00 $17
    add hl, sp                                    ; $6d38: $39
    nop                                           ; $6d39: $00
    ld [hl+], a                                   ; $6d3a: $22
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    rla                                           ; $6d3d: $17
    scf                                           ; $6d3e: $37
    nop                                           ; $6d3f: $00
    ld [hl+], a                                   ; $6d40: $22
    add hl, sp                                    ; $6d41: $39
    nop                                           ; $6d42: $00
    rla                                           ; $6d43: $17
    jr c, jr_00b_6d46                             ; $6d44: $38 $00

jr_00b_6d46:
    ld [hl+], a                                   ; $6d46: $22
    scf                                           ; $6d47: $37
    nop                                           ; $6d48: $00
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    add hl, bc                                    ; $6d4c: $09
    nop                                           ; $6d4d: $00
    ld c, b                                       ; $6d4e: $48
    dec b                                         ; $6d4f: $05
    inc de                                        ; $6d50: $13
    nop                                           ; $6d51: $00
    inc de                                        ; $6d52: $13
    rst $38                                       ; $6d53: $ff
    db $ec                                        ; $6d54: $ec
    inc d                                         ; $6d55: $14
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    dec d                                         ; $6d58: $15
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    ld d, $68                                     ; $6d5b: $16 $68
    ld bc, $0052                                  ; $6d5d: $01 $52 $00
    nop                                           ; $6d60: $00
    dec de                                        ; $6d61: $1b
    inc b                                         ; $6d62: $04
    nop                                           ; $6d63: $00
    inc de                                        ; $6d64: $13
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    inc d                                         ; $6d67: $14
    nop                                           ; $6d68: $00
    inc d                                         ; $6d69: $14
    dec d                                         ; $6d6a: $15
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    ld d, $69                                     ; $6d6d: $16 $69
    ld bc, $0052                                  ; $6d6f: $01 $52 $00
    nop                                           ; $6d72: $00
    dec de                                        ; $6d73: $1b
    inc b                                         ; $6d74: $04
    nop                                           ; $6d75: $00
    ld e, a                                       ; $6d76: $5f
    ld bc, $1700                                  ; $6d77: $01 $00 $17
    ld l, c                                       ; $6d7a: $69
    nop                                           ; $6d7b: $00
    ld [hl+], a                                   ; $6d7c: $22
    nop                                           ; $6d7d: $00
    nop                                           ; $6d7e: $00
    rla                                           ; $6d7f: $17
    ld l, b                                       ; $6d80: $68
    nop                                           ; $6d81: $00
    ld [hl+], a                                   ; $6d82: $22
    ld l, c                                       ; $6d83: $69
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    add hl, bc                                    ; $6d88: $09
    nop                                           ; $6d89: $00
    rla                                           ; $6d8a: $17
    dec b                                         ; $6d8b: $05
    ld b, $00                                     ; $6d8c: $06 $00
    rrca                                          ; $6d8e: $0f
    scf                                           ; $6d8f: $37
    ld [bc], a                                    ; $6d90: $02
    ld a, d                                       ; $6d91: $7a
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    ld e, a                                       ; $6d94: $5f
    ld bc, $2800                                  ; $6d95: $01 $00 $28
    nop                                           ; $6d98: $00
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    add hl, bc                                    ; $6d9d: $09
    nop                                           ; $6d9e: $00
    add hl, sp                                    ; $6d9f: $39
    dec b                                         ; $6da0: $05
    ld [$1300], sp                                ; $6da1: $08 $00 $13
    ld bc, $140e                                  ; $6da4: $01 $0e $14
    nop                                           ; $6da7: $00
    ld a, [hl+]                                   ; $6da8: $2a
    dec d                                         ; $6da9: $15
    rlca                                          ; $6daa: $07
    nop                                           ; $6dab: $00
    ld d, $22                                     ; $6dac: $16 $22
    nop                                           ; $6dae: $00
    ld d, d                                       ; $6daf: $52
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    ld e, a                                       ; $6db2: $5f
    ld bc, $0000                                  ; $6db3: $01 $00 $00
    nop                                           ; $6db6: $00
    nop                                           ; $6db7: $00
    add hl, bc                                    ; $6db8: $09
    nop                                           ; $6db9: $00
    ld e, b                                       ; $6dba: $58
    dec b                                         ; $6dbb: $05
    inc bc                                        ; $6dbc: $03
    nop                                           ; $6dbd: $00
    ld e, a                                       ; $6dbe: $5f
    ld bc, $0000                                  ; $6dbf: $01 $00 $00
    nop                                           ; $6dc2: $00
    nop                                           ; $6dc3: $00
    add hl, bc                                    ; $6dc4: $09
    nop                                           ; $6dc5: $00
    scf                                           ; $6dc6: $37
    dec b                                         ; $6dc7: $05
    inc bc                                        ; $6dc8: $03
    nop                                           ; $6dc9: $00
    ld e, a                                       ; $6dca: $5f
    ld bc, $0000                                  ; $6dcb: $01 $00 $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    add hl, bc                                    ; $6dd0: $09
    nop                                           ; $6dd1: $00
    ld b, e                                       ; $6dd2: $43
    dec b                                         ; $6dd3: $05
    inc bc                                        ; $6dd4: $03
    nop                                           ; $6dd5: $00
    ld e, a                                       ; $6dd6: $5f
    ld bc, $0000                                  ; $6dd7: $01 $00 $00
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    add hl, bc                                    ; $6ddc: $09
    nop                                           ; $6ddd: $00
    ld e, d                                       ; $6dde: $5a
    dec b                                         ; $6ddf: $05
    inc bc                                        ; $6de0: $03
    nop                                           ; $6de1: $00
    ld e, a                                       ; $6de2: $5f
    ld bc, $0000                                  ; $6de3: $01 $00 $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    add hl, bc                                    ; $6de8: $09
    nop                                           ; $6de9: $00
    inc [hl]                                      ; $6dea: $34
    dec b                                         ; $6deb: $05
    inc bc                                        ; $6dec: $03
    nop                                           ; $6ded: $00
    ld e, a                                       ; $6dee: $5f
    ld bc, $0000                                  ; $6def: $01 $00 $00
    nop                                           ; $6df2: $00
    nop                                           ; $6df3: $00
    add hl, bc                                    ; $6df4: $09
    nop                                           ; $6df5: $00
    ld b, c                                       ; $6df6: $41
    dec b                                         ; $6df7: $05
    inc bc                                        ; $6df8: $03
    nop                                           ; $6df9: $00
    ld e, a                                       ; $6dfa: $5f
    ld bc, $0000                                  ; $6dfb: $01 $00 $00
    nop                                           ; $6dfe: $00
    nop                                           ; $6dff: $00
    inc de                                        ; $6e00: $13
    nop                                           ; $6e01: $00
    sbc c                                         ; $6e02: $99
    inc d                                         ; $6e03: $14
    nop                                           ; $6e04: $00
    ld a, [hl-]                                   ; $6e05: $3a
    dec d                                         ; $6e06: $15
    inc b                                         ; $6e07: $04
    nop                                           ; $6e08: $00
    ld d, $42                                     ; $6e09: $16 $42
    nop                                           ; $6e0b: $00
    ld d, d                                       ; $6e0c: $52
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    inc de                                        ; $6e0f: $13
    nop                                           ; $6e10: $00
    jp c, Jump_000_0014                           ; $6e11: $da $14 $00

    ret z                                         ; $6e14: $c8

    dec d                                         ; $6e15: $15
    dec b                                         ; $6e16: $05
    nop                                           ; $6e17: $00
    ld d, $46                                     ; $6e18: $16 $46
    nop                                           ; $6e1a: $00
    ld d, d                                       ; $6e1b: $52
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    inc de                                        ; $6e1e: $13
    nop                                           ; $6e1f: $00
    ld d, [hl]                                    ; $6e20: $56
    inc d                                         ; $6e21: $14
    ld bc, $1556                                  ; $6e22: $01 $56 $15
    ld b, $00                                     ; $6e25: $06 $00
    ld d, $40                                     ; $6e27: $16 $40
    nop                                           ; $6e29: $00
    ld d, d                                       ; $6e2a: $52
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    inc de                                        ; $6e2d: $13
    ld bc, $1422                                  ; $6e2e: $01 $22 $14
    ld [bc], a                                    ; $6e31: $02
    dec c                                         ; $6e32: $0d
    dec d                                         ; $6e33: $15
    ld bc, $1600                                  ; $6e34: $01 $00 $16
    ld b, l                                       ; $6e37: $45
    nop                                           ; $6e38: $00
    ld d, d                                       ; $6e39: $52
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    add hl, bc                                    ; $6e3c: $09
    nop                                           ; $6e3d: $00
    rlca                                          ; $6e3e: $07
    dec b                                         ; $6e3f: $05
    add hl, bc                                    ; $6e40: $09
    nop                                           ; $6e41: $00
    inc de                                        ; $6e42: $13
    nop                                           ; $6e43: $00
    ldh a, [rNR14]                                ; $6e44: $f0 $14
    nop                                           ; $6e46: $00
    ld b, h                                       ; $6e47: $44
    dec d                                         ; $6e48: $15
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    ld d, $16                                     ; $6e4b: $16 $16
    nop                                           ; $6e4d: $00
    ld d, d                                       ; $6e4e: $52
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    dec de                                        ; $6e51: $1b
    inc b                                         ; $6e52: $04
    nop                                           ; $6e53: $00
    ld e, a                                       ; $6e54: $5f
    ld bc, $0000                                  ; $6e55: $01 $00 $00
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    ld e, a                                       ; $6e5a: $5f
    ld bc, $0000                                  ; $6e5b: $01 $00 $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    ld e, a                                       ; $6e60: $5f
    nop                                           ; $6e61: $00
    nop                                           ; $6e62: $00
    add hl, bc                                    ; $6e63: $09
    nop                                           ; $6e64: $00
    ld d, e                                       ; $6e65: $53
    dec b                                         ; $6e66: $05
    add hl, bc                                    ; $6e67: $09
    nop                                           ; $6e68: $00
    ld d, [hl]                                    ; $6e69: $56
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    rla                                           ; $6e6c: $17
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    inc e                                         ; $6e6f: $1c
    ld b, d                                       ; $6e70: $42
    inc b                                         ; $6e71: $04
    ld e, a                                       ; $6e72: $5f
    ld bc, $1500                                  ; $6e73: $01 $00 $15
    ld d, b                                       ; $6e76: $50
    nop                                           ; $6e77: $00
    inc sp                                        ; $6e78: $33
    ld [bc], a                                    ; $6e79: $02
    dec h                                         ; $6e7a: $25
    ld d, a                                       ; $6e7b: $57
    nop                                           ; $6e7c: $00
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    nop                                           ; $6e80: $00
    add hl, bc                                    ; $6e81: $09
    nop                                           ; $6e82: $00
    ld b, $05                                     ; $6e83: $06 $05
    add hl, bc                                    ; $6e85: $09
    nop                                           ; $6e86: $00
    ld d, [hl]                                    ; $6e87: $56
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    rla                                           ; $6e8a: $17
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    inc e                                         ; $6e8d: $1c
    ld b, d                                       ; $6e8e: $42
    inc b                                         ; $6e8f: $04
    ld e, a                                       ; $6e90: $5f
    ld bc, $1500                                  ; $6e91: $01 $00 $15
    ld d, b                                       ; $6e94: $50
    nop                                           ; $6e95: $00
    inc sp                                        ; $6e96: $33
    ld bc, $5763                                  ; $6e97: $01 $63 $57
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    add hl, bc                                    ; $6e9f: $09
    nop                                           ; $6ea0: $00
    rlca                                          ; $6ea1: $07
    dec b                                         ; $6ea2: $05
    add hl, bc                                    ; $6ea3: $09
    nop                                           ; $6ea4: $00
    ld d, [hl]                                    ; $6ea5: $56
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    rla                                           ; $6ea8: $17
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    inc e                                         ; $6eab: $1c
    ld b, d                                       ; $6eac: $42
    inc b                                         ; $6ead: $04
    ld e, a                                       ; $6eae: $5f
    ld bc, $1500                                  ; $6eaf: $01 $00 $15
    ld d, b                                       ; $6eb2: $50
    nop                                           ; $6eb3: $00
    inc sp                                        ; $6eb4: $33
    ld bc, $5763                                  ; $6eb5: $01 $63 $57
    nop                                           ; $6eb8: $00
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    add hl, bc                                    ; $6ebd: $09
    nop                                           ; $6ebe: $00
    ld d, d                                       ; $6ebf: $52
    dec b                                         ; $6ec0: $05
    dec bc                                        ; $6ec1: $0b
    nop                                           ; $6ec2: $00
    ld d, [hl]                                    ; $6ec3: $56
    nop                                           ; $6ec4: $00
    nop                                           ; $6ec5: $00
    rla                                           ; $6ec6: $17
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    inc e                                         ; $6ec9: $1c
    ld b, d                                       ; $6eca: $42
    inc b                                         ; $6ecb: $04
    ld e, a                                       ; $6ecc: $5f
    ld bc, $1500                                  ; $6ecd: $01 $00 $15
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    inc sp                                        ; $6ed2: $33
    ld bc, $1595                                  ; $6ed3: $01 $95 $15
    ld d, b                                       ; $6ed6: $50
    nop                                           ; $6ed7: $00
    inc sp                                        ; $6ed8: $33
    ld a, [bc]                                    ; $6ed9: $0a
    ld [de], a                                    ; $6eda: $12
    ld d, a                                       ; $6edb: $57
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    nop                                           ; $6ee0: $00
    add hl, bc                                    ; $6ee1: $09
    nop                                           ; $6ee2: $00
    ld [$0905], sp                                ; $6ee3: $08 $05 $09
    nop                                           ; $6ee6: $00
    ld d, [hl]                                    ; $6ee7: $56
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    rla                                           ; $6eea: $17
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    inc e                                         ; $6eed: $1c
    ld b, d                                       ; $6eee: $42
    inc b                                         ; $6eef: $04
    ld e, a                                       ; $6ef0: $5f
    ld bc, $1500                                  ; $6ef1: $01 $00 $15
    ld d, b                                       ; $6ef4: $50
    nop                                           ; $6ef5: $00
    inc sp                                        ; $6ef6: $33
    ld bc, $5763                                  ; $6ef7: $01 $63 $57
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    add hl, bc                                    ; $6eff: $09
    nop                                           ; $6f00: $00
    add hl, bc                                    ; $6f01: $09
    dec b                                         ; $6f02: $05
    add hl, bc                                    ; $6f03: $09
    nop                                           ; $6f04: $00
    ld d, [hl]                                    ; $6f05: $56
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    rla                                           ; $6f08: $17
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    inc e                                         ; $6f0b: $1c
    ld b, d                                       ; $6f0c: $42
    inc b                                         ; $6f0d: $04
    ld e, a                                       ; $6f0e: $5f
    ld bc, $1500                                  ; $6f0f: $01 $00 $15
    ld d, b                                       ; $6f12: $50
    nop                                           ; $6f13: $00
    inc sp                                        ; $6f14: $33
    ld bc, $5763                                  ; $6f15: $01 $63 $57
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    add hl, bc                                    ; $6f1d: $09
    nop                                           ; $6f1e: $00
    ld d, [hl]                                    ; $6f1f: $56
    dec b                                         ; $6f20: $05
    add hl, bc                                    ; $6f21: $09
    nop                                           ; $6f22: $00
    ld d, [hl]                                    ; $6f23: $56
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    rla                                           ; $6f26: $17
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    inc e                                         ; $6f29: $1c
    ld b, d                                       ; $6f2a: $42
    inc b                                         ; $6f2b: $04
    ld e, a                                       ; $6f2c: $5f
    ld bc, $1500                                  ; $6f2d: $01 $00 $15
    ld d, b                                       ; $6f30: $50
    nop                                           ; $6f31: $00
    inc sp                                        ; $6f32: $33
    ld bc, $5763                                  ; $6f33: $01 $63 $57
    nop                                           ; $6f36: $00
    nop                                           ; $6f37: $00
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    add hl, bc                                    ; $6f3b: $09
    nop                                           ; $6f3c: $00
    dec bc                                        ; $6f3d: $0b
    dec b                                         ; $6f3e: $05
    dec bc                                        ; $6f3f: $0b
    nop                                           ; $6f40: $00
    ld d, [hl]                                    ; $6f41: $56
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    rla                                           ; $6f44: $17
    nop                                           ; $6f45: $00
    nop                                           ; $6f46: $00
    inc e                                         ; $6f47: $1c
    ld b, d                                       ; $6f48: $42
    inc b                                         ; $6f49: $04
    ld e, a                                       ; $6f4a: $5f
    ld bc, $1500                                  ; $6f4b: $01 $00 $15
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    inc sp                                        ; $6f50: $33
    inc bc                                        ; $6f51: $03
    ld [hl], c                                    ; $6f52: $71
    dec d                                         ; $6f53: $15
    ld d, b                                       ; $6f54: $50
    nop                                           ; $6f55: $00
    inc sp                                        ; $6f56: $33
    inc bc                                        ; $6f57: $03
    xor b                                         ; $6f58: $a8
    ld d, a                                       ; $6f59: $57
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    add hl, bc                                    ; $6f5f: $09
    nop                                           ; $6f60: $00
    ld e, h                                       ; $6f61: $5c
    dec b                                         ; $6f62: $05
    dec bc                                        ; $6f63: $0b
    nop                                           ; $6f64: $00
    ld d, [hl]                                    ; $6f65: $56
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    rla                                           ; $6f68: $17
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    inc e                                         ; $6f6b: $1c
    ld b, d                                       ; $6f6c: $42
    inc b                                         ; $6f6d: $04
    ld e, a                                       ; $6f6e: $5f
    ld bc, $1500                                  ; $6f6f: $01 $00 $15
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    inc sp                                        ; $6f74: $33
    inc b                                         ; $6f75: $04
    call nc, Call_00b_5015                        ; $6f76: $d4 $15 $50
    nop                                           ; $6f79: $00
    inc sp                                        ; $6f7a: $33
    inc b                                         ; $6f7b: $04
    pop hl                                        ; $6f7c: $e1
    ld d, a                                       ; $6f7d: $57
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    add hl, bc                                    ; $6f83: $09
    nop                                           ; $6f84: $00
    db $10                                        ; $6f85: $10
    dec b                                         ; $6f86: $05
    dec bc                                        ; $6f87: $0b
    nop                                           ; $6f88: $00
    ld d, [hl]                                    ; $6f89: $56
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    rla                                           ; $6f8c: $17
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    inc e                                         ; $6f8f: $1c
    ld b, d                                       ; $6f90: $42
    inc b                                         ; $6f91: $04
    ld e, a                                       ; $6f92: $5f
    ld bc, $1500                                  ; $6f93: $01 $00 $15
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    inc sp                                        ; $6f98: $33
    ld [bc], a                                    ; $6f99: $02
    ld b, l                                       ; $6f9a: $45
    dec d                                         ; $6f9b: $15
    ld d, b                                       ; $6f9c: $50
    nop                                           ; $6f9d: $00
    inc sp                                        ; $6f9e: $33
    ld [bc], a                                    ; $6f9f: $02
    sub l                                         ; $6fa0: $95
    ld d, a                                       ; $6fa1: $57
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    nop                                           ; $6fa4: $00
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    add hl, bc                                    ; $6fa7: $09
    nop                                           ; $6fa8: $00
    ld de, $0b05                                  ; $6fa9: $11 $05 $0b
    nop                                           ; $6fac: $00
    ld d, [hl]                                    ; $6fad: $56
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    rla                                           ; $6fb0: $17
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    inc e                                         ; $6fb3: $1c
    ld b, d                                       ; $6fb4: $42
    inc b                                         ; $6fb5: $04
    ld e, a                                       ; $6fb6: $5f
    ld bc, $1500                                  ; $6fb7: $01 $00 $15
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    inc sp                                        ; $6fbc: $33
    ld [bc], a                                    ; $6fbd: $02
    ld b, l                                       ; $6fbe: $45
    dec d                                         ; $6fbf: $15
    ld d, b                                       ; $6fc0: $50
    nop                                           ; $6fc1: $00
    inc sp                                        ; $6fc2: $33
    ld [bc], a                                    ; $6fc3: $02
    sub l                                         ; $6fc4: $95
    ld d, a                                       ; $6fc5: $57
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    add hl, bc                                    ; $6fcb: $09
    nop                                           ; $6fcc: $00
    ld d, h                                       ; $6fcd: $54
    dec b                                         ; $6fce: $05
    add hl, bc                                    ; $6fcf: $09
    nop                                           ; $6fd0: $00
    ld d, [hl]                                    ; $6fd1: $56
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    rla                                           ; $6fd4: $17
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    inc e                                         ; $6fd7: $1c
    ld b, d                                       ; $6fd8: $42
    inc b                                         ; $6fd9: $04
    ld e, a                                       ; $6fda: $5f
    ld bc, $1500                                  ; $6fdb: $01 $00 $15
    ld d, b                                       ; $6fde: $50
    nop                                           ; $6fdf: $00
    inc sp                                        ; $6fe0: $33
    ld bc, $5763                                  ; $6fe1: $01 $63 $57
    nop                                           ; $6fe4: $00
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    add hl, bc                                    ; $6fe9: $09
    nop                                           ; $6fea: $00
    ccf                                           ; $6feb: $3f
    dec b                                         ; $6fec: $05
    add hl, bc                                    ; $6fed: $09
    nop                                           ; $6fee: $00
    ld d, [hl]                                    ; $6fef: $56
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    rla                                           ; $6ff2: $17
    nop                                           ; $6ff3: $00
    nop                                           ; $6ff4: $00
    inc e                                         ; $6ff5: $1c
    ld b, d                                       ; $6ff6: $42
    inc b                                         ; $6ff7: $04
    ld e, a                                       ; $6ff8: $5f
    ld bc, $1500                                  ; $6ff9: $01 $00 $15
    ld d, b                                       ; $6ffc: $50
    nop                                           ; $6ffd: $00
    inc sp                                        ; $6ffe: $33
    add hl, bc                                    ; $6fff: $09
    di                                            ; $7000: $f3
    ld d, a                                       ; $7001: $57
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    add hl, bc                                    ; $7007: $09
    nop                                           ; $7008: $00
    dec a                                         ; $7009: $3d
    dec b                                         ; $700a: $05
    add hl, bc                                    ; $700b: $09
    nop                                           ; $700c: $00
    ld d, [hl]                                    ; $700d: $56
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    rla                                           ; $7010: $17
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    inc e                                         ; $7013: $1c
    ld b, d                                       ; $7014: $42
    inc b                                         ; $7015: $04
    ld e, a                                       ; $7016: $5f
    ld bc, $1500                                  ; $7017: $01 $00 $15
    ld d, b                                       ; $701a: $50
    nop                                           ; $701b: $00
    inc sp                                        ; $701c: $33
    dec bc                                        ; $701d: $0b
    ld l, h                                       ; $701e: $6c
    ld d, a                                       ; $701f: $57
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    add hl, bc                                    ; $7025: $09
    nop                                           ; $7026: $00
    ld e, e                                       ; $7027: $5b
    dec b                                         ; $7028: $05
    add hl, bc                                    ; $7029: $09
    nop                                           ; $702a: $00
    ld d, [hl]                                    ; $702b: $56
    nop                                           ; $702c: $00
    nop                                           ; $702d: $00
    rla                                           ; $702e: $17
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    inc e                                         ; $7031: $1c
    ld b, d                                       ; $7032: $42
    inc b                                         ; $7033: $04
    ld e, a                                       ; $7034: $5f
    ld bc, $1500                                  ; $7035: $01 $00 $15
    ld d, b                                       ; $7038: $50
    nop                                           ; $7039: $00
    inc sp                                        ; $703a: $33
    dec bc                                        ; $703b: $0b
    ld h, h                                       ; $703c: $64
    ld d, a                                       ; $703d: $57
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    ld e, a                                       ; $7043: $5f
    ld bc, $0000                                  ; $7044: $01 $00 $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    ld e, a                                       ; $7049: $5f
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    add hl, bc                                    ; $704c: $09
    nop                                           ; $704d: $00
    ld d, e                                       ; $704e: $53
    dec b                                         ; $704f: $05
    add hl, bc                                    ; $7050: $09
    nop                                           ; $7051: $00
    ld d, [hl]                                    ; $7052: $56
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    rla                                           ; $7055: $17
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    inc e                                         ; $7058: $1c
    ld b, [hl]                                    ; $7059: $46
    dec b                                         ; $705a: $05
    ld e, a                                       ; $705b: $5f
    ld bc, $1500                                  ; $705c: $01 $00 $15
    ld d, h                                       ; $705f: $54
    nop                                           ; $7060: $00
    inc sp                                        ; $7061: $33
    ld [bc], a                                    ; $7062: $02
    ld h, $57                                     ; $7063: $26 $57
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    add hl, bc                                    ; $706a: $09
    nop                                           ; $706b: $00
    ld b, $05                                     ; $706c: $06 $05
    add hl, bc                                    ; $706e: $09
    nop                                           ; $706f: $00
    ld d, [hl]                                    ; $7070: $56
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    rla                                           ; $7073: $17
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    inc e                                         ; $7076: $1c
    ld b, [hl]                                    ; $7077: $46
    dec b                                         ; $7078: $05
    ld e, a                                       ; $7079: $5f
    ld bc, $1500                                  ; $707a: $01 $00 $15
    ld d, h                                       ; $707d: $54
    nop                                           ; $707e: $00
    inc sp                                        ; $707f: $33
    ld bc, $5764                                  ; $7080: $01 $64 $57
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    add hl, bc                                    ; $7088: $09
    nop                                           ; $7089: $00
    rlca                                          ; $708a: $07
    dec b                                         ; $708b: $05
    add hl, bc                                    ; $708c: $09
    nop                                           ; $708d: $00
    ld d, [hl]                                    ; $708e: $56
    nop                                           ; $708f: $00
    nop                                           ; $7090: $00
    rla                                           ; $7091: $17
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    inc e                                         ; $7094: $1c
    ld b, [hl]                                    ; $7095: $46
    dec b                                         ; $7096: $05
    ld e, a                                       ; $7097: $5f
    ld bc, $1500                                  ; $7098: $01 $00 $15
    ld d, h                                       ; $709b: $54
    nop                                           ; $709c: $00
    inc sp                                        ; $709d: $33
    ld bc, $5764                                  ; $709e: $01 $64 $57
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    add hl, bc                                    ; $70a6: $09
    nop                                           ; $70a7: $00
    ld d, d                                       ; $70a8: $52
    dec b                                         ; $70a9: $05
    add hl, bc                                    ; $70aa: $09
    nop                                           ; $70ab: $00
    ld d, [hl]                                    ; $70ac: $56
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    rla                                           ; $70af: $17
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    inc e                                         ; $70b2: $1c
    ld b, [hl]                                    ; $70b3: $46
    dec b                                         ; $70b4: $05
    ld e, a                                       ; $70b5: $5f
    ld bc, $1500                                  ; $70b6: $01 $00 $15
    ld d, h                                       ; $70b9: $54
    nop                                           ; $70ba: $00
    inc sp                                        ; $70bb: $33
    ld bc, $5764                                  ; $70bc: $01 $64 $57
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    nop                                           ; $70c2: $00
    nop                                           ; $70c3: $00
    add hl, bc                                    ; $70c4: $09
    nop                                           ; $70c5: $00
    ld [$0905], sp                                ; $70c6: $08 $05 $09
    nop                                           ; $70c9: $00
    ld d, [hl]                                    ; $70ca: $56
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    rla                                           ; $70cd: $17
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    inc e                                         ; $70d0: $1c
    ld b, [hl]                                    ; $70d1: $46
    dec b                                         ; $70d2: $05
    ld e, a                                       ; $70d3: $5f
    ld bc, $1500                                  ; $70d4: $01 $00 $15
    ld d, h                                       ; $70d7: $54
    nop                                           ; $70d8: $00
    inc sp                                        ; $70d9: $33
    ld bc, $5764                                  ; $70da: $01 $64 $57
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    add hl, bc                                    ; $70e2: $09
    nop                                           ; $70e3: $00
    add hl, bc                                    ; $70e4: $09
    dec b                                         ; $70e5: $05
    add hl, bc                                    ; $70e6: $09
    nop                                           ; $70e7: $00
    ld d, [hl]                                    ; $70e8: $56
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    rla                                           ; $70eb: $17
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    inc e                                         ; $70ee: $1c
    ld b, [hl]                                    ; $70ef: $46
    dec b                                         ; $70f0: $05
    ld e, a                                       ; $70f1: $5f
    ld bc, $1500                                  ; $70f2: $01 $00 $15
    ld d, h                                       ; $70f5: $54
    nop                                           ; $70f6: $00
    inc sp                                        ; $70f7: $33
    ld bc, $5764                                  ; $70f8: $01 $64 $57
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    nop                                           ; $70ff: $00
    add hl, bc                                    ; $7100: $09
    nop                                           ; $7101: $00
    ld d, [hl]                                    ; $7102: $56
    dec b                                         ; $7103: $05
    add hl, bc                                    ; $7104: $09
    nop                                           ; $7105: $00
    ld d, [hl]                                    ; $7106: $56
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    rla                                           ; $7109: $17
    nop                                           ; $710a: $00
    nop                                           ; $710b: $00
    inc e                                         ; $710c: $1c
    ld b, [hl]                                    ; $710d: $46
    dec b                                         ; $710e: $05
    ld e, a                                       ; $710f: $5f
    ld bc, $1500                                  ; $7110: $01 $00 $15
    ld d, h                                       ; $7113: $54
    nop                                           ; $7114: $00
    inc sp                                        ; $7115: $33
    ld bc, $5764                                  ; $7116: $01 $64 $57
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    add hl, bc                                    ; $711e: $09
    nop                                           ; $711f: $00
    dec bc                                        ; $7120: $0b
    dec b                                         ; $7121: $05
    ld a, [bc]                                    ; $7122: $0a
    nop                                           ; $7123: $00
    ld d, [hl]                                    ; $7124: $56
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    rla                                           ; $7127: $17
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    inc e                                         ; $712a: $1c
    ld b, [hl]                                    ; $712b: $46
    dec b                                         ; $712c: $05
    dec d                                         ; $712d: $15
    nop                                           ; $712e: $00
    nop                                           ; $712f: $00
    inc sp                                        ; $7130: $33
    inc bc                                        ; $7131: $03
    ld [hl], c                                    ; $7132: $71
    dec d                                         ; $7133: $15
    ld d, h                                       ; $7134: $54
    nop                                           ; $7135: $00
    inc sp                                        ; $7136: $33
    inc bc                                        ; $7137: $03
    and a                                         ; $7138: $a7
    ld d, a                                       ; $7139: $57
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    add hl, bc                                    ; $713f: $09
    nop                                           ; $7140: $00
    ld e, h                                       ; $7141: $5c
    dec b                                         ; $7142: $05
    ld a, [bc]                                    ; $7143: $0a
    nop                                           ; $7144: $00
    ld d, [hl]                                    ; $7145: $56
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    rla                                           ; $7148: $17
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    inc e                                         ; $714b: $1c
    ld b, [hl]                                    ; $714c: $46
    dec b                                         ; $714d: $05
    dec d                                         ; $714e: $15
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    inc sp                                        ; $7151: $33
    inc b                                         ; $7152: $04
    call nc, Call_00b_5415                        ; $7153: $d4 $15 $54
    nop                                           ; $7156: $00
    inc sp                                        ; $7157: $33
    inc b                                         ; $7158: $04
    ldh [$57], a                                  ; $7159: $e0 $57
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    add hl, bc                                    ; $7160: $09
    nop                                           ; $7161: $00
    db $10                                        ; $7162: $10
    dec b                                         ; $7163: $05
    dec bc                                        ; $7164: $0b
    nop                                           ; $7165: $00
    ld d, [hl]                                    ; $7166: $56
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    rla                                           ; $7169: $17
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    inc e                                         ; $716c: $1c
    ld b, [hl]                                    ; $716d: $46
    dec b                                         ; $716e: $05
    ld e, a                                       ; $716f: $5f
    ld bc, $1500                                  ; $7170: $01 $00 $15
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    inc sp                                        ; $7175: $33
    ld [bc], a                                    ; $7176: $02
    ld b, l                                       ; $7177: $45
    dec d                                         ; $7178: $15
    ld d, h                                       ; $7179: $54
    nop                                           ; $717a: $00
    inc sp                                        ; $717b: $33
    ld [bc], a                                    ; $717c: $02
    sub [hl]                                      ; $717d: $96
    ld d, a                                       ; $717e: $57
    nop                                           ; $717f: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    add hl, bc                                    ; $7184: $09
    nop                                           ; $7185: $00
    ld de, $0b05                                  ; $7186: $11 $05 $0b
    nop                                           ; $7189: $00
    ld d, [hl]                                    ; $718a: $56
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    rla                                           ; $718d: $17
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    inc e                                         ; $7190: $1c
    ld b, [hl]                                    ; $7191: $46
    dec b                                         ; $7192: $05
    ld e, a                                       ; $7193: $5f
    ld bc, $1500                                  ; $7194: $01 $00 $15
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    inc sp                                        ; $7199: $33
    ld [bc], a                                    ; $719a: $02
    ld b, l                                       ; $719b: $45
    dec d                                         ; $719c: $15
    ld d, h                                       ; $719d: $54
    nop                                           ; $719e: $00
    inc sp                                        ; $719f: $33
    ld [bc], a                                    ; $71a0: $02
    sub [hl]                                      ; $71a1: $96
    ld d, a                                       ; $71a2: $57
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    add hl, bc                                    ; $71a8: $09
    nop                                           ; $71a9: $00
    ld d, h                                       ; $71aa: $54
    dec b                                         ; $71ab: $05
    add hl, bc                                    ; $71ac: $09
    nop                                           ; $71ad: $00
    ld d, [hl]                                    ; $71ae: $56
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    rla                                           ; $71b1: $17
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    inc e                                         ; $71b4: $1c
    ld b, [hl]                                    ; $71b5: $46
    dec b                                         ; $71b6: $05
    ld e, a                                       ; $71b7: $5f
    ld bc, $1500                                  ; $71b8: $01 $00 $15
    ld d, h                                       ; $71bb: $54
    nop                                           ; $71bc: $00
    inc sp                                        ; $71bd: $33
    ld bc, $5764                                  ; $71be: $01 $64 $57
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00
    nop                                           ; $71c4: $00
    nop                                           ; $71c5: $00
    add hl, bc                                    ; $71c6: $09
    nop                                           ; $71c7: $00
    ccf                                           ; $71c8: $3f
    dec b                                         ; $71c9: $05
    add hl, bc                                    ; $71ca: $09
    nop                                           ; $71cb: $00
    ld d, [hl]                                    ; $71cc: $56
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    rla                                           ; $71cf: $17
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    inc e                                         ; $71d2: $1c
    ld b, [hl]                                    ; $71d3: $46
    dec b                                         ; $71d4: $05
    ld e, a                                       ; $71d5: $5f
    ld bc, $1500                                  ; $71d6: $01 $00 $15
    ld d, h                                       ; $71d9: $54
    nop                                           ; $71da: $00
    inc sp                                        ; $71db: $33
    add hl, bc                                    ; $71dc: $09
    db $f4                                        ; $71dd: $f4
    ld d, a                                       ; $71de: $57
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    add hl, bc                                    ; $71e4: $09
    nop                                           ; $71e5: $00
    dec a                                         ; $71e6: $3d
    dec b                                         ; $71e7: $05
    add hl, bc                                    ; $71e8: $09
    nop                                           ; $71e9: $00
    ld d, [hl]                                    ; $71ea: $56
    nop                                           ; $71eb: $00
    nop                                           ; $71ec: $00
    rla                                           ; $71ed: $17
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    inc e                                         ; $71f0: $1c
    ld b, [hl]                                    ; $71f1: $46
    dec b                                         ; $71f2: $05
    ld e, a                                       ; $71f3: $5f
    ld bc, $1500                                  ; $71f4: $01 $00 $15
    ld d, h                                       ; $71f7: $54
    nop                                           ; $71f8: $00
    inc sp                                        ; $71f9: $33
    dec bc                                        ; $71fa: $0b
    ld l, d                                       ; $71fb: $6a
    ld d, a                                       ; $71fc: $57
    nop                                           ; $71fd: $00
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    add hl, bc                                    ; $7202: $09
    nop                                           ; $7203: $00
    ld e, e                                       ; $7204: $5b
    dec b                                         ; $7205: $05
    add hl, bc                                    ; $7206: $09
    nop                                           ; $7207: $00
    ld d, [hl]                                    ; $7208: $56
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    rla                                           ; $720b: $17
    nop                                           ; $720c: $00
    nop                                           ; $720d: $00
    inc e                                         ; $720e: $1c
    ld b, [hl]                                    ; $720f: $46
    dec b                                         ; $7210: $05
    ld e, a                                       ; $7211: $5f
    ld bc, $1500                                  ; $7212: $01 $00 $15
    ld d, h                                       ; $7215: $54
    nop                                           ; $7216: $00
    inc sp                                        ; $7217: $33
    dec bc                                        ; $7218: $0b
    ld l, d                                       ; $7219: $6a
    ld d, a                                       ; $721a: $57
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    ld e, a                                       ; $7220: $5f
    ld bc, $0000                                  ; $7221: $01 $00 $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    ld e, a                                       ; $7226: $5f
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    add hl, bc                                    ; $7229: $09
    nop                                           ; $722a: $00
    ld d, e                                       ; $722b: $53
    dec b                                         ; $722c: $05
    add hl, bc                                    ; $722d: $09
    nop                                           ; $722e: $00
    ld d, [hl]                                    ; $722f: $56
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    rla                                           ; $7232: $17
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    inc e                                         ; $7235: $1c
    ld b, b                                       ; $7236: $40
    ld b, $5f                                     ; $7237: $06 $5f
    ld bc, $1500                                  ; $7239: $01 $00 $15
    ld c, [hl]                                    ; $723c: $4e
    nop                                           ; $723d: $00
    inc sp                                        ; $723e: $33
    ld [bc], a                                    ; $723f: $02
    ld de, $0057                                  ; $7240: $11 $57 $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    add hl, bc                                    ; $7247: $09
    nop                                           ; $7248: $00
    ld b, $05                                     ; $7249: $06 $05
    add hl, bc                                    ; $724b: $09
    nop                                           ; $724c: $00
    ld d, [hl]                                    ; $724d: $56
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    rla                                           ; $7250: $17
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    inc e                                         ; $7253: $1c
    ld b, b                                       ; $7254: $40
    ld b, $5f                                     ; $7255: $06 $5f
    ld bc, $1500                                  ; $7257: $01 $00 $15
    ld c, [hl]                                    ; $725a: $4e
    nop                                           ; $725b: $00
    inc sp                                        ; $725c: $33
    ld bc, $5769                                  ; $725d: $01 $69 $57
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    add hl, bc                                    ; $7265: $09
    nop                                           ; $7266: $00
    rlca                                          ; $7267: $07
    dec b                                         ; $7268: $05
    add hl, bc                                    ; $7269: $09
    nop                                           ; $726a: $00
    ld d, [hl]                                    ; $726b: $56
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    rla                                           ; $726e: $17
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    inc e                                         ; $7271: $1c
    ld b, b                                       ; $7272: $40
    ld b, $5f                                     ; $7273: $06 $5f
    ld bc, $1500                                  ; $7275: $01 $00 $15
    ld c, [hl]                                    ; $7278: $4e
    nop                                           ; $7279: $00
    inc sp                                        ; $727a: $33
    ld bc, $5769                                  ; $727b: $01 $69 $57
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    add hl, bc                                    ; $7283: $09
    nop                                           ; $7284: $00
    ld d, d                                       ; $7285: $52
    dec b                                         ; $7286: $05
    add hl, bc                                    ; $7287: $09
    nop                                           ; $7288: $00
    ld d, [hl]                                    ; $7289: $56
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    rla                                           ; $728c: $17
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    inc e                                         ; $728f: $1c
    ld b, b                                       ; $7290: $40
    ld b, $5f                                     ; $7291: $06 $5f
    ld bc, $1500                                  ; $7293: $01 $00 $15
    ld c, [hl]                                    ; $7296: $4e
    nop                                           ; $7297: $00
    inc sp                                        ; $7298: $33
    ld bc, $5769                                  ; $7299: $01 $69 $57
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    add hl, bc                                    ; $72a1: $09
    nop                                           ; $72a2: $00
    ld [$0905], sp                                ; $72a3: $08 $05 $09
    nop                                           ; $72a6: $00
    ld d, [hl]                                    ; $72a7: $56
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    rla                                           ; $72aa: $17
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    inc e                                         ; $72ad: $1c
    ld b, b                                       ; $72ae: $40
    ld b, $5f                                     ; $72af: $06 $5f
    ld bc, $1500                                  ; $72b1: $01 $00 $15
    ld c, [hl]                                    ; $72b4: $4e
    nop                                           ; $72b5: $00
    inc sp                                        ; $72b6: $33
    ld bc, $5769                                  ; $72b7: $01 $69 $57
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    add hl, bc                                    ; $72bf: $09
    nop                                           ; $72c0: $00
    add hl, bc                                    ; $72c1: $09
    dec b                                         ; $72c2: $05
    add hl, bc                                    ; $72c3: $09
    nop                                           ; $72c4: $00
    ld d, [hl]                                    ; $72c5: $56
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    rla                                           ; $72c8: $17
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    inc e                                         ; $72cb: $1c
    ld b, b                                       ; $72cc: $40
    ld b, $5f                                     ; $72cd: $06 $5f
    ld bc, $1500                                  ; $72cf: $01 $00 $15
    ld c, [hl]                                    ; $72d2: $4e
    nop                                           ; $72d3: $00
    inc sp                                        ; $72d4: $33
    ld bc, $5769                                  ; $72d5: $01 $69 $57
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    nop                                           ; $72dc: $00
    add hl, bc                                    ; $72dd: $09
    nop                                           ; $72de: $00
    ld d, [hl]                                    ; $72df: $56
    dec b                                         ; $72e0: $05
    add hl, bc                                    ; $72e1: $09
    nop                                           ; $72e2: $00
    ld d, [hl]                                    ; $72e3: $56
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    rla                                           ; $72e6: $17
    nop                                           ; $72e7: $00
    nop                                           ; $72e8: $00
    inc e                                         ; $72e9: $1c
    ld b, b                                       ; $72ea: $40
    ld b, $5f                                     ; $72eb: $06 $5f
    ld bc, $1500                                  ; $72ed: $01 $00 $15
    ld c, [hl]                                    ; $72f0: $4e
    nop                                           ; $72f1: $00
    inc sp                                        ; $72f2: $33
    ld bc, $5769                                  ; $72f3: $01 $69 $57
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    add hl, bc                                    ; $72fb: $09
    nop                                           ; $72fc: $00
    dec bc                                        ; $72fd: $0b
    dec b                                         ; $72fe: $05
    dec bc                                        ; $72ff: $0b
    nop                                           ; $7300: $00
    ld d, [hl]                                    ; $7301: $56
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    rla                                           ; $7304: $17
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    inc e                                         ; $7307: $1c
    ld b, b                                       ; $7308: $40
    ld b, $5f                                     ; $7309: $06 $5f
    ld bc, $1500                                  ; $730b: $01 $00 $15
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    inc sp                                        ; $7310: $33
    inc bc                                        ; $7311: $03
    ld [hl], c                                    ; $7312: $71
    dec d                                         ; $7313: $15
    ld c, [hl]                                    ; $7314: $4e
    nop                                           ; $7315: $00
    inc sp                                        ; $7316: $33
    inc bc                                        ; $7317: $03
    and [hl]                                      ; $7318: $a6
    ld d, a                                       ; $7319: $57
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    add hl, bc                                    ; $731f: $09
    nop                                           ; $7320: $00
    ld e, h                                       ; $7321: $5c
    dec b                                         ; $7322: $05
    dec bc                                        ; $7323: $0b
    nop                                           ; $7324: $00
    ld d, [hl]                                    ; $7325: $56
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    rla                                           ; $7328: $17
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    inc e                                         ; $732b: $1c
    ld b, b                                       ; $732c: $40
    ld b, $5f                                     ; $732d: $06 $5f
    ld bc, $1500                                  ; $732f: $01 $00 $15
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    inc sp                                        ; $7334: $33
    inc b                                         ; $7335: $04
    call nc, Call_00b_4e15                        ; $7336: $d4 $15 $4e
    nop                                           ; $7339: $00
    inc sp                                        ; $733a: $33
    inc b                                         ; $733b: $04
    rst $18                                       ; $733c: $df
    ld d, a                                       ; $733d: $57
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    add hl, bc                                    ; $7343: $09
    nop                                           ; $7344: $00
    db $10                                        ; $7345: $10
    dec b                                         ; $7346: $05
    dec bc                                        ; $7347: $0b
    nop                                           ; $7348: $00
    ld d, [hl]                                    ; $7349: $56
    nop                                           ; $734a: $00
    nop                                           ; $734b: $00
    rla                                           ; $734c: $17
    nop                                           ; $734d: $00
    nop                                           ; $734e: $00
    inc e                                         ; $734f: $1c
    ld b, b                                       ; $7350: $40
    ld b, $5f                                     ; $7351: $06 $5f
    ld bc, $1500                                  ; $7353: $01 $00 $15
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    inc sp                                        ; $7358: $33
    ld [bc], a                                    ; $7359: $02
    ld b, l                                       ; $735a: $45
    dec d                                         ; $735b: $15
    ld c, [hl]                                    ; $735c: $4e
    nop                                           ; $735d: $00
    inc sp                                        ; $735e: $33
    ld [bc], a                                    ; $735f: $02
    sub a                                         ; $7360: $97
    ld d, a                                       ; $7361: $57
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    add hl, bc                                    ; $7367: $09
    nop                                           ; $7368: $00
    ld de, $0b05                                  ; $7369: $11 $05 $0b
    nop                                           ; $736c: $00
    ld d, [hl]                                    ; $736d: $56
    nop                                           ; $736e: $00
    nop                                           ; $736f: $00
    rla                                           ; $7370: $17
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    inc e                                         ; $7373: $1c
    ld b, b                                       ; $7374: $40
    ld b, $5f                                     ; $7375: $06 $5f
    ld bc, $1500                                  ; $7377: $01 $00 $15
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    inc sp                                        ; $737c: $33
    ld [bc], a                                    ; $737d: $02
    ld b, l                                       ; $737e: $45
    dec d                                         ; $737f: $15
    ld c, [hl]                                    ; $7380: $4e
    nop                                           ; $7381: $00
    inc sp                                        ; $7382: $33
    ld [bc], a                                    ; $7383: $02
    sub a                                         ; $7384: $97
    ld d, a                                       ; $7385: $57
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    add hl, bc                                    ; $738b: $09
    nop                                           ; $738c: $00
    ld d, h                                       ; $738d: $54
    dec b                                         ; $738e: $05
    add hl, bc                                    ; $738f: $09
    nop                                           ; $7390: $00
    ld d, [hl]                                    ; $7391: $56
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    rla                                           ; $7394: $17
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    inc e                                         ; $7397: $1c
    ld b, b                                       ; $7398: $40
    ld b, $5f                                     ; $7399: $06 $5f
    ld bc, $1500                                  ; $739b: $01 $00 $15
    ld c, [hl]                                    ; $739e: $4e
    nop                                           ; $739f: $00
    inc sp                                        ; $73a0: $33
    ld bc, $5769                                  ; $73a1: $01 $69 $57
    nop                                           ; $73a4: $00
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    nop                                           ; $73a7: $00
    nop                                           ; $73a8: $00
    add hl, bc                                    ; $73a9: $09
    nop                                           ; $73aa: $00
    ccf                                           ; $73ab: $3f
    dec b                                         ; $73ac: $05
    add hl, bc                                    ; $73ad: $09
    nop                                           ; $73ae: $00
    ld d, [hl]                                    ; $73af: $56
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    rla                                           ; $73b2: $17
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    inc e                                         ; $73b5: $1c
    ld b, b                                       ; $73b6: $40
    ld b, $5f                                     ; $73b7: $06 $5f
    ld bc, $1500                                  ; $73b9: $01 $00 $15
    ld c, [hl]                                    ; $73bc: $4e
    nop                                           ; $73bd: $00
    inc sp                                        ; $73be: $33
    add hl, bc                                    ; $73bf: $09
    push af                                       ; $73c0: $f5
    ld d, a                                       ; $73c1: $57
    nop                                           ; $73c2: $00
    nop                                           ; $73c3: $00
    nop                                           ; $73c4: $00
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00
    add hl, bc                                    ; $73c7: $09
    nop                                           ; $73c8: $00
    dec a                                         ; $73c9: $3d
    dec b                                         ; $73ca: $05
    add hl, bc                                    ; $73cb: $09
    nop                                           ; $73cc: $00
    ld d, [hl]                                    ; $73cd: $56
    nop                                           ; $73ce: $00
    nop                                           ; $73cf: $00
    rla                                           ; $73d0: $17
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    inc e                                         ; $73d3: $1c
    ld b, b                                       ; $73d4: $40
    ld b, $5f                                     ; $73d5: $06 $5f
    ld bc, $1500                                  ; $73d7: $01 $00 $15
    ld c, [hl]                                    ; $73da: $4e
    nop                                           ; $73db: $00
    inc sp                                        ; $73dc: $33
    dec bc                                        ; $73dd: $0b
    ld h, d                                       ; $73de: $62
    ld d, a                                       ; $73df: $57
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    add hl, bc                                    ; $73e5: $09
    nop                                           ; $73e6: $00
    ld e, e                                       ; $73e7: $5b
    dec b                                         ; $73e8: $05
    add hl, bc                                    ; $73e9: $09
    nop                                           ; $73ea: $00
    ld d, [hl]                                    ; $73eb: $56
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    rla                                           ; $73ee: $17
    nop                                           ; $73ef: $00
    nop                                           ; $73f0: $00
    inc e                                         ; $73f1: $1c
    ld b, b                                       ; $73f2: $40
    ld b, $5f                                     ; $73f3: $06 $5f
    ld bc, $1500                                  ; $73f5: $01 $00 $15
    ld c, [hl]                                    ; $73f8: $4e
    nop                                           ; $73f9: $00
    inc sp                                        ; $73fa: $33
    dec bc                                        ; $73fb: $0b
    ld h, l                                       ; $73fc: $65
    ld d, a                                       ; $73fd: $57
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    ld e, a                                       ; $7403: $5f
    ld bc, $0000                                  ; $7404: $01 $00 $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    add hl, bc                                    ; $7409: $09
    nop                                           ; $740a: $00
    add hl, sp                                    ; $740b: $39
    dec b                                         ; $740c: $05
    inc c                                         ; $740d: $0c
    nop                                           ; $740e: $00
    ld d, [hl]                                    ; $740f: $56
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    dec d                                         ; $7412: $15
    ld b, c                                       ; $7413: $41
    nop                                           ; $7414: $00
    inc sp                                        ; $7415: $33
    inc b                                         ; $7416: $04
    ld b, e                                       ; $7417: $43
    rrca                                          ; $7418: $0f
    rst $38                                       ; $7419: $ff
    nop                                           ; $741a: $00
    dec d                                         ; $741b: $15
    ld b, c                                       ; $741c: $41
    nop                                           ; $741d: $00
    inc sp                                        ; $741e: $33
    inc b                                         ; $741f: $04
    ld d, d                                       ; $7420: $52
    dec d                                         ; $7421: $15
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    ld b, d                                       ; $7424: $42
    nop                                           ; $7425: $00
    dec b                                         ; $7426: $05
    ld d, a                                       ; $7427: $57
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    jr z, @+$48                                   ; $742a: $28 $46

    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    nop                                           ; $742f: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    ld e, a                                       ; $7433: $5f
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    add hl, bc                                    ; $7436: $09
    nop                                           ; $7437: $00
    ld h, $05                                     ; $7438: $26 $05
    rlca                                          ; $743a: $07
    nop                                           ; $743b: $00
    ld d, [hl]                                    ; $743c: $56
    nop                                           ; $743d: $00
    nop                                           ; $743e: $00
    ld e, a                                       ; $743f: $5f
    ld bc, $1500                                  ; $7440: $01 $00 $15
    dec a                                         ; $7443: $3d
    nop                                           ; $7444: $00
    inc sp                                        ; $7445: $33
    ld bc, $57cc                                  ; $7446: $01 $cc $57
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    nop                                           ; $744d: $00
    add hl, bc                                    ; $744e: $09
    nop                                           ; $744f: $00
    daa                                           ; $7450: $27
    dec b                                         ; $7451: $05
    rlca                                          ; $7452: $07
    nop                                           ; $7453: $00
    ld d, [hl]                                    ; $7454: $56
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    ld e, a                                       ; $7457: $5f
    ld bc, $1500                                  ; $7458: $01 $00 $15
    dec a                                         ; $745b: $3d
    nop                                           ; $745c: $00
    inc sp                                        ; $745d: $33
    ld bc, $57cc                                  ; $745e: $01 $cc $57
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    add hl, bc                                    ; $7466: $09
    nop                                           ; $7467: $00
    scf                                           ; $7468: $37
    dec b                                         ; $7469: $05
    rlca                                          ; $746a: $07
    nop                                           ; $746b: $00
    ld d, [hl]                                    ; $746c: $56
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    ld e, a                                       ; $746f: $5f
    ld bc, $1500                                  ; $7470: $01 $00 $15
    dec a                                         ; $7473: $3d
    nop                                           ; $7474: $00
    inc sp                                        ; $7475: $33
    ld bc, $57cc                                  ; $7476: $01 $cc $57
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    nop                                           ; $747b: $00
    nop                                           ; $747c: $00
    nop                                           ; $747d: $00
    add hl, bc                                    ; $747e: $09
    nop                                           ; $747f: $00
    add hl, sp                                    ; $7480: $39
    dec b                                         ; $7481: $05
    rlca                                          ; $7482: $07
    nop                                           ; $7483: $00
    ld d, [hl]                                    ; $7484: $56
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    ld e, a                                       ; $7487: $5f
    ld bc, $1500                                  ; $7488: $01 $00 $15
    dec a                                         ; $748b: $3d
    nop                                           ; $748c: $00
    inc sp                                        ; $748d: $33
    ld bc, $57cc                                  ; $748e: $01 $cc $57
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    add hl, bc                                    ; $7496: $09
    nop                                           ; $7497: $00
    ld e, d                                       ; $7498: $5a
    dec b                                         ; $7499: $05
    rlca                                          ; $749a: $07
    nop                                           ; $749b: $00
    ld d, [hl]                                    ; $749c: $56
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    ld e, a                                       ; $749f: $5f
    ld bc, $1500                                  ; $74a0: $01 $00 $15
    dec a                                         ; $74a3: $3d
    nop                                           ; $74a4: $00
    inc sp                                        ; $74a5: $33
    ld bc, $57cc                                  ; $74a6: $01 $cc $57
    nop                                           ; $74a9: $00
    nop                                           ; $74aa: $00
    nop                                           ; $74ab: $00
    nop                                           ; $74ac: $00
    nop                                           ; $74ad: $00
    add hl, bc                                    ; $74ae: $09
    nop                                           ; $74af: $00
    ld b, c                                       ; $74b0: $41
    dec b                                         ; $74b1: $05
    rlca                                          ; $74b2: $07
    nop                                           ; $74b3: $00
    ld d, [hl]                                    ; $74b4: $56
    nop                                           ; $74b5: $00
    nop                                           ; $74b6: $00
    ld e, a                                       ; $74b7: $5f
    ld bc, $1500                                  ; $74b8: $01 $00 $15
    dec a                                         ; $74bb: $3d
    nop                                           ; $74bc: $00
    inc sp                                        ; $74bd: $33
    ld bc, $57cc                                  ; $74be: $01 $cc $57
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    nop                                           ; $74c3: $00
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    add hl, bc                                    ; $74c6: $09
    nop                                           ; $74c7: $00
    ld c, b                                       ; $74c8: $48
    dec b                                         ; $74c9: $05
    rlca                                          ; $74ca: $07
    nop                                           ; $74cb: $00
    ld d, [hl]                                    ; $74cc: $56
    nop                                           ; $74cd: $00
    nop                                           ; $74ce: $00
    ld e, a                                       ; $74cf: $5f
    ld bc, $1500                                  ; $74d0: $01 $00 $15
    dec a                                         ; $74d3: $3d
    nop                                           ; $74d4: $00
    inc sp                                        ; $74d5: $33
    ld bc, $57cc                                  ; $74d6: $01 $cc $57
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    nop                                           ; $74db: $00
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    ld d, [hl]                                    ; $74de: $56
    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    ld e, a                                       ; $74e1: $5f
    ld bc, $2e00                                  ; $74e2: $01 $00 $2e
    dec d                                         ; $74e5: $15
    nop                                           ; $74e6: $00
    ld d, a                                       ; $74e7: $57
    nop                                           ; $74e8: $00
    nop                                           ; $74e9: $00
    ld a, c                                       ; $74ea: $79
    inc bc                                        ; $74eb: $03
    cpl                                           ; $74ec: $2f
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    nop                                           ; $74ef: $00
    ld e, a                                       ; $74f0: $5f
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    add hl, bc                                    ; $74f3: $09
    nop                                           ; $74f4: $00
    ld h, $05                                     ; $74f5: $26 $05
    rlca                                          ; $74f7: $07
    nop                                           ; $74f8: $00
    ld d, [hl]                                    ; $74f9: $56
    nop                                           ; $74fa: $00
    nop                                           ; $74fb: $00
    ld e, a                                       ; $74fc: $5f
    ld bc, $1500                                  ; $74fd: $01 $00 $15
    dec a                                         ; $7500: $3d
    nop                                           ; $7501: $00
    inc sp                                        ; $7502: $33
    ld bc, $57cc                                  ; $7503: $01 $cc $57
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    add hl, bc                                    ; $750b: $09
    nop                                           ; $750c: $00
    daa                                           ; $750d: $27
    dec b                                         ; $750e: $05
    rlca                                          ; $750f: $07
    nop                                           ; $7510: $00
    ld d, [hl]                                    ; $7511: $56
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    ld e, a                                       ; $7514: $5f
    ld bc, $1500                                  ; $7515: $01 $00 $15
    dec a                                         ; $7518: $3d
    nop                                           ; $7519: $00
    inc sp                                        ; $751a: $33
    ld bc, $57cc                                  ; $751b: $01 $cc $57
    nop                                           ; $751e: $00
    nop                                           ; $751f: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    add hl, bc                                    ; $7523: $09
    nop                                           ; $7524: $00
    scf                                           ; $7525: $37
    dec b                                         ; $7526: $05
    rlca                                          ; $7527: $07
    nop                                           ; $7528: $00
    ld d, [hl]                                    ; $7529: $56
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    ld e, a                                       ; $752c: $5f
    ld bc, $1500                                  ; $752d: $01 $00 $15
    dec a                                         ; $7530: $3d
    nop                                           ; $7531: $00
    inc sp                                        ; $7532: $33
    ld bc, $57cc                                  ; $7533: $01 $cc $57
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    add hl, bc                                    ; $753b: $09
    nop                                           ; $753c: $00
    add hl, sp                                    ; $753d: $39
    dec b                                         ; $753e: $05
    rlca                                          ; $753f: $07
    nop                                           ; $7540: $00
    ld d, [hl]                                    ; $7541: $56
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    ld e, a                                       ; $7544: $5f
    ld bc, $1500                                  ; $7545: $01 $00 $15
    dec a                                         ; $7548: $3d
    nop                                           ; $7549: $00
    inc sp                                        ; $754a: $33
    ld bc, $57cc                                  ; $754b: $01 $cc $57
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    add hl, bc                                    ; $7553: $09
    nop                                           ; $7554: $00
    ld e, d                                       ; $7555: $5a
    dec b                                         ; $7556: $05
    rlca                                          ; $7557: $07
    nop                                           ; $7558: $00
    ld d, [hl]                                    ; $7559: $56
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    ld e, a                                       ; $755c: $5f
    ld bc, $1500                                  ; $755d: $01 $00 $15
    dec a                                         ; $7560: $3d
    nop                                           ; $7561: $00
    inc sp                                        ; $7562: $33
    ld bc, $57cc                                  ; $7563: $01 $cc $57
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    add hl, bc                                    ; $756b: $09
    nop                                           ; $756c: $00
    ld b, c                                       ; $756d: $41
    dec b                                         ; $756e: $05
    rlca                                          ; $756f: $07
    nop                                           ; $7570: $00
    ld d, [hl]                                    ; $7571: $56
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    ld e, a                                       ; $7574: $5f
    ld bc, $1500                                  ; $7575: $01 $00 $15
    dec a                                         ; $7578: $3d
    nop                                           ; $7579: $00
    inc sp                                        ; $757a: $33
    ld bc, $57cc                                  ; $757b: $01 $cc $57
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    add hl, bc                                    ; $7583: $09
    nop                                           ; $7584: $00
    ld c, b                                       ; $7585: $48
    dec b                                         ; $7586: $05
    rlca                                          ; $7587: $07
    nop                                           ; $7588: $00
    ld d, [hl]                                    ; $7589: $56
    nop                                           ; $758a: $00
    nop                                           ; $758b: $00
    ld e, a                                       ; $758c: $5f
    ld bc, $1500                                  ; $758d: $01 $00 $15
    dec a                                         ; $7590: $3d
    nop                                           ; $7591: $00
    inc sp                                        ; $7592: $33
    ld bc, $57cc                                  ; $7593: $01 $cc $57
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    ld d, [hl]                                    ; $759b: $56
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    ld e, a                                       ; $759e: $5f
    ld bc, $2e00                                  ; $759f: $01 $00 $2e
    dec d                                         ; $75a2: $15
    nop                                           ; $75a3: $00
    ld d, a                                       ; $75a4: $57
    nop                                           ; $75a5: $00
    nop                                           ; $75a6: $00
    ld a, c                                       ; $75a7: $79
    inc b                                         ; $75a8: $04
    cpl                                           ; $75a9: $2f
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    ld e, a                                       ; $75ad: $5f
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    add hl, bc                                    ; $75b0: $09
    nop                                           ; $75b1: $00
    ld h, $05                                     ; $75b2: $26 $05
    rlca                                          ; $75b4: $07
    nop                                           ; $75b5: $00
    ld d, [hl]                                    ; $75b6: $56
    nop                                           ; $75b7: $00
    nop                                           ; $75b8: $00
    ld e, a                                       ; $75b9: $5f
    ld bc, $1500                                  ; $75ba: $01 $00 $15
    dec a                                         ; $75bd: $3d
    nop                                           ; $75be: $00
    inc sp                                        ; $75bf: $33
    ld bc, $57cc                                  ; $75c0: $01 $cc $57
    nop                                           ; $75c3: $00
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    add hl, bc                                    ; $75c8: $09
    nop                                           ; $75c9: $00
    daa                                           ; $75ca: $27
    dec b                                         ; $75cb: $05
    rlca                                          ; $75cc: $07
    nop                                           ; $75cd: $00
    ld d, [hl]                                    ; $75ce: $56
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    ld e, a                                       ; $75d1: $5f
    ld bc, $1500                                  ; $75d2: $01 $00 $15
    dec a                                         ; $75d5: $3d
    nop                                           ; $75d6: $00
    inc sp                                        ; $75d7: $33
    ld bc, $57cc                                  ; $75d8: $01 $cc $57
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    add hl, bc                                    ; $75e0: $09
    nop                                           ; $75e1: $00
    scf                                           ; $75e2: $37
    dec b                                         ; $75e3: $05
    rlca                                          ; $75e4: $07
    nop                                           ; $75e5: $00
    ld d, [hl]                                    ; $75e6: $56
    nop                                           ; $75e7: $00
    nop                                           ; $75e8: $00
    ld e, a                                       ; $75e9: $5f
    ld bc, $1500                                  ; $75ea: $01 $00 $15
    dec a                                         ; $75ed: $3d
    nop                                           ; $75ee: $00
    inc sp                                        ; $75ef: $33
    ld bc, $57cc                                  ; $75f0: $01 $cc $57
    nop                                           ; $75f3: $00
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    nop                                           ; $75f7: $00
    add hl, bc                                    ; $75f8: $09
    nop                                           ; $75f9: $00
    add hl, sp                                    ; $75fa: $39
    dec b                                         ; $75fb: $05
    rlca                                          ; $75fc: $07
    nop                                           ; $75fd: $00
    ld d, [hl]                                    ; $75fe: $56
    nop                                           ; $75ff: $00
    nop                                           ; $7600: $00
    ld e, a                                       ; $7601: $5f
    ld bc, $1500                                  ; $7602: $01 $00 $15
    dec a                                         ; $7605: $3d
    nop                                           ; $7606: $00
    inc sp                                        ; $7607: $33
    ld bc, $57cc                                  ; $7608: $01 $cc $57
    nop                                           ; $760b: $00
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    add hl, bc                                    ; $7610: $09
    nop                                           ; $7611: $00
    ld e, d                                       ; $7612: $5a
    dec b                                         ; $7613: $05
    rlca                                          ; $7614: $07
    nop                                           ; $7615: $00
    ld d, [hl]                                    ; $7616: $56
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    ld e, a                                       ; $7619: $5f
    ld bc, $1500                                  ; $761a: $01 $00 $15
    dec a                                         ; $761d: $3d
    nop                                           ; $761e: $00
    inc sp                                        ; $761f: $33
    ld bc, $57cc                                  ; $7620: $01 $cc $57
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    add hl, bc                                    ; $7628: $09
    nop                                           ; $7629: $00
    ld b, c                                       ; $762a: $41
    dec b                                         ; $762b: $05
    rlca                                          ; $762c: $07
    nop                                           ; $762d: $00
    ld d, [hl]                                    ; $762e: $56
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    ld e, a                                       ; $7631: $5f
    ld bc, $1500                                  ; $7632: $01 $00 $15
    dec a                                         ; $7635: $3d
    nop                                           ; $7636: $00
    inc sp                                        ; $7637: $33
    ld bc, $57cc                                  ; $7638: $01 $cc $57
    nop                                           ; $763b: $00
    nop                                           ; $763c: $00
    nop                                           ; $763d: $00
    nop                                           ; $763e: $00
    nop                                           ; $763f: $00
    add hl, bc                                    ; $7640: $09
    nop                                           ; $7641: $00
    ld c, b                                       ; $7642: $48
    dec b                                         ; $7643: $05
    rlca                                          ; $7644: $07
    nop                                           ; $7645: $00
    ld d, [hl]                                    ; $7646: $56
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    ld e, a                                       ; $7649: $5f
    ld bc, $1500                                  ; $764a: $01 $00 $15
    dec a                                         ; $764d: $3d
    nop                                           ; $764e: $00
    inc sp                                        ; $764f: $33
    ld bc, $57cc                                  ; $7650: $01 $cc $57
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    ld d, [hl]                                    ; $7658: $56
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    ld e, a                                       ; $765b: $5f
    ld bc, $2e00                                  ; $765c: $01 $00 $2e
    dec d                                         ; $765f: $15
    nop                                           ; $7660: $00
    ld d, a                                       ; $7661: $57
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    ld a, c                                       ; $7664: $79
    dec b                                         ; $7665: $05
    cpl                                           ; $7666: $2f
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    ld e, a                                       ; $766a: $5f
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    add hl, bc                                    ; $766d: $09
    nop                                           ; $766e: $00
    ld h, $05                                     ; $766f: $26 $05
    ld [de], a                                    ; $7671: $12
    nop                                           ; $7672: $00
    ld d, [hl]                                    ; $7673: $56
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    rla                                           ; $7676: $17
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    inc e                                         ; $7679: $1c
    ld e, e                                       ; $767a: $5b
    dec bc                                        ; $767b: $0b
    ld e, a                                       ; $767c: $5f
    ld bc, $0900                                  ; $767d: $01 $00 $09
    ld b, $01                                     ; $7680: $06 $01
    dec b                                         ; $7682: $05
    rlca                                          ; $7683: $07
    nop                                           ; $7684: $00
    dec d                                         ; $7685: $15
    ld b, l                                       ; $7686: $45
    nop                                           ; $7687: $00
    inc sp                                        ; $7688: $33
    add hl, bc                                    ; $7689: $09
    ld l, l                                       ; $768a: $6d
    dec d                                         ; $768b: $15
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    ld b, d                                       ; $768e: $42
    nop                                           ; $768f: $00
    ld bc, $0057                                  ; $7690: $01 $57 $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    dec d                                         ; $7697: $15
    ld b, l                                       ; $7698: $45
    nop                                           ; $7699: $00
    inc sp                                        ; $769a: $33
    add hl, bc                                    ; $769b: $09
    ld l, h                                       ; $769c: $6c
    rrca                                          ; $769d: $0f
    ld b, $01                                     ; $769e: $06 $01
    ld d, a                                       ; $76a0: $57
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    add hl, bc                                    ; $76a6: $09
    nop                                           ; $76a7: $00
    daa                                           ; $76a8: $27
    dec b                                         ; $76a9: $05
    ld [de], a                                    ; $76aa: $12
    nop                                           ; $76ab: $00
    ld d, [hl]                                    ; $76ac: $56
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    rla                                           ; $76af: $17
    nop                                           ; $76b0: $00
    nop                                           ; $76b1: $00
    inc e                                         ; $76b2: $1c
    ld e, e                                       ; $76b3: $5b
    dec bc                                        ; $76b4: $0b
    ld e, a                                       ; $76b5: $5f
    ld bc, $0900                                  ; $76b6: $01 $00 $09
    ld b, $01                                     ; $76b9: $06 $01
    dec b                                         ; $76bb: $05
    rlca                                          ; $76bc: $07
    nop                                           ; $76bd: $00
    dec d                                         ; $76be: $15
    ld b, l                                       ; $76bf: $45
    nop                                           ; $76c0: $00
    inc sp                                        ; $76c1: $33
    add hl, bc                                    ; $76c2: $09
    ld l, l                                       ; $76c3: $6d
    dec d                                         ; $76c4: $15
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    ld b, d                                       ; $76c7: $42
    nop                                           ; $76c8: $00
    ld bc, $0057                                  ; $76c9: $01 $57 $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    dec d                                         ; $76d0: $15
    ld b, l                                       ; $76d1: $45
    nop                                           ; $76d2: $00
    inc sp                                        ; $76d3: $33
    add hl, bc                                    ; $76d4: $09
    ld l, h                                       ; $76d5: $6c
    rrca                                          ; $76d6: $0f
    ld b, $01                                     ; $76d7: $06 $01
    ld d, a                                       ; $76d9: $57
    nop                                           ; $76da: $00
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    ld e, a                                       ; $76df: $5f
    ld bc, $0000                                  ; $76e0: $01 $00 $00
    nop                                           ; $76e3: $00
    nop                                           ; $76e4: $00
    ld e, a                                       ; $76e5: $5f
    nop                                           ; $76e6: $00
    nop                                           ; $76e7: $00
    add hl, bc                                    ; $76e8: $09
    nop                                           ; $76e9: $00
    ld de, $1e05                                  ; $76ea: $11 $05 $1e
    nop                                           ; $76ed: $00
    add hl, bc                                    ; $76ee: $09
    rra                                           ; $76ef: $1f
    ld bc, $0305                                  ; $76f0: $01 $05 $03
    nop                                           ; $76f3: $00
    ld e, a                                       ; $76f4: $5f
    ld bc, $0000                                  ; $76f5: $01 $00 $00
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    add hl, bc                                    ; $76fa: $09
    ld e, $01                                     ; $76fb: $1e $01
    dec b                                         ; $76fd: $05
    jr jr_00b_7700                                ; $76fe: $18 $00

jr_00b_7700:
    ld d, [hl]                                    ; $7700: $56
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    rla                                           ; $7703: $17
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    dec de                                        ; $7706: $1b
    ld b, $00                                     ; $7707: $06 $00
    inc de                                        ; $7709: $13
    rst $38                                       ; $770a: $ff
    rst $20                                       ; $770b: $e7
    inc d                                         ; $770c: $14
    rst $38                                       ; $770d: $ff
    or $15                                        ; $770e: $f6 $15
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    ld d, $2f                                     ; $7712: $16 $2f
    ld bc, $021b                                  ; $7714: $01 $1b $02
    nop                                           ; $7717: $00
    ld e, a                                       ; $7718: $5f
    ld bc, $1500                                  ; $7719: $01 $00 $15
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    inc sp                                        ; $771e: $33
    ld [bc], a                                    ; $771f: $02
    ld e, d                                       ; $7720: $5a
    dec d                                         ; $7721: $15
    ld b, e                                       ; $7722: $43
    nop                                           ; $7723: $00
    inc sp                                        ; $7724: $33
    ld [bc], a                                    ; $7725: $02
    ld e, e                                       ; $7726: $5b
    dec d                                         ; $7727: $15
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    inc sp                                        ; $772a: $33
    ld [bc], a                                    ; $772b: $02
    ld e, h                                       ; $772c: $5c
    dec d                                         ; $772d: $15
    ld b, e                                       ; $772e: $43
    nop                                           ; $772f: $00
    inc sp                                        ; $7730: $33
    ld [bc], a                                    ; $7731: $02
    ld e, l                                       ; $7732: $5d
    ld l, $3c                                     ; $7733: $2e $3c
    nop                                           ; $7735: $00
    rla                                           ; $7736: $17
    cpl                                           ; $7737: $2f
    nop                                           ; $7738: $00
    ld e, $2f                                     ; $7739: $1e $2f
    nop                                           ; $773b: $00
    ld d, a                                       ; $773c: $57
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    rrca                                          ; $773f: $0f
    rra                                           ; $7740: $1f
    ld bc, $0000                                  ; $7741: $01 $00 $00
    nop                                           ; $7744: $00
    ld e, a                                       ; $7745: $5f
    ld bc, $0000                                  ; $7746: $01 $00 $00
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    rst $38                                       ; $7e50: $ff
    rst $38                                       ; $7e51: $ff
    rst $38                                       ; $7e52: $ff
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    rst $38                                       ; $7e56: $ff
    rst $38                                       ; $7e57: $ff
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    rst $38                                       ; $7e5e: $ff
    rst $38                                       ; $7e5f: $ff
    rst $38                                       ; $7e60: $ff
    rst $38                                       ; $7e61: $ff
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff
    rst $38                                       ; $7e75: $ff
    rst $38                                       ; $7e76: $ff
    rst $38                                       ; $7e77: $ff
    rst $38                                       ; $7e78: $ff
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    rst $38                                       ; $7e85: $ff
    rst $38                                       ; $7e86: $ff
    rst $38                                       ; $7e87: $ff
    rst $38                                       ; $7e88: $ff
    rst $38                                       ; $7e89: $ff
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff
    rst $38                                       ; $7e92: $ff
    rst $38                                       ; $7e93: $ff
    rst $38                                       ; $7e94: $ff
    rst $38                                       ; $7e95: $ff
    rst $38                                       ; $7e96: $ff
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    rst $38                                       ; $7e9d: $ff
    rst $38                                       ; $7e9e: $ff
    rst $38                                       ; $7e9f: $ff
    rst $38                                       ; $7ea0: $ff
    rst $38                                       ; $7ea1: $ff
    rst $38                                       ; $7ea2: $ff
    rst $38                                       ; $7ea3: $ff
    rst $38                                       ; $7ea4: $ff
    rst $38                                       ; $7ea5: $ff
    rst $38                                       ; $7ea6: $ff
    rst $38                                       ; $7ea7: $ff
    rst $38                                       ; $7ea8: $ff
    rst $38                                       ; $7ea9: $ff
    rst $38                                       ; $7eaa: $ff
    rst $38                                       ; $7eab: $ff
    rst $38                                       ; $7eac: $ff
    rst $38                                       ; $7ead: $ff
    rst $38                                       ; $7eae: $ff
    rst $38                                       ; $7eaf: $ff
    rst $38                                       ; $7eb0: $ff
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    rst $38                                       ; $7eba: $ff
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rst $38                                       ; $7ec1: $ff
    rst $38                                       ; $7ec2: $ff
    rst $38                                       ; $7ec3: $ff
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    rst $38                                       ; $7ec6: $ff
    rst $38                                       ; $7ec7: $ff
    rst $38                                       ; $7ec8: $ff
    rst $38                                       ; $7ec9: $ff
    rst $38                                       ; $7eca: $ff
    rst $38                                       ; $7ecb: $ff
    rst $38                                       ; $7ecc: $ff
    rst $38                                       ; $7ecd: $ff
    rst $38                                       ; $7ece: $ff
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    rst $38                                       ; $7ed6: $ff
    rst $38                                       ; $7ed7: $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    rst $38                                       ; $7edb: $ff
    rst $38                                       ; $7edc: $ff
    rst $38                                       ; $7edd: $ff
    rst $38                                       ; $7ede: $ff
    rst $38                                       ; $7edf: $ff
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff
    rst $38                                       ; $7eef: $ff
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    rst $38                                       ; $7ef8: $ff
    rst $38                                       ; $7ef9: $ff
    rst $38                                       ; $7efa: $ff
    rst $38                                       ; $7efb: $ff
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    rst $38                                       ; $7f10: $ff
    rst $38                                       ; $7f11: $ff
    rst $38                                       ; $7f12: $ff
    rst $38                                       ; $7f13: $ff
    rst $38                                       ; $7f14: $ff
    rst $38                                       ; $7f15: $ff
    rst $38                                       ; $7f16: $ff
    rst $38                                       ; $7f17: $ff
    rst $38                                       ; $7f18: $ff
    rst $38                                       ; $7f19: $ff
    rst $38                                       ; $7f1a: $ff
    rst $38                                       ; $7f1b: $ff
    rst $38                                       ; $7f1c: $ff
    rst $38                                       ; $7f1d: $ff
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    rst $38                                       ; $7f21: $ff
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rst $38                                       ; $7f2e: $ff
    rst $38                                       ; $7f2f: $ff
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    rst $38                                       ; $7f3a: $ff
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    rst $38                                       ; $7f3d: $ff
    rst $38                                       ; $7f3e: $ff
    rst $38                                       ; $7f3f: $ff
    rst $38                                       ; $7f40: $ff
    rst $38                                       ; $7f41: $ff
    rst $38                                       ; $7f42: $ff
    rst $38                                       ; $7f43: $ff
    rst $38                                       ; $7f44: $ff
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    rst $38                                       ; $7f4b: $ff
    rst $38                                       ; $7f4c: $ff
    rst $38                                       ; $7f4d: $ff
    rst $38                                       ; $7f4e: $ff
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    rst $38                                       ; $7f51: $ff
    rst $38                                       ; $7f52: $ff
    rst $38                                       ; $7f53: $ff
    rst $38                                       ; $7f54: $ff
    rst $38                                       ; $7f55: $ff
    rst $38                                       ; $7f56: $ff
    rst $38                                       ; $7f57: $ff
    rst $38                                       ; $7f58: $ff
    rst $38                                       ; $7f59: $ff
    rst $38                                       ; $7f5a: $ff
    rst $38                                       ; $7f5b: $ff
    rst $38                                       ; $7f5c: $ff
    rst $38                                       ; $7f5d: $ff
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff
    rst $38                                       ; $7f6b: $ff
    rst $38                                       ; $7f6c: $ff
    rst $38                                       ; $7f6d: $ff
    rst $38                                       ; $7f6e: $ff
    rst $38                                       ; $7f6f: $ff
    rst $38                                       ; $7f70: $ff
    rst $38                                       ; $7f71: $ff
    rst $38                                       ; $7f72: $ff
    rst $38                                       ; $7f73: $ff
    rst $38                                       ; $7f74: $ff
    rst $38                                       ; $7f75: $ff
    rst $38                                       ; $7f76: $ff
    rst $38                                       ; $7f77: $ff
    rst $38                                       ; $7f78: $ff
    rst $38                                       ; $7f79: $ff
    rst $38                                       ; $7f7a: $ff
    rst $38                                       ; $7f7b: $ff
    rst $38                                       ; $7f7c: $ff
    rst $38                                       ; $7f7d: $ff
    rst $38                                       ; $7f7e: $ff
    rst $38                                       ; $7f7f: $ff
    rst $38                                       ; $7f80: $ff
    rst $38                                       ; $7f81: $ff
    rst $38                                       ; $7f82: $ff
    rst $38                                       ; $7f83: $ff
    rst $38                                       ; $7f84: $ff
    rst $38                                       ; $7f85: $ff
    rst $38                                       ; $7f86: $ff
    rst $38                                       ; $7f87: $ff
    rst $38                                       ; $7f88: $ff
    rst $38                                       ; $7f89: $ff
    rst $38                                       ; $7f8a: $ff
    rst $38                                       ; $7f8b: $ff
    rst $38                                       ; $7f8c: $ff
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff
    rst $38                                       ; $7f90: $ff
    rst $38                                       ; $7f91: $ff
    rst $38                                       ; $7f92: $ff
    rst $38                                       ; $7f93: $ff
    rst $38                                       ; $7f94: $ff
    rst $38                                       ; $7f95: $ff
    rst $38                                       ; $7f96: $ff
    rst $38                                       ; $7f97: $ff
    rst $38                                       ; $7f98: $ff
    rst $38                                       ; $7f99: $ff
    rst $38                                       ; $7f9a: $ff
    rst $38                                       ; $7f9b: $ff
    rst $38                                       ; $7f9c: $ff
    rst $38                                       ; $7f9d: $ff
    rst $38                                       ; $7f9e: $ff
    rst $38                                       ; $7f9f: $ff
    rst $38                                       ; $7fa0: $ff
    rst $38                                       ; $7fa1: $ff
    rst $38                                       ; $7fa2: $ff
    rst $38                                       ; $7fa3: $ff
    rst $38                                       ; $7fa4: $ff
    rst $38                                       ; $7fa5: $ff
    rst $38                                       ; $7fa6: $ff
    rst $38                                       ; $7fa7: $ff
    rst $38                                       ; $7fa8: $ff
    rst $38                                       ; $7fa9: $ff
    rst $38                                       ; $7faa: $ff
    rst $38                                       ; $7fab: $ff
    rst $38                                       ; $7fac: $ff
    rst $38                                       ; $7fad: $ff
    rst $38                                       ; $7fae: $ff
    rst $38                                       ; $7faf: $ff
    rst $38                                       ; $7fb0: $ff
    rst $38                                       ; $7fb1: $ff
    rst $38                                       ; $7fb2: $ff
    rst $38                                       ; $7fb3: $ff
    rst $38                                       ; $7fb4: $ff
    rst $38                                       ; $7fb5: $ff
    rst $38                                       ; $7fb6: $ff
    rst $38                                       ; $7fb7: $ff
    rst $38                                       ; $7fb8: $ff
    rst $38                                       ; $7fb9: $ff
    rst $38                                       ; $7fba: $ff
    rst $38                                       ; $7fbb: $ff
    rst $38                                       ; $7fbc: $ff
    rst $38                                       ; $7fbd: $ff
    rst $38                                       ; $7fbe: $ff
    rst $38                                       ; $7fbf: $ff
    rst $38                                       ; $7fc0: $ff
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff
    rst $38                                       ; $7fc5: $ff
    rst $38                                       ; $7fc6: $ff
    rst $38                                       ; $7fc7: $ff
    rst $38                                       ; $7fc8: $ff
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff
    rst $38                                       ; $7fce: $ff
    rst $38                                       ; $7fcf: $ff
    rst $38                                       ; $7fd0: $ff
    rst $38                                       ; $7fd1: $ff
    rst $38                                       ; $7fd2: $ff
    rst $38                                       ; $7fd3: $ff
    rst $38                                       ; $7fd4: $ff
    rst $38                                       ; $7fd5: $ff
    rst $38                                       ; $7fd6: $ff
    rst $38                                       ; $7fd7: $ff
    rst $38                                       ; $7fd8: $ff
    rst $38                                       ; $7fd9: $ff
    rst $38                                       ; $7fda: $ff
    rst $38                                       ; $7fdb: $ff
    rst $38                                       ; $7fdc: $ff
    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
