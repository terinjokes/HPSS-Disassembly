; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    inc c                                         ; $4000: $0c
    inc c                                         ; $4001: $0c
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    ld bc, $03e9                                  ; $4004: $01 $e9 $03
    ret c                                         ; $4007: $d8

    dec b                                         ; $4008: $05
    cp e                                          ; $4009: $bb
    rlca                                          ; $400a: $07
    sbc [hl]                                      ; $400b: $9e
    add hl, bc                                    ; $400c: $09
    sbc h                                         ; $400d: $9c
    add hl, bc                                    ; $400e: $09
    call z, Call_000_230a                         ; $400f: $cc $0a $23
    ld a, [bc]                                    ; $4012: $0a
    sbc e                                         ; $4013: $9b
    ld a, [bc]                                    ; $4014: $0a
    rst $10                                       ; $4015: $d7
    dec bc                                        ; $4016: $0b
    sub h                                         ; $4017: $94
    inc c                                         ; $4018: $0c
    inc bc                                        ; $4019: $03
    ld e, a                                       ; $401a: $5f
    nop                                           ; $401b: $00
    nop                                           ; $401c: $00
    add hl, bc                                    ; $401d: $09
    nop                                           ; $401e: $00
    rlca                                          ; $401f: $07
    dec b                                         ; $4020: $05
    ld a, [bc]                                    ; $4021: $0a
    nop                                           ; $4022: $00
    ld d, [hl]                                    ; $4023: $56
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    rla                                           ; $4026: $17
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    inc e                                         ; $4029: $1c
    ld b, h                                       ; $402a: $44
    nop                                           ; $402b: $00
    ld e, a                                       ; $402c: $5f
    ld bc, $1500                                  ; $402d: $01 $00 $15
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    inc sp                                        ; $4032: $33
    ld bc, $1578                                  ; $4033: $01 $78 $15
    ld d, d                                       ; $4036: $52
    nop                                           ; $4037: $00
    inc sp                                        ; $4038: $33
    ld bc, $5787                                  ; $4039: $01 $87 $57
    nop                                           ; $403c: $00
    nop                                           ; $403d: $00
    add hl, bc                                    ; $403e: $09
    nop                                           ; $403f: $00
    ld d, d                                       ; $4040: $52
    dec b                                         ; $4041: $05
    ld a, [bc]                                    ; $4042: $0a
    nop                                           ; $4043: $00
    ld d, [hl]                                    ; $4044: $56
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    rla                                           ; $4047: $17
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    inc e                                         ; $404a: $1c
    ld b, h                                       ; $404b: $44
    nop                                           ; $404c: $00
    ld e, a                                       ; $404d: $5f
    ld bc, $1500                                  ; $404e: $01 $00 $15
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    inc sp                                        ; $4053: $33
    ld bc, $1595                                  ; $4054: $01 $95 $15
    ld d, d                                       ; $4057: $52
    nop                                           ; $4058: $00
    inc sp                                        ; $4059: $33
    ld a, [bc]                                    ; $405a: $0a
    rrca                                          ; $405b: $0f
    ld d, a                                       ; $405c: $57
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    add hl, bc                                    ; $405f: $09
    nop                                           ; $4060: $00
    ld [$0b05], sp                                ; $4061: $08 $05 $0b
    nop                                           ; $4064: $00
    ld d, [hl]                                    ; $4065: $56
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    rla                                           ; $4068: $17
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    inc e                                         ; $406b: $1c
    ld b, h                                       ; $406c: $44
    nop                                           ; $406d: $00
    ld e, a                                       ; $406e: $5f
    ld bc, $1500                                  ; $406f: $01 $00 $15
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    inc sp                                        ; $4074: $33
    ld bc, $15cd                                  ; $4075: $01 $cd $15
    ld d, d                                       ; $4078: $52
    nop                                           ; $4079: $00
    inc sp                                        ; $407a: $33
    ld bc, $57d3                                  ; $407b: $01 $d3 $57
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    add hl, bc                                    ; $4083: $09
    nop                                           ; $4084: $00
    db $10                                        ; $4085: $10
    dec b                                         ; $4086: $05
    dec bc                                        ; $4087: $0b
    nop                                           ; $4088: $00
    ld d, [hl]                                    ; $4089: $56
    nop                                           ; $408a: $00
    nop                                           ; $408b: $00
    rla                                           ; $408c: $17
    nop                                           ; $408d: $00
    nop                                           ; $408e: $00
    inc e                                         ; $408f: $1c
    ld b, h                                       ; $4090: $44
    nop                                           ; $4091: $00
    ld e, a                                       ; $4092: $5f
    ld bc, $1500                                  ; $4093: $01 $00 $15
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    inc sp                                        ; $4098: $33
    ld [bc], a                                    ; $4099: $02
    ld c, a                                       ; $409a: $4f
    dec d                                         ; $409b: $15
    ld d, d                                       ; $409c: $52
    nop                                           ; $409d: $00
    inc sp                                        ; $409e: $33
    ld [bc], a                                    ; $409f: $02
    sub e                                         ; $40a0: $93
    ld d, a                                       ; $40a1: $57
    nop                                           ; $40a2: $00
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    nop                                           ; $40a6: $00
    add hl, bc                                    ; $40a7: $09
    nop                                           ; $40a8: $00
    ld de, $0905                                  ; $40a9: $11 $05 $09
    nop                                           ; $40ac: $00
    ld d, [hl]                                    ; $40ad: $56
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    rla                                           ; $40b0: $17
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    inc e                                         ; $40b3: $1c
    ld b, h                                       ; $40b4: $44
    nop                                           ; $40b5: $00
    ld e, a                                       ; $40b6: $5f
    ld bc, $1500                                  ; $40b7: $01 $00 $15
    ld d, d                                       ; $40ba: $52
    nop                                           ; $40bb: $00
    inc sp                                        ; $40bc: $33
    ld [bc], a                                    ; $40bd: $02
    ld e, a                                       ; $40be: $5f
    ld d, a                                       ; $40bf: $57
    nop                                           ; $40c0: $00
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    nop                                           ; $40c4: $00
    add hl, bc                                    ; $40c5: $09
    nop                                           ; $40c6: $00
    ld d, h                                       ; $40c7: $54
    dec b                                         ; $40c8: $05
    add hl, bc                                    ; $40c9: $09
    nop                                           ; $40ca: $00
    ld d, [hl]                                    ; $40cb: $56
    nop                                           ; $40cc: $00
    nop                                           ; $40cd: $00
    rla                                           ; $40ce: $17
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    inc e                                         ; $40d1: $1c
    ld b, h                                       ; $40d2: $44
    nop                                           ; $40d3: $00
    ld e, a                                       ; $40d4: $5f
    ld bc, $1500                                  ; $40d5: $01 $00 $15
    ld d, d                                       ; $40d8: $52
    nop                                           ; $40d9: $00
    inc sp                                        ; $40da: $33
    ld [bc], a                                    ; $40db: $02
    daa                                           ; $40dc: $27
    ld d, a                                       ; $40dd: $57
    nop                                           ; $40de: $00
    nop                                           ; $40df: $00
    nop                                           ; $40e0: $00
    nop                                           ; $40e1: $00
    nop                                           ; $40e2: $00
    add hl, bc                                    ; $40e3: $09
    nop                                           ; $40e4: $00
    ld d, e                                       ; $40e5: $53
    dec b                                         ; $40e6: $05
    add hl, bc                                    ; $40e7: $09
    nop                                           ; $40e8: $00
    ld d, [hl]                                    ; $40e9: $56
    nop                                           ; $40ea: $00
    nop                                           ; $40eb: $00
    rla                                           ; $40ec: $17
    nop                                           ; $40ed: $00
    nop                                           ; $40ee: $00
    inc e                                         ; $40ef: $1c
    ld b, h                                       ; $40f0: $44
    nop                                           ; $40f1: $00
    ld e, a                                       ; $40f2: $5f
    ld bc, $1500                                  ; $40f3: $01 $00 $15
    ld d, d                                       ; $40f6: $52
    nop                                           ; $40f7: $00
    inc sp                                        ; $40f8: $33
    ld [bc], a                                    ; $40f9: $02
    daa                                           ; $40fa: $27
    ld d, a                                       ; $40fb: $57
    nop                                           ; $40fc: $00
    nop                                           ; $40fd: $00
    nop                                           ; $40fe: $00
    nop                                           ; $40ff: $00
    nop                                           ; $4100: $00
    add hl, bc                                    ; $4101: $09
    nop                                           ; $4102: $00
    ld b, $05                                     ; $4103: $06 $05
    add hl, bc                                    ; $4105: $09
    nop                                           ; $4106: $00
    ld d, [hl]                                    ; $4107: $56
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    rla                                           ; $410a: $17
    nop                                           ; $410b: $00
    nop                                           ; $410c: $00
    inc e                                         ; $410d: $1c
    ld b, h                                       ; $410e: $44
    nop                                           ; $410f: $00
    ld e, a                                       ; $4110: $5f
    ld bc, $1500                                  ; $4111: $01 $00 $15
    ld d, d                                       ; $4114: $52
    nop                                           ; $4115: $00
    inc sp                                        ; $4116: $33
    ld bc, $576a                                  ; $4117: $01 $6a $57
    nop                                           ; $411a: $00
    nop                                           ; $411b: $00
    nop                                           ; $411c: $00
    nop                                           ; $411d: $00
    nop                                           ; $411e: $00
    add hl, bc                                    ; $411f: $09
    nop                                           ; $4120: $00
    add hl, bc                                    ; $4121: $09
    dec b                                         ; $4122: $05
    add hl, bc                                    ; $4123: $09
    nop                                           ; $4124: $00
    ld d, [hl]                                    ; $4125: $56
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    rla                                           ; $4128: $17
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    inc e                                         ; $412b: $1c
    ld b, h                                       ; $412c: $44
    nop                                           ; $412d: $00
    ld e, a                                       ; $412e: $5f
    ld bc, $1500                                  ; $412f: $01 $00 $15
    ld d, d                                       ; $4132: $52
    nop                                           ; $4133: $00
    inc sp                                        ; $4134: $33
    ld bc, $576a                                  ; $4135: $01 $6a $57
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    nop                                           ; $413c: $00
    add hl, bc                                    ; $413d: $09
    nop                                           ; $413e: $00
    ld d, [hl]                                    ; $413f: $56
    dec b                                         ; $4140: $05
    add hl, bc                                    ; $4141: $09
    nop                                           ; $4142: $00
    ld d, [hl]                                    ; $4143: $56
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    rla                                           ; $4146: $17
    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    inc e                                         ; $4149: $1c
    ld b, h                                       ; $414a: $44
    nop                                           ; $414b: $00
    ld e, a                                       ; $414c: $5f
    ld bc, $1500                                  ; $414d: $01 $00 $15
    ld d, d                                       ; $4150: $52
    nop                                           ; $4151: $00
    inc sp                                        ; $4152: $33
    ld bc, $576a                                  ; $4153: $01 $6a $57
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00
    add hl, bc                                    ; $415b: $09
    nop                                           ; $415c: $00
    dec bc                                        ; $415d: $0b
    dec b                                         ; $415e: $05
    dec bc                                        ; $415f: $0b
    nop                                           ; $4160: $00
    ld d, [hl]                                    ; $4161: $56
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    rla                                           ; $4164: $17
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    inc e                                         ; $4167: $1c
    ld b, h                                       ; $4168: $44
    nop                                           ; $4169: $00
    ld e, a                                       ; $416a: $5f
    ld bc, $1500                                  ; $416b: $01 $00 $15
    nop                                           ; $416e: $00
    nop                                           ; $416f: $00
    inc sp                                        ; $4170: $33
    inc bc                                        ; $4171: $03
    ld [hl], c                                    ; $4172: $71
    dec d                                         ; $4173: $15
    ld d, d                                       ; $4174: $52
    nop                                           ; $4175: $00
    inc sp                                        ; $4176: $33
    inc bc                                        ; $4177: $03
    ld a, h                                       ; $4178: $7c
    ld d, a                                       ; $4179: $57
    nop                                           ; $417a: $00
    nop                                           ; $417b: $00
    nop                                           ; $417c: $00
    nop                                           ; $417d: $00
    nop                                           ; $417e: $00
    add hl, bc                                    ; $417f: $09
    nop                                           ; $4180: $00
    ld e, h                                       ; $4181: $5c
    dec b                                         ; $4182: $05
    dec bc                                        ; $4183: $0b
    nop                                           ; $4184: $00
    ld d, [hl]                                    ; $4185: $56
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    rla                                           ; $4188: $17
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    inc e                                         ; $418b: $1c
    ld b, h                                       ; $418c: $44
    nop                                           ; $418d: $00
    ld e, a                                       ; $418e: $5f
    ld bc, $1500                                  ; $418f: $01 $00 $15
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    inc sp                                        ; $4194: $33
    inc b                                         ; $4195: $04
    call nc, Call_00c_5215                        ; $4196: $d4 $15 $52
    nop                                           ; $4199: $00
    inc sp                                        ; $419a: $33
    inc b                                         ; $419b: $04
    sbc $57                                       ; $419c: $de $57
    nop                                           ; $419e: $00
    nop                                           ; $419f: $00
    nop                                           ; $41a0: $00
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    add hl, bc                                    ; $41a3: $09
    nop                                           ; $41a4: $00
    ccf                                           ; $41a5: $3f
    dec b                                         ; $41a6: $05
    add hl, bc                                    ; $41a7: $09
    nop                                           ; $41a8: $00
    ld d, [hl]                                    ; $41a9: $56
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    rla                                           ; $41ac: $17
    nop                                           ; $41ad: $00
    nop                                           ; $41ae: $00
    inc e                                         ; $41af: $1c
    ld b, h                                       ; $41b0: $44
    nop                                           ; $41b1: $00
    ld e, a                                       ; $41b2: $5f
    ld bc, $1500                                  ; $41b3: $01 $00 $15
    ld d, d                                       ; $41b6: $52
    nop                                           ; $41b7: $00
    inc sp                                        ; $41b8: $33
    add hl, bc                                    ; $41b9: $09
    or $57                                        ; $41ba: $f6 $57
    nop                                           ; $41bc: $00
    nop                                           ; $41bd: $00
    nop                                           ; $41be: $00
    nop                                           ; $41bf: $00
    nop                                           ; $41c0: $00
    add hl, bc                                    ; $41c1: $09
    nop                                           ; $41c2: $00
    dec a                                         ; $41c3: $3d
    dec b                                         ; $41c4: $05
    add hl, bc                                    ; $41c5: $09
    nop                                           ; $41c6: $00
    ld d, [hl]                                    ; $41c7: $56
    nop                                           ; $41c8: $00
    nop                                           ; $41c9: $00
    rla                                           ; $41ca: $17
    nop                                           ; $41cb: $00
    nop                                           ; $41cc: $00
    inc e                                         ; $41cd: $1c
    ld b, h                                       ; $41ce: $44
    nop                                           ; $41cf: $00
    ld e, a                                       ; $41d0: $5f
    ld bc, $1500                                  ; $41d1: $01 $00 $15
    ld d, d                                       ; $41d4: $52
    nop                                           ; $41d5: $00
    inc sp                                        ; $41d6: $33
    dec bc                                        ; $41d7: $0b
    ld e, a                                       ; $41d8: $5f
    ld d, a                                       ; $41d9: $57
    nop                                           ; $41da: $00
    nop                                           ; $41db: $00
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    nop                                           ; $41de: $00
    add hl, bc                                    ; $41df: $09
    nop                                           ; $41e0: $00
    ld e, e                                       ; $41e1: $5b
    dec b                                         ; $41e2: $05
    add hl, bc                                    ; $41e3: $09
    nop                                           ; $41e4: $00
    ld d, [hl]                                    ; $41e5: $56
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    rla                                           ; $41e8: $17
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    inc e                                         ; $41eb: $1c
    ld b, h                                       ; $41ec: $44
    nop                                           ; $41ed: $00
    ld e, a                                       ; $41ee: $5f
    ld bc, $1500                                  ; $41ef: $01 $00 $15
    ld d, d                                       ; $41f2: $52
    nop                                           ; $41f3: $00
    inc sp                                        ; $41f4: $33
    dec bc                                        ; $41f5: $0b
    ld e, a                                       ; $41f6: $5f
    ld d, a                                       ; $41f7: $57
    nop                                           ; $41f8: $00
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    nop                                           ; $41fc: $00
    ld e, a                                       ; $41fd: $5f
    ld bc, $0000                                  ; $41fe: $01 $00 $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    ld e, a                                       ; $4203: $5f
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    add hl, bc                                    ; $4206: $09
    nop                                           ; $4207: $00
    add hl, bc                                    ; $4208: $09
    dec b                                         ; $4209: $05
    dec bc                                        ; $420a: $0b
    nop                                           ; $420b: $00
    ld d, [hl]                                    ; $420c: $56
    nop                                           ; $420d: $00
    nop                                           ; $420e: $00
    rla                                           ; $420f: $17
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    inc e                                         ; $4212: $1c
    dec sp                                        ; $4213: $3b
    ld bc, $015f                                  ; $4214: $01 $5f $01
    nop                                           ; $4217: $00
    dec d                                         ; $4218: $15
    nop                                           ; $4219: $00
    nop                                           ; $421a: $00
    inc sp                                        ; $421b: $33
    ld [bc], a                                    ; $421c: $02
    nop                                           ; $421d: $00
    dec d                                         ; $421e: $15
    ld c, l                                       ; $421f: $4d
    nop                                           ; $4220: $00
    inc sp                                        ; $4221: $33
    ld bc, $57fd                                  ; $4222: $01 $fd $57
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    add hl, bc                                    ; $422a: $09
    nop                                           ; $422b: $00
    ld d, e                                       ; $422c: $53
    dec b                                         ; $422d: $05
    add hl, bc                                    ; $422e: $09
    nop                                           ; $422f: $00
    ld d, [hl]                                    ; $4230: $56
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    rla                                           ; $4233: $17
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    inc e                                         ; $4236: $1c
    dec sp                                        ; $4237: $3b
    ld bc, $015f                                  ; $4238: $01 $5f $01
    nop                                           ; $423b: $00
    dec d                                         ; $423c: $15
    ld c, l                                       ; $423d: $4d
    nop                                           ; $423e: $00
    inc sp                                        ; $423f: $33
    ld [bc], a                                    ; $4240: $02
    jr z, jr_00c_429a                             ; $4241: $28 $57

    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    nop                                           ; $4247: $00
    add hl, bc                                    ; $4248: $09
    nop                                           ; $4249: $00
    ld b, $05                                     ; $424a: $06 $05
    add hl, bc                                    ; $424c: $09
    nop                                           ; $424d: $00
    ld d, [hl]                                    ; $424e: $56
    nop                                           ; $424f: $00
    nop                                           ; $4250: $00
    rla                                           ; $4251: $17
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    inc e                                         ; $4254: $1c
    dec sp                                        ; $4255: $3b
    ld bc, $015f                                  ; $4256: $01 $5f $01
    nop                                           ; $4259: $00
    dec d                                         ; $425a: $15
    ld c, l                                       ; $425b: $4d
    nop                                           ; $425c: $00
    inc sp                                        ; $425d: $33
    ld bc, $576b                                  ; $425e: $01 $6b $57
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    nop                                           ; $4265: $00
    add hl, bc                                    ; $4266: $09
    nop                                           ; $4267: $00
    rlca                                          ; $4268: $07
    dec b                                         ; $4269: $05
    add hl, bc                                    ; $426a: $09
    nop                                           ; $426b: $00
    ld d, [hl]                                    ; $426c: $56
    nop                                           ; $426d: $00
    nop                                           ; $426e: $00
    rla                                           ; $426f: $17
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    inc e                                         ; $4272: $1c
    dec sp                                        ; $4273: $3b
    ld bc, $015f                                  ; $4274: $01 $5f $01
    nop                                           ; $4277: $00
    dec d                                         ; $4278: $15
    ld c, l                                       ; $4279: $4d
    nop                                           ; $427a: $00
    inc sp                                        ; $427b: $33
    ld bc, $576b                                  ; $427c: $01 $6b $57
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    add hl, bc                                    ; $4284: $09
    nop                                           ; $4285: $00
    ld d, d                                       ; $4286: $52
    dec b                                         ; $4287: $05
    dec bc                                        ; $4288: $0b
    nop                                           ; $4289: $00
    ld d, [hl]                                    ; $428a: $56
    nop                                           ; $428b: $00
    nop                                           ; $428c: $00
    rla                                           ; $428d: $17
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    inc e                                         ; $4290: $1c
    dec sp                                        ; $4291: $3b
    ld bc, $015f                                  ; $4292: $01 $5f $01
    nop                                           ; $4295: $00
    dec d                                         ; $4296: $15
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    inc sp                                        ; $4299: $33

jr_00c_429a:
    ld bc, $1595                                  ; $429a: $01 $95 $15
    ld c, l                                       ; $429d: $4d
    nop                                           ; $429e: $00
    inc sp                                        ; $429f: $33
    ld a, [bc]                                    ; $42a0: $0a
    db $10                                        ; $42a1: $10
    ld d, a                                       ; $42a2: $57
    nop                                           ; $42a3: $00
    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    add hl, bc                                    ; $42a8: $09
    nop                                           ; $42a9: $00
    ld [$0905], sp                                ; $42aa: $08 $05 $09
    nop                                           ; $42ad: $00
    ld d, [hl]                                    ; $42ae: $56
    nop                                           ; $42af: $00
    nop                                           ; $42b0: $00
    rla                                           ; $42b1: $17
    nop                                           ; $42b2: $00
    nop                                           ; $42b3: $00
    inc e                                         ; $42b4: $1c
    dec sp                                        ; $42b5: $3b
    ld bc, $015f                                  ; $42b6: $01 $5f $01
    nop                                           ; $42b9: $00
    dec d                                         ; $42ba: $15
    ld c, l                                       ; $42bb: $4d
    nop                                           ; $42bc: $00
    inc sp                                        ; $42bd: $33
    ld bc, $576b                                  ; $42be: $01 $6b $57
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    nop                                           ; $42c3: $00
    nop                                           ; $42c4: $00
    nop                                           ; $42c5: $00
    add hl, bc                                    ; $42c6: $09
    nop                                           ; $42c7: $00
    ld d, [hl]                                    ; $42c8: $56
    dec b                                         ; $42c9: $05
    add hl, bc                                    ; $42ca: $09
    nop                                           ; $42cb: $00
    ld d, [hl]                                    ; $42cc: $56
    nop                                           ; $42cd: $00
    nop                                           ; $42ce: $00
    rla                                           ; $42cf: $17
    nop                                           ; $42d0: $00
    nop                                           ; $42d1: $00
    inc e                                         ; $42d2: $1c
    dec sp                                        ; $42d3: $3b
    ld bc, $015f                                  ; $42d4: $01 $5f $01
    nop                                           ; $42d7: $00
    dec d                                         ; $42d8: $15
    ld c, l                                       ; $42d9: $4d
    nop                                           ; $42da: $00
    inc sp                                        ; $42db: $33
    ld bc, $576b                                  ; $42dc: $01 $6b $57
    nop                                           ; $42df: $00
    nop                                           ; $42e0: $00
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    nop                                           ; $42e3: $00
    add hl, bc                                    ; $42e4: $09
    nop                                           ; $42e5: $00
    dec bc                                        ; $42e6: $0b
    dec b                                         ; $42e7: $05
    dec bc                                        ; $42e8: $0b
    nop                                           ; $42e9: $00
    ld d, [hl]                                    ; $42ea: $56
    nop                                           ; $42eb: $00
    nop                                           ; $42ec: $00
    rla                                           ; $42ed: $17
    nop                                           ; $42ee: $00
    nop                                           ; $42ef: $00
    inc e                                         ; $42f0: $1c
    dec sp                                        ; $42f1: $3b
    ld bc, $015f                                  ; $42f2: $01 $5f $01
    nop                                           ; $42f5: $00
    dec d                                         ; $42f6: $15
    nop                                           ; $42f7: $00
    nop                                           ; $42f8: $00
    inc sp                                        ; $42f9: $33
    inc bc                                        ; $42fa: $03
    ld [hl], c                                    ; $42fb: $71
    dec d                                         ; $42fc: $15
    ld c, l                                       ; $42fd: $4d
    nop                                           ; $42fe: $00
    inc sp                                        ; $42ff: $33
    inc bc                                        ; $4300: $03
    and e                                         ; $4301: $a3
    ld d, a                                       ; $4302: $57
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    add hl, bc                                    ; $4308: $09
    nop                                           ; $4309: $00
    ld e, h                                       ; $430a: $5c
    dec b                                         ; $430b: $05
    dec bc                                        ; $430c: $0b
    nop                                           ; $430d: $00
    ld d, [hl]                                    ; $430e: $56
    nop                                           ; $430f: $00
    nop                                           ; $4310: $00
    rla                                           ; $4311: $17
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    inc e                                         ; $4314: $1c
    dec sp                                        ; $4315: $3b
    ld bc, $015f                                  ; $4316: $01 $5f $01
    nop                                           ; $4319: $00
    dec d                                         ; $431a: $15
    nop                                           ; $431b: $00
    nop                                           ; $431c: $00
    inc sp                                        ; $431d: $33
    inc b                                         ; $431e: $04
    call nc, $4d15                                ; $431f: $d4 $15 $4d
    nop                                           ; $4322: $00
    inc sp                                        ; $4323: $33
    inc b                                         ; $4324: $04
    db $dd                                        ; $4325: $dd
    ld d, a                                       ; $4326: $57
    nop                                           ; $4327: $00
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    nop                                           ; $432a: $00
    nop                                           ; $432b: $00
    add hl, bc                                    ; $432c: $09
    nop                                           ; $432d: $00
    db $10                                        ; $432e: $10
    dec b                                         ; $432f: $05
    dec bc                                        ; $4330: $0b
    nop                                           ; $4331: $00
    ld d, [hl]                                    ; $4332: $56
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    rla                                           ; $4335: $17
    nop                                           ; $4336: $00
    nop                                           ; $4337: $00
    inc e                                         ; $4338: $1c
    dec sp                                        ; $4339: $3b
    ld bc, $015f                                  ; $433a: $01 $5f $01
    nop                                           ; $433d: $00
    dec d                                         ; $433e: $15
    nop                                           ; $433f: $00
    nop                                           ; $4340: $00
    inc sp                                        ; $4341: $33
    ld [bc], a                                    ; $4342: $02
    ld b, l                                       ; $4343: $45
    dec d                                         ; $4344: $15
    ld c, l                                       ; $4345: $4d
    nop                                           ; $4346: $00
    inc sp                                        ; $4347: $33
    ld [bc], a                                    ; $4348: $02
    sub c                                         ; $4349: $91
    ld d, a                                       ; $434a: $57
    nop                                           ; $434b: $00
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    add hl, bc                                    ; $4350: $09
    nop                                           ; $4351: $00
    ld de, $0b05                                  ; $4352: $11 $05 $0b
    nop                                           ; $4355: $00
    ld d, [hl]                                    ; $4356: $56
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    rla                                           ; $4359: $17
    nop                                           ; $435a: $00
    nop                                           ; $435b: $00
    inc e                                         ; $435c: $1c
    dec sp                                        ; $435d: $3b
    ld bc, $015f                                  ; $435e: $01 $5f $01
    nop                                           ; $4361: $00
    dec d                                         ; $4362: $15
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    inc sp                                        ; $4365: $33
    ld [bc], a                                    ; $4366: $02
    ld b, l                                       ; $4367: $45
    dec d                                         ; $4368: $15
    ld c, l                                       ; $4369: $4d
    nop                                           ; $436a: $00
    inc sp                                        ; $436b: $33
    ld [bc], a                                    ; $436c: $02
    sub c                                         ; $436d: $91
    ld d, a                                       ; $436e: $57
    nop                                           ; $436f: $00
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    add hl, bc                                    ; $4374: $09
    nop                                           ; $4375: $00
    ld d, h                                       ; $4376: $54
    dec b                                         ; $4377: $05
    add hl, bc                                    ; $4378: $09
    nop                                           ; $4379: $00
    ld d, [hl]                                    ; $437a: $56
    nop                                           ; $437b: $00
    nop                                           ; $437c: $00
    rla                                           ; $437d: $17
    nop                                           ; $437e: $00
    nop                                           ; $437f: $00
    inc e                                         ; $4380: $1c
    dec sp                                        ; $4381: $3b
    ld bc, $015f                                  ; $4382: $01 $5f $01
    nop                                           ; $4385: $00
    dec d                                         ; $4386: $15
    ld c, l                                       ; $4387: $4d
    nop                                           ; $4388: $00
    inc sp                                        ; $4389: $33
    ld bc, $576b                                  ; $438a: $01 $6b $57
    nop                                           ; $438d: $00
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    add hl, bc                                    ; $4392: $09
    nop                                           ; $4393: $00
    ccf                                           ; $4394: $3f
    dec b                                         ; $4395: $05
    add hl, bc                                    ; $4396: $09
    nop                                           ; $4397: $00
    ld d, [hl]                                    ; $4398: $56
    nop                                           ; $4399: $00
    nop                                           ; $439a: $00
    rla                                           ; $439b: $17
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    inc e                                         ; $439e: $1c
    dec sp                                        ; $439f: $3b
    ld bc, $015f                                  ; $43a0: $01 $5f $01
    nop                                           ; $43a3: $00
    dec d                                         ; $43a4: $15
    ld c, l                                       ; $43a5: $4d
    nop                                           ; $43a6: $00
    inc sp                                        ; $43a7: $33
    add hl, bc                                    ; $43a8: $09
    rst $30                                       ; $43a9: $f7
    ld d, a                                       ; $43aa: $57
    nop                                           ; $43ab: $00
    nop                                           ; $43ac: $00
    nop                                           ; $43ad: $00
    nop                                           ; $43ae: $00
    nop                                           ; $43af: $00
    add hl, bc                                    ; $43b0: $09
    nop                                           ; $43b1: $00
    dec a                                         ; $43b2: $3d
    dec b                                         ; $43b3: $05
    add hl, bc                                    ; $43b4: $09
    nop                                           ; $43b5: $00
    ld d, [hl]                                    ; $43b6: $56
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    rla                                           ; $43b9: $17
    nop                                           ; $43ba: $00
    nop                                           ; $43bb: $00
    inc e                                         ; $43bc: $1c
    dec sp                                        ; $43bd: $3b
    ld bc, $015f                                  ; $43be: $01 $5f $01
    nop                                           ; $43c1: $00
    dec d                                         ; $43c2: $15
    ld c, l                                       ; $43c3: $4d
    nop                                           ; $43c4: $00
    inc sp                                        ; $43c5: $33
    dec bc                                        ; $43c6: $0b
    ld [hl], b                                    ; $43c7: $70
    ld d, a                                       ; $43c8: $57
    nop                                           ; $43c9: $00
    nop                                           ; $43ca: $00
    nop                                           ; $43cb: $00
    nop                                           ; $43cc: $00
    nop                                           ; $43cd: $00
    add hl, bc                                    ; $43ce: $09
    nop                                           ; $43cf: $00
    ld e, e                                       ; $43d0: $5b
    dec b                                         ; $43d1: $05
    add hl, bc                                    ; $43d2: $09
    nop                                           ; $43d3: $00
    ld d, [hl]                                    ; $43d4: $56
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    rla                                           ; $43d7: $17
    nop                                           ; $43d8: $00
    nop                                           ; $43d9: $00
    inc e                                         ; $43da: $1c
    dec sp                                        ; $43db: $3b
    ld bc, $015f                                  ; $43dc: $01 $5f $01
    nop                                           ; $43df: $00
    dec d                                         ; $43e0: $15
    ld c, l                                       ; $43e1: $4d
    nop                                           ; $43e2: $00
    inc sp                                        ; $43e3: $33
    dec bc                                        ; $43e4: $0b
    ld l, c                                       ; $43e5: $69
    ld d, a                                       ; $43e6: $57
    nop                                           ; $43e7: $00
    nop                                           ; $43e8: $00
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    ld e, a                                       ; $43ec: $5f
    ld bc, $0000                                  ; $43ed: $01 $00 $00
    nop                                           ; $43f0: $00
    nop                                           ; $43f1: $00
    ld e, a                                       ; $43f2: $5f
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    add hl, bc                                    ; $43f5: $09
    nop                                           ; $43f6: $00
    ld d, e                                       ; $43f7: $53
    dec b                                         ; $43f8: $05
    add hl, bc                                    ; $43f9: $09
    nop                                           ; $43fa: $00
    ld d, [hl]                                    ; $43fb: $56
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    rla                                           ; $43fe: $17
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    inc e                                         ; $4401: $1c
    ld b, c                                       ; $4402: $41
    ld [bc], a                                    ; $4403: $02
    ld e, a                                       ; $4404: $5f
    ld bc, $1500                                  ; $4405: $01 $00 $15
    ld c, a                                       ; $4408: $4f
    nop                                           ; $4409: $00
    inc sp                                        ; $440a: $33
    ld [bc], a                                    ; $440b: $02
    add hl, hl                                    ; $440c: $29
    ld d, a                                       ; $440d: $57
    nop                                           ; $440e: $00
    nop                                           ; $440f: $00
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    add hl, bc                                    ; $4413: $09
    nop                                           ; $4414: $00
    ld b, $05                                     ; $4415: $06 $05
    add hl, bc                                    ; $4417: $09
    nop                                           ; $4418: $00
    ld d, [hl]                                    ; $4419: $56
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    rla                                           ; $441c: $17
    nop                                           ; $441d: $00
    nop                                           ; $441e: $00
    inc e                                         ; $441f: $1c
    ld b, c                                       ; $4420: $41
    ld [bc], a                                    ; $4421: $02
    ld e, a                                       ; $4422: $5f
    ld bc, $1500                                  ; $4423: $01 $00 $15
    ld c, a                                       ; $4426: $4f
    nop                                           ; $4427: $00
    inc sp                                        ; $4428: $33
    ld bc, $576c                                  ; $4429: $01 $6c $57
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    add hl, bc                                    ; $4431: $09
    nop                                           ; $4432: $00
    rlca                                          ; $4433: $07
    dec b                                         ; $4434: $05
    add hl, bc                                    ; $4435: $09
    nop                                           ; $4436: $00
    ld d, [hl]                                    ; $4437: $56
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    rla                                           ; $443a: $17
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    inc e                                         ; $443d: $1c
    ld b, c                                       ; $443e: $41
    ld [bc], a                                    ; $443f: $02
    ld e, a                                       ; $4440: $5f
    ld bc, $1500                                  ; $4441: $01 $00 $15
    ld c, a                                       ; $4444: $4f
    nop                                           ; $4445: $00
    inc sp                                        ; $4446: $33
    ld bc, $576c                                  ; $4447: $01 $6c $57
    nop                                           ; $444a: $00
    nop                                           ; $444b: $00
    nop                                           ; $444c: $00
    nop                                           ; $444d: $00
    nop                                           ; $444e: $00
    add hl, bc                                    ; $444f: $09
    nop                                           ; $4450: $00
    ld d, d                                       ; $4451: $52
    dec b                                         ; $4452: $05
    add hl, bc                                    ; $4453: $09
    nop                                           ; $4454: $00
    ld d, [hl]                                    ; $4455: $56
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    rla                                           ; $4458: $17
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    inc e                                         ; $445b: $1c
    ld b, c                                       ; $445c: $41
    ld [bc], a                                    ; $445d: $02
    ld e, a                                       ; $445e: $5f
    ld bc, $1500                                  ; $445f: $01 $00 $15
    ld c, a                                       ; $4462: $4f
    nop                                           ; $4463: $00
    inc sp                                        ; $4464: $33
    ld bc, $576c                                  ; $4465: $01 $6c $57
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    nop                                           ; $446c: $00
    add hl, bc                                    ; $446d: $09
    nop                                           ; $446e: $00
    ld [$0905], sp                                ; $446f: $08 $05 $09
    nop                                           ; $4472: $00
    ld d, [hl]                                    ; $4473: $56
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    rla                                           ; $4476: $17
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    inc e                                         ; $4479: $1c
    ld b, c                                       ; $447a: $41
    ld [bc], a                                    ; $447b: $02
    ld e, a                                       ; $447c: $5f
    ld bc, $1500                                  ; $447d: $01 $00 $15
    ld c, a                                       ; $4480: $4f
    nop                                           ; $4481: $00
    inc sp                                        ; $4482: $33
    ld bc, $576c                                  ; $4483: $01 $6c $57
    nop                                           ; $4486: $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    add hl, bc                                    ; $448b: $09
    nop                                           ; $448c: $00
    add hl, bc                                    ; $448d: $09
    dec b                                         ; $448e: $05
    add hl, bc                                    ; $448f: $09
    nop                                           ; $4490: $00
    ld d, [hl]                                    ; $4491: $56
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    rla                                           ; $4494: $17
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    inc e                                         ; $4497: $1c
    ld b, c                                       ; $4498: $41
    ld [bc], a                                    ; $4499: $02
    ld e, a                                       ; $449a: $5f
    ld bc, $1500                                  ; $449b: $01 $00 $15
    ld c, a                                       ; $449e: $4f
    nop                                           ; $449f: $00
    inc sp                                        ; $44a0: $33
    ld bc, $576c                                  ; $44a1: $01 $6c $57
    nop                                           ; $44a4: $00
    nop                                           ; $44a5: $00
    nop                                           ; $44a6: $00
    nop                                           ; $44a7: $00
    nop                                           ; $44a8: $00
    add hl, bc                                    ; $44a9: $09
    nop                                           ; $44aa: $00
    ld d, [hl]                                    ; $44ab: $56
    dec b                                         ; $44ac: $05
    add hl, bc                                    ; $44ad: $09
    nop                                           ; $44ae: $00
    ld d, [hl]                                    ; $44af: $56
    nop                                           ; $44b0: $00
    nop                                           ; $44b1: $00
    rla                                           ; $44b2: $17
    nop                                           ; $44b3: $00
    nop                                           ; $44b4: $00
    inc e                                         ; $44b5: $1c
    ld b, c                                       ; $44b6: $41
    ld [bc], a                                    ; $44b7: $02
    ld e, a                                       ; $44b8: $5f
    ld bc, $1500                                  ; $44b9: $01 $00 $15
    ld c, a                                       ; $44bc: $4f
    nop                                           ; $44bd: $00
    inc sp                                        ; $44be: $33
    ld bc, $576c                                  ; $44bf: $01 $6c $57
    nop                                           ; $44c2: $00
    nop                                           ; $44c3: $00
    nop                                           ; $44c4: $00
    nop                                           ; $44c5: $00
    nop                                           ; $44c6: $00
    add hl, bc                                    ; $44c7: $09
    nop                                           ; $44c8: $00
    dec bc                                        ; $44c9: $0b
    dec b                                         ; $44ca: $05
    dec bc                                        ; $44cb: $0b
    nop                                           ; $44cc: $00
    ld d, [hl]                                    ; $44cd: $56
    nop                                           ; $44ce: $00
    nop                                           ; $44cf: $00
    rla                                           ; $44d0: $17
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    inc e                                         ; $44d3: $1c
    ld b, c                                       ; $44d4: $41
    ld [bc], a                                    ; $44d5: $02
    ld e, a                                       ; $44d6: $5f
    ld bc, $1500                                  ; $44d7: $01 $00 $15
    nop                                           ; $44da: $00
    nop                                           ; $44db: $00
    inc sp                                        ; $44dc: $33
    inc bc                                        ; $44dd: $03
    ld [hl], c                                    ; $44de: $71
    dec d                                         ; $44df: $15
    ld c, a                                       ; $44e0: $4f
    nop                                           ; $44e1: $00
    inc sp                                        ; $44e2: $33
    inc bc                                        ; $44e3: $03
    and d                                         ; $44e4: $a2
    ld d, a                                       ; $44e5: $57
    nop                                           ; $44e6: $00
    nop                                           ; $44e7: $00
    nop                                           ; $44e8: $00
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    add hl, bc                                    ; $44eb: $09
    nop                                           ; $44ec: $00
    ld e, h                                       ; $44ed: $5c
    dec b                                         ; $44ee: $05
    dec bc                                        ; $44ef: $0b
    nop                                           ; $44f0: $00
    ld d, [hl]                                    ; $44f1: $56
    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    rla                                           ; $44f4: $17
    nop                                           ; $44f5: $00
    nop                                           ; $44f6: $00
    inc e                                         ; $44f7: $1c
    ld b, c                                       ; $44f8: $41
    ld [bc], a                                    ; $44f9: $02
    ld e, a                                       ; $44fa: $5f
    ld bc, $1500                                  ; $44fb: $01 $00 $15
    nop                                           ; $44fe: $00
    nop                                           ; $44ff: $00
    inc sp                                        ; $4500: $33
    inc b                                         ; $4501: $04
    call nc, $4f15                                ; $4502: $d4 $15 $4f
    nop                                           ; $4505: $00
    inc sp                                        ; $4506: $33
    inc b                                         ; $4507: $04
    call c, $0057                                 ; $4508: $dc $57 $00
    nop                                           ; $450b: $00
    nop                                           ; $450c: $00
    nop                                           ; $450d: $00
    nop                                           ; $450e: $00
    add hl, bc                                    ; $450f: $09
    nop                                           ; $4510: $00
    db $10                                        ; $4511: $10
    dec b                                         ; $4512: $05
    dec bc                                        ; $4513: $0b
    nop                                           ; $4514: $00
    ld d, [hl]                                    ; $4515: $56
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    rla                                           ; $4518: $17
    nop                                           ; $4519: $00
    nop                                           ; $451a: $00
    inc e                                         ; $451b: $1c
    ld b, c                                       ; $451c: $41
    ld [bc], a                                    ; $451d: $02
    ld e, a                                       ; $451e: $5f
    ld bc, $1500                                  ; $451f: $01 $00 $15
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    inc sp                                        ; $4524: $33
    ld [bc], a                                    ; $4525: $02
    ld b, l                                       ; $4526: $45
    dec d                                         ; $4527: $15
    ld c, a                                       ; $4528: $4f
    nop                                           ; $4529: $00
    inc sp                                        ; $452a: $33
    ld [bc], a                                    ; $452b: $02
    sub c                                         ; $452c: $91
    ld d, a                                       ; $452d: $57
    nop                                           ; $452e: $00
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    add hl, bc                                    ; $4533: $09
    nop                                           ; $4534: $00
    ld de, $0b05                                  ; $4535: $11 $05 $0b
    nop                                           ; $4538: $00
    ld d, [hl]                                    ; $4539: $56
    nop                                           ; $453a: $00
    nop                                           ; $453b: $00
    rla                                           ; $453c: $17
    nop                                           ; $453d: $00
    nop                                           ; $453e: $00
    inc e                                         ; $453f: $1c
    ld b, c                                       ; $4540: $41
    ld [bc], a                                    ; $4541: $02
    ld e, a                                       ; $4542: $5f
    ld bc, $1500                                  ; $4543: $01 $00 $15
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    inc sp                                        ; $4548: $33
    ld [bc], a                                    ; $4549: $02
    ld b, l                                       ; $454a: $45
    dec d                                         ; $454b: $15
    ld c, a                                       ; $454c: $4f
    nop                                           ; $454d: $00
    inc sp                                        ; $454e: $33
    ld [bc], a                                    ; $454f: $02
    sub c                                         ; $4550: $91
    ld d, a                                       ; $4551: $57
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    add hl, bc                                    ; $4557: $09
    nop                                           ; $4558: $00
    ld d, h                                       ; $4559: $54
    dec b                                         ; $455a: $05
    add hl, bc                                    ; $455b: $09
    nop                                           ; $455c: $00
    ld d, [hl]                                    ; $455d: $56
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    rla                                           ; $4560: $17
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    inc e                                         ; $4563: $1c
    ld b, c                                       ; $4564: $41
    ld [bc], a                                    ; $4565: $02
    ld e, a                                       ; $4566: $5f
    ld bc, $1500                                  ; $4567: $01 $00 $15
    ld c, a                                       ; $456a: $4f
    nop                                           ; $456b: $00
    inc sp                                        ; $456c: $33
    ld bc, $576c                                  ; $456d: $01 $6c $57
    nop                                           ; $4570: $00
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    add hl, bc                                    ; $4575: $09
    nop                                           ; $4576: $00
    ccf                                           ; $4577: $3f
    dec b                                         ; $4578: $05
    add hl, bc                                    ; $4579: $09
    nop                                           ; $457a: $00
    ld d, [hl]                                    ; $457b: $56
    nop                                           ; $457c: $00
    nop                                           ; $457d: $00
    rla                                           ; $457e: $17
    nop                                           ; $457f: $00
    nop                                           ; $4580: $00
    inc e                                         ; $4581: $1c
    ld b, c                                       ; $4582: $41
    ld [bc], a                                    ; $4583: $02
    ld e, a                                       ; $4584: $5f
    ld bc, $1500                                  ; $4585: $01 $00 $15
    ld c, a                                       ; $4588: $4f
    nop                                           ; $4589: $00
    inc sp                                        ; $458a: $33
    add hl, bc                                    ; $458b: $09
    ld hl, sp+$57                                 ; $458c: $f8 $57
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    add hl, bc                                    ; $4593: $09
    nop                                           ; $4594: $00
    dec a                                         ; $4595: $3d
    dec b                                         ; $4596: $05
    add hl, bc                                    ; $4597: $09
    nop                                           ; $4598: $00
    ld d, [hl]                                    ; $4599: $56
    nop                                           ; $459a: $00
    nop                                           ; $459b: $00
    rla                                           ; $459c: $17
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    inc e                                         ; $459f: $1c
    ld b, c                                       ; $45a0: $41
    ld [bc], a                                    ; $45a1: $02
    ld e, a                                       ; $45a2: $5f
    ld bc, $1500                                  ; $45a3: $01 $00 $15
    ld c, a                                       ; $45a6: $4f
    nop                                           ; $45a7: $00
    inc sp                                        ; $45a8: $33
    dec bc                                        ; $45a9: $0b
    ld h, b                                       ; $45aa: $60
    ld d, a                                       ; $45ab: $57
    nop                                           ; $45ac: $00
    nop                                           ; $45ad: $00
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    add hl, bc                                    ; $45b1: $09
    nop                                           ; $45b2: $00
    ld e, e                                       ; $45b3: $5b
    dec b                                         ; $45b4: $05
    add hl, bc                                    ; $45b5: $09
    nop                                           ; $45b6: $00
    ld d, [hl]                                    ; $45b7: $56
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    rla                                           ; $45ba: $17
    nop                                           ; $45bb: $00
    nop                                           ; $45bc: $00
    inc e                                         ; $45bd: $1c
    ld b, c                                       ; $45be: $41
    ld [bc], a                                    ; $45bf: $02
    ld e, a                                       ; $45c0: $5f
    ld bc, $1500                                  ; $45c1: $01 $00 $15
    ld c, a                                       ; $45c4: $4f
    nop                                           ; $45c5: $00
    inc sp                                        ; $45c6: $33
    dec bc                                        ; $45c7: $0b
    ld h, b                                       ; $45c8: $60
    ld d, a                                       ; $45c9: $57
    nop                                           ; $45ca: $00
    nop                                           ; $45cb: $00
    nop                                           ; $45cc: $00
    nop                                           ; $45cd: $00
    nop                                           ; $45ce: $00
    ld e, a                                       ; $45cf: $5f
    ld bc, $0000                                  ; $45d0: $01 $00 $00
    nop                                           ; $45d3: $00
    nop                                           ; $45d4: $00
    ld e, a                                       ; $45d5: $5f
    nop                                           ; $45d6: $00
    nop                                           ; $45d7: $00
    add hl, bc                                    ; $45d8: $09
    nop                                           ; $45d9: $00
    ld d, e                                       ; $45da: $53
    dec b                                         ; $45db: $05
    add hl, bc                                    ; $45dc: $09
    nop                                           ; $45dd: $00
    ld d, [hl]                                    ; $45de: $56
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    rla                                           ; $45e1: $17
    nop                                           ; $45e2: $00
    nop                                           ; $45e3: $00
    inc e                                         ; $45e4: $1c
    ld b, l                                       ; $45e5: $45
    inc bc                                        ; $45e6: $03
    ld e, a                                       ; $45e7: $5f
    ld bc, $1500                                  ; $45e8: $01 $00 $15
    ld d, e                                       ; $45eb: $53
    nop                                           ; $45ec: $00
    inc sp                                        ; $45ed: $33
    ld [bc], a                                    ; $45ee: $02
    ld [de], a                                    ; $45ef: $12
    ld d, a                                       ; $45f0: $57
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    add hl, bc                                    ; $45f6: $09
    nop                                           ; $45f7: $00
    ld b, $05                                     ; $45f8: $06 $05
    add hl, bc                                    ; $45fa: $09
    nop                                           ; $45fb: $00
    ld d, [hl]                                    ; $45fc: $56
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    rla                                           ; $45ff: $17
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    inc e                                         ; $4602: $1c
    ld b, l                                       ; $4603: $45
    inc bc                                        ; $4604: $03
    ld e, a                                       ; $4605: $5f
    ld bc, $1500                                  ; $4606: $01 $00 $15
    ld d, e                                       ; $4609: $53
    nop                                           ; $460a: $00
    inc sp                                        ; $460b: $33
    ld bc, $576d                                  ; $460c: $01 $6d $57
    nop                                           ; $460f: $00
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    add hl, bc                                    ; $4614: $09
    nop                                           ; $4615: $00
    rlca                                          ; $4616: $07
    dec b                                         ; $4617: $05
    add hl, bc                                    ; $4618: $09
    nop                                           ; $4619: $00
    ld d, [hl]                                    ; $461a: $56
    nop                                           ; $461b: $00
    nop                                           ; $461c: $00
    rla                                           ; $461d: $17
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    inc e                                         ; $4620: $1c
    ld b, l                                       ; $4621: $45
    inc bc                                        ; $4622: $03
    ld e, a                                       ; $4623: $5f
    ld bc, $1500                                  ; $4624: $01 $00 $15
    ld d, e                                       ; $4627: $53
    nop                                           ; $4628: $00
    inc sp                                        ; $4629: $33
    ld bc, $576d                                  ; $462a: $01 $6d $57
    nop                                           ; $462d: $00
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    add hl, bc                                    ; $4632: $09
    nop                                           ; $4633: $00
    ld d, d                                       ; $4634: $52
    dec b                                         ; $4635: $05
    add hl, bc                                    ; $4636: $09
    nop                                           ; $4637: $00
    ld d, [hl]                                    ; $4638: $56
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    rla                                           ; $463b: $17
    nop                                           ; $463c: $00
    nop                                           ; $463d: $00
    inc e                                         ; $463e: $1c
    ld b, l                                       ; $463f: $45
    inc bc                                        ; $4640: $03
    ld e, a                                       ; $4641: $5f
    ld bc, $1500                                  ; $4642: $01 $00 $15
    ld d, e                                       ; $4645: $53
    nop                                           ; $4646: $00
    inc sp                                        ; $4647: $33
    ld bc, $576d                                  ; $4648: $01 $6d $57
    nop                                           ; $464b: $00
    nop                                           ; $464c: $00
    nop                                           ; $464d: $00
    nop                                           ; $464e: $00
    nop                                           ; $464f: $00
    add hl, bc                                    ; $4650: $09
    nop                                           ; $4651: $00
    ld [$0905], sp                                ; $4652: $08 $05 $09
    nop                                           ; $4655: $00
    ld d, [hl]                                    ; $4656: $56
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    rla                                           ; $4659: $17
    nop                                           ; $465a: $00
    nop                                           ; $465b: $00
    inc e                                         ; $465c: $1c
    ld b, l                                       ; $465d: $45
    inc bc                                        ; $465e: $03
    ld e, a                                       ; $465f: $5f
    ld bc, $1500                                  ; $4660: $01 $00 $15
    ld d, e                                       ; $4663: $53
    nop                                           ; $4664: $00
    inc sp                                        ; $4665: $33
    ld bc, $576d                                  ; $4666: $01 $6d $57
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    nop                                           ; $466c: $00
    nop                                           ; $466d: $00
    add hl, bc                                    ; $466e: $09
    nop                                           ; $466f: $00
    add hl, bc                                    ; $4670: $09
    dec b                                         ; $4671: $05
    add hl, bc                                    ; $4672: $09
    nop                                           ; $4673: $00
    ld d, [hl]                                    ; $4674: $56
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    rla                                           ; $4677: $17
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    inc e                                         ; $467a: $1c
    ld b, l                                       ; $467b: $45
    inc bc                                        ; $467c: $03
    ld e, a                                       ; $467d: $5f
    ld bc, $1500                                  ; $467e: $01 $00 $15
    ld d, e                                       ; $4681: $53
    nop                                           ; $4682: $00
    inc sp                                        ; $4683: $33
    ld bc, $576d                                  ; $4684: $01 $6d $57
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    nop                                           ; $468a: $00
    nop                                           ; $468b: $00
    add hl, bc                                    ; $468c: $09
    nop                                           ; $468d: $00
    ld d, [hl]                                    ; $468e: $56
    dec b                                         ; $468f: $05
    add hl, bc                                    ; $4690: $09
    nop                                           ; $4691: $00
    ld d, [hl]                                    ; $4692: $56
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
    rla                                           ; $4695: $17
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    inc e                                         ; $4698: $1c
    ld b, l                                       ; $4699: $45
    inc bc                                        ; $469a: $03
    ld e, a                                       ; $469b: $5f
    ld bc, $1500                                  ; $469c: $01 $00 $15
    ld d, e                                       ; $469f: $53
    nop                                           ; $46a0: $00
    inc sp                                        ; $46a1: $33
    ld bc, $576d                                  ; $46a2: $01 $6d $57
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    nop                                           ; $46a8: $00
    nop                                           ; $46a9: $00
    add hl, bc                                    ; $46aa: $09
    nop                                           ; $46ab: $00
    dec bc                                        ; $46ac: $0b
    dec b                                         ; $46ad: $05
    dec bc                                        ; $46ae: $0b
    nop                                           ; $46af: $00
    ld d, [hl]                                    ; $46b0: $56
    nop                                           ; $46b1: $00
    nop                                           ; $46b2: $00
    rla                                           ; $46b3: $17
    nop                                           ; $46b4: $00
    nop                                           ; $46b5: $00
    inc e                                         ; $46b6: $1c
    ld b, l                                       ; $46b7: $45
    inc bc                                        ; $46b8: $03
    ld e, a                                       ; $46b9: $5f
    ld bc, $1500                                  ; $46ba: $01 $00 $15
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    inc sp                                        ; $46bf: $33
    inc bc                                        ; $46c0: $03
    ld [hl], c                                    ; $46c1: $71
    dec d                                         ; $46c2: $15
    ld d, e                                       ; $46c3: $53
    nop                                           ; $46c4: $00
    inc sp                                        ; $46c5: $33
    inc bc                                        ; $46c6: $03
    and c                                         ; $46c7: $a1
    ld d, a                                       ; $46c8: $57
    nop                                           ; $46c9: $00
    nop                                           ; $46ca: $00
    nop                                           ; $46cb: $00
    nop                                           ; $46cc: $00
    nop                                           ; $46cd: $00
    add hl, bc                                    ; $46ce: $09
    nop                                           ; $46cf: $00
    ld e, h                                       ; $46d0: $5c
    dec b                                         ; $46d1: $05
    dec bc                                        ; $46d2: $0b
    nop                                           ; $46d3: $00
    ld d, [hl]                                    ; $46d4: $56
    nop                                           ; $46d5: $00
    nop                                           ; $46d6: $00
    rla                                           ; $46d7: $17
    nop                                           ; $46d8: $00
    nop                                           ; $46d9: $00
    inc e                                         ; $46da: $1c
    ld b, l                                       ; $46db: $45
    inc bc                                        ; $46dc: $03
    ld e, a                                       ; $46dd: $5f
    ld bc, $1500                                  ; $46de: $01 $00 $15
    nop                                           ; $46e1: $00
    nop                                           ; $46e2: $00
    inc sp                                        ; $46e3: $33
    inc b                                         ; $46e4: $04
    call nc, Call_00c_5315                        ; $46e5: $d4 $15 $53
    nop                                           ; $46e8: $00
    inc sp                                        ; $46e9: $33
    inc b                                         ; $46ea: $04
    db $db                                        ; $46eb: $db
    ld d, a                                       ; $46ec: $57
    nop                                           ; $46ed: $00
    nop                                           ; $46ee: $00
    nop                                           ; $46ef: $00
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    add hl, bc                                    ; $46f2: $09
    nop                                           ; $46f3: $00
    db $10                                        ; $46f4: $10
    dec b                                         ; $46f5: $05
    dec bc                                        ; $46f6: $0b
    nop                                           ; $46f7: $00
    ld d, [hl]                                    ; $46f8: $56
    nop                                           ; $46f9: $00
    nop                                           ; $46fa: $00
    rla                                           ; $46fb: $17
    nop                                           ; $46fc: $00
    nop                                           ; $46fd: $00
    inc e                                         ; $46fe: $1c
    ld b, l                                       ; $46ff: $45
    inc bc                                        ; $4700: $03
    ld e, a                                       ; $4701: $5f
    ld bc, $1500                                  ; $4702: $01 $00 $15
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    inc sp                                        ; $4707: $33
    ld [bc], a                                    ; $4708: $02
    ld b, l                                       ; $4709: $45
    dec d                                         ; $470a: $15
    ld d, e                                       ; $470b: $53
    nop                                           ; $470c: $00
    inc sp                                        ; $470d: $33
    ld [bc], a                                    ; $470e: $02
    sub b                                         ; $470f: $90
    ld d, a                                       ; $4710: $57
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    add hl, bc                                    ; $4716: $09
    nop                                           ; $4717: $00
    ld de, $0b05                                  ; $4718: $11 $05 $0b
    nop                                           ; $471b: $00
    ld d, [hl]                                    ; $471c: $56
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    rla                                           ; $471f: $17
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    inc e                                         ; $4722: $1c
    ld b, l                                       ; $4723: $45
    inc bc                                        ; $4724: $03
    ld e, a                                       ; $4725: $5f
    ld bc, $1500                                  ; $4726: $01 $00 $15
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    inc sp                                        ; $472b: $33
    ld [bc], a                                    ; $472c: $02
    ld b, l                                       ; $472d: $45
    dec d                                         ; $472e: $15
    ld d, e                                       ; $472f: $53
    nop                                           ; $4730: $00
    inc sp                                        ; $4731: $33
    ld [bc], a                                    ; $4732: $02
    sub b                                         ; $4733: $90
    ld d, a                                       ; $4734: $57
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    add hl, bc                                    ; $473a: $09
    nop                                           ; $473b: $00
    ld d, h                                       ; $473c: $54
    dec b                                         ; $473d: $05
    add hl, bc                                    ; $473e: $09
    nop                                           ; $473f: $00
    ld d, [hl]                                    ; $4740: $56
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    rla                                           ; $4743: $17
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    inc e                                         ; $4746: $1c
    ld b, l                                       ; $4747: $45
    inc bc                                        ; $4748: $03
    ld e, a                                       ; $4749: $5f
    ld bc, $1500                                  ; $474a: $01 $00 $15
    ld d, e                                       ; $474d: $53
    nop                                           ; $474e: $00
    inc sp                                        ; $474f: $33
    ld bc, $576d                                  ; $4750: $01 $6d $57
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    add hl, bc                                    ; $4758: $09
    nop                                           ; $4759: $00
    ccf                                           ; $475a: $3f
    dec b                                         ; $475b: $05
    add hl, bc                                    ; $475c: $09
    nop                                           ; $475d: $00
    ld d, [hl]                                    ; $475e: $56
    nop                                           ; $475f: $00
    nop                                           ; $4760: $00
    rla                                           ; $4761: $17
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    inc e                                         ; $4764: $1c
    ld b, l                                       ; $4765: $45
    inc bc                                        ; $4766: $03
    ld e, a                                       ; $4767: $5f
    ld bc, $1500                                  ; $4768: $01 $00 $15
    ld d, e                                       ; $476b: $53
    nop                                           ; $476c: $00
    inc sp                                        ; $476d: $33
    add hl, bc                                    ; $476e: $09
    ld sp, hl                                     ; $476f: $f9
    ld d, a                                       ; $4770: $57
    nop                                           ; $4771: $00
    nop                                           ; $4772: $00
    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    add hl, bc                                    ; $4776: $09
    nop                                           ; $4777: $00
    dec a                                         ; $4778: $3d
    dec b                                         ; $4779: $05
    add hl, bc                                    ; $477a: $09
    nop                                           ; $477b: $00
    ld d, [hl]                                    ; $477c: $56
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    rla                                           ; $477f: $17
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    inc e                                         ; $4782: $1c
    ld b, l                                       ; $4783: $45
    inc bc                                        ; $4784: $03
    ld e, a                                       ; $4785: $5f
    ld bc, $1500                                  ; $4786: $01 $00 $15
    ld d, e                                       ; $4789: $53
    nop                                           ; $478a: $00
    inc sp                                        ; $478b: $33
    dec bc                                        ; $478c: $0b
    ld [hl], c                                    ; $478d: $71
    ld d, a                                       ; $478e: $57
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    add hl, bc                                    ; $4794: $09
    nop                                           ; $4795: $00
    ld e, e                                       ; $4796: $5b
    dec b                                         ; $4797: $05
    add hl, bc                                    ; $4798: $09
    nop                                           ; $4799: $00
    ld d, [hl]                                    ; $479a: $56
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    rla                                           ; $479d: $17
    nop                                           ; $479e: $00
    nop                                           ; $479f: $00
    inc e                                         ; $47a0: $1c
    ld b, l                                       ; $47a1: $45
    inc bc                                        ; $47a2: $03
    ld e, a                                       ; $47a3: $5f
    ld bc, $1500                                  ; $47a4: $01 $00 $15
    ld d, e                                       ; $47a7: $53
    nop                                           ; $47a8: $00
    inc sp                                        ; $47a9: $33
    dec bc                                        ; $47aa: $0b
    ld [hl], c                                    ; $47ab: $71
    ld d, a                                       ; $47ac: $57
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    nop                                           ; $47af: $00
    nop                                           ; $47b0: $00
    nop                                           ; $47b1: $00
    ld e, a                                       ; $47b2: $5f
    ld bc, $0000                                  ; $47b3: $01 $00 $00
    nop                                           ; $47b6: $00
    nop                                           ; $47b7: $00
    ld e, a                                       ; $47b8: $5f
    nop                                           ; $47b9: $00
    nop                                           ; $47ba: $00
    add hl, bc                                    ; $47bb: $09
    nop                                           ; $47bc: $00
    ld e, b                                       ; $47bd: $58
    dec b                                         ; $47be: $05
    ld a, [bc]                                    ; $47bf: $0a
    nop                                           ; $47c0: $00
    add hl, bc                                    ; $47c1: $09
    add hl, bc                                    ; $47c2: $09
    nop                                           ; $47c3: $00
    dec b                                         ; $47c4: $05
    ld b, $00                                     ; $47c5: $06 $00
    inc de                                        ; $47c7: $13
    nop                                           ; $47c8: $00
    ret z                                         ; $47c9: $c8

    inc d                                         ; $47ca: $14
    ld bc, $15cc                                  ; $47cb: $01 $cc $15
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    ld d, $17                                     ; $47d0: $16 $17
    nop                                           ; $47d2: $00
    ld d, d                                       ; $47d3: $52
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    ld e, a                                       ; $47d6: $5f
    ld bc, $0000                                  ; $47d7: $01 $00 $00
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    add hl, bc                                    ; $47dc: $09
    nop                                           ; $47dd: $00
    ld h, $05                                     ; $47de: $26 $05
    ld hl, $1300                                  ; $47e0: $21 $00 $13
    rst $38                                       ; $47e3: $ff
    db $ec                                        ; $47e4: $ec
    inc d                                         ; $47e5: $14
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    dec d                                         ; $47e8: $15
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    ld d, $37                                     ; $47eb: $16 $37
    ld bc, $0052                                  ; $47ed: $01 $52 $00
    nop                                           ; $47f0: $00
    dec de                                        ; $47f1: $1b
    inc b                                         ; $47f2: $04
    nop                                           ; $47f3: $00
    inc de                                        ; $47f4: $13
    nop                                           ; $47f5: $00
    inc d                                         ; $47f6: $14
    inc d                                         ; $47f7: $14
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    dec d                                         ; $47fa: $15
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    ld d, $38                                     ; $47fd: $16 $38
    ld bc, $0052                                  ; $47ff: $01 $52 $00
    nop                                           ; $4802: $00
    dec de                                        ; $4803: $1b
    inc b                                         ; $4804: $04
    nop                                           ; $4805: $00
    inc de                                        ; $4806: $13
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    inc d                                         ; $4809: $14
    nop                                           ; $480a: $00
    inc d                                         ; $480b: $14
    dec d                                         ; $480c: $15
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    ld d, $39                                     ; $480f: $16 $39
    ld bc, $0052                                  ; $4811: $01 $52 $00
    nop                                           ; $4814: $00
    dec de                                        ; $4815: $1b
    inc b                                         ; $4816: $04
    nop                                           ; $4817: $00
    inc de                                        ; $4818: $13
    nop                                           ; $4819: $00
    jp c, Jump_000_0014                           ; $481a: $da $14 $00

    and a                                         ; $481d: $a7
    dec d                                         ; $481e: $15
    dec bc                                        ; $481f: $0b
    nop                                           ; $4820: $00
    ld d, $4c                                     ; $4821: $16 $4c
    nop                                           ; $4823: $00
    ld d, d                                       ; $4824: $52
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    dec de                                        ; $4827: $1b
    inc b                                         ; $4828: $04
    nop                                           ; $4829: $00
    ld e, a                                       ; $482a: $5f
    ld bc, $1700                                  ; $482b: $01 $00 $17
    add hl, sp                                    ; $482e: $39
    nop                                           ; $482f: $00
    ld [hl+], a                                   ; $4830: $22
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    rla                                           ; $4833: $17
    scf                                           ; $4834: $37
    nop                                           ; $4835: $00
    ld [hl+], a                                   ; $4836: $22
    add hl, sp                                    ; $4837: $39
    nop                                           ; $4838: $00
    rla                                           ; $4839: $17
    jr c, jr_00c_483c                             ; $483a: $38 $00

jr_00c_483c:
    ld [hl+], a                                   ; $483c: $22
    scf                                           ; $483d: $37
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    add hl, bc                                    ; $4842: $09
    nop                                           ; $4843: $00
    daa                                           ; $4844: $27
    dec b                                         ; $4845: $05
    ld hl, $1300                                  ; $4846: $21 $00 $13
    rst $38                                       ; $4849: $ff
    db $ec                                        ; $484a: $ec
    inc d                                         ; $484b: $14
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    dec d                                         ; $484e: $15
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    ld d, $37                                     ; $4851: $16 $37
    ld bc, $0052                                  ; $4853: $01 $52 $00
    nop                                           ; $4856: $00
    dec de                                        ; $4857: $1b
    inc b                                         ; $4858: $04
    nop                                           ; $4859: $00
    inc de                                        ; $485a: $13
    nop                                           ; $485b: $00
    inc d                                         ; $485c: $14
    inc d                                         ; $485d: $14
    nop                                           ; $485e: $00
    nop                                           ; $485f: $00
    dec d                                         ; $4860: $15
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    ld d, $38                                     ; $4863: $16 $38
    ld bc, $0052                                  ; $4865: $01 $52 $00
    nop                                           ; $4868: $00
    dec de                                        ; $4869: $1b
    inc b                                         ; $486a: $04
    nop                                           ; $486b: $00
    inc de                                        ; $486c: $13
    nop                                           ; $486d: $00
    nop                                           ; $486e: $00
    inc d                                         ; $486f: $14
    nop                                           ; $4870: $00
    inc d                                         ; $4871: $14
    dec d                                         ; $4872: $15
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    ld d, $39                                     ; $4875: $16 $39
    ld bc, $0052                                  ; $4877: $01 $52 $00
    nop                                           ; $487a: $00
    dec de                                        ; $487b: $1b
    inc b                                         ; $487c: $04
    nop                                           ; $487d: $00
    inc de                                        ; $487e: $13
    nop                                           ; $487f: $00
    jp c, Jump_000_0014                           ; $4880: $da $14 $00

    and a                                         ; $4883: $a7
    dec d                                         ; $4884: $15
    dec bc                                        ; $4885: $0b
    nop                                           ; $4886: $00
    ld d, $4c                                     ; $4887: $16 $4c
    nop                                           ; $4889: $00
    ld d, d                                       ; $488a: $52
    nop                                           ; $488b: $00
    nop                                           ; $488c: $00
    dec de                                        ; $488d: $1b
    inc b                                         ; $488e: $04
    nop                                           ; $488f: $00
    ld e, a                                       ; $4890: $5f
    ld bc, $1700                                  ; $4891: $01 $00 $17
    add hl, sp                                    ; $4894: $39
    nop                                           ; $4895: $00
    ld [hl+], a                                   ; $4896: $22
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    rla                                           ; $4899: $17
    scf                                           ; $489a: $37
    nop                                           ; $489b: $00
    ld [hl+], a                                   ; $489c: $22
    add hl, sp                                    ; $489d: $39
    nop                                           ; $489e: $00
    rla                                           ; $489f: $17
    jr c, jr_00c_48a2                             ; $48a0: $38 $00

jr_00c_48a2:
    ld [hl+], a                                   ; $48a2: $22
    scf                                           ; $48a3: $37
    nop                                           ; $48a4: $00
    nop                                           ; $48a5: $00
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    add hl, bc                                    ; $48a8: $09
    nop                                           ; $48a9: $00
    ld c, b                                       ; $48aa: $48
    dec b                                         ; $48ab: $05
    inc de                                        ; $48ac: $13
    nop                                           ; $48ad: $00
    inc de                                        ; $48ae: $13
    rst $38                                       ; $48af: $ff
    db $ec                                        ; $48b0: $ec
    inc d                                         ; $48b1: $14
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    dec d                                         ; $48b4: $15
    nop                                           ; $48b5: $00
    nop                                           ; $48b6: $00
    ld d, $68                                     ; $48b7: $16 $68
    ld bc, $0052                                  ; $48b9: $01 $52 $00
    nop                                           ; $48bc: $00
    dec de                                        ; $48bd: $1b
    inc b                                         ; $48be: $04
    nop                                           ; $48bf: $00
    inc de                                        ; $48c0: $13
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    inc d                                         ; $48c3: $14
    nop                                           ; $48c4: $00
    inc d                                         ; $48c5: $14
    dec d                                         ; $48c6: $15
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    ld d, $69                                     ; $48c9: $16 $69
    ld bc, $0052                                  ; $48cb: $01 $52 $00
    nop                                           ; $48ce: $00
    dec de                                        ; $48cf: $1b
    inc b                                         ; $48d0: $04
    nop                                           ; $48d1: $00
    ld e, a                                       ; $48d2: $5f
    ld bc, $1700                                  ; $48d3: $01 $00 $17
    ld l, c                                       ; $48d6: $69
    nop                                           ; $48d7: $00
    ld [hl+], a                                   ; $48d8: $22
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    rla                                           ; $48db: $17
    ld l, b                                       ; $48dc: $68
    nop                                           ; $48dd: $00
    ld [hl+], a                                   ; $48de: $22
    ld l, c                                       ; $48df: $69
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    nop                                           ; $48e3: $00
    add hl, bc                                    ; $48e4: $09
    nop                                           ; $48e5: $00
    add hl, sp                                    ; $48e6: $39
    dec b                                         ; $48e7: $05
    add hl, bc                                    ; $48e8: $09
    nop                                           ; $48e9: $00
    inc de                                        ; $48ea: $13
    nop                                           ; $48eb: $00
    and h                                         ; $48ec: $a4
    inc d                                         ; $48ed: $14
    ld [bc], a                                    ; $48ee: $02
    ld [de], a                                    ; $48ef: $12
    dec d                                         ; $48f0: $15
    ld b, $00                                     ; $48f1: $06 $00
    ld d, $2e                                     ; $48f3: $16 $2e
    nop                                           ; $48f5: $00
    ld d, d                                       ; $48f6: $52
    nop                                           ; $48f7: $00
    nop                                           ; $48f8: $00
    dec de                                        ; $48f9: $1b
    nop                                           ; $48fa: $00
    nop                                           ; $48fb: $00
    ld e, a                                       ; $48fc: $5f
    ld bc, $0000                                  ; $48fd: $01 $00 $00
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    add hl, bc                                    ; $4902: $09
    nop                                           ; $4903: $00
    dec sp                                        ; $4904: $3b
    dec b                                         ; $4905: $05
    ld c, $00                                     ; $4906: $0e $00
    inc de                                        ; $4908: $13
    ld bc, $1486                                  ; $4909: $01 $86 $14
    ld bc, $1577                                  ; $490c: $01 $77 $15
    ld [$1600], sp                                ; $490f: $08 $00 $16
    ld c, d                                       ; $4912: $4a
    nop                                           ; $4913: $00
    ld d, d                                       ; $4914: $52
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    dec de                                        ; $4917: $1b
    inc b                                         ; $4918: $04
    nop                                           ; $4919: $00
    inc de                                        ; $491a: $13
    ld bc, $1486                                  ; $491b: $01 $86 $14
    ld bc, $1590                                  ; $491e: $01 $90 $15
    ld [$1600], sp                                ; $4921: $08 $00 $16
    ld [hl+], a                                   ; $4924: $22
    nop                                           ; $4925: $00
    dec de                                        ; $4926: $1b
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    ld e, a                                       ; $4929: $5f
    ld bc, $0000                                  ; $492a: $01 $00 $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    add hl, bc                                    ; $492f: $09
    nop                                           ; $4930: $00
    scf                                           ; $4931: $37
    dec b                                         ; $4932: $05
    inc bc                                        ; $4933: $03
    nop                                           ; $4934: $00
    ld e, a                                       ; $4935: $5f
    ld bc, $0000                                  ; $4936: $01 $00 $00
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    add hl, bc                                    ; $493b: $09
    nop                                           ; $493c: $00
    ld e, d                                       ; $493d: $5a
    dec b                                         ; $493e: $05
    inc b                                         ; $493f: $04
    nop                                           ; $4940: $00
    ld e, a                                       ; $4941: $5f
    ld bc, $7a00                                  ; $4942: $01 $00 $7a
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    add hl, bc                                    ; $494a: $09
    nop                                           ; $494b: $00
    ld b, e                                       ; $494c: $43
    dec b                                         ; $494d: $05
    inc bc                                        ; $494e: $03
    nop                                           ; $494f: $00
    ld e, a                                       ; $4950: $5f
    ld bc, $0000                                  ; $4951: $01 $00 $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    add hl, bc                                    ; $4956: $09
    nop                                           ; $4957: $00
    inc [hl]                                      ; $4958: $34
    dec b                                         ; $4959: $05
    inc bc                                        ; $495a: $03
    nop                                           ; $495b: $00
    ld e, a                                       ; $495c: $5f
    ld bc, $0000                                  ; $495d: $01 $00 $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    add hl, bc                                    ; $4962: $09
    nop                                           ; $4963: $00
    ld b, c                                       ; $4964: $41
    dec b                                         ; $4965: $05
    inc bc                                        ; $4966: $03
    nop                                           ; $4967: $00
    ld e, a                                       ; $4968: $5f
    ld bc, $0000                                  ; $4969: $01 $00 $00
    nop                                           ; $496c: $00
    nop                                           ; $496d: $00
    inc de                                        ; $496e: $13
    ld bc, $1410                                  ; $496f: $01 $10 $14
    nop                                           ; $4972: $00
    halt                                          ; $4973: $76
    dec d                                         ; $4974: $15
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    ld d, $44                                     ; $4977: $16 $44
    nop                                           ; $4979: $00
    ld d, d                                       ; $497a: $52
    nop                                           ; $497b: $00
    nop                                           ; $497c: $00
    dec de                                        ; $497d: $1b
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    inc de                                        ; $4980: $13
    ld bc, $1438                                  ; $4981: $01 $38 $14
    nop                                           ; $4984: $00
    ld [c], a                                     ; $4985: $e2
    dec d                                         ; $4986: $15
    ld bc, $1600                                  ; $4987: $01 $00 $16
    dec sp                                        ; $498a: $3b
    nop                                           ; $498b: $00
    ld d, d                                       ; $498c: $52
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    dec de                                        ; $498f: $1b
    ld b, $00                                     ; $4990: $06 $00
    inc de                                        ; $4992: $13
    nop                                           ; $4993: $00
    xor h                                         ; $4994: $ac
    inc d                                         ; $4995: $14
    ld bc, $1553                                  ; $4996: $01 $53 $15
    ld [bc], a                                    ; $4999: $02
    nop                                           ; $499a: $00
    ld d, $41                                     ; $499b: $16 $41
    nop                                           ; $499d: $00
    ld d, d                                       ; $499e: $52
    nop                                           ; $499f: $00
    nop                                           ; $49a0: $00
    inc de                                        ; $49a1: $13
    ld bc, $1450                                  ; $49a2: $01 $50 $14
    ld [bc], a                                    ; $49a5: $02
    dec a                                         ; $49a6: $3d
    dec d                                         ; $49a7: $15
    inc bc                                        ; $49a8: $03
    nop                                           ; $49a9: $00
    ld d, $45                                     ; $49aa: $16 $45
    nop                                           ; $49ac: $00
    ld d, d                                       ; $49ad: $52
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    ld e, a                                       ; $49b0: $5f
    ld bc, $0000                                  ; $49b1: $01 $00 $00
    nop                                           ; $49b4: $00
    nop                                           ; $49b5: $00
    ld e, a                                       ; $49b6: $5f
    nop                                           ; $49b7: $00
    nop                                           ; $49b8: $00
    add hl, bc                                    ; $49b9: $09
    nop                                           ; $49ba: $00
    ld e, b                                       ; $49bb: $58
    dec b                                         ; $49bc: $05
    inc c                                         ; $49bd: $0c
    nop                                           ; $49be: $00
    add hl, bc                                    ; $49bf: $09
    add hl, bc                                    ; $49c0: $09
    nop                                           ; $49c1: $00
    dec b                                         ; $49c2: $05
    ld a, [bc]                                    ; $49c3: $0a
    nop                                           ; $49c4: $00
    ld d, [hl]                                    ; $49c5: $56
    nop                                           ; $49c6: $00
    nop                                           ; $49c7: $00
    rla                                           ; $49c8: $17
    rla                                           ; $49c9: $17
    nop                                           ; $49ca: $00
    ld e, a                                       ; $49cb: $5f
    ld bc, $1500                                  ; $49cc: $01 $00 $15
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    inc sp                                        ; $49d1: $33
    inc b                                         ; $49d2: $04
    dec d                                         ; $49d3: $15
    dec d                                         ; $49d4: $15
    scf                                           ; $49d5: $37
    nop                                           ; $49d6: $00
    inc sp                                        ; $49d7: $33
    inc b                                         ; $49d8: $04
    inc e                                         ; $49d9: $1c
    ld d, a                                       ; $49da: $57
    nop                                           ; $49db: $00
    nop                                           ; $49dc: $00
    nop                                           ; $49dd: $00
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    ld e, a                                       ; $49e0: $5f
    ld bc, $0000                                  ; $49e1: $01 $00 $00
    nop                                           ; $49e4: $00
    nop                                           ; $49e5: $00
    add hl, bc                                    ; $49e6: $09
    nop                                           ; $49e7: $00
    add hl, sp                                    ; $49e8: $39
    dec b                                         ; $49e9: $05
    dec de                                        ; $49ea: $1b
    nop                                           ; $49eb: $00
    ld e, a                                       ; $49ec: $5f
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    ld d, [hl]                                    ; $49ef: $56
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    rla                                           ; $49f2: $17
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    dec de                                        ; $49f5: $1b
    inc b                                         ; $49f6: $04
    nop                                           ; $49f7: $00
    inc de                                        ; $49f8: $13
    nop                                           ; $49f9: $00
    and $14                                       ; $49fa: $e6 $14
    ld bc, $15c3                                  ; $49fc: $01 $c3 $15
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    ld d, $22                                     ; $4a01: $16 $22
    nop                                           ; $4a03: $00
    ld d, d                                       ; $4a04: $52
    nop                                           ; $4a05: $00
    nop                                           ; $4a06: $00
    ld e, a                                       ; $4a07: $5f
    ld bc, $1500                                  ; $4a08: $01 $00 $15
    ld b, d                                       ; $4a0b: $42
    nop                                           ; $4a0c: $00
    inc sp                                        ; $4a0d: $33
    inc bc                                        ; $4a0e: $03
    db $dd                                        ; $4a0f: $dd
    ld l, $3b                                     ; $4a10: $2e $3b
    nop                                           ; $4a12: $00
    rla                                           ; $4a13: $17
    nop                                           ; $4a14: $00
    nop                                           ; $4a15: $00
    dec de                                        ; $4a16: $1b
    inc b                                         ; $4a17: $04
    nop                                           ; $4a18: $00
    rrca                                          ; $4a19: $0f
    rst $38                                       ; $4a1a: $ff
    nop                                           ; $4a1b: $00
    rla                                           ; $4a1c: $17
    ld [hl+], a                                   ; $4a1d: $22
    nop                                           ; $4a1e: $00
    ld a, b                                       ; $4a1f: $78
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    inc e                                         ; $4a22: $1c
    nop                                           ; $4a23: $00
    nop                                           ; $4a24: $00
    dec d                                         ; $4a25: $15
    ld b, c                                       ; $4a26: $41
    nop                                           ; $4a27: $00
    inc sp                                        ; $4a28: $33
    inc b                                         ; $4a29: $04
    ld e, l                                       ; $4a2a: $5d
    dec d                                         ; $4a2b: $15
    ld b, c                                       ; $4a2c: $41
    nop                                           ; $4a2d: $00
    inc sp                                        ; $4a2e: $33
    inc b                                         ; $4a2f: $04
    ld c, c                                       ; $4a30: $49
    ld d, a                                       ; $4a31: $57
    nop                                           ; $4a32: $00
    nop                                           ; $4a33: $00
    jr z, jr_00c_4a7c                             ; $4a34: $28 $46

    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    nop                                           ; $4a38: $00
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    nop                                           ; $4a3b: $00
    nop                                           ; $4a3c: $00
    add hl, bc                                    ; $4a3d: $09
    nop                                           ; $4a3e: $00
    add hl, sp                                    ; $4a3f: $39
    dec b                                         ; $4a40: $05
    ld h, $00                                     ; $4a41: $26 $00
    ld e, a                                       ; $4a43: $5f
    nop                                           ; $4a44: $00
    nop                                           ; $4a45: $00
    ld d, [hl]                                    ; $4a46: $56
    nop                                           ; $4a47: $00
    nop                                           ; $4a48: $00
    rla                                           ; $4a49: $17
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    dec de                                        ; $4a4c: $1b
    ld b, $00                                     ; $4a4d: $06 $00
    inc de                                        ; $4a4f: $13
    ld bc, $1486                                  ; $4a50: $01 $86 $14
    ld bc, $152c                                  ; $4a53: $01 $2c $15
    ld [$1600], sp                                ; $4a56: $08 $00 $16
    ld c, d                                       ; $4a59: $4a
    nop                                           ; $4a5a: $00
    ld d, d                                       ; $4a5b: $52
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    inc de                                        ; $4a5e: $13
    ld bc, $1486                                  ; $4a5f: $01 $86 $14
    ld bc, $15de                                  ; $4a62: $01 $de $15
    ld [$1600], sp                                ; $4a65: $08 $00 $16
    ld [hl+], a                                   ; $4a68: $22
    nop                                           ; $4a69: $00
    ld d, d                                       ; $4a6a: $52
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    ld e, a                                       ; $4a6d: $5f
    ld bc, $7a00                                  ; $4a6e: $01 $00 $7a
    ld bc, $1700                                  ; $4a71: $01 $00 $17
    ld c, d                                       ; $4a74: $4a
    nop                                           ; $4a75: $00
    ld e, [hl]                                    ; $4a76: $5e
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    dec d                                         ; $4a79: $15
    inc b                                         ; $4a7a: $04
    nop                                           ; $4a7b: $00

jr_00c_4a7c:
    add hl, de                                    ; $4a7c: $19
    nop                                           ; $4a7d: $00
    ld c, e                                       ; $4a7e: $4b
    rla                                           ; $4a7f: $17
    ld [hl+], a                                   ; $4a80: $22
    nop                                           ; $4a81: $00
    dec d                                         ; $4a82: $15
    nop                                           ; $4a83: $00
    nop                                           ; $4a84: $00
    add hl, de                                    ; $4a85: $19
    nop                                           ; $4a86: $00
    ld d, b                                       ; $4a87: $50
    ld e, [hl]                                    ; $4a88: $5e
    ld bc, $2500                                  ; $4a89: $01 $00 $25
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    dec de                                        ; $4a8e: $1b
    nop                                           ; $4a8f: $00
    nop                                           ; $4a90: $00
    rla                                           ; $4a91: $17
    ld c, d                                       ; $4a92: $4a
    nop                                           ; $4a93: $00
    dec de                                        ; $4a94: $1b
    inc b                                         ; $4a95: $04
    nop                                           ; $4a96: $00
    dec d                                         ; $4a97: $15
    ld b, c                                       ; $4a98: $41
    nop                                           ; $4a99: $00
    inc sp                                        ; $4a9a: $33
    inc b                                         ; $4a9b: $04
    ld c, [hl]                                    ; $4a9c: $4e
    dec d                                         ; $4a9d: $15
    jr c, jr_00c_4aa0                             ; $4a9e: $38 $00

jr_00c_4aa0:
    inc sp                                        ; $4aa0: $33
    inc b                                         ; $4aa1: $04
    ld c, a                                       ; $4aa2: $4f
    dec d                                         ; $4aa3: $15
    nop                                           ; $4aa4: $00
    nop                                           ; $4aa5: $00
    inc sp                                        ; $4aa6: $33
    inc b                                         ; $4aa7: $04
    ld d, b                                       ; $4aa8: $50
    ld h, d                                       ; $4aa9: $62
    dec sp                                        ; $4aaa: $3b
    nop                                           ; $4aab: $00
    ld d, a                                       ; $4aac: $57
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    nop                                           ; $4ab3: $00
    nop                                           ; $4ab4: $00
    ld e, a                                       ; $4ab5: $5f
    nop                                           ; $4ab6: $00
    nop                                           ; $4ab7: $00
    add hl, bc                                    ; $4ab8: $09
    nop                                           ; $4ab9: $00
    dec sp                                        ; $4aba: $3b
    dec b                                         ; $4abb: $05
    stop                                          ; $4abc: $10 $00
    ld d, [hl]                                    ; $4abe: $56
    nop                                           ; $4abf: $00
    nop                                           ; $4ac0: $00
    rla                                           ; $4ac1: $17
    nop                                           ; $4ac2: $00
    nop                                           ; $4ac3: $00
    dec de                                        ; $4ac4: $1b
    ld [bc], a                                    ; $4ac5: $02
    nop                                           ; $4ac6: $00
    ld e, a                                       ; $4ac7: $5f
    ld bc, $1500                                  ; $4ac8: $01 $00 $15
    ld b, c                                       ; $4acb: $41
    nop                                           ; $4acc: $00
    inc sp                                        ; $4acd: $33
    inc b                                         ; $4ace: $04
    ld d, c                                       ; $4acf: $51
    rrca                                          ; $4ad0: $0f
    rst $38                                       ; $4ad1: $ff
    nop                                           ; $4ad2: $00
    dec de                                        ; $4ad3: $1b
    ld b, $00                                     ; $4ad4: $06 $00
    dec d                                         ; $4ad6: $15
    jr c, jr_00c_4ad9                             ; $4ad7: $38 $00

jr_00c_4ad9:
    inc sp                                        ; $4ad9: $33
    inc b                                         ; $4ada: $04
    ld d, d                                       ; $4adb: $52
    dec d                                         ; $4adc: $15
    nop                                           ; $4add: $00
    nop                                           ; $4ade: $00
    ld b, d                                       ; $4adf: $42
    nop                                           ; $4ae0: $00
    dec b                                         ; $4ae1: $05
    ld d, a                                       ; $4ae2: $57
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    jr z, jr_00c_4b2d                             ; $4ae5: $28 $46

    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    ld e, a                                       ; $4aeb: $5f
    ld bc, $0000                                  ; $4aec: $01 $00 $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    ld e, a                                       ; $4af1: $5f
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    add hl, bc                                    ; $4af4: $09
    nop                                           ; $4af5: $00
    ld h, $05                                     ; $4af6: $26 $05
    rlca                                          ; $4af8: $07
    nop                                           ; $4af9: $00
    ld d, [hl]                                    ; $4afa: $56
    nop                                           ; $4afb: $00
    nop                                           ; $4afc: $00
    ld e, a                                       ; $4afd: $5f
    ld bc, $1500                                  ; $4afe: $01 $00 $15
    dec a                                         ; $4b01: $3d
    nop                                           ; $4b02: $00
    inc sp                                        ; $4b03: $33
    ld bc, $57cc                                  ; $4b04: $01 $cc $57
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    add hl, bc                                    ; $4b0c: $09
    nop                                           ; $4b0d: $00
    daa                                           ; $4b0e: $27
    dec b                                         ; $4b0f: $05
    rlca                                          ; $4b10: $07
    nop                                           ; $4b11: $00
    ld d, [hl]                                    ; $4b12: $56
    nop                                           ; $4b13: $00
    nop                                           ; $4b14: $00
    ld e, a                                       ; $4b15: $5f
    ld bc, $1500                                  ; $4b16: $01 $00 $15
    dec a                                         ; $4b19: $3d
    nop                                           ; $4b1a: $00
    inc sp                                        ; $4b1b: $33
    ld bc, $57cc                                  ; $4b1c: $01 $cc $57
    nop                                           ; $4b1f: $00
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    add hl, bc                                    ; $4b24: $09
    nop                                           ; $4b25: $00
    scf                                           ; $4b26: $37
    dec b                                         ; $4b27: $05
    rlca                                          ; $4b28: $07
    nop                                           ; $4b29: $00
    ld d, [hl]                                    ; $4b2a: $56
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00

jr_00c_4b2d:
    ld e, a                                       ; $4b2d: $5f
    ld bc, $1500                                  ; $4b2e: $01 $00 $15
    dec a                                         ; $4b31: $3d
    nop                                           ; $4b32: $00
    inc sp                                        ; $4b33: $33
    ld bc, $57cc                                  ; $4b34: $01 $cc $57
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    add hl, bc                                    ; $4b3c: $09
    nop                                           ; $4b3d: $00
    add hl, sp                                    ; $4b3e: $39
    dec b                                         ; $4b3f: $05
    rlca                                          ; $4b40: $07
    nop                                           ; $4b41: $00
    ld d, [hl]                                    ; $4b42: $56
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    ld e, a                                       ; $4b45: $5f
    ld bc, $1500                                  ; $4b46: $01 $00 $15
    dec a                                         ; $4b49: $3d
    nop                                           ; $4b4a: $00
    inc sp                                        ; $4b4b: $33
    ld bc, $57cc                                  ; $4b4c: $01 $cc $57
    nop                                           ; $4b4f: $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    add hl, bc                                    ; $4b54: $09
    nop                                           ; $4b55: $00
    ld e, d                                       ; $4b56: $5a
    dec b                                         ; $4b57: $05
    rlca                                          ; $4b58: $07
    nop                                           ; $4b59: $00
    ld d, [hl]                                    ; $4b5a: $56
    nop                                           ; $4b5b: $00
    nop                                           ; $4b5c: $00
    ld e, a                                       ; $4b5d: $5f
    ld bc, $1500                                  ; $4b5e: $01 $00 $15
    dec a                                         ; $4b61: $3d
    nop                                           ; $4b62: $00
    inc sp                                        ; $4b63: $33
    ld bc, $57cc                                  ; $4b64: $01 $cc $57
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    add hl, bc                                    ; $4b6c: $09
    nop                                           ; $4b6d: $00
    ld b, c                                       ; $4b6e: $41
    dec b                                         ; $4b6f: $05
    rlca                                          ; $4b70: $07
    nop                                           ; $4b71: $00
    ld d, [hl]                                    ; $4b72: $56
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    ld e, a                                       ; $4b75: $5f
    ld bc, $1500                                  ; $4b76: $01 $00 $15
    dec a                                         ; $4b79: $3d
    nop                                           ; $4b7a: $00
    inc sp                                        ; $4b7b: $33
    ld bc, $57cc                                  ; $4b7c: $01 $cc $57
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    add hl, bc                                    ; $4b84: $09
    nop                                           ; $4b85: $00
    ld c, b                                       ; $4b86: $48
    dec b                                         ; $4b87: $05
    rlca                                          ; $4b88: $07
    nop                                           ; $4b89: $00
    ld d, [hl]                                    ; $4b8a: $56
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    ld e, a                                       ; $4b8d: $5f
    ld bc, $1500                                  ; $4b8e: $01 $00 $15
    dec a                                         ; $4b91: $3d
    nop                                           ; $4b92: $00
    inc sp                                        ; $4b93: $33
    ld bc, $57cc                                  ; $4b94: $01 $cc $57
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    nop                                           ; $4b9b: $00
    ld d, [hl]                                    ; $4b9c: $56
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    ld e, a                                       ; $4b9f: $5f
    ld bc, $2e00                                  ; $4ba0: $01 $00 $2e
    dec d                                         ; $4ba3: $15
    nop                                           ; $4ba4: $00
    ld d, a                                       ; $4ba5: $57
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    ld a, c                                       ; $4ba8: $79
    inc b                                         ; $4ba9: $04
    jr nc, jr_00c_4bac                            ; $4baa: $30 $00

jr_00c_4bac:
    nop                                           ; $4bac: $00
    nop                                           ; $4bad: $00
    ld e, a                                       ; $4bae: $5f
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    add hl, bc                                    ; $4bb1: $09
    nop                                           ; $4bb2: $00
    ld h, $05                                     ; $4bb3: $26 $05
    ld [bc], a                                    ; $4bb5: $02
    nop                                           ; $4bb6: $00
    inc bc                                        ; $4bb7: $03
    inc e                                         ; $4bb8: $1c
    nop                                           ; $4bb9: $00
    add hl, bc                                    ; $4bba: $09
    nop                                           ; $4bbb: $00
    daa                                           ; $4bbc: $27
    dec b                                         ; $4bbd: $05
    ld [bc], a                                    ; $4bbe: $02
    nop                                           ; $4bbf: $00
    inc bc                                        ; $4bc0: $03
    add hl, de                                    ; $4bc1: $19
    nop                                           ; $4bc2: $00
    add hl, bc                                    ; $4bc3: $09
    nop                                           ; $4bc4: $00
    scf                                           ; $4bc5: $37
    dec b                                         ; $4bc6: $05
    ld [bc], a                                    ; $4bc7: $02
    nop                                           ; $4bc8: $00
    inc bc                                        ; $4bc9: $03
    ld d, $00                                     ; $4bca: $16 $00
    add hl, bc                                    ; $4bcc: $09
    nop                                           ; $4bcd: $00
    add hl, sp                                    ; $4bce: $39
    dec b                                         ; $4bcf: $05
    ld [bc], a                                    ; $4bd0: $02
    nop                                           ; $4bd1: $00
    inc bc                                        ; $4bd2: $03
    inc de                                        ; $4bd3: $13
    nop                                           ; $4bd4: $00
    add hl, bc                                    ; $4bd5: $09
    nop                                           ; $4bd6: $00
    ld e, d                                       ; $4bd7: $5a
    dec b                                         ; $4bd8: $05
    ld [bc], a                                    ; $4bd9: $02
    nop                                           ; $4bda: $00
    inc bc                                        ; $4bdb: $03
    stop                                          ; $4bdc: $10 $00
    add hl, bc                                    ; $4bde: $09
    nop                                           ; $4bdf: $00
    ld b, c                                       ; $4be0: $41
    dec b                                         ; $4be1: $05
    ld [bc], a                                    ; $4be2: $02
    nop                                           ; $4be3: $00
    inc bc                                        ; $4be4: $03
    dec c                                         ; $4be5: $0d
    nop                                           ; $4be6: $00
    add hl, bc                                    ; $4be7: $09
    nop                                           ; $4be8: $00
    ld c, b                                       ; $4be9: $48
    dec b                                         ; $4bea: $05
    ld [bc], a                                    ; $4beb: $02
    nop                                           ; $4bec: $00
    inc bc                                        ; $4bed: $03
    ld a, [bc]                                    ; $4bee: $0a
    nop                                           ; $4bef: $00
    add hl, bc                                    ; $4bf0: $09
    nop                                           ; $4bf1: $00
    ld b, e                                       ; $4bf2: $43
    dec b                                         ; $4bf3: $05
    ld [bc], a                                    ; $4bf4: $02
    nop                                           ; $4bf5: $00
    inc bc                                        ; $4bf6: $03
    rlca                                          ; $4bf7: $07
    nop                                           ; $4bf8: $00
    ld d, [hl]                                    ; $4bf9: $56
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    ld e, a                                       ; $4bfc: $5f
    ld bc, $2e00                                  ; $4bfd: $01 $00 $2e
    dec d                                         ; $4c00: $15
    nop                                           ; $4c01: $00
    ld d, a                                       ; $4c02: $57
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    ld a, c                                       ; $4c05: $79
    dec b                                         ; $4c06: $05
    jr nc, jr_00c_4c09                            ; $4c07: $30 $00

jr_00c_4c09:
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    ld d, [hl]                                    ; $4c0b: $56
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    ld e, a                                       ; $4c0e: $5f
    ld bc, $1500                                  ; $4c0f: $01 $00 $15
    dec a                                         ; $4c12: $3d
    nop                                           ; $4c13: $00
    inc sp                                        ; $4c14: $33
    ld bc, $57cc                                  ; $4c15: $01 $cc $57
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    nop                                           ; $4c1b: $00
    nop                                           ; $4c1c: $00
    ld e, a                                       ; $4c1d: $5f
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    add hl, bc                                    ; $4c20: $09
    nop                                           ; $4c21: $00
    ld h, $05                                     ; $4c22: $26 $05
    ld [de], a                                    ; $4c24: $12
    nop                                           ; $4c25: $00
    ld d, [hl]                                    ; $4c26: $56
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    rla                                           ; $4c29: $17
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    inc e                                         ; $4c2c: $1c
    ld c, h                                       ; $4c2d: $4c
    dec bc                                        ; $4c2e: $0b
    ld e, a                                       ; $4c2f: $5f
    ld bc, $0900                                  ; $4c30: $01 $00 $09
    dec b                                         ; $4c33: $05
    ld bc, $0705                                  ; $4c34: $01 $05 $07
    nop                                           ; $4c37: $00
    dec d                                         ; $4c38: $15
    ld e, d                                       ; $4c39: $5a
    nop                                           ; $4c3a: $00
    inc sp                                        ; $4c3b: $33
    add hl, bc                                    ; $4c3c: $09
    ld l, e                                       ; $4c3d: $6b
    dec d                                         ; $4c3e: $15
    nop                                           ; $4c3f: $00
    nop                                           ; $4c40: $00
    ld b, d                                       ; $4c41: $42
    nop                                           ; $4c42: $00
    ld bc, $0057                                  ; $4c43: $01 $57 $00
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    nop                                           ; $4c48: $00
    nop                                           ; $4c49: $00
    dec d                                         ; $4c4a: $15
    ld e, d                                       ; $4c4b: $5a
    nop                                           ; $4c4c: $00
    inc sp                                        ; $4c4d: $33
    add hl, bc                                    ; $4c4e: $09
    ld l, d                                       ; $4c4f: $6a
    rrca                                          ; $4c50: $0f
    dec b                                         ; $4c51: $05
    ld bc, $0057                                  ; $4c52: $01 $57 $00
    nop                                           ; $4c55: $00
    nop                                           ; $4c56: $00
    nop                                           ; $4c57: $00
    nop                                           ; $4c58: $00
    add hl, bc                                    ; $4c59: $09
    nop                                           ; $4c5a: $00
    daa                                           ; $4c5b: $27
    dec b                                         ; $4c5c: $05
    ld [de], a                                    ; $4c5d: $12
    nop                                           ; $4c5e: $00
    ld d, [hl]                                    ; $4c5f: $56
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    rla                                           ; $4c62: $17
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    inc e                                         ; $4c65: $1c
    ld c, h                                       ; $4c66: $4c
    dec bc                                        ; $4c67: $0b
    ld e, a                                       ; $4c68: $5f
    ld bc, $0900                                  ; $4c69: $01 $00 $09
    dec b                                         ; $4c6c: $05
    ld bc, $0705                                  ; $4c6d: $01 $05 $07
    nop                                           ; $4c70: $00
    dec d                                         ; $4c71: $15
    ld e, d                                       ; $4c72: $5a
    nop                                           ; $4c73: $00
    inc sp                                        ; $4c74: $33
    add hl, bc                                    ; $4c75: $09
    ld l, e                                       ; $4c76: $6b
    dec d                                         ; $4c77: $15
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    ld b, d                                       ; $4c7a: $42
    nop                                           ; $4c7b: $00
    ld bc, $0057                                  ; $4c7c: $01 $57 $00
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    dec d                                         ; $4c83: $15
    ld e, d                                       ; $4c84: $5a
    nop                                           ; $4c85: $00
    inc sp                                        ; $4c86: $33
    add hl, bc                                    ; $4c87: $09
    ld l, d                                       ; $4c88: $6a
    rrca                                          ; $4c89: $0f
    dec b                                         ; $4c8a: $05
    ld bc, $0057                                  ; $4c8b: $01 $57 $00
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    ld e, a                                       ; $4c92: $5f
    ld bc, $0000                                  ; $4c93: $01 $00 $00
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    ld b, $00                                     ; $4c98: $06 $00
    nop                                           ; $4c9a: $00
    ld bc, $0314                                  ; $4c9b: $01 $14 $03
    inc bc                                        ; $4c9e: $03
    inc b                                         ; $4c9f: $04
    or b                                          ; $4ca0: $b0
    dec b                                         ; $4ca1: $05
    ld l, l                                       ; $4ca2: $6d
    rlca                                          ; $4ca3: $07
    ld c, l                                       ; $4ca4: $4d
    ld e, a                                       ; $4ca5: $5f
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    add hl, bc                                    ; $4ca8: $09
    nop                                           ; $4ca9: $00
    rlca                                          ; $4caa: $07
    dec b                                         ; $4cab: $05
    dec bc                                        ; $4cac: $0b
    nop                                           ; $4cad: $00
    ld d, [hl]                                    ; $4cae: $56
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    rla                                           ; $4cb1: $17
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    dec de                                        ; $4cb4: $1b
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    ld e, a                                       ; $4cb7: $5f
    ld bc, $1500                                  ; $4cb8: $01 $00 $15
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    inc sp                                        ; $4cbd: $33
    ld bc, $1578                                  ; $4cbe: $01 $78 $15
    scf                                           ; $4cc1: $37
    nop                                           ; $4cc2: $00
    inc sp                                        ; $4cc3: $33
    ld bc, $578c                                  ; $4cc4: $01 $8c $57
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    add hl, bc                                    ; $4ccc: $09
    nop                                           ; $4ccd: $00
    ld d, d                                       ; $4cce: $52
    dec b                                         ; $4ccf: $05
    ld c, h                                       ; $4cd0: $4c
    nop                                           ; $4cd1: $00
    add hl, bc                                    ; $4cd2: $09
    inc de                                        ; $4cd3: $13
    ld bc, $0905                                  ; $4cd4: $01 $05 $09
    nop                                           ; $4cd7: $00
    ld d, [hl]                                    ; $4cd8: $56
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    rla                                           ; $4cdb: $17
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    dec de                                        ; $4cde: $1b
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    ld e, a                                       ; $4ce1: $5f
    ld bc, $1500                                  ; $4ce2: $01 $00 $15
    scf                                           ; $4ce5: $37
    nop                                           ; $4ce6: $00
    inc sp                                        ; $4ce7: $33
    ld bc, $57b3                                  ; $4ce8: $01 $b3 $57
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    add hl, bc                                    ; $4cf0: $09
    ld c, $01                                     ; $4cf1: $0e $01
    dec b                                         ; $4cf3: $05
    rla                                           ; $4cf4: $17
    nop                                           ; $4cf5: $00
    ld d, [hl]                                    ; $4cf6: $56
    nop                                           ; $4cf7: $00
    nop                                           ; $4cf8: $00
    rla                                           ; $4cf9: $17
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    dec de                                        ; $4cfc: $1b
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    ld e, a                                       ; $4cff: $5f
    ld bc, $6900                                  ; $4d00: $01 $00 $69
    ld h, c                                       ; $4d03: $61
    nop                                           ; $4d04: $00
    add hl, bc                                    ; $4d05: $09
    cp $01                                        ; $4d06: $fe $01
    dec b                                         ; $4d08: $05
    ld a, [bc]                                    ; $4d09: $0a
    nop                                           ; $4d0a: $00
    dec d                                         ; $4d0b: $15
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    inc sp                                        ; $4d0e: $33
    ld bc, $39a5                                  ; $4d0f: $01 $a5 $39
    ld h, c                                       ; $4d12: $61
    ld bc, $130f                                  ; $4d13: $01 $0f $13
    ld bc, $3715                                  ; $4d16: $01 $15 $37
    nop                                           ; $4d19: $00
    inc sp                                        ; $4d1a: $33
    ld bc, $57a2                                  ; $4d1b: $01 $a2 $57
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    inc bc                                        ; $4d23: $03
    rlca                                          ; $4d24: $07
    nop                                           ; $4d25: $00
    dec d                                         ; $4d26: $15
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    inc sp                                        ; $4d29: $33
    ld bc, $15a6                                  ; $4d2a: $01 $a6 $15
    scf                                           ; $4d2d: $37
    nop                                           ; $4d2e: $00
    inc sp                                        ; $4d2f: $33
    ld bc, $57a7                                  ; $4d30: $01 $a7 $57
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    ld d, [hl]                                    ; $4d38: $56
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    rla                                           ; $4d3b: $17
    nop                                           ; $4d3c: $00
    nop                                           ; $4d3d: $00
    dec de                                        ; $4d3e: $1b
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    ld e, a                                       ; $4d41: $5f
    ld bc, $1500                                  ; $4d42: $01 $00 $15
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    inc sp                                        ; $4d47: $33
    ld bc, $1598                                  ; $4d48: $01 $98 $15
    scf                                           ; $4d4b: $37
    nop                                           ; $4d4c: $00
    inc sp                                        ; $4d4d: $33
    ld bc, $1599                                  ; $4d4e: $01 $99 $15
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    inc sp                                        ; $4d53: $33
    ld bc, $159a                                  ; $4d54: $01 $9a $15
    scf                                           ; $4d57: $37
    nop                                           ; $4d58: $00
    inc sp                                        ; $4d59: $33
    ld bc, $159b                                  ; $4d5a: $01 $9b $15
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    inc sp                                        ; $4d5f: $33
    ld bc, $159c                                  ; $4d60: $01 $9c $15
    scf                                           ; $4d63: $37
    nop                                           ; $4d64: $00
    inc sp                                        ; $4d65: $33
    ld bc, $159d                                  ; $4d66: $01 $9d $15
    scf                                           ; $4d69: $37
    nop                                           ; $4d6a: $00
    inc sp                                        ; $4d6b: $33
    ld bc, $159e                                  ; $4d6c: $01 $9e $15
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    inc sp                                        ; $4d71: $33
    ld bc, $159f                                  ; $4d72: $01 $9f $15
    scf                                           ; $4d75: $37
    nop                                           ; $4d76: $00
    inc sp                                        ; $4d77: $33
    ld bc, $69a0                                  ; $4d78: $01 $a0 $69
    ld h, c                                       ; $4d7b: $61
    nop                                           ; $4d7c: $00
    add hl, bc                                    ; $4d7d: $09
    cp $01                                        ; $4d7e: $fe $01
    dec b                                         ; $4d80: $05
    ld a, [bc]                                    ; $4d81: $0a
    nop                                           ; $4d82: $00
    dec d                                         ; $4d83: $15
    nop                                           ; $4d84: $00
    nop                                           ; $4d85: $00
    inc sp                                        ; $4d86: $33
    ld bc, $39a1                                  ; $4d87: $01 $a1 $39
    ld h, c                                       ; $4d8a: $61
    ld bc, $3715                                  ; $4d8b: $01 $15 $37
    nop                                           ; $4d8e: $00
    inc sp                                        ; $4d8f: $33
    ld bc, $0fa2                                  ; $4d90: $01 $a2 $0f
    inc de                                        ; $4d93: $13
    ld bc, $0057                                  ; $4d94: $01 $57 $00
    nop                                           ; $4d97: $00
    nop                                           ; $4d98: $00
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    inc bc                                        ; $4d9b: $03
    dec b                                         ; $4d9c: $05
    nop                                           ; $4d9d: $00
    dec d                                         ; $4d9e: $15
    nop                                           ; $4d9f: $00
    nop                                           ; $4da0: $00
    inc sp                                        ; $4da1: $33
    ld bc, $15a3                                  ; $4da2: $01 $a3 $15
    scf                                           ; $4da5: $37
    nop                                           ; $4da6: $00
    inc sp                                        ; $4da7: $33
    ld bc, $57a4                                  ; $4da8: $01 $a4 $57
    nop                                           ; $4dab: $00
    nop                                           ; $4dac: $00
    rrca                                          ; $4dad: $0f
    ld c, $01                                     ; $4dae: $0e $01
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    ld e, a                                       ; $4db3: $5f
    ld bc, $0000                                  ; $4db4: $01 $00 $00
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    ld e, a                                       ; $4db9: $5f
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    add hl, bc                                    ; $4dbc: $09
    nop                                           ; $4dbd: $00
    rlca                                          ; $4dbe: $07
    dec b                                         ; $4dbf: $05
    ld a, [bc]                                    ; $4dc0: $0a
    nop                                           ; $4dc1: $00
    ld d, [hl]                                    ; $4dc2: $56
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    rla                                           ; $4dc5: $17
    nop                                           ; $4dc6: $00
    nop                                           ; $4dc7: $00
    inc e                                         ; $4dc8: $1c
    ld b, b                                       ; $4dc9: $40
    ld bc, $015f                                  ; $4dca: $01 $5f $01
    nop                                           ; $4dcd: $00
    dec d                                         ; $4dce: $15
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    inc sp                                        ; $4dd1: $33
    ld bc, $1578                                  ; $4dd2: $01 $78 $15
    ld c, [hl]                                    ; $4dd5: $4e
    nop                                           ; $4dd6: $00
    inc sp                                        ; $4dd7: $33
    ld bc, $578a                                  ; $4dd8: $01 $8a $57
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    add hl, bc                                    ; $4ddd: $09
    nop                                           ; $4dde: $00
    ld d, d                                       ; $4ddf: $52
    dec b                                         ; $4de0: $05
    ld a, [bc]                                    ; $4de1: $0a
    nop                                           ; $4de2: $00
    ld d, [hl]                                    ; $4de3: $56
    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    rla                                           ; $4de6: $17
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    inc e                                         ; $4de9: $1c
    ld b, b                                       ; $4dea: $40
    ld bc, $015f                                  ; $4deb: $01 $5f $01
    nop                                           ; $4dee: $00
    dec d                                         ; $4def: $15
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    inc sp                                        ; $4df2: $33
    ld bc, $1595                                  ; $4df3: $01 $95 $15
    ld c, [hl]                                    ; $4df6: $4e
    nop                                           ; $4df7: $00
    inc sp                                        ; $4df8: $33
    ld bc, $5796                                  ; $4df9: $01 $96 $57
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    add hl, bc                                    ; $4dfe: $09
    nop                                           ; $4dff: $00
    ld [$0b05], sp                                ; $4e00: $08 $05 $0b
    nop                                           ; $4e03: $00
    ld d, [hl]                                    ; $4e04: $56
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    rla                                           ; $4e07: $17
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    inc e                                         ; $4e0a: $1c
    ld b, b                                       ; $4e0b: $40
    ld bc, $015f                                  ; $4e0c: $01 $5f $01
    nop                                           ; $4e0f: $00
    dec d                                         ; $4e10: $15
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    inc sp                                        ; $4e13: $33
    ld bc, $15cd                                  ; $4e14: $01 $cd $15
    ld c, [hl]                                    ; $4e17: $4e
    nop                                           ; $4e18: $00
    inc sp                                        ; $4e19: $33
    ld bc, $57d2                                  ; $4e1a: $01 $d2 $57
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    add hl, bc                                    ; $4e22: $09
    nop                                           ; $4e23: $00
    ld d, e                                       ; $4e24: $53
    dec b                                         ; $4e25: $05
    add hl, bc                                    ; $4e26: $09
    nop                                           ; $4e27: $00
    ld d, [hl]                                    ; $4e28: $56
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    rla                                           ; $4e2b: $17
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    inc e                                         ; $4e2e: $1c
    ld b, b                                       ; $4e2f: $40
    ld bc, $015f                                  ; $4e30: $01 $5f $01
    nop                                           ; $4e33: $00
    dec d                                         ; $4e34: $15
    ld c, [hl]                                    ; $4e35: $4e
    nop                                           ; $4e36: $00
    inc sp                                        ; $4e37: $33
    ld [bc], a                                    ; $4e38: $02
    ld a, [hl+]                                   ; $4e39: $2a
    ld d, a                                       ; $4e3a: $57
    nop                                           ; $4e3b: $00
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    add hl, bc                                    ; $4e40: $09
    nop                                           ; $4e41: $00
    ld b, $05                                     ; $4e42: $06 $05
    add hl, bc                                    ; $4e44: $09
    nop                                           ; $4e45: $00
    ld d, [hl]                                    ; $4e46: $56
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    rla                                           ; $4e49: $17
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    inc e                                         ; $4e4c: $1c
    ld b, b                                       ; $4e4d: $40
    ld bc, $015f                                  ; $4e4e: $01 $5f $01
    nop                                           ; $4e51: $00
    dec d                                         ; $4e52: $15
    ld c, [hl]                                    ; $4e53: $4e
    nop                                           ; $4e54: $00
    inc sp                                        ; $4e55: $33
    ld bc, $576f                                  ; $4e56: $01 $6f $57
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    add hl, bc                                    ; $4e5e: $09
    nop                                           ; $4e5f: $00
    add hl, bc                                    ; $4e60: $09
    dec b                                         ; $4e61: $05
    add hl, bc                                    ; $4e62: $09
    nop                                           ; $4e63: $00
    ld d, [hl]                                    ; $4e64: $56
    nop                                           ; $4e65: $00
    nop                                           ; $4e66: $00
    rla                                           ; $4e67: $17
    nop                                           ; $4e68: $00
    nop                                           ; $4e69: $00
    inc e                                         ; $4e6a: $1c
    ld b, b                                       ; $4e6b: $40
    ld bc, $015f                                  ; $4e6c: $01 $5f $01
    nop                                           ; $4e6f: $00
    dec d                                         ; $4e70: $15
    ld c, [hl]                                    ; $4e71: $4e
    nop                                           ; $4e72: $00
    inc sp                                        ; $4e73: $33
    ld bc, $576f                                  ; $4e74: $01 $6f $57
    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00
    add hl, bc                                    ; $4e7c: $09
    nop                                           ; $4e7d: $00
    ld d, [hl]                                    ; $4e7e: $56
    dec b                                         ; $4e7f: $05
    add hl, bc                                    ; $4e80: $09
    nop                                           ; $4e81: $00
    ld d, [hl]                                    ; $4e82: $56
    nop                                           ; $4e83: $00
    nop                                           ; $4e84: $00
    rla                                           ; $4e85: $17
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    inc e                                         ; $4e88: $1c
    ld b, b                                       ; $4e89: $40
    ld bc, $015f                                  ; $4e8a: $01 $5f $01
    nop                                           ; $4e8d: $00
    dec d                                         ; $4e8e: $15
    ld c, [hl]                                    ; $4e8f: $4e
    nop                                           ; $4e90: $00
    inc sp                                        ; $4e91: $33
    ld bc, $576f                                  ; $4e92: $01 $6f $57
    nop                                           ; $4e95: $00
    nop                                           ; $4e96: $00
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    add hl, bc                                    ; $4e9a: $09
    nop                                           ; $4e9b: $00
    dec bc                                        ; $4e9c: $0b
    dec b                                         ; $4e9d: $05
    dec bc                                        ; $4e9e: $0b
    nop                                           ; $4e9f: $00
    ld d, [hl]                                    ; $4ea0: $56
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    rla                                           ; $4ea3: $17
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    inc e                                         ; $4ea6: $1c
    ld b, b                                       ; $4ea7: $40
    ld bc, $015f                                  ; $4ea8: $01 $5f $01
    nop                                           ; $4eab: $00
    dec d                                         ; $4eac: $15
    nop                                           ; $4ead: $00
    nop                                           ; $4eae: $00
    inc sp                                        ; $4eaf: $33
    inc bc                                        ; $4eb0: $03
    ld [hl], c                                    ; $4eb1: $71
    dec d                                         ; $4eb2: $15
    ld c, [hl]                                    ; $4eb3: $4e
    nop                                           ; $4eb4: $00
    inc sp                                        ; $4eb5: $33
    inc bc                                        ; $4eb6: $03
    ld a, l                                       ; $4eb7: $7d
    ld d, a                                       ; $4eb8: $57
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    add hl, bc                                    ; $4ebe: $09
    nop                                           ; $4ebf: $00
    ld e, h                                       ; $4ec0: $5c
    dec b                                         ; $4ec1: $05
    dec bc                                        ; $4ec2: $0b
    nop                                           ; $4ec3: $00
    ld d, [hl]                                    ; $4ec4: $56
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    rla                                           ; $4ec7: $17
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    inc e                                         ; $4eca: $1c
    ld b, b                                       ; $4ecb: $40
    ld bc, $015f                                  ; $4ecc: $01 $5f $01
    nop                                           ; $4ecf: $00
    dec d                                         ; $4ed0: $15
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    inc sp                                        ; $4ed3: $33
    inc b                                         ; $4ed4: $04
    call nc, $4e15                                ; $4ed5: $d4 $15 $4e
    nop                                           ; $4ed8: $00
    inc sp                                        ; $4ed9: $33
    inc b                                         ; $4eda: $04
    jp c, $0057                                   ; $4edb: $da $57 $00

    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    add hl, bc                                    ; $4ee2: $09
    nop                                           ; $4ee3: $00
    db $10                                        ; $4ee4: $10
    dec b                                         ; $4ee5: $05
    dec bc                                        ; $4ee6: $0b
    nop                                           ; $4ee7: $00
    ld d, [hl]                                    ; $4ee8: $56
    nop                                           ; $4ee9: $00
    nop                                           ; $4eea: $00
    rla                                           ; $4eeb: $17
    nop                                           ; $4eec: $00
    nop                                           ; $4eed: $00
    inc e                                         ; $4eee: $1c
    ld b, b                                       ; $4eef: $40
    ld bc, $015f                                  ; $4ef0: $01 $5f $01
    nop                                           ; $4ef3: $00
    dec d                                         ; $4ef4: $15
    nop                                           ; $4ef5: $00
    nop                                           ; $4ef6: $00
    inc sp                                        ; $4ef7: $33
    ld [bc], a                                    ; $4ef8: $02
    ld b, l                                       ; $4ef9: $45
    dec d                                         ; $4efa: $15
    ld c, [hl]                                    ; $4efb: $4e
    nop                                           ; $4efc: $00
    inc sp                                        ; $4efd: $33
    ld [bc], a                                    ; $4efe: $02
    adc h                                         ; $4eff: $8c
    ld d, a                                       ; $4f00: $57
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    add hl, bc                                    ; $4f06: $09
    nop                                           ; $4f07: $00
    ld de, $0b05                                  ; $4f08: $11 $05 $0b
    nop                                           ; $4f0b: $00
    ld d, [hl]                                    ; $4f0c: $56
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    rla                                           ; $4f0f: $17
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    inc e                                         ; $4f12: $1c
    ld b, b                                       ; $4f13: $40
    ld bc, $015f                                  ; $4f14: $01 $5f $01
    nop                                           ; $4f17: $00
    dec d                                         ; $4f18: $15
    nop                                           ; $4f19: $00
    nop                                           ; $4f1a: $00
    inc sp                                        ; $4f1b: $33
    ld [bc], a                                    ; $4f1c: $02
    ld b, l                                       ; $4f1d: $45
    dec d                                         ; $4f1e: $15
    ld c, [hl]                                    ; $4f1f: $4e
    nop                                           ; $4f20: $00
    inc sp                                        ; $4f21: $33
    ld [bc], a                                    ; $4f22: $02
    adc h                                         ; $4f23: $8c
    ld d, a                                       ; $4f24: $57
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    add hl, bc                                    ; $4f2a: $09
    nop                                           ; $4f2b: $00
    ld d, h                                       ; $4f2c: $54
    dec b                                         ; $4f2d: $05
    add hl, bc                                    ; $4f2e: $09
    nop                                           ; $4f2f: $00
    ld d, [hl]                                    ; $4f30: $56
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    rla                                           ; $4f33: $17
    nop                                           ; $4f34: $00
    nop                                           ; $4f35: $00
    inc e                                         ; $4f36: $1c
    ld b, b                                       ; $4f37: $40
    ld bc, $015f                                  ; $4f38: $01 $5f $01
    nop                                           ; $4f3b: $00
    dec d                                         ; $4f3c: $15
    ld c, [hl]                                    ; $4f3d: $4e
    nop                                           ; $4f3e: $00
    inc sp                                        ; $4f3f: $33
    ld [bc], a                                    ; $4f40: $02
    ld a, [hl+]                                   ; $4f41: $2a
    ld d, a                                       ; $4f42: $57
    nop                                           ; $4f43: $00
    nop                                           ; $4f44: $00
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    nop                                           ; $4f47: $00
    add hl, bc                                    ; $4f48: $09
    nop                                           ; $4f49: $00
    ccf                                           ; $4f4a: $3f
    dec b                                         ; $4f4b: $05
    add hl, bc                                    ; $4f4c: $09
    nop                                           ; $4f4d: $00
    ld d, [hl]                                    ; $4f4e: $56
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    rla                                           ; $4f51: $17
    nop                                           ; $4f52: $00
    nop                                           ; $4f53: $00
    inc e                                         ; $4f54: $1c
    ld b, b                                       ; $4f55: $40
    ld bc, $015f                                  ; $4f56: $01 $5f $01
    nop                                           ; $4f59: $00
    dec d                                         ; $4f5a: $15
    ld c, [hl]                                    ; $4f5b: $4e
    nop                                           ; $4f5c: $00
    inc sp                                        ; $4f5d: $33
    add hl, bc                                    ; $4f5e: $09
    ld a, [$0057]                                 ; $4f5f: $fa $57 $00
    nop                                           ; $4f62: $00
    nop                                           ; $4f63: $00
    nop                                           ; $4f64: $00
    nop                                           ; $4f65: $00
    add hl, bc                                    ; $4f66: $09
    nop                                           ; $4f67: $00
    dec a                                         ; $4f68: $3d
    dec b                                         ; $4f69: $05
    add hl, bc                                    ; $4f6a: $09
    nop                                           ; $4f6b: $00
    ld d, [hl]                                    ; $4f6c: $56
    nop                                           ; $4f6d: $00
    nop                                           ; $4f6e: $00
    rla                                           ; $4f6f: $17
    nop                                           ; $4f70: $00
    nop                                           ; $4f71: $00
    inc e                                         ; $4f72: $1c
    ld b, b                                       ; $4f73: $40
    ld bc, $015f                                  ; $4f74: $01 $5f $01
    nop                                           ; $4f77: $00
    dec d                                         ; $4f78: $15
    ld c, [hl]                                    ; $4f79: $4e
    nop                                           ; $4f7a: $00
    inc sp                                        ; $4f7b: $33
    dec bc                                        ; $4f7c: $0b
    ld h, c                                       ; $4f7d: $61
    ld d, a                                       ; $4f7e: $57
    nop                                           ; $4f7f: $00
    nop                                           ; $4f80: $00
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    add hl, bc                                    ; $4f84: $09
    nop                                           ; $4f85: $00
    ld e, e                                       ; $4f86: $5b
    dec b                                         ; $4f87: $05
    add hl, bc                                    ; $4f88: $09
    nop                                           ; $4f89: $00
    ld d, [hl]                                    ; $4f8a: $56
    nop                                           ; $4f8b: $00
    nop                                           ; $4f8c: $00
    rla                                           ; $4f8d: $17
    nop                                           ; $4f8e: $00
    nop                                           ; $4f8f: $00
    inc e                                         ; $4f90: $1c
    ld b, b                                       ; $4f91: $40
    ld bc, $015f                                  ; $4f92: $01 $5f $01
    nop                                           ; $4f95: $00
    dec d                                         ; $4f96: $15
    ld c, [hl]                                    ; $4f97: $4e
    nop                                           ; $4f98: $00
    inc sp                                        ; $4f99: $33
    dec bc                                        ; $4f9a: $0b
    ld h, c                                       ; $4f9b: $61
    ld d, a                                       ; $4f9c: $57
    nop                                           ; $4f9d: $00
    nop                                           ; $4f9e: $00
    nop                                           ; $4f9f: $00
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    ld e, a                                       ; $4fa2: $5f
    ld bc, $0000                                  ; $4fa3: $01 $00 $00
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    ld e, a                                       ; $4fa8: $5f
    nop                                           ; $4fa9: $00
    nop                                           ; $4faa: $00
    add hl, bc                                    ; $4fab: $09
    nop                                           ; $4fac: $00
    ld h, $05                                     ; $4fad: $26 $05
    ld hl, $1300                                  ; $4faf: $21 $00 $13
    rst $38                                       ; $4fb2: $ff
    db $ec                                        ; $4fb3: $ec
    inc d                                         ; $4fb4: $14
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    dec d                                         ; $4fb7: $15
    nop                                           ; $4fb8: $00
    nop                                           ; $4fb9: $00
    ld d, $37                                     ; $4fba: $16 $37
    ld bc, $0052                                  ; $4fbc: $01 $52 $00
    nop                                           ; $4fbf: $00
    dec de                                        ; $4fc0: $1b
    inc b                                         ; $4fc1: $04
    nop                                           ; $4fc2: $00
    inc de                                        ; $4fc3: $13
    nop                                           ; $4fc4: $00
    inc d                                         ; $4fc5: $14
    inc d                                         ; $4fc6: $14
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    dec d                                         ; $4fc9: $15
    nop                                           ; $4fca: $00
    nop                                           ; $4fcb: $00
    ld d, $38                                     ; $4fcc: $16 $38
    ld bc, $0052                                  ; $4fce: $01 $52 $00
    nop                                           ; $4fd1: $00
    dec de                                        ; $4fd2: $1b
    inc b                                         ; $4fd3: $04
    nop                                           ; $4fd4: $00
    inc de                                        ; $4fd5: $13
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    inc d                                         ; $4fd8: $14
    nop                                           ; $4fd9: $00
    inc d                                         ; $4fda: $14
    dec d                                         ; $4fdb: $15
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    ld d, $39                                     ; $4fde: $16 $39
    ld bc, $0052                                  ; $4fe0: $01 $52 $00
    nop                                           ; $4fe3: $00
    dec de                                        ; $4fe4: $1b
    inc b                                         ; $4fe5: $04
    nop                                           ; $4fe6: $00
    inc de                                        ; $4fe7: $13
    nop                                           ; $4fe8: $00
    jp nz, $0114                                  ; $4fe9: $c2 $14 $01

    push hl                                       ; $4fec: $e5
    dec d                                         ; $4fed: $15
    dec b                                         ; $4fee: $05
    nop                                           ; $4fef: $00
    ld d, $0d                                     ; $4ff0: $16 $0d
    nop                                           ; $4ff2: $00
    ld d, d                                       ; $4ff3: $52
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    dec de                                        ; $4ff6: $1b
    inc b                                         ; $4ff7: $04
    nop                                           ; $4ff8: $00
    ld e, a                                       ; $4ff9: $5f
    ld bc, $1700                                  ; $4ffa: $01 $00 $17
    add hl, sp                                    ; $4ffd: $39
    nop                                           ; $4ffe: $00
    ld [hl+], a                                   ; $4fff: $22
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    rla                                           ; $5002: $17
    scf                                           ; $5003: $37
    nop                                           ; $5004: $00
    ld [hl+], a                                   ; $5005: $22
    add hl, sp                                    ; $5006: $39
    nop                                           ; $5007: $00
    rla                                           ; $5008: $17
    jr c, jr_00c_500b                             ; $5009: $38 $00

jr_00c_500b:
    ld [hl+], a                                   ; $500b: $22
    scf                                           ; $500c: $37
    nop                                           ; $500d: $00
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    add hl, bc                                    ; $5011: $09
    nop                                           ; $5012: $00
    daa                                           ; $5013: $27
    dec b                                         ; $5014: $05

Call_00c_5015:
    ld hl, $1300                                  ; $5015: $21 $00 $13
    rst $38                                       ; $5018: $ff
    db $ec                                        ; $5019: $ec
    inc d                                         ; $501a: $14
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    dec d                                         ; $501d: $15
    nop                                           ; $501e: $00
    nop                                           ; $501f: $00
    ld d, $37                                     ; $5020: $16 $37
    ld bc, $0052                                  ; $5022: $01 $52 $00
    nop                                           ; $5025: $00
    dec de                                        ; $5026: $1b
    inc b                                         ; $5027: $04
    nop                                           ; $5028: $00
    inc de                                        ; $5029: $13
    nop                                           ; $502a: $00
    inc d                                         ; $502b: $14
    inc d                                         ; $502c: $14
    nop                                           ; $502d: $00
    nop                                           ; $502e: $00
    dec d                                         ; $502f: $15
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    ld d, $38                                     ; $5032: $16 $38
    ld bc, $0052                                  ; $5034: $01 $52 $00
    nop                                           ; $5037: $00
    dec de                                        ; $5038: $1b
    inc b                                         ; $5039: $04
    nop                                           ; $503a: $00
    inc de                                        ; $503b: $13
    nop                                           ; $503c: $00
    nop                                           ; $503d: $00
    inc d                                         ; $503e: $14
    nop                                           ; $503f: $00
    inc d                                         ; $5040: $14
    dec d                                         ; $5041: $15
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    ld d, $39                                     ; $5044: $16 $39
    ld bc, $0052                                  ; $5046: $01 $52 $00
    nop                                           ; $5049: $00
    dec de                                        ; $504a: $1b
    inc b                                         ; $504b: $04
    nop                                           ; $504c: $00
    inc de                                        ; $504d: $13
    nop                                           ; $504e: $00
    jp nz, $0114                                  ; $504f: $c2 $14 $01

    push hl                                       ; $5052: $e5
    dec d                                         ; $5053: $15
    dec b                                         ; $5054: $05
    nop                                           ; $5055: $00
    ld d, $0d                                     ; $5056: $16 $0d
    nop                                           ; $5058: $00
    ld d, d                                       ; $5059: $52
    nop                                           ; $505a: $00
    nop                                           ; $505b: $00
    dec de                                        ; $505c: $1b
    inc b                                         ; $505d: $04
    nop                                           ; $505e: $00
    ld e, a                                       ; $505f: $5f
    ld bc, $1700                                  ; $5060: $01 $00 $17
    add hl, sp                                    ; $5063: $39
    nop                                           ; $5064: $00
    ld [hl+], a                                   ; $5065: $22
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    rla                                           ; $5068: $17
    scf                                           ; $5069: $37
    nop                                           ; $506a: $00
    ld [hl+], a                                   ; $506b: $22
    add hl, sp                                    ; $506c: $39
    nop                                           ; $506d: $00
    rla                                           ; $506e: $17
    jr c, jr_00c_5071                             ; $506f: $38 $00

jr_00c_5071:
    ld [hl+], a                                   ; $5071: $22
    scf                                           ; $5072: $37
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    add hl, bc                                    ; $5077: $09
    nop                                           ; $5078: $00
    ld c, b                                       ; $5079: $48
    dec b                                         ; $507a: $05
    inc de                                        ; $507b: $13
    nop                                           ; $507c: $00
    inc de                                        ; $507d: $13
    rst $38                                       ; $507e: $ff
    db $ec                                        ; $507f: $ec
    inc d                                         ; $5080: $14
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    dec d                                         ; $5083: $15
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    ld d, $68                                     ; $5086: $16 $68
    ld bc, $0052                                  ; $5088: $01 $52 $00
    nop                                           ; $508b: $00
    dec de                                        ; $508c: $1b
    inc b                                         ; $508d: $04
    nop                                           ; $508e: $00
    inc de                                        ; $508f: $13
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    inc d                                         ; $5092: $14
    nop                                           ; $5093: $00
    inc d                                         ; $5094: $14
    dec d                                         ; $5095: $15
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    ld d, $69                                     ; $5098: $16 $69
    ld bc, $0052                                  ; $509a: $01 $52 $00
    nop                                           ; $509d: $00
    dec de                                        ; $509e: $1b
    inc b                                         ; $509f: $04
    nop                                           ; $50a0: $00
    ld e, a                                       ; $50a1: $5f
    ld bc, $1700                                  ; $50a2: $01 $00 $17
    ld l, c                                       ; $50a5: $69
    nop                                           ; $50a6: $00
    ld [hl+], a                                   ; $50a7: $22
    nop                                           ; $50a8: $00
    nop                                           ; $50a9: $00
    rla                                           ; $50aa: $17
    ld l, b                                       ; $50ab: $68
    nop                                           ; $50ac: $00
    ld [hl+], a                                   ; $50ad: $22
    ld l, c                                       ; $50ae: $69
    nop                                           ; $50af: $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    add hl, bc                                    ; $50b3: $09
    nop                                           ; $50b4: $00
    ld e, b                                       ; $50b5: $58
    dec b                                         ; $50b6: $05
    inc bc                                        ; $50b7: $03
    nop                                           ; $50b8: $00
    ld e, a                                       ; $50b9: $5f
    ld bc, $0000                                  ; $50ba: $01 $00 $00
    nop                                           ; $50bd: $00
    nop                                           ; $50be: $00
    add hl, bc                                    ; $50bf: $09
    nop                                           ; $50c0: $00
    scf                                           ; $50c1: $37
    dec b                                         ; $50c2: $05
    inc bc                                        ; $50c3: $03
    nop                                           ; $50c4: $00
    ld e, a                                       ; $50c5: $5f
    ld bc, $0000                                  ; $50c6: $01 $00 $00
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    add hl, bc                                    ; $50cb: $09
    nop                                           ; $50cc: $00
    ld e, d                                       ; $50cd: $5a
    dec b                                         ; $50ce: $05
    inc bc                                        ; $50cf: $03
    nop                                           ; $50d0: $00
    ld e, a                                       ; $50d1: $5f
    ld bc, $0000                                  ; $50d2: $01 $00 $00
    nop                                           ; $50d5: $00
    nop                                           ; $50d6: $00
    add hl, bc                                    ; $50d7: $09
    nop                                           ; $50d8: $00
    ld b, e                                       ; $50d9: $43
    dec b                                         ; $50da: $05
    inc bc                                        ; $50db: $03
    nop                                           ; $50dc: $00
    ld e, a                                       ; $50dd: $5f
    ld bc, $0000                                  ; $50de: $01 $00 $00
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    add hl, bc                                    ; $50e3: $09
    nop                                           ; $50e4: $00
    inc [hl]                                      ; $50e5: $34
    dec b                                         ; $50e6: $05
    inc bc                                        ; $50e7: $03
    nop                                           ; $50e8: $00
    ld e, a                                       ; $50e9: $5f
    ld bc, $0000                                  ; $50ea: $01 $00 $00
    nop                                           ; $50ed: $00
    nop                                           ; $50ee: $00
    add hl, bc                                    ; $50ef: $09
    nop                                           ; $50f0: $00
    ld b, c                                       ; $50f1: $41
    dec b                                         ; $50f2: $05
    inc bc                                        ; $50f3: $03
    nop                                           ; $50f4: $00
    ld e, a                                       ; $50f5: $5f
    ld bc, $0000                                  ; $50f6: $01 $00 $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    inc de                                        ; $50fb: $13
    nop                                           ; $50fc: $00
    halt                                          ; $50fd: $76
    inc d                                         ; $50fe: $14
    nop                                           ; $50ff: $00
    ld e, d                                       ; $5100: $5a
    dec d                                         ; $5101: $15
    ld bc, $1600                                  ; $5102: $01 $00 $16
    ld b, b                                       ; $5105: $40
    nop                                           ; $5106: $00
    ld d, d                                       ; $5107: $52
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    inc de                                        ; $510a: $13
    nop                                           ; $510b: $00
    push hl                                       ; $510c: $e5
    inc d                                         ; $510d: $14
    ld bc, $15a2                                  ; $510e: $01 $a2 $15
    inc b                                         ; $5111: $04
    nop                                           ; $5112: $00
    ld d, $47                                     ; $5113: $16 $47
    nop                                           ; $5115: $00
    ld d, d                                       ; $5116: $52
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    add hl, bc                                    ; $5119: $09
    nop                                           ; $511a: $00
    rlca                                          ; $511b: $07
    dec b                                         ; $511c: $05
    ld [$1300], sp                                ; $511d: $08 $00 $13
    nop                                           ; $5120: $00
    adc d                                         ; $5121: $8a
    inc d                                         ; $5122: $14
    ld bc, $1572                                  ; $5123: $01 $72 $15
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    ld d, $17                                     ; $5128: $16 $17
    nop                                           ; $512a: $00
    ld d, d                                       ; $512b: $52
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    ld e, a                                       ; $512e: $5f
    ld bc, $0000                                  ; $512f: $01 $00 $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    add hl, bc                                    ; $5134: $09
    nop                                           ; $5135: $00
    ld d, d                                       ; $5136: $52
    dec b                                         ; $5137: $05
    ld [$1300], sp                                ; $5138: $08 $00 $13
    nop                                           ; $513b: $00
    adc d                                         ; $513c: $8a
    inc d                                         ; $513d: $14
    ld bc, $1572                                  ; $513e: $01 $72 $15
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    ld d, $17                                     ; $5143: $16 $17
    nop                                           ; $5145: $00
    ld d, d                                       ; $5146: $52
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    ld e, a                                       ; $5149: $5f
    ld bc, $0000                                  ; $514a: $01 $00 $00
    nop                                           ; $514d: $00
    nop                                           ; $514e: $00
    ld e, a                                       ; $514f: $5f
    ld bc, $0000                                  ; $5150: $01 $00 $00
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    ld e, a                                       ; $5155: $5f
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    add hl, bc                                    ; $5158: $09
    nop                                           ; $5159: $00
    ld h, $05                                     ; $515a: $26 $05
    rlca                                          ; $515c: $07
    nop                                           ; $515d: $00
    ld d, [hl]                                    ; $515e: $56
    nop                                           ; $515f: $00
    nop                                           ; $5160: $00
    ld e, a                                       ; $5161: $5f
    ld bc, $1500                                  ; $5162: $01 $00 $15
    dec a                                         ; $5165: $3d
    nop                                           ; $5166: $00
    inc sp                                        ; $5167: $33
    ld bc, $57cc                                  ; $5168: $01 $cc $57
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    nop                                           ; $516d: $00
    nop                                           ; $516e: $00
    nop                                           ; $516f: $00
    add hl, bc                                    ; $5170: $09
    nop                                           ; $5171: $00
    daa                                           ; $5172: $27
    dec b                                         ; $5173: $05
    rlca                                          ; $5174: $07
    nop                                           ; $5175: $00
    ld d, [hl]                                    ; $5176: $56
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    ld e, a                                       ; $5179: $5f
    ld bc, $1500                                  ; $517a: $01 $00 $15
    dec a                                         ; $517d: $3d
    nop                                           ; $517e: $00
    inc sp                                        ; $517f: $33
    ld bc, $57cc                                  ; $5180: $01 $cc $57
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    add hl, bc                                    ; $5188: $09
    nop                                           ; $5189: $00
    scf                                           ; $518a: $37
    dec b                                         ; $518b: $05
    rlca                                          ; $518c: $07
    nop                                           ; $518d: $00
    ld d, [hl]                                    ; $518e: $56
    nop                                           ; $518f: $00
    nop                                           ; $5190: $00
    ld e, a                                       ; $5191: $5f
    ld bc, $1500                                  ; $5192: $01 $00 $15
    dec a                                         ; $5195: $3d
    nop                                           ; $5196: $00
    inc sp                                        ; $5197: $33
    ld bc, $57cc                                  ; $5198: $01 $cc $57
    nop                                           ; $519b: $00
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    nop                                           ; $519e: $00
    nop                                           ; $519f: $00
    add hl, bc                                    ; $51a0: $09
    nop                                           ; $51a1: $00
    add hl, sp                                    ; $51a2: $39
    dec b                                         ; $51a3: $05
    rlca                                          ; $51a4: $07
    nop                                           ; $51a5: $00
    ld d, [hl]                                    ; $51a6: $56
    nop                                           ; $51a7: $00
    nop                                           ; $51a8: $00
    ld e, a                                       ; $51a9: $5f
    ld bc, $1500                                  ; $51aa: $01 $00 $15
    dec a                                         ; $51ad: $3d
    nop                                           ; $51ae: $00
    inc sp                                        ; $51af: $33
    ld bc, $57cc                                  ; $51b0: $01 $cc $57
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00
    nop                                           ; $51b6: $00
    nop                                           ; $51b7: $00
    add hl, bc                                    ; $51b8: $09
    nop                                           ; $51b9: $00
    ld e, d                                       ; $51ba: $5a
    dec b                                         ; $51bb: $05
    rlca                                          ; $51bc: $07
    nop                                           ; $51bd: $00
    ld d, [hl]                                    ; $51be: $56
    nop                                           ; $51bf: $00
    nop                                           ; $51c0: $00
    ld e, a                                       ; $51c1: $5f
    ld bc, $1500                                  ; $51c2: $01 $00 $15
    dec a                                         ; $51c5: $3d
    nop                                           ; $51c6: $00
    inc sp                                        ; $51c7: $33
    ld bc, $57cc                                  ; $51c8: $01 $cc $57
    nop                                           ; $51cb: $00
    nop                                           ; $51cc: $00
    nop                                           ; $51cd: $00
    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    add hl, bc                                    ; $51d0: $09
    nop                                           ; $51d1: $00
    ld b, c                                       ; $51d2: $41
    dec b                                         ; $51d3: $05
    rlca                                          ; $51d4: $07
    nop                                           ; $51d5: $00
    ld d, [hl]                                    ; $51d6: $56
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    ld e, a                                       ; $51d9: $5f
    ld bc, $1500                                  ; $51da: $01 $00 $15
    dec a                                         ; $51dd: $3d
    nop                                           ; $51de: $00
    inc sp                                        ; $51df: $33
    ld bc, $57cc                                  ; $51e0: $01 $cc $57
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    add hl, bc                                    ; $51e8: $09
    nop                                           ; $51e9: $00
    ld c, b                                       ; $51ea: $48
    dec b                                         ; $51eb: $05
    rlca                                          ; $51ec: $07
    nop                                           ; $51ed: $00
    ld d, [hl]                                    ; $51ee: $56
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    ld e, a                                       ; $51f1: $5f
    ld bc, $1500                                  ; $51f2: $01 $00 $15
    dec a                                         ; $51f5: $3d
    nop                                           ; $51f6: $00
    inc sp                                        ; $51f7: $33
    ld bc, $57cc                                  ; $51f8: $01 $cc $57
    nop                                           ; $51fb: $00
    nop                                           ; $51fc: $00
    nop                                           ; $51fd: $00
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    ld d, [hl]                                    ; $5200: $56
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    ld e, a                                       ; $5203: $5f
    ld bc, $2e00                                  ; $5204: $01 $00 $2e
    dec d                                         ; $5207: $15
    nop                                           ; $5208: $00
    ld d, a                                       ; $5209: $57
    nop                                           ; $520a: $00
    nop                                           ; $520b: $00
    ld a, c                                       ; $520c: $79
    ld [bc], a                                    ; $520d: $02
    ld sp, $0000                                  ; $520e: $31 $00 $00
    nop                                           ; $5211: $00
    add hl, bc                                    ; $5212: $09
    nop                                           ; $5213: $00
    ld d, e                                       ; $5214: $53

Call_00c_5215:
    dec b                                         ; $5215: $05
    add hl, bc                                    ; $5216: $09
    nop                                           ; $5217: $00
    ld d, [hl]                                    ; $5218: $56
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00
    rla                                           ; $521b: $17
    nop                                           ; $521c: $00
    nop                                           ; $521d: $00
    inc e                                         ; $521e: $1c
    ld b, a                                       ; $521f: $47
    inc b                                         ; $5220: $04
    ld e, a                                       ; $5221: $5f
    ld bc, $1500                                  ; $5222: $01 $00 $15
    ld d, l                                       ; $5225: $55
    nop                                           ; $5226: $00
    inc sp                                        ; $5227: $33
    ld [bc], a                                    ; $5228: $02
    inc l                                         ; $5229: $2c
    ld d, a                                       ; $522a: $57
    nop                                           ; $522b: $00
    nop                                           ; $522c: $00
    nop                                           ; $522d: $00
    nop                                           ; $522e: $00
    nop                                           ; $522f: $00
    add hl, bc                                    ; $5230: $09
    nop                                           ; $5231: $00
    ld b, $05                                     ; $5232: $06 $05
    add hl, bc                                    ; $5234: $09
    nop                                           ; $5235: $00
    ld d, [hl]                                    ; $5236: $56
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    rla                                           ; $5239: $17
    nop                                           ; $523a: $00
    nop                                           ; $523b: $00
    inc e                                         ; $523c: $1c
    ld b, a                                       ; $523d: $47
    inc b                                         ; $523e: $04
    ld e, a                                       ; $523f: $5f
    ld bc, $1500                                  ; $5240: $01 $00 $15
    ld d, l                                       ; $5243: $55
    nop                                           ; $5244: $00
    inc sp                                        ; $5245: $33
    ld bc, $5771                                  ; $5246: $01 $71 $57
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    add hl, bc                                    ; $524e: $09
    nop                                           ; $524f: $00
    rlca                                          ; $5250: $07
    dec b                                         ; $5251: $05
    add hl, bc                                    ; $5252: $09
    nop                                           ; $5253: $00
    ld d, [hl]                                    ; $5254: $56
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    rla                                           ; $5257: $17
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    inc e                                         ; $525a: $1c
    ld b, a                                       ; $525b: $47
    inc b                                         ; $525c: $04
    ld e, a                                       ; $525d: $5f
    ld bc, $1500                                  ; $525e: $01 $00 $15
    ld d, l                                       ; $5261: $55
    nop                                           ; $5262: $00
    inc sp                                        ; $5263: $33
    ld bc, $5771                                  ; $5264: $01 $71 $57
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    nop                                           ; $526b: $00
    add hl, bc                                    ; $526c: $09
    nop                                           ; $526d: $00
    ld d, d                                       ; $526e: $52
    dec b                                         ; $526f: $05
    add hl, bc                                    ; $5270: $09
    nop                                           ; $5271: $00
    ld d, [hl]                                    ; $5272: $56
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    rla                                           ; $5275: $17
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    inc e                                         ; $5278: $1c
    ld b, a                                       ; $5279: $47
    inc b                                         ; $527a: $04
    ld e, a                                       ; $527b: $5f
    ld bc, $1500                                  ; $527c: $01 $00 $15
    ld d, l                                       ; $527f: $55
    nop                                           ; $5280: $00
    inc sp                                        ; $5281: $33
    ld bc, $5771                                  ; $5282: $01 $71 $57
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    add hl, bc                                    ; $528a: $09
    nop                                           ; $528b: $00
    ld [$0905], sp                                ; $528c: $08 $05 $09
    nop                                           ; $528f: $00
    ld d, [hl]                                    ; $5290: $56
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    rla                                           ; $5293: $17
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    inc e                                         ; $5296: $1c
    ld b, a                                       ; $5297: $47
    inc b                                         ; $5298: $04
    ld e, a                                       ; $5299: $5f
    ld bc, $1500                                  ; $529a: $01 $00 $15
    ld d, l                                       ; $529d: $55
    nop                                           ; $529e: $00
    inc sp                                        ; $529f: $33
    ld bc, $5771                                  ; $52a0: $01 $71 $57
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00
    nop                                           ; $52a6: $00
    nop                                           ; $52a7: $00
    add hl, bc                                    ; $52a8: $09
    nop                                           ; $52a9: $00
    add hl, bc                                    ; $52aa: $09
    dec b                                         ; $52ab: $05
    add hl, bc                                    ; $52ac: $09
    nop                                           ; $52ad: $00
    ld d, [hl]                                    ; $52ae: $56
    nop                                           ; $52af: $00
    nop                                           ; $52b0: $00
    rla                                           ; $52b1: $17
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    inc e                                         ; $52b4: $1c
    ld b, a                                       ; $52b5: $47
    inc b                                         ; $52b6: $04
    ld e, a                                       ; $52b7: $5f
    ld bc, $1500                                  ; $52b8: $01 $00 $15
    ld d, l                                       ; $52bb: $55
    nop                                           ; $52bc: $00
    inc sp                                        ; $52bd: $33
    ld bc, $5771                                  ; $52be: $01 $71 $57
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    add hl, bc                                    ; $52c6: $09
    nop                                           ; $52c7: $00
    ld d, [hl]                                    ; $52c8: $56
    dec b                                         ; $52c9: $05
    add hl, bc                                    ; $52ca: $09
    nop                                           ; $52cb: $00
    ld d, [hl]                                    ; $52cc: $56
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    rla                                           ; $52cf: $17
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    inc e                                         ; $52d2: $1c
    ld b, a                                       ; $52d3: $47
    inc b                                         ; $52d4: $04
    ld e, a                                       ; $52d5: $5f
    ld bc, $1500                                  ; $52d6: $01 $00 $15
    ld d, l                                       ; $52d9: $55
    nop                                           ; $52da: $00
    inc sp                                        ; $52db: $33
    ld bc, $5771                                  ; $52dc: $01 $71 $57
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    add hl, bc                                    ; $52e4: $09
    nop                                           ; $52e5: $00
    dec bc                                        ; $52e6: $0b
    dec b                                         ; $52e7: $05
    dec bc                                        ; $52e8: $0b
    nop                                           ; $52e9: $00
    ld d, [hl]                                    ; $52ea: $56
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    rla                                           ; $52ed: $17
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    inc e                                         ; $52f0: $1c
    ld b, a                                       ; $52f1: $47
    inc b                                         ; $52f2: $04
    ld e, a                                       ; $52f3: $5f
    ld bc, $1500                                  ; $52f4: $01 $00 $15
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    inc sp                                        ; $52f9: $33
    inc bc                                        ; $52fa: $03
    ld [hl], c                                    ; $52fb: $71
    dec d                                         ; $52fc: $15
    ld d, l                                       ; $52fd: $55
    nop                                           ; $52fe: $00
    inc sp                                        ; $52ff: $33
    inc bc                                        ; $5300: $03
    and b                                         ; $5301: $a0
    ld d, a                                       ; $5302: $57
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    add hl, bc                                    ; $5308: $09
    nop                                           ; $5309: $00
    ld e, h                                       ; $530a: $5c
    dec b                                         ; $530b: $05
    dec bc                                        ; $530c: $0b
    nop                                           ; $530d: $00
    ld d, [hl]                                    ; $530e: $56
    nop                                           ; $530f: $00
    nop                                           ; $5310: $00
    rla                                           ; $5311: $17
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    inc e                                         ; $5314: $1c

Call_00c_5315:
    ld b, a                                       ; $5315: $47
    inc b                                         ; $5316: $04
    ld e, a                                       ; $5317: $5f
    ld bc, $1500                                  ; $5318: $01 $00 $15
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    inc sp                                        ; $531d: $33
    inc b                                         ; $531e: $04
    call nc, Call_00c_5515                        ; $531f: $d4 $15 $55
    nop                                           ; $5322: $00
    inc sp                                        ; $5323: $33
    inc b                                         ; $5324: $04
    reti                                          ; $5325: $d9


    ld d, a                                       ; $5326: $57
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    add hl, bc                                    ; $532c: $09
    nop                                           ; $532d: $00
    db $10                                        ; $532e: $10
    dec b                                         ; $532f: $05
    dec bc                                        ; $5330: $0b
    nop                                           ; $5331: $00
    ld d, [hl]                                    ; $5332: $56
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    rla                                           ; $5335: $17
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    inc e                                         ; $5338: $1c
    ld b, a                                       ; $5339: $47
    inc b                                         ; $533a: $04
    ld e, a                                       ; $533b: $5f
    ld bc, $1500                                  ; $533c: $01 $00 $15
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00
    inc sp                                        ; $5341: $33
    ld [bc], a                                    ; $5342: $02
    ld b, l                                       ; $5343: $45
    dec d                                         ; $5344: $15
    ld d, l                                       ; $5345: $55
    nop                                           ; $5346: $00
    inc sp                                        ; $5347: $33
    ld [bc], a                                    ; $5348: $02
    adc l                                         ; $5349: $8d
    ld d, a                                       ; $534a: $57
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    nop                                           ; $534d: $00
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    add hl, bc                                    ; $5350: $09
    nop                                           ; $5351: $00
    ld de, $0b05                                  ; $5352: $11 $05 $0b
    nop                                           ; $5355: $00
    ld d, [hl]                                    ; $5356: $56
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
    rla                                           ; $5359: $17
    nop                                           ; $535a: $00
    nop                                           ; $535b: $00
    inc e                                         ; $535c: $1c
    ld b, a                                       ; $535d: $47
    inc b                                         ; $535e: $04
    ld e, a                                       ; $535f: $5f
    ld bc, $1500                                  ; $5360: $01 $00 $15
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    inc sp                                        ; $5365: $33
    ld [bc], a                                    ; $5366: $02
    ld b, l                                       ; $5367: $45
    dec d                                         ; $5368: $15
    ld d, l                                       ; $5369: $55
    nop                                           ; $536a: $00
    inc sp                                        ; $536b: $33
    ld [bc], a                                    ; $536c: $02
    adc l                                         ; $536d: $8d
    ld d, a                                       ; $536e: $57
    nop                                           ; $536f: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    add hl, bc                                    ; $5374: $09
    nop                                           ; $5375: $00
    ld d, h                                       ; $5376: $54
    dec b                                         ; $5377: $05
    add hl, bc                                    ; $5378: $09
    nop                                           ; $5379: $00
    ld d, [hl]                                    ; $537a: $56
    nop                                           ; $537b: $00
    nop                                           ; $537c: $00
    rla                                           ; $537d: $17
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    inc e                                         ; $5380: $1c
    ld b, a                                       ; $5381: $47
    inc b                                         ; $5382: $04
    ld e, a                                       ; $5383: $5f
    ld bc, $1500                                  ; $5384: $01 $00 $15
    ld d, l                                       ; $5387: $55
    nop                                           ; $5388: $00
    inc sp                                        ; $5389: $33
    ld bc, $5771                                  ; $538a: $01 $71 $57
    nop                                           ; $538d: $00
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    add hl, bc                                    ; $5392: $09
    nop                                           ; $5393: $00
    ccf                                           ; $5394: $3f
    dec b                                         ; $5395: $05
    add hl, bc                                    ; $5396: $09
    nop                                           ; $5397: $00
    ld d, [hl]                                    ; $5398: $56
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    rla                                           ; $539b: $17
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    inc e                                         ; $539e: $1c
    ld b, a                                       ; $539f: $47
    inc b                                         ; $53a0: $04
    ld e, a                                       ; $53a1: $5f
    ld bc, $1500                                  ; $53a2: $01 $00 $15
    ld d, l                                       ; $53a5: $55
    nop                                           ; $53a6: $00
    inc sp                                        ; $53a7: $33
    add hl, bc                                    ; $53a8: $09
    ei                                            ; $53a9: $fb
    ld d, a                                       ; $53aa: $57
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    add hl, bc                                    ; $53b0: $09
    nop                                           ; $53b1: $00
    dec a                                         ; $53b2: $3d
    dec b                                         ; $53b3: $05
    add hl, bc                                    ; $53b4: $09
    nop                                           ; $53b5: $00
    ld d, [hl]                                    ; $53b6: $56
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    rla                                           ; $53b9: $17
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    inc e                                         ; $53bc: $1c
    ld b, a                                       ; $53bd: $47
    inc b                                         ; $53be: $04
    ld e, a                                       ; $53bf: $5f
    ld bc, $1500                                  ; $53c0: $01 $00 $15
    ld d, l                                       ; $53c3: $55
    nop                                           ; $53c4: $00
    inc sp                                        ; $53c5: $33
    dec bc                                        ; $53c6: $0b
    ld l, a                                       ; $53c7: $6f
    ld d, a                                       ; $53c8: $57
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    add hl, bc                                    ; $53ce: $09
    nop                                           ; $53cf: $00
    ld e, e                                       ; $53d0: $5b
    dec b                                         ; $53d1: $05
    add hl, bc                                    ; $53d2: $09
    nop                                           ; $53d3: $00
    ld d, [hl]                                    ; $53d4: $56
    nop                                           ; $53d5: $00
    nop                                           ; $53d6: $00
    rla                                           ; $53d7: $17
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    inc e                                         ; $53da: $1c
    ld b, a                                       ; $53db: $47
    inc b                                         ; $53dc: $04
    ld e, a                                       ; $53dd: $5f
    ld bc, $1500                                  ; $53de: $01 $00 $15
    ld d, l                                       ; $53e1: $55
    nop                                           ; $53e2: $00
    inc sp                                        ; $53e3: $33
    dec bc                                        ; $53e4: $0b
    ld h, a                                       ; $53e5: $67
    ld d, a                                       ; $53e6: $57
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    ld e, a                                       ; $53ec: $5f
    ld bc, $0000                                  ; $53ed: $01 $00 $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    ld e, a                                       ; $53f2: $5f
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    add hl, bc                                    ; $53f5: $09
    nop                                           ; $53f6: $00
    ld h, $05                                     ; $53f7: $26 $05
    stop                                          ; $53f9: $10 $00
    ld d, [hl]                                    ; $53fb: $56
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    rla                                           ; $53fe: $17
    nop                                           ; $53ff: $00
    nop                                           ; $5400: $00
    inc e                                         ; $5401: $1c
    dec c                                         ; $5402: $0d
    dec b                                         ; $5403: $05
    ld e, a                                       ; $5404: $5f
    ld bc, $0900                                  ; $5405: $01 $00 $09
    inc bc                                        ; $5408: $03
    ld bc, $0505                                  ; $5409: $01 $05 $05
    nop                                           ; $540c: $00
    dec d                                         ; $540d: $15
    ld bc, $3300                                  ; $540e: $01 $00 $33
    add hl, bc                                    ; $5411: $09
    ld l, c                                       ; $5412: $69
    ld d, a                                       ; $5413: $57
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    dec d                                         ; $5419: $15
    ld bc, $3300                                  ; $541a: $01 $00 $33
    add hl, bc                                    ; $541d: $09
    ld l, b                                       ; $541e: $68
    rrca                                          ; $541f: $0f
    inc bc                                        ; $5420: $03
    ld bc, $0057                                  ; $5421: $01 $57 $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    add hl, bc                                    ; $5428: $09
    nop                                           ; $5429: $00
    daa                                           ; $542a: $27
    dec b                                         ; $542b: $05
    stop                                          ; $542c: $10 $00
    ld d, [hl]                                    ; $542e: $56
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    rla                                           ; $5431: $17
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    inc e                                         ; $5434: $1c
    dec c                                         ; $5435: $0d
    dec b                                         ; $5436: $05
    ld e, a                                       ; $5437: $5f
    ld bc, $0900                                  ; $5438: $01 $00 $09
    inc bc                                        ; $543b: $03
    ld bc, $0505                                  ; $543c: $01 $05 $05
    nop                                           ; $543f: $00
    dec d                                         ; $5440: $15
    ld bc, $3300                                  ; $5441: $01 $00 $33
    add hl, bc                                    ; $5444: $09
    ld l, c                                       ; $5445: $69
    ld d, a                                       ; $5446: $57
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    dec d                                         ; $544c: $15
    ld bc, $3300                                  ; $544d: $01 $00 $33
    add hl, bc                                    ; $5450: $09
    ld l, b                                       ; $5451: $68
    rrca                                          ; $5452: $0f
    inc bc                                        ; $5453: $03
    ld bc, $0057                                  ; $5454: $01 $57 $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    ld e, a                                       ; $545b: $5f
    ld bc, $0000                                  ; $545c: $01 $00 $00
    nop                                           ; $545f: $00
    nop                                           ; $5460: $00
    dec bc                                        ; $5461: $0b
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    ld bc, $0353                                  ; $5464: $01 $53 $03
    ccf                                           ; $5467: $3f
    dec b                                         ; $5468: $05
    ld l, $07                                     ; $5469: $2e $07
    ld de, $f408                                  ; $546b: $11 $08 $f4
    add hl, bc                                    ; $546e: $09
    ld h, [hl]                                    ; $546f: $66
    dec bc                                        ; $5470: $0b
    call c, $b10c                                 ; $5471: $dc $0c $b1
    inc c                                         ; $5474: $0c
    cp d                                          ; $5475: $ba
    dec c                                         ; $5476: $0d
    ld [hl], a                                    ; $5477: $77
    ld e, a                                       ; $5478: $5f
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    add hl, bc                                    ; $547b: $09
    nop                                           ; $547c: $00
    rlca                                          ; $547d: $07
    dec b                                         ; $547e: $05
    ld d, $00                                     ; $547f: $16 $00
    ld d, [hl]                                    ; $5481: $56
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    ld e, a                                       ; $5484: $5f
    ld bc, $1500                                  ; $5485: $01 $00 $15
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    inc sp                                        ; $548a: $33
    ld bc, $158d                                  ; $548b: $01 $8d $15
    ld b, a                                       ; $548e: $47
    nop                                           ; $548f: $00
    inc sp                                        ; $5490: $33
    ld bc, $158e                                  ; $5491: $01 $8e $15
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    inc sp                                        ; $5496: $33
    ld bc, $158f                                  ; $5497: $01 $8f $15
    ld b, a                                       ; $549a: $47
    nop                                           ; $549b: $00
    inc sp                                        ; $549c: $33
    ld bc, $1590                                  ; $549d: $01 $90 $15
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    inc sp                                        ; $54a2: $33
    ld bc, $1591                                  ; $54a3: $01 $91 $15
    ld b, a                                       ; $54a6: $47
    nop                                           ; $54a7: $00
    inc sp                                        ; $54a8: $33
    ld bc, $1592                                  ; $54a9: $01 $92 $15
    nop                                           ; $54ac: $00
    nop                                           ; $54ad: $00
    inc sp                                        ; $54ae: $33
    ld bc, $1593                                  ; $54af: $01 $93 $15
    ld b, a                                       ; $54b2: $47
    nop                                           ; $54b3: $00
    inc sp                                        ; $54b4: $33
    ld bc, $5794                                  ; $54b5: $01 $94 $57
    nop                                           ; $54b8: $00
    nop                                           ; $54b9: $00
    ld h, d                                       ; $54ba: $62
    ld d, d                                       ; $54bb: $52
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    add hl, bc                                    ; $54c0: $09
    nop                                           ; $54c1: $00
    ld d, d                                       ; $54c2: $52
    dec b                                         ; $54c3: $05
    inc de                                        ; $54c4: $13
    nop                                           ; $54c5: $00
    ld d, [hl]                                    ; $54c6: $56
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    ld e, a                                       ; $54c9: $5f
    ld bc, $0900                                  ; $54ca: $01 $00 $09
    inc de                                        ; $54cd: $13
    ld bc, $0905                                  ; $54ce: $01 $05 $09
    nop                                           ; $54d1: $00
    dec d                                         ; $54d2: $15
    ld b, a                                       ; $54d3: $47
    nop                                           ; $54d4: $00
    inc sp                                        ; $54d5: $33
    ld bc, $15ae                                  ; $54d6: $01 $ae $15
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    inc sp                                        ; $54db: $33
    ld bc, $15af                                  ; $54dc: $01 $af $15
    ld b, a                                       ; $54df: $47
    nop                                           ; $54e0: $00
    inc sp                                        ; $54e1: $33
    ld bc, $57b0                                  ; $54e2: $01 $b0 $57
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    jr z, jr_00c_5530                             ; $54e7: $28 $47

    nop                                           ; $54e9: $00
    dec d                                         ; $54ea: $15
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    inc sp                                        ; $54ed: $33
    ld bc, $1595                                  ; $54ee: $01 $95 $15
    ld b, a                                       ; $54f1: $47
    nop                                           ; $54f2: $00
    inc sp                                        ; $54f3: $33
    ld bc, $5794                                  ; $54f4: $01 $94 $57
    nop                                           ; $54f7: $00
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    add hl, bc                                    ; $54fc: $09
    nop                                           ; $54fd: $00
    ld d, e                                       ; $54fe: $53
    dec b                                         ; $54ff: $05
    ld [$5f00], sp                                ; $5500: $08 $00 $5f
    ld bc, $1500                                  ; $5503: $01 $00 $15
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    inc sp                                        ; $5508: $33
    ld bc, $15af                                  ; $5509: $01 $af $15
    ld b, a                                       ; $550c: $47
    nop                                           ; $550d: $00
    inc sp                                        ; $550e: $33
    ld bc, $28b4                                  ; $550f: $01 $b4 $28
    ld b, a                                       ; $5512: $47
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00

Call_00c_5515:
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    add hl, bc                                    ; $5517: $09
    nop                                           ; $5518: $00
    ld [$0805], sp                                ; $5519: $08 $05 $08
    nop                                           ; $551c: $00
    ld e, a                                       ; $551d: $5f
    ld bc, $1500                                  ; $551e: $01 $00 $15
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    inc sp                                        ; $5523: $33
    ld bc, $15af                                  ; $5524: $01 $af $15
    ld b, a                                       ; $5527: $47
    nop                                           ; $5528: $00
    inc sp                                        ; $5529: $33
    ld bc, $28b4                                  ; $552a: $01 $b4 $28
    ld b, a                                       ; $552d: $47
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00

jr_00c_5530:
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    add hl, bc                                    ; $5532: $09
    nop                                           ; $5533: $00
    daa                                           ; $5534: $27
    dec b                                         ; $5535: $05
    inc de                                        ; $5536: $13
    nop                                           ; $5537: $00
    ld e, a                                       ; $5538: $5f
    ld bc, $0900                                  ; $5539: $01 $00 $09
    inc c                                         ; $553c: $0c
    ld bc, $0705                                  ; $553d: $01 $05 $07
    nop                                           ; $5540: $00
    dec d                                         ; $5541: $15
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    inc sp                                        ; $5544: $33
    inc b                                         ; $5545: $04
    dec b                                         ; $5546: $05
    dec d                                         ; $5547: $15
    ld b, a                                       ; $5548: $47
    nop                                           ; $5549: $00
    inc sp                                        ; $554a: $33
    ld bc, $28b4                                  ; $554b: $01 $b4 $28
    ld b, a                                       ; $554e: $47
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    ld d, [hl]                                    ; $5553: $56
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    dec d                                         ; $5556: $15
    ld b, a                                       ; $5557: $47
    nop                                           ; $5558: $00
    inc sp                                        ; $5559: $33
    inc bc                                        ; $555a: $03
    ld hl, sp+$15                                 ; $555b: $f8 $15
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    inc sp                                        ; $555f: $33
    inc bc                                        ; $5560: $03
    ld sp, hl                                     ; $5561: $f9
    ld d, a                                       ; $5562: $57
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    jr z, jr_00c_55ae                             ; $5565: $28 $47

    nop                                           ; $5567: $00
    rrca                                          ; $5568: $0f
    inc c                                         ; $5569: $0c
    ld bc, $0000                                  ; $556a: $01 $00 $00
    nop                                           ; $556d: $00
    add hl, bc                                    ; $556e: $09
    nop                                           ; $556f: $00
    ld e, e                                       ; $5570: $5b
    dec b                                         ; $5571: $05
    ld a, [bc]                                    ; $5572: $0a
    nop                                           ; $5573: $00
    ld e, a                                       ; $5574: $5f
    ld bc, $1500                                  ; $5575: $01 $00 $15
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    inc sp                                        ; $557a: $33
    inc b                                         ; $557b: $04
    dec b                                         ; $557c: $05
    dec d                                         ; $557d: $15
    ld b, a                                       ; $557e: $47
    nop                                           ; $557f: $00
    inc sp                                        ; $5580: $33
    ld bc, $55b4                                  ; $5581: $01 $b4 $55
    rlca                                          ; $5584: $07
    nop                                           ; $5585: $00
    ld c, l                                       ; $5586: $4d
    ld bc, $7900                                  ; $5587: $01 $00 $79
    ld [bc], a                                    ; $558a: $02
    ld b, a                                       ; $558b: $47
    nop                                           ; $558c: $00
    nop                                           ; $558d: $00
    nop                                           ; $558e: $00
    add hl, bc                                    ; $558f: $09
    nop                                           ; $5590: $00
    ld e, b                                       ; $5591: $58
    dec b                                         ; $5592: $05
    ld [bc], a                                    ; $5593: $02
    nop                                           ; $5594: $00
    inc bc                                        ; $5595: $03
    dec bc                                        ; $5596: $0b
    nop                                           ; $5597: $00
    add hl, bc                                    ; $5598: $09
    nop                                           ; $5599: $00
    ld e, d                                       ; $559a: $5a
    dec b                                         ; $559b: $05
    ld [bc], a                                    ; $559c: $02
    nop                                           ; $559d: $00
    inc bc                                        ; $559e: $03
    ld [$0900], sp                                ; $559f: $08 $00 $09
    nop                                           ; $55a2: $00
    ld b, e                                       ; $55a3: $43
    dec b                                         ; $55a4: $05
    inc b                                         ; $55a5: $04
    nop                                           ; $55a6: $00
    add hl, bc                                    ; $55a7: $09
    dec b                                         ; $55a8: $05
    ld a, [bc]                                    ; $55a9: $0a
    dec b                                         ; $55aa: $05
    ld [bc], a                                    ; $55ab: $02
    nop                                           ; $55ac: $00
    inc bc                                        ; $55ad: $03

jr_00c_55ae:
    inc bc                                        ; $55ae: $03
    nop                                           ; $55af: $00
    ld e, a                                       ; $55b0: $5f
    ld bc, $0000                                  ; $55b1: $01 $00 $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    ld e, a                                       ; $55b6: $5f
    ld bc, $1500                                  ; $55b7: $01 $00 $15
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    inc sp                                        ; $55bc: $33
    inc b                                         ; $55bd: $04
    dec b                                         ; $55be: $05
    dec d                                         ; $55bf: $15
    ld b, a                                       ; $55c0: $47
    nop                                           ; $55c1: $00
    inc sp                                        ; $55c2: $33
    ld bc, $28b4                                  ; $55c3: $01 $b4 $28
    ld b, a                                       ; $55c6: $47
    nop                                           ; $55c7: $00
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    nop                                           ; $55ca: $00
    ld e, a                                       ; $55cb: $5f
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    add hl, bc                                    ; $55ce: $09
    nop                                           ; $55cf: $00
    rlca                                          ; $55d0: $07
    dec b                                         ; $55d1: $05
    ld a, [bc]                                    ; $55d2: $0a
    nop                                           ; $55d3: $00
    ld d, [hl]                                    ; $55d4: $56
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    rla                                           ; $55d7: $17
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    inc e                                         ; $55da: $1c
    ld b, c                                       ; $55db: $41
    ld bc, $015f                                  ; $55dc: $01 $5f $01
    nop                                           ; $55df: $00
    dec d                                         ; $55e0: $15
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    inc sp                                        ; $55e3: $33
    ld bc, $1578                                  ; $55e4: $01 $78 $15
    ld c, a                                       ; $55e7: $4f
    nop                                           ; $55e8: $00
    inc sp                                        ; $55e9: $33
    ld bc, $578b                                  ; $55ea: $01 $8b $57
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    add hl, bc                                    ; $55ef: $09
    nop                                           ; $55f0: $00
    ld d, d                                       ; $55f1: $52
    dec b                                         ; $55f2: $05
    ld a, [bc]                                    ; $55f3: $0a
    nop                                           ; $55f4: $00
    ld d, [hl]                                    ; $55f5: $56
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    rla                                           ; $55f8: $17
    nop                                           ; $55f9: $00
    nop                                           ; $55fa: $00
    inc e                                         ; $55fb: $1c
    ld b, c                                       ; $55fc: $41
    ld bc, $015f                                  ; $55fd: $01 $5f $01
    nop                                           ; $5600: $00
    dec d                                         ; $5601: $15
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    inc sp                                        ; $5604: $33
    ld bc, $1595                                  ; $5605: $01 $95 $15
    ld c, a                                       ; $5608: $4f
    nop                                           ; $5609: $00
    inc sp                                        ; $560a: $33
    ld a, [bc]                                    ; $560b: $0a
    dec c                                         ; $560c: $0d
    ld d, a                                       ; $560d: $57
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    add hl, bc                                    ; $5610: $09
    nop                                           ; $5611: $00
    ld [$0b05], sp                                ; $5612: $08 $05 $0b

Call_00c_5615:
    nop                                           ; $5615: $00
    ld d, [hl]                                    ; $5616: $56
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    rla                                           ; $5619: $17
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    inc e                                         ; $561c: $1c
    ld b, c                                       ; $561d: $41
    ld bc, $015f                                  ; $561e: $01 $5f $01
    nop                                           ; $5621: $00
    dec d                                         ; $5622: $15
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    inc sp                                        ; $5625: $33
    ld bc, $15cd                                  ; $5626: $01 $cd $15
    ld c, a                                       ; $5629: $4f
    nop                                           ; $562a: $00
    inc sp                                        ; $562b: $33
    ld bc, $57d1                                  ; $562c: $01 $d1 $57
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    add hl, bc                                    ; $5634: $09
    nop                                           ; $5635: $00
    dec bc                                        ; $5636: $0b
    dec b                                         ; $5637: $05
    ld a, [bc]                                    ; $5638: $0a
    nop                                           ; $5639: $00
    ld d, [hl]                                    ; $563a: $56
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    rla                                           ; $563d: $17
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    inc e                                         ; $5640: $1c
    ld b, c                                       ; $5641: $41
    ld bc, $015f                                  ; $5642: $01 $5f $01
    nop                                           ; $5645: $00
    dec d                                         ; $5646: $15
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    inc sp                                        ; $5649: $33
    inc bc                                        ; $564a: $03
    ld [hl], c                                    ; $564b: $71
    dec d                                         ; $564c: $15
    ld c, a                                       ; $564d: $4f
    nop                                           ; $564e: $00
    inc sp                                        ; $564f: $33
    inc bc                                        ; $5650: $03
    ld a, [hl]                                    ; $5651: $7e
    ld d, a                                       ; $5652: $57
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    add hl, bc                                    ; $5655: $09
    nop                                           ; $5656: $00
    ld d, e                                       ; $5657: $53
    dec b                                         ; $5658: $05
    add hl, bc                                    ; $5659: $09
    nop                                           ; $565a: $00
    ld d, [hl]                                    ; $565b: $56
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    rla                                           ; $565e: $17
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    inc e                                         ; $5661: $1c
    ld b, c                                       ; $5662: $41
    ld bc, $015f                                  ; $5663: $01 $5f $01
    nop                                           ; $5666: $00
    dec d                                         ; $5667: $15
    ld c, a                                       ; $5668: $4f
    nop                                           ; $5669: $00
    inc sp                                        ; $566a: $33
    ld [bc], a                                    ; $566b: $02
    dec l                                         ; $566c: $2d
    ld d, a                                       ; $566d: $57
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    add hl, bc                                    ; $5673: $09
    nop                                           ; $5674: $00
    ld b, $05                                     ; $5675: $06 $05
    add hl, bc                                    ; $5677: $09
    nop                                           ; $5678: $00
    ld d, [hl]                                    ; $5679: $56
    nop                                           ; $567a: $00
    nop                                           ; $567b: $00
    rla                                           ; $567c: $17
    nop                                           ; $567d: $00
    nop                                           ; $567e: $00
    inc e                                         ; $567f: $1c
    ld b, c                                       ; $5680: $41
    ld bc, $015f                                  ; $5681: $01 $5f $01
    nop                                           ; $5684: $00
    dec d                                         ; $5685: $15
    ld c, a                                       ; $5686: $4f
    nop                                           ; $5687: $00
    inc sp                                        ; $5688: $33
    ld bc, $5774                                  ; $5689: $01 $74 $57
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    add hl, bc                                    ; $5691: $09
    nop                                           ; $5692: $00
    add hl, bc                                    ; $5693: $09
    dec b                                         ; $5694: $05
    add hl, bc                                    ; $5695: $09
    nop                                           ; $5696: $00
    ld d, [hl]                                    ; $5697: $56
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    rla                                           ; $569a: $17
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    inc e                                         ; $569d: $1c
    ld b, c                                       ; $569e: $41
    ld bc, $015f                                  ; $569f: $01 $5f $01
    nop                                           ; $56a2: $00
    dec d                                         ; $56a3: $15
    ld c, a                                       ; $56a4: $4f
    nop                                           ; $56a5: $00
    inc sp                                        ; $56a6: $33
    ld bc, $5774                                  ; $56a7: $01 $74 $57
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    nop                                           ; $56ae: $00
    add hl, bc                                    ; $56af: $09
    nop                                           ; $56b0: $00
    ld d, [hl]                                    ; $56b1: $56
    dec b                                         ; $56b2: $05
    add hl, bc                                    ; $56b3: $09
    nop                                           ; $56b4: $00
    ld d, [hl]                                    ; $56b5: $56
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    rla                                           ; $56b8: $17
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    inc e                                         ; $56bb: $1c
    ld b, c                                       ; $56bc: $41
    ld bc, $015f                                  ; $56bd: $01 $5f $01
    nop                                           ; $56c0: $00
    dec d                                         ; $56c1: $15
    ld c, a                                       ; $56c2: $4f
    nop                                           ; $56c3: $00
    inc sp                                        ; $56c4: $33
    ld bc, $5774                                  ; $56c5: $01 $74 $57
    nop                                           ; $56c8: $00
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00
    add hl, bc                                    ; $56cd: $09
    nop                                           ; $56ce: $00
    ld e, h                                       ; $56cf: $5c
    dec b                                         ; $56d0: $05
    dec bc                                        ; $56d1: $0b
    nop                                           ; $56d2: $00
    ld d, [hl]                                    ; $56d3: $56
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    rla                                           ; $56d6: $17
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    inc e                                         ; $56d9: $1c
    ld b, c                                       ; $56da: $41
    ld bc, $015f                                  ; $56db: $01 $5f $01
    nop                                           ; $56de: $00
    dec d                                         ; $56df: $15
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    inc sp                                        ; $56e2: $33
    inc b                                         ; $56e3: $04
    call nc, $4f15                                ; $56e4: $d4 $15 $4f
    nop                                           ; $56e7: $00
    inc sp                                        ; $56e8: $33
    inc b                                         ; $56e9: $04
    push de                                       ; $56ea: $d5
    ld d, a                                       ; $56eb: $57
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    add hl, bc                                    ; $56f1: $09
    nop                                           ; $56f2: $00
    db $10                                        ; $56f3: $10
    dec b                                         ; $56f4: $05
    dec bc                                        ; $56f5: $0b
    nop                                           ; $56f6: $00
    ld d, [hl]                                    ; $56f7: $56
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    rla                                           ; $56fa: $17
    nop                                           ; $56fb: $00
    nop                                           ; $56fc: $00
    inc e                                         ; $56fd: $1c
    ld b, c                                       ; $56fe: $41
    ld bc, $015f                                  ; $56ff: $01 $5f $01
    nop                                           ; $5702: $00
    dec d                                         ; $5703: $15
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    inc sp                                        ; $5706: $33
    ld [bc], a                                    ; $5707: $02
    ld b, l                                       ; $5708: $45
    dec d                                         ; $5709: $15
    ld c, a                                       ; $570a: $4f
    nop                                           ; $570b: $00
    inc sp                                        ; $570c: $33
    ld [bc], a                                    ; $570d: $02
    adc b                                         ; $570e: $88
    ld d, a                                       ; $570f: $57
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    add hl, bc                                    ; $5715: $09
    nop                                           ; $5716: $00
    ld de, $0b05                                  ; $5717: $11 $05 $0b
    nop                                           ; $571a: $00
    ld d, [hl]                                    ; $571b: $56
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    rla                                           ; $571e: $17
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    inc e                                         ; $5721: $1c
    ld b, c                                       ; $5722: $41
    ld bc, $015f                                  ; $5723: $01 $5f $01
    nop                                           ; $5726: $00
    dec d                                         ; $5727: $15
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    inc sp                                        ; $572a: $33
    ld [bc], a                                    ; $572b: $02
    ld b, l                                       ; $572c: $45
    dec d                                         ; $572d: $15
    ld c, a                                       ; $572e: $4f
    nop                                           ; $572f: $00
    inc sp                                        ; $5730: $33
    ld [bc], a                                    ; $5731: $02
    adc b                                         ; $5732: $88
    ld d, a                                       ; $5733: $57
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    add hl, bc                                    ; $5739: $09
    nop                                           ; $573a: $00
    ld d, h                                       ; $573b: $54
    dec b                                         ; $573c: $05
    add hl, bc                                    ; $573d: $09
    nop                                           ; $573e: $00
    ld d, [hl]                                    ; $573f: $56
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    rla                                           ; $5742: $17
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    inc e                                         ; $5745: $1c
    ld b, c                                       ; $5746: $41
    ld bc, $015f                                  ; $5747: $01 $5f $01
    nop                                           ; $574a: $00
    dec d                                         ; $574b: $15
    ld c, a                                       ; $574c: $4f
    nop                                           ; $574d: $00
    inc sp                                        ; $574e: $33
    ld [bc], a                                    ; $574f: $02
    dec l                                         ; $5750: $2d
    ld d, a                                       ; $5751: $57
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    add hl, bc                                    ; $5757: $09
    nop                                           ; $5758: $00
    ccf                                           ; $5759: $3f
    dec b                                         ; $575a: $05
    add hl, bc                                    ; $575b: $09
    nop                                           ; $575c: $00
    ld d, [hl]                                    ; $575d: $56
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    rla                                           ; $5760: $17
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    inc e                                         ; $5763: $1c
    ld b, c                                       ; $5764: $41
    ld bc, $015f                                  ; $5765: $01 $5f $01
    nop                                           ; $5768: $00
    dec d                                         ; $5769: $15
    ld c, a                                       ; $576a: $4f
    nop                                           ; $576b: $00
    inc sp                                        ; $576c: $33
    add hl, bc                                    ; $576d: $09
    cp $57                                        ; $576e: $fe $57
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    add hl, bc                                    ; $5775: $09
    nop                                           ; $5776: $00
    dec a                                         ; $5777: $3d
    dec b                                         ; $5778: $05
    add hl, bc                                    ; $5779: $09
    nop                                           ; $577a: $00
    ld d, [hl]                                    ; $577b: $56
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    rla                                           ; $577e: $17
    nop                                           ; $577f: $00
    nop                                           ; $5780: $00
    inc e                                         ; $5781: $1c
    ld b, c                                       ; $5782: $41
    ld bc, $015f                                  ; $5783: $01 $5f $01
    nop                                           ; $5786: $00
    dec d                                         ; $5787: $15
    ld c, a                                       ; $5788: $4f
    nop                                           ; $5789: $00
    inc sp                                        ; $578a: $33
    dec bc                                        ; $578b: $0b
    ld h, e                                       ; $578c: $63
    ld d, a                                       ; $578d: $57
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    add hl, bc                                    ; $5793: $09
    nop                                           ; $5794: $00
    ld e, e                                       ; $5795: $5b
    dec b                                         ; $5796: $05
    add hl, bc                                    ; $5797: $09
    nop                                           ; $5798: $00
    ld d, [hl]                                    ; $5799: $56
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    rla                                           ; $579c: $17
    nop                                           ; $579d: $00
    nop                                           ; $579e: $00
    inc e                                         ; $579f: $1c
    ld b, c                                       ; $57a0: $41
    ld bc, $015f                                  ; $57a1: $01 $5f $01
    nop                                           ; $57a4: $00
    dec d                                         ; $57a5: $15
    ld c, a                                       ; $57a6: $4f
    nop                                           ; $57a7: $00
    inc sp                                        ; $57a8: $33
    dec bc                                        ; $57a9: $0b
    ld h, e                                       ; $57aa: $63
    ld d, a                                       ; $57ab: $57
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    ld e, a                                       ; $57b1: $5f
    ld bc, $0000                                  ; $57b2: $01 $00 $00
    nop                                           ; $57b5: $00
    nop                                           ; $57b6: $00
    ld e, a                                       ; $57b7: $5f
    nop                                           ; $57b8: $00
    nop                                           ; $57b9: $00
    add hl, bc                                    ; $57ba: $09
    nop                                           ; $57bb: $00
    add hl, bc                                    ; $57bc: $09
    dec b                                         ; $57bd: $05
    dec bc                                        ; $57be: $0b
    nop                                           ; $57bf: $00
    ld d, [hl]                                    ; $57c0: $56
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    rla                                           ; $57c3: $17
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    inc e                                         ; $57c6: $1c
    ld c, b                                       ; $57c7: $48
    ld [bc], a                                    ; $57c8: $02
    ld e, a                                       ; $57c9: $5f
    ld bc, $1500                                  ; $57ca: $01 $00 $15
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    inc sp                                        ; $57cf: $33
    ld [bc], a                                    ; $57d0: $02
    nop                                           ; $57d1: $00
    dec d                                         ; $57d2: $15
    ld d, [hl]                                    ; $57d3: $56
    nop                                           ; $57d4: $00
    inc sp                                        ; $57d5: $33
    ld bc, $57ff                                  ; $57d6: $01 $ff $57
    nop                                           ; $57d9: $00
    nop                                           ; $57da: $00
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    add hl, bc                                    ; $57de: $09
    nop                                           ; $57df: $00
    ld d, e                                       ; $57e0: $53
    dec b                                         ; $57e1: $05
    add hl, bc                                    ; $57e2: $09
    nop                                           ; $57e3: $00
    ld d, [hl]                                    ; $57e4: $56
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    rla                                           ; $57e7: $17
    nop                                           ; $57e8: $00
    nop                                           ; $57e9: $00
    inc e                                         ; $57ea: $1c
    ld c, b                                       ; $57eb: $48
    ld [bc], a                                    ; $57ec: $02
    ld e, a                                       ; $57ed: $5f
    ld bc, $1500                                  ; $57ee: $01 $00 $15
    ld d, [hl]                                    ; $57f1: $56
    nop                                           ; $57f2: $00
    inc sp                                        ; $57f3: $33
    ld [bc], a                                    ; $57f4: $02
    ld l, $57                                     ; $57f5: $2e $57
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    add hl, bc                                    ; $57fc: $09
    nop                                           ; $57fd: $00
    ld b, $05                                     ; $57fe: $06 $05
    add hl, bc                                    ; $5800: $09
    nop                                           ; $5801: $00
    ld d, [hl]                                    ; $5802: $56
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    rla                                           ; $5805: $17
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    inc e                                         ; $5808: $1c
    ld c, b                                       ; $5809: $48
    ld [bc], a                                    ; $580a: $02
    ld e, a                                       ; $580b: $5f
    ld bc, $1500                                  ; $580c: $01 $00 $15
    ld d, [hl]                                    ; $580f: $56
    nop                                           ; $5810: $00
    inc sp                                        ; $5811: $33
    ld bc, $5775                                  ; $5812: $01 $75 $57
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    add hl, bc                                    ; $581a: $09
    nop                                           ; $581b: $00
    rlca                                          ; $581c: $07
    dec b                                         ; $581d: $05
    add hl, bc                                    ; $581e: $09
    nop                                           ; $581f: $00
    ld d, [hl]                                    ; $5820: $56
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    rla                                           ; $5823: $17
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    inc e                                         ; $5826: $1c
    ld c, b                                       ; $5827: $48
    ld [bc], a                                    ; $5828: $02
    ld e, a                                       ; $5829: $5f
    ld bc, $1500                                  ; $582a: $01 $00 $15
    ld d, [hl]                                    ; $582d: $56
    nop                                           ; $582e: $00
    inc sp                                        ; $582f: $33
    ld bc, $5775                                  ; $5830: $01 $75 $57
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    add hl, bc                                    ; $5838: $09
    nop                                           ; $5839: $00
    ld d, d                                       ; $583a: $52
    dec b                                         ; $583b: $05
    dec bc                                        ; $583c: $0b
    nop                                           ; $583d: $00
    ld d, [hl]                                    ; $583e: $56
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    rla                                           ; $5841: $17
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    inc e                                         ; $5844: $1c
    ld c, b                                       ; $5845: $48
    ld [bc], a                                    ; $5846: $02
    ld e, a                                       ; $5847: $5f
    ld bc, $1500                                  ; $5848: $01 $00 $15
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    inc sp                                        ; $584d: $33
    ld bc, $1595                                  ; $584e: $01 $95 $15
    ld d, [hl]                                    ; $5851: $56
    nop                                           ; $5852: $00
    inc sp                                        ; $5853: $33
    ld a, [bc]                                    ; $5854: $0a
    ld c, $57                                     ; $5855: $0e $57
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    add hl, bc                                    ; $585c: $09
    nop                                           ; $585d: $00
    ld [$0905], sp                                ; $585e: $08 $05 $09
    nop                                           ; $5861: $00
    ld d, [hl]                                    ; $5862: $56
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    rla                                           ; $5865: $17
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    inc e                                         ; $5868: $1c
    ld c, b                                       ; $5869: $48
    ld [bc], a                                    ; $586a: $02
    ld e, a                                       ; $586b: $5f
    ld bc, $1500                                  ; $586c: $01 $00 $15
    ld d, [hl]                                    ; $586f: $56
    nop                                           ; $5870: $00
    inc sp                                        ; $5871: $33
    ld bc, $5775                                  ; $5872: $01 $75 $57
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    add hl, bc                                    ; $587a: $09
    nop                                           ; $587b: $00
    ld d, [hl]                                    ; $587c: $56
    dec b                                         ; $587d: $05
    add hl, bc                                    ; $587e: $09
    nop                                           ; $587f: $00
    ld d, [hl]                                    ; $5880: $56
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    rla                                           ; $5883: $17
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    inc e                                         ; $5886: $1c
    ld c, b                                       ; $5887: $48
    ld [bc], a                                    ; $5888: $02
    ld e, a                                       ; $5889: $5f
    ld bc, $1500                                  ; $588a: $01 $00 $15
    ld d, [hl]                                    ; $588d: $56
    nop                                           ; $588e: $00
    inc sp                                        ; $588f: $33
    ld [bc], a                                    ; $5890: $02
    ld l, $57                                     ; $5891: $2e $57
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    add hl, bc                                    ; $5898: $09
    nop                                           ; $5899: $00
    dec bc                                        ; $589a: $0b
    dec b                                         ; $589b: $05
    dec bc                                        ; $589c: $0b
    nop                                           ; $589d: $00
    ld d, [hl]                                    ; $589e: $56
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    rla                                           ; $58a1: $17
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    inc e                                         ; $58a4: $1c
    ld c, b                                       ; $58a5: $48
    ld [bc], a                                    ; $58a6: $02
    ld e, a                                       ; $58a7: $5f
    ld bc, $1500                                  ; $58a8: $01 $00 $15
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    inc sp                                        ; $58ad: $33
    inc bc                                        ; $58ae: $03
    ld [hl], c                                    ; $58af: $71
    dec d                                         ; $58b0: $15
    ld d, [hl]                                    ; $58b1: $56
    nop                                           ; $58b2: $00
    inc sp                                        ; $58b3: $33
    inc bc                                        ; $58b4: $03
    sbc l                                         ; $58b5: $9d
    ld d, a                                       ; $58b6: $57
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    nop                                           ; $58ba: $00
    nop                                           ; $58bb: $00
    add hl, bc                                    ; $58bc: $09
    nop                                           ; $58bd: $00
    ld e, h                                       ; $58be: $5c
    dec b                                         ; $58bf: $05
    dec bc                                        ; $58c0: $0b
    nop                                           ; $58c1: $00
    ld d, [hl]                                    ; $58c2: $56
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    rla                                           ; $58c5: $17
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    inc e                                         ; $58c8: $1c
    ld c, b                                       ; $58c9: $48
    ld [bc], a                                    ; $58ca: $02
    ld e, a                                       ; $58cb: $5f
    ld bc, $1500                                  ; $58cc: $01 $00 $15
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    inc sp                                        ; $58d1: $33
    inc b                                         ; $58d2: $04
    call nc, Call_00c_5615                        ; $58d3: $d4 $15 $56
    nop                                           ; $58d6: $00
    inc sp                                        ; $58d7: $33
    inc b                                         ; $58d8: $04
    sub $57                                       ; $58d9: $d6 $57
    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    nop                                           ; $58dd: $00
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    add hl, bc                                    ; $58e0: $09
    nop                                           ; $58e1: $00
    db $10                                        ; $58e2: $10
    dec b                                         ; $58e3: $05
    dec bc                                        ; $58e4: $0b
    nop                                           ; $58e5: $00
    ld d, [hl]                                    ; $58e6: $56
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    rla                                           ; $58e9: $17
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    inc e                                         ; $58ec: $1c
    ld c, b                                       ; $58ed: $48
    ld [bc], a                                    ; $58ee: $02
    ld e, a                                       ; $58ef: $5f
    ld bc, $1500                                  ; $58f0: $01 $00 $15
    nop                                           ; $58f3: $00
    nop                                           ; $58f4: $00
    inc sp                                        ; $58f5: $33
    ld [bc], a                                    ; $58f6: $02
    ld b, l                                       ; $58f7: $45
    dec d                                         ; $58f8: $15
    ld d, [hl]                                    ; $58f9: $56
    nop                                           ; $58fa: $00
    inc sp                                        ; $58fb: $33
    ld [bc], a                                    ; $58fc: $02
    adc c                                         ; $58fd: $89
    ld d, a                                       ; $58fe: $57
    nop                                           ; $58ff: $00
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    add hl, bc                                    ; $5904: $09
    nop                                           ; $5905: $00
    ld de, $0b05                                  ; $5906: $11 $05 $0b
    nop                                           ; $5909: $00
    ld d, [hl]                                    ; $590a: $56
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    rla                                           ; $590d: $17
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    inc e                                         ; $5910: $1c
    ld c, b                                       ; $5911: $48
    ld [bc], a                                    ; $5912: $02
    ld e, a                                       ; $5913: $5f
    ld bc, $1500                                  ; $5914: $01 $00 $15
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    inc sp                                        ; $5919: $33
    ld [bc], a                                    ; $591a: $02
    ld b, l                                       ; $591b: $45
    dec d                                         ; $591c: $15
    ld d, [hl]                                    ; $591d: $56
    nop                                           ; $591e: $00
    inc sp                                        ; $591f: $33
    ld [bc], a                                    ; $5920: $02
    adc c                                         ; $5921: $89
    ld d, a                                       ; $5922: $57
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    add hl, bc                                    ; $5928: $09
    nop                                           ; $5929: $00
    ld d, h                                       ; $592a: $54
    dec b                                         ; $592b: $05
    add hl, bc                                    ; $592c: $09
    nop                                           ; $592d: $00
    ld d, [hl]                                    ; $592e: $56
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    rla                                           ; $5931: $17
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    inc e                                         ; $5934: $1c
    ld c, b                                       ; $5935: $48
    ld [bc], a                                    ; $5936: $02
    ld e, a                                       ; $5937: $5f
    ld bc, $1500                                  ; $5938: $01 $00 $15
    ld d, [hl]                                    ; $593b: $56
    nop                                           ; $593c: $00
    inc sp                                        ; $593d: $33
    ld bc, $5775                                  ; $593e: $01 $75 $57
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    add hl, bc                                    ; $5946: $09
    nop                                           ; $5947: $00
    ccf                                           ; $5948: $3f
    dec b                                         ; $5949: $05
    add hl, bc                                    ; $594a: $09
    nop                                           ; $594b: $00
    ld d, [hl]                                    ; $594c: $56
    nop                                           ; $594d: $00
    nop                                           ; $594e: $00
    rla                                           ; $594f: $17
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    inc e                                         ; $5952: $1c
    ld c, b                                       ; $5953: $48
    ld [bc], a                                    ; $5954: $02
    ld e, a                                       ; $5955: $5f
    ld bc, $1500                                  ; $5956: $01 $00 $15
    ld d, [hl]                                    ; $5959: $56
    nop                                           ; $595a: $00
    inc sp                                        ; $595b: $33
    add hl, bc                                    ; $595c: $09
    rst $38                                       ; $595d: $ff
    ld d, a                                       ; $595e: $57
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    add hl, bc                                    ; $5964: $09
    nop                                           ; $5965: $00
    dec a                                         ; $5966: $3d
    dec b                                         ; $5967: $05
    add hl, bc                                    ; $5968: $09
    nop                                           ; $5969: $00
    ld d, [hl]                                    ; $596a: $56
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    rla                                           ; $596d: $17
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    inc e                                         ; $5970: $1c
    ld c, b                                       ; $5971: $48
    ld [bc], a                                    ; $5972: $02
    ld e, a                                       ; $5973: $5f
    ld bc, $1500                                  ; $5974: $01 $00 $15
    ld d, [hl]                                    ; $5977: $56
    nop                                           ; $5978: $00
    inc sp                                        ; $5979: $33
    dec bc                                        ; $597a: $0b
    ld l, [hl]                                    ; $597b: $6e
    ld d, a                                       ; $597c: $57
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    nop                                           ; $597f: $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    add hl, bc                                    ; $5982: $09
    nop                                           ; $5983: $00
    ld e, e                                       ; $5984: $5b
    dec b                                         ; $5985: $05
    add hl, bc                                    ; $5986: $09
    nop                                           ; $5987: $00
    ld d, [hl]                                    ; $5988: $56
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    rla                                           ; $598b: $17
    nop                                           ; $598c: $00
    nop                                           ; $598d: $00
    inc e                                         ; $598e: $1c
    ld c, b                                       ; $598f: $48
    ld [bc], a                                    ; $5990: $02
    ld e, a                                       ; $5991: $5f
    ld bc, $1500                                  ; $5992: $01 $00 $15
    ld d, [hl]                                    ; $5995: $56
    nop                                           ; $5996: $00
    inc sp                                        ; $5997: $33
    dec bc                                        ; $5998: $0b
    ld h, [hl]                                    ; $5999: $66
    ld d, a                                       ; $599a: $57
    nop                                           ; $599b: $00
    nop                                           ; $599c: $00
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    ld e, a                                       ; $59a0: $5f
    ld bc, $0000                                  ; $59a1: $01 $00 $00
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    ld e, a                                       ; $59a6: $5f
    nop                                           ; $59a7: $00
    nop                                           ; $59a8: $00
    add hl, bc                                    ; $59a9: $09
    nop                                           ; $59aa: $00
    ld d, e                                       ; $59ab: $53
    dec b                                         ; $59ac: $05
    add hl, bc                                    ; $59ad: $09
    nop                                           ; $59ae: $00
    ld d, [hl]                                    ; $59af: $56
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    rla                                           ; $59b2: $17
    nop                                           ; $59b3: $00
    nop                                           ; $59b4: $00
    inc e                                         ; $59b5: $1c
    ld b, d                                       ; $59b6: $42
    inc bc                                        ; $59b7: $03
    ld e, a                                       ; $59b8: $5f
    ld bc, $1500                                  ; $59b9: $01 $00 $15
    ld d, b                                       ; $59bc: $50
    nop                                           ; $59bd: $00
    inc sp                                        ; $59be: $33
    ld [bc], a                                    ; $59bf: $02
    cpl                                           ; $59c0: $2f
    ld d, a                                       ; $59c1: $57
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    add hl, bc                                    ; $59c7: $09
    nop                                           ; $59c8: $00
    ld b, $05                                     ; $59c9: $06 $05
    add hl, bc                                    ; $59cb: $09
    nop                                           ; $59cc: $00
    ld d, [hl]                                    ; $59cd: $56
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    rla                                           ; $59d0: $17
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    inc e                                         ; $59d3: $1c
    ld b, d                                       ; $59d4: $42
    inc bc                                        ; $59d5: $03
    ld e, a                                       ; $59d6: $5f
    ld bc, $1500                                  ; $59d7: $01 $00 $15
    ld d, b                                       ; $59da: $50
    nop                                           ; $59db: $00
    inc sp                                        ; $59dc: $33
    ld bc, $5776                                  ; $59dd: $01 $76 $57
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    nop                                           ; $59e4: $00
    add hl, bc                                    ; $59e5: $09
    nop                                           ; $59e6: $00
    rlca                                          ; $59e7: $07
    dec b                                         ; $59e8: $05
    add hl, bc                                    ; $59e9: $09
    nop                                           ; $59ea: $00
    ld d, [hl]                                    ; $59eb: $56
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    rla                                           ; $59ee: $17
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    inc e                                         ; $59f1: $1c
    ld b, d                                       ; $59f2: $42
    inc bc                                        ; $59f3: $03
    ld e, a                                       ; $59f4: $5f
    ld bc, $1500                                  ; $59f5: $01 $00 $15
    ld d, b                                       ; $59f8: $50
    nop                                           ; $59f9: $00
    inc sp                                        ; $59fa: $33
    ld bc, $5776                                  ; $59fb: $01 $76 $57
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    add hl, bc                                    ; $5a03: $09
    nop                                           ; $5a04: $00
    ld d, d                                       ; $5a05: $52
    dec b                                         ; $5a06: $05
    add hl, bc                                    ; $5a07: $09
    nop                                           ; $5a08: $00
    ld d, [hl]                                    ; $5a09: $56
    nop                                           ; $5a0a: $00
    nop                                           ; $5a0b: $00
    rla                                           ; $5a0c: $17
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    inc e                                         ; $5a0f: $1c
    ld b, d                                       ; $5a10: $42
    inc bc                                        ; $5a11: $03
    ld e, a                                       ; $5a12: $5f
    ld bc, $1500                                  ; $5a13: $01 $00 $15
    ld d, b                                       ; $5a16: $50
    nop                                           ; $5a17: $00
    inc sp                                        ; $5a18: $33
    ld bc, $5776                                  ; $5a19: $01 $76 $57
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    add hl, bc                                    ; $5a21: $09
    nop                                           ; $5a22: $00
    ld [$0905], sp                                ; $5a23: $08 $05 $09
    nop                                           ; $5a26: $00
    ld d, [hl]                                    ; $5a27: $56
    nop                                           ; $5a28: $00
    nop                                           ; $5a29: $00
    rla                                           ; $5a2a: $17
    nop                                           ; $5a2b: $00
    nop                                           ; $5a2c: $00
    inc e                                         ; $5a2d: $1c
    ld b, d                                       ; $5a2e: $42
    inc bc                                        ; $5a2f: $03
    ld e, a                                       ; $5a30: $5f
    ld bc, $1500                                  ; $5a31: $01 $00 $15
    ld d, b                                       ; $5a34: $50
    nop                                           ; $5a35: $00
    inc sp                                        ; $5a36: $33
    ld bc, $5776                                  ; $5a37: $01 $76 $57
    nop                                           ; $5a3a: $00
    nop                                           ; $5a3b: $00
    nop                                           ; $5a3c: $00
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    add hl, bc                                    ; $5a3f: $09
    nop                                           ; $5a40: $00
    add hl, bc                                    ; $5a41: $09
    dec b                                         ; $5a42: $05
    add hl, bc                                    ; $5a43: $09
    nop                                           ; $5a44: $00
    ld d, [hl]                                    ; $5a45: $56
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    rla                                           ; $5a48: $17
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    inc e                                         ; $5a4b: $1c
    ld b, d                                       ; $5a4c: $42
    inc bc                                        ; $5a4d: $03
    ld e, a                                       ; $5a4e: $5f
    ld bc, $1500                                  ; $5a4f: $01 $00 $15
    ld d, b                                       ; $5a52: $50
    nop                                           ; $5a53: $00
    inc sp                                        ; $5a54: $33
    ld bc, $5776                                  ; $5a55: $01 $76 $57
    nop                                           ; $5a58: $00
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    add hl, bc                                    ; $5a5d: $09
    nop                                           ; $5a5e: $00
    ld d, [hl]                                    ; $5a5f: $56
    dec b                                         ; $5a60: $05
    add hl, bc                                    ; $5a61: $09
    nop                                           ; $5a62: $00
    ld d, [hl]                                    ; $5a63: $56
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    rla                                           ; $5a66: $17
    nop                                           ; $5a67: $00
    nop                                           ; $5a68: $00
    inc e                                         ; $5a69: $1c
    ld b, d                                       ; $5a6a: $42
    inc bc                                        ; $5a6b: $03
    ld e, a                                       ; $5a6c: $5f
    ld bc, $1500                                  ; $5a6d: $01 $00 $15
    ld d, b                                       ; $5a70: $50
    nop                                           ; $5a71: $00
    inc sp                                        ; $5a72: $33
    ld bc, $5776                                  ; $5a73: $01 $76 $57
    nop                                           ; $5a76: $00
    nop                                           ; $5a77: $00
    nop                                           ; $5a78: $00
    nop                                           ; $5a79: $00
    nop                                           ; $5a7a: $00
    add hl, bc                                    ; $5a7b: $09
    nop                                           ; $5a7c: $00
    dec bc                                        ; $5a7d: $0b
    dec b                                         ; $5a7e: $05
    dec bc                                        ; $5a7f: $0b
    nop                                           ; $5a80: $00
    ld d, [hl]                                    ; $5a81: $56
    nop                                           ; $5a82: $00
    nop                                           ; $5a83: $00
    rla                                           ; $5a84: $17
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    inc e                                         ; $5a87: $1c
    ld b, d                                       ; $5a88: $42
    inc bc                                        ; $5a89: $03
    ld e, a                                       ; $5a8a: $5f
    ld bc, $1500                                  ; $5a8b: $01 $00 $15
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    inc sp                                        ; $5a90: $33
    inc bc                                        ; $5a91: $03
    ld [hl], c                                    ; $5a92: $71
    dec d                                         ; $5a93: $15
    ld d, b                                       ; $5a94: $50
    nop                                           ; $5a95: $00
    inc sp                                        ; $5a96: $33
    inc bc                                        ; $5a97: $03
    sbc [hl]                                      ; $5a98: $9e
    ld d, a                                       ; $5a99: $57
    nop                                           ; $5a9a: $00
    nop                                           ; $5a9b: $00
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    add hl, bc                                    ; $5a9f: $09
    nop                                           ; $5aa0: $00
    ld e, h                                       ; $5aa1: $5c
    dec b                                         ; $5aa2: $05
    dec bc                                        ; $5aa3: $0b
    nop                                           ; $5aa4: $00
    ld d, [hl]                                    ; $5aa5: $56
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    rla                                           ; $5aa8: $17
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    inc e                                         ; $5aab: $1c
    ld b, d                                       ; $5aac: $42
    inc bc                                        ; $5aad: $03
    ld e, a                                       ; $5aae: $5f
    ld bc, $1500                                  ; $5aaf: $01 $00 $15
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    inc sp                                        ; $5ab4: $33
    inc b                                         ; $5ab5: $04
    call nc, Call_00c_5015                        ; $5ab6: $d4 $15 $50
    nop                                           ; $5ab9: $00
    inc sp                                        ; $5aba: $33
    inc b                                         ; $5abb: $04
    rst $10                                       ; $5abc: $d7
    ld d, a                                       ; $5abd: $57
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    add hl, bc                                    ; $5ac3: $09
    nop                                           ; $5ac4: $00
    db $10                                        ; $5ac5: $10
    dec b                                         ; $5ac6: $05
    dec bc                                        ; $5ac7: $0b
    nop                                           ; $5ac8: $00
    ld d, [hl]                                    ; $5ac9: $56
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    rla                                           ; $5acc: $17
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    inc e                                         ; $5acf: $1c
    ld b, d                                       ; $5ad0: $42
    inc bc                                        ; $5ad1: $03
    ld e, a                                       ; $5ad2: $5f
    ld bc, $1500                                  ; $5ad3: $01 $00 $15
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
    inc sp                                        ; $5ad8: $33
    ld [bc], a                                    ; $5ad9: $02
    ld b, l                                       ; $5ada: $45
    dec d                                         ; $5adb: $15
    ld d, b                                       ; $5adc: $50
    nop                                           ; $5add: $00
    inc sp                                        ; $5ade: $33
    ld [bc], a                                    ; $5adf: $02
    adc d                                         ; $5ae0: $8a
    ld d, a                                       ; $5ae1: $57
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    add hl, bc                                    ; $5ae7: $09
    nop                                           ; $5ae8: $00
    ld de, $0b05                                  ; $5ae9: $11 $05 $0b
    nop                                           ; $5aec: $00
    ld d, [hl]                                    ; $5aed: $56
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    rla                                           ; $5af0: $17
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    inc e                                         ; $5af3: $1c
    ld b, d                                       ; $5af4: $42
    inc bc                                        ; $5af5: $03
    ld e, a                                       ; $5af6: $5f
    ld bc, $1500                                  ; $5af7: $01 $00 $15
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    inc sp                                        ; $5afc: $33
    ld [bc], a                                    ; $5afd: $02
    ld b, l                                       ; $5afe: $45
    dec d                                         ; $5aff: $15
    ld d, b                                       ; $5b00: $50
    nop                                           ; $5b01: $00
    inc sp                                        ; $5b02: $33
    ld [bc], a                                    ; $5b03: $02
    adc d                                         ; $5b04: $8a
    ld d, a                                       ; $5b05: $57
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    add hl, bc                                    ; $5b0b: $09
    nop                                           ; $5b0c: $00
    ld d, h                                       ; $5b0d: $54
    dec b                                         ; $5b0e: $05
    add hl, bc                                    ; $5b0f: $09
    nop                                           ; $5b10: $00
    ld d, [hl]                                    ; $5b11: $56
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    rla                                           ; $5b14: $17
    nop                                           ; $5b15: $00
    nop                                           ; $5b16: $00
    inc e                                         ; $5b17: $1c
    ld b, d                                       ; $5b18: $42
    inc bc                                        ; $5b19: $03
    ld e, a                                       ; $5b1a: $5f
    ld bc, $1500                                  ; $5b1b: $01 $00 $15
    ld d, b                                       ; $5b1e: $50
    nop                                           ; $5b1f: $00
    inc sp                                        ; $5b20: $33
    ld bc, $5776                                  ; $5b21: $01 $76 $57
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    add hl, bc                                    ; $5b29: $09
    nop                                           ; $5b2a: $00
    ccf                                           ; $5b2b: $3f
    dec b                                         ; $5b2c: $05
    add hl, bc                                    ; $5b2d: $09
    nop                                           ; $5b2e: $00
    ld d, [hl]                                    ; $5b2f: $56
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    rla                                           ; $5b32: $17
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    inc e                                         ; $5b35: $1c
    ld b, d                                       ; $5b36: $42
    inc bc                                        ; $5b37: $03
    ld e, a                                       ; $5b38: $5f
    ld bc, $1500                                  ; $5b39: $01 $00 $15
    ld d, b                                       ; $5b3c: $50
    nop                                           ; $5b3d: $00
    inc sp                                        ; $5b3e: $33
    ld a, [bc]                                    ; $5b3f: $0a
    nop                                           ; $5b40: $00
    ld d, a                                       ; $5b41: $57
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    add hl, bc                                    ; $5b47: $09
    nop                                           ; $5b48: $00
    dec a                                         ; $5b49: $3d
    dec b                                         ; $5b4a: $05
    add hl, bc                                    ; $5b4b: $09
    nop                                           ; $5b4c: $00
    ld d, [hl]                                    ; $5b4d: $56
    nop                                           ; $5b4e: $00
    nop                                           ; $5b4f: $00
    rla                                           ; $5b50: $17
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    inc e                                         ; $5b53: $1c
    ld b, d                                       ; $5b54: $42
    inc bc                                        ; $5b55: $03
    ld e, a                                       ; $5b56: $5f
    ld bc, $1500                                  ; $5b57: $01 $00 $15
    ld d, b                                       ; $5b5a: $50
    nop                                           ; $5b5b: $00
    inc sp                                        ; $5b5c: $33
    dec bc                                        ; $5b5d: $0b
    ld h, h                                       ; $5b5e: $64
    ld d, a                                       ; $5b5f: $57
    nop                                           ; $5b60: $00
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    add hl, bc                                    ; $5b65: $09
    nop                                           ; $5b66: $00
    ld e, e                                       ; $5b67: $5b
    dec b                                         ; $5b68: $05
    add hl, bc                                    ; $5b69: $09
    nop                                           ; $5b6a: $00
    ld d, [hl]                                    ; $5b6b: $56
    nop                                           ; $5b6c: $00
    nop                                           ; $5b6d: $00
    rla                                           ; $5b6e: $17
    nop                                           ; $5b6f: $00
    nop                                           ; $5b70: $00
    inc e                                         ; $5b71: $1c
    ld b, d                                       ; $5b72: $42
    inc bc                                        ; $5b73: $03
    ld e, a                                       ; $5b74: $5f
    ld bc, $1500                                  ; $5b75: $01 $00 $15
    ld d, b                                       ; $5b78: $50
    nop                                           ; $5b79: $00
    inc sp                                        ; $5b7a: $33
    dec bc                                        ; $5b7b: $0b
    ld h, h                                       ; $5b7c: $64
    ld d, a                                       ; $5b7d: $57
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    ld e, a                                       ; $5b83: $5f
    ld bc, $0000                                  ; $5b84: $01 $00 $00
    nop                                           ; $5b87: $00
    nop                                           ; $5b88: $00
    ld e, a                                       ; $5b89: $5f
    nop                                           ; $5b8a: $00
    nop                                           ; $5b8b: $00
    add hl, bc                                    ; $5b8c: $09
    nop                                           ; $5b8d: $00
    ld d, e                                       ; $5b8e: $53
    dec b                                         ; $5b8f: $05
    add hl, bc                                    ; $5b90: $09
    nop                                           ; $5b91: $00
    ld d, [hl]                                    ; $5b92: $56
    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    rla                                           ; $5b95: $17
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    inc e                                         ; $5b98: $1c
    ld b, l                                       ; $5b99: $45
    inc b                                         ; $5b9a: $04
    ld e, a                                       ; $5b9b: $5f
    ld bc, $1500                                  ; $5b9c: $01 $00 $15
    ld d, e                                       ; $5b9f: $53
    nop                                           ; $5ba0: $00
    inc sp                                        ; $5ba1: $33
    ld [bc], a                                    ; $5ba2: $02
    rrca                                          ; $5ba3: $0f
    ld d, a                                       ; $5ba4: $57
    nop                                           ; $5ba5: $00
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    add hl, bc                                    ; $5baa: $09
    nop                                           ; $5bab: $00
    ld b, $05                                     ; $5bac: $06 $05
    add hl, bc                                    ; $5bae: $09
    nop                                           ; $5baf: $00
    ld d, [hl]                                    ; $5bb0: $56
    nop                                           ; $5bb1: $00
    nop                                           ; $5bb2: $00
    rla                                           ; $5bb3: $17
    nop                                           ; $5bb4: $00
    nop                                           ; $5bb5: $00
    inc e                                         ; $5bb6: $1c
    ld b, l                                       ; $5bb7: $45
    inc b                                         ; $5bb8: $04
    ld e, a                                       ; $5bb9: $5f
    ld bc, $1500                                  ; $5bba: $01 $00 $15
    ld d, e                                       ; $5bbd: $53
    nop                                           ; $5bbe: $00
    inc sp                                        ; $5bbf: $33
    ld bc, $575e                                  ; $5bc0: $01 $5e $57
    nop                                           ; $5bc3: $00
    nop                                           ; $5bc4: $00
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    add hl, bc                                    ; $5bc8: $09
    nop                                           ; $5bc9: $00
    rlca                                          ; $5bca: $07
    dec b                                         ; $5bcb: $05
    add hl, bc                                    ; $5bcc: $09
    nop                                           ; $5bcd: $00
    ld d, [hl]                                    ; $5bce: $56
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    rla                                           ; $5bd1: $17
    nop                                           ; $5bd2: $00
    nop                                           ; $5bd3: $00
    inc e                                         ; $5bd4: $1c
    ld b, l                                       ; $5bd5: $45
    inc b                                         ; $5bd6: $04
    ld e, a                                       ; $5bd7: $5f
    ld bc, $1500                                  ; $5bd8: $01 $00 $15
    ld d, e                                       ; $5bdb: $53
    nop                                           ; $5bdc: $00
    inc sp                                        ; $5bdd: $33
    ld bc, $575e                                  ; $5bde: $01 $5e $57
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    add hl, bc                                    ; $5be6: $09
    nop                                           ; $5be7: $00
    ld d, d                                       ; $5be8: $52
    dec b                                         ; $5be9: $05
    add hl, bc                                    ; $5bea: $09
    nop                                           ; $5beb: $00
    ld d, [hl]                                    ; $5bec: $56
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    rla                                           ; $5bef: $17
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    inc e                                         ; $5bf2: $1c
    ld b, l                                       ; $5bf3: $45
    inc b                                         ; $5bf4: $04
    ld e, a                                       ; $5bf5: $5f
    ld bc, $1500                                  ; $5bf6: $01 $00 $15
    ld d, e                                       ; $5bf9: $53
    nop                                           ; $5bfa: $00
    inc sp                                        ; $5bfb: $33
    ld bc, $575e                                  ; $5bfc: $01 $5e $57
    nop                                           ; $5bff: $00
    nop                                           ; $5c00: $00
    nop                                           ; $5c01: $00
    nop                                           ; $5c02: $00
    nop                                           ; $5c03: $00
    add hl, bc                                    ; $5c04: $09
    nop                                           ; $5c05: $00
    ld [$0905], sp                                ; $5c06: $08 $05 $09
    nop                                           ; $5c09: $00
    ld d, [hl]                                    ; $5c0a: $56
    nop                                           ; $5c0b: $00
    nop                                           ; $5c0c: $00
    rla                                           ; $5c0d: $17
    nop                                           ; $5c0e: $00
    nop                                           ; $5c0f: $00
    inc e                                         ; $5c10: $1c
    ld b, l                                       ; $5c11: $45
    inc b                                         ; $5c12: $04
    ld e, a                                       ; $5c13: $5f
    ld bc, $1500                                  ; $5c14: $01 $00 $15
    ld d, e                                       ; $5c17: $53
    nop                                           ; $5c18: $00
    inc sp                                        ; $5c19: $33
    ld bc, $575e                                  ; $5c1a: $01 $5e $57
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    add hl, bc                                    ; $5c22: $09
    nop                                           ; $5c23: $00
    add hl, bc                                    ; $5c24: $09
    dec b                                         ; $5c25: $05
    add hl, bc                                    ; $5c26: $09
    nop                                           ; $5c27: $00
    ld d, [hl]                                    ; $5c28: $56
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    rla                                           ; $5c2b: $17
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    inc e                                         ; $5c2e: $1c
    ld b, l                                       ; $5c2f: $45
    inc b                                         ; $5c30: $04
    ld e, a                                       ; $5c31: $5f
    ld bc, $1500                                  ; $5c32: $01 $00 $15
    ld d, e                                       ; $5c35: $53
    nop                                           ; $5c36: $00
    inc sp                                        ; $5c37: $33
    ld bc, $575e                                  ; $5c38: $01 $5e $57
    nop                                           ; $5c3b: $00
    nop                                           ; $5c3c: $00
    nop                                           ; $5c3d: $00
    nop                                           ; $5c3e: $00
    nop                                           ; $5c3f: $00
    add hl, bc                                    ; $5c40: $09
    nop                                           ; $5c41: $00
    ld d, [hl]                                    ; $5c42: $56
    dec b                                         ; $5c43: $05
    add hl, bc                                    ; $5c44: $09
    nop                                           ; $5c45: $00
    ld d, [hl]                                    ; $5c46: $56
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    rla                                           ; $5c49: $17
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    inc e                                         ; $5c4c: $1c
    ld b, l                                       ; $5c4d: $45
    inc b                                         ; $5c4e: $04
    ld e, a                                       ; $5c4f: $5f
    ld bc, $1500                                  ; $5c50: $01 $00 $15
    ld d, e                                       ; $5c53: $53
    nop                                           ; $5c54: $00
    inc sp                                        ; $5c55: $33
    ld bc, $575e                                  ; $5c56: $01 $5e $57
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    add hl, bc                                    ; $5c5e: $09
    nop                                           ; $5c5f: $00
    dec bc                                        ; $5c60: $0b
    dec b                                         ; $5c61: $05
    dec bc                                        ; $5c62: $0b
    nop                                           ; $5c63: $00
    ld d, [hl]                                    ; $5c64: $56
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    rla                                           ; $5c67: $17
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    inc e                                         ; $5c6a: $1c
    ld b, l                                       ; $5c6b: $45
    inc b                                         ; $5c6c: $04
    ld e, a                                       ; $5c6d: $5f
    ld bc, $1500                                  ; $5c6e: $01 $00 $15
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    inc sp                                        ; $5c73: $33
    inc bc                                        ; $5c74: $03
    ld [hl], c                                    ; $5c75: $71
    dec d                                         ; $5c76: $15
    ld d, e                                       ; $5c77: $53
    nop                                           ; $5c78: $00
    inc sp                                        ; $5c79: $33
    inc bc                                        ; $5c7a: $03
    sbc a                                         ; $5c7b: $9f
    ld d, a                                       ; $5c7c: $57
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    add hl, bc                                    ; $5c82: $09
    nop                                           ; $5c83: $00
    ld e, h                                       ; $5c84: $5c
    dec b                                         ; $5c85: $05
    dec bc                                        ; $5c86: $0b
    nop                                           ; $5c87: $00
    ld d, [hl]                                    ; $5c88: $56
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    rla                                           ; $5c8b: $17
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    inc e                                         ; $5c8e: $1c
    ld b, l                                       ; $5c8f: $45
    inc b                                         ; $5c90: $04
    ld e, a                                       ; $5c91: $5f
    ld bc, $1500                                  ; $5c92: $01 $00 $15
    nop                                           ; $5c95: $00
    nop                                           ; $5c96: $00
    inc sp                                        ; $5c97: $33
    inc b                                         ; $5c98: $04
    call nc, Call_00c_5315                        ; $5c99: $d4 $15 $53
    nop                                           ; $5c9c: $00
    inc sp                                        ; $5c9d: $33
    inc b                                         ; $5c9e: $04
    ret c                                         ; $5c9f: $d8

    ld d, a                                       ; $5ca0: $57
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    nop                                           ; $5ca3: $00
    nop                                           ; $5ca4: $00
    nop                                           ; $5ca5: $00
    add hl, bc                                    ; $5ca6: $09
    nop                                           ; $5ca7: $00
    db $10                                        ; $5ca8: $10
    dec b                                         ; $5ca9: $05
    dec bc                                        ; $5caa: $0b
    nop                                           ; $5cab: $00
    ld d, [hl]                                    ; $5cac: $56
    nop                                           ; $5cad: $00
    nop                                           ; $5cae: $00
    rla                                           ; $5caf: $17
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    inc e                                         ; $5cb2: $1c
    ld b, l                                       ; $5cb3: $45
    inc b                                         ; $5cb4: $04
    ld e, a                                       ; $5cb5: $5f
    ld bc, $1500                                  ; $5cb6: $01 $00 $15
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    inc sp                                        ; $5cbb: $33
    ld [bc], a                                    ; $5cbc: $02
    ld b, l                                       ; $5cbd: $45
    dec d                                         ; $5cbe: $15
    ld d, e                                       ; $5cbf: $53
    nop                                           ; $5cc0: $00
    inc sp                                        ; $5cc1: $33
    ld [bc], a                                    ; $5cc2: $02
    adc e                                         ; $5cc3: $8b
    ld d, a                                       ; $5cc4: $57
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    nop                                           ; $5cc7: $00
    nop                                           ; $5cc8: $00
    nop                                           ; $5cc9: $00
    add hl, bc                                    ; $5cca: $09
    nop                                           ; $5ccb: $00
    ld de, $0b05                                  ; $5ccc: $11 $05 $0b
    nop                                           ; $5ccf: $00
    ld d, [hl]                                    ; $5cd0: $56
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    rla                                           ; $5cd3: $17
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    inc e                                         ; $5cd6: $1c
    ld b, l                                       ; $5cd7: $45
    inc b                                         ; $5cd8: $04
    ld e, a                                       ; $5cd9: $5f
    ld bc, $1500                                  ; $5cda: $01 $00 $15
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    inc sp                                        ; $5cdf: $33
    ld [bc], a                                    ; $5ce0: $02
    ld b, l                                       ; $5ce1: $45
    dec d                                         ; $5ce2: $15
    ld d, e                                       ; $5ce3: $53
    nop                                           ; $5ce4: $00
    inc sp                                        ; $5ce5: $33
    ld [bc], a                                    ; $5ce6: $02
    adc e                                         ; $5ce7: $8b
    ld d, a                                       ; $5ce8: $57
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    nop                                           ; $5ceb: $00
    nop                                           ; $5cec: $00
    nop                                           ; $5ced: $00
    add hl, bc                                    ; $5cee: $09
    nop                                           ; $5cef: $00
    ld d, h                                       ; $5cf0: $54
    dec b                                         ; $5cf1: $05
    add hl, bc                                    ; $5cf2: $09
    nop                                           ; $5cf3: $00
    ld d, [hl]                                    ; $5cf4: $56
    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    rla                                           ; $5cf7: $17
    nop                                           ; $5cf8: $00
    nop                                           ; $5cf9: $00
    inc e                                         ; $5cfa: $1c
    ld b, l                                       ; $5cfb: $45
    inc b                                         ; $5cfc: $04
    ld e, a                                       ; $5cfd: $5f
    ld bc, $1500                                  ; $5cfe: $01 $00 $15
    ld d, e                                       ; $5d01: $53
    nop                                           ; $5d02: $00
    inc sp                                        ; $5d03: $33
    ld bc, $575e                                  ; $5d04: $01 $5e $57
    nop                                           ; $5d07: $00
    nop                                           ; $5d08: $00
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    add hl, bc                                    ; $5d0c: $09
    nop                                           ; $5d0d: $00
    ccf                                           ; $5d0e: $3f
    dec b                                         ; $5d0f: $05
    add hl, bc                                    ; $5d10: $09
    nop                                           ; $5d11: $00
    ld d, [hl]                                    ; $5d12: $56
    nop                                           ; $5d13: $00
    nop                                           ; $5d14: $00
    rla                                           ; $5d15: $17
    nop                                           ; $5d16: $00
    nop                                           ; $5d17: $00
    inc e                                         ; $5d18: $1c
    ld b, l                                       ; $5d19: $45
    inc b                                         ; $5d1a: $04
    ld e, a                                       ; $5d1b: $5f
    ld bc, $1500                                  ; $5d1c: $01 $00 $15
    ld d, e                                       ; $5d1f: $53
    nop                                           ; $5d20: $00
    inc sp                                        ; $5d21: $33
    ld a, [bc]                                    ; $5d22: $0a
    ld bc, $0057                                  ; $5d23: $01 $57 $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    add hl, bc                                    ; $5d2a: $09
    nop                                           ; $5d2b: $00
    dec a                                         ; $5d2c: $3d
    dec b                                         ; $5d2d: $05
    add hl, bc                                    ; $5d2e: $09
    nop                                           ; $5d2f: $00
    ld d, [hl]                                    ; $5d30: $56
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    rla                                           ; $5d33: $17
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    inc e                                         ; $5d36: $1c
    ld b, l                                       ; $5d37: $45
    inc b                                         ; $5d38: $04
    ld e, a                                       ; $5d39: $5f
    ld bc, $1500                                  ; $5d3a: $01 $00 $15
    ld d, e                                       ; $5d3d: $53
    nop                                           ; $5d3e: $00
    inc sp                                        ; $5d3f: $33
    dec bc                                        ; $5d40: $0b
    ld l, e                                       ; $5d41: $6b
    ld d, a                                       ; $5d42: $57
    nop                                           ; $5d43: $00
    nop                                           ; $5d44: $00
    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00
    add hl, bc                                    ; $5d48: $09
    nop                                           ; $5d49: $00
    ld e, e                                       ; $5d4a: $5b
    dec b                                         ; $5d4b: $05
    add hl, bc                                    ; $5d4c: $09
    nop                                           ; $5d4d: $00
    ld d, [hl]                                    ; $5d4e: $56
    nop                                           ; $5d4f: $00
    nop                                           ; $5d50: $00
    rla                                           ; $5d51: $17
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    inc e                                         ; $5d54: $1c
    ld b, l                                       ; $5d55: $45
    inc b                                         ; $5d56: $04
    ld e, a                                       ; $5d57: $5f
    ld bc, $1500                                  ; $5d58: $01 $00 $15
    ld d, e                                       ; $5d5b: $53
    nop                                           ; $5d5c: $00
    inc sp                                        ; $5d5d: $33
    dec bc                                        ; $5d5e: $0b
    ld l, e                                       ; $5d5f: $6b
    ld d, a                                       ; $5d60: $57
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    nop                                           ; $5d64: $00
    nop                                           ; $5d65: $00
    ld e, a                                       ; $5d66: $5f
    ld bc, $0000                                  ; $5d67: $01 $00 $00
    nop                                           ; $5d6a: $00
    nop                                           ; $5d6b: $00
    ld e, a                                       ; $5d6c: $5f
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    add hl, bc                                    ; $5d6f: $09
    nop                                           ; $5d70: $00
    ld e, l                                       ; $5d71: $5d
    dec b                                         ; $5d72: $05
    inc hl                                        ; $5d73: $23
    nop                                           ; $5d74: $00
    ld d, [hl]                                    ; $5d75: $56
    nop                                           ; $5d76: $00
    nop                                           ; $5d77: $00
    rla                                           ; $5d78: $17
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    inc de                                        ; $5d7b: $13
    ld bc, $582a                                  ; $5d7c: $01 $2a $58
    nop                                           ; $5d7f: $00
    ld d, d                                       ; $5d80: $52
    inc de                                        ; $5d81: $13
    nop                                           ; $5d82: $00
    dec a                                         ; $5d83: $3d
    inc d                                         ; $5d84: $14
    ld bc, $152b                                  ; $5d85: $01 $2b $15
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    ld d, $37                                     ; $5d8a: $16 $37
    nop                                           ; $5d8c: $00
    ld d, d                                       ; $5d8d: $52
    nop                                           ; $5d8e: $00
    nop                                           ; $5d8f: $00
    dec de                                        ; $5d90: $1b
    inc b                                         ; $5d91: $04
    nop                                           ; $5d92: $00
    inc de                                        ; $5d93: $13
    nop                                           ; $5d94: $00
    ld c, e                                       ; $5d95: $4b
    inc d                                         ; $5d96: $14
    ld bc, $1538                                  ; $5d97: $01 $38 $15
    nop                                           ; $5d9a: $00
    nop                                           ; $5d9b: $00
    ld d, $38                                     ; $5d9c: $16 $38
    nop                                           ; $5d9e: $00
    ld d, d                                       ; $5d9f: $52
    nop                                           ; $5da0: $00
    nop                                           ; $5da1: $00
    dec de                                        ; $5da2: $1b
    inc b                                         ; $5da3: $04
    nop                                           ; $5da4: $00
    inc de                                        ; $5da5: $13
    nop                                           ; $5da6: $00
    ld h, e                                       ; $5da7: $63
    inc d                                         ; $5da8: $14
    ld bc, $1523                                  ; $5da9: $01 $23 $15
    nop                                           ; $5dac: $00
    nop                                           ; $5dad: $00
    ld d, $39                                     ; $5dae: $16 $39
    nop                                           ; $5db0: $00
    ld d, d                                       ; $5db1: $52
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    dec de                                        ; $5db4: $1b
    inc b                                         ; $5db5: $04
    nop                                           ; $5db6: $00
    ld e, a                                       ; $5db7: $5f
    ld bc, $1500                                  ; $5db8: $01 $00 $15
    nop                                           ; $5dbb: $00
    nop                                           ; $5dbc: $00
    inc sp                                        ; $5dbd: $33
    inc b                                         ; $5dbe: $04
    ld [bc], a                                    ; $5dbf: $02
    rla                                           ; $5dc0: $17
    add hl, sp                                    ; $5dc1: $39
    nop                                           ; $5dc2: $00
    ld [hl+], a                                   ; $5dc3: $22
    nop                                           ; $5dc4: $00
    nop                                           ; $5dc5: $00
    rla                                           ; $5dc6: $17
    scf                                           ; $5dc7: $37
    nop                                           ; $5dc8: $00
    ld [hl+], a                                   ; $5dc9: $22
    add hl, sp                                    ; $5dca: $39
    nop                                           ; $5dcb: $00
    rla                                           ; $5dcc: $17
    jr c, jr_00c_5dcf                             ; $5dcd: $38 $00

jr_00c_5dcf:
    ld [hl+], a                                   ; $5dcf: $22
    scf                                           ; $5dd0: $37
    nop                                           ; $5dd1: $00
    ld h, d                                       ; $5dd2: $62
    ld h, $00                                     ; $5dd3: $26 $00
    ld d, a                                       ; $5dd5: $57
    nop                                           ; $5dd6: $00
    nop                                           ; $5dd7: $00
    nop                                           ; $5dd8: $00
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    ld e, a                                       ; $5dde: $5f
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    add hl, bc                                    ; $5de1: $09
    nop                                           ; $5de2: $00
    ld h, $05                                     ; $5de3: $26 $05
    ld l, a                                       ; $5de5: $6f
    nop                                           ; $5de6: $00
    add hl, bc                                    ; $5de7: $09
    cpl                                           ; $5de8: $2f
    ld bc, $1b05                                  ; $5de9: $01 $05 $1b
    nop                                           ; $5dec: $00
    inc de                                        ; $5ded: $13
    rst $38                                       ; $5dee: $ff
    db $ec                                        ; $5def: $ec
    inc d                                         ; $5df0: $14
    nop                                           ; $5df1: $00
    nop                                           ; $5df2: $00
    dec d                                         ; $5df3: $15
    nop                                           ; $5df4: $00
    nop                                           ; $5df5: $00
    ld d, $37                                     ; $5df6: $16 $37
    ld bc, $0052                                  ; $5df8: $01 $52 $00
    nop                                           ; $5dfb: $00
    dec de                                        ; $5dfc: $1b
    inc b                                         ; $5dfd: $04
    nop                                           ; $5dfe: $00
    inc de                                        ; $5dff: $13
    nop                                           ; $5e00: $00
    inc d                                         ; $5e01: $14
    inc d                                         ; $5e02: $14
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    dec d                                         ; $5e05: $15
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    ld d, $38                                     ; $5e08: $16 $38
    ld bc, $0052                                  ; $5e0a: $01 $52 $00
    nop                                           ; $5e0d: $00
    dec de                                        ; $5e0e: $1b
    inc b                                         ; $5e0f: $04
    nop                                           ; $5e10: $00
    inc de                                        ; $5e11: $13
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00
    inc d                                         ; $5e14: $14
    nop                                           ; $5e15: $00
    inc d                                         ; $5e16: $14
    dec d                                         ; $5e17: $15
    nop                                           ; $5e18: $00
    nop                                           ; $5e19: $00
    ld d, $39                                     ; $5e1a: $16 $39
    ld bc, $0052                                  ; $5e1c: $01 $52 $00
    nop                                           ; $5e1f: $00
    dec de                                        ; $5e20: $1b
    inc b                                         ; $5e21: $04
    nop                                           ; $5e22: $00
    ld e, a                                       ; $5e23: $5f
    ld bc, $1700                                  ; $5e24: $01 $00 $17
    add hl, sp                                    ; $5e27: $39
    nop                                           ; $5e28: $00
    ld [hl+], a                                   ; $5e29: $22
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    rla                                           ; $5e2c: $17
    scf                                           ; $5e2d: $37
    nop                                           ; $5e2e: $00
    ld [hl+], a                                   ; $5e2f: $22
    add hl, sp                                    ; $5e30: $39
    nop                                           ; $5e31: $00
    rla                                           ; $5e32: $17
    jr c, jr_00c_5e35                             ; $5e33: $38 $00

jr_00c_5e35:
    ld [hl+], a                                   ; $5e35: $22
    scf                                           ; $5e36: $37
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    ld d, [hl]                                    ; $5e3b: $56
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    inc de                                        ; $5e3e: $13
    nop                                           ; $5e3f: $00
    ld h, e                                       ; $5e40: $63
    inc d                                         ; $5e41: $14
    ld bc, $1523                                  ; $5e42: $01 $23 $15
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    ld d, $39                                     ; $5e47: $16 $39
    nop                                           ; $5e49: $00
    ld d, d                                       ; $5e4a: $52
    nop                                           ; $5e4b: $00
    nop                                           ; $5e4c: $00
    dec de                                        ; $5e4d: $1b
    ld [bc], a                                    ; $5e4e: $02
    nop                                           ; $5e4f: $00
    inc de                                        ; $5e50: $13
    nop                                           ; $5e51: $00
    jp z, $0114                                   ; $5e52: $ca $14 $01

    ld [hl-], a                                   ; $5e55: $32
    dec d                                         ; $5e56: $15
    nop                                           ; $5e57: $00
    nop                                           ; $5e58: $00
    ld d, $38                                     ; $5e59: $16 $38
    nop                                           ; $5e5b: $00
    ld d, d                                       ; $5e5c: $52
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    dec de                                        ; $5e5f: $1b
    ld b, $00                                     ; $5e60: $06 $00
    ld e, a                                       ; $5e62: $5f
    ld bc, $5e00                                  ; $5e63: $01 $00 $5e
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    rla                                           ; $5e68: $17
    nop                                           ; $5e69: $00
    nop                                           ; $5e6a: $00
    dec d                                         ; $5e6b: $15
    ld [bc], a                                    ; $5e6c: $02
    nop                                           ; $5e6d: $00
    add hl, de                                    ; $5e6e: $19
    nop                                           ; $5e6f: $00
    ld e, $17                                     ; $5e70: $1e $17
    add hl, sp                                    ; $5e72: $39
    nop                                           ; $5e73: $00
    dec d                                         ; $5e74: $15
    ld [bc], a                                    ; $5e75: $02
    nop                                           ; $5e76: $00
    add hl, de                                    ; $5e77: $19
    nop                                           ; $5e78: $00
    ld e, $5e                                     ; $5e79: $1e $5e
    ld bc, $2500                                  ; $5e7b: $01 $00 $25
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    dec de                                        ; $5e80: $1b
    ld [bc], a                                    ; $5e81: $02
    nop                                           ; $5e82: $00
    rla                                           ; $5e83: $17
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    dec de                                        ; $5e86: $1b
    ld [bc], a                                    ; $5e87: $02
    nop                                           ; $5e88: $00
    inc de                                        ; $5e89: $13
    nop                                           ; $5e8a: $00
    ld d, c                                       ; $5e8b: $51
    inc d                                         ; $5e8c: $14
    ld bc, $1529                                  ; $5e8d: $01 $29 $15
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    ld d, $37                                     ; $5e92: $16 $37
    nop                                           ; $5e94: $00
    ld d, d                                       ; $5e95: $52
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    dec de                                        ; $5e98: $1b
    ld [bc], a                                    ; $5e99: $02
    nop                                           ; $5e9a: $00
    dec d                                         ; $5e9b: $15
    add hl, de                                    ; $5e9c: $19
    nop                                           ; $5e9d: $00
    inc sp                                        ; $5e9e: $33
    inc bc                                        ; $5e9f: $03
    ret nc                                        ; $5ea0: $d0

    rla                                           ; $5ea1: $17
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    inc e                                         ; $5ea4: $1c
    scf                                           ; $5ea5: $37
    nop                                           ; $5ea6: $00
    dec d                                         ; $5ea7: $15
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    inc sp                                        ; $5eaa: $33
    inc bc                                        ; $5eab: $03
    pop de                                        ; $5eac: $d1
    dec d                                         ; $5ead: $15
    add hl, de                                    ; $5eae: $19
    nop                                           ; $5eaf: $00
    inc sp                                        ; $5eb0: $33
    inc bc                                        ; $5eb1: $03
    jp nc, $021b                                  ; $5eb2: $d2 $1b $02

    nop                                           ; $5eb5: $00
    rla                                           ; $5eb6: $17
    scf                                           ; $5eb7: $37
    nop                                           ; $5eb8: $00
    dec de                                        ; $5eb9: $1b
    nop                                           ; $5eba: $00
    nop                                           ; $5ebb: $00
    dec d                                         ; $5ebc: $15
    add hl, de                                    ; $5ebd: $19
    nop                                           ; $5ebe: $00
    inc sp                                        ; $5ebf: $33
    inc bc                                        ; $5ec0: $03
    db $d3                                        ; $5ec1: $d3
    ld e, [hl]                                    ; $5ec2: $5e
    nop                                           ; $5ec3: $00
    nop                                           ; $5ec4: $00
    rla                                           ; $5ec5: $17
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    inc e                                         ; $5ec8: $1c
    scf                                           ; $5ec9: $37
    nop                                           ; $5eca: $00
    rla                                           ; $5ecb: $17
    add hl, sp                                    ; $5ecc: $39
    nop                                           ; $5ecd: $00
    inc e                                         ; $5ece: $1c
    scf                                           ; $5ecf: $37
    nop                                           ; $5ed0: $00
    ld e, [hl]                                    ; $5ed1: $5e
    ld bc, $1700                                  ; $5ed2: $01 $00 $17
    scf                                           ; $5ed5: $37
    nop                                           ; $5ed6: $00
    inc e                                         ; $5ed7: $1c
    nop                                           ; $5ed8: $00
    nop                                           ; $5ed9: $00
    dec d                                         ; $5eda: $15
    dec d                                         ; $5edb: $15
    nop                                           ; $5edc: $00
    inc sp                                        ; $5edd: $33
    inc bc                                        ; $5ede: $03
    call nc, Call_000_0015                        ; $5edf: $d4 $15 $00
    nop                                           ; $5ee2: $00
    inc sp                                        ; $5ee3: $33
    inc bc                                        ; $5ee4: $03
    push de                                       ; $5ee5: $d5
    rla                                           ; $5ee6: $17
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    dec de                                        ; $5ee9: $1b
    ld [bc], a                                    ; $5eea: $02
    nop                                           ; $5eeb: $00
    rla                                           ; $5eec: $17
    jr c, jr_00c_5eef                             ; $5eed: $38 $00

jr_00c_5eef:
    dec d                                         ; $5eef: $15
    ld b, $00                                     ; $5ef0: $06 $00
    add hl, de                                    ; $5ef2: $19
    nop                                           ; $5ef3: $00
    inc a                                         ; $5ef4: $3c
    dec de                                        ; $5ef5: $1b
    ld b, $00                                     ; $5ef6: $06 $00
    dec d                                         ; $5ef8: $15
    inc l                                         ; $5ef9: $2c
    nop                                           ; $5efa: $00
    inc sp                                        ; $5efb: $33
    inc bc                                        ; $5efc: $03
    sub $15                                       ; $5efd: $d6 $15
    nop                                           ; $5eff: $00
    nop                                           ; $5f00: $00
    inc sp                                        ; $5f01: $33
    inc bc                                        ; $5f02: $03
    rst $10                                       ; $5f03: $d7
    dec d                                         ; $5f04: $15
    inc l                                         ; $5f05: $2c
    nop                                           ; $5f06: $00
    inc sp                                        ; $5f07: $33
    inc bc                                        ; $5f08: $03
    ret c                                         ; $5f09: $d8

    dec d                                         ; $5f0a: $15
    add hl, de                                    ; $5f0b: $19
    nop                                           ; $5f0c: $00
    inc sp                                        ; $5f0d: $33
    inc bc                                        ; $5f0e: $03
    reti                                          ; $5f0f: $d9


    dec d                                         ; $5f10: $15
    nop                                           ; $5f11: $00
    nop                                           ; $5f12: $00
    inc sp                                        ; $5f13: $33
    inc bc                                        ; $5f14: $03
    jp c, $3917                                   ; $5f15: $da $17 $39

    nop                                           ; $5f18: $00
    ld [hl+], a                                   ; $5f19: $22
    nop                                           ; $5f1a: $00
    nop                                           ; $5f1b: $00
    rla                                           ; $5f1c: $17
    scf                                           ; $5f1d: $37
    nop                                           ; $5f1e: $00
    ld [hl+], a                                   ; $5f1f: $22
    add hl, sp                                    ; $5f20: $39
    nop                                           ; $5f21: $00
    rla                                           ; $5f22: $17
    jr c, jr_00c_5f25                             ; $5f23: $38 $00

jr_00c_5f25:
    ld [hl+], a                                   ; $5f25: $22
    scf                                           ; $5f26: $37
    nop                                           ; $5f27: $00
    ld d, a                                       ; $5f28: $57
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    rrca                                          ; $5f2b: $0f
    cpl                                           ; $5f2c: $2f
    ld bc, $0000                                  ; $5f2d: $01 $00 $00
    nop                                           ; $5f30: $00
    add hl, bc                                    ; $5f31: $09
    nop                                           ; $5f32: $00
    daa                                           ; $5f33: $27
    dec b                                         ; $5f34: $05
    dec de                                        ; $5f35: $1b
    nop                                           ; $5f36: $00
    inc de                                        ; $5f37: $13
    rst $38                                       ; $5f38: $ff
    db $ec                                        ; $5f39: $ec
    inc d                                         ; $5f3a: $14
    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    dec d                                         ; $5f3d: $15
    nop                                           ; $5f3e: $00
    nop                                           ; $5f3f: $00
    ld d, $37                                     ; $5f40: $16 $37
    ld bc, $0052                                  ; $5f42: $01 $52 $00
    nop                                           ; $5f45: $00
    dec de                                        ; $5f46: $1b
    inc b                                         ; $5f47: $04
    nop                                           ; $5f48: $00
    inc de                                        ; $5f49: $13
    nop                                           ; $5f4a: $00
    inc d                                         ; $5f4b: $14
    inc d                                         ; $5f4c: $14
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    dec d                                         ; $5f4f: $15
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    ld d, $38                                     ; $5f52: $16 $38
    ld bc, $0052                                  ; $5f54: $01 $52 $00
    nop                                           ; $5f57: $00
    dec de                                        ; $5f58: $1b
    inc b                                         ; $5f59: $04
    nop                                           ; $5f5a: $00
    inc de                                        ; $5f5b: $13
    nop                                           ; $5f5c: $00
    nop                                           ; $5f5d: $00
    inc d                                         ; $5f5e: $14
    nop                                           ; $5f5f: $00
    inc d                                         ; $5f60: $14
    dec d                                         ; $5f61: $15
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    ld d, $39                                     ; $5f64: $16 $39
    ld bc, $0052                                  ; $5f66: $01 $52 $00
    nop                                           ; $5f69: $00
    dec de                                        ; $5f6a: $1b
    inc b                                         ; $5f6b: $04
    nop                                           ; $5f6c: $00
    ld e, a                                       ; $5f6d: $5f
    ld bc, $1700                                  ; $5f6e: $01 $00 $17
    add hl, sp                                    ; $5f71: $39
    nop                                           ; $5f72: $00
    ld [hl+], a                                   ; $5f73: $22
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    rla                                           ; $5f76: $17
    scf                                           ; $5f77: $37
    nop                                           ; $5f78: $00
    ld [hl+], a                                   ; $5f79: $22
    add hl, sp                                    ; $5f7a: $39
    nop                                           ; $5f7b: $00
    rla                                           ; $5f7c: $17
    jr c, jr_00c_5f7f                             ; $5f7d: $38 $00

jr_00c_5f7f:
    ld [hl+], a                                   ; $5f7f: $22
    scf                                           ; $5f80: $37
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    nop                                           ; $5f84: $00
    add hl, bc                                    ; $5f85: $09
    nop                                           ; $5f86: $00
    ld c, b                                       ; $5f87: $48
    dec b                                         ; $5f88: $05
    ld d, $00                                     ; $5f89: $16 $00
    inc de                                        ; $5f8b: $13
    rst $38                                       ; $5f8c: $ff
    db $ec                                        ; $5f8d: $ec
    inc d                                         ; $5f8e: $14
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    dec d                                         ; $5f91: $15
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    ld d, $68                                     ; $5f94: $16 $68
    ld bc, $0052                                  ; $5f96: $01 $52 $00
    nop                                           ; $5f99: $00
    dec de                                        ; $5f9a: $1b
    inc b                                         ; $5f9b: $04
    nop                                           ; $5f9c: $00
    inc de                                        ; $5f9d: $13
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    inc d                                         ; $5fa0: $14
    nop                                           ; $5fa1: $00
    inc d                                         ; $5fa2: $14
    dec d                                         ; $5fa3: $15
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    ld d, $69                                     ; $5fa6: $16 $69
    ld bc, $0052                                  ; $5fa8: $01 $52 $00
    nop                                           ; $5fab: $00
    dec de                                        ; $5fac: $1b
    inc b                                         ; $5fad: $04
    nop                                           ; $5fae: $00
    rrca                                          ; $5faf: $0f
    rst $38                                       ; $5fb0: $ff
    inc b                                         ; $5fb1: $04
    rla                                           ; $5fb2: $17
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    dec de                                        ; $5fb5: $1b
    inc b                                         ; $5fb6: $04
    nop                                           ; $5fb7: $00
    ld e, a                                       ; $5fb8: $5f
    ld bc, $1700                                  ; $5fb9: $01 $00 $17
    ld l, c                                       ; $5fbc: $69
    nop                                           ; $5fbd: $00
    ld [hl+], a                                   ; $5fbe: $22
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00
    rla                                           ; $5fc1: $17
    ld l, b                                       ; $5fc2: $68
    nop                                           ; $5fc3: $00
    ld [hl+], a                                   ; $5fc4: $22
    ld l, c                                       ; $5fc5: $69
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    add hl, bc                                    ; $5fca: $09
    nop                                           ; $5fcb: $00
    ld e, l                                       ; $5fcc: $5d
    dec b                                         ; $5fcd: $05
    inc bc                                        ; $5fce: $03
    nop                                           ; $5fcf: $00
    ld e, a                                       ; $5fd0: $5f
    ld bc, $0000                                  ; $5fd1: $01 $00 $00
    nop                                           ; $5fd4: $00
    nop                                           ; $5fd5: $00
    add hl, bc                                    ; $5fd6: $09
    nop                                           ; $5fd7: $00
    ld e, b                                       ; $5fd8: $58
    dec b                                         ; $5fd9: $05
    inc bc                                        ; $5fda: $03
    nop                                           ; $5fdb: $00
    ld e, a                                       ; $5fdc: $5f
    ld bc, $0000                                  ; $5fdd: $01 $00 $00
    nop                                           ; $5fe0: $00
    nop                                           ; $5fe1: $00
    add hl, bc                                    ; $5fe2: $09
    nop                                           ; $5fe3: $00
    ld e, d                                       ; $5fe4: $5a
    dec b                                         ; $5fe5: $05
    inc bc                                        ; $5fe6: $03
    nop                                           ; $5fe7: $00
    ld e, a                                       ; $5fe8: $5f
    ld bc, $0000                                  ; $5fe9: $01 $00 $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    add hl, bc                                    ; $5fee: $09
    nop                                           ; $5fef: $00
    scf                                           ; $5ff0: $37
    dec b                                         ; $5ff1: $05
    inc bc                                        ; $5ff2: $03
    nop                                           ; $5ff3: $00
    ld e, a                                       ; $5ff4: $5f
    ld bc, $0000                                  ; $5ff5: $01 $00 $00
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    add hl, bc                                    ; $5ffa: $09
    nop                                           ; $5ffb: $00
    ld b, e                                       ; $5ffc: $43
    dec b                                         ; $5ffd: $05
    inc bc                                        ; $5ffe: $03
    nop                                           ; $5fff: $00
    ld e, a                                       ; $6000: $5f
    ld bc, $0000                                  ; $6001: $01 $00 $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    add hl, bc                                    ; $6006: $09
    nop                                           ; $6007: $00
    ld b, c                                       ; $6008: $41
    dec b                                         ; $6009: $05
    inc bc                                        ; $600a: $03
    nop                                           ; $600b: $00
    ld e, a                                       ; $600c: $5f
    ld bc, $0000                                  ; $600d: $01 $00 $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    inc de                                        ; $6012: $13
    ld bc, $1409                                  ; $6013: $01 $09 $14
    nop                                           ; $6016: $00
    ld l, h                                       ; $6017: $6c
    dec d                                         ; $6018: $15
    ld [bc], a                                    ; $6019: $02
    nop                                           ; $601a: $00
    ld d, $48                                     ; $601b: $16 $48
    nop                                           ; $601d: $00
    ld d, d                                       ; $601e: $52
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    inc de                                        ; $6021: $13
    ld bc, $14bf                                  ; $6022: $01 $bf $14
    nop                                           ; $6025: $00
    ld d, [hl]                                    ; $6026: $56
    dec d                                         ; $6027: $15
    inc bc                                        ; $6028: $03
    nop                                           ; $6029: $00
    ld d, $42                                     ; $602a: $16 $42
    nop                                           ; $602c: $00
    ld d, d                                       ; $602d: $52
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    inc de                                        ; $6030: $13
    ld bc, $14ad                                  ; $6031: $01 $ad $14
    ld bc, $152e                                  ; $6034: $01 $2e $15
    inc b                                         ; $6037: $04
    nop                                           ; $6038: $00
    ld d, $45                                     ; $6039: $16 $45
    nop                                           ; $603b: $00
    ld d, d                                       ; $603c: $52
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    inc de                                        ; $603f: $13
    nop                                           ; $6040: $00
    push af                                       ; $6041: $f5
    inc d                                         ; $6042: $14
    ld bc, $1582                                  ; $6043: $01 $82 $15
    ld bc, $1600                                  ; $6046: $01 $00 $16
    ld b, c                                       ; $6049: $41
    nop                                           ; $604a: $00
    ld d, d                                       ; $604b: $52
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    ld e, a                                       ; $604e: $5f
    ld bc, $0000                                  ; $604f: $01 $00 $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    ld e, a                                       ; $6054: $5f
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    add hl, bc                                    ; $6057: $09
    nop                                           ; $6058: $00
    ld b, c                                       ; $6059: $41
    dec b                                         ; $605a: $05
    ld b, e                                       ; $605b: $43
    nop                                           ; $605c: $00
    add hl, bc                                    ; $605d: $09
    ld de, $0501                                  ; $605e: $11 $01 $05
    inc bc                                        ; $6061: $03
    nop                                           ; $6062: $00
    ld e, a                                       ; $6063: $5f
    ld bc, $0000                                  ; $6064: $01 $00 $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    add hl, bc                                    ; $6069: $09
    inc e                                         ; $606a: $1c
    ld bc, $3d05                                  ; $606b: $01 $05 $3d
    nop                                           ; $606e: $00
    ld d, [hl]                                    ; $606f: $56
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    rla                                           ; $6072: $17
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    dec de                                        ; $6075: $1b
    ld [bc], a                                    ; $6076: $02
    nop                                           ; $6077: $00
    inc de                                        ; $6078: $13
    ld bc, $141e                                  ; $6079: $01 $1e $14
    nop                                           ; $607c: $00
    ld d, b                                       ; $607d: $50
    dec d                                         ; $607e: $15
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    ld d, $36                                     ; $6081: $16 $36
    nop                                           ; $6083: $00
    ld d, d                                       ; $6084: $52
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    inc de                                        ; $6087: $13
    ld bc, $1458                                  ; $6088: $01 $58 $14
    nop                                           ; $608b: $00
    ld a, h                                       ; $608c: $7c
    dec d                                         ; $608d: $15
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    ld d, $16                                     ; $6090: $16 $16
    nop                                           ; $6092: $00
    ld d, d                                       ; $6093: $52
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    ld e, a                                       ; $6096: $5f
    ld bc, $1700                                  ; $6097: $01 $00 $17
    ld [hl], $00                                  ; $609a: $36 $00
    inc de                                        ; $609c: $13
    nop                                           ; $609d: $00
    ld a, h                                       ; $609e: $7c
    ld [hl], c                                    ; $609f: $71
    ld bc, $1b1e                                  ; $60a0: $01 $1e $1b
    inc b                                         ; $60a3: $04
    nop                                           ; $60a4: $00
    daa                                           ; $60a5: $27
    nop                                           ; $60a6: $00
    rrca                                          ; $60a7: $0f
    dec de                                        ; $60a8: $1b
    ld b, $00                                     ; $60a9: $06 $00
    rla                                           ; $60ab: $17
    ld d, $00                                     ; $60ac: $16 $00
    inc de                                        ; $60ae: $13
    nop                                           ; $60af: $00
    ld a, h                                       ; $60b0: $7c
    ld [hl], c                                    ; $60b1: $71
    ld bc, $1b32                                  ; $60b2: $01 $32 $1b
    ld b, $00                                     ; $60b5: $06 $00
    dec d                                         ; $60b7: $15
    ld l, $00                                     ; $60b8: $2e $00
    inc sp                                        ; $60ba: $33
    inc b                                         ; $60bb: $04
    and b                                         ; $60bc: $a0
    dec d                                         ; $60bd: $15
    inc bc                                        ; $60be: $03
    nop                                           ; $60bf: $00
    ld b, d                                       ; $60c0: $42
    nop                                           ; $60c1: $00
    inc d                                         ; $60c2: $14
    ld e, a                                       ; $60c3: $5f
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    ld d, [hl]                                    ; $60c6: $56
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    inc de                                        ; $60c9: $13
    ld bc, $1432                                  ; $60ca: $01 $32 $14
    nop                                           ; $60cd: $00
    ld a, h                                       ; $60ce: $7c
    dec d                                         ; $60cf: $15
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    ld d, $16                                     ; $60d2: $16 $16
    nop                                           ; $60d4: $00
    ld d, d                                       ; $60d5: $52
    nop                                           ; $60d6: $00
    nop                                           ; $60d7: $00
    dec de                                        ; $60d8: $1b
    ld b, $00                                     ; $60d9: $06 $00
    inc de                                        ; $60db: $13
    ld bc, $141e                                  ; $60dc: $01 $1e $14
    nop                                           ; $60df: $00
    ld a, h                                       ; $60e0: $7c
    dec d                                         ; $60e1: $15
    nop                                           ; $60e2: $00
    nop                                           ; $60e3: $00
    ld d, $36                                     ; $60e4: $16 $36
    nop                                           ; $60e6: $00
    ld d, d                                       ; $60e7: $52
    nop                                           ; $60e8: $00
    nop                                           ; $60e9: $00
    dec de                                        ; $60ea: $1b
    ld [bc], a                                    ; $60eb: $02
    nop                                           ; $60ec: $00
    ld e, a                                       ; $60ed: $5f
    ld bc, $1500                                  ; $60ee: $01 $00 $15
    ld d, $00                                     ; $60f1: $16 $00
    inc sp                                        ; $60f3: $33
    inc b                                         ; $60f4: $04
    and c                                         ; $60f5: $a1
    dec d                                         ; $60f6: $15
    ld l, $00                                     ; $60f7: $2e $00
    inc sp                                        ; $60f9: $33
    inc b                                         ; $60fa: $04
    and d                                         ; $60fb: $a2
    rla                                           ; $60fc: $17
    ld [hl], $00                                  ; $60fd: $36 $00
    ld [hl+], a                                   ; $60ff: $22
    ld d, $00                                     ; $6100: $16 $00
    rla                                           ; $6102: $17
    ld d, $00                                     ; $6103: $16 $00
    dec d                                         ; $6105: $15
    ld [bc], a                                    ; $6106: $02
    nop                                           ; $6107: $00
    add hl, de                                    ; $6108: $19
    nop                                           ; $6109: $00
    ld d, b                                       ; $610a: $50
    daa                                           ; $610b: $27
    nop                                           ; $610c: $00
    ld a, [bc]                                    ; $610d: $0a
    rla                                           ; $610e: $17
    ld [hl], $00                                  ; $610f: $36 $00
    ld e, $36                                     ; $6111: $1e $36
    nop                                           ; $6113: $00
    rla                                           ; $6114: $17
    ld d, $00                                     ; $6115: $16 $00
    ld e, $16                                     ; $6117: $1e $16
    nop                                           ; $6119: $00
    rrca                                          ; $611a: $0f
    ld de, $5701                                  ; $611b: $11 $01 $57
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    ld e, a                                       ; $6123: $5f
    ld bc, $0000                                  ; $6124: $01 $00 $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    dec d                                         ; $6129: $15
    dec a                                         ; $612a: $3d
    nop                                           ; $612b: $00
    inc sp                                        ; $612c: $33
    dec b                                         ; $612d: $05
    ld c, l                                       ; $612e: $4d
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    ld e, a                                       ; $6132: $5f
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    add hl, bc                                    ; $6135: $09
    nop                                           ; $6136: $00
    ld h, $05                                     ; $6137: $26 $05
    rlca                                          ; $6139: $07
    nop                                           ; $613a: $00
    ld d, [hl]                                    ; $613b: $56
    nop                                           ; $613c: $00
    nop                                           ; $613d: $00
    ld e, a                                       ; $613e: $5f
    ld bc, $1500                                  ; $613f: $01 $00 $15
    dec a                                         ; $6142: $3d
    nop                                           ; $6143: $00
    inc sp                                        ; $6144: $33
    ld bc, $57cc                                  ; $6145: $01 $cc $57
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    nop                                           ; $614c: $00
    add hl, bc                                    ; $614d: $09
    nop                                           ; $614e: $00
    daa                                           ; $614f: $27
    dec b                                         ; $6150: $05
    rlca                                          ; $6151: $07
    nop                                           ; $6152: $00
    ld d, [hl]                                    ; $6153: $56
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    ld e, a                                       ; $6156: $5f
    ld bc, $1500                                  ; $6157: $01 $00 $15
    dec a                                         ; $615a: $3d
    nop                                           ; $615b: $00
    inc sp                                        ; $615c: $33
    ld bc, $57cc                                  ; $615d: $01 $cc $57
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    add hl, bc                                    ; $6165: $09
    nop                                           ; $6166: $00
    scf                                           ; $6167: $37
    dec b                                         ; $6168: $05
    rlca                                          ; $6169: $07
    nop                                           ; $616a: $00
    ld d, [hl]                                    ; $616b: $56
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    ld e, a                                       ; $616e: $5f
    ld bc, $1500                                  ; $616f: $01 $00 $15
    dec a                                         ; $6172: $3d
    nop                                           ; $6173: $00
    inc sp                                        ; $6174: $33
    ld bc, $57cc                                  ; $6175: $01 $cc $57
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    nop                                           ; $617b: $00
    nop                                           ; $617c: $00
    add hl, bc                                    ; $617d: $09
    nop                                           ; $617e: $00
    add hl, sp                                    ; $617f: $39
    dec b                                         ; $6180: $05
    rlca                                          ; $6181: $07
    nop                                           ; $6182: $00
    ld d, [hl]                                    ; $6183: $56
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    ld e, a                                       ; $6186: $5f
    ld bc, $1500                                  ; $6187: $01 $00 $15
    dec a                                         ; $618a: $3d
    nop                                           ; $618b: $00
    inc sp                                        ; $618c: $33
    ld bc, $57cc                                  ; $618d: $01 $cc $57
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    add hl, bc                                    ; $6195: $09
    nop                                           ; $6196: $00
    ld e, d                                       ; $6197: $5a
    dec b                                         ; $6198: $05
    rlca                                          ; $6199: $07
    nop                                           ; $619a: $00
    ld d, [hl]                                    ; $619b: $56
    nop                                           ; $619c: $00
    nop                                           ; $619d: $00
    ld e, a                                       ; $619e: $5f
    ld bc, $1500                                  ; $619f: $01 $00 $15
    dec a                                         ; $61a2: $3d
    nop                                           ; $61a3: $00
    inc sp                                        ; $61a4: $33
    ld bc, $57cc                                  ; $61a5: $01 $cc $57
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    add hl, bc                                    ; $61ad: $09
    nop                                           ; $61ae: $00
    ld b, c                                       ; $61af: $41
    dec b                                         ; $61b0: $05
    rlca                                          ; $61b1: $07
    nop                                           ; $61b2: $00
    ld d, [hl]                                    ; $61b3: $56
    nop                                           ; $61b4: $00
    nop                                           ; $61b5: $00
    ld e, a                                       ; $61b6: $5f
    ld bc, $1500                                  ; $61b7: $01 $00 $15
    dec a                                         ; $61ba: $3d
    nop                                           ; $61bb: $00
    inc sp                                        ; $61bc: $33
    ld bc, $57cc                                  ; $61bd: $01 $cc $57
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    add hl, bc                                    ; $61c5: $09
    nop                                           ; $61c6: $00
    ld c, b                                       ; $61c7: $48
    dec b                                         ; $61c8: $05
    rlca                                          ; $61c9: $07
    nop                                           ; $61ca: $00
    ld d, [hl]                                    ; $61cb: $56
    nop                                           ; $61cc: $00
    nop                                           ; $61cd: $00
    ld e, a                                       ; $61ce: $5f
    ld bc, $1500                                  ; $61cf: $01 $00 $15
    dec a                                         ; $61d2: $3d
    nop                                           ; $61d3: $00
    inc sp                                        ; $61d4: $33
    ld bc, $57cc                                  ; $61d5: $01 $cc $57
    nop                                           ; $61d8: $00
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    nop                                           ; $61db: $00
    nop                                           ; $61dc: $00
    ld d, [hl]                                    ; $61dd: $56
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    ld e, a                                       ; $61e0: $5f
    ld bc, $2e00                                  ; $61e1: $01 $00 $2e
    dec d                                         ; $61e4: $15
    nop                                           ; $61e5: $00
    ld d, a                                       ; $61e6: $57
    nop                                           ; $61e7: $00
    nop                                           ; $61e8: $00
    ld a, c                                       ; $61e9: $79
    ld [bc], a                                    ; $61ea: $02
    ld [hl-], a                                   ; $61eb: $32
    nop                                           ; $61ec: $00
    nop                                           ; $61ed: $00
    nop                                           ; $61ee: $00
    ld e, a                                       ; $61ef: $5f
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    add hl, bc                                    ; $61f2: $09
    nop                                           ; $61f3: $00
    ld h, $05                                     ; $61f4: $26 $05
    ld c, $00                                     ; $61f6: $0e $00
    ld d, [hl]                                    ; $61f8: $56
    nop                                           ; $61f9: $00
    nop                                           ; $61fa: $00
    rla                                           ; $61fb: $17
    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    inc e                                         ; $61fe: $1c
    rla                                           ; $61ff: $17
    ld a, [bc]                                    ; $6200: $0a
    ld e, a                                       ; $6201: $5f
    ld bc, $0900                                  ; $6202: $01 $00 $09
    ld [bc], a                                    ; $6205: $02
    ld bc, $0505                                  ; $6206: $01 $05 $05
    nop                                           ; $6209: $00
    dec d                                         ; $620a: $15
    nop                                           ; $620b: $00
    nop                                           ; $620c: $00
    ld b, d                                       ; $620d: $42
    nop                                           ; $620e: $00
    ld bc, $0057                                  ; $620f: $01 $57 $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    rrca                                          ; $6216: $0f
    ld [bc], a                                    ; $6217: $02
    ld bc, $0057                                  ; $6218: $01 $57 $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    add hl, bc                                    ; $621f: $09
    nop                                           ; $6220: $00
    daa                                           ; $6221: $27
    dec b                                         ; $6222: $05
    ld c, $00                                     ; $6223: $0e $00
    ld d, [hl]                                    ; $6225: $56
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    rla                                           ; $6228: $17
    nop                                           ; $6229: $00
    nop                                           ; $622a: $00
    inc e                                         ; $622b: $1c
    rla                                           ; $622c: $17
    ld a, [bc]                                    ; $622d: $0a
    ld e, a                                       ; $622e: $5f
    ld bc, $0900                                  ; $622f: $01 $00 $09
    ld [bc], a                                    ; $6232: $02
    ld bc, $0505                                  ; $6233: $01 $05 $05
    nop                                           ; $6236: $00
    dec d                                         ; $6237: $15
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    ld b, d                                       ; $623a: $42
    nop                                           ; $623b: $00
    ld bc, $0057                                  ; $623c: $01 $57 $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    rrca                                          ; $6243: $0f
    ld [bc], a                                    ; $6244: $02
    ld bc, $0057                                  ; $6245: $01 $57 $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    nop                                           ; $624b: $00
    ld e, a                                       ; $624c: $5f
    ld bc, $0000                                  ; $624d: $01 $00 $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00

    db $01, $00, $00, $09, $00, $51, $05, $02, $00

    rrca                                          ; $625b: $0f
    ld a, [de]                                    ; $625c: $1a
    nop                                           ; $625d: $00

    db $09, $00, $17, $05, $18, $00

    ld h, b                                       ; $6264: $60
    ld [bc], a                                    ; $6265: $02
    nop                                           ; $6266: $00
    add hl, bc                                    ; $6267: $09
    ld [bc], a                                    ; $6268: $02
    nop                                           ; $6269: $00
    dec b                                         ; $626a: $05
    ld b, $00                                     ; $626b: $06 $00
    dec d                                         ; $626d: $15
    inc d                                         ; $626e: $14
    nop                                           ; $626f: $00
    inc sp                                        ; $6270: $33
    nop                                           ; $6271: $00
    halt                                          ; $6272: $76
    dec d                                         ; $6273: $15
    inc d                                         ; $6274: $14
    nop                                           ; $6275: $00
    inc sp                                        ; $6276: $33
    nop                                           ; $6277: $00
    ld a, c                                       ; $6278: $79
    inc bc                                        ; $6279: $03
    rrca                                          ; $627a: $0f
    nop                                           ; $627b: $00
    dec d                                         ; $627c: $15
    inc d                                         ; $627d: $14
    nop                                           ; $627e: $00
    inc sp                                        ; $627f: $33
    nop                                           ; $6280: $00
    ld a, d                                       ; $6281: $7a
    dec d                                         ; $6282: $15
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    inc sp                                        ; $6285: $33
    nop                                           ; $6286: $00
    ld a, l                                       ; $6287: $7d
    ld d, [hl]                                    ; $6288: $56
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    rla                                           ; $628b: $17
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    ld hl, $0050                                  ; $628e: $21 $50 $00
    daa                                           ; $6291: $27
    nop                                           ; $6292: $00
    jr z, jr_00c_6313                             ; $6293: $28 $7e

    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    dec de                                        ; $6297: $1b
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    ld h, c                                       ; $629a: $61
    ld bc, $1500                                  ; $629b: $01 $00 $15
    inc d                                         ; $629e: $14
    nop                                           ; $629f: $00
    inc sp                                        ; $62a0: $33
    nop                                           ; $62a1: $00
    ld a, [hl]                                    ; $62a2: $7e
    ld d, a                                       ; $62a3: $57
    nop                                           ; $62a4: $00
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00

    db $09, $00, $18, $05, $19, $00

    ld a, d                                       ; $62af: $7a
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    ld h, b                                       ; $62b2: $60
    ld [bc], a                                    ; $62b3: $02
    nop                                           ; $62b4: $00
    add hl, bc                                    ; $62b5: $09
    ld [bc], a                                    ; $62b6: $02
    nop                                           ; $62b7: $00
    dec b                                         ; $62b8: $05
    ld b, $00                                     ; $62b9: $06 $00
    dec d                                         ; $62bb: $15
    inc d                                         ; $62bc: $14
    nop                                           ; $62bd: $00
    inc sp                                        ; $62be: $33
    nop                                           ; $62bf: $00
    halt                                          ; $62c0: $76
    dec d                                         ; $62c1: $15
    inc d                                         ; $62c2: $14
    nop                                           ; $62c3: $00
    inc sp                                        ; $62c4: $33
    nop                                           ; $62c5: $00
    ld a, c                                       ; $62c6: $79
    inc bc                                        ; $62c7: $03
    rrca                                          ; $62c8: $0f
    nop                                           ; $62c9: $00
    dec d                                         ; $62ca: $15
    inc d                                         ; $62cb: $14
    nop                                           ; $62cc: $00
    inc sp                                        ; $62cd: $33
    nop                                           ; $62ce: $00
    ld a, d                                       ; $62cf: $7a
    dec d                                         ; $62d0: $15
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    inc sp                                        ; $62d3: $33
    nop                                           ; $62d4: $00
    ld a, l                                       ; $62d5: $7d
    ld d, [hl]                                    ; $62d6: $56
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    rla                                           ; $62d9: $17
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    ld hl, $0050                                  ; $62dc: $21 $50 $00
    daa                                           ; $62df: $27
    nop                                           ; $62e0: $00
    jr z, jr_00c_6361                             ; $62e1: $28 $7e

    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    dec de                                        ; $62e5: $1b
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    ld h, c                                       ; $62e8: $61
    ld bc, $1500                                  ; $62e9: $01 $00 $15
    inc d                                         ; $62ec: $14
    nop                                           ; $62ed: $00
    inc sp                                        ; $62ee: $33
    nop                                           ; $62ef: $00
    ld a, [hl]                                    ; $62f0: $7e
    ld d, a                                       ; $62f1: $57
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00

    db $09, $00, $16, $05, $18, $00

    ld h, b                                       ; $62fd: $60
    ld [bc], a                                    ; $62fe: $02
    nop                                           ; $62ff: $00
    add hl, bc                                    ; $6300: $09
    ld [bc], a                                    ; $6301: $02
    nop                                           ; $6302: $00
    dec b                                         ; $6303: $05
    ld b, $00                                     ; $6304: $06 $00
    dec d                                         ; $6306: $15
    inc d                                         ; $6307: $14
    nop                                           ; $6308: $00
    inc sp                                        ; $6309: $33
    nop                                           ; $630a: $00
    halt                                          ; $630b: $76
    dec d                                         ; $630c: $15
    inc d                                         ; $630d: $14
    nop                                           ; $630e: $00
    inc sp                                        ; $630f: $33
    nop                                           ; $6310: $00
    ld a, c                                       ; $6311: $79
    inc bc                                        ; $6312: $03

jr_00c_6313:
    rrca                                          ; $6313: $0f
    nop                                           ; $6314: $00
    dec d                                         ; $6315: $15
    inc d                                         ; $6316: $14
    nop                                           ; $6317: $00
    inc sp                                        ; $6318: $33
    nop                                           ; $6319: $00
    ld a, d                                       ; $631a: $7a
    dec d                                         ; $631b: $15
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    inc sp                                        ; $631e: $33
    nop                                           ; $631f: $00
    ld a, l                                       ; $6320: $7d
    ld d, [hl]                                    ; $6321: $56
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    rla                                           ; $6324: $17
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    ld hl, $0050                                  ; $6327: $21 $50 $00
    daa                                           ; $632a: $27
    nop                                           ; $632b: $00
    jr z, jr_00c_63ac                             ; $632c: $28 $7e

    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    dec de                                        ; $6330: $1b
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    ld h, c                                       ; $6333: $61
    ld bc, $1500                                  ; $6334: $01 $00 $15
    inc d                                         ; $6337: $14
    nop                                           ; $6338: $00
    inc sp                                        ; $6339: $33
    nop                                           ; $633a: $00
    ld a, [hl]                                    ; $633b: $7e
    ld d, a                                       ; $633c: $57
    nop                                           ; $633d: $00
    nop                                           ; $633e: $00
    nop                                           ; $633f: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00

    db $09, $00, $5e, $05, $18, $00

    ld h, b                                       ; $6348: $60
    ld [bc], a                                    ; $6349: $02
    nop                                           ; $634a: $00
    add hl, bc                                    ; $634b: $09
    ld [bc], a                                    ; $634c: $02
    nop                                           ; $634d: $00
    dec b                                         ; $634e: $05
    ld b, $00                                     ; $634f: $06 $00
    dec d                                         ; $6351: $15
    inc d                                         ; $6352: $14
    nop                                           ; $6353: $00
    inc sp                                        ; $6354: $33
    nop                                           ; $6355: $00
    halt                                          ; $6356: $76
    dec d                                         ; $6357: $15
    inc d                                         ; $6358: $14
    nop                                           ; $6359: $00
    inc sp                                        ; $635a: $33
    nop                                           ; $635b: $00
    ld a, c                                       ; $635c: $79
    inc bc                                        ; $635d: $03
    rrca                                          ; $635e: $0f
    nop                                           ; $635f: $00
    dec d                                         ; $6360: $15

jr_00c_6361:
    inc d                                         ; $6361: $14
    nop                                           ; $6362: $00
    inc sp                                        ; $6363: $33
    nop                                           ; $6364: $00
    ld a, d                                       ; $6365: $7a
    dec d                                         ; $6366: $15
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    inc sp                                        ; $6369: $33
    nop                                           ; $636a: $00
    ld a, l                                       ; $636b: $7d
    ld d, [hl]                                    ; $636c: $56
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    rla                                           ; $636f: $17
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    ld hl, $0050                                  ; $6372: $21 $50 $00
    daa                                           ; $6375: $27
    nop                                           ; $6376: $00
    jr z, jr_00c_63f7                             ; $6377: $28 $7e

    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    dec de                                        ; $637b: $1b
    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    ld h, c                                       ; $637e: $61
    ld bc, $1500                                  ; $637f: $01 $00 $15
    inc d                                         ; $6382: $14
    nop                                           ; $6383: $00
    inc sp                                        ; $6384: $33
    nop                                           ; $6385: $00
    ld a, [hl]                                    ; $6386: $7e
    ld d, a                                       ; $6387: $57
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00

    db $09, $56, $01, $05, $1a, $00

    ld h, b                                       ; $6393: $60
    ld [bc], a                                    ; $6394: $02
    nop                                           ; $6395: $00
    add hl, bc                                    ; $6396: $09
    ld [bc], a                                    ; $6397: $02
    nop                                           ; $6398: $00
    dec b                                         ; $6399: $05
    ld b, $00                                     ; $639a: $06 $00
    dec d                                         ; $639c: $15
    inc d                                         ; $639d: $14
    nop                                           ; $639e: $00
    inc sp                                        ; $639f: $33
    nop                                           ; $63a0: $00
    halt                                          ; $63a1: $76
    dec d                                         ; $63a2: $15
    inc d                                         ; $63a3: $14
    nop                                           ; $63a4: $00
    inc sp                                        ; $63a5: $33
    nop                                           ; $63a6: $00
    ld a, c                                       ; $63a7: $79
    inc bc                                        ; $63a8: $03
    stop                                          ; $63a9: $10 $00
    dec d                                         ; $63ab: $15

jr_00c_63ac:
    inc d                                         ; $63ac: $14
    nop                                           ; $63ad: $00
    inc sp                                        ; $63ae: $33
    nop                                           ; $63af: $00
    ld a, d                                       ; $63b0: $7a
    dec d                                         ; $63b1: $15
    ld e, c                                       ; $63b2: $59
    nop                                           ; $63b3: $00
    inc sp                                        ; $63b4: $33
    nop                                           ; $63b5: $00
    ld a, l                                       ; $63b6: $7d
    ld d, [hl]                                    ; $63b7: $56
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    rla                                           ; $63ba: $17
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    ld l, a                                       ; $63bd: $6f
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    ld hl, $0024                                  ; $63c0: $21 $24 $00
    daa                                           ; $63c3: $27
    nop                                           ; $63c4: $00
    jr z, @+$72                                   ; $63c5: $28 $70

    nop                                           ; $63c7: $00
    nop                                           ; $63c8: $00
    dec de                                        ; $63c9: $1b
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    ld h, c                                       ; $63cc: $61
    ld bc, $1500                                  ; $63cd: $01 $00 $15
    inc d                                         ; $63d0: $14
    nop                                           ; $63d1: $00
    inc sp                                        ; $63d2: $33
    nop                                           ; $63d3: $00
    ld a, [hl]                                    ; $63d4: $7e
    ld d, a                                       ; $63d5: $57
    nop                                           ; $63d6: $00
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00
    nop                                           ; $63da: $00
    inc bc                                        ; $63db: $03
    ld [hl+], a                                   ; $63dc: $22
    nop                                           ; $63dd: $00

    db $60, $02, $00, $09, $02, $00, $05, $0a, $00

    dec d                                         ; $63e7: $15
    inc d                                         ; $63e8: $14
    nop                                           ; $63e9: $00
    inc sp                                        ; $63ea: $33
    nop                                           ; $63eb: $00
    halt                                          ; $63ec: $76
    dec d                                         ; $63ed: $15
    ld e, c                                       ; $63ee: $59
    nop                                           ; $63ef: $00
    inc sp                                        ; $63f0: $33
    nop                                           ; $63f1: $00
    ld [hl], a                                    ; $63f2: $77
    dec d                                         ; $63f3: $15
    inc d                                         ; $63f4: $14
    nop                                           ; $63f5: $00
    inc sp                                        ; $63f6: $33

jr_00c_63f7:
    nop                                           ; $63f7: $00
    ld a, b                                       ; $63f8: $78
    dec d                                         ; $63f9: $15
    inc d                                         ; $63fa: $14
    nop                                           ; $63fb: $00
    inc sp                                        ; $63fc: $33
    nop                                           ; $63fd: $00
    ld a, c                                       ; $63fe: $79
    inc bc                                        ; $63ff: $03
    inc d                                         ; $6400: $14
    nop                                           ; $6401: $00

    db $15, $59, $00, $33, $00, $4b, $15, $14, $00, $33, $00, $7a, $15, $59, $00, $33
    db $00, $7b, $15, $14, $00, $33, $00, $7c, $56, $00, $00, $17, $00, $00, $6f, $00
    db $00, $21, $23, $00, $27, $00, $76, $70, $00, $00, $1b, $00, $00, $61, $01, $00
    db $15, $14, $00, $33, $00, $7e, $57, $00, $00, $0f, $56, $01, $00, $00, $00

    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    rlca                                          ; $6444: $07
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    xor [hl]                                      ; $6448: $ae
    ld bc, $016e                                  ; $6449: $01 $6e $01
    db $ec                                        ; $644c: $ec
    ld bc, $02fe                                  ; $644d: $01 $fe $02
    db $10                                        ; $6450: $10
    ld [bc], a                                    ; $6451: $02
    ld sp, $0009                                  ; $6452: $31 $09 $00
    ld d, e                                       ; $6455: $53
    dec b                                         ; $6456: $05
    jr c, jr_00c_6459                             ; $6457: $38 $00

jr_00c_6459:
    add hl, bc                                    ; $6459: $09
    dec hl                                        ; $645a: $2b
    ld bc, $0205                                  ; $645b: $01 $05 $02
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    add hl, bc                                    ; $6462: $09
    dec d                                         ; $6463: $15
    ld bc, $0405                                  ; $6464: $01 $05 $04
    nop                                           ; $6467: $00
    dec d                                         ; $6468: $15
    inc l                                         ; $6469: $2c
    nop                                           ; $646a: $00
    inc sp                                        ; $646b: $33
    inc bc                                        ; $646c: $03
    cp h                                          ; $646d: $bc
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    nop                                           ; $6470: $00
    ld d, [hl]                                    ; $6471: $56
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    dec d                                         ; $6474: $15
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    inc sp                                        ; $6477: $33
    ld [bc], a                                    ; $6478: $02
    cp $17                                        ; $6479: $fe $17
    jr c, jr_00c_647d                             ; $647b: $38 $00

jr_00c_647d:
    inc e                                         ; $647d: $1c
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    rla                                           ; $6480: $17
    scf                                           ; $6481: $37
    nop                                           ; $6482: $00
    dec de                                        ; $6483: $1b
    ld b, $00                                     ; $6484: $06 $00
    dec d                                         ; $6486: $15
    add hl, de                                    ; $6487: $19
    nop                                           ; $6488: $00
    inc sp                                        ; $6489: $33
    ld [bc], a                                    ; $648a: $02
    rst $38                                       ; $648b: $ff
    dec d                                         ; $648c: $15
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    inc sp                                        ; $648f: $33
    inc bc                                        ; $6490: $03
    nop                                           ; $6491: $00
    dec d                                         ; $6492: $15
    add hl, de                                    ; $6493: $19
    nop                                           ; $6494: $00
    inc sp                                        ; $6495: $33
    inc bc                                        ; $6496: $03
    ld bc, $001b                                  ; $6497: $01 $1b $00
    nop                                           ; $649a: $00
    rla                                           ; $649b: $17
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    dec de                                        ; $649e: $1b
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    dec d                                         ; $64a1: $15
    ld c, b                                       ; $64a2: $48
    nop                                           ; $64a3: $00
    inc sp                                        ; $64a4: $33
    inc bc                                        ; $64a5: $03
    ld [bc], a                                    ; $64a6: $02
    dec d                                         ; $64a7: $15
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    inc sp                                        ; $64aa: $33
    inc bc                                        ; $64ab: $03
    inc bc                                        ; $64ac: $03
    rla                                           ; $64ad: $17
    jr c, jr_00c_64b0                             ; $64ae: $38 $00

jr_00c_64b0:
    dec de                                        ; $64b0: $1b
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    dec d                                         ; $64b3: $15
    add hl, de                                    ; $64b4: $19
    nop                                           ; $64b5: $00
    inc sp                                        ; $64b6: $33
    inc bc                                        ; $64b7: $03
    inc b                                         ; $64b8: $04
    dec d                                         ; $64b9: $15
    ld c, b                                       ; $64ba: $48
    nop                                           ; $64bb: $00
    inc sp                                        ; $64bc: $33
    inc bc                                        ; $64bd: $03
    dec b                                         ; $64be: $05
    dec d                                         ; $64bf: $15
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    inc sp                                        ; $64c2: $33
    inc bc                                        ; $64c3: $03
    ld b, $15                                     ; $64c4: $06 $15
    ld c, b                                       ; $64c6: $48
    nop                                           ; $64c7: $00
    inc sp                                        ; $64c8: $33
    inc bc                                        ; $64c9: $03
    rlca                                          ; $64ca: $07
    dec d                                         ; $64cb: $15
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    inc sp                                        ; $64ce: $33
    inc bc                                        ; $64cf: $03
    ld [$4815], sp                                ; $64d0: $08 $15 $48
    nop                                           ; $64d3: $00
    inc sp                                        ; $64d4: $33
    inc bc                                        ; $64d5: $03
    add hl, bc                                    ; $64d6: $09
    dec d                                         ; $64d7: $15
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    inc sp                                        ; $64da: $33
    inc bc                                        ; $64db: $03
    ld a, [bc]                                    ; $64dc: $0a
    dec d                                         ; $64dd: $15
    ld c, b                                       ; $64de: $48
    nop                                           ; $64df: $00
    inc sp                                        ; $64e0: $33
    inc bc                                        ; $64e1: $03
    dec bc                                        ; $64e2: $0b
    dec d                                         ; $64e3: $15
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    inc sp                                        ; $64e6: $33
    inc bc                                        ; $64e7: $03
    inc c                                         ; $64e8: $0c
    dec d                                         ; $64e9: $15
    ld c, b                                       ; $64ea: $48
    nop                                           ; $64eb: $00
    inc sp                                        ; $64ec: $33
    inc bc                                        ; $64ed: $03
    dec c                                         ; $64ee: $0d
    jr c, jr_00c_654a                             ; $64ef: $38 $59

    nop                                           ; $64f1: $00
    rrca                                          ; $64f2: $0f
    ld a, [bc]                                    ; $64f3: $0a
    ld bc, $0057                                  ; $64f4: $01 $57 $00
    nop                                           ; $64f7: $00
    rrca                                          ; $64f8: $0f
    dec d                                         ; $64f9: $15
    ld bc, $0000                                  ; $64fa: $01 $00 $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    ld e, a                                       ; $6501: $5f
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    add hl, bc                                    ; $6504: $09
    nop                                           ; $6505: $00
    ld d, e                                       ; $6506: $53
    dec b                                         ; $6507: $05
    ld sp, $0900                                  ; $6508: $31 $00 $09
    dec hl                                        ; $650b: $2b
    ld bc, $0805                                  ; $650c: $01 $05 $08
    nop                                           ; $650f: $00
    inc de                                        ; $6510: $13
    nop                                           ; $6511: $00
    sub e                                         ; $6512: $93
    inc d                                         ; $6513: $14
    nop                                           ; $6514: $00
    ld b, [hl]                                    ; $6515: $46
    dec d                                         ; $6516: $15
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    ld d, $31                                     ; $6519: $16 $31
    nop                                           ; $651b: $00
    ld d, d                                       ; $651c: $52
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    dec de                                        ; $651f: $1b
    inc b                                         ; $6520: $04
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    inc de                                        ; $6525: $13
    nop                                           ; $6526: $00
    sub e                                         ; $6527: $93
    inc d                                         ; $6528: $14
    nop                                           ; $6529: $00
    ld b, [hl]                                    ; $652a: $46
    dec d                                         ; $652b: $15
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    ld d, $31                                     ; $652e: $16 $31
    nop                                           ; $6530: $00
    ld d, d                                       ; $6531: $52
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    dec de                                        ; $6534: $1b
    inc b                                         ; $6535: $04
    nop                                           ; $6536: $00
    inc de                                        ; $6537: $13
    nop                                           ; $6538: $00
    ld l, l                                       ; $6539: $6d
    inc d                                         ; $653a: $14
    nop                                           ; $653b: $00
    ld e, c                                       ; $653c: $59
    dec d                                         ; $653d: $15
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    ld d, $38                                     ; $6540: $16 $38
    nop                                           ; $6542: $00
    ld d, d                                       ; $6543: $52
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    dec de                                        ; $6546: $1b
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    inc de                                        ; $6549: $13

jr_00c_654a:
    nop                                           ; $654a: $00
    add a                                         ; $654b: $87
    inc d                                         ; $654c: $14
    nop                                           ; $654d: $00
    ld l, h                                       ; $654e: $6c
    dec d                                         ; $654f: $15
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    ld d, $37                                     ; $6552: $16 $37
    nop                                           ; $6554: $00
    ld d, d                                       ; $6555: $52
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    dec de                                        ; $6558: $1b
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    inc de                                        ; $655b: $13
    nop                                           ; $655c: $00
    and c                                         ; $655d: $a1
    inc d                                         ; $655e: $14
    nop                                           ; $655f: $00
    ld e, c                                       ; $6560: $59
    dec d                                         ; $6561: $15
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    ld d, $39                                     ; $6564: $16 $39
    nop                                           ; $6566: $00
    ld d, d                                       ; $6567: $52
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    dec de                                        ; $656a: $1b
    nop                                           ; $656b: $00
    nop                                           ; $656c: $00
    inc de                                        ; $656d: $13
    nop                                           ; $656e: $00
    xor a                                         ; $656f: $af
    inc d                                         ; $6570: $14
    nop                                           ; $6571: $00
    rst $20                                       ; $6572: $e7
    dec d                                         ; $6573: $15
    ld b, $00                                     ; $6574: $06 $00
    ld d, $50                                     ; $6576: $16 $50
    nop                                           ; $6578: $00
    ld [hl], l                                    ; $6579: $75
    inc bc                                        ; $657a: $03
    nop                                           ; $657b: $00
    ld d, d                                       ; $657c: $52
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    inc de                                        ; $657f: $13
    nop                                           ; $6580: $00
    ld [hl], a                                    ; $6581: $77
    inc d                                         ; $6582: $14
    nop                                           ; $6583: $00
    sbc [hl]                                      ; $6584: $9e
    dec d                                         ; $6585: $15
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    ld d, $50                                     ; $6588: $16 $50
    nop                                           ; $658a: $00
    ld [hl], l                                    ; $658b: $75
    inc b                                         ; $658c: $04
    nop                                           ; $658d: $00
    ld d, d                                       ; $658e: $52
    nop                                           ; $658f: $00
    nop                                           ; $6590: $00
    ld a, d                                       ; $6591: $7a
    ld bc, $5f00                                  ; $6592: $01 $00 $5f
    ld bc, $0000                                  ; $6595: $01 $00 $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    add hl, bc                                    ; $659a: $09
    nop                                           ; $659b: $00
    inc e                                         ; $659c: $1c
    dec b                                         ; $659d: $05
    ld a, [bc]                                    ; $659e: $0a
    nop                                           ; $659f: $00
    ld e, l                                       ; $65a0: $5d
    nop                                           ; $65a1: $00
    nop                                           ; $65a2: $00
    inc de                                        ; $65a3: $13
    nop                                           ; $65a4: $00
    sub e                                         ; $65a5: $93
    inc d                                         ; $65a6: $14
    nop                                           ; $65a7: $00
    ld b, c                                       ; $65a8: $41
    dec d                                         ; $65a9: $15
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    ld d, $31                                     ; $65ac: $16 $31
    nop                                           ; $65ae: $00
    ld d, d                                       ; $65af: $52
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    dec de                                        ; $65b2: $1b
    inc b                                         ; $65b3: $04
    nop                                           ; $65b4: $00
    ld e, a                                       ; $65b5: $5f
    ld bc, $0000                                  ; $65b6: $01 $00 $00
    nop                                           ; $65b9: $00
    nop                                           ; $65ba: $00
    ld e, a                                       ; $65bb: $5f
    ld bc, $0000                                  ; $65bc: $01 $00 $00
    nop                                           ; $65bf: $00
    nop                                           ; $65c0: $00
    add hl, bc                                    ; $65c1: $09
    nop                                           ; $65c2: $00
    ld d, e                                       ; $65c3: $53
    dec b                                         ; $65c4: $05
    inc b                                         ; $65c5: $04
    nop                                           ; $65c6: $00
    dec d                                         ; $65c7: $15
    ld c, b                                       ; $65c8: $48
    nop                                           ; $65c9: $00
    inc sp                                        ; $65ca: $33
    inc bc                                        ; $65cb: $03
    ld d, d                                       ; $65cc: $52
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    nop                                           ; $65cf: $00
    add hl, bc                                    ; $65d0: $09
    nop                                           ; $65d1: $00
    inc e                                         ; $65d2: $1c
    inc b                                         ; $65d3: $04
    ld [bc], a                                    ; $65d4: $02
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    ld d, [hl]                                    ; $65d9: $56
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    dec d                                         ; $65dc: $15
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    inc sp                                        ; $65df: $33
    inc bc                                        ; $65e0: $03
    ld c, h                                       ; $65e1: $4c
    dec d                                         ; $65e2: $15
    ld c, b                                       ; $65e3: $48
    nop                                           ; $65e4: $00
    inc sp                                        ; $65e5: $33
    inc bc                                        ; $65e6: $03
    ld c, l                                       ; $65e7: $4d
    dec d                                         ; $65e8: $15
    nop                                           ; $65e9: $00
    nop                                           ; $65ea: $00
    inc sp                                        ; $65eb: $33
    inc bc                                        ; $65ec: $03
    ld c, [hl]                                    ; $65ed: $4e
    dec a                                         ; $65ee: $3d
    ld h, c                                       ; $65ef: $61
    nop                                           ; $65f0: $00
    dec d                                         ; $65f1: $15
    ld c, b                                       ; $65f2: $48
    nop                                           ; $65f3: $00
    inc sp                                        ; $65f4: $33
    inc bc                                        ; $65f5: $03
    ld c, a                                       ; $65f6: $4f
    inc a                                         ; $65f7: $3c
    ld h, c                                       ; $65f8: $61
    nop                                           ; $65f9: $00
    dec d                                         ; $65fa: $15
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    inc sp                                        ; $65fd: $33
    inc bc                                        ; $65fe: $03
    ld d, b                                       ; $65ff: $50
    dec d                                         ; $6600: $15
    ld c, b                                       ; $6601: $48
    nop                                           ; $6602: $00
    inc sp                                        ; $6603: $33
    inc bc                                        ; $6604: $03
    ld d, c                                       ; $6605: $51
    rrca                                          ; $6606: $0f
    ld d, e                                       ; $6607: $53
    ld bc, $2b0f                                  ; $6608: $01 $0f $2b
    ld bc, $0a2c                                  ; $660b: $01 $2c $0a
    inc bc                                        ; $660e: $03
    ld de, $0135                                  ; $660f: $11 $35 $01
    add hl, bc                                    ; $6612: $09
    dec [hl]                                      ; $6613: $35
    ld b, $05                                     ; $6614: $06 $05
    dec bc                                        ; $6616: $0b
    nop                                           ; $6617: $00
    rla                                           ; $6618: $17
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    ld e, e                                       ; $661b: $5b
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    ld [hl], $00                                  ; $661e: $36 $00
    nop                                           ; $6620: $00
    ld e, l                                       ; $6621: $5d
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    ld h, d                                       ; $6624: $62
    dec h                                         ; $6625: $25
    nop                                           ; $6626: $00
    add hl, sp                                    ; $6627: $39
    inc h                                         ; $6628: $24
    ld bc, $4815                                  ; $6629: $01 $15 $48
    nop                                           ; $662c: $00
    inc sp                                        ; $662d: $33
    inc bc                                        ; $662e: $03
    jp nz, $5628                                  ; $662f: $c2 $28 $56

    nop                                           ; $6632: $00
    inc bc                                        ; $6633: $03
    ld [bc], a                                    ; $6634: $02
    nop                                           ; $6635: $00
    ld h, d                                       ; $6636: $62
    ld d, e                                       ; $6637: $53
    nop                                           ; $6638: $00
    ld d, a                                       ; $6639: $57
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    add hl, bc                                    ; $663f: $09
    nop                                           ; $6640: $00
    ld d, e                                       ; $6641: $53
    dec b                                         ; $6642: $05
    inc b                                         ; $6643: $04
    nop                                           ; $6644: $00
    dec d                                         ; $6645: $15
    ld c, [hl]                                    ; $6646: $4e
    nop                                           ; $6647: $00
    inc sp                                        ; $6648: $33
    inc bc                                        ; $6649: $03
    ld d, e                                       ; $664a: $53
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    add hl, bc                                    ; $6651: $09
    nop                                           ; $6652: $00
    ld d, e                                       ; $6653: $53
    dec b                                         ; $6654: $05
    inc b                                         ; $6655: $04
    nop                                           ; $6656: $00
    dec d                                         ; $6657: $15
    ld d, h                                       ; $6658: $54
    nop                                           ; $6659: $00
    inc sp                                        ; $665a: $33
    inc bc                                        ; $665b: $03
    ld d, h                                       ; $665c: $54
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    add hl, bc                                    ; $6663: $09
    nop                                           ; $6664: $00
    ld d, e                                       ; $6665: $53
    inc b                                         ; $6666: $04
    ld [bc], a                                    ; $6667: $02
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    add hl, bc                                    ; $666c: $09
    dec hl                                        ; $666d: $2b
    ld bc, $0205                                  ; $666e: $01 $05 $02
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    dec d                                         ; $6675: $15
    dec d                                         ; $6676: $15
    nop                                           ; $6677: $00
    inc sp                                        ; $6678: $33
    inc bc                                        ; $6679: $03
    ld c, h                                       ; $667a: $4c
    dec d                                         ; $667b: $15
    ld c, b                                       ; $667c: $48
    nop                                           ; $667d: $00
    inc sp                                        ; $667e: $33
    inc bc                                        ; $667f: $03
    ld d, d                                       ; $6680: $52
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    add hl, bc                                    ; $6684: $09
    nop                                           ; $6685: $00
    ld d, e                                       ; $6686: $53
    inc b                                         ; $6687: $04
    ld [bc], a                                    ; $6688: $02
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    add hl, bc                                    ; $668d: $09
    dec hl                                        ; $668e: $2b
    ld bc, $0205                                  ; $668f: $01 $05 $02
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    dec d                                         ; $6696: $15
    add hl, de                                    ; $6697: $19
    nop                                           ; $6698: $00
    inc sp                                        ; $6699: $33
    inc bc                                        ; $669a: $03
    or h                                          ; $669b: $b4
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    ld [bc], a                                    ; $669f: $02
    nop                                           ; $66a0: $00
    nop                                           ; $66a1: $00
    ld [bc], a                                    ; $66a2: $02
    inc [hl]                                      ; $66a3: $34
    ld e, a                                       ; $66a4: $5f
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    add hl, bc                                    ; $66a7: $09
    nop                                           ; $66a8: $00
    db $10                                        ; $66a9: $10
    dec b                                         ; $66aa: $05
    jr jr_00c_66ad                                ; $66ab: $18 $00

jr_00c_66ad:
    add hl, bc                                    ; $66ad: $09
    inc d                                         ; $66ae: $14
    ld bc, $0905                                  ; $66af: $01 $05 $09
    nop                                           ; $66b2: $00
    ld d, [hl]                                    ; $66b3: $56
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    rla                                           ; $66b6: $17
    nop                                           ; $66b7: $00
    nop                                           ; $66b8: $00
    dec de                                        ; $66b9: $1b
    nop                                           ; $66ba: $00
    nop                                           ; $66bb: $00
    ld e, a                                       ; $66bc: $5f
    ld bc, $1500                                  ; $66bd: $01 $00 $15
    ld b, h                                       ; $66c0: $44
    nop                                           ; $66c1: $00
    inc sp                                        ; $66c2: $33
    ld [bc], a                                    ; $66c3: $02
    add h                                         ; $66c4: $84
    ld d, a                                       ; $66c5: $57
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    nop                                           ; $66c8: $00
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    ld d, [hl]                                    ; $66cb: $56
    nop                                           ; $66cc: $00
    nop                                           ; $66cd: $00
    rla                                           ; $66ce: $17
    nop                                           ; $66cf: $00
    nop                                           ; $66d0: $00
    dec de                                        ; $66d1: $1b
    nop                                           ; $66d2: $00
    nop                                           ; $66d3: $00
    ld e, a                                       ; $66d4: $5f
    ld bc, $1500                                  ; $66d5: $01 $00 $15
    ld b, h                                       ; $66d8: $44
    nop                                           ; $66d9: $00
    inc sp                                        ; $66da: $33
    ld [bc], a                                    ; $66db: $02
    add c                                         ; $66dc: $81
    dec d                                         ; $66dd: $15
    nop                                           ; $66de: $00
    nop                                           ; $66df: $00
    inc sp                                        ; $66e0: $33
    ld [bc], a                                    ; $66e1: $02
    add d                                         ; $66e2: $82
    dec d                                         ; $66e3: $15
    ld b, h                                       ; $66e4: $44
    nop                                           ; $66e5: $00
    inc sp                                        ; $66e6: $33
    ld [bc], a                                    ; $66e7: $02
    add e                                         ; $66e8: $83
    rrca                                          ; $66e9: $0f
    inc d                                         ; $66ea: $14
    ld bc, $0057                                  ; $66eb: $01 $57 $00
    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    add hl, bc                                    ; $66f2: $09
    nop                                           ; $66f3: $00
    ld de, $2805                                  ; $66f4: $11 $05 $28
    nop                                           ; $66f7: $00
    add hl, bc                                    ; $66f8: $09
    dec c                                         ; $66f9: $0d
    ld bc, $1805                                  ; $66fa: $01 $05 $18
    nop                                           ; $66fd: $00
    ld d, [hl]                                    ; $66fe: $56
    nop                                           ; $66ff: $00
    nop                                           ; $6700: $00
    rla                                           ; $6701: $17
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    dec de                                        ; $6704: $1b
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    ld e, a                                       ; $6707: $5f
    ld bc, $0900                                  ; $6708: $01 $00 $09
    dec b                                         ; $670b: $05
    nop                                           ; $670c: $00
    dec b                                         ; $670d: $05
    ld a, [bc]                                    ; $670e: $0a
    nop                                           ; $670f: $00
    ld h, c                                       ; $6710: $61
    ld bc, $1500                                  ; $6711: $01 $00 $15
    ld b, h                                       ; $6714: $44
    nop                                           ; $6715: $00
    inc sp                                        ; $6716: $33
    ld [bc], a                                    ; $6717: $02
    ld h, e                                       ; $6718: $63
    dec d                                         ; $6719: $15
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    inc sp                                        ; $671c: $33
    ld [bc], a                                    ; $671d: $02
    ld h, h                                       ; $671e: $64
    dec d                                         ; $671f: $15
    ld b, h                                       ; $6720: $44
    nop                                           ; $6721: $00
    inc sp                                        ; $6722: $33
    ld [bc], a                                    ; $6723: $02
    ld h, l                                       ; $6724: $65
    rrca                                          ; $6725: $0f
    dec b                                         ; $6726: $05
    ld bc, $0703                                  ; $6727: $01 $03 $07
    nop                                           ; $672a: $00
    ld h, c                                       ; $672b: $61
    ld bc, $1500                                  ; $672c: $01 $00 $15
    ld b, h                                       ; $672f: $44
    nop                                           ; $6730: $00
    inc sp                                        ; $6731: $33
    ld [bc], a                                    ; $6732: $02
    ld h, [hl]                                    ; $6733: $66
    dec d                                         ; $6734: $15
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    inc sp                                        ; $6737: $33
    ld [bc], a                                    ; $6738: $02
    ld h, a                                       ; $6739: $67
    rrca                                          ; $673a: $0f
    dec b                                         ; $673b: $05
    nop                                           ; $673c: $00
    ld d, a                                       ; $673d: $57
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    ld d, [hl]                                    ; $6743: $56
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    rla                                           ; $6746: $17
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    dec de                                        ; $6749: $1b
    nop                                           ; $674a: $00
    nop                                           ; $674b: $00
    ld e, a                                       ; $674c: $5f
    ld bc, $1500                                  ; $674d: $01 $00 $15
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    inc sp                                        ; $6752: $33
    ld [bc], a                                    ; $6753: $02
    ld b, c                                       ; $6754: $41
    dec d                                         ; $6755: $15
    ld b, h                                       ; $6756: $44
    nop                                           ; $6757: $00
    inc sp                                        ; $6758: $33
    ld [bc], a                                    ; $6759: $02
    ld b, d                                       ; $675a: $42
    jr c, @+$2d                                   ; $675b: $38 $2b

    nop                                           ; $675d: $00
    dec d                                         ; $675e: $15
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    inc sp                                        ; $6761: $33
    ld [bc], a                                    ; $6762: $02
    ld b, e                                       ; $6763: $43
    rrca                                          ; $6764: $0f
    dec c                                         ; $6765: $0d
    ld bc, $0057                                  ; $6766: $01 $57 $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    add hl, bc                                    ; $676d: $09
    nop                                           ; $676e: $00
    ld b, c                                       ; $676f: $41
    dec b                                         ; $6770: $05
    dec b                                         ; $6771: $05
    nop                                           ; $6772: $00
    ld e, a                                       ; $6773: $5f
    ld bc, $1500                                  ; $6774: $01 $00 $15
    ld b, h                                       ; $6777: $44
    nop                                           ; $6778: $00
    inc sp                                        ; $6779: $33
    inc b                                         ; $677a: $04
    ld a, $00                                     ; $677b: $3e $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    add hl, bc                                    ; $677f: $09
    nop                                           ; $6780: $00
    add hl, sp                                    ; $6781: $39
    dec b                                         ; $6782: $05
    dec b                                         ; $6783: $05
    nop                                           ; $6784: $00
    ld e, a                                       ; $6785: $5f
    ld bc, $1500                                  ; $6786: $01 $00 $15
    ld b, h                                       ; $6789: $44
    nop                                           ; $678a: $00
    inc sp                                        ; $678b: $33
    inc b                                         ; $678c: $04
    ld a, $00                                     ; $678d: $3e $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    add hl, bc                                    ; $6791: $09
    nop                                           ; $6792: $00
    ld d, d                                       ; $6793: $52
    dec b                                         ; $6794: $05
    inc h                                         ; $6795: $24
    nop                                           ; $6796: $00
    ld h, b                                       ; $6797: $60
    ld [bc], a                                    ; $6798: $02
    nop                                           ; $6799: $00
    ld d, [hl]                                    ; $679a: $56
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    rla                                           ; $679d: $17
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    dec de                                        ; $67a0: $1b
    nop                                           ; $67a1: $00
    nop                                           ; $67a2: $00
    ld e, a                                       ; $67a3: $5f
    ld bc, $0900                                  ; $67a4: $01 $00 $09
    ld [bc], a                                    ; $67a7: $02
    nop                                           ; $67a8: $00
    dec b                                         ; $67a9: $05
    ld b, $00                                     ; $67aa: $06 $00
    dec d                                         ; $67ac: $15
    ld b, h                                       ; $67ad: $44
    nop                                           ; $67ae: $00
    inc sp                                        ; $67af: $33
    dec b                                         ; $67b0: $05
    ld e, l                                       ; $67b1: $5d
    dec d                                         ; $67b2: $15
    ld b, h                                       ; $67b3: $44
    nop                                           ; $67b4: $00
    inc sp                                        ; $67b5: $33
    dec b                                         ; $67b6: $05
    ld h, e                                       ; $67b7: $63
    inc bc                                        ; $67b8: $03
    dec d                                         ; $67b9: $15
    nop                                           ; $67ba: $00
    dec d                                         ; $67bb: $15
    nop                                           ; $67bc: $00
    nop                                           ; $67bd: $00
    inc sp                                        ; $67be: $33
    nop                                           ; $67bf: $00
    ld c, e                                       ; $67c0: $4b
    dec d                                         ; $67c1: $15
    ld b, h                                       ; $67c2: $44
    nop                                           ; $67c3: $00
    inc sp                                        ; $67c4: $33
    dec b                                         ; $67c5: $05
    ld e, l                                       ; $67c6: $5d
    dec d                                         ; $67c7: $15
    ld b, h                                       ; $67c8: $44
    nop                                           ; $67c9: $00
    inc sp                                        ; $67ca: $33
    dec b                                         ; $67cb: $05
    ld e, [hl]                                    ; $67cc: $5e
    dec d                                         ; $67cd: $15
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    inc sp                                        ; $67d0: $33
    dec b                                         ; $67d1: $05
    ld e, a                                       ; $67d2: $5f
    ld d, [hl]                                    ; $67d3: $56
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    rla                                           ; $67d6: $17
    nop                                           ; $67d7: $00
    nop                                           ; $67d8: $00
    ld hl, $0063                                  ; $67d9: $21 $63 $00
    daa                                           ; $67dc: $27
    nop                                           ; $67dd: $00
    jr z, jr_00c_685e                             ; $67de: $28 $7e

    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    dec de                                        ; $67e2: $1b
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    ld h, c                                       ; $67e5: $61
    ld bc, $1500                                  ; $67e6: $01 $00 $15
    ld b, h                                       ; $67e9: $44
    nop                                           ; $67ea: $00
    inc sp                                        ; $67eb: $33
    dec b                                         ; $67ec: $05
    ld h, b                                       ; $67ed: $60
    dec d                                         ; $67ee: $15
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    inc sp                                        ; $67f1: $33
    dec b                                         ; $67f2: $05
    ld h, c                                       ; $67f3: $61
    ld d, a                                       ; $67f4: $57
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    rrca                                          ; $67f7: $0f
    ld [de], a                                    ; $67f8: $12
    ld bc, $0057                                  ; $67f9: $01 $57 $00
    nop                                           ; $67fc: $00
    nop                                           ; $67fd: $00
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    add hl, bc                                    ; $6800: $09
    nop                                           ; $6801: $00
    rlca                                          ; $6802: $07
    dec b                                         ; $6803: $05
    inc h                                         ; $6804: $24
    nop                                           ; $6805: $00
    ld h, b                                       ; $6806: $60
    ld [bc], a                                    ; $6807: $02
    nop                                           ; $6808: $00
    ld d, [hl]                                    ; $6809: $56
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    rla                                           ; $680c: $17
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    dec de                                        ; $680f: $1b
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    ld e, a                                       ; $6812: $5f
    ld bc, $0900                                  ; $6813: $01 $00 $09
    ld [bc], a                                    ; $6816: $02
    nop                                           ; $6817: $00
    dec b                                         ; $6818: $05
    ld b, $00                                     ; $6819: $06 $00
    dec d                                         ; $681b: $15
    ld b, h                                       ; $681c: $44
    nop                                           ; $681d: $00
    inc sp                                        ; $681e: $33
    dec b                                         ; $681f: $05
    ld e, l                                       ; $6820: $5d
    dec d                                         ; $6821: $15
    ld b, h                                       ; $6822: $44
    nop                                           ; $6823: $00
    inc sp                                        ; $6824: $33
    dec b                                         ; $6825: $05
    ld h, e                                       ; $6826: $63
    inc bc                                        ; $6827: $03
    dec d                                         ; $6828: $15
    nop                                           ; $6829: $00
    dec d                                         ; $682a: $15
    nop                                           ; $682b: $00
    nop                                           ; $682c: $00
    inc sp                                        ; $682d: $33
    nop                                           ; $682e: $00
    ld c, e                                       ; $682f: $4b
    dec d                                         ; $6830: $15
    ld b, h                                       ; $6831: $44
    nop                                           ; $6832: $00
    inc sp                                        ; $6833: $33
    dec b                                         ; $6834: $05
    ld e, l                                       ; $6835: $5d
    dec d                                         ; $6836: $15
    ld b, h                                       ; $6837: $44
    nop                                           ; $6838: $00
    inc sp                                        ; $6839: $33
    dec b                                         ; $683a: $05
    ld e, [hl]                                    ; $683b: $5e
    dec d                                         ; $683c: $15
    nop                                           ; $683d: $00
    nop                                           ; $683e: $00
    inc sp                                        ; $683f: $33
    dec b                                         ; $6840: $05
    ld e, a                                       ; $6841: $5f
    ld d, [hl]                                    ; $6842: $56
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    rla                                           ; $6845: $17
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    ld hl, $0063                                  ; $6848: $21 $63 $00
    daa                                           ; $684b: $27
    nop                                           ; $684c: $00
    jr z, jr_00c_68cd                             ; $684d: $28 $7e

    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    dec de                                        ; $6851: $1b
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    ld h, c                                       ; $6854: $61
    ld bc, $1500                                  ; $6855: $01 $00 $15
    ld b, h                                       ; $6858: $44
    nop                                           ; $6859: $00
    inc sp                                        ; $685a: $33
    dec b                                         ; $685b: $05
    ld h, b                                       ; $685c: $60
    dec d                                         ; $685d: $15

jr_00c_685e:
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    inc sp                                        ; $6860: $33
    dec b                                         ; $6861: $05
    ld h, c                                       ; $6862: $61
    ld d, a                                       ; $6863: $57
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    rrca                                          ; $6866: $0f
    ld [de], a                                    ; $6867: $12
    ld bc, $0057                                  ; $6868: $01 $57 $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    ld h, b                                       ; $686f: $60
    ld [bc], a                                    ; $6870: $02
    nop                                           ; $6871: $00
    ld d, [hl]                                    ; $6872: $56
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    rla                                           ; $6875: $17
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    dec de                                        ; $6878: $1b
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    ld e, a                                       ; $687b: $5f
    ld bc, $0900                                  ; $687c: $01 $00 $09
    ld [bc], a                                    ; $687f: $02
    nop                                           ; $6880: $00
    dec b                                         ; $6881: $05
    ld b, $00                                     ; $6882: $06 $00
    dec d                                         ; $6884: $15
    ld b, h                                       ; $6885: $44
    nop                                           ; $6886: $00
    inc sp                                        ; $6887: $33
    dec b                                         ; $6888: $05
    ld e, l                                       ; $6889: $5d
    dec d                                         ; $688a: $15
    ld b, h                                       ; $688b: $44
    nop                                           ; $688c: $00
    inc sp                                        ; $688d: $33
    dec b                                         ; $688e: $05
    ld h, e                                       ; $688f: $63
    inc bc                                        ; $6890: $03
    dec d                                         ; $6891: $15
    nop                                           ; $6892: $00
    dec d                                         ; $6893: $15
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    inc sp                                        ; $6896: $33
    nop                                           ; $6897: $00
    ld c, e                                       ; $6898: $4b
    dec d                                         ; $6899: $15
    ld b, h                                       ; $689a: $44
    nop                                           ; $689b: $00
    inc sp                                        ; $689c: $33
    dec b                                         ; $689d: $05
    ld e, l                                       ; $689e: $5d
    dec d                                         ; $689f: $15
    ld b, h                                       ; $68a0: $44
    nop                                           ; $68a1: $00
    inc sp                                        ; $68a2: $33
    dec b                                         ; $68a3: $05
    ld e, [hl]                                    ; $68a4: $5e
    dec d                                         ; $68a5: $15
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    inc sp                                        ; $68a8: $33
    dec b                                         ; $68a9: $05
    ld e, a                                       ; $68aa: $5f
    ld d, [hl]                                    ; $68ab: $56
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    rla                                           ; $68ae: $17
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    ld hl, $0050                                  ; $68b1: $21 $50 $00
    daa                                           ; $68b4: $27
    nop                                           ; $68b5: $00
    jr z, jr_00c_6936                             ; $68b6: $28 $7e

    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    dec de                                        ; $68ba: $1b
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    ld h, c                                       ; $68bd: $61
    ld bc, $1500                                  ; $68be: $01 $00 $15
    ld b, h                                       ; $68c1: $44
    nop                                           ; $68c2: $00
    inc sp                                        ; $68c3: $33
    dec b                                         ; $68c4: $05
    ld h, b                                       ; $68c5: $60
    dec d                                         ; $68c6: $15
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    inc sp                                        ; $68c9: $33
    dec b                                         ; $68ca: $05
    ld h, c                                       ; $68cb: $61
    ld d, a                                       ; $68cc: $57

jr_00c_68cd:
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    rrca                                          ; $68cf: $0f
    ld [de], a                                    ; $68d0: $12
    ld bc, $0057                                  ; $68d1: $01 $57 $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    ld e, a                                       ; $68d8: $5f
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    add hl, bc                                    ; $68db: $09
    nop                                           ; $68dc: $00
    dec bc                                        ; $68dd: $0b
    dec b                                         ; $68de: $05
    inc b                                         ; $68df: $04
    nop                                           ; $68e0: $00
    rrca                                          ; $68e1: $0f
    add hl, bc                                    ; $68e2: $09
    nop                                           ; $68e3: $00
    ld e, a                                       ; $68e4: $5f
    ld bc, $0000                                  ; $68e5: $01 $00 $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    add hl, bc                                    ; $68ea: $09
    nop                                           ; $68eb: $00
    ld de, $0205                                  ; $68ec: $11 $05 $02
    nop                                           ; $68ef: $00
    ld a, d                                       ; $68f0: $7a
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    add hl, bc                                    ; $68f3: $09
    nop                                           ; $68f4: $00
    ld c, a                                       ; $68f5: $4f
    dec b                                         ; $68f6: $05
    cpl                                           ; $68f7: $2f
    nop                                           ; $68f8: $00
    add hl, bc                                    ; $68f9: $09
    inc c                                         ; $68fa: $0c
    ld bc, $0505                                  ; $68fb: $01 $05 $05
    nop                                           ; $68fe: $00
    ld e, a                                       ; $68ff: $5f
    ld bc, $5700                                  ; $6900: $01 $00 $57
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    jr z, @+$63                                   ; $6905: $28 $61

    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    ld d, [hl]                                    ; $690b: $56
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    rla                                           ; $690e: $17
    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    ld hl, $0060                                  ; $6911: $21 $60 $00
    inc de                                        ; $6914: $13
    nop                                           ; $6915: $00
    ld a, [hl-]                                   ; $6916: $3a
    inc d                                         ; $6917: $14
    nop                                           ; $6918: $00
    add $15                                       ; $6919: $c6 $15
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    ld d, $4d                                     ; $691d: $16 $4d
    nop                                           ; $691f: $00
    ld d, d                                       ; $6920: $52
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    dec de                                        ; $6923: $1b
    ld b, $00                                     ; $6924: $06 $00
    rla                                           ; $6926: $17
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    ld e, a                                       ; $6929: $5f
    ld bc, $1500                                  ; $692a: $01 $00 $15
    add hl, sp                                    ; $692d: $39
    nop                                           ; $692e: $00
    inc sp                                        ; $692f: $33
    dec b                                         ; $6930: $05
    cpl                                           ; $6931: $2f
    dec d                                         ; $6932: $15
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    inc sp                                        ; $6935: $33

jr_00c_6936:
    dec b                                         ; $6936: $05
    jr nc, jr_00c_694e                            ; $6937: $30 $15

    add hl, sp                                    ; $6939: $39
    nop                                           ; $693a: $00
    inc sp                                        ; $693b: $33
    dec b                                         ; $693c: $05
    ld sp, $0015                                  ; $693d: $31 $15 $00
    nop                                           ; $6940: $00
    inc sp                                        ; $6941: $33
    dec b                                         ; $6942: $05
    ld [hl-], a                                   ; $6943: $32
    dec d                                         ; $6944: $15
    add hl, sp                                    ; $6945: $39
    nop                                           ; $6946: $00
    inc sp                                        ; $6947: $33
    dec b                                         ; $6948: $05
    inc sp                                        ; $6949: $33
    dec d                                         ; $694a: $15
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    inc sp                                        ; $694d: $33

jr_00c_694e:
    dec b                                         ; $694e: $05
    inc [hl]                                      ; $694f: $34
    dec d                                         ; $6950: $15
    add hl, sp                                    ; $6951: $39
    nop                                           ; $6952: $00
    inc sp                                        ; $6953: $33
    dec b                                         ; $6954: $05
    dec [hl]                                      ; $6955: $35
    dec d                                         ; $6956: $15
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    inc sp                                        ; $6959: $33
    dec b                                         ; $695a: $05
    ld [hl], $15                                  ; $695b: $36 $15
    add hl, sp                                    ; $695d: $39
    nop                                           ; $695e: $00
    inc sp                                        ; $695f: $33
    dec b                                         ; $6960: $05
    scf                                           ; $6961: $37
    dec d                                         ; $6962: $15
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    inc sp                                        ; $6965: $33
    dec b                                         ; $6966: $05
    jr c, @+$17                                   ; $6967: $38 $15

    add hl, sp                                    ; $6969: $39
    nop                                           ; $696a: $00
    inc sp                                        ; $696b: $33
    dec b                                         ; $696c: $05
    add hl, sp                                    ; $696d: $39
    dec d                                         ; $696e: $15
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    inc sp                                        ; $6971: $33
    dec b                                         ; $6972: $05
    ld a, [hl-]                                   ; $6973: $3a
    dec d                                         ; $6974: $15
    add hl, sp                                    ; $6975: $39
    nop                                           ; $6976: $00
    inc sp                                        ; $6977: $33
    dec b                                         ; $6978: $05
    dec sp                                        ; $6979: $3b
    rrca                                          ; $697a: $0f
    inc c                                         ; $697b: $0c
    ld bc, $0755                                  ; $697c: $01 $55 $07
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    ld e, a                                       ; $6983: $5f
    ld bc, $0000                                  ; $6984: $01 $00 $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    dec c                                         ; $6989: $0d
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    ld bc, $010b                                  ; $698c: $01 $0b $01
    ld b, h                                       ; $698f: $44
    ld bc, $017d                                  ; $6990: $01 $7d $01
    or [hl]                                       ; $6993: $b6
    ld [bc], a                                    ; $6994: $02
    dec h                                         ; $6995: $25
    ld [bc], a                                    ; $6996: $02
    adc e                                         ; $6997: $8b
    ld [bc], a                                    ; $6998: $02
    rst $30                                       ; $6999: $f7
    inc bc                                        ; $699a: $03
    dec l                                         ; $699b: $2d
    dec b                                         ; $699c: $05
    rst $00                                       ; $699d: $c7
    ld b, $57                                     ; $699e: $06 $57
    ld b, $6f                                     ; $69a0: $06 $6f
    ld b, $87                                     ; $69a2: $06 $87
    ld e, a                                       ; $69a4: $5f
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    add hl, bc                                    ; $69a7: $09
    nop                                           ; $69a8: $00
    scf                                           ; $69a9: $37
    dec b                                         ; $69aa: $05
    inc bc                                        ; $69ab: $03
    nop                                           ; $69ac: $00
    ld e, a                                       ; $69ad: $5f
    ld bc, $0000                                  ; $69ae: $01 $00 $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    add hl, bc                                    ; $69b3: $09
    nop                                           ; $69b4: $00
    add hl, sp                                    ; $69b5: $39
    dec b                                         ; $69b6: $05
    inc bc                                        ; $69b7: $03
    nop                                           ; $69b8: $00
    ld e, a                                       ; $69b9: $5f
    ld bc, $0000                                  ; $69ba: $01 $00 $00
    nop                                           ; $69bd: $00
    nop                                           ; $69be: $00
    add hl, bc                                    ; $69bf: $09
    nop                                           ; $69c0: $00
    ld b, b                                       ; $69c1: $40
    dec b                                         ; $69c2: $05
    inc bc                                        ; $69c3: $03
    nop                                           ; $69c4: $00
    ld e, a                                       ; $69c5: $5f
    ld bc, $0000                                  ; $69c6: $01 $00 $00
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    add hl, bc                                    ; $69cb: $09
    nop                                           ; $69cc: $00
    dec a                                         ; $69cd: $3d
    dec b                                         ; $69ce: $05
    inc bc                                        ; $69cf: $03
    nop                                           ; $69d0: $00
    ld e, a                                       ; $69d1: $5f
    ld bc, $0000                                  ; $69d2: $01 $00 $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    add hl, bc                                    ; $69d7: $09
    nop                                           ; $69d8: $00
    ld de, $1a05                                  ; $69d9: $11 $05 $1a
    nop                                           ; $69dc: $00
    add hl, bc                                    ; $69dd: $09
    ld e, $01                                     ; $69de: $1e $01
    dec b                                         ; $69e0: $05
    add hl, bc                                    ; $69e1: $09
    nop                                           ; $69e2: $00
    ld d, [hl]                                    ; $69e3: $56
    nop                                           ; $69e4: $00
    nop                                           ; $69e5: $00
    rla                                           ; $69e6: $17
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    inc e                                         ; $69e9: $1c
    ld [$5f19], sp                                ; $69ea: $08 $19 $5f
    ld bc, $1500                                  ; $69ed: $01 $00 $15
    ld b, l                                       ; $69f0: $45
    nop                                           ; $69f1: $00
    inc sp                                        ; $69f2: $33
    ld [bc], a                                    ; $69f3: $02
    adc e                                         ; $69f4: $8b
    ld d, a                                       ; $69f5: $57
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    ld d, [hl]                                    ; $69fb: $56
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    rla                                           ; $69fe: $17
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    inc e                                         ; $6a01: $1c
    ld [$5f19], sp                                ; $6a02: $08 $19 $5f
    ld bc, $1500                                  ; $6a05: $01 $00 $15
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    inc sp                                        ; $6a0a: $33
    ld [bc], a                                    ; $6a0b: $02
    ld d, [hl]                                    ; $6a0c: $56
    dec d                                         ; $6a0d: $15
    ld b, l                                       ; $6a0e: $45
    nop                                           ; $6a0f: $00
    inc sp                                        ; $6a10: $33
    ld [bc], a                                    ; $6a11: $02
    ld d, a                                       ; $6a12: $57
    dec d                                         ; $6a13: $15
    nop                                           ; $6a14: $00
    nop                                           ; $6a15: $00
    inc sp                                        ; $6a16: $33
    ld [bc], a                                    ; $6a17: $02
    ld e, b                                       ; $6a18: $58
    dec d                                         ; $6a19: $15
    ld b, l                                       ; $6a1a: $45
    nop                                           ; $6a1b: $00
    inc sp                                        ; $6a1c: $33
    ld [bc], a                                    ; $6a1d: $02
    ld e, c                                       ; $6a1e: $59
    ld d, a                                       ; $6a1f: $57
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    rrca                                          ; $6a22: $0f
    ld e, $01                                     ; $6a23: $1e $01
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    add hl, bc                                    ; $6a28: $09
    nop                                           ; $6a29: $00
    ld d, h                                       ; $6a2a: $54
    dec b                                         ; $6a2b: $05
    inc h                                         ; $6a2c: $24
    nop                                           ; $6a2d: $00
    add hl, bc                                    ; $6a2e: $09
    inc c                                         ; $6a2f: $0c
    ld bc, $0905                                  ; $6a30: $01 $05 $09
    nop                                           ; $6a33: $00
    ld d, [hl]                                    ; $6a34: $56
    nop                                           ; $6a35: $00
    nop                                           ; $6a36: $00
    rla                                           ; $6a37: $17
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    inc e                                         ; $6a3a: $1c
    ld [$5f19], sp                                ; $6a3b: $08 $19 $5f
    ld bc, $1500                                  ; $6a3e: $01 $00 $15
    ld b, l                                       ; $6a41: $45
    nop                                           ; $6a42: $00
    inc sp                                        ; $6a43: $33
    add hl, bc                                    ; $6a44: $09
    db $e3                                        ; $6a45: $e3
    ld d, a                                       ; $6a46: $57
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    ld d, [hl]                                    ; $6a4c: $56
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    rla                                           ; $6a4f: $17
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    inc e                                         ; $6a52: $1c
    ld [$5f19], sp                                ; $6a53: $08 $19 $5f
    ld bc, $1500                                  ; $6a56: $01 $00 $15
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    inc sp                                        ; $6a5b: $33
    ld [bc], a                                    ; $6a5c: $02
    ld l, c                                       ; $6a5d: $69
    add hl, sp                                    ; $6a5e: $39
    inc a                                         ; $6a5f: $3c
    ld bc, $4515                                  ; $6a60: $01 $15 $45
    nop                                           ; $6a63: $00
    inc sp                                        ; $6a64: $33
    ld [bc], a                                    ; $6a65: $02
    ld l, d                                       ; $6a66: $6a
    dec d                                         ; $6a67: $15
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    inc sp                                        ; $6a6a: $33
    ld [bc], a                                    ; $6a6b: $02
    ld l, e                                       ; $6a6c: $6b
    dec d                                         ; $6a6d: $15
    ld b, l                                       ; $6a6e: $45
    nop                                           ; $6a6f: $00
    inc sp                                        ; $6a70: $33
    ld [bc], a                                    ; $6a71: $02
    ld l, h                                       ; $6a72: $6c
    dec d                                         ; $6a73: $15
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    ld b, c                                       ; $6a76: $41
    nop                                           ; $6a77: $00
    add hl, de                                    ; $6a78: $19
    add hl, bc                                    ; $6a79: $09
    rst $38                                       ; $6a7a: $ff
    inc bc                                        ; $6a7b: $03
    dec b                                         ; $6a7c: $05
    ld b, $00                                     ; $6a7d: $06 $00
    dec d                                         ; $6a7f: $15
    ld b, l                                       ; $6a80: $45
    nop                                           ; $6a81: $00
    inc sp                                        ; $6a82: $33
    ld [bc], a                                    ; $6a83: $02
    add a                                         ; $6a84: $87
    rrca                                          ; $6a85: $0f
    rst $38                                       ; $6a86: $ff
    nop                                           ; $6a87: $00
    rla                                           ; $6a88: $17
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    dec de                                        ; $6a8b: $1b
    inc b                                         ; $6a8c: $04
    nop                                           ; $6a8d: $00
    ld d, a                                       ; $6a8e: $57
    nop                                           ; $6a8f: $00
    nop                                           ; $6a90: $00
    rrca                                          ; $6a91: $0f
    inc c                                         ; $6a92: $0c
    ld bc, $0000                                  ; $6a93: $01 $00 $00
    nop                                           ; $6a96: $00
    ld d, [hl]                                    ; $6a97: $56
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    rla                                           ; $6a9a: $17
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    inc e                                         ; $6a9d: $1c
    ld [$5f19], sp                                ; $6a9e: $08 $19 $5f
    ld bc, $1500                                  ; $6aa1: $01 $00 $15
    ld b, l                                       ; $6aa4: $45
    nop                                           ; $6aa5: $00
    inc sp                                        ; $6aa6: $33
    add hl, bc                                    ; $6aa7: $09
    pop hl                                        ; $6aa8: $e1
    ld d, a                                       ; $6aa9: $57
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    nop                                           ; $6aac: $00
    nop                                           ; $6aad: $00
    nop                                           ; $6aae: $00
    ld e, a                                       ; $6aaf: $5f
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    add hl, bc                                    ; $6ab2: $09
    nop                                           ; $6ab3: $00
    scf                                           ; $6ab4: $37
    dec b                                         ; $6ab5: $05
    rrca                                          ; $6ab6: $0f
    nop                                           ; $6ab7: $00
    add hl, bc                                    ; $6ab8: $09
    ld c, $01                                     ; $6ab9: $0e $01
    dec b                                         ; $6abb: $05
    inc bc                                        ; $6abc: $03
    nop                                           ; $6abd: $00
    ld e, a                                       ; $6abe: $5f
    ld bc, $0000                                  ; $6abf: $01 $00 $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    ld d, [hl]                                    ; $6ac4: $56
    nop                                           ; $6ac5: $00
    nop                                           ; $6ac6: $00
    rla                                           ; $6ac7: $17
    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00
    dec de                                        ; $6aca: $1b
    nop                                           ; $6acb: $00
    nop                                           ; $6acc: $00
    ld e, a                                       ; $6acd: $5f
    ld bc, $1500                                  ; $6ace: $01 $00 $15
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    inc sp                                        ; $6ad3: $33
    inc b                                         ; $6ad4: $04
    ld e, h                                       ; $6ad5: $5c
    ld l, d                                       ; $6ad6: $6a
    rrca                                          ; $6ad7: $0f
    nop                                           ; $6ad8: $00
    rrca                                          ; $6ad9: $0f
    ld c, $01                                     ; $6ada: $0e $01
    ld d, a                                       ; $6adc: $57
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    ld e, a                                       ; $6ae2: $5f
    ld bc, $0000                                  ; $6ae3: $01 $00 $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    ld e, a                                       ; $6ae8: $5f
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    add hl, bc                                    ; $6aeb: $09
    nop                                           ; $6aec: $00
    scf                                           ; $6aed: $37
    dec b                                         ; $6aee: $05
    rrca                                          ; $6aef: $0f
    nop                                           ; $6af0: $00
    add hl, bc                                    ; $6af1: $09
    rrca                                          ; $6af2: $0f
    ld bc, $0305                                  ; $6af3: $01 $05 $03
    nop                                           ; $6af6: $00
    ld e, a                                       ; $6af7: $5f
    ld bc, $0000                                  ; $6af8: $01 $00 $00
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    ld d, [hl]                                    ; $6afd: $56
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    rla                                           ; $6b00: $17
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    dec de                                        ; $6b03: $1b
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    ld e, a                                       ; $6b06: $5f
    ld bc, $1500                                  ; $6b07: $01 $00 $15
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    inc sp                                        ; $6b0c: $33
    inc b                                         ; $6b0d: $04
    ld e, h                                       ; $6b0e: $5c
    scf                                           ; $6b0f: $37
    ld [$0f00], sp                                ; $6b10: $08 $00 $0f
    rrca                                          ; $6b13: $0f
    ld bc, $0057                                  ; $6b14: $01 $57 $00
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    ld e, a                                       ; $6b1b: $5f
    ld bc, $0000                                  ; $6b1c: $01 $00 $00
    nop                                           ; $6b1f: $00
    nop                                           ; $6b20: $00
    ld e, a                                       ; $6b21: $5f
    nop                                           ; $6b22: $00
    nop                                           ; $6b23: $00
    add hl, bc                                    ; $6b24: $09
    nop                                           ; $6b25: $00
    scf                                           ; $6b26: $37
    dec b                                         ; $6b27: $05
    rrca                                          ; $6b28: $0f
    nop                                           ; $6b29: $00
    add hl, bc                                    ; $6b2a: $09
    db $10                                        ; $6b2b: $10
    ld bc, $0305                                  ; $6b2c: $01 $05 $03
    nop                                           ; $6b2f: $00
    ld e, a                                       ; $6b30: $5f
    ld bc, $0000                                  ; $6b31: $01 $00 $00
    nop                                           ; $6b34: $00
    nop                                           ; $6b35: $00
    ld d, [hl]                                    ; $6b36: $56
    nop                                           ; $6b37: $00
    nop                                           ; $6b38: $00
    rla                                           ; $6b39: $17
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    dec de                                        ; $6b3c: $1b
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    ld e, a                                       ; $6b3f: $5f
    ld bc, $1500                                  ; $6b40: $01 $00 $15
    nop                                           ; $6b43: $00
    nop                                           ; $6b44: $00
    inc sp                                        ; $6b45: $33
    inc b                                         ; $6b46: $04
    ld e, h                                       ; $6b47: $5c
    ld l, d                                       ; $6b48: $6a
    ld c, $00                                     ; $6b49: $0e $00
    rrca                                          ; $6b4b: $0f
    db $10                                        ; $6b4c: $10
    ld bc, $0057                                  ; $6b4d: $01 $57 $00
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    nop                                           ; $6b52: $00
    nop                                           ; $6b53: $00
    ld e, a                                       ; $6b54: $5f
    ld bc, $0000                                  ; $6b55: $01 $00 $00
    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    ld e, a                                       ; $6b5a: $5f
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    add hl, bc                                    ; $6b5d: $09
    nop                                           ; $6b5e: $00
    scf                                           ; $6b5f: $37
    dec b                                         ; $6b60: $05
    ld hl, $5600                                  ; $6b61: $21 $00 $56
    nop                                           ; $6b64: $00
    nop                                           ; $6b65: $00
    rla                                           ; $6b66: $17
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    dec de                                        ; $6b69: $1b
    nop                                           ; $6b6a: $00
    nop                                           ; $6b6b: $00
    ld e, a                                       ; $6b6c: $5f
    ld bc, $1500                                  ; $6b6d: $01 $00 $15
    nop                                           ; $6b70: $00
    nop                                           ; $6b71: $00
    inc sp                                        ; $6b72: $33
    inc b                                         ; $6b73: $04
    ld e, h                                       ; $6b74: $5c
    ld l, $41                                     ; $6b75: $2e $41
    nop                                           ; $6b77: $00
    ld e, a                                       ; $6b78: $5f
    nop                                           ; $6b79: $00
    nop                                           ; $6b7a: $00
    inc de                                        ; $6b7b: $13
    nop                                           ; $6b7c: $00
    ld h, $14                                     ; $6b7d: $26 $14
    nop                                           ; $6b7f: $00
    sbc c                                         ; $6b80: $99
    dec d                                         ; $6b81: $15
    ld b, $00                                     ; $6b82: $06 $00
    ld d, $5b                                     ; $6b84: $16 $5b
    nop                                           ; $6b86: $00
    ld d, d                                       ; $6b87: $52
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    inc de                                        ; $6b8a: $13
    nop                                           ; $6b8b: $00
    dec h                                         ; $6b8c: $25
    inc d                                         ; $6b8d: $14
    ld bc, $15a0                                  ; $6b8e: $01 $a0 $15
    rlca                                          ; $6b91: $07
    nop                                           ; $6b92: $00
    ld d, $22                                     ; $6b93: $16 $22
    nop                                           ; $6b95: $00
    ld d, d                                       ; $6b96: $52
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    dec de                                        ; $6b99: $1b
    ld [bc], a                                    ; $6b9a: $02
    nop                                           ; $6b9b: $00
    ld e, a                                       ; $6b9c: $5f
    ld bc, $1300                                  ; $6b9d: $01 $00 $13
    nop                                           ; $6ba0: $00
    sbc c                                         ; $6ba1: $99
    dec d                                         ; $6ba2: $15
    ld [bc], a                                    ; $6ba3: $02
    nop                                           ; $6ba4: $00
    ld [hl], e                                    ; $6ba5: $73
    nop                                           ; $6ba6: $00
    ld h, $15                                     ; $6ba7: $26 $15
    ld b, l                                       ; $6ba9: $45
    nop                                           ; $6baa: $00
    inc sp                                        ; $6bab: $33
    inc b                                         ; $6bac: $04
    ld a, $15                                     ; $6bad: $3e $15
    ld [bc], a                                    ; $6baf: $02
    nop                                           ; $6bb0: $00
    ld [hl], h                                    ; $6bb1: $74
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    rla                                           ; $6bb4: $17
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    ld e, c                                       ; $6bb7: $59
    nop                                           ; $6bb8: $00
    nop                                           ; $6bb9: $00
    ld h, d                                       ; $6bba: $62
    add hl, sp                                    ; $6bbb: $39
    nop                                           ; $6bbc: $00
    ld d, a                                       ; $6bbd: $57
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    nop                                           ; $6bc1: $00
    nop                                           ; $6bc2: $00
    ld e, a                                       ; $6bc3: $5f
    ld bc, $0000                                  ; $6bc4: $01 $00 $00
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    ld e, a                                       ; $6bc9: $5f
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    add hl, bc                                    ; $6bcc: $09
    nop                                           ; $6bcd: $00
    scf                                           ; $6bce: $37
    dec b                                         ; $6bcf: $05
    dec c                                         ; $6bd0: $0d
    nop                                           ; $6bd1: $00
    add hl, bc                                    ; $6bd2: $09
    dec c                                         ; $6bd3: $0d
    ld bc, $0305                                  ; $6bd4: $01 $05 $03
    nop                                           ; $6bd7: $00
    ld e, a                                       ; $6bd8: $5f
    ld bc, $0000                                  ; $6bd9: $01 $00 $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    ld d, [hl]                                    ; $6bde: $56
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    ld e, a                                       ; $6be1: $5f
    ld bc, $6d00                                  ; $6be2: $01 $00 $6d
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    dec d                                         ; $6be7: $15
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    inc sp                                        ; $6bea: $33
    inc b                                         ; $6beb: $04
    dec a                                         ; $6bec: $3d
    ld d, a                                       ; $6bed: $57
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    rrca                                          ; $6bf0: $0f
    dec c                                         ; $6bf1: $0d
    ld bc, $0000                                  ; $6bf2: $01 $00 $00
    nop                                           ; $6bf5: $00
    add hl, bc                                    ; $6bf6: $09
    nop                                           ; $6bf7: $00
    add hl, sp                                    ; $6bf8: $39
    dec b                                         ; $6bf9: $05
    stop                                          ; $6bfa: $10 $00
    ld d, [hl]                                    ; $6bfc: $56
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    rla                                           ; $6bff: $17
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    dec de                                        ; $6c02: $1b
    ld b, $00                                     ; $6c03: $06 $00
    ld e, a                                       ; $6c05: $5f
    ld bc, $1500                                  ; $6c06: $01 $00 $15
    ld b, l                                       ; $6c09: $45
    nop                                           ; $6c0a: $00
    inc sp                                        ; $6c0b: $33
    inc b                                         ; $6c0c: $04
    ccf                                           ; $6c0d: $3f
    rrca                                          ; $6c0e: $0f
    rst $38                                       ; $6c0f: $ff
    nop                                           ; $6c10: $00
    dec de                                        ; $6c11: $1b
    ld [bc], a                                    ; $6c12: $02
    nop                                           ; $6c13: $00
    dec d                                         ; $6c14: $15
    ld b, l                                       ; $6c15: $45
    nop                                           ; $6c16: $00
    inc sp                                        ; $6c17: $33
    inc b                                         ; $6c18: $04
    ld b, b                                       ; $6c19: $40
    dec d                                         ; $6c1a: $15
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    ld b, d                                       ; $6c1d: $42
    nop                                           ; $6c1e: $00
    ld a, [bc]                                    ; $6c1f: $0a
    ld d, a                                       ; $6c20: $57
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    jr z, jr_00c_6c6b                             ; $6c23: $28 $46

    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    ld e, a                                       ; $6c29: $5f
    ld bc, $0000                                  ; $6c2a: $01 $00 $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    ld e, a                                       ; $6c2f: $5f
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00
    add hl, bc                                    ; $6c32: $09
    nop                                           ; $6c33: $00
    scf                                           ; $6c34: $37
    dec b                                         ; $6c35: $05
    dec c                                         ; $6c36: $0d
    nop                                           ; $6c37: $00
    add hl, bc                                    ; $6c38: $09
    dec c                                         ; $6c39: $0d
    ld bc, $0305                                  ; $6c3a: $01 $05 $03
    nop                                           ; $6c3d: $00
    ld e, a                                       ; $6c3e: $5f
    ld bc, $0000                                  ; $6c3f: $01 $00 $00
    nop                                           ; $6c42: $00
    nop                                           ; $6c43: $00
    ld d, [hl]                                    ; $6c44: $56
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    ld e, a                                       ; $6c47: $5f
    ld bc, $6d00                                  ; $6c48: $01 $00 $6d
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    dec d                                         ; $6c4d: $15
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    inc sp                                        ; $6c50: $33
    inc b                                         ; $6c51: $04
    dec a                                         ; $6c52: $3d
    ld d, a                                       ; $6c53: $57
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    rrca                                          ; $6c56: $0f
    dec c                                         ; $6c57: $0d
    ld bc, $0000                                  ; $6c58: $01 $00 $00
    nop                                           ; $6c5b: $00
    add hl, bc                                    ; $6c5c: $09
    nop                                           ; $6c5d: $00
    add hl, sp                                    ; $6c5e: $39
    dec b                                         ; $6c5f: $05
    ld [de], a                                    ; $6c60: $12
    nop                                           ; $6c61: $00
    ld d, [hl]                                    ; $6c62: $56
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00
    rla                                           ; $6c65: $17
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    dec de                                        ; $6c68: $1b
    ld b, $00                                     ; $6c69: $06 $00

jr_00c_6c6b:
    ld e, a                                       ; $6c6b: $5f
    ld bc, $1500                                  ; $6c6c: $01 $00 $15
    ld b, c                                       ; $6c6f: $41
    nop                                           ; $6c70: $00
    inc sp                                        ; $6c71: $33
    inc b                                         ; $6c72: $04
    ld b, e                                       ; $6c73: $43
    rrca                                          ; $6c74: $0f
    rst $38                                       ; $6c75: $ff
    nop                                           ; $6c76: $00
    dec de                                        ; $6c77: $1b
    ld [bc], a                                    ; $6c78: $02
    nop                                           ; $6c79: $00
    dec d                                         ; $6c7a: $15
    ld b, c                                       ; $6c7b: $41
    nop                                           ; $6c7c: $00
    inc sp                                        ; $6c7d: $33
    inc b                                         ; $6c7e: $04
    ld b, h                                       ; $6c7f: $44
    dec d                                         ; $6c80: $15
    ld b, c                                       ; $6c81: $41
    nop                                           ; $6c82: $00
    inc sp                                        ; $6c83: $33
    inc b                                         ; $6c84: $04
    ld b, l                                       ; $6c85: $45
    dec d                                         ; $6c86: $15
    nop                                           ; $6c87: $00
    nop                                           ; $6c88: $00
    ld b, d                                       ; $6c89: $42
    nop                                           ; $6c8a: $00
    ld a, [bc]                                    ; $6c8b: $0a
    ld d, a                                       ; $6c8c: $57
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    jr z, jr_00c_6cd7                             ; $6c8f: $28 $46

    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    ld e, a                                       ; $6c95: $5f
    ld bc, $0000                                  ; $6c96: $01 $00 $00
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    add hl, bc                                    ; $6c9b: $09
    nop                                           ; $6c9c: $00
    add hl, sp                                    ; $6c9d: $39
    dec b                                         ; $6c9e: $05
    stop                                          ; $6c9f: $10 $00
    ld d, [hl]                                    ; $6ca1: $56
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    dec d                                         ; $6ca4: $15
    ld b, c                                       ; $6ca5: $41
    nop                                           ; $6ca6: $00
    inc sp                                        ; $6ca7: $33
    inc b                                         ; $6ca8: $04
    ld b, e                                       ; $6ca9: $43
    rrca                                          ; $6caa: $0f
    rst $38                                       ; $6cab: $ff
    nop                                           ; $6cac: $00
    rla                                           ; $6cad: $17
    nop                                           ; $6cae: $00
    nop                                           ; $6caf: $00
    dec de                                        ; $6cb0: $1b
    ld [bc], a                                    ; $6cb1: $02
    nop                                           ; $6cb2: $00
    dec d                                         ; $6cb3: $15
    ld b, c                                       ; $6cb4: $41
    nop                                           ; $6cb5: $00
    inc sp                                        ; $6cb6: $33
    inc b                                         ; $6cb7: $04
    ld b, h                                       ; $6cb8: $44
    dec d                                         ; $6cb9: $15
    ld b, c                                       ; $6cba: $41
    nop                                           ; $6cbb: $00
    inc sp                                        ; $6cbc: $33
    inc b                                         ; $6cbd: $04
    ld b, l                                       ; $6cbe: $45
    dec d                                         ; $6cbf: $15
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    ld b, d                                       ; $6cc2: $42
    nop                                           ; $6cc3: $00
    ld a, [bc]                                    ; $6cc4: $0a
    ld d, a                                       ; $6cc5: $57
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    jr z, jr_00c_6d10                             ; $6cc8: $28 $46

    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    ld e, a                                       ; $6cd1: $5f
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    add hl, bc                                    ; $6cd4: $09
    nop                                           ; $6cd5: $00
    add hl, sp                                    ; $6cd6: $39

jr_00c_6cd7:
    dec b                                         ; $6cd7: $05
    ld c, $00                                     ; $6cd8: $0e $00
    inc de                                        ; $6cda: $13
    nop                                           ; $6cdb: $00
    ld h, $14                                     ; $6cdc: $26 $14
    nop                                           ; $6cde: $00
    sbc c                                         ; $6cdf: $99
    dec d                                         ; $6ce0: $15
    ld b, $00                                     ; $6ce1: $06 $00
    ld d, $5b                                     ; $6ce3: $16 $5b
    nop                                           ; $6ce5: $00
    ld d, d                                       ; $6ce6: $52
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    inc de                                        ; $6ce9: $13
    nop                                           ; $6cea: $00
    dec h                                         ; $6ceb: $25
    inc d                                         ; $6cec: $14
    ld bc, $15a0                                  ; $6ced: $01 $a0 $15
    rlca                                          ; $6cf0: $07
    nop                                           ; $6cf1: $00
    ld d, $22                                     ; $6cf2: $16 $22
    nop                                           ; $6cf4: $00
    ld d, d                                       ; $6cf5: $52
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    dec de                                        ; $6cf8: $1b
    ld [bc], a                                    ; $6cf9: $02
    nop                                           ; $6cfa: $00
    ld e, a                                       ; $6cfb: $5f
    ld bc, $0000                                  ; $6cfc: $01 $00 $00
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    add hl, bc                                    ; $6d01: $09
    nop                                           ; $6d02: $00
    scf                                           ; $6d03: $37
    dec b                                         ; $6d04: $05
    inc bc                                        ; $6d05: $03
    nop                                           ; $6d06: $00
    ld e, a                                       ; $6d07: $5f
    ld bc, $0000                                  ; $6d08: $01 $00 $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    add hl, bc                                    ; $6d0d: $09
    nop                                           ; $6d0e: $00
    dec a                                         ; $6d0f: $3d

jr_00c_6d10:
    dec b                                         ; $6d10: $05
    ld l, d                                       ; $6d11: $6a
    nop                                           ; $6d12: $00
    add hl, bc                                    ; $6d13: $09
    inc c                                         ; $6d14: $0c
    ld bc, $0905                                  ; $6d15: $01 $05 $09
    nop                                           ; $6d18: $00
    inc de                                        ; $6d19: $13
    nop                                           ; $6d1a: $00
    di                                            ; $6d1b: $f3
    inc d                                         ; $6d1c: $14
    nop                                           ; $6d1d: $00
    or e                                          ; $6d1e: $b3
    dec d                                         ; $6d1f: $15
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    ld d, $5b                                     ; $6d22: $16 $5b
    nop                                           ; $6d24: $00
    ld d, d                                       ; $6d25: $52
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    dec de                                        ; $6d28: $1b
    inc b                                         ; $6d29: $04
    nop                                           ; $6d2a: $00
    ld e, a                                       ; $6d2b: $5f
    ld bc, $0000                                  ; $6d2c: $01 $00 $00
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    ld d, [hl]                                    ; $6d31: $56
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    inc de                                        ; $6d34: $13
    nop                                           ; $6d35: $00
    di                                            ; $6d36: $f3
    inc d                                         ; $6d37: $14
    nop                                           ; $6d38: $00
    or e                                          ; $6d39: $b3
    dec d                                         ; $6d3a: $15
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    ld d, $5b                                     ; $6d3d: $16 $5b
    nop                                           ; $6d3f: $00
    ld d, d                                       ; $6d40: $52
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    dec de                                        ; $6d43: $1b
    inc b                                         ; $6d44: $04
    nop                                           ; $6d45: $00
    inc de                                        ; $6d46: $13
    nop                                           ; $6d47: $00
    xor $14                                       ; $6d48: $ee $14
    ld [bc], a                                    ; $6d4a: $02
    ld a, l                                       ; $6d4b: $7d
    dec d                                         ; $6d4c: $15
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    ld d, $37                                     ; $6d4f: $16 $37
    nop                                           ; $6d51: $00
    ld d, d                                       ; $6d52: $52
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    dec de                                        ; $6d55: $1b
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    inc de                                        ; $6d58: $13
    nop                                           ; $6d59: $00
    db $fc                                        ; $6d5a: $fc
    inc d                                         ; $6d5b: $14
    ld [bc], a                                    ; $6d5c: $02
    ld l, [hl]                                    ; $6d5d: $6e
    dec d                                         ; $6d5e: $15
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    ld d, $39                                     ; $6d61: $16 $39
    nop                                           ; $6d63: $00
    ld d, d                                       ; $6d64: $52
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    dec de                                        ; $6d67: $1b
    ld b, $00                                     ; $6d68: $06 $00
    inc de                                        ; $6d6a: $13
    ld bc, $1448                                  ; $6d6b: $01 $48 $14
    ld [bc], a                                    ; $6d6e: $02
    ld h, e                                       ; $6d6f: $63
    dec d                                         ; $6d70: $15
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    ld d, $0d                                     ; $6d73: $16 $0d
    nop                                           ; $6d75: $00
    ld d, d                                       ; $6d76: $52
    nop                                           ; $6d77: $00
    nop                                           ; $6d78: $00
    inc de                                        ; $6d79: $13
    ld bc, $141e                                  ; $6d7a: $01 $1e $14
    ld [bc], a                                    ; $6d7d: $02
    sub l                                         ; $6d7e: $95
    dec d                                         ; $6d7f: $15
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    ld d, $36                                     ; $6d82: $16 $36
    nop                                           ; $6d84: $00
    ld d, d                                       ; $6d85: $52
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    dec de                                        ; $6d88: $1b
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    ld e, a                                       ; $6d8b: $5f
    ld bc, $1500                                  ; $6d8c: $01 $00 $15
    nop                                           ; $6d8f: $00
    nop                                           ; $6d90: $00
    inc sp                                        ; $6d91: $33
    inc b                                         ; $6d92: $04
    ld e, [hl]                                    ; $6d93: $5e
    dec d                                         ; $6d94: $15
    add hl, de                                    ; $6d95: $19
    nop                                           ; $6d96: $00
    inc sp                                        ; $6d97: $33
    inc b                                         ; $6d98: $04
    ld e, a                                       ; $6d99: $5f
    rla                                           ; $6d9a: $17
    dec c                                         ; $6d9b: $0d
    nop                                           ; $6d9c: $00
    dec d                                         ; $6d9d: $15
    ld b, $00                                     ; $6d9e: $06 $00
    add hl, de                                    ; $6da0: $19
    nop                                           ; $6da1: $00
    inc a                                         ; $6da2: $3c
    dec de                                        ; $6da3: $1b
    ld b, $00                                     ; $6da4: $06 $00
    ld e, [hl]                                    ; $6da6: $5e
    nop                                           ; $6da7: $00
    nop                                           ; $6da8: $00
    rla                                           ; $6da9: $17
    add hl, sp                                    ; $6daa: $39
    nop                                           ; $6dab: $00
    dec de                                        ; $6dac: $1b
    ld [bc], a                                    ; $6dad: $02
    nop                                           ; $6dae: $00
    rla                                           ; $6daf: $17
    scf                                           ; $6db0: $37
    nop                                           ; $6db1: $00
    dec de                                        ; $6db2: $1b
    ld [bc], a                                    ; $6db3: $02
    nop                                           ; $6db4: $00
    ld e, [hl]                                    ; $6db5: $5e
    ld bc, $1500                                  ; $6db6: $01 $00 $15
    dec d                                         ; $6db9: $15
    nop                                           ; $6dba: $00
    inc sp                                        ; $6dbb: $33
    inc b                                         ; $6dbc: $04
    ld h, b                                       ; $6dbd: $60
    dec d                                         ; $6dbe: $15
    ld bc, $3300                                  ; $6dbf: $01 $00 $33
    inc b                                         ; $6dc2: $04
    ld h, c                                       ; $6dc3: $61
    dec d                                         ; $6dc4: $15
    dec d                                         ; $6dc5: $15
    nop                                           ; $6dc6: $00
    inc sp                                        ; $6dc7: $33
    inc b                                         ; $6dc8: $04
    ld h, d                                       ; $6dc9: $62
    dec d                                         ; $6dca: $15
    ld bc, $3300                                  ; $6dcb: $01 $00 $33
    inc b                                         ; $6dce: $04
    ld h, e                                       ; $6dcf: $63
    dec d                                         ; $6dd0: $15
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    inc sp                                        ; $6dd3: $33
    inc b                                         ; $6dd4: $04
    ld h, h                                       ; $6dd5: $64
    dec d                                         ; $6dd6: $15
    ld bc, $3300                                  ; $6dd7: $01 $00 $33
    inc b                                         ; $6dda: $04
    ld h, l                                       ; $6ddb: $65
    rla                                           ; $6ddc: $17
    dec c                                         ; $6ddd: $0d
    nop                                           ; $6dde: $00
    dec d                                         ; $6ddf: $15
    ld [bc], a                                    ; $6de0: $02
    nop                                           ; $6de1: $00
    add hl, de                                    ; $6de2: $19
    nop                                           ; $6de3: $00
    rrca                                          ; $6de4: $0f
    dec d                                         ; $6de5: $15
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    add hl, de                                    ; $6de8: $19
    nop                                           ; $6de9: $00
    ld e, d                                       ; $6dea: $5a
    ld e, $0d                                     ; $6deb: $1e $0d
    nop                                           ; $6ded: $00
    ld e, [hl]                                    ; $6dee: $5e
    nop                                           ; $6def: $00
    nop                                           ; $6df0: $00
    rla                                           ; $6df1: $17
    add hl, sp                                    ; $6df2: $39
    nop                                           ; $6df3: $00
    dec de                                        ; $6df4: $1b
    ld b, $00                                     ; $6df5: $06 $00
    rla                                           ; $6df7: $17
    scf                                           ; $6df8: $37
    nop                                           ; $6df9: $00
    dec de                                        ; $6dfa: $1b
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    ld e, [hl]                                    ; $6dfd: $5e
    ld bc, $1500                                  ; $6dfe: $01 $00 $15
    add hl, de                                    ; $6e01: $19
    nop                                           ; $6e02: $00
    inc sp                                        ; $6e03: $33
    inc b                                         ; $6e04: $04
    ld h, [hl]                                    ; $6e05: $66
    dec d                                         ; $6e06: $15
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    inc sp                                        ; $6e09: $33
    inc b                                         ; $6e0a: $04
    ld h, a                                       ; $6e0b: $67
    dec d                                         ; $6e0c: $15
    add hl, de                                    ; $6e0d: $19
    nop                                           ; $6e0e: $00
    inc sp                                        ; $6e0f: $33
    inc b                                         ; $6e10: $04
    ld l, b                                       ; $6e11: $68
    rla                                           ; $6e12: $17
    scf                                           ; $6e13: $37
    nop                                           ; $6e14: $00
    ld [hl+], a                                   ; $6e15: $22
    add hl, sp                                    ; $6e16: $39
    nop                                           ; $6e17: $00
    rla                                           ; $6e18: $17
    add hl, sp                                    ; $6e19: $39
    nop                                           ; $6e1a: $00
    dec d                                         ; $6e1b: $15
    ld [bc], a                                    ; $6e1c: $02
    nop                                           ; $6e1d: $00
    add hl, de                                    ; $6e1e: $19
    nop                                           ; $6e1f: $00
    ld e, $15                                     ; $6e20: $1e $15
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    add hl, de                                    ; $6e24: $19
    nop                                           ; $6e25: $00
    ld d, b                                       ; $6e26: $50
    rla                                           ; $6e27: $17
    scf                                           ; $6e28: $37
    nop                                           ; $6e29: $00
    ld e, $37                                     ; $6e2a: $1e $37
    nop                                           ; $6e2c: $00
    rla                                           ; $6e2d: $17
    add hl, sp                                    ; $6e2e: $39
    nop                                           ; $6e2f: $00
    ld e, $39                                     ; $6e30: $1e $39
    nop                                           ; $6e32: $00
    dec d                                         ; $6e33: $15
    ld d, $00                                     ; $6e34: $16 $00
    inc sp                                        ; $6e36: $33
    inc b                                         ; $6e37: $04
    ld l, c                                       ; $6e38: $69
    rla                                           ; $6e39: $17
    ld [hl], $00                                  ; $6e3a: $36 $00
    dec d                                         ; $6e3c: $15
    inc b                                         ; $6e3d: $04
    nop                                           ; $6e3e: $00
    add hl, de                                    ; $6e3f: $19
    nop                                           ; $6e40: $00
    ld [hl-], a                                   ; $6e41: $32
    ld e, $36                                     ; $6e42: $1e $36
    nop                                           ; $6e44: $00
    rrca                                          ; $6e45: $0f
    inc c                                         ; $6e46: $0c
    ld bc, $0057                                  ; $6e47: $01 $57 $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    add hl, bc                                    ; $6e4e: $09
    nop                                           ; $6e4f: $00
    ld b, b                                       ; $6e50: $40
    dec b                                         ; $6e51: $05
    ld d, b                                       ; $6e52: $50
    nop                                           ; $6e53: $00
    add hl, bc                                    ; $6e54: $09
    dec c                                         ; $6e55: $0d
    ld bc, $0905                                  ; $6e56: $01 $05 $09
    nop                                           ; $6e59: $00
    inc de                                        ; $6e5a: $13
    nop                                           ; $6e5b: $00
    di                                            ; $6e5c: $f3
    inc d                                         ; $6e5d: $14
    nop                                           ; $6e5e: $00
    or e                                          ; $6e5f: $b3
    dec d                                         ; $6e60: $15
    nop                                           ; $6e61: $00
    nop                                           ; $6e62: $00
    ld d, $5b                                     ; $6e63: $16 $5b
    nop                                           ; $6e65: $00
    ld d, d                                       ; $6e66: $52
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    dec de                                        ; $6e69: $1b
    inc b                                         ; $6e6a: $04
    nop                                           ; $6e6b: $00
    ld e, a                                       ; $6e6c: $5f
    ld bc, $0000                                  ; $6e6d: $01 $00 $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    ld a, d                                       ; $6e72: $7a
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    ld d, [hl]                                    ; $6e75: $56
    nop                                           ; $6e76: $00
    nop                                           ; $6e77: $00
    inc de                                        ; $6e78: $13
    nop                                           ; $6e79: $00
    di                                            ; $6e7a: $f3
    inc d                                         ; $6e7b: $14
    nop                                           ; $6e7c: $00
    or e                                          ; $6e7d: $b3
    dec d                                         ; $6e7e: $15
    nop                                           ; $6e7f: $00
    nop                                           ; $6e80: $00
    ld d, $5b                                     ; $6e81: $16 $5b
    nop                                           ; $6e83: $00
    ld d, d                                       ; $6e84: $52
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    dec de                                        ; $6e87: $1b
    inc b                                         ; $6e88: $04
    nop                                           ; $6e89: $00
    inc de                                        ; $6e8a: $13
    nop                                           ; $6e8b: $00
    xor $14                                       ; $6e8c: $ee $14
    ld [bc], a                                    ; $6e8e: $02
    ld e, a                                       ; $6e8f: $5f
    dec d                                         ; $6e90: $15
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    ld d, $37                                     ; $6e93: $16 $37
    nop                                           ; $6e95: $00
    ld d, d                                       ; $6e96: $52
    nop                                           ; $6e97: $00
    nop                                           ; $6e98: $00
    dec de                                        ; $6e99: $1b
    inc b                                         ; $6e9a: $04
    nop                                           ; $6e9b: $00
    inc de                                        ; $6e9c: $13
    nop                                           ; $6e9d: $00
    db $fc                                        ; $6e9e: $fc
    inc d                                         ; $6e9f: $14
    ld [bc], a                                    ; $6ea0: $02
    ld l, [hl]                                    ; $6ea1: $6e
    dec d                                         ; $6ea2: $15
    nop                                           ; $6ea3: $00
    nop                                           ; $6ea4: $00
    ld d, $39                                     ; $6ea5: $16 $39
    nop                                           ; $6ea7: $00
    ld d, d                                       ; $6ea8: $52
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    dec de                                        ; $6eab: $1b
    ld b, $00                                     ; $6eac: $06 $00
    inc de                                        ; $6eae: $13
    ld bc, $141e                                  ; $6eaf: $01 $1e $14
    ld [bc], a                                    ; $6eb2: $02
    sub l                                         ; $6eb3: $95
    dec d                                         ; $6eb4: $15
    nop                                           ; $6eb5: $00
    nop                                           ; $6eb6: $00
    ld d, $36                                     ; $6eb7: $16 $36
    nop                                           ; $6eb9: $00
    ld d, d                                       ; $6eba: $52
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    dec de                                        ; $6ebd: $1b
    nop                                           ; $6ebe: $00
    nop                                           ; $6ebf: $00
    inc de                                        ; $6ec0: $13
    nop                                           ; $6ec1: $00
    cp b                                          ; $6ec2: $b8
    inc d                                         ; $6ec3: $14
    ld [bc], a                                    ; $6ec4: $02
    ld b, e                                       ; $6ec5: $43
    dec d                                         ; $6ec6: $15
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    ld d, $66                                     ; $6ec9: $16 $66
    nop                                           ; $6ecb: $00
    ld d, d                                       ; $6ecc: $52
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    ld e, d                                       ; $6ecf: $5a
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    ld e, a                                       ; $6ed2: $5f
    ld bc, $1300                                  ; $6ed3: $01 $00 $13
    ld [bc], a                                    ; $6ed6: $02
    nop                                           ; $6ed7: $00
    ld l, [hl]                                    ; $6ed8: $6e
    nop                                           ; $6ed9: $00
    dec l                                         ; $6eda: $2d
    daa                                           ; $6edb: $27
    nop                                           ; $6edc: $00
    dec l                                         ; $6edd: $2d
    dec d                                         ; $6ede: $15
    add hl, de                                    ; $6edf: $19
    nop                                           ; $6ee0: $00
    inc sp                                        ; $6ee1: $33
    inc b                                         ; $6ee2: $04
    adc c                                         ; $6ee3: $89
    inc de                                        ; $6ee4: $13
    ld [bc], a                                    ; $6ee5: $02
    nop                                           ; $6ee6: $00
    ld l, [hl]                                    ; $6ee7: $6e
    nop                                           ; $6ee8: $00
    ld e, d                                       ; $6ee9: $5a
    ld e, $66                                     ; $6eea: $1e $66
    nop                                           ; $6eec: $00
    dec d                                         ; $6eed: $15
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    inc sp                                        ; $6ef0: $33
    inc b                                         ; $6ef1: $04
    adc d                                         ; $6ef2: $8a
    dec d                                         ; $6ef3: $15
    dec d                                         ; $6ef4: $15
    nop                                           ; $6ef5: $00
    inc sp                                        ; $6ef6: $33
    inc b                                         ; $6ef7: $04
    adc e                                         ; $6ef8: $8b
    dec d                                         ; $6ef9: $15
    dec d                                         ; $6efa: $15
    nop                                           ; $6efb: $00
    inc sp                                        ; $6efc: $33
    inc b                                         ; $6efd: $04
    adc h                                         ; $6efe: $8c
    dec d                                         ; $6eff: $15
    dec d                                         ; $6f00: $15
    nop                                           ; $6f01: $00
    inc sp                                        ; $6f02: $33
    inc b                                         ; $6f03: $04
    adc l                                         ; $6f04: $8d
    dec d                                         ; $6f05: $15
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    inc sp                                        ; $6f08: $33
    inc b                                         ; $6f09: $04
    adc [hl]                                      ; $6f0a: $8e
    rla                                           ; $6f0b: $17
    scf                                           ; $6f0c: $37
    nop                                           ; $6f0d: $00
    ld [hl+], a                                   ; $6f0e: $22
    add hl, sp                                    ; $6f0f: $39
    nop                                           ; $6f10: $00
    rla                                           ; $6f11: $17
    add hl, sp                                    ; $6f12: $39
    nop                                           ; $6f13: $00
    dec d                                         ; $6f14: $15
    ld [bc], a                                    ; $6f15: $02
    nop                                           ; $6f16: $00
    add hl, de                                    ; $6f17: $19
    nop                                           ; $6f18: $00
    ld e, $15                                     ; $6f19: $1e $15
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    add hl, de                                    ; $6f1d: $19
    nop                                           ; $6f1e: $00
    ld d, b                                       ; $6f1f: $50
    rla                                           ; $6f20: $17
    scf                                           ; $6f21: $37
    nop                                           ; $6f22: $00
    ld e, $37                                     ; $6f23: $1e $37
    nop                                           ; $6f25: $00
    rla                                           ; $6f26: $17
    add hl, sp                                    ; $6f27: $39
    nop                                           ; $6f28: $00
    ld e, $39                                     ; $6f29: $1e $39
    nop                                           ; $6f2b: $00
    rla                                           ; $6f2c: $17
    ld [hl], $00                                  ; $6f2d: $36 $00
    dec d                                         ; $6f2f: $15
    inc b                                         ; $6f30: $04
    nop                                           ; $6f31: $00
    add hl, de                                    ; $6f32: $19
    nop                                           ; $6f33: $00
    ld [hl-], a                                   ; $6f34: $32
    ld e, $36                                     ; $6f35: $1e $36
    nop                                           ; $6f37: $00
    rrca                                          ; $6f38: $0f
    dec c                                         ; $6f39: $0d
    ld bc, $0057                                  ; $6f3a: $01 $57 $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    ld e, a                                       ; $6f41: $5f
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    inc de                                        ; $6f44: $13
    nop                                           ; $6f45: $00
    xor $14                                       ; $6f46: $ee $14
    inc bc                                        ; $6f48: $03
    nop                                           ; $6f49: $00
    dec d                                         ; $6f4a: $15
    add hl, de                                    ; $6f4b: $19
    nop                                           ; $6f4c: $00
    ld d, $08                                     ; $6f4d: $16 $08
    nop                                           ; $6f4f: $00
    ld d, d                                       ; $6f50: $52
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    inc de                                        ; $6f53: $13
    nop                                           ; $6f54: $00
    di                                            ; $6f55: $f3
    inc d                                         ; $6f56: $14
    nop                                           ; $6f57: $00
    or e                                          ; $6f58: $b3
    dec d                                         ; $6f59: $15
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    ld d, $22                                     ; $6f5c: $16 $22
    nop                                           ; $6f5e: $00
    ld d, d                                       ; $6f5f: $52
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    dec de                                        ; $6f62: $1b
    inc b                                         ; $6f63: $04
    nop                                           ; $6f64: $00
    ld e, a                                       ; $6f65: $5f
    ld bc, $0000                                  ; $6f66: $01 $00 $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    ld e, a                                       ; $6f6b: $5f
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    add hl, bc                                    ; $6f6e: $09
    nop                                           ; $6f6f: $00
    add hl, sp                                    ; $6f70: $39
    dec b                                         ; $6f71: $05
    inc bc                                        ; $6f72: $03
    nop                                           ; $6f73: $00
    ld e, a                                       ; $6f74: $5f
    ld bc, $0000                                  ; $6f75: $01 $00 $00
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    add hl, bc                                    ; $6f7a: $09
    nop                                           ; $6f7b: $00
    scf                                           ; $6f7c: $37
    dec b                                         ; $6f7d: $05
    inc bc                                        ; $6f7e: $03
    nop                                           ; $6f7f: $00
    ld e, a                                       ; $6f80: $5f
    ld bc, $0000                                  ; $6f81: $01 $00 $00
    nop                                           ; $6f84: $00
    nop                                           ; $6f85: $00
    add hl, bc                                    ; $6f86: $09
    nop                                           ; $6f87: $00
    dec a                                         ; $6f88: $3d
    dec b                                         ; $6f89: $05
    inc c                                         ; $6f8a: $0c
    nop                                           ; $6f8b: $00
    ld d, [hl]                                    ; $6f8c: $56
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    rla                                           ; $6f8f: $17
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    inc e                                         ; $6f92: $1c
    ld e, e                                       ; $6f93: $5b
    nop                                           ; $6f94: $00
    ld e, a                                       ; $6f95: $5f
    ld bc, $1500                                  ; $6f96: $01 $00 $15
    ld b, l                                       ; $6f99: $45
    nop                                           ; $6f9a: $00
    inc sp                                        ; $6f9b: $33
    add hl, bc                                    ; $6f9c: $09
    ld [c], a                                     ; $6f9d: $e2
    dec d                                         ; $6f9e: $15
    inc b                                         ; $6f9f: $04
    nop                                           ; $6fa0: $00
    add hl, de                                    ; $6fa1: $19
    nop                                           ; $6fa2: $00
    inc d                                         ; $6fa3: $14
    dec de                                        ; $6fa4: $1b
    inc b                                         ; $6fa5: $04
    nop                                           ; $6fa6: $00
    ld d, a                                       ; $6fa7: $57
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    add hl, bc                                    ; $6fad: $09
    nop                                           ; $6fae: $00
    ld b, b                                       ; $6faf: $40
    dec b                                         ; $6fb0: $05
    inc c                                         ; $6fb1: $0c
    nop                                           ; $6fb2: $00
    ld d, [hl]                                    ; $6fb3: $56
    nop                                           ; $6fb4: $00
    nop                                           ; $6fb5: $00
    rla                                           ; $6fb6: $17
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    inc e                                         ; $6fb9: $1c
    ld e, e                                       ; $6fba: $5b
    nop                                           ; $6fbb: $00
    ld e, a                                       ; $6fbc: $5f
    ld bc, $1500                                  ; $6fbd: $01 $00 $15
    ld b, l                                       ; $6fc0: $45
    nop                                           ; $6fc1: $00
    inc sp                                        ; $6fc2: $33
    add hl, bc                                    ; $6fc3: $09
    ld [c], a                                     ; $6fc4: $e2
    dec d                                         ; $6fc5: $15
    inc b                                         ; $6fc6: $04
    nop                                           ; $6fc7: $00
    add hl, de                                    ; $6fc8: $19
    nop                                           ; $6fc9: $00
    inc d                                         ; $6fca: $14
    dec de                                        ; $6fcb: $1b
    inc b                                         ; $6fcc: $04
    nop                                           ; $6fcd: $00
    ld d, a                                       ; $6fce: $57
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    ld d, [hl]                                    ; $6fd4: $56
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    rla                                           ; $6fd7: $17
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    inc e                                         ; $6fda: $1c
    ld [hl+], a                                   ; $6fdb: $22
    nop                                           ; $6fdc: $00
    ld e, a                                       ; $6fdd: $5f
    ld bc, $1500                                  ; $6fde: $01 $00 $15
    ld b, c                                       ; $6fe1: $41
    nop                                           ; $6fe2: $00
    inc sp                                        ; $6fe3: $33
    add hl, bc                                    ; $6fe4: $09
    ld [c], a                                     ; $6fe5: $e2
    dec d                                         ; $6fe6: $15
    inc b                                         ; $6fe7: $04
    nop                                           ; $6fe8: $00
    add hl, de                                    ; $6fe9: $19
    nop                                           ; $6fea: $00
    inc d                                         ; $6feb: $14
    dec de                                        ; $6fec: $1b
    inc b                                         ; $6fed: $04
    nop                                           ; $6fee: $00
    ld d, a                                       ; $6fef: $57
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    nop                                           ; $6ff4: $00
    ld e, a                                       ; $6ff5: $5f
    ld bc, $0000                                  ; $6ff6: $01 $00 $00
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    add hl, bc                                    ; $6ffb: $09
    ld l, $01                                     ; $6ffc: $2e $01
    dec b                                         ; $6ffe: $05
    ld [bc], a                                    ; $6fff: $02
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    dec d                                         ; $7004: $15
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    inc sp                                        ; $7007: $33
    inc b                                         ; $7008: $04
    ld e, h                                       ; $7009: $5c
    ld l, d                                       ; $700a: $6a
    dec c                                         ; $700b: $0d
    nop                                           ; $700c: $00
    rrca                                          ; $700d: $0f
    ld l, $01                                     ; $700e: $2e $01
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    add hl, bc                                    ; $7013: $09
    ld [hl-], a                                   ; $7014: $32
    ld bc, $0205                                  ; $7015: $01 $05 $02
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    dec d                                         ; $701c: $15
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    inc sp                                        ; $701f: $33
    inc b                                         ; $7020: $04
    ld e, h                                       ; $7021: $5c
    scf                                           ; $7022: $37
    stop                                          ; $7023: $10 $00
    rrca                                          ; $7025: $0f
    ld [hl-], a                                   ; $7026: $32
    ld bc, $0000                                  ; $7027: $01 $00 $00
    nop                                           ; $702a: $00
    add hl, bc                                    ; $702b: $09
    ld c, [hl]                                    ; $702c: $4e
    ld bc, $0205                                  ; $702d: $01 $05 $02
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    dec d                                         ; $7034: $15
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    inc sp                                        ; $7037: $33
    inc b                                         ; $7038: $04
    ld e, h                                       ; $7039: $5c
    scf                                           ; $703a: $37
    jr nz, jr_00c_703d                            ; $703b: $20 $00

jr_00c_703d:
    rrca                                          ; $703d: $0f
    ld c, [hl]                                    ; $703e: $4e
    ld bc, $0000                                  ; $703f: $01 $00 $00
    nop                                           ; $7042: $00
    inc bc                                        ; $7043: $03
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    ld [hl], $00                                  ; $7047: $36 $00
    ld c, [hl]                                    ; $7049: $4e
    ld e, a                                       ; $704a: $5f
    nop                                           ; $704b: $00
    nop                                           ; $704c: $00
    add hl, bc                                    ; $704d: $09
    nop                                           ; $704e: $00
    scf                                           ; $704f: $37
    dec b                                         ; $7050: $05
    rrca                                          ; $7051: $0f
    nop                                           ; $7052: $00
    add hl, bc                                    ; $7053: $09
    dec c                                         ; $7054: $0d
    ld bc, $0305                                  ; $7055: $01 $05 $03
    nop                                           ; $7058: $00
    ld e, a                                       ; $7059: $5f
    ld bc, $0000                                  ; $705a: $01 $00 $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    ld d, [hl]                                    ; $705f: $56
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    rla                                           ; $7062: $17
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    dec de                                        ; $7065: $1b
    ld [bc], a                                    ; $7066: $02
    nop                                           ; $7067: $00
    ld e, a                                       ; $7068: $5f
    ld bc, $6d00                                  ; $7069: $01 $00 $6d
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    dec d                                         ; $706e: $15
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    inc sp                                        ; $7071: $33
    inc b                                         ; $7072: $04
    dec a                                         ; $7073: $3d
    rrca                                          ; $7074: $0f
    dec c                                         ; $7075: $0d
    ld bc, $0057                                  ; $7076: $01 $57 $00
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    add hl, bc                                    ; $7080: $09
    inc sp                                        ; $7081: $33
    ld bc, $0205                                  ; $7082: $01 $05 $02
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    dec d                                         ; $7089: $15
    nop                                           ; $708a: $00
    nop                                           ; $708b: $00
    inc sp                                        ; $708c: $33
    inc b                                         ; $708d: $04
    ld e, h                                       ; $708e: $5c
    scf                                           ; $708f: $37
    inc b                                         ; $7090: $04
    nop                                           ; $7091: $00
    rrca                                          ; $7092: $0f
    inc sp                                        ; $7093: $33
    ld bc, $0000                                  ; $7094: $01 $00 $00
    nop                                           ; $7097: $00
    add hl, bc                                    ; $7098: $09
    ld c, a                                       ; $7099: $4f
    ld bc, $0205                                  ; $709a: $01 $05 $02
    nop                                           ; $709d: $00
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    dec d                                         ; $70a1: $15
    nop                                           ; $70a2: $00
    nop                                           ; $70a3: $00
    inc sp                                        ; $70a4: $33
    inc b                                         ; $70a5: $04
    ld e, h                                       ; $70a6: $5c
    scf                                           ; $70a7: $37
    ld b, b                                       ; $70a8: $40
    nop                                           ; $70a9: $00
    rrca                                          ; $70aa: $0f
    ld c, a                                       ; $70ab: $4f
    ld bc, $0000                                  ; $70ac: $01 $00 $00
    nop                                           ; $70af: $00
    ld [bc], a                                    ; $70b0: $02
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    ld l, h                                       ; $70b4: $6c
    add hl, bc                                    ; $70b5: $09
    nop                                           ; $70b6: $00
    ld d, a                                       ; $70b7: $57
    dec b                                         ; $70b8: $05
    ld [hl+], a                                   ; $70b9: $22
    nop                                           ; $70ba: $00
    ld e, a                                       ; $70bb: $5f
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    inc de                                        ; $70be: $13
    nop                                           ; $70bf: $00
    add b                                         ; $70c0: $80
    inc d                                         ; $70c1: $14
    nop                                           ; $70c2: $00
    ld [hl], a                                    ; $70c3: $77
    dec d                                         ; $70c4: $15
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    ld d, $37                                     ; $70c7: $16 $37
    nop                                           ; $70c9: $00
    ld d, d                                       ; $70ca: $52
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    dec de                                        ; $70cd: $1b
    ld b, $00                                     ; $70ce: $06 $00
    inc de                                        ; $70d0: $13
    nop                                           ; $70d1: $00
    add b                                         ; $70d2: $80
    inc d                                         ; $70d3: $14
    nop                                           ; $70d4: $00
    ld d, b                                       ; $70d5: $50
    dec d                                         ; $70d6: $15
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    ld d, $38                                     ; $70d9: $16 $38
    nop                                           ; $70db: $00
    ld d, d                                       ; $70dc: $52
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    dec de                                        ; $70df: $1b
    ld b, $00                                     ; $70e0: $06 $00
    inc de                                        ; $70e2: $13
    nop                                           ; $70e3: $00
    adc c                                         ; $70e4: $89
    inc d                                         ; $70e5: $14
    nop                                           ; $70e6: $00
    ld c, d                                       ; $70e7: $4a
    dec d                                         ; $70e8: $15
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    ld d, $39                                     ; $70eb: $16 $39
    nop                                           ; $70ed: $00
    ld d, d                                       ; $70ee: $52
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    dec de                                        ; $70f1: $1b
    ld b, $00                                     ; $70f2: $06 $00
    inc de                                        ; $70f4: $13
    nop                                           ; $70f5: $00
    inc sp                                        ; $70f6: $33
    inc d                                         ; $70f7: $14
    nop                                           ; $70f8: $00
    ld h, c                                       ; $70f9: $61
    dec d                                         ; $70fa: $15
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    ld d, $16                                     ; $70fd: $16 $16
    nop                                           ; $70ff: $00
    ld d, d                                       ; $7100: $52
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    dec de                                        ; $7103: $1b
    ld [bc], a                                    ; $7104: $02
    nop                                           ; $7105: $00
    inc de                                        ; $7106: $13
    nop                                           ; $7107: $00
    ld c, b                                       ; $7108: $48
    inc d                                         ; $7109: $14
    nop                                           ; $710a: $00
    ld c, c                                       ; $710b: $49
    dec d                                         ; $710c: $15
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    ld d, $22                                     ; $710f: $16 $22
    nop                                           ; $7111: $00
    ld d, d                                       ; $7112: $52
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    dec de                                        ; $7115: $1b
    inc b                                         ; $7116: $04
    nop                                           ; $7117: $00
    ld e, a                                       ; $7118: $5f
    ld bc, $0000                                  ; $7119: $01 $00 $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    ld e, a                                       ; $7121: $5f
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    add hl, bc                                    ; $7124: $09
    nop                                           ; $7125: $00
    inc sp                                        ; $7126: $33
    dec b                                         ; $7127: $05
    ld de, $0900                                  ; $7128: $11 $00 $09
    ld [$0501], sp                                ; $712b: $08 $01 $05
    rrca                                          ; $712e: $0f
    nop                                           ; $712f: $00
    add hl, bc                                    ; $7130: $09
    ld a, [$0502]                                 ; $7131: $fa $02 $05
    dec b                                         ; $7134: $05
    nop                                           ; $7135: $00
    rrca                                          ; $7136: $0f
    ld [$0f02], sp                                ; $7137: $08 $02 $0f
    ld a, [$7900]                                 ; $713a: $fa $00 $79
    ld bc, $0029                                  ; $713d: $01 $29 $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    inc de                                        ; $7142: $13
    rst $38                                       ; $7143: $ff
    add sp, $14                                   ; $7144: $e8 $14
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    dec d                                         ; $7148: $15
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    ld d, $39                                     ; $714b: $16 $39
    ld bc, $0052                                  ; $714d: $01 $52 $00
    nop                                           ; $7150: $00
    ld [hl+], a                                   ; $7151: $22
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    ld e, a                                       ; $7154: $5f
    ld bc, $0000                                  ; $7155: $01 $00 $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    add hl, bc                                    ; $715a: $09
    nop                                           ; $715b: $00
    ld b, e                                       ; $715c: $43
    dec b                                         ; $715d: $05
    dec c                                         ; $715e: $0d
    nop                                           ; $715f: $00
    add hl, bc                                    ; $7160: $09
    dec b                                         ; $7161: $05
    nop                                           ; $7162: $00
    dec b                                         ; $7163: $05
    inc bc                                        ; $7164: $03
    nop                                           ; $7165: $00
    inc bc                                        ; $7166: $03
    ccf                                           ; $7167: $3f
    nop                                           ; $7168: $00
    inc bc                                        ; $7169: $03
    add hl, bc                                    ; $716a: $09
    nop                                           ; $716b: $00
    add hl, bc                                    ; $716c: $09
    dec b                                         ; $716d: $05
    ld bc, $0305                                  ; $716e: $01 $05 $03
    nop                                           ; $7171: $00
    inc bc                                        ; $7172: $03
    ld c, h                                       ; $7173: $4c
    nop                                           ; $7174: $00
    inc bc                                        ; $7175: $03
    dec b                                         ; $7176: $05
    nop                                           ; $7177: $00
    add hl, bc                                    ; $7178: $09
    dec b                                         ; $7179: $05
    ld [bc], a                                    ; $717a: $02
    dec b                                         ; $717b: $05
    inc bc                                        ; $717c: $03
    nop                                           ; $717d: $00
    ld e, a                                       ; $717e: $5f
    ld bc, $2800                                  ; $717f: $01 $00 $28
    inc l                                         ; $7182: $2c
    nop                                           ; $7183: $00
    add hl, bc                                    ; $7184: $09
    nop                                           ; $7185: $00
    ld e, b                                       ; $7186: $58
    dec b                                         ; $7187: $05
    inc c                                         ; $7188: $0c
    nop                                           ; $7189: $00
    add hl, bc                                    ; $718a: $09
    ld a, [bc]                                    ; $718b: $0a
    ld [bc], a                                    ; $718c: $02
    dec b                                         ; $718d: $05
    ld [bc], a                                    ; $718e: $02
    nop                                           ; $718f: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    add hl, bc                                    ; $7193: $09
    ld a, [bc]                                    ; $7194: $0a
    ld bc, $0205                                  ; $7195: $01 $05 $02
    nop                                           ; $7198: $00
    inc bc                                        ; $7199: $03
    jr jr_00c_719c                                ; $719a: $18 $00

jr_00c_719c:
    add hl, bc                                    ; $719c: $09
    add hl, bc                                    ; $719d: $09
    ld bc, $0205                                  ; $719e: $01 $05 $02
    nop                                           ; $71a1: $00
    inc bc                                        ; $71a2: $03
    ld [$5f00], sp                                ; $71a3: $08 $00 $5f
    ld bc, $0000                                  ; $71a6: $01 $00 $00
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    add hl, bc                                    ; $71ab: $09
    nop                                           ; $71ac: $00
    ld d, a                                       ; $71ad: $57
    dec b                                         ; $71ae: $05
    ld [bc], a                                    ; $71af: $02
    nop                                           ; $71b0: $00
    inc bc                                        ; $71b1: $03
    ld e, b                                       ; $71b2: $58
    nop                                           ; $71b3: $00
    ld e, a                                       ; $71b4: $5f
    ld bc, $0000                                  ; $71b5: $01 $00 $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    ld [bc], a                                    ; $71ba: $02
    ld d, $00                                     ; $71bb: $16 $00
    ld e, a                                       ; $71bd: $5f
    ld bc, $6d00                                  ; $71be: $01 $00 $6d
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    dec d                                         ; $71c3: $15
    ld l, $00                                     ; $71c4: $2e $00
    inc sp                                        ; $71c6: $33
    inc b                                         ; $71c7: $04
    ld e, $15                                     ; $71c8: $1e $15
    nop                                           ; $71ca: $00
    nop                                           ; $71cb: $00
    inc sp                                        ; $71cc: $33
    inc b                                         ; $71cd: $04
    rra                                           ; $71ce: $1f
    dec d                                         ; $71cf: $15
    ld l, $00                                     ; $71d0: $2e $00
    inc sp                                        ; $71d2: $33
    inc b                                         ; $71d3: $04
    jr nz, jr_00c_71e5                            ; $71d4: $20 $0f

    ld a, [bc]                                    ; $71d6: $0a
    ld bc, $0015                                  ; $71d7: $01 $15 $00
    nop                                           ; $71da: $00
    ld b, d                                       ; $71db: $42
    nop                                           ; $71dc: $00
    ld bc, $0000                                  ; $71dd: $01 $00 $00
    nop                                           ; $71e0: $00
    ld [bc], a                                    ; $71e1: $02
    add hl, bc                                    ; $71e2: $09
    nop                                           ; $71e3: $00
    ld e, a                                       ; $71e4: $5f

jr_00c_71e5:
    ld bc, $6d00                                  ; $71e5: $01 $00 $6d
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    dec d                                         ; $71ea: $15
    ld b, c                                       ; $71eb: $41
    nop                                           ; $71ec: $00
    inc sp                                        ; $71ed: $33
    inc b                                         ; $71ee: $04
    ld hl, $0a0f                                  ; $71ef: $21 $0f $0a
    ld [bc], a                                    ; $71f2: $02
    ld d, a                                       ; $71f3: $57
    nop                                           ; $71f4: $00
    nop                                           ; $71f5: $00
    ld a, c                                       ; $71f6: $79
    nop                                           ; $71f7: $00
    jr c, jr_00c_71fa                             ; $71f8: $38 $00

jr_00c_71fa:
    nop                                           ; $71fa: $00
    nop                                           ; $71fb: $00
    inc de                                        ; $71fc: $13
    nop                                           ; $71fd: $00
    add d                                         ; $71fe: $82
    inc d                                         ; $71ff: $14
    nop                                           ; $7200: $00
    dec a                                         ; $7201: $3d
    dec d                                         ; $7202: $15
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    ld d, $22                                     ; $7205: $16 $22
    nop                                           ; $7207: $00
    ld d, d                                       ; $7208: $52
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    dec de                                        ; $720b: $1b
    ld b, $00                                     ; $720c: $06 $00
    inc de                                        ; $720e: $13
    nop                                           ; $720f: $00
    ld e, d                                       ; $7210: $5a
    inc d                                         ; $7211: $14
    nop                                           ; $7212: $00
    dec a                                         ; $7213: $3d
    dec d                                         ; $7214: $15
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    ld d, $16                                     ; $7217: $16 $16
    nop                                           ; $7219: $00
    ld d, d                                       ; $721a: $52
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    dec de                                        ; $721d: $1b
    ld [bc], a                                    ; $721e: $02
    nop                                           ; $721f: $00
    ld bc, $0000                                  ; $7220: $01 $00 $00
    dec d                                         ; $7223: $15
    add hl, sp                                    ; $7224: $39
    nop                                           ; $7225: $00
    ld b, $01                                     ; $7226: $06 $01
    cp h                                          ; $7228: $bc
    dec d                                         ; $7229: $15
    ld l, $00                                     ; $722a: $2e $00
    inc sp                                        ; $722c: $33
    rlca                                          ; $722d: $07
    sub e                                         ; $722e: $93
    dec d                                         ; $722f: $15
    inc l                                         ; $7230: $2c
    nop                                           ; $7231: $00
    inc sp                                        ; $7232: $33
    rlca                                          ; $7233: $07
    sub h                                         ; $7234: $94
    dec d                                         ; $7235: $15
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    inc sp                                        ; $7238: $33
    rlca                                          ; $7239: $07
    sub l                                         ; $723a: $95
    dec d                                         ; $723b: $15
    ld l, $00                                     ; $723c: $2e $00
    inc sp                                        ; $723e: $33
    rlca                                          ; $723f: $07
    sub [hl]                                      ; $7240: $96
    dec d                                         ; $7241: $15
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    inc sp                                        ; $7244: $33
    rlca                                          ; $7245: $07
    sub a                                         ; $7246: $97
    dec d                                         ; $7247: $15
    ld l, $00                                     ; $7248: $2e $00
    inc sp                                        ; $724a: $33
    rlca                                          ; $724b: $07
    sbc b                                         ; $724c: $98
    rrca                                          ; $724d: $0f
    dec b                                         ; $724e: $05
    ld bc, $0015                                  ; $724f: $01 $15 $00
    nop                                           ; $7252: $00
    ld b, d                                       ; $7253: $42
    nop                                           ; $7254: $00
    sub [hl]                                      ; $7255: $96
    ld [bc], a                                    ; $7256: $02
    add hl, bc                                    ; $7257: $09
    nop                                           ; $7258: $00
    daa                                           ; $7259: $27
    nop                                           ; $725a: $00
    ld a, [bc]                                    ; $725b: $0a
    dec d                                         ; $725c: $15
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    inc sp                                        ; $725f: $33
    rlca                                          ; $7260: $07
    sbc c                                         ; $7261: $99
    dec d                                         ; $7262: $15
    ld l, $00                                     ; $7263: $2e $00
    inc sp                                        ; $7265: $33
    rlca                                          ; $7266: $07
    sbc d                                         ; $7267: $9a
    rrca                                          ; $7268: $0f
    dec b                                         ; $7269: $05
    ld [bc], a                                    ; $726a: $02
    ld d, l                                       ; $726b: $55
    dec b                                         ; $726c: $05
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    rla                                           ; $7271: $17
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    inc de                                        ; $7274: $13
    nop                                           ; $7275: $00
    dec a                                         ; $7276: $3d
    ld e, b                                       ; $7277: $58
    nop                                           ; $7278: $00
    ld l, a                                       ; $7279: $6f
    dec de                                        ; $727a: $1b
    ld b, $00                                     ; $727b: $06 $00
    inc de                                        ; $727d: $13
    nop                                           ; $727e: $00
    add d                                         ; $727f: $82
    inc d                                         ; $7280: $14
    nop                                           ; $7281: $00
    dec [hl]                                      ; $7282: $35
    dec d                                         ; $7283: $15
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    ld d, $37                                     ; $7286: $16 $37
    nop                                           ; $7288: $00
    ld d, d                                       ; $7289: $52
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    dec de                                        ; $728c: $1b
    ld b, $00                                     ; $728d: $06 $00
    inc de                                        ; $728f: $13
    nop                                           ; $7290: $00
    ld d, h                                       ; $7291: $54
    inc d                                         ; $7292: $14
    nop                                           ; $7293: $00
    ld b, h                                       ; $7294: $44
    dec d                                         ; $7295: $15
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    ld d, $38                                     ; $7298: $16 $38
    nop                                           ; $729a: $00
    ld d, d                                       ; $729b: $52
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    dec de                                        ; $729e: $1b
    ld [bc], a                                    ; $729f: $02
    nop                                           ; $72a0: $00
    inc de                                        ; $72a1: $13
    nop                                           ; $72a2: $00
    ld e, d                                       ; $72a3: $5a
    inc d                                         ; $72a4: $14
    nop                                           ; $72a5: $00
    dec a                                         ; $72a6: $3d
    dec d                                         ; $72a7: $15
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    ld d, $16                                     ; $72aa: $16 $16
    nop                                           ; $72ac: $00
    ld d, d                                       ; $72ad: $52
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    dec de                                        ; $72b0: $1b
    ld [bc], a                                    ; $72b1: $02
    nop                                           ; $72b2: $00
    ld e, a                                       ; $72b3: $5f
    ld bc, $0100                                  ; $72b4: $01 $00 $01
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    inc de                                        ; $72b9: $13
    nop                                           ; $72ba: $00
    add b                                         ; $72bb: $80
    inc d                                         ; $72bc: $14
    nop                                           ; $72bd: $00
    ld l, c                                       ; $72be: $69
    dec d                                         ; $72bf: $15
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    ld d, $37                                     ; $72c2: $16 $37
    nop                                           ; $72c4: $00
    ld d, d                                       ; $72c5: $52
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    dec de                                        ; $72c8: $1b
    ld b, $00                                     ; $72c9: $06 $00
    inc de                                        ; $72cb: $13
    nop                                           ; $72cc: $00
    add b                                         ; $72cd: $80
    inc d                                         ; $72ce: $14
    nop                                           ; $72cf: $00
    ld d, b                                       ; $72d0: $50
    dec d                                         ; $72d1: $15
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    ld d, $38                                     ; $72d4: $16 $38
    nop                                           ; $72d6: $00
    ld d, d                                       ; $72d7: $52
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    dec de                                        ; $72da: $1b
    ld b, $00                                     ; $72db: $06 $00
    inc de                                        ; $72dd: $13
    nop                                           ; $72de: $00
    adc c                                         ; $72df: $89
    inc d                                         ; $72e0: $14
    nop                                           ; $72e1: $00
    ld c, d                                       ; $72e2: $4a
    dec d                                         ; $72e3: $15
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    ld d, $39                                     ; $72e6: $16 $39
    nop                                           ; $72e8: $00
    ld d, d                                       ; $72e9: $52
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    dec de                                        ; $72ec: $1b
    ld b, $00                                     ; $72ed: $06 $00
    inc de                                        ; $72ef: $13
    nop                                           ; $72f0: $00
    ld e, h                                       ; $72f1: $5c
    inc d                                         ; $72f2: $14
    nop                                           ; $72f3: $00
    ld c, d                                       ; $72f4: $4a
    dec d                                         ; $72f5: $15
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    ld d, $16                                     ; $72f8: $16 $16
    nop                                           ; $72fa: $00
    ld d, d                                       ; $72fb: $52
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    dec de                                        ; $72fe: $1b
    ld [bc], a                                    ; $72ff: $02
    nop                                           ; $7300: $00
    inc de                                        ; $7301: $13
    nop                                           ; $7302: $00
    ld c, b                                       ; $7303: $48
    inc d                                         ; $7304: $14
    nop                                           ; $7305: $00
    ld c, c                                       ; $7306: $49
    dec d                                         ; $7307: $15
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    ld d, $22                                     ; $730a: $16 $22
    nop                                           ; $730c: $00
    ld d, d                                       ; $730d: $52
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    dec de                                        ; $7310: $1b
    ld [bc], a                                    ; $7311: $02
    nop                                           ; $7312: $00
    add hl, bc                                    ; $7313: $09
    ld b, $01                                     ; $7314: $06 $01
    dec b                                         ; $7316: $05
    inc bc                                        ; $7317: $03
    nop                                           ; $7318: $00
    rrca                                          ; $7319: $0f
    ld b, $00                                     ; $731a: $06 $00
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    ld e, a                                       ; $731f: $5f
    ld bc, $0900                                  ; $7320: $01 $00 $09
    jr nc, jr_00c_7326                            ; $7323: $30 $01

    dec b                                         ; $7325: $05

jr_00c_7326:
    dec bc                                        ; $7326: $0b
    nop                                           ; $7327: $00
    ld d, [hl]                                    ; $7328: $56
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    dec d                                         ; $732b: $15
    ld l, $00                                     ; $732c: $2e $00
    inc sp                                        ; $732e: $33
    inc bc                                        ; $732f: $03
    push hl                                       ; $7330: $e5
    rrca                                          ; $7331: $0f
    ld b, $01                                     ; $7332: $06 $01
    dec d                                         ; $7334: $15
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    ld b, d                                       ; $7337: $42
    nop                                           ; $7338: $00
    ld a, [bc]                                    ; $7339: $0a
    ld h, d                                       ; $733a: $62
    ld e, l                                       ; $733b: $5d
    nop                                           ; $733c: $00
    ld d, a                                       ; $733d: $57
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    jr z, jr_00c_7374                             ; $7340: $28 $32

    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    ld d, [hl]                                    ; $7346: $56
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    dec d                                         ; $7349: $15
    ld l, $00                                     ; $734a: $2e $00
    inc sp                                        ; $734c: $33
    inc bc                                        ; $734d: $03
    rst $18                                       ; $734e: $df
    dec d                                         ; $734f: $15
    inc l                                         ; $7350: $2c
    nop                                           ; $7351: $00
    inc sp                                        ; $7352: $33
    inc bc                                        ; $7353: $03
    ldh [$15], a                                  ; $7354: $e0 $15
    ld l, $00                                     ; $7356: $2e $00
    inc sp                                        ; $7358: $33
    inc bc                                        ; $7359: $03
    pop hl                                        ; $735a: $e1
    dec d                                         ; $735b: $15
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    inc sp                                        ; $735e: $33
    inc bc                                        ; $735f: $03
    ld [c], a                                     ; $7360: $e2
    dec d                                         ; $7361: $15
    add hl, de                                    ; $7362: $19
    nop                                           ; $7363: $00
    inc sp                                        ; $7364: $33
    inc bc                                        ; $7365: $03
    db $e3                                        ; $7366: $e3
    rrca                                          ; $7367: $0f
    ld b, $01                                     ; $7368: $06 $01
    dec d                                         ; $736a: $15
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    ld b, d                                       ; $736d: $42
    nop                                           ; $736e: $00
    ld a, [bc]                                    ; $736f: $0a
    ld d, [hl]                                    ; $7370: $56
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    dec d                                         ; $7373: $15

jr_00c_7374:
    ld l, $00                                     ; $7374: $2e $00
    inc sp                                        ; $7376: $33
    inc bc                                        ; $7377: $03
    db $e4                                        ; $7378: $e4
    ld h, d                                       ; $7379: $62
    ld e, l                                       ; $737a: $5d
    nop                                           ; $737b: $00
    rrca                                          ; $737c: $0f
    jr nc, jr_00c_7380                            ; $737d: $30 $01

    ld d, a                                       ; $737f: $57

jr_00c_7380:
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    jr z, jr_00c_73b6                             ; $7382: $28 $32

    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    ld e, a                                       ; $7388: $5f
    ld bc, $0000                                  ; $7389: $01 $00 $00
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    inc bc                                        ; $738e: $03
    nop                                           ; $738f: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    ld h, b                                       ; $7392: $60
    nop                                           ; $7393: $00
    ld [hl], d                                    ; $7394: $72
    ld e, a                                       ; $7395: $5f
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    add hl, bc                                    ; $7398: $09
    nop                                           ; $7399: $00
    ld de, $1c05                                  ; $739a: $11 $05 $1c
    nop                                           ; $739d: $00
    add hl, bc                                    ; $739e: $09
    dec d                                         ; $739f: $15
    ld bc, $0305                                  ; $73a0: $01 $05 $03
    nop                                           ; $73a3: $00
    ld e, a                                       ; $73a4: $5f
    ld bc, $0000                                  ; $73a5: $01 $00 $00
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    add hl, bc                                    ; $73aa: $09
    rra                                           ; $73ab: $1f
    ld bc, $1605                                  ; $73ac: $01 $05 $16
    nop                                           ; $73af: $00
    ld d, [hl]                                    ; $73b0: $56
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    rla                                           ; $73b3: $17
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00

jr_00c_73b6:
    dec de                                        ; $73b6: $1b
    ld b, $00                                     ; $73b7: $06 $00
    inc de                                        ; $73b9: $13
    nop                                           ; $73ba: $00
    ld d, c                                       ; $73bb: $51
    inc d                                         ; $73bc: $14
    nop                                           ; $73bd: $00
    rst $10                                       ; $73be: $d7
    dec d                                         ; $73bf: $15
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    ld d, $2f                                     ; $73c2: $16 $2f
    nop                                           ; $73c4: $00
    dec de                                        ; $73c5: $1b
    ld [bc], a                                    ; $73c6: $02
    nop                                           ; $73c7: $00
    ld e, a                                       ; $73c8: $5f
    ld bc, $1500                                  ; $73c9: $01 $00 $15
    ld b, e                                       ; $73cc: $43
    nop                                           ; $73cd: $00
    inc sp                                        ; $73ce: $33
    ld [bc], a                                    ; $73cf: $02
    ld h, b                                       ; $73d0: $60
    dec d                                         ; $73d1: $15
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    inc sp                                        ; $73d4: $33
    ld [bc], a                                    ; $73d5: $02
    ld h, c                                       ; $73d6: $61
    dec d                                         ; $73d7: $15
    ld b, e                                       ; $73d8: $43
    nop                                           ; $73d9: $00
    inc sp                                        ; $73da: $33
    ld [bc], a                                    ; $73db: $02
    ld h, d                                       ; $73dc: $62
    ld l, $09                                     ; $73dd: $2e $09
    nop                                           ; $73df: $00
    rla                                           ; $73e0: $17
    cpl                                           ; $73e1: $2f
    nop                                           ; $73e2: $00
    ld e, $2f                                     ; $73e3: $1e $2f
    nop                                           ; $73e5: $00
    ld d, a                                       ; $73e6: $57
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    rrca                                          ; $73e9: $0f
    dec d                                         ; $73ea: $15
    ld bc, $0000                                  ; $73eb: $01 $00 $00
    nop                                           ; $73ee: $00
    ld e, a                                       ; $73ef: $5f
    ld bc, $0000                                  ; $73f0: $01 $00 $00
    nop                                           ; $73f3: $00
    nop                                           ; $73f4: $00
    add hl, bc                                    ; $73f5: $09
    nop                                           ; $73f6: $00
    ld de, $0405                                  ; $73f7: $11 $05 $04
    nop                                           ; $73fa: $00
    rrca                                          ; $73fb: $0f
    ld a, [$2800]                                 ; $73fc: $fa $00 $28
    ld d, a                                       ; $73ff: $57
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    ld bc, $0000                                  ; $740a: $01 $00 $00
    daa                                           ; $740d: $27
    nop                                           ; $740e: $00
    ld bc, $0000                                  ; $740f: $01 $00 $00
    nop                                           ; $7412: $00
    inc c                                         ; $7413: $0c
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    ld bc, $036e                                  ; $7416: $01 $6e $03
    dec l                                         ; $7419: $2d
    inc bc                                        ; $741a: $03
    ccf                                           ; $741b: $3f
    inc bc                                        ; $741c: $03
    ld h, b                                       ; $741d: $60
    inc b                                         ; $741e: $04
    ld [bc], a                                    ; $741f: $02
    inc b                                         ; $7420: $04
    inc hl                                        ; $7421: $23
    inc b                                         ; $7422: $04
    ld b, h                                       ; $7423: $44
    inc b                                         ; $7424: $04
    ld h, l                                       ; $7425: $65
    inc b                                         ; $7426: $04
    add [hl]                                      ; $7427: $86
    inc b                                         ; $7428: $04
    and a                                         ; $7429: $a7
    inc b                                         ; $742a: $04
    ret z                                         ; $742b: $c8

    ld e, a                                       ; $742c: $5f
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    add hl, bc                                    ; $742f: $09
    nop                                           ; $7430: $00
    ld [$3c05], sp                                ; $7431: $08 $05 $3c
    nop                                           ; $7434: $00
    add hl, bc                                    ; $7435: $09
    dec b                                         ; $7436: $05
    ld bc, $0505                                  ; $7437: $01 $05 $05
    nop                                           ; $743a: $00
    rla                                           ; $743b: $17
    nop                                           ; $743c: $00
    nop                                           ; $743d: $00
    ld hl, $002d                                  ; $743e: $21 $2d $00
    ld d, [hl]                                    ; $7441: $56
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    rrca                                          ; $7444: $0f
    dec b                                         ; $7445: $05
    nop                                           ; $7446: $00
    inc de                                        ; $7447: $13
    nop                                           ; $7448: $00
    xor a                                         ; $7449: $af
    inc d                                         ; $744a: $14
    nop                                           ; $744b: $00
    ld a, [hl]                                    ; $744c: $7e
    dec d                                         ; $744d: $15
    ld h, $00                                     ; $744e: $26 $00
    ld d, $08                                     ; $7450: $16 $08
    nop                                           ; $7452: $00
    ld d, d                                       ; $7453: $52
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    inc de                                        ; $7456: $13
    nop                                           ; $7457: $00
    ld e, d                                       ; $7458: $5a
    inc d                                         ; $7459: $14
    nop                                           ; $745a: $00
    ld l, [hl]                                    ; $745b: $6e
    dec d                                         ; $745c: $15
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    ld d, $4a                                     ; $745f: $16 $4a
    nop                                           ; $7461: $00
    ld d, d                                       ; $7462: $52
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    dec de                                        ; $7465: $1b
    inc b                                         ; $7466: $04
    nop                                           ; $7467: $00
    inc de                                        ; $7468: $13
    nop                                           ; $7469: $00
    ld b, l                                       ; $746a: $45
    inc d                                         ; $746b: $14
    nop                                           ; $746c: $00
    sub d                                         ; $746d: $92
    dec d                                         ; $746e: $15
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    ld d, $38                                     ; $7471: $16 $38
    nop                                           ; $7473: $00
    ld d, d                                       ; $7474: $52
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    dec de                                        ; $7477: $1b
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    inc de                                        ; $747a: $13
    nop                                           ; $747b: $00
    xor a                                         ; $747c: $af
    inc d                                         ; $747d: $14
    nop                                           ; $747e: $00
    rst $18                                       ; $747f: $df
    dec d                                         ; $7480: $15
    ld l, $00                                     ; $7481: $2e $00
    ld d, $08                                     ; $7483: $16 $08
    nop                                           ; $7485: $00
    ld d, d                                       ; $7486: $52
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    inc de                                        ; $7489: $13
    nop                                           ; $748a: $00
    ld a, a                                       ; $748b: $7f
    inc d                                         ; $748c: $14
    nop                                           ; $748d: $00
    xor e                                         ; $748e: $ab
    dec d                                         ; $748f: $15
    inc h                                         ; $7490: $24
    nop                                           ; $7491: $00
    ld d, $08                                     ; $7492: $16 $08
    nop                                           ; $7494: $00
    ld d, d                                       ; $7495: $52
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    inc de                                        ; $7498: $13
    nop                                           ; $7499: $00
    ld a, a                                       ; $749a: $7f
    inc d                                         ; $749b: $14
    ld bc, $150a                                  ; $749c: $01 $0a $15
    inc e                                         ; $749f: $1c
    nop                                           ; $74a0: $00
    ld d, $08                                     ; $74a1: $16 $08
    nop                                           ; $74a3: $00
    ld d, d                                       ; $74a4: $52
    nop                                           ; $74a5: $00
    nop                                           ; $74a6: $00
    inc de                                        ; $74a7: $13
    nop                                           ; $74a8: $00
    add b                                         ; $74a9: $80
    inc d                                         ; $74aa: $14
    ld bc, $153f                                  ; $74ab: $01 $3f $15
    ld [bc], a                                    ; $74ae: $02
    nop                                           ; $74af: $00
    ld d, $4e                                     ; $74b0: $16 $4e
    nop                                           ; $74b2: $00
    ld d, d                                       ; $74b3: $52
    nop                                           ; $74b4: $00
    nop                                           ; $74b5: $00
    inc de                                        ; $74b6: $13
    nop                                           ; $74b7: $00
    xor a                                         ; $74b8: $af
    inc d                                         ; $74b9: $14
    ld bc, $156a                                  ; $74ba: $01 $6a $15
    rlca                                          ; $74bd: $07
    nop                                           ; $74be: $00
    ld d, $4e                                     ; $74bf: $16 $4e
    nop                                           ; $74c1: $00
    ld [hl], l                                    ; $74c2: $75
    ld b, $00                                     ; $74c3: $06 $00
    ld d, d                                       ; $74c5: $52
    nop                                           ; $74c6: $00
    nop                                           ; $74c7: $00
    inc de                                        ; $74c8: $13
    nop                                           ; $74c9: $00
    xor a                                         ; $74ca: $af
    inc d                                         ; $74cb: $14
    ld bc, $15a1                                  ; $74cc: $01 $a1 $15
    inc b                                         ; $74cf: $04
    nop                                           ; $74d0: $00
    ld d, $4e                                     ; $74d1: $16 $4e
    nop                                           ; $74d3: $00
    ld d, d                                       ; $74d4: $52
    nop                                           ; $74d5: $00
    nop                                           ; $74d6: $00
    ld a, d                                       ; $74d7: $7a
    ld bc, $1700                                  ; $74d8: $01 $00 $17
    jr c, jr_00c_74dd                             ; $74db: $38 $00

jr_00c_74dd:
    ld e, a                                       ; $74dd: $5f
    ld bc, $2100                                  ; $74de: $01 $00 $21
    jr nc, jr_00c_74e3                            ; $74e1: $30 $00

jr_00c_74e3:
    nop                                           ; $74e3: $00
    nop                                           ; $74e4: $00
    nop                                           ; $74e5: $00
    add hl, bc                                    ; $74e6: $09
    nop                                           ; $74e7: $00
    add hl, bc                                    ; $74e8: $09
    dec b                                         ; $74e9: $05
    add hl, sp                                    ; $74ea: $39
    nop                                           ; $74eb: $00
    ld a, d                                       ; $74ec: $7a
    ld bc, $1300                                  ; $74ed: $01 $00 $13
    nop                                           ; $74f0: $00
    ld e, d                                       ; $74f1: $5a
    inc d                                         ; $74f2: $14
    nop                                           ; $74f3: $00
    ld l, [hl]                                    ; $74f4: $6e
    dec d                                         ; $74f5: $15
    nop                                           ; $74f6: $00
    nop                                           ; $74f7: $00
    ld d, $4a                                     ; $74f8: $16 $4a
    nop                                           ; $74fa: $00
    ld d, d                                       ; $74fb: $52
    nop                                           ; $74fc: $00
    nop                                           ; $74fd: $00
    dec de                                        ; $74fe: $1b
    inc b                                         ; $74ff: $04
    nop                                           ; $7500: $00
    inc de                                        ; $7501: $13
    nop                                           ; $7502: $00
    dec sp                                        ; $7503: $3b
    inc d                                         ; $7504: $14
    nop                                           ; $7505: $00
    sub d                                         ; $7506: $92
    dec d                                         ; $7507: $15
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    ld d, $38                                     ; $750a: $16 $38
    nop                                           ; $750c: $00
    ld hl, $0061                                  ; $750d: $21 $61 $00
    ld d, d                                       ; $7510: $52
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    dec de                                        ; $7513: $1b
    inc b                                         ; $7514: $04
    nop                                           ; $7515: $00
    inc de                                        ; $7516: $13
    nop                                           ; $7517: $00
    xor a                                         ; $7518: $af
    inc d                                         ; $7519: $14
    nop                                           ; $751a: $00
    ld a, [hl]                                    ; $751b: $7e
    dec d                                         ; $751c: $15
    ld h, $00                                     ; $751d: $26 $00
    ld d, $08                                     ; $751f: $16 $08
    nop                                           ; $7521: $00
    ld d, d                                       ; $7522: $52
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    inc de                                        ; $7525: $13
    nop                                           ; $7526: $00
    xor a                                         ; $7527: $af
    inc d                                         ; $7528: $14
    nop                                           ; $7529: $00
    rst $18                                       ; $752a: $df
    dec d                                         ; $752b: $15
    ld l, $00                                     ; $752c: $2e $00
    ld d, $08                                     ; $752e: $16 $08
    nop                                           ; $7530: $00
    ld d, d                                       ; $7531: $52
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    inc de                                        ; $7534: $13
    nop                                           ; $7535: $00
    ld a, a                                       ; $7536: $7f
    inc d                                         ; $7537: $14
    nop                                           ; $7538: $00
    xor e                                         ; $7539: $ab
    dec d                                         ; $753a: $15
    inc h                                         ; $753b: $24
    nop                                           ; $753c: $00
    ld d, $08                                     ; $753d: $16 $08
    nop                                           ; $753f: $00
    ld d, d                                       ; $7540: $52
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    inc de                                        ; $7543: $13
    nop                                           ; $7544: $00
    ld a, a                                       ; $7545: $7f
    inc d                                         ; $7546: $14
    ld bc, $150a                                  ; $7547: $01 $0a $15
    inc e                                         ; $754a: $1c
    nop                                           ; $754b: $00
    ld d, $08                                     ; $754c: $16 $08
    nop                                           ; $754e: $00
    ld d, d                                       ; $754f: $52
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    inc de                                        ; $7552: $13
    nop                                           ; $7553: $00
    add b                                         ; $7554: $80
    inc d                                         ; $7555: $14
    ld bc, $153f                                  ; $7556: $01 $3f $15
    ld [bc], a                                    ; $7559: $02
    nop                                           ; $755a: $00
    ld d, $4e                                     ; $755b: $16 $4e
    nop                                           ; $755d: $00
    ld d, d                                       ; $755e: $52
    nop                                           ; $755f: $00
    nop                                           ; $7560: $00
    inc de                                        ; $7561: $13
    nop                                           ; $7562: $00
    xor a                                         ; $7563: $af
    inc d                                         ; $7564: $14
    ld bc, $156a                                  ; $7565: $01 $6a $15
    rlca                                          ; $7568: $07
    nop                                           ; $7569: $00
    ld d, $4e                                     ; $756a: $16 $4e
    nop                                           ; $756c: $00
    ld [hl], l                                    ; $756d: $75
    ld b, $00                                     ; $756e: $06 $00
    ld d, d                                       ; $7570: $52
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    inc de                                        ; $7573: $13
    nop                                           ; $7574: $00
    xor a                                         ; $7575: $af
    inc d                                         ; $7576: $14
    ld bc, $15a1                                  ; $7577: $01 $a1 $15
    inc b                                         ; $757a: $04
    nop                                           ; $757b: $00
    ld d, $4e                                     ; $757c: $16 $4e
    nop                                           ; $757e: $00
    ld d, d                                       ; $757f: $52
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    add hl, bc                                    ; $7582: $09
    inc bc                                        ; $7583: $03
    inc bc                                        ; $7584: $03
    dec b                                         ; $7585: $05
    inc bc                                        ; $7586: $03
    nop                                           ; $7587: $00
    rla                                           ; $7588: $17
    jr c, jr_00c_758b                             ; $7589: $38 $00

jr_00c_758b:
    ld e, $38                                     ; $758b: $1e $38
    nop                                           ; $758d: $00
    ld e, a                                       ; $758e: $5f
    ld bc, $0000                                  ; $758f: $01 $00 $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    ld e, a                                       ; $7594: $5f
    ld bc, $0000                                  ; $7595: $01 $00 $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    ld e, a                                       ; $759a: $5f
    nop                                           ; $759b: $00
    nop                                           ; $759c: $00
    add hl, bc                                    ; $759d: $09
    nop                                           ; $759e: $00
    ld [$5005], sp                                ; $759f: $08 $05 $50
    nop                                           ; $75a2: $00
    add hl, bc                                    ; $75a3: $09
    rrca                                          ; $75a4: $0f
    ld bc, $0305                                  ; $75a5: $01 $05 $03
    nop                                           ; $75a8: $00
    ld e, a                                       ; $75a9: $5f
    ld bc, $0000                                  ; $75aa: $01 $00 $00
    nop                                           ; $75ad: $00
    nop                                           ; $75ae: $00
    ld d, [hl]                                    ; $75af: $56
    nop                                           ; $75b0: $00
    nop                                           ; $75b1: $00
    rla                                           ; $75b2: $17
    nop                                           ; $75b3: $00
    nop                                           ; $75b4: $00
    inc e                                         ; $75b5: $1c
    ld c, d                                       ; $75b6: $4a
    nop                                           ; $75b7: $00
    rla                                           ; $75b8: $17
    ld c, d                                       ; $75b9: $4a
    nop                                           ; $75ba: $00
    inc e                                         ; $75bb: $1c
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    ld e, a                                       ; $75be: $5f
    ld bc, $1500                                  ; $75bf: $01 $00 $15
    jr c, jr_00c_75c4                             ; $75c2: $38 $00

jr_00c_75c4:
    inc sp                                        ; $75c4: $33
    ld bc, $17db                                  ; $75c5: $01 $db $17
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    inc de                                        ; $75ca: $13
    nop                                           ; $75cb: $00
    ld a, l                                       ; $75cc: $7d
    ld [hl], c                                    ; $75cd: $71
    nop                                           ; $75ce: $00
    ld [hl], h                                    ; $75cf: $74
    ld hl, $002d                                  ; $75d0: $21 $2d $00
    inc de                                        ; $75d3: $13
    nop                                           ; $75d4: $00
    add b                                         ; $75d5: $80
    ld e, b                                       ; $75d6: $58
    nop                                           ; $75d7: $00
    ld a, a                                       ; $75d8: $7f
    rla                                           ; $75d9: $17
    ld c, d                                       ; $75da: $4a
    nop                                           ; $75db: $00
    dec de                                        ; $75dc: $1b
    inc b                                         ; $75dd: $04
    nop                                           ; $75de: $00
    dec d                                         ; $75df: $15
    jr c, jr_00c_75e2                             ; $75e0: $38 $00

jr_00c_75e2:
    inc sp                                        ; $75e2: $33
    ld bc, $5fdc                                  ; $75e3: $01 $dc $5f
    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    halt                                          ; $75e8: $76
    ld [$1826], sp                                ; $75e9: $08 $26 $18
    ld h, c                                       ; $75ec: $61
    nop                                           ; $75ed: $00
    ld e, a                                       ; $75ee: $5f
    ld bc, $1500                                  ; $75ef: $01 $00 $15
    add hl, de                                    ; $75f2: $19
    nop                                           ; $75f3: $00
    inc sp                                        ; $75f4: $33
    ld bc, $15dd                                  ; $75f5: $01 $dd $15
    nop                                           ; $75f8: $00
    nop                                           ; $75f9: $00
    inc sp                                        ; $75fa: $33
    ld bc, $15de                                  ; $75fb: $01 $de $15
    jr c, jr_00c_7600                             ; $75fe: $38 $00

jr_00c_7600:
    inc sp                                        ; $7600: $33
    ld bc, $0fdf                                  ; $7601: $01 $df $0f
    dec b                                         ; $7604: $05
    ld bc, $0015                                  ; $7605: $01 $15 $00
    nop                                           ; $7608: $00
    ld b, d                                       ; $7609: $42
    nop                                           ; $760a: $00
    ld bc, $006d                                  ; $760b: $01 $6d $00
    nop                                           ; $760e: $00
    dec d                                         ; $760f: $15
    ld bc, $7400                                  ; $7610: $01 $00 $74
    jr c, jr_00c_7615                             ; $7613: $38 $00

jr_00c_7615:
    inc de                                        ; $7615: $13
    nop                                           ; $7616: $00
    ld c, c                                       ; $7617: $49
    inc d                                         ; $7618: $14
    nop                                           ; $7619: $00
    adc a                                         ; $761a: $8f
    dec d                                         ; $761b: $15
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    ld d, $56                                     ; $761e: $16 $56
    nop                                           ; $7620: $00
    daa                                           ; $7621: $27
    nop                                           ; $7622: $00
    ld bc, $0d2e                                  ; $7623: $01 $2e $0d
    nop                                           ; $7626: $00
    ld e, a                                       ; $7627: $5f
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    halt                                          ; $762a: $76
    ld d, h                                       ; $762b: $54
    ld bc, $541e                                  ; $762c: $01 $1e $54
    nop                                           ; $762f: $00
    ld e, a                                       ; $7630: $5f
    ld bc, $2700                                  ; $7631: $01 $00 $27
    nop                                           ; $7634: $00
    ld [$005f], sp                                ; $7635: $08 $5f $00
    nop                                           ; $7638: $00
    rla                                           ; $7639: $17
    jr c, jr_00c_763c                             ; $763a: $38 $00

jr_00c_763c:
    ld hl, $0031                                  ; $763c: $21 $31 $00
    ld e, a                                       ; $763f: $5f
    ld bc, $2700                                  ; $7640: $01 $00 $27
    nop                                           ; $7643: $00
    jr nc, jr_00c_765b                            ; $7644: $30 $15

    inc l                                         ; $7646: $2c
    nop                                           ; $7647: $00
    inc sp                                        ; $7648: $33
    ld bc, $15e0                                  ; $7649: $01 $e0 $15
    jr c, jr_00c_764e                             ; $764c: $38 $00

jr_00c_764e:
    inc sp                                        ; $764e: $33
    ld bc, $15e1                                  ; $764f: $01 $e1 $15
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    inc sp                                        ; $7654: $33
    ld bc, $15e2                                  ; $7655: $01 $e2 $15
    jr c, jr_00c_765a                             ; $7658: $38 $00

jr_00c_765a:
    inc sp                                        ; $765a: $33

jr_00c_765b:
    ld bc, $15e3                                  ; $765b: $01 $e3 $15
    inc l                                         ; $765e: $2c
    nop                                           ; $765f: $00
    inc sp                                        ; $7660: $33
    ld bc, $17e4                                  ; $7661: $01 $e4 $17
    add hl, bc                                    ; $7664: $09
    nop                                           ; $7665: $00
    inc de                                        ; $7666: $13
    nop                                           ; $7667: $00
    ld a, l                                       ; $7668: $7d
    ld [hl], c                                    ; $7669: $71
    nop                                           ; $766a: $00
    ld [hl], h                                    ; $766b: $74
    ld e, h                                       ; $766c: $5c
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    ld e, $09                                     ; $766f: $1e $09
    nop                                           ; $7671: $00
    rla                                           ; $7672: $17
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    ld e, c                                       ; $7675: $59
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    inc de                                        ; $7678: $13
    nop                                           ; $7679: $00
    ld a, d                                       ; $767a: $7a
    ld e, b                                       ; $767b: $58
    nop                                           ; $767c: $00
    adc [hl]                                      ; $767d: $8e
    ld e, l                                       ; $767e: $5d
    nop                                           ; $767f: $00
    nop                                           ; $7680: $00
    dec de                                        ; $7681: $1b
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    ld h, d                                       ; $7684: $62
    add hl, bc                                    ; $7685: $09
    nop                                           ; $7686: $00
    ld d, a                                       ; $7687: $57
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    rrca                                          ; $768a: $0f
    rrca                                          ; $768b: $0f
    ld bc, $0000                                  ; $768c: $01 $00 $00
    nop                                           ; $768f: $00
    add hl, bc                                    ; $7690: $09
    nop                                           ; $7691: $00
    add hl, bc                                    ; $7692: $09
    dec b                                         ; $7693: $05
    ld b, c                                       ; $7694: $41
    nop                                           ; $7695: $00
    ld l, c                                       ; $7696: $69
    ld c, e                                       ; $7697: $4b
    nop                                           ; $7698: $00
    dec bc                                        ; $7699: $0b
    cp $02                                        ; $769a: $fe $02
    dec b                                         ; $769c: $05
    ld [bc], a                                    ; $769d: $02
    nop                                           ; $769e: $00
    inc bc                                        ; $769f: $03
    rra                                           ; $76a0: $1f
    nop                                           ; $76a1: $00
    ld l, c                                       ; $76a2: $69
    ld c, b                                       ; $76a3: $48
    nop                                           ; $76a4: $00
    dec bc                                        ; $76a5: $0b
    cp $01                                        ; $76a6: $fe $01
    dec b                                         ; $76a8: $05
    ld [bc], a                                    ; $76a9: $02
    nop                                           ; $76aa: $00
    inc bc                                        ; $76ab: $03
    dec de                                        ; $76ac: $1b
    nop                                           ; $76ad: $00
    ld l, c                                       ; $76ae: $69
    ld c, l                                       ; $76af: $4d
    nop                                           ; $76b0: $00
    dec bc                                        ; $76b1: $0b
    cp $01                                        ; $76b2: $fe $01
    dec b                                         ; $76b4: $05
    ld [bc], a                                    ; $76b5: $02
    nop                                           ; $76b6: $00
    inc bc                                        ; $76b7: $03
    rla                                           ; $76b8: $17
    nop                                           ; $76b9: $00
    dec d                                         ; $76ba: $15
    nop                                           ; $76bb: $00
    nop                                           ; $76bc: $00
    inc sp                                        ; $76bd: $33
    ld bc, $39fa                                  ; $76be: $01 $fa $39
    ld c, e                                       ; $76c1: $4b
    ld bc, $4b39                                  ; $76c2: $01 $39 $4b
    ld bc, $4839                                  ; $76c5: $01 $39 $48
    ld bc, $4d39                                  ; $76c8: $01 $39 $4d
    ld bc, $3815                                  ; $76cb: $01 $15 $38
    nop                                           ; $76ce: $00
    inc sp                                        ; $76cf: $33
    ld bc, $15fb                                  ; $76d0: $01 $fb $15
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    ld b, c                                       ; $76d5: $41
    nop                                           ; $76d6: $00
    dec b                                         ; $76d7: $05
    ld h, d                                       ; $76d8: $62
    ld d, e                                       ; $76d9: $53
    nop                                           ; $76da: $00
    ld l, l                                       ; $76db: $6d
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    jr c, @+$26                                   ; $76de: $38 $24

    nop                                           ; $76e0: $00
    ld l, l                                       ; $76e1: $6d
    nop                                           ; $76e2: $00
    nop                                           ; $76e3: $00
    ld d, [hl]                                    ; $76e4: $56
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    rrca                                          ; $76e7: $0f
    ld b, c                                       ; $76e8: $41
    ld bc, $007a                                  ; $76e9: $01 $7a $00
    nop                                           ; $76ec: $00
    inc l                                         ; $76ed: $2c
    ld b, $03                                     ; $76ee: $06 $03
    ld e, a                                       ; $76f0: $5f
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    jr z, jr_00c_7742                             ; $76f3: $28 $4d

    nop                                           ; $76f5: $00
    ld e, a                                       ; $76f6: $5f
    ld bc, $0000                                  ; $76f7: $01 $00 $00
    nop                                           ; $76fa: $00
    nop                                           ; $76fb: $00
    add hl, bc                                    ; $76fc: $09
    inc bc                                        ; $76fd: $03
    nop                                           ; $76fe: $00
    dec b                                         ; $76ff: $05
    dec e                                         ; $7700: $1d
    nop                                           ; $7701: $00
    dec d                                         ; $7702: $15
    jr c, jr_00c_7705                             ; $7703: $38 $00

jr_00c_7705:
    inc sp                                        ; $7705: $33
    ld bc, $15f6                                  ; $7706: $01 $f6 $15
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00
    ld b, d                                       ; $770b: $42
    nop                                           ; $770c: $00
    ld bc, $030f                                  ; $770d: $01 $0f $03
    ld bc, $0000                                  ; $7710: $01 $00 $00
    nop                                           ; $7713: $00
    add hl, bc                                    ; $7714: $09
    inc bc                                        ; $7715: $03
    ld bc, $1505                                  ; $7716: $01 $05 $15
    nop                                           ; $7719: $00
    dec d                                         ; $771a: $15
    jr c, jr_00c_771d                             ; $771b: $38 $00

jr_00c_771d:
    inc sp                                        ; $771d: $33
    ld bc, $15f7                                  ; $771e: $01 $f7 $15
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    ld b, d                                       ; $7723: $42
    nop                                           ; $7724: $00
    ld bc, $030f                                  ; $7725: $01 $0f $03
    ld [bc], a                                    ; $7728: $02
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    add hl, bc                                    ; $772c: $09
    inc bc                                        ; $772d: $03
    ld [bc], a                                    ; $772e: $02
    dec b                                         ; $772f: $05
    ld b, $00                                     ; $7730: $06 $00
    dec d                                         ; $7732: $15
    jr c, jr_00c_7735                             ; $7733: $38 $00

jr_00c_7735:
    inc sp                                        ; $7735: $33
    ld bc, $0ff8                                  ; $7736: $01 $f8 $0f
    inc bc                                        ; $7739: $03
    inc bc                                        ; $773a: $03
    nop                                           ; $773b: $00
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    inc bc                                        ; $773e: $03
    ld [$1500], sp                                ; $773f: $08 $00 $15

jr_00c_7742:
    jr c, jr_00c_7744                             ; $7742: $38 $00

jr_00c_7744:
    inc sp                                        ; $7744: $33
    ld bc, $15f9                                  ; $7745: $01 $f9 $15
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    ld b, d                                       ; $774a: $42
    nop                                           ; $774b: $00
    dec b                                         ; $774c: $05
    ld h, d                                       ; $774d: $62
    ld d, e                                       ; $774e: $53
    nop                                           ; $774f: $00
    jr c, @+$26                                   ; $7750: $38 $24

    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    add hl, bc                                    ; $7759: $09
    nop                                           ; $775a: $00
    add hl, bc                                    ; $775b: $09
    dec b                                         ; $775c: $05
    inc b                                         ; $775d: $04
    nop                                           ; $775e: $00
    dec d                                         ; $775f: $15
    jr c, jr_00c_7762                             ; $7760: $38 $00

jr_00c_7762:
    inc sp                                        ; $7762: $33
    ld bc, $00e7                                  ; $7763: $01 $e7 $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    add hl, bc                                    ; $776b: $09
    nop                                           ; $776c: $00
    add hl, bc                                    ; $776d: $09
    dec b                                         ; $776e: $05
    inc b                                         ; $776f: $04
    nop                                           ; $7770: $00
    dec d                                         ; $7771: $15
    inc l                                         ; $7772: $2c
    nop                                           ; $7773: $00
    inc sp                                        ; $7774: $33
    ld bc, $00e5                                  ; $7775: $01 $e5 $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    add hl, bc                                    ; $777a: $09
    nop                                           ; $777b: $00
    ld [$0405], sp                                ; $777c: $08 $05 $04
    nop                                           ; $777f: $00
    dec d                                         ; $7780: $15
    inc l                                         ; $7781: $2c
    nop                                           ; $7782: $00
    inc sp                                        ; $7783: $33
    ld [bc], a                                    ; $7784: $02
    ld a, [bc]                                    ; $7785: $0a
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778a: $00
    nop                                           ; $778b: $00
    add hl, bc                                    ; $778c: $09
    nop                                           ; $778d: $00
    add hl, bc                                    ; $778e: $09
    dec b                                         ; $778f: $05
    inc [hl]                                      ; $7790: $34
    nop                                           ; $7791: $00
    ld l, c                                       ; $7792: $69
    ld c, e                                       ; $7793: $4b
    nop                                           ; $7794: $00
    add hl, bc                                    ; $7795: $09
    cp $02                                        ; $7796: $fe $02
    inc b                                         ; $7798: $04
    ld [bc], a                                    ; $7799: $02
    nop                                           ; $779a: $00
    inc bc                                        ; $779b: $03
    ld [de], a                                    ; $779c: $12
    nop                                           ; $779d: $00
    ld l, c                                       ; $779e: $69
    ld c, b                                       ; $779f: $48
    nop                                           ; $77a0: $00
    add hl, bc                                    ; $77a1: $09
    cp $01                                        ; $77a2: $fe $01
    inc b                                         ; $77a4: $04
    ld [bc], a                                    ; $77a5: $02
    nop                                           ; $77a6: $00
    inc bc                                        ; $77a7: $03
    ld c, $00                                     ; $77a8: $0e $00
    ld l, c                                       ; $77aa: $69
    ld c, l                                       ; $77ab: $4d
    nop                                           ; $77ac: $00
    add hl, bc                                    ; $77ad: $09
    cp $01                                        ; $77ae: $fe $01
    inc b                                         ; $77b0: $04
    ld [bc], a                                    ; $77b1: $02
    nop                                           ; $77b2: $00
    inc bc                                        ; $77b3: $03
    ld a, [bc]                                    ; $77b4: $0a
    nop                                           ; $77b5: $00
    dec d                                         ; $77b6: $15
    nop                                           ; $77b7: $00
    nop                                           ; $77b8: $00
    inc sp                                        ; $77b9: $33
    ld bc, $15fa                                  ; $77ba: $01 $fa $15
    jr c, jr_00c_77bf                             ; $77bd: $38 $00

jr_00c_77bf:
    inc sp                                        ; $77bf: $33
    ld bc, $15fb                                  ; $77c0: $01 $fb $15
    nop                                           ; $77c3: $00
    nop                                           ; $77c4: $00
    ld b, c                                       ; $77c5: $41
    nop                                           ; $77c6: $00
    ld [bc], a                                    ; $77c7: $02
    ld h, d                                       ; $77c8: $62
    ld d, e                                       ; $77c9: $53
    nop                                           ; $77ca: $00
    jr c, @+$26                                   ; $77cb: $38 $24

    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    add hl, bc                                    ; $77d1: $09
    inc bc                                        ; $77d2: $03
    nop                                           ; $77d3: $00
    dec b                                         ; $77d4: $05
    dec e                                         ; $77d5: $1d
    nop                                           ; $77d6: $00
    dec d                                         ; $77d7: $15
    jr c, jr_00c_77da                             ; $77d8: $38 $00

jr_00c_77da:
    inc sp                                        ; $77da: $33
    ld bc, $15f6                                  ; $77db: $01 $f6 $15
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    ld b, d                                       ; $77e0: $42
    nop                                           ; $77e1: $00
    ld bc, $030f                                  ; $77e2: $01 $0f $03
    ld bc, $0000                                  ; $77e5: $01 $00 $00
    nop                                           ; $77e8: $00
    add hl, bc                                    ; $77e9: $09
    inc bc                                        ; $77ea: $03
    ld bc, $1505                                  ; $77eb: $01 $05 $15
    nop                                           ; $77ee: $00
    dec d                                         ; $77ef: $15
    jr c, jr_00c_77f2                             ; $77f0: $38 $00

jr_00c_77f2:
    inc sp                                        ; $77f2: $33
    ld bc, $15f7                                  ; $77f3: $01 $f7 $15
    nop                                           ; $77f6: $00
    nop                                           ; $77f7: $00
    ld b, d                                       ; $77f8: $42
    nop                                           ; $77f9: $00
    ld bc, $030f                                  ; $77fa: $01 $0f $03
    ld [bc], a                                    ; $77fd: $02
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    nop                                           ; $7800: $00
    add hl, bc                                    ; $7801: $09
    inc bc                                        ; $7802: $03
    ld [bc], a                                    ; $7803: $02
    dec b                                         ; $7804: $05
    ld b, $00                                     ; $7805: $06 $00
    dec d                                         ; $7807: $15
    jr c, jr_00c_780a                             ; $7808: $38 $00

jr_00c_780a:
    inc sp                                        ; $780a: $33
    ld bc, $0ff8                                  ; $780b: $01 $f8 $0f
    inc bc                                        ; $780e: $03
    inc bc                                        ; $780f: $03
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    inc bc                                        ; $7813: $03
    ld [$1500], sp                                ; $7814: $08 $00 $15
    jr c, jr_00c_7819                             ; $7817: $38 $00

jr_00c_7819:
    inc sp                                        ; $7819: $33
    ld bc, $15f9                                  ; $781a: $01 $f9 $15
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    ld b, d                                       ; $781f: $42
    nop                                           ; $7820: $00
    ld a, [bc]                                    ; $7821: $0a
    ld h, d                                       ; $7822: $62
    ld d, e                                       ; $7823: $53
    nop                                           ; $7824: $00
    jr c, jr_00c_784b                             ; $7825: $38 $24

    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    nop                                           ; $782b: $00
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    add hl, bc                                    ; $782e: $09
    nop                                           ; $782f: $00
    add hl, bc                                    ; $7830: $09
    dec b                                         ; $7831: $05
    inc b                                         ; $7832: $04
    nop                                           ; $7833: $00
    dec d                                         ; $7834: $15
    ld d, [hl]                                    ; $7835: $56
    nop                                           ; $7836: $00
    inc sp                                        ; $7837: $33
    ld [bc], a                                    ; $7838: $02
    inc bc                                        ; $7839: $03
    nop                                           ; $783a: $00
    nop                                           ; $783b: $00
    nop                                           ; $783c: $00
    add hl, bc                                    ; $783d: $09
    nop                                           ; $783e: $00
    ld [$0405], sp                                ; $783f: $08 $05 $04
    nop                                           ; $7842: $00
    dec d                                         ; $7843: $15
    ld d, [hl]                                    ; $7844: $56
    nop                                           ; $7845: $00
    inc sp                                        ; $7846: $33
    ld [bc], a                                    ; $7847: $02
    ld b, $00                                     ; $7848: $06 $00
    nop                                           ; $784a: $00

jr_00c_784b:
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    nop                                           ; $784d: $00
    nop                                           ; $784e: $00
    add hl, bc                                    ; $784f: $09
    nop                                           ; $7850: $00
    add hl, bc                                    ; $7851: $09
    dec b                                         ; $7852: $05
    inc b                                         ; $7853: $04
    nop                                           ; $7854: $00
    dec d                                         ; $7855: $15
    ld c, a                                       ; $7856: $4f
    nop                                           ; $7857: $00
    inc sp                                        ; $7858: $33
    ld [bc], a                                    ; $7859: $02
    inc b                                         ; $785a: $04
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    add hl, bc                                    ; $785e: $09
    nop                                           ; $785f: $00
    ld [$0405], sp                                ; $7860: $08 $05 $04
    nop                                           ; $7863: $00
    dec d                                         ; $7864: $15
    ld c, a                                       ; $7865: $4f
    nop                                           ; $7866: $00
    inc sp                                        ; $7867: $33
    ld [bc], a                                    ; $7868: $02
    rlca                                          ; $7869: $07
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    add hl, bc                                    ; $7870: $09
    nop                                           ; $7871: $00
    add hl, bc                                    ; $7872: $09
    dec b                                         ; $7873: $05
    inc b                                         ; $7874: $04
    nop                                           ; $7875: $00
    dec d                                         ; $7876: $15
    ld d, b                                       ; $7877: $50
    nop                                           ; $7878: $00
    inc sp                                        ; $7879: $33
    ld [bc], a                                    ; $787a: $02
    dec b                                         ; $787b: $05
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    add hl, bc                                    ; $787f: $09
    nop                                           ; $7880: $00
    ld [$0405], sp                                ; $7881: $08 $05 $04
    nop                                           ; $7884: $00
    dec d                                         ; $7885: $15
    ld d, b                                       ; $7886: $50
    nop                                           ; $7887: $00
    inc sp                                        ; $7888: $33
    ld [bc], a                                    ; $7889: $02
    ld [$0000], sp                                ; $788a: $08 $00 $00
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    add hl, bc                                    ; $7891: $09
    nop                                           ; $7892: $00
    add hl, bc                                    ; $7893: $09
    dec b                                         ; $7894: $05
    inc b                                         ; $7895: $04
    nop                                           ; $7896: $00
    dec d                                         ; $7897: $15
    add hl, de                                    ; $7898: $19
    nop                                           ; $7899: $00
    inc sp                                        ; $789a: $33
    inc bc                                        ; $789b: $03
    or [hl]                                       ; $789c: $b6
    nop                                           ; $789d: $00
    nop                                           ; $789e: $00
    nop                                           ; $789f: $00
    add hl, bc                                    ; $78a0: $09
    nop                                           ; $78a1: $00
    ld [$0405], sp                                ; $78a2: $08 $05 $04
    nop                                           ; $78a5: $00
    dec d                                         ; $78a6: $15
    add hl, de                                    ; $78a7: $19
    nop                                           ; $78a8: $00
    inc sp                                        ; $78a9: $33
    ld [bc], a                                    ; $78aa: $02
    dec bc                                        ; $78ab: $0b
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    nop                                           ; $78ae: $00
    nop                                           ; $78af: $00
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    add hl, bc                                    ; $78b2: $09
    nop                                           ; $78b3: $00
    add hl, bc                                    ; $78b4: $09
    dec b                                         ; $78b5: $05
    inc b                                         ; $78b6: $04
    nop                                           ; $78b7: $00
    dec d                                         ; $78b8: $15
    dec d                                         ; $78b9: $15
    nop                                           ; $78ba: $00
    inc sp                                        ; $78bb: $33
    inc bc                                        ; $78bc: $03
    cp h                                          ; $78bd: $bc
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    add hl, bc                                    ; $78c1: $09
    nop                                           ; $78c2: $00
    ld [$0405], sp                                ; $78c3: $08 $05 $04
    nop                                           ; $78c6: $00
    dec d                                         ; $78c7: $15
    dec d                                         ; $78c8: $15
    nop                                           ; $78c9: $00
    inc sp                                        ; $78ca: $33
    ld [bc], a                                    ; $78cb: $02
    inc c                                         ; $78cc: $0c
    nop                                           ; $78cd: $00
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    add hl, bc                                    ; $78d3: $09
    nop                                           ; $78d4: $00
    add hl, bc                                    ; $78d5: $09
    dec b                                         ; $78d6: $05
    inc b                                         ; $78d7: $04
    nop                                           ; $78d8: $00
    dec d                                         ; $78d9: $15
    ld d, $00                                     ; $78da: $16 $00
    inc sp                                        ; $78dc: $33
    ld [bc], a                                    ; $78dd: $02
    add hl, bc                                    ; $78de: $09
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    add hl, bc                                    ; $78e2: $09
    nop                                           ; $78e3: $00
    ld [$0405], sp                                ; $78e4: $08 $05 $04
    nop                                           ; $78e7: $00
    dec d                                         ; $78e8: $15
    ld d, $00                                     ; $78e9: $16 $00
    inc sp                                        ; $78eb: $33
    ld [bc], a                                    ; $78ec: $02
    add hl, bc                                    ; $78ed: $09
    nop                                           ; $78ee: $00
    nop                                           ; $78ef: $00
    nop                                           ; $78f0: $00
    nop                                           ; $78f1: $00
    nop                                           ; $78f2: $00
    nop                                           ; $78f3: $00
    add hl, bc                                    ; $78f4: $09
    nop                                           ; $78f5: $00
    add hl, bc                                    ; $78f6: $09
    dec b                                         ; $78f7: $05
    inc b                                         ; $78f8: $04
    nop                                           ; $78f9: $00
    dec d                                         ; $78fa: $15
    inc de                                        ; $78fb: $13
    nop                                           ; $78fc: $00
    inc sp                                        ; $78fd: $33
    ld [bc], a                                    ; $78fe: $02
    ld bc, $0000                                  ; $78ff: $01 $00 $00
    nop                                           ; $7902: $00
    add hl, bc                                    ; $7903: $09
    nop                                           ; $7904: $00
    ld [$0405], sp                                ; $7905: $08 $05 $04
    nop                                           ; $7908: $00
    dec d                                         ; $7909: $15
    inc de                                        ; $790a: $13
    nop                                           ; $790b: $00
    inc sp                                        ; $790c: $33
    ld [bc], a                                    ; $790d: $02
    ld [bc], a                                    ; $790e: $02
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    ld bc, $0000                                  ; $7915: $01 $00 $00
    daa                                           ; $7918: $27
    nop                                           ; $7919: $00
    ld bc, $0000                                  ; $791a: $01 $00 $00
    nop                                           ; $791d: $00
    inc bc                                        ; $791e: $03
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    pop hl                                        ; $7922: $e1
    ld bc, $5f20                                  ; $7923: $01 $20 $5f
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    add hl, bc                                    ; $7928: $09
    nop                                           ; $7929: $00
    rlca                                          ; $792a: $07
    dec b                                         ; $792b: $05
    dec bc                                        ; $792c: $0b
    nop                                           ; $792d: $00
    ld d, [hl]                                    ; $792e: $56
    nop                                           ; $792f: $00
    nop                                           ; $7930: $00
    rla                                           ; $7931: $17
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    inc e                                         ; $7934: $1c
    ld c, d                                       ; $7935: $4a
    nop                                           ; $7936: $00
    ld e, a                                       ; $7937: $5f
    ld bc, $1500                                  ; $7938: $01 $00 $15
    nop                                           ; $793b: $00
    nop                                           ; $793c: $00
    inc sp                                        ; $793d: $33
    ld bc, $157b                                  ; $793e: $01 $7b $15
    jr c, jr_00c_7943                             ; $7941: $38 $00

jr_00c_7943:
    inc sp                                        ; $7943: $33
    ld bc, $577c                                  ; $7944: $01 $7c $57
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794a: $00
    nop                                           ; $794b: $00
    add hl, bc                                    ; $794c: $09
    nop                                           ; $794d: $00
    dec bc                                        ; $794e: $0b
    dec b                                         ; $794f: $05
    dec bc                                        ; $7950: $0b
    nop                                           ; $7951: $00
    ld d, [hl]                                    ; $7952: $56
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    rla                                           ; $7955: $17
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    inc e                                         ; $7958: $1c
    ld c, d                                       ; $7959: $4a
    nop                                           ; $795a: $00
    ld e, a                                       ; $795b: $5f
    ld bc, $1500                                  ; $795c: $01 $00 $15
    nop                                           ; $795f: $00
    nop                                           ; $7960: $00
    inc sp                                        ; $7961: $33
    inc bc                                        ; $7962: $03
    ld [hl], c                                    ; $7963: $71
    dec d                                         ; $7964: $15
    jr c, jr_00c_7967                             ; $7965: $38 $00

jr_00c_7967:
    inc sp                                        ; $7967: $33
    inc bc                                        ; $7968: $03
    add e                                         ; $7969: $83
    ld d, a                                       ; $796a: $57
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    add hl, bc                                    ; $7970: $09
    nop                                           ; $7971: $00
    ld d, [hl]                                    ; $7972: $56
    dec b                                         ; $7973: $05
    ld [hl+], a                                   ; $7974: $22
    nop                                           ; $7975: $00
    ld d, [hl]                                    ; $7976: $56
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    rla                                           ; $7979: $17
    nop                                           ; $797a: $00
    nop                                           ; $797b: $00
    inc e                                         ; $797c: $1c
    ld c, d                                       ; $797d: $4a
    nop                                           ; $797e: $00
    ld e, a                                       ; $797f: $5f
    ld bc, $1500                                  ; $7980: $01 $00 $15
    jr c, jr_00c_7985                             ; $7983: $38 $00

jr_00c_7985:
    inc sp                                        ; $7985: $33
    ld [bc], a                                    ; $7986: $02
    rst $28                                       ; $7987: $ef
    dec d                                         ; $7988: $15
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    inc sp                                        ; $798b: $33
    ld [bc], a                                    ; $798c: $02
    ldh a, [$15]                                  ; $798d: $f0 $15
    jr c, jr_00c_7991                             ; $798f: $38 $00

jr_00c_7991:
    inc sp                                        ; $7991: $33
    ld [bc], a                                    ; $7992: $02
    pop af                                        ; $7993: $f1
    scf                                           ; $7994: $37
    ld bc, $3700                                  ; $7995: $01 $00 $37
    ld [bc], a                                    ; $7998: $02
    nop                                           ; $7999: $00
    dec d                                         ; $799a: $15
    jr c, jr_00c_799d                             ; $799b: $38 $00

jr_00c_799d:
    inc sp                                        ; $799d: $33
    ld [bc], a                                    ; $799e: $02
    ld a, [c]                                     ; $799f: $f2
    rrca                                          ; $79a0: $0f
    ld d, c                                       ; $79a1: $51
    ld bc, $270f                                  ; $79a2: $01 $0f $27
    ld bc, $082c                                  ; $79a5: $01 $2c $08
    ld [bc], a                                    ; $79a8: $02
    ld de, $0135                                  ; $79a9: $11 $35 $01
    add hl, bc                                    ; $79ac: $09
    dec [hl]                                      ; $79ad: $35
    ld b, $05                                     ; $79ae: $06 $05
    dec bc                                        ; $79b0: $0b
    nop                                           ; $79b1: $00
    rla                                           ; $79b2: $17
    nop                                           ; $79b3: $00
    nop                                           ; $79b4: $00
    ld e, e                                       ; $79b5: $5b
    nop                                           ; $79b6: $00
    nop                                           ; $79b7: $00
    ld [hl], $00                                  ; $79b8: $36 $00
    nop                                           ; $79ba: $00
    ld e, l                                       ; $79bb: $5d
    nop                                           ; $79bc: $00
    nop                                           ; $79bd: $00
    ld h, d                                       ; $79be: $62
    dec h                                         ; $79bf: $25
    nop                                           ; $79c0: $00
    add hl, sp                                    ; $79c1: $39
    inc h                                         ; $79c2: $24
    ld bc, $3815                                  ; $79c3: $01 $15 $38
    nop                                           ; $79c6: $00
    inc sp                                        ; $79c7: $33
    inc bc                                        ; $79c8: $03
    jp nz, $5628                                  ; $79c9: $c2 $28 $56

    nop                                           ; $79cc: $00
    inc bc                                        ; $79cd: $03
    ld [bc], a                                    ; $79ce: $02
    nop                                           ; $79cf: $00
    ld h, d                                       ; $79d0: $62
    ld d, e                                       ; $79d1: $53
    nop                                           ; $79d2: $00
    ld d, a                                       ; $79d3: $57
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    add hl, bc                                    ; $79d9: $09
    nop                                           ; $79da: $00
    ld d, e                                       ; $79db: $53
    dec b                                         ; $79dc: $05
    inc c                                         ; $79dd: $0c
    nop                                           ; $79de: $00
    add hl, bc                                    ; $79df: $09
    daa                                           ; $79e0: $27
    ld bc, $0905                                  ; $79e1: $01 $05 $09
    nop                                           ; $79e4: $00
    ld d, [hl]                                    ; $79e5: $56
    nop                                           ; $79e6: $00
    nop                                           ; $79e7: $00
    rla                                           ; $79e8: $17
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    inc e                                         ; $79eb: $1c
    ld c, d                                       ; $79ec: $4a
    nop                                           ; $79ed: $00
    ld e, a                                       ; $79ee: $5f
    ld bc, $1500                                  ; $79ef: $01 $00 $15
    jr c, jr_00c_79f4                             ; $79f2: $38 $00

jr_00c_79f4:
    inc sp                                        ; $79f4: $33
    ld [bc], a                                    ; $79f5: $02
    ld c, $57                                     ; $79f6: $0e $57
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    nop                                           ; $79fd: $00
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    ld e, a                                       ; $7a00: $5f
    ld bc, $0000                                  ; $7a01: $01 $00 $00
    nop                                           ; $7a04: $00
    nop                                           ; $7a05: $00
    ld e, a                                       ; $7a06: $5f
    nop                                           ; $7a07: $00
    nop                                           ; $7a08: $00
    add hl, bc                                    ; $7a09: $09
    nop                                           ; $7a0a: $00
    add hl, bc                                    ; $7a0b: $09
    dec b                                         ; $7a0c: $05
    ld de, $0900                                  ; $7a0d: $11 $00 $09
    ld [de], a                                    ; $7a10: $12
    ld bc, $0305                                  ; $7a11: $01 $05 $03
    nop                                           ; $7a14: $00
    ld e, a                                       ; $7a15: $5f
    ld bc, $0000                                  ; $7a16: $01 $00 $00
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    ld d, [hl]                                    ; $7a1b: $56
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    rla                                           ; $7a1e: $17
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    dec de                                        ; $7a21: $1b
    nop                                           ; $7a22: $00
    nop                                           ; $7a23: $00
    ld e, a                                       ; $7a24: $5f
    ld bc, $1500                                  ; $7a25: $01 $00 $15
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    inc sp                                        ; $7a2a: $33
    ld bc, $38f2                                  ; $7a2b: $01 $f2 $38
    ld c, b                                       ; $7a2e: $48
    nop                                           ; $7a2f: $00
    dec d                                         ; $7a30: $15
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    inc sp                                        ; $7a33: $33
    ld bc, $0ff3                                  ; $7a34: $01 $f3 $0f
    ld [de], a                                    ; $7a37: $12
    ld bc, $0057                                  ; $7a38: $01 $57 $00
    nop                                           ; $7a3b: $00
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    ld e, a                                       ; $7a3f: $5f
    ld bc, $0000                                  ; $7a40: $01 $00 $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    ld e, a                                       ; $7a45: $5f
    nop                                           ; $7a46: $00
    nop                                           ; $7a47: $00
    add hl, bc                                    ; $7a48: $09
    nop                                           ; $7a49: $00
    rlca                                          ; $7a4a: $07
    dec b                                         ; $7a4b: $05
    ld [$1300], sp                                ; $7a4c: $08 $00 $13
    nop                                           ; $7a4f: $00
    call z, Call_000_0014                         ; $7a50: $cc $14 $00
    ld e, c                                       ; $7a53: $59
    dec d                                         ; $7a54: $15
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    ld d, $4a                                     ; $7a57: $16 $4a
    nop                                           ; $7a59: $00
    ld d, d                                       ; $7a5a: $52
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    ld e, a                                       ; $7a5d: $5f
    ld bc, $0000                                  ; $7a5e: $01 $00 $00
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    add hl, bc                                    ; $7a63: $09
    nop                                           ; $7a64: $00
    dec bc                                        ; $7a65: $0b
    dec b                                         ; $7a66: $05
    ld [$1300], sp                                ; $7a67: $08 $00 $13
    nop                                           ; $7a6a: $00
    call z, Call_000_0014                         ; $7a6b: $cc $14 $00
    ld e, c                                       ; $7a6e: $59
    dec d                                         ; $7a6f: $15
    nop                                           ; $7a70: $00
    nop                                           ; $7a71: $00
    ld d, $4a                                     ; $7a72: $16 $4a
    nop                                           ; $7a74: $00
    ld d, d                                       ; $7a75: $52
    nop                                           ; $7a76: $00
    nop                                           ; $7a77: $00
    ld e, a                                       ; $7a78: $5f
    ld bc, $0000                                  ; $7a79: $01 $00 $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    add hl, bc                                    ; $7a7e: $09
    nop                                           ; $7a7f: $00
    ld d, [hl]                                    ; $7a80: $56
    dec b                                         ; $7a81: $05
    ld [$1300], sp                                ; $7a82: $08 $00 $13
    nop                                           ; $7a85: $00
    call z, Call_000_0014                         ; $7a86: $cc $14 $00
    ld e, c                                       ; $7a89: $59
    dec d                                         ; $7a8a: $15
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    ld d, $4a                                     ; $7a8d: $16 $4a
    nop                                           ; $7a8f: $00
    ld d, d                                       ; $7a90: $52
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    ld e, a                                       ; $7a93: $5f
    ld bc, $0000                                  ; $7a94: $01 $00 $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    add hl, bc                                    ; $7a99: $09
    nop                                           ; $7a9a: $00
    ld d, e                                       ; $7a9b: $53
    dec b                                         ; $7a9c: $05
    dec bc                                        ; $7a9d: $0b
    nop                                           ; $7a9e: $00
    add hl, bc                                    ; $7a9f: $09
    daa                                           ; $7aa0: $27
    ld bc, $0805                                  ; $7aa1: $01 $05 $08
    nop                                           ; $7aa4: $00
    inc de                                        ; $7aa5: $13
    nop                                           ; $7aa6: $00
    call z, Call_000_0014                         ; $7aa7: $cc $14 $00
    ld e, c                                       ; $7aaa: $59
    dec d                                         ; $7aab: $15
    nop                                           ; $7aac: $00
    nop                                           ; $7aad: $00
    ld d, $4a                                     ; $7aae: $16 $4a
    nop                                           ; $7ab0: $00
    ld d, d                                       ; $7ab1: $52
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    ld e, a                                       ; $7ab4: $5f
    ld bc, $0000                                  ; $7ab5: $01 $00 $00
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    nop                                           ; $7abb: $00
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    ld bc, $0000                                  ; $7ac0: $01 $00 $00
    nop                                           ; $7ac3: $00
    nop                                           ; $7ac4: $00
    nop                                           ; $7ac5: $00
    dec b                                         ; $7ac6: $05
    nop                                           ; $7ac7: $00
    nop                                           ; $7ac8: $00
    nop                                           ; $7ac9: $00
    inc bc                                        ; $7aca: $03
    nop                                           ; $7acb: $00
    inc c                                         ; $7acc: $0c
    nop                                           ; $7acd: $00
    dec d                                         ; $7ace: $15
    nop                                           ; $7acf: $00
    ld [hl], d                                    ; $7ad0: $72
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    dec d                                         ; $7ad4: $15
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    inc sp                                        ; $7ad7: $33
    add hl, bc                                    ; $7ad8: $09
    ld de, $0000                                  ; $7ad9: $11 $00 $00
    nop                                           ; $7adc: $00
    dec d                                         ; $7add: $15
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    inc sp                                        ; $7ae0: $33
    add hl, bc                                    ; $7ae1: $09
    ld de, $0000                                  ; $7ae2: $11 $00 $00
    nop                                           ; $7ae5: $00
    add hl, bc                                    ; $7ae6: $09
    nop                                           ; $7ae7: $00
    ld e, b                                       ; $7ae8: $58
    inc b                                         ; $7ae9: $04
    inc b                                         ; $7aea: $04
    nop                                           ; $7aeb: $00
    dec d                                         ; $7aec: $15
    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    inc sp                                        ; $7aef: $33
    add hl, bc                                    ; $7af0: $09
    ld de, $0000                                  ; $7af1: $11 $00 $00
    nop                                           ; $7af4: $00
    add hl, bc                                    ; $7af5: $09
    add hl, bc                                    ; $7af6: $09
    ld bc, $0405                                  ; $7af7: $01 $05 $04
    nop                                           ; $7afa: $00
    dec d                                         ; $7afb: $15
    nop                                           ; $7afc: $00
    nop                                           ; $7afd: $00
    inc sp                                        ; $7afe: $33
    add hl, bc                                    ; $7aff: $09
    ld de, $0000                                  ; $7b00: $11 $00 $00
    nop                                           ; $7b03: $00
    ld d, [hl]                                    ; $7b04: $56
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    rrca                                          ; $7b07: $0f
    add hl, bc                                    ; $7b08: $09
    ld bc, $6538                                  ; $7b09: $01 $38 $65
    nop                                           ; $7b0c: $00
    daa                                           ; $7b0d: $27
    nop                                           ; $7b0e: $00
    ld a, [bc]                                    ; $7b0f: $0a
    ld e, a                                       ; $7b10: $5f
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    inc de                                        ; $7b13: $13
    nop                                           ; $7b14: $00
    call $0114                                    ; $7b15: $cd $14 $01
    dec bc                                        ; $7b18: $0b
    dec d                                         ; $7b19: $15
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    ld d, $22                                     ; $7b1c: $16 $22
    nop                                           ; $7b1e: $00
    ld d, d                                       ; $7b1f: $52
    nop                                           ; $7b20: $00
    nop                                           ; $7b21: $00
    ld e, a                                       ; $7b22: $5f
    ld bc, $1700                                  ; $7b23: $01 $00 $17
    nop                                           ; $7b26: $00
    nop                                           ; $7b27: $00
    dec de                                        ; $7b28: $1b
    inc b                                         ; $7b29: $04
    nop                                           ; $7b2a: $00
    rla                                           ; $7b2b: $17
    ld [hl+], a                                   ; $7b2c: $22
    nop                                           ; $7b2d: $00
    dec d                                         ; $7b2e: $15
    nop                                           ; $7b2f: $00
    nop                                           ; $7b30: $00
    add hl, de                                    ; $7b31: $19
    nop                                           ; $7b32: $00
    ld b, [hl]                                    ; $7b33: $46
    dec d                                         ; $7b34: $15
    ld b, c                                       ; $7b35: $41
    nop                                           ; $7b36: $00
    inc sp                                        ; $7b37: $33
    inc b                                         ; $7b38: $04
    dec e                                         ; $7b39: $1d
    daa                                           ; $7b3a: $27
    nop                                           ; $7b3b: $00
    ld a, [bc]                                    ; $7b3c: $0a
    ld a, c                                       ; $7b3d: $79
    ld bc, $003f                                  ; $7b3e: $01 $3f $00
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    dec d                                         ; $7b43: $15
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    inc sp                                        ; $7b46: $33
    add hl, bc                                    ; $7b47: $09
    ld de, $0000                                  ; $7b48: $11 $00 $00
    nop                                           ; $7b4b: $00
    rlca                                          ; $7b4c: $07
    nop                                           ; $7b4d: $00
    nop                                           ; $7b4e: $00
    ld [bc], a                                    ; $7b4f: $02
    call $d002                                    ; $7b50: $cd $02 $d0
    ld [bc], a                                    ; $7b53: $02
    reti                                          ; $7b54: $d9


    ld [bc], a                                    ; $7b55: $02
    ld [c], a                                     ; $7b56: $e2
    inc bc                                        ; $7b57: $03
    inc sp                                        ; $7b58: $33
    inc bc                                        ; $7b59: $03
    add h                                         ; $7b5a: $84
    ld e, a                                       ; $7b5b: $5f
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    add hl, bc                                    ; $7b5e: $09
    nop                                           ; $7b5f: $00
    ld d, e                                       ; $7b60: $53
    dec b                                         ; $7b61: $05
    ld c, $00                                     ; $7b62: $0e $00
    add hl, bc                                    ; $7b64: $09
    ld h, $00                                     ; $7b65: $26 $00
    dec b                                         ; $7b67: $05
    inc b                                         ; $7b68: $04
    nop                                           ; $7b69: $00
    ld a, d                                       ; $7b6a: $7a
    ld bc, $1500                                  ; $7b6b: $01 $00 $15
    ld b, c                                       ; $7b6e: $41
    nop                                           ; $7b6f: $00
    rlca                                          ; $7b70: $07
    nop                                           ; $7b71: $00
    ld l, c                                       ; $7b72: $69
    add hl, bc                                    ; $7b73: $09
    dec b                                         ; $7b74: $05
    ld bc, $0505                                  ; $7b75: $01 $05 $05
    nop                                           ; $7b78: $00
    dec d                                         ; $7b79: $15
    ld b, c                                       ; $7b7a: $41
    nop                                           ; $7b7b: $00
    ld b, $02                                     ; $7b7c: $06 $02
    ld [hl], b                                    ; $7b7e: $70
    rla                                           ; $7b7f: $17
    nop                                           ; $7b80: $00
    nop                                           ; $7b81: $00
    dec de                                        ; $7b82: $1b
    ld b, $00                                     ; $7b83: $06 $00
    ld e, a                                       ; $7b85: $5f
    ld bc, $0000                                  ; $7b86: $01 $00 $00
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    add hl, bc                                    ; $7b8b: $09
    nop                                           ; $7b8c: $00
    dec bc                                        ; $7b8d: $0b
    dec b                                         ; $7b8e: $05
    inc b                                         ; $7b8f: $04
    nop                                           ; $7b90: $00
    ld a, d                                       ; $7b91: $7a
    ld bc, $1500                                  ; $7b92: $01 $00 $15
    ld b, c                                       ; $7b95: $41
    nop                                           ; $7b96: $00
    rlca                                          ; $7b97: $07
    ld bc, $096e                                  ; $7b98: $01 $6e $09
    nop                                           ; $7b9b: $00
    inc sp                                        ; $7b9c: $33
    dec b                                         ; $7b9d: $05
    dec bc                                        ; $7b9e: $0b
    nop                                           ; $7b9f: $00
    add hl, bc                                    ; $7ba0: $09
    ld [$0501], sp                                ; $7ba1: $08 $01 $05
    add hl, bc                                    ; $7ba4: $09
    nop                                           ; $7ba5: $00
    inc de                                        ; $7ba6: $13
    rst $38                                       ; $7ba7: $ff
    add sp, $14                                   ; $7ba8: $e8 $14
    nop                                           ; $7baa: $00
    nop                                           ; $7bab: $00
    dec d                                         ; $7bac: $15
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    ld d, $39                                     ; $7baf: $16 $39
    ld bc, $0052                                  ; $7bb1: $01 $52 $00
    nop                                           ; $7bb4: $00
    ld [hl+], a                                   ; $7bb5: $22
    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    ld e, a                                       ; $7bb8: $5f
    ld bc, $0000                                  ; $7bb9: $01 $00 $00
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    ld e, a                                       ; $7bbe: $5f
    ld bc, $0000                                  ; $7bbf: $01 $00 $00
    nop                                           ; $7bc2: $00
    nop                                           ; $7bc3: $00
    ld d, [hl]                                    ; $7bc4: $56
    nop                                           ; $7bc5: $00
    nop                                           ; $7bc6: $00
    inc de                                        ; $7bc7: $13
    nop                                           ; $7bc8: $00
    ret nc                                        ; $7bc9: $d0

    inc d                                         ; $7bca: $14
    nop                                           ; $7bcb: $00
    add d                                         ; $7bcc: $82
    dec d                                         ; $7bcd: $15
    nop                                           ; $7bce: $00
    nop                                           ; $7bcf: $00
    ld d, $16                                     ; $7bd0: $16 $16
    nop                                           ; $7bd2: $00
    ld d, d                                       ; $7bd3: $52
    nop                                           ; $7bd4: $00
    nop                                           ; $7bd5: $00
    inc de                                        ; $7bd6: $13
    nop                                           ; $7bd7: $00
    and a                                         ; $7bd8: $a7
    inc d                                         ; $7bd9: $14
    ld bc, $1501                                  ; $7bda: $01 $01 $15
    nop                                           ; $7bdd: $00
    nop                                           ; $7bde: $00
    ld d, $37                                     ; $7bdf: $16 $37
    nop                                           ; $7be1: $00
    ld d, d                                       ; $7be2: $52
    nop                                           ; $7be3: $00
    nop                                           ; $7be4: $00
    inc de                                        ; $7be5: $13
    nop                                           ; $7be6: $00
    ret nc                                        ; $7be7: $d0

    inc d                                         ; $7be8: $14
    ld bc, $1526                                  ; $7be9: $01 $26 $15
    nop                                           ; $7bec: $00
    nop                                           ; $7bed: $00
    ld d, $39                                     ; $7bee: $16 $39
    nop                                           ; $7bf0: $00
    ld d, d                                       ; $7bf1: $52
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    dec de                                        ; $7bf4: $1b
    nop                                           ; $7bf5: $00
    nop                                           ; $7bf6: $00
    dec d                                         ; $7bf7: $15
    ld b, c                                       ; $7bf8: $41
    nop                                           ; $7bf9: $00
    ld b, $02                                     ; $7bfa: $06 $02
    and [hl]                                      ; $7bfc: $a6
    ld e, a                                       ; $7bfd: $5f
    ld bc, $1700                                  ; $7bfe: $01 $00 $17
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    dec d                                         ; $7c03: $15
    ld b, $00                                     ; $7c04: $06 $00
    add hl, de                                    ; $7c06: $19
    nop                                           ; $7c07: $00
    jr nz, jr_00c_7c25                            ; $7c08: $20 $1b

    ld b, $00                                     ; $7c0a: $06 $00
    ld e, a                                       ; $7c0c: $5f
    nop                                           ; $7c0d: $00
    nop                                           ; $7c0e: $00
    ld e, [hl]                                    ; $7c0f: $5e
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    rla                                           ; $7c12: $17
    ld d, $00                                     ; $7c13: $16 $00
    dec d                                         ; $7c15: $15
    inc b                                         ; $7c16: $04
    nop                                           ; $7c17: $00
    add hl, de                                    ; $7c18: $19
    nop                                           ; $7c19: $00
    jr @+$19                                      ; $7c1a: $18 $17

    scf                                           ; $7c1c: $37
    nop                                           ; $7c1d: $00
    dec d                                         ; $7c1e: $15
    ld [bc], a                                    ; $7c1f: $02
    nop                                           ; $7c20: $00
    add hl, de                                    ; $7c21: $19
    nop                                           ; $7c22: $00
    jr @+$60                                      ; $7c23: $18 $5e

jr_00c_7c25:
    ld bc, $5f00                                  ; $7c25: $01 $00 $5f
    ld bc, $1700                                  ; $7c28: $01 $00 $17
    add hl, sp                                    ; $7c2b: $39
    nop                                           ; $7c2c: $00
    dec d                                         ; $7c2d: $15
    nop                                           ; $7c2e: $00
    nop                                           ; $7c2f: $00
    add hl, de                                    ; $7c30: $19
    nop                                           ; $7c31: $00
    jr jr_00c_7c93                                ; $7c32: $18 $5f

    nop                                           ; $7c34: $00
    nop                                           ; $7c35: $00
    ld e, [hl]                                    ; $7c36: $5e
    nop                                           ; $7c37: $00
    nop                                           ; $7c38: $00
    rla                                           ; $7c39: $17
    ld d, $00                                     ; $7c3a: $16 $00
    dec d                                         ; $7c3c: $15
    inc b                                         ; $7c3d: $04
    nop                                           ; $7c3e: $00
    add hl, de                                    ; $7c3f: $19
    nop                                           ; $7c40: $00
    inc d                                         ; $7c41: $14
    rla                                           ; $7c42: $17
    scf                                           ; $7c43: $37
    nop                                           ; $7c44: $00
    dec d                                         ; $7c45: $15
    nop                                           ; $7c46: $00
    nop                                           ; $7c47: $00
    add hl, de                                    ; $7c48: $19
    nop                                           ; $7c49: $00
    inc d                                         ; $7c4a: $14
    ld e, [hl]                                    ; $7c4b: $5e
    ld bc, $5f00                                  ; $7c4c: $01 $00 $5f
    ld bc, $1700                                  ; $7c4f: $01 $00 $17
    add hl, sp                                    ; $7c52: $39
    nop                                           ; $7c53: $00
    dec d                                         ; $7c54: $15
    nop                                           ; $7c55: $00
    nop                                           ; $7c56: $00
    add hl, de                                    ; $7c57: $19
    nop                                           ; $7c58: $00
    inc d                                         ; $7c59: $14
    dec de                                        ; $7c5a: $1b
    ld [bc], a                                    ; $7c5b: $02
    nop                                           ; $7c5c: $00
    ld e, a                                       ; $7c5d: $5f
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    ld e, [hl]                                    ; $7c60: $5e
    nop                                           ; $7c61: $00
    nop                                           ; $7c62: $00
    rla                                           ; $7c63: $17
    ld d, $00                                     ; $7c64: $16 $00
    dec d                                         ; $7c66: $15
    inc b                                         ; $7c67: $04
    nop                                           ; $7c68: $00
    add hl, de                                    ; $7c69: $19
    nop                                           ; $7c6a: $00
    db $10                                        ; $7c6b: $10
    ld e, [hl]                                    ; $7c6c: $5e
    ld bc, $5f00                                  ; $7c6d: $01 $00 $5f
    ld bc, $1700                                  ; $7c70: $01 $00 $17
    scf                                           ; $7c73: $37
    nop                                           ; $7c74: $00
    dec d                                         ; $7c75: $15
    nop                                           ; $7c76: $00
    nop                                           ; $7c77: $00
    add hl, de                                    ; $7c78: $19
    nop                                           ; $7c79: $00
    db $10                                        ; $7c7a: $10
    dec de                                        ; $7c7b: $1b
    ld [bc], a                                    ; $7c7c: $02
    nop                                           ; $7c7d: $00
    ld e, a                                       ; $7c7e: $5f
    nop                                           ; $7c7f: $00
    nop                                           ; $7c80: $00
    rla                                           ; $7c81: $17
    ld d, $00                                     ; $7c82: $16 $00
    dec d                                         ; $7c84: $15
    inc b                                         ; $7c85: $04
    nop                                           ; $7c86: $00
    add hl, de                                    ; $7c87: $19
    nop                                           ; $7c88: $00
    ld e, $5f                                     ; $7c89: $1e $5f
    ld bc, $1b00                                  ; $7c8b: $01 $00 $1b
    ld [bc], a                                    ; $7c8e: $02
    nop                                           ; $7c8f: $00
    dec d                                         ; $7c90: $15
    ld l, $00                                     ; $7c91: $2e $00

jr_00c_7c93:
    inc sp                                        ; $7c93: $33
    inc bc                                        ; $7c94: $03
    ld l, b                                       ; $7c95: $68
    dec d                                         ; $7c96: $15
    ld l, $00                                     ; $7c97: $2e $00
    inc sp                                        ; $7c99: $33
    inc bc                                        ; $7c9a: $03
    ld l, c                                       ; $7c9b: $69
    dec d                                         ; $7c9c: $15
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00
    inc sp                                        ; $7c9f: $33
    inc bc                                        ; $7ca0: $03
    ld l, d                                       ; $7ca1: $6a
    dec d                                         ; $7ca2: $15
    ld l, $00                                     ; $7ca3: $2e $00
    inc sp                                        ; $7ca5: $33
    inc bc                                        ; $7ca6: $03
    ld l, e                                       ; $7ca7: $6b
    dec d                                         ; $7ca8: $15
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    inc sp                                        ; $7cab: $33
    inc bc                                        ; $7cac: $03
    ld l, h                                       ; $7cad: $6c
    dec d                                         ; $7cae: $15
    ld l, $00                                     ; $7caf: $2e $00
    inc sp                                        ; $7cb1: $33
    inc bc                                        ; $7cb2: $03
    ld l, l                                       ; $7cb3: $6d
    dec d                                         ; $7cb4: $15
    add hl, de                                    ; $7cb5: $19
    nop                                           ; $7cb6: $00
    inc sp                                        ; $7cb7: $33
    inc bc                                        ; $7cb8: $03
    ld l, [hl]                                    ; $7cb9: $6e
    dec d                                         ; $7cba: $15
    dec d                                         ; $7cbb: $15
    nop                                           ; $7cbc: $00
    inc sp                                        ; $7cbd: $33
    inc bc                                        ; $7cbe: $03
    ld l, a                                       ; $7cbf: $6f
    ld h, d                                       ; $7cc0: $62
    dec bc                                        ; $7cc1: $0b
    nop                                           ; $7cc2: $00
    ld d, a                                       ; $7cc3: $57
    nop                                           ; $7cc4: $00
    nop                                           ; $7cc5: $00
    nop                                           ; $7cc6: $00
    nop                                           ; $7cc7: $00
    nop                                           ; $7cc8: $00
    ld d, [hl]                                    ; $7cc9: $56
    nop                                           ; $7cca: $00
    nop                                           ; $7ccb: $00
    dec d                                         ; $7ccc: $15
    ld b, c                                       ; $7ccd: $41
    nop                                           ; $7cce: $00
    ld b, $02                                     ; $7ccf: $06 $02
    ld [hl], b                                    ; $7cd1: $70
    rla                                           ; $7cd2: $17
    nop                                           ; $7cd3: $00
    nop                                           ; $7cd4: $00
    ld e, a                                       ; $7cd5: $5f
    ld bc, $1b00                                  ; $7cd6: $01 $00 $1b
    ld b, $00                                     ; $7cd9: $06 $00
    add hl, bc                                    ; $7cdb: $09
    ld b, $01                                     ; $7cdc: $06 $01
    dec b                                         ; $7cde: $05
    inc bc                                        ; $7cdf: $03
    nop                                           ; $7ce0: $00
    rrca                                          ; $7ce1: $0f
    ld b, $00                                     ; $7ce2: $06 $00
    nop                                           ; $7ce4: $00
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    add hl, bc                                    ; $7ce7: $09
    ld [$0500], sp                                ; $7ce8: $08 $00 $05
    inc bc                                        ; $7ceb: $03
    nop                                           ; $7cec: $00
    ld d, a                                       ; $7ced: $57
    nop                                           ; $7cee: $00
    nop                                           ; $7cef: $00
    nop                                           ; $7cf0: $00
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    rrca                                          ; $7cf3: $0f
    ld [$1500], sp                                ; $7cf4: $08 $00 $15
    ld b, $00                                     ; $7cf7: $06 $00
    add hl, de                                    ; $7cf9: $19
    nop                                           ; $7cfa: $00
    jr jr_00c_7d18                                ; $7cfb: $18 $1b

    ld b, $00                                     ; $7cfd: $06 $00
    daa                                           ; $7cff: $27
    nop                                           ; $7d00: $00
    dec b                                         ; $7d01: $05
    ld l, c                                       ; $7d02: $69
    ld e, d                                       ; $7d03: $5a
    nop                                           ; $7d04: $00
    add hl, bc                                    ; $7d05: $09
    cp $00                                        ; $7d06: $fe $00
    inc b                                         ; $7d08: $04
    ld [bc], a                                    ; $7d09: $02
    nop                                           ; $7d0a: $00
    inc bc                                        ; $7d0b: $03
    ld hl, $0800                                  ; $7d0c: $21 $00 $08
    dec b                                         ; $7d0f: $05
    nop                                           ; $7d10: $00
    dec d                                         ; $7d11: $15
    ld b, c                                       ; $7d12: $41
    nop                                           ; $7d13: $00
    rlca                                          ; $7d14: $07
    ld bc, $15c8                                  ; $7d15: $01 $c8 $15

jr_00c_7d18:
    ld b, c                                       ; $7d18: $41
    nop                                           ; $7d19: $00
    rlca                                          ; $7d1a: $07
    ld bc, $15e3                                  ; $7d1b: $01 $e3 $15
    ld b, c                                       ; $7d1e: $41
    nop                                           ; $7d1f: $00
    rlca                                          ; $7d20: $07
    ld bc, $15fe                                  ; $7d21: $01 $fe $15
    ld l, $00                                     ; $7d24: $2e $00
    inc sp                                        ; $7d26: $33
    inc bc                                        ; $7d27: $03
    sub d                                         ; $7d28: $92
    dec d                                         ; $7d29: $15
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    inc sp                                        ; $7d2c: $33
    inc bc                                        ; $7d2d: $03
    sub e                                         ; $7d2e: $93
    dec d                                         ; $7d2f: $15
    ld l, $00                                     ; $7d30: $2e $00
    inc sp                                        ; $7d32: $33
    inc bc                                        ; $7d33: $03
    sub h                                         ; $7d34: $94
    rrca                                          ; $7d35: $0f
    dec b                                         ; $7d36: $05
    ld bc, $0057                                  ; $7d37: $01 $57 $00
    nop                                           ; $7d3a: $00
    nop                                           ; $7d3b: $00
    nop                                           ; $7d3c: $00
    nop                                           ; $7d3d: $00
    dec d                                         ; $7d3e: $15
    ld l, $00                                     ; $7d3f: $2e $00
    inc sp                                        ; $7d41: $33
    inc bc                                        ; $7d42: $03
    sub l                                         ; $7d43: $95
    dec d                                         ; $7d44: $15
    nop                                           ; $7d45: $00
    nop                                           ; $7d46: $00
    inc sp                                        ; $7d47: $33
    inc bc                                        ; $7d48: $03
    sub [hl]                                      ; $7d49: $96
    dec d                                         ; $7d4a: $15
    ld l, $00                                     ; $7d4b: $2e $00
    inc sp                                        ; $7d4d: $33
    inc bc                                        ; $7d4e: $03
    sub a                                         ; $7d4f: $97
    rrca                                          ; $7d50: $0f
    dec b                                         ; $7d51: $05
    ld [bc], a                                    ; $7d52: $02
    ld d, a                                       ; $7d53: $57
    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    nop                                           ; $7d56: $00
    nop                                           ; $7d57: $00
    nop                                           ; $7d58: $00
    dec d                                         ; $7d59: $15
    ld l, $00                                     ; $7d5a: $2e $00
    inc sp                                        ; $7d5c: $33
    inc bc                                        ; $7d5d: $03
    sbc b                                         ; $7d5e: $98
    rrca                                          ; $7d5f: $0f
    ld b, $01                                     ; $7d60: $06 $01
    dec d                                         ; $7d62: $15
    nop                                           ; $7d63: $00
    nop                                           ; $7d64: $00
    ld b, d                                       ; $7d65: $42
    nop                                           ; $7d66: $00
    ld bc, $0057                                  ; $7d67: $01 $57 $00
    nop                                           ; $7d6a: $00
    nop                                           ; $7d6b: $00
    nop                                           ; $7d6c: $00
    nop                                           ; $7d6d: $00
    dec d                                         ; $7d6e: $15
    nop                                           ; $7d6f: $00
    nop                                           ; $7d70: $00
    inc sp                                        ; $7d71: $33
    inc bc                                        ; $7d72: $03
    sub b                                         ; $7d73: $90
    add hl, sp                                    ; $7d74: $39
    ld e, d                                       ; $7d75: $5a
    ld bc, $2e15                                  ; $7d76: $01 $15 $2e
    nop                                           ; $7d79: $00
    inc sp                                        ; $7d7a: $33
    inc bc                                        ; $7d7b: $03
    sub c                                         ; $7d7c: $91
    rrca                                          ; $7d7d: $0f
    ld b, $01                                     ; $7d7e: $06 $01
    dec d                                         ; $7d80: $15
    nop                                           ; $7d81: $00
    nop                                           ; $7d82: $00
    ld b, c                                       ; $7d83: $41
    nop                                           ; $7d84: $00
    add hl, de                                    ; $7d85: $19
    ld l, l                                       ; $7d86: $6d
    nop                                           ; $7d87: $00
    nop                                           ; $7d88: $00
    ld l, d                                       ; $7d89: $6a
    add hl, bc                                    ; $7d8a: $09
    nop                                           ; $7d8b: $00
    rrca                                          ; $7d8c: $0f
    ld b, $01                                     ; $7d8d: $06 $01
    inc l                                         ; $7d8f: $2c
    rlca                                          ; $7d90: $07
    ld bc, $500f                                  ; $7d91: $01 $0f $50
    ld bc, $260f                                  ; $7d94: $01 $0f $26
    ld bc, $3511                                  ; $7d97: $01 $11 $35
    ld bc, $3509                                  ; $7d9a: $01 $09 $35
    ld b, $05                                     ; $7d9d: $06 $05
    dec bc                                        ; $7d9f: $0b
    nop                                           ; $7da0: $00
    rla                                           ; $7da1: $17
    nop                                           ; $7da2: $00
    nop                                           ; $7da3: $00
    ld e, e                                       ; $7da4: $5b
    nop                                           ; $7da5: $00
    nop                                           ; $7da6: $00
    ld [hl], $00                                  ; $7da7: $36 $00
    nop                                           ; $7da9: $00
    ld e, l                                       ; $7daa: $5d
    nop                                           ; $7dab: $00
    nop                                           ; $7dac: $00
    ld h, d                                       ; $7dad: $62
    dec h                                         ; $7dae: $25
    nop                                           ; $7daf: $00
    add hl, sp                                    ; $7db0: $39
    inc h                                         ; $7db1: $24
    ld bc, $2e15                                  ; $7db2: $01 $15 $2e
    nop                                           ; $7db5: $00
    inc sp                                        ; $7db6: $33
    inc bc                                        ; $7db7: $03
    jp nz, $5628                                  ; $7db8: $c2 $28 $56

    nop                                           ; $7dbb: $00
    inc bc                                        ; $7dbc: $03
    inc bc                                        ; $7dbd: $03
    nop                                           ; $7dbe: $00
    ld h, d                                       ; $7dbf: $62
    ld d, e                                       ; $7dc0: $53
    nop                                           ; $7dc1: $00
    rrca                                          ; $7dc2: $0f
    dec b                                         ; $7dc3: $05
    ld bc, $0057                                  ; $7dc4: $01 $57 $00
    nop                                           ; $7dc7: $00
    nop                                           ; $7dc8: $00
    nop                                           ; $7dc9: $00
    nop                                           ; $7dca: $00
    inc de                                        ; $7dcb: $13
    nop                                           ; $7dcc: $00
    ret nc                                        ; $7dcd: $d0

    inc d                                         ; $7dce: $14
    nop                                           ; $7dcf: $00
    call c, Call_000_0015                         ; $7dd0: $dc $15 $00
    nop                                           ; $7dd3: $00
    ld d, $16                                     ; $7dd4: $16 $16
    nop                                           ; $7dd6: $00
    ld d, d                                       ; $7dd7: $52
    nop                                           ; $7dd8: $00
    nop                                           ; $7dd9: $00
    dec de                                        ; $7dda: $1b
    ld [bc], a                                    ; $7ddb: $02
    nop                                           ; $7ddc: $00
    inc de                                        ; $7ddd: $13
    nop                                           ; $7dde: $00
    cp a                                          ; $7ddf: $bf
    inc d                                         ; $7de0: $14
    nop                                           ; $7de1: $00
    ldh [$15], a                                  ; $7de2: $e0 $15
    nop                                           ; $7de4: $00
    nop                                           ; $7de5: $00
    ld d, $37                                     ; $7de6: $16 $37
    nop                                           ; $7de8: $00
    ld d, d                                       ; $7de9: $52
    nop                                           ; $7dea: $00
    nop                                           ; $7deb: $00
    dec de                                        ; $7dec: $1b
    ld [bc], a                                    ; $7ded: $02
    nop                                           ; $7dee: $00
    inc de                                        ; $7def: $13
    nop                                           ; $7df0: $00
    call Call_000_0014                            ; $7df1: $cd $14 $00
    rst $30                                       ; $7df4: $f7
    dec d                                         ; $7df5: $15
    nop                                           ; $7df6: $00
    nop                                           ; $7df7: $00
    ld d, $39                                     ; $7df8: $16 $39
    nop                                           ; $7dfa: $00
    ld d, d                                       ; $7dfb: $52
    nop                                           ; $7dfc: $00
    nop                                           ; $7dfd: $00
    dec de                                        ; $7dfe: $1b
    ld [bc], a                                    ; $7dff: $02
    nop                                           ; $7e00: $00
    inc de                                        ; $7e01: $13
    nop                                           ; $7e02: $00
    ld e, b                                       ; $7e03: $58
    inc d                                         ; $7e04: $14
    nop                                           ; $7e05: $00
    xor e                                         ; $7e06: $ab
    dec d                                         ; $7e07: $15
    ld b, $00                                     ; $7e08: $06 $00
    ld d, $50                                     ; $7e0a: $16 $50
    nop                                           ; $7e0c: $00
    ld [hl], l                                    ; $7e0d: $75
    ld [bc], a                                    ; $7e0e: $02
    nop                                           ; $7e0f: $00
    ld d, d                                       ; $7e10: $52
    nop                                           ; $7e11: $00
    nop                                           ; $7e12: $00
    inc de                                        ; $7e13: $13
    nop                                           ; $7e14: $00
    xor b                                         ; $7e15: $a8
    inc d                                         ; $7e16: $14
    ld bc, $152b                                  ; $7e17: $01 $2b $15
    nop                                           ; $7e1a: $00
    nop                                           ; $7e1b: $00
    ld d, $50                                     ; $7e1c: $16 $50
    nop                                           ; $7e1e: $00
    ld [hl], l                                    ; $7e1f: $75
    inc bc                                        ; $7e20: $03
    nop                                           ; $7e21: $00
    ld d, d                                       ; $7e22: $52
    nop                                           ; $7e23: $00
    nop                                           ; $7e24: $00
    ld bc, $0000                                  ; $7e25: $01 $00 $00
    nop                                           ; $7e28: $00
    nop                                           ; $7e29: $00
    nop                                           ; $7e2a: $00
    dec d                                         ; $7e2b: $15
    inc h                                         ; $7e2c: $24
    nop                                           ; $7e2d: $00
    inc sp                                        ; $7e2e: $33
    inc bc                                        ; $7e2f: $03
    ld d, e                                       ; $7e30: $53
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    nop                                           ; $7e33: $00
    dec d                                         ; $7e34: $15
    jr z, jr_00c_7e37                             ; $7e35: $28 $00

jr_00c_7e37:
    inc sp                                        ; $7e37: $33
    inc bc                                        ; $7e38: $03
    ld d, h                                       ; $7e39: $54
    nop                                           ; $7e3a: $00
    nop                                           ; $7e3b: $00
    nop                                           ; $7e3c: $00
    ld e, a                                       ; $7e3d: $5f
    nop                                           ; $7e3e: $00
    nop                                           ; $7e3f: $00
    ld d, [hl]                                    ; $7e40: $56
    nop                                           ; $7e41: $00
    nop                                           ; $7e42: $00
    add hl, bc                                    ; $7e43: $09
    nop                                           ; $7e44: $00
    dec bc                                        ; $7e45: $0b
    dec b                                         ; $7e46: $05
    ld a, [bc]                                    ; $7e47: $0a
    nop                                           ; $7e48: $00
    add hl, bc                                    ; $7e49: $09
    rlca                                          ; $7e4a: $07
    nop                                           ; $7e4b: $00
    dec b                                         ; $7e4c: $05
    ld [$1700], sp                                ; $7e4d: $08 $00 $17
    ld d, $00                                     ; $7e50: $16 $00
    inc e                                         ; $7e52: $1c
    nop                                           ; $7e53: $00
    nop                                           ; $7e54: $00
    ld e, a                                       ; $7e55: $5f
    ld bc, $1500                                  ; $7e56: $01 $00 $15
    ld l, $00                                     ; $7e59: $2e $00
    inc sp                                        ; $7e5b: $33
    inc bc                                        ; $7e5c: $03
    sub d                                         ; $7e5d: $92
    ld d, a                                       ; $7e5e: $57
    nop                                           ; $7e5f: $00
    nop                                           ; $7e60: $00
    nop                                           ; $7e61: $00
    nop                                           ; $7e62: $00
    nop                                           ; $7e63: $00
    add hl, bc                                    ; $7e64: $09
    nop                                           ; $7e65: $00
    ld d, e                                       ; $7e66: $53
    dec b                                         ; $7e67: $05
    ld a, [bc]                                    ; $7e68: $0a
    nop                                           ; $7e69: $00
    add hl, bc                                    ; $7e6a: $09
    dec b                                         ; $7e6b: $05
    ld bc, $0805                                  ; $7e6c: $01 $05 $08
    nop                                           ; $7e6f: $00
    rla                                           ; $7e70: $17
    ld d, $00                                     ; $7e71: $16 $00
    inc e                                         ; $7e73: $1c
    nop                                           ; $7e74: $00
    nop                                           ; $7e75: $00
    ld e, a                                       ; $7e76: $5f
    ld bc, $1500                                  ; $7e77: $01 $00 $15
    ld l, $00                                     ; $7e7a: $2e $00
    inc sp                                        ; $7e7c: $33
    ld [bc], a                                    ; $7e7d: $02
    ld c, $57                                     ; $7e7e: $0e $57
    nop                                           ; $7e80: $00
    nop                                           ; $7e81: $00
    nop                                           ; $7e82: $00
    nop                                           ; $7e83: $00
    nop                                           ; $7e84: $00
    ld d, a                                       ; $7e85: $57
    nop                                           ; $7e86: $00
    nop                                           ; $7e87: $00
    ld e, a                                       ; $7e88: $5f
    ld bc, $0000                                  ; $7e89: $01 $00 $00
    nop                                           ; $7e8c: $00
    nop                                           ; $7e8d: $00
    ld e, a                                       ; $7e8e: $5f
    nop                                           ; $7e8f: $00
    nop                                           ; $7e90: $00
    ld d, [hl]                                    ; $7e91: $56
    nop                                           ; $7e92: $00
    nop                                           ; $7e93: $00
    add hl, bc                                    ; $7e94: $09
    nop                                           ; $7e95: $00
    dec bc                                        ; $7e96: $0b
    dec b                                         ; $7e97: $05
    ld a, [bc]                                    ; $7e98: $0a
    nop                                           ; $7e99: $00
    add hl, bc                                    ; $7e9a: $09
    rlca                                          ; $7e9b: $07
    nop                                           ; $7e9c: $00
    dec b                                         ; $7e9d: $05
    ld [$1700], sp                                ; $7e9e: $08 $00 $17
    scf                                           ; $7ea1: $37
    nop                                           ; $7ea2: $00
    inc e                                         ; $7ea3: $1c
    nop                                           ; $7ea4: $00
    nop                                           ; $7ea5: $00
    ld e, a                                       ; $7ea6: $5f
    ld bc, $1500                                  ; $7ea7: $01 $00 $15
    add hl, de                                    ; $7eaa: $19
    nop                                           ; $7eab: $00
    inc sp                                        ; $7eac: $33
    inc bc                                        ; $7ead: $03
    ld l, [hl]                                    ; $7eae: $6e
    ld d, a                                       ; $7eaf: $57
    nop                                           ; $7eb0: $00
    nop                                           ; $7eb1: $00
    nop                                           ; $7eb2: $00
    nop                                           ; $7eb3: $00
    nop                                           ; $7eb4: $00
    add hl, bc                                    ; $7eb5: $09
    nop                                           ; $7eb6: $00
    ld d, e                                       ; $7eb7: $53
    dec b                                         ; $7eb8: $05
    ld a, [bc]                                    ; $7eb9: $0a
    nop                                           ; $7eba: $00
    add hl, bc                                    ; $7ebb: $09
    dec b                                         ; $7ebc: $05
    ld bc, $0805                                  ; $7ebd: $01 $05 $08
    nop                                           ; $7ec0: $00
    rla                                           ; $7ec1: $17
    scf                                           ; $7ec2: $37
    nop                                           ; $7ec3: $00
    inc e                                         ; $7ec4: $1c
    nop                                           ; $7ec5: $00
    nop                                           ; $7ec6: $00
    ld e, a                                       ; $7ec7: $5f
    ld bc, $1500                                  ; $7ec8: $01 $00 $15
    add hl, de                                    ; $7ecb: $19
    nop                                           ; $7ecc: $00
    inc sp                                        ; $7ecd: $33
    dec b                                         ; $7ece: $05
    ld d, c                                       ; $7ecf: $51
    ld d, a                                       ; $7ed0: $57
    nop                                           ; $7ed1: $00
    nop                                           ; $7ed2: $00
    nop                                           ; $7ed3: $00
    nop                                           ; $7ed4: $00
    nop                                           ; $7ed5: $00
    ld d, a                                       ; $7ed6: $57
    nop                                           ; $7ed7: $00
    nop                                           ; $7ed8: $00
    ld e, a                                       ; $7ed9: $5f
    ld bc, $0000                                  ; $7eda: $01 $00 $00
    nop                                           ; $7edd: $00
    nop                                           ; $7ede: $00
    ld e, a                                       ; $7edf: $5f
    nop                                           ; $7ee0: $00
    nop                                           ; $7ee1: $00
    ld d, [hl]                                    ; $7ee2: $56
    nop                                           ; $7ee3: $00
    nop                                           ; $7ee4: $00
    add hl, bc                                    ; $7ee5: $09
    nop                                           ; $7ee6: $00
    dec bc                                        ; $7ee7: $0b
    dec b                                         ; $7ee8: $05
    ld a, [bc]                                    ; $7ee9: $0a
    nop                                           ; $7eea: $00
    add hl, bc                                    ; $7eeb: $09
    rlca                                          ; $7eec: $07
    nop                                           ; $7eed: $00
    dec b                                         ; $7eee: $05
    ld [$1700], sp                                ; $7eef: $08 $00 $17
    add hl, sp                                    ; $7ef2: $39
    nop                                           ; $7ef3: $00
    inc e                                         ; $7ef4: $1c
    nop                                           ; $7ef5: $00
    nop                                           ; $7ef6: $00
    ld e, a                                       ; $7ef7: $5f
    ld bc, $1500                                  ; $7ef8: $01 $00 $15
    dec d                                         ; $7efb: $15
    nop                                           ; $7efc: $00
    inc sp                                        ; $7efd: $33
    inc bc                                        ; $7efe: $03
    ld l, a                                       ; $7eff: $6f
    ld d, a                                       ; $7f00: $57
    nop                                           ; $7f01: $00
    nop                                           ; $7f02: $00
    nop                                           ; $7f03: $00
    nop                                           ; $7f04: $00
    nop                                           ; $7f05: $00
    add hl, bc                                    ; $7f06: $09
    nop                                           ; $7f07: $00
    ld d, e                                       ; $7f08: $53
    dec b                                         ; $7f09: $05
    ld a, [bc]                                    ; $7f0a: $0a
    nop                                           ; $7f0b: $00
    add hl, bc                                    ; $7f0c: $09
    dec b                                         ; $7f0d: $05
    ld bc, $0805                                  ; $7f0e: $01 $05 $08
    nop                                           ; $7f11: $00
    rla                                           ; $7f12: $17
    add hl, sp                                    ; $7f13: $39
    nop                                           ; $7f14: $00
    inc e                                         ; $7f15: $1c
    nop                                           ; $7f16: $00
    nop                                           ; $7f17: $00
    ld e, a                                       ; $7f18: $5f
    ld bc, $1500                                  ; $7f19: $01 $00 $15
    dec d                                         ; $7f1c: $15
    nop                                           ; $7f1d: $00
    inc sp                                        ; $7f1e: $33
    ld a, [bc]                                    ; $7f1f: $0a
    ld [bc], a                                    ; $7f20: $02
    ld d, a                                       ; $7f21: $57
    nop                                           ; $7f22: $00
    nop                                           ; $7f23: $00
    nop                                           ; $7f24: $00
    nop                                           ; $7f25: $00
    nop                                           ; $7f26: $00
    ld d, a                                       ; $7f27: $57
    nop                                           ; $7f28: $00
    nop                                           ; $7f29: $00
    ld e, a                                       ; $7f2a: $5f
    ld bc, $0000                                  ; $7f2b: $01 $00 $00
    nop                                           ; $7f2e: $00
    nop                                           ; $7f2f: $00
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
