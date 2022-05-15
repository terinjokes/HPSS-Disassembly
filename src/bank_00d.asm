; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    dec c                                         ; $4000: $0d
    inc b                                         ; $4001: $04
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    ld [hl], $00                                  ; $4005: $36 $00
    jp nc, Jump_000_0a02                          ; $4007: $d2 $02 $0a

    ld e, a                                       ; $400a: $5f
    nop                                           ; $400b: $00
    nop                                           ; $400c: $00
    add hl, bc                                    ; $400d: $09
    nop                                           ; $400e: $00
    ld d, a                                       ; $400f: $57
    dec b                                         ; $4010: $05
    ld c, $00                                     ; $4011: $0e $00
    add hl, bc                                    ; $4013: $09
    inc c                                         ; $4014: $0c
    ld bc, $0305                                  ; $4015: $01 $05 $03
    nop                                           ; $4018: $00
    ld e, a                                       ; $4019: $5f
    ld bc, $0000                                  ; $401a: $01 $00 $00
    nop                                           ; $401d: $00
    nop                                           ; $401e: $00
    ld d, [hl]                                    ; $401f: $56
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    rla                                           ; $4022: $17
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    dec de                                        ; $4025: $1b
    inc b                                         ; $4026: $04
    nop                                           ; $4027: $00
    ld e, a                                       ; $4028: $5f
    ld bc, $1500                                  ; $4029: $01 $00 $15
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    inc sp                                        ; $402e: $33
    inc bc                                        ; $402f: $03
    db $db                                        ; $4030: $db
    ld d, a                                       ; $4031: $57
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    rrca                                          ; $4034: $0f
    inc c                                         ; $4035: $0c
    ld bc, $0000                                  ; $4036: $01 $00 $00
    nop                                           ; $4039: $00
    ld e, a                                       ; $403a: $5f
    ld bc, $0000                                  ; $403b: $01 $00 $00
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    ld e, a                                       ; $4040: $5f
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    add hl, bc                                    ; $4043: $09
    nop                                           ; $4044: $00
    ld d, a                                       ; $4045: $57
    dec b                                         ; $4046: $05
    jr nc, jr_00d_4049                            ; $4047: $30 $00

jr_00d_4049:
    add hl, bc                                    ; $4049: $09
    dec c                                         ; $404a: $0d
    ld bc, $0305                                  ; $404b: $01 $05 $03
    nop                                           ; $404e: $00
    ld e, a                                       ; $404f: $5f
    ld bc, $0000                                  ; $4050: $01 $00 $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    ld d, [hl]                                    ; $4055: $56
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    rla                                           ; $4058: $17
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    dec de                                        ; $405b: $1b
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    ld d, d                                       ; $405e: $52
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    inc de                                        ; $4061: $13
    ld bc, $14a7                                  ; $4062: $01 $a7 $14
    nop                                           ; $4065: $00
    ld sp, $0015                                  ; $4066: $31 $15 $00
    nop                                           ; $4069: $00
    ld d, $22                                     ; $406a: $16 $22
    nop                                           ; $406c: $00
    ld d, d                                       ; $406d: $52
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    dec de                                        ; $4070: $1b
    inc b                                         ; $4071: $04
    nop                                           ; $4072: $00
    inc de                                        ; $4073: $13
    ld bc, $14aa                                  ; $4074: $01 $aa $14
    nop                                           ; $4077: $00
    ld b, h                                       ; $4078: $44
    dec d                                         ; $4079: $15
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    ld d, $2e                                     ; $407c: $16 $2e
    nop                                           ; $407e: $00
    ld d, d                                       ; $407f: $52
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    dec de                                        ; $4082: $1b
    inc b                                         ; $4083: $04
    nop                                           ; $4084: $00
    ld e, a                                       ; $4085: $5f
    ld bc, $1500                                  ; $4086: $01 $00 $15
    ld [bc], a                                    ; $4089: $02
    nop                                           ; $408a: $00
    add hl, hl                                    ; $408b: $29
    ld [bc], a                                    ; $408c: $02
    ld a, [hl+]                                   ; $408d: $2a
    dec d                                         ; $408e: $15
    ld b, c                                       ; $408f: $41
    nop                                           ; $4090: $00
    inc sp                                        ; $4091: $33
    inc bc                                        ; $4092: $03
    call c, Call_00d_4215                         ; $4093: $dc $15 $42
    nop                                           ; $4096: $00
    inc sp                                        ; $4097: $33
    inc bc                                        ; $4098: $03
    db $dd                                        ; $4099: $dd
    dec d                                         ; $409a: $15
    ld [bc], a                                    ; $409b: $02
    nop                                           ; $409c: $00
    add hl, hl                                    ; $409d: $29
    ld b, $2a                                     ; $409e: $06 $2a
    rla                                           ; $40a0: $17
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    ld e, c                                       ; $40a3: $59
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    rla                                           ; $40a6: $17
    ld [hl+], a                                   ; $40a7: $22
    nop                                           ; $40a8: $00
    ld e, $22                                     ; $40a9: $1e $22
    nop                                           ; $40ab: $00
    rla                                           ; $40ac: $17
    ld l, $00                                     ; $40ad: $2e $00
    ld e, $2e                                     ; $40af: $1e $2e
    nop                                           ; $40b1: $00
    inc h                                         ; $40b2: $24
    ld bc, $1300                                  ; $40b3: $01 $00 $13
    ld bc, $14a7                                  ; $40b6: $01 $a7 $14
    nop                                           ; $40b9: $00
    ld sp, $0015                                  ; $40ba: $31 $15 $00
    nop                                           ; $40bd: $00
    ld d, $22                                     ; $40be: $16 $22
    nop                                           ; $40c0: $00
    inc de                                        ; $40c1: $13
    ld bc, $14aa                                  ; $40c2: $01 $aa $14
    nop                                           ; $40c5: $00
    ld b, h                                       ; $40c6: $44
    dec d                                         ; $40c7: $15
    nop                                           ; $40c8: $00
    nop                                           ; $40c9: $00
    ld d, $2e                                     ; $40ca: $16 $2e
    nop                                           ; $40cc: $00
    rrca                                          ; $40cd: $0f
    dec c                                         ; $40ce: $0d
    ld bc, $0057                                  ; $40cf: $01 $57 $00
    nop                                           ; $40d2: $00
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    nop                                           ; $40d5: $00
    ld e, a                                       ; $40d6: $5f
    ld bc, $0000                                  ; $40d7: $01 $00 $00
    nop                                           ; $40da: $00
    nop                                           ; $40db: $00
    add hl, bc                                    ; $40dc: $09
    nop                                           ; $40dd: $00
    ld h, $05                                     ; $40de: $26 $05
    ld e, $00                                     ; $40e0: $1e $00
    ld e, a                                       ; $40e2: $5f
    nop                                           ; $40e3: $00
    nop                                           ; $40e4: $00
    ld a, d                                       ; $40e5: $7a
    ld bc, $1300                                  ; $40e6: $01 $00 $13
    nop                                           ; $40e9: $00
    inc d                                         ; $40ea: $14
    inc d                                         ; $40eb: $14
    nop                                           ; $40ec: $00
    nop                                           ; $40ed: $00
    dec d                                         ; $40ee: $15
    nop                                           ; $40ef: $00
    nop                                           ; $40f0: $00
    ld d, $37                                     ; $40f1: $16 $37
    ld bc, $0052                                  ; $40f3: $01 $52 $00
    nop                                           ; $40f6: $00
    dec de                                        ; $40f7: $1b
    inc b                                         ; $40f8: $04
    nop                                           ; $40f9: $00
    inc de                                        ; $40fa: $13
    rst $38                                       ; $40fb: $ff
    db $ec                                        ; $40fc: $ec
    inc d                                         ; $40fd: $14
    nop                                           ; $40fe: $00
    nop                                           ; $40ff: $00
    dec d                                         ; $4100: $15
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    ld d, $38                                     ; $4103: $16 $38
    ld bc, $0052                                  ; $4105: $01 $52 $00
    nop                                           ; $4108: $00
    dec de                                        ; $4109: $1b
    inc b                                         ; $410a: $04
    nop                                           ; $410b: $00
    inc de                                        ; $410c: $13
    nop                                           ; $410d: $00
    nop                                           ; $410e: $00
    inc d                                         ; $410f: $14
    nop                                           ; $4110: $00
    inc d                                         ; $4111: $14
    dec d                                         ; $4112: $15
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    ld d, $39                                     ; $4115: $16 $39
    ld bc, $0052                                  ; $4117: $01 $52 $00
    nop                                           ; $411a: $00
    dec de                                        ; $411b: $1b
    inc b                                         ; $411c: $04
    nop                                           ; $411d: $00
    ld e, a                                       ; $411e: $5f
    ld bc, $1700                                  ; $411f: $01 $00 $17
    add hl, sp                                    ; $4122: $39
    nop                                           ; $4123: $00
    ld [hl+], a                                   ; $4124: $22
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    rla                                           ; $4127: $17
    scf                                           ; $4128: $37
    nop                                           ; $4129: $00
    ld [hl+], a                                   ; $412a: $22
    add hl, sp                                    ; $412b: $39
    nop                                           ; $412c: $00
    rla                                           ; $412d: $17
    jr c, jr_00d_4130                             ; $412e: $38 $00

jr_00d_4130:
    ld [hl+], a                                   ; $4130: $22
    scf                                           ; $4131: $37
    nop                                           ; $4132: $00
    ld h, d                                       ; $4133: $62
    ld d, a                                       ; $4134: $57
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    add hl, bc                                    ; $4139: $09
    nop                                           ; $413a: $00
    ld d, a                                       ; $413b: $57
    dec b                                         ; $413c: $05
    ld b, a                                       ; $413d: $47
    nop                                           ; $413e: $00
    add hl, bc                                    ; $413f: $09
    ld de, $0501                                  ; $4140: $11 $01 $05
    ld [bc], a                                    ; $4143: $02
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    add hl, bc                                    ; $4148: $09
    dec c                                         ; $4149: $0d
    ld bc, $2805                                  ; $414a: $01 $05 $28
    nop                                           ; $414d: $00
    ld e, a                                       ; $414e: $5f
    nop                                           ; $414f: $00
    nop                                           ; $4150: $00
    inc de                                        ; $4151: $13
    nop                                           ; $4152: $00
    inc d                                         ; $4153: $14
    inc d                                         ; $4154: $14
    nop                                           ; $4155: $00
    nop                                           ; $4156: $00
    dec d                                         ; $4157: $15
    nop                                           ; $4158: $00
    nop                                           ; $4159: $00
    ld d, $37                                     ; $415a: $16 $37
    ld bc, $0052                                  ; $415c: $01 $52 $00
    nop                                           ; $415f: $00
    dec de                                        ; $4160: $1b
    inc b                                         ; $4161: $04
    nop                                           ; $4162: $00
    inc de                                        ; $4163: $13
    rst $38                                       ; $4164: $ff
    db $ec                                        ; $4165: $ec
    inc d                                         ; $4166: $14
    nop                                           ; $4167: $00
    nop                                           ; $4168: $00
    dec d                                         ; $4169: $15
    nop                                           ; $416a: $00
    nop                                           ; $416b: $00
    ld d, $38                                     ; $416c: $16 $38
    ld bc, $0052                                  ; $416e: $01 $52 $00
    nop                                           ; $4171: $00
    dec de                                        ; $4172: $1b
    inc b                                         ; $4173: $04
    nop                                           ; $4174: $00
    inc de                                        ; $4175: $13
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    inc d                                         ; $4178: $14
    nop                                           ; $4179: $00
    inc d                                         ; $417a: $14
    dec d                                         ; $417b: $15
    nop                                           ; $417c: $00
    nop                                           ; $417d: $00
    ld d, $39                                     ; $417e: $16 $39
    ld bc, $0052                                  ; $4180: $01 $52 $00
    nop                                           ; $4183: $00
    dec de                                        ; $4184: $1b
    inc b                                         ; $4185: $04
    nop                                           ; $4186: $00
    inc de                                        ; $4187: $13
    ld bc, $14a7                                  ; $4188: $01 $a7 $14
    nop                                           ; $418b: $00
    ld sp, $0015                                  ; $418c: $31 $15 $00
    nop                                           ; $418f: $00
    ld d, $22                                     ; $4190: $16 $22
    nop                                           ; $4192: $00
    ld d, d                                       ; $4193: $52
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    dec de                                        ; $4196: $1b
    inc b                                         ; $4197: $04
    nop                                           ; $4198: $00
    inc de                                        ; $4199: $13
    ld bc, $14aa                                  ; $419a: $01 $aa $14
    nop                                           ; $419d: $00
    ld b, h                                       ; $419e: $44
    dec d                                         ; $419f: $15
    nop                                           ; $41a0: $00
    nop                                           ; $41a1: $00
    ld d, $2e                                     ; $41a2: $16 $2e
    nop                                           ; $41a4: $00
    ld d, d                                       ; $41a5: $52
    nop                                           ; $41a6: $00
    nop                                           ; $41a7: $00
    dec de                                        ; $41a8: $1b
    inc b                                         ; $41a9: $04
    nop                                           ; $41aa: $00
    ld e, a                                       ; $41ab: $5f
    ld bc, $1700                                  ; $41ac: $01 $00 $17
    add hl, sp                                    ; $41af: $39
    nop                                           ; $41b0: $00
    ld [hl+], a                                   ; $41b1: $22
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    rla                                           ; $41b4: $17
    scf                                           ; $41b5: $37
    nop                                           ; $41b6: $00
    ld [hl+], a                                   ; $41b7: $22
    add hl, sp                                    ; $41b8: $39
    nop                                           ; $41b9: $00
    rla                                           ; $41ba: $17
    jr c, jr_00d_41bd                             ; $41bb: $38 $00

jr_00d_41bd:
    ld [hl+], a                                   ; $41bd: $22
    scf                                           ; $41be: $37
    nop                                           ; $41bf: $00
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    ld e, a                                       ; $41c3: $5f
    nop                                           ; $41c4: $00
    nop                                           ; $41c5: $00
    inc de                                        ; $41c6: $13
    nop                                           ; $41c7: $00
    inc d                                         ; $41c8: $14
    inc d                                         ; $41c9: $14
    nop                                           ; $41ca: $00
    nop                                           ; $41cb: $00
    dec d                                         ; $41cc: $15
    nop                                           ; $41cd: $00
    nop                                           ; $41ce: $00
    ld d, $37                                     ; $41cf: $16 $37
    ld bc, $0052                                  ; $41d1: $01 $52 $00
    nop                                           ; $41d4: $00
    dec de                                        ; $41d5: $1b
    inc b                                         ; $41d6: $04
    nop                                           ; $41d7: $00
    inc de                                        ; $41d8: $13
    rst $38                                       ; $41d9: $ff
    db $ec                                        ; $41da: $ec
    inc d                                         ; $41db: $14
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    dec d                                         ; $41de: $15
    nop                                           ; $41df: $00
    nop                                           ; $41e0: $00
    ld d, $38                                     ; $41e1: $16 $38
    ld bc, $0052                                  ; $41e3: $01 $52 $00
    nop                                           ; $41e6: $00
    dec de                                        ; $41e7: $1b
    inc b                                         ; $41e8: $04
    nop                                           ; $41e9: $00
    inc de                                        ; $41ea: $13
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    inc d                                         ; $41ed: $14
    nop                                           ; $41ee: $00
    inc d                                         ; $41ef: $14
    dec d                                         ; $41f0: $15
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    ld d, $39                                     ; $41f3: $16 $39
    ld bc, $0052                                  ; $41f5: $01 $52 $00
    nop                                           ; $41f8: $00
    dec de                                        ; $41f9: $1b
    inc b                                         ; $41fa: $04
    nop                                           ; $41fb: $00
    ld e, a                                       ; $41fc: $5f
    ld bc, $1700                                  ; $41fd: $01 $00 $17
    add hl, sp                                    ; $4200: $39
    nop                                           ; $4201: $00
    ld [hl+], a                                   ; $4202: $22
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    rla                                           ; $4205: $17
    scf                                           ; $4206: $37
    nop                                           ; $4207: $00
    ld [hl+], a                                   ; $4208: $22
    add hl, sp                                    ; $4209: $39
    nop                                           ; $420a: $00
    rla                                           ; $420b: $17
    jr c, jr_00d_420e                             ; $420c: $38 $00

jr_00d_420e:
    ld [hl+], a                                   ; $420e: $22
    scf                                           ; $420f: $37
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    ld e, a                                       ; $4214: $5f

Call_00d_4215:
    nop                                           ; $4215: $00
    nop                                           ; $4216: $00
    add hl, bc                                    ; $4217: $09
    nop                                           ; $4218: $00
    ld d, a                                       ; $4219: $57
    dec b                                         ; $421a: $05
    dec c                                         ; $421b: $0d
    nop                                           ; $421c: $00
    ld d, [hl]                                    ; $421d: $56
    nop                                           ; $421e: $00
    nop                                           ; $421f: $00
    rla                                           ; $4220: $17
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    inc e                                         ; $4223: $1c
    ld [hl+], a                                   ; $4224: $22
    nop                                           ; $4225: $00
    ld e, a                                       ; $4226: $5f
    ld bc, $1500                                  ; $4227: $01 $00 $15
    ld b, c                                       ; $422a: $41
    nop                                           ; $422b: $00
    inc sp                                        ; $422c: $33
    inc bc                                        ; $422d: $03
    sbc $15                                       ; $422e: $de $15
    ld b, d                                       ; $4230: $42
    nop                                           ; $4231: $00
    inc sp                                        ; $4232: $33
    inc bc                                        ; $4233: $03
    db $dd                                        ; $4234: $dd
    ld l, $3b                                     ; $4235: $2e $3b
    nop                                           ; $4237: $00
    ld d, a                                       ; $4238: $57
    nop                                           ; $4239: $00
    nop                                           ; $423a: $00
    ld a, c                                       ; $423b: $79
    ld bc, $0038                                  ; $423c: $01 $38 $00
    nop                                           ; $423f: $00
    nop                                           ; $4240: $00
    ld e, a                                       ; $4241: $5f
    ld bc, $0000                                  ; $4242: $01 $00 $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    dec c                                         ; $4247: $0d
    nop                                           ; $4248: $00
    nop                                           ; $4249: $00
    nop                                           ; $424a: $00
    ld e, d                                       ; $424b: $5a
    nop                                           ; $424c: $00
    rst $08                                       ; $424d: $cf
    nop                                           ; $424e: $00
    ld [$0501], a                                 ; $424f: $ea $01 $05
    ld bc, $0120                                  ; $4252: $01 $20 $01
    dec sp                                        ; $4255: $3b
    ld bc, $0156                                  ; $4256: $01 $56 $01
    ld [hl], c                                    ; $4259: $71
    ld bc, $018c                                  ; $425a: $01 $8c $01
    and a                                         ; $425d: $a7
    ld bc, $01c2                                  ; $425e: $01 $c2 $01
    db $dd                                        ; $4261: $dd
    ld e, a                                       ; $4262: $5f
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    add hl, bc                                    ; $4265: $09
    add hl, sp                                    ; $4266: $39
    nop                                           ; $4267: $00
    dec b                                         ; $4268: $05
    ld b, $00                                     ; $4269: $06 $00
    dec hl                                        ; $426b: $2b
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    ld a, [bc]                                    ; $426e: $0a
    cp $00                                        ; $426f: $fe $00
    dec b                                         ; $4271: $05
    inc bc                                        ; $4272: $03
    nop                                           ; $4273: $00
    dec d                                         ; $4274: $15
    ld bc, $0600                                  ; $4275: $01 $00 $06
    inc b                                         ; $4278: $04
    ld hl, sp+$09                                 ; $4279: $f8 $09
    nop                                           ; $427b: $00
    ld d, c                                       ; $427c: $51
    inc b                                         ; $427d: $04
    inc bc                                        ; $427e: $03
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    ld e, a                                       ; $4283: $5f
    ld bc, $0900                                  ; $4284: $01 $00 $09
    db $10                                        ; $4287: $10
    ld bc, $0305                                  ; $4288: $01 $05 $03
    nop                                           ; $428b: $00
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    ld e, a                                       ; $428f: $5f
    ld bc, $1300                                  ; $4290: $01 $00 $13
    ld bc, $1481                                  ; $4293: $01 $81 $14
    nop                                           ; $4296: $00
    ld e, a                                       ; $4297: $5f
    dec d                                         ; $4298: $15
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    ld d, $0d                                     ; $429b: $16 $0d
    nop                                           ; $429d: $00
    ld d, d                                       ; $429e: $52
    nop                                           ; $429f: $00
    nop                                           ; $42a0: $00
    dec de                                        ; $42a1: $1b
    inc b                                         ; $42a2: $04
    nop                                           ; $42a3: $00
    inc de                                        ; $42a4: $13
    ld bc, $1495                                  ; $42a5: $01 $95 $14
    nop                                           ; $42a8: $00
    ld e, a                                       ; $42a9: $5f
    dec d                                         ; $42aa: $15
    nop                                           ; $42ab: $00
    nop                                           ; $42ac: $00
    ld d, $15                                     ; $42ad: $16 $15
    nop                                           ; $42af: $00
    ld d, d                                       ; $42b0: $52
    nop                                           ; $42b1: $00
    nop                                           ; $42b2: $00
    dec de                                        ; $42b3: $1b
    inc b                                         ; $42b4: $04
    nop                                           ; $42b5: $00
    ld e, a                                       ; $42b6: $5f
    ld bc, $0000                                  ; $42b7: $01 $00 $00
    nop                                           ; $42ba: $00
    nop                                           ; $42bb: $00
    ld e, a                                       ; $42bc: $5f
    nop                                           ; $42bd: $00
    nop                                           ; $42be: $00
    add hl, bc                                    ; $42bf: $09
    nop                                           ; $42c0: $00
    ld d, c                                       ; $42c1: $51
    inc b                                         ; $42c2: $04
    inc bc                                        ; $42c3: $03
    nop                                           ; $42c4: $00
    ld e, a                                       ; $42c5: $5f
    ld bc, $0000                                  ; $42c6: $01 $00 $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    add hl, bc                                    ; $42cb: $09
    db $10                                        ; $42cc: $10
    ld bc, $0305                                  ; $42cd: $01 $05 $03
    nop                                           ; $42d0: $00
    ld e, a                                       ; $42d1: $5f
    ld bc, $0000                                  ; $42d2: $01 $00 $00
    nop                                           ; $42d5: $00
    nop                                           ; $42d6: $00
    rrca                                          ; $42d7: $0f
    db $10                                        ; $42d8: $10
    ld bc, $0056                                  ; $42d9: $01 $56 $00
    nop                                           ; $42dc: $00
    rla                                           ; $42dd: $17
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    dec de                                        ; $42e0: $1b
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    ld e, a                                       ; $42e3: $5f
    ld bc, $1700                                  ; $42e4: $01 $00 $17
    nop                                           ; $42e7: $00
    nop                                           ; $42e8: $00
    rla                                           ; $42e9: $17
    dec c                                         ; $42ea: $0d
    nop                                           ; $42eb: $00
    dec d                                         ; $42ec: $15
    ld bc, $3300                                  ; $42ed: $01 $00 $33
    nop                                           ; $42f0: $00
    inc a                                         ; $42f1: $3c
    dec d                                         ; $42f2: $15
    ld e, c                                       ; $42f3: $59
    nop                                           ; $42f4: $00
    inc sp                                        ; $42f5: $33
    nop                                           ; $42f6: $00
    dec a                                         ; $42f7: $3d
    dec d                                         ; $42f8: $15
    ld bc, $3300                                  ; $42f9: $01 $00 $33
    nop                                           ; $42fc: $00
    ld a, $5e                                     ; $42fd: $3e $5e
    nop                                           ; $42ff: $00
    nop                                           ; $4300: $00
    dec d                                         ; $4301: $15
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    add hl, de                                    ; $4304: $19
    nop                                           ; $4305: $00
    ld a, [bc]                                    ; $4306: $0a
    rla                                           ; $4307: $17
    dec d                                         ; $4308: $15
    nop                                           ; $4309: $00
    dec d                                         ; $430a: $15
    nop                                           ; $430b: $00
    nop                                           ; $430c: $00
    add hl, de                                    ; $430d: $19
    nop                                           ; $430e: $00
    ld a, [bc]                                    ; $430f: $0a
    rla                                           ; $4310: $17
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    dec d                                         ; $4313: $15
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    add hl, de                                    ; $4316: $19
    nop                                           ; $4317: $00
    ld a, [bc]                                    ; $4318: $0a
    dec h                                         ; $4319: $25
    nop                                           ; $431a: $00
    nop                                           ; $431b: $00
    ld e, [hl]                                    ; $431c: $5e
    ld bc, $5700                                  ; $431d: $01 $00 $57
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    ld l, $15                                     ; $4322: $2e $15
    nop                                           ; $4324: $00
    jr z, @+$51                                   ; $4325: $28 $4f

    nop                                           ; $4327: $00
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    nop                                           ; $432a: $00
    ld e, a                                       ; $432b: $5f
    ld bc, $0000                                  ; $432c: $01 $00 $00
    nop                                           ; $432f: $00
    nop                                           ; $4330: $00
    ld e, a                                       ; $4331: $5f
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    ld d, [hl]                                    ; $4334: $56
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    rla                                           ; $4337: $17
    nop                                           ; $4338: $00
    nop                                           ; $4339: $00
    dec de                                        ; $433a: $1b
    nop                                           ; $433b: $00
    nop                                           ; $433c: $00
    ld e, a                                       ; $433d: $5f
    ld bc, $1500                                  ; $433e: $01 $00 $15
    dec a                                         ; $4341: $3d
    nop                                           ; $4342: $00
    inc sp                                        ; $4343: $33
    rlca                                          ; $4344: $07
    ccf                                           ; $4345: $3f
    ld d, a                                       ; $4346: $57
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434a: $00
    nop                                           ; $434b: $00
    ld e, a                                       ; $434c: $5f
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    ld d, [hl]                                    ; $434f: $56
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    rla                                           ; $4352: $17
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    dec de                                        ; $4355: $1b
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    ld e, a                                       ; $4358: $5f
    ld bc, $1500                                  ; $4359: $01 $00 $15
    dec a                                         ; $435c: $3d
    nop                                           ; $435d: $00
    inc sp                                        ; $435e: $33
    rlca                                          ; $435f: $07
    ld b, b                                       ; $4360: $40
    ld d, a                                       ; $4361: $57
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    ld e, a                                       ; $4367: $5f
    nop                                           ; $4368: $00
    nop                                           ; $4369: $00
    ld d, [hl]                                    ; $436a: $56
    nop                                           ; $436b: $00
    nop                                           ; $436c: $00
    rla                                           ; $436d: $17
    nop                                           ; $436e: $00
    nop                                           ; $436f: $00
    dec de                                        ; $4370: $1b
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    ld e, a                                       ; $4373: $5f
    ld bc, $1500                                  ; $4374: $01 $00 $15
    dec a                                         ; $4377: $3d
    nop                                           ; $4378: $00
    inc sp                                        ; $4379: $33
    rlca                                          ; $437a: $07
    ld b, c                                       ; $437b: $41
    ld d, a                                       ; $437c: $57
    nop                                           ; $437d: $00
    nop                                           ; $437e: $00
    nop                                           ; $437f: $00
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    ld e, a                                       ; $4382: $5f
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    ld d, [hl]                                    ; $4385: $56
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    rla                                           ; $4388: $17
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    dec de                                        ; $438b: $1b
    nop                                           ; $438c: $00
    nop                                           ; $438d: $00
    ld e, a                                       ; $438e: $5f
    ld bc, $1500                                  ; $438f: $01 $00 $15
    dec a                                         ; $4392: $3d
    nop                                           ; $4393: $00
    inc sp                                        ; $4394: $33
    rlca                                          ; $4395: $07
    ld b, d                                       ; $4396: $42
    ld d, a                                       ; $4397: $57
    nop                                           ; $4398: $00
    nop                                           ; $4399: $00
    nop                                           ; $439a: $00
    nop                                           ; $439b: $00
    nop                                           ; $439c: $00
    ld e, a                                       ; $439d: $5f
    nop                                           ; $439e: $00
    nop                                           ; $439f: $00
    ld d, [hl]                                    ; $43a0: $56
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    rla                                           ; $43a3: $17
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    dec de                                        ; $43a6: $1b
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    ld e, a                                       ; $43a9: $5f
    ld bc, $1500                                  ; $43aa: $01 $00 $15
    dec a                                         ; $43ad: $3d
    nop                                           ; $43ae: $00
    inc sp                                        ; $43af: $33
    rlca                                          ; $43b0: $07
    ld b, e                                       ; $43b1: $43
    ld d, a                                       ; $43b2: $57
    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    nop                                           ; $43b6: $00
    nop                                           ; $43b7: $00
    ld e, a                                       ; $43b8: $5f
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    ld d, [hl]                                    ; $43bb: $56
    nop                                           ; $43bc: $00
    nop                                           ; $43bd: $00
    rla                                           ; $43be: $17
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    dec de                                        ; $43c1: $1b
    nop                                           ; $43c2: $00
    nop                                           ; $43c3: $00
    ld e, a                                       ; $43c4: $5f
    ld bc, $1500                                  ; $43c5: $01 $00 $15
    dec a                                         ; $43c8: $3d
    nop                                           ; $43c9: $00
    inc sp                                        ; $43ca: $33
    rlca                                          ; $43cb: $07
    ld b, h                                       ; $43cc: $44
    ld d, a                                       ; $43cd: $57
    nop                                           ; $43ce: $00
    nop                                           ; $43cf: $00
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    ld e, a                                       ; $43d3: $5f
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    ld d, [hl]                                    ; $43d6: $56
    nop                                           ; $43d7: $00
    nop                                           ; $43d8: $00
    rla                                           ; $43d9: $17
    nop                                           ; $43da: $00
    nop                                           ; $43db: $00
    dec de                                        ; $43dc: $1b
    nop                                           ; $43dd: $00
    nop                                           ; $43de: $00
    ld e, a                                       ; $43df: $5f
    ld bc, $1500                                  ; $43e0: $01 $00 $15
    dec a                                         ; $43e3: $3d
    nop                                           ; $43e4: $00
    inc sp                                        ; $43e5: $33
    rlca                                          ; $43e6: $07
    ld b, l                                       ; $43e7: $45
    ld d, a                                       ; $43e8: $57
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    ld e, a                                       ; $43ee: $5f
    nop                                           ; $43ef: $00
    nop                                           ; $43f0: $00
    ld d, [hl]                                    ; $43f1: $56
    nop                                           ; $43f2: $00
    nop                                           ; $43f3: $00
    rla                                           ; $43f4: $17
    nop                                           ; $43f5: $00
    nop                                           ; $43f6: $00
    dec de                                        ; $43f7: $1b
    nop                                           ; $43f8: $00
    nop                                           ; $43f9: $00
    ld e, a                                       ; $43fa: $5f
    ld bc, $1500                                  ; $43fb: $01 $00 $15
    dec a                                         ; $43fe: $3d
    nop                                           ; $43ff: $00
    inc sp                                        ; $4400: $33
    rlca                                          ; $4401: $07
    ld b, [hl]                                    ; $4402: $46
    ld d, a                                       ; $4403: $57
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    ld e, a                                       ; $4409: $5f
    nop                                           ; $440a: $00
    nop                                           ; $440b: $00
    ld d, [hl]                                    ; $440c: $56
    nop                                           ; $440d: $00
    nop                                           ; $440e: $00
    rla                                           ; $440f: $17
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    dec de                                        ; $4412: $1b
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    ld e, a                                       ; $4415: $5f
    ld bc, $1500                                  ; $4416: $01 $00 $15
    dec a                                         ; $4419: $3d
    nop                                           ; $441a: $00
    inc sp                                        ; $441b: $33
    rlca                                          ; $441c: $07
    ld b, a                                       ; $441d: $47
    ld d, a                                       ; $441e: $57
    nop                                           ; $441f: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    ld e, a                                       ; $4424: $5f
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    ld d, [hl]                                    ; $4427: $56
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    rla                                           ; $442a: $17
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    dec de                                        ; $442d: $1b
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    ld e, a                                       ; $4430: $5f
    ld bc, $1500                                  ; $4431: $01 $00 $15
    dec a                                         ; $4434: $3d
    nop                                           ; $4435: $00
    inc sp                                        ; $4436: $33
    rlca                                          ; $4437: $07
    ld c, b                                       ; $4438: $48
    ld d, a                                       ; $4439: $57
    nop                                           ; $443a: $00
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    ld e, a                                       ; $443f: $5f
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    ld d, [hl]                                    ; $4442: $56
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    add hl, bc                                    ; $4445: $09
    ld c, e                                       ; $4446: $4b
    ld bc, $0405                                  ; $4447: $01 $05 $04
    nop                                           ; $444a: $00
    ld d, a                                       ; $444b: $57
    nop                                           ; $444c: $00
    nop                                           ; $444d: $00
    ld e, a                                       ; $444e: $5f
    ld bc, $0000                                  ; $444f: $01 $00 $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    add hl, bc                                    ; $4454: $09
    nop                                           ; $4455: $00
    ld d, c                                       ; $4456: $51
    dec b                                         ; $4457: $05
    add hl, de                                    ; $4458: $19
    nop                                           ; $4459: $00
    add hl, bc                                    ; $445a: $09
    ld a, [de]                                    ; $445b: $1a
    ld bc, $0d05                                  ; $445c: $01 $05 $0d
    nop                                           ; $445f: $00
    add hl, bc                                    ; $4460: $09
    ld a, [$0501]                                 ; $4461: $fa $01 $05
    inc bc                                        ; $4464: $03
    nop                                           ; $4465: $00
    ld e, a                                       ; $4466: $5f
    ld bc, $0000                                  ; $4467: $01 $00 $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    rla                                           ; $446c: $17
    nop                                           ; $446d: $00
    nop                                           ; $446e: $00
    dec de                                        ; $446f: $1b
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    dec d                                         ; $4472: $15
    ld b, e                                       ; $4473: $43
    nop                                           ; $4474: $00
    ld b, $02                                     ; $4475: $06 $02
    ld c, c                                       ; $4477: $49
    ld d, a                                       ; $4478: $57
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    ld e, a                                       ; $447b: $5f
    ld bc, $3500                                  ; $447c: $01 $00 $35
    dec c                                         ; $447f: $0d
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    nop                                           ; $4483: $00
    rla                                           ; $4484: $17
    nop                                           ; $4485: $00
    nop                                           ; $4486: $00
    dec de                                        ; $4487: $1b
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    rrca                                          ; $448a: $0f
    ld a, [$0f00]                                 ; $448b: $fa $00 $0f
    ld a, [de]                                    ; $448e: $1a
    ld bc, $4315                                  ; $448f: $01 $15 $43
    nop                                           ; $4492: $00
    ld b, $02                                     ; $4493: $06 $02
    ld c, c                                       ; $4495: $49
    ld d, a                                       ; $4496: $57
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    ld e, a                                       ; $4499: $5f
    ld bc, $3500                                  ; $449a: $01 $00 $35
    dec c                                         ; $449d: $0d
    nop                                           ; $449e: $00
    nop                                           ; $449f: $00
    nop                                           ; $44a0: $00
    nop                                           ; $44a1: $00
    ld d, a                                       ; $44a2: $57
    nop                                           ; $44a3: $00
    nop                                           ; $44a4: $00
    ld e, a                                       ; $44a5: $5f
    ld bc, $0000                                  ; $44a6: $01 $00 $00
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    add hl, bc                                    ; $44ab: $09
    inc a                                         ; $44ac: $3c
    nop                                           ; $44ad: $00
    dec b                                         ; $44ae: $05
    inc bc                                        ; $44af: $03
    nop                                           ; $44b0: $00
    ld a, a                                       ; $44b1: $7f
    add hl, bc                                    ; $44b2: $09
    jp c, Jump_000_3c0f                           ; $44b3: $da $0f $3c

    ld bc, $0001                                  ; $44b6: $01 $01 $00
    nop                                           ; $44b9: $00
    ld a, [bc]                                    ; $44ba: $0a
    nop                                           ; $44bb: $00
    nop                                           ; $44bc: $00
    nop                                           ; $44bd: $00
    pop hl                                        ; $44be: $e1
    nop                                           ; $44bf: $00
    or $01                                        ; $44c0: $f6 $01
    inc l                                         ; $44c2: $2c
    ld bc, $0141                                  ; $44c3: $01 $41 $01
    ld a, l                                       ; $44c6: $7d
    ld bc, $01b3                                  ; $44c7: $01 $b3 $01
    ret z                                         ; $44ca: $c8

    ld [bc], a                                    ; $44cb: $02
    db $10                                        ; $44cc: $10
    ld [bc], a                                    ; $44cd: $02
    inc e                                         ; $44ce: $1c
    ld e, a                                       ; $44cf: $5f
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    add hl, bc                                    ; $44d2: $09
    nop                                           ; $44d3: $00
    ld [bc], a                                    ; $44d4: $02
    dec b                                         ; $44d5: $05
    ld b, [hl]                                    ; $44d6: $46
    nop                                           ; $44d7: $00
    add hl, bc                                    ; $44d8: $09
    dec d                                         ; $44d9: $15
    ld bc, $0305                                  ; $44da: $01 $05 $03
    nop                                           ; $44dd: $00
    ld e, a                                       ; $44de: $5f
    ld bc, $0000                                  ; $44df: $01 $00 $00
    nop                                           ; $44e2: $00
    nop                                           ; $44e3: $00
    ld d, [hl]                                    ; $44e4: $56
    nop                                           ; $44e5: $00
    nop                                           ; $44e6: $00
    rla                                           ; $44e7: $17
    nop                                           ; $44e8: $00
    nop                                           ; $44e9: $00
    dec de                                        ; $44ea: $1b
    nop                                           ; $44eb: $00
    nop                                           ; $44ec: $00
    ld e, a                                       ; $44ed: $5f
    ld bc, $1500                                  ; $44ee: $01 $00 $15
    ld e, c                                       ; $44f1: $59
    nop                                           ; $44f2: $00
    inc sp                                        ; $44f3: $33
    nop                                           ; $44f4: $00
    sub l                                         ; $44f5: $95
    dec d                                         ; $44f6: $15
    ld a, [hl+]                                   ; $44f7: $2a
    nop                                           ; $44f8: $00
    inc sp                                        ; $44f9: $33
    nop                                           ; $44fa: $00
    sub [hl]                                      ; $44fb: $96
    rla                                           ; $44fc: $17
    ld a, [de]                                    ; $44fd: $1a
    nop                                           ; $44fe: $00
    dec d                                         ; $44ff: $15
    ld b, $00                                     ; $4500: $06 $00
    add hl, de                                    ; $4502: $19
    nop                                           ; $4503: $00
    ld e, $1b                                     ; $4504: $1e $1b
    ld b, $00                                     ; $4506: $06 $00
    dec d                                         ; $4508: $15
    ld de, $3300                                  ; $4509: $11 $00 $33
    nop                                           ; $450c: $00
    sub a                                         ; $450d: $97
    dec d                                         ; $450e: $15
    dec hl                                        ; $450f: $2b
    nop                                           ; $4510: $00
    inc sp                                        ; $4511: $33
    nop                                           ; $4512: $00
    sbc b                                         ; $4513: $98
    dec d                                         ; $4514: $15
    ld a, [hl+]                                   ; $4515: $2a
    nop                                           ; $4516: $00
    inc sp                                        ; $4517: $33
    nop                                           ; $4518: $00
    sbc c                                         ; $4519: $99
    dec d                                         ; $451a: $15
    ld de, $3300                                  ; $451b: $11 $00 $33
    nop                                           ; $451e: $00
    sbc d                                         ; $451f: $9a
    dec d                                         ; $4520: $15
    dec d                                         ; $4521: $15
    nop                                           ; $4522: $00
    inc sp                                        ; $4523: $33
    nop                                           ; $4524: $00
    sbc e                                         ; $4525: $9b
    dec d                                         ; $4526: $15
    ld de, $3300                                  ; $4527: $11 $00 $33
    nop                                           ; $452a: $00
    sbc h                                         ; $452b: $9c
    dec d                                         ; $452c: $15
    ld a, [de]                                    ; $452d: $1a
    nop                                           ; $452e: $00
    inc sp                                        ; $452f: $33
    nop                                           ; $4530: $00
    sbc [hl]                                      ; $4531: $9e
    ld e, [hl]                                    ; $4532: $5e
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    ld e, a                                       ; $4535: $5f
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    rla                                           ; $4538: $17
    ld a, [de]                                    ; $4539: $1a
    nop                                           ; $453a: $00
    dec d                                         ; $453b: $15
    ld [bc], a                                    ; $453c: $02
    nop                                           ; $453d: $00
    add hl, de                                    ; $453e: $19
    nop                                           ; $453f: $00
    ld hl, $1b17                                  ; $4540: $21 $17 $1b
    nop                                           ; $4543: $00
    dec d                                         ; $4544: $15
    ld [bc], a                                    ; $4545: $02
    nop                                           ; $4546: $00
    add hl, de                                    ; $4547: $19
    nop                                           ; $4548: $00
    inc a                                         ; $4549: $3c
    rla                                           ; $454a: $17
    dec e                                         ; $454b: $1d
    nop                                           ; $454c: $00
    dec d                                         ; $454d: $15
    ld [bc], a                                    ; $454e: $02
    nop                                           ; $454f: $00
    add hl, de                                    ; $4550: $19
    nop                                           ; $4551: $00
    ld b, [hl]                                    ; $4552: $46
    ld e, a                                       ; $4553: $5f
    ld bc, $2500                                  ; $4554: $01 $00 $25
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    ld e, [hl]                                    ; $4559: $5e
    ld bc, $5e00                                  ; $455a: $01 $00 $5e
    nop                                           ; $455d: $00
    nop                                           ; $455e: $00
    ld e, a                                       ; $455f: $5f
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    rla                                           ; $4562: $17
    dec de                                        ; $4563: $1b
    nop                                           ; $4564: $00
    dec d                                         ; $4565: $15
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    add hl, de                                    ; $4568: $19
    nop                                           ; $4569: $00
    ld b, [hl]                                    ; $456a: $46
    rla                                           ; $456b: $17
    dec e                                         ; $456c: $1d
    nop                                           ; $456d: $00
    dec d                                         ; $456e: $15
    nop                                           ; $456f: $00
    nop                                           ; $4570: $00
    add hl, de                                    ; $4571: $19
    nop                                           ; $4572: $00
    ld b, [hl]                                    ; $4573: $46
    rla                                           ; $4574: $17
    ld a, [de]                                    ; $4575: $1a
    nop                                           ; $4576: $00
    dec d                                         ; $4577: $15
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    add hl, de                                    ; $457a: $19
    nop                                           ; $457b: $00
    ld h, h                                       ; $457c: $64
    ld e, a                                       ; $457d: $5f
    ld bc, $2500                                  ; $457e: $01 $00 $25
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    ld e, [hl]                                    ; $4583: $5e
    ld bc, $1700                                  ; $4584: $01 $00 $17
    dec de                                        ; $4587: $1b
    nop                                           ; $4588: $00
    ld e, $1b                                     ; $4589: $1e $1b
    nop                                           ; $458b: $00
    rla                                           ; $458c: $17
    dec e                                         ; $458d: $1d
    nop                                           ; $458e: $00
    ld e, $1d                                     ; $458f: $1e $1d
    nop                                           ; $4591: $00
    rla                                           ; $4592: $17
    ld a, [de]                                    ; $4593: $1a
    nop                                           ; $4594: $00
    ld e, $1a                                     ; $4595: $1e $1a
    nop                                           ; $4597: $00
    rrca                                          ; $4598: $0f
    ld a, [$6200]                                 ; $4599: $fa $00 $62
    inc bc                                        ; $459c: $03
    nop                                           ; $459d: $00
    rrca                                          ; $459e: $0f
    dec d                                         ; $459f: $15
    ld bc, $0057                                  ; $45a0: $01 $57 $00
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    nop                                           ; $45a5: $00
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    ld e, a                                       ; $45aa: $5f
    ld bc, $0000                                  ; $45ab: $01 $00 $00
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    ld d, [hl]                                    ; $45b0: $56
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    rla                                           ; $45b3: $17
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    inc e                                         ; $45b6: $1c
    ld b, $00                                     ; $45b7: $06 $00
    dec d                                         ; $45b9: $15
    dec [hl]                                      ; $45ba: $35
    nop                                           ; $45bb: $00
    inc sp                                        ; $45bc: $33
    nop                                           ; $45bd: $00
    and [hl]                                      ; $45be: $a6
    ld d, a                                       ; $45bf: $57
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    nop                                           ; $45c3: $00
    nop                                           ; $45c4: $00
    ld d, [hl]                                    ; $45c5: $56
    nop                                           ; $45c6: $00
    nop                                           ; $45c7: $00
    rla                                           ; $45c8: $17
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    inc e                                         ; $45cb: $1c
    ld b, $01                                     ; $45cc: $06 $01
    add hl, bc                                    ; $45ce: $09
    rlca                                          ; $45cf: $07
    nop                                           ; $45d0: $00
    dec b                                         ; $45d1: $05
    rlca                                          ; $45d2: $07
    nop                                           ; $45d3: $00
    dec d                                         ; $45d4: $15
    inc [hl]                                      ; $45d5: $34
    nop                                           ; $45d6: $00
    inc sp                                        ; $45d7: $33
    nop                                           ; $45d8: $00
    and c                                         ; $45d9: $a1
    rrca                                          ; $45da: $0f
    rlca                                          ; $45db: $07
    ld bc, $0057                                  ; $45dc: $01 $57 $00
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    inc bc                                        ; $45e3: $03
    ld b, $00                                     ; $45e4: $06 $00
    dec d                                         ; $45e6: $15
    inc [hl]                                      ; $45e7: $34
    nop                                           ; $45e8: $00
    inc sp                                        ; $45e9: $33
    nop                                           ; $45ea: $00
    and d                                         ; $45eb: $a2
    rrca                                          ; $45ec: $0f
    rlca                                          ; $45ed: $07
    nop                                           ; $45ee: $00
    ld d, a                                       ; $45ef: $57
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    ld d, a                                       ; $45f5: $57
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    nop                                           ; $45f8: $00
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    ld d, [hl]                                    ; $45fb: $56
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    rla                                           ; $45fe: $17
    nop                                           ; $45ff: $00
    nop                                           ; $4600: $00
    inc e                                         ; $4601: $1c
    ld b, $02                                     ; $4602: $06 $02
    dec d                                         ; $4604: $15
    ld [hl-], a                                   ; $4605: $32
    nop                                           ; $4606: $00
    inc sp                                        ; $4607: $33
    nop                                           ; $4608: $00
    and e                                         ; $4609: $a3
    ld d, a                                       ; $460a: $57
    nop                                           ; $460b: $00
    nop                                           ; $460c: $00
    nop                                           ; $460d: $00
    nop                                           ; $460e: $00
    nop                                           ; $460f: $00
    ld d, [hl]                                    ; $4610: $56
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    rla                                           ; $4613: $17
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    inc e                                         ; $4616: $1c
    ld b, $03                                     ; $4617: $06 $03
    add hl, bc                                    ; $4619: $09
    dec b                                         ; $461a: $05
    nop                                           ; $461b: $00
    dec b                                         ; $461c: $05
    rlca                                          ; $461d: $07
    nop                                           ; $461e: $00
    dec d                                         ; $461f: $15
    ld a, [de]                                    ; $4620: $1a
    nop                                           ; $4621: $00
    inc sp                                        ; $4622: $33
    nop                                           ; $4623: $00
    sbc a                                         ; $4624: $9f
    rrca                                          ; $4625: $0f
    dec b                                         ; $4626: $05
    ld bc, $0057                                  ; $4627: $01 $57 $00
    nop                                           ; $462a: $00
    nop                                           ; $462b: $00
    nop                                           ; $462c: $00
    nop                                           ; $462d: $00
    inc bc                                        ; $462e: $03
    add hl, bc                                    ; $462f: $09
    nop                                           ; $4630: $00
    add hl, bc                                    ; $4631: $09
    dec b                                         ; $4632: $05
    ld bc, $0605                                  ; $4633: $01 $05 $06
    nop                                           ; $4636: $00
    dec d                                         ; $4637: $15
    ld a, [de]                                    ; $4638: $1a
    nop                                           ; $4639: $00
    inc sp                                        ; $463a: $33
    nop                                           ; $463b: $00
    and b                                         ; $463c: $a0
    rrca                                          ; $463d: $0f
    dec b                                         ; $463e: $05
    nop                                           ; $463f: $00
    ld d, a                                       ; $4640: $57
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    ld d, a                                       ; $4646: $57
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    nop                                           ; $464a: $00
    nop                                           ; $464b: $00
    ld d, [hl]                                    ; $464c: $56
    nop                                           ; $464d: $00
    nop                                           ; $464e: $00
    rla                                           ; $464f: $17
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    inc e                                         ; $4652: $1c
    ld b, $04                                     ; $4653: $06 $04
    add hl, bc                                    ; $4655: $09
    ld b, $00                                     ; $4656: $06 $00
    dec b                                         ; $4658: $05
    rlca                                          ; $4659: $07
    nop                                           ; $465a: $00
    dec d                                         ; $465b: $15
    inc sp                                        ; $465c: $33
    nop                                           ; $465d: $00
    inc sp                                        ; $465e: $33
    nop                                           ; $465f: $00
    and h                                         ; $4660: $a4
    rrca                                          ; $4661: $0f
    ld b, $01                                     ; $4662: $06 $01
    ld d, a                                       ; $4664: $57
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    inc bc                                        ; $466a: $03
    ld b, $00                                     ; $466b: $06 $00
    dec d                                         ; $466d: $15
    inc sp                                        ; $466e: $33
    nop                                           ; $466f: $00
    inc sp                                        ; $4670: $33
    nop                                           ; $4671: $00
    and l                                         ; $4672: $a5
    rrca                                          ; $4673: $0f
    ld b, $00                                     ; $4674: $06 $00
    ld d, a                                       ; $4676: $57
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    nop                                           ; $467b: $00
    ld d, a                                       ; $467c: $57
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    ld d, [hl]                                    ; $4682: $56
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    rla                                           ; $4685: $17
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    inc e                                         ; $4688: $1c
    ld b, $05                                     ; $4689: $06 $05
    dec d                                         ; $468b: $15
    ld de, $3300                                  ; $468c: $11 $00 $33
    nop                                           ; $468f: $00
    sbc l                                         ; $4690: $9d
    ld d, a                                       ; $4691: $57
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    ld e, a                                       ; $4697: $5f
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    add hl, bc                                    ; $469a: $09
    nop                                           ; $469b: $00
    ld [bc], a                                    ; $469c: $02
    dec b                                         ; $469d: $05
    dec d                                         ; $469e: $15
    nop                                           ; $469f: $00
    inc de                                        ; $46a0: $13
    nop                                           ; $46a1: $00
    cp a                                          ; $46a2: $bf
    inc d                                         ; $46a3: $14
    nop                                           ; $46a4: $00
    ld a, d                                       ; $46a5: $7a
    dec d                                         ; $46a6: $15
    nop                                           ; $46a7: $00
    nop                                           ; $46a8: $00
    ld d, $1d                                     ; $46a9: $16 $1d
    nop                                           ; $46ab: $00
    ld d, d                                       ; $46ac: $52
    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    dec de                                        ; $46af: $1b
    inc b                                         ; $46b0: $04
    nop                                           ; $46b1: $00
    inc de                                        ; $46b2: $13
    nop                                           ; $46b3: $00
    call nc, Call_000_0014                        ; $46b4: $d4 $14 $00
    ld a, a                                       ; $46b7: $7f
    dec d                                         ; $46b8: $15
    nop                                           ; $46b9: $00
    nop                                           ; $46ba: $00
    ld d, $1b                                     ; $46bb: $16 $1b
    nop                                           ; $46bd: $00
    ld d, d                                       ; $46be: $52
    nop                                           ; $46bf: $00
    nop                                           ; $46c0: $00
    dec de                                        ; $46c1: $1b
    inc b                                         ; $46c2: $04
    nop                                           ; $46c3: $00
    inc de                                        ; $46c4: $13
    ld bc, $1403                                  ; $46c5: $01 $03 $14
    nop                                           ; $46c8: $00
    sub a                                         ; $46c9: $97
    dec d                                         ; $46ca: $15
    nop                                           ; $46cb: $00
    nop                                           ; $46cc: $00
    ld d, $1a                                     ; $46cd: $16 $1a
    nop                                           ; $46cf: $00
    ld d, d                                       ; $46d0: $52
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    dec de                                        ; $46d3: $1b
    ld b, $00                                     ; $46d4: $06 $00
    ld e, a                                       ; $46d6: $5f
    ld bc, $0000                                  ; $46d7: $01 $00 $00
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    ld a, [bc]                                    ; $46df: $0a
    nop                                           ; $46e0: $00
    ld [bc], a                                    ; $46e1: $02
    dec b                                         ; $46e2: $05
    ld [bc], a                                    ; $46e3: $02
    nop                                           ; $46e4: $00
    ld d, l                                       ; $46e5: $55
    ld bc, $0000                                  ; $46e6: $01 $00 $00
    nop                                           ; $46e9: $00
    nop                                           ; $46ea: $00
    add hl, bc                                    ; $46eb: $09
    nop                                           ; $46ec: $00
    ld [bc], a                                    ; $46ed: $02
    dec b                                         ; $46ee: $05
    rlca                                          ; $46ef: $07
    nop                                           ; $46f0: $00
    add hl, bc                                    ; $46f1: $09
    dec d                                         ; $46f2: $15
    ld bc, $0205                                  ; $46f3: $01 $05 $02
    nop                                           ; $46f6: $00
    nop                                           ; $46f7: $00
    nop                                           ; $46f8: $00
    nop                                           ; $46f9: $00
    dec d                                         ; $46fa: $15
    dec d                                         ; $46fb: $15
    nop                                           ; $46fc: $00
    inc sp                                        ; $46fd: $33
    ld a, [bc]                                    ; $46fe: $0a
    inc bc                                        ; $46ff: $03
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    inc bc                                        ; $4706: $03
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    ld bc, $0183                                  ; $4709: $01 $83 $01
    push af                                       ; $470c: $f5
    ld e, a                                       ; $470d: $5f
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    add hl, bc                                    ; $4710: $09
    nop                                           ; $4711: $00
    inc b                                         ; $4712: $04
    dec b                                         ; $4713: $05
    add hl, bc                                    ; $4714: $09
    nop                                           ; $4715: $00
    add hl, bc                                    ; $4716: $09
    dec b                                         ; $4717: $05
    nop                                           ; $4718: $00
    dec b                                         ; $4719: $05
    dec b                                         ; $471a: $05
    nop                                           ; $471b: $00
    rrca                                          ; $471c: $0f
    dec b                                         ; $471d: $05
    ld bc, $015f                                  ; $471e: $01 $5f $01
    nop                                           ; $4721: $00
    ld d, [hl]                                    ; $4722: $56
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    ld d, a                                       ; $4725: $57
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    ld e, a                                       ; $4728: $5f
    ld bc, $0000                                  ; $4729: $01 $00 $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    add hl, bc                                    ; $472e: $09
    inc c                                         ; $472f: $0c
    ld bc, $0305                                  ; $4730: $01 $05 $03
    nop                                           ; $4733: $00
    ld e, a                                       ; $4734: $5f
    ld bc, $0000                                  ; $4735: $01 $00 $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    rrca                                          ; $473a: $0f
    inc c                                         ; $473b: $0c
    ld bc, $0056                                  ; $473c: $01 $56 $00
    nop                                           ; $473f: $00
    rla                                           ; $4740: $17
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    rrca                                          ; $4743: $0f
    rst $38                                       ; $4744: $ff
    ld [bc], a                                    ; $4745: $02
    dec de                                        ; $4746: $1b
    inc b                                         ; $4747: $04
    nop                                           ; $4748: $00
    inc de                                        ; $4749: $13
    nop                                           ; $474a: $00
    jp Jump_000_0014                              ; $474b: $c3 $14 $00


    rst $28                                       ; $474e: $ef
    dec d                                         ; $474f: $15
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    ld d, $19                                     ; $4752: $16 $19
    nop                                           ; $4754: $00
    ld d, d                                       ; $4755: $52
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    dec de                                        ; $4758: $1b
    ld b, $00                                     ; $4759: $06 $00
    inc de                                        ; $475b: $13
    nop                                           ; $475c: $00
    push hl                                       ; $475d: $e5
    inc d                                         ; $475e: $14
    nop                                           ; $475f: $00
    call c, Call_000_0015                         ; $4760: $dc $15 $00
    nop                                           ; $4763: $00
    ld d, $24                                     ; $4764: $16 $24
    nop                                           ; $4766: $00
    ld d, d                                       ; $4767: $52
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    dec de                                        ; $476a: $1b
    ld b, $00                                     ; $476b: $06 $00
    inc de                                        ; $476d: $13
    nop                                           ; $476e: $00
    sbc l                                         ; $476f: $9d
    inc d                                         ; $4770: $14
    nop                                           ; $4771: $00
    ret nc                                        ; $4772: $d0

    dec d                                         ; $4773: $15
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    ld d, $25                                     ; $4776: $16 $25
    nop                                           ; $4778: $00
    ld d, d                                       ; $4779: $52
    nop                                           ; $477a: $00
    nop                                           ; $477b: $00
    dec de                                        ; $477c: $1b
    ld b, $00                                     ; $477d: $06 $00
    inc de                                        ; $477f: $13
    nop                                           ; $4780: $00
    ld [hl], c                                    ; $4781: $71
    inc d                                         ; $4782: $14
    nop                                           ; $4783: $00
    cp l                                          ; $4784: $bd
    dec d                                         ; $4785: $15
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    ld d, $0d                                     ; $4788: $16 $0d
    nop                                           ; $478a: $00
    ld d, d                                       ; $478b: $52
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    ld e, a                                       ; $478e: $5f
    ld bc, $2700                                  ; $478f: $01 $00 $27
    nop                                           ; $4792: $00
    inc b                                         ; $4793: $04
    rla                                           ; $4794: $17
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    dec d                                         ; $4797: $15
    inc b                                         ; $4798: $04
    nop                                           ; $4799: $00
    add hl, de                                    ; $479a: $19
    nop                                           ; $479b: $00
    ld l, $15                                     ; $479c: $2e $15
    ld b, $00                                     ; $479e: $06 $00
    add hl, de                                    ; $47a0: $19
    nop                                           ; $47a1: $00
    ld c, b                                       ; $47a2: $48
    dec de                                        ; $47a3: $1b
    ld b, $00                                     ; $47a4: $06 $00
    daa                                           ; $47a6: $27
    nop                                           ; $47a7: $00
    inc b                                         ; $47a8: $04
    rla                                           ; $47a9: $17
    dec c                                         ; $47aa: $0d
    nop                                           ; $47ab: $00
    inc de                                        ; $47ac: $13
    nop                                           ; $47ad: $00
    cp l                                          ; $47ae: $bd
    dec d                                         ; $47af: $15
    ld [bc], a                                    ; $47b0: $02
    nop                                           ; $47b1: $00
    ld [hl], e                                    ; $47b2: $73
    nop                                           ; $47b3: $00
    ld [hl], c                                    ; $47b4: $71
    daa                                           ; $47b5: $27
    nop                                           ; $47b6: $00
    inc bc                                        ; $47b7: $03
    dec d                                         ; $47b8: $15
    ld bc, $3300                                  ; $47b9: $01 $00 $33
    ld bc, $2701                                  ; $47bc: $01 $01 $27
    nop                                           ; $47bf: $00
    inc bc                                        ; $47c0: $03
    rla                                           ; $47c1: $17
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    inc de                                        ; $47c4: $13
    nop                                           ; $47c5: $00
    jp nz, $0215                                  ; $47c6: $c2 $15 $02

    nop                                           ; $47c9: $00
    ld [hl], e                                    ; $47ca: $73
    nop                                           ; $47cb: $00
    ret nc                                        ; $47cc: $d0

    rla                                           ; $47cd: $17
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    ld e, c                                       ; $47d0: $59
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    ld e, l                                       ; $47d3: $5d
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    ld e, [hl]                                    ; $47d6: $5e
    nop                                           ; $47d7: $00
    nop                                           ; $47d8: $00
    rla                                           ; $47d9: $17
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    dec d                                         ; $47dc: $15
    ld b, $00                                     ; $47dd: $06 $00
    add hl, de                                    ; $47df: $19
    nop                                           ; $47e0: $00
    jr nc, jr_00d_47fa                            ; $47e1: $30 $17

    inc h                                         ; $47e3: $24
    nop                                           ; $47e4: $00
    dec d                                         ; $47e5: $15
    ld b, $00                                     ; $47e6: $06 $00
    add hl, de                                    ; $47e8: $19
    nop                                           ; $47e9: $00
    ld e, b                                       ; $47ea: $58
    rla                                           ; $47eb: $17
    add hl, de                                    ; $47ec: $19
    nop                                           ; $47ed: $00
    dec d                                         ; $47ee: $15
    ld b, $00                                     ; $47ef: $06 $00
    add hl, de                                    ; $47f1: $19
    nop                                           ; $47f2: $00
    ld c, b                                       ; $47f3: $48
    rla                                           ; $47f4: $17
    dec h                                         ; $47f5: $25
    nop                                           ; $47f6: $00
    dec d                                         ; $47f7: $15
    ld b, $00                                     ; $47f8: $06 $00

jr_00d_47fa:
    add hl, de                                    ; $47fa: $19
    nop                                           ; $47fb: $00
    jr nz, jr_00d_4815                            ; $47fc: $20 $17

    inc h                                         ; $47fe: $24
    nop                                           ; $47ff: $00
    dec h                                         ; $4800: $25
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    ld e, [hl]                                    ; $4803: $5e
    ld bc, $1700                                  ; $4804: $01 $00 $17
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    dec de                                        ; $4809: $1b
    ld b, $00                                     ; $480a: $06 $00
    rla                                           ; $480c: $17
    add hl, de                                    ; $480d: $19
    nop                                           ; $480e: $00
    dec de                                        ; $480f: $1b
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    rla                                           ; $4812: $17
    inc h                                         ; $4813: $24
    nop                                           ; $4814: $00

jr_00d_4815:
    dec de                                        ; $4815: $1b
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    rla                                           ; $4818: $17
    dec h                                         ; $4819: $25
    nop                                           ; $481a: $00
    dec de                                        ; $481b: $1b
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    daa                                           ; $481e: $27
    nop                                           ; $481f: $00
    inc b                                         ; $4820: $04
    daa                                           ; $4821: $27
    nop                                           ; $4822: $00
    inc bc                                        ; $4823: $03
    dec d                                         ; $4824: $15
    ld bc, $3300                                  ; $4825: $01 $00 $33
    ld bc, $1502                                  ; $4828: $01 $02 $15
    nop                                           ; $482b: $00
    nop                                           ; $482c: $00
    inc sp                                        ; $482d: $33
    ld bc, $1503                                  ; $482e: $01 $03 $15
    dec d                                         ; $4831: $15
    nop                                           ; $4832: $00
    inc sp                                        ; $4833: $33
    ld bc, $1504                                  ; $4834: $01 $04 $15
    ld bc, $3300                                  ; $4837: $01 $00 $33
    ld bc, $2705                                  ; $483a: $01 $05 $27
    nop                                           ; $483d: $00
    inc b                                         ; $483e: $04
    rla                                           ; $483f: $17
    dec c                                         ; $4840: $0d
    nop                                           ; $4841: $00
    ld d, d                                       ; $4842: $52
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    inc de                                        ; $4845: $13
    nop                                           ; $4846: $00
    db $d3                                        ; $4847: $d3
    ld [hl], c                                    ; $4848: $71
    nop                                           ; $4849: $00
    ld h, b                                       ; $484a: $60
    dec de                                        ; $484b: $1b
    inc b                                         ; $484c: $04
    nop                                           ; $484d: $00
    ld e, [hl]                                    ; $484e: $5e
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    rla                                           ; $4851: $17
    add hl, de                                    ; $4852: $19
    nop                                           ; $4853: $00
    dec d                                         ; $4854: $15
    inc b                                         ; $4855: $04
    nop                                           ; $4856: $00
    add hl, de                                    ; $4857: $19
    nop                                           ; $4858: $00
    ld h, h                                       ; $4859: $64
    rla                                           ; $485a: $17
    inc h                                         ; $485b: $24
    nop                                           ; $485c: $00
    dec d                                         ; $485d: $15
    inc b                                         ; $485e: $04
    nop                                           ; $485f: $00
    add hl, de                                    ; $4860: $19
    nop                                           ; $4861: $00
    ld h, h                                       ; $4862: $64
    rla                                           ; $4863: $17
    dec h                                         ; $4864: $25
    nop                                           ; $4865: $00
    ld d, d                                       ; $4866: $52
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    dec d                                         ; $4869: $15
    inc b                                         ; $486a: $04
    nop                                           ; $486b: $00
    add hl, de                                    ; $486c: $19
    nop                                           ; $486d: $00
    ld h, h                                       ; $486e: $64
    rla                                           ; $486f: $17
    add hl, de                                    ; $4870: $19
    nop                                           ; $4871: $00
    dec h                                         ; $4872: $25
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    ld e, [hl]                                    ; $4875: $5e
    ld bc, $1e00                                  ; $4876: $01 $00 $1e
    add hl, de                                    ; $4879: $19
    nop                                           ; $487a: $00
    rla                                           ; $487b: $17
    inc h                                         ; $487c: $24
    nop                                           ; $487d: $00
    ld e, $24                                     ; $487e: $1e $24
    nop                                           ; $4880: $00
    rla                                           ; $4881: $17
    dec h                                         ; $4882: $25
    nop                                           ; $4883: $00
    ld e, $25                                     ; $4884: $1e $25
    nop                                           ; $4886: $00
    ld h, d                                       ; $4887: $62
    inc b                                         ; $4888: $04
    nop                                           ; $4889: $00
    ld d, a                                       ; $488a: $57
    nop                                           ; $488b: $00
    nop                                           ; $488c: $00
    nop                                           ; $488d: $00
    nop                                           ; $488e: $00
    nop                                           ; $488f: $00
    ld e, a                                       ; $4890: $5f
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    add hl, bc                                    ; $4893: $09
    nop                                           ; $4894: $00
    inc b                                         ; $4895: $04
    dec b                                         ; $4896: $05
    inc hl                                        ; $4897: $23
    nop                                           ; $4898: $00
    ld d, [hl]                                    ; $4899: $56
    nop                                           ; $489a: $00
    nop                                           ; $489b: $00
    rla                                           ; $489c: $17
    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    inc e                                         ; $489f: $1c
    dec c                                         ; $48a0: $0d
    nop                                           ; $48a1: $00
    rla                                           ; $48a2: $17
    dec c                                         ; $48a3: $0d
    nop                                           ; $48a4: $00
    inc e                                         ; $48a5: $1c
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    ld e, a                                       ; $48a8: $5f
    ld bc, $6000                                  ; $48a9: $01 $00 $60
    ld [bc], a                                    ; $48ac: $02
    nop                                           ; $48ad: $00
    add hl, bc                                    ; $48ae: $09
    ld [bc], a                                    ; $48af: $02
    nop                                           ; $48b0: $00
    dec b                                         ; $48b1: $05
    ld b, $00                                     ; $48b2: $06 $00
    dec d                                         ; $48b4: $15
    ld bc, $3300                                  ; $48b5: $01 $00 $33
    add hl, bc                                    ; $48b8: $09
    ld e, c                                       ; $48b9: $59
    ld d, a                                       ; $48ba: $57
    nop                                           ; $48bb: $00
    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    inc bc                                        ; $48c0: $03
    inc d                                         ; $48c1: $14
    nop                                           ; $48c2: $00
    dec d                                         ; $48c3: $15
    ld bc, $3300                                  ; $48c4: $01 $00 $33
    add hl, bc                                    ; $48c7: $09
    ld e, b                                       ; $48c8: $58
    dec d                                         ; $48c9: $15
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    inc sp                                        ; $48cc: $33
    dec b                                         ; $48cd: $05
    ld e, a                                       ; $48ce: $5f
    ld d, [hl]                                    ; $48cf: $56
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    rla                                           ; $48d2: $17
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    ld hl, $0063                                  ; $48d5: $21 $63 $00
    daa                                           ; $48d8: $27
    nop                                           ; $48d9: $00
    jr z, jr_00d_495a                             ; $48da: $28 $7e

    nop                                           ; $48dc: $00
    nop                                           ; $48dd: $00
    dec de                                        ; $48de: $1b
    nop                                           ; $48df: $00
    nop                                           ; $48e0: $00
    ld h, c                                       ; $48e1: $61
    ld bc, $1500                                  ; $48e2: $01 $00 $15
    ld bc, $3300                                  ; $48e5: $01 $00 $33
    dec b                                         ; $48e8: $05
    ld h, b                                       ; $48e9: $60
    dec d                                         ; $48ea: $15
    nop                                           ; $48eb: $00
    nop                                           ; $48ec: $00
    inc sp                                        ; $48ed: $33
    nop                                           ; $48ee: $00
    ld c, h                                       ; $48ef: $4c
    dec d                                         ; $48f0: $15
    ld bc, $3300                                  ; $48f1: $01 $00 $33
    add hl, bc                                    ; $48f4: $09
    ld e, c                                       ; $48f5: $59
    ld d, a                                       ; $48f6: $57
    nop                                           ; $48f7: $00
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    nop                                           ; $48fa: $00
    nop                                           ; $48fb: $00
    nop                                           ; $48fc: $00
    nop                                           ; $48fd: $00
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    ld e, a                                       ; $4902: $5f
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    add hl, bc                                    ; $4905: $09
    nop                                           ; $4906: $00
    inc b                                         ; $4907: $04
    dec b                                         ; $4908: $05
    ld [$1300], sp                                ; $4909: $08 $00 $13
    nop                                           ; $490c: $00
    ld h, b                                       ; $490d: $60
    inc d                                         ; $490e: $14
    nop                                           ; $490f: $00
    db $d3                                        ; $4910: $d3
    dec d                                         ; $4911: $15
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    ld d, $0d                                     ; $4914: $16 $0d
    nop                                           ; $4916: $00
    ld d, d                                       ; $4917: $52
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    dec de                                        ; $491a: $1b
    inc b                                         ; $491b: $04
    nop                                           ; $491c: $00
    ld e, a                                       ; $491d: $5f
    ld bc, $0000                                  ; $491e: $01 $00 $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    stop                                          ; $4923: $10 $00
    nop                                           ; $4925: $00
    ld bc, $0235                                  ; $4926: $01 $35 $02
    call Call_000_3603                            ; $4929: $cd $03 $36
    rlca                                          ; $492c: $07
    or b                                          ; $492d: $b0
    ld [$0873], sp                                ; $492e: $08 $73 $08
    halt                                          ; $4931: $76
    ld [$0a91], sp                                ; $4932: $08 $91 $0a
    ld d, b                                       ; $4935: $50
    dec bc                                        ; $4936: $0b
    dec hl                                        ; $4937: $2b
    inc c                                         ; $4938: $0c
    ld a, [hl]                                    ; $4939: $7e
    inc c                                         ; $493a: $0c
    ret c                                         ; $493b: $d8

    dec c                                         ; $493c: $0d
    dec [hl]                                      ; $493d: $35
    dec c                                         ; $493e: $0d
    sub d                                         ; $493f: $92
    dec c                                         ; $4940: $0d
    rst $28                                       ; $4941: $ef
    ld c, $4c                                     ; $4942: $0e $4c
    ld e, a                                       ; $4944: $5f
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    add hl, bc                                    ; $4947: $09
    nop                                           ; $4948: $00
    ld b, $04                                     ; $4949: $06 $04
    inc bc                                        ; $494b: $03
    nop                                           ; $494c: $00
    ld e, a                                       ; $494d: $5f
    ld bc, $0000                                  ; $494e: $01 $00 $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    add hl, bc                                    ; $4953: $09
    inc c                                         ; $4954: $0c
    ld bc, $0305                                  ; $4955: $01 $05 $03
    nop                                           ; $4958: $00
    ld e, a                                       ; $4959: $5f

jr_00d_495a:
    ld bc, $0000                                  ; $495a: $01 $00 $00
    nop                                           ; $495d: $00
    nop                                           ; $495e: $00
    rrca                                          ; $495f: $0f
    inc c                                         ; $4960: $0c
    ld bc, $0056                                  ; $4961: $01 $56 $00
    nop                                           ; $4964: $00
    rla                                           ; $4965: $17
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    dec de                                        ; $4968: $1b
    inc b                                         ; $4969: $04
    nop                                           ; $496a: $00
    ld e, a                                       ; $496b: $5f
    ld bc, $5600                                  ; $496c: $01 $00 $56
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    rla                                           ; $4971: $17
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    ld e, d                                       ; $4974: $5a
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    inc de                                        ; $4977: $13
    nop                                           ; $4978: $00
    ret nz                                        ; $4979: $c0

    ld [hl], c                                    ; $497a: $71
    nop                                           ; $497b: $00
    db $e3                                        ; $497c: $e3
    dec de                                        ; $497d: $1b
    ld b, $00                                     ; $497e: $06 $00
    dec d                                         ; $4980: $15
    ld b, $00                                     ; $4981: $06 $00
    add hl, de                                    ; $4983: $19
    nop                                           ; $4984: $00
    jr z, jr_00d_49a2                             ; $4985: $28 $1b

    ld b, $00                                     ; $4987: $06 $00
    ld e, e                                       ; $4989: $5b
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    dec d                                         ; $498c: $15
    ld bc, $3300                                  ; $498d: $01 $00 $33
    ld bc, $1716                                  ; $4990: $01 $16 $17
    dec c                                         ; $4993: $0d
    nop                                           ; $4994: $00
    dec d                                         ; $4995: $15
    inc b                                         ; $4996: $04
    nop                                           ; $4997: $00
    add hl, de                                    ; $4998: $19
    nop                                           ; $4999: $00
    scf                                           ; $499a: $37
    dec de                                        ; $499b: $1b
    ld [bc], a                                    ; $499c: $02
    nop                                           ; $499d: $00
    dec d                                         ; $499e: $15
    ld [bc], a                                    ; $499f: $02
    nop                                           ; $49a0: $00
    add hl, de                                    ; $49a1: $19

jr_00d_49a2:
    nop                                           ; $49a2: $00
    ld l, [hl]                                    ; $49a3: $6e
    ld e, $0d                                     ; $49a4: $1e $0d
    nop                                           ; $49a6: $00
    rla                                           ; $49a7: $17
    nop                                           ; $49a8: $00
    nop                                           ; $49a9: $00
    dec d                                         ; $49aa: $15
    ld b, $00                                     ; $49ab: $06 $00
    add hl, de                                    ; $49ad: $19
    nop                                           ; $49ae: $00
    ld de, $001b                                  ; $49af: $11 $1b $00
    nop                                           ; $49b2: $00
    dec d                                         ; $49b3: $15
    nop                                           ; $49b4: $00
    nop                                           ; $49b5: $00
    add hl, de                                    ; $49b6: $19
    nop                                           ; $49b7: $00
    ld [$001b], sp                                ; $49b8: $08 $1b $00
    nop                                           ; $49bb: $00
    dec d                                         ; $49bc: $15
    ld l, $00                                     ; $49bd: $2e $00
    inc sp                                        ; $49bf: $33
    ld bc, $1517                                  ; $49c0: $01 $17 $15
    nop                                           ; $49c3: $00
    nop                                           ; $49c4: $00
    inc sp                                        ; $49c5: $33
    ld bc, $1518                                  ; $49c6: $01 $18 $15
    add hl, de                                    ; $49c9: $19
    nop                                           ; $49ca: $00
    inc sp                                        ; $49cb: $33
    ld bc, $1519                                  ; $49cc: $01 $19 $15
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    inc sp                                        ; $49d1: $33
    ld bc, $151a                                  ; $49d2: $01 $1a $15
    dec d                                         ; $49d5: $15
    nop                                           ; $49d6: $00
    inc sp                                        ; $49d7: $33
    ld bc, $151b                                  ; $49d8: $01 $1b $15
    ld l, $00                                     ; $49db: $2e $00
    inc sp                                        ; $49dd: $33
    ld bc, $171c                                  ; $49de: $01 $1c $17
    ld d, $00                                     ; $49e1: $16 $00
    dec d                                         ; $49e3: $15
    ld [bc], a                                    ; $49e4: $02
    nop                                           ; $49e5: $00
    add hl, de                                    ; $49e6: $19
    nop                                           ; $49e7: $00
    jr jr_00d_49ff                                ; $49e8: $18 $15

    inc bc                                        ; $49ea: $03
    nop                                           ; $49eb: $00
    add hl, de                                    ; $49ec: $19
    nop                                           ; $49ed: $00
    add hl, de                                    ; $49ee: $19
    dec d                                         ; $49ef: $15
    inc b                                         ; $49f0: $04
    nop                                           ; $49f1: $00
    add hl, de                                    ; $49f2: $19
    nop                                           ; $49f3: $00
    ld h, h                                       ; $49f4: $64
    dec de                                        ; $49f5: $1b
    ld [bc], a                                    ; $49f6: $02
    nop                                           ; $49f7: $00
    ld e, [hl]                                    ; $49f8: $5e
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    ld e, a                                       ; $49fb: $5f
    nop                                           ; $49fc: $00
    nop                                           ; $49fd: $00
    rla                                           ; $49fe: $17

jr_00d_49ff:
    ld d, $00                                     ; $49ff: $16 $00
    dec d                                         ; $4a01: $15
    ld [bc], a                                    ; $4a02: $02
    nop                                           ; $4a03: $00
    add hl, de                                    ; $4a04: $19
    nop                                           ; $4a05: $00
    ld b, [hl]                                    ; $4a06: $46
    rla                                           ; $4a07: $17
    dec h                                         ; $4a08: $25
    nop                                           ; $4a09: $00
    dec d                                         ; $4a0a: $15
    inc b                                         ; $4a0b: $04
    nop                                           ; $4a0c: $00
    add hl, de                                    ; $4a0d: $19
    nop                                           ; $4a0e: $00
    ld e, d                                       ; $4a0f: $5a
    rla                                           ; $4a10: $17
    add hl, de                                    ; $4a11: $19
    nop                                           ; $4a12: $00
    dec d                                         ; $4a13: $15
    inc b                                         ; $4a14: $04
    nop                                           ; $4a15: $00
    add hl, de                                    ; $4a16: $19
    nop                                           ; $4a17: $00
    ld l, c                                       ; $4a18: $69
    rla                                           ; $4a19: $17
    inc h                                         ; $4a1a: $24
    nop                                           ; $4a1b: $00
    dec d                                         ; $4a1c: $15
    inc b                                         ; $4a1d: $04
    nop                                           ; $4a1e: $00
    add hl, de                                    ; $4a1f: $19
    nop                                           ; $4a20: $00
    ld d, b                                       ; $4a21: $50
    ld e, a                                       ; $4a22: $5f
    ld bc, $2500                                  ; $4a23: $01 $00 $25
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    ld e, [hl]                                    ; $4a28: $5e
    ld bc, $1700                                  ; $4a29: $01 $00 $17
    ld d, $00                                     ; $4a2c: $16 $00
    ld e, $16                                     ; $4a2e: $1e $16
    nop                                           ; $4a30: $00
    ld e, [hl]                                    ; $4a31: $5e
    nop                                           ; $4a32: $00
    nop                                           ; $4a33: $00
    ld e, a                                       ; $4a34: $5f
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    rla                                           ; $4a37: $17
    dec h                                         ; $4a38: $25
    nop                                           ; $4a39: $00
    dec d                                         ; $4a3a: $15
    ld [bc], a                                    ; $4a3b: $02
    nop                                           ; $4a3c: $00
    add hl, de                                    ; $4a3d: $19
    nop                                           ; $4a3e: $00
    ld h, h                                       ; $4a3f: $64
    rla                                           ; $4a40: $17
    add hl, de                                    ; $4a41: $19
    nop                                           ; $4a42: $00
    dec d                                         ; $4a43: $15
    ld [bc], a                                    ; $4a44: $02
    nop                                           ; $4a45: $00
    add hl, de                                    ; $4a46: $19
    nop                                           ; $4a47: $00
    add a                                         ; $4a48: $87
    rla                                           ; $4a49: $17
    inc h                                         ; $4a4a: $24
    nop                                           ; $4a4b: $00
    dec d                                         ; $4a4c: $15
    ld [bc], a                                    ; $4a4d: $02
    nop                                           ; $4a4e: $00
    add hl, de                                    ; $4a4f: $19
    nop                                           ; $4a50: $00
    ld a, b                                       ; $4a51: $78
    ld e, a                                       ; $4a52: $5f
    ld bc, $2500                                  ; $4a53: $01 $00 $25
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    ld e, [hl]                                    ; $4a58: $5e
    ld bc, $1e00                                  ; $4a59: $01 $00 $1e
    inc h                                         ; $4a5c: $24
    nop                                           ; $4a5d: $00
    rla                                           ; $4a5e: $17
    add hl, de                                    ; $4a5f: $19
    nop                                           ; $4a60: $00
    ld e, $19                                     ; $4a61: $1e $19
    nop                                           ; $4a63: $00
    rla                                           ; $4a64: $17
    dec h                                         ; $4a65: $25
    nop                                           ; $4a66: $00
    ld e, $25                                     ; $4a67: $1e $25
    nop                                           ; $4a69: $00
    inc l                                         ; $4a6a: $2c
    inc b                                         ; $4a6b: $04
    ld bc, $0057                                  ; $4a6c: $01 $57 $00
    nop                                           ; $4a6f: $00
    nop                                           ; $4a70: $00
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    ld e, a                                       ; $4a73: $5f
    ld bc, $0000                                  ; $4a74: $01 $00 $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    ld e, a                                       ; $4a79: $5f
    nop                                           ; $4a7a: $00
    nop                                           ; $4a7b: $00
    add hl, bc                                    ; $4a7c: $09
    nop                                           ; $4a7d: $00
    rlca                                          ; $4a7e: $07
    dec b                                         ; $4a7f: $05
    ld b, $00                                     ; $4a80: $06 $00
    ld e, a                                       ; $4a82: $5f
    ld bc, $1500                                  ; $4a83: $01 $00 $15
    nop                                           ; $4a86: $00
    nop                                           ; $4a87: $00
    inc sp                                        ; $4a88: $33
    ld bc, $1578                                  ; $4a89: $01 $78 $15
    ld d, b                                       ; $4a8c: $50
    nop                                           ; $4a8d: $00
    inc sp                                        ; $4a8e: $33
    ld bc, $097d                                  ; $4a8f: $01 $7d $09
    nop                                           ; $4a92: $00
    ld b, $05                                     ; $4a93: $06 $05
    dec b                                         ; $4a95: $05
    nop                                           ; $4a96: $00
    ld e, a                                       ; $4a97: $5f
    ld bc, $1500                                  ; $4a98: $01 $00 $15
    ld d, b                                       ; $4a9b: $50
    nop                                           ; $4a9c: $00
    inc sp                                        ; $4a9d: $33
    ld bc, $004b                                  ; $4a9e: $01 $4b $00
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    add hl, bc                                    ; $4aa3: $09
    nop                                           ; $4aa4: $00
    ld [$0505], sp                                ; $4aa5: $08 $05 $05
    nop                                           ; $4aa8: $00
    ld e, a                                       ; $4aa9: $5f
    ld bc, $1500                                  ; $4aaa: $01 $00 $15
    ld d, b                                       ; $4aad: $50
    nop                                           ; $4aae: $00
    inc sp                                        ; $4aaf: $33
    ld bc, $005b                                  ; $4ab0: $01 $5b $00
    nop                                           ; $4ab3: $00
    nop                                           ; $4ab4: $00
    add hl, bc                                    ; $4ab5: $09
    nop                                           ; $4ab6: $00
    add hl, bc                                    ; $4ab7: $09
    dec b                                         ; $4ab8: $05
    dec b                                         ; $4ab9: $05
    nop                                           ; $4aba: $00
    ld e, a                                       ; $4abb: $5f
    ld bc, $1500                                  ; $4abc: $01 $00 $15
    ld d, b                                       ; $4abf: $50
    nop                                           ; $4ac0: $00
    inc sp                                        ; $4ac1: $33
    ld bc, $005b                                  ; $4ac2: $01 $5b $00
    nop                                           ; $4ac5: $00
    nop                                           ; $4ac6: $00
    add hl, bc                                    ; $4ac7: $09
    nop                                           ; $4ac8: $00
    ld d, [hl]                                    ; $4ac9: $56
    dec b                                         ; $4aca: $05
    dec b                                         ; $4acb: $05
    nop                                           ; $4acc: $00
    ld e, a                                       ; $4acd: $5f
    ld bc, $1500                                  ; $4ace: $01 $00 $15
    ld d, b                                       ; $4ad1: $50
    nop                                           ; $4ad2: $00
    inc sp                                        ; $4ad3: $33
    ld bc, $005b                                  ; $4ad4: $01 $5b $00
    nop                                           ; $4ad7: $00
    nop                                           ; $4ad8: $00
    add hl, bc                                    ; $4ad9: $09
    nop                                           ; $4ada: $00
    ld d, d                                       ; $4adb: $52
    dec b                                         ; $4adc: $05
    rlca                                          ; $4add: $07
    nop                                           ; $4ade: $00
    ld e, a                                       ; $4adf: $5f
    ld bc, $1500                                  ; $4ae0: $01 $00 $15
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    inc sp                                        ; $4ae5: $33
    ld bc, $1595                                  ; $4ae6: $01 $95 $15
    ld d, b                                       ; $4ae9: $50
    nop                                           ; $4aea: $00
    inc sp                                        ; $4aeb: $33
    ld a, [bc]                                    ; $4aec: $0a
    add hl, de                                    ; $4aed: $19
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    add hl, bc                                    ; $4af1: $09
    nop                                           ; $4af2: $00
    ld d, e                                       ; $4af3: $53
    dec b                                         ; $4af4: $05
    dec b                                         ; $4af5: $05
    nop                                           ; $4af6: $00
    ld e, a                                       ; $4af7: $5f
    ld bc, $1500                                  ; $4af8: $01 $00 $15
    ld d, b                                       ; $4afb: $50
    nop                                           ; $4afc: $00
    inc sp                                        ; $4afd: $33
    ld [bc], a                                    ; $4afe: $02
    jr jr_00d_4b01                                ; $4aff: $18 $00

jr_00d_4b01:
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    add hl, bc                                    ; $4b03: $09
    nop                                           ; $4b04: $00
    dec bc                                        ; $4b05: $0b
    dec b                                         ; $4b06: $05
    dec bc                                        ; $4b07: $0b
    nop                                           ; $4b08: $00
    ld d, [hl]                                    ; $4b09: $56
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    rla                                           ; $4b0c: $17
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    inc e                                         ; $4b0f: $1c
    ld b, d                                       ; $4b10: $42
    ld bc, $015f                                  ; $4b11: $01 $5f $01
    nop                                           ; $4b14: $00
    dec d                                         ; $4b15: $15
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    inc sp                                        ; $4b18: $33
    inc bc                                        ; $4b19: $03
    ld l, h                                       ; $4b1a: $6c
    dec d                                         ; $4b1b: $15
    ld d, b                                       ; $4b1c: $50
    nop                                           ; $4b1d: $00
    inc sp                                        ; $4b1e: $33
    inc bc                                        ; $4b1f: $03
    sbc h                                         ; $4b20: $9c
    ld d, a                                       ; $4b21: $57
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    add hl, bc                                    ; $4b27: $09
    nop                                           ; $4b28: $00
    ld e, h                                       ; $4b29: $5c
    dec b                                         ; $4b2a: $05
    dec bc                                        ; $4b2b: $0b
    nop                                           ; $4b2c: $00
    ld d, [hl]                                    ; $4b2d: $56
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    rla                                           ; $4b30: $17
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    inc e                                         ; $4b33: $1c
    ld b, d                                       ; $4b34: $42
    ld bc, $015f                                  ; $4b35: $01 $5f $01
    nop                                           ; $4b38: $00
    dec d                                         ; $4b39: $15
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    inc sp                                        ; $4b3c: $33
    inc b                                         ; $4b3d: $04
    call nc, Call_00d_5015                        ; $4b3e: $d4 $15 $50
    nop                                           ; $4b41: $00
    inc sp                                        ; $4b42: $33
    inc b                                         ; $4b43: $04
    or h                                          ; $4b44: $b4
    ld d, a                                       ; $4b45: $57
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    add hl, bc                                    ; $4b4b: $09
    nop                                           ; $4b4c: $00
    db $10                                        ; $4b4d: $10
    dec b                                         ; $4b4e: $05
    dec bc                                        ; $4b4f: $0b
    nop                                           ; $4b50: $00
    ld d, [hl]                                    ; $4b51: $56
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    rla                                           ; $4b54: $17
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    inc e                                         ; $4b57: $1c
    ld b, d                                       ; $4b58: $42
    ld bc, $015f                                  ; $4b59: $01 $5f $01
    nop                                           ; $4b5c: $00
    dec d                                         ; $4b5d: $15
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    inc sp                                        ; $4b60: $33
    ld [bc], a                                    ; $4b61: $02
    ld b, l                                       ; $4b62: $45
    dec d                                         ; $4b63: $15
    ld d, b                                       ; $4b64: $50
    nop                                           ; $4b65: $00
    inc sp                                        ; $4b66: $33
    ld [bc], a                                    ; $4b67: $02
    adc a                                         ; $4b68: $8f
    ld d, a                                       ; $4b69: $57
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    add hl, bc                                    ; $4b6f: $09
    nop                                           ; $4b70: $00
    ld de, $0b05                                  ; $4b71: $11 $05 $0b
    nop                                           ; $4b74: $00
    ld d, [hl]                                    ; $4b75: $56
    nop                                           ; $4b76: $00
    nop                                           ; $4b77: $00
    rla                                           ; $4b78: $17
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    inc e                                         ; $4b7b: $1c
    ld b, d                                       ; $4b7c: $42
    ld bc, $015f                                  ; $4b7d: $01 $5f $01
    nop                                           ; $4b80: $00
    dec d                                         ; $4b81: $15
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    inc sp                                        ; $4b84: $33
    ld [bc], a                                    ; $4b85: $02
    ld b, l                                       ; $4b86: $45
    dec d                                         ; $4b87: $15
    ld d, b                                       ; $4b88: $50
    nop                                           ; $4b89: $00
    inc sp                                        ; $4b8a: $33
    ld [bc], a                                    ; $4b8b: $02
    adc a                                         ; $4b8c: $8f
    ld d, a                                       ; $4b8d: $57
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    add hl, bc                                    ; $4b93: $09
    nop                                           ; $4b94: $00
    ccf                                           ; $4b95: $3f
    dec b                                         ; $4b96: $05
    add hl, bc                                    ; $4b97: $09
    nop                                           ; $4b98: $00
    ld d, [hl]                                    ; $4b99: $56
    nop                                           ; $4b9a: $00
    nop                                           ; $4b9b: $00
    rla                                           ; $4b9c: $17
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    inc e                                         ; $4b9f: $1c
    ld b, d                                       ; $4ba0: $42
    ld bc, $015f                                  ; $4ba1: $01 $5f $01
    nop                                           ; $4ba4: $00
    dec d                                         ; $4ba5: $15
    ld d, b                                       ; $4ba6: $50
    nop                                           ; $4ba7: $00
    inc sp                                        ; $4ba8: $33
    add hl, bc                                    ; $4ba9: $09
    db $e4                                        ; $4baa: $e4
    ld d, a                                       ; $4bab: $57
    nop                                           ; $4bac: $00
    nop                                           ; $4bad: $00
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    add hl, bc                                    ; $4bb1: $09
    nop                                           ; $4bb2: $00
    dec a                                         ; $4bb3: $3d
    dec b                                         ; $4bb4: $05
    add hl, bc                                    ; $4bb5: $09
    nop                                           ; $4bb6: $00
    ld d, [hl]                                    ; $4bb7: $56
    nop                                           ; $4bb8: $00
    nop                                           ; $4bb9: $00
    rla                                           ; $4bba: $17
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    inc e                                         ; $4bbd: $1c
    ld b, d                                       ; $4bbe: $42
    ld bc, $015f                                  ; $4bbf: $01 $5f $01
    nop                                           ; $4bc2: $00
    dec d                                         ; $4bc3: $15
    ld d, b                                       ; $4bc4: $50
    nop                                           ; $4bc5: $00
    inc sp                                        ; $4bc6: $33
    dec bc                                        ; $4bc7: $0b
    ld l, l                                       ; $4bc8: $6d
    ld d, a                                       ; $4bc9: $57
    nop                                           ; $4bca: $00
    nop                                           ; $4bcb: $00
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    add hl, bc                                    ; $4bcf: $09
    nop                                           ; $4bd0: $00
    ld d, h                                       ; $4bd1: $54
    dec b                                         ; $4bd2: $05
    add hl, bc                                    ; $4bd3: $09
    nop                                           ; $4bd4: $00
    ld d, [hl]                                    ; $4bd5: $56
    nop                                           ; $4bd6: $00
    nop                                           ; $4bd7: $00
    rla                                           ; $4bd8: $17
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    inc e                                         ; $4bdb: $1c
    ld b, d                                       ; $4bdc: $42
    ld bc, $015f                                  ; $4bdd: $01 $5f $01
    nop                                           ; $4be0: $00
    dec d                                         ; $4be1: $15
    ld d, b                                       ; $4be2: $50
    nop                                           ; $4be3: $00
    inc sp                                        ; $4be4: $33
    ld [bc], a                                    ; $4be5: $02
    jr jr_00d_4c3f                                ; $4be6: $18 $57

    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    add hl, bc                                    ; $4bed: $09
    nop                                           ; $4bee: $00
    ld e, e                                       ; $4bef: $5b
    dec b                                         ; $4bf0: $05
    add hl, bc                                    ; $4bf1: $09
    nop                                           ; $4bf2: $00
    ld d, [hl]                                    ; $4bf3: $56
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    rla                                           ; $4bf6: $17
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    inc e                                         ; $4bf9: $1c
    ld b, d                                       ; $4bfa: $42
    ld bc, $015f                                  ; $4bfb: $01 $5f $01
    nop                                           ; $4bfe: $00
    dec d                                         ; $4bff: $15
    ld d, b                                       ; $4c00: $50
    nop                                           ; $4c01: $00
    inc sp                                        ; $4c02: $33
    dec bc                                        ; $4c03: $0b
    ld h, l                                       ; $4c04: $65
    ld d, a                                       ; $4c05: $57
    nop                                           ; $4c06: $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    ld e, a                                       ; $4c0b: $5f
    ld bc, $0000                                  ; $4c0c: $01 $00 $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    add hl, bc                                    ; $4c11: $09
    nop                                           ; $4c12: $00
    ld [$1005], sp                                ; $4c13: $08 $05 $10
    nop                                           ; $4c16: $00
    add hl, bc                                    ; $4c17: $09
    ld [de], a                                    ; $4c18: $12
    ld bc, $0405                                  ; $4c19: $01 $05 $04
    nop                                           ; $4c1c: $00
    dec d                                         ; $4c1d: $15
    ld b, c                                       ; $4c1e: $41
    nop                                           ; $4c1f: $00
    inc sp                                        ; $4c20: $33
    ld bc, $00da                                  ; $4c21: $01 $da $00
    nop                                           ; $4c24: $00
    nop                                           ; $4c25: $00
    ld d, [hl]                                    ; $4c26: $56
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    dec d                                         ; $4c29: $15
    ld b, c                                       ; $4c2a: $41
    nop                                           ; $4c2b: $00
    inc sp                                        ; $4c2c: $33
    ld bc, $15d7                                  ; $4c2d: $01 $d7 $15
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    inc sp                                        ; $4c32: $33
    ld bc, $15d8                                  ; $4c33: $01 $d8 $15
    ld b, c                                       ; $4c36: $41
    nop                                           ; $4c37: $00
    inc sp                                        ; $4c38: $33
    ld bc, $57d9                                  ; $4c39: $01 $d9 $57
    nop                                           ; $4c3c: $00
    nop                                           ; $4c3d: $00
    rrca                                          ; $4c3e: $0f

jr_00d_4c3f:
    ld [de], a                                    ; $4c3f: $12
    ld bc, $0000                                  ; $4c40: $01 $00 $00
    nop                                           ; $4c43: $00
    add hl, bc                                    ; $4c44: $09
    nop                                           ; $4c45: $00
    dec bc                                        ; $4c46: $0b
    dec b                                         ; $4c47: $05
    add hl, bc                                    ; $4c48: $09
    nop                                           ; $4c49: $00
    dec d                                         ; $4c4a: $15
    nop                                           ; $4c4b: $00
    nop                                           ; $4c4c: $00
    inc sp                                        ; $4c4d: $33
    inc bc                                        ; $4c4e: $03
    ld [hl], c                                    ; $4c4f: $71
    dec d                                         ; $4c50: $15
    ld b, c                                       ; $4c51: $41
    nop                                           ; $4c52: $00
    inc sp                                        ; $4c53: $33
    inc bc                                        ; $4c54: $03
    add b                                         ; $4c55: $80
    ld l, $3b                                     ; $4c56: $2e $3b
    nop                                           ; $4c58: $00
    dec d                                         ; $4c59: $15
    ld b, d                                       ; $4c5a: $42
    nop                                           ; $4c5b: $00
    inc sp                                        ; $4c5c: $33
    inc bc                                        ; $4c5d: $03
    add c                                         ; $4c5e: $81
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    add hl, bc                                    ; $4c62: $09
    nop                                           ; $4c63: $00
    ld e, h                                       ; $4c64: $5c
    dec b                                         ; $4c65: $05
    ld b, $00                                     ; $4c66: $06 $00
    dec d                                         ; $4c68: $15
    nop                                           ; $4c69: $00
    nop                                           ; $4c6a: $00
    inc sp                                        ; $4c6b: $33
    inc b                                         ; $4c6c: $04
    or [hl]                                       ; $4c6d: $b6
    dec d                                         ; $4c6e: $15
    ld b, c                                       ; $4c6f: $41
    nop                                           ; $4c70: $00
    inc sp                                        ; $4c71: $33
    inc b                                         ; $4c72: $04
    or a                                          ; $4c73: $b7
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    ld e, a                                       ; $4c7a: $5f
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    add hl, bc                                    ; $4c7d: $09
    nop                                           ; $4c7e: $00
    ld b, $05                                     ; $4c7f: $06 $05
    ld [hl-], a                                   ; $4c81: $32
    nop                                           ; $4c82: $00
    add hl, bc                                    ; $4c83: $09
    inc e                                         ; $4c84: $1c
    ld bc, $0905                                  ; $4c85: $01 $05 $09
    nop                                           ; $4c88: $00
    inc de                                        ; $4c89: $13
    nop                                           ; $4c8a: $00
    adc [hl]                                      ; $4c8b: $8e
    inc d                                         ; $4c8c: $14
    nop                                           ; $4c8d: $00
    add hl, de                                    ; $4c8e: $19
    dec d                                         ; $4c8f: $15
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    ld d, $2c                                     ; $4c92: $16 $2c
    nop                                           ; $4c94: $00
    ld d, d                                       ; $4c95: $52
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    dec de                                        ; $4c98: $1b
    inc b                                         ; $4c99: $04
    nop                                           ; $4c9a: $00
    ld e, a                                       ; $4c9b: $5f
    ld bc, $0000                                  ; $4c9c: $01 $00 $00
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    inc de                                        ; $4ca1: $13
    nop                                           ; $4ca2: $00
    and c                                         ; $4ca3: $a1
    inc d                                         ; $4ca4: $14
    nop                                           ; $4ca5: $00
    adc e                                         ; $4ca6: $8b
    dec d                                         ; $4ca7: $15
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    ld d, $16                                     ; $4caa: $16 $16
    nop                                           ; $4cac: $00
    ld d, d                                       ; $4cad: $52
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    dec de                                        ; $4cb0: $1b
    inc b                                         ; $4cb1: $04
    nop                                           ; $4cb2: $00
    inc de                                        ; $4cb3: $13
    nop                                           ; $4cb4: $00
    add a                                         ; $4cb5: $87
    inc d                                         ; $4cb6: $14
    nop                                           ; $4cb7: $00
    sbc d                                         ; $4cb8: $9a
    dec d                                         ; $4cb9: $15
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    ld d, $19                                     ; $4cbc: $16 $19
    nop                                           ; $4cbe: $00
    ld d, d                                       ; $4cbf: $52
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    dec de                                        ; $4cc2: $1b
    ld [bc], a                                    ; $4cc3: $02
    nop                                           ; $4cc4: $00
    inc de                                        ; $4cc5: $13
    nop                                           ; $4cc6: $00
    sub [hl]                                      ; $4cc7: $96
    inc d                                         ; $4cc8: $14
    nop                                           ; $4cc9: $00
    or d                                          ; $4cca: $b2
    dec d                                         ; $4ccb: $15
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    ld d, $24                                     ; $4cce: $16 $24
    nop                                           ; $4cd0: $00
    ld d, d                                       ; $4cd1: $52
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    dec de                                        ; $4cd4: $1b
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    inc de                                        ; $4cd7: $13
    nop                                           ; $4cd8: $00
    xor c                                         ; $4cd9: $a9
    inc d                                         ; $4cda: $14
    nop                                           ; $4cdb: $00
    rst $00                                       ; $4cdc: $c7
    dec d                                         ; $4cdd: $15
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    ld d, $0d                                     ; $4ce0: $16 $0d
    nop                                           ; $4ce2: $00
    ld d, d                                       ; $4ce3: $52
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    dec de                                        ; $4ce6: $1b
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    inc de                                        ; $4ce9: $13
    nop                                           ; $4cea: $00
    cp c                                          ; $4ceb: $b9
    inc d                                         ; $4cec: $14
    nop                                           ; $4ced: $00
    and [hl]                                      ; $4cee: $a6
    dec d                                         ; $4cef: $15
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    ld d, $25                                     ; $4cf2: $16 $25
    nop                                           ; $4cf4: $00
    ld d, d                                       ; $4cf5: $52
    nop                                           ; $4cf6: $00
    nop                                           ; $4cf7: $00
    dec de                                        ; $4cf8: $1b
    ld b, $00                                     ; $4cf9: $06 $00
    inc de                                        ; $4cfb: $13
    nop                                           ; $4cfc: $00
    adc [hl]                                      ; $4cfd: $8e
    inc d                                         ; $4cfe: $14
    nop                                           ; $4cff: $00
    add hl, de                                    ; $4d00: $19
    dec d                                         ; $4d01: $15
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    ld d, $2c                                     ; $4d04: $16 $2c
    nop                                           ; $4d06: $00
    ld d, d                                       ; $4d07: $52
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    dec de                                        ; $4d0a: $1b
    inc b                                         ; $4d0b: $04
    nop                                           ; $4d0c: $00
    ld e, a                                       ; $4d0d: $5f
    ld bc, $0f00                                  ; $4d0e: $01 $00 $0f
    inc e                                         ; $4d11: $1c
    ld bc, $0000                                  ; $4d12: $01 $00 $00

Jump_00d_4d15:
    nop                                           ; $4d15: $00
    add hl, bc                                    ; $4d16: $09
    nop                                           ; $4d17: $00
    ld h, $05                                     ; $4d18: $26 $05
    dec de                                        ; $4d1a: $1b
    nop                                           ; $4d1b: $00
    inc de                                        ; $4d1c: $13
    rst $38                                       ; $4d1d: $ff
    db $ec                                        ; $4d1e: $ec
    inc d                                         ; $4d1f: $14
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    dec d                                         ; $4d22: $15
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    ld d, $37                                     ; $4d25: $16 $37
    ld bc, $0052                                  ; $4d27: $01 $52 $00
    nop                                           ; $4d2a: $00
    dec de                                        ; $4d2b: $1b
    inc b                                         ; $4d2c: $04
    nop                                           ; $4d2d: $00
    inc de                                        ; $4d2e: $13
    nop                                           ; $4d2f: $00
    inc d                                         ; $4d30: $14
    inc d                                         ; $4d31: $14
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    dec d                                         ; $4d34: $15
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    ld d, $38                                     ; $4d37: $16 $38
    ld bc, $0052                                  ; $4d39: $01 $52 $00
    nop                                           ; $4d3c: $00
    dec de                                        ; $4d3d: $1b
    inc b                                         ; $4d3e: $04
    nop                                           ; $4d3f: $00
    inc de                                        ; $4d40: $13
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    inc d                                         ; $4d43: $14
    nop                                           ; $4d44: $00
    inc d                                         ; $4d45: $14
    dec d                                         ; $4d46: $15
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    ld d, $39                                     ; $4d49: $16 $39
    ld bc, $0052                                  ; $4d4b: $01 $52 $00
    nop                                           ; $4d4e: $00
    dec de                                        ; $4d4f: $1b
    inc b                                         ; $4d50: $04
    nop                                           ; $4d51: $00
    ld e, a                                       ; $4d52: $5f
    ld bc, $1700                                  ; $4d53: $01 $00 $17
    add hl, sp                                    ; $4d56: $39
    nop                                           ; $4d57: $00
    ld [hl+], a                                   ; $4d58: $22
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    rla                                           ; $4d5b: $17
    scf                                           ; $4d5c: $37
    nop                                           ; $4d5d: $00
    ld [hl+], a                                   ; $4d5e: $22
    add hl, sp                                    ; $4d5f: $39
    nop                                           ; $4d60: $00
    rla                                           ; $4d61: $17
    jr c, jr_00d_4d64                             ; $4d62: $38 $00

jr_00d_4d64:
    ld [hl+], a                                   ; $4d64: $22
    scf                                           ; $4d65: $37
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    add hl, bc                                    ; $4d6a: $09
    nop                                           ; $4d6b: $00
    daa                                           ; $4d6c: $27
    dec b                                         ; $4d6d: $05
    dec de                                        ; $4d6e: $1b
    nop                                           ; $4d6f: $00
    inc de                                        ; $4d70: $13
    rst $38                                       ; $4d71: $ff
    db $ec                                        ; $4d72: $ec
    inc d                                         ; $4d73: $14
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    dec d                                         ; $4d76: $15
    nop                                           ; $4d77: $00
    nop                                           ; $4d78: $00
    ld d, $37                                     ; $4d79: $16 $37
    ld bc, $0052                                  ; $4d7b: $01 $52 $00
    nop                                           ; $4d7e: $00
    dec de                                        ; $4d7f: $1b
    inc b                                         ; $4d80: $04
    nop                                           ; $4d81: $00
    inc de                                        ; $4d82: $13
    nop                                           ; $4d83: $00
    inc d                                         ; $4d84: $14
    inc d                                         ; $4d85: $14
    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    dec d                                         ; $4d88: $15
    nop                                           ; $4d89: $00
    nop                                           ; $4d8a: $00
    ld d, $38                                     ; $4d8b: $16 $38
    ld bc, $0052                                  ; $4d8d: $01 $52 $00
    nop                                           ; $4d90: $00
    dec de                                        ; $4d91: $1b
    inc b                                         ; $4d92: $04
    nop                                           ; $4d93: $00
    inc de                                        ; $4d94: $13
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    inc d                                         ; $4d97: $14
    nop                                           ; $4d98: $00
    inc d                                         ; $4d99: $14
    dec d                                         ; $4d9a: $15
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    ld d, $39                                     ; $4d9d: $16 $39
    ld bc, $0052                                  ; $4d9f: $01 $52 $00
    nop                                           ; $4da2: $00
    dec de                                        ; $4da3: $1b
    inc b                                         ; $4da4: $04
    nop                                           ; $4da5: $00
    ld e, a                                       ; $4da6: $5f
    ld bc, $1700                                  ; $4da7: $01 $00 $17
    add hl, sp                                    ; $4daa: $39
    nop                                           ; $4dab: $00
    ld [hl+], a                                   ; $4dac: $22
    nop                                           ; $4dad: $00
    nop                                           ; $4dae: $00
    rla                                           ; $4daf: $17
    scf                                           ; $4db0: $37
    nop                                           ; $4db1: $00
    ld [hl+], a                                   ; $4db2: $22
    add hl, sp                                    ; $4db3: $39
    nop                                           ; $4db4: $00
    rla                                           ; $4db5: $17
    jr c, jr_00d_4db8                             ; $4db6: $38 $00

jr_00d_4db8:
    ld [hl+], a                                   ; $4db8: $22
    scf                                           ; $4db9: $37
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    nop                                           ; $4dbc: $00
    nop                                           ; $4dbd: $00
    add hl, bc                                    ; $4dbe: $09
    nop                                           ; $4dbf: $00
    ld c, b                                       ; $4dc0: $48
    dec b                                         ; $4dc1: $05
    inc de                                        ; $4dc2: $13
    nop                                           ; $4dc3: $00
    inc de                                        ; $4dc4: $13
    rst $38                                       ; $4dc5: $ff
    db $ec                                        ; $4dc6: $ec
    inc d                                         ; $4dc7: $14
    nop                                           ; $4dc8: $00
    nop                                           ; $4dc9: $00
    dec d                                         ; $4dca: $15
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    ld d, $37                                     ; $4dcd: $16 $37
    ld bc, $0052                                  ; $4dcf: $01 $52 $00
    nop                                           ; $4dd2: $00
    dec de                                        ; $4dd3: $1b
    inc b                                         ; $4dd4: $04
    nop                                           ; $4dd5: $00
    inc de                                        ; $4dd6: $13
    nop                                           ; $4dd7: $00
    nop                                           ; $4dd8: $00
    inc d                                         ; $4dd9: $14
    nop                                           ; $4dda: $00
    inc d                                         ; $4ddb: $14
    dec d                                         ; $4ddc: $15
    nop                                           ; $4ddd: $00
    nop                                           ; $4dde: $00
    ld d, $39                                     ; $4ddf: $16 $39
    ld bc, $0052                                  ; $4de1: $01 $52 $00
    nop                                           ; $4de4: $00
    dec de                                        ; $4de5: $1b
    inc b                                         ; $4de6: $04
    nop                                           ; $4de7: $00
    ld e, a                                       ; $4de8: $5f
    ld bc, $1700                                  ; $4de9: $01 $00 $17
    add hl, sp                                    ; $4dec: $39
    nop                                           ; $4ded: $00
    ld [hl+], a                                   ; $4dee: $22
    nop                                           ; $4def: $00
    nop                                           ; $4df0: $00
    rla                                           ; $4df1: $17
    scf                                           ; $4df2: $37
    nop                                           ; $4df3: $00
    ld [hl+], a                                   ; $4df4: $22
    add hl, sp                                    ; $4df5: $39
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    add hl, bc                                    ; $4dfa: $09
    nop                                           ; $4dfb: $00
    ld b, e                                       ; $4dfc: $43
    dec b                                         ; $4dfd: $05
    dec de                                        ; $4dfe: $1b
    nop                                           ; $4dff: $00
    dec bc                                        ; $4e00: $0b
    dec b                                         ; $4e01: $05
    dec b                                         ; $4e02: $05
    dec b                                         ; $4e03: $05
    inc bc                                        ; $4e04: $03
    nop                                           ; $4e05: $00
    dec d                                         ; $4e06: $15
    ld b, [hl]                                    ; $4e07: $46
    nop                                           ; $4e08: $00
    rlca                                          ; $4e09: $07
    ld b, $6f                                     ; $4e0a: $06 $6f
    add hl, bc                                    ; $4e0c: $09
    dec b                                         ; $4e0d: $05
    ld a, [bc]                                    ; $4e0e: $0a
    dec b                                         ; $4e0f: $05
    inc de                                        ; $4e10: $13
    nop                                           ; $4e11: $00
    add hl, bc                                    ; $4e12: $09
    ld [$0500], sp                                ; $4e13: $08 $00 $05
    ld de, $5600                                  ; $4e16: $11 $00 $56
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    inc de                                        ; $4e1b: $13
    nop                                           ; $4e1c: $00
    adc [hl]                                      ; $4e1d: $8e
    inc d                                         ; $4e1e: $14
    ld bc, $15b8                                  ; $4e1f: $01 $b8 $15
    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00
    ld d, $16                                     ; $4e24: $16 $16
    nop                                           ; $4e26: $00
    ld d, d                                       ; $4e27: $52
    nop                                           ; $4e28: $00
    nop                                           ; $4e29: $00
    ld e, a                                       ; $4e2a: $5f
    ld bc, $2700                                  ; $4e2b: $01 $00 $27
    nop                                           ; $4e2e: $00
    inc d                                         ; $4e2f: $14
    dec d                                         ; $4e30: $15
    ld l, $00                                     ; $4e31: $2e $00
    inc sp                                        ; $4e33: $33
    rlca                                          ; $4e34: $07
    db $db                                        ; $4e35: $db
    ld e, [hl]                                    ; $4e36: $5e
    ld bc, $1500                                  ; $4e37: $01 $00 $15
    nop                                           ; $4e3a: $00
    nop                                           ; $4e3b: $00
    add hl, de                                    ; $4e3c: $19
    nop                                           ; $4e3d: $00
    ld c, b                                       ; $4e3e: $48
    ld e, $16                                     ; $4e3f: $1e $16
    nop                                           ; $4e41: $00
    rrca                                          ; $4e42: $0f
    ld [$5701], sp                                ; $4e43: $08 $01 $57
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    ld e, a                                       ; $4e48: $5f
    ld bc, $0000                                  ; $4e49: $01 $00 $00
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    add hl, bc                                    ; $4e4e: $09
    nop                                           ; $4e4f: $00
    ld [hl-], a                                   ; $4e50: $32
    dec b                                         ; $4e51: $05
    ld [$1300], sp                                ; $4e52: $08 $00 $13
    nop                                           ; $4e55: $00
    dec [hl]                                      ; $4e56: $35
    inc d                                         ; $4e57: $14
    ld bc, $151c                                  ; $4e58: $01 $1c $15
    rlca                                          ; $4e5b: $07
    nop                                           ; $4e5c: $00
    ld d, $46                                     ; $4e5d: $16 $46
    nop                                           ; $4e5f: $00
    ld d, d                                       ; $4e60: $52
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    dec d                                         ; $4e63: $15
    ld b, [hl]                                    ; $4e64: $46
    nop                                           ; $4e65: $00
    rlca                                          ; $4e66: $07
    ld a, [bc]                                    ; $4e67: $0a
    ld d, b                                       ; $4e68: $50
    add hl, bc                                    ; $4e69: $09
    nop                                           ; $4e6a: $00
    inc sp                                        ; $4e6b: $33
    dec b                                         ; $4e6c: $05
    ld de, $0900                                  ; $4e6d: $11 $00 $09
    ld [$0501], sp                                ; $4e70: $08 $01 $05
    add hl, bc                                    ; $4e73: $09
    nop                                           ; $4e74: $00
    inc de                                        ; $4e75: $13
    nop                                           ; $4e76: $00
    jr jr_00d_4e8d                                ; $4e77: $18 $14

    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    dec d                                         ; $4e7b: $15
    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    ld d, $39                                     ; $4e7e: $16 $39
    ld bc, $0052                                  ; $4e80: $01 $52 $00
    nop                                           ; $4e83: $00
    ld [hl+], a                                   ; $4e84: $22
    nop                                           ; $4e85: $00
    nop                                           ; $4e86: $00
    ld e, a                                       ; $4e87: $5f
    ld bc, $0000                                  ; $4e88: $01 $00 $00
    nop                                           ; $4e8b: $00
    nop                                           ; $4e8c: $00

jr_00d_4e8d:
    inc de                                        ; $4e8d: $13
    nop                                           ; $4e8e: $00
    db $eb                                        ; $4e8f: $eb
    inc d                                         ; $4e90: $14
    nop                                           ; $4e91: $00
    and [hl]                                      ; $4e92: $a6
    dec d                                         ; $4e93: $15
    nop                                           ; $4e94: $00
    nop                                           ; $4e95: $00
    ld d, $39                                     ; $4e96: $16 $39
    nop                                           ; $4e98: $00
    ld d, d                                       ; $4e99: $52
    nop                                           ; $4e9a: $00
    nop                                           ; $4e9b: $00
    dec de                                        ; $4e9c: $1b
    inc b                                         ; $4e9d: $04
    nop                                           ; $4e9e: $00
    add hl, bc                                    ; $4e9f: $09
    nop                                           ; $4ea0: $00
    ld e, b                                       ; $4ea1: $58
    dec b                                         ; $4ea2: $05
    inc bc                                        ; $4ea3: $03
    nop                                           ; $4ea4: $00
    ld e, a                                       ; $4ea5: $5f
    ld bc, $0000                                  ; $4ea6: $01 $00 $00
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    add hl, bc                                    ; $4eab: $09
    nop                                           ; $4eac: $00
    scf                                           ; $4ead: $37
    dec b                                         ; $4eae: $05
    inc bc                                        ; $4eaf: $03
    nop                                           ; $4eb0: $00
    ld e, a                                       ; $4eb1: $5f
    ld bc, $0000                                  ; $4eb2: $01 $00 $00
    nop                                           ; $4eb5: $00
    nop                                           ; $4eb6: $00
    add hl, bc                                    ; $4eb7: $09
    nop                                           ; $4eb8: $00
    ld e, d                                       ; $4eb9: $5a
    dec b                                         ; $4eba: $05
    inc bc                                        ; $4ebb: $03
    nop                                           ; $4ebc: $00
    ld e, a                                       ; $4ebd: $5f
    ld bc, $0000                                  ; $4ebe: $01 $00 $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    add hl, bc                                    ; $4ec3: $09
    nop                                           ; $4ec4: $00
    inc [hl]                                      ; $4ec5: $34
    dec b                                         ; $4ec6: $05
    inc bc                                        ; $4ec7: $03
    nop                                           ; $4ec8: $00
    ld e, a                                       ; $4ec9: $5f
    ld bc, $0000                                  ; $4eca: $01 $00 $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    add hl, bc                                    ; $4ecf: $09
    nop                                           ; $4ed0: $00
    ld b, c                                       ; $4ed1: $41
    dec b                                         ; $4ed2: $05
    inc bc                                        ; $4ed3: $03
    nop                                           ; $4ed4: $00
    ld e, a                                       ; $4ed5: $5f
    ld bc, $0000                                  ; $4ed6: $01 $00 $00
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    inc de                                        ; $4edb: $13
    nop                                           ; $4edc: $00
    dec [hl]                                      ; $4edd: $35
    inc d                                         ; $4ede: $14
    ld bc, $151c                                  ; $4edf: $01 $1c $15
    rlca                                          ; $4ee2: $07
    nop                                           ; $4ee3: $00
    ld d, $46                                     ; $4ee4: $16 $46
    nop                                           ; $4ee6: $00
    ld d, d                                       ; $4ee7: $52
    nop                                           ; $4ee8: $00
    nop                                           ; $4ee9: $00
    add hl, bc                                    ; $4eea: $09
    nop                                           ; $4eeb: $00
    inc sp                                        ; $4eec: $33
    dec b                                         ; $4eed: $05
    dec b                                         ; $4eee: $05
    nop                                           ; $4eef: $00
    ld e, a                                       ; $4ef0: $5f
    ld bc, $1500                                  ; $4ef1: $01 $00 $15
    ld b, [hl]                                    ; $4ef4: $46
    nop                                           ; $4ef5: $00
    ld b, $0b                                     ; $4ef6: $06 $0b
    ld l, $00                                     ; $4ef8: $2e $00
    nop                                           ; $4efa: $00
    nop                                           ; $4efb: $00
    add hl, bc                                    ; $4efc: $09
    nop                                           ; $4efd: $00
    add hl, bc                                    ; $4efe: $09
    dec b                                         ; $4eff: $05
    ld [$1300], sp                                ; $4f00: $08 $00 $13
    nop                                           ; $4f03: $00
    push bc                                       ; $4f04: $c5
    inc d                                         ; $4f05: $14
    nop                                           ; $4f06: $00
    and h                                         ; $4f07: $a4
    dec d                                         ; $4f08: $15
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    ld d, $2c                                     ; $4f0b: $16 $2c
    nop                                           ; $4f0d: $00
    ld d, d                                       ; $4f0e: $52
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    ld e, a                                       ; $4f11: $5f
    ld bc, $0000                                  ; $4f12: $01 $00 $00
    nop                                           ; $4f15: $00
    nop                                           ; $4f16: $00
    add hl, bc                                    ; $4f17: $09
    nop                                           ; $4f18: $00
    ld de, $0805                                  ; $4f19: $11 $05 $08
    nop                                           ; $4f1c: $00
    inc de                                        ; $4f1d: $13
    nop                                           ; $4f1e: $00
    push bc                                       ; $4f1f: $c5
    inc d                                         ; $4f20: $14
    nop                                           ; $4f21: $00
    and h                                         ; $4f22: $a4
    dec d                                         ; $4f23: $15
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    ld d, $2c                                     ; $4f26: $16 $2c
    nop                                           ; $4f28: $00
    ld d, d                                       ; $4f29: $52
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    ld e, a                                       ; $4f2c: $5f
    ld bc, $0000                                  ; $4f2d: $01 $00 $00
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    add hl, bc                                    ; $4f32: $09
    nop                                           ; $4f33: $00
    dec bc                                        ; $4f34: $0b
    dec b                                         ; $4f35: $05
    inc d                                         ; $4f36: $14
    nop                                           ; $4f37: $00
    inc de                                        ; $4f38: $13
    nop                                           ; $4f39: $00
    push bc                                       ; $4f3a: $c5
    inc d                                         ; $4f3b: $14
    nop                                           ; $4f3c: $00
    and h                                         ; $4f3d: $a4
    dec d                                         ; $4f3e: $15
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    ld d, $2c                                     ; $4f41: $16 $2c
    nop                                           ; $4f43: $00
    ld d, d                                       ; $4f44: $52
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    inc de                                        ; $4f47: $13
    nop                                           ; $4f48: $00
    ld [hl-], a                                   ; $4f49: $32
    inc d                                         ; $4f4a: $14
    nop                                           ; $4f4b: $00
    jp nz, Jump_000_0015                          ; $4f4c: $c2 $15 $00

    nop                                           ; $4f4f: $00
    ld d, $22                                     ; $4f50: $16 $22
    nop                                           ; $4f52: $00
    ld d, d                                       ; $4f53: $52
    nop                                           ; $4f54: $00
    nop                                           ; $4f55: $00
    dec de                                        ; $4f56: $1b
    ld [bc], a                                    ; $4f57: $02
    nop                                           ; $4f58: $00
    inc de                                        ; $4f59: $13
    nop                                           ; $4f5a: $00
    ld a, $14                                     ; $4f5b: $3e $14
    nop                                           ; $4f5d: $00
    or a                                          ; $4f5e: $b7
    dec d                                         ; $4f5f: $15
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    ld d, $2e                                     ; $4f62: $16 $2e
    nop                                           ; $4f64: $00
    ld d, d                                       ; $4f65: $52
    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    dec de                                        ; $4f68: $1b
    inc b                                         ; $4f69: $04
    nop                                           ; $4f6a: $00
    ld e, a                                       ; $4f6b: $5f
    ld bc, $0000                                  ; $4f6c: $01 $00 $00
    nop                                           ; $4f6f: $00
    nop                                           ; $4f70: $00
    add hl, bc                                    ; $4f71: $09
    nop                                           ; $4f72: $00
    ld [$0905], sp                                ; $4f73: $08 $05 $09
    nop                                           ; $4f76: $00
    inc de                                        ; $4f77: $13
    nop                                           ; $4f78: $00
    ld [hl-], a                                   ; $4f79: $32
    inc d                                         ; $4f7a: $14
    nop                                           ; $4f7b: $00
    jp nz, Jump_000_0015                          ; $4f7c: $c2 $15 $00

    nop                                           ; $4f7f: $00
    ld d, $22                                     ; $4f80: $16 $22
    nop                                           ; $4f82: $00
    ld d, d                                       ; $4f83: $52
    nop                                           ; $4f84: $00
    nop                                           ; $4f85: $00
    dec de                                        ; $4f86: $1b
    ld [bc], a                                    ; $4f87: $02
    nop                                           ; $4f88: $00
    ld e, a                                       ; $4f89: $5f
    ld bc, $0000                                  ; $4f8a: $01 $00 $00
    nop                                           ; $4f8d: $00
    nop                                           ; $4f8e: $00
    add hl, bc                                    ; $4f8f: $09
    nop                                           ; $4f90: $00
    ld e, h                                       ; $4f91: $5c
    dec b                                         ; $4f92: $05
    add hl, bc                                    ; $4f93: $09
    nop                                           ; $4f94: $00
    inc de                                        ; $4f95: $13
    nop                                           ; $4f96: $00
    ld [hl-], a                                   ; $4f97: $32
    inc d                                         ; $4f98: $14
    nop                                           ; $4f99: $00
    jp nz, Jump_000_0015                          ; $4f9a: $c2 $15 $00

    nop                                           ; $4f9d: $00
    ld d, $22                                     ; $4f9e: $16 $22
    nop                                           ; $4fa0: $00
    ld d, d                                       ; $4fa1: $52
    nop                                           ; $4fa2: $00
    nop                                           ; $4fa3: $00
    dec de                                        ; $4fa4: $1b
    ld [bc], a                                    ; $4fa5: $02
    nop                                           ; $4fa6: $00
    ld e, a                                       ; $4fa7: $5f
    ld bc, $0000                                  ; $4fa8: $01 $00 $00
    nop                                           ; $4fab: $00
    nop                                           ; $4fac: $00
    ld e, a                                       ; $4fad: $5f
    ld bc, $0000                                  ; $4fae: $01 $00 $00
    nop                                           ; $4fb1: $00
    nop                                           ; $4fb2: $00
    ld d, [hl]                                    ; $4fb3: $56
    nop                                           ; $4fb4: $00
    nop                                           ; $4fb5: $00
    inc de                                        ; $4fb6: $13
    nop                                           ; $4fb7: $00
    adc a                                         ; $4fb8: $8f
    inc d                                         ; $4fb9: $14
    ld bc, $152c                                  ; $4fba: $01 $2c $15
    nop                                           ; $4fbd: $00
    nop                                           ; $4fbe: $00
    ld d, $22                                     ; $4fbf: $16 $22
    nop                                           ; $4fc1: $00
    ld d, d                                       ; $4fc2: $52
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    ld e, d                                       ; $4fc5: $5a
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    dec de                                        ; $4fc8: $1b
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    inc de                                        ; $4fcb: $13
    nop                                           ; $4fcc: $00
    add c                                         ; $4fcd: $81
    inc d                                         ; $4fce: $14
    ld bc, $1511                                  ; $4fcf: $01 $11 $15
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00
    ld d, $36                                     ; $4fd4: $16 $36
    nop                                           ; $4fd6: $00
    ld d, d                                       ; $4fd7: $52
    nop                                           ; $4fd8: $00
    nop                                           ; $4fd9: $00
    ld e, d                                       ; $4fda: $5a
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    dec de                                        ; $4fdd: $1b
    inc b                                         ; $4fde: $04
    nop                                           ; $4fdf: $00
    inc de                                        ; $4fe0: $13
    nop                                           ; $4fe1: $00
    adc a                                         ; $4fe2: $8f
    inc d                                         ; $4fe3: $14
    ld bc, $1511                                  ; $4fe4: $01 $11 $15
    nop                                           ; $4fe7: $00
    nop                                           ; $4fe8: $00
    ld d, $38                                     ; $4fe9: $16 $38
    nop                                           ; $4feb: $00
    ld d, d                                       ; $4fec: $52
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    ld e, d                                       ; $4fef: $5a
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    dec de                                        ; $4ff2: $1b
    inc b                                         ; $4ff3: $04
    nop                                           ; $4ff4: $00
    inc de                                        ; $4ff5: $13
    nop                                           ; $4ff6: $00
    sbc l                                         ; $4ff7: $9d
    inc d                                         ; $4ff8: $14
    ld bc, $1511                                  ; $4ff9: $01 $11 $15
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    ld d, $37                                     ; $4ffe: $16 $37
    nop                                           ; $5000: $00
    ld d, d                                       ; $5001: $52
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    ld e, d                                       ; $5004: $5a
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    dec de                                        ; $5007: $1b
    inc b                                         ; $5008: $04
    nop                                           ; $5009: $00
    ld e, a                                       ; $500a: $5f
    ld bc, $1700                                  ; $500b: $01 $00 $17
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    ld e, [hl]                                    ; $5010: $5e
    ld bc, $2700                                  ; $5011: $01 $00 $27
    nop                                           ; $5014: $00

Call_00d_5015:
    dec b                                         ; $5015: $05
    add hl, bc                                    ; $5016: $09
    add hl, bc                                    ; $5017: $09
    nop                                           ; $5018: $00
    dec b                                         ; $5019: $05
    ld [bc], a                                    ; $501a: $02
    nop                                           ; $501b: $00
    inc bc                                        ; $501c: $03
    inc bc                                        ; $501d: $03
    nop                                           ; $501e: $00
    inc de                                        ; $501f: $13
    nop                                           ; $5020: $00
    adc d                                         ; $5021: $8a
    ld [hl], c                                    ; $5022: $71
    nop                                           ; $5023: $00
    dec [hl]                                      ; $5024: $35
    inc de                                        ; $5025: $13
    nop                                           ; $5026: $00
    ld a, [$0071]                                 ; $5027: $fa $71 $00
    sbc l                                         ; $502a: $9d
    dec de                                        ; $502b: $1b
    inc b                                         ; $502c: $04
    nop                                           ; $502d: $00
    rla                                           ; $502e: $17
    scf                                           ; $502f: $37
    nop                                           ; $5030: $00
    dec de                                        ; $5031: $1b
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    dec d                                         ; $5034: $15
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    inc sp                                        ; $5037: $33
    rlca                                          ; $5038: $07
    and c                                         ; $5039: $a1
    dec d                                         ; $503a: $15
    add hl, de                                    ; $503b: $19
    nop                                           ; $503c: $00
    inc sp                                        ; $503d: $33
    rlca                                          ; $503e: $07
    and d                                         ; $503f: $a2
    dec d                                         ; $5040: $15
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    inc sp                                        ; $5043: $33
    rlca                                          ; $5044: $07
    and e                                         ; $5045: $a3
    dec d                                         ; $5046: $15
    add hl, de                                    ; $5047: $19
    nop                                           ; $5048: $00
    inc sp                                        ; $5049: $33
    rlca                                          ; $504a: $07
    and h                                         ; $504b: $a4
    dec d                                         ; $504c: $15
    nop                                           ; $504d: $00
    nop                                           ; $504e: $00
    inc sp                                        ; $504f: $33
    rlca                                          ; $5050: $07
    and l                                         ; $5051: $a5
    daa                                           ; $5052: $27
    nop                                           ; $5053: $00
    dec b                                         ; $5054: $05
    dec d                                         ; $5055: $15
    ld b, c                                       ; $5056: $41
    nop                                           ; $5057: $00
    inc sp                                        ; $5058: $33
    rlca                                          ; $5059: $07
    and [hl]                                      ; $505a: $a6
    rla                                           ; $505b: $17
    scf                                           ; $505c: $37
    nop                                           ; $505d: $00
    dec de                                        ; $505e: $1b
    inc b                                         ; $505f: $04
    nop                                           ; $5060: $00
    ld e, a                                       ; $5061: $5f
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    ld e, [hl]                                    ; $5064: $5e
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    rla                                           ; $5067: $17
    ld [hl+], a                                   ; $5068: $22
    nop                                           ; $5069: $00
    dec d                                         ; $506a: $15
    inc b                                         ; $506b: $04
    nop                                           ; $506c: $00
    add hl, de                                    ; $506d: $19
    nop                                           ; $506e: $00
    or h                                          ; $506f: $b4
    rla                                           ; $5070: $17
    ld [hl], $00                                  ; $5071: $36 $00
    dec d                                         ; $5073: $15
    inc b                                         ; $5074: $04
    nop                                           ; $5075: $00
    add hl, de                                    ; $5076: $19
    nop                                           ; $5077: $00
    or h                                          ; $5078: $b4
    rla                                           ; $5079: $17
    jr c, jr_00d_507c                             ; $507a: $38 $00

jr_00d_507c:
    dec d                                         ; $507c: $15
    inc b                                         ; $507d: $04
    nop                                           ; $507e: $00
    add hl, de                                    ; $507f: $19
    nop                                           ; $5080: $00
    or h                                          ; $5081: $b4
    rla                                           ; $5082: $17
    scf                                           ; $5083: $37
    nop                                           ; $5084: $00
    dec d                                         ; $5085: $15
    inc b                                         ; $5086: $04
    nop                                           ; $5087: $00
    add hl, de                                    ; $5088: $19
    nop                                           ; $5089: $00
    or h                                          ; $508a: $b4
    ld e, [hl]                                    ; $508b: $5e
    ld bc, $1700                                  ; $508c: $01 $00 $17
    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    ld e, a                                       ; $5091: $5f
    ld bc, $1500                                  ; $5092: $01 $00 $15
    inc b                                         ; $5095: $04
    nop                                           ; $5096: $00
    add hl, de                                    ; $5097: $19
    nop                                           ; $5098: $00
    or h                                          ; $5099: $b4
    dec de                                        ; $509a: $1b
    inc b                                         ; $509b: $04
    nop                                           ; $509c: $00
    dec d                                         ; $509d: $15
    ld b, c                                       ; $509e: $41
    nop                                           ; $509f: $00
    inc sp                                        ; $50a0: $33
    rlca                                          ; $50a1: $07
    and a                                         ; $50a2: $a7
    ld e, a                                       ; $50a3: $5f
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    ld e, [hl]                                    ; $50a6: $5e
    nop                                           ; $50a7: $00
    nop                                           ; $50a8: $00
    rla                                           ; $50a9: $17
    ld [hl+], a                                   ; $50aa: $22
    nop                                           ; $50ab: $00
    dec d                                         ; $50ac: $15
    inc b                                         ; $50ad: $04
    nop                                           ; $50ae: $00
    add hl, de                                    ; $50af: $19
    nop                                           ; $50b0: $00
    db $10                                        ; $50b1: $10
    rla                                           ; $50b2: $17
    ld [hl], $00                                  ; $50b3: $36 $00
    dec d                                         ; $50b5: $15
    inc b                                         ; $50b6: $04
    nop                                           ; $50b7: $00
    add hl, de                                    ; $50b8: $19
    nop                                           ; $50b9: $00
    jr nz, @+$19                                  ; $50ba: $20 $17

    jr c, jr_00d_50be                             ; $50bc: $38 $00

jr_00d_50be:
    dec d                                         ; $50be: $15
    inc b                                         ; $50bf: $04
    nop                                           ; $50c0: $00
    add hl, de                                    ; $50c1: $19
    nop                                           ; $50c2: $00
    jr nz, @+$60                                  ; $50c3: $20 $5e

    ld bc, $1700                                  ; $50c5: $01 $00 $17
    scf                                           ; $50c8: $37
    nop                                           ; $50c9: $00
    dec d                                         ; $50ca: $15
    inc b                                         ; $50cb: $04
    nop                                           ; $50cc: $00
    add hl, de                                    ; $50cd: $19
    nop                                           ; $50ce: $00
    jr nz, @+$61                                  ; $50cf: $20 $5f

    ld bc, $1700                                  ; $50d1: $01 $00 $17
    ld [hl+], a                                   ; $50d4: $22
    nop                                           ; $50d5: $00
    ld e, $22                                     ; $50d6: $1e $22
    nop                                           ; $50d8: $00
    rla                                           ; $50d9: $17
    ld [hl], $00                                  ; $50da: $36 $00
    ld e, $36                                     ; $50dc: $1e $36
    nop                                           ; $50de: $00
    rla                                           ; $50df: $17
    jr c, jr_00d_50e2                             ; $50e0: $38 $00

jr_00d_50e2:
    ld e, $38                                     ; $50e2: $1e $38
    nop                                           ; $50e4: $00
    rla                                           ; $50e5: $17
    scf                                           ; $50e6: $37
    nop                                           ; $50e7: $00
    ld e, $37                                     ; $50e8: $1e $37
    nop                                           ; $50ea: $00
    rrca                                          ; $50eb: $0f
    dec b                                         ; $50ec: $05
    dec b                                         ; $50ed: $05
    ld d, a                                       ; $50ee: $57
    nop                                           ; $50ef: $00
    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    add hl, bc                                    ; $50f4: $09
    nop                                           ; $50f5: $00
    add hl, bc                                    ; $50f6: $09
    dec b                                         ; $50f7: $05
    ld [de], a                                    ; $50f8: $12
    nop                                           ; $50f9: $00
    add hl, bc                                    ; $50fa: $09
    dec e                                         ; $50fb: $1d
    ld bc, $0605                                  ; $50fc: $01 $05 $06
    nop                                           ; $50ff: $00
    ld d, [hl]                                    ; $5100: $56
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    dec d                                         ; $5103: $15
    ccf                                           ; $5104: $3f
    nop                                           ; $5105: $00
    inc sp                                        ; $5106: $33
    ld bc, $57ea                                  ; $5107: $01 $ea $57
    nop                                           ; $510a: $00
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    nop                                           ; $510e: $00
    ld d, [hl]                                    ; $510f: $56
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    dec d                                         ; $5112: $15
    ccf                                           ; $5113: $3f
    nop                                           ; $5114: $00
    inc sp                                        ; $5115: $33
    ld bc, $15e8                                  ; $5116: $01 $e8 $15
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    inc sp                                        ; $511b: $33
    ld bc, $15e9                                  ; $511c: $01 $e9 $15
    ccf                                           ; $511f: $3f
    nop                                           ; $5120: $00
    inc sp                                        ; $5121: $33
    ld bc, $0fea                                  ; $5122: $01 $ea $0f
    dec e                                         ; $5125: $1d
    ld bc, $0057                                  ; $5126: $01 $57 $00
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    add hl, bc                                    ; $512d: $09
    nop                                           ; $512e: $00
    ld de, $1205                                  ; $512f: $11 $05 $12
    nop                                           ; $5132: $00
    add hl, bc                                    ; $5133: $09
    dec e                                         ; $5134: $1d
    ld bc, $0205                                  ; $5135: $01 $05 $02
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    nop                                           ; $513b: $00
    ld d, [hl]                                    ; $513c: $56
    nop                                           ; $513d: $00
    nop                                           ; $513e: $00
    dec d                                         ; $513f: $15
    ccf                                           ; $5140: $3f
    nop                                           ; $5141: $00
    inc sp                                        ; $5142: $33
    ld [bc], a                                    ; $5143: $02
    ld b, a                                       ; $5144: $47
    dec d                                         ; $5145: $15
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    inc sp                                        ; $5148: $33
    ld [bc], a                                    ; $5149: $02
    ld c, b                                       ; $514a: $48
    dec d                                         ; $514b: $15
    ccf                                           ; $514c: $3f
    nop                                           ; $514d: $00
    inc sp                                        ; $514e: $33
    ld [bc], a                                    ; $514f: $02
    ld c, c                                       ; $5150: $49
    dec d                                         ; $5151: $15
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    inc sp                                        ; $5154: $33
    ld [bc], a                                    ; $5155: $02
    ld c, d                                       ; $5156: $4a
    dec d                                         ; $5157: $15
    ccf                                           ; $5158: $3f
    nop                                           ; $5159: $00
    inc sp                                        ; $515a: $33
    ld [bc], a                                    ; $515b: $02
    ld c, e                                       ; $515c: $4b
    rrca                                          ; $515d: $0f
    dec e                                         ; $515e: $1d
    ld bc, $0057                                  ; $515f: $01 $57 $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    add hl, bc                                    ; $5166: $09
    nop                                           ; $5167: $00
    dec bc                                        ; $5168: $0b
    dec b                                         ; $5169: $05
    add hl, de                                    ; $516a: $19
    nop                                           ; $516b: $00
    add hl, bc                                    ; $516c: $09
    rlca                                          ; $516d: $07
    ld bc, $0405                                  ; $516e: $01 $05 $04
    nop                                           ; $5171: $00
    dec d                                         ; $5172: $15
    ccf                                           ; $5173: $3f
    nop                                           ; $5174: $00
    inc sp                                        ; $5175: $33
    ld a, [bc]                                    ; $5176: $0a
    ld [bc], a                                    ; $5177: $02
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    nop                                           ; $517a: $00
    add hl, bc                                    ; $517b: $09
    dec e                                         ; $517c: $1d
    ld bc, $0205                                  ; $517d: $01 $05 $02
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    ld d, [hl]                                    ; $5184: $56
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    dec d                                         ; $5187: $15
    ccf                                           ; $5188: $3f
    nop                                           ; $5189: $00
    inc sp                                        ; $518a: $33
    inc bc                                        ; $518b: $03
    ld [hl], h                                    ; $518c: $74
    dec d                                         ; $518d: $15
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    inc sp                                        ; $5190: $33
    inc bc                                        ; $5191: $03
    ld [hl], l                                    ; $5192: $75
    dec d                                         ; $5193: $15
    ccf                                           ; $5194: $3f
    nop                                           ; $5195: $00
    inc sp                                        ; $5196: $33
    inc bc                                        ; $5197: $03
    halt                                          ; $5198: $76
    dec d                                         ; $5199: $15
    nop                                           ; $519a: $00
    nop                                           ; $519b: $00
    inc sp                                        ; $519c: $33
    inc bc                                        ; $519d: $03
    ld [hl], a                                    ; $519e: $77
    dec d                                         ; $519f: $15
    ccf                                           ; $51a0: $3f
    nop                                           ; $51a1: $00
    inc sp                                        ; $51a2: $33
    inc bc                                        ; $51a3: $03
    ld a, b                                       ; $51a4: $78
    dec d                                         ; $51a5: $15
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    inc sp                                        ; $51a8: $33
    inc bc                                        ; $51a9: $03
    ld a, c                                       ; $51aa: $79
    rrca                                          ; $51ab: $0f
    dec e                                         ; $51ac: $1d
    ld bc, $0057                                  ; $51ad: $01 $57 $00
    nop                                           ; $51b0: $00
    nop                                           ; $51b1: $00
    nop                                           ; $51b2: $00
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00
    nop                                           ; $51b6: $00
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    add hl, bc                                    ; $51ba: $09
    nop                                           ; $51bb: $00
    ld d, d                                       ; $51bc: $52
    dec b                                         ; $51bd: $05
    rlca                                          ; $51be: $07
    nop                                           ; $51bf: $00
    add hl, bc                                    ; $51c0: $09
    ld de, $0501                                  ; $51c1: $11 $01 $05
    ld [bc], a                                    ; $51c4: $02
    nop                                           ; $51c5: $00
    nop                                           ; $51c6: $00
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    jr c, jr_00d_522c                             ; $51c9: $38 $61

    nop                                           ; $51cb: $00
    rrca                                          ; $51cc: $0f
    ld de, $0001                                  ; $51cd: $11 $01 $00
    nop                                           ; $51d0: $00
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    nop                                           ; $51d3: $00
    nop                                           ; $51d4: $00
    ld e, a                                       ; $51d5: $5f
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    add hl, bc                                    ; $51d8: $09
    nop                                           ; $51d9: $00
    inc sp                                        ; $51da: $33
    dec b                                         ; $51db: $05
    inc de                                        ; $51dc: $13
    nop                                           ; $51dd: $00
    add hl, bc                                    ; $51de: $09
    ld a, [de]                                    ; $51df: $1a
    ld bc, $0205                                  ; $51e0: $01 $05 $02
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    ld d, [hl]                                    ; $51e7: $56
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    rla                                           ; $51ea: $17
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    inc e                                         ; $51ed: $1c
    ld b, [hl]                                    ; $51ee: $46
    rlca                                          ; $51ef: $07
    ld e, a                                       ; $51f0: $5f
    ld bc, $0f00                                  ; $51f1: $01 $00 $0f
    ld a, [de]                                    ; $51f4: $1a
    ld bc, $0015                                  ; $51f5: $01 $15 $00
    nop                                           ; $51f8: $00
    inc sp                                        ; $51f9: $33
    rlca                                          ; $51fa: $07
    ld e, a                                       ; $51fb: $5f
    dec d                                         ; $51fc: $15
    ld d, h                                       ; $51fd: $54
    nop                                           ; $51fe: $00
    inc sp                                        ; $51ff: $33
    rlca                                          ; $5200: $07
    ld h, e                                       ; $5201: $63
    dec d                                         ; $5202: $15
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    inc sp                                        ; $5205: $33
    rlca                                          ; $5206: $07
    ld h, h                                       ; $5207: $64
    rla                                           ; $5208: $17
    ld b, [hl]                                    ; $5209: $46
    nop                                           ; $520a: $00
    ld e, d                                       ; $520b: $5a
    nop                                           ; $520c: $00
    nop                                           ; $520d: $00
    dec d                                         ; $520e: $15
    ld b, [hl]                                    ; $520f: $46
    nop                                           ; $5210: $00
    rlca                                          ; $5211: $07
    dec bc                                        ; $5212: $0b
    or d                                          ; $5213: $b2
    add hl, bc                                    ; $5214: $09
    nop                                           ; $5215: $00
    add hl, bc                                    ; $5216: $09
    dec b                                         ; $5217: $05
    rlca                                          ; $5218: $07
    nop                                           ; $5219: $00
    ld e, a                                       ; $521a: $5f
    ld bc, $1500                                  ; $521b: $01 $00 $15
    nop                                           ; $521e: $00
    nop                                           ; $521f: $00
    inc sp                                        ; $5220: $33
    ld [bc], a                                    ; $5221: $02
    nop                                           ; $5222: $00
    dec d                                         ; $5223: $15
    ld d, h                                       ; $5224: $54
    nop                                           ; $5225: $00
    inc sp                                        ; $5226: $33
    ld bc, $00ff                                  ; $5227: $01 $ff $00
    nop                                           ; $522a: $00
    nop                                           ; $522b: $00

jr_00d_522c:
    add hl, bc                                    ; $522c: $09
    nop                                           ; $522d: $00
    ld b, $05                                     ; $522e: $06 $05
    dec b                                         ; $5230: $05
    nop                                           ; $5231: $00
    ld e, a                                       ; $5232: $5f
    ld bc, $1500                                  ; $5233: $01 $00 $15
    ld d, h                                       ; $5236: $54
    nop                                           ; $5237: $00
    inc sp                                        ; $5238: $33
    ld bc, $004c                                  ; $5239: $01 $4c $00
    nop                                           ; $523c: $00
    nop                                           ; $523d: $00
    add hl, bc                                    ; $523e: $09
    nop                                           ; $523f: $00
    rlca                                          ; $5240: $07
    dec b                                         ; $5241: $05
    dec b                                         ; $5242: $05
    nop                                           ; $5243: $00
    ld e, a                                       ; $5244: $5f
    ld bc, $1500                                  ; $5245: $01 $00 $15
    ld d, h                                       ; $5248: $54
    nop                                           ; $5249: $00
    inc sp                                        ; $524a: $33
    ld bc, $0055                                  ; $524b: $01 $55 $00
    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    add hl, bc                                    ; $5250: $09
    nop                                           ; $5251: $00
    ld d, d                                       ; $5252: $52
    dec b                                         ; $5253: $05
    dec b                                         ; $5254: $05
    nop                                           ; $5255: $00
    ld e, a                                       ; $5256: $5f
    ld bc, $1500                                  ; $5257: $01 $00 $15
    ld d, h                                       ; $525a: $54
    nop                                           ; $525b: $00
    inc sp                                        ; $525c: $33
    ld bc, $0055                                  ; $525d: $01 $55 $00
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    add hl, bc                                    ; $5262: $09
    nop                                           ; $5263: $00
    ld d, e                                       ; $5264: $53
    dec b                                         ; $5265: $05
    dec b                                         ; $5266: $05
    nop                                           ; $5267: $00
    ld e, a                                       ; $5268: $5f
    ld bc, $1500                                  ; $5269: $01 $00 $15
    ld d, h                                       ; $526c: $54
    nop                                           ; $526d: $00
    inc sp                                        ; $526e: $33
    ld [bc], a                                    ; $526f: $02
    rla                                           ; $5270: $17
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    add hl, bc                                    ; $5274: $09
    nop                                           ; $5275: $00
    ld d, [hl]                                    ; $5276: $56
    dec b                                         ; $5277: $05
    dec b                                         ; $5278: $05
    nop                                           ; $5279: $00
    ld e, a                                       ; $527a: $5f
    ld bc, $1500                                  ; $527b: $01 $00 $15
    ld d, h                                       ; $527e: $54
    nop                                           ; $527f: $00
    inc sp                                        ; $5280: $33
    ld [bc], a                                    ; $5281: $02
    rla                                           ; $5282: $17
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    add hl, bc                                    ; $5286: $09
    nop                                           ; $5287: $00
    dec bc                                        ; $5288: $0b
    dec b                                         ; $5289: $05
    dec bc                                        ; $528a: $0b
    nop                                           ; $528b: $00
    ld d, [hl]                                    ; $528c: $56
    nop                                           ; $528d: $00
    nop                                           ; $528e: $00
    rla                                           ; $528f: $17
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    inc e                                         ; $5292: $1c
    ld b, [hl]                                    ; $5293: $46
    rlca                                          ; $5294: $07
    ld e, a                                       ; $5295: $5f
    ld bc, $1500                                  ; $5296: $01 $00 $15
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    inc sp                                        ; $529b: $33
    inc bc                                        ; $529c: $03
    ld [hl], c                                    ; $529d: $71
    dec d                                         ; $529e: $15
    ld d, h                                       ; $529f: $54
    nop                                           ; $52a0: $00
    inc sp                                        ; $52a1: $33
    inc bc                                        ; $52a2: $03
    sbc h                                         ; $52a3: $9c
    ld d, a                                       ; $52a4: $57
    nop                                           ; $52a5: $00
    nop                                           ; $52a6: $00
    nop                                           ; $52a7: $00
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    add hl, bc                                    ; $52aa: $09
    nop                                           ; $52ab: $00
    ld e, h                                       ; $52ac: $5c
    dec b                                         ; $52ad: $05
    dec bc                                        ; $52ae: $0b
    nop                                           ; $52af: $00
    ld d, [hl]                                    ; $52b0: $56
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    rla                                           ; $52b3: $17
    nop                                           ; $52b4: $00
    nop                                           ; $52b5: $00
    inc e                                         ; $52b6: $1c
    ld b, [hl]                                    ; $52b7: $46
    rlca                                          ; $52b8: $07
    ld e, a                                       ; $52b9: $5f
    ld bc, $1500                                  ; $52ba: $01 $00 $15
    nop                                           ; $52bd: $00
    nop                                           ; $52be: $00
    inc sp                                        ; $52bf: $33
    inc b                                         ; $52c0: $04
    call nc, Call_00d_5415                        ; $52c1: $d4 $15 $54
    nop                                           ; $52c4: $00
    inc sp                                        ; $52c5: $33
    inc b                                         ; $52c6: $04
    or l                                          ; $52c7: $b5
    ld d, a                                       ; $52c8: $57
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    nop                                           ; $52cb: $00
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    add hl, bc                                    ; $52ce: $09
    nop                                           ; $52cf: $00
    db $10                                        ; $52d0: $10
    dec b                                         ; $52d1: $05
    dec bc                                        ; $52d2: $0b
    nop                                           ; $52d3: $00
    ld d, [hl]                                    ; $52d4: $56
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    rla                                           ; $52d7: $17
    nop                                           ; $52d8: $00
    nop                                           ; $52d9: $00
    inc e                                         ; $52da: $1c
    ld b, [hl]                                    ; $52db: $46
    rlca                                          ; $52dc: $07
    ld e, a                                       ; $52dd: $5f
    ld bc, $1500                                  ; $52de: $01 $00 $15
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    inc sp                                        ; $52e3: $33
    ld [bc], a                                    ; $52e4: $02
    ld b, l                                       ; $52e5: $45
    dec d                                         ; $52e6: $15
    ld d, h                                       ; $52e7: $54
    nop                                           ; $52e8: $00
    inc sp                                        ; $52e9: $33
    ld [bc], a                                    ; $52ea: $02
    adc [hl]                                      ; $52eb: $8e
    ld d, a                                       ; $52ec: $57
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    add hl, bc                                    ; $52f2: $09
    nop                                           ; $52f3: $00
    ld de, $0b05                                  ; $52f4: $11 $05 $0b
    nop                                           ; $52f7: $00
    ld d, [hl]                                    ; $52f8: $56
    nop                                           ; $52f9: $00
    nop                                           ; $52fa: $00
    rla                                           ; $52fb: $17
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    inc e                                         ; $52fe: $1c
    ld b, [hl]                                    ; $52ff: $46
    rlca                                          ; $5300: $07
    ld e, a                                       ; $5301: $5f
    ld bc, $1500                                  ; $5302: $01 $00 $15
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    inc sp                                        ; $5307: $33
    ld [bc], a                                    ; $5308: $02
    ld b, l                                       ; $5309: $45
    dec d                                         ; $530a: $15
    ld d, h                                       ; $530b: $54
    nop                                           ; $530c: $00
    inc sp                                        ; $530d: $33
    ld [bc], a                                    ; $530e: $02
    adc [hl]                                      ; $530f: $8e
    ld d, a                                       ; $5310: $57
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    add hl, bc                                    ; $5316: $09
    nop                                           ; $5317: $00
    ccf                                           ; $5318: $3f
    dec b                                         ; $5319: $05
    add hl, bc                                    ; $531a: $09
    nop                                           ; $531b: $00
    ld d, [hl]                                    ; $531c: $56
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    rla                                           ; $531f: $17
    nop                                           ; $5320: $00

Call_00d_5321:
    nop                                           ; $5321: $00
    inc e                                         ; $5322: $1c
    ld b, [hl]                                    ; $5323: $46
    rlca                                          ; $5324: $07
    ld e, a                                       ; $5325: $5f
    ld bc, $1500                                  ; $5326: $01 $00 $15
    ld d, h                                       ; $5329: $54
    nop                                           ; $532a: $00
    inc sp                                        ; $532b: $33
    add hl, bc                                    ; $532c: $09
    push hl                                       ; $532d: $e5
    ld d, a                                       ; $532e: $57
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    add hl, bc                                    ; $5334: $09
    nop                                           ; $5335: $00
    dec a                                         ; $5336: $3d
    dec b                                         ; $5337: $05
    add hl, bc                                    ; $5338: $09
    nop                                           ; $5339: $00
    ld d, [hl]                                    ; $533a: $56
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    rla                                           ; $533d: $17
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    inc e                                         ; $5340: $1c
    ld b, [hl]                                    ; $5341: $46
    rlca                                          ; $5342: $07
    ld e, a                                       ; $5343: $5f
    ld bc, $1500                                  ; $5344: $01 $00 $15
    ld d, h                                       ; $5347: $54
    nop                                           ; $5348: $00
    inc sp                                        ; $5349: $33
    dec bc                                        ; $534a: $0b
    ld l, d                                       ; $534b: $6a
    ld d, a                                       ; $534c: $57
    nop                                           ; $534d: $00
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    add hl, bc                                    ; $5352: $09
    nop                                           ; $5353: $00
    ld d, h                                       ; $5354: $54
    dec b                                         ; $5355: $05
    add hl, bc                                    ; $5356: $09
    nop                                           ; $5357: $00
    ld d, [hl]                                    ; $5358: $56
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    rla                                           ; $535b: $17
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    inc e                                         ; $535e: $1c
    ld b, [hl]                                    ; $535f: $46
    rlca                                          ; $5360: $07
    ld e, a                                       ; $5361: $5f
    ld bc, $1500                                  ; $5362: $01 $00 $15
    ld d, h                                       ; $5365: $54
    nop                                           ; $5366: $00
    inc sp                                        ; $5367: $33
    ld bc, $5755                                  ; $5368: $01 $55 $57
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    add hl, bc                                    ; $5370: $09
    nop                                           ; $5371: $00
    ld e, e                                       ; $5372: $5b
    dec b                                         ; $5373: $05
    add hl, bc                                    ; $5374: $09
    nop                                           ; $5375: $00
    ld d, [hl]                                    ; $5376: $56
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    rla                                           ; $5379: $17
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    inc e                                         ; $537c: $1c
    ld b, [hl]                                    ; $537d: $46
    rlca                                          ; $537e: $07
    ld e, a                                       ; $537f: $5f
    ld bc, $1500                                  ; $5380: $01 $00 $15
    ld d, h                                       ; $5383: $54
    nop                                           ; $5384: $00
    inc sp                                        ; $5385: $33
    dec bc                                        ; $5386: $0b
    ld l, d                                       ; $5387: $6a
    ld d, a                                       ; $5388: $57
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    ld e, a                                       ; $538e: $5f
    ld bc, $0000                                  ; $538f: $01 $00 $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    ld d, [hl]                                    ; $5394: $56
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    ld a, d                                       ; $5397: $7a
    ld bc, $1300                                  ; $5398: $01 $00 $13
    nop                                           ; $539b: $00
    ld [$0014], a                                 ; $539c: $ea $14 $00
    xor b                                         ; $539f: $a8
    dec d                                         ; $53a0: $15
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    ld d, $39                                     ; $53a3: $16 $39
    nop                                           ; $53a5: $00
    ld d, d                                       ; $53a6: $52
    nop                                           ; $53a7: $00
    nop                                           ; $53a8: $00
    dec de                                        ; $53a9: $1b
    ld b, $00                                     ; $53aa: $06 $00
    ld e, a                                       ; $53ac: $5f
    ld bc, $1700                                  ; $53ad: $01 $00 $17
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    dec d                                         ; $53b2: $15
    inc b                                         ; $53b3: $04
    nop                                           ; $53b4: $00
    add hl, de                                    ; $53b5: $19
    nop                                           ; $53b6: $00
    sub [hl]                                      ; $53b7: $96
    dec d                                         ; $53b8: $15
    ld [bc], a                                    ; $53b9: $02
    nop                                           ; $53ba: $00
    add hl, de                                    ; $53bb: $19
    nop                                           ; $53bc: $00
    ld c, e                                       ; $53bd: $4b
    dec de                                        ; $53be: $1b
    ld [bc], a                                    ; $53bf: $02
    nop                                           ; $53c0: $00
    dec d                                         ; $53c1: $15
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    inc sp                                        ; $53c4: $33
    rlca                                          ; $53c5: $07
    ld d, d                                       ; $53c6: $52
    dec d                                         ; $53c7: $15
    dec d                                         ; $53c8: $15
    nop                                           ; $53c9: $00
    inc sp                                        ; $53ca: $33
    rlca                                          ; $53cb: $07
    ld d, e                                       ; $53cc: $53
    ld e, a                                       ; $53cd: $5f
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    inc de                                        ; $53d0: $13
    nop                                           ; $53d1: $00
    ld b, [hl]                                    ; $53d2: $46
    inc d                                         ; $53d3: $14
    nop                                           ; $53d4: $00
    and e                                         ; $53d5: $a3
    dec d                                         ; $53d6: $15
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    ld d, $37                                     ; $53d9: $16 $37
    nop                                           ; $53db: $00
    ld d, d                                       ; $53dc: $52
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    ld e, d                                       ; $53df: $5a
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    dec de                                        ; $53e2: $1b
    ld [bc], a                                    ; $53e3: $02
    nop                                           ; $53e4: $00
    ld e, a                                       ; $53e5: $5f
    ld bc, $1500                                  ; $53e6: $01 $00 $15
    ld [bc], a                                    ; $53e9: $02
    nop                                           ; $53ea: $00
    add hl, hl                                    ; $53eb: $29
    ld b, $10                                     ; $53ec: $06 $10
    dec d                                         ; $53ee: $15
    add hl, de                                    ; $53ef: $19
    nop                                           ; $53f0: $00
    inc sp                                        ; $53f1: $33
    rlca                                          ; $53f2: $07
    ld d, h                                       ; $53f3: $54
    rla                                           ; $53f4: $17
    scf                                           ; $53f5: $37
    nop                                           ; $53f6: $00
    ld e, [hl]                                    ; $53f7: $5e
    nop                                           ; $53f8: $00
    nop                                           ; $53f9: $00
    dec d                                         ; $53fa: $15
    ld bc, $1900                                  ; $53fb: $01 $00 $19
    nop                                           ; $53fe: $00
    jr z, jr_00d_545f                             ; $53ff: $28 $5e

    ld bc, $1500                                  ; $5401: $01 $00 $15
    ld [bc], a                                    ; $5404: $02
    nop                                           ; $5405: $00
    add hl, hl                                    ; $5406: $29
    ld [bc], a                                    ; $5407: $02
    db $10                                        ; $5408: $10
    rla                                           ; $5409: $17
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    ld e, c                                       ; $540c: $59
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    dec de                                        ; $540f: $1b
    ld b, $00                                     ; $5410: $06 $00
    rla                                           ; $5412: $17
    scf                                           ; $5413: $37
    nop                                           ; $5414: $00

Call_00d_5415:
    ld e, $37                                     ; $5415: $1e $37
    nop                                           ; $5417: $00
    dec d                                         ; $5418: $15
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    inc sp                                        ; $541b: $33
    rlca                                          ; $541c: $07
    ld d, l                                       ; $541d: $55
    ld e, a                                       ; $541e: $5f
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    inc de                                        ; $5421: $13
    nop                                           ; $5422: $00
    jp z, $0114                                   ; $5423: $ca $14 $01

    ld c, $15                                     ; $5426: $0e $15
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    ld d, $16                                     ; $542a: $16 $16
    nop                                           ; $542c: $00
    ld d, d                                       ; $542d: $52
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    ld e, a                                       ; $5430: $5f
    ld bc, $1500                                  ; $5431: $01 $00 $15
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    add hl, de                                    ; $5436: $19
    nop                                           ; $5437: $00
    ld e, d                                       ; $5438: $5a
    dec de                                        ; $5439: $1b
    ld [bc], a                                    ; $543a: $02
    nop                                           ; $543b: $00
    rla                                           ; $543c: $17
    add hl, sp                                    ; $543d: $39
    nop                                           ; $543e: $00
    dec de                                        ; $543f: $1b
    ld b, $00                                     ; $5440: $06 $00
    dec d                                         ; $5442: $15
    ld l, $00                                     ; $5443: $2e $00
    inc sp                                        ; $5445: $33
    rlca                                          ; $5446: $07
    ld d, [hl]                                    ; $5447: $56
    dec d                                         ; $5448: $15
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    inc sp                                        ; $544b: $33
    rlca                                          ; $544c: $07
    ld d, a                                       ; $544d: $57
    dec d                                         ; $544e: $15
    ld l, $00                                     ; $544f: $2e $00
    inc sp                                        ; $5451: $33
    rlca                                          ; $5452: $07
    ld e, b                                       ; $5453: $58
    rla                                           ; $5454: $17
    ld d, $00                                     ; $5455: $16 $00
    dec d                                         ; $5457: $15
    inc b                                         ; $5458: $04
    nop                                           ; $5459: $00
    add hl, de                                    ; $545a: $19
    nop                                           ; $545b: $00
    ld e, d                                       ; $545c: $5a
    ld e, $16                                     ; $545d: $1e $16

jr_00d_545f:
    nop                                           ; $545f: $00
    ld h, d                                       ; $5460: $62
    inc sp                                        ; $5461: $33
    nop                                           ; $5462: $00
    dec d                                         ; $5463: $15
    ld b, [hl]                                    ; $5464: $46
    nop                                           ; $5465: $00
    ld b, $0b                                     ; $5466: $06 $0b
    ld l, $57                                     ; $5468: $2e $57
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    ld e, a                                       ; $5472: $5f
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    inc de                                        ; $5475: $13
    nop                                           ; $5476: $00
    adc [hl]                                      ; $5477: $8e
    inc d                                         ; $5478: $14
    nop                                           ; $5479: $00
    add hl, de                                    ; $547a: $19
    dec d                                         ; $547b: $15
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    ld d, $4a                                     ; $547e: $16 $4a
    nop                                           ; $5480: $00
    ld d, d                                       ; $5481: $52
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    dec de                                        ; $5484: $1b
    inc b                                         ; $5485: $04
    nop                                           ; $5486: $00
    inc de                                        ; $5487: $13
    nop                                           ; $5488: $00
    db $e4                                        ; $5489: $e4
    inc d                                         ; $548a: $14
    nop                                           ; $548b: $00
    cpl                                           ; $548c: $2f
    dec d                                         ; $548d: $15
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    ld d, $22                                     ; $5490: $16 $22
    nop                                           ; $5492: $00
    ld d, d                                       ; $5493: $52
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    dec de                                        ; $5496: $1b
    inc b                                         ; $5497: $04
    nop                                           ; $5498: $00
    inc de                                        ; $5499: $13
    nop                                           ; $549a: $00
    dec sp                                        ; $549b: $3b
    inc d                                         ; $549c: $14
    nop                                           ; $549d: $00
    cpl                                           ; $549e: $2f
    dec d                                         ; $549f: $15
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    ld d, $20                                     ; $54a2: $16 $20
    nop                                           ; $54a4: $00
    ld d, d                                       ; $54a5: $52
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    inc de                                        ; $54a8: $13
    nop                                           ; $54a9: $00
    db $fc                                        ; $54aa: $fc
    inc d                                         ; $54ab: $14
    ld bc, $1511                                  ; $54ac: $01 $11 $15
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    ld d, $17                                     ; $54b1: $16 $17
    nop                                           ; $54b3: $00
    ld d, d                                       ; $54b4: $52
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    inc de                                        ; $54b7: $13
    nop                                           ; $54b8: $00
    sub c                                         ; $54b9: $91
    inc d                                         ; $54ba: $14
    ld bc, $15db                                  ; $54bb: $01 $db $15
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    ld d, $0d                                     ; $54c0: $16 $0d
    nop                                           ; $54c2: $00
    ld d, d                                       ; $54c3: $52
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    dec de                                        ; $54c6: $1b
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    ld e, a                                       ; $54c9: $5f
    ld bc, $0100                                  ; $54ca: $01 $00 $01
    nop                                           ; $54cd: $00
    nop                                           ; $54ce: $00
    ld e, a                                       ; $54cf: $5f
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    rla                                           ; $54d2: $17
    ld c, d                                       ; $54d3: $4a
    nop                                           ; $54d4: $00
    ld e, $4a                                     ; $54d5: $1e $4a
    nop                                           ; $54d7: $00
    rla                                           ; $54d8: $17
    ld [hl+], a                                   ; $54d9: $22
    nop                                           ; $54da: $00
    ld e, $22                                     ; $54db: $1e $22
    nop                                           ; $54dd: $00
    rla                                           ; $54de: $17
    jr nz, jr_00d_54e1                            ; $54df: $20 $00

jr_00d_54e1:
    ld e, $20                                     ; $54e1: $1e $20
    nop                                           ; $54e3: $00
    rla                                           ; $54e4: $17
    rla                                           ; $54e5: $17
    nop                                           ; $54e6: $00
    ld e, $1f                                     ; $54e7: $1e $1f
    nop                                           ; $54e9: $00
    rla                                           ; $54ea: $17
    dec c                                         ; $54eb: $0d
    nop                                           ; $54ec: $00
    ld e, $0d                                     ; $54ed: $1e $0d
    nop                                           ; $54ef: $00
    ld e, a                                       ; $54f0: $5f
    ld bc, $0100                                  ; $54f1: $01 $00 $01
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    ld e, a                                       ; $54f6: $5f
    nop                                           ; $54f7: $00
    nop                                           ; $54f8: $00
    ld d, [hl]                                    ; $54f9: $56
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    rrca                                          ; $54fc: $0f
    ld [$1701], sp                                ; $54fd: $08 $01 $17
    ld b, [hl]                                    ; $5500: $46
    nop                                           ; $5501: $00
    dec de                                        ; $5502: $1b
    ld [bc], a                                    ; $5503: $02
    nop                                           ; $5504: $00
    rla                                           ; $5505: $17
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    dec de                                        ; $5508: $1b
    ld [bc], a                                    ; $5509: $02
    nop                                           ; $550a: $00
    ld e, a                                       ; $550b: $5f
    ld bc, $2700                                  ; $550c: $01 $00 $27
    nop                                           ; $550f: $00
    ld a, [bc]                                    ; $5510: $0a
    dec d                                         ; $5511: $15
    add hl, sp                                    ; $5512: $39
    nop                                           ; $5513: $00
    inc sp                                        ; $5514: $33
    rlca                                          ; $5515: $07
    ld h, [hl]                                    ; $5516: $66
    ld [bc], a                                    ; $5517: $02
    add sp, $00                                   ; $5518: $e8 $00
    ld e, a                                       ; $551a: $5f
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    inc de                                        ; $551d: $13
    ld bc, $1400                                  ; $551e: $01 $00 $14
    ld bc, $1513                                  ; $5521: $01 $13 $15
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    ld d, $4d                                     ; $5526: $16 $4d
    nop                                           ; $5528: $00
    ld d, d                                       ; $5529: $52
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    dec de                                        ; $552c: $1b
    ld b, $00                                     ; $552d: $06 $00
    ld e, a                                       ; $552f: $5f
    ld bc, $1700                                  ; $5530: $01 $00 $17
    add hl, sp                                    ; $5533: $39
    nop                                           ; $5534: $00
    inc de                                        ; $5535: $13
    nop                                           ; $5536: $00
    or $58                                        ; $5537: $f6 $58
    nop                                           ; $5539: $00
    jp c, $0017                                   ; $553a: $da $17 $00

    nop                                           ; $553d: $00
    ld e, d                                       ; $553e: $5a
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    dec d                                         ; $5541: $15
    ld [bc], a                                    ; $5542: $02
    nop                                           ; $5543: $00
    add hl, de                                    ; $5544: $19
    nop                                           ; $5545: $00
    ld [hl-], a                                   ; $5546: $32
    inc de                                        ; $5547: $13
    ld bc, $7113                                  ; $5548: $01 $13 $71
    nop                                           ; $554b: $00
    rst $10                                       ; $554c: $d7
    ld e, e                                       ; $554d: $5b
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    rla                                           ; $5550: $17
    ld b, [hl]                                    ; $5551: $46
    nop                                           ; $5552: $00
    ld e, $46                                     ; $5553: $1e $46
    nop                                           ; $5555: $00
    ld e, a                                       ; $5556: $5f
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    inc de                                        ; $5559: $13
    nop                                           ; $555a: $00
    ld l, [hl]                                    ; $555b: $6e
    inc d                                         ; $555c: $14
    ld bc, $1522                                  ; $555d: $01 $22 $15
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    ld d, $49                                     ; $5562: $16 $49
    nop                                           ; $5564: $00
    ld d, d                                       ; $5565: $52
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    ld e, a                                       ; $5568: $5f
    ld bc, $1500                                  ; $5569: $01 $00 $15
    ld [bc], a                                    ; $556c: $02
    nop                                           ; $556d: $00
    add hl, de                                    ; $556e: $19
    nop                                           ; $556f: $00
    scf                                           ; $5570: $37
    rla                                           ; $5571: $17
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    dec de                                        ; $5574: $1b
    ld b, $00                                     ; $5575: $06 $00
    rla                                           ; $5577: $17
    ld c, c                                       ; $5578: $49
    nop                                           ; $5579: $00
    ld e, d                                       ; $557a: $5a
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    dec d                                         ; $557d: $15
    ld a, [hl-]                                   ; $557e: $3a
    nop                                           ; $557f: $00
    inc sp                                        ; $5580: $33
    rlca                                          ; $5581: $07
    ld h, a                                       ; $5582: $67
    ld hl, $002b                                  ; $5583: $21 $2b $00
    daa                                           ; $5586: $27
    nop                                           ; $5587: $00
    jr z, jr_00d_55e5                             ; $5588: $28 $5b

    nop                                           ; $558a: $00
    nop                                           ; $558b: $00
    dec d                                         ; $558c: $15
    add hl, sp                                    ; $558d: $39
    nop                                           ; $558e: $00
    inc sp                                        ; $558f: $33
    rlca                                          ; $5590: $07
    ld l, b                                       ; $5591: $68
    rla                                           ; $5592: $17
    ld c, l                                       ; $5593: $4d
    nop                                           ; $5594: $00
    dec d                                         ; $5595: $15
    ld [bc], a                                    ; $5596: $02
    nop                                           ; $5597: $00
    add hl, de                                    ; $5598: $19
    nop                                           ; $5599: $00
    jr jr_00d_55ba                                ; $559a: $18 $1e

    ld c, l                                       ; $559c: $4d
    nop                                           ; $559d: $00
    rla                                           ; $559e: $17
    nop                                           ; $559f: $00
    nop                                           ; $55a0: $00
    dec de                                        ; $55a1: $1b
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    dec d                                         ; $55a4: $15
    nop                                           ; $55a5: $00
    nop                                           ; $55a6: $00
    inc sp                                        ; $55a7: $33
    rlca                                          ; $55a8: $07
    ld l, d                                       ; $55a9: $6a
    dec d                                         ; $55aa: $15
    dec d                                         ; $55ab: $15
    nop                                           ; $55ac: $00
    inc sp                                        ; $55ad: $33
    rlca                                          ; $55ae: $07
    ld l, e                                       ; $55af: $6b
    dec d                                         ; $55b0: $15
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    inc sp                                        ; $55b3: $33
    rlca                                          ; $55b4: $07
    ld l, h                                       ; $55b5: $6c
    rla                                           ; $55b6: $17
    add hl, sp                                    ; $55b7: $39
    nop                                           ; $55b8: $00
    ld [hl+], a                                   ; $55b9: $22

jr_00d_55ba:
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    ld d, a                                       ; $55bc: $57
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    nop                                           ; $55bf: $00
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    ld e, a                                       ; $55c2: $5f
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
    add hl, bc                                    ; $55c5: $09
    nop                                           ; $55c6: $00
    inc sp                                        ; $55c7: $33
    dec b                                         ; $55c8: $05
    dec c                                         ; $55c9: $0d
    nop                                           ; $55ca: $00
    add hl, bc                                    ; $55cb: $09
    ld [$0500], sp                                ; $55cc: $08 $00 $05
    dec bc                                        ; $55cf: $0b
    nop                                           ; $55d0: $00
    ld d, [hl]                                    ; $55d1: $56
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    rla                                           ; $55d4: $17
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    dec de                                        ; $55d7: $1b
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    ld e, a                                       ; $55da: $5f
    ld bc, $1500                                  ; $55db: $01 $00 $15
    jr c, jr_00d_55e0                             ; $55de: $38 $00

jr_00d_55e0:
    inc sp                                        ; $55e0: $33
    rlca                                          ; $55e1: $07
    ld e, c                                       ; $55e2: $59
    dec d                                         ; $55e3: $15
    inc b                                         ; $55e4: $04

jr_00d_55e5:
    nop                                           ; $55e5: $00
    add hl, de                                    ; $55e6: $19
    nop                                           ; $55e7: $00
    inc d                                         ; $55e8: $14
    dec de                                        ; $55e9: $1b
    inc b                                         ; $55ea: $04
    nop                                           ; $55eb: $00
    ld d, a                                       ; $55ec: $57
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    add hl, bc                                    ; $55ef: $09
    nop                                           ; $55f0: $00
    ld b, $05                                     ; $55f1: $06 $05
    inc c                                         ; $55f3: $0c
    nop                                           ; $55f4: $00
    ld d, [hl]                                    ; $55f5: $56
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    rla                                           ; $55f8: $17
    nop                                           ; $55f9: $00
    nop                                           ; $55fa: $00
    dec de                                        ; $55fb: $1b
    nop                                           ; $55fc: $00
    nop                                           ; $55fd: $00
    ld e, a                                       ; $55fe: $5f
    ld bc, $1500                                  ; $55ff: $01 $00 $15
    ccf                                           ; $5602: $3f
    nop                                           ; $5603: $00
    inc sp                                        ; $5604: $33
    add hl, bc                                    ; $5605: $09
    ld h, d                                       ; $5606: $62
    dec d                                         ; $5607: $15
    inc b                                         ; $5608: $04
    nop                                           ; $5609: $00
    add hl, de                                    ; $560a: $19
    nop                                           ; $560b: $00
    inc d                                         ; $560c: $14
    dec de                                        ; $560d: $1b
    inc b                                         ; $560e: $04
    nop                                           ; $560f: $00
    ld d, a                                       ; $5610: $57
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    ld e, a                                       ; $5616: $5f
    ld bc, $0000                                  ; $5617: $01 $00 $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    ld e, a                                       ; $561c: $5f
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    add hl, bc                                    ; $561f: $09
    nop                                           ; $5620: $00
    inc sp                                        ; $5621: $33
    dec b                                         ; $5622: $05
    dec de                                        ; $5623: $1b
    nop                                           ; $5624: $00
    add hl, bc                                    ; $5625: $09
    ld [$0500], sp                                ; $5626: $08 $00 $05
    inc c                                         ; $5629: $0c
    nop                                           ; $562a: $00
    ld d, [hl]                                    ; $562b: $56
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    rla                                           ; $562e: $17
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    dec de                                        ; $5631: $1b
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    ld e, a                                       ; $5634: $5f
    ld bc, $1500                                  ; $5635: $01 $00 $15
    cpl                                           ; $5638: $2f
    nop                                           ; $5639: $00
    inc sp                                        ; $563a: $33
    rlca                                          ; $563b: $07
    ld e, d                                       ; $563c: $5a
    dec d                                         ; $563d: $15
    inc b                                         ; $563e: $04
    nop                                           ; $563f: $00
    add hl, de                                    ; $5640: $19
    nop                                           ; $5641: $00
    inc d                                         ; $5642: $14
    dec de                                        ; $5643: $1b
    inc b                                         ; $5644: $04
    nop                                           ; $5645: $00
    ld d, a                                       ; $5646: $57
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    nop                                           ; $564b: $00
    add hl, bc                                    ; $564c: $09
    ld [$0501], sp                                ; $564d: $08 $01 $05
    inc c                                         ; $5650: $0c
    nop                                           ; $5651: $00
    ld d, [hl]                                    ; $5652: $56
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    rla                                           ; $5655: $17
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    dec de                                        ; $5658: $1b
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    ld e, a                                       ; $565b: $5f
    ld bc, $1500                                  ; $565c: $01 $00 $15
    dec d                                         ; $565f: $15
    nop                                           ; $5660: $00
    inc sp                                        ; $5661: $33
    rlca                                          ; $5662: $07
    sub d                                         ; $5663: $92
    dec d                                         ; $5664: $15
    inc b                                         ; $5665: $04
    nop                                           ; $5666: $00
    add hl, de                                    ; $5667: $19
    nop                                           ; $5668: $00
    inc d                                         ; $5669: $14
    dec de                                        ; $566a: $1b
    inc b                                         ; $566b: $04
    nop                                           ; $566c: $00
    ld d, a                                       ; $566d: $57
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    ld e, a                                       ; $5673: $5f
    ld bc, $0000                                  ; $5674: $01 $00 $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    ld e, a                                       ; $5679: $5f
    nop                                           ; $567a: $00
    nop                                           ; $567b: $00
    add hl, bc                                    ; $567c: $09
    nop                                           ; $567d: $00
    inc sp                                        ; $567e: $33
    dec b                                         ; $567f: $05
    dec de                                        ; $5680: $1b
    nop                                           ; $5681: $00
    add hl, bc                                    ; $5682: $09
    ld [$0500], sp                                ; $5683: $08 $00 $05
    inc c                                         ; $5686: $0c
    nop                                           ; $5687: $00
    ld d, [hl]                                    ; $5688: $56
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    rla                                           ; $568b: $17
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    dec de                                        ; $568e: $1b
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    ld e, a                                       ; $5691: $5f
    ld bc, $1500                                  ; $5692: $01 $00 $15
    ld b, c                                       ; $5695: $41
    nop                                           ; $5696: $00
    inc sp                                        ; $5697: $33
    rlca                                          ; $5698: $07
    ld e, h                                       ; $5699: $5c
    dec d                                         ; $569a: $15
    inc b                                         ; $569b: $04
    nop                                           ; $569c: $00
    add hl, de                                    ; $569d: $19
    nop                                           ; $569e: $00
    inc d                                         ; $569f: $14
    dec de                                        ; $56a0: $1b
    inc b                                         ; $56a1: $04
    nop                                           ; $56a2: $00
    ld d, a                                       ; $56a3: $57
    nop                                           ; $56a4: $00
    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    add hl, bc                                    ; $56a9: $09
    ld [$0501], sp                                ; $56aa: $08 $01 $05
    inc c                                         ; $56ad: $0c
    nop                                           ; $56ae: $00
    ld d, [hl]                                    ; $56af: $56
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    rla                                           ; $56b2: $17
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    dec de                                        ; $56b5: $1b
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    ld e, a                                       ; $56b8: $5f
    ld bc, $1500                                  ; $56b9: $01 $00 $15
    dec d                                         ; $56bc: $15
    nop                                           ; $56bd: $00
    inc sp                                        ; $56be: $33
    rlca                                          ; $56bf: $07
    sub d                                         ; $56c0: $92
    dec d                                         ; $56c1: $15
    inc b                                         ; $56c2: $04
    nop                                           ; $56c3: $00
    add hl, de                                    ; $56c4: $19
    nop                                           ; $56c5: $00
    inc d                                         ; $56c6: $14
    dec de                                        ; $56c7: $1b
    inc b                                         ; $56c8: $04
    nop                                           ; $56c9: $00
    ld d, a                                       ; $56ca: $57
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    ld e, a                                       ; $56d0: $5f
    ld bc, $0000                                  ; $56d1: $01 $00 $00
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    ld e, a                                       ; $56d6: $5f
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    add hl, bc                                    ; $56d9: $09
    nop                                           ; $56da: $00
    inc sp                                        ; $56db: $33
    dec b                                         ; $56dc: $05
    dec de                                        ; $56dd: $1b
    nop                                           ; $56de: $00
    add hl, bc                                    ; $56df: $09
    ld [$0500], sp                                ; $56e0: $08 $00 $05
    inc c                                         ; $56e3: $0c
    nop                                           ; $56e4: $00
    ld d, [hl]                                    ; $56e5: $56
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    rla                                           ; $56e8: $17
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    dec de                                        ; $56eb: $1b
    ld [bc], a                                    ; $56ec: $02
    nop                                           ; $56ed: $00
    ld e, a                                       ; $56ee: $5f
    ld bc, $1500                                  ; $56ef: $01 $00 $15
    scf                                           ; $56f2: $37
    nop                                           ; $56f3: $00
    inc sp                                        ; $56f4: $33
    rlca                                          ; $56f5: $07
    ld e, l                                       ; $56f6: $5d
    dec d                                         ; $56f7: $15
    ld b, $00                                     ; $56f8: $06 $00
    add hl, de                                    ; $56fa: $19
    nop                                           ; $56fb: $00
    add hl, de                                    ; $56fc: $19
    dec de                                        ; $56fd: $1b
    inc b                                         ; $56fe: $04
    nop                                           ; $56ff: $00
    ld d, a                                       ; $5700: $57
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    add hl, bc                                    ; $5706: $09
    ld [$0501], sp                                ; $5707: $08 $01 $05
    inc c                                         ; $570a: $0c
    nop                                           ; $570b: $00
    ld d, [hl]                                    ; $570c: $56
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    rla                                           ; $570f: $17
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    dec de                                        ; $5712: $1b
    ld [bc], a                                    ; $5713: $02
    nop                                           ; $5714: $00
    ld e, a                                       ; $5715: $5f
    ld bc, $1500                                  ; $5716: $01 $00 $15
    dec d                                         ; $5719: $15
    nop                                           ; $571a: $00
    inc sp                                        ; $571b: $33
    rlca                                          ; $571c: $07
    sub d                                         ; $571d: $92
    dec d                                         ; $571e: $15
    ld b, $00                                     ; $571f: $06 $00
    add hl, de                                    ; $5721: $19
    nop                                           ; $5722: $00
    add hl, de                                    ; $5723: $19
    dec de                                        ; $5724: $1b
    ld b, $00                                     ; $5725: $06 $00
    ld d, a                                       ; $5727: $57
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    ld e, a                                       ; $572d: $5f
    ld bc, $0000                                  ; $572e: $01 $00 $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    ld e, a                                       ; $5733: $5f
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    add hl, bc                                    ; $5736: $09
    nop                                           ; $5737: $00
    inc sp                                        ; $5738: $33
    dec b                                         ; $5739: $05
    dec de                                        ; $573a: $1b
    nop                                           ; $573b: $00
    add hl, bc                                    ; $573c: $09
    ld [$0500], sp                                ; $573d: $08 $00 $05
    inc c                                         ; $5740: $0c
    nop                                           ; $5741: $00
    ld d, [hl]                                    ; $5742: $56
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    rla                                           ; $5745: $17
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    dec de                                        ; $5748: $1b
    inc b                                         ; $5749: $04
    nop                                           ; $574a: $00
    ld e, a                                       ; $574b: $5f
    ld bc, $1500                                  ; $574c: $01 $00 $15
    ld bc, $3300                                  ; $574f: $01 $00 $33
    rlca                                          ; $5752: $07
    ld e, [hl]                                    ; $5753: $5e
    dec d                                         ; $5754: $15
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    add hl, de                                    ; $5757: $19
    nop                                           ; $5758: $00
    inc d                                         ; $5759: $14
    dec de                                        ; $575a: $1b
    inc b                                         ; $575b: $04
    nop                                           ; $575c: $00
    ld d, a                                       ; $575d: $57
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    add hl, bc                                    ; $5763: $09
    ld [$0501], sp                                ; $5764: $08 $01 $05
    inc c                                         ; $5767: $0c
    nop                                           ; $5768: $00
    ld d, [hl]                                    ; $5769: $56
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    rla                                           ; $576c: $17
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    dec de                                        ; $576f: $1b
    inc b                                         ; $5770: $04
    nop                                           ; $5771: $00
    ld e, a                                       ; $5772: $5f
    ld bc, $1500                                  ; $5773: $01 $00 $15
    dec d                                         ; $5776: $15
    nop                                           ; $5777: $00
    inc sp                                        ; $5778: $33
    rlca                                          ; $5779: $07
    sub d                                         ; $577a: $92
    dec d                                         ; $577b: $15
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    add hl, de                                    ; $577e: $19
    nop                                           ; $577f: $00
    inc d                                         ; $5780: $14
    dec de                                        ; $5781: $1b
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    ld d, a                                       ; $5784: $57
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    ld e, a                                       ; $578a: $5f
    ld bc, $0000                                  ; $578b: $01 $00 $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    ld d, h                                       ; $5790: $54
    ld bc, $0001                                  ; $5791: $01 $01 $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    ld a, [bc]                                    ; $5796: $0a
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    sub b                                         ; $579a: $90
    nop                                           ; $579b: $00
    sbc a                                         ; $579c: $9f
    nop                                           ; $579d: $00
    xor [hl]                                      ; $579e: $ae
    nop                                           ; $579f: $00
    rst $08                                       ; $57a0: $cf
    nop                                           ; $57a1: $00
    ldh a, [rSB]                                  ; $57a2: $f0 $01
    ld l, [hl]                                    ; $57a4: $6e
    ld bc, $0680                                  ; $57a5: $01 $80 $06
    push de                                       ; $57a8: $d5
    rlca                                          ; $57a9: $07
    rla                                           ; $57aa: $17
    add hl, bc                                    ; $57ab: $09
    nop                                           ; $57ac: $00
    ld d, d                                       ; $57ad: $52
    dec b                                         ; $57ae: $05
    ld [de], a                                    ; $57af: $12
    nop                                           ; $57b0: $00
    add hl, bc                                    ; $57b1: $09
    db $10                                        ; $57b2: $10
    ld bc, $0205                                  ; $57b3: $01 $05 $02
    nop                                           ; $57b6: $00
    nop                                           ; $57b7: $00
    nop                                           ; $57b8: $00
    nop                                           ; $57b9: $00
    ld d, [hl]                                    ; $57ba: $56
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    rla                                           ; $57bd: $17
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    dec de                                        ; $57c0: $1b
    ld b, $00                                     ; $57c1: $06 $00
    dec d                                         ; $57c3: $15
    dec d                                         ; $57c4: $15
    nop                                           ; $57c5: $00
    inc sp                                        ; $57c6: $33
    ld bc, $17c5                                  ; $57c7: $01 $c5 $17
    add hl, sp                                    ; $57ca: $39
    nop                                           ; $57cb: $00
    dec d                                         ; $57cc: $15
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    add hl, de                                    ; $57cf: $19
    nop                                           ; $57d0: $00
    ld e, d                                       ; $57d1: $5a
    inc de                                        ; $57d2: $13
    nop                                           ; $57d3: $00
    cp l                                          ; $57d4: $bd
    ld e, b                                       ; $57d5: $58
    nop                                           ; $57d6: $00
    ld [hl], $1b                                  ; $57d7: $36 $1b
    ld [bc], a                                    ; $57d9: $02
    nop                                           ; $57da: $00
    ld d, a                                       ; $57db: $57
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    rrca                                          ; $57de: $0f
    db $10                                        ; $57df: $10
    ld bc, $0000                                  ; $57e0: $01 $00 $00
    nop                                           ; $57e3: $00
    add hl, bc                                    ; $57e4: $09
    nop                                           ; $57e5: $00
    add hl, sp                                    ; $57e6: $39
    dec b                                         ; $57e7: $05
    dec c                                         ; $57e8: $0d
    nop                                           ; $57e9: $00
    ld d, [hl]                                    ; $57ea: $56
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    ld e, a                                       ; $57ed: $5f
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    rla                                           ; $57f0: $17
    nop                                           ; $57f1: $00
    nop                                           ; $57f2: $00
    dec de                                        ; $57f3: $1b
    inc b                                         ; $57f4: $04
    nop                                           ; $57f5: $00
    ld e, a                                       ; $57f6: $5f
    ld bc, $1500                                  ; $57f7: $01 $00 $15
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    inc sp                                        ; $57fc: $33
    inc b                                         ; $57fd: $04
    ld b, c                                       ; $57fe: $41
    rrca                                          ; $57ff: $0f
    rst $38                                       ; $5800: $ff
    inc b                                         ; $5801: $04
    dec de                                        ; $5802: $1b
    inc b                                         ; $5803: $04
    nop                                           ; $5804: $00
    ld h, d                                       ; $5805: $62
    scf                                           ; $5806: $37
    nop                                           ; $5807: $00
    ld d, a                                       ; $5808: $57
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    add hl, bc                                    ; $580e: $09
    nop                                           ; $580f: $00
    dec sp                                        ; $5810: $3b
    dec b                                         ; $5811: $05
    dec c                                         ; $5812: $0d
    nop                                           ; $5813: $00
    ld d, [hl]                                    ; $5814: $56
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    ld e, a                                       ; $5817: $5f
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    rla                                           ; $581a: $17
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    dec de                                        ; $581d: $1b
    inc b                                         ; $581e: $04
    nop                                           ; $581f: $00
    ld e, a                                       ; $5820: $5f
    ld bc, $1500                                  ; $5821: $01 $00 $15
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    inc sp                                        ; $5826: $33
    inc b                                         ; $5827: $04
    ld b, c                                       ; $5828: $41
    rrca                                          ; $5829: $0f
    rst $38                                       ; $582a: $ff
    inc b                                         ; $582b: $04
    dec de                                        ; $582c: $1b
    inc b                                         ; $582d: $04
    nop                                           ; $582e: $00
    ld h, d                                       ; $582f: $62
    scf                                           ; $5830: $37
    nop                                           ; $5831: $00
    ld d, a                                       ; $5832: $57
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    add hl, bc                                    ; $583b: $09
    nop                                           ; $583c: $00
    ld d, d                                       ; $583d: $52
    dec b                                         ; $583e: $05
    inc bc                                        ; $583f: $03
    nop                                           ; $5840: $00
    dec d                                         ; $5841: $15
    dec d                                         ; $5842: $15
    nop                                           ; $5843: $00
    inc sp                                        ; $5844: $33
    ld bc, $00c6                                  ; $5845: $01 $c6 $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    add hl, bc                                    ; $584a: $09
    nop                                           ; $584b: $00
    ld d, d                                       ; $584c: $52
    dec b                                         ; $584d: $05
    inc bc                                        ; $584e: $03
    nop                                           ; $584f: $00
    dec d                                         ; $5850: $15
    inc l                                         ; $5851: $2c
    nop                                           ; $5852: $00
    inc sp                                        ; $5853: $33
    ld bc, $00c7                                  ; $5854: $01 $c7 $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    add hl, bc                                    ; $5859: $09
    nop                                           ; $585a: $00
    ld d, d                                       ; $585b: $52
    dec b                                         ; $585c: $05
    inc b                                         ; $585d: $04
    nop                                           ; $585e: $00
    dec d                                         ; $585f: $15
    ld c, [hl]                                    ; $5860: $4e
    nop                                           ; $5861: $00
    inc sp                                        ; $5862: $33
    ld bc, $00c8                                  ; $5863: $01 $c8 $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    add hl, bc                                    ; $5868: $09
    nop                                           ; $5869: $00
    ld [$0405], sp                                ; $586a: $08 $05 $04
    nop                                           ; $586d: $00
    dec d                                         ; $586e: $15
    ld c, [hl]                                    ; $586f: $4e
    nop                                           ; $5870: $00
    inc sp                                        ; $5871: $33
    ld a, [bc]                                    ; $5872: $0a
    ld [$0000], sp                                ; $5873: $08 $00 $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    add hl, bc                                    ; $587a: $09
    nop                                           ; $587b: $00
    ld d, d                                       ; $587c: $52
    dec b                                         ; $587d: $05
    inc b                                         ; $587e: $04
    nop                                           ; $587f: $00
    dec d                                         ; $5880: $15
    ld c, a                                       ; $5881: $4f
    nop                                           ; $5882: $00
    inc sp                                        ; $5883: $33
    ld bc, $00c9                                  ; $5884: $01 $c9 $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    add hl, bc                                    ; $5889: $09
    nop                                           ; $588a: $00
    ld [$0405], sp                                ; $588b: $08 $05 $04
    nop                                           ; $588e: $00
    dec d                                         ; $588f: $15
    ld c, a                                       ; $5890: $4f
    nop                                           ; $5891: $00
    inc sp                                        ; $5892: $33
    ld a, [bc]                                    ; $5893: $0a
    add hl, bc                                    ; $5894: $09
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    add hl, bc                                    ; $589b: $09
    nop                                           ; $589c: $00
    ld d, d                                       ; $589d: $52
    dec b                                         ; $589e: $05
    dec e                                         ; $589f: $1d
    nop                                           ; $58a0: $00
    ld d, [hl]                                    ; $58a1: $56
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    rla                                           ; $58a4: $17
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    dec de                                        ; $58a7: $1b
    ld [bc], a                                    ; $58a8: $02
    nop                                           ; $58a9: $00
    dec d                                         ; $58aa: $15
    inc l                                         ; $58ab: $2c
    nop                                           ; $58ac: $00
    inc sp                                        ; $58ad: $33
    ld bc, $55ca                                  ; $58ae: $01 $ca $55
    rlca                                          ; $58b1: $07
    nop                                           ; $58b2: $00
    ld e, a                                       ; $58b3: $5f
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    ld d, [hl]                                    ; $58b6: $56
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    rla                                           ; $58b9: $17
    add hl, sp                                    ; $58ba: $39
    nop                                           ; $58bb: $00
    inc de                                        ; $58bc: $13
    nop                                           ; $58bd: $00
    ld e, d                                       ; $58be: $5a
    ld e, b                                       ; $58bf: $58
    nop                                           ; $58c0: $00
    sbc c                                         ; $58c1: $99
    dec de                                        ; $58c2: $1b
    ld [bc], a                                    ; $58c3: $02
    nop                                           ; $58c4: $00
    rrca                                          ; $58c5: $0f
    rst $38                                       ; $58c6: $ff
    nop                                           ; $58c7: $00
    rla                                           ; $58c8: $17
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    dec de                                        ; $58cb: $1b
    ld b, $00                                     ; $58cc: $06 $00
    ld e, a                                       ; $58ce: $5f
    ld bc, $6d00                                  ; $58cf: $01 $00 $6d
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    ld h, d                                       ; $58d4: $62
    ld [$1500], sp                                ; $58d5: $08 $00 $15
    dec d                                         ; $58d8: $15
    nop                                           ; $58d9: $00
    inc sp                                        ; $58da: $33
    ld bc, $17cb                                  ; $58db: $01 $cb $17
    add hl, sp                                    ; $58de: $39
    nop                                           ; $58df: $00
    dec d                                         ; $58e0: $15
    inc b                                         ; $58e1: $04
    nop                                           ; $58e2: $00
    add hl, de                                    ; $58e3: $19
    nop                                           ; $58e4: $00
    ld e, d                                       ; $58e5: $5a
    ld e, $39                                     ; $58e6: $1e $39
    nop                                           ; $58e8: $00
    rla                                           ; $58e9: $17
    jr c, jr_00d_58ec                             ; $58ea: $38 $00

jr_00d_58ec:
    ld e, $38                                     ; $58ec: $1e $38
    nop                                           ; $58ee: $00
    ld d, a                                       ; $58ef: $57
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    nop                                           ; $58f2: $00
    nop                                           ; $58f3: $00
    nop                                           ; $58f4: $00
    add hl, bc                                    ; $58f5: $09
    nop                                           ; $58f6: $00
    ld e, d                                       ; $58f7: $5a
    dec b                                         ; $58f8: $05
    ld a, [bc]                                    ; $58f9: $0a
    nop                                           ; $58fa: $00
    ld d, [hl]                                    ; $58fb: $56
    nop                                           ; $58fc: $00
    nop                                           ; $58fd: $00
    rrca                                          ; $58fe: $0f
    rst $38                                       ; $58ff: $ff
    nop                                           ; $5900: $00
    ld c, l                                       ; $5901: $4d
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    rrca                                          ; $5904: $0f
    ld b, l                                       ; $5905: $45
    ld bc, $0e2c                                  ; $5906: $01 $2c $0e
    ld bc, $0055                                  ; $5909: $01 $55 $00
    nop                                           ; $590c: $00
    ld h, d                                       ; $590d: $62
    dec a                                         ; $590e: $3d
    nop                                           ; $590f: $00
    ld a, c                                       ; $5910: $79
    inc b                                         ; $5911: $04
    ld [hl], $00                                  ; $5912: $36 $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    add hl, bc                                    ; $5919: $09
    nop                                           ; $591a: $00
    ld [$0405], sp                                ; $591b: $08 $05 $04
    nop                                           ; $591e: $00
    dec d                                         ; $591f: $15
    ld [hl], a                                    ; $5920: $77
    nop                                           ; $5921: $00
    inc sp                                        ; $5922: $33
    ld bc, $00cc                                  ; $5923: $01 $cc $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    ld e, a                                       ; $592b: $5f
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    add hl, bc                                    ; $592e: $09
    nop                                           ; $592f: $00
    ld b, e                                       ; $5930: $43
    dec b                                         ; $5931: $05
    dec b                                         ; $5932: $05
    nop                                           ; $5933: $00
    add hl, bc                                    ; $5934: $09
    dec b                                         ; $5935: $05
    dec bc                                        ; $5936: $0b
    dec b                                         ; $5937: $05
    inc bc                                        ; $5938: $03
    nop                                           ; $5939: $00
    dec d                                         ; $593a: $15
    ld b, a                                       ; $593b: $47
    nop                                           ; $593c: $00
    rlca                                          ; $593d: $07
    inc bc                                        ; $593e: $03
    add h                                         ; $593f: $84
    add hl, bc                                    ; $5940: $09
    nop                                           ; $5941: $00
    dec a                                         ; $5942: $3d
    dec b                                         ; $5943: $05
    inc b                                         ; $5944: $04
    nop                                           ; $5945: $00
    ld e, a                                       ; $5946: $5f
    ld bc, $7900                                  ; $5947: $01 $00 $79
    inc b                                         ; $594a: $04
    ld [hl], $00                                  ; $594b: $36 $00
    nop                                           ; $594d: $00
    nop                                           ; $594e: $00
    add hl, bc                                    ; $594f: $09
    nop                                           ; $5950: $00
    ld d, d                                       ; $5951: $52
    dec b                                         ; $5952: $05
    scf                                           ; $5953: $37
    nop                                           ; $5954: $00
    add hl, bc                                    ; $5955: $09
    db $10                                        ; $5956: $10
    ld bc, $1b05                                  ; $5957: $01 $05 $1b
    nop                                           ; $595a: $00
    inc de                                        ; $595b: $13
    ld bc, $144a                                  ; $595c: $01 $4a $14
    nop                                           ; $595f: $00
    ld [$0015], a                                 ; $5960: $ea $15 $00
    nop                                           ; $5963: $00
    ld d, $38                                     ; $5964: $16 $38
    nop                                           ; $5966: $00
    ld d, d                                       ; $5967: $52
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    dec de                                        ; $596a: $1b
    ld b, $00                                     ; $596b: $06 $00
    inc de                                        ; $596d: $13
    nop                                           ; $596e: $00
    ld [hl], $14                                  ; $596f: $36 $14
    nop                                           ; $5971: $00
    cp l                                          ; $5972: $bd
    dec d                                         ; $5973: $15
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    ld d, $39                                     ; $5976: $16 $39
    nop                                           ; $5978: $00
    ld d, d                                       ; $5979: $52
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    dec de                                        ; $597c: $1b
    ld [bc], a                                    ; $597d: $02
    nop                                           ; $597e: $00
    inc de                                        ; $597f: $13
    nop                                           ; $5980: $00
    ld [hl-], a                                   ; $5981: $32
    inc d                                         ; $5982: $14
    nop                                           ; $5983: $00
    ld [$0315], a                                 ; $5984: $ea $15 $03
    nop                                           ; $5987: $00
    ld d, $40                                     ; $5988: $16 $40
    nop                                           ; $598a: $00
    ld d, d                                       ; $598b: $52
    nop                                           ; $598c: $00
    nop                                           ; $598d: $00
    dec de                                        ; $598e: $1b
    ld [bc], a                                    ; $598f: $02
    nop                                           ; $5990: $00
    inc de                                        ; $5991: $13
    ld bc, $144f                                  ; $5992: $01 $4f $14
    nop                                           ; $5995: $00
    cp h                                          ; $5996: $bc
    dec d                                         ; $5997: $15
    inc b                                         ; $5998: $04
    nop                                           ; $5999: $00
    ld d, $41                                     ; $599a: $16 $41
    nop                                           ; $599c: $00
    ld d, d                                       ; $599d: $52
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    dec de                                        ; $59a0: $1b
    ld b, $00                                     ; $59a1: $06 $00
    ld e, a                                       ; $59a3: $5f
    ld bc, $0000                                  ; $59a4: $01 $00 $00
    nop                                           ; $59a7: $00
    nop                                           ; $59a8: $00
    inc de                                        ; $59a9: $13
    ld bc, $144a                                  ; $59aa: $01 $4a $14
    nop                                           ; $59ad: $00
    ld [$0015], a                                 ; $59ae: $ea $15 $00
    nop                                           ; $59b1: $00
    ld d, $38                                     ; $59b2: $16 $38
    nop                                           ; $59b4: $00
    ld d, d                                       ; $59b5: $52
    nop                                           ; $59b6: $00
    nop                                           ; $59b7: $00
    dec de                                        ; $59b8: $1b
    ld b, $00                                     ; $59b9: $06 $00
    inc de                                        ; $59bb: $13
    nop                                           ; $59bc: $00
    xor h                                         ; $59bd: $ac
    inc d                                         ; $59be: $14
    ld bc, $155c                                  ; $59bf: $01 $5c $15
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    ld d, $39                                     ; $59c4: $16 $39
    nop                                           ; $59c6: $00
    ld d, d                                       ; $59c7: $52
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    dec de                                        ; $59ca: $1b
    ld [bc], a                                    ; $59cb: $02
    nop                                           ; $59cc: $00
    inc de                                        ; $59cd: $13
    nop                                           ; $59ce: $00
    ld [hl-], a                                   ; $59cf: $32
    inc d                                         ; $59d0: $14
    nop                                           ; $59d1: $00
    ld [$0315], a                                 ; $59d2: $ea $15 $03
    nop                                           ; $59d5: $00
    ld d, $40                                     ; $59d6: $16 $40
    nop                                           ; $59d8: $00
    ld d, d                                       ; $59d9: $52
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    dec de                                        ; $59dc: $1b
    ld [bc], a                                    ; $59dd: $02
    nop                                           ; $59de: $00
    inc de                                        ; $59df: $13
    ld bc, $144f                                  ; $59e0: $01 $4f $14
    nop                                           ; $59e3: $00
    cp h                                          ; $59e4: $bc
    dec d                                         ; $59e5: $15
    inc b                                         ; $59e6: $04
    nop                                           ; $59e7: $00
    ld d, $41                                     ; $59e8: $16 $41
    nop                                           ; $59ea: $00
    ld d, d                                       ; $59eb: $52
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    dec de                                        ; $59ee: $1b
    ld b, $00                                     ; $59ef: $06 $00
    ld e, a                                       ; $59f1: $5f
    ld bc, $0000                                  ; $59f2: $01 $00 $00
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    add hl, bc                                    ; $59f7: $09
    nop                                           ; $59f8: $00
    scf                                           ; $59f9: $37
    dec b                                         ; $59fa: $05
    ld [$1300], sp                                ; $59fb: $08 $00 $13
    nop                                           ; $59fe: $00
    dec h                                         ; $59ff: $25
    inc d                                         ; $5a00: $14
    nop                                           ; $5a01: $00
    sbc e                                         ; $5a02: $9b
    dec d                                         ; $5a03: $15
    inc a                                         ; $5a04: $3c
    nop                                           ; $5a05: $00
    ld d, $08                                     ; $5a06: $16 $08
    nop                                           ; $5a08: $00
    ld d, d                                       ; $5a09: $52
    nop                                           ; $5a0a: $00
    nop                                           ; $5a0b: $00
    ld e, a                                       ; $5a0c: $5f
    ld bc, $0000                                  ; $5a0d: $01 $00 $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    add hl, bc                                    ; $5a12: $09
    nop                                           ; $5a13: $00
    add hl, sp                                    ; $5a14: $39
    dec b                                         ; $5a15: $05
    ld [$1300], sp                                ; $5a16: $08 $00 $13
    nop                                           ; $5a19: $00
    dec h                                         ; $5a1a: $25
    inc d                                         ; $5a1b: $14
    nop                                           ; $5a1c: $00
    sbc e                                         ; $5a1d: $9b
    dec d                                         ; $5a1e: $15
    inc a                                         ; $5a1f: $3c
    nop                                           ; $5a20: $00
    ld d, $08                                     ; $5a21: $16 $08
    nop                                           ; $5a23: $00
    ld d, d                                       ; $5a24: $52
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    ld e, a                                       ; $5a27: $5f
    ld bc, $0000                                  ; $5a28: $01 $00 $00
    nop                                           ; $5a2b: $00
    nop                                           ; $5a2c: $00
    add hl, bc                                    ; $5a2d: $09
    nop                                           ; $5a2e: $00
    ld e, d                                       ; $5a2f: $5a
    dec b                                         ; $5a30: $05
    ld [$1300], sp                                ; $5a31: $08 $00 $13
    nop                                           ; $5a34: $00
    dec h                                         ; $5a35: $25
    inc d                                         ; $5a36: $14
    nop                                           ; $5a37: $00
    sbc e                                         ; $5a38: $9b
    dec d                                         ; $5a39: $15
    inc a                                         ; $5a3a: $3c
    nop                                           ; $5a3b: $00
    ld d, $08                                     ; $5a3c: $16 $08
    nop                                           ; $5a3e: $00
    ld d, d                                       ; $5a3f: $52
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    ld e, a                                       ; $5a42: $5f
    ld bc, $0000                                  ; $5a43: $01 $00 $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    add hl, bc                                    ; $5a48: $09
    nop                                           ; $5a49: $00
    ld h, $05                                     ; $5a4a: $26 $05
    dec c                                         ; $5a4c: $0d
    nop                                           ; $5a4d: $00
    inc de                                        ; $5a4e: $13
    nop                                           ; $5a4f: $00
    dec h                                         ; $5a50: $25
    inc d                                         ; $5a51: $14
    nop                                           ; $5a52: $00
    ld sp, hl                                     ; $5a53: $f9
    dec d                                         ; $5a54: $15
    dec a                                         ; $5a55: $3d
    nop                                           ; $5a56: $00
    ld d, $08                                     ; $5a57: $16 $08
    nop                                           ; $5a59: $00
    ld d, d                                       ; $5a5a: $52
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    inc de                                        ; $5a5d: $13
    ld bc, $1459                                  ; $5a5e: $01 $59 $14
    nop                                           ; $5a61: $00
    sbc l                                         ; $5a62: $9d
    dec d                                         ; $5a63: $15
    dec sp                                        ; $5a64: $3b
    nop                                           ; $5a65: $00
    ld d, $08                                     ; $5a66: $16 $08
    nop                                           ; $5a68: $00
    ld d, d                                       ; $5a69: $52
    nop                                           ; $5a6a: $00
    nop                                           ; $5a6b: $00
    ld e, a                                       ; $5a6c: $5f
    ld bc, $0000                                  ; $5a6d: $01 $00 $00
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    add hl, bc                                    ; $5a72: $09
    nop                                           ; $5a73: $00
    ld [hl], $05                                  ; $5a74: $36 $05
    inc bc                                        ; $5a76: $03
    nop                                           ; $5a77: $00
    dec d                                         ; $5a78: $15
    ld b, a                                       ; $5a79: $47
    nop                                           ; $5a7a: $00
    rlca                                          ; $5a7b: $07
    inc bc                                        ; $5a7c: $03
    rst $08                                       ; $5a7d: $cf
    add hl, bc                                    ; $5a7e: $09
    nop                                           ; $5a7f: $00
    ld e, b                                       ; $5a80: $58
    dec b                                         ; $5a81: $05
    jr c, jr_00d_5a84                             ; $5a82: $38 $00

jr_00d_5a84:
    add hl, bc                                    ; $5a84: $09
    dec bc                                        ; $5a85: $0b
    ld bc, $2305                                  ; $5a86: $01 $05 $23
    nop                                           ; $5a89: $00
    ld d, [hl]                                    ; $5a8a: $56
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    rrca                                          ; $5a8d: $0f
    dec bc                                        ; $5a8e: $0b
    nop                                           ; $5a8f: $00
    add hl, bc                                    ; $5a90: $09
    add hl, bc                                    ; $5a91: $09
    ld bc, $0705                                  ; $5a92: $01 $05 $07
    nop                                           ; $5a95: $00
    inc de                                        ; $5a96: $13
    nop                                           ; $5a97: $00
    xor h                                         ; $5a98: $ac
    inc d                                         ; $5a99: $14
    nop                                           ; $5a9a: $00
    or a                                          ; $5a9b: $b7
    dec d                                         ; $5a9c: $15
    ld bc, $1600                                  ; $5a9d: $01 $00 $16
    ld e, d                                       ; $5aa0: $5a
    nop                                           ; $5aa1: $00
    ld d, d                                       ; $5aa2: $52
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    inc bc                                        ; $5aa5: $03
    ld b, $00                                     ; $5aa6: $06 $00
    inc de                                        ; $5aa8: $13
    nop                                           ; $5aa9: $00
    add a                                         ; $5aaa: $87
    inc d                                         ; $5aab: $14
    nop                                           ; $5aac: $00
    ld a, l                                       ; $5aad: $7d
    dec d                                         ; $5aae: $15
    ld bc, $1600                                  ; $5aaf: $01 $00 $16
    ld e, d                                       ; $5ab2: $5a
    nop                                           ; $5ab3: $00
    ld d, d                                       ; $5ab4: $52
    nop                                           ; $5ab5: $00
    nop                                           ; $5ab6: $00
    inc de                                        ; $5ab7: $13
    nop                                           ; $5ab8: $00
    ret z                                         ; $5ab9: $c8

    inc d                                         ; $5aba: $14
    ld bc, $1504                                  ; $5abb: $01 $04 $15
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    ld d, $39                                     ; $5ac0: $16 $39
    nop                                           ; $5ac2: $00
    ld d, d                                       ; $5ac3: $52
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    dec de                                        ; $5ac6: $1b
    inc b                                         ; $5ac7: $04
    nop                                           ; $5ac8: $00
    ld e, a                                       ; $5ac9: $5f
    ld bc, $1500                                  ; $5aca: $01 $00 $15
    inc b                                         ; $5acd: $04
    nop                                           ; $5ace: $00
    add hl, de                                    ; $5acf: $19
    nop                                           ; $5ad0: $00
    ld [hl-], a                                   ; $5ad1: $32
    dec de                                        ; $5ad2: $1b
    inc b                                         ; $5ad3: $04
    nop                                           ; $5ad4: $00
    rrca                                          ; $5ad5: $0f
    inc c                                         ; $5ad6: $0c
    ld bc, $0909                                  ; $5ad7: $01 $09 $09
    nop                                           ; $5ada: $00
    dec b                                         ; $5adb: $05
    inc b                                         ; $5adc: $04
    nop                                           ; $5add: $00
    dec d                                         ; $5ade: $15
    ld b, a                                       ; $5adf: $47
    nop                                           ; $5ae0: $00
    rlca                                          ; $5ae1: $07
    inc b                                         ; $5ae2: $04
    rst $28                                       ; $5ae3: $ef
    inc bc                                        ; $5ae4: $03
    inc bc                                        ; $5ae5: $03
    nop                                           ; $5ae6: $00
    dec d                                         ; $5ae7: $15
    ld b, a                                       ; $5ae8: $47
    nop                                           ; $5ae9: $00
    rlca                                          ; $5aea: $07
    dec b                                         ; $5aeb: $05
    rlca                                          ; $5aec: $07
    inc bc                                        ; $5aed: $03
    inc d                                         ; $5aee: $14
    nop                                           ; $5aef: $00
    inc de                                        ; $5af0: $13
    nop                                           ; $5af1: $00
    add a                                         ; $5af2: $87
    inc d                                         ; $5af3: $14
    nop                                           ; $5af4: $00
    ld a, l                                       ; $5af5: $7d
    dec d                                         ; $5af6: $15
    ld bc, $1600                                  ; $5af7: $01 $00 $16
    ld e, d                                       ; $5afa: $5a
    nop                                           ; $5afb: $00
    ld d, d                                       ; $5afc: $52
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    add hl, bc                                    ; $5aff: $09
    inc c                                         ; $5b00: $0c
    nop                                           ; $5b01: $00
    dec b                                         ; $5b02: $05
    rlca                                          ; $5b03: $07
    nop                                           ; $5b04: $00
    inc de                                        ; $5b05: $13
    nop                                           ; $5b06: $00
    add a                                         ; $5b07: $87
    inc d                                         ; $5b08: $14
    nop                                           ; $5b09: $00
    ld [hl], e                                    ; $5b0a: $73
    dec d                                         ; $5b0b: $15
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    ld d, $39                                     ; $5b0e: $16 $39
    nop                                           ; $5b10: $00
    ld d, d                                       ; $5b11: $52
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    inc bc                                        ; $5b14: $03
    ld b, $00                                     ; $5b15: $06 $00
    inc de                                        ; $5b17: $13
    nop                                           ; $5b18: $00
    ret z                                         ; $5b19: $c8

    inc d                                         ; $5b1a: $14
    ld bc, $1536                                  ; $5b1b: $01 $36 $15
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    ld d, $39                                     ; $5b20: $16 $39
    nop                                           ; $5b22: $00
    ld d, d                                       ; $5b23: $52
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    dec de                                        ; $5b26: $1b
    inc b                                         ; $5b27: $04
    nop                                           ; $5b28: $00
    ld e, a                                       ; $5b29: $5f
    ld bc, $0000                                  ; $5b2a: $01 $00 $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    ld d, [hl]                                    ; $5b2f: $56
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    rla                                           ; $5b32: $17
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    inc de                                        ; $5b35: $13
    nop                                           ; $5b36: $00
    or h                                          ; $5b37: $b4
    inc d                                         ; $5b38: $14
    nop                                           ; $5b39: $00
    ld [hl], a                                    ; $5b3a: $77
    dec d                                         ; $5b3b: $15
    ccf                                           ; $5b3c: $3f
    nop                                           ; $5b3d: $00
    ld d, $08                                     ; $5b3e: $16 $08
    nop                                           ; $5b40: $00
    ld d, d                                       ; $5b41: $52
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    ld e, a                                       ; $5b44: $5f
    ld bc, $1300                                  ; $5b45: $01 $00 $13
    nop                                           ; $5b48: $00
    ld a, a                                       ; $5b49: $7f
    ld [hl], c                                    ; $5b4a: $71
    nop                                           ; $5b4b: $00
    and h                                         ; $5b4c: $a4
    dec de                                        ; $5b4d: $1b
    ld [bc], a                                    ; $5b4e: $02
    nop                                           ; $5b4f: $00
    dec d                                         ; $5b50: $15
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    inc sp                                        ; $5b53: $33
    rlca                                          ; $5b54: $07
    db $e3                                        ; $5b55: $e3
    dec d                                         ; $5b56: $15
    nop                                           ; $5b57: $00
    nop                                           ; $5b58: $00
    inc sp                                        ; $5b59: $33
    rlca                                          ; $5b5a: $07
    db $e4                                        ; $5b5b: $e4
    jr c, @+$70                                   ; $5b5c: $38 $6e

    nop                                           ; $5b5e: $00
    ld e, $08                                     ; $5b5f: $1e $08
    nop                                           ; $5b61: $00
    rrca                                          ; $5b62: $0f
    ld c, c                                       ; $5b63: $49
    ld bc, $5c62                                  ; $5b64: $01 $62 $5c
    nop                                           ; $5b67: $00
    ld c, l                                       ; $5b68: $4d
    nop                                           ; $5b69: $00
    nop                                           ; $5b6a: $00
    inc l                                         ; $5b6b: $2c
    dec d                                         ; $5b6c: $15
    inc bc                                        ; $5b6d: $03
    ld d, a                                       ; $5b6e: $57
    nop                                           ; $5b6f: $00
    nop                                           ; $5b70: $00
    ld d, l                                       ; $5b71: $55
    rlca                                          ; $5b72: $07
    nop                                           ; $5b73: $00
    ld a, c                                       ; $5b74: $79
    ld [$002a], sp                                ; $5b75: $08 $2a $00
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    ld d, [hl]                                    ; $5b7a: $56
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    rla                                           ; $5b7d: $17
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    inc de                                        ; $5b80: $13
    nop                                           ; $5b81: $00
    ld [hl], e                                    ; $5b82: $73
    ld e, b                                       ; $5b83: $58
    nop                                           ; $5b84: $00
    and e                                         ; $5b85: $a3
    dec de                                        ; $5b86: $1b
    ld b, $00                                     ; $5b87: $06 $00
    inc de                                        ; $5b89: $13
    nop                                           ; $5b8a: $00
    add a                                         ; $5b8b: $87
    inc d                                         ; $5b8c: $14
    nop                                           ; $5b8d: $00
    ld [hl], e                                    ; $5b8e: $73
    dec d                                         ; $5b8f: $15
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    ld d, $39                                     ; $5b92: $16 $39
    nop                                           ; $5b94: $00
    ld d, d                                       ; $5b95: $52
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    dec de                                        ; $5b98: $1b
    ld [bc], a                                    ; $5b99: $02
    nop                                           ; $5b9a: $00
    inc de                                        ; $5b9b: $13
    nop                                           ; $5b9c: $00
    and e                                         ; $5b9d: $a3
    inc d                                         ; $5b9e: $14
    nop                                           ; $5b9f: $00
    ld a, l                                       ; $5ba0: $7d
    dec d                                         ; $5ba1: $15
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    ld d, $5a                                     ; $5ba4: $16 $5a
    nop                                           ; $5ba6: $00
    ld d, d                                       ; $5ba7: $52
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    inc de                                        ; $5baa: $13
    nop                                           ; $5bab: $00
    add a                                         ; $5bac: $87
    inc d                                         ; $5bad: $14
    nop                                           ; $5bae: $00
    ld a, l                                       ; $5baf: $7d
    dec d                                         ; $5bb0: $15
    ld bc, $1600                                  ; $5bb1: $01 $00 $16
    ld e, d                                       ; $5bb4: $5a
    nop                                           ; $5bb5: $00
    ld d, d                                       ; $5bb6: $52
    nop                                           ; $5bb7: $00
    nop                                           ; $5bb8: $00
    ld e, a                                       ; $5bb9: $5f
    ld bc, $2700                                  ; $5bba: $01 $00 $27
    nop                                           ; $5bbd: $00
    rrca                                          ; $5bbe: $0f
    dec d                                         ; $5bbf: $15
    dec d                                         ; $5bc0: $15
    nop                                           ; $5bc1: $00
    inc sp                                        ; $5bc2: $33
    inc b                                         ; $5bc3: $04
    rlca                                          ; $5bc4: $07
    dec d                                         ; $5bc5: $15
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    inc sp                                        ; $5bc8: $33
    inc b                                         ; $5bc9: $04
    ld [$1515], sp                                ; $5bca: $08 $15 $15
    nop                                           ; $5bcd: $00
    inc sp                                        ; $5bce: $33
    inc b                                         ; $5bcf: $04
    add hl, bc                                    ; $5bd0: $09
    daa                                           ; $5bd1: $27
    nop                                           ; $5bd2: $00
    ld a, [bc]                                    ; $5bd3: $0a
    ld e, a                                       ; $5bd4: $5f
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    inc de                                        ; $5bd7: $13
    nop                                           ; $5bd8: $00
    sub a                                         ; $5bd9: $97
    inc d                                         ; $5bda: $14
    nop                                           ; $5bdb: $00
    ld e, [hl]                                    ; $5bdc: $5e
    dec d                                         ; $5bdd: $15
    nop                                           ; $5bde: $00
    nop                                           ; $5bdf: $00
    ld d, $2f                                     ; $5be0: $16 $2f
    nop                                           ; $5be2: $00
    ld d, d                                       ; $5be3: $52
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    dec de                                        ; $5be6: $1b
    inc b                                         ; $5be7: $04
    nop                                           ; $5be8: $00
    ld e, a                                       ; $5be9: $5f
    ld bc, $2700                                  ; $5bea: $01 $00 $27
    nop                                           ; $5bed: $00
    dec b                                         ; $5bee: $05
    ld l, $0b                                     ; $5bef: $2e $0b
    nop                                           ; $5bf1: $00
    rla                                           ; $5bf2: $17
    nop                                           ; $5bf3: $00
    nop                                           ; $5bf4: $00
    dec de                                        ; $5bf5: $1b
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    rla                                           ; $5bf8: $17
    add hl, sp                                    ; $5bf9: $39
    nop                                           ; $5bfa: $00
    dec de                                        ; $5bfb: $1b
    nop                                           ; $5bfc: $00
    nop                                           ; $5bfd: $00
    daa                                           ; $5bfe: $27
    nop                                           ; $5bff: $00
    dec b                                         ; $5c00: $05
    dec d                                         ; $5c01: $15
    ld b, e                                       ; $5c02: $43
    nop                                           ; $5c03: $00
    inc sp                                        ; $5c04: $33
    inc b                                         ; $5c05: $04
    ld a, [bc]                                    ; $5c06: $0a
    dec d                                         ; $5c07: $15
    nop                                           ; $5c08: $00
    nop                                           ; $5c09: $00
    inc sp                                        ; $5c0a: $33
    inc b                                         ; $5c0b: $04
    dec bc                                        ; $5c0c: $0b
    dec d                                         ; $5c0d: $15
    ld b, e                                       ; $5c0e: $43
    nop                                           ; $5c0f: $00
    inc sp                                        ; $5c10: $33
    inc b                                         ; $5c11: $04
    inc c                                         ; $5c12: $0c
    ld l, $0a                                     ; $5c13: $2e $0a
    nop                                           ; $5c15: $00
    rla                                           ; $5c16: $17
    cpl                                           ; $5c17: $2f
    nop                                           ; $5c18: $00
    dec d                                         ; $5c19: $15
    inc b                                         ; $5c1a: $04
    nop                                           ; $5c1b: $00
    add hl, de                                    ; $5c1c: $19
    nop                                           ; $5c1d: $00
    inc e                                         ; $5c1e: $1c
    dec de                                        ; $5c1f: $1b
    ld [bc], a                                    ; $5c20: $02
    nop                                           ; $5c21: $00
    ld e, a                                       ; $5c22: $5f
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    rla                                           ; $5c25: $17
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    dec de                                        ; $5c28: $1b
    ld b, $00                                     ; $5c29: $06 $00
    rla                                           ; $5c2b: $17
    add hl, sp                                    ; $5c2c: $39
    nop                                           ; $5c2d: $00
    dec de                                        ; $5c2e: $1b
    ld [bc], a                                    ; $5c2f: $02
    nop                                           ; $5c30: $00
    rla                                           ; $5c31: $17
    cpl                                           ; $5c32: $2f
    nop                                           ; $5c33: $00
    ld e, a                                       ; $5c34: $5f
    ld bc, $7600                                  ; $5c35: $01 $00 $76
    ld e, d                                       ; $5c38: $5a
    nop                                           ; $5c39: $00
    ld e, $5a                                     ; $5c3a: $1e $5a
    nop                                           ; $5c3c: $00
    rla                                           ; $5c3d: $17
    cpl                                           ; $5c3e: $2f
    nop                                           ; $5c3f: $00
    dec d                                         ; $5c40: $15
    inc b                                         ; $5c41: $04
    nop                                           ; $5c42: $00
    add hl, de                                    ; $5c43: $19
    nop                                           ; $5c44: $00
    inc e                                         ; $5c45: $1c
    ld e, a                                       ; $5c46: $5f
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    rla                                           ; $5c49: $17
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    dec de                                        ; $5c4c: $1b
    inc b                                         ; $5c4d: $04
    nop                                           ; $5c4e: $00
    rla                                           ; $5c4f: $17
    add hl, sp                                    ; $5c50: $39
    nop                                           ; $5c51: $00
    dec de                                        ; $5c52: $1b
    inc b                                         ; $5c53: $04
    nop                                           ; $5c54: $00
    rla                                           ; $5c55: $17
    cpl                                           ; $5c56: $2f
    nop                                           ; $5c57: $00
    ld e, a                                       ; $5c58: $5f
    ld bc, $1b00                                  ; $5c59: $01 $00 $1b
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    dec d                                         ; $5c5e: $15
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    inc sp                                        ; $5c61: $33
    inc b                                         ; $5c62: $04
    dec c                                         ; $5c63: $0d
    dec d                                         ; $5c64: $15
    ld b, e                                       ; $5c65: $43
    nop                                           ; $5c66: $00
    inc sp                                        ; $5c67: $33
    inc b                                         ; $5c68: $04
    ld c, $27                                     ; $5c69: $0e $27
    nop                                           ; $5c6b: $00
    ld b, $2e                                     ; $5c6c: $06 $2e
    inc a                                         ; $5c6e: $3c
    nop                                           ; $5c6f: $00
    rla                                           ; $5c70: $17
    cpl                                           ; $5c71: $2f
    nop                                           ; $5c72: $00
    ld e, $2f                                     ; $5c73: $1e $2f
    nop                                           ; $5c75: $00
    daa                                           ; $5c76: $27
    nop                                           ; $5c77: $00
    ld b, $17                                     ; $5c78: $06 $17
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    dec de                                        ; $5c7c: $1b
    ld b, $00                                     ; $5c7d: $06 $00
    rla                                           ; $5c7f: $17
    add hl, sp                                    ; $5c80: $39
    nop                                           ; $5c81: $00
    dec de                                        ; $5c82: $1b
    ld [bc], a                                    ; $5c83: $02
    nop                                           ; $5c84: $00
    dec d                                         ; $5c85: $15
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00
    inc sp                                        ; $5c88: $33
    inc b                                         ; $5c89: $04
    rrca                                          ; $5c8a: $0f
    dec d                                         ; $5c8b: $15
    dec d                                         ; $5c8c: $15
    nop                                           ; $5c8d: $00
    inc sp                                        ; $5c8e: $33
    inc b                                         ; $5c8f: $04
    db $10                                        ; $5c90: $10
    ld d, a                                       ; $5c91: $57
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00
    ld h, d                                       ; $5c94: $62
    ld e, b                                       ; $5c95: $58
    nop                                           ; $5c96: $00
    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    nop                                           ; $5c99: $00
    dec d                                         ; $5c9a: $15
    dec d                                         ; $5c9b: $15
    nop                                           ; $5c9c: $00
    inc sp                                        ; $5c9d: $33
    inc b                                         ; $5c9e: $04
    ld [hl+], a                                   ; $5c9f: $22
    dec d                                         ; $5ca0: $15
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    inc sp                                        ; $5ca3: $33
    inc b                                         ; $5ca4: $04
    inc hl                                        ; $5ca5: $23
    dec d                                         ; $5ca6: $15
    dec d                                         ; $5ca7: $15
    nop                                           ; $5ca8: $00
    inc sp                                        ; $5ca9: $33
    inc b                                         ; $5caa: $04
    inc h                                         ; $5cab: $24
    ld d, a                                       ; $5cac: $57
    nop                                           ; $5cad: $00
    nop                                           ; $5cae: $00
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    dec d                                         ; $5cb2: $15
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    inc sp                                        ; $5cb5: $33
    inc b                                         ; $5cb6: $04
    dec h                                         ; $5cb7: $25
    dec d                                         ; $5cb8: $15
    dec d                                         ; $5cb9: $15
    nop                                           ; $5cba: $00
    inc sp                                        ; $5cbb: $33
    inc b                                         ; $5cbc: $04
    ld h, $17                                     ; $5cbd: $26 $17
    add hl, sp                                    ; $5cbf: $39
    nop                                           ; $5cc0: $00
    ld e, [hl]                                    ; $5cc1: $5e
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    dec d                                         ; $5cc4: $15
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    add hl, de                                    ; $5cc7: $19
    nop                                           ; $5cc8: $00
    add d                                         ; $5cc9: $82
    ld e, [hl]                                    ; $5cca: $5e
    ld bc, $1700                                  ; $5ccb: $01 $00 $17
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    dec d                                         ; $5cd0: $15
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    add hl, de                                    ; $5cd3: $19
    nop                                           ; $5cd4: $00
    add d                                         ; $5cd5: $82
    rla                                           ; $5cd6: $17
    add hl, sp                                    ; $5cd7: $39
    nop                                           ; $5cd8: $00
    ld e, [hl]                                    ; $5cd9: $5e
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    dec d                                         ; $5cdc: $15
    ld b, $00                                     ; $5cdd: $06 $00
    add hl, de                                    ; $5cdf: $19
    nop                                           ; $5ce0: $00
    inc e                                         ; $5ce1: $1c
    ld e, [hl]                                    ; $5ce2: $5e
    ld bc, $1700                                  ; $5ce3: $01 $00 $17
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    dec d                                         ; $5ce8: $15
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    add hl, de                                    ; $5ceb: $19
    nop                                           ; $5cec: $00
    inc e                                         ; $5ced: $1c
    rla                                           ; $5cee: $17
    add hl, sp                                    ; $5cef: $39
    nop                                           ; $5cf0: $00
    dec d                                         ; $5cf1: $15
    ld b, $00                                     ; $5cf2: $06 $00
    add hl, de                                    ; $5cf4: $19
    nop                                           ; $5cf5: $00
    ld [$021b], sp                                ; $5cf6: $08 $1b $02
    nop                                           ; $5cf9: $00
    rla                                           ; $5cfa: $17
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00
    dec d                                         ; $5cfd: $15
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    add hl, de                                    ; $5d00: $19
    nop                                           ; $5d01: $00
    jr jr_00d_5d1f                                ; $5d02: $18 $1b

    inc b                                         ; $5d04: $04
    nop                                           ; $5d05: $00
    daa                                           ; $5d06: $27
    nop                                           ; $5d07: $00
    inc b                                         ; $5d08: $04
    inc de                                        ; $5d09: $13
    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    inc d                                         ; $5d0c: $14
    nop                                           ; $5d0d: $00
    dec b                                         ; $5d0e: $05
    dec d                                         ; $5d0f: $15
    nop                                           ; $5d10: $00
    nop                                           ; $5d11: $00
    ld d, $5a                                     ; $5d12: $16 $5a
    ld bc, $0027                                  ; $5d14: $01 $27 $00
    inc c                                         ; $5d17: $0c
    dec d                                         ; $5d18: $15
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    inc sp                                        ; $5d1b: $33
    inc b                                         ; $5d1c: $04
    daa                                           ; $5d1d: $27
    rla                                           ; $5d1e: $17

jr_00d_5d1f:
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    ld hl, $0036                                  ; $5d21: $21 $36 $00
    daa                                           ; $5d24: $27
    nop                                           ; $5d25: $00
    add hl, de                                    ; $5d26: $19
    halt                                          ; $5d27: $76
    ld e, d                                       ; $5d28: $5a
    nop                                           ; $5d29: $00
    ld hl, $0039                                  ; $5d2a: $21 $39 $00
    rla                                           ; $5d2d: $17
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    dec de                                        ; $5d30: $1b
    inc b                                         ; $5d31: $04
    nop                                           ; $5d32: $00
    daa                                           ; $5d33: $27
    nop                                           ; $5d34: $00
    dec b                                         ; $5d35: $05
    dec d                                         ; $5d36: $15
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    inc sp                                        ; $5d39: $33
    inc b                                         ; $5d3a: $04
    jr z, jr_00d_5d75                             ; $5d3b: $28 $38

    ld l, d                                       ; $5d3d: $6a
    nop                                           ; $5d3e: $00
    daa                                           ; $5d3f: $27
    nop                                           ; $5d40: $00
    rlca                                          ; $5d41: $07
    rla                                           ; $5d42: $17
    add hl, sp                                    ; $5d43: $39
    nop                                           ; $5d44: $00
    ld hl, $0038                                  ; $5d45: $21 $38 $00
    daa                                           ; $5d48: $27
    nop                                           ; $5d49: $00
    add hl, de                                    ; $5d4a: $19
    halt                                          ; $5d4b: $76
    ld e, d                                       ; $5d4c: $5a
    ld bc, $3c21                                  ; $5d4d: $01 $21 $3c
    nop                                           ; $5d50: $00
    rla                                           ; $5d51: $17
    add hl, sp                                    ; $5d52: $39
    nop                                           ; $5d53: $00
    dec de                                        ; $5d54: $1b
    ld [bc], a                                    ; $5d55: $02
    nop                                           ; $5d56: $00
    daa                                           ; $5d57: $27
    nop                                           ; $5d58: $00
    dec b                                         ; $5d59: $05
    dec d                                         ; $5d5a: $15
    dec d                                         ; $5d5b: $15
    nop                                           ; $5d5c: $00
    inc sp                                        ; $5d5d: $33
    inc b                                         ; $5d5e: $04
    ld a, [hl+]                                   ; $5d5f: $2a
    dec d                                         ; $5d60: $15
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    inc sp                                        ; $5d63: $33
    inc b                                         ; $5d64: $04
    dec hl                                        ; $5d65: $2b
    rla                                           ; $5d66: $17
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    ld hl, $0036                                  ; $5d69: $21 $36 $00
    daa                                           ; $5d6c: $27
    nop                                           ; $5d6d: $00
    add hl, de                                    ; $5d6e: $19
    halt                                          ; $5d6f: $76
    ld e, d                                       ; $5d70: $5a
    nop                                           ; $5d71: $00
    ld hl, $003a                                  ; $5d72: $21 $3a $00

jr_00d_5d75:
    rla                                           ; $5d75: $17
    nop                                           ; $5d76: $00
    nop                                           ; $5d77: $00
    dec de                                        ; $5d78: $1b
    inc b                                         ; $5d79: $04
    nop                                           ; $5d7a: $00
    daa                                           ; $5d7b: $27
    nop                                           ; $5d7c: $00
    dec b                                         ; $5d7d: $05
    dec d                                         ; $5d7e: $15
    nop                                           ; $5d7f: $00
    nop                                           ; $5d80: $00
    inc sp                                        ; $5d81: $33
    inc b                                         ; $5d82: $04
    inc l                                         ; $5d83: $2c
    dec d                                         ; $5d84: $15
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    inc sp                                        ; $5d87: $33
    inc b                                         ; $5d88: $04
    dec l                                         ; $5d89: $2d
    jr c, jr_00d_5def                             ; $5d8a: $38 $63

    nop                                           ; $5d8c: $00
    rla                                           ; $5d8d: $17
    nop                                           ; $5d8e: $00
    nop                                           ; $5d8f: $00
    ld hl, $0036                                  ; $5d90: $21 $36 $00
    daa                                           ; $5d93: $27
    nop                                           ; $5d94: $00
    add hl, de                                    ; $5d95: $19
    halt                                          ; $5d96: $76
    ld e, d                                       ; $5d97: $5a
    nop                                           ; $5d98: $00
    ld hl, $003b                                  ; $5d99: $21 $3b $00
    rla                                           ; $5d9c: $17
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    dec de                                        ; $5d9f: $1b
    inc b                                         ; $5da0: $04
    nop                                           ; $5da1: $00
    daa                                           ; $5da2: $27
    nop                                           ; $5da3: $00
    dec b                                         ; $5da4: $05
    dec d                                         ; $5da5: $15
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    inc sp                                        ; $5da8: $33
    inc b                                         ; $5da9: $04
    ld l, $15                                     ; $5daa: $2e $15
    dec d                                         ; $5dac: $15
    nop                                           ; $5dad: $00
    inc sp                                        ; $5dae: $33
    inc b                                         ; $5daf: $04
    cpl                                           ; $5db0: $2f
    jr c, jr_00d_5e06                             ; $5db1: $38 $53

    nop                                           ; $5db3: $00
    inc a                                         ; $5db4: $3c
    ld c, c                                       ; $5db5: $49
    nop                                           ; $5db6: $00
    dec d                                         ; $5db7: $15
    nop                                           ; $5db8: $00
    nop                                           ; $5db9: $00
    inc sp                                        ; $5dba: $33
    inc b                                         ; $5dbb: $04
    jr nc, jr_00d_5dd3                            ; $5dbc: $30 $15

    dec d                                         ; $5dbe: $15
    nop                                           ; $5dbf: $00
    inc sp                                        ; $5dc0: $33
    inc b                                         ; $5dc1: $04
    ld sp, $0015                                  ; $5dc2: $31 $15 $00
    nop                                           ; $5dc5: $00
    inc sp                                        ; $5dc6: $33
    inc b                                         ; $5dc7: $04
    ld [hl-], a                                   ; $5dc8: $32
    rla                                           ; $5dc9: $17
    add hl, sp                                    ; $5dca: $39
    nop                                           ; $5dcb: $00
    ld hl, $0038                                  ; $5dcc: $21 $38 $00
    daa                                           ; $5dcf: $27
    nop                                           ; $5dd0: $00
    add hl, de                                    ; $5dd1: $19
    halt                                          ; $5dd2: $76

jr_00d_5dd3:
    ld e, d                                       ; $5dd3: $5a
    ld bc, $5a1e                                  ; $5dd4: $01 $1e $5a
    nop                                           ; $5dd7: $00
    rla                                           ; $5dd8: $17
    add hl, sp                                    ; $5dd9: $39
    nop                                           ; $5dda: $00
    dec de                                        ; $5ddb: $1b
    ld [bc], a                                    ; $5ddc: $02
    nop                                           ; $5ddd: $00
    daa                                           ; $5dde: $27
    nop                                           ; $5ddf: $00
    dec b                                         ; $5de0: $05
    dec d                                         ; $5de1: $15
    dec d                                         ; $5de2: $15
    nop                                           ; $5de3: $00
    inc sp                                        ; $5de4: $33
    inc b                                         ; $5de5: $04
    inc sp                                        ; $5de6: $33
    rla                                           ; $5de7: $17
    nop                                           ; $5de8: $00
    nop                                           ; $5de9: $00
    ld hl, $0036                                  ; $5dea: $21 $36 $00
    daa                                           ; $5ded: $27
    nop                                           ; $5dee: $00

jr_00d_5def:
    add hl, de                                    ; $5def: $19
    halt                                          ; $5df0: $76
    ld e, d                                       ; $5df1: $5a
    nop                                           ; $5df2: $00
    ld e, $5a                                     ; $5df3: $1e $5a
    nop                                           ; $5df5: $00
    rla                                           ; $5df6: $17
    nop                                           ; $5df7: $00
    nop                                           ; $5df8: $00
    dec de                                        ; $5df9: $1b
    inc b                                         ; $5dfa: $04
    nop                                           ; $5dfb: $00
    daa                                           ; $5dfc: $27
    nop                                           ; $5dfd: $00
    dec b                                         ; $5dfe: $05
    rla                                           ; $5dff: $17
    add hl, sp                                    ; $5e00: $39
    nop                                           ; $5e01: $00
    dec de                                        ; $5e02: $1b
    ld [bc], a                                    ; $5e03: $02
    nop                                           ; $5e04: $00
    dec d                                         ; $5e05: $15

jr_00d_5e06:
    dec d                                         ; $5e06: $15
    nop                                           ; $5e07: $00
    inc sp                                        ; $5e08: $33
    inc b                                         ; $5e09: $04
    inc [hl]                                      ; $5e0a: $34
    rla                                           ; $5e0b: $17
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    dec de                                        ; $5e0e: $1b
    ld b, $00                                     ; $5e0f: $06 $00
    dec d                                         ; $5e11: $15
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00
    inc sp                                        ; $5e14: $33
    inc b                                         ; $5e15: $04
    dec [hl]                                      ; $5e16: $35
    dec d                                         ; $5e17: $15
    dec d                                         ; $5e18: $15
    nop                                           ; $5e19: $00
    inc sp                                        ; $5e1a: $33
    inc b                                         ; $5e1b: $04
    ld [hl], $38                                  ; $5e1c: $36 $38
    ld l, [hl]                                    ; $5e1e: $6e
    nop                                           ; $5e1f: $00
    rrca                                          ; $5e20: $0f
    rst $38                                       ; $5e21: $ff
    inc b                                         ; $5e22: $04
    rla                                           ; $5e23: $17
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    dec d                                         ; $5e26: $15
    inc b                                         ; $5e27: $04
    nop                                           ; $5e28: $00
    add hl, de                                    ; $5e29: $19
    nop                                           ; $5e2a: $00
    ld [bc], a                                    ; $5e2b: $02
    dec de                                        ; $5e2c: $1b
    inc b                                         ; $5e2d: $04
    nop                                           ; $5e2e: $00
    daa                                           ; $5e2f: $27
    nop                                           ; $5e30: $00
    ld a, [bc]                                    ; $5e31: $0a
    dec d                                         ; $5e32: $15
    dec d                                         ; $5e33: $15
    nop                                           ; $5e34: $00
    inc sp                                        ; $5e35: $33
    inc b                                         ; $5e36: $04
    scf                                           ; $5e37: $37
    dec d                                         ; $5e38: $15
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    inc sp                                        ; $5e3b: $33
    inc b                                         ; $5e3c: $04
    jr c, jr_00d_5e54                             ; $5e3d: $38 $15

    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    inc sp                                        ; $5e41: $33
    inc b                                         ; $5e42: $04
    add hl, sp                                    ; $5e43: $39
    dec d                                         ; $5e44: $15
    dec d                                         ; $5e45: $15
    nop                                           ; $5e46: $00
    inc sp                                        ; $5e47: $33
    inc b                                         ; $5e48: $04
    ld a, [hl-]                                   ; $5e49: $3a
    rrca                                          ; $5e4a: $0f
    rst $38                                       ; $5e4b: $ff
    nop                                           ; $5e4c: $00
    rla                                           ; $5e4d: $17
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    dec d                                         ; $5e50: $15
    ld b, $00                                     ; $5e51: $06 $00
    add hl, de                                    ; $5e53: $19

jr_00d_5e54:
    nop                                           ; $5e54: $00
    ld [bc], a                                    ; $5e55: $02
    dec de                                        ; $5e56: $1b
    ld b, $00                                     ; $5e57: $06 $00
    daa                                           ; $5e59: $27
    nop                                           ; $5e5a: $00
    ld a, [bc]                                    ; $5e5b: $0a
    dec d                                         ; $5e5c: $15
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    inc sp                                        ; $5e5f: $33
    inc b                                         ; $5e60: $04
    dec sp                                        ; $5e61: $3b
    daa                                           ; $5e62: $27
    nop                                           ; $5e63: $00
    rrca                                          ; $5e64: $0f
    add hl, sp                                    ; $5e65: $39
    ld h, l                                       ; $5e66: $65
    nop                                           ; $5e67: $00
    ld h, d                                       ; $5e68: $62
    scf                                           ; $5e69: $37
    nop                                           ; $5e6a: $00
    rrca                                          ; $5e6b: $0f
    ld b, h                                       ; $5e6c: $44
    ld bc, $112c                                  ; $5e6d: $01 $2c $11
    ld bc, $014d                                  ; $5e70: $01 $4d $01
    nop                                           ; $5e73: $00
    ld d, a                                       ; $5e74: $57
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    ld d, l                                       ; $5e77: $55
    rlca                                          ; $5e78: $07
    nop                                           ; $5e79: $00
    ld a, c                                       ; $5e7a: $79
    ld bc, $0046                                  ; $5e7b: $01 $46 $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    ld e, a                                       ; $5e80: $5f
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    add hl, bc                                    ; $5e83: $09
    nop                                           ; $5e84: $00
    scf                                           ; $5e85: $37
    dec b                                         ; $5e86: $05
    ld [de], a                                    ; $5e87: $12
    nop                                           ; $5e88: $00
    add hl, bc                                    ; $5e89: $09
    inc c                                         ; $5e8a: $0c
    ld bc, $0305                                  ; $5e8b: $01 $05 $03
    nop                                           ; $5e8e: $00
    ld e, a                                       ; $5e8f: $5f
    ld bc, $0000                                  ; $5e90: $01 $00 $00
    nop                                           ; $5e93: $00
    nop                                           ; $5e94: $00
    ld d, [hl]                                    ; $5e95: $56
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    rla                                           ; $5e98: $17
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    dec de                                        ; $5e9b: $1b
    inc b                                         ; $5e9c: $04
    nop                                           ; $5e9d: $00
    ld e, a                                       ; $5e9e: $5f
    nop                                           ; $5e9f: $00
    nop                                           ; $5ea0: $00
    dec d                                         ; $5ea1: $15
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    inc sp                                        ; $5ea4: $33
    inc b                                         ; $5ea5: $04
    inc a                                         ; $5ea6: $3c
    rrca                                          ; $5ea7: $0f
    rst $38                                       ; $5ea8: $ff
    inc b                                         ; $5ea9: $04
    dec d                                         ; $5eaa: $15
    inc b                                         ; $5eab: $04
    nop                                           ; $5eac: $00
    add hl, de                                    ; $5ead: $19
    nop                                           ; $5eae: $00
    ld [bc], a                                    ; $5eaf: $02
    dec de                                        ; $5eb0: $1b
    inc b                                         ; $5eb1: $04
    nop                                           ; $5eb2: $00
    ld d, a                                       ; $5eb3: $57
    nop                                           ; $5eb4: $00
    nop                                           ; $5eb5: $00
    rrca                                          ; $5eb6: $0f
    inc c                                         ; $5eb7: $0c
    ld bc, $0000                                  ; $5eb8: $01 $00 $00
    nop                                           ; $5ebb: $00
    ld e, a                                       ; $5ebc: $5f
    ld bc, $0000                                  ; $5ebd: $01 $00 $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    ld d, h                                       ; $5ec2: $54
    inc b                                         ; $5ec3: $04
    ld bc, $0000                                  ; $5ec4: $01 $00 $00
    nop                                           ; $5ec7: $00
    inc c                                         ; $5ec8: $0c
    nop                                           ; $5ec9: $00
    nop                                           ; $5eca: $00
    ld bc, $0135                                  ; $5ecb: $01 $35 $01
    add b                                         ; $5ece: $80
    inc bc                                        ; $5ecf: $03
    dec de                                        ; $5ed0: $1b
    inc bc                                        ; $5ed1: $03
    ccf                                           ; $5ed2: $3f
    inc bc                                        ; $5ed3: $03
    ld c, [hl]                                    ; $5ed4: $4e
    inc bc                                        ; $5ed5: $03
    ld [hl], d                                    ; $5ed6: $72
    dec b                                         ; $5ed7: $05
    add sp, $05                                   ; $5ed8: $e8 $05
    ld a, [$8a06]                                 ; $5eda: $fa $06 $8a
    rlca                                          ; $5edd: $07
    add hl, hl                                    ; $5ede: $29
    rlca                                          ; $5edf: $07
    ld e, h                                       ; $5ee0: $5c
    ld e, a                                       ; $5ee1: $5f
    nop                                           ; $5ee2: $00
    nop                                           ; $5ee3: $00
    add hl, bc                                    ; $5ee4: $09
    nop                                           ; $5ee5: $00
    ld d, d                                       ; $5ee6: $52
    dec b                                         ; $5ee7: $05
    ld [de], a                                    ; $5ee8: $12
    nop                                           ; $5ee9: $00
    add hl, bc                                    ; $5eea: $09
    rrca                                          ; $5eeb: $0f
    ld bc, $0305                                  ; $5eec: $01 $05 $03
    nop                                           ; $5eef: $00
    ld e, a                                       ; $5ef0: $5f
    ld bc, $0000                                  ; $5ef1: $01 $00 $00
    nop                                           ; $5ef4: $00
    nop                                           ; $5ef5: $00
    ld d, [hl]                                    ; $5ef6: $56
    nop                                           ; $5ef7: $00
    nop                                           ; $5ef8: $00
    rla                                           ; $5ef9: $17
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    dec de                                        ; $5efc: $1b
    ld b, $00                                     ; $5efd: $06 $00
    ld e, a                                       ; $5eff: $5f
    ld bc, $1500                                  ; $5f00: $01 $00 $15
    ccf                                           ; $5f03: $3f
    nop                                           ; $5f04: $00
    inc sp                                        ; $5f05: $33
    ld bc, $15b5                                  ; $5f06: $01 $b5 $15
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    inc sp                                        ; $5f0b: $33
    ld bc, $0fb6                                  ; $5f0c: $01 $b6 $0f
    rrca                                          ; $5f0f: $0f
    ld bc, $400f                                  ; $5f10: $01 $0f $40
    ld bc, $172c                                  ; $5f13: $01 $2c $17
    ld bc, $0057                                  ; $5f16: $01 $57 $00
    nop                                           ; $5f19: $00
    nop                                           ; $5f1a: $00
    nop                                           ; $5f1b: $00
    nop                                           ; $5f1c: $00
    add hl, bc                                    ; $5f1d: $09
    nop                                           ; $5f1e: $00
    daa                                           ; $5f1f: $27
    dec b                                         ; $5f20: $05
    dec hl                                        ; $5f21: $2b
    nop                                           ; $5f22: $00
    add hl, bc                                    ; $5f23: $09
    ld c, $01                                     ; $5f24: $0e $01
    dec b                                         ; $5f26: $05
    inc bc                                        ; $5f27: $03
    nop                                           ; $5f28: $00
    ld e, a                                       ; $5f29: $5f
    ld bc, $0000                                  ; $5f2a: $01 $00 $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    ld d, [hl]                                    ; $5f2f: $56
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    rla                                           ; $5f32: $17
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    dec de                                        ; $5f35: $1b
    ld b, $00                                     ; $5f36: $06 $00
    ld e, a                                       ; $5f38: $5f
    ld bc, $2400                                  ; $5f39: $01 $00 $24
    nop                                           ; $5f3c: $00
    nop                                           ; $5f3d: $00
    dec d                                         ; $5f3e: $15
    add hl, de                                    ; $5f3f: $19
    nop                                           ; $5f40: $00
    inc sp                                        ; $5f41: $33
    inc bc                                        ; $5f42: $03
    ld a, [$3717]                                 ; $5f43: $fa $17 $37
    nop                                           ; $5f46: $00
    dec d                                         ; $5f47: $15
    nop                                           ; $5f48: $00
    nop                                           ; $5f49: $00
    add hl, de                                    ; $5f4a: $19
    nop                                           ; $5f4b: $00
    ld e, d                                       ; $5f4c: $5a
    ld e, $37                                     ; $5f4d: $1e $37
    nop                                           ; $5f4f: $00
    dec d                                         ; $5f50: $15
    inc l                                         ; $5f51: $2c
    nop                                           ; $5f52: $00
    inc sp                                        ; $5f53: $33
    inc bc                                        ; $5f54: $03
    ei                                            ; $5f55: $fb
    rla                                           ; $5f56: $17
    jr c, jr_00d_5f59                             ; $5f57: $38 $00

jr_00d_5f59:
    dec d                                         ; $5f59: $15
    inc b                                         ; $5f5a: $04
    nop                                           ; $5f5b: $00
    add hl, de                                    ; $5f5c: $19
    nop                                           ; $5f5d: $00
    ld e, d                                       ; $5f5e: $5a
    ld e, $38                                     ; $5f5f: $1e $38
    nop                                           ; $5f61: $00
    dec d                                         ; $5f62: $15
    dec d                                         ; $5f63: $15
    nop                                           ; $5f64: $00
    inc sp                                        ; $5f65: $33
    inc bc                                        ; $5f66: $03
    db $fc                                        ; $5f67: $fc
    dec d                                         ; $5f68: $15
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    inc sp                                        ; $5f6b: $33
    inc bc                                        ; $5f6c: $03
    db $fd                                        ; $5f6d: $fd
    dec d                                         ; $5f6e: $15
    dec d                                         ; $5f6f: $15
    nop                                           ; $5f70: $00
    inc sp                                        ; $5f71: $33
    inc bc                                        ; $5f72: $03
    cp $15                                        ; $5f73: $fe $15
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    inc sp                                        ; $5f77: $33
    inc bc                                        ; $5f78: $03
    rst $38                                       ; $5f79: $ff
    dec d                                         ; $5f7a: $15
    dec d                                         ; $5f7b: $15
    nop                                           ; $5f7c: $00
    inc sp                                        ; $5f7d: $33
    inc b                                         ; $5f7e: $04
    nop                                           ; $5f7f: $00
    dec d                                         ; $5f80: $15
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    inc sp                                        ; $5f83: $33
    inc b                                         ; $5f84: $04
    ld bc, $007a                                  ; $5f85: $01 $7a $00
    nop                                           ; $5f88: $00
    rrca                                          ; $5f89: $0f
    ld c, $01                                     ; $5f8a: $0e $01
    ld h, d                                       ; $5f8c: $62
    ld [hl-], a                                   ; $5f8d: $32
    nop                                           ; $5f8e: $00
    inc l                                         ; $5f8f: $2c
    rrca                                          ; $5f90: $0f
    inc bc                                        ; $5f91: $03
    ld d, l                                       ; $5f92: $55
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    ld c, l                                       ; $5f95: $4d
    nop                                           ; $5f96: $00
    nop                                           ; $5f97: $00
    ld a, c                                       ; $5f98: $79
    nop                                           ; $5f99: $00
    inc l                                         ; $5f9a: $2c
    ld e, a                                       ; $5f9b: $5f
    ld bc, $0000                                  ; $5f9c: $01 $00 $00
    nop                                           ; $5f9f: $00
    nop                                           ; $5fa0: $00
    add hl, bc                                    ; $5fa1: $09
    nop                                           ; $5fa2: $00
    ld e, b                                       ; $5fa3: $58
    dec b                                         ; $5fa4: $05
    ld c, $00                                     ; $5fa5: $0e $00
    add hl, bc                                    ; $5fa7: $09
    ld [$0500], sp                                ; $5fa8: $08 $00 $05
    inc c                                         ; $5fab: $0c
    nop                                           ; $5fac: $00
    ld d, [hl]                                    ; $5fad: $56
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    rla                                           ; $5fb0: $17
    nop                                           ; $5fb1: $00
    nop                                           ; $5fb2: $00
    dec de                                        ; $5fb3: $1b
    ld [bc], a                                    ; $5fb4: $02
    nop                                           ; $5fb5: $00
    ld e, a                                       ; $5fb6: $5f
    ld bc, $0f00                                  ; $5fb7: $01 $00 $0f
    ld [$1501], sp                                ; $5fba: $08 $01 $15
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    inc sp                                        ; $5fbf: $33
    inc b                                         ; $5fc0: $04
    ld de, $4315                                  ; $5fc1: $11 $15 $43
    nop                                           ; $5fc4: $00
    inc sp                                        ; $5fc5: $33
    inc b                                         ; $5fc6: $04
    ld [de], a                                    ; $5fc7: $12
    ld d, a                                       ; $5fc8: $57
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    add hl, bc                                    ; $5fce: $09
    nop                                           ; $5fcf: $00
    ld b, c                                       ; $5fd0: $41
    dec b                                         ; $5fd1: $05
    dec d                                         ; $5fd2: $15
    nop                                           ; $5fd3: $00
    add hl, bc                                    ; $5fd4: $09
    dec c                                         ; $5fd5: $0d
    ld bc, $0305                                  ; $5fd6: $01 $05 $03
    nop                                           ; $5fd9: $00
    ld e, a                                       ; $5fda: $5f
    ld bc, $0000                                  ; $5fdb: $01 $00 $00
    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    ld d, [hl]                                    ; $5fe0: $56
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    ld e, a                                       ; $5fe3: $5f
    ld bc, $1500                                  ; $5fe4: $01 $00 $15
    nop                                           ; $5fe7: $00
    nop                                           ; $5fe8: $00
    inc sp                                        ; $5fe9: $33
    inc b                                         ; $5fea: $04
    sub a                                         ; $5feb: $97
    dec d                                         ; $5fec: $15
    dec d                                         ; $5fed: $15
    nop                                           ; $5fee: $00
    inc sp                                        ; $5fef: $33
    inc b                                         ; $5ff0: $04
    sbc b                                         ; $5ff1: $98
    dec d                                         ; $5ff2: $15
    add hl, de                                    ; $5ff3: $19
    nop                                           ; $5ff4: $00
    inc sp                                        ; $5ff5: $33
    inc b                                         ; $5ff6: $04
    sbc c                                         ; $5ff7: $99
    dec d                                         ; $5ff8: $15
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    inc sp                                        ; $5ffb: $33
    inc b                                         ; $5ffc: $04
    sbc d                                         ; $5ffd: $9a
    rrca                                          ; $5ffe: $0f
    rst $38                                       ; $5fff: $ff
    ld b, $17                                     ; $6000: $06 $17
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    dec de                                        ; $6004: $1b
    inc b                                         ; $6005: $04
    nop                                           ; $6006: $00
    ld d, a                                       ; $6007: $57
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    rrca                                          ; $600a: $0f
    dec c                                         ; $600b: $0d
    ld bc, $0000                                  ; $600c: $01 $00 $00
    nop                                           ; $600f: $00
    ld e, a                                       ; $6010: $5f
    ld bc, $0000                                  ; $6011: $01 $00 $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    ld e, a                                       ; $6016: $5f
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    add hl, bc                                    ; $6019: $09
    nop                                           ; $601a: $00
    ld d, d                                       ; $601b: $52
    dec b                                         ; $601c: $05
    inc c                                         ; $601d: $0c
    nop                                           ; $601e: $00
    ld d, [hl]                                    ; $601f: $56
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    rla                                           ; $6022: $17
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    dec de                                        ; $6025: $1b
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    ld e, a                                       ; $6028: $5f
    ld bc, $1500                                  ; $6029: $01 $00 $15
    add hl, de                                    ; $602c: $19
    nop                                           ; $602d: $00
    inc sp                                        ; $602e: $33
    ld bc, $15b7                                  ; $602f: $01 $b7 $15
    inc b                                         ; $6032: $04
    nop                                           ; $6033: $00
    add hl, de                                    ; $6034: $19
    nop                                           ; $6035: $00
    inc d                                         ; $6036: $14
    dec de                                        ; $6037: $1b
    inc b                                         ; $6038: $04
    nop                                           ; $6039: $00
    ld d, a                                       ; $603a: $57
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    ld d, [hl]                                    ; $6040: $56
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    rla                                           ; $6043: $17
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    dec de                                        ; $6046: $1b
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    ld e, a                                       ; $6049: $5f
    ld bc, $1500                                  ; $604a: $01 $00 $15
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    inc sp                                        ; $604f: $33
    ld a, [bc]                                    ; $6050: $0a
    pop bc                                        ; $6051: $c1
    dec d                                         ; $6052: $15
    inc b                                         ; $6053: $04
    nop                                           ; $6054: $00
    add hl, de                                    ; $6055: $19
    nop                                           ; $6056: $00
    inc d                                         ; $6057: $14
    dec de                                        ; $6058: $1b
    inc b                                         ; $6059: $04
    nop                                           ; $605a: $00
    ld d, a                                       ; $605b: $57
    nop                                           ; $605c: $00
    nop                                           ; $605d: $00
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    add hl, bc                                    ; $6061: $09
    nop                                           ; $6062: $00
    ld h, $05                                     ; $6063: $26 $05
    jr c, jr_00d_6067                             ; $6065: $38 $00

jr_00d_6067:
    add hl, bc                                    ; $6067: $09
    inc c                                         ; $6068: $0c
    ld bc, $0205                                  ; $6069: $01 $05 $02
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    ld e, a                                       ; $6070: $5f
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    ld d, [hl]                                    ; $6073: $56
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    inc de                                        ; $6076: $13
    ld bc, $145e                                  ; $6077: $01 $5e $14
    nop                                           ; $607a: $00
    rst $20                                       ; $607b: $e7
    dec d                                         ; $607c: $15
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    ld d, $39                                     ; $607f: $16 $39
    nop                                           ; $6081: $00
    dec de                                        ; $6082: $1b
    ld b, $00                                     ; $6083: $06 $00
    inc de                                        ; $6085: $13
    ld bc, $1451                                  ; $6086: $01 $51 $14
    nop                                           ; $6089: $00
    and l                                         ; $608a: $a5
    dec d                                         ; $608b: $15
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    ld d, $37                                     ; $608e: $16 $37
    nop                                           ; $6090: $00
    ld d, d                                       ; $6091: $52
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    dec de                                        ; $6094: $1b
    inc b                                         ; $6095: $04
    nop                                           ; $6096: $00
    ld e, a                                       ; $6097: $5f
    ld bc, $1500                                  ; $6098: $01 $00 $15
    nop                                           ; $609b: $00
    nop                                           ; $609c: $00
    inc sp                                        ; $609d: $33
    inc bc                                        ; $609e: $03
    call Call_000_3717                            ; $609f: $cd $17 $37
    nop                                           ; $60a2: $00
    inc de                                        ; $60a3: $13
    nop                                           ; $60a4: $00
    sub $71                                       ; $60a5: $d6 $71
    ld bc, $1b51                                  ; $60a7: $01 $51 $1b
    inc b                                         ; $60aa: $04
    nop                                           ; $60ab: $00
    dec d                                         ; $60ac: $15
    add hl, de                                    ; $60ad: $19
    nop                                           ; $60ae: $00
    inc sp                                        ; $60af: $33
    inc bc                                        ; $60b0: $03
    adc $15                                       ; $60b1: $ce $15
    nop                                           ; $60b3: $00
    nop                                           ; $60b4: $00
    inc sp                                        ; $60b5: $33
    inc bc                                        ; $60b6: $03
    rst $08                                       ; $60b7: $cf
    ld e, [hl]                                    ; $60b8: $5e
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    rla                                           ; $60bb: $17
    add hl, sp                                    ; $60bc: $39
    nop                                           ; $60bd: $00
    dec d                                         ; $60be: $15
    inc b                                         ; $60bf: $04
    nop                                           ; $60c0: $00
    add hl, de                                    ; $60c1: $19
    nop                                           ; $60c2: $00
    rrca                                          ; $60c3: $0f
    rla                                           ; $60c4: $17
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    ld e, d                                       ; $60c7: $5a
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    dec d                                         ; $60ca: $15
    inc b                                         ; $60cb: $04
    nop                                           ; $60cc: $00
    add hl, de                                    ; $60cd: $19
    nop                                           ; $60ce: $00
    ld a, [bc]                                    ; $60cf: $0a
    ld e, [hl]                                    ; $60d0: $5e
    ld bc, $2500                                  ; $60d1: $01 $00 $25
    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    ld e, [hl]                                    ; $60d6: $5e
    nop                                           ; $60d7: $00
    nop                                           ; $60d8: $00
    rla                                           ; $60d9: $17
    add hl, sp                                    ; $60da: $39
    nop                                           ; $60db: $00
    dec d                                         ; $60dc: $15
    ld [bc], a                                    ; $60dd: $02
    nop                                           ; $60de: $00
    add hl, de                                    ; $60df: $19
    nop                                           ; $60e0: $00
    ld b, [hl]                                    ; $60e1: $46
    rla                                           ; $60e2: $17
    nop                                           ; $60e3: $00
    nop                                           ; $60e4: $00
    dec d                                         ; $60e5: $15
    ld [bc], a                                    ; $60e6: $02
    nop                                           ; $60e7: $00
    add hl, de                                    ; $60e8: $19
    nop                                           ; $60e9: $00
    ld b, [hl]                                    ; $60ea: $46
    rla                                           ; $60eb: $17
    scf                                           ; $60ec: $37
    nop                                           ; $60ed: $00
    dec d                                         ; $60ee: $15
    inc b                                         ; $60ef: $04
    nop                                           ; $60f0: $00
    add hl, de                                    ; $60f1: $19
    nop                                           ; $60f2: $00
    jr z, jr_00d_611a                             ; $60f3: $28 $25

    nop                                           ; $60f5: $00
    nop                                           ; $60f6: $00
    dec de                                        ; $60f7: $1b
    ld [bc], a                                    ; $60f8: $02
    nop                                           ; $60f9: $00
    rla                                           ; $60fa: $17
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    ld e, e                                       ; $60fd: $5b
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    ld d, a                                       ; $6100: $57
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    rrca                                          ; $6103: $0f
    inc c                                         ; $6104: $0c
    ld bc, $3228                                  ; $6105: $01 $28 $32
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610a: $00
    nop                                           ; $610b: $00
    add hl, bc                                    ; $610c: $09
    nop                                           ; $610d: $00
    ld e, e                                       ; $610e: $5b
    dec b                                         ; $610f: $05
    ld c, [hl]                                    ; $6110: $4e
    nop                                           ; $6111: $00
    add hl, bc                                    ; $6112: $09
    inc c                                         ; $6113: $0c
    ld bc, $0205                                  ; $6114: $01 $05 $02
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00

jr_00d_611a:
    nop                                           ; $611a: $00
    ld e, a                                       ; $611b: $5f
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    ld d, [hl]                                    ; $611e: $56
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    inc de                                        ; $6121: $13
    ld bc, $145e                                  ; $6122: $01 $5e $14
    nop                                           ; $6125: $00
    rst $20                                       ; $6126: $e7
    dec d                                         ; $6127: $15
    nop                                           ; $6128: $00
    nop                                           ; $6129: $00
    ld d, $39                                     ; $612a: $16 $39
    nop                                           ; $612c: $00
    dec de                                        ; $612d: $1b
    ld b, $00                                     ; $612e: $06 $00
    inc de                                        ; $6130: $13
    ld bc, $1451                                  ; $6131: $01 $51 $14
    nop                                           ; $6134: $00
    rst $08                                       ; $6135: $cf
    dec d                                         ; $6136: $15
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    ld d, $37                                     ; $6139: $16 $37
    nop                                           ; $613b: $00
    ld d, d                                       ; $613c: $52
    nop                                           ; $613d: $00
    nop                                           ; $613e: $00
    dec de                                        ; $613f: $1b
    inc b                                         ; $6140: $04
    nop                                           ; $6141: $00
    ld e, a                                       ; $6142: $5f
    ld bc, $1500                                  ; $6143: $01 $00 $15
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    inc sp                                        ; $6148: $33
    inc b                                         ; $6149: $04
    db $d3                                        ; $614a: $d3
    dec d                                         ; $614b: $15
    add hl, de                                    ; $614c: $19
    nop                                           ; $614d: $00
    inc sp                                        ; $614e: $33
    inc b                                         ; $614f: $04
    ret nz                                        ; $6150: $c0

    dec d                                         ; $6151: $15
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    inc sp                                        ; $6154: $33
    inc b                                         ; $6155: $04
    pop bc                                        ; $6156: $c1
    dec d                                         ; $6157: $15
    dec d                                         ; $6158: $15
    nop                                           ; $6159: $00
    inc sp                                        ; $615a: $33
    inc b                                         ; $615b: $04
    jp nz, Jump_000_1915                          ; $615c: $c2 $15 $19

    nop                                           ; $615f: $00
    inc sp                                        ; $6160: $33
    inc b                                         ; $6161: $04
    jp Jump_000_0015                              ; $6162: $c3 $15 $00


    nop                                           ; $6165: $00
    inc sp                                        ; $6166: $33
    inc b                                         ; $6167: $04
    call nz, $005f                                ; $6168: $c4 $5f $00
    nop                                           ; $616b: $00
    inc de                                        ; $616c: $13
    nop                                           ; $616d: $00
    db $ed                                        ; $616e: $ed
    inc d                                         ; $616f: $14
    nop                                           ; $6170: $00
    rst $08                                       ; $6171: $cf
    dec d                                         ; $6172: $15
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    ld d, $38                                     ; $6175: $16 $38
    nop                                           ; $6177: $00
    ld d, d                                       ; $6178: $52
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    ld e, d                                       ; $617b: $5a
    nop                                           ; $617c: $00
    nop                                           ; $617d: $00
    dec d                                         ; $617e: $15
    ld [bc], a                                    ; $617f: $02
    nop                                           ; $6180: $00
    add hl, de                                    ; $6181: $19
    nop                                           ; $6182: $00
    ld d, b                                       ; $6183: $50
    dec de                                        ; $6184: $1b
    ld [bc], a                                    ; $6185: $02
    nop                                           ; $6186: $00
    ld e, e                                       ; $6187: $5b
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    dec d                                         ; $618a: $15
    inc l                                         ; $618b: $2c
    nop                                           ; $618c: $00
    inc sp                                        ; $618d: $33
    inc b                                         ; $618e: $04
    push bc                                       ; $618f: $c5
    rla                                           ; $6190: $17
    scf                                           ; $6191: $37
    nop                                           ; $6192: $00
    dec de                                        ; $6193: $1b
    ld b, $00                                     ; $6194: $06 $00
    dec d                                         ; $6196: $15
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    inc sp                                        ; $6199: $33
    inc b                                         ; $619a: $04
    add $15                                       ; $619b: $c6 $15
    inc l                                         ; $619d: $2c
    nop                                           ; $619e: $00
    inc sp                                        ; $619f: $33
    inc b                                         ; $61a0: $04
    rst $00                                       ; $61a1: $c7
    dec d                                         ; $61a2: $15
    add hl, de                                    ; $61a3: $19
    nop                                           ; $61a4: $00
    inc sp                                        ; $61a5: $33
    inc b                                         ; $61a6: $04
    ret z                                         ; $61a7: $c8

    dec d                                         ; $61a8: $15
    inc l                                         ; $61a9: $2c
    nop                                           ; $61aa: $00
    inc sp                                        ; $61ab: $33
    inc b                                         ; $61ac: $04
    ret                                           ; $61ad: $c9


    dec d                                         ; $61ae: $15
    nop                                           ; $61af: $00
    nop                                           ; $61b0: $00
    inc sp                                        ; $61b1: $33
    inc b                                         ; $61b2: $04
    jp z, Jump_000_2c15                           ; $61b3: $ca $15 $2c

    nop                                           ; $61b6: $00
    inc sp                                        ; $61b7: $33
    inc b                                         ; $61b8: $04
    rl l                                          ; $61b9: $cb $15
    add hl, de                                    ; $61bb: $19
    nop                                           ; $61bc: $00
    inc sp                                        ; $61bd: $33
    inc b                                         ; $61be: $04
    call z, Call_00d_5321                         ; $61bf: $cc $21 $53
    nop                                           ; $61c2: $00
    daa                                           ; $61c3: $27
    nop                                           ; $61c4: $00
    jr nz, jr_00d_61f5                            ; $61c5: $20 $2e

    ld e, $00                                     ; $61c7: $1e $00
    rla                                           ; $61c9: $17
    jr c, jr_00d_61cc                             ; $61ca: $38 $00

jr_00d_61cc:
    ld hl, $0054                                  ; $61cc: $21 $54 $00
    daa                                           ; $61cf: $27
    nop                                           ; $61d0: $00
    ld a, [hl-]                                   ; $61d1: $3a
    rla                                           ; $61d2: $17
    scf                                           ; $61d3: $37
    nop                                           ; $61d4: $00
    dec de                                        ; $61d5: $1b
    inc b                                         ; $61d6: $04
    nop                                           ; $61d7: $00
    daa                                           ; $61d8: $27
    nop                                           ; $61d9: $00
    inc d                                         ; $61da: $14
    dec d                                         ; $61db: $15
    nop                                           ; $61dc: $00
    nop                                           ; $61dd: $00
    inc sp                                        ; $61de: $33
    inc b                                         ; $61df: $04
    call Call_000_3717                            ; $61e0: $cd $17 $37
    nop                                           ; $61e3: $00
    ld [hl+], a                                   ; $61e4: $22
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    rla                                           ; $61e7: $17
    add hl, sp                                    ; $61e8: $39
    nop                                           ; $61e9: $00
    ld [hl+], a                                   ; $61ea: $22
    scf                                           ; $61eb: $37
    nop                                           ; $61ec: $00
    ld h, d                                       ; $61ed: $62
    ld c, b                                       ; $61ee: $48
    nop                                           ; $61ef: $00
    rrca                                          ; $61f0: $0f
    inc c                                         ; $61f1: $0c
    ld bc, $0057                                  ; $61f2: $01 $57 $00

jr_00d_61f5:
    nop                                           ; $61f5: $00
    nop                                           ; $61f6: $00
    nop                                           ; $61f7: $00
    nop                                           ; $61f8: $00
    nop                                           ; $61f9: $00
    nop                                           ; $61fa: $00
    nop                                           ; $61fb: $00
    add hl, bc                                    ; $61fc: $09
    nop                                           ; $61fd: $00
    ld d, d                                       ; $61fe: $52
    dec b                                         ; $61ff: $05
    inc bc                                        ; $6200: $03
    nop                                           ; $6201: $00
    dec d                                         ; $6202: $15
    ld a, [hl+]                                   ; $6203: $2a
    nop                                           ; $6204: $00
    inc sp                                        ; $6205: $33
    ld bc, $09b9                                  ; $6206: $01 $b9 $09
    nop                                           ; $6209: $00
    ld [$0605], sp                                ; $620a: $08 $05 $06
    nop                                           ; $620d: $00
    dec d                                         ; $620e: $15
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    inc sp                                        ; $6211: $33
    ld bc, $15cd                                  ; $6212: $01 $cd $15
    ld a, [hl+]                                   ; $6215: $2a
    nop                                           ; $6216: $00
    inc sp                                        ; $6217: $33
    ld bc, $00cf                                  ; $6218: $01 $cf $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    add hl, bc                                    ; $6220: $09
    nop                                           ; $6221: $00
    ld d, d                                       ; $6222: $52
    dec b                                         ; $6223: $05
    inc bc                                        ; $6224: $03
    nop                                           ; $6225: $00
    dec d                                         ; $6226: $15
    dec d                                         ; $6227: $15
    nop                                           ; $6228: $00
    inc sp                                        ; $6229: $33
    ld bc, $00ba                                  ; $622a: $01 $ba $00
    nop                                           ; $622d: $00
    nop                                           ; $622e: $00
    add hl, bc                                    ; $622f: $09
    nop                                           ; $6230: $00
    ld d, d                                       ; $6231: $52
    dec b                                         ; $6232: $05
    inc bc                                        ; $6233: $03
    nop                                           ; $6234: $00
    dec d                                         ; $6235: $15
    dec hl                                        ; $6236: $2b
    nop                                           ; $6237: $00
    inc sp                                        ; $6238: $33
    ld bc, $09bb                                  ; $6239: $01 $bb $09
    nop                                           ; $623c: $00
    ld [$0605], sp                                ; $623d: $08 $05 $06
    nop                                           ; $6240: $00
    dec d                                         ; $6241: $15
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    inc sp                                        ; $6244: $33
    ld bc, $15cd                                  ; $6245: $01 $cd $15
    dec hl                                        ; $6248: $2b
    nop                                           ; $6249: $00
    inc sp                                        ; $624a: $33
    ld bc, $00ce                                  ; $624b: $01 $ce $00
    nop                                           ; $624e: $00
    nop                                           ; $624f: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    ld e, a                                       ; $6253: $5f
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    add hl, bc                                    ; $6256: $09
    nop                                           ; $6257: $00
    ld d, d                                       ; $6258: $52
    dec b                                         ; $6259: $05
    ld e, c                                       ; $625a: $59
    nop                                           ; $625b: $00
    add hl, bc                                    ; $625c: $09
    ld e, $01                                     ; $625d: $1e $01
    dec b                                         ; $625f: $05
    dec de                                        ; $6260: $1b
    nop                                           ; $6261: $00
    inc de                                        ; $6262: $13
    ld bc, $1442                                  ; $6263: $01 $42 $14
    ld bc, $1504                                  ; $6266: $01 $04 $15
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    ld d, $2c                                     ; $626b: $16 $2c
    nop                                           ; $626d: $00
    ld d, d                                       ; $626e: $52
    nop                                           ; $626f: $00
    nop                                           ; $6270: $00
    dec de                                        ; $6271: $1b
    ld [bc], a                                    ; $6272: $02
    nop                                           ; $6273: $00
    inc de                                        ; $6274: $13
    nop                                           ; $6275: $00
    pop bc                                        ; $6276: $c1
    inc d                                         ; $6277: $14
    nop                                           ; $6278: $00
    halt                                          ; $6279: $76
    dec d                                         ; $627a: $15
    nop                                           ; $627b: $00
    nop                                           ; $627c: $00
    ld d, $37                                     ; $627d: $16 $37
    nop                                           ; $627f: $00
    ld d, d                                       ; $6280: $52
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    dec de                                        ; $6283: $1b
    ld [bc], a                                    ; $6284: $02
    nop                                           ; $6285: $00
    inc de                                        ; $6286: $13
    nop                                           ; $6287: $00
    db $d3                                        ; $6288: $d3
    inc d                                         ; $6289: $14
    nop                                           ; $628a: $00
    ldh [$15], a                                  ; $628b: $e0 $15
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    ld d, $34                                     ; $628f: $16 $34
    nop                                           ; $6291: $00
    ld d, d                                       ; $6292: $52
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    dec de                                        ; $6295: $1b
    inc b                                         ; $6296: $04
    nop                                           ; $6297: $00
    inc de                                        ; $6298: $13
    nop                                           ; $6299: $00
    cp a                                          ; $629a: $bf
    inc d                                         ; $629b: $14
    nop                                           ; $629c: $00
    ld [$0015], a                                 ; $629d: $ea $15 $00
    nop                                           ; $62a0: $00
    ld d, $35                                     ; $62a1: $16 $35
    nop                                           ; $62a3: $00
    ld d, d                                       ; $62a4: $52
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    dec de                                        ; $62a7: $1b
    inc b                                         ; $62a8: $04
    nop                                           ; $62a9: $00
    ld e, a                                       ; $62aa: $5f
    ld bc, $0000                                  ; $62ab: $01 $00 $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    add hl, bc                                    ; $62b0: $09
    db $10                                        ; $62b1: $10
    ld bc, $1b05                                  ; $62b2: $01 $05 $1b
    nop                                           ; $62b5: $00
    inc de                                        ; $62b6: $13
    ld bc, $1442                                  ; $62b7: $01 $42 $14
    ld bc, $1504                                  ; $62ba: $01 $04 $15
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    ld d, $2c                                     ; $62bf: $16 $2c
    nop                                           ; $62c1: $00
    ld d, d                                       ; $62c2: $52
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    dec de                                        ; $62c5: $1b
    ld [bc], a                                    ; $62c6: $02
    nop                                           ; $62c7: $00
    inc de                                        ; $62c8: $13
    nop                                           ; $62c9: $00
    pop bc                                        ; $62ca: $c1
    inc d                                         ; $62cb: $14
    nop                                           ; $62cc: $00
    halt                                          ; $62cd: $76
    dec d                                         ; $62ce: $15
    nop                                           ; $62cf: $00
    nop                                           ; $62d0: $00
    ld d, $37                                     ; $62d1: $16 $37
    nop                                           ; $62d3: $00
    ld d, d                                       ; $62d4: $52
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    dec de                                        ; $62d7: $1b
    ld [bc], a                                    ; $62d8: $02
    nop                                           ; $62d9: $00
    inc de                                        ; $62da: $13
    nop                                           ; $62db: $00
    db $d3                                        ; $62dc: $d3
    inc d                                         ; $62dd: $14
    nop                                           ; $62de: $00
    ldh [$15], a                                  ; $62df: $e0 $15
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    ld d, $34                                     ; $62e3: $16 $34
    nop                                           ; $62e5: $00
    ld d, d                                       ; $62e6: $52
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    dec de                                        ; $62e9: $1b
    inc b                                         ; $62ea: $04
    nop                                           ; $62eb: $00
    inc de                                        ; $62ec: $13
    nop                                           ; $62ed: $00
    cp a                                          ; $62ee: $bf
    inc d                                         ; $62ef: $14
    nop                                           ; $62f0: $00
    ld [$0015], a                                 ; $62f1: $ea $15 $00
    nop                                           ; $62f4: $00
    ld d, $35                                     ; $62f5: $16 $35
    nop                                           ; $62f7: $00
    ld d, d                                       ; $62f8: $52
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    dec de                                        ; $62fb: $1b
    inc b                                         ; $62fc: $04
    nop                                           ; $62fd: $00
    ld e, a                                       ; $62fe: $5f
    ld bc, $0000                                  ; $62ff: $01 $00 $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    inc de                                        ; $6304: $13
    ld bc, $1442                                  ; $6305: $01 $42 $14
    ld bc, $1504                                  ; $6308: $01 $04 $15
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    ld d, $2c                                     ; $630d: $16 $2c
    nop                                           ; $630f: $00
    ld d, d                                       ; $6310: $52
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    dec de                                        ; $6313: $1b
    ld [bc], a                                    ; $6314: $02
    nop                                           ; $6315: $00
    inc de                                        ; $6316: $13
    nop                                           ; $6317: $00
    pop bc                                        ; $6318: $c1
    inc d                                         ; $6319: $14
    nop                                           ; $631a: $00
    halt                                          ; $631b: $76
    dec d                                         ; $631c: $15
    nop                                           ; $631d: $00
    nop                                           ; $631e: $00
    ld d, $37                                     ; $631f: $16 $37
    nop                                           ; $6321: $00
    ld d, d                                       ; $6322: $52
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    dec de                                        ; $6325: $1b
    ld [bc], a                                    ; $6326: $02
    nop                                           ; $6327: $00
    inc de                                        ; $6328: $13
    ld bc, $140d                                  ; $6329: $01 $0d $14
    ld bc, $152c                                  ; $632c: $01 $2c $15
    nop                                           ; $632f: $00
    nop                                           ; $6330: $00
    ld d, $39                                     ; $6331: $16 $39
    nop                                           ; $6333: $00
    ld d, d                                       ; $6334: $52
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    dec de                                        ; $6337: $1b
    inc b                                         ; $6338: $04
    nop                                           ; $6339: $00
    inc de                                        ; $633a: $13
    nop                                           ; $633b: $00
    db $d3                                        ; $633c: $d3
    inc d                                         ; $633d: $14
    nop                                           ; $633e: $00
    ldh [$15], a                                  ; $633f: $e0 $15
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    ld d, $34                                     ; $6343: $16 $34
    nop                                           ; $6345: $00
    ld d, d                                       ; $6346: $52
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    dec de                                        ; $6349: $1b
    inc b                                         ; $634a: $04
    nop                                           ; $634b: $00
    inc de                                        ; $634c: $13
    nop                                           ; $634d: $00
    cp a                                          ; $634e: $bf
    inc d                                         ; $634f: $14
    nop                                           ; $6350: $00
    ld [$0015], a                                 ; $6351: $ea $15 $00
    nop                                           ; $6354: $00
    ld d, $35                                     ; $6355: $16 $35
    nop                                           ; $6357: $00
    ld d, d                                       ; $6358: $52
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    dec de                                        ; $635b: $1b
    inc b                                         ; $635c: $04
    nop                                           ; $635d: $00
    ld e, a                                       ; $635e: $5f
    ld bc, $0000                                  ; $635f: $01 $00 $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    add hl, bc                                    ; $6364: $09
    nop                                           ; $6365: $00
    ld h, $05                                     ; $6366: $26 $05
    rlca                                          ; $6368: $07
    nop                                           ; $6369: $00
    rla                                           ; $636a: $17
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    inc de                                        ; $636d: $13
    nop                                           ; $636e: $00
    rst $20                                       ; $636f: $e7
    ld e, b                                       ; $6370: $58
    ld bc, $1b46                                  ; $6371: $01 $46 $1b
    ld [bc], a                                    ; $6374: $02
    nop                                           ; $6375: $00
    ld e, a                                       ; $6376: $5f
    ld bc, $0000                                  ; $6377: $01 $00 $00
    nop                                           ; $637a: $00
    nop                                           ; $637b: $00
    add hl, bc                                    ; $637c: $09
    nop                                           ; $637d: $00
    daa                                           ; $637e: $27
    dec b                                         ; $637f: $05
    dec d                                         ; $6380: $15
    nop                                           ; $6381: $00
    inc de                                        ; $6382: $13
    ld bc, $1464                                  ; $6383: $01 $64 $14
    nop                                           ; $6386: $00
    db $eb                                        ; $6387: $eb
    dec d                                         ; $6388: $15
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    ld d, $37                                     ; $638b: $16 $37
    nop                                           ; $638d: $00
    ld d, d                                       ; $638e: $52
    nop                                           ; $638f: $00
    nop                                           ; $6390: $00
    dec de                                        ; $6391: $1b
    ld [bc], a                                    ; $6392: $02
    nop                                           ; $6393: $00
    inc de                                        ; $6394: $13
    ld bc, $1453                                  ; $6395: $01 $53 $14
    nop                                           ; $6398: $00
    rst $30                                       ; $6399: $f7
    dec d                                         ; $639a: $15
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    ld d, $39                                     ; $639d: $16 $39
    nop                                           ; $639f: $00
    ld d, d                                       ; $63a0: $52
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    dec de                                        ; $63a3: $1b
    ld [bc], a                                    ; $63a4: $02
    nop                                           ; $63a5: $00
    inc de                                        ; $63a6: $13
    ld bc, $1471                                  ; $63a7: $01 $71 $14
    ld bc, $1509                                  ; $63aa: $01 $09 $15
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    ld d, $38                                     ; $63af: $16 $38
    nop                                           ; $63b1: $00
    ld d, d                                       ; $63b2: $52
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    dec de                                        ; $63b5: $1b
    ld [bc], a                                    ; $63b6: $02
    nop                                           ; $63b7: $00
    ld e, a                                       ; $63b8: $5f
    ld bc, $0000                                  ; $63b9: $01 $00 $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    add hl, bc                                    ; $63be: $09
    nop                                           ; $63bf: $00
    ld b, e                                       ; $63c0: $43
    dec b                                         ; $63c1: $05
    inc b                                         ; $63c2: $04
    nop                                           ; $63c3: $00
    add hl, bc                                    ; $63c4: $09
    dec b                                         ; $63c5: $05
    ld a, [bc]                                    ; $63c6: $0a
    dec b                                         ; $63c7: $05
    ld [bc], a                                    ; $63c8: $02
    nop                                           ; $63c9: $00
    inc bc                                        ; $63ca: $03
    dec hl                                        ; $63cb: $2b
    nop                                           ; $63cc: $00
    add hl, bc                                    ; $63cd: $09
    nop                                           ; $63ce: $00
    ld b, c                                       ; $63cf: $41
    dec b                                         ; $63d0: $05
    inc c                                         ; $63d1: $0c
    nop                                           ; $63d2: $00
    rrca                                          ; $63d3: $0f
    rst $38                                       ; $63d4: $ff
    dec b                                         ; $63d5: $05
    rla                                           ; $63d6: $17
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    dec de                                        ; $63d9: $1b
    ld [bc], a                                    ; $63da: $02
    nop                                           ; $63db: $00
    inc de                                        ; $63dc: $13
    ld bc, $1470                                  ; $63dd: $01 $70 $14
    nop                                           ; $63e0: $00
    rst $30                                       ; $63e1: $f7
    dec d                                         ; $63e2: $15
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    ld d, $39                                     ; $63e5: $16 $39
    nop                                           ; $63e7: $00
    ld d, d                                       ; $63e8: $52
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    dec de                                        ; $63eb: $1b
    ld [bc], a                                    ; $63ec: $02
    nop                                           ; $63ed: $00
    ld e, a                                       ; $63ee: $5f
    ld bc, $0000                                  ; $63ef: $01 $00 $00
    nop                                           ; $63f2: $00
    nop                                           ; $63f3: $00
    add hl, bc                                    ; $63f4: $09
    nop                                           ; $63f5: $00
    ld c, b                                       ; $63f6: $48
    dec b                                         ; $63f7: $05
    ld a, [de]                                    ; $63f8: $1a
    nop                                           ; $63f9: $00
    inc de                                        ; $63fa: $13
    rst $38                                       ; $63fb: $ff
    db $ec                                        ; $63fc: $ec
    inc d                                         ; $63fd: $14
    nop                                           ; $63fe: $00
    nop                                           ; $63ff: $00
    dec d                                         ; $6400: $15
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    ld d, $37                                     ; $6403: $16 $37
    ld bc, $0052                                  ; $6405: $01 $52 $00
    nop                                           ; $6408: $00
    dec de                                        ; $6409: $1b
    inc b                                         ; $640a: $04
    nop                                           ; $640b: $00
    inc de                                        ; $640c: $13
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    inc d                                         ; $640f: $14
    nop                                           ; $6410: $00
    inc d                                         ; $6411: $14
    dec d                                         ; $6412: $15
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    ld d, $39                                     ; $6415: $16 $39
    ld bc, $0052                                  ; $6417: $01 $52 $00
    nop                                           ; $641a: $00
    dec de                                        ; $641b: $1b
    inc b                                         ; $641c: $04
    nop                                           ; $641d: $00
    inc de                                        ; $641e: $13
    ld bc, $143d                                  ; $641f: $01 $3d $14
    nop                                           ; $6422: $00
    reti                                          ; $6423: $d9


    dec d                                         ; $6424: $15
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    ld d, $38                                     ; $6427: $16 $38
    nop                                           ; $6429: $00
    ld d, d                                       ; $642a: $52
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    rla                                           ; $642d: $17
    jr c, jr_00d_6430                             ; $642e: $38 $00

jr_00d_6430:
    ld hl, $0055                                  ; $6430: $21 $55 $00
    ld e, a                                       ; $6433: $5f
    ld bc, $1700                                  ; $6434: $01 $00 $17
    scf                                           ; $6437: $37
    nop                                           ; $6438: $00
    ld [hl+], a                                   ; $6439: $22
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    rla                                           ; $643c: $17
    add hl, sp                                    ; $643d: $39
    nop                                           ; $643e: $00
    ld [hl+], a                                   ; $643f: $22
    scf                                           ; $6440: $37
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    ld e, a                                       ; $6445: $5f
    ld bc, $0000                                  ; $6446: $01 $00 $00
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    ld d, [hl]                                    ; $644b: $56
    nop                                           ; $644c: $00
    nop                                           ; $644d: $00
    inc de                                        ; $644e: $13
    nop                                           ; $644f: $00
    rst $38                                       ; $6450: $ff
    inc d                                         ; $6451: $14
    ld bc, $1559                                  ; $6452: $01 $59 $15
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    ld d, $19                                     ; $6457: $16 $19
    nop                                           ; $6459: $00
    ld d, d                                       ; $645a: $52
    nop                                           ; $645b: $00
    nop                                           ; $645c: $00
    dec de                                        ; $645d: $1b
    ld [bc], a                                    ; $645e: $02
    nop                                           ; $645f: $00
    inc de                                        ; $6460: $13
    nop                                           ; $6461: $00
    rst $38                                       ; $6462: $ff
    inc d                                         ; $6463: $14
    ld bc, $156d                                  ; $6464: $01 $6d $15
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    ld d, $24                                     ; $6469: $16 $24
    nop                                           ; $646b: $00
    ld d, d                                       ; $646c: $52
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    dec de                                        ; $646f: $1b
    ld [bc], a                                    ; $6470: $02
    nop                                           ; $6471: $00
    rla                                           ; $6472: $17
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    inc de                                        ; $6475: $13
    ld bc, $716e                                  ; $6476: $01 $6e $71
    ld bc, $5f16                                  ; $6479: $01 $16 $5f
    ld bc, $1500                                  ; $647c: $01 $00 $15
    add hl, de                                    ; $647f: $19
    nop                                           ; $6480: $00
    inc sp                                        ; $6481: $33
    rlca                                          ; $6482: $07
    db $dd                                        ; $6483: $dd
    dec d                                         ; $6484: $15
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    inc sp                                        ; $6487: $33
    rlca                                          ; $6488: $07
    sbc $15                                       ; $6489: $de $15
    dec d                                         ; $648b: $15
    nop                                           ; $648c: $00
    inc sp                                        ; $648d: $33
    rlca                                          ; $648e: $07
    rst $18                                       ; $648f: $df
    dec d                                         ; $6490: $15
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    inc sp                                        ; $6493: $33
    rlca                                          ; $6494: $07
    ldh [$15], a                                  ; $6495: $e0 $15
    add hl, de                                    ; $6497: $19
    nop                                           ; $6498: $00
    inc sp                                        ; $6499: $33
    rlca                                          ; $649a: $07
    ld [c], a                                     ; $649b: $e2
    rla                                           ; $649c: $17
    add hl, de                                    ; $649d: $19
    nop                                           ; $649e: $00
    ld e, [hl]                                    ; $649f: $5e
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    dec d                                         ; $64a2: $15
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00
    add hl, de                                    ; $64a5: $19
    nop                                           ; $64a6: $00
    jr z, jr_00d_64c0                             ; $64a7: $28 $17

    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    dec d                                         ; $64ab: $15
    ld b, $00                                     ; $64ac: $06 $00
    add hl, de                                    ; $64ae: $19
    nop                                           ; $64af: $00
    inc d                                         ; $64b0: $14
    rla                                           ; $64b1: $17
    inc h                                         ; $64b2: $24
    nop                                           ; $64b3: $00
    ld e, [hl]                                    ; $64b4: $5e
    ld bc, $1500                                  ; $64b5: $01 $00 $15
    inc b                                         ; $64b8: $04
    nop                                           ; $64b9: $00
    add hl, de                                    ; $64ba: $19
    nop                                           ; $64bb: $00
    inc d                                         ; $64bc: $14
    rrca                                          ; $64bd: $0f
    dec b                                         ; $64be: $05
    dec bc                                        ; $64bf: $0b

jr_00d_64c0:
    ld d, a                                       ; $64c0: $57
    nop                                           ; $64c1: $00
    nop                                           ; $64c2: $00
    jr z, jr_00d_650b                             ; $64c3: $28 $46

    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    add hl, bc                                    ; $64c9: $09
    nop                                           ; $64ca: $00
    ld d, d                                       ; $64cb: $52
    dec b                                         ; $64cc: $05
    inc b                                         ; $64cd: $04
    nop                                           ; $64ce: $00
    dec d                                         ; $64cf: $15
    ccf                                           ; $64d0: $3f
    nop                                           ; $64d1: $00
    inc sp                                        ; $64d2: $33
    ld bc, $00b8                                  ; $64d3: $01 $b8 $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    add hl, bc                                    ; $64db: $09
    nop                                           ; $64dc: $00
    ld d, d                                       ; $64dd: $52
    dec b                                         ; $64de: $05
    dec e                                         ; $64df: $1d
    nop                                           ; $64e0: $00
    add hl, bc                                    ; $64e1: $09
    ld [bc], a                                    ; $64e2: $02
    nop                                           ; $64e3: $00
    dec b                                         ; $64e4: $05
    dec b                                         ; $64e5: $05
    nop                                           ; $64e6: $00
    dec d                                         ; $64e7: $15
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    inc sp                                        ; $64ea: $33
    ld bc, $0fbe                                  ; $64eb: $01 $be $0f
    ld [bc], a                                    ; $64ee: $02
    ld bc, $1603                                  ; $64ef: $01 $03 $16
    nop                                           ; $64f2: $00
    add hl, bc                                    ; $64f3: $09
    ld [bc], a                                    ; $64f4: $02
    ld bc, $0505                                  ; $64f5: $01 $05 $05
    nop                                           ; $64f8: $00
    dec d                                         ; $64f9: $15
    nop                                           ; $64fa: $00
    nop                                           ; $64fb: $00
    inc sp                                        ; $64fc: $33
    ld bc, $0fbf                                  ; $64fd: $01 $bf $0f
    ld [bc], a                                    ; $6500: $02
    ld [bc], a                                    ; $6501: $02
    inc bc                                        ; $6502: $03
    stop                                          ; $6503: $10 $00
    add hl, bc                                    ; $6505: $09
    ld [bc], a                                    ; $6506: $02
    ld [bc], a                                    ; $6507: $02
    dec b                                         ; $6508: $05
    dec b                                         ; $6509: $05
    nop                                           ; $650a: $00

jr_00d_650b:
    dec d                                         ; $650b: $15
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    inc sp                                        ; $650e: $33
    ld bc, $0fc0                                  ; $650f: $01 $c0 $0f
    ld [bc], a                                    ; $6512: $02
    inc bc                                        ; $6513: $03
    inc bc                                        ; $6514: $03
    ld a, [bc]                                    ; $6515: $0a
    nop                                           ; $6516: $00
    add hl, bc                                    ; $6517: $09
    ld [bc], a                                    ; $6518: $02
    inc bc                                        ; $6519: $03
    dec b                                         ; $651a: $05
    dec b                                         ; $651b: $05
    nop                                           ; $651c: $00
    dec d                                         ; $651d: $15
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    inc sp                                        ; $6520: $33
    ld bc, $0fc1                                  ; $6521: $01 $c1 $0f
    ld [bc], a                                    ; $6524: $02
    inc b                                         ; $6525: $04
    inc bc                                        ; $6526: $03
    inc b                                         ; $6527: $04
    nop                                           ; $6528: $00
    dec d                                         ; $6529: $15
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    inc sp                                        ; $652c: $33
    ld bc, $0fc2                                  ; $652d: $01 $c2 $0f
    ld [bc], a                                    ; $6530: $02
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    add hl, bc                                    ; $6535: $09
    nop                                           ; $6536: $00
    ld [$0405], sp                                ; $6537: $08 $05 $04
    nop                                           ; $653a: $00
    dec d                                         ; $653b: $15
    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    inc sp                                        ; $653e: $33
    ld [bc], a                                    ; $653f: $02
    dec c                                         ; $6540: $0d
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    add hl, bc                                    ; $6544: $09
    nop                                           ; $6545: $00
    ld d, e                                       ; $6546: $53
    dec b                                         ; $6547: $05
    inc b                                         ; $6548: $04
    nop                                           ; $6549: $00
    dec d                                         ; $654a: $15
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    inc sp                                        ; $654d: $33
    ld [bc], a                                    ; $654e: $02
    dec c                                         ; $654f: $0d
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    add hl, bc                                    ; $6553: $09
    nop                                           ; $6554: $00
    ld e, b                                       ; $6555: $58
    dec b                                         ; $6556: $05
    inc b                                         ; $6557: $04
    nop                                           ; $6558: $00
    dec d                                         ; $6559: $15
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    inc sp                                        ; $655c: $33
    inc b                                         ; $655d: $04
    inc d                                         ; $655e: $14
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    dec d                                         ; $6562: $15
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    inc sp                                        ; $6565: $33
    ld a, [bc]                                    ; $6566: $0a
    jp nz, RST_00                                 ; $6567: $c2 $00 $00

    nop                                           ; $656a: $00
    add hl, bc                                    ; $656b: $09
    nop                                           ; $656c: $00
    ld d, d                                       ; $656d: $52
    dec b                                         ; $656e: $05
    ld e, $00                                     ; $656f: $1e $00
    add hl, bc                                    ; $6571: $09
    ld e, $01                                     ; $6572: $1e $01
    dec b                                         ; $6574: $05
    ld [bc], a                                    ; $6575: $02
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    add hl, bc                                    ; $657a: $09
    db $10                                        ; $657b: $10
    ld bc, $0205                                  ; $657c: $01 $05 $02
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    ld d, [hl]                                    ; $6583: $56
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    rla                                           ; $6586: $17
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    inc e                                         ; $6589: $1c
    add hl, sp                                    ; $658a: $39
    nop                                           ; $658b: $00
    rla                                           ; $658c: $17
    add hl, sp                                    ; $658d: $39
    nop                                           ; $658e: $00
    dec d                                         ; $658f: $15
    dec b                                         ; $6590: $05
    nop                                           ; $6591: $00
    add hl, de                                    ; $6592: $19
    nop                                           ; $6593: $00
    inc d                                         ; $6594: $14
    inc e                                         ; $6595: $1c
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    dec d                                         ; $6598: $15
    inc b                                         ; $6599: $04
    nop                                           ; $659a: $00
    add hl, de                                    ; $659b: $19
    nop                                           ; $659c: $00
    inc l                                         ; $659d: $2c
    dec de                                        ; $659e: $1b
    inc b                                         ; $659f: $04
    nop                                           ; $65a0: $00
    dec d                                         ; $65a1: $15
    dec d                                         ; $65a2: $15
    nop                                           ; $65a3: $00
    inc sp                                        ; $65a4: $33
    ld bc, $17c3                                  ; $65a5: $01 $c3 $17
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    dec d                                         ; $65aa: $15
    ld b, $00                                     ; $65ab: $06 $00
    add hl, de                                    ; $65ad: $19
    nop                                           ; $65ae: $00
    ld e, $1b                                     ; $65af: $1e $1b
    ld [bc], a                                    ; $65b1: $02
    nop                                           ; $65b2: $00
    rla                                           ; $65b3: $17
    add hl, sp                                    ; $65b4: $39
    nop                                           ; $65b5: $00
    inc de                                        ; $65b6: $13
    ld bc, $719c                                  ; $65b7: $01 $9c $71
    nop                                           ; $65ba: $00
    add sp, $1e                                   ; $65bb: $e8 $1e
    add hl, sp                                    ; $65bd: $39
    nop                                           ; $65be: $00
    rrca                                          ; $65bf: $0f
    ld e, $01                                     ; $65c0: $1e $01
    ld d, a                                       ; $65c2: $57
    nop                                           ; $65c3: $00
    nop                                           ; $65c4: $00
    nop                                           ; $65c5: $00
    nop                                           ; $65c6: $00
    nop                                           ; $65c7: $00
    add hl, bc                                    ; $65c8: $09
    nop                                           ; $65c9: $00
    ld [$1405], sp                                ; $65ca: $08 $05 $14
    nop                                           ; $65cd: $00
    add hl, bc                                    ; $65ce: $09
    rra                                           ; $65cf: $1f
    ld bc, $0205                                  ; $65d0: $01 $05 $02
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    ld e, a                                       ; $65d7: $5f
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    inc de                                        ; $65da: $13
    nop                                           ; $65db: $00
    db $d3                                        ; $65dc: $d3
    inc d                                         ; $65dd: $14
    nop                                           ; $65de: $00
    ldh [$15], a                                  ; $65df: $e0 $15
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    ld d, $34                                     ; $65e3: $16 $34
    nop                                           ; $65e5: $00
    ld d, d                                       ; $65e6: $52
    nop                                           ; $65e7: $00
    nop                                           ; $65e8: $00
    dec de                                        ; $65e9: $1b
    inc b                                         ; $65ea: $04
    nop                                           ; $65eb: $00
    inc de                                        ; $65ec: $13
    nop                                           ; $65ed: $00
    cp a                                          ; $65ee: $bf
    inc d                                         ; $65ef: $14
    nop                                           ; $65f0: $00
    ld [$0015], a                                 ; $65f1: $ea $15 $00
    nop                                           ; $65f4: $00
    ld d, $35                                     ; $65f5: $16 $35
    nop                                           ; $65f7: $00
    ld d, d                                       ; $65f8: $52
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    dec de                                        ; $65fb: $1b
    inc b                                         ; $65fc: $04
    nop                                           ; $65fd: $00
    ld e, a                                       ; $65fe: $5f
    ld bc, $0f00                                  ; $65ff: $01 $00 $0f
    rra                                           ; $6602: $1f
    ld bc, $0000                                  ; $6603: $01 $00 $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    add hl, bc                                    ; $660a: $09
    nop                                           ; $660b: $00
    ld d, d                                       ; $660c: $52
    dec b                                         ; $660d: $05
    inc b                                         ; $660e: $04
    nop                                           ; $660f: $00
    dec d                                         ; $6610: $15
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    inc sp                                        ; $6613: $33
    ld bc, $00c4                                  ; $6614: $01 $c4 $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    add hl, bc                                    ; $6619: $09
    nop                                           ; $661a: $00
    ld [$0405], sp                                ; $661b: $08 $05 $04
    nop                                           ; $661e: $00
    dec d                                         ; $661f: $15
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    inc sp                                        ; $6622: $33
    ld bc, $00d0                                  ; $6623: $01 $d0 $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    add hl, bc                                    ; $6628: $09
    nop                                           ; $6629: $00
    ld e, b                                       ; $662a: $58
    dec b                                         ; $662b: $05
    dec b                                         ; $662c: $05
    nop                                           ; $662d: $00
    rrca                                          ; $662e: $0f
    ld [$1501], sp                                ; $662f: $08 $01 $15
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    inc sp                                        ; $6634: $33
    inc b                                         ; $6635: $04
    inc de                                        ; $6636: $13
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    add hl, bc                                    ; $663d: $09
    nop                                           ; $663e: $00
    ld d, d                                       ; $663f: $52
    dec b                                         ; $6640: $05
    inc b                                         ; $6641: $04
    nop                                           ; $6642: $00
    dec d                                         ; $6643: $15
    add hl, de                                    ; $6644: $19
    nop                                           ; $6645: $00
    inc sp                                        ; $6646: $33
    ld a, [bc]                                    ; $6647: $0a
    rlca                                          ; $6648: $07
    nop                                           ; $6649: $00
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    nop                                           ; $664e: $00
    ld bc, $0000                                  ; $664f: $01 $00 $00
    ld e, a                                       ; $6652: $5f
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    add hl, bc                                    ; $6655: $09
    nop                                           ; $6656: $00
    inc sp                                        ; $6657: $33
    dec b                                         ; $6658: $05
    dec bc                                        ; $6659: $0b
    nop                                           ; $665a: $00
    add hl, bc                                    ; $665b: $09
    ld [$0501], sp                                ; $665c: $08 $01 $05
    add hl, bc                                    ; $665f: $09
    nop                                           ; $6660: $00
    inc de                                        ; $6661: $13
    rst $38                                       ; $6662: $ff
    add sp, $14                                   ; $6663: $e8 $14
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    dec d                                         ; $6667: $15
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    ld d, $39                                     ; $666a: $16 $39
    ld bc, $0052                                  ; $666c: $01 $52 $00
    nop                                           ; $666f: $00
    ld [hl+], a                                   ; $6670: $22
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    ld e, a                                       ; $6673: $5f
    ld bc, $0000                                  ; $6674: $01 $00 $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    ld e, a                                       ; $6679: $5f
    ld bc, $0000                                  ; $667a: $01 $00 $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    ld bc, $0000                                  ; $667f: $01 $00 $00
    ld e, a                                       ; $6682: $5f
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    add hl, bc                                    ; $6685: $09
    nop                                           ; $6686: $00
    inc sp                                        ; $6687: $33
    dec b                                         ; $6688: $05
    dec bc                                        ; $6689: $0b
    nop                                           ; $668a: $00
    add hl, bc                                    ; $668b: $09
    ld [$0501], sp                                ; $668c: $08 $01 $05
    add hl, bc                                    ; $668f: $09
    nop                                           ; $6690: $00
    inc de                                        ; $6691: $13
    rst $38                                       ; $6692: $ff
    add sp, $14                                   ; $6693: $e8 $14
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    dec d                                         ; $6697: $15
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    ld d, $39                                     ; $669a: $16 $39
    ld bc, $0052                                  ; $669c: $01 $52 $00
    nop                                           ; $669f: $00
    ld [hl+], a                                   ; $66a0: $22
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    ld e, a                                       ; $66a3: $5f
    ld bc, $0000                                  ; $66a4: $01 $00 $00
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    ld e, a                                       ; $66a9: $5f
    ld bc, $0000                                  ; $66aa: $01 $00 $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    dec hl                                        ; $66af: $2b
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    ld bc, $0150                                  ; $66b2: $01 $50 $01
    ld l, b                                       ; $66b5: $68
    ld bc, $0177                                  ; $66b6: $01 $77 $01
    or b                                          ; $66b9: $b0
    ld bc, $02e9                                  ; $66ba: $01 $e9 $02
    ld [hl+], a                                   ; $66bd: $22
    ld [bc], a                                    ; $66be: $02
    ld e, e                                       ; $66bf: $5b
    ld [bc], a                                    ; $66c0: $02
    sub h                                         ; $66c1: $94
    ld [bc], a                                    ; $66c2: $02
    call $0003                                    ; $66c3: $cd $03 $00
    inc bc                                        ; $66c6: $03
    inc sp                                        ; $66c7: $33
    inc bc                                        ; $66c8: $03
    ld h, [hl]                                    ; $66c9: $66
    inc bc                                        ; $66ca: $03
    sbc c                                         ; $66cb: $99
    inc bc                                        ; $66cc: $03
    call z, $ff03                                 ; $66cd: $cc $03 $ff
    inc b                                         ; $66d0: $04
    ld [hl-], a                                   ; $66d1: $32
    inc b                                         ; $66d2: $04
    ld e, a                                       ; $66d3: $5f
    inc b                                         ; $66d4: $04
    adc h                                         ; $66d5: $8c
    inc b                                         ; $66d6: $04
    cp c                                          ; $66d7: $b9
    inc b                                         ; $66d8: $04
    and $05                                       ; $66d9: $e6 $05
    inc de                                        ; $66db: $13
    dec b                                         ; $66dc: $05
    ld b, b                                       ; $66dd: $40
    dec b                                         ; $66de: $05
    ld l, l                                       ; $66df: $6d
    dec b                                         ; $66e0: $05
    sbc d                                         ; $66e1: $9a
    dec b                                         ; $66e2: $05
    rst $00                                       ; $66e3: $c7
    dec b                                         ; $66e4: $05
    add sp, $06                                   ; $66e5: $e8 $06
    add hl, bc                                    ; $66e7: $09
    ld b, $2a                                     ; $66e8: $06 $2a
    ld b, $4b                                     ; $66ea: $06 $4b
    ld b, $6c                                     ; $66ec: $06 $6c
    ld b, $8d                                     ; $66ee: $06 $8d
    ld b, $ae                                     ; $66f0: $06 $ae
    ld b, $cf                                     ; $66f2: $06 $cf
    ld b, $e4                                     ; $66f4: $06 $e4
    ld b, $f9                                     ; $66f6: $06 $f9
    rlca                                          ; $66f8: $07
    dec bc                                        ; $66f9: $0b
    ld a, [bc]                                    ; $66fa: $0a
    inc hl                                        ; $66fb: $23
    ld a, [bc]                                    ; $66fc: $0a
    ld [hl-], a                                   ; $66fd: $32
    ld a, [bc]                                    ; $66fe: $0a
    ld b, c                                       ; $66ff: $41
    ld a, [bc]                                    ; $6700: $0a
    ld d, b                                       ; $6701: $50
    ld a, [bc]                                    ; $6702: $0a
    ld e, a                                       ; $6703: $5f
    ld a, [bc]                                    ; $6704: $0a
    ld [hl], c                                    ; $6705: $71
    rrca                                          ; $6706: $0f
    ccf                                           ; $6707: $3f
    ld bc, $0013                                  ; $6708: $01 $13 $00
    ld e, d                                       ; $670b: $5a
    inc d                                         ; $670c: $14
    nop                                           ; $670d: $00
    rst $18                                       ; $670e: $df
    dec d                                         ; $670f: $15
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    ld d, $19                                     ; $6712: $16 $19
    nop                                           ; $6714: $00
    ld d, d                                       ; $6715: $52
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    ld d, [hl]                                    ; $6718: $56
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    rla                                           ; $671b: $17
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    inc [hl]                                      ; $671e: $34
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    ld e, a                                       ; $6721: $5f
    ld bc, $1500                                  ; $6722: $01 $00 $15
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    add hl, de                                    ; $6727: $19
    nop                                           ; $6728: $00
    ldh [rNR31], a                                ; $6729: $e0 $1b
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    dec d                                         ; $672d: $15
    dec d                                         ; $672e: $15
    nop                                           ; $672f: $00
    inc sp                                        ; $6730: $33
    ld bc, $171d                                  ; $6731: $01 $1d $17
    add hl, de                                    ; $6734: $19
    nop                                           ; $6735: $00
    ld d, d                                       ; $6736: $52
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    dec d                                         ; $6739: $15
    ld [bc], a                                    ; $673a: $02
    nop                                           ; $673b: $00
    add hl, hl                                    ; $673c: $29
    ld [bc], a                                    ; $673d: $02
    inc d                                         ; $673e: $14
    dec d                                         ; $673f: $15
    ld [bc], a                                    ; $6740: $02
    nop                                           ; $6741: $00
    add hl, hl                                    ; $6742: $29
    nop                                           ; $6743: $00
    add hl, bc                                    ; $6744: $09
    dec d                                         ; $6745: $15
    add hl, sp                                    ; $6746: $39
    nop                                           ; $6747: $00
    inc sp                                        ; $6748: $33
    ld bc, $151e                                  ; $6749: $01 $1e $15
    ld [bc], a                                    ; $674c: $02
    nop                                           ; $674d: $00
    add hl, hl                                    ; $674e: $29
    inc b                                         ; $674f: $04
    add hl, bc                                    ; $6750: $09
    ld e, h                                       ; $6751: $5c
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    ld e, $05                                     ; $6754: $1e $05
    nop                                           ; $6756: $00
    rla                                           ; $6757: $17
    inc hl                                        ; $6758: $23
    nop                                           ; $6759: $00
    ld e, c                                       ; $675a: $59
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    ld e, l                                       ; $675d: $5d
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    ld hl, $000d                                  ; $6760: $21 $0d $00
    dec d                                         ; $6763: $15
    dec sp                                        ; $6764: $3b
    nop                                           ; $6765: $00
    inc sp                                        ; $6766: $33
    ld bc, $151f                                  ; $6767: $01 $1f $15
    dec sp                                        ; $676a: $3b
    nop                                           ; $676b: $00
    inc sp                                        ; $676c: $33
    ld bc, $1520                                  ; $676d: $01 $20 $15
    dec sp                                        ; $6770: $3b
    nop                                           ; $6771: $00
    inc sp                                        ; $6772: $33
    ld bc, $1521                                  ; $6773: $01 $21 $15
    dec sp                                        ; $6776: $3b
    nop                                           ; $6777: $00
    inc sp                                        ; $6778: $33
    ld bc, $1522                                  ; $6779: $01 $22 $15
    dec sp                                        ; $677c: $3b
    nop                                           ; $677d: $00
    inc sp                                        ; $677e: $33
    ld bc, $1523                                  ; $677f: $01 $23 $15
    dec sp                                        ; $6782: $3b
    nop                                           ; $6783: $00
    inc sp                                        ; $6784: $33
    ld bc, $1524                                  ; $6785: $01 $24 $15
    dec sp                                        ; $6788: $3b
    nop                                           ; $6789: $00
    inc sp                                        ; $678a: $33
    ld bc, $1525                                  ; $678b: $01 $25 $15
    dec sp                                        ; $678e: $3b
    nop                                           ; $678f: $00
    inc sp                                        ; $6790: $33
    ld bc, $2126                                  ; $6791: $01 $26 $21
    ld c, $00                                     ; $6794: $0e $00
    dec d                                         ; $6796: $15
    ld l, $00                                     ; $6797: $2e $00
    inc sp                                        ; $6799: $33
    ld bc, $1727                                  ; $679a: $01 $27 $17
    add hl, de                                    ; $679d: $19
    nop                                           ; $679e: $00
    ld e, d                                       ; $679f: $5a
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    dec d                                         ; $67a2: $15
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    ld a, [de]                                    ; $67a5: $1a
    nop                                           ; $67a6: $00
    dec c                                         ; $67a7: $0d
    dec d                                         ; $67a8: $15
    ld [bc], a                                    ; $67a9: $02
    nop                                           ; $67aa: $00
    add hl, de                                    ; $67ab: $19
    nop                                           ; $67ac: $00
    ld e, d                                       ; $67ad: $5a
    ld hl, $000a                                  ; $67ae: $21 $0a $00
    rla                                           ; $67b1: $17
    inc hl                                        ; $67b2: $23
    nop                                           ; $67b3: $00
    ld h, h                                       ; $67b4: $64
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    daa                                           ; $67b7: $27
    nop                                           ; $67b8: $00
    add hl, de                                    ; $67b9: $19
    rla                                           ; $67ba: $17
    add hl, de                                    ; $67bb: $19
    nop                                           ; $67bc: $00
    ld hl, $000c                                  ; $67bd: $21 $0c $00
    dec d                                         ; $67c0: $15
    dec sp                                        ; $67c1: $3b
    nop                                           ; $67c2: $00
    inc sp                                        ; $67c3: $33
    ld bc, $2128                                  ; $67c4: $01 $28 $21
    dec bc                                        ; $67c7: $0b
    nop                                           ; $67c8: $00
    daa                                           ; $67c9: $27
    nop                                           ; $67ca: $00
    rrca                                          ; $67cb: $0f
    ld e, a                                       ; $67cc: $5f
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    rla                                           ; $67cf: $17
    inc hl                                        ; $67d0: $23
    nop                                           ; $67d1: $00
    ld h, l                                       ; $67d2: $65
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    rla                                           ; $67d5: $17
    add hl, de                                    ; $67d6: $19
    nop                                           ; $67d7: $00
    dec de                                        ; $67d8: $1b
    inc b                                         ; $67d9: $04
    nop                                           ; $67da: $00
    ld e, a                                       ; $67db: $5f
    ld bc, $1500                                  ; $67dc: $01 $00 $15
    inc b                                         ; $67df: $04
    nop                                           ; $67e0: $00
    add hl, de                                    ; $67e1: $19
    nop                                           ; $67e2: $00
    ld b, b                                       ; $67e3: $40
    ld e, $19                                     ; $67e4: $1e $19
    nop                                           ; $67e6: $00
    dec d                                         ; $67e7: $15
    ld l, $00                                     ; $67e8: $2e $00
    inc sp                                        ; $67ea: $33
    ld bc, $1729                                  ; $67eb: $01 $29 $17
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    ld e, d                                       ; $67f0: $5a
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    dec d                                         ; $67f3: $15
    ld [bc], a                                    ; $67f4: $02
    nop                                           ; $67f5: $00
    ld a, [de]                                    ; $67f6: $1a
    nop                                           ; $67f7: $00
    inc a                                         ; $67f8: $3c
    dec d                                         ; $67f9: $15
    ld [bc], a                                    ; $67fa: $02
    nop                                           ; $67fb: $00
    add hl, de                                    ; $67fc: $19
    nop                                           ; $67fd: $00
    ld c, e                                       ; $67fe: $4b
    ld hl, $0007                                  ; $67ff: $21 $07 $00
    rla                                           ; $6802: $17
    inc hl                                        ; $6803: $23
    nop                                           ; $6804: $00
    ld h, h                                       ; $6805: $64
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    daa                                           ; $6808: $27
    nop                                           ; $6809: $00
    add hl, de                                    ; $680a: $19
    dec d                                         ; $680b: $15
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    inc sp                                        ; $680e: $33
    ld bc, $172a                                  ; $680f: $01 $2a $17
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    ld hl, $0009                                  ; $6814: $21 $09 $00
    dec d                                         ; $6817: $15
    dec sp                                        ; $6818: $3b
    nop                                           ; $6819: $00
    inc sp                                        ; $681a: $33
    ld bc, $212b                                  ; $681b: $01 $2b $21
    ld [$2700], sp                                ; $681e: $08 $00 $27
    nop                                           ; $6821: $00
    rrca                                          ; $6822: $0f
    ld e, c                                       ; $6823: $59
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    ld e, a                                       ; $6826: $5f
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    rla                                           ; $6829: $17
    inc hl                                        ; $682a: $23
    nop                                           ; $682b: $00
    ld h, l                                       ; $682c: $65
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    rla                                           ; $682f: $17
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    dec de                                        ; $6832: $1b
    inc b                                         ; $6833: $04
    nop                                           ; $6834: $00
    ld e, a                                       ; $6835: $5f
    ld bc, $1500                                  ; $6836: $01 $00 $15
    inc b                                         ; $6839: $04
    nop                                           ; $683a: $00
    add hl, de                                    ; $683b: $19
    nop                                           ; $683c: $00
    ld c, e                                       ; $683d: $4b
    ld e, a                                       ; $683e: $5f
    nop                                           ; $683f: $00
    nop                                           ; $6840: $00
    ld e, e                                       ; $6841: $5b
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    dec de                                        ; $6844: $1b
    inc b                                         ; $6845: $04
    nop                                           ; $6846: $00
    ld e, e                                       ; $6847: $5b
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    ld a, d                                       ; $684a: $7a
    ld bc, $5700                                  ; $684b: $01 $00 $57
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    ld e, a                                       ; $6850: $5f
    ld bc, $0000                                  ; $6851: $01 $00 $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    ld e, a                                       ; $6856: $5f
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    add hl, bc                                    ; $6859: $09
    nop                                           ; $685a: $00
    ld b, $05                                     ; $685b: $06 $05
    dec b                                         ; $685d: $05
    nop                                           ; $685e: $00
    add hl, bc                                    ; $685f: $09
    ccf                                           ; $6860: $3f
    nop                                           ; $6861: $00
    dec b                                         ; $6862: $05
    inc bc                                        ; $6863: $03
    nop                                           ; $6864: $00
    dec d                                         ; $6865: $15
    ld c, e                                       ; $6866: $4b
    nop                                           ; $6867: $00
    rlca                                          ; $6868: $07
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    add hl, bc                                    ; $686e: $09
    nop                                           ; $686f: $00
    ld b, $05                                     ; $6870: $06 $05
    inc bc                                        ; $6872: $03
    nop                                           ; $6873: $00
    dec d                                         ; $6874: $15
    ld bc, $3300                                  ; $6875: $01 $00 $33
    ld bc, $002c                                  ; $6878: $01 $2c $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    add hl, bc                                    ; $687d: $09
    nop                                           ; $687e: $00
    ld b, $05                                     ; $687f: $06 $05
    ld de, $0900                                  ; $6881: $11 $00 $09
    ld bc, $0500                                  ; $6884: $01 $00 $05
    dec c                                         ; $6887: $0d
    nop                                           ; $6888: $00
    rrca                                          ; $6889: $0f
    ld bc, $1501                                  ; $688a: $01 $01 $15
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00
    inc sp                                        ; $688f: $33
    ld bc, $1532                                  ; $6890: $01 $32 $15
    ld d, $00                                     ; $6893: $16 $00
    inc sp                                        ; $6895: $33
    ld bc, $1538                                  ; $6896: $01 $38 $15
    ld c, a                                       ; $6899: $4f
    nop                                           ; $689a: $00
    inc sp                                        ; $689b: $33
    ld bc, $1539                                  ; $689c: $01 $39 $15
    ld d, c                                       ; $689f: $51
    nop                                           ; $68a0: $00
    inc sp                                        ; $68a1: $33
    ld bc, $153a                                  ; $68a2: $01 $3a $15
    ld d, $00                                     ; $68a5: $16 $00
    inc sp                                        ; $68a7: $33
    ld bc, $033b                                  ; $68a8: $01 $3b $03
    inc bc                                        ; $68ab: $03
    nop                                           ; $68ac: $00
    dec d                                         ; $68ad: $15
    ld d, $00                                     ; $68ae: $16 $00
    inc sp                                        ; $68b0: $33
    ld bc, $003b                                  ; $68b1: $01 $3b $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    add hl, bc                                    ; $68b6: $09
    nop                                           ; $68b7: $00
    ld b, $05                                     ; $68b8: $06 $05
    ld de, $0900                                  ; $68ba: $11 $00 $09
    ld bc, $0500                                  ; $68bd: $01 $00 $05
    dec c                                         ; $68c0: $0d
    nop                                           ; $68c1: $00
    rrca                                          ; $68c2: $0f
    ld bc, $1501                                  ; $68c3: $01 $01 $15
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    inc sp                                        ; $68c8: $33
    ld bc, $1532                                  ; $68c9: $01 $32 $15
    ld c, l                                       ; $68cc: $4d
    nop                                           ; $68cd: $00
    inc sp                                        ; $68ce: $33
    ld bc, $1538                                  ; $68cf: $01 $38 $15
    ld c, a                                       ; $68d2: $4f
    nop                                           ; $68d3: $00
    inc sp                                        ; $68d4: $33
    ld bc, $1539                                  ; $68d5: $01 $39 $15
    ld d, c                                       ; $68d8: $51
    nop                                           ; $68d9: $00
    inc sp                                        ; $68da: $33
    ld bc, $153a                                  ; $68db: $01 $3a $15
    ld d, $00                                     ; $68de: $16 $00
    inc sp                                        ; $68e0: $33
    ld bc, $033b                                  ; $68e1: $01 $3b $03
    inc bc                                        ; $68e4: $03
    nop                                           ; $68e5: $00
    dec d                                         ; $68e6: $15
    ld d, c                                       ; $68e7: $51
    nop                                           ; $68e8: $00
    inc sp                                        ; $68e9: $33
    ld bc, $0038                                  ; $68ea: $01 $38 $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    add hl, bc                                    ; $68ef: $09
    nop                                           ; $68f0: $00
    ld b, $05                                     ; $68f1: $06 $05
    ld de, $0900                                  ; $68f3: $11 $00 $09
    ld bc, $0500                                  ; $68f6: $01 $00 $05
    dec c                                         ; $68f9: $0d
    nop                                           ; $68fa: $00
    rrca                                          ; $68fb: $0f
    ld bc, $1501                                  ; $68fc: $01 $01 $15
    nop                                           ; $68ff: $00
    nop                                           ; $6900: $00
    inc sp                                        ; $6901: $33
    ld bc, $1532                                  ; $6902: $01 $32 $15
    ld c, a                                       ; $6905: $4f
    nop                                           ; $6906: $00
    inc sp                                        ; $6907: $33
    ld bc, $1538                                  ; $6908: $01 $38 $15
    ld c, l                                       ; $690b: $4d
    nop                                           ; $690c: $00
    inc sp                                        ; $690d: $33
    ld bc, $1539                                  ; $690e: $01 $39 $15
    ld d, c                                       ; $6911: $51
    nop                                           ; $6912: $00
    inc sp                                        ; $6913: $33
    ld bc, $153a                                  ; $6914: $01 $3a $15
    ld d, $00                                     ; $6917: $16 $00
    inc sp                                        ; $6919: $33
    ld bc, $033b                                  ; $691a: $01 $3b $03
    inc bc                                        ; $691d: $03
    nop                                           ; $691e: $00
    dec d                                         ; $691f: $15
    ld c, a                                       ; $6920: $4f
    nop                                           ; $6921: $00
    inc sp                                        ; $6922: $33
    ld bc, $0038                                  ; $6923: $01 $38 $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    add hl, bc                                    ; $6928: $09
    nop                                           ; $6929: $00
    ld b, $05                                     ; $692a: $06 $05
    ld de, $0900                                  ; $692c: $11 $00 $09
    ld bc, $0500                                  ; $692f: $01 $00 $05
    dec c                                         ; $6932: $0d
    nop                                           ; $6933: $00
    rrca                                          ; $6934: $0f
    ld bc, $1501                                  ; $6935: $01 $01 $15
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    inc sp                                        ; $693a: $33
    ld bc, $1532                                  ; $693b: $01 $32 $15
    ld d, l                                       ; $693e: $55
    nop                                           ; $693f: $00
    inc sp                                        ; $6940: $33
    ld bc, $1538                                  ; $6941: $01 $38 $15
    ld c, a                                       ; $6944: $4f
    nop                                           ; $6945: $00
    inc sp                                        ; $6946: $33
    ld bc, $1539                                  ; $6947: $01 $39 $15
    ld d, c                                       ; $694a: $51
    nop                                           ; $694b: $00
    inc sp                                        ; $694c: $33
    ld bc, $153a                                  ; $694d: $01 $3a $15
    ld d, $00                                     ; $6950: $16 $00
    inc sp                                        ; $6952: $33
    ld bc, $033b                                  ; $6953: $01 $3b $03
    inc bc                                        ; $6956: $03
    nop                                           ; $6957: $00
    dec d                                         ; $6958: $15
    ld d, l                                       ; $6959: $55
    nop                                           ; $695a: $00
    inc sp                                        ; $695b: $33
    ld bc, $0038                                  ; $695c: $01 $38 $00
    nop                                           ; $695f: $00
    nop                                           ; $6960: $00
    add hl, bc                                    ; $6961: $09
    nop                                           ; $6962: $00
    ld b, $05                                     ; $6963: $06 $05
    ld de, $0900                                  ; $6965: $11 $00 $09
    ld bc, $0500                                  ; $6968: $01 $00 $05
    dec c                                         ; $696b: $0d
    nop                                           ; $696c: $00
    rrca                                          ; $696d: $0f
    ld bc, $1501                                  ; $696e: $01 $01 $15
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    inc sp                                        ; $6973: $33
    ld bc, $1532                                  ; $6974: $01 $32 $15
    ld [hl], c                                    ; $6977: $71
    nop                                           ; $6978: $00
    inc sp                                        ; $6979: $33
    ld bc, $1538                                  ; $697a: $01 $38 $15
    ld c, a                                       ; $697d: $4f
    nop                                           ; $697e: $00
    inc sp                                        ; $697f: $33
    ld bc, $1539                                  ; $6980: $01 $39 $15
    ld d, c                                       ; $6983: $51
    nop                                           ; $6984: $00
    inc sp                                        ; $6985: $33
    ld bc, $153a                                  ; $6986: $01 $3a $15
    ld d, $00                                     ; $6989: $16 $00
    inc sp                                        ; $698b: $33
    ld bc, $033b                                  ; $698c: $01 $3b $03
    inc bc                                        ; $698f: $03
    nop                                           ; $6990: $00
    dec d                                         ; $6991: $15
    ld [hl], c                                    ; $6992: $71
    nop                                           ; $6993: $00
    inc sp                                        ; $6994: $33
    ld bc, $0038                                  ; $6995: $01 $38 $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    add hl, bc                                    ; $699a: $09
    nop                                           ; $699b: $00
    ld b, $05                                     ; $699c: $06 $05
    ld de, $0900                                  ; $699e: $11 $00 $09
    ld bc, $0500                                  ; $69a1: $01 $00 $05
    dec c                                         ; $69a4: $0d
    nop                                           ; $69a5: $00
    rrca                                          ; $69a6: $0f
    ld bc, $1501                                  ; $69a7: $01 $01 $15
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    inc sp                                        ; $69ac: $33
    ld bc, $1532                                  ; $69ad: $01 $32 $15
    ld c, l                                       ; $69b0: $4d
    nop                                           ; $69b1: $00
    inc sp                                        ; $69b2: $33
    ld bc, $1538                                  ; $69b3: $01 $38 $15
    ld c, a                                       ; $69b6: $4f
    nop                                           ; $69b7: $00
    inc sp                                        ; $69b8: $33
    ld bc, $1539                                  ; $69b9: $01 $39 $15
    ld d, c                                       ; $69bc: $51
    nop                                           ; $69bd: $00
    inc sp                                        ; $69be: $33
    ld bc, $153a                                  ; $69bf: $01 $3a $15
    ld d, $00                                     ; $69c2: $16 $00
    inc sp                                        ; $69c4: $33
    ld bc, $033b                                  ; $69c5: $01 $3b $03
    inc bc                                        ; $69c8: $03
    nop                                           ; $69c9: $00
    dec d                                         ; $69ca: $15
    ld c, l                                       ; $69cb: $4d
    nop                                           ; $69cc: $00
    inc sp                                        ; $69cd: $33
    ld bc, $0038                                  ; $69ce: $01 $38 $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    add hl, bc                                    ; $69d3: $09
    nop                                           ; $69d4: $00
    ld b, $05                                     ; $69d5: $06 $05
    rrca                                          ; $69d7: $0f
    nop                                           ; $69d8: $00
    add hl, bc                                    ; $69d9: $09
    ld [bc], a                                    ; $69da: $02
    nop                                           ; $69db: $00
    dec b                                         ; $69dc: $05
    dec bc                                        ; $69dd: $0b
    nop                                           ; $69de: $00
    rrca                                          ; $69df: $0f
    ld [bc], a                                    ; $69e0: $02
    ld bc, $0015                                  ; $69e1: $01 $15 $00
    nop                                           ; $69e4: $00
    inc sp                                        ; $69e5: $33
    ld bc, $1532                                  ; $69e6: $01 $32 $15
    ld d, c                                       ; $69e9: $51
    nop                                           ; $69ea: $00
    inc sp                                        ; $69eb: $33
    ld bc, $1535                                  ; $69ec: $01 $35 $15
    ld hl, $3300                                  ; $69ef: $21 $00 $33
    ld bc, $1536                                  ; $69f2: $01 $36 $15
    ld [hl], e                                    ; $69f5: $73
    nop                                           ; $69f6: $00
    inc sp                                        ; $69f7: $33
    ld bc, $0337                                  ; $69f8: $01 $37 $03
    inc bc                                        ; $69fb: $03
    nop                                           ; $69fc: $00
    dec d                                         ; $69fd: $15
    ld d, c                                       ; $69fe: $51
    nop                                           ; $69ff: $00
    inc sp                                        ; $6a00: $33
    ld bc, $0036                                  ; $6a01: $01 $36 $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    add hl, bc                                    ; $6a06: $09
    nop                                           ; $6a07: $00
    ld b, $05                                     ; $6a08: $06 $05
    rrca                                          ; $6a0a: $0f
    nop                                           ; $6a0b: $00
    add hl, bc                                    ; $6a0c: $09
    ld [bc], a                                    ; $6a0d: $02
    nop                                           ; $6a0e: $00
    dec b                                         ; $6a0f: $05
    dec bc                                        ; $6a10: $0b
    nop                                           ; $6a11: $00
    rrca                                          ; $6a12: $0f
    ld [bc], a                                    ; $6a13: $02
    ld bc, $0015                                  ; $6a14: $01 $15 $00
    nop                                           ; $6a17: $00
    inc sp                                        ; $6a18: $33
    ld bc, $1532                                  ; $6a19: $01 $32 $15
    ld [hl], l                                    ; $6a1c: $75
    nop                                           ; $6a1d: $00
    inc sp                                        ; $6a1e: $33
    ld bc, $1535                                  ; $6a1f: $01 $35 $15
    ld [hl], d                                    ; $6a22: $72
    nop                                           ; $6a23: $00
    inc sp                                        ; $6a24: $33
    ld bc, $1536                                  ; $6a25: $01 $36 $15
    ld [hl], e                                    ; $6a28: $73
    nop                                           ; $6a29: $00
    inc sp                                        ; $6a2a: $33
    ld bc, $0337                                  ; $6a2b: $01 $37 $03
    inc bc                                        ; $6a2e: $03
    nop                                           ; $6a2f: $00
    dec d                                         ; $6a30: $15
    ld [hl], l                                    ; $6a31: $75
    nop                                           ; $6a32: $00
    inc sp                                        ; $6a33: $33
    ld bc, $0036                                  ; $6a34: $01 $36 $00
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    add hl, bc                                    ; $6a39: $09
    nop                                           ; $6a3a: $00
    ld b, $05                                     ; $6a3b: $06 $05
    rrca                                          ; $6a3d: $0f
    nop                                           ; $6a3e: $00
    add hl, bc                                    ; $6a3f: $09
    ld [bc], a                                    ; $6a40: $02
    nop                                           ; $6a41: $00
    dec b                                         ; $6a42: $05
    dec bc                                        ; $6a43: $0b
    nop                                           ; $6a44: $00
    rrca                                          ; $6a45: $0f
    ld [bc], a                                    ; $6a46: $02
    ld bc, $0015                                  ; $6a47: $01 $15 $00
    nop                                           ; $6a4a: $00
    inc sp                                        ; $6a4b: $33
    ld bc, $1532                                  ; $6a4c: $01 $32 $15
    ld [hl], l                                    ; $6a4f: $75
    nop                                           ; $6a50: $00
    inc sp                                        ; $6a51: $33
    ld bc, $1535                                  ; $6a52: $01 $35 $15
    ld [hl], d                                    ; $6a55: $72
    nop                                           ; $6a56: $00
    inc sp                                        ; $6a57: $33
    ld bc, $1536                                  ; $6a58: $01 $36 $15
    ld [hl], e                                    ; $6a5b: $73
    nop                                           ; $6a5c: $00
    inc sp                                        ; $6a5d: $33
    ld bc, $0337                                  ; $6a5e: $01 $37 $03
    inc bc                                        ; $6a61: $03
    nop                                           ; $6a62: $00
    dec d                                         ; $6a63: $15
    ld [hl], l                                    ; $6a64: $75
    nop                                           ; $6a65: $00
    inc sp                                        ; $6a66: $33
    ld bc, $0036                                  ; $6a67: $01 $36 $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    add hl, bc                                    ; $6a6c: $09
    nop                                           ; $6a6d: $00
    ld b, $05                                     ; $6a6e: $06 $05
    rrca                                          ; $6a70: $0f
    nop                                           ; $6a71: $00
    add hl, bc                                    ; $6a72: $09
    ld [bc], a                                    ; $6a73: $02
    nop                                           ; $6a74: $00
    dec b                                         ; $6a75: $05
    dec bc                                        ; $6a76: $0b
    nop                                           ; $6a77: $00
    rrca                                          ; $6a78: $0f
    ld [bc], a                                    ; $6a79: $02
    ld bc, $0015                                  ; $6a7a: $01 $15 $00
    nop                                           ; $6a7d: $00
    inc sp                                        ; $6a7e: $33
    ld bc, $1532                                  ; $6a7f: $01 $32 $15
    ld c, [hl]                                    ; $6a82: $4e
    nop                                           ; $6a83: $00
    inc sp                                        ; $6a84: $33
    ld bc, $1535                                  ; $6a85: $01 $35 $15
    ld [hl], d                                    ; $6a88: $72
    nop                                           ; $6a89: $00
    inc sp                                        ; $6a8a: $33
    ld bc, $1536                                  ; $6a8b: $01 $36 $15
    ld [hl], e                                    ; $6a8e: $73
    nop                                           ; $6a8f: $00
    inc sp                                        ; $6a90: $33
    ld bc, $0337                                  ; $6a91: $01 $37 $03
    inc bc                                        ; $6a94: $03
    nop                                           ; $6a95: $00
    dec d                                         ; $6a96: $15
    ld c, [hl]                                    ; $6a97: $4e
    nop                                           ; $6a98: $00
    inc sp                                        ; $6a99: $33
    ld bc, $0036                                  ; $6a9a: $01 $36 $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    add hl, bc                                    ; $6a9f: $09
    nop                                           ; $6aa0: $00
    ld b, $05                                     ; $6aa1: $06 $05
    rrca                                          ; $6aa3: $0f
    nop                                           ; $6aa4: $00
    add hl, bc                                    ; $6aa5: $09
    ld [bc], a                                    ; $6aa6: $02
    nop                                           ; $6aa7: $00
    dec b                                         ; $6aa8: $05
    dec bc                                        ; $6aa9: $0b
    nop                                           ; $6aaa: $00
    rrca                                          ; $6aab: $0f
    ld [bc], a                                    ; $6aac: $02
    ld bc, $0015                                  ; $6aad: $01 $15 $00
    nop                                           ; $6ab0: $00
    inc sp                                        ; $6ab1: $33
    ld bc, $1532                                  ; $6ab2: $01 $32 $15
    ld d, [hl]                                    ; $6ab5: $56
    nop                                           ; $6ab6: $00
    inc sp                                        ; $6ab7: $33
    ld bc, $1535                                  ; $6ab8: $01 $35 $15
    ld [hl], d                                    ; $6abb: $72
    nop                                           ; $6abc: $00
    inc sp                                        ; $6abd: $33
    ld bc, $1536                                  ; $6abe: $01 $36 $15
    ld [hl], e                                    ; $6ac1: $73
    nop                                           ; $6ac2: $00
    inc sp                                        ; $6ac3: $33
    ld bc, $0337                                  ; $6ac4: $01 $37 $03
    inc bc                                        ; $6ac7: $03
    nop                                           ; $6ac8: $00
    dec d                                         ; $6ac9: $15
    ld d, [hl]                                    ; $6aca: $56
    nop                                           ; $6acb: $00
    inc sp                                        ; $6acc: $33
    ld bc, $0036                                  ; $6acd: $01 $36 $00
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    add hl, bc                                    ; $6ad2: $09
    nop                                           ; $6ad3: $00
    ld b, $05                                     ; $6ad4: $06 $05
    rrca                                          ; $6ad6: $0f
    nop                                           ; $6ad7: $00
    add hl, bc                                    ; $6ad8: $09
    ld [bc], a                                    ; $6ad9: $02
    nop                                           ; $6ada: $00
    dec b                                         ; $6adb: $05
    dec bc                                        ; $6adc: $0b
    nop                                           ; $6add: $00
    rrca                                          ; $6ade: $0f
    ld [bc], a                                    ; $6adf: $02
    ld bc, $0015                                  ; $6ae0: $01 $15 $00
    nop                                           ; $6ae3: $00
    inc sp                                        ; $6ae4: $33
    ld bc, $1532                                  ; $6ae5: $01 $32 $15
    ld d, h                                       ; $6ae8: $54
    nop                                           ; $6ae9: $00
    inc sp                                        ; $6aea: $33
    ld bc, $1535                                  ; $6aeb: $01 $35 $15
    ld [hl], d                                    ; $6aee: $72
    nop                                           ; $6aef: $00
    inc sp                                        ; $6af0: $33
    ld bc, $1536                                  ; $6af1: $01 $36 $15
    ld [hl], e                                    ; $6af4: $73
    nop                                           ; $6af5: $00
    inc sp                                        ; $6af6: $33
    ld bc, $0337                                  ; $6af7: $01 $37 $03
    inc bc                                        ; $6afa: $03
    nop                                           ; $6afb: $00
    dec d                                         ; $6afc: $15
    ld d, h                                       ; $6afd: $54
    nop                                           ; $6afe: $00
    inc sp                                        ; $6aff: $33
    ld bc, $0036                                  ; $6b00: $01 $36 $00
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    add hl, bc                                    ; $6b05: $09
    nop                                           ; $6b06: $00
    ld b, $05                                     ; $6b07: $06 $05
    rrca                                          ; $6b09: $0f
    nop                                           ; $6b0a: $00
    add hl, bc                                    ; $6b0b: $09
    ld [bc], a                                    ; $6b0c: $02
    nop                                           ; $6b0d: $00
    dec b                                         ; $6b0e: $05
    dec bc                                        ; $6b0f: $0b
    nop                                           ; $6b10: $00
    rrca                                          ; $6b11: $0f
    ld [bc], a                                    ; $6b12: $02
    ld bc, $0015                                  ; $6b13: $01 $15 $00
    nop                                           ; $6b16: $00
    inc sp                                        ; $6b17: $33
    ld bc, $1532                                  ; $6b18: $01 $32 $15
    ld d, b                                       ; $6b1b: $50
    nop                                           ; $6b1c: $00
    inc sp                                        ; $6b1d: $33
    ld bc, $1535                                  ; $6b1e: $01 $35 $15
    ld [hl], d                                    ; $6b21: $72
    nop                                           ; $6b22: $00
    inc sp                                        ; $6b23: $33
    ld bc, $1536                                  ; $6b24: $01 $36 $15
    ld [hl], e                                    ; $6b27: $73
    nop                                           ; $6b28: $00
    inc sp                                        ; $6b29: $33
    ld bc, $0337                                  ; $6b2a: $01 $37 $03
    inc bc                                        ; $6b2d: $03
    nop                                           ; $6b2e: $00
    dec d                                         ; $6b2f: $15
    ld d, b                                       ; $6b30: $50
    nop                                           ; $6b31: $00
    inc sp                                        ; $6b32: $33
    ld bc, $0036                                  ; $6b33: $01 $36 $00
    nop                                           ; $6b36: $00
    nop                                           ; $6b37: $00
    add hl, bc                                    ; $6b38: $09
    nop                                           ; $6b39: $00
    ld b, $05                                     ; $6b3a: $06 $05
    dec c                                         ; $6b3c: $0d
    nop                                           ; $6b3d: $00
    add hl, bc                                    ; $6b3e: $09
    ld [bc], a                                    ; $6b3f: $02
    nop                                           ; $6b40: $00
    dec b                                         ; $6b41: $05
    add hl, bc                                    ; $6b42: $09
    nop                                           ; $6b43: $00
    rrca                                          ; $6b44: $0f
    ld [bc], a                                    ; $6b45: $02
    ld bc, $0015                                  ; $6b46: $01 $15 $00
    nop                                           ; $6b49: $00
    inc sp                                        ; $6b4a: $33
    ld bc, $1532                                  ; $6b4b: $01 $32 $15
    ld [hl], e                                    ; $6b4e: $73
    nop                                           ; $6b4f: $00
    inc sp                                        ; $6b50: $33
    ld bc, $1535                                  ; $6b51: $01 $35 $15
    ld [hl], d                                    ; $6b54: $72
    nop                                           ; $6b55: $00
    inc sp                                        ; $6b56: $33
    ld bc, $0336                                  ; $6b57: $01 $36 $03
    inc bc                                        ; $6b5a: $03
    nop                                           ; $6b5b: $00
    dec d                                         ; $6b5c: $15
    ld [hl], e                                    ; $6b5d: $73
    nop                                           ; $6b5e: $00
    inc sp                                        ; $6b5f: $33
    ld bc, $0036                                  ; $6b60: $01 $36 $00
    nop                                           ; $6b63: $00
    nop                                           ; $6b64: $00
    add hl, bc                                    ; $6b65: $09
    nop                                           ; $6b66: $00
    ld b, $05                                     ; $6b67: $06 $05
    dec c                                         ; $6b69: $0d
    nop                                           ; $6b6a: $00
    add hl, bc                                    ; $6b6b: $09
    inc bc                                        ; $6b6c: $03
    nop                                           ; $6b6d: $00
    dec b                                         ; $6b6e: $05
    add hl, bc                                    ; $6b6f: $09
    nop                                           ; $6b70: $00
    rrca                                          ; $6b71: $0f
    inc bc                                        ; $6b72: $03
    ld bc, $0015                                  ; $6b73: $01 $15 $00
    nop                                           ; $6b76: $00
    inc sp                                        ; $6b77: $33
    ld bc, $1532                                  ; $6b78: $01 $32 $15
    ld [hl], c                                    ; $6b7b: $71
    nop                                           ; $6b7c: $00
    inc sp                                        ; $6b7d: $33
    ld bc, $1533                                  ; $6b7e: $01 $33 $15
    ld d, [hl]                                    ; $6b81: $56
    nop                                           ; $6b82: $00
    inc sp                                        ; $6b83: $33
    ld bc, $0334                                  ; $6b84: $01 $34 $03
    inc bc                                        ; $6b87: $03
    nop                                           ; $6b88: $00
    dec d                                         ; $6b89: $15
    ld [hl], c                                    ; $6b8a: $71
    nop                                           ; $6b8b: $00
    inc sp                                        ; $6b8c: $33
    ld bc, $0034                                  ; $6b8d: $01 $34 $00
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    add hl, bc                                    ; $6b92: $09
    nop                                           ; $6b93: $00
    ld b, $05                                     ; $6b94: $06 $05
    dec c                                         ; $6b96: $0d
    nop                                           ; $6b97: $00
    add hl, bc                                    ; $6b98: $09
    inc bc                                        ; $6b99: $03
    nop                                           ; $6b9a: $00
    dec b                                         ; $6b9b: $05
    add hl, bc                                    ; $6b9c: $09
    nop                                           ; $6b9d: $00
    rrca                                          ; $6b9e: $0f
    inc bc                                        ; $6b9f: $03
    ld bc, $0015                                  ; $6ba0: $01 $15 $00
    nop                                           ; $6ba3: $00
    inc sp                                        ; $6ba4: $33
    ld bc, $1532                                  ; $6ba5: $01 $32 $15
    ld d, b                                       ; $6ba8: $50
    nop                                           ; $6ba9: $00
    inc sp                                        ; $6baa: $33
    ld bc, $1533                                  ; $6bab: $01 $33 $15
    ld d, [hl]                                    ; $6bae: $56
    nop                                           ; $6baf: $00
    inc sp                                        ; $6bb0: $33
    ld bc, $0334                                  ; $6bb1: $01 $34 $03
    inc bc                                        ; $6bb4: $03
    nop                                           ; $6bb5: $00
    dec d                                         ; $6bb6: $15
    ld d, b                                       ; $6bb7: $50
    nop                                           ; $6bb8: $00
    inc sp                                        ; $6bb9: $33
    ld bc, $0034                                  ; $6bba: $01 $34 $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    add hl, bc                                    ; $6bbf: $09
    nop                                           ; $6bc0: $00
    ld b, $05                                     ; $6bc1: $06 $05
    dec c                                         ; $6bc3: $0d
    nop                                           ; $6bc4: $00
    add hl, bc                                    ; $6bc5: $09
    inc bc                                        ; $6bc6: $03
    nop                                           ; $6bc7: $00
    dec b                                         ; $6bc8: $05
    add hl, bc                                    ; $6bc9: $09
    nop                                           ; $6bca: $00
    rrca                                          ; $6bcb: $0f
    inc bc                                        ; $6bcc: $03
    ld bc, $0015                                  ; $6bcd: $01 $15 $00
    nop                                           ; $6bd0: $00
    inc sp                                        ; $6bd1: $33
    ld bc, $1532                                  ; $6bd2: $01 $32 $15
    ld c, a                                       ; $6bd5: $4f
    nop                                           ; $6bd6: $00
    inc sp                                        ; $6bd7: $33
    ld bc, $1533                                  ; $6bd8: $01 $33 $15
    ld d, [hl]                                    ; $6bdb: $56
    nop                                           ; $6bdc: $00
    inc sp                                        ; $6bdd: $33
    ld bc, $0334                                  ; $6bde: $01 $34 $03
    inc bc                                        ; $6be1: $03
    nop                                           ; $6be2: $00
    dec d                                         ; $6be3: $15
    ld c, a                                       ; $6be4: $4f
    nop                                           ; $6be5: $00
    inc sp                                        ; $6be6: $33
    ld bc, $0034                                  ; $6be7: $01 $34 $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    add hl, bc                                    ; $6bec: $09
    nop                                           ; $6bed: $00
    ld b, $05                                     ; $6bee: $06 $05
    dec c                                         ; $6bf0: $0d
    nop                                           ; $6bf1: $00
    add hl, bc                                    ; $6bf2: $09
    inc bc                                        ; $6bf3: $03
    nop                                           ; $6bf4: $00
    dec b                                         ; $6bf5: $05
    add hl, bc                                    ; $6bf6: $09
    nop                                           ; $6bf7: $00
    rrca                                          ; $6bf8: $0f
    inc bc                                        ; $6bf9: $03
    ld bc, $0015                                  ; $6bfa: $01 $15 $00
    nop                                           ; $6bfd: $00
    inc sp                                        ; $6bfe: $33
    ld bc, $1532                                  ; $6bff: $01 $32 $15
    ld [hl], d                                    ; $6c02: $72
    nop                                           ; $6c03: $00
    inc sp                                        ; $6c04: $33
    ld bc, $1533                                  ; $6c05: $01 $33 $15
    ld d, [hl]                                    ; $6c08: $56
    nop                                           ; $6c09: $00
    inc sp                                        ; $6c0a: $33
    ld bc, $0334                                  ; $6c0b: $01 $34 $03
    inc bc                                        ; $6c0e: $03
    nop                                           ; $6c0f: $00
    dec d                                         ; $6c10: $15
    ld [hl], d                                    ; $6c11: $72
    nop                                           ; $6c12: $00
    inc sp                                        ; $6c13: $33
    ld bc, $0034                                  ; $6c14: $01 $34 $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    add hl, bc                                    ; $6c19: $09
    nop                                           ; $6c1a: $00
    ld b, $05                                     ; $6c1b: $06 $05
    dec c                                         ; $6c1d: $0d
    nop                                           ; $6c1e: $00
    add hl, bc                                    ; $6c1f: $09
    inc bc                                        ; $6c20: $03
    nop                                           ; $6c21: $00
    dec b                                         ; $6c22: $05
    add hl, bc                                    ; $6c23: $09
    nop                                           ; $6c24: $00
    rrca                                          ; $6c25: $0f
    inc bc                                        ; $6c26: $03
    ld bc, $0015                                  ; $6c27: $01 $15 $00
    nop                                           ; $6c2a: $00
    inc sp                                        ; $6c2b: $33
    ld bc, $1532                                  ; $6c2c: $01 $32 $15
    ld d, d                                       ; $6c2f: $52
    nop                                           ; $6c30: $00
    inc sp                                        ; $6c31: $33
    ld bc, $1533                                  ; $6c32: $01 $33 $15
    ld d, [hl]                                    ; $6c35: $56
    nop                                           ; $6c36: $00
    inc sp                                        ; $6c37: $33
    ld bc, $0334                                  ; $6c38: $01 $34 $03
    inc bc                                        ; $6c3b: $03
    nop                                           ; $6c3c: $00
    dec d                                         ; $6c3d: $15
    ld d, d                                       ; $6c3e: $52
    nop                                           ; $6c3f: $00
    inc sp                                        ; $6c40: $33
    ld bc, $0034                                  ; $6c41: $01 $34 $00
    nop                                           ; $6c44: $00
    nop                                           ; $6c45: $00
    add hl, bc                                    ; $6c46: $09
    nop                                           ; $6c47: $00
    ld b, $05                                     ; $6c48: $06 $05
    dec c                                         ; $6c4a: $0d
    nop                                           ; $6c4b: $00
    add hl, bc                                    ; $6c4c: $09
    inc bc                                        ; $6c4d: $03
    nop                                           ; $6c4e: $00
    dec b                                         ; $6c4f: $05
    add hl, bc                                    ; $6c50: $09
    nop                                           ; $6c51: $00
    rrca                                          ; $6c52: $0f
    inc bc                                        ; $6c53: $03
    ld bc, $0015                                  ; $6c54: $01 $15 $00
    nop                                           ; $6c57: $00
    inc sp                                        ; $6c58: $33
    ld bc, $1532                                  ; $6c59: $01 $32 $15
    ld d, h                                       ; $6c5c: $54
    nop                                           ; $6c5d: $00
    inc sp                                        ; $6c5e: $33
    ld bc, $1533                                  ; $6c5f: $01 $33 $15
    ld d, [hl]                                    ; $6c62: $56
    nop                                           ; $6c63: $00
    inc sp                                        ; $6c64: $33
    ld bc, $0334                                  ; $6c65: $01 $34 $03
    inc bc                                        ; $6c68: $03
    nop                                           ; $6c69: $00
    dec d                                         ; $6c6a: $15
    ld d, h                                       ; $6c6b: $54
    nop                                           ; $6c6c: $00
    inc sp                                        ; $6c6d: $33
    ld bc, $0034                                  ; $6c6e: $01 $34 $00
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    add hl, bc                                    ; $6c73: $09
    nop                                           ; $6c74: $00
    ld b, $05                                     ; $6c75: $06 $05
    dec c                                         ; $6c77: $0d
    nop                                           ; $6c78: $00
    add hl, bc                                    ; $6c79: $09
    inc bc                                        ; $6c7a: $03
    nop                                           ; $6c7b: $00
    dec b                                         ; $6c7c: $05
    add hl, bc                                    ; $6c7d: $09
    nop                                           ; $6c7e: $00
    rrca                                          ; $6c7f: $0f
    inc bc                                        ; $6c80: $03
    ld bc, $0015                                  ; $6c81: $01 $15 $00
    nop                                           ; $6c84: $00
    inc sp                                        ; $6c85: $33
    ld bc, $1532                                  ; $6c86: $01 $32 $15
    ld c, [hl]                                    ; $6c89: $4e
    nop                                           ; $6c8a: $00
    inc sp                                        ; $6c8b: $33
    ld bc, $1533                                  ; $6c8c: $01 $33 $15
    ld d, [hl]                                    ; $6c8f: $56
    nop                                           ; $6c90: $00
    inc sp                                        ; $6c91: $33
    ld bc, $0334                                  ; $6c92: $01 $34 $03
    inc bc                                        ; $6c95: $03
    nop                                           ; $6c96: $00
    dec d                                         ; $6c97: $15
    ld c, [hl]                                    ; $6c98: $4e
    nop                                           ; $6c99: $00
    inc sp                                        ; $6c9a: $33
    ld bc, $0034                                  ; $6c9b: $01 $34 $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    add hl, bc                                    ; $6ca0: $09
    nop                                           ; $6ca1: $00
    ld b, $05                                     ; $6ca2: $06 $05
    dec c                                         ; $6ca4: $0d
    nop                                           ; $6ca5: $00
    add hl, bc                                    ; $6ca6: $09
    inc bc                                        ; $6ca7: $03
    nop                                           ; $6ca8: $00
    dec b                                         ; $6ca9: $05
    add hl, bc                                    ; $6caa: $09
    nop                                           ; $6cab: $00
    rrca                                          ; $6cac: $0f
    inc bc                                        ; $6cad: $03
    ld bc, $0015                                  ; $6cae: $01 $15 $00
    nop                                           ; $6cb1: $00
    inc sp                                        ; $6cb2: $33
    ld bc, $1532                                  ; $6cb3: $01 $32 $15
    ld d, l                                       ; $6cb6: $55
    nop                                           ; $6cb7: $00
    inc sp                                        ; $6cb8: $33
    ld bc, $1533                                  ; $6cb9: $01 $33 $15
    ld d, [hl]                                    ; $6cbc: $56
    nop                                           ; $6cbd: $00
    inc sp                                        ; $6cbe: $33
    ld bc, $0334                                  ; $6cbf: $01 $34 $03
    inc bc                                        ; $6cc2: $03
    nop                                           ; $6cc3: $00
    dec d                                         ; $6cc4: $15
    ld d, l                                       ; $6cc5: $55
    nop                                           ; $6cc6: $00
    inc sp                                        ; $6cc7: $33
    ld bc, $0034                                  ; $6cc8: $01 $34 $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    add hl, bc                                    ; $6ccd: $09
    nop                                           ; $6cce: $00
    ld b, $05                                     ; $6ccf: $06 $05
    add hl, bc                                    ; $6cd1: $09
    nop                                           ; $6cd2: $00
    ld d, [hl]                                    ; $6cd3: $56
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    dec d                                         ; $6cd6: $15
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    inc sp                                        ; $6cd9: $33
    ld bc, $1532                                  ; $6cda: $01 $32 $15
    add hl, de                                    ; $6cdd: $19
    nop                                           ; $6cde: $00
    inc sp                                        ; $6cdf: $33
    ld bc, $0f41                                  ; $6ce0: $01 $41 $0f
    ld c, $01                                     ; $6ce3: $0e $01
    dec d                                         ; $6ce5: $15
    ld c, e                                       ; $6ce6: $4b
    nop                                           ; $6ce7: $00
    rlca                                          ; $6ce8: $07
    rlca                                          ; $6ce9: $07
    ld a, $00                                     ; $6cea: $3e $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    add hl, bc                                    ; $6cee: $09
    nop                                           ; $6cef: $00
    ld b, $05                                     ; $6cf0: $06 $05
    add hl, bc                                    ; $6cf2: $09
    nop                                           ; $6cf3: $00
    ld d, [hl]                                    ; $6cf4: $56
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    dec d                                         ; $6cf7: $15
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    inc sp                                        ; $6cfa: $33
    ld bc, $1532                                  ; $6cfb: $01 $32 $15
    ccf                                           ; $6cfe: $3f
    nop                                           ; $6cff: $00
    inc sp                                        ; $6d00: $33
    ld bc, $0f41                                  ; $6d01: $01 $41 $0f
    ld c, $02                                     ; $6d04: $0e $02
    dec d                                         ; $6d06: $15
    ld c, e                                       ; $6d07: $4b
    nop                                           ; $6d08: $00
    rlca                                          ; $6d09: $07
    rlca                                          ; $6d0a: $07
    ld a, $00                                     ; $6d0b: $3e $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    add hl, bc                                    ; $6d0f: $09
    nop                                           ; $6d10: $00
    ld b, $05                                     ; $6d11: $06 $05
    add hl, bc                                    ; $6d13: $09
    nop                                           ; $6d14: $00
    ld d, [hl]                                    ; $6d15: $56
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    dec d                                         ; $6d18: $15
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    inc sp                                        ; $6d1b: $33
    ld bc, $1532                                  ; $6d1c: $01 $32 $15
    ld d, d                                       ; $6d1f: $52
    nop                                           ; $6d20: $00
    inc sp                                        ; $6d21: $33
    ld bc, $0f41                                  ; $6d22: $01 $41 $0f
    ld c, $03                                     ; $6d25: $0e $03
    dec d                                         ; $6d27: $15
    ld c, e                                       ; $6d28: $4b
    nop                                           ; $6d29: $00
    rlca                                          ; $6d2a: $07
    rlca                                          ; $6d2b: $07
    ld a, $00                                     ; $6d2c: $3e $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    add hl, bc                                    ; $6d30: $09
    nop                                           ; $6d31: $00
    ld b, $05                                     ; $6d32: $06 $05
    add hl, bc                                    ; $6d34: $09
    nop                                           ; $6d35: $00
    ld d, [hl]                                    ; $6d36: $56
    nop                                           ; $6d37: $00
    nop                                           ; $6d38: $00
    dec d                                         ; $6d39: $15
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    inc sp                                        ; $6d3c: $33
    ld bc, $1532                                  ; $6d3d: $01 $32 $15
    ld c, [hl]                                    ; $6d40: $4e
    nop                                           ; $6d41: $00
    inc sp                                        ; $6d42: $33
    ld bc, $0f41                                  ; $6d43: $01 $41 $0f
    ld c, $04                                     ; $6d46: $0e $04
    dec d                                         ; $6d48: $15
    ld c, e                                       ; $6d49: $4b
    nop                                           ; $6d4a: $00
    rlca                                          ; $6d4b: $07
    rlca                                          ; $6d4c: $07
    ld a, $00                                     ; $6d4d: $3e $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    add hl, bc                                    ; $6d51: $09
    nop                                           ; $6d52: $00
    ld b, $05                                     ; $6d53: $06 $05
    add hl, bc                                    ; $6d55: $09
    nop                                           ; $6d56: $00
    ld d, [hl]                                    ; $6d57: $56
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    dec d                                         ; $6d5a: $15
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    inc sp                                        ; $6d5d: $33
    ld bc, $1532                                  ; $6d5e: $01 $32 $15
    ld d, a                                       ; $6d61: $57
    nop                                           ; $6d62: $00
    inc sp                                        ; $6d63: $33
    ld bc, $0f41                                  ; $6d64: $01 $41 $0f
    ld c, $05                                     ; $6d67: $0e $05
    dec d                                         ; $6d69: $15
    ld c, e                                       ; $6d6a: $4b
    nop                                           ; $6d6b: $00
    rlca                                          ; $6d6c: $07
    rlca                                          ; $6d6d: $07
    ld a, $00                                     ; $6d6e: $3e $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    add hl, bc                                    ; $6d72: $09
    nop                                           ; $6d73: $00
    ld b, $05                                     ; $6d74: $06 $05
    add hl, bc                                    ; $6d76: $09
    nop                                           ; $6d77: $00
    ld d, [hl]                                    ; $6d78: $56
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    dec d                                         ; $6d7b: $15
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    inc sp                                        ; $6d7e: $33
    ld bc, $1532                                  ; $6d7f: $01 $32 $15
    inc l                                         ; $6d82: $2c
    nop                                           ; $6d83: $00
    inc sp                                        ; $6d84: $33
    ld bc, $0f41                                  ; $6d85: $01 $41 $0f
    ld c, $06                                     ; $6d88: $0e $06
    dec d                                         ; $6d8a: $15
    ld c, e                                       ; $6d8b: $4b
    nop                                           ; $6d8c: $00
    rlca                                          ; $6d8d: $07
    rlca                                          ; $6d8e: $07
    ld a, $00                                     ; $6d8f: $3e $00
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    add hl, bc                                    ; $6d93: $09
    nop                                           ; $6d94: $00
    ld b, $05                                     ; $6d95: $06 $05
    add hl, bc                                    ; $6d97: $09
    nop                                           ; $6d98: $00
    ld d, [hl]                                    ; $6d99: $56
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    dec d                                         ; $6d9c: $15
    nop                                           ; $6d9d: $00
    nop                                           ; $6d9e: $00
    inc sp                                        ; $6d9f: $33
    ld bc, $1532                                  ; $6da0: $01 $32 $15
    halt                                          ; $6da3: $76
    nop                                           ; $6da4: $00
    inc sp                                        ; $6da5: $33
    ld bc, $0f41                                  ; $6da6: $01 $41 $0f
    ld c, $07                                     ; $6da9: $0e $07
    dec d                                         ; $6dab: $15
    ld c, e                                       ; $6dac: $4b
    nop                                           ; $6dad: $00
    rlca                                          ; $6dae: $07
    rlca                                          ; $6daf: $07
    ld a, $00                                     ; $6db0: $3e $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    add hl, bc                                    ; $6db4: $09
    nop                                           ; $6db5: $00
    ld b, $05                                     ; $6db6: $06 $05
    add hl, bc                                    ; $6db8: $09
    nop                                           ; $6db9: $00
    ld d, [hl]                                    ; $6dba: $56
    nop                                           ; $6dbb: $00
    nop                                           ; $6dbc: $00
    dec d                                         ; $6dbd: $15
    nop                                           ; $6dbe: $00
    nop                                           ; $6dbf: $00
    inc sp                                        ; $6dc0: $33
    ld bc, $1532                                  ; $6dc1: $01 $32 $15
    ld e, b                                       ; $6dc4: $58
    nop                                           ; $6dc5: $00
    inc sp                                        ; $6dc6: $33
    ld bc, $0f41                                  ; $6dc7: $01 $41 $0f
    ld c, $08                                     ; $6dca: $0e $08
    dec d                                         ; $6dcc: $15
    ld c, e                                       ; $6dcd: $4b
    nop                                           ; $6dce: $00
    rlca                                          ; $6dcf: $07
    rlca                                          ; $6dd0: $07
    ld a, $00                                     ; $6dd1: $3e $00
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    add hl, bc                                    ; $6dd5: $09
    nop                                           ; $6dd6: $00
    ld b, $05                                     ; $6dd7: $06 $05
    dec b                                         ; $6dd9: $05
    nop                                           ; $6dda: $00
    dec d                                         ; $6ddb: $15
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    inc sp                                        ; $6dde: $33
    ld bc, $1532                                  ; $6ddf: $01 $32 $15
    cpl                                           ; $6de2: $2f
    nop                                           ; $6de3: $00
    inc sp                                        ; $6de4: $33
    ld bc, $003f                                  ; $6de5: $01 $3f $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    add hl, bc                                    ; $6dea: $09
    nop                                           ; $6deb: $00
    ld b, $05                                     ; $6dec: $06 $05
    dec b                                         ; $6dee: $05
    nop                                           ; $6def: $00
    dec d                                         ; $6df0: $15
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    inc sp                                        ; $6df3: $33
    ld bc, $1532                                  ; $6df4: $01 $32 $15
    jr nc, jr_00d_6df9                            ; $6df7: $30 $00

jr_00d_6df9:
    inc sp                                        ; $6df9: $33
    ld bc, $0040                                  ; $6dfa: $01 $40 $00
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00
    add hl, bc                                    ; $6dff: $09
    nop                                           ; $6e00: $00
    ld b, $05                                     ; $6e01: $06 $05
    inc b                                         ; $6e03: $04
    nop                                           ; $6e04: $00
    ld l, $44                                     ; $6e05: $2e $44
    nop                                           ; $6e07: $00
    dec d                                         ; $6e08: $15
    ld sp, $3300                                  ; $6e09: $31 $00 $33
    ld bc, $003e                                  ; $6e0c: $01 $3e $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00
    ld e, a                                       ; $6e11: $5f
    nop                                           ; $6e12: $00
    nop                                           ; $6e13: $00
    add hl, bc                                    ; $6e14: $09
    nop                                           ; $6e15: $00
    ld b, $05                                     ; $6e16: $06 $05
    ld c, $00                                     ; $6e18: $0e $00
    ld d, [hl]                                    ; $6e1a: $56
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    rla                                           ; $6e1d: $17
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    dec de                                        ; $6e20: $1b
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    ld e, a                                       ; $6e23: $5f
    ld bc, $1500                                  ; $6e24: $01 $00 $15
    scf                                           ; $6e27: $37
    nop                                           ; $6e28: $00
    inc sp                                        ; $6e29: $33
    ld bc, $153c                                  ; $6e2a: $01 $3c $15
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    inc sp                                        ; $6e2f: $33
    ld bc, $1532                                  ; $6e30: $01 $32 $15
    scf                                           ; $6e33: $37
    nop                                           ; $6e34: $00
    inc sp                                        ; $6e35: $33
    ld bc, $343d                                  ; $6e36: $01 $3d $34
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    rrca                                          ; $6e3b: $0f
    ld c, $00                                     ; $6e3c: $0e $00
    inc bc                                        ; $6e3e: $03
    ld [bc], a                                    ; $6e3f: $02
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    ld [$000e], sp                                ; $6e44: $08 $0e $00
    dec d                                         ; $6e47: $15
    ld c, e                                       ; $6e48: $4b
    nop                                           ; $6e49: $00
    rlca                                          ; $6e4a: $07
    rlca                                          ; $6e4b: $07
    ld [hl], a                                    ; $6e4c: $77
    dec d                                         ; $6e4d: $15
    ld c, e                                       ; $6e4e: $4b
    nop                                           ; $6e4f: $00
    rlca                                          ; $6e50: $07
    rlca                                          ; $6e51: $07
    or [hl]                                       ; $6e52: $b6
    dec d                                         ; $6e53: $15
    ld c, e                                       ; $6e54: $4b
    nop                                           ; $6e55: $00
    rlca                                          ; $6e56: $07
    rlca                                          ; $6e57: $07
    rl l                                          ; $6e58: $cb $15
    ld c, e                                       ; $6e5a: $4b
    nop                                           ; $6e5b: $00
    rlca                                          ; $6e5c: $07
    rlca                                          ; $6e5d: $07
    push af                                       ; $6e5e: $f5
    dec d                                         ; $6e5f: $15
    ld c, e                                       ; $6e60: $4b
    nop                                           ; $6e61: $00
    rlca                                          ; $6e62: $07
    ld [$1519], sp                                ; $6e63: $08 $19 $15
    ld c, e                                       ; $6e66: $4b
    nop                                           ; $6e67: $00
    rlca                                          ; $6e68: $07
    ld [$155b], sp                                ; $6e69: $08 $5b $15
    ld c, e                                       ; $6e6c: $4b
    nop                                           ; $6e6d: $00
    rlca                                          ; $6e6e: $07
    ld [$1597], sp                                ; $6e6f: $08 $97 $15
    ld c, e                                       ; $6e72: $4b
    nop                                           ; $6e73: $00
    rlca                                          ; $6e74: $07
    ld [$15d9], sp                                ; $6e75: $08 $d9 $15
    ld c, e                                       ; $6e78: $4b
    nop                                           ; $6e79: $00
    rlca                                          ; $6e7a: $07
    add hl, bc                                    ; $6e7b: $09
    dec d                                         ; $6e7c: $15
    dec d                                         ; $6e7d: $15
    ld [bc], a                                    ; $6e7e: $02
    nop                                           ; $6e7f: $00
    add hl, hl                                    ; $6e80: $29
    nop                                           ; $6e81: $00
    ld [de], a                                    ; $6e82: $12
    ld e, h                                       ; $6e83: $5c
    nop                                           ; $6e84: $00
    nop                                           ; $6e85: $00
    dec d                                         ; $6e86: $15
    add hl, de                                    ; $6e87: $19
    nop                                           ; $6e88: $00
    inc sp                                        ; $6e89: $33
    ld bc, $1542                                  ; $6e8a: $01 $42 $15
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    inc sp                                        ; $6e8f: $33
    ld bc, $5d43                                  ; $6e90: $01 $43 $5d
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    dec d                                         ; $6e95: $15
    ld [bc], a                                    ; $6e96: $02
    nop                                           ; $6e97: $00
    add hl, hl                                    ; $6e98: $29
    inc b                                         ; $6e99: $04
    ld [de], a                                    ; $6e9a: $12
    rla                                           ; $6e9b: $17
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    ld e, c                                       ; $6e9e: $59
    nop                                           ; $6e9f: $00
    nop                                           ; $6ea0: $00
    dec d                                         ; $6ea1: $15
    ld b, $00                                     ; $6ea2: $06 $00
    add hl, de                                    ; $6ea4: $19
    nop                                           ; $6ea5: $00
    ld b, d                                       ; $6ea6: $42
    dec d                                         ; $6ea7: $15
    nop                                           ; $6ea8: $00
    nop                                           ; $6ea9: $00
    add hl, de                                    ; $6eaa: $19
    nop                                           ; $6eab: $00
    sub [hl]                                      ; $6eac: $96
    dec d                                         ; $6ead: $15
    ld [bc], a                                    ; $6eae: $02
    nop                                           ; $6eaf: $00
    add hl, de                                    ; $6eb0: $19
    nop                                           ; $6eb1: $00
    inc c                                         ; $6eb2: $0c
    dec de                                        ; $6eb3: $1b
    ld [bc], a                                    ; $6eb4: $02
    nop                                           ; $6eb5: $00
    dec d                                         ; $6eb6: $15
    ld c, e                                       ; $6eb7: $4b
    nop                                           ; $6eb8: $00
    rlca                                          ; $6eb9: $07
    add hl, bc                                    ; $6eba: $09
    ld d, c                                       ; $6ebb: $51
    rla                                           ; $6ebc: $17
    nop                                           ; $6ebd: $00
    nop                                           ; $6ebe: $00
    ld e, d                                       ; $6ebf: $5a
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    inc de                                        ; $6ec2: $13
    ld bc, $71f0                                  ; $6ec3: $01 $f0 $71
    nop                                           ; $6ec6: $00
    di                                            ; $6ec7: $f3
    dec de                                        ; $6ec8: $1b
    ld [bc], a                                    ; $6ec9: $02
    nop                                           ; $6eca: $00
    dec d                                         ; $6ecb: $15
    ld c, e                                       ; $6ecc: $4b
    nop                                           ; $6ecd: $00
    rlca                                          ; $6ece: $07
    add hl, bc                                    ; $6ecf: $09
    ld d, c                                       ; $6ed0: $51
    dec d                                         ; $6ed1: $15
    add hl, de                                    ; $6ed2: $19
    nop                                           ; $6ed3: $00
    inc sp                                        ; $6ed4: $33
    ld bc, $1542                                  ; $6ed5: $01 $42 $15
    nop                                           ; $6ed8: $00
    nop                                           ; $6ed9: $00
    inc sp                                        ; $6eda: $33
    ld bc, $1743                                  ; $6edb: $01 $43 $17
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    inc de                                        ; $6ee0: $13
    ld bc, $71d8                                  ; $6ee1: $01 $d8 $71
    ld bc, $154b                                  ; $6ee4: $01 $4b $15
    ld b, $00                                     ; $6ee7: $06 $00
    add hl, de                                    ; $6ee9: $19
    nop                                           ; $6eea: $00
    ld h, b                                       ; $6eeb: $60
    dec d                                         ; $6eec: $15
    inc b                                         ; $6eed: $04
    nop                                           ; $6eee: $00
    add hl, de                                    ; $6eef: $19
    nop                                           ; $6ef0: $00
    inc [hl]                                      ; $6ef1: $34
    dec de                                        ; $6ef2: $1b
    ld [bc], a                                    ; $6ef3: $02
    nop                                           ; $6ef4: $00
    dec d                                         ; $6ef5: $15
    ld c, e                                       ; $6ef6: $4b
    nop                                           ; $6ef7: $00
    rlca                                          ; $6ef8: $07
    add hl, bc                                    ; $6ef9: $09
    ld d, c                                       ; $6efa: $51
    dec d                                         ; $6efb: $15
    add hl, de                                    ; $6efc: $19
    nop                                           ; $6efd: $00
    inc sp                                        ; $6efe: $33
    ld bc, $1542                                  ; $6eff: $01 $42 $15
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    inc sp                                        ; $6f04: $33
    ld bc, $1743                                  ; $6f05: $01 $43 $17
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    dec d                                         ; $6f0a: $15
    ld b, $00                                     ; $6f0b: $06 $00
    add hl, de                                    ; $6f0d: $19
    nop                                           ; $6f0e: $00
    ld b, $13                                     ; $6f0f: $06 $13
    ld [bc], a                                    ; $6f11: $02
    ld a, [bc]                                    ; $6f12: $0a
    ld [hl], c                                    ; $6f13: $71
    nop                                           ; $6f14: $00
    ldh a, [rNR31]                                ; $6f15: $f0 $1b
    ld [bc], a                                    ; $6f17: $02
    nop                                           ; $6f18: $00
    dec d                                         ; $6f19: $15
    ld c, e                                       ; $6f1a: $4b
    nop                                           ; $6f1b: $00
    rlca                                          ; $6f1c: $07
    add hl, bc                                    ; $6f1d: $09
    ld d, c                                       ; $6f1e: $51
    dec d                                         ; $6f1f: $15
    ld [bc], a                                    ; $6f20: $02
    nop                                           ; $6f21: $00
    add hl, hl                                    ; $6f22: $29
    rlca                                          ; $6f23: $07
    dec b                                         ; $6f24: $05
    ld e, h                                       ; $6f25: $5c
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    dec d                                         ; $6f28: $15
    add hl, de                                    ; $6f29: $19
    nop                                           ; $6f2a: $00
    inc sp                                        ; $6f2b: $33
    ld bc, $1542                                  ; $6f2c: $01 $42 $15
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    inc sp                                        ; $6f31: $33
    ld bc, $5d43                                  ; $6f32: $01 $43 $5d
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    dec d                                         ; $6f37: $15
    ld [bc], a                                    ; $6f38: $02
    nop                                           ; $6f39: $00
    add hl, hl                                    ; $6f3a: $29
    inc bc                                        ; $6f3b: $03
    dec b                                         ; $6f3c: $05
    rla                                           ; $6f3d: $17
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    ld e, c                                       ; $6f40: $59
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    rla                                           ; $6f43: $17
    nop                                           ; $6f44: $00
    nop                                           ; $6f45: $00
    inc de                                        ; $6f46: $13
    ld bc, $71d8                                  ; $6f47: $01 $d8 $71
    ld bc, $154b                                  ; $6f4a: $01 $4b $15
    ld b, $00                                     ; $6f4d: $06 $00
    add hl, de                                    ; $6f4f: $19
    nop                                           ; $6f50: $00
    ld h, b                                       ; $6f51: $60
    dec d                                         ; $6f52: $15
    inc b                                         ; $6f53: $04
    nop                                           ; $6f54: $00
    add hl, de                                    ; $6f55: $19
    nop                                           ; $6f56: $00
    inc [hl]                                      ; $6f57: $34
    dec de                                        ; $6f58: $1b
    ld [bc], a                                    ; $6f59: $02
    nop                                           ; $6f5a: $00
    dec d                                         ; $6f5b: $15
    ld c, e                                       ; $6f5c: $4b
    nop                                           ; $6f5d: $00
    rlca                                          ; $6f5e: $07
    add hl, bc                                    ; $6f5f: $09
    ld d, c                                       ; $6f60: $51
    dec d                                         ; $6f61: $15
    ld [bc], a                                    ; $6f62: $02
    nop                                           ; $6f63: $00
    add hl, hl                                    ; $6f64: $29
    nop                                           ; $6f65: $00
    ld [$005c], sp                                ; $6f66: $08 $5c $00
    nop                                           ; $6f69: $00
    dec d                                         ; $6f6a: $15
    add hl, de                                    ; $6f6b: $19
    nop                                           ; $6f6c: $00
    inc sp                                        ; $6f6d: $33
    ld bc, $1542                                  ; $6f6e: $01 $42 $15
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    inc sp                                        ; $6f73: $33
    ld bc, $5d43                                  ; $6f74: $01 $43 $5d
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    dec d                                         ; $6f79: $15
    ld [bc], a                                    ; $6f7a: $02
    nop                                           ; $6f7b: $00
    add hl, hl                                    ; $6f7c: $29
    inc b                                         ; $6f7d: $04
    ld [$0017], sp                                ; $6f7e: $08 $17 $00
    nop                                           ; $6f81: $00
    ld e, c                                       ; $6f82: $59
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    rla                                           ; $6f85: $17
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    dec d                                         ; $6f88: $15
    ld b, $00                                     ; $6f89: $06 $00
    add hl, de                                    ; $6f8b: $19
    nop                                           ; $6f8c: $00
    ld b, $13                                     ; $6f8d: $06 $13
    ld [bc], a                                    ; $6f8f: $02
    ld a, [bc]                                    ; $6f90: $0a
    ld [hl], c                                    ; $6f91: $71
    nop                                           ; $6f92: $00
    ldh a, [rNR31]                                ; $6f93: $f0 $1b
    ld [bc], a                                    ; $6f95: $02
    nop                                           ; $6f96: $00
    dec d                                         ; $6f97: $15
    ld c, e                                       ; $6f98: $4b
    nop                                           ; $6f99: $00
    rlca                                          ; $6f9a: $07
    add hl, bc                                    ; $6f9b: $09
    ld d, c                                       ; $6f9c: $51
    dec d                                         ; $6f9d: $15
    ld [bc], a                                    ; $6f9e: $02
    nop                                           ; $6f9f: $00
    add hl, hl                                    ; $6fa0: $29
    rlca                                          ; $6fa1: $07
    ld [$005c], sp                                ; $6fa2: $08 $5c $00
    nop                                           ; $6fa5: $00
    dec d                                         ; $6fa6: $15
    add hl, de                                    ; $6fa7: $19
    nop                                           ; $6fa8: $00
    inc sp                                        ; $6fa9: $33
    ld bc, $1542                                  ; $6faa: $01 $42 $15
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    inc sp                                        ; $6faf: $33
    ld bc, $5d43                                  ; $6fb0: $01 $43 $5d
    nop                                           ; $6fb3: $00
    nop                                           ; $6fb4: $00
    dec d                                         ; $6fb5: $15
    ld [bc], a                                    ; $6fb6: $02
    nop                                           ; $6fb7: $00
    add hl, hl                                    ; $6fb8: $29
    inc bc                                        ; $6fb9: $03
    ld [$0017], sp                                ; $6fba: $08 $17 $00
    nop                                           ; $6fbd: $00
    ld e, c                                       ; $6fbe: $59
    nop                                           ; $6fbf: $00
    nop                                           ; $6fc0: $00
    rla                                           ; $6fc1: $17
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    inc de                                        ; $6fc4: $13
    ld bc, $71d8                                  ; $6fc5: $01 $d8 $71
    ld bc, $154b                                  ; $6fc8: $01 $4b $15
    ld b, $00                                     ; $6fcb: $06 $00
    add hl, de                                    ; $6fcd: $19
    nop                                           ; $6fce: $00
    ld h, b                                       ; $6fcf: $60
    dec d                                         ; $6fd0: $15
    inc b                                         ; $6fd1: $04
    nop                                           ; $6fd2: $00
    add hl, de                                    ; $6fd3: $19
    nop                                           ; $6fd4: $00
    inc [hl]                                      ; $6fd5: $34
    dec de                                        ; $6fd6: $1b
    ld [bc], a                                    ; $6fd7: $02
    nop                                           ; $6fd8: $00
    dec d                                         ; $6fd9: $15
    ld c, e                                       ; $6fda: $4b
    nop                                           ; $6fdb: $00
    rlca                                          ; $6fdc: $07
    add hl, bc                                    ; $6fdd: $09
    ld d, c                                       ; $6fde: $51
    dec d                                         ; $6fdf: $15
    ld [bc], a                                    ; $6fe0: $02
    nop                                           ; $6fe1: $00
    add hl, hl                                    ; $6fe2: $29
    nop                                           ; $6fe3: $00
    inc c                                         ; $6fe4: $0c
    ld e, h                                       ; $6fe5: $5c
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    dec d                                         ; $6fe8: $15
    add hl, de                                    ; $6fe9: $19
    nop                                           ; $6fea: $00
    inc sp                                        ; $6feb: $33
    ld bc, $1542                                  ; $6fec: $01 $42 $15
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    inc sp                                        ; $6ff1: $33
    ld bc, $5d43                                  ; $6ff2: $01 $43 $5d
    nop                                           ; $6ff5: $00
    nop                                           ; $6ff6: $00
    dec d                                         ; $6ff7: $15
    ld [bc], a                                    ; $6ff8: $02
    nop                                           ; $6ff9: $00
    add hl, hl                                    ; $6ffa: $29
    inc b                                         ; $6ffb: $04
    inc c                                         ; $6ffc: $0c
    rla                                           ; $6ffd: $17
    nop                                           ; $6ffe: $00
    nop                                           ; $6fff: $00
    ld e, c                                       ; $7000: $59
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    rla                                           ; $7003: $17
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    dec d                                         ; $7006: $15
    ld b, $00                                     ; $7007: $06 $00
    add hl, de                                    ; $7009: $19
    nop                                           ; $700a: $00
    ld b, $13                                     ; $700b: $06 $13
    ld [bc], a                                    ; $700d: $02
    ld a, [bc]                                    ; $700e: $0a
    ld [hl], c                                    ; $700f: $71
    nop                                           ; $7010: $00
    ldh a, [rNR31]                                ; $7011: $f0 $1b
    ld [bc], a                                    ; $7013: $02
    nop                                           ; $7014: $00
    dec d                                         ; $7015: $15
    ld c, e                                       ; $7016: $4b
    nop                                           ; $7017: $00
    rlca                                          ; $7018: $07
    add hl, bc                                    ; $7019: $09
    ld d, c                                       ; $701a: $51
    dec d                                         ; $701b: $15
    ld [bc], a                                    ; $701c: $02
    nop                                           ; $701d: $00
    add hl, hl                                    ; $701e: $29
    rlca                                          ; $701f: $07
    inc c                                         ; $7020: $0c
    ld e, h                                       ; $7021: $5c
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    dec d                                         ; $7024: $15
    add hl, de                                    ; $7025: $19
    nop                                           ; $7026: $00
    inc sp                                        ; $7027: $33
    ld bc, $1542                                  ; $7028: $01 $42 $15
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    inc sp                                        ; $702d: $33
    ld bc, $5d43                                  ; $702e: $01 $43 $5d
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    dec d                                         ; $7033: $15
    ld [bc], a                                    ; $7034: $02
    nop                                           ; $7035: $00
    add hl, hl                                    ; $7036: $29
    inc bc                                        ; $7037: $03
    inc c                                         ; $7038: $0c
    rla                                           ; $7039: $17
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    ld e, c                                       ; $703c: $59
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    rla                                           ; $703f: $17
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    inc de                                        ; $7042: $13
    ld bc, $71d8                                  ; $7043: $01 $d8 $71
    ld bc, $154b                                  ; $7046: $01 $4b $15
    ld b, $00                                     ; $7049: $06 $00
    add hl, de                                    ; $704b: $19
    nop                                           ; $704c: $00
    ld h, b                                       ; $704d: $60
    dec d                                         ; $704e: $15
    inc b                                         ; $704f: $04
    nop                                           ; $7050: $00
    add hl, de                                    ; $7051: $19
    nop                                           ; $7052: $00
    inc [hl]                                      ; $7053: $34
    dec de                                        ; $7054: $1b
    ld [bc], a                                    ; $7055: $02
    nop                                           ; $7056: $00
    rla                                           ; $7057: $17
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    ld e, d                                       ; $705a: $5a
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    inc de                                        ; $705d: $13
    ld [bc], a                                    ; $705e: $02
    inc c                                         ; $705f: $0c
    ld [hl], c                                    ; $7060: $71
    nop                                           ; $7061: $00
    ld sp, hl                                     ; $7062: $f9
    dec de                                        ; $7063: $1b
    ld [bc], a                                    ; $7064: $02
    nop                                           ; $7065: $00
    inc de                                        ; $7066: $13
    ld [bc], a                                    ; $7067: $02
    inc c                                         ; $7068: $0c
    ld e, b                                       ; $7069: $58
    nop                                           ; $706a: $00
    db $fc                                        ; $706b: $fc
    ld e, e                                       ; $706c: $5b
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    ld hl, $0019                                  ; $706f: $21 $19 $00
    daa                                           ; $7072: $27
    nop                                           ; $7073: $00
    inc c                                         ; $7074: $0c
    dec d                                         ; $7075: $15
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    inc sp                                        ; $7078: $33
    ld bc, $1544                                  ; $7079: $01 $44 $15
    add hl, de                                    ; $707c: $19
    nop                                           ; $707d: $00
    inc sp                                        ; $707e: $33
    ld bc, $5f45                                  ; $707f: $01 $45 $5f
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    inc de                                        ; $7084: $13
    nop                                           ; $7085: $00
    jp nc, $0114                                  ; $7086: $d2 $14 $01

    xor b                                         ; $7089: $a8
    dec d                                         ; $708a: $15
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    ld d, $24                                     ; $708d: $16 $24
    nop                                           ; $708f: $00
    ld d, d                                       ; $7090: $52
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    dec de                                        ; $7093: $1b
    inc b                                         ; $7094: $04
    nop                                           ; $7095: $00
    ld e, a                                       ; $7096: $5f
    ld bc, $1500                                  ; $7097: $01 $00 $15
    inc b                                         ; $709a: $04
    nop                                           ; $709b: $00
    add hl, de                                    ; $709c: $19
    nop                                           ; $709d: $00
    ld a, [de]                                    ; $709e: $1a
    dec d                                         ; $709f: $15
    ld [bc], a                                    ; $70a0: $02
    nop                                           ; $70a1: $00
    add hl, de                                    ; $70a2: $19
    nop                                           ; $70a3: $00
    ld a, [de]                                    ; $70a4: $1a
    dec d                                         ; $70a5: $15
    inc b                                         ; $70a6: $04
    nop                                           ; $70a7: $00
    add hl, de                                    ; $70a8: $19
    nop                                           ; $70a9: $00
    ld e, $1b                                     ; $70aa: $1e $1b
    inc b                                         ; $70ac: $04
    nop                                           ; $70ad: $00
    dec d                                         ; $70ae: $15
    dec d                                         ; $70af: $15
    nop                                           ; $70b0: $00
    inc sp                                        ; $70b1: $33
    ld bc, $1546                                  ; $70b2: $01 $46 $15
    nop                                           ; $70b5: $00
    nop                                           ; $70b6: $00
    inc sp                                        ; $70b7: $33
    ld bc, $1547                                  ; $70b8: $01 $47 $15
    add hl, de                                    ; $70bb: $19
    nop                                           ; $70bc: $00
    inc sp                                        ; $70bd: $33
    ld bc, $1548                                  ; $70be: $01 $48 $15
    dec d                                         ; $70c1: $15
    nop                                           ; $70c2: $00
    inc sp                                        ; $70c3: $33
    ld bc, $2749                                  ; $70c4: $01 $49 $27
    nop                                           ; $70c7: $00
    ld b, $15                                     ; $70c8: $06 $15
    ld bc, $2900                                  ; $70ca: $01 $00 $29
    ld [bc], a                                    ; $70cd: $02
    inc bc                                        ; $70ce: $03
    rla                                           ; $70cf: $17
    inc h                                         ; $70d0: $24
    nop                                           ; $70d1: $00
    ld e, d                                       ; $70d2: $5a
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    inc de                                        ; $70d5: $13
    ld bc, $71db                                  ; $70d6: $01 $db $71
    ld bc, $134e                                  ; $70d9: $01 $4e $13
    ld [bc], a                                    ; $70dc: $02
    inc c                                         ; $70dd: $0c
    ld [hl], c                                    ; $70de: $71
    ld bc, $1346                                  ; $70df: $01 $46 $13
    ld [bc], a                                    ; $70e2: $02
    inc c                                         ; $70e3: $0c
    ld e, b                                       ; $70e4: $58
    ld bc, $1b43                                  ; $70e5: $01 $43 $1b
    ld b, $00                                     ; $70e8: $06 $00
    ld hl, $0022                                  ; $70ea: $21 $22 $00
    daa                                           ; $70ed: $27
    nop                                           ; $70ee: $00
    inc d                                         ; $70ef: $14
    dec d                                         ; $70f0: $15
    add hl, sp                                    ; $70f1: $39
    nop                                           ; $70f2: $00
    inc sp                                        ; $70f3: $33
    ld bc, $4a4a                                  ; $70f4: $01 $4a $4a
    ld bc, $2702                                  ; $70f7: $01 $02 $27
    nop                                           ; $70fa: $00
    ld e, $17                                     ; $70fb: $1e $17
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    ld e, c                                       ; $70ff: $59
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    inc de                                        ; $7102: $13
    ld [bc], a                                    ; $7103: $02
    inc c                                         ; $7104: $0c
    ld e, b                                       ; $7105: $58
    nop                                           ; $7106: $00
    db $fc                                        ; $7107: $fc
    ld hl, $0028                                  ; $7108: $21 $28 $00
    ld c, c                                       ; $710b: $49
    ld bc, $2702                                  ; $710c: $01 $02 $27
    nop                                           ; $710f: $00
    ld e, $15                                     ; $7110: $1e $15
    add hl, sp                                    ; $7112: $39
    nop                                           ; $7113: $00
    inc sp                                        ; $7114: $33
    ld bc, $2777                                  ; $7115: $01 $77 $27
    nop                                           ; $7118: $00
    inc d                                         ; $7119: $14
    ld h, d                                       ; $711a: $62
    rlca                                          ; $711b: $07
    nop                                           ; $711c: $00
    ld d, a                                       ; $711d: $57
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    inc l                                         ; $7120: $2c
    dec b                                         ; $7121: $05
    ld [bc], a                                    ; $7122: $02
    ld a, c                                       ; $7123: $79
    inc bc                                        ; $7124: $03
    ld c, d                                       ; $7125: $4a
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    add hl, bc                                    ; $7129: $09
    nop                                           ; $712a: $00
    ld b, $05                                     ; $712b: $06 $05
    inc bc                                        ; $712d: $03
    nop                                           ; $712e: $00
    dec d                                         ; $712f: $15
    ld a, [hl-]                                   ; $7130: $3a
    nop                                           ; $7131: $00
    inc sp                                        ; $7132: $33
    ld bc, $0030                                  ; $7133: $01 $30 $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    add hl, bc                                    ; $7138: $09
    nop                                           ; $7139: $00
    ld b, $05                                     ; $713a: $06 $05
    inc bc                                        ; $713c: $03
    nop                                           ; $713d: $00
    dec d                                         ; $713e: $15
    jr c, jr_00d_7141                             ; $713f: $38 $00

jr_00d_7141:
    inc sp                                        ; $7141: $33
    ld bc, $002d                                  ; $7142: $01 $2d $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    add hl, bc                                    ; $7147: $09
    nop                                           ; $7148: $00
    ld b, $05                                     ; $7149: $06 $05
    inc bc                                        ; $714b: $03
    nop                                           ; $714c: $00
    dec d                                         ; $714d: $15
    add hl, sp                                    ; $714e: $39
    nop                                           ; $714f: $00
    inc sp                                        ; $7150: $33
    ld bc, $002f                                  ; $7151: $01 $2f $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    add hl, bc                                    ; $7156: $09
    nop                                           ; $7157: $00
    ld b, $05                                     ; $7158: $06 $05
    inc bc                                        ; $715a: $03
    nop                                           ; $715b: $00
    dec d                                         ; $715c: $15
    ld l, $00                                     ; $715d: $2e $00
    inc sp                                        ; $715f: $33
    dec bc                                        ; $7160: $0b
    inc b                                         ; $7161: $04
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    add hl, bc                                    ; $7165: $09
    nop                                           ; $7166: $00
    ld b, $05                                     ; $7167: $06 $05
    inc b                                         ; $7169: $04
    nop                                           ; $716a: $00
    dec d                                         ; $716b: $15
    dec d                                         ; $716c: $15
    nop                                           ; $716d: $00
    inc sp                                        ; $716e: $33
    ld a, [bc]                                    ; $716f: $0a
    inc b                                         ; $7170: $04
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    add hl, bc                                    ; $7177: $09
    nop                                           ; $7178: $00
    ld b, $05                                     ; $7179: $06 $05
    inc b                                         ; $717b: $04
    nop                                           ; $717c: $00
    dec d                                         ; $717d: $15
    dec a                                         ; $717e: $3d
    nop                                           ; $717f: $00
    inc sp                                        ; $7180: $33
    ld bc, $00cc                                  ; $7181: $01 $cc $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    ld bc, $0000                                  ; $7189: $01 $00 $00
    ld e, a                                       ; $718c: $5f
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    add hl, bc                                    ; $718f: $09
    nop                                           ; $7190: $00
    inc sp                                        ; $7191: $33
    dec b                                         ; $7192: $05
    dec bc                                        ; $7193: $0b
    nop                                           ; $7194: $00
    add hl, bc                                    ; $7195: $09
    ld [$0501], sp                                ; $7196: $08 $01 $05
    add hl, bc                                    ; $7199: $09
    nop                                           ; $719a: $00
    inc de                                        ; $719b: $13
    rst $38                                       ; $719c: $ff
    add sp, $14                                   ; $719d: $e8 $14
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    dec d                                         ; $71a1: $15
    nop                                           ; $71a2: $00
    nop                                           ; $71a3: $00
    ld d, $39                                     ; $71a4: $16 $39
    ld bc, $0052                                  ; $71a6: $01 $52 $00
    nop                                           ; $71a9: $00
    ld [hl+], a                                   ; $71aa: $22
    nop                                           ; $71ab: $00
    nop                                           ; $71ac: $00
    ld e, a                                       ; $71ad: $5f
    ld bc, $0000                                  ; $71ae: $01 $00 $00
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    ld e, a                                       ; $71b3: $5f
    ld bc, $0000                                  ; $71b4: $01 $00 $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00
    ld de, $0000                                  ; $71b9: $11 $00 $00
    nop                                           ; $71bc: $00
    or h                                          ; $71bd: $b4
    ld bc, $027a                                  ; $71be: $01 $7a $02
    ld d, d                                       ; $71c1: $52
    inc bc                                        ; $71c2: $03
    ld a, [hl+]                                   ; $71c3: $2a
    inc b                                         ; $71c4: $04
    ld [bc], a                                    ; $71c5: $02
    inc b                                         ; $71c6: $04
    jp c, $a005                                   ; $71c7: $da $05 $a0

    ld b, $66                                     ; $71ca: $06 $66
    rlca                                          ; $71cc: $07
    inc l                                         ; $71cd: $2c
    rlca                                          ; $71ce: $07
    ld a, [c]                                     ; $71cf: $f2
    ld [$09ca], sp                                ; $71d0: $08 $ca $09
    and d                                         ; $71d3: $a2
    ld a, [bc]                                    ; $71d4: $0a
    ld a, d                                       ; $71d5: $7a
    dec bc                                        ; $71d6: $0b
    ld d, d                                       ; $71d7: $52
    inc c                                         ; $71d8: $0c
    ld a, [hl+]                                   ; $71d9: $2a
    dec c                                         ; $71da: $0d
    ld [bc], a                                    ; $71db: $02
    ld d, [hl]                                    ; $71dc: $56
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    rla                                           ; $71df: $17
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    dec de                                        ; $71e2: $1b
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    ld e, a                                       ; $71e5: $5f
    ld bc, $6300                                  ; $71e6: $01 $00 $63
    cp $09                                        ; $71e9: $fe $09
    ld [$00fe], sp                                ; $71eb: $08 $fe $00
    dec d                                         ; $71ee: $15
    ld c, l                                       ; $71ef: $4d
    nop                                           ; $71f0: $00
    rlca                                          ; $71f1: $07
    nop                                           ; $71f2: $00
    ld c, b                                       ; $71f3: $48
    dec d                                         ; $71f4: $15
    ld c, l                                       ; $71f5: $4d
    nop                                           ; $71f6: $00
    rlca                                          ; $71f7: $07
    nop                                           ; $71f8: $00
    ld d, h                                       ; $71f9: $54
    dec d                                         ; $71fa: $15
    ld c, l                                       ; $71fb: $4d
    nop                                           ; $71fc: $00
    rlca                                          ; $71fd: $07
    nop                                           ; $71fe: $00
    ld h, b                                       ; $71ff: $60
    dec d                                         ; $7200: $15
    ld c, l                                       ; $7201: $4d
    nop                                           ; $7202: $00
    rlca                                          ; $7203: $07
    nop                                           ; $7204: $00
    ld l, h                                       ; $7205: $6c
    dec d                                         ; $7206: $15
    ld c, l                                       ; $7207: $4d
    nop                                           ; $7208: $00
    rlca                                          ; $7209: $07
    nop                                           ; $720a: $00
    ld a, b                                       ; $720b: $78
    dec d                                         ; $720c: $15
    ld c, l                                       ; $720d: $4d
    nop                                           ; $720e: $00
    rlca                                          ; $720f: $07
    nop                                           ; $7210: $00
    add h                                         ; $7211: $84
    dec d                                         ; $7212: $15
    ld c, l                                       ; $7213: $4d
    nop                                           ; $7214: $00
    rlca                                          ; $7215: $07
    nop                                           ; $7216: $00
    sub b                                         ; $7217: $90
    dec d                                         ; $7218: $15
    ld c, l                                       ; $7219: $4d
    nop                                           ; $721a: $00
    rlca                                          ; $721b: $07
    nop                                           ; $721c: $00
    sbc h                                         ; $721d: $9c
    dec d                                         ; $721e: $15
    ld c, l                                       ; $721f: $4d
    nop                                           ; $7220: $00
    rlca                                          ; $7221: $07
    nop                                           ; $7222: $00
    xor b                                         ; $7223: $a8
    dec d                                         ; $7224: $15
    ld l, [hl]                                    ; $7225: $6e
    nop                                           ; $7226: $00
    inc sp                                        ; $7227: $33
    dec bc                                        ; $7228: $0b
    dec [hl]                                      ; $7229: $35
    ld d, a                                       ; $722a: $57
    nop                                           ; $722b: $00
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    dec d                                         ; $7230: $15
    ld l, [hl]                                    ; $7231: $6e
    nop                                           ; $7232: $00
    inc sp                                        ; $7233: $33
    dec bc                                        ; $7234: $0b
    ld [hl], $57                                  ; $7235: $36 $57
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    nop                                           ; $723b: $00
    dec d                                         ; $723c: $15
    ld l, [hl]                                    ; $723d: $6e
    nop                                           ; $723e: $00
    inc sp                                        ; $723f: $33
    dec bc                                        ; $7240: $0b
    scf                                           ; $7241: $37
    ld d, a                                       ; $7242: $57
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    dec d                                         ; $7248: $15
    ld l, [hl]                                    ; $7249: $6e
    nop                                           ; $724a: $00
    inc sp                                        ; $724b: $33
    dec bc                                        ; $724c: $0b
    jr c, jr_00d_72a6                             ; $724d: $38 $57

    nop                                           ; $724f: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    dec d                                         ; $7254: $15
    ld l, [hl]                                    ; $7255: $6e
    nop                                           ; $7256: $00
    inc sp                                        ; $7257: $33
    dec bc                                        ; $7258: $0b
    add hl, sp                                    ; $7259: $39
    ld d, a                                       ; $725a: $57
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    dec d                                         ; $7260: $15
    ld l, [hl]                                    ; $7261: $6e
    nop                                           ; $7262: $00
    inc sp                                        ; $7263: $33
    dec bc                                        ; $7264: $0b
    ld a, [hl-]                                   ; $7265: $3a
    ld d, a                                       ; $7266: $57
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    nop                                           ; $726b: $00
    dec d                                         ; $726c: $15
    ld l, [hl]                                    ; $726d: $6e
    nop                                           ; $726e: $00
    inc sp                                        ; $726f: $33
    dec bc                                        ; $7270: $0b
    dec sp                                        ; $7271: $3b
    ld d, a                                       ; $7272: $57
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    dec d                                         ; $7278: $15
    ld l, [hl]                                    ; $7279: $6e
    nop                                           ; $727a: $00
    inc sp                                        ; $727b: $33
    dec bc                                        ; $727c: $0b
    inc a                                         ; $727d: $3c
    ld d, a                                       ; $727e: $57
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    dec d                                         ; $7284: $15
    ld l, [hl]                                    ; $7285: $6e
    nop                                           ; $7286: $00
    inc sp                                        ; $7287: $33
    dec bc                                        ; $7288: $0b
    dec a                                         ; $7289: $3d
    ld d, a                                       ; $728a: $57
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    ld d, [hl]                                    ; $7290: $56
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    rla                                           ; $7293: $17
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    dec de                                        ; $7296: $1b
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    ld e, a                                       ; $7299: $5f
    ld bc, $6300                                  ; $729a: $01 $00 $63
    cp $0a                                        ; $729d: $fe $0a
    ld [$00fe], sp                                ; $729f: $08 $fe $00
    dec d                                         ; $72a2: $15
    ld c, l                                       ; $72a3: $4d
    nop                                           ; $72a4: $00
    rlca                                          ; $72a5: $07

jr_00d_72a6:
    ld bc, $1502                                  ; $72a6: $01 $02 $15
    ld c, l                                       ; $72a9: $4d
    nop                                           ; $72aa: $00
    rlca                                          ; $72ab: $07
    ld bc, $150e                                  ; $72ac: $01 $0e $15
    ld c, l                                       ; $72af: $4d
    nop                                           ; $72b0: $00
    rlca                                          ; $72b1: $07
    ld bc, $151a                                  ; $72b2: $01 $1a $15
    ld c, l                                       ; $72b5: $4d
    nop                                           ; $72b6: $00
    rlca                                          ; $72b7: $07
    ld bc, $1526                                  ; $72b8: $01 $26 $15
    ld c, l                                       ; $72bb: $4d
    nop                                           ; $72bc: $00
    rlca                                          ; $72bd: $07
    ld bc, $1532                                  ; $72be: $01 $32 $15
    ld c, l                                       ; $72c1: $4d
    nop                                           ; $72c2: $00
    rlca                                          ; $72c3: $07
    ld bc, $153e                                  ; $72c4: $01 $3e $15
    ld c, l                                       ; $72c7: $4d
    nop                                           ; $72c8: $00
    rlca                                          ; $72c9: $07
    ld bc, $154a                                  ; $72ca: $01 $4a $15
    ld c, l                                       ; $72cd: $4d
    nop                                           ; $72ce: $00
    rlca                                          ; $72cf: $07
    ld bc, $1556                                  ; $72d0: $01 $56 $15
    ld c, l                                       ; $72d3: $4d
    nop                                           ; $72d4: $00
    rlca                                          ; $72d5: $07
    ld bc, $1562                                  ; $72d6: $01 $62 $15
    ld c, l                                       ; $72d9: $4d
    nop                                           ; $72da: $00
    rlca                                          ; $72db: $07
    ld bc, $156e                                  ; $72dc: $01 $6e $15
    ld l, l                                       ; $72df: $6d
    nop                                           ; $72e0: $00
    inc sp                                        ; $72e1: $33
    dec bc                                        ; $72e2: $0b
    ld a, $57                                     ; $72e3: $3e $57
    nop                                           ; $72e5: $00
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    nop                                           ; $72e8: $00
    nop                                           ; $72e9: $00
    dec d                                         ; $72ea: $15
    ld l, l                                       ; $72eb: $6d
    nop                                           ; $72ec: $00
    inc sp                                        ; $72ed: $33
    dec bc                                        ; $72ee: $0b
    ccf                                           ; $72ef: $3f
    ld d, a                                       ; $72f0: $57
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    dec d                                         ; $72f6: $15
    ld l, l                                       ; $72f7: $6d
    nop                                           ; $72f8: $00
    inc sp                                        ; $72f9: $33
    dec bc                                        ; $72fa: $0b
    ld b, b                                       ; $72fb: $40
    ld d, a                                       ; $72fc: $57
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    dec d                                         ; $7302: $15
    ld l, l                                       ; $7303: $6d
    nop                                           ; $7304: $00
    inc sp                                        ; $7305: $33
    dec bc                                        ; $7306: $0b
    ld b, c                                       ; $7307: $41
    ld d, a                                       ; $7308: $57
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    dec d                                         ; $730e: $15
    ld l, l                                       ; $730f: $6d
    nop                                           ; $7310: $00
    inc sp                                        ; $7311: $33
    dec bc                                        ; $7312: $0b
    ld b, d                                       ; $7313: $42
    ld d, a                                       ; $7314: $57
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    dec d                                         ; $731a: $15
    ld l, l                                       ; $731b: $6d
    nop                                           ; $731c: $00
    inc sp                                        ; $731d: $33
    dec bc                                        ; $731e: $0b
    ld b, e                                       ; $731f: $43
    ld d, a                                       ; $7320: $57
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    dec d                                         ; $7326: $15
    ld l, l                                       ; $7327: $6d
    nop                                           ; $7328: $00
    inc sp                                        ; $7329: $33
    dec bc                                        ; $732a: $0b
    ld b, h                                       ; $732b: $44
    ld d, a                                       ; $732c: $57
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    dec d                                         ; $7332: $15
    ld l, l                                       ; $7333: $6d
    nop                                           ; $7334: $00
    inc sp                                        ; $7335: $33
    dec bc                                        ; $7336: $0b
    ld b, l                                       ; $7337: $45
    ld d, a                                       ; $7338: $57
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    dec d                                         ; $733e: $15
    ld l, l                                       ; $733f: $6d
    nop                                           ; $7340: $00
    inc sp                                        ; $7341: $33
    dec bc                                        ; $7342: $0b
    ld b, [hl]                                    ; $7343: $46
    ld d, a                                       ; $7344: $57
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    dec d                                         ; $734a: $15
    ld l, l                                       ; $734b: $6d
    nop                                           ; $734c: $00
    inc sp                                        ; $734d: $33
    dec bc                                        ; $734e: $0b
    ld b, a                                       ; $734f: $47
    ld d, a                                       ; $7350: $57
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    ld d, [hl]                                    ; $7356: $56
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    rla                                           ; $7359: $17
    nop                                           ; $735a: $00
    nop                                           ; $735b: $00
    dec de                                        ; $735c: $1b
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    ld e, a                                       ; $735f: $5f
    ld bc, $6300                                  ; $7360: $01 $00 $63
    cp $0b                                        ; $7363: $fe $0b
    ld [$00fe], sp                                ; $7365: $08 $fe $00
    dec d                                         ; $7368: $15
    ld c, l                                       ; $7369: $4d
    nop                                           ; $736a: $00
    rlca                                          ; $736b: $07
    ld bc, $15ce                                  ; $736c: $01 $ce $15
    ld c, l                                       ; $736f: $4d
    nop                                           ; $7370: $00
    rlca                                          ; $7371: $07
    ld bc, $15da                                  ; $7372: $01 $da $15
    ld c, l                                       ; $7375: $4d
    nop                                           ; $7376: $00
    rlca                                          ; $7377: $07
    ld bc, $15e6                                  ; $7378: $01 $e6 $15
    ld c, l                                       ; $737b: $4d
    nop                                           ; $737c: $00
    rlca                                          ; $737d: $07
    ld bc, $15f2                                  ; $737e: $01 $f2 $15
    ld c, l                                       ; $7381: $4d
    nop                                           ; $7382: $00
    rlca                                          ; $7383: $07
    ld bc, $15fe                                  ; $7384: $01 $fe $15
    ld c, l                                       ; $7387: $4d
    nop                                           ; $7388: $00
    rlca                                          ; $7389: $07
    ld [bc], a                                    ; $738a: $02
    ld a, [bc]                                    ; $738b: $0a
    dec d                                         ; $738c: $15
    ld c, l                                       ; $738d: $4d
    nop                                           ; $738e: $00
    rlca                                          ; $738f: $07
    ld [bc], a                                    ; $7390: $02
    ld d, $15                                     ; $7391: $16 $15
    ld c, l                                       ; $7393: $4d
    nop                                           ; $7394: $00
    rlca                                          ; $7395: $07
    ld [bc], a                                    ; $7396: $02
    ld [hl+], a                                   ; $7397: $22
    dec d                                         ; $7398: $15
    ld c, l                                       ; $7399: $4d
    nop                                           ; $739a: $00
    rlca                                          ; $739b: $07
    ld [bc], a                                    ; $739c: $02
    ld l, $15                                     ; $739d: $2e $15
    ld c, l                                       ; $739f: $4d
    nop                                           ; $73a0: $00
    rlca                                          ; $73a1: $07
    ld [bc], a                                    ; $73a2: $02
    ld a, [hl-]                                   ; $73a3: $3a
    dec d                                         ; $73a4: $15
    ld c, l                                       ; $73a5: $4d
    nop                                           ; $73a6: $00
    rlca                                          ; $73a7: $07
    ld [bc], a                                    ; $73a8: $02
    ld b, [hl]                                    ; $73a9: $46
    dec d                                         ; $73aa: $15
    ld h, [hl]                                    ; $73ab: $66
    nop                                           ; $73ac: $00
    inc sp                                        ; $73ad: $33
    dec bc                                        ; $73ae: $0b
    ld c, b                                       ; $73af: $48
    ld d, a                                       ; $73b0: $57
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00
    dec d                                         ; $73b6: $15
    ld h, [hl]                                    ; $73b7: $66
    nop                                           ; $73b8: $00
    inc sp                                        ; $73b9: $33
    dec bc                                        ; $73ba: $0b
    ld c, c                                       ; $73bb: $49
    ld d, a                                       ; $73bc: $57
    nop                                           ; $73bd: $00
    nop                                           ; $73be: $00
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    dec d                                         ; $73c2: $15
    ld h, [hl]                                    ; $73c3: $66
    nop                                           ; $73c4: $00
    inc sp                                        ; $73c5: $33
    dec bc                                        ; $73c6: $0b
    ld c, d                                       ; $73c7: $4a
    ld d, a                                       ; $73c8: $57
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    nop                                           ; $73cc: $00
    nop                                           ; $73cd: $00
    dec d                                         ; $73ce: $15
    ld h, [hl]                                    ; $73cf: $66
    nop                                           ; $73d0: $00
    inc sp                                        ; $73d1: $33
    dec bc                                        ; $73d2: $0b
    ld c, e                                       ; $73d3: $4b
    ld d, a                                       ; $73d4: $57
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    nop                                           ; $73d9: $00
    dec d                                         ; $73da: $15
    ld h, [hl]                                    ; $73db: $66
    nop                                           ; $73dc: $00
    inc sp                                        ; $73dd: $33
    dec bc                                        ; $73de: $0b
    ld c, h                                       ; $73df: $4c
    ld d, a                                       ; $73e0: $57
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    dec d                                         ; $73e6: $15
    ld h, [hl]                                    ; $73e7: $66
    nop                                           ; $73e8: $00
    inc sp                                        ; $73e9: $33
    dec bc                                        ; $73ea: $0b
    ld c, l                                       ; $73eb: $4d
    ld d, a                                       ; $73ec: $57
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    nop                                           ; $73f0: $00
    nop                                           ; $73f1: $00
    dec d                                         ; $73f2: $15
    ld h, [hl]                                    ; $73f3: $66
    nop                                           ; $73f4: $00
    inc sp                                        ; $73f5: $33
    dec bc                                        ; $73f6: $0b
    ld c, [hl]                                    ; $73f7: $4e
    ld d, a                                       ; $73f8: $57
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    dec d                                         ; $73fe: $15
    ld h, [hl]                                    ; $73ff: $66
    nop                                           ; $7400: $00
    inc sp                                        ; $7401: $33
    dec bc                                        ; $7402: $0b
    ld c, a                                       ; $7403: $4f
    ld d, a                                       ; $7404: $57
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    dec d                                         ; $740a: $15
    ld h, [hl]                                    ; $740b: $66
    nop                                           ; $740c: $00
    inc sp                                        ; $740d: $33
    dec bc                                        ; $740e: $0b
    ld d, b                                       ; $740f: $50
    ld d, a                                       ; $7410: $57
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    dec d                                         ; $7416: $15
    ld h, [hl]                                    ; $7417: $66
    nop                                           ; $7418: $00
    inc sp                                        ; $7419: $33
    dec bc                                        ; $741a: $0b
    ld d, c                                       ; $741b: $51
    ld d, a                                       ; $741c: $57
    nop                                           ; $741d: $00
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    dec d                                         ; $7422: $15
    ld h, [hl]                                    ; $7423: $66
    nop                                           ; $7424: $00
    inc sp                                        ; $7425: $33
    dec bc                                        ; $7426: $0b
    ld d, d                                       ; $7427: $52
    ld d, a                                       ; $7428: $57
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    nop                                           ; $742b: $00
    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    ld d, [hl]                                    ; $742e: $56
    nop                                           ; $742f: $00
    nop                                           ; $7430: $00
    rla                                           ; $7431: $17
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    dec de                                        ; $7434: $1b
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    ld e, a                                       ; $7437: $5f
    ld bc, $6300                                  ; $7438: $01 $00 $63
    cp $0b                                        ; $743b: $fe $0b
    ld [$00fe], sp                                ; $743d: $08 $fe $00
    dec d                                         ; $7440: $15
    ld c, l                                       ; $7441: $4d
    nop                                           ; $7442: $00
    rlca                                          ; $7443: $07
    ld [bc], a                                    ; $7444: $02
    and [hl]                                      ; $7445: $a6
    dec d                                         ; $7446: $15
    ld c, l                                       ; $7447: $4d
    nop                                           ; $7448: $00
    rlca                                          ; $7449: $07
    ld [bc], a                                    ; $744a: $02
    or d                                          ; $744b: $b2
    dec d                                         ; $744c: $15
    ld c, l                                       ; $744d: $4d
    nop                                           ; $744e: $00
    rlca                                          ; $744f: $07
    ld [bc], a                                    ; $7450: $02
    cp [hl]                                       ; $7451: $be
    dec d                                         ; $7452: $15
    ld c, l                                       ; $7453: $4d
    nop                                           ; $7454: $00
    rlca                                          ; $7455: $07
    ld [bc], a                                    ; $7456: $02
    jp z, Jump_00d_4d15                           ; $7457: $ca $15 $4d

    nop                                           ; $745a: $00
    rlca                                          ; $745b: $07
    ld [bc], a                                    ; $745c: $02
    sub $15                                       ; $745d: $d6 $15
    ld c, l                                       ; $745f: $4d
    nop                                           ; $7460: $00
    rlca                                          ; $7461: $07
    ld [bc], a                                    ; $7462: $02
    ld [c], a                                     ; $7463: $e2
    dec d                                         ; $7464: $15
    ld c, l                                       ; $7465: $4d
    nop                                           ; $7466: $00
    rlca                                          ; $7467: $07
    ld [bc], a                                    ; $7468: $02
    xor $15                                       ; $7469: $ee $15
    ld c, l                                       ; $746b: $4d
    nop                                           ; $746c: $00
    rlca                                          ; $746d: $07
    ld [bc], a                                    ; $746e: $02
    ld a, [$4d15]                                 ; $746f: $fa $15 $4d
    nop                                           ; $7472: $00
    rlca                                          ; $7473: $07
    inc bc                                        ; $7474: $03
    ld b, $15                                     ; $7475: $06 $15
    ld c, l                                       ; $7477: $4d
    nop                                           ; $7478: $00
    rlca                                          ; $7479: $07
    inc bc                                        ; $747a: $03
    ld [de], a                                    ; $747b: $12
    dec d                                         ; $747c: $15
    ld c, l                                       ; $747d: $4d
    nop                                           ; $747e: $00
    rlca                                          ; $747f: $07
    inc bc                                        ; $7480: $03
    ld e, $15                                     ; $7481: $1e $15
    ld h, a                                       ; $7483: $67
    nop                                           ; $7484: $00
    inc sp                                        ; $7485: $33
    dec bc                                        ; $7486: $0b
    ld c, b                                       ; $7487: $48
    ld d, a                                       ; $7488: $57
    nop                                           ; $7489: $00
    nop                                           ; $748a: $00
    nop                                           ; $748b: $00
    nop                                           ; $748c: $00
    nop                                           ; $748d: $00
    dec d                                         ; $748e: $15
    ld h, a                                       ; $748f: $67
    nop                                           ; $7490: $00
    inc sp                                        ; $7491: $33
    dec bc                                        ; $7492: $0b
    ld c, c                                       ; $7493: $49
    ld d, a                                       ; $7494: $57
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    dec d                                         ; $749a: $15
    ld h, a                                       ; $749b: $67
    nop                                           ; $749c: $00
    inc sp                                        ; $749d: $33
    dec bc                                        ; $749e: $0b
    ld c, d                                       ; $749f: $4a
    ld d, a                                       ; $74a0: $57
    nop                                           ; $74a1: $00
    nop                                           ; $74a2: $00
    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00
    nop                                           ; $74a5: $00
    dec d                                         ; $74a6: $15
    ld h, a                                       ; $74a7: $67
    nop                                           ; $74a8: $00
    inc sp                                        ; $74a9: $33
    dec bc                                        ; $74aa: $0b
    ld c, e                                       ; $74ab: $4b
    ld d, a                                       ; $74ac: $57
    nop                                           ; $74ad: $00
    nop                                           ; $74ae: $00
    nop                                           ; $74af: $00
    nop                                           ; $74b0: $00
    nop                                           ; $74b1: $00
    dec d                                         ; $74b2: $15
    ld h, a                                       ; $74b3: $67
    nop                                           ; $74b4: $00
    inc sp                                        ; $74b5: $33
    dec bc                                        ; $74b6: $0b
    ld c, h                                       ; $74b7: $4c
    ld d, a                                       ; $74b8: $57
    nop                                           ; $74b9: $00
    nop                                           ; $74ba: $00
    nop                                           ; $74bb: $00
    nop                                           ; $74bc: $00
    nop                                           ; $74bd: $00
    dec d                                         ; $74be: $15
    ld h, a                                       ; $74bf: $67
    nop                                           ; $74c0: $00
    inc sp                                        ; $74c1: $33
    dec bc                                        ; $74c2: $0b
    ld c, l                                       ; $74c3: $4d
    ld d, a                                       ; $74c4: $57
    nop                                           ; $74c5: $00
    nop                                           ; $74c6: $00
    nop                                           ; $74c7: $00
    nop                                           ; $74c8: $00
    nop                                           ; $74c9: $00
    dec d                                         ; $74ca: $15
    ld h, a                                       ; $74cb: $67
    nop                                           ; $74cc: $00
    inc sp                                        ; $74cd: $33
    dec bc                                        ; $74ce: $0b
    ld c, [hl]                                    ; $74cf: $4e
    ld d, a                                       ; $74d0: $57
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    nop                                           ; $74d4: $00
    nop                                           ; $74d5: $00
    dec d                                         ; $74d6: $15
    ld h, a                                       ; $74d7: $67
    nop                                           ; $74d8: $00
    inc sp                                        ; $74d9: $33
    dec bc                                        ; $74da: $0b
    ld c, a                                       ; $74db: $4f
    ld d, a                                       ; $74dc: $57
    nop                                           ; $74dd: $00
    nop                                           ; $74de: $00
    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    nop                                           ; $74e1: $00
    dec d                                         ; $74e2: $15
    ld h, a                                       ; $74e3: $67
    nop                                           ; $74e4: $00
    inc sp                                        ; $74e5: $33
    dec bc                                        ; $74e6: $0b
    ld d, b                                       ; $74e7: $50
    ld d, a                                       ; $74e8: $57
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    nop                                           ; $74eb: $00
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    dec d                                         ; $74ee: $15
    ld h, a                                       ; $74ef: $67
    nop                                           ; $74f0: $00
    inc sp                                        ; $74f1: $33
    dec bc                                        ; $74f2: $0b
    ld d, c                                       ; $74f3: $51
    ld d, a                                       ; $74f4: $57
    nop                                           ; $74f5: $00
    nop                                           ; $74f6: $00
    nop                                           ; $74f7: $00
    nop                                           ; $74f8: $00
    nop                                           ; $74f9: $00
    dec d                                         ; $74fa: $15
    ld h, a                                       ; $74fb: $67
    nop                                           ; $74fc: $00
    inc sp                                        ; $74fd: $33
    dec bc                                        ; $74fe: $0b
    ld d, d                                       ; $74ff: $52
    ld d, a                                       ; $7500: $57
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    ld d, [hl]                                    ; $7506: $56
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    rla                                           ; $7509: $17
    nop                                           ; $750a: $00
    nop                                           ; $750b: $00
    dec de                                        ; $750c: $1b
    nop                                           ; $750d: $00
    nop                                           ; $750e: $00
    ld e, a                                       ; $750f: $5f
    ld bc, $6300                                  ; $7510: $01 $00 $63
    cp $0b                                        ; $7513: $fe $0b
    ld [$00fe], sp                                ; $7515: $08 $fe $00
    dec d                                         ; $7518: $15
    ld c, l                                       ; $7519: $4d
    nop                                           ; $751a: $00
    rlca                                          ; $751b: $07
    inc bc                                        ; $751c: $03
    ld a, [hl]                                    ; $751d: $7e
    dec d                                         ; $751e: $15
    ld c, l                                       ; $751f: $4d
    nop                                           ; $7520: $00
    rlca                                          ; $7521: $07
    inc bc                                        ; $7522: $03
    adc d                                         ; $7523: $8a
    dec d                                         ; $7524: $15
    ld c, l                                       ; $7525: $4d
    nop                                           ; $7526: $00
    rlca                                          ; $7527: $07
    inc bc                                        ; $7528: $03
    sub [hl]                                      ; $7529: $96
    dec d                                         ; $752a: $15
    ld c, l                                       ; $752b: $4d
    nop                                           ; $752c: $00
    rlca                                          ; $752d: $07
    inc bc                                        ; $752e: $03
    and d                                         ; $752f: $a2
    dec d                                         ; $7530: $15
    ld c, l                                       ; $7531: $4d
    nop                                           ; $7532: $00
    rlca                                          ; $7533: $07
    inc bc                                        ; $7534: $03
    xor [hl]                                      ; $7535: $ae
    dec d                                         ; $7536: $15
    ld c, l                                       ; $7537: $4d
    nop                                           ; $7538: $00
    rlca                                          ; $7539: $07
    inc bc                                        ; $753a: $03
    cp d                                          ; $753b: $ba
    dec d                                         ; $753c: $15
    ld c, l                                       ; $753d: $4d
    nop                                           ; $753e: $00
    rlca                                          ; $753f: $07
    inc bc                                        ; $7540: $03
    add $15                                       ; $7541: $c6 $15
    ld c, l                                       ; $7543: $4d
    nop                                           ; $7544: $00
    rlca                                          ; $7545: $07
    inc bc                                        ; $7546: $03
    jp nc, Jump_00d_4d15                          ; $7547: $d2 $15 $4d

    nop                                           ; $754a: $00
    rlca                                          ; $754b: $07
    inc bc                                        ; $754c: $03
    sbc $15                                       ; $754d: $de $15
    ld c, l                                       ; $754f: $4d
    nop                                           ; $7550: $00
    rlca                                          ; $7551: $07
    inc bc                                        ; $7552: $03
    ld [$4d15], a                                 ; $7553: $ea $15 $4d
    nop                                           ; $7556: $00
    rlca                                          ; $7557: $07
    inc bc                                        ; $7558: $03
    or $15                                        ; $7559: $f6 $15
    ld h, l                                       ; $755b: $65
    nop                                           ; $755c: $00
    inc sp                                        ; $755d: $33
    dec bc                                        ; $755e: $0b
    ld c, b                                       ; $755f: $48
    ld d, a                                       ; $7560: $57
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    dec d                                         ; $7566: $15
    ld h, l                                       ; $7567: $65
    nop                                           ; $7568: $00
    inc sp                                        ; $7569: $33
    dec bc                                        ; $756a: $0b
    ld c, c                                       ; $756b: $49
    ld d, a                                       ; $756c: $57
    nop                                           ; $756d: $00
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    dec d                                         ; $7572: $15
    ld h, l                                       ; $7573: $65
    nop                                           ; $7574: $00
    inc sp                                        ; $7575: $33
    dec bc                                        ; $7576: $0b
    ld c, d                                       ; $7577: $4a
    ld d, a                                       ; $7578: $57
    nop                                           ; $7579: $00
    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    nop                                           ; $757c: $00
    nop                                           ; $757d: $00
    dec d                                         ; $757e: $15
    ld h, l                                       ; $757f: $65
    nop                                           ; $7580: $00
    inc sp                                        ; $7581: $33
    dec bc                                        ; $7582: $0b
    ld c, e                                       ; $7583: $4b
    ld d, a                                       ; $7584: $57
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    dec d                                         ; $758a: $15
    ld h, l                                       ; $758b: $65
    nop                                           ; $758c: $00
    inc sp                                        ; $758d: $33
    dec bc                                        ; $758e: $0b
    ld c, h                                       ; $758f: $4c
    ld d, a                                       ; $7590: $57
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    dec d                                         ; $7596: $15
    ld h, l                                       ; $7597: $65
    nop                                           ; $7598: $00
    inc sp                                        ; $7599: $33
    dec bc                                        ; $759a: $0b
    ld c, l                                       ; $759b: $4d
    ld d, a                                       ; $759c: $57
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    nop                                           ; $75a0: $00
    nop                                           ; $75a1: $00
    dec d                                         ; $75a2: $15
    ld h, l                                       ; $75a3: $65
    nop                                           ; $75a4: $00
    inc sp                                        ; $75a5: $33
    dec bc                                        ; $75a6: $0b
    ld c, [hl]                                    ; $75a7: $4e
    ld d, a                                       ; $75a8: $57
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    dec d                                         ; $75ae: $15
    ld h, l                                       ; $75af: $65
    nop                                           ; $75b0: $00
    inc sp                                        ; $75b1: $33
    dec bc                                        ; $75b2: $0b
    ld c, a                                       ; $75b3: $4f
    ld d, a                                       ; $75b4: $57
    nop                                           ; $75b5: $00
    nop                                           ; $75b6: $00
    nop                                           ; $75b7: $00
    nop                                           ; $75b8: $00
    nop                                           ; $75b9: $00
    dec d                                         ; $75ba: $15
    ld h, l                                       ; $75bb: $65
    nop                                           ; $75bc: $00
    inc sp                                        ; $75bd: $33
    dec bc                                        ; $75be: $0b
    ld d, b                                       ; $75bf: $50
    ld d, a                                       ; $75c0: $57
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    nop                                           ; $75c3: $00
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    dec d                                         ; $75c6: $15
    ld h, l                                       ; $75c7: $65
    nop                                           ; $75c8: $00
    inc sp                                        ; $75c9: $33
    dec bc                                        ; $75ca: $0b
    ld d, c                                       ; $75cb: $51
    ld d, a                                       ; $75cc: $57
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    dec d                                         ; $75d2: $15
    ld h, l                                       ; $75d3: $65
    nop                                           ; $75d4: $00
    inc sp                                        ; $75d5: $33
    dec bc                                        ; $75d6: $0b
    ld d, d                                       ; $75d7: $52
    ld d, a                                       ; $75d8: $57
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    ld d, [hl]                                    ; $75de: $56
    nop                                           ; $75df: $00
    nop                                           ; $75e0: $00
    rla                                           ; $75e1: $17
    nop                                           ; $75e2: $00
    nop                                           ; $75e3: $00
    dec de                                        ; $75e4: $1b
    nop                                           ; $75e5: $00
    nop                                           ; $75e6: $00
    ld e, a                                       ; $75e7: $5f
    ld bc, $6300                                  ; $75e8: $01 $00 $63
    cp $0b                                        ; $75eb: $fe $0b
    ld [$00fe], sp                                ; $75ed: $08 $fe $00
    dec d                                         ; $75f0: $15
    ld c, l                                       ; $75f1: $4d
    nop                                           ; $75f2: $00
    rlca                                          ; $75f3: $07
    inc b                                         ; $75f4: $04
    ld d, [hl]                                    ; $75f5: $56
    dec d                                         ; $75f6: $15
    ld c, l                                       ; $75f7: $4d
    nop                                           ; $75f8: $00
    rlca                                          ; $75f9: $07
    inc b                                         ; $75fa: $04
    ld h, d                                       ; $75fb: $62
    dec d                                         ; $75fc: $15
    ld c, l                                       ; $75fd: $4d
    nop                                           ; $75fe: $00
    rlca                                          ; $75ff: $07
    inc b                                         ; $7600: $04
    ld l, [hl]                                    ; $7601: $6e
    dec d                                         ; $7602: $15
    ld c, l                                       ; $7603: $4d
    nop                                           ; $7604: $00
    rlca                                          ; $7605: $07
    inc b                                         ; $7606: $04
    ld a, d                                       ; $7607: $7a
    dec d                                         ; $7608: $15
    ld c, l                                       ; $7609: $4d
    nop                                           ; $760a: $00
    rlca                                          ; $760b: $07
    inc b                                         ; $760c: $04
    add [hl]                                      ; $760d: $86
    dec d                                         ; $760e: $15
    ld c, l                                       ; $760f: $4d
    nop                                           ; $7610: $00
    rlca                                          ; $7611: $07
    inc b                                         ; $7612: $04
    sub d                                         ; $7613: $92
    dec d                                         ; $7614: $15
    ld c, l                                       ; $7615: $4d
    nop                                           ; $7616: $00
    rlca                                          ; $7617: $07
    inc b                                         ; $7618: $04
    sbc [hl]                                      ; $7619: $9e
    dec d                                         ; $761a: $15
    ld c, l                                       ; $761b: $4d
    nop                                           ; $761c: $00
    rlca                                          ; $761d: $07
    inc b                                         ; $761e: $04
    xor d                                         ; $761f: $aa
    dec d                                         ; $7620: $15
    ld c, l                                       ; $7621: $4d
    nop                                           ; $7622: $00
    rlca                                          ; $7623: $07
    inc b                                         ; $7624: $04
    or [hl]                                       ; $7625: $b6
    dec d                                         ; $7626: $15
    ld c, l                                       ; $7627: $4d
    nop                                           ; $7628: $00
    rlca                                          ; $7629: $07
    inc b                                         ; $762a: $04
    jp nz, Jump_00d_4d15                          ; $762b: $c2 $15 $4d

    nop                                           ; $762e: $00
    rlca                                          ; $762f: $07
    inc b                                         ; $7630: $04
    adc $15                                       ; $7631: $ce $15
    ld l, b                                       ; $7633: $68
    nop                                           ; $7634: $00
    inc sp                                        ; $7635: $33
    dec bc                                        ; $7636: $0b
    ld c, b                                       ; $7637: $48
    ld d, a                                       ; $7638: $57
    nop                                           ; $7639: $00
    nop                                           ; $763a: $00
    nop                                           ; $763b: $00
    nop                                           ; $763c: $00
    nop                                           ; $763d: $00
    dec d                                         ; $763e: $15
    ld l, b                                       ; $763f: $68
    nop                                           ; $7640: $00
    inc sp                                        ; $7641: $33
    dec bc                                        ; $7642: $0b
    ld c, c                                       ; $7643: $49
    ld d, a                                       ; $7644: $57
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    dec d                                         ; $764a: $15
    ld l, b                                       ; $764b: $68
    nop                                           ; $764c: $00
    inc sp                                        ; $764d: $33
    dec bc                                        ; $764e: $0b
    ld c, d                                       ; $764f: $4a
    ld d, a                                       ; $7650: $57
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    dec d                                         ; $7656: $15
    ld l, b                                       ; $7657: $68
    nop                                           ; $7658: $00
    inc sp                                        ; $7659: $33
    dec bc                                        ; $765a: $0b
    ld c, e                                       ; $765b: $4b
    ld d, a                                       ; $765c: $57
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    dec d                                         ; $7662: $15
    ld l, b                                       ; $7663: $68
    nop                                           ; $7664: $00
    inc sp                                        ; $7665: $33
    dec bc                                        ; $7666: $0b
    ld c, h                                       ; $7667: $4c
    ld d, a                                       ; $7668: $57
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    dec d                                         ; $766e: $15
    ld l, b                                       ; $766f: $68
    nop                                           ; $7670: $00
    inc sp                                        ; $7671: $33
    dec bc                                        ; $7672: $0b
    ld c, l                                       ; $7673: $4d
    ld d, a                                       ; $7674: $57
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    dec d                                         ; $767a: $15
    ld l, b                                       ; $767b: $68
    nop                                           ; $767c: $00
    inc sp                                        ; $767d: $33
    dec bc                                        ; $767e: $0b
    ld c, [hl]                                    ; $767f: $4e
    ld d, a                                       ; $7680: $57
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    dec d                                         ; $7686: $15
    ld l, b                                       ; $7687: $68
    nop                                           ; $7688: $00
    inc sp                                        ; $7689: $33
    dec bc                                        ; $768a: $0b
    ld c, a                                       ; $768b: $4f
    ld d, a                                       ; $768c: $57
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    dec d                                         ; $7692: $15
    ld l, b                                       ; $7693: $68
    nop                                           ; $7694: $00
    inc sp                                        ; $7695: $33
    dec bc                                        ; $7696: $0b
    ld d, b                                       ; $7697: $50
    ld d, a                                       ; $7698: $57
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    nop                                           ; $769b: $00
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    dec d                                         ; $769e: $15
    ld l, b                                       ; $769f: $68
    nop                                           ; $76a0: $00
    inc sp                                        ; $76a1: $33
    dec bc                                        ; $76a2: $0b
    ld d, c                                       ; $76a3: $51
    ld d, a                                       ; $76a4: $57
    nop                                           ; $76a5: $00
    nop                                           ; $76a6: $00
    nop                                           ; $76a7: $00
    nop                                           ; $76a8: $00
    nop                                           ; $76a9: $00
    dec d                                         ; $76aa: $15
    ld l, b                                       ; $76ab: $68
    nop                                           ; $76ac: $00
    inc sp                                        ; $76ad: $33
    dec bc                                        ; $76ae: $0b
    ld d, d                                       ; $76af: $52
    ld d, a                                       ; $76b0: $57
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    ld d, [hl]                                    ; $76b6: $56
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    rla                                           ; $76b9: $17
    nop                                           ; $76ba: $00
    nop                                           ; $76bb: $00
    dec de                                        ; $76bc: $1b
    nop                                           ; $76bd: $00
    nop                                           ; $76be: $00
    ld e, a                                       ; $76bf: $5f
    ld bc, $6300                                  ; $76c0: $01 $00 $63
    cp $0a                                        ; $76c3: $fe $0a
    ld [$00fe], sp                                ; $76c5: $08 $fe $00
    dec d                                         ; $76c8: $15
    ld c, l                                       ; $76c9: $4d
    nop                                           ; $76ca: $00
    rlca                                          ; $76cb: $07
    dec b                                         ; $76cc: $05
    jr z, jr_00d_76e4                             ; $76cd: $28 $15

    ld c, l                                       ; $76cf: $4d
    nop                                           ; $76d0: $00
    rlca                                          ; $76d1: $07
    dec b                                         ; $76d2: $05
    inc [hl]                                      ; $76d3: $34
    dec d                                         ; $76d4: $15
    ld c, l                                       ; $76d5: $4d
    nop                                           ; $76d6: $00
    rlca                                          ; $76d7: $07
    dec b                                         ; $76d8: $05
    ld b, b                                       ; $76d9: $40
    dec d                                         ; $76da: $15
    ld c, l                                       ; $76db: $4d
    nop                                           ; $76dc: $00
    rlca                                          ; $76dd: $07
    dec b                                         ; $76de: $05
    ld c, h                                       ; $76df: $4c
    dec d                                         ; $76e0: $15
    ld c, l                                       ; $76e1: $4d
    nop                                           ; $76e2: $00
    rlca                                          ; $76e3: $07

jr_00d_76e4:
    dec b                                         ; $76e4: $05
    ld e, b                                       ; $76e5: $58
    dec d                                         ; $76e6: $15
    ld c, l                                       ; $76e7: $4d
    nop                                           ; $76e8: $00
    rlca                                          ; $76e9: $07
    dec b                                         ; $76ea: $05
    ld h, h                                       ; $76eb: $64
    dec d                                         ; $76ec: $15
    ld c, l                                       ; $76ed: $4d
    nop                                           ; $76ee: $00
    rlca                                          ; $76ef: $07
    dec b                                         ; $76f0: $05
    ld [hl], b                                    ; $76f1: $70
    dec d                                         ; $76f2: $15
    ld c, l                                       ; $76f3: $4d
    nop                                           ; $76f4: $00
    rlca                                          ; $76f5: $07
    dec b                                         ; $76f6: $05
    ld a, h                                       ; $76f7: $7c
    dec d                                         ; $76f8: $15
    ld c, l                                       ; $76f9: $4d
    nop                                           ; $76fa: $00
    rlca                                          ; $76fb: $07
    dec b                                         ; $76fc: $05
    adc b                                         ; $76fd: $88
    dec d                                         ; $76fe: $15
    ld c, l                                       ; $76ff: $4d
    nop                                           ; $7700: $00
    rlca                                          ; $7701: $07
    dec b                                         ; $7702: $05
    sub h                                         ; $7703: $94
    dec d                                         ; $7704: $15
    ld l, d                                       ; $7705: $6a
    nop                                           ; $7706: $00
    inc sp                                        ; $7707: $33
    dec bc                                        ; $7708: $0b
    ld a, $57                                     ; $7709: $3e $57
    nop                                           ; $770b: $00
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    dec d                                         ; $7710: $15
    ld l, d                                       ; $7711: $6a
    nop                                           ; $7712: $00
    inc sp                                        ; $7713: $33
    dec bc                                        ; $7714: $0b
    ccf                                           ; $7715: $3f
    ld d, a                                       ; $7716: $57
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    dec d                                         ; $771c: $15
    ld l, d                                       ; $771d: $6a
    nop                                           ; $771e: $00
    inc sp                                        ; $771f: $33
    dec bc                                        ; $7720: $0b
    ld b, b                                       ; $7721: $40
    ld d, a                                       ; $7722: $57
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    dec d                                         ; $7728: $15
    ld l, d                                       ; $7729: $6a
    nop                                           ; $772a: $00
    inc sp                                        ; $772b: $33
    dec bc                                        ; $772c: $0b
    ld b, c                                       ; $772d: $41
    ld d, a                                       ; $772e: $57
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    dec d                                         ; $7734: $15
    ld l, d                                       ; $7735: $6a
    nop                                           ; $7736: $00
    inc sp                                        ; $7737: $33
    dec bc                                        ; $7738: $0b
    ld b, d                                       ; $7739: $42
    ld d, a                                       ; $773a: $57
    nop                                           ; $773b: $00
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    nop                                           ; $773f: $00
    dec d                                         ; $7740: $15
    ld l, d                                       ; $7741: $6a
    nop                                           ; $7742: $00
    inc sp                                        ; $7743: $33
    dec bc                                        ; $7744: $0b
    ld b, e                                       ; $7745: $43
    ld d, a                                       ; $7746: $57
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    dec d                                         ; $774c: $15
    ld l, d                                       ; $774d: $6a
    nop                                           ; $774e: $00
    inc sp                                        ; $774f: $33
    dec bc                                        ; $7750: $0b
    ld b, h                                       ; $7751: $44
    ld d, a                                       ; $7752: $57
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    dec d                                         ; $7758: $15
    ld l, d                                       ; $7759: $6a
    nop                                           ; $775a: $00
    inc sp                                        ; $775b: $33
    dec bc                                        ; $775c: $0b
    ld b, l                                       ; $775d: $45
    ld d, a                                       ; $775e: $57
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    dec d                                         ; $7764: $15
    ld l, d                                       ; $7765: $6a
    nop                                           ; $7766: $00
    inc sp                                        ; $7767: $33
    dec bc                                        ; $7768: $0b
    ld b, [hl]                                    ; $7769: $46
    ld d, a                                       ; $776a: $57
    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    dec d                                         ; $7770: $15
    ld l, d                                       ; $7771: $6a
    nop                                           ; $7772: $00
    inc sp                                        ; $7773: $33
    dec bc                                        ; $7774: $0b
    ld b, a                                       ; $7775: $47
    ld d, a                                       ; $7776: $57
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    ld d, [hl]                                    ; $777c: $56
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    rla                                           ; $777f: $17
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    dec de                                        ; $7782: $1b
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    ld e, a                                       ; $7785: $5f
    ld bc, $6300                                  ; $7786: $01 $00 $63
    cp $0a                                        ; $7789: $fe $0a
    ld [$00fe], sp                                ; $778b: $08 $fe $00
    dec d                                         ; $778e: $15
    ld c, l                                       ; $778f: $4d
    nop                                           ; $7790: $00
    rlca                                          ; $7791: $07
    dec b                                         ; $7792: $05
    xor $15                                       ; $7793: $ee $15
    ld c, l                                       ; $7795: $4d
    nop                                           ; $7796: $00
    rlca                                          ; $7797: $07
    dec b                                         ; $7798: $05
    ld a, [$4d15]                                 ; $7799: $fa $15 $4d
    nop                                           ; $779c: $00
    rlca                                          ; $779d: $07
    ld b, $06                                     ; $779e: $06 $06
    dec d                                         ; $77a0: $15
    ld c, l                                       ; $77a1: $4d
    nop                                           ; $77a2: $00
    rlca                                          ; $77a3: $07
    ld b, $12                                     ; $77a4: $06 $12
    dec d                                         ; $77a6: $15
    ld c, l                                       ; $77a7: $4d
    nop                                           ; $77a8: $00
    rlca                                          ; $77a9: $07
    ld b, $1e                                     ; $77aa: $06 $1e
    dec d                                         ; $77ac: $15
    ld c, l                                       ; $77ad: $4d
    nop                                           ; $77ae: $00
    rlca                                          ; $77af: $07
    ld b, $2a                                     ; $77b0: $06 $2a
    dec d                                         ; $77b2: $15
    ld c, l                                       ; $77b3: $4d
    nop                                           ; $77b4: $00
    rlca                                          ; $77b5: $07
    ld b, $36                                     ; $77b6: $06 $36
    dec d                                         ; $77b8: $15
    ld c, l                                       ; $77b9: $4d
    nop                                           ; $77ba: $00
    rlca                                          ; $77bb: $07
    ld b, $42                                     ; $77bc: $06 $42
    dec d                                         ; $77be: $15
    ld c, l                                       ; $77bf: $4d
    nop                                           ; $77c0: $00
    rlca                                          ; $77c1: $07
    ld b, $4e                                     ; $77c2: $06 $4e
    dec d                                         ; $77c4: $15
    ld c, l                                       ; $77c5: $4d
    nop                                           ; $77c6: $00
    rlca                                          ; $77c7: $07
    ld b, $5a                                     ; $77c8: $06 $5a
    dec d                                         ; $77ca: $15
    ld l, e                                       ; $77cb: $6b
    nop                                           ; $77cc: $00
    inc sp                                        ; $77cd: $33
    dec bc                                        ; $77ce: $0b
    ld a, $57                                     ; $77cf: $3e $57
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    dec d                                         ; $77d6: $15
    ld l, e                                       ; $77d7: $6b
    nop                                           ; $77d8: $00
    inc sp                                        ; $77d9: $33
    dec bc                                        ; $77da: $0b
    ccf                                           ; $77db: $3f
    ld d, a                                       ; $77dc: $57
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    nop                                           ; $77e0: $00
    nop                                           ; $77e1: $00
    dec d                                         ; $77e2: $15
    ld l, e                                       ; $77e3: $6b
    nop                                           ; $77e4: $00
    inc sp                                        ; $77e5: $33
    dec bc                                        ; $77e6: $0b
    ld b, b                                       ; $77e7: $40
    ld d, a                                       ; $77e8: $57
    nop                                           ; $77e9: $00
    nop                                           ; $77ea: $00
    nop                                           ; $77eb: $00
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    dec d                                         ; $77ee: $15
    ld l, e                                       ; $77ef: $6b
    nop                                           ; $77f0: $00
    inc sp                                        ; $77f1: $33
    dec bc                                        ; $77f2: $0b
    ld b, c                                       ; $77f3: $41
    ld d, a                                       ; $77f4: $57
    nop                                           ; $77f5: $00
    nop                                           ; $77f6: $00
    nop                                           ; $77f7: $00
    nop                                           ; $77f8: $00
    nop                                           ; $77f9: $00
    dec d                                         ; $77fa: $15
    ld l, e                                       ; $77fb: $6b
    nop                                           ; $77fc: $00
    inc sp                                        ; $77fd: $33
    dec bc                                        ; $77fe: $0b
    ld b, d                                       ; $77ff: $42
    ld d, a                                       ; $7800: $57
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    dec d                                         ; $7806: $15
    ld l, e                                       ; $7807: $6b
    nop                                           ; $7808: $00
    inc sp                                        ; $7809: $33
    dec bc                                        ; $780a: $0b
    ld b, e                                       ; $780b: $43
    ld d, a                                       ; $780c: $57
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    dec d                                         ; $7812: $15
    ld l, e                                       ; $7813: $6b
    nop                                           ; $7814: $00
    inc sp                                        ; $7815: $33
    dec bc                                        ; $7816: $0b
    ld b, h                                       ; $7817: $44
    ld d, a                                       ; $7818: $57
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    nop                                           ; $781b: $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    dec d                                         ; $781e: $15
    ld l, e                                       ; $781f: $6b
    nop                                           ; $7820: $00
    inc sp                                        ; $7821: $33
    dec bc                                        ; $7822: $0b
    ld b, l                                       ; $7823: $45
    ld d, a                                       ; $7824: $57
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    dec d                                         ; $782a: $15
    ld l, e                                       ; $782b: $6b
    nop                                           ; $782c: $00
    inc sp                                        ; $782d: $33
    dec bc                                        ; $782e: $0b
    ld b, [hl]                                    ; $782f: $46
    ld d, a                                       ; $7830: $57
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    dec d                                         ; $7836: $15
    ld l, e                                       ; $7837: $6b
    nop                                           ; $7838: $00
    inc sp                                        ; $7839: $33
    dec bc                                        ; $783a: $0b
    ld b, a                                       ; $783b: $47
    ld d, a                                       ; $783c: $57
    nop                                           ; $783d: $00
    nop                                           ; $783e: $00
    nop                                           ; $783f: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    ld d, [hl]                                    ; $7842: $56
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    rla                                           ; $7845: $17
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    dec de                                        ; $7848: $1b
    nop                                           ; $7849: $00
    nop                                           ; $784a: $00
    ld e, a                                       ; $784b: $5f
    ld bc, $6300                                  ; $784c: $01 $00 $63
    cp $0a                                        ; $784f: $fe $0a
    ld [$00fe], sp                                ; $7851: $08 $fe $00
    dec d                                         ; $7854: $15
    ld c, l                                       ; $7855: $4d
    nop                                           ; $7856: $00
    rlca                                          ; $7857: $07
    ld b, $b4                                     ; $7858: $06 $b4
    dec d                                         ; $785a: $15
    ld c, l                                       ; $785b: $4d
    nop                                           ; $785c: $00
    rlca                                          ; $785d: $07
    ld b, $c0                                     ; $785e: $06 $c0
    dec d                                         ; $7860: $15
    ld c, l                                       ; $7861: $4d
    nop                                           ; $7862: $00
    rlca                                          ; $7863: $07
    ld b, $cc                                     ; $7864: $06 $cc
    dec d                                         ; $7866: $15
    ld c, l                                       ; $7867: $4d
    nop                                           ; $7868: $00
    rlca                                          ; $7869: $07
    ld b, $d8                                     ; $786a: $06 $d8
    dec d                                         ; $786c: $15
    ld c, l                                       ; $786d: $4d
    nop                                           ; $786e: $00
    rlca                                          ; $786f: $07
    ld b, $e4                                     ; $7870: $06 $e4
    dec d                                         ; $7872: $15
    ld c, l                                       ; $7873: $4d
    nop                                           ; $7874: $00
    rlca                                          ; $7875: $07
    ld b, $f0                                     ; $7876: $06 $f0
    dec d                                         ; $7878: $15
    ld c, l                                       ; $7879: $4d
    nop                                           ; $787a: $00
    rlca                                          ; $787b: $07
    ld b, $fc                                     ; $787c: $06 $fc
    dec d                                         ; $787e: $15
    ld c, l                                       ; $787f: $4d
    nop                                           ; $7880: $00
    rlca                                          ; $7881: $07
    rlca                                          ; $7882: $07
    ld [$4d15], sp                                ; $7883: $08 $15 $4d
    nop                                           ; $7886: $00
    rlca                                          ; $7887: $07
    rlca                                          ; $7888: $07
    inc d                                         ; $7889: $14
    dec d                                         ; $788a: $15
    ld c, l                                       ; $788b: $4d
    nop                                           ; $788c: $00
    rlca                                          ; $788d: $07
    rlca                                          ; $788e: $07
    jr nz, jr_00d_78a6                            ; $788f: $20 $15

    ld l, h                                       ; $7891: $6c
    nop                                           ; $7892: $00
    inc sp                                        ; $7893: $33
    dec bc                                        ; $7894: $0b
    ld a, $57                                     ; $7895: $3e $57
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789a: $00
    nop                                           ; $789b: $00
    dec d                                         ; $789c: $15
    ld l, h                                       ; $789d: $6c
    nop                                           ; $789e: $00
    inc sp                                        ; $789f: $33
    dec bc                                        ; $78a0: $0b
    ccf                                           ; $78a1: $3f
    ld d, a                                       ; $78a2: $57
    nop                                           ; $78a3: $00
    nop                                           ; $78a4: $00
    nop                                           ; $78a5: $00

jr_00d_78a6:
    nop                                           ; $78a6: $00
    nop                                           ; $78a7: $00
    dec d                                         ; $78a8: $15
    ld l, h                                       ; $78a9: $6c
    nop                                           ; $78aa: $00
    inc sp                                        ; $78ab: $33
    dec bc                                        ; $78ac: $0b
    ld b, b                                       ; $78ad: $40
    ld d, a                                       ; $78ae: $57
    nop                                           ; $78af: $00
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    nop                                           ; $78b3: $00
    dec d                                         ; $78b4: $15
    ld l, h                                       ; $78b5: $6c
    nop                                           ; $78b6: $00
    inc sp                                        ; $78b7: $33
    dec bc                                        ; $78b8: $0b
    ld b, c                                       ; $78b9: $41
    ld d, a                                       ; $78ba: $57
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    nop                                           ; $78bd: $00
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    dec d                                         ; $78c0: $15
    ld l, h                                       ; $78c1: $6c
    nop                                           ; $78c2: $00
    inc sp                                        ; $78c3: $33
    dec bc                                        ; $78c4: $0b
    ld b, d                                       ; $78c5: $42
    ld d, a                                       ; $78c6: $57
    nop                                           ; $78c7: $00
    nop                                           ; $78c8: $00
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    nop                                           ; $78cb: $00
    dec d                                         ; $78cc: $15
    ld l, h                                       ; $78cd: $6c
    nop                                           ; $78ce: $00
    inc sp                                        ; $78cf: $33
    dec bc                                        ; $78d0: $0b
    ld b, e                                       ; $78d1: $43
    ld d, a                                       ; $78d2: $57
    nop                                           ; $78d3: $00
    nop                                           ; $78d4: $00
    nop                                           ; $78d5: $00
    nop                                           ; $78d6: $00
    nop                                           ; $78d7: $00
    dec d                                         ; $78d8: $15
    ld l, h                                       ; $78d9: $6c
    nop                                           ; $78da: $00
    inc sp                                        ; $78db: $33
    dec bc                                        ; $78dc: $0b
    ld b, h                                       ; $78dd: $44
    ld d, a                                       ; $78de: $57
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    nop                                           ; $78e2: $00
    nop                                           ; $78e3: $00
    dec d                                         ; $78e4: $15
    ld l, h                                       ; $78e5: $6c
    nop                                           ; $78e6: $00
    inc sp                                        ; $78e7: $33
    dec bc                                        ; $78e8: $0b
    ld b, l                                       ; $78e9: $45
    ld d, a                                       ; $78ea: $57
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    nop                                           ; $78ee: $00
    nop                                           ; $78ef: $00
    dec d                                         ; $78f0: $15
    ld l, h                                       ; $78f1: $6c
    nop                                           ; $78f2: $00
    inc sp                                        ; $78f3: $33
    dec bc                                        ; $78f4: $0b
    ld b, [hl]                                    ; $78f5: $46
    ld d, a                                       ; $78f6: $57
    nop                                           ; $78f7: $00
    nop                                           ; $78f8: $00
    nop                                           ; $78f9: $00
    nop                                           ; $78fa: $00
    nop                                           ; $78fb: $00
    dec d                                         ; $78fc: $15
    ld l, h                                       ; $78fd: $6c
    nop                                           ; $78fe: $00
    inc sp                                        ; $78ff: $33
    dec bc                                        ; $7900: $0b
    ld b, a                                       ; $7901: $47
    ld d, a                                       ; $7902: $57
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    ld d, [hl]                                    ; $7908: $56
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    rla                                           ; $790b: $17
    nop                                           ; $790c: $00
    nop                                           ; $790d: $00
    dec de                                        ; $790e: $1b
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    ld e, a                                       ; $7911: $5f
    ld bc, $6300                                  ; $7912: $01 $00 $63
    cp $0a                                        ; $7915: $fe $0a
    ld [$00fe], sp                                ; $7917: $08 $fe $00
    dec d                                         ; $791a: $15
    ld c, l                                       ; $791b: $4d
    nop                                           ; $791c: $00
    rlca                                          ; $791d: $07
    rlca                                          ; $791e: $07
    ld a, d                                       ; $791f: $7a
    dec d                                         ; $7920: $15
    ld c, l                                       ; $7921: $4d
    nop                                           ; $7922: $00
    rlca                                          ; $7923: $07
    rlca                                          ; $7924: $07
    add [hl]                                      ; $7925: $86
    dec d                                         ; $7926: $15
    ld c, l                                       ; $7927: $4d
    nop                                           ; $7928: $00
    rlca                                          ; $7929: $07
    rlca                                          ; $792a: $07
    sub d                                         ; $792b: $92
    dec d                                         ; $792c: $15
    ld c, l                                       ; $792d: $4d
    nop                                           ; $792e: $00
    rlca                                          ; $792f: $07
    rlca                                          ; $7930: $07
    sbc [hl]                                      ; $7931: $9e
    dec d                                         ; $7932: $15
    ld c, l                                       ; $7933: $4d
    nop                                           ; $7934: $00
    rlca                                          ; $7935: $07
    rlca                                          ; $7936: $07
    xor d                                         ; $7937: $aa
    dec d                                         ; $7938: $15
    ld c, l                                       ; $7939: $4d
    nop                                           ; $793a: $00
    rlca                                          ; $793b: $07
    rlca                                          ; $793c: $07
    or [hl]                                       ; $793d: $b6
    dec d                                         ; $793e: $15
    ld c, l                                       ; $793f: $4d
    nop                                           ; $7940: $00
    rlca                                          ; $7941: $07
    rlca                                          ; $7942: $07
    jp nz, Jump_00d_4d15                          ; $7943: $c2 $15 $4d

    nop                                           ; $7946: $00
    rlca                                          ; $7947: $07
    rlca                                          ; $7948: $07
    adc $15                                       ; $7949: $ce $15
    ld c, l                                       ; $794b: $4d
    nop                                           ; $794c: $00
    rlca                                          ; $794d: $07
    rlca                                          ; $794e: $07
    jp c, Jump_00d_4d15                           ; $794f: $da $15 $4d

    nop                                           ; $7952: $00
    rlca                                          ; $7953: $07
    rlca                                          ; $7954: $07
    and $15                                       ; $7955: $e6 $15
    ld l, a                                       ; $7957: $6f
    nop                                           ; $7958: $00
    inc sp                                        ; $7959: $33
    dec bc                                        ; $795a: $0b
    ld a, $57                                     ; $795b: $3e $57
    nop                                           ; $795d: $00
    nop                                           ; $795e: $00
    nop                                           ; $795f: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    dec d                                         ; $7962: $15
    ld l, a                                       ; $7963: $6f
    nop                                           ; $7964: $00
    inc sp                                        ; $7965: $33
    dec bc                                        ; $7966: $0b
    ccf                                           ; $7967: $3f
    ld d, a                                       ; $7968: $57
    nop                                           ; $7969: $00
    nop                                           ; $796a: $00
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    dec d                                         ; $796e: $15
    ld l, a                                       ; $796f: $6f
    nop                                           ; $7970: $00
    inc sp                                        ; $7971: $33
    dec bc                                        ; $7972: $0b
    ld b, b                                       ; $7973: $40
    ld d, a                                       ; $7974: $57
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    dec d                                         ; $797a: $15
    ld l, a                                       ; $797b: $6f
    nop                                           ; $797c: $00
    inc sp                                        ; $797d: $33
    dec bc                                        ; $797e: $0b
    ld b, c                                       ; $797f: $41
    ld d, a                                       ; $7980: $57
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    dec d                                         ; $7986: $15
    ld l, a                                       ; $7987: $6f
    nop                                           ; $7988: $00
    inc sp                                        ; $7989: $33
    dec bc                                        ; $798a: $0b
    ld b, d                                       ; $798b: $42
    ld d, a                                       ; $798c: $57
    nop                                           ; $798d: $00
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    dec d                                         ; $7992: $15
    ld l, a                                       ; $7993: $6f
    nop                                           ; $7994: $00
    inc sp                                        ; $7995: $33
    dec bc                                        ; $7996: $0b
    ld b, e                                       ; $7997: $43
    ld d, a                                       ; $7998: $57
    nop                                           ; $7999: $00
    nop                                           ; $799a: $00
    nop                                           ; $799b: $00
    nop                                           ; $799c: $00
    nop                                           ; $799d: $00
    dec d                                         ; $799e: $15
    ld l, a                                       ; $799f: $6f
    nop                                           ; $79a0: $00
    inc sp                                        ; $79a1: $33
    dec bc                                        ; $79a2: $0b
    ld b, h                                       ; $79a3: $44
    ld d, a                                       ; $79a4: $57
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    nop                                           ; $79a8: $00
    nop                                           ; $79a9: $00
    dec d                                         ; $79aa: $15
    ld l, a                                       ; $79ab: $6f
    nop                                           ; $79ac: $00
    inc sp                                        ; $79ad: $33
    dec bc                                        ; $79ae: $0b
    ld b, l                                       ; $79af: $45
    ld d, a                                       ; $79b0: $57
    nop                                           ; $79b1: $00
    nop                                           ; $79b2: $00
    nop                                           ; $79b3: $00
    nop                                           ; $79b4: $00
    nop                                           ; $79b5: $00
    dec d                                         ; $79b6: $15
    ld l, a                                       ; $79b7: $6f
    nop                                           ; $79b8: $00
    inc sp                                        ; $79b9: $33
    dec bc                                        ; $79ba: $0b
    ld b, [hl]                                    ; $79bb: $46
    ld d, a                                       ; $79bc: $57
    nop                                           ; $79bd: $00
    nop                                           ; $79be: $00
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    nop                                           ; $79c1: $00
    dec d                                         ; $79c2: $15
    ld l, a                                       ; $79c3: $6f
    nop                                           ; $79c4: $00
    inc sp                                        ; $79c5: $33
    dec bc                                        ; $79c6: $0b
    ld b, a                                       ; $79c7: $47
    ld d, a                                       ; $79c8: $57
    nop                                           ; $79c9: $00
    nop                                           ; $79ca: $00
    nop                                           ; $79cb: $00
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    ld d, [hl]                                    ; $79ce: $56
    nop                                           ; $79cf: $00
    nop                                           ; $79d0: $00
    rla                                           ; $79d1: $17
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    dec de                                        ; $79d4: $1b
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    ld e, a                                       ; $79d7: $5f
    ld bc, $6300                                  ; $79d8: $01 $00 $63
    cp $0b                                        ; $79db: $fe $0b
    ld [$00fe], sp                                ; $79dd: $08 $fe $00
    dec d                                         ; $79e0: $15
    ld c, l                                       ; $79e1: $4d
    nop                                           ; $79e2: $00
    rlca                                          ; $79e3: $07
    ld [$1546], sp                                ; $79e4: $08 $46 $15
    ld c, l                                       ; $79e7: $4d
    nop                                           ; $79e8: $00
    rlca                                          ; $79e9: $07
    ld [$1552], sp                                ; $79ea: $08 $52 $15
    ld c, l                                       ; $79ed: $4d
    nop                                           ; $79ee: $00
    rlca                                          ; $79ef: $07
    ld [$155e], sp                                ; $79f0: $08 $5e $15
    ld c, l                                       ; $79f3: $4d
    nop                                           ; $79f4: $00
    rlca                                          ; $79f5: $07
    ld [$156a], sp                                ; $79f6: $08 $6a $15
    ld c, l                                       ; $79f9: $4d
    nop                                           ; $79fa: $00
    rlca                                          ; $79fb: $07
    ld [$1576], sp                                ; $79fc: $08 $76 $15
    ld c, l                                       ; $79ff: $4d
    nop                                           ; $7a00: $00
    rlca                                          ; $7a01: $07
    ld [$1582], sp                                ; $7a02: $08 $82 $15
    ld c, l                                       ; $7a05: $4d
    nop                                           ; $7a06: $00
    rlca                                          ; $7a07: $07
    ld [$158e], sp                                ; $7a08: $08 $8e $15
    ld c, l                                       ; $7a0b: $4d
    nop                                           ; $7a0c: $00
    rlca                                          ; $7a0d: $07
    ld [$159a], sp                                ; $7a0e: $08 $9a $15
    ld c, l                                       ; $7a11: $4d
    nop                                           ; $7a12: $00
    rlca                                          ; $7a13: $07
    ld [$15a6], sp                                ; $7a14: $08 $a6 $15
    ld c, l                                       ; $7a17: $4d
    nop                                           ; $7a18: $00
    rlca                                          ; $7a19: $07
    ld [$15b2], sp                                ; $7a1a: $08 $b2 $15
    ld c, l                                       ; $7a1d: $4d
    nop                                           ; $7a1e: $00
    rlca                                          ; $7a1f: $07
    ld [$15be], sp                                ; $7a20: $08 $be $15
    ld l, c                                       ; $7a23: $69
    nop                                           ; $7a24: $00
    inc sp                                        ; $7a25: $33
    dec bc                                        ; $7a26: $0b
    ld c, b                                       ; $7a27: $48
    ld d, a                                       ; $7a28: $57
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    nop                                           ; $7a2c: $00
    nop                                           ; $7a2d: $00
    dec d                                         ; $7a2e: $15
    ld l, c                                       ; $7a2f: $69
    nop                                           ; $7a30: $00
    inc sp                                        ; $7a31: $33
    dec bc                                        ; $7a32: $0b
    ld c, c                                       ; $7a33: $49
    ld d, a                                       ; $7a34: $57
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    nop                                           ; $7a37: $00
    nop                                           ; $7a38: $00
    nop                                           ; $7a39: $00
    dec d                                         ; $7a3a: $15
    ld l, c                                       ; $7a3b: $69
    nop                                           ; $7a3c: $00
    inc sp                                        ; $7a3d: $33
    dec bc                                        ; $7a3e: $0b
    ld c, d                                       ; $7a3f: $4a
    ld d, a                                       ; $7a40: $57
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    nop                                           ; $7a45: $00
    dec d                                         ; $7a46: $15
    ld l, c                                       ; $7a47: $69
    nop                                           ; $7a48: $00
    inc sp                                        ; $7a49: $33
    dec bc                                        ; $7a4a: $0b
    ld c, e                                       ; $7a4b: $4b
    ld d, a                                       ; $7a4c: $57
    nop                                           ; $7a4d: $00
    nop                                           ; $7a4e: $00
    nop                                           ; $7a4f: $00
    nop                                           ; $7a50: $00
    nop                                           ; $7a51: $00
    dec d                                         ; $7a52: $15
    ld l, c                                       ; $7a53: $69
    nop                                           ; $7a54: $00
    inc sp                                        ; $7a55: $33
    dec bc                                        ; $7a56: $0b
    ld c, h                                       ; $7a57: $4c
    ld d, a                                       ; $7a58: $57
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    dec d                                         ; $7a5e: $15
    ld l, c                                       ; $7a5f: $69
    nop                                           ; $7a60: $00
    inc sp                                        ; $7a61: $33
    dec bc                                        ; $7a62: $0b
    ld c, l                                       ; $7a63: $4d
    ld d, a                                       ; $7a64: $57
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    dec d                                         ; $7a6a: $15
    ld l, c                                       ; $7a6b: $69
    nop                                           ; $7a6c: $00
    inc sp                                        ; $7a6d: $33
    dec bc                                        ; $7a6e: $0b
    ld c, [hl]                                    ; $7a6f: $4e
    ld d, a                                       ; $7a70: $57
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    nop                                           ; $7a73: $00
    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    dec d                                         ; $7a76: $15
    ld l, c                                       ; $7a77: $69
    nop                                           ; $7a78: $00
    inc sp                                        ; $7a79: $33
    dec bc                                        ; $7a7a: $0b
    ld c, a                                       ; $7a7b: $4f
    ld d, a                                       ; $7a7c: $57
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    dec d                                         ; $7a82: $15
    ld l, c                                       ; $7a83: $69
    nop                                           ; $7a84: $00
    inc sp                                        ; $7a85: $33
    dec bc                                        ; $7a86: $0b
    ld d, b                                       ; $7a87: $50
    ld d, a                                       ; $7a88: $57
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    dec d                                         ; $7a8e: $15
    ld l, c                                       ; $7a8f: $69
    nop                                           ; $7a90: $00
    inc sp                                        ; $7a91: $33
    dec bc                                        ; $7a92: $0b
    ld d, c                                       ; $7a93: $51
    ld d, a                                       ; $7a94: $57
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00
    dec d                                         ; $7a9a: $15
    ld l, c                                       ; $7a9b: $69
    nop                                           ; $7a9c: $00
    inc sp                                        ; $7a9d: $33
    dec bc                                        ; $7a9e: $0b
    ld d, d                                       ; $7a9f: $52
    ld d, a                                       ; $7aa0: $57
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    ld d, [hl]                                    ; $7aa6: $56
    nop                                           ; $7aa7: $00
    nop                                           ; $7aa8: $00
    rla                                           ; $7aa9: $17
    nop                                           ; $7aaa: $00
    nop                                           ; $7aab: $00
    dec de                                        ; $7aac: $1b
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    ld e, a                                       ; $7aaf: $5f
    ld bc, $6300                                  ; $7ab0: $01 $00 $63
    cp $0b                                        ; $7ab3: $fe $0b
    ld [$00fe], sp                                ; $7ab5: $08 $fe $00
    dec d                                         ; $7ab8: $15
    ld c, l                                       ; $7ab9: $4d
    nop                                           ; $7aba: $00
    rlca                                          ; $7abb: $07
    add hl, bc                                    ; $7abc: $09
    ld e, $15                                     ; $7abd: $1e $15
    ld c, l                                       ; $7abf: $4d
    nop                                           ; $7ac0: $00
    rlca                                          ; $7ac1: $07
    add hl, bc                                    ; $7ac2: $09
    ld a, [hl+]                                   ; $7ac3: $2a
    dec d                                         ; $7ac4: $15
    ld c, l                                       ; $7ac5: $4d
    nop                                           ; $7ac6: $00
    rlca                                          ; $7ac7: $07
    add hl, bc                                    ; $7ac8: $09
    ld [hl], $15                                  ; $7ac9: $36 $15
    ld c, l                                       ; $7acb: $4d
    nop                                           ; $7acc: $00
    rlca                                          ; $7acd: $07
    add hl, bc                                    ; $7ace: $09
    ld b, d                                       ; $7acf: $42
    dec d                                         ; $7ad0: $15
    ld c, l                                       ; $7ad1: $4d
    nop                                           ; $7ad2: $00
    rlca                                          ; $7ad3: $07
    add hl, bc                                    ; $7ad4: $09
    ld c, [hl]                                    ; $7ad5: $4e
    dec d                                         ; $7ad6: $15
    ld c, l                                       ; $7ad7: $4d
    nop                                           ; $7ad8: $00
    rlca                                          ; $7ad9: $07
    add hl, bc                                    ; $7ada: $09
    ld e, d                                       ; $7adb: $5a
    dec d                                         ; $7adc: $15
    ld c, l                                       ; $7add: $4d
    nop                                           ; $7ade: $00
    rlca                                          ; $7adf: $07
    add hl, bc                                    ; $7ae0: $09
    ld h, [hl]                                    ; $7ae1: $66
    dec d                                         ; $7ae2: $15
    ld c, l                                       ; $7ae3: $4d
    nop                                           ; $7ae4: $00
    rlca                                          ; $7ae5: $07
    add hl, bc                                    ; $7ae6: $09
    ld [hl], d                                    ; $7ae7: $72
    dec d                                         ; $7ae8: $15
    ld c, l                                       ; $7ae9: $4d
    nop                                           ; $7aea: $00
    rlca                                          ; $7aeb: $07
    add hl, bc                                    ; $7aec: $09
    ld a, [hl]                                    ; $7aed: $7e
    dec d                                         ; $7aee: $15
    ld c, l                                       ; $7aef: $4d
    nop                                           ; $7af0: $00
    rlca                                          ; $7af1: $07
    add hl, bc                                    ; $7af2: $09
    adc d                                         ; $7af3: $8a
    dec d                                         ; $7af4: $15
    ld c, l                                       ; $7af5: $4d
    nop                                           ; $7af6: $00
    rlca                                          ; $7af7: $07
    add hl, bc                                    ; $7af8: $09
    sub [hl]                                      ; $7af9: $96
    dec d                                         ; $7afa: $15
    ld h, h                                       ; $7afb: $64
    nop                                           ; $7afc: $00
    inc sp                                        ; $7afd: $33
    dec bc                                        ; $7afe: $0b
    ld c, b                                       ; $7aff: $48
    ld d, a                                       ; $7b00: $57
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    nop                                           ; $7b03: $00
    nop                                           ; $7b04: $00
    nop                                           ; $7b05: $00
    dec d                                         ; $7b06: $15
    ld h, h                                       ; $7b07: $64
    nop                                           ; $7b08: $00
    inc sp                                        ; $7b09: $33
    dec bc                                        ; $7b0a: $0b
    ld c, c                                       ; $7b0b: $49
    ld d, a                                       ; $7b0c: $57
    nop                                           ; $7b0d: $00
    nop                                           ; $7b0e: $00
    nop                                           ; $7b0f: $00
    nop                                           ; $7b10: $00
    nop                                           ; $7b11: $00
    dec d                                         ; $7b12: $15
    ld h, h                                       ; $7b13: $64
    nop                                           ; $7b14: $00
    inc sp                                        ; $7b15: $33
    dec bc                                        ; $7b16: $0b
    ld c, d                                       ; $7b17: $4a
    ld d, a                                       ; $7b18: $57
    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    nop                                           ; $7b1d: $00
    dec d                                         ; $7b1e: $15
    ld h, h                                       ; $7b1f: $64
    nop                                           ; $7b20: $00
    inc sp                                        ; $7b21: $33
    dec bc                                        ; $7b22: $0b
    ld c, e                                       ; $7b23: $4b
    ld d, a                                       ; $7b24: $57
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    nop                                           ; $7b27: $00
    nop                                           ; $7b28: $00
    nop                                           ; $7b29: $00
    dec d                                         ; $7b2a: $15
    ld h, h                                       ; $7b2b: $64
    nop                                           ; $7b2c: $00
    inc sp                                        ; $7b2d: $33
    dec bc                                        ; $7b2e: $0b
    ld c, h                                       ; $7b2f: $4c
    ld d, a                                       ; $7b30: $57
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00
    nop                                           ; $7b34: $00
    nop                                           ; $7b35: $00
    dec d                                         ; $7b36: $15
    ld h, h                                       ; $7b37: $64
    nop                                           ; $7b38: $00
    inc sp                                        ; $7b39: $33
    dec bc                                        ; $7b3a: $0b
    ld c, l                                       ; $7b3b: $4d
    ld d, a                                       ; $7b3c: $57
    nop                                           ; $7b3d: $00
    nop                                           ; $7b3e: $00
    nop                                           ; $7b3f: $00
    nop                                           ; $7b40: $00
    nop                                           ; $7b41: $00
    dec d                                         ; $7b42: $15
    ld h, h                                       ; $7b43: $64
    nop                                           ; $7b44: $00
    inc sp                                        ; $7b45: $33
    dec bc                                        ; $7b46: $0b
    ld c, [hl]                                    ; $7b47: $4e
    ld d, a                                       ; $7b48: $57
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00
    nop                                           ; $7b4d: $00
    dec d                                         ; $7b4e: $15
    ld h, h                                       ; $7b4f: $64
    nop                                           ; $7b50: $00
    inc sp                                        ; $7b51: $33
    dec bc                                        ; $7b52: $0b
    ld c, a                                       ; $7b53: $4f
    ld d, a                                       ; $7b54: $57
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    nop                                           ; $7b59: $00
    dec d                                         ; $7b5a: $15
    ld h, h                                       ; $7b5b: $64
    nop                                           ; $7b5c: $00
    inc sp                                        ; $7b5d: $33
    dec bc                                        ; $7b5e: $0b
    ld d, b                                       ; $7b5f: $50
    ld d, a                                       ; $7b60: $57
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    nop                                           ; $7b65: $00
    dec d                                         ; $7b66: $15
    ld h, h                                       ; $7b67: $64
    nop                                           ; $7b68: $00
    inc sp                                        ; $7b69: $33
    dec bc                                        ; $7b6a: $0b
    ld d, c                                       ; $7b6b: $51
    ld d, a                                       ; $7b6c: $57
    nop                                           ; $7b6d: $00
    nop                                           ; $7b6e: $00
    nop                                           ; $7b6f: $00
    nop                                           ; $7b70: $00
    nop                                           ; $7b71: $00
    dec d                                         ; $7b72: $15
    ld h, h                                       ; $7b73: $64
    nop                                           ; $7b74: $00
    inc sp                                        ; $7b75: $33
    dec bc                                        ; $7b76: $0b
    ld d, d                                       ; $7b77: $52
    ld d, a                                       ; $7b78: $57
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    nop                                           ; $7b7c: $00
    nop                                           ; $7b7d: $00
    ld d, [hl]                                    ; $7b7e: $56
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    rla                                           ; $7b81: $17
    nop                                           ; $7b82: $00
    nop                                           ; $7b83: $00
    dec de                                        ; $7b84: $1b
    nop                                           ; $7b85: $00
    nop                                           ; $7b86: $00
    ld e, a                                       ; $7b87: $5f
    ld bc, $6300                                  ; $7b88: $01 $00 $63
    cp $0b                                        ; $7b8b: $fe $0b
    ld [$00fe], sp                                ; $7b8d: $08 $fe $00
    dec d                                         ; $7b90: $15
    ld c, l                                       ; $7b91: $4d
    nop                                           ; $7b92: $00
    rlca                                          ; $7b93: $07
    add hl, bc                                    ; $7b94: $09
    or $15                                        ; $7b95: $f6 $15
    ld c, l                                       ; $7b97: $4d
    nop                                           ; $7b98: $00
    rlca                                          ; $7b99: $07
    ld a, [bc]                                    ; $7b9a: $0a
    ld [bc], a                                    ; $7b9b: $02
    dec d                                         ; $7b9c: $15
    ld c, l                                       ; $7b9d: $4d
    nop                                           ; $7b9e: $00
    rlca                                          ; $7b9f: $07
    ld a, [bc]                                    ; $7ba0: $0a
    ld c, $15                                     ; $7ba1: $0e $15
    ld c, l                                       ; $7ba3: $4d
    nop                                           ; $7ba4: $00
    rlca                                          ; $7ba5: $07
    ld a, [bc]                                    ; $7ba6: $0a
    ld a, [de]                                    ; $7ba7: $1a
    dec d                                         ; $7ba8: $15
    ld c, l                                       ; $7ba9: $4d
    nop                                           ; $7baa: $00
    rlca                                          ; $7bab: $07
    ld a, [bc]                                    ; $7bac: $0a
    ld h, $15                                     ; $7bad: $26 $15
    ld c, l                                       ; $7baf: $4d
    nop                                           ; $7bb0: $00
    rlca                                          ; $7bb1: $07
    ld a, [bc]                                    ; $7bb2: $0a
    ld [hl-], a                                   ; $7bb3: $32
    dec d                                         ; $7bb4: $15
    ld c, l                                       ; $7bb5: $4d
    nop                                           ; $7bb6: $00
    rlca                                          ; $7bb7: $07
    ld a, [bc]                                    ; $7bb8: $0a
    ld a, $15                                     ; $7bb9: $3e $15
    ld c, l                                       ; $7bbb: $4d
    nop                                           ; $7bbc: $00
    rlca                                          ; $7bbd: $07
    ld a, [bc]                                    ; $7bbe: $0a
    ld c, d                                       ; $7bbf: $4a
    dec d                                         ; $7bc0: $15
    ld c, l                                       ; $7bc1: $4d
    nop                                           ; $7bc2: $00
    rlca                                          ; $7bc3: $07
    ld a, [bc]                                    ; $7bc4: $0a
    ld d, [hl]                                    ; $7bc5: $56
    dec d                                         ; $7bc6: $15
    ld c, l                                       ; $7bc7: $4d
    nop                                           ; $7bc8: $00
    rlca                                          ; $7bc9: $07
    ld a, [bc]                                    ; $7bca: $0a
    ld h, d                                       ; $7bcb: $62
    dec d                                         ; $7bcc: $15
    ld c, l                                       ; $7bcd: $4d
    nop                                           ; $7bce: $00
    rlca                                          ; $7bcf: $07
    ld a, [bc]                                    ; $7bd0: $0a
    ld l, [hl]                                    ; $7bd1: $6e
    dec d                                         ; $7bd2: $15
    ld h, e                                       ; $7bd3: $63
    nop                                           ; $7bd4: $00
    inc sp                                        ; $7bd5: $33
    dec bc                                        ; $7bd6: $0b
    ld c, b                                       ; $7bd7: $48
    ld d, a                                       ; $7bd8: $57
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    nop                                           ; $7bdb: $00
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    dec d                                         ; $7bde: $15
    ld h, e                                       ; $7bdf: $63
    nop                                           ; $7be0: $00
    inc sp                                        ; $7be1: $33
    dec bc                                        ; $7be2: $0b
    ld c, c                                       ; $7be3: $49
    ld d, a                                       ; $7be4: $57
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00
    nop                                           ; $7be7: $00
    nop                                           ; $7be8: $00
    nop                                           ; $7be9: $00
    dec d                                         ; $7bea: $15
    ld h, e                                       ; $7beb: $63
    nop                                           ; $7bec: $00
    inc sp                                        ; $7bed: $33
    dec bc                                        ; $7bee: $0b
    ld c, d                                       ; $7bef: $4a
    ld d, a                                       ; $7bf0: $57
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    dec d                                         ; $7bf6: $15
    ld h, e                                       ; $7bf7: $63
    nop                                           ; $7bf8: $00
    inc sp                                        ; $7bf9: $33
    dec bc                                        ; $7bfa: $0b
    ld c, e                                       ; $7bfb: $4b
    ld d, a                                       ; $7bfc: $57
    nop                                           ; $7bfd: $00
    nop                                           ; $7bfe: $00
    nop                                           ; $7bff: $00
    nop                                           ; $7c00: $00
    nop                                           ; $7c01: $00
    dec d                                         ; $7c02: $15
    ld h, e                                       ; $7c03: $63
    nop                                           ; $7c04: $00
    inc sp                                        ; $7c05: $33
    dec bc                                        ; $7c06: $0b
    ld c, h                                       ; $7c07: $4c
    ld d, a                                       ; $7c08: $57
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    nop                                           ; $7c0b: $00
    nop                                           ; $7c0c: $00
    nop                                           ; $7c0d: $00
    dec d                                         ; $7c0e: $15
    ld h, e                                       ; $7c0f: $63
    nop                                           ; $7c10: $00
    inc sp                                        ; $7c11: $33
    dec bc                                        ; $7c12: $0b
    ld c, l                                       ; $7c13: $4d
    ld d, a                                       ; $7c14: $57
    nop                                           ; $7c15: $00
    nop                                           ; $7c16: $00
    nop                                           ; $7c17: $00
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    dec d                                         ; $7c1a: $15
    ld h, e                                       ; $7c1b: $63
    nop                                           ; $7c1c: $00
    inc sp                                        ; $7c1d: $33
    dec bc                                        ; $7c1e: $0b
    ld c, [hl]                                    ; $7c1f: $4e
    ld d, a                                       ; $7c20: $57
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    nop                                           ; $7c23: $00
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    dec d                                         ; $7c26: $15
    ld h, e                                       ; $7c27: $63
    nop                                           ; $7c28: $00
    inc sp                                        ; $7c29: $33
    dec bc                                        ; $7c2a: $0b
    ld c, a                                       ; $7c2b: $4f
    ld d, a                                       ; $7c2c: $57
    nop                                           ; $7c2d: $00
    nop                                           ; $7c2e: $00
    nop                                           ; $7c2f: $00
    nop                                           ; $7c30: $00
    nop                                           ; $7c31: $00
    dec d                                         ; $7c32: $15
    ld h, e                                       ; $7c33: $63
    nop                                           ; $7c34: $00
    inc sp                                        ; $7c35: $33
    dec bc                                        ; $7c36: $0b
    ld d, b                                       ; $7c37: $50
    ld d, a                                       ; $7c38: $57
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    nop                                           ; $7c3d: $00
    dec d                                         ; $7c3e: $15
    ld h, e                                       ; $7c3f: $63
    nop                                           ; $7c40: $00
    inc sp                                        ; $7c41: $33
    dec bc                                        ; $7c42: $0b
    ld d, c                                       ; $7c43: $51
    ld d, a                                       ; $7c44: $57
    nop                                           ; $7c45: $00
    nop                                           ; $7c46: $00
    nop                                           ; $7c47: $00
    nop                                           ; $7c48: $00
    nop                                           ; $7c49: $00
    dec d                                         ; $7c4a: $15
    ld h, e                                       ; $7c4b: $63
    nop                                           ; $7c4c: $00
    inc sp                                        ; $7c4d: $33
    dec bc                                        ; $7c4e: $0b
    ld d, d                                       ; $7c4f: $52
    ld d, a                                       ; $7c50: $57
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    ld d, [hl]                                    ; $7c56: $56
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    rla                                           ; $7c59: $17
    nop                                           ; $7c5a: $00
    nop                                           ; $7c5b: $00
    dec de                                        ; $7c5c: $1b
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    ld e, a                                       ; $7c5f: $5f
    ld bc, $6300                                  ; $7c60: $01 $00 $63
    cp $0b                                        ; $7c63: $fe $0b
    ld [$00fe], sp                                ; $7c65: $08 $fe $00
    dec d                                         ; $7c68: $15
    ld c, l                                       ; $7c69: $4d
    nop                                           ; $7c6a: $00
    rlca                                          ; $7c6b: $07
    ld a, [bc]                                    ; $7c6c: $0a
    adc $15                                       ; $7c6d: $ce $15
    ld c, l                                       ; $7c6f: $4d
    nop                                           ; $7c70: $00
    rlca                                          ; $7c71: $07
    ld a, [bc]                                    ; $7c72: $0a
    jp c, Jump_00d_4d15                           ; $7c73: $da $15 $4d

    nop                                           ; $7c76: $00
    rlca                                          ; $7c77: $07
    ld a, [bc]                                    ; $7c78: $0a
    and $15                                       ; $7c79: $e6 $15
    ld c, l                                       ; $7c7b: $4d
    nop                                           ; $7c7c: $00
    rlca                                          ; $7c7d: $07
    ld a, [bc]                                    ; $7c7e: $0a
    ld a, [c]                                     ; $7c7f: $f2
    dec d                                         ; $7c80: $15
    ld c, l                                       ; $7c81: $4d
    nop                                           ; $7c82: $00
    rlca                                          ; $7c83: $07
    ld a, [bc]                                    ; $7c84: $0a
    cp $15                                        ; $7c85: $fe $15
    ld c, l                                       ; $7c87: $4d
    nop                                           ; $7c88: $00
    rlca                                          ; $7c89: $07
    dec bc                                        ; $7c8a: $0b
    ld a, [bc]                                    ; $7c8b: $0a
    dec d                                         ; $7c8c: $15
    ld c, l                                       ; $7c8d: $4d
    nop                                           ; $7c8e: $00
    rlca                                          ; $7c8f: $07
    dec bc                                        ; $7c90: $0b
    ld d, $15                                     ; $7c91: $16 $15
    ld c, l                                       ; $7c93: $4d
    nop                                           ; $7c94: $00
    rlca                                          ; $7c95: $07
    dec bc                                        ; $7c96: $0b
    ld [hl+], a                                   ; $7c97: $22
    dec d                                         ; $7c98: $15
    ld c, l                                       ; $7c99: $4d
    nop                                           ; $7c9a: $00
    rlca                                          ; $7c9b: $07
    dec bc                                        ; $7c9c: $0b
    ld l, $15                                     ; $7c9d: $2e $15
    ld c, l                                       ; $7c9f: $4d
    nop                                           ; $7ca0: $00
    rlca                                          ; $7ca1: $07
    dec bc                                        ; $7ca2: $0b
    ld a, [hl-]                                   ; $7ca3: $3a
    dec d                                         ; $7ca4: $15
    ld c, l                                       ; $7ca5: $4d
    nop                                           ; $7ca6: $00
    rlca                                          ; $7ca7: $07
    dec bc                                        ; $7ca8: $0b
    ld b, [hl]                                    ; $7ca9: $46
    dec d                                         ; $7caa: $15
    ld h, d                                       ; $7cab: $62
    nop                                           ; $7cac: $00
    inc sp                                        ; $7cad: $33
    dec bc                                        ; $7cae: $0b
    ld c, b                                       ; $7caf: $48
    ld d, a                                       ; $7cb0: $57
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    nop                                           ; $7cb3: $00
    nop                                           ; $7cb4: $00
    nop                                           ; $7cb5: $00
    dec d                                         ; $7cb6: $15
    ld h, d                                       ; $7cb7: $62
    nop                                           ; $7cb8: $00
    inc sp                                        ; $7cb9: $33
    dec bc                                        ; $7cba: $0b
    ld c, c                                       ; $7cbb: $49
    ld d, a                                       ; $7cbc: $57
    nop                                           ; $7cbd: $00
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    nop                                           ; $7cc0: $00
    nop                                           ; $7cc1: $00
    dec d                                         ; $7cc2: $15
    ld h, d                                       ; $7cc3: $62
    nop                                           ; $7cc4: $00
    inc sp                                        ; $7cc5: $33
    dec bc                                        ; $7cc6: $0b
    ld c, d                                       ; $7cc7: $4a
    ld d, a                                       ; $7cc8: $57
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    nop                                           ; $7ccb: $00
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    dec d                                         ; $7cce: $15
    ld h, d                                       ; $7ccf: $62
    nop                                           ; $7cd0: $00
    inc sp                                        ; $7cd1: $33
    dec bc                                        ; $7cd2: $0b
    ld c, e                                       ; $7cd3: $4b
    ld d, a                                       ; $7cd4: $57
    nop                                           ; $7cd5: $00
    nop                                           ; $7cd6: $00
    nop                                           ; $7cd7: $00
    nop                                           ; $7cd8: $00
    nop                                           ; $7cd9: $00
    dec d                                         ; $7cda: $15
    ld h, d                                       ; $7cdb: $62
    nop                                           ; $7cdc: $00
    inc sp                                        ; $7cdd: $33
    dec bc                                        ; $7cde: $0b
    ld c, h                                       ; $7cdf: $4c
    ld d, a                                       ; $7ce0: $57
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    nop                                           ; $7ce3: $00
    nop                                           ; $7ce4: $00
    nop                                           ; $7ce5: $00
    dec d                                         ; $7ce6: $15
    ld h, d                                       ; $7ce7: $62
    nop                                           ; $7ce8: $00
    inc sp                                        ; $7ce9: $33
    dec bc                                        ; $7cea: $0b
    ld c, l                                       ; $7ceb: $4d
    ld d, a                                       ; $7cec: $57
    nop                                           ; $7ced: $00
    nop                                           ; $7cee: $00
    nop                                           ; $7cef: $00
    nop                                           ; $7cf0: $00
    nop                                           ; $7cf1: $00
    dec d                                         ; $7cf2: $15
    ld h, d                                       ; $7cf3: $62
    nop                                           ; $7cf4: $00
    inc sp                                        ; $7cf5: $33
    dec bc                                        ; $7cf6: $0b
    ld c, [hl]                                    ; $7cf7: $4e
    ld d, a                                       ; $7cf8: $57
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    nop                                           ; $7cfb: $00
    nop                                           ; $7cfc: $00
    nop                                           ; $7cfd: $00
    dec d                                         ; $7cfe: $15
    ld h, d                                       ; $7cff: $62
    nop                                           ; $7d00: $00
    inc sp                                        ; $7d01: $33
    dec bc                                        ; $7d02: $0b
    ld c, a                                       ; $7d03: $4f
    ld d, a                                       ; $7d04: $57
    nop                                           ; $7d05: $00
    nop                                           ; $7d06: $00
    nop                                           ; $7d07: $00
    nop                                           ; $7d08: $00
    nop                                           ; $7d09: $00
    dec d                                         ; $7d0a: $15
    ld h, d                                       ; $7d0b: $62
    nop                                           ; $7d0c: $00
    inc sp                                        ; $7d0d: $33
    dec bc                                        ; $7d0e: $0b
    ld d, b                                       ; $7d0f: $50
    ld d, a                                       ; $7d10: $57
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    nop                                           ; $7d14: $00
    nop                                           ; $7d15: $00
    dec d                                         ; $7d16: $15
    ld h, d                                       ; $7d17: $62
    nop                                           ; $7d18: $00
    inc sp                                        ; $7d19: $33
    dec bc                                        ; $7d1a: $0b
    ld d, c                                       ; $7d1b: $51
    ld d, a                                       ; $7d1c: $57
    nop                                           ; $7d1d: $00
    nop                                           ; $7d1e: $00
    nop                                           ; $7d1f: $00
    nop                                           ; $7d20: $00
    nop                                           ; $7d21: $00
    dec d                                         ; $7d22: $15
    ld h, d                                       ; $7d23: $62
    nop                                           ; $7d24: $00
    inc sp                                        ; $7d25: $33
    dec bc                                        ; $7d26: $0b
    ld d, d                                       ; $7d27: $52
    ld d, a                                       ; $7d28: $57
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    nop                                           ; $7d2c: $00
    nop                                           ; $7d2d: $00
    ld d, [hl]                                    ; $7d2e: $56
    nop                                           ; $7d2f: $00
    nop                                           ; $7d30: $00
    rla                                           ; $7d31: $17
    nop                                           ; $7d32: $00
    nop                                           ; $7d33: $00
    dec de                                        ; $7d34: $1b
    nop                                           ; $7d35: $00
    nop                                           ; $7d36: $00
    ld e, a                                       ; $7d37: $5f
    ld bc, $6300                                  ; $7d38: $01 $00 $63
    cp $0b                                        ; $7d3b: $fe $0b
    ld [$00fe], sp                                ; $7d3d: $08 $fe $00
    dec d                                         ; $7d40: $15
    ld c, l                                       ; $7d41: $4d
    nop                                           ; $7d42: $00
    rlca                                          ; $7d43: $07
    dec bc                                        ; $7d44: $0b
    and [hl]                                      ; $7d45: $a6
    dec d                                         ; $7d46: $15
    ld c, l                                       ; $7d47: $4d
    nop                                           ; $7d48: $00
    rlca                                          ; $7d49: $07
    dec bc                                        ; $7d4a: $0b
    or d                                          ; $7d4b: $b2
    dec d                                         ; $7d4c: $15
    ld c, l                                       ; $7d4d: $4d
    nop                                           ; $7d4e: $00
    rlca                                          ; $7d4f: $07
    dec bc                                        ; $7d50: $0b
    cp [hl]                                       ; $7d51: $be
    dec d                                         ; $7d52: $15
    ld c, l                                       ; $7d53: $4d
    nop                                           ; $7d54: $00
    rlca                                          ; $7d55: $07
    dec bc                                        ; $7d56: $0b
    jp z, Jump_00d_4d15                           ; $7d57: $ca $15 $4d

    nop                                           ; $7d5a: $00
    rlca                                          ; $7d5b: $07
    dec bc                                        ; $7d5c: $0b
    sub $15                                       ; $7d5d: $d6 $15
    ld c, l                                       ; $7d5f: $4d
    nop                                           ; $7d60: $00
    rlca                                          ; $7d61: $07
    dec bc                                        ; $7d62: $0b
    ld [c], a                                     ; $7d63: $e2
    dec d                                         ; $7d64: $15
    ld c, l                                       ; $7d65: $4d
    nop                                           ; $7d66: $00
    rlca                                          ; $7d67: $07
    dec bc                                        ; $7d68: $0b
    xor $15                                       ; $7d69: $ee $15
    ld c, l                                       ; $7d6b: $4d
    nop                                           ; $7d6c: $00
    rlca                                          ; $7d6d: $07
    dec bc                                        ; $7d6e: $0b
    ld a, [$4d15]                                 ; $7d6f: $fa $15 $4d
    nop                                           ; $7d72: $00
    rlca                                          ; $7d73: $07
    inc c                                         ; $7d74: $0c
    ld b, $15                                     ; $7d75: $06 $15
    ld c, l                                       ; $7d77: $4d
    nop                                           ; $7d78: $00
    rlca                                          ; $7d79: $07
    inc c                                         ; $7d7a: $0c
    ld [de], a                                    ; $7d7b: $12
    dec d                                         ; $7d7c: $15
    ld c, l                                       ; $7d7d: $4d
    nop                                           ; $7d7e: $00
    rlca                                          ; $7d7f: $07
    inc c                                         ; $7d80: $0c
    ld e, $15                                     ; $7d81: $1e $15
    ld h, c                                       ; $7d83: $61
    nop                                           ; $7d84: $00
    inc sp                                        ; $7d85: $33
    dec bc                                        ; $7d86: $0b
    ld c, b                                       ; $7d87: $48
    ld d, a                                       ; $7d88: $57
    nop                                           ; $7d89: $00
    nop                                           ; $7d8a: $00
    nop                                           ; $7d8b: $00
    nop                                           ; $7d8c: $00
    nop                                           ; $7d8d: $00
    dec d                                         ; $7d8e: $15
    ld h, c                                       ; $7d8f: $61
    nop                                           ; $7d90: $00
    inc sp                                        ; $7d91: $33
    dec bc                                        ; $7d92: $0b
    ld c, c                                       ; $7d93: $49
    ld d, a                                       ; $7d94: $57
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00
    nop                                           ; $7d97: $00
    nop                                           ; $7d98: $00
    nop                                           ; $7d99: $00
    dec d                                         ; $7d9a: $15
    ld h, c                                       ; $7d9b: $61
    nop                                           ; $7d9c: $00
    inc sp                                        ; $7d9d: $33
    dec bc                                        ; $7d9e: $0b
    ld c, d                                       ; $7d9f: $4a
    ld d, a                                       ; $7da0: $57
    nop                                           ; $7da1: $00
    nop                                           ; $7da2: $00
    nop                                           ; $7da3: $00
    nop                                           ; $7da4: $00
    nop                                           ; $7da5: $00
    dec d                                         ; $7da6: $15
    ld h, c                                       ; $7da7: $61
    nop                                           ; $7da8: $00
    inc sp                                        ; $7da9: $33
    dec bc                                        ; $7daa: $0b
    ld c, e                                       ; $7dab: $4b
    ld d, a                                       ; $7dac: $57
    nop                                           ; $7dad: $00
    nop                                           ; $7dae: $00
    nop                                           ; $7daf: $00
    nop                                           ; $7db0: $00
    nop                                           ; $7db1: $00
    dec d                                         ; $7db2: $15
    ld h, c                                       ; $7db3: $61
    nop                                           ; $7db4: $00
    inc sp                                        ; $7db5: $33
    dec bc                                        ; $7db6: $0b
    ld c, h                                       ; $7db7: $4c
    ld d, a                                       ; $7db8: $57
    nop                                           ; $7db9: $00
    nop                                           ; $7dba: $00
    nop                                           ; $7dbb: $00
    nop                                           ; $7dbc: $00
    nop                                           ; $7dbd: $00
    dec d                                         ; $7dbe: $15
    ld h, c                                       ; $7dbf: $61
    nop                                           ; $7dc0: $00
    inc sp                                        ; $7dc1: $33
    dec bc                                        ; $7dc2: $0b
    ld c, l                                       ; $7dc3: $4d
    ld d, a                                       ; $7dc4: $57
    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    nop                                           ; $7dc7: $00
    nop                                           ; $7dc8: $00
    nop                                           ; $7dc9: $00
    dec d                                         ; $7dca: $15
    ld h, c                                       ; $7dcb: $61
    nop                                           ; $7dcc: $00
    inc sp                                        ; $7dcd: $33
    dec bc                                        ; $7dce: $0b
    ld c, [hl]                                    ; $7dcf: $4e
    ld d, a                                       ; $7dd0: $57
    nop                                           ; $7dd1: $00
    nop                                           ; $7dd2: $00
    nop                                           ; $7dd3: $00
    nop                                           ; $7dd4: $00
    nop                                           ; $7dd5: $00
    dec d                                         ; $7dd6: $15
    ld h, c                                       ; $7dd7: $61
    nop                                           ; $7dd8: $00
    inc sp                                        ; $7dd9: $33
    dec bc                                        ; $7dda: $0b
    ld c, a                                       ; $7ddb: $4f
    ld d, a                                       ; $7ddc: $57
    nop                                           ; $7ddd: $00
    nop                                           ; $7dde: $00
    nop                                           ; $7ddf: $00
    nop                                           ; $7de0: $00
    nop                                           ; $7de1: $00
    dec d                                         ; $7de2: $15
    ld h, c                                       ; $7de3: $61
    nop                                           ; $7de4: $00
    inc sp                                        ; $7de5: $33
    dec bc                                        ; $7de6: $0b
    ld d, b                                       ; $7de7: $50
    ld d, a                                       ; $7de8: $57
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    nop                                           ; $7deb: $00
    nop                                           ; $7dec: $00
    nop                                           ; $7ded: $00
    dec d                                         ; $7dee: $15
    ld h, c                                       ; $7def: $61
    nop                                           ; $7df0: $00
    inc sp                                        ; $7df1: $33
    dec bc                                        ; $7df2: $0b
    ld d, c                                       ; $7df3: $51
    ld d, a                                       ; $7df4: $57
    nop                                           ; $7df5: $00
    nop                                           ; $7df6: $00
    nop                                           ; $7df7: $00
    nop                                           ; $7df8: $00
    nop                                           ; $7df9: $00
    dec d                                         ; $7dfa: $15
    ld h, c                                       ; $7dfb: $61
    nop                                           ; $7dfc: $00
    inc sp                                        ; $7dfd: $33
    dec bc                                        ; $7dfe: $0b
    ld d, d                                       ; $7dff: $52
    ld d, a                                       ; $7e00: $57
    nop                                           ; $7e01: $00
    nop                                           ; $7e02: $00
    nop                                           ; $7e03: $00
    nop                                           ; $7e04: $00
    nop                                           ; $7e05: $00
    ld d, [hl]                                    ; $7e06: $56
    nop                                           ; $7e07: $00
    nop                                           ; $7e08: $00
    rla                                           ; $7e09: $17
    nop                                           ; $7e0a: $00
    nop                                           ; $7e0b: $00
    dec de                                        ; $7e0c: $1b
    nop                                           ; $7e0d: $00
    nop                                           ; $7e0e: $00
    ld e, a                                       ; $7e0f: $5f
    ld bc, $6300                                  ; $7e10: $01 $00 $63
    cp $0b                                        ; $7e13: $fe $0b
    ld [$00fe], sp                                ; $7e15: $08 $fe $00
    dec d                                         ; $7e18: $15
    ld c, l                                       ; $7e19: $4d
    nop                                           ; $7e1a: $00
    rlca                                          ; $7e1b: $07
    inc c                                         ; $7e1c: $0c
    ld a, [hl]                                    ; $7e1d: $7e
    dec d                                         ; $7e1e: $15
    ld c, l                                       ; $7e1f: $4d
    nop                                           ; $7e20: $00
    rlca                                          ; $7e21: $07
    inc c                                         ; $7e22: $0c
    adc d                                         ; $7e23: $8a
    dec d                                         ; $7e24: $15
    ld c, l                                       ; $7e25: $4d
    nop                                           ; $7e26: $00
    rlca                                          ; $7e27: $07
    inc c                                         ; $7e28: $0c
    sub [hl]                                      ; $7e29: $96
    dec d                                         ; $7e2a: $15
    ld c, l                                       ; $7e2b: $4d
    nop                                           ; $7e2c: $00
    rlca                                          ; $7e2d: $07
    inc c                                         ; $7e2e: $0c
    and d                                         ; $7e2f: $a2
    dec d                                         ; $7e30: $15
    ld c, l                                       ; $7e31: $4d
    nop                                           ; $7e32: $00
    rlca                                          ; $7e33: $07
    inc c                                         ; $7e34: $0c
    xor [hl]                                      ; $7e35: $ae
    dec d                                         ; $7e36: $15
    ld c, l                                       ; $7e37: $4d
    nop                                           ; $7e38: $00
    rlca                                          ; $7e39: $07
    inc c                                         ; $7e3a: $0c
    cp d                                          ; $7e3b: $ba
    dec d                                         ; $7e3c: $15
    ld c, l                                       ; $7e3d: $4d
    nop                                           ; $7e3e: $00
    rlca                                          ; $7e3f: $07
    inc c                                         ; $7e40: $0c
    add $15                                       ; $7e41: $c6 $15
    ld c, l                                       ; $7e43: $4d
    nop                                           ; $7e44: $00
    rlca                                          ; $7e45: $07
    inc c                                         ; $7e46: $0c
    jp nc, Jump_00d_4d15                          ; $7e47: $d2 $15 $4d

    nop                                           ; $7e4a: $00
    rlca                                          ; $7e4b: $07
    inc c                                         ; $7e4c: $0c
    sbc $15                                       ; $7e4d: $de $15
    ld c, l                                       ; $7e4f: $4d
    nop                                           ; $7e50: $00
    rlca                                          ; $7e51: $07
    inc c                                         ; $7e52: $0c
    ld [$4d15], a                                 ; $7e53: $ea $15 $4d
    nop                                           ; $7e56: $00
    rlca                                          ; $7e57: $07
    inc c                                         ; $7e58: $0c
    or $15                                        ; $7e59: $f6 $15
    ld h, b                                       ; $7e5b: $60
    nop                                           ; $7e5c: $00
    inc sp                                        ; $7e5d: $33
    dec bc                                        ; $7e5e: $0b
    ld c, b                                       ; $7e5f: $48
    ld d, a                                       ; $7e60: $57
    nop                                           ; $7e61: $00
    nop                                           ; $7e62: $00
    nop                                           ; $7e63: $00
    nop                                           ; $7e64: $00
    nop                                           ; $7e65: $00
    dec d                                         ; $7e66: $15
    ld h, b                                       ; $7e67: $60
    nop                                           ; $7e68: $00
    inc sp                                        ; $7e69: $33
    dec bc                                        ; $7e6a: $0b
    ld c, c                                       ; $7e6b: $49
    ld d, a                                       ; $7e6c: $57
    nop                                           ; $7e6d: $00
    nop                                           ; $7e6e: $00
    nop                                           ; $7e6f: $00
    nop                                           ; $7e70: $00
    nop                                           ; $7e71: $00
    dec d                                         ; $7e72: $15
    ld h, b                                       ; $7e73: $60
    nop                                           ; $7e74: $00
    inc sp                                        ; $7e75: $33
    dec bc                                        ; $7e76: $0b
    ld c, d                                       ; $7e77: $4a
    ld d, a                                       ; $7e78: $57
    nop                                           ; $7e79: $00
    nop                                           ; $7e7a: $00
    nop                                           ; $7e7b: $00
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
    dec d                                         ; $7e7e: $15
    ld h, b                                       ; $7e7f: $60
    nop                                           ; $7e80: $00
    inc sp                                        ; $7e81: $33
    dec bc                                        ; $7e82: $0b
    ld c, e                                       ; $7e83: $4b
    ld d, a                                       ; $7e84: $57
    nop                                           ; $7e85: $00
    nop                                           ; $7e86: $00
    nop                                           ; $7e87: $00
    nop                                           ; $7e88: $00
    nop                                           ; $7e89: $00
    dec d                                         ; $7e8a: $15
    ld h, b                                       ; $7e8b: $60
    nop                                           ; $7e8c: $00
    inc sp                                        ; $7e8d: $33
    dec bc                                        ; $7e8e: $0b
    ld c, h                                       ; $7e8f: $4c
    ld d, a                                       ; $7e90: $57
    nop                                           ; $7e91: $00
    nop                                           ; $7e92: $00
    nop                                           ; $7e93: $00
    nop                                           ; $7e94: $00
    nop                                           ; $7e95: $00
    dec d                                         ; $7e96: $15
    ld h, b                                       ; $7e97: $60
    nop                                           ; $7e98: $00
    inc sp                                        ; $7e99: $33
    dec bc                                        ; $7e9a: $0b
    ld c, l                                       ; $7e9b: $4d
    ld d, a                                       ; $7e9c: $57
    nop                                           ; $7e9d: $00
    nop                                           ; $7e9e: $00
    nop                                           ; $7e9f: $00
    nop                                           ; $7ea0: $00
    nop                                           ; $7ea1: $00
    dec d                                         ; $7ea2: $15
    ld h, b                                       ; $7ea3: $60
    nop                                           ; $7ea4: $00
    inc sp                                        ; $7ea5: $33
    dec bc                                        ; $7ea6: $0b
    ld c, [hl]                                    ; $7ea7: $4e
    ld d, a                                       ; $7ea8: $57
    nop                                           ; $7ea9: $00
    nop                                           ; $7eaa: $00
    nop                                           ; $7eab: $00
    nop                                           ; $7eac: $00
    nop                                           ; $7ead: $00
    dec d                                         ; $7eae: $15
    ld h, b                                       ; $7eaf: $60
    nop                                           ; $7eb0: $00
    inc sp                                        ; $7eb1: $33
    dec bc                                        ; $7eb2: $0b
    ld c, a                                       ; $7eb3: $4f
    ld d, a                                       ; $7eb4: $57
    nop                                           ; $7eb5: $00
    nop                                           ; $7eb6: $00
    nop                                           ; $7eb7: $00
    nop                                           ; $7eb8: $00
    nop                                           ; $7eb9: $00
    dec d                                         ; $7eba: $15
    ld h, b                                       ; $7ebb: $60
    nop                                           ; $7ebc: $00
    inc sp                                        ; $7ebd: $33
    dec bc                                        ; $7ebe: $0b
    ld d, b                                       ; $7ebf: $50
    ld d, a                                       ; $7ec0: $57
    nop                                           ; $7ec1: $00
    nop                                           ; $7ec2: $00
    nop                                           ; $7ec3: $00
    nop                                           ; $7ec4: $00
    nop                                           ; $7ec5: $00
    dec d                                         ; $7ec6: $15
    ld h, b                                       ; $7ec7: $60
    nop                                           ; $7ec8: $00
    inc sp                                        ; $7ec9: $33
    dec bc                                        ; $7eca: $0b
    ld d, c                                       ; $7ecb: $51
    ld d, a                                       ; $7ecc: $57
    nop                                           ; $7ecd: $00
    nop                                           ; $7ece: $00
    nop                                           ; $7ecf: $00
    nop                                           ; $7ed0: $00
    nop                                           ; $7ed1: $00
    dec d                                         ; $7ed2: $15
    ld h, b                                       ; $7ed3: $60
    nop                                           ; $7ed4: $00
    inc sp                                        ; $7ed5: $33
    dec bc                                        ; $7ed6: $0b
    ld d, d                                       ; $7ed7: $52
    ld d, a                                       ; $7ed8: $57
    nop                                           ; $7ed9: $00
    nop                                           ; $7eda: $00
    nop                                           ; $7edb: $00
    nop                                           ; $7edc: $00
    nop                                           ; $7edd: $00
    ld d, [hl]                                    ; $7ede: $56
    nop                                           ; $7edf: $00
    nop                                           ; $7ee0: $00
    rla                                           ; $7ee1: $17
    nop                                           ; $7ee2: $00
    nop                                           ; $7ee3: $00
    dec de                                        ; $7ee4: $1b
    nop                                           ; $7ee5: $00
    nop                                           ; $7ee6: $00
    ld e, a                                       ; $7ee7: $5f
    ld bc, $6300                                  ; $7ee8: $01 $00 $63
    cp $0b                                        ; $7eeb: $fe $0b
    ld [$00fe], sp                                ; $7eed: $08 $fe $00
    dec d                                         ; $7ef0: $15
    ld c, l                                       ; $7ef1: $4d
    nop                                           ; $7ef2: $00
    rlca                                          ; $7ef3: $07
    dec c                                         ; $7ef4: $0d
    ld d, [hl]                                    ; $7ef5: $56
    dec d                                         ; $7ef6: $15
    ld c, l                                       ; $7ef7: $4d
    nop                                           ; $7ef8: $00
    rlca                                          ; $7ef9: $07
    dec c                                         ; $7efa: $0d
    ld h, d                                       ; $7efb: $62
    dec d                                         ; $7efc: $15
    ld c, l                                       ; $7efd: $4d
    nop                                           ; $7efe: $00
    rlca                                          ; $7eff: $07
    dec c                                         ; $7f00: $0d
    ld l, [hl]                                    ; $7f01: $6e
    dec d                                         ; $7f02: $15
    ld c, l                                       ; $7f03: $4d
    nop                                           ; $7f04: $00
    rlca                                          ; $7f05: $07
    dec c                                         ; $7f06: $0d
    ld a, d                                       ; $7f07: $7a
    dec d                                         ; $7f08: $15
    ld c, l                                       ; $7f09: $4d
    nop                                           ; $7f0a: $00
    rlca                                          ; $7f0b: $07
    dec c                                         ; $7f0c: $0d
    add [hl]                                      ; $7f0d: $86
    dec d                                         ; $7f0e: $15
    ld c, l                                       ; $7f0f: $4d
    nop                                           ; $7f10: $00
    rlca                                          ; $7f11: $07
    dec c                                         ; $7f12: $0d
    sub d                                         ; $7f13: $92
    dec d                                         ; $7f14: $15
    ld c, l                                       ; $7f15: $4d
    nop                                           ; $7f16: $00
    rlca                                          ; $7f17: $07
    dec c                                         ; $7f18: $0d
    sbc [hl]                                      ; $7f19: $9e
    dec d                                         ; $7f1a: $15
    ld c, l                                       ; $7f1b: $4d
    nop                                           ; $7f1c: $00
    rlca                                          ; $7f1d: $07
    dec c                                         ; $7f1e: $0d
    xor d                                         ; $7f1f: $aa
    dec d                                         ; $7f20: $15
    ld c, l                                       ; $7f21: $4d
    nop                                           ; $7f22: $00
    rlca                                          ; $7f23: $07
    dec c                                         ; $7f24: $0d
    or [hl]                                       ; $7f25: $b6
    dec d                                         ; $7f26: $15
    ld c, l                                       ; $7f27: $4d
    nop                                           ; $7f28: $00
    rlca                                          ; $7f29: $07
    dec c                                         ; $7f2a: $0d
    jp nz, Jump_00d_4d15                          ; $7f2b: $c2 $15 $4d

    nop                                           ; $7f2e: $00
    rlca                                          ; $7f2f: $07
    dec c                                         ; $7f30: $0d
    adc $15                                       ; $7f31: $ce $15
    ld e, a                                       ; $7f33: $5f
    nop                                           ; $7f34: $00
    inc sp                                        ; $7f35: $33
    dec bc                                        ; $7f36: $0b
    ld c, b                                       ; $7f37: $48
    ld d, a                                       ; $7f38: $57
    nop                                           ; $7f39: $00
    nop                                           ; $7f3a: $00
    nop                                           ; $7f3b: $00
    nop                                           ; $7f3c: $00
    nop                                           ; $7f3d: $00
    dec d                                         ; $7f3e: $15
    ld e, a                                       ; $7f3f: $5f
    nop                                           ; $7f40: $00
    inc sp                                        ; $7f41: $33
    dec bc                                        ; $7f42: $0b
    ld c, c                                       ; $7f43: $49
    ld d, a                                       ; $7f44: $57
    nop                                           ; $7f45: $00
    nop                                           ; $7f46: $00
    nop                                           ; $7f47: $00
    nop                                           ; $7f48: $00
    nop                                           ; $7f49: $00
    dec d                                         ; $7f4a: $15
    ld e, a                                       ; $7f4b: $5f
    nop                                           ; $7f4c: $00
    inc sp                                        ; $7f4d: $33
    dec bc                                        ; $7f4e: $0b
    ld c, d                                       ; $7f4f: $4a
    ld d, a                                       ; $7f50: $57
    nop                                           ; $7f51: $00
    nop                                           ; $7f52: $00
    nop                                           ; $7f53: $00
    nop                                           ; $7f54: $00
    nop                                           ; $7f55: $00
    dec d                                         ; $7f56: $15
    ld e, a                                       ; $7f57: $5f
    nop                                           ; $7f58: $00
    inc sp                                        ; $7f59: $33
    dec bc                                        ; $7f5a: $0b
    ld c, e                                       ; $7f5b: $4b
    ld d, a                                       ; $7f5c: $57
    nop                                           ; $7f5d: $00
    nop                                           ; $7f5e: $00
    nop                                           ; $7f5f: $00
    nop                                           ; $7f60: $00
    nop                                           ; $7f61: $00
    dec d                                         ; $7f62: $15
    ld e, a                                       ; $7f63: $5f
    nop                                           ; $7f64: $00
    inc sp                                        ; $7f65: $33
    dec bc                                        ; $7f66: $0b
    ld c, h                                       ; $7f67: $4c
    ld d, a                                       ; $7f68: $57
    nop                                           ; $7f69: $00
    nop                                           ; $7f6a: $00
    nop                                           ; $7f6b: $00
    nop                                           ; $7f6c: $00
    nop                                           ; $7f6d: $00
    dec d                                         ; $7f6e: $15
    ld e, a                                       ; $7f6f: $5f
    nop                                           ; $7f70: $00
    inc sp                                        ; $7f71: $33
    dec bc                                        ; $7f72: $0b
    ld c, l                                       ; $7f73: $4d
    ld d, a                                       ; $7f74: $57
    nop                                           ; $7f75: $00
    nop                                           ; $7f76: $00
    nop                                           ; $7f77: $00
    nop                                           ; $7f78: $00
    nop                                           ; $7f79: $00
    dec d                                         ; $7f7a: $15
    ld e, a                                       ; $7f7b: $5f
    nop                                           ; $7f7c: $00
    inc sp                                        ; $7f7d: $33
    dec bc                                        ; $7f7e: $0b
    ld c, [hl]                                    ; $7f7f: $4e
    ld d, a                                       ; $7f80: $57
    nop                                           ; $7f81: $00
    nop                                           ; $7f82: $00
    nop                                           ; $7f83: $00
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    dec d                                         ; $7f86: $15
    ld e, a                                       ; $7f87: $5f
    nop                                           ; $7f88: $00
    inc sp                                        ; $7f89: $33
    dec bc                                        ; $7f8a: $0b
    ld c, a                                       ; $7f8b: $4f
    ld d, a                                       ; $7f8c: $57
    nop                                           ; $7f8d: $00
    nop                                           ; $7f8e: $00
    nop                                           ; $7f8f: $00
    nop                                           ; $7f90: $00
    nop                                           ; $7f91: $00
    dec d                                         ; $7f92: $15
    ld e, a                                       ; $7f93: $5f
    nop                                           ; $7f94: $00
    inc sp                                        ; $7f95: $33
    dec bc                                        ; $7f96: $0b
    ld d, b                                       ; $7f97: $50
    ld d, a                                       ; $7f98: $57
    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00
    nop                                           ; $7f9b: $00
    nop                                           ; $7f9c: $00
    nop                                           ; $7f9d: $00
    dec d                                         ; $7f9e: $15
    ld e, a                                       ; $7f9f: $5f
    nop                                           ; $7fa0: $00
    inc sp                                        ; $7fa1: $33
    dec bc                                        ; $7fa2: $0b
    ld d, c                                       ; $7fa3: $51
    ld d, a                                       ; $7fa4: $57
    nop                                           ; $7fa5: $00
    nop                                           ; $7fa6: $00
    nop                                           ; $7fa7: $00
    nop                                           ; $7fa8: $00
    nop                                           ; $7fa9: $00
    dec d                                         ; $7faa: $15
    ld e, a                                       ; $7fab: $5f
    nop                                           ; $7fac: $00
    inc sp                                        ; $7fad: $33
    dec bc                                        ; $7fae: $0b
    ld d, d                                       ; $7faf: $52
    ld d, a                                       ; $7fb0: $57
    nop                                           ; $7fb1: $00
    nop                                           ; $7fb2: $00
    nop                                           ; $7fb3: $00
    nop                                           ; $7fb4: $00
    nop                                           ; $7fb5: $00
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
