; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ld c, $06                                     ; $4000: $0e $06
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    ld d, a                                       ; $4005: $57
    nop                                           ; $4006: $00
    adc d                                         ; $4007: $8a
    ld [bc], a                                    ; $4008: $02
    ld c, a                                       ; $4009: $4f
    inc b                                         ; $400a: $04
    inc d                                         ; $400b: $14
    inc b                                         ; $400c: $04
    ei                                            ; $400d: $fb
    add hl, bc                                    ; $400e: $09
    nop                                           ; $400f: $00
    rlca                                          ; $4010: $07
    dec b                                         ; $4011: $05
    ld b, $00                                     ; $4012: $06 $00
    dec d                                         ; $4014: $15
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    inc sp                                        ; $4017: $33
    ld bc, $1578                                  ; $4018: $01 $78 $15
    ld d, $00                                     ; $401b: $16 $00
    inc sp                                        ; $401d: $33
    ld bc, $0079                                  ; $401e: $01 $79 $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    add hl, bc                                    ; $4023: $09
    nop                                           ; $4024: $00
    ld d, d                                       ; $4025: $52
    dec b                                         ; $4026: $05
    ld b, $00                                     ; $4027: $06 $00
    dec d                                         ; $4029: $15
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    inc sp                                        ; $402c: $33
    ld bc, $1595                                  ; $402d: $01 $95 $15
    ld d, $00                                     ; $4030: $16 $00
    inc sp                                        ; $4032: $33
    ld bc, $00ac                                  ; $4033: $01 $ac $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    add hl, bc                                    ; $4038: $09
    nop                                           ; $4039: $00
    db $10                                        ; $403a: $10
    dec b                                         ; $403b: $05
    ld b, $00                                     ; $403c: $06 $00
    dec d                                         ; $403e: $15
    nop                                           ; $403f: $00
    nop                                           ; $4040: $00
    inc sp                                        ; $4041: $33
    ld [bc], a                                    ; $4042: $02
    ld b, l                                       ; $4043: $45
    dec d                                         ; $4044: $15
    ld d, $00                                     ; $4045: $16 $00
    inc sp                                        ; $4047: $33
    ld [bc], a                                    ; $4048: $02
    ld b, [hl]                                    ; $4049: $46
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    nop                                           ; $404c: $00
    add hl, bc                                    ; $404d: $09
    nop                                           ; $404e: $00
    ld de, $0605                                  ; $404f: $11 $05 $06
    nop                                           ; $4052: $00
    dec d                                         ; $4053: $15
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    inc sp                                        ; $4056: $33
    ld [bc], a                                    ; $4057: $02
    ld b, l                                       ; $4058: $45
    dec d                                         ; $4059: $15
    ld d, $00                                     ; $405a: $16 $00
    inc sp                                        ; $405c: $33
    ld [bc], a                                    ; $405d: $02
    ld b, [hl]                                    ; $405e: $46
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    add hl, bc                                    ; $4065: $09
    nop                                           ; $4066: $00
    rlca                                          ; $4067: $07
    dec b                                         ; $4068: $05
    ld b, $00                                     ; $4069: $06 $00
    dec d                                         ; $406b: $15
    nop                                           ; $406c: $00
    nop                                           ; $406d: $00
    inc sp                                        ; $406e: $33
    ld bc, $1578                                  ; $406f: $01 $78 $15
    dec de                                        ; $4072: $1b
    nop                                           ; $4073: $00
    inc sp                                        ; $4074: $33
    ld bc, $007a                                  ; $4075: $01 $7a $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    add hl, bc                                    ; $407a: $09
    nop                                           ; $407b: $00
    ld d, d                                       ; $407c: $52
    dec b                                         ; $407d: $05
    ld b, $00                                     ; $407e: $06 $00
    dec d                                         ; $4080: $15
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    inc sp                                        ; $4083: $33
    ld bc, $1595                                  ; $4084: $01 $95 $15
    dec de                                        ; $4087: $1b
    nop                                           ; $4088: $00
    inc sp                                        ; $4089: $33
    ld bc, $00ad                                  ; $408a: $01 $ad $00
    nop                                           ; $408d: $00
    nop                                           ; $408e: $00
    dec d                                         ; $408f: $15
    dec de                                        ; $4090: $1b
    nop                                           ; $4091: $00
    inc sp                                        ; $4092: $33
    nop                                           ; $4093: $00
    dec hl                                        ; $4094: $2b
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    ld e, a                                       ; $4098: $5f
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    add hl, bc                                    ; $409b: $09
    nop                                           ; $409c: $00
    ld b, e                                       ; $409d: $43
    dec b                                         ; $409e: $05
    ld [bc], a                                    ; $409f: $02
    nop                                           ; $40a0: $00
    rrca                                          ; $40a1: $0f
    add hl, bc                                    ; $40a2: $09
    ld bc, $0009                                  ; $40a3: $01 $09 $00
    ld h, $05                                     ; $40a6: $26 $05
    dec de                                        ; $40a8: $1b
    nop                                           ; $40a9: $00
    inc de                                        ; $40aa: $13
    rst $38                                       ; $40ab: $ff
    db $ec                                        ; $40ac: $ec
    inc d                                         ; $40ad: $14
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    dec d                                         ; $40b0: $15
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    ld d, $37                                     ; $40b3: $16 $37
    ld bc, $0052                                  ; $40b5: $01 $52 $00
    nop                                           ; $40b8: $00
    dec de                                        ; $40b9: $1b
    inc b                                         ; $40ba: $04
    nop                                           ; $40bb: $00
    inc de                                        ; $40bc: $13
    nop                                           ; $40bd: $00
    inc d                                         ; $40be: $14
    inc d                                         ; $40bf: $14
    nop                                           ; $40c0: $00
    nop                                           ; $40c1: $00
    dec d                                         ; $40c2: $15
    nop                                           ; $40c3: $00
    nop                                           ; $40c4: $00
    ld d, $38                                     ; $40c5: $16 $38
    ld bc, $0052                                  ; $40c7: $01 $52 $00
    nop                                           ; $40ca: $00
    dec de                                        ; $40cb: $1b
    inc b                                         ; $40cc: $04
    nop                                           ; $40cd: $00
    inc de                                        ; $40ce: $13
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    inc d                                         ; $40d1: $14
    nop                                           ; $40d2: $00
    inc d                                         ; $40d3: $14
    dec d                                         ; $40d4: $15
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    ld d, $39                                     ; $40d7: $16 $39
    ld bc, $0052                                  ; $40d9: $01 $52 $00
    nop                                           ; $40dc: $00
    dec de                                        ; $40dd: $1b
    inc b                                         ; $40de: $04
    nop                                           ; $40df: $00
    ld e, a                                       ; $40e0: $5f
    ld bc, $1700                                  ; $40e1: $01 $00 $17
    add hl, sp                                    ; $40e4: $39
    nop                                           ; $40e5: $00
    ld [hl+], a                                   ; $40e6: $22
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    rla                                           ; $40e9: $17
    scf                                           ; $40ea: $37
    nop                                           ; $40eb: $00
    ld [hl+], a                                   ; $40ec: $22
    add hl, sp                                    ; $40ed: $39
    nop                                           ; $40ee: $00
    rla                                           ; $40ef: $17
    jr c, jr_00e_40f2                             ; $40f0: $38 $00

jr_00e_40f2:
    ld [hl+], a                                   ; $40f2: $22
    scf                                           ; $40f3: $37
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    nop                                           ; $40f6: $00
    nop                                           ; $40f7: $00
    add hl, bc                                    ; $40f8: $09
    nop                                           ; $40f9: $00
    daa                                           ; $40fa: $27
    dec b                                         ; $40fb: $05
    dec de                                        ; $40fc: $1b
    nop                                           ; $40fd: $00
    inc de                                        ; $40fe: $13
    rst $38                                       ; $40ff: $ff
    db $ec                                        ; $4100: $ec
    inc d                                         ; $4101: $14
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    dec d                                         ; $4104: $15
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00
    ld d, $37                                     ; $4107: $16 $37
    ld bc, $0052                                  ; $4109: $01 $52 $00
    nop                                           ; $410c: $00
    dec de                                        ; $410d: $1b
    inc b                                         ; $410e: $04
    nop                                           ; $410f: $00
    inc de                                        ; $4110: $13
    nop                                           ; $4111: $00
    inc d                                         ; $4112: $14
    inc d                                         ; $4113: $14
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    dec d                                         ; $4116: $15
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    ld d, $38                                     ; $4119: $16 $38
    ld bc, $0052                                  ; $411b: $01 $52 $00
    nop                                           ; $411e: $00
    dec de                                        ; $411f: $1b
    inc b                                         ; $4120: $04
    nop                                           ; $4121: $00
    inc de                                        ; $4122: $13
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    inc d                                         ; $4125: $14
    nop                                           ; $4126: $00
    inc d                                         ; $4127: $14
    dec d                                         ; $4128: $15
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    ld d, $39                                     ; $412b: $16 $39
    ld bc, $0052                                  ; $412d: $01 $52 $00
    nop                                           ; $4130: $00
    dec de                                        ; $4131: $1b
    inc b                                         ; $4132: $04
    nop                                           ; $4133: $00
    ld e, a                                       ; $4134: $5f
    ld bc, $1700                                  ; $4135: $01 $00 $17
    add hl, sp                                    ; $4138: $39
    nop                                           ; $4139: $00
    ld [hl+], a                                   ; $413a: $22
    nop                                           ; $413b: $00
    nop                                           ; $413c: $00
    rla                                           ; $413d: $17
    scf                                           ; $413e: $37
    nop                                           ; $413f: $00
    ld [hl+], a                                   ; $4140: $22
    add hl, sp                                    ; $4141: $39
    nop                                           ; $4142: $00
    rla                                           ; $4143: $17
    jr c, jr_00e_4146                             ; $4144: $38 $00

jr_00e_4146:
    ld [hl+], a                                   ; $4146: $22
    scf                                           ; $4147: $37
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    nop                                           ; $414a: $00
    nop                                           ; $414b: $00
    add hl, bc                                    ; $414c: $09
    nop                                           ; $414d: $00
    ld c, b                                       ; $414e: $48
    dec b                                         ; $414f: $05
    inc de                                        ; $4150: $13
    nop                                           ; $4151: $00
    inc de                                        ; $4152: $13
    rst $38                                       ; $4153: $ff
    db $ec                                        ; $4154: $ec
    inc d                                         ; $4155: $14
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    dec d                                         ; $4158: $15
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00
    ld d, $37                                     ; $415b: $16 $37
    ld bc, $0052                                  ; $415d: $01 $52 $00
    nop                                           ; $4160: $00
    dec de                                        ; $4161: $1b
    inc b                                         ; $4162: $04
    nop                                           ; $4163: $00
    inc de                                        ; $4164: $13
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    inc d                                         ; $4167: $14
    nop                                           ; $4168: $00
    inc d                                         ; $4169: $14
    dec d                                         ; $416a: $15
    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    ld d, $39                                     ; $416d: $16 $39
    ld bc, $0052                                  ; $416f: $01 $52 $00
    nop                                           ; $4172: $00
    dec de                                        ; $4173: $1b
    inc b                                         ; $4174: $04
    nop                                           ; $4175: $00
    ld e, a                                       ; $4176: $5f
    ld bc, $1700                                  ; $4177: $01 $00 $17
    add hl, sp                                    ; $417a: $39
    nop                                           ; $417b: $00
    ld [hl+], a                                   ; $417c: $22
    nop                                           ; $417d: $00
    nop                                           ; $417e: $00
    rla                                           ; $417f: $17
    scf                                           ; $4180: $37
    nop                                           ; $4181: $00
    ld [hl+], a                                   ; $4182: $22
    add hl, sp                                    ; $4183: $39
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    add hl, bc                                    ; $4188: $09
    nop                                           ; $4189: $00
    ld e, b                                       ; $418a: $58
    dec b                                         ; $418b: $05
    inc bc                                        ; $418c: $03
    nop                                           ; $418d: $00
    ld e, a                                       ; $418e: $5f
    ld bc, $0000                                  ; $418f: $01 $00 $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    add hl, bc                                    ; $4194: $09
    nop                                           ; $4195: $00
    scf                                           ; $4196: $37
    dec b                                         ; $4197: $05
    inc bc                                        ; $4198: $03
    nop                                           ; $4199: $00
    ld e, a                                       ; $419a: $5f
    ld bc, $0000                                  ; $419b: $01 $00 $00
    nop                                           ; $419e: $00
    nop                                           ; $419f: $00
    add hl, bc                                    ; $41a0: $09
    nop                                           ; $41a1: $00
    ld e, d                                       ; $41a2: $5a
    dec b                                         ; $41a3: $05
    inc bc                                        ; $41a4: $03
    nop                                           ; $41a5: $00
    ld e, a                                       ; $41a6: $5f
    ld bc, $0000                                  ; $41a7: $01 $00 $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    add hl, bc                                    ; $41ac: $09
    nop                                           ; $41ad: $00
    ld b, c                                       ; $41ae: $41
    dec b                                         ; $41af: $05
    inc bc                                        ; $41b0: $03
    nop                                           ; $41b1: $00
    ld e, a                                       ; $41b2: $5f
    ld bc, $0000                                  ; $41b3: $01 $00 $00
    nop                                           ; $41b6: $00
    nop                                           ; $41b7: $00
    add hl, bc                                    ; $41b8: $09
    nop                                           ; $41b9: $00
    add hl, bc                                    ; $41ba: $09
    dec b                                         ; $41bb: $05
    inc bc                                        ; $41bc: $03
    nop                                           ; $41bd: $00
    ld e, a                                       ; $41be: $5f
    ld bc, $7a00                                  ; $41bf: $01 $00 $7a
    nop                                           ; $41c2: $00
    nop                                           ; $41c3: $00
    ld e, a                                       ; $41c4: $5f
    nop                                           ; $41c5: $00
    nop                                           ; $41c6: $00
    inc de                                        ; $41c7: $13
    ld bc, $1475                                  ; $41c8: $01 $75 $14
    nop                                           ; $41cb: $00
    dec sp                                        ; $41cc: $3b
    dec d                                         ; $41cd: $15
    inc bc                                        ; $41ce: $03
    nop                                           ; $41cf: $00
    ld d, $44                                     ; $41d0: $16 $44
    nop                                           ; $41d2: $00
    ld d, d                                       ; $41d3: $52
    nop                                           ; $41d4: $00
    nop                                           ; $41d5: $00
    dec de                                        ; $41d6: $1b
    ld b, $00                                     ; $41d7: $06 $00
    inc de                                        ; $41d9: $13
    ld bc, $14bd                                  ; $41da: $01 $bd $14
    ld bc, $1586                                  ; $41dd: $01 $86 $15
    inc b                                         ; $41e0: $04
    nop                                           ; $41e1: $00
    ld d, $45                                     ; $41e2: $16 $45
    nop                                           ; $41e4: $00
    ld d, d                                       ; $41e5: $52
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    ld e, a                                       ; $41e8: $5f
    ld bc, $0900                                  ; $41e9: $01 $00 $09
    nop                                           ; $41ec: $00
    db $10                                        ; $41ed: $10
    dec b                                         ; $41ee: $05
    ld [$1300], sp                                ; $41ef: $08 $00 $13
    ld bc, $142c                                  ; $41f2: $01 $2c $14
    nop                                           ; $41f5: $00
    ld b, c                                       ; $41f6: $41
    dec d                                         ; $41f7: $15
    nop                                           ; $41f8: $00
    nop                                           ; $41f9: $00
    ld d, $36                                     ; $41fa: $16 $36
    nop                                           ; $41fc: $00
    ld d, d                                       ; $41fd: $52
    nop                                           ; $41fe: $00
    nop                                           ; $41ff: $00
    ld e, a                                       ; $4200: $5f
    ld bc, $0000                                  ; $4201: $01 $00 $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    add hl, bc                                    ; $4206: $09
    nop                                           ; $4207: $00
    ld de, $0805                                  ; $4208: $11 $05 $08
    nop                                           ; $420b: $00
    inc de                                        ; $420c: $13
    ld bc, $142c                                  ; $420d: $01 $2c $14
    nop                                           ; $4210: $00
    ld b, c                                       ; $4211: $41
    dec d                                         ; $4212: $15
    nop                                           ; $4213: $00
    nop                                           ; $4214: $00
    ld d, $36                                     ; $4215: $16 $36
    nop                                           ; $4217: $00
    ld d, d                                       ; $4218: $52
    nop                                           ; $4219: $00
    nop                                           ; $421a: $00
    ld e, a                                       ; $421b: $5f
    ld bc, $0000                                  ; $421c: $01 $00 $00
    nop                                           ; $421f: $00
    nop                                           ; $4220: $00
    add hl, bc                                    ; $4221: $09
    nop                                           ; $4222: $00
    rlca                                          ; $4223: $07
    dec b                                         ; $4224: $05
    ld [$1300], sp                                ; $4225: $08 $00 $13
    ld bc, $142c                                  ; $4228: $01 $2c $14
    nop                                           ; $422b: $00
    ld b, c                                       ; $422c: $41
    dec d                                         ; $422d: $15
    nop                                           ; $422e: $00
    nop                                           ; $422f: $00
    ld d, $36                                     ; $4230: $16 $36
    nop                                           ; $4232: $00
    ld d, d                                       ; $4233: $52
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    ld e, a                                       ; $4236: $5f
    ld bc, $0000                                  ; $4237: $01 $00 $00
    nop                                           ; $423a: $00
    nop                                           ; $423b: $00
    add hl, bc                                    ; $423c: $09
    nop                                           ; $423d: $00
    ld d, d                                       ; $423e: $52
    dec b                                         ; $423f: $05
    ld [$1300], sp                                ; $4240: $08 $00 $13
    ld bc, $142c                                  ; $4243: $01 $2c $14
    nop                                           ; $4246: $00
    ld b, c                                       ; $4247: $41
    dec d                                         ; $4248: $15
    nop                                           ; $4249: $00
    nop                                           ; $424a: $00
    ld d, $36                                     ; $424b: $16 $36
    nop                                           ; $424d: $00
    ld d, d                                       ; $424e: $52
    nop                                           ; $424f: $00
    nop                                           ; $4250: $00
    ld e, a                                       ; $4251: $5f
    ld bc, $0000                                  ; $4252: $01 $00 $00
    nop                                           ; $4255: $00
    nop                                           ; $4256: $00
    ld e, a                                       ; $4257: $5f
    ld bc, $0000                                  ; $4258: $01 $00 $00
    nop                                           ; $425b: $00
    nop                                           ; $425c: $00
    ld e, a                                       ; $425d: $5f
    nop                                           ; $425e: $00
    nop                                           ; $425f: $00
    add hl, bc                                    ; $4260: $09
    nop                                           ; $4261: $00
    ld d, e                                       ; $4262: $53
    dec b                                         ; $4263: $05
    dec bc                                        ; $4264: $0b
    nop                                           ; $4265: $00
    ld d, [hl]                                    ; $4266: $56
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    rla                                           ; $4269: $17
    nop                                           ; $426a: $00
    nop                                           ; $426b: $00
    inc e                                         ; $426c: $1c
    ld b, h                                       ; $426d: $44
    inc bc                                        ; $426e: $03
    rla                                           ; $426f: $17
    ld b, h                                       ; $4270: $44
    nop                                           ; $4271: $00
    inc e                                         ; $4272: $1c
    nop                                           ; $4273: $00
    nop                                           ; $4274: $00
    ld e, a                                       ; $4275: $5f
    ld bc, $1500                                  ; $4276: $01 $00 $15
    ld d, d                                       ; $4279: $52
    nop                                           ; $427a: $00
    inc sp                                        ; $427b: $33
    ld [bc], a                                    ; $427c: $02
    dec d                                         ; $427d: $15
    ld d, a                                       ; $427e: $57
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    add hl, bc                                    ; $4284: $09
    nop                                           ; $4285: $00
    ld b, $05                                     ; $4286: $06 $05
    dec bc                                        ; $4288: $0b
    nop                                           ; $4289: $00
    ld d, [hl]                                    ; $428a: $56
    nop                                           ; $428b: $00
    nop                                           ; $428c: $00
    rla                                           ; $428d: $17
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    inc e                                         ; $4290: $1c
    ld b, h                                       ; $4291: $44
    inc bc                                        ; $4292: $03
    rla                                           ; $4293: $17
    ld b, h                                       ; $4294: $44
    nop                                           ; $4295: $00
    inc e                                         ; $4296: $1c
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    ld e, a                                       ; $4299: $5f
    ld bc, $1500                                  ; $429a: $01 $00 $15
    ld d, d                                       ; $429d: $52
    nop                                           ; $429e: $00
    inc sp                                        ; $429f: $33
    ld bc, $5750                                  ; $42a0: $01 $50 $57
    nop                                           ; $42a3: $00
    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    add hl, bc                                    ; $42a8: $09
    nop                                           ; $42a9: $00
    rlca                                          ; $42aa: $07
    dec b                                         ; $42ab: $05
    dec bc                                        ; $42ac: $0b
    nop                                           ; $42ad: $00
    ld d, [hl]                                    ; $42ae: $56
    nop                                           ; $42af: $00
    nop                                           ; $42b0: $00
    rla                                           ; $42b1: $17
    nop                                           ; $42b2: $00
    nop                                           ; $42b3: $00
    inc e                                         ; $42b4: $1c
    ld b, h                                       ; $42b5: $44
    inc bc                                        ; $42b6: $03
    rla                                           ; $42b7: $17
    ld b, h                                       ; $42b8: $44
    nop                                           ; $42b9: $00
    inc e                                         ; $42ba: $1c
    nop                                           ; $42bb: $00
    nop                                           ; $42bc: $00
    ld e, a                                       ; $42bd: $5f
    ld bc, $1500                                  ; $42be: $01 $00 $15
    ld d, d                                       ; $42c1: $52
    nop                                           ; $42c2: $00
    inc sp                                        ; $42c3: $33
    ld bc, $5750                                  ; $42c4: $01 $50 $57
    nop                                           ; $42c7: $00
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    nop                                           ; $42cb: $00
    add hl, bc                                    ; $42cc: $09
    nop                                           ; $42cd: $00
    ld d, d                                       ; $42ce: $52
    dec b                                         ; $42cf: $05
    dec c                                         ; $42d0: $0d
    nop                                           ; $42d1: $00
    ld d, [hl]                                    ; $42d2: $56
    nop                                           ; $42d3: $00
    nop                                           ; $42d4: $00
    rla                                           ; $42d5: $17
    nop                                           ; $42d6: $00
    nop                                           ; $42d7: $00
    inc e                                         ; $42d8: $1c
    ld b, h                                       ; $42d9: $44
    inc bc                                        ; $42da: $03
    rla                                           ; $42db: $17
    ld b, h                                       ; $42dc: $44
    nop                                           ; $42dd: $00
    inc e                                         ; $42de: $1c
    nop                                           ; $42df: $00
    nop                                           ; $42e0: $00
    ld e, a                                       ; $42e1: $5f
    ld bc, $1500                                  ; $42e2: $01 $00 $15
    nop                                           ; $42e5: $00
    nop                                           ; $42e6: $00
    inc sp                                        ; $42e7: $33
    ld bc, $1595                                  ; $42e8: $01 $95 $15
    ld d, d                                       ; $42eb: $52
    nop                                           ; $42ec: $00
    inc sp                                        ; $42ed: $33
    ld a, [bc]                                    ; $42ee: $0a
    ld a, [de]                                    ; $42ef: $1a
    ld d, a                                       ; $42f0: $57
    nop                                           ; $42f1: $00
    nop                                           ; $42f2: $00
    nop                                           ; $42f3: $00
    nop                                           ; $42f4: $00
    nop                                           ; $42f5: $00
    add hl, bc                                    ; $42f6: $09
    nop                                           ; $42f7: $00
    ld [$0b05], sp                                ; $42f8: $08 $05 $0b
    nop                                           ; $42fb: $00
    ld d, [hl]                                    ; $42fc: $56
    nop                                           ; $42fd: $00
    nop                                           ; $42fe: $00
    rla                                           ; $42ff: $17
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    inc e                                         ; $4302: $1c
    ld b, h                                       ; $4303: $44
    inc bc                                        ; $4304: $03
    rla                                           ; $4305: $17
    ld b, h                                       ; $4306: $44
    nop                                           ; $4307: $00
    inc e                                         ; $4308: $1c
    nop                                           ; $4309: $00
    nop                                           ; $430a: $00
    ld e, a                                       ; $430b: $5f
    ld bc, $1500                                  ; $430c: $01 $00 $15
    ld d, d                                       ; $430f: $52
    nop                                           ; $4310: $00
    inc sp                                        ; $4311: $33
    ld bc, $5750                                  ; $4312: $01 $50 $57
    nop                                           ; $4315: $00
    nop                                           ; $4316: $00
    nop                                           ; $4317: $00
    nop                                           ; $4318: $00
    nop                                           ; $4319: $00
    add hl, bc                                    ; $431a: $09
    nop                                           ; $431b: $00
    add hl, bc                                    ; $431c: $09
    dec b                                         ; $431d: $05
    dec bc                                        ; $431e: $0b
    nop                                           ; $431f: $00
    ld d, [hl]                                    ; $4320: $56
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    rla                                           ; $4323: $17
    nop                                           ; $4324: $00
    nop                                           ; $4325: $00
    inc e                                         ; $4326: $1c
    ld b, h                                       ; $4327: $44
    inc bc                                        ; $4328: $03
    rla                                           ; $4329: $17
    ld b, h                                       ; $432a: $44
    nop                                           ; $432b: $00
    inc e                                         ; $432c: $1c
    nop                                           ; $432d: $00
    nop                                           ; $432e: $00
    ld e, a                                       ; $432f: $5f
    ld bc, $1500                                  ; $4330: $01 $00 $15
    ld d, d                                       ; $4333: $52
    nop                                           ; $4334: $00
    inc sp                                        ; $4335: $33
    ld bc, $5750                                  ; $4336: $01 $50 $57
    nop                                           ; $4339: $00
    nop                                           ; $433a: $00
    nop                                           ; $433b: $00
    nop                                           ; $433c: $00
    nop                                           ; $433d: $00
    add hl, bc                                    ; $433e: $09
    nop                                           ; $433f: $00
    ld d, [hl]                                    ; $4340: $56
    dec b                                         ; $4341: $05
    dec bc                                        ; $4342: $0b
    nop                                           ; $4343: $00
    ld d, [hl]                                    ; $4344: $56
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    rla                                           ; $4347: $17
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    inc e                                         ; $434a: $1c
    ld b, h                                       ; $434b: $44
    inc bc                                        ; $434c: $03
    rla                                           ; $434d: $17
    ld b, h                                       ; $434e: $44
    nop                                           ; $434f: $00
    inc e                                         ; $4350: $1c
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    ld e, a                                       ; $4353: $5f
    ld bc, $1500                                  ; $4354: $01 $00 $15
    ld d, d                                       ; $4357: $52
    nop                                           ; $4358: $00
    inc sp                                        ; $4359: $33
    ld bc, $5750                                  ; $435a: $01 $50 $57
    nop                                           ; $435d: $00
    nop                                           ; $435e: $00
    nop                                           ; $435f: $00
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    add hl, bc                                    ; $4362: $09
    nop                                           ; $4363: $00
    ccf                                           ; $4364: $3f
    dec b                                         ; $4365: $05
    dec bc                                        ; $4366: $0b
    nop                                           ; $4367: $00
    ld d, [hl]                                    ; $4368: $56
    nop                                           ; $4369: $00
    nop                                           ; $436a: $00
    rla                                           ; $436b: $17
    nop                                           ; $436c: $00
    nop                                           ; $436d: $00
    inc e                                         ; $436e: $1c
    ld b, h                                       ; $436f: $44
    inc bc                                        ; $4370: $03
    rla                                           ; $4371: $17
    ld b, h                                       ; $4372: $44
    nop                                           ; $4373: $00
    inc e                                         ; $4374: $1c
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    ld e, a                                       ; $4377: $5f
    ld bc, $1500                                  ; $4378: $01 $00 $15
    ld d, d                                       ; $437b: $52
    nop                                           ; $437c: $00
    inc sp                                        ; $437d: $33
    add hl, bc                                    ; $437e: $09
    db $fd                                        ; $437f: $fd
    ld d, a                                       ; $4380: $57
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    add hl, bc                                    ; $4386: $09
    nop                                           ; $4387: $00
    ld e, h                                       ; $4388: $5c
    dec b                                         ; $4389: $05
    dec c                                         ; $438a: $0d
    nop                                           ; $438b: $00
    ld d, [hl]                                    ; $438c: $56
    nop                                           ; $438d: $00
    nop                                           ; $438e: $00
    rla                                           ; $438f: $17
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    inc e                                         ; $4392: $1c
    ld b, h                                       ; $4393: $44
    inc bc                                        ; $4394: $03
    rla                                           ; $4395: $17
    ld b, h                                       ; $4396: $44
    nop                                           ; $4397: $00
    inc e                                         ; $4398: $1c
    nop                                           ; $4399: $00
    nop                                           ; $439a: $00
    ld e, a                                       ; $439b: $5f
    ld bc, $1500                                  ; $439c: $01 $00 $15
    nop                                           ; $439f: $00
    nop                                           ; $43a0: $00
    inc sp                                        ; $43a1: $33
    inc b                                         ; $43a2: $04
    call nc, Call_00e_5215                        ; $43a3: $d4 $15 $52
    nop                                           ; $43a6: $00
    inc sp                                        ; $43a7: $33
    inc b                                         ; $43a8: $04
    push hl                                       ; $43a9: $e5
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
    dec bc                                        ; $43b4: $0b
    nop                                           ; $43b5: $00
    ld d, [hl]                                    ; $43b6: $56
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    rla                                           ; $43b9: $17
    nop                                           ; $43ba: $00
    nop                                           ; $43bb: $00
    inc e                                         ; $43bc: $1c
    ld b, h                                       ; $43bd: $44
    inc bc                                        ; $43be: $03
    rla                                           ; $43bf: $17
    ld b, h                                       ; $43c0: $44
    nop                                           ; $43c1: $00
    inc e                                         ; $43c2: $1c
    nop                                           ; $43c3: $00
    nop                                           ; $43c4: $00
    ld e, a                                       ; $43c5: $5f
    ld bc, $1500                                  ; $43c6: $01 $00 $15
    ld d, d                                       ; $43c9: $52
    nop                                           ; $43ca: $00
    inc sp                                        ; $43cb: $33
    dec bc                                        ; $43cc: $0b
    ld [hl], b                                    ; $43cd: $70
    ld d, a                                       ; $43ce: $57
    nop                                           ; $43cf: $00
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    add hl, bc                                    ; $43d4: $09
    nop                                           ; $43d5: $00
    ld d, h                                       ; $43d6: $54
    dec b                                         ; $43d7: $05
    dec bc                                        ; $43d8: $0b
    nop                                           ; $43d9: $00
    ld d, [hl]                                    ; $43da: $56
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    rla                                           ; $43dd: $17
    nop                                           ; $43de: $00
    nop                                           ; $43df: $00
    inc e                                         ; $43e0: $1c
    ld b, h                                       ; $43e1: $44
    inc bc                                        ; $43e2: $03
    rla                                           ; $43e3: $17
    ld b, h                                       ; $43e4: $44
    nop                                           ; $43e5: $00
    inc e                                         ; $43e6: $1c
    nop                                           ; $43e7: $00
    nop                                           ; $43e8: $00
    ld e, a                                       ; $43e9: $5f
    ld bc, $1500                                  ; $43ea: $01 $00 $15
    ld d, d                                       ; $43ed: $52
    nop                                           ; $43ee: $00
    inc sp                                        ; $43ef: $33
    ld [bc], a                                    ; $43f0: $02
    dec d                                         ; $43f1: $15
    ld d, a                                       ; $43f2: $57
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    nop                                           ; $43f6: $00
    nop                                           ; $43f7: $00
    add hl, bc                                    ; $43f8: $09
    nop                                           ; $43f9: $00
    ld e, e                                       ; $43fa: $5b
    dec b                                         ; $43fb: $05
    dec bc                                        ; $43fc: $0b
    nop                                           ; $43fd: $00
    ld d, [hl]                                    ; $43fe: $56
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    rla                                           ; $4401: $17
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    inc e                                         ; $4404: $1c
    ld b, h                                       ; $4405: $44
    inc bc                                        ; $4406: $03
    rla                                           ; $4407: $17
    ld b, h                                       ; $4408: $44
    nop                                           ; $4409: $00
    inc e                                         ; $440a: $1c
    nop                                           ; $440b: $00
    nop                                           ; $440c: $00
    ld e, a                                       ; $440d: $5f
    ld bc, $1500                                  ; $440e: $01 $00 $15
    ld d, d                                       ; $4411: $52
    nop                                           ; $4412: $00
    inc sp                                        ; $4413: $33
    dec bc                                        ; $4414: $0b
    ld h, d                                       ; $4415: $62
    ld d, a                                       ; $4416: $57
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    ld e, a                                       ; $441c: $5f
    ld bc, $0000                                  ; $441d: $01 $00 $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    ld e, a                                       ; $4422: $5f
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    add hl, bc                                    ; $4425: $09
    nop                                           ; $4426: $00
    ld d, e                                       ; $4427: $53
    dec b                                         ; $4428: $05
    dec b                                         ; $4429: $05
    nop                                           ; $442a: $00
    ld e, a                                       ; $442b: $5f
    ld bc, $1500                                  ; $442c: $01 $00 $15
    ld d, e                                       ; $442f: $53
    nop                                           ; $4430: $00
    inc sp                                        ; $4431: $33
    ld [bc], a                                    ; $4432: $02
    ld d, $00                                     ; $4433: $16 $00
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    add hl, bc                                    ; $4437: $09
    nop                                           ; $4438: $00
    ld b, $05                                     ; $4439: $06 $05
    dec b                                         ; $443b: $05
    nop                                           ; $443c: $00
    ld e, a                                       ; $443d: $5f
    ld bc, $1500                                  ; $443e: $01 $00 $15
    ld d, e                                       ; $4441: $53
    nop                                           ; $4442: $00
    inc sp                                        ; $4443: $33
    ld bc, $004e                                  ; $4444: $01 $4e $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    add hl, bc                                    ; $4449: $09
    nop                                           ; $444a: $00
    rlca                                          ; $444b: $07
    dec b                                         ; $444c: $05
    dec b                                         ; $444d: $05
    nop                                           ; $444e: $00
    ld e, a                                       ; $444f: $5f
    ld bc, $1500                                  ; $4450: $01 $00 $15
    ld d, e                                       ; $4453: $53
    nop                                           ; $4454: $00
    inc sp                                        ; $4455: $33
    ld bc, $004e                                  ; $4456: $01 $4e $00
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    add hl, bc                                    ; $445b: $09
    nop                                           ; $445c: $00
    ld d, d                                       ; $445d: $52
    dec b                                         ; $445e: $05
    dec b                                         ; $445f: $05
    nop                                           ; $4460: $00
    ld e, a                                       ; $4461: $5f
    ld bc, $1500                                  ; $4462: $01 $00 $15
    ld d, e                                       ; $4465: $53
    nop                                           ; $4466: $00
    inc sp                                        ; $4467: $33
    ld bc, $004e                                  ; $4468: $01 $4e $00
    nop                                           ; $446b: $00
    nop                                           ; $446c: $00
    add hl, bc                                    ; $446d: $09
    nop                                           ; $446e: $00
    ld [$0505], sp                                ; $446f: $08 $05 $05
    nop                                           ; $4472: $00
    ld e, a                                       ; $4473: $5f
    ld bc, $1500                                  ; $4474: $01 $00 $15
    ld d, e                                       ; $4477: $53
    nop                                           ; $4478: $00
    inc sp                                        ; $4479: $33
    ld [bc], a                                    ; $447a: $02
    ld d, $00                                     ; $447b: $16 $00
    nop                                           ; $447d: $00
    nop                                           ; $447e: $00
    add hl, bc                                    ; $447f: $09
    nop                                           ; $4480: $00
    add hl, bc                                    ; $4481: $09
    dec b                                         ; $4482: $05
    dec b                                         ; $4483: $05
    nop                                           ; $4484: $00
    ld e, a                                       ; $4485: $5f
    ld bc, $1500                                  ; $4486: $01 $00 $15
    ld d, e                                       ; $4489: $53
    nop                                           ; $448a: $00
    inc sp                                        ; $448b: $33
    ld [bc], a                                    ; $448c: $02
    ld d, $00                                     ; $448d: $16 $00
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    add hl, bc                                    ; $4491: $09
    nop                                           ; $4492: $00
    ld d, [hl]                                    ; $4493: $56
    dec b                                         ; $4494: $05
    dec b                                         ; $4495: $05
    nop                                           ; $4496: $00
    ld e, a                                       ; $4497: $5f
    ld bc, $1500                                  ; $4498: $01 $00 $15
    ld d, e                                       ; $449b: $53
    nop                                           ; $449c: $00
    inc sp                                        ; $449d: $33
    ld [bc], a                                    ; $449e: $02
    ld d, $00                                     ; $449f: $16 $00
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    add hl, bc                                    ; $44a3: $09
    nop                                           ; $44a4: $00
    ccf                                           ; $44a5: $3f
    dec b                                         ; $44a6: $05
    dec b                                         ; $44a7: $05
    nop                                           ; $44a8: $00
    ld e, a                                       ; $44a9: $5f
    ld bc, $1500                                  ; $44aa: $01 $00 $15
    ld d, e                                       ; $44ad: $53
    nop                                           ; $44ae: $00
    inc sp                                        ; $44af: $33
    add hl, bc                                    ; $44b0: $09
    db $fc                                        ; $44b1: $fc
    nop                                           ; $44b2: $00
    nop                                           ; $44b3: $00
    nop                                           ; $44b4: $00
    add hl, bc                                    ; $44b5: $09
    nop                                           ; $44b6: $00
    ld e, h                                       ; $44b7: $5c
    dec b                                         ; $44b8: $05
    rlca                                          ; $44b9: $07
    nop                                           ; $44ba: $00
    ld e, a                                       ; $44bb: $5f
    ld bc, $1500                                  ; $44bc: $01 $00 $15
    nop                                           ; $44bf: $00
    nop                                           ; $44c0: $00
    inc sp                                        ; $44c1: $33
    inc b                                         ; $44c2: $04
    call nc, Call_00e_5315                        ; $44c3: $d4 $15 $53
    nop                                           ; $44c6: $00
    inc sp                                        ; $44c7: $33
    inc b                                         ; $44c8: $04
    ld [$0000], a                                 ; $44c9: $ea $00 $00
    nop                                           ; $44cc: $00
    add hl, bc                                    ; $44cd: $09
    nop                                           ; $44ce: $00
    dec a                                         ; $44cf: $3d
    dec b                                         ; $44d0: $05
    dec b                                         ; $44d1: $05
    nop                                           ; $44d2: $00
    ld e, a                                       ; $44d3: $5f
    ld bc, $1500                                  ; $44d4: $01 $00 $15
    ld d, e                                       ; $44d7: $53
    nop                                           ; $44d8: $00
    inc sp                                        ; $44d9: $33
    dec bc                                        ; $44da: $0b
    ld l, b                                       ; $44db: $68
    nop                                           ; $44dc: $00
    nop                                           ; $44dd: $00
    nop                                           ; $44de: $00
    add hl, bc                                    ; $44df: $09
    nop                                           ; $44e0: $00
    ld d, h                                       ; $44e1: $54
    dec b                                         ; $44e2: $05
    dec b                                         ; $44e3: $05
    nop                                           ; $44e4: $00
    ld e, a                                       ; $44e5: $5f
    ld bc, $1500                                  ; $44e6: $01 $00 $15
    ld d, e                                       ; $44e9: $53
    nop                                           ; $44ea: $00
    inc sp                                        ; $44eb: $33
    ld bc, $004e                                  ; $44ec: $01 $4e $00
    nop                                           ; $44ef: $00
    nop                                           ; $44f0: $00
    add hl, bc                                    ; $44f1: $09
    nop                                           ; $44f2: $00
    ld e, e                                       ; $44f3: $5b
    dec b                                         ; $44f4: $05
    dec b                                         ; $44f5: $05
    nop                                           ; $44f6: $00
    ld e, a                                       ; $44f7: $5f
    ld bc, $1500                                  ; $44f8: $01 $00 $15
    ld d, e                                       ; $44fb: $53
    nop                                           ; $44fc: $00
    inc sp                                        ; $44fd: $33
    dec bc                                        ; $44fe: $0b
    ld h, a                                       ; $44ff: $67
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    ld e, a                                       ; $4503: $5f
    ld bc, $0000                                  ; $4504: $01 $00 $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    ld e, a                                       ; $4509: $5f
    nop                                           ; $450a: $00
    nop                                           ; $450b: $00
    add hl, bc                                    ; $450c: $09
    nop                                           ; $450d: $00
    rlca                                          ; $450e: $07
    dec b                                         ; $450f: $05
    rlca                                          ; $4510: $07
    nop                                           ; $4511: $00
    ld d, [hl]                                    ; $4512: $56
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    ld e, a                                       ; $4515: $5f
    ld bc, $1500                                  ; $4516: $01 $00 $15
    dec a                                         ; $4519: $3d
    nop                                           ; $451a: $00
    inc sp                                        ; $451b: $33
    ld bc, $57cc                                  ; $451c: $01 $cc $57
    nop                                           ; $451f: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    add hl, bc                                    ; $4524: $09
    nop                                           ; $4525: $00
    ld h, $05                                     ; $4526: $26 $05
    rlca                                          ; $4528: $07
    nop                                           ; $4529: $00
    ld d, [hl]                                    ; $452a: $56
    nop                                           ; $452b: $00
    nop                                           ; $452c: $00
    ld e, a                                       ; $452d: $5f
    ld bc, $1500                                  ; $452e: $01 $00 $15
    dec a                                         ; $4531: $3d
    nop                                           ; $4532: $00
    inc sp                                        ; $4533: $33
    ld bc, $57cc                                  ; $4534: $01 $cc $57
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    nop                                           ; $453a: $00
    nop                                           ; $453b: $00
    add hl, bc                                    ; $453c: $09
    nop                                           ; $453d: $00
    daa                                           ; $453e: $27
    dec b                                         ; $453f: $05
    rlca                                          ; $4540: $07
    nop                                           ; $4541: $00
    ld d, [hl]                                    ; $4542: $56
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    ld e, a                                       ; $4545: $5f
    ld bc, $1500                                  ; $4546: $01 $00 $15
    dec a                                         ; $4549: $3d
    nop                                           ; $454a: $00
    inc sp                                        ; $454b: $33
    ld bc, $57cc                                  ; $454c: $01 $cc $57
    nop                                           ; $454f: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    add hl, bc                                    ; $4554: $09
    nop                                           ; $4555: $00
    scf                                           ; $4556: $37
    dec b                                         ; $4557: $05
    rlca                                          ; $4558: $07
    nop                                           ; $4559: $00
    ld d, [hl]                                    ; $455a: $56
    nop                                           ; $455b: $00
    nop                                           ; $455c: $00
    ld e, a                                       ; $455d: $5f
    ld bc, $1500                                  ; $455e: $01 $00 $15
    dec a                                         ; $4561: $3d
    nop                                           ; $4562: $00
    inc sp                                        ; $4563: $33
    ld bc, $57cc                                  ; $4564: $01 $cc $57
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    nop                                           ; $456a: $00
    nop                                           ; $456b: $00
    add hl, bc                                    ; $456c: $09
    nop                                           ; $456d: $00
    add hl, sp                                    ; $456e: $39
    dec b                                         ; $456f: $05
    rlca                                          ; $4570: $07
    nop                                           ; $4571: $00
    ld d, [hl]                                    ; $4572: $56
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    ld e, a                                       ; $4575: $5f
    ld bc, $1500                                  ; $4576: $01 $00 $15
    dec a                                         ; $4579: $3d
    nop                                           ; $457a: $00
    inc sp                                        ; $457b: $33
    ld bc, $57cc                                  ; $457c: $01 $cc $57
    nop                                           ; $457f: $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    add hl, bc                                    ; $4584: $09
    nop                                           ; $4585: $00
    ld e, d                                       ; $4586: $5a
    dec b                                         ; $4587: $05
    rlca                                          ; $4588: $07
    nop                                           ; $4589: $00
    ld d, [hl]                                    ; $458a: $56
    nop                                           ; $458b: $00
    nop                                           ; $458c: $00
    ld e, a                                       ; $458d: $5f
    ld bc, $1500                                  ; $458e: $01 $00 $15
    dec a                                         ; $4591: $3d
    nop                                           ; $4592: $00
    inc sp                                        ; $4593: $33
    ld bc, $57cc                                  ; $4594: $01 $cc $57
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    nop                                           ; $459b: $00
    add hl, bc                                    ; $459c: $09
    nop                                           ; $459d: $00
    ld b, c                                       ; $459e: $41
    dec b                                         ; $459f: $05
    rlca                                          ; $45a0: $07
    nop                                           ; $45a1: $00
    ld d, [hl]                                    ; $45a2: $56
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    ld e, a                                       ; $45a5: $5f
    ld bc, $1500                                  ; $45a6: $01 $00 $15
    dec a                                         ; $45a9: $3d
    nop                                           ; $45aa: $00
    inc sp                                        ; $45ab: $33
    ld bc, $57cc                                  ; $45ac: $01 $cc $57
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    add hl, bc                                    ; $45b4: $09
    nop                                           ; $45b5: $00
    ld c, b                                       ; $45b6: $48
    dec b                                         ; $45b7: $05
    rlca                                          ; $45b8: $07
    nop                                           ; $45b9: $00
    ld d, [hl]                                    ; $45ba: $56
    nop                                           ; $45bb: $00
    nop                                           ; $45bc: $00
    ld e, a                                       ; $45bd: $5f
    ld bc, $1500                                  ; $45be: $01 $00 $15
    dec a                                         ; $45c1: $3d
    nop                                           ; $45c2: $00
    inc sp                                        ; $45c3: $33
    ld bc, $57cc                                  ; $45c4: $01 $cc $57
    nop                                           ; $45c7: $00
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    nop                                           ; $45cb: $00
    ld d, [hl]                                    ; $45cc: $56
    nop                                           ; $45cd: $00
    nop                                           ; $45ce: $00
    ld e, a                                       ; $45cf: $5f
    ld bc, $2e00                                  ; $45d0: $01 $00 $2e
    dec d                                         ; $45d3: $15
    nop                                           ; $45d4: $00
    ld d, a                                       ; $45d5: $57
    nop                                           ; $45d6: $00
    nop                                           ; $45d7: $00
    ld a, c                                       ; $45d8: $79
    inc bc                                        ; $45d9: $03
    ld c, l                                       ; $45da: $4d
    nop                                           ; $45db: $00
    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    ld bc, $0000                                  ; $45de: $01 $00 $00
    daa                                           ; $45e1: $27
    nop                                           ; $45e2: $00
    ld bc, $0000                                  ; $45e3: $01 $00 $00
    nop                                           ; $45e6: $00
    ld bc, $0000                                  ; $45e7: $01 $00 $00
    add hl, bc                                    ; $45ea: $09
    nop                                           ; $45eb: $00
    ld d, c                                       ; $45ec: $51
    dec b                                         ; $45ed: $05
    ld a, $00                                     ; $45ee: $3e $00
    add hl, bc                                    ; $45f0: $09
    rla                                           ; $45f1: $17
    ld bc, $0205                                  ; $45f2: $01 $05 $02
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    nop                                           ; $45f8: $00
    ld d, [hl]                                    ; $45f9: $56
    nop                                           ; $45fa: $00
    nop                                           ; $45fb: $00
    rla                                           ; $45fc: $17
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    ld e, a                                       ; $45ff: $5f
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    inc de                                        ; $4602: $13
    nop                                           ; $4603: $00
    ld d, c                                       ; $4604: $51
    ld e, b                                       ; $4605: $58
    nop                                           ; $4606: $00
    ld a, $1b                                     ; $4607: $3e $1b
    ld [bc], a                                    ; $4609: $02
    nop                                           ; $460a: $00
    inc de                                        ; $460b: $13
    nop                                           ; $460c: $00
    ld d, l                                       ; $460d: $55
    inc d                                         ; $460e: $14
    nop                                           ; $460f: $00
    ld d, c                                       ; $4610: $51
    dec d                                         ; $4611: $15
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    ld d, $0d                                     ; $4614: $16 $0d
    nop                                           ; $4616: $00
    ld d, d                                       ; $4617: $52
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    dec de                                        ; $461a: $1b
    ld b, $00                                     ; $461b: $06 $00
    ld e, d                                       ; $461d: $5a
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    inc de                                        ; $4620: $13
    nop                                           ; $4621: $00
    ld c, b                                       ; $4622: $48
    inc d                                         ; $4623: $14
    nop                                           ; $4624: $00
    ld b, e                                       ; $4625: $43
    dec d                                         ; $4626: $15
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    ld d, $15                                     ; $4629: $16 $15
    nop                                           ; $462b: $00
    ld d, d                                       ; $462c: $52
    nop                                           ; $462d: $00
    nop                                           ; $462e: $00
    dec de                                        ; $462f: $1b
    inc b                                         ; $4630: $04
    nop                                           ; $4631: $00
    ld e, d                                       ; $4632: $5a
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    ld e, a                                       ; $4635: $5f
    ld bc, $1700                                  ; $4636: $01 $00 $17
    dec c                                         ; $4639: $0d
    nop                                           ; $463a: $00
    dec d                                         ; $463b: $15
    ld e, c                                       ; $463c: $59
    nop                                           ; $463d: $00
    inc sp                                        ; $463e: $33
    nop                                           ; $463f: $00
    ccf                                           ; $4640: $3f
    dec d                                         ; $4641: $15
    ld bc, $3300                                  ; $4642: $01 $00 $33
    nop                                           ; $4645: $00
    ld b, b                                       ; $4646: $40
    dec d                                         ; $4647: $15
    ld [bc], a                                    ; $4648: $02
    nop                                           ; $4649: $00
    inc sp                                        ; $464a: $33
    nop                                           ; $464b: $00
    ld b, c                                       ; $464c: $41
    dec d                                         ; $464d: $15
    ld bc, $3300                                  ; $464e: $01 $00 $33
    nop                                           ; $4651: $00
    ld b, d                                       ; $4652: $42
    ccf                                           ; $4653: $3f
    inc bc                                        ; $4654: $03
    ld d, d                                       ; $4655: $52
    jr c, jr_00e_467b                             ; $4656: $38 $23

    nop                                           ; $4658: $00
    ld a, a                                       ; $4659: $7f
    add hl, bc                                    ; $465a: $09
    sub $15                                       ; $465b: $d6 $15
    ld e, c                                       ; $465d: $59
    nop                                           ; $465e: $00
    inc sp                                        ; $465f: $33
    nop                                           ; $4660: $00
    ld b, e                                       ; $4661: $43
    dec d                                         ; $4662: $15
    ld bc, $3300                                  ; $4663: $01 $00 $33
    nop                                           ; $4666: $00
    ld b, h                                       ; $4667: $44
    ld e, [hl]                                    ; $4668: $5e
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    rla                                           ; $466b: $17
    dec c                                         ; $466c: $0d
    nop                                           ; $466d: $00
    dec d                                         ; $466e: $15
    inc b                                         ; $466f: $04
    nop                                           ; $4670: $00
    add hl, de                                    ; $4671: $19
    nop                                           ; $4672: $00
    ld e, a                                       ; $4673: $5f
    ld e, [hl]                                    ; $4674: $5e
    ld bc, $1700                                  ; $4675: $01 $00 $17
    dec d                                         ; $4678: $15
    nop                                           ; $4679: $00
    dec d                                         ; $467a: $15

jr_00e_467b:
    inc b                                         ; $467b: $04
    nop                                           ; $467c: $00
    add hl, de                                    ; $467d: $19
    nop                                           ; $467e: $00
    ld h, h                                       ; $467f: $64
    rla                                           ; $4680: $17
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    dec de                                        ; $4683: $1b
    inc b                                         ; $4684: $04
    nop                                           ; $4685: $00
    ld l, $15                                     ; $4686: $2e $15
    nop                                           ; $4688: $00
    daa                                           ; $4689: $27
    nop                                           ; $468a: $00
    dec b                                         ; $468b: $05
    rla                                           ; $468c: $17
    dec c                                         ; $468d: $0d
    nop                                           ; $468e: $00
    ld e, $0d                                     ; $468f: $1e $0d
    nop                                           ; $4691: $00
    rla                                           ; $4692: $17
    dec d                                         ; $4693: $15
    nop                                           ; $4694: $00
    ld e, $15                                     ; $4695: $1e $15
    nop                                           ; $4697: $00
    ld h, d                                       ; $4698: $62
    ld bc, $0f00                                  ; $4699: $01 $00 $0f
    rla                                           ; $469c: $17
    ld bc, $012c                                  ; $469d: $01 $2c $01
    nop                                           ; $46a0: $00
    ld d, a                                       ; $46a1: $57
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    nop                                           ; $46a8: $00
    nop                                           ; $46a9: $00
    ld [bc], a                                    ; $46aa: $02
    nop                                           ; $46ab: $00
    nop                                           ; $46ac: $00
    nop                                           ; $46ad: $00
    ld h, e                                       ; $46ae: $63
    ld e, a                                       ; $46af: $5f
    nop                                           ; $46b0: $00
    nop                                           ; $46b1: $00
    add hl, bc                                    ; $46b2: $09
    nop                                           ; $46b3: $00
    ld b, d                                       ; $46b4: $42
    dec b                                         ; $46b5: $05
    dec e                                         ; $46b6: $1d
    nop                                           ; $46b7: $00
    add hl, bc                                    ; $46b8: $09
    inc c                                         ; $46b9: $0c
    ld bc, $0305                                  ; $46ba: $01 $05 $03
    nop                                           ; $46bd: $00
    ld e, a                                       ; $46be: $5f
    ld bc, $0000                                  ; $46bf: $01 $00 $00
    nop                                           ; $46c2: $00
    nop                                           ; $46c3: $00
    ld d, [hl]                                    ; $46c4: $56
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    rla                                           ; $46c7: $17
    nop                                           ; $46c8: $00
    nop                                           ; $46c9: $00
    dec de                                        ; $46ca: $1b
    inc b                                         ; $46cb: $04
    nop                                           ; $46cc: $00
    inc de                                        ; $46cd: $13
    nop                                           ; $46ce: $00
    adc b                                         ; $46cf: $88
    inc d                                         ; $46d0: $14
    nop                                           ; $46d1: $00
    ld [hl], a                                    ; $46d2: $77
    dec d                                         ; $46d3: $15
    nop                                           ; $46d4: $00
    nop                                           ; $46d5: $00
    ld d, $22                                     ; $46d6: $16 $22
    nop                                           ; $46d8: $00
    ld d, d                                       ; $46d9: $52
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00
    ld e, a                                       ; $46dc: $5f
    ld bc, $1500                                  ; $46dd: $01 $00 $15
    nop                                           ; $46e0: $00
    nop                                           ; $46e1: $00
    inc sp                                        ; $46e2: $33
    inc b                                         ; $46e3: $04
    and a                                         ; $46e4: $a7
    rla                                           ; $46e5: $17
    ld [hl+], a                                   ; $46e6: $22
    nop                                           ; $46e7: $00
    inc de                                        ; $46e8: $13
    nop                                           ; $46e9: $00
    ld [hl], a                                    ; $46ea: $77
    ld [hl], c                                    ; $46eb: $71
    nop                                           ; $46ec: $00
    jp nz, $021b                                  ; $46ed: $c2 $1b $02

    nop                                           ; $46f0: $00
    dec d                                         ; $46f1: $15
    ld b, c                                       ; $46f2: $41
    nop                                           ; $46f3: $00
    inc sp                                        ; $46f4: $33
    inc b                                         ; $46f5: $04
    xor b                                         ; $46f6: $a8
    rrca                                          ; $46f7: $0f
    inc c                                         ; $46f8: $0c
    ld bc, $ff0f                                  ; $46f9: $01 $0f $ff
    nop                                           ; $46fc: $00
    ld h, d                                       ; $46fd: $62
    ld b, e                                       ; $46fe: $43
    nop                                           ; $46ff: $00
    ld a, d                                       ; $4700: $7a
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    ld d, a                                       ; $4703: $57
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    jr z, jr_00e_4740                             ; $4706: $28 $38

    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    nop                                           ; $470a: $00
    nop                                           ; $470b: $00
    ld e, a                                       ; $470c: $5f
    ld bc, $0000                                  ; $470d: $01 $00 $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    ld e, a                                       ; $4712: $5f
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    add hl, bc                                    ; $4715: $09
    nop                                           ; $4716: $00
    ld b, d                                       ; $4717: $42
    dec b                                         ; $4718: $05
    dec bc                                        ; $4719: $0b
    nop                                           ; $471a: $00
    inc de                                        ; $471b: $13
    nop                                           ; $471c: $00
    inc d                                         ; $471d: $14
    inc d                                         ; $471e: $14
    nop                                           ; $471f: $00
    nop                                           ; $4720: $00
    dec d                                         ; $4721: $15
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    ld d, $37                                     ; $4724: $16 $37
    ld bc, $0052                                  ; $4726: $01 $52 $00
    nop                                           ; $4729: $00
    dec de                                        ; $472a: $1b
    inc b                                         ; $472b: $04
    nop                                           ; $472c: $00
    rla                                           ; $472d: $17
    scf                                           ; $472e: $37
    nop                                           ; $472f: $00
    ld [hl+], a                                   ; $4730: $22
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    ld e, a                                       ; $4733: $5f
    ld bc, $0000                                  ; $4734: $01 $00 $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    ld e, a                                       ; $4739: $5f
    ld bc, $0000                                  ; $473a: $01 $00 $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    dec b                                         ; $473f: $05

jr_00e_4740:
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    add hl, sp                                    ; $4743: $39
    nop                                           ; $4744: $00
    ld [hl], d                                    ; $4745: $72
    nop                                           ; $4746: $00
    adc d                                         ; $4747: $8a
    nop                                           ; $4748: $00
    ld [$005f], a                                 ; $4749: $ea $5f $00
    nop                                           ; $474c: $00
    add hl, bc                                    ; $474d: $09
    nop                                           ; $474e: $00
    dec c                                         ; $474f: $0d
    dec b                                         ; $4750: $05
    rrca                                          ; $4751: $0f
    nop                                           ; $4752: $00
    add hl, bc                                    ; $4753: $09
    inc c                                         ; $4754: $0c
    ld bc, $0305                                  ; $4755: $01 $05 $03
    nop                                           ; $4758: $00
    ld e, a                                       ; $4759: $5f
    ld bc, $0000                                  ; $475a: $01 $00 $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    ld d, [hl]                                    ; $475f: $56
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    ld e, a                                       ; $4762: $5f
    ld bc, $1500                                  ; $4763: $01 $00 $15
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    inc sp                                        ; $4768: $33
    ld [bc], a                                    ; $4769: $02
    db $db                                        ; $476a: $db
    jr c, jr_00e_47be                             ; $476b: $38 $51

    nop                                           ; $476d: $00
    dec d                                         ; $476e: $15
    nop                                           ; $476f: $00
    nop                                           ; $4770: $00
    inc sp                                        ; $4771: $33
    ld [bc], a                                    ; $4772: $02
    call c, Call_000_0c0f                         ; $4773: $dc $0f $0c
    ld bc, $0057                                  ; $4776: $01 $57 $00
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    ld e, a                                       ; $477d: $5f
    ld bc, $0000                                  ; $477e: $01 $00 $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    ld e, a                                       ; $4783: $5f
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    add hl, bc                                    ; $4786: $09
    nop                                           ; $4787: $00
    dec c                                         ; $4788: $0d
    dec b                                         ; $4789: $05
    rrca                                          ; $478a: $0f
    nop                                           ; $478b: $00
    add hl, bc                                    ; $478c: $09
    rrca                                          ; $478d: $0f
    ld bc, $0305                                  ; $478e: $01 $05 $03
    nop                                           ; $4791: $00
    ld e, a                                       ; $4792: $5f
    ld bc, $0000                                  ; $4793: $01 $00 $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    ld d, [hl]                                    ; $4798: $56
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    ld e, a                                       ; $479b: $5f
    ld bc, $1500                                  ; $479c: $01 $00 $15
    nop                                           ; $479f: $00
    nop                                           ; $47a0: $00
    inc sp                                        ; $47a1: $33
    ld [bc], a                                    ; $47a2: $02
    rst $20                                       ; $47a3: $e7
    jr c, @+$48                                   ; $47a4: $38 $46

    nop                                           ; $47a6: $00
    dec d                                         ; $47a7: $15
    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    inc sp                                        ; $47aa: $33
    ld [bc], a                                    ; $47ab: $02
    and $0f                                       ; $47ac: $e6 $0f
    rrca                                          ; $47ae: $0f
    ld bc, $0057                                  ; $47af: $01 $57 $00
    nop                                           ; $47b2: $00
    nop                                           ; $47b3: $00
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    ld e, a                                       ; $47b6: $5f
    ld bc, $0000                                  ; $47b7: $01 $00 $00
    nop                                           ; $47ba: $00
    nop                                           ; $47bb: $00
    add hl, bc                                    ; $47bc: $09
    nop                                           ; $47bd: $00

jr_00e_47be:
    ccf                                           ; $47be: $3f
    dec b                                         ; $47bf: $05
    ld b, $00                                     ; $47c0: $06 $00
    rrca                                          ; $47c2: $0f
    ld a, [$0f00]                                 ; $47c3: $fa $00 $0f
    ld d, $01                                     ; $47c6: $16 $01
    ld l, $08                                     ; $47c8: $2e $08
    nop                                           ; $47ca: $00
    dec [hl]                                      ; $47cb: $35
    ld b, $00                                     ; $47cc: $06 $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    nop                                           ; $47d3: $00
    ld e, a                                       ; $47d4: $5f
    nop                                           ; $47d5: $00
    nop                                           ; $47d6: $00
    add hl, bc                                    ; $47d7: $09
    nop                                           ; $47d8: $00
    ccf                                           ; $47d9: $3f
    dec b                                         ; $47da: $05
    inc e                                         ; $47db: $1c
    nop                                           ; $47dc: $00
    add hl, bc                                    ; $47dd: $09
    ld d, $01                                     ; $47de: $16 $01
    dec b                                         ; $47e0: $05
    rlca                                          ; $47e1: $07
    nop                                           ; $47e2: $00
    ld d, [hl]                                    ; $47e3: $56
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    ld e, a                                       ; $47e6: $5f
    ld bc, $0900                                  ; $47e7: $01 $00 $09
    ld a, [$0501]                                 ; $47ea: $fa $01 $05
    inc bc                                        ; $47ed: $03
    nop                                           ; $47ee: $00
    jr c, jr_00e_484e                             ; $47ef: $38 $5d

    nop                                           ; $47f1: $00
    rrca                                          ; $47f2: $0f
    ld a, [$5f00]                                 ; $47f3: $fa $00 $5f
    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    inc de                                        ; $47f8: $13
    ld bc, $142b                                  ; $47f9: $01 $2b $14
    ld [bc], a                                    ; $47fc: $02
    dec [hl]                                      ; $47fd: $35
    dec d                                         ; $47fe: $15
    ld [bc], a                                    ; $47ff: $02
    nop                                           ; $4800: $00
    ld d, $5c                                     ; $4801: $16 $5c
    nop                                           ; $4803: $00
    ld d, d                                       ; $4804: $52
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    inc de                                        ; $4807: $13
    ld [bc], a                                    ; $4808: $02
    cp h                                          ; $4809: $bc
    inc d                                         ; $480a: $14
    ld bc, $15a0                                  ; $480b: $01 $a0 $15
    ld [bc], a                                    ; $480e: $02
    nop                                           ; $480f: $00
    ld d, $5c                                     ; $4810: $16 $5c
    nop                                           ; $4812: $00
    ld d, d                                       ; $4813: $52
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    inc de                                        ; $4816: $13
    ld bc, $14a0                                  ; $4817: $01 $a0 $14
    nop                                           ; $481a: $00
    ld d, e                                       ; $481b: $53
    dec d                                         ; $481c: $15
    ld [bc], a                                    ; $481d: $02
    nop                                           ; $481e: $00
    ld d, $5c                                     ; $481f: $16 $5c
    nop                                           ; $4821: $00
    ld d, d                                       ; $4822: $52
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    ld e, a                                       ; $4825: $5f
    ld bc, $5700                                  ; $4826: $01 $00 $57
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    nop                                           ; $482c: $00
    nop                                           ; $482d: $00
    ld e, a                                       ; $482e: $5f
    ld bc, $0000                                  ; $482f: $01 $00 $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    ld e, a                                       ; $4834: $5f
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    add hl, bc                                    ; $4837: $09
    nop                                           ; $4838: $00
    ld b, e                                       ; $4839: $43
    dec b                                         ; $483a: $05
    dec b                                         ; $483b: $05
    nop                                           ; $483c: $00
    add hl, bc                                    ; $483d: $09
    dec b                                         ; $483e: $05
    dec b                                         ; $483f: $05
    dec b                                         ; $4840: $05
    inc bc                                        ; $4841: $03
    nop                                           ; $4842: $00
    dec d                                         ; $4843: $15
    ld d, d                                       ; $4844: $52
    nop                                           ; $4845: $00
    rlca                                          ; $4846: $07
    ld bc, $5f05                                  ; $4847: $01 $05 $5f
    ld bc, $0000                                  ; $484a: $01 $00 $00
    nop                                           ; $484d: $00

jr_00e_484e:
    nop                                           ; $484e: $00
    ld d, [hl]                                    ; $484f: $56
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    rla                                           ; $4852: $17
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    ld e, d                                       ; $4855: $5a
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    inc de                                        ; $4858: $13
    nop                                           ; $4859: $00
    ld b, e                                       ; $485a: $43
    inc d                                         ; $485b: $14
    nop                                           ; $485c: $00
    db $dd                                        ; $485d: $dd
    dec d                                         ; $485e: $15
    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    ld d, $22                                     ; $4861: $16 $22
    nop                                           ; $4863: $00
    ld d, d                                       ; $4864: $52
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    ld e, d                                       ; $4867: $5a
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    dec de                                        ; $486a: $1b
    ld [bc], a                                    ; $486b: $02
    nop                                           ; $486c: $00
    inc de                                        ; $486d: $13
    nop                                           ; $486e: $00
    ld b, e                                       ; $486f: $43
    inc d                                         ; $4870: $14
    nop                                           ; $4871: $00
    xor c                                         ; $4872: $a9
    dec d                                         ; $4873: $15
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    ld d, $37                                     ; $4876: $16 $37
    nop                                           ; $4878: $00
    ld d, d                                       ; $4879: $52
    nop                                           ; $487a: $00
    nop                                           ; $487b: $00
    ld e, d                                       ; $487c: $5a
    nop                                           ; $487d: $00
    nop                                           ; $487e: $00
    dec de                                        ; $487f: $1b
    ld [bc], a                                    ; $4880: $02
    nop                                           ; $4881: $00
    inc de                                        ; $4882: $13
    nop                                           ; $4883: $00
    ld [hl+], a                                   ; $4884: $22
    inc d                                         ; $4885: $14
    nop                                           ; $4886: $00
    db $dd                                        ; $4887: $dd
    dec d                                         ; $4888: $15
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    ld d, $36                                     ; $488b: $16 $36
    nop                                           ; $488d: $00
    ld d, d                                       ; $488e: $52
    nop                                           ; $488f: $00
    nop                                           ; $4890: $00
    ld e, d                                       ; $4891: $5a
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    dec de                                        ; $4894: $1b
    ld [bc], a                                    ; $4895: $02
    nop                                           ; $4896: $00
    inc de                                        ; $4897: $13
    nop                                           ; $4898: $00
    ld b, e                                       ; $4899: $43
    inc d                                         ; $489a: $14
    nop                                           ; $489b: $00
    push af                                       ; $489c: $f5
    dec d                                         ; $489d: $15
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    ld d, $38                                     ; $48a0: $16 $38
    nop                                           ; $48a2: $00
    ld d, d                                       ; $48a3: $52
    nop                                           ; $48a4: $00
    nop                                           ; $48a5: $00
    ld e, d                                       ; $48a6: $5a
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    dec de                                        ; $48a9: $1b
    ld [bc], a                                    ; $48aa: $02
    nop                                           ; $48ab: $00
    ld e, a                                       ; $48ac: $5f
    ld bc, $1700                                  ; $48ad: $01 $00 $17
    nop                                           ; $48b0: $00
    nop                                           ; $48b1: $00
    inc de                                        ; $48b2: $13
    nop                                           ; $48b3: $00
    db $dd                                        ; $48b4: $dd
    ld [hl], c                                    ; $48b5: $71
    nop                                           ; $48b6: $00
    ld e, e                                       ; $48b7: $5b
    dec de                                        ; $48b8: $1b
    ld b, $00                                     ; $48b9: $06 $00
    dec d                                         ; $48bb: $15
    ld b, c                                       ; $48bc: $41
    nop                                           ; $48bd: $00
    inc sp                                        ; $48be: $33
    rlca                                          ; $48bf: $07
    xor b                                         ; $48c0: $a8
    rla                                           ; $48c1: $17
    ld [hl+], a                                   ; $48c2: $22
    nop                                           ; $48c3: $00
    inc de                                        ; $48c4: $13
    nop                                           ; $48c5: $00
    ld a, h                                       ; $48c6: $7c
    ld [hl], c                                    ; $48c7: $71
    nop                                           ; $48c8: $00
    ld [hl], e                                    ; $48c9: $73
    ld e, a                                       ; $48ca: $5f
    nop                                           ; $48cb: $00
    nop                                           ; $48cc: $00
    ld e, $22                                     ; $48cd: $1e $22
    nop                                           ; $48cf: $00
    inc de                                        ; $48d0: $13
    nop                                           ; $48d1: $00
    add d                                         ; $48d2: $82
    inc d                                         ; $48d3: $14
    nop                                           ; $48d4: $00
    ld a, h                                       ; $48d5: $7c
    dec d                                         ; $48d6: $15
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    ld d, $5d                                     ; $48d9: $16 $5d
    nop                                           ; $48db: $00
    ld d, d                                       ; $48dc: $52
    nop                                           ; $48dd: $00
    nop                                           ; $48de: $00
    ld e, d                                       ; $48df: $5a
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    inc de                                        ; $48e2: $13
    nop                                           ; $48e3: $00
    ld d, l                                       ; $48e4: $55
    inc d                                         ; $48e5: $14
    nop                                           ; $48e6: $00
    ld a, h                                       ; $48e7: $7c
    dec d                                         ; $48e8: $15
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    ld d, $0d                                     ; $48eb: $16 $0d
    nop                                           ; $48ed: $00
    ld d, d                                       ; $48ee: $52
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    ld e, d                                       ; $48f1: $5a
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    ld e, a                                       ; $48f4: $5f
    ld bc, $5e00                                  ; $48f5: $01 $00 $5e
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    dec d                                         ; $48fa: $15
    inc b                                         ; $48fb: $04
    nop                                           ; $48fc: $00
    add hl, de                                    ; $48fd: $19
    nop                                           ; $48fe: $00
    ld b, [hl]                                    ; $48ff: $46
    rla                                           ; $4900: $17
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    dec de                                        ; $4903: $1b
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    ld e, [hl]                                    ; $4906: $5e
    ld bc, $1700                                  ; $4907: $01 $00 $17
    ld e, l                                       ; $490a: $5d
    nop                                           ; $490b: $00
    dec d                                         ; $490c: $15
    inc b                                         ; $490d: $04
    nop                                           ; $490e: $00
    add hl, de                                    ; $490f: $19
    nop                                           ; $4910: $00
    ld b, [hl]                                    ; $4911: $46
    rla                                           ; $4912: $17
    dec c                                         ; $4913: $0d
    nop                                           ; $4914: $00
    dec de                                        ; $4915: $1b
    inc b                                         ; $4916: $04
    nop                                           ; $4917: $00
    rla                                           ; $4918: $17
    ld e, l                                       ; $4919: $5d
    nop                                           ; $491a: $00
    inc de                                        ; $491b: $13
    nop                                           ; $491c: $00
    db $dd                                        ; $491d: $dd
    ld [hl], c                                    ; $491e: $71
    nop                                           ; $491f: $00
    ld a, $1b                                     ; $4920: $3e $1b
    ld [bc], a                                    ; $4922: $02
    nop                                           ; $4923: $00
    dec d                                         ; $4924: $15
    ld bc, $3300                                  ; $4925: $01 $00 $33
    rlca                                          ; $4928: $07
    xor c                                         ; $4929: $a9
    dec d                                         ; $492a: $15
    ld d, $00                                     ; $492b: $16 $00
    inc sp                                        ; $492d: $33
    rlca                                          ; $492e: $07
    xor d                                         ; $492f: $aa
    dec d                                         ; $4930: $15
    ld bc, $3300                                  ; $4931: $01 $00 $33
    rlca                                          ; $4934: $07
    xor e                                         ; $4935: $ab
    dec d                                         ; $4936: $15
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    inc sp                                        ; $4939: $33
    rlca                                          ; $493a: $07
    xor h                                         ; $493b: $ac
    dec d                                         ; $493c: $15
    ld bc, $3300                                  ; $493d: $01 $00 $33
    rlca                                          ; $4940: $07
    xor l                                         ; $4941: $ad
    dec d                                         ; $4942: $15
    ld d, $00                                     ; $4943: $16 $00
    inc sp                                        ; $4945: $33
    rlca                                          ; $4946: $07
    xor [hl]                                      ; $4947: $ae
    dec d                                         ; $4948: $15
    ld bc, $3300                                  ; $4949: $01 $00 $33
    rlca                                          ; $494c: $07
    xor a                                         ; $494d: $af
    rla                                           ; $494e: $17
    ld [hl], $00                                  ; $494f: $36 $00
    ld e, [hl]                                    ; $4951: $5e
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    dec d                                         ; $4954: $15
    ld b, $00                                     ; $4955: $06 $00
    add hl, de                                    ; $4957: $19
    nop                                           ; $4958: $00
    ld [hl+], a                                   ; $4959: $22
    rla                                           ; $495a: $17
    ld e, l                                       ; $495b: $5d
    nop                                           ; $495c: $00
    dec d                                         ; $495d: $15
    ld b, $00                                     ; $495e: $06 $00
    add hl, de                                    ; $4960: $19
    nop                                           ; $4961: $00
    ld [hl+], a                                   ; $4962: $22
    ld e, [hl]                                    ; $4963: $5e
    ld bc, $1700                                  ; $4964: $01 $00 $17
    jr c, jr_00e_4969                             ; $4967: $38 $00

jr_00e_4969:
    dec d                                         ; $4969: $15
    ld b, $00                                     ; $496a: $06 $00
    add hl, de                                    ; $496c: $19
    nop                                           ; $496d: $00
    ld [hl+], a                                   ; $496e: $22
    rla                                           ; $496f: $17
    ld [hl], $00                                  ; $4970: $36 $00
    ld e, $36                                     ; $4972: $1e $36
    nop                                           ; $4974: $00
    rla                                           ; $4975: $17
    ld e, l                                       ; $4976: $5d
    nop                                           ; $4977: $00
    ld e, [hl]                                    ; $4978: $5e
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    dec d                                         ; $497b: $15
    ld b, $00                                     ; $497c: $06 $00
    add hl, de                                    ; $497e: $19
    nop                                           ; $497f: $00
    ld [hl+], a                                   ; $4980: $22
    ld e, [hl]                                    ; $4981: $5e
    ld bc, $1700                                  ; $4982: $01 $00 $17
    jr c, jr_00e_4987                             ; $4985: $38 $00

jr_00e_4987:
    dec d                                         ; $4987: $15
    ld b, $00                                     ; $4988: $06 $00
    add hl, de                                    ; $498a: $19
    nop                                           ; $498b: $00
    ld [hl+], a                                   ; $498c: $22
    ld e, $38                                     ; $498d: $1e $38
    nop                                           ; $498f: $00
    rla                                           ; $4990: $17
    ld e, l                                       ; $4991: $5d
    nop                                           ; $4992: $00
    ld e, $5d                                     ; $4993: $1e $5d
    nop                                           ; $4995: $00
    daa                                           ; $4996: $27
    nop                                           ; $4997: $00
    ld a, [bc]                                    ; $4998: $0a
    rla                                           ; $4999: $17
    dec c                                         ; $499a: $0d
    nop                                           ; $499b: $00
    inc de                                        ; $499c: $13
    nop                                           ; $499d: $00
    rst $10                                       ; $499e: $d7
    ld [hl], c                                    ; $499f: $71
    nop                                           ; $49a0: $00
    dec hl                                        ; $49a1: $2b
    ld e, [hl]                                    ; $49a2: $5e
    nop                                           ; $49a3: $00
    nop                                           ; $49a4: $00
    dec d                                         ; $49a5: $15
    ld b, $00                                     ; $49a6: $06 $00
    add hl, de                                    ; $49a8: $19
    nop                                           ; $49a9: $00
    dec hl                                        ; $49aa: $2b
    ld e, [hl]                                    ; $49ab: $5e
    ld bc, $1700                                  ; $49ac: $01 $00 $17
    scf                                           ; $49af: $37
    nop                                           ; $49b0: $00
    dec d                                         ; $49b1: $15
    inc b                                         ; $49b2: $04
    nop                                           ; $49b3: $00
    add hl, de                                    ; $49b4: $19
    nop                                           ; $49b5: $00
    ld [hl-], a                                   ; $49b6: $32
    dec de                                        ; $49b7: $1b
    ld b, $00                                     ; $49b8: $06 $00
    rla                                           ; $49ba: $17
    dec c                                         ; $49bb: $0d
    nop                                           ; $49bc: $00
    ld e, $0d                                     ; $49bd: $1e $0d
    nop                                           ; $49bf: $00
    rla                                           ; $49c0: $17
    scf                                           ; $49c1: $37
    nop                                           ; $49c2: $00
    ld e, [hl]                                    ; $49c3: $5e
    nop                                           ; $49c4: $00
    nop                                           ; $49c5: $00
    dec d                                         ; $49c6: $15
    ld b, $00                                     ; $49c7: $06 $00
    add hl, de                                    ; $49c9: $19
    nop                                           ; $49ca: $00
    ld b, e                                       ; $49cb: $43
    ld e, [hl]                                    ; $49cc: $5e
    ld bc, $1700                                  ; $49cd: $01 $00 $17
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    dec d                                         ; $49d2: $15
    ld b, $00                                     ; $49d3: $06 $00
    add hl, de                                    ; $49d5: $19
    nop                                           ; $49d6: $00
    ld b, c                                       ; $49d7: $41
    dec de                                        ; $49d8: $1b
    ld b, $00                                     ; $49d9: $06 $00
    rla                                           ; $49db: $17
    scf                                           ; $49dc: $37
    nop                                           ; $49dd: $00
    dec de                                        ; $49de: $1b
    ld b, $00                                     ; $49df: $06 $00
    rrca                                          ; $49e1: $0f
    dec b                                         ; $49e2: $05
    ld b, $5b                                     ; $49e3: $06 $5b
    nop                                           ; $49e5: $00
    nop                                           ; $49e6: $00
    ld d, a                                       ; $49e7: $57
    nop                                           ; $49e8: $00
    nop                                           ; $49e9: $00
    rrca                                          ; $49ea: $0f
    ld a, [$4d00]                                 ; $49eb: $fa $00 $4d
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    jr z, jr_00e_4a0a                             ; $49f0: $28 $18

    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    dec b                                         ; $49f6: $05
    nop                                           ; $49f7: $00
    nop                                           ; $49f8: $00
    nop                                           ; $49f9: $00
    ld h, e                                       ; $49fa: $63
    nop                                           ; $49fb: $00
    sbc h                                         ; $49fc: $9c
    inc b                                         ; $49fd: $04
    adc a                                         ; $49fe: $8f
    dec b                                         ; $49ff: $05
    ld bc, $005f                                  ; $4a00: $01 $5f $00
    nop                                           ; $4a03: $00
    add hl, bc                                    ; $4a04: $09
    nop                                           ; $4a05: $00
    dec c                                         ; $4a06: $0d
    dec b                                         ; $4a07: $05
    dec e                                         ; $4a08: $1d
    nop                                           ; $4a09: $00

jr_00e_4a0a:
    add hl, bc                                    ; $4a0a: $09
    dec c                                         ; $4a0b: $0d
    ld bc, $0305                                  ; $4a0c: $01 $05 $03
    nop                                           ; $4a0f: $00
    ld e, a                                       ; $4a10: $5f
    ld bc, $0000                                  ; $4a11: $01 $00 $00
    nop                                           ; $4a14: $00
    nop                                           ; $4a15: $00
    ld d, [hl]                                    ; $4a16: $56
    nop                                           ; $4a17: $00
    nop                                           ; $4a18: $00
    ld e, a                                       ; $4a19: $5f
    ld bc, $1500                                  ; $4a1a: $01 $00 $15
    nop                                           ; $4a1d: $00
    nop                                           ; $4a1e: $00
    inc sp                                        ; $4a1f: $33
    ld [bc], a                                    ; $4a20: $02
    db $dd                                        ; $4a21: $dd
    ld l, h                                       ; $4a22: $6c
    ld bc, $0900                                  ; $4a23: $01 $00 $09
    cp $00                                        ; $4a26: $fe $00
    dec b                                         ; $4a28: $05
    dec bc                                        ; $4a29: $0b
    nop                                           ; $4a2a: $00
    dec d                                         ; $4a2b: $15
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    inc sp                                        ; $4a2e: $33
    ld [bc], a                                    ; $4a2f: $02
    sbc $44                                       ; $4a30: $de $44
    nop                                           ; $4a32: $00
    dec b                                         ; $4a33: $05
    jr c, jr_00e_4a7b                             ; $4a34: $38 $45

    nop                                           ; $4a36: $00
    dec d                                         ; $4a37: $15
    nop                                           ; $4a38: $00
    nop                                           ; $4a39: $00
    inc sp                                        ; $4a3a: $33
    ld [bc], a                                    ; $4a3b: $02
    rst $18                                       ; $4a3c: $df
    rrca                                          ; $4a3d: $0f
    dec c                                         ; $4a3e: $0d
    ld bc, $0057                                  ; $4a3f: $01 $57 $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    nop                                           ; $4a44: $00
    nop                                           ; $4a45: $00
    inc bc                                        ; $4a46: $03
    rlca                                          ; $4a47: $07
    nop                                           ; $4a48: $00
    jr c, jr_00e_4a90                             ; $4a49: $38 $45

    nop                                           ; $4a4b: $00
    dec d                                         ; $4a4c: $15
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    inc sp                                        ; $4a4f: $33
    ld [bc], a                                    ; $4a50: $02
    rst $18                                       ; $4a51: $df
    rrca                                          ; $4a52: $0f
    dec c                                         ; $4a53: $0d
    ld bc, $0057                                  ; $4a54: $01 $57 $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    ld e, a                                       ; $4a5e: $5f
    ld bc, $0000                                  ; $4a5f: $01 $00 $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    ld e, a                                       ; $4a64: $5f
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    add hl, bc                                    ; $4a67: $09
    nop                                           ; $4a68: $00
    dec c                                         ; $4a69: $0d
    dec b                                         ; $4a6a: $05
    rrca                                          ; $4a6b: $0f
    nop                                           ; $4a6c: $00
    add hl, bc                                    ; $4a6d: $09
    db $10                                        ; $4a6e: $10
    ld bc, $0305                                  ; $4a6f: $01 $05 $03
    nop                                           ; $4a72: $00
    ld e, a                                       ; $4a73: $5f
    ld bc, $0000                                  ; $4a74: $01 $00 $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    ld d, [hl]                                    ; $4a79: $56
    nop                                           ; $4a7a: $00

jr_00e_4a7b:
    nop                                           ; $4a7b: $00
    ld e, a                                       ; $4a7c: $5f
    ld bc, $1500                                  ; $4a7d: $01 $00 $15
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    inc sp                                        ; $4a82: $33
    ld [bc], a                                    ; $4a83: $02
    rst $20                                       ; $4a84: $e7
    jr c, jr_00e_4ac9                             ; $4a85: $38 $42

    nop                                           ; $4a87: $00
    dec d                                         ; $4a88: $15
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    inc sp                                        ; $4a8b: $33
    ld [bc], a                                    ; $4a8c: $02
    add sp, $0f                                   ; $4a8d: $e8 $0f
    db $10                                        ; $4a8f: $10

jr_00e_4a90:
    ld bc, $0057                                  ; $4a90: $01 $57 $00
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    ld e, a                                       ; $4a97: $5f
    ld bc, $0000                                  ; $4a98: $01 $00 $00
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    ld e, a                                       ; $4a9d: $5f
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    add hl, bc                                    ; $4aa0: $09
    nop                                           ; $4aa1: $00
    ld d, e                                       ; $4aa2: $53
    inc b                                         ; $4aa3: $04
    inc bc                                        ; $4aa4: $03
    nop                                           ; $4aa5: $00
    ld e, a                                       ; $4aa6: $5f
    ld bc, $0000                                  ; $4aa7: $01 $00 $00
    nop                                           ; $4aaa: $00
    nop                                           ; $4aab: $00
    add hl, bc                                    ; $4aac: $09
    add hl, hl                                    ; $4aad: $29
    ld bc, $0305                                  ; $4aae: $01 $05 $03
    nop                                           ; $4ab1: $00
    ld e, a                                       ; $4ab2: $5f
    ld bc, $0000                                  ; $4ab3: $01 $00 $00
    nop                                           ; $4ab6: $00
    nop                                           ; $4ab7: $00
    ld d, [hl]                                    ; $4ab8: $56
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    rla                                           ; $4abb: $17
    nop                                           ; $4abc: $00
    nop                                           ; $4abd: $00
    dec de                                        ; $4abe: $1b
    ld [bc], a                                    ; $4abf: $02
    nop                                           ; $4ac0: $00
    inc de                                        ; $4ac1: $13
    ld bc, $1475                                  ; $4ac2: $01 $75 $14
    ld bc, $1501                                  ; $4ac5: $01 $01 $15
    nop                                           ; $4ac8: $00

jr_00e_4ac9:
    nop                                           ; $4ac9: $00
    ld d, $3e                                     ; $4aca: $16 $3e
    nop                                           ; $4acc: $00
    ld d, d                                       ; $4acd: $52
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    dec de                                        ; $4ad0: $1b
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    inc de                                        ; $4ad3: $13
    ld bc, $143f                                  ; $4ad4: $01 $3f $14
    ld bc, $1514                                  ; $4ad7: $01 $14 $15
    nop                                           ; $4ada: $00
    nop                                           ; $4adb: $00
    ld d, $3f                                     ; $4adc: $16 $3f
    nop                                           ; $4ade: $00
    ld d, d                                       ; $4adf: $52
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    dec de                                        ; $4ae2: $1b
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    inc de                                        ; $4ae5: $13
    ld bc, $1462                                  ; $4ae6: $01 $62 $14
    ld bc, $151c                                  ; $4ae9: $01 $1c $15
    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    ld d, $3c                                     ; $4aee: $16 $3c
    nop                                           ; $4af0: $00
    ld d, d                                       ; $4af1: $52
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    dec de                                        ; $4af4: $1b
    nop                                           ; $4af5: $00
    nop                                           ; $4af6: $00
    inc de                                        ; $4af7: $13
    ld bc, $146f                                  ; $4af8: $01 $6f $14
    ld bc, $1537                                  ; $4afb: $01 $37 $15
    nop                                           ; $4afe: $00
    nop                                           ; $4aff: $00
    ld d, $3d                                     ; $4b00: $16 $3d
    nop                                           ; $4b02: $00
    ld d, d                                       ; $4b03: $52
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    dec de                                        ; $4b06: $1b
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    inc de                                        ; $4b09: $13
    ld bc, $1490                                  ; $4b0a: $01 $90 $14
    ld bc, $1524                                  ; $4b0d: $01 $24 $15
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    ld d, $4b                                     ; $4b12: $16 $4b
    nop                                           ; $4b14: $00
    ld d, d                                       ; $4b15: $52
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    dec de                                        ; $4b18: $1b
    ld b, $00                                     ; $4b19: $06 $00
    inc de                                        ; $4b1b: $13
    ld bc, $1442                                  ; $4b1c: $01 $42 $14
    ld bc, $153a                                  ; $4b1f: $01 $3a $15
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    ld d, $57                                     ; $4b24: $16 $57
    nop                                           ; $4b26: $00
    ld d, d                                       ; $4b27: $52
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    dec de                                        ; $4b2a: $1b
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    ld e, a                                       ; $4b2d: $5f
    ld bc, $1700                                  ; $4b2e: $01 $00 $17
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    ld e, d                                       ; $4b33: $5a
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    inc de                                        ; $4b36: $13
    ld bc, $7142                                  ; $4b37: $01 $42 $71
    nop                                           ; $4b3a: $00
    ld [$0113], a                                 ; $4b3b: $ea $13 $01
    dec [hl]                                      ; $4b3e: $35
    ld [hl], c                                    ; $4b3f: $71
    ld bc, $1b46                                  ; $4b40: $01 $46 $1b
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    ld e, e                                       ; $4b45: $5b
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    inc de                                        ; $4b48: $13
    ld bc, $1525                                  ; $4b49: $01 $25 $15
    ld bc, $7300                                  ; $4b4c: $01 $00 $73
    ld bc, $1546                                  ; $4b4f: $01 $46 $15
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    inc sp                                        ; $4b54: $33
    ld [bc], a                                    ; $4b55: $02
    and [hl]                                      ; $4b56: $a6
    dec d                                         ; $4b57: $15
    inc l                                         ; $4b58: $2c
    nop                                           ; $4b59: $00
    inc sp                                        ; $4b5a: $33
    ld [bc], a                                    ; $4b5b: $02
    and a                                         ; $4b5c: $a7
    dec d                                         ; $4b5d: $15
    ld b, [hl]                                    ; $4b5e: $46
    nop                                           ; $4b5f: $00
    inc sp                                        ; $4b60: $33
    ld [bc], a                                    ; $4b61: $02
    xor b                                         ; $4b62: $a8
    rla                                           ; $4b63: $17
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    dec de                                        ; $4b66: $1b
    ld [bc], a                                    ; $4b67: $02
    nop                                           ; $4b68: $00
    rla                                           ; $4b69: $17
    add hl, bc                                    ; $4b6a: $09
    nop                                           ; $4b6b: $00
    inc de                                        ; $4b6c: $13
    ld [bc], a                                    ; $4b6d: $02
    nop                                           ; $4b6e: $00
    ld l, [hl]                                    ; $4b6f: $6e
    nop                                           ; $4b70: $00
    jr nz, jr_00e_4bcf                            ; $4b71: $20 $5c

    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    ld e, $05                                     ; $4b75: $1e $05
    nop                                           ; $4b77: $00
    dec d                                         ; $4b78: $15
    ld b, [hl]                                    ; $4b79: $46
    nop                                           ; $4b7a: $00
    inc sp                                        ; $4b7b: $33
    ld [bc], a                                    ; $4b7c: $02
    xor c                                         ; $4b7d: $a9
    rla                                           ; $4b7e: $17
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    ld hl, $0017                                  ; $4b81: $21 $17 $00
    rla                                           ; $4b84: $17
    ld d, a                                       ; $4b85: $57
    nop                                           ; $4b86: $00
    ld e, $57                                     ; $4b87: $1e $57
    nop                                           ; $4b89: $00
    daa                                           ; $4b8a: $27
    nop                                           ; $4b8b: $00
    inc d                                         ; $4b8c: $14
    dec d                                         ; $4b8d: $15
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    inc sp                                        ; $4b90: $33
    ld [bc], a                                    ; $4b91: $02
    xor d                                         ; $4b92: $aa
    rla                                           ; $4b93: $17
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    ld hl, $0018                                  ; $4b96: $21 $18 $00
    rla                                           ; $4b99: $17
    inc a                                         ; $4b9a: $3c
    nop                                           ; $4b9b: $00
    ld hl, $000f                                  ; $4b9c: $21 $0f $00
    daa                                           ; $4b9f: $27
    nop                                           ; $4ba0: $00
    inc d                                         ; $4ba1: $14
    dec d                                         ; $4ba2: $15
    ld d, $00                                     ; $4ba3: $16 $00
    inc sp                                        ; $4ba5: $33
    ld [bc], a                                    ; $4ba6: $02
    xor e                                         ; $4ba7: $ab
    ld hl, $0010                                  ; $4ba8: $21 $10 $00
    rla                                           ; $4bab: $17
    ccf                                           ; $4bac: $3f
    nop                                           ; $4bad: $00
    ld hl, $0011                                  ; $4bae: $21 $11 $00
    daa                                           ; $4bb1: $27
    nop                                           ; $4bb2: $00
    inc d                                         ; $4bb3: $14
    dec d                                         ; $4bb4: $15
    inc l                                         ; $4bb5: $2c
    nop                                           ; $4bb6: $00
    inc sp                                        ; $4bb7: $33
    ld [bc], a                                    ; $4bb8: $02
    xor h                                         ; $4bb9: $ac
    ld hl, $0012                                  ; $4bba: $21 $12 $00
    daa                                           ; $4bbd: $27
    nop                                           ; $4bbe: $00
    ld [de], a                                    ; $4bbf: $12
    ld hl, $0013                                  ; $4bc0: $21 $13 $00
    daa                                           ; $4bc3: $27
    nop                                           ; $4bc4: $00
    dec l                                         ; $4bc5: $2d
    ld hl, $0014                                  ; $4bc6: $21 $14 $00
    inc de                                        ; $4bc9: $13
    nop                                           ; $4bca: $00
    ld bc, $006e                                  ; $4bcb: $01 $6e $00
    ld b, [hl]                                    ; $4bce: $46

jr_00e_4bcf:
    dec d                                         ; $4bcf: $15
    ld b, [hl]                                    ; $4bd0: $46
    nop                                           ; $4bd1: $00
    inc sp                                        ; $4bd2: $33
    ld [bc], a                                    ; $4bd3: $02
    xor l                                         ; $4bd4: $ad
    ld hl, $001b                                  ; $4bd5: $21 $1b $00
    ld e, [hl]                                    ; $4bd8: $5e
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    inc de                                        ; $4bdb: $13
    inc b                                         ; $4bdc: $04
    ld [bc], a                                    ; $4bdd: $02
    ld l, [hl]                                    ; $4bde: $6e
    nop                                           ; $4bdf: $00
    ld c, h                                       ; $4be0: $4c
    daa                                           ; $4be1: $27
    nop                                           ; $4be2: $00
    ld a, [bc]                                    ; $4be3: $0a
    ld e, a                                       ; $4be4: $5f
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    ld e, [hl]                                    ; $4be7: $5e
    ld bc, $2100                                  ; $4be8: $01 $00 $21
    inc e                                         ; $4beb: $1c
    nop                                           ; $4bec: $00
    ld e, a                                       ; $4bed: $5f
    ld bc, $2700                                  ; $4bee: $01 $00 $27
    nop                                           ; $4bf1: $00
    ld a, [bc]                                    ; $4bf2: $0a
    dec d                                         ; $4bf3: $15
    inc l                                         ; $4bf4: $2c
    nop                                           ; $4bf5: $00
    inc sp                                        ; $4bf6: $33
    ld [bc], a                                    ; $4bf7: $02
    xor [hl]                                      ; $4bf8: $ae
    rla                                           ; $4bf9: $17
    ld c, e                                       ; $4bfa: $4b
    nop                                           ; $4bfb: $00
    dec d                                         ; $4bfc: $15
    ld b, $00                                     ; $4bfd: $06 $00
    add hl, de                                    ; $4bff: $19
    nop                                           ; $4c00: $00
    ld b, c                                       ; $4c01: $41
    dec de                                        ; $4c02: $1b
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    daa                                           ; $4c05: $27
    nop                                           ; $4c06: $00
    ld a, [bc]                                    ; $4c07: $0a
    ld hl, $001f                                  ; $4c08: $21 $1f $00
    daa                                           ; $4c0b: $27
    nop                                           ; $4c0c: $00
    ld a, [bc]                                    ; $4c0d: $0a
    dec d                                         ; $4c0e: $15
    ld b, [hl]                                    ; $4c0f: $46
    nop                                           ; $4c10: $00
    inc sp                                        ; $4c11: $33
    ld [bc], a                                    ; $4c12: $02
    xor a                                         ; $4c13: $af
    rla                                           ; $4c14: $17
    ccf                                           ; $4c15: $3f
    nop                                           ; $4c16: $00
    ld e, a                                       ; $4c17: $5f
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    inc de                                        ; $4c1a: $13
    ld bc, $581a                                  ; $4c1b: $01 $1a $58
    ld bc, $214f                                  ; $4c1e: $01 $4f $21
    dec e                                         ; $4c21: $1d
    nop                                           ; $4c22: $00
    ld e, a                                       ; $4c23: $5f
    ld bc, $1700                                  ; $4c24: $01 $00 $17
    ld c, e                                       ; $4c27: $4b
    nop                                           ; $4c28: $00
    dec de                                        ; $4c29: $1b
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    daa                                           ; $4c2c: $27
    nop                                           ; $4c2d: $00
    ld a, [bc]                                    ; $4c2e: $0a
    inc de                                        ; $4c2f: $13
    ld bc, $144f                                  ; $4c30: $01 $4f $14
    ld bc, $1518                                  ; $4c33: $01 $18 $15
    ld [hl-], a                                   ; $4c36: $32
    nop                                           ; $4c37: $00
    ld d, $08                                     ; $4c38: $16 $08
    nop                                           ; $4c3a: $00
    rla                                           ; $4c3b: $17
    ccf                                           ; $4c3c: $3f
    nop                                           ; $4c3d: $00
    dec de                                        ; $4c3e: $1b
    ld [$2100], sp                                ; $4c3f: $08 $00 $21
    ld e, $00                                     ; $4c42: $1e $00
    inc de                                        ; $4c44: $13
    ld b, $00                                     ; $4c45: $06 $00
    ld l, [hl]                                    ; $4c47: $6e
    nop                                           ; $4c48: $00
    ld a, [bc]                                    ; $4c49: $0a
    ld e, [hl]                                    ; $4c4a: $5e
    nop                                           ; $4c4b: $00
    nop                                           ; $4c4c: $00
    inc de                                        ; $4c4d: $13
    ld b, $00                                     ; $4c4e: $06 $00
    ld l, [hl]                                    ; $4c50: $6e
    nop                                           ; $4c51: $00
    ld d, b                                       ; $4c52: $50
    rla                                           ; $4c53: $17
    ld c, e                                       ; $4c54: $4b
    nop                                           ; $4c55: $00
    ld e, [hl]                                    ; $4c56: $5e
    ld bc, $1500                                  ; $4c57: $01 $00 $15
    ld b, $00                                     ; $4c5a: $06 $00
    add hl, de                                    ; $4c5c: $19
    nop                                           ; $4c5d: $00
    ld d, b                                       ; $4c5e: $50
    rla                                           ; $4c5f: $17
    ccf                                           ; $4c60: $3f
    nop                                           ; $4c61: $00
    ld e, $3f                                     ; $4c62: $1e $3f
    nop                                           ; $4c64: $00
    rla                                           ; $4c65: $17
    ld c, e                                       ; $4c66: $4b
    nop                                           ; $4c67: $00
    ld e, $4b                                     ; $4c68: $1e $4b
    nop                                           ; $4c6a: $00
    dec d                                         ; $4c6b: $15
    ld d, $00                                     ; $4c6c: $16 $00
    inc sp                                        ; $4c6e: $33
    ld [bc], a                                    ; $4c6f: $02
    or b                                          ; $4c70: $b0
    dec d                                         ; $4c71: $15
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    inc sp                                        ; $4c74: $33
    ld [bc], a                                    ; $4c75: $02
    or c                                          ; $4c76: $b1
    rla                                           ; $4c77: $17
    inc a                                         ; $4c78: $3c
    nop                                           ; $4c79: $00
    dec de                                        ; $4c7a: $1b
    ld [$2700], sp                                ; $4c7b: $08 $00 $27
    nop                                           ; $4c7e: $00
    inc d                                         ; $4c7f: $14
    dec d                                         ; $4c80: $15
    ld d, $00                                     ; $4c81: $16 $00
    inc sp                                        ; $4c83: $33
    ld [bc], a                                    ; $4c84: $02
    or d                                          ; $4c85: $b2
    rla                                           ; $4c86: $17
    inc a                                         ; $4c87: $3c
    nop                                           ; $4c88: $00
    ld hl, $0029                                  ; $4c89: $21 $29 $00
    rla                                           ; $4c8c: $17
    ld [$1e00], sp                                ; $4c8d: $08 $00 $1e
    ld [$2700], sp                                ; $4c90: $08 $00 $27
    nop                                           ; $4c93: $00
    ld a, [bc]                                    ; $4c94: $0a
    dec d                                         ; $4c95: $15
    ld d, $00                                     ; $4c96: $16 $00
    inc sp                                        ; $4c98: $33
    ld [bc], a                                    ; $4c99: $02
    or e                                          ; $4c9a: $b3
    rla                                           ; $4c9b: $17
    inc a                                         ; $4c9c: $3c
    nop                                           ; $4c9d: $00
    ld hl, $002a                                  ; $4c9e: $21 $2a $00
    dec d                                         ; $4ca1: $15
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    inc sp                                        ; $4ca4: $33
    ld [bc], a                                    ; $4ca5: $02
    or h                                          ; $4ca6: $b4
    dec d                                         ; $4ca7: $15
    ld d, $00                                     ; $4ca8: $16 $00
    inc sp                                        ; $4caa: $33
    ld [bc], a                                    ; $4cab: $02
    or l                                          ; $4cac: $b5
    dec de                                        ; $4cad: $1b
    add hl, bc                                    ; $4cae: $09
    nop                                           ; $4caf: $00
    ld hl, $0020                                  ; $4cb0: $21 $20 $00
    inc de                                        ; $4cb3: $13
    ld bc, $6e01                                  ; $4cb4: $01 $01 $6e
    nop                                           ; $4cb7: $00
    ld h, h                                       ; $4cb8: $64
    rla                                           ; $4cb9: $17
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    inc [hl]                                      ; $4cbc: $34
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    ld e, d                                       ; $4cbf: $5a
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    ld hl, $0021                                  ; $4cc2: $21 $21 $00
    inc de                                        ; $4cc5: $13
    ld bc, $6e01                                  ; $4cc6: $01 $01 $6e
    nop                                           ; $4cc9: $00
    ld a, [hl]                                    ; $4cca: $7e
    ld h, d                                       ; $4ccb: $62
    inc de                                        ; $4ccc: $13
    nop                                           ; $4ccd: $00
    ld d, l                                       ; $4cce: $55
    inc bc                                        ; $4ccf: $03
    nop                                           ; $4cd0: $00
    ld e, a                                       ; $4cd1: $5f
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    ld d, [hl]                                    ; $4cd4: $56
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    inc de                                        ; $4cd7: $13
    ld bc, $6825                                  ; $4cd8: $01 $25 $68
    ld bc, $174a                                  ; $4cdb: $01 $4a $17
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    ld e, c                                       ; $4ce0: $59
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    ld e, d                                       ; $4ce3: $5a
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    inc [hl]                                      ; $4ce6: $34
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    inc de                                        ; $4ce9: $13
    nop                                           ; $4cea: $00
    rst $10                                       ; $4ceb: $d7
    ld e, b                                       ; $4cec: $58
    nop                                           ; $4ced: $00
    push af                                       ; $4cee: $f5
    inc de                                        ; $4cef: $13
    ld bc, $1478                                  ; $4cf0: $01 $78 $14
    ld bc, $1545                                  ; $4cf3: $01 $45 $15
    nop                                           ; $4cf6: $00
    nop                                           ; $4cf7: $00
    ld d, $39                                     ; $4cf8: $16 $39
    nop                                           ; $4cfa: $00
    dec de                                        ; $4cfb: $1b
    ld b, $00                                     ; $4cfc: $06 $00
    inc de                                        ; $4cfe: $13
    ld bc, $1466                                  ; $4cff: $01 $66 $14
    ld bc, $1509                                  ; $4d02: $01 $09 $15
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    ld d, $38                                     ; $4d07: $16 $38
    nop                                           ; $4d09: $00
    ld e, d                                       ; $4d0a: $5a
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    ld d, d                                       ; $4d0d: $52
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    dec de                                        ; $4d10: $1b
    inc b                                         ; $4d11: $04
    nop                                           ; $4d12: $00
    inc de                                        ; $4d13: $13
    ld bc, $1427                                  ; $4d14: $01 $27 $14
    ld bc, $1545                                  ; $4d17: $01 $45 $15
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    ld d, $36                                     ; $4d1c: $16 $36
    nop                                           ; $4d1e: $00
    ld d, d                                       ; $4d1f: $52
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    dec de                                        ; $4d22: $1b
    ld [bc], a                                    ; $4d23: $02
    nop                                           ; $4d24: $00
    inc de                                        ; $4d25: $13
    ld bc, $1484                                  ; $4d26: $01 $84 $14
    ld bc, $1520                                  ; $4d29: $01 $20 $15
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    ld d, $37                                     ; $4d2e: $16 $37
    nop                                           ; $4d30: $00
    ld e, d                                       ; $4d31: $5a
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    dec de                                        ; $4d34: $1b
    ld b, $00                                     ; $4d35: $06 $00
    inc de                                        ; $4d37: $13
    ld bc, $144b                                  ; $4d38: $01 $4b $14
    ld bc, $1509                                  ; $4d3b: $01 $09 $15
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    ld d, $4b                                     ; $4d40: $16 $4b
    nop                                           ; $4d42: $00
    ld d, d                                       ; $4d43: $52
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    dec de                                        ; $4d46: $1b
    inc b                                         ; $4d47: $04
    nop                                           ; $4d48: $00
    ld e, a                                       ; $4d49: $5f
    ld bc, $1700                                  ; $4d4a: $01 $00 $17
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    ld hl, $0021                                  ; $4d4f: $21 $21 $00
    inc de                                        ; $4d52: $13
    inc bc                                        ; $4d53: $03
    ld bc, $006e                                  ; $4d54: $01 $6e $00
    ld a, [hl]                                    ; $4d57: $7e
    dec de                                        ; $4d58: $1b
    ld [bc], a                                    ; $4d59: $02
    nop                                           ; $4d5a: $00
    dec d                                         ; $4d5b: $15
    dec d                                         ; $4d5c: $15
    nop                                           ; $4d5d: $00
    inc sp                                        ; $4d5e: $33
    ld [bc], a                                    ; $4d5f: $02
    or [hl]                                       ; $4d60: $b6
    dec d                                         ; $4d61: $15
    add hl, de                                    ; $4d62: $19
    nop                                           ; $4d63: $00
    inc sp                                        ; $4d64: $33
    ld [bc], a                                    ; $4d65: $02
    or a                                          ; $4d66: $b7
    dec de                                        ; $4d67: $1b
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    dec d                                         ; $4d6a: $15
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    inc sp                                        ; $4d6d: $33
    ld [bc], a                                    ; $4d6e: $02
    cp b                                          ; $4d6f: $b8
    dec d                                         ; $4d70: $15
    inc l                                         ; $4d71: $2c
    nop                                           ; $4d72: $00
    inc sp                                        ; $4d73: $33
    ld [bc], a                                    ; $4d74: $02
    cp c                                          ; $4d75: $b9
    dec d                                         ; $4d76: $15
    nop                                           ; $4d77: $00
    nop                                           ; $4d78: $00
    inc sp                                        ; $4d79: $33
    add hl, bc                                    ; $4d7a: $09
    ld d, l                                       ; $4d7b: $55
    dec d                                         ; $4d7c: $15
    inc l                                         ; $4d7d: $2c
    nop                                           ; $4d7e: $00
    inc sp                                        ; $4d7f: $33
    add hl, bc                                    ; $4d80: $09
    ld d, [hl]                                    ; $4d81: $56
    jr c, @+$6a                                   ; $4d82: $38 $68

    nop                                           ; $4d84: $00
    dec d                                         ; $4d85: $15
    ld b, [hl]                                    ; $4d86: $46
    nop                                           ; $4d87: $00
    inc sp                                        ; $4d88: $33
    ld [bc], a                                    ; $4d89: $02
    cp d                                          ; $4d8a: $ba
    dec d                                         ; $4d8b: $15
    nop                                           ; $4d8c: $00
    nop                                           ; $4d8d: $00
    inc sp                                        ; $4d8e: $33
    ld [bc], a                                    ; $4d8f: $02
    cp e                                          ; $4d90: $bb
    dec d                                         ; $4d91: $15
    ld b, [hl]                                    ; $4d92: $46
    nop                                           ; $4d93: $00
    inc sp                                        ; $4d94: $33
    ld [bc], a                                    ; $4d95: $02
    cp h                                          ; $4d96: $bc
    ld e, [hl]                                    ; $4d97: $5e
    nop                                           ; $4d98: $00
    nop                                           ; $4d99: $00
    rla                                           ; $4d9a: $17
    scf                                           ; $4d9b: $37
    nop                                           ; $4d9c: $00
    dec d                                         ; $4d9d: $15
    dec b                                         ; $4d9e: $05
    nop                                           ; $4d9f: $00
    add hl, de                                    ; $4da0: $19
    nop                                           ; $4da1: $00
    inc d                                         ; $4da2: $14
    rla                                           ; $4da3: $17
    jr c, jr_00e_4da6                             ; $4da4: $38 $00

jr_00e_4da6:
    dec d                                         ; $4da6: $15
    dec b                                         ; $4da7: $05
    nop                                           ; $4da8: $00
    add hl, de                                    ; $4da9: $19
    nop                                           ; $4daa: $00
    inc d                                         ; $4dab: $14
    rla                                           ; $4dac: $17
    add hl, sp                                    ; $4dad: $39
    nop                                           ; $4dae: $00
    dec d                                         ; $4daf: $15
    ld b, $00                                     ; $4db0: $06 $00
    add hl, de                                    ; $4db2: $19
    nop                                           ; $4db3: $00
    add h                                         ; $4db4: $84
    rla                                           ; $4db5: $17
    ld [hl], $00                                  ; $4db6: $36 $00
    ld e, [hl]                                    ; $4db8: $5e
    ld bc, $1500                                  ; $4db9: $01 $00 $15
    ld b, $00                                     ; $4dbc: $06 $00
    add hl, de                                    ; $4dbe: $19
    nop                                           ; $4dbf: $00
    inc d                                         ; $4dc0: $14
    ld e, a                                       ; $4dc1: $5f
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    ld e, [hl]                                    ; $4dc4: $5e
    nop                                           ; $4dc5: $00
    nop                                           ; $4dc6: $00
    rla                                           ; $4dc7: $17
    scf                                           ; $4dc8: $37
    nop                                           ; $4dc9: $00
    dec d                                         ; $4dca: $15
    ld b, $00                                     ; $4dcb: $06 $00
    add hl, de                                    ; $4dcd: $19
    nop                                           ; $4dce: $00
    ld e, $17                                     ; $4dcf: $1e $17
    jr c, jr_00e_4dd3                             ; $4dd1: $38 $00

jr_00e_4dd3:
    dec d                                         ; $4dd3: $15
    ld b, $00                                     ; $4dd4: $06 $00
    add hl, de                                    ; $4dd6: $19
    nop                                           ; $4dd7: $00
    ld e, $17                                     ; $4dd8: $1e $17
    ld [hl], $00                                  ; $4dda: $36 $00
    ld e, a                                       ; $4ddc: $5f
    ld bc, $5e00                                  ; $4ddd: $01 $00 $5e
    ld bc, $1500                                  ; $4de0: $01 $00 $15
    ld b, $00                                     ; $4de3: $06 $00
    add hl, de                                    ; $4de5: $19
    nop                                           ; $4de6: $00
    ld e, $5f                                     ; $4de7: $1e $5f
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    ld e, $0e                                     ; $4deb: $1e $0e
    nop                                           ; $4ded: $00
    ld e, [hl]                                    ; $4dee: $5e
    nop                                           ; $4def: $00
    nop                                           ; $4df0: $00
    rla                                           ; $4df1: $17
    jr c, jr_00e_4df4                             ; $4df2: $38 $00

jr_00e_4df4:
    dec d                                         ; $4df4: $15
    dec b                                         ; $4df5: $05
    nop                                           ; $4df6: $00
    add hl, de                                    ; $4df7: $19
    nop                                           ; $4df8: $00
    ld e, $17                                     ; $4df9: $1e $17
    scf                                           ; $4dfb: $37
    nop                                           ; $4dfc: $00
    ld e, [hl]                                    ; $4dfd: $5e
    ld bc, $5f00                                  ; $4dfe: $01 $00 $5f
    ld bc, $1500                                  ; $4e01: $01 $00 $15
    dec b                                         ; $4e04: $05
    nop                                           ; $4e05: $00
    add hl, de                                    ; $4e06: $19
    nop                                           ; $4e07: $00
    ld e, $5f                                     ; $4e08: $1e $5f
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    rla                                           ; $4e0c: $17
    jr c, jr_00e_4e0f                             ; $4e0d: $38 $00

jr_00e_4e0f:
    dec de                                        ; $4e0f: $1b
    ld b, $00                                     ; $4e10: $06 $00
    rla                                           ; $4e12: $17
    scf                                           ; $4e13: $37
    nop                                           ; $4e14: $00
    ld e, a                                       ; $4e15: $5f
    ld bc, $1500                                  ; $4e16: $01 $00 $15
    ld b, $00                                     ; $4e19: $06 $00
    add hl, de                                    ; $4e1b: $19
    nop                                           ; $4e1c: $00
    ld b, b                                       ; $4e1d: $40
    ld e, a                                       ; $4e1e: $5f
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    rla                                           ; $4e21: $17
    add hl, sp                                    ; $4e22: $39
    nop                                           ; $4e23: $00
    ld e, $1a                                     ; $4e24: $1e $1a
    nop                                           ; $4e26: $00
    rla                                           ; $4e27: $17
    scf                                           ; $4e28: $37
    nop                                           ; $4e29: $00
    ld e, $19                                     ; $4e2a: $1e $19
    nop                                           ; $4e2c: $00
    rla                                           ; $4e2d: $17
    jr c, jr_00e_4e30                             ; $4e2e: $38 $00

jr_00e_4e30:
    ld e, a                                       ; $4e30: $5f
    ld bc, $1500                                  ; $4e31: $01 $00 $15
    dec b                                         ; $4e34: $05
    nop                                           ; $4e35: $00
    add hl, de                                    ; $4e36: $19
    nop                                           ; $4e37: $00
    inc d                                         ; $4e38: $14
    dec d                                         ; $4e39: $15
    ld b, $00                                     ; $4e3a: $06 $00
    add hl, de                                    ; $4e3c: $19
    nop                                           ; $4e3d: $00
    db $10                                        ; $4e3e: $10
    ld e, $14                                     ; $4e3f: $1e $14
    nop                                           ; $4e41: $00
    rla                                           ; $4e42: $17
    nop                                           ; $4e43: $00
    nop                                           ; $4e44: $00
    ld e, e                                       ; $4e45: $5b
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    ld [hl], $00                                  ; $4e48: $36 $00
    nop                                           ; $4e4a: $00
    ld e, l                                       ; $4e4b: $5d
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    rrca                                          ; $4e4e: $0f
    ld d, h                                       ; $4e4f: $54
    ld bc, $290f                                  ; $4e50: $01 $0f $29
    ld bc, $0b2c                                  ; $4e53: $01 $2c $0b
    ld bc, $3511                                  ; $4e56: $01 $11 $35
    ld bc, $3509                                  ; $4e59: $01 $09 $35
    ld b, $05                                     ; $4e5c: $06 $05
    inc c                                         ; $4e5e: $0c
    nop                                           ; $4e5f: $00
    rla                                           ; $4e60: $17
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    ld e, e                                       ; $4e63: $5b
    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    ld [hl], $00                                  ; $4e66: $36 $00
    nop                                           ; $4e68: $00
    ld e, l                                       ; $4e69: $5d
    nop                                           ; $4e6a: $00
    nop                                           ; $4e6b: $00
    ld h, d                                       ; $4e6c: $62
    dec h                                         ; $4e6d: $25
    nop                                           ; $4e6e: $00
    add hl, sp                                    ; $4e6f: $39
    inc h                                         ; $4e70: $24
    ld bc, $4615                                  ; $4e71: $01 $15 $46
    nop                                           ; $4e74: $00
    inc sp                                        ; $4e75: $33
    inc bc                                        ; $4e76: $03
    jp nz, $0057                                  ; $4e77: $c2 $57 $00

    nop                                           ; $4e7a: $00
    jr z, jr_00e_4ed3                             ; $4e7b: $28 $56

    nop                                           ; $4e7d: $00
    inc bc                                        ; $4e7e: $03
    inc bc                                        ; $4e7f: $03
    nop                                           ; $4e80: $00
    ld h, d                                       ; $4e81: $62
    ld d, e                                       ; $4e82: $53
    nop                                           ; $4e83: $00
    ld d, a                                       ; $4e84: $57
    nop                                           ; $4e85: $00
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    nop                                           ; $4e88: $00
    nop                                           ; $4e89: $00
    ld e, a                                       ; $4e8a: $5f
    ld bc, $0000                                  ; $4e8b: $01 $00 $00
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    add hl, bc                                    ; $4e90: $09
    nop                                           ; $4e91: $00
    dec bc                                        ; $4e92: $0b
    dec b                                         ; $4e93: $05
    ld b, $00                                     ; $4e94: $06 $00
    dec d                                         ; $4e96: $15
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    inc sp                                        ; $4e99: $33
    inc bc                                        ; $4e9a: $03
    ld [hl], c                                    ; $4e9b: $71
    dec d                                         ; $4e9c: $15
    ld b, [hl]                                    ; $4e9d: $46
    nop                                           ; $4e9e: $00
    inc sp                                        ; $4e9f: $33
    inc bc                                        ; $4ea0: $03
    add h                                         ; $4ea1: $84
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00
    add hl, bc                                    ; $4ea5: $09
    add hl, hl                                    ; $4ea6: $29
    ld bc, $0204                                  ; $4ea7: $01 $04 $02
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    nop                                           ; $4ead: $00
    add hl, bc                                    ; $4eae: $09
    nop                                           ; $4eaf: $00
    ld b, c                                       ; $4eb0: $41
    dec b                                         ; $4eb1: $05
    ld [bc], a                                    ; $4eb2: $02
    nop                                           ; $4eb3: $00
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    nop                                           ; $4eb6: $00
    ld e, a                                       ; $4eb7: $5f
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    ld d, [hl]                                    ; $4eba: $56
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    rla                                           ; $4ebd: $17
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    inc e                                         ; $4ec0: $1c
    ld c, e                                       ; $4ec1: $4b
    nop                                           ; $4ec2: $00
    ld e, a                                       ; $4ec3: $5f
    ld bc, $1500                                  ; $4ec4: $01 $00 $15
    ld b, [hl]                                    ; $4ec7: $46
    nop                                           ; $4ec8: $00
    inc sp                                        ; $4ec9: $33
    ld a, [bc]                                    ; $4eca: $0a
    dec bc                                        ; $4ecb: $0b
    ld d, l                                       ; $4ecc: $55
    inc c                                         ; $4ecd: $0c
    nop                                           ; $4ece: $00
    ld e, a                                       ; $4ecf: $5f
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    ld d, [hl]                                    ; $4ed2: $56

jr_00e_4ed3:
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00
    rla                                           ; $4ed5: $17
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    inc e                                         ; $4ed8: $1c
    ld c, e                                       ; $4ed9: $4b
    nop                                           ; $4eda: $00
    ld e, a                                       ; $4edb: $5f
    ld bc, $1500                                  ; $4edc: $01 $00 $15
    ld b, [hl]                                    ; $4edf: $46
    nop                                           ; $4ee0: $00
    inc sp                                        ; $4ee1: $33
    ld a, [bc]                                    ; $4ee2: $0a
    inc c                                         ; $4ee3: $0c
    add hl, bc                                    ; $4ee4: $09
    ld b, d                                       ; $4ee5: $42
    ld bc, $0305                                  ; $4ee6: $01 $05 $03
    nop                                           ; $4ee9: $00
    ld d, a                                       ; $4eea: $57
    nop                                           ; $4eeb: $00
    nop                                           ; $4eec: $00
    nop                                           ; $4eed: $00
    nop                                           ; $4eee: $00
    nop                                           ; $4eef: $00
    dec d                                         ; $4ef0: $15
    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    ld b, c                                       ; $4ef3: $41
    nop                                           ; $4ef4: $00
    ld a, [bc]                                    ; $4ef5: $0a
    inc l                                         ; $4ef6: $2c
    dec c                                         ; $4ef7: $0d
    ld [bc], a                                    ; $4ef8: $02
    rrca                                          ; $4ef9: $0f
    ld b, d                                       ; $4efa: $42
    ld bc, $0057                                  ; $4efb: $01 $57 $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    ld e, a                                       ; $4f02: $5f
    nop                                           ; $4f03: $00
    nop                                           ; $4f04: $00
    add hl, bc                                    ; $4f05: $09
    nop                                           ; $4f06: $00
    ld b, c                                       ; $4f07: $41
    dec b                                         ; $4f08: $05
    inc bc                                        ; $4f09: $03
    nop                                           ; $4f0a: $00
    ld e, a                                       ; $4f0b: $5f
    ld bc, $0000                                  ; $4f0c: $01 $00 $00
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    add hl, bc                                    ; $4f11: $09
    nop                                           ; $4f12: $00
    dec bc                                        ; $4f13: $0b
    dec b                                         ; $4f14: $05
    add hl, bc                                    ; $4f15: $09
    nop                                           ; $4f16: $00
    inc de                                        ; $4f17: $13
    ld bc, $144b                                  ; $4f18: $01 $4b $14
    ld bc, $1509                                  ; $4f1b: $01 $09 $15
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    ld d, $4b                                     ; $4f20: $16 $4b
    nop                                           ; $4f22: $00
    ld d, d                                       ; $4f23: $52
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    dec de                                        ; $4f26: $1b
    inc b                                         ; $4f27: $04
    nop                                           ; $4f28: $00
    ld e, a                                       ; $4f29: $5f
    ld bc, $0000                                  ; $4f2a: $01 $00 $00
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    add hl, bc                                    ; $4f2f: $09
    nop                                           ; $4f30: $00
    ld d, e                                       ; $4f31: $53
    inc b                                         ; $4f32: $04
    dec c                                         ; $4f33: $0d
    nop                                           ; $4f34: $00
    add hl, bc                                    ; $4f35: $09
    add hl, hl                                    ; $4f36: $29
    ld bc, $0905                                  ; $4f37: $01 $05 $09
    nop                                           ; $4f3a: $00
    inc de                                        ; $4f3b: $13
    ld bc, $144b                                  ; $4f3c: $01 $4b $14
    ld bc, $1509                                  ; $4f3f: $01 $09 $15
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    ld d, $4b                                     ; $4f44: $16 $4b
    nop                                           ; $4f46: $00
    ld d, d                                       ; $4f47: $52
    nop                                           ; $4f48: $00
    nop                                           ; $4f49: $00
    dec de                                        ; $4f4a: $1b
    inc b                                         ; $4f4b: $04
    nop                                           ; $4f4c: $00
    ld e, a                                       ; $4f4d: $5f
    ld bc, $0000                                  ; $4f4e: $01 $00 $00
    nop                                           ; $4f51: $00
    nop                                           ; $4f52: $00
    ld e, a                                       ; $4f53: $5f
    ld bc, $0000                                  ; $4f54: $01 $00 $00
    nop                                           ; $4f57: $00
    nop                                           ; $4f58: $00
    add hl, bc                                    ; $4f59: $09
    add hl, hl                                    ; $4f5a: $29
    ld bc, $0905                                  ; $4f5b: $01 $05 $09
    nop                                           ; $4f5e: $00
    inc de                                        ; $4f5f: $13
    ld bc, $144b                                  ; $4f60: $01 $4b $14
    ld bc, $1509                                  ; $4f63: $01 $09 $15
    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    ld d, $4b                                     ; $4f68: $16 $4b
    nop                                           ; $4f6a: $00
    ld d, d                                       ; $4f6b: $52
    nop                                           ; $4f6c: $00
    nop                                           ; $4f6d: $00
    dec de                                        ; $4f6e: $1b
    inc b                                         ; $4f6f: $04
    nop                                           ; $4f70: $00
    ld e, a                                       ; $4f71: $5f
    ld bc, $0000                                  ; $4f72: $01 $00 $00
    nop                                           ; $4f75: $00
    nop                                           ; $4f76: $00
    nop                                           ; $4f77: $00
    nop                                           ; $4f78: $00
    nop                                           ; $4f79: $00
    inc b                                         ; $4f7a: $04
    nop                                           ; $4f7b: $00
    nop                                           ; $4f7c: $00
    nop                                           ; $4f7d: $00
    dec l                                         ; $4f7e: $2d
    nop                                           ; $4f7f: $00
    sub b                                         ; $4f80: $90
    nop                                           ; $4f81: $00
    xor b                                         ; $4f82: $a8
    ld e, a                                       ; $4f83: $5f
    nop                                           ; $4f84: $00
    nop                                           ; $4f85: $00
    add hl, bc                                    ; $4f86: $09
    nop                                           ; $4f87: $00
    dec c                                         ; $4f88: $0d
    dec b                                         ; $4f89: $05
    dec bc                                        ; $4f8a: $0b
    nop                                           ; $4f8b: $00
    ld d, [hl]                                    ; $4f8c: $56
    nop                                           ; $4f8d: $00
    nop                                           ; $4f8e: $00
    ld e, a                                       ; $4f8f: $5f
    ld bc, $1500                                  ; $4f90: $01 $00 $15
    nop                                           ; $4f93: $00
    nop                                           ; $4f94: $00
    inc sp                                        ; $4f95: $33
    ld [bc], a                                    ; $4f96: $02
    pop de                                        ; $4f97: $d1
    dec d                                         ; $4f98: $15
    ld a, [hl+]                                   ; $4f99: $2a
    nop                                           ; $4f9a: $00
    inc sp                                        ; $4f9b: $33
    ld [bc], a                                    ; $4f9c: $02
    jp nc, $2b15                                  ; $4f9d: $d2 $15 $2b

    nop                                           ; $4fa0: $00
    inc sp                                        ; $4fa1: $33
    ld [bc], a                                    ; $4fa2: $02
    db $d3                                        ; $4fa3: $d3
    ld d, a                                       ; $4fa4: $57
    nop                                           ; $4fa5: $00
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    nop                                           ; $4fa8: $00
    nop                                           ; $4fa9: $00
    ld e, a                                       ; $4faa: $5f
    ld bc, $0000                                  ; $4fab: $01 $00 $00
    nop                                           ; $4fae: $00
    nop                                           ; $4faf: $00
    ld e, a                                       ; $4fb0: $5f
    nop                                           ; $4fb1: $00
    nop                                           ; $4fb2: $00
    add hl, bc                                    ; $4fb3: $09
    nop                                           ; $4fb4: $00
    dec c                                         ; $4fb5: $0d
    dec b                                         ; $4fb6: $05
    dec e                                         ; $4fb7: $1d
    nop                                           ; $4fb8: $00
    add hl, bc                                    ; $4fb9: $09
    ld c, $01                                     ; $4fba: $0e $01
    dec b                                         ; $4fbc: $05
    inc bc                                        ; $4fbd: $03
    nop                                           ; $4fbe: $00
    ld e, a                                       ; $4fbf: $5f
    ld bc, $0000                                  ; $4fc0: $01 $00 $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    ld d, [hl]                                    ; $4fc5: $56
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    ld e, a                                       ; $4fc8: $5f
    ld bc, $1500                                  ; $4fc9: $01 $00 $15
    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00
    inc sp                                        ; $4fce: $33
    ld [bc], a                                    ; $4fcf: $02
    ldh [$6c], a                                  ; $4fd0: $e0 $6c
    ld bc, $0900                                  ; $4fd2: $01 $00 $09
    cp $00                                        ; $4fd5: $fe $00
    dec b                                         ; $4fd7: $05
    dec bc                                        ; $4fd8: $0b
    nop                                           ; $4fd9: $00
    dec d                                         ; $4fda: $15
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    inc sp                                        ; $4fdd: $33
    ld [bc], a                                    ; $4fde: $02
    pop hl                                        ; $4fdf: $e1
    jr c, jr_00e_5026                             ; $4fe0: $38 $44

    nop                                           ; $4fe2: $00
    ld b, h                                       ; $4fe3: $44
    nop                                           ; $4fe4: $00
    dec b                                         ; $4fe5: $05
    dec d                                         ; $4fe6: $15
    nop                                           ; $4fe7: $00
    nop                                           ; $4fe8: $00
    inc sp                                        ; $4fe9: $33
    ld [bc], a                                    ; $4fea: $02
    ld [c], a                                     ; $4feb: $e2
    rrca                                          ; $4fec: $0f
    ld c, $01                                     ; $4fed: $0e $01
    ld d, a                                       ; $4fef: $57
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    inc bc                                        ; $4ff5: $03
    rlca                                          ; $4ff6: $07
    nop                                           ; $4ff7: $00
    jr c, jr_00e_503e                             ; $4ff8: $38 $44

    nop                                           ; $4ffa: $00
    dec d                                         ; $4ffb: $15
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    inc sp                                        ; $4ffe: $33
    ld [bc], a                                    ; $4fff: $02
    ld [c], a                                     ; $5000: $e2
    rrca                                          ; $5001: $0f
    ld c, $01                                     ; $5002: $0e $01
    ld d, a                                       ; $5004: $57
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    nop                                           ; $500a: $00
    nop                                           ; $500b: $00
    nop                                           ; $500c: $00
    ld e, a                                       ; $500d: $5f
    ld bc, $0000                                  ; $500e: $01 $00 $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    add hl, bc                                    ; $5013: $09
    nop                                           ; $5014: $00
    ccf                                           ; $5015: $3f
    dec b                                         ; $5016: $05
    ld b, $00                                     ; $5017: $06 $00
    rrca                                          ; $5019: $0f
    ld a, [$0f00]                                 ; $501a: $fa $00 $0f
    ld d, $01                                     ; $501d: $16 $01
    ld l, $08                                     ; $501f: $2e $08
    nop                                           ; $5021: $00
    dec [hl]                                      ; $5022: $35
    ld b, $00                                     ; $5023: $06 $00
    nop                                           ; $5025: $00

jr_00e_5026:
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    ld e, a                                       ; $502b: $5f
    nop                                           ; $502c: $00
    nop                                           ; $502d: $00
    add hl, bc                                    ; $502e: $09
    nop                                           ; $502f: $00
    ccf                                           ; $5030: $3f
    dec b                                         ; $5031: $05
    dec e                                         ; $5032: $1d
    nop                                           ; $5033: $00
    add hl, bc                                    ; $5034: $09
    ld d, $01                                     ; $5035: $16 $01
    dec b                                         ; $5037: $05
    ld [$5600], sp                                ; $5038: $08 $00 $56
    nop                                           ; $503b: $00
    nop                                           ; $503c: $00
    ld e, a                                       ; $503d: $5f

jr_00e_503e:
    ld bc, $0900                                  ; $503e: $01 $00 $09
    ld a, [$0501]                                 ; $5041: $fa $01 $05
    inc b                                         ; $5044: $04
    nop                                           ; $5045: $00
    jr c, @+$5f                                   ; $5046: $38 $5d

    nop                                           ; $5048: $00
    rrca                                          ; $5049: $0f
    ld a, [$5700]                                 ; $504a: $fa $00 $57
    nop                                           ; $504d: $00
    nop                                           ; $504e: $00
    ld e, a                                       ; $504f: $5f
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    inc de                                        ; $5052: $13
    nop                                           ; $5053: $00
    ld a, [hl+]                                   ; $5054: $2a
    inc d                                         ; $5055: $14
    nop                                           ; $5056: $00
    ld c, c                                       ; $5057: $49
    dec d                                         ; $5058: $15
    ld [bc], a                                    ; $5059: $02
    nop                                           ; $505a: $00
    ld d, $5c                                     ; $505b: $16 $5c
    nop                                           ; $505d: $00
    ld d, d                                       ; $505e: $52
    nop                                           ; $505f: $00
    nop                                           ; $5060: $00
    inc de                                        ; $5061: $13
    ld bc, $146e                                  ; $5062: $01 $6e $14
    ld [bc], a                                    ; $5065: $02
    inc c                                         ; $5066: $0c
    dec d                                         ; $5067: $15
    ld [bc], a                                    ; $5068: $02
    nop                                           ; $5069: $00
    ld d, $5c                                     ; $506a: $16 $5c
    nop                                           ; $506c: $00
    ld d, d                                       ; $506d: $52
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    inc de                                        ; $5070: $13
    ld [bc], a                                    ; $5071: $02
    ld b, e                                       ; $5072: $43
    inc d                                         ; $5073: $14
    ld bc, $1516                                  ; $5074: $01 $16 $15
    ld [bc], a                                    ; $5077: $02
    nop                                           ; $5078: $00
    ld d, $5c                                     ; $5079: $16 $5c
    nop                                           ; $507b: $00
    ld d, d                                       ; $507c: $52
    nop                                           ; $507d: $00
    nop                                           ; $507e: $00
    ld e, a                                       ; $507f: $5f
    ld bc, $5700                                  ; $5080: $01 $00 $57
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    ld e, a                                       ; $5088: $5f
    ld bc, $0000                                  ; $5089: $01 $00 $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    dec b                                         ; $508e: $05
    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    ld [bc], a                                    ; $5091: $02
    ld e, b                                       ; $5092: $58
    ld [bc], a                                    ; $5093: $02
    sub c                                         ; $5094: $91
    ld [bc], a                                    ; $5095: $02
    xor $03                                       ; $5096: $ee $03
    daa                                           ; $5098: $27
    ld e, a                                       ; $5099: $5f
    nop                                           ; $509a: $00
    nop                                           ; $509b: $00
    add hl, bc                                    ; $509c: $09
    nop                                           ; $509d: $00
    add hl, bc                                    ; $509e: $09
    dec b                                         ; $509f: $05
    ld a, [hl+]                                   ; $50a0: $2a
    nop                                           ; $50a1: $00
    add hl, bc                                    ; $50a2: $09
    dec d                                         ; $50a3: $15
    ld bc, $0305                                  ; $50a4: $01 $05 $03
    nop                                           ; $50a7: $00
    ld e, a                                       ; $50a8: $5f
    ld bc, $0000                                  ; $50a9: $01 $00 $00
    nop                                           ; $50ac: $00
    nop                                           ; $50ad: $00
    ld d, [hl]                                    ; $50ae: $56
    nop                                           ; $50af: $00
    nop                                           ; $50b0: $00
    inc de                                        ; $50b1: $13
    nop                                           ; $50b2: $00
    ld c, h                                       ; $50b3: $4c
    inc d                                         ; $50b4: $14
    nop                                           ; $50b5: $00
    inc sp                                        ; $50b6: $33
    dec d                                         ; $50b7: $15
    nop                                           ; $50b8: $00
    nop                                           ; $50b9: $00
    ld d, $0d                                     ; $50ba: $16 $0d
    nop                                           ; $50bc: $00
    dec de                                        ; $50bd: $1b
    nop                                           ; $50be: $00
    nop                                           ; $50bf: $00
    ld e, a                                       ; $50c0: $5f
    ld bc, $1700                                  ; $50c1: $01 $00 $17
    dec c                                         ; $50c4: $0d
    nop                                           ; $50c5: $00
    dec d                                         ; $50c6: $15
    nop                                           ; $50c7: $00
    nop                                           ; $50c8: $00
    add hl, de                                    ; $50c9: $19
    nop                                           ; $50ca: $00
    rrca                                          ; $50cb: $0f
    dec de                                        ; $50cc: $1b
    ld [bc], a                                    ; $50cd: $02
    nop                                           ; $50ce: $00
    rla                                           ; $50cf: $17
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    dec de                                        ; $50d2: $1b
    ld b, $00                                     ; $50d3: $06 $00
    dec d                                         ; $50d5: $15
    ld bc, $3300                                  ; $50d6: $01 $00 $33
    ld bc, $15eb                                  ; $50d9: $01 $eb $15
    nop                                           ; $50dc: $00
    nop                                           ; $50dd: $00
    inc sp                                        ; $50de: $33
    ld bc, $15ec                                  ; $50df: $01 $ec $15
    ld bc, $3300                                  ; $50e2: $01 $00 $33
    ld bc, $15ed                                  ; $50e5: $01 $ed $15
    nop                                           ; $50e8: $00
    nop                                           ; $50e9: $00
    inc sp                                        ; $50ea: $33
    ld a, [bc]                                    ; $50eb: $0a
    ret z                                         ; $50ec: $c8

    dec d                                         ; $50ed: $15
    ld bc, $3300                                  ; $50ee: $01 $00 $33
    ld a, [bc]                                    ; $50f1: $0a
    ret                                           ; $50f2: $c9


    dec d                                         ; $50f3: $15
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    inc sp                                        ; $50f6: $33
    ld a, [bc]                                    ; $50f7: $0a
    jp z, $0115                                   ; $50f8: $ca $15 $01

    nop                                           ; $50fb: $00
    inc sp                                        ; $50fc: $33
    ld a, [bc]                                    ; $50fd: $0a
    rl a                                          ; $50fe: $cb $17
    dec c                                         ; $5100: $0d
    nop                                           ; $5101: $00
    dec d                                         ; $5102: $15
    dec b                                         ; $5103: $05
    nop                                           ; $5104: $00
    add hl, de                                    ; $5105: $19
    nop                                           ; $5106: $00
    ld d, l                                       ; $5107: $55
    ld e, $0d                                     ; $5108: $1e $0d
    nop                                           ; $510a: $00
    daa                                           ; $510b: $27
    nop                                           ; $510c: $00
    inc d                                         ; $510d: $14
    rrca                                          ; $510e: $0f
    dec d                                         ; $510f: $15
    ld bc, $0015                                  ; $5110: $01 $15 $00
    nop                                           ; $5113: $00
    inc sp                                        ; $5114: $33
    ld bc, $57ef                                  ; $5115: $01 $ef $57
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    add hl, bc                                    ; $511d: $09
    nop                                           ; $511e: $00
    dec c                                         ; $511f: $0d
    dec b                                         ; $5120: $05
    ld hl, $0900                                  ; $5121: $21 $00 $09
    dec d                                         ; $5124: $15
    ld bc, $0305                                  ; $5125: $01 $05 $03
    nop                                           ; $5128: $00
    ld e, a                                       ; $5129: $5f
    ld bc, $0000                                  ; $512a: $01 $00 $00
    nop                                           ; $512d: $00
    nop                                           ; $512e: $00
    ld d, [hl]                                    ; $512f: $56
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    inc de                                        ; $5132: $13
    nop                                           ; $5133: $00
    ld c, h                                       ; $5134: $4c
    inc d                                         ; $5135: $14
    nop                                           ; $5136: $00
    inc sp                                        ; $5137: $33
    dec d                                         ; $5138: $15
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    ld d, $0d                                     ; $513b: $16 $0d
    nop                                           ; $513d: $00
    dec de                                        ; $513e: $1b
    nop                                           ; $513f: $00
    nop                                           ; $5140: $00
    ld e, a                                       ; $5141: $5f
    ld bc, $1700                                  ; $5142: $01 $00 $17
    dec c                                         ; $5145: $0d
    nop                                           ; $5146: $00
    dec d                                         ; $5147: $15
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    add hl, de                                    ; $514a: $19
    nop                                           ; $514b: $00
    rrca                                          ; $514c: $0f
    dec de                                        ; $514d: $1b
    ld [bc], a                                    ; $514e: $02
    nop                                           ; $514f: $00
    rla                                           ; $5150: $17
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    dec de                                        ; $5153: $1b
    ld b, $00                                     ; $5154: $06 $00
    dec d                                         ; $5156: $15
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    inc sp                                        ; $5159: $33
    ld [bc], a                                    ; $515a: $02
    call nc, $0115                                ; $515b: $d4 $15 $01
    nop                                           ; $515e: $00
    inc sp                                        ; $515f: $33
    ld [bc], a                                    ; $5160: $02
    push de                                       ; $5161: $d5
    dec d                                         ; $5162: $15
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    inc sp                                        ; $5165: $33
    ld [bc], a                                    ; $5166: $02
    sub $15                                       ; $5167: $d6 $15
    ld bc, $3300                                  ; $5169: $01 $00 $33
    ld [bc], a                                    ; $516c: $02
    rst $10                                       ; $516d: $d7
    rla                                           ; $516e: $17
    dec c                                         ; $516f: $0d
    nop                                           ; $5170: $00
    dec d                                         ; $5171: $15
    dec b                                         ; $5172: $05
    nop                                           ; $5173: $00
    add hl, de                                    ; $5174: $19
    nop                                           ; $5175: $00
    ld d, l                                       ; $5176: $55
    ld e, $0d                                     ; $5177: $1e $0d
    nop                                           ; $5179: $00
    ld d, a                                       ; $517a: $57
    nop                                           ; $517b: $00
    nop                                           ; $517c: $00
    rrca                                          ; $517d: $0f
    dec d                                         ; $517e: $15
    ld bc, $0000                                  ; $517f: $01 $00 $00
    nop                                           ; $5182: $00
    add hl, bc                                    ; $5183: $09
    nop                                           ; $5184: $00
    dec bc                                        ; $5185: $0b
    dec b                                         ; $5186: $05
    daa                                           ; $5187: $27
    nop                                           ; $5188: $00
    add hl, bc                                    ; $5189: $09
    rla                                           ; $518a: $17
    ld bc, $0305                                  ; $518b: $01 $05 $03
    nop                                           ; $518e: $00
    ld e, a                                       ; $518f: $5f
    ld bc, $0000                                  ; $5190: $01 $00 $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    ld d, [hl]                                    ; $5195: $56
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    inc de                                        ; $5198: $13
    nop                                           ; $5199: $00
    ld c, h                                       ; $519a: $4c
    inc d                                         ; $519b: $14
    nop                                           ; $519c: $00
    inc sp                                        ; $519d: $33
    dec d                                         ; $519e: $15
    nop                                           ; $519f: $00
    nop                                           ; $51a0: $00
    ld d, $0d                                     ; $51a1: $16 $0d
    nop                                           ; $51a3: $00
    dec de                                        ; $51a4: $1b
    nop                                           ; $51a5: $00
    nop                                           ; $51a6: $00
    ld e, a                                       ; $51a7: $5f
    ld bc, $1700                                  ; $51a8: $01 $00 $17
    dec c                                         ; $51ab: $0d
    nop                                           ; $51ac: $00
    dec d                                         ; $51ad: $15
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    add hl, de                                    ; $51b0: $19
    nop                                           ; $51b1: $00
    rrca                                          ; $51b2: $0f
    dec de                                        ; $51b3: $1b
    ld [bc], a                                    ; $51b4: $02
    nop                                           ; $51b5: $00
    rla                                           ; $51b6: $17
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    dec de                                        ; $51b9: $1b
    ld b, $00                                     ; $51ba: $06 $00
    dec d                                         ; $51bc: $15
    nop                                           ; $51bd: $00
    nop                                           ; $51be: $00
    inc sp                                        ; $51bf: $33
    inc bc                                        ; $51c0: $03
    ld [hl], c                                    ; $51c1: $71
    dec d                                         ; $51c2: $15
    ld bc, $3300                                  ; $51c3: $01 $00 $33
    inc bc                                        ; $51c6: $03
    add l                                         ; $51c7: $85
    dec d                                         ; $51c8: $15
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    inc sp                                        ; $51cb: $33
    inc bc                                        ; $51cc: $03
    add [hl]                                      ; $51cd: $86
    dec d                                         ; $51ce: $15
    ld bc, $3300                                  ; $51cf: $01 $00 $33
    inc bc                                        ; $51d2: $03
    add a                                         ; $51d3: $87
    dec d                                         ; $51d4: $15
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    inc sp                                        ; $51d7: $33
    inc bc                                        ; $51d8: $03
    adc b                                         ; $51d9: $88
    dec d                                         ; $51da: $15
    ld bc, $3300                                  ; $51db: $01 $00 $33
    inc bc                                        ; $51de: $03
    adc c                                         ; $51df: $89
    dec d                                         ; $51e0: $15
    ld bc, $3300                                  ; $51e1: $01 $00 $33
    inc bc                                        ; $51e4: $03
    adc d                                         ; $51e5: $8a
    rla                                           ; $51e6: $17
    dec c                                         ; $51e7: $0d
    nop                                           ; $51e8: $00
    dec d                                         ; $51e9: $15
    dec b                                         ; $51ea: $05
    nop                                           ; $51eb: $00
    add hl, de                                    ; $51ec: $19
    nop                                           ; $51ed: $00
    ld d, l                                       ; $51ee: $55
    ld e, $0d                                     ; $51ef: $1e $0d
    nop                                           ; $51f1: $00
    ld d, a                                       ; $51f2: $57
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    rrca                                          ; $51f5: $0f
    rla                                           ; $51f6: $17
    ld bc, $0000                                  ; $51f7: $01 $00 $00
    nop                                           ; $51fa: $00
    add hl, bc                                    ; $51fb: $09
    nop                                           ; $51fc: $00
    ld b, b                                       ; $51fd: $40
    dec b                                         ; $51fe: $05
    ld b, a                                       ; $51ff: $47
    nop                                           ; $5200: $00
    add hl, bc                                    ; $5201: $09
    ld c, $01                                     ; $5202: $0e $01
    dec b                                         ; $5204: $05
    inc [hl]                                      ; $5205: $34
    nop                                           ; $5206: $00
    ld d, [hl]                                    ; $5207: $56
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    add hl, bc                                    ; $520a: $09
    cp $01                                        ; $520b: $fe $01
    dec b                                         ; $520d: $05
    dec e                                         ; $520e: $1d
    nop                                           ; $520f: $00
    inc de                                        ; $5210: $13
    nop                                           ; $5211: $00
    ld hl, $0014                                  ; $5212: $21 $14 $00

Call_00e_5215:
    ld a, [hl+]                                   ; $5215: $2a
    dec d                                         ; $5216: $15
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    ld d, $64                                     ; $5219: $16 $64
    nop                                           ; $521b: $00
    inc de                                        ; $521c: $13
    nop                                           ; $521d: $00
    ld c, h                                       ; $521e: $4c
    inc d                                         ; $521f: $14
    nop                                           ; $5220: $00
    inc sp                                        ; $5221: $33
    dec d                                         ; $5222: $15
    nop                                           ; $5223: $00
    nop                                           ; $5224: $00
    ld d, $0d                                     ; $5225: $16 $0d
    nop                                           ; $5227: $00
    dec de                                        ; $5228: $1b
    nop                                           ; $5229: $00
    nop                                           ; $522a: $00
    ld e, a                                       ; $522b: $5f
    ld bc, $1700                                  ; $522c: $01 $00 $17
    dec c                                         ; $522f: $0d
    nop                                           ; $5230: $00
    dec d                                         ; $5231: $15
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    add hl, de                                    ; $5234: $19
    nop                                           ; $5235: $00
    rrca                                          ; $5236: $0f
    dec de                                        ; $5237: $1b
    ld [bc], a                                    ; $5238: $02
    nop                                           ; $5239: $00
    dec d                                         ; $523a: $15
    nop                                           ; $523b: $00
    nop                                           ; $523c: $00
    inc sp                                        ; $523d: $33
    inc b                                         ; $523e: $04
    sub b                                         ; $523f: $90
    dec d                                         ; $5240: $15
    ld bc, $3300                                  ; $5241: $01 $00 $33
    inc b                                         ; $5244: $04
    sub c                                         ; $5245: $91
    dec d                                         ; $5246: $15
    nop                                           ; $5247: $00
    nop                                           ; $5248: $00
    inc sp                                        ; $5249: $33
    inc b                                         ; $524a: $04
    sub d                                         ; $524b: $92
    dec d                                         ; $524c: $15
    ld bc, $3300                                  ; $524d: $01 $00 $33
    inc b                                         ; $5250: $04
    sub e                                         ; $5251: $93
    rrca                                          ; $5252: $0f
    ld b, a                                       ; $5253: $47
    ld bc, $132c                                  ; $5254: $01 $2c $13
    inc bc                                        ; $5257: $03
    ld h, d                                       ; $5258: $62
    ld b, c                                       ; $5259: $41
    nop                                           ; $525a: $00
    ld d, a                                       ; $525b: $57
    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    ld d, l                                       ; $525e: $55
    nop                                           ; $525f: $00
    nop                                           ; $5260: $00
    inc bc                                        ; $5261: $03
    inc d                                         ; $5262: $14
    nop                                           ; $5263: $00
    inc de                                        ; $5264: $13
    nop                                           ; $5265: $00
    ld c, h                                       ; $5266: $4c
    inc d                                         ; $5267: $14
    nop                                           ; $5268: $00
    inc sp                                        ; $5269: $33
    dec d                                         ; $526a: $15
    nop                                           ; $526b: $00
    nop                                           ; $526c: $00
    ld d, $0d                                     ; $526d: $16 $0d
    nop                                           ; $526f: $00
    dec de                                        ; $5270: $1b
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    ld e, a                                       ; $5273: $5f
    ld bc, $1700                                  ; $5274: $01 $00 $17
    dec c                                         ; $5277: $0d
    nop                                           ; $5278: $00
    dec d                                         ; $5279: $15
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    add hl, de                                    ; $527c: $19
    nop                                           ; $527d: $00
    rrca                                          ; $527e: $0f
    dec de                                        ; $527f: $1b
    ld [bc], a                                    ; $5280: $02
    nop                                           ; $5281: $00
    dec d                                         ; $5282: $15
    ld bc, $3300                                  ; $5283: $01 $00 $33
    inc b                                         ; $5286: $04
    sub h                                         ; $5287: $94
    dec d                                         ; $5288: $15
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    inc sp                                        ; $528b: $33
    inc b                                         ; $528c: $04
    sub l                                         ; $528d: $95
    dec d                                         ; $528e: $15
    ld bc, $3300                                  ; $528f: $01 $00 $33
    inc b                                         ; $5292: $04
    sub [hl]                                      ; $5293: $96
    ld d, a                                       ; $5294: $57
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    ld d, l                                       ; $5297: $55
    dec bc                                        ; $5298: $0b
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    ld d, [hl]                                    ; $52a0: $56
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    inc de                                        ; $52a3: $13
    nop                                           ; $52a4: $00
    ld c, h                                       ; $52a5: $4c
    inc d                                         ; $52a6: $14
    nop                                           ; $52a7: $00
    inc sp                                        ; $52a8: $33
    dec d                                         ; $52a9: $15
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    ld d, $0d                                     ; $52ac: $16 $0d
    nop                                           ; $52ae: $00
    dec de                                        ; $52af: $1b
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    ld e, a                                       ; $52b2: $5f
    ld bc, $1700                                  ; $52b3: $01 $00 $17
    dec c                                         ; $52b6: $0d
    nop                                           ; $52b7: $00
    dec d                                         ; $52b8: $15
    nop                                           ; $52b9: $00
    nop                                           ; $52ba: $00
    add hl, de                                    ; $52bb: $19
    nop                                           ; $52bc: $00
    rrca                                          ; $52bd: $0f
    dec de                                        ; $52be: $1b
    ld [bc], a                                    ; $52bf: $02
    nop                                           ; $52c0: $00
    dec d                                         ; $52c1: $15
    ld bc, $3300                                  ; $52c2: $01 $00 $33
    inc b                                         ; $52c5: $04
    adc a                                         ; $52c6: $8f
    ld d, a                                       ; $52c7: $57
    nop                                           ; $52c8: $00
    nop                                           ; $52c9: $00
    rrca                                          ; $52ca: $0f
    ld c, $01                                     ; $52cb: $0e $01
    ld d, l                                       ; $52cd: $55
    dec bc                                        ; $52ce: $0b
    nop                                           ; $52cf: $00
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    nop                                           ; $52d2: $00
    add hl, bc                                    ; $52d3: $09
    nop                                           ; $52d4: $00
    ld b, c                                       ; $52d5: $41
    dec b                                         ; $52d6: $05
    ld [$0900], sp                                ; $52d7: $08 $00 $09
    inc c                                         ; $52da: $0c
    ld bc, $0205                                  ; $52db: $01 $05 $02
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    rrca                                          ; $52e2: $0f
    inc c                                         ; $52e3: $0c
    ld bc, $014d                                  ; $52e4: $01 $4d $01
    nop                                           ; $52e7: $00
    jr z, jr_00e_5331                             ; $52e8: $28 $47

    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    ld e, a                                       ; $52f1: $5f
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    add hl, bc                                    ; $52f4: $09
    nop                                           ; $52f5: $00
    add hl, bc                                    ; $52f6: $09
    dec b                                         ; $52f7: $05
    rrca                                          ; $52f8: $0f
    nop                                           ; $52f9: $00
    add hl, bc                                    ; $52fa: $09
    ld d, $01                                     ; $52fb: $16 $01
    dec b                                         ; $52fd: $05
    inc bc                                        ; $52fe: $03
    nop                                           ; $52ff: $00
    ld e, a                                       ; $5300: $5f
    ld bc, $0000                                  ; $5301: $01 $00 $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    ld d, [hl]                                    ; $5306: $56
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    rla                                           ; $5309: $17
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    dec de                                        ; $530c: $1b
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    ld e, a                                       ; $530f: $5f
    ld bc, $3800                                  ; $5310: $01 $00 $38
    ld c, e                                       ; $5313: $4b
    nop                                           ; $5314: $00

Call_00e_5315:
    dec d                                         ; $5315: $15
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    inc sp                                        ; $5318: $33
    ld bc, $0ff0                                  ; $5319: $01 $f0 $0f
    ld d, $01                                     ; $531c: $16 $01
    ld d, a                                       ; $531e: $57
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    ld e, a                                       ; $5324: $5f
    ld bc, $0000                                  ; $5325: $01 $00 $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    ld e, a                                       ; $532a: $5f
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    add hl, bc                                    ; $532d: $09
    nop                                           ; $532e: $00
    ccf                                           ; $532f: $3f
    dec b                                         ; $5330: $05

jr_00e_5331:
    dec de                                        ; $5331: $1b
    nop                                           ; $5332: $00
    add hl, bc                                    ; $5333: $09
    dec c                                         ; $5334: $0d
    ld bc, $0305                                  ; $5335: $01 $05 $03
    nop                                           ; $5338: $00
    ld e, a                                       ; $5339: $5f
    ld bc, $0000                                  ; $533a: $01 $00 $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    ld d, [hl]                                    ; $533f: $56
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    inc de                                        ; $5342: $13
    nop                                           ; $5343: $00
    adc b                                         ; $5344: $88
    inc d                                         ; $5345: $14
    nop                                           ; $5346: $00
    ldh a, [$15]                                  ; $5347: $f0 $15
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    ld d, $36                                     ; $534b: $16 $36
    nop                                           ; $534d: $00
    ld d, d                                       ; $534e: $52
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    dec de                                        ; $5351: $1b
    ld b, $00                                     ; $5352: $06 $00
    ld e, a                                       ; $5354: $5f
    ld bc, $6d00                                  ; $5355: $01 $00 $6d
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    dec d                                         ; $535a: $15
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    inc sp                                        ; $535d: $33
    inc b                                         ; $535e: $04
    add a                                         ; $535f: $87
    dec d                                         ; $5360: $15
    ld d, $00                                     ; $5361: $16 $00
    inc sp                                        ; $5363: $33
    inc b                                         ; $5364: $04
    adc b                                         ; $5365: $88
    rla                                           ; $5366: $17
    ld [hl], $00                                  ; $5367: $36 $00
    ld e, d                                       ; $5369: $5a
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    inc de                                        ; $536c: $13
    nop                                           ; $536d: $00
    xor c                                         ; $536e: $a9
    ld [hl], a                                    ; $536f: $77
    nop                                           ; $5370: $00
    ret z                                         ; $5371: $c8

    ld e, e                                       ; $5372: $5b
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    ld e, $36                                     ; $5375: $1e $36
    nop                                           ; $5377: $00
    rrca                                          ; $5378: $0f
    dec c                                         ; $5379: $0d
    ld bc, $0057                                  ; $537a: $01 $57 $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    ld e, a                                       ; $5381: $5f
    ld bc, $0000                                  ; $5382: $01 $00 $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    ld e, a                                       ; $5387: $5f
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    add hl, bc                                    ; $538a: $09
    nop                                           ; $538b: $00
    add hl, bc                                    ; $538c: $09
    dec b                                         ; $538d: $05
    rrca                                          ; $538e: $0f
    nop                                           ; $538f: $00
    add hl, bc                                    ; $5390: $09
    rla                                           ; $5391: $17
    ld bc, $0305                                  ; $5392: $01 $05 $03
    nop                                           ; $5395: $00
    ld e, a                                       ; $5396: $5f
    ld bc, $0000                                  ; $5397: $01 $00 $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    ld d, [hl]                                    ; $539c: $56
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    rla                                           ; $539f: $17
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    dec de                                        ; $53a2: $1b
    nop                                           ; $53a3: $00
    nop                                           ; $53a4: $00
    ld e, a                                       ; $53a5: $5f
    ld bc, $3800                                  ; $53a6: $01 $00 $38
    ld c, e                                       ; $53a9: $4b
    nop                                           ; $53aa: $00
    dec d                                         ; $53ab: $15
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    inc sp                                        ; $53ae: $33
    ld bc, $0ff0                                  ; $53af: $01 $f0 $0f
    rla                                           ; $53b2: $17
    ld bc, $0057                                  ; $53b3: $01 $57 $00
    nop                                           ; $53b6: $00
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    nop                                           ; $53b9: $00
    ld e, a                                       ; $53ba: $5f
    ld bc, $0000                                  ; $53bb: $01 $00 $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    ld e, a                                       ; $53c0: $5f
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    add hl, bc                                    ; $53c3: $09
    nop                                           ; $53c4: $00
    add hl, bc                                    ; $53c5: $09
    dec b                                         ; $53c6: $05
    ld a, [hl+]                                   ; $53c7: $2a
    nop                                           ; $53c8: $00
    add hl, bc                                    ; $53c9: $09
    dec d                                         ; $53ca: $15
    ld bc, $0305                                  ; $53cb: $01 $05 $03
    nop                                           ; $53ce: $00
    ld e, a                                       ; $53cf: $5f
    ld bc, $0000                                  ; $53d0: $01 $00 $00
    nop                                           ; $53d3: $00
    nop                                           ; $53d4: $00
    ld d, [hl]                                    ; $53d5: $56
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    inc de                                        ; $53d8: $13
    nop                                           ; $53d9: $00
    ld b, [hl]                                    ; $53da: $46
    inc d                                         ; $53db: $14
    ld bc, $1504                                  ; $53dc: $01 $04 $15
    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    ld d, $0d                                     ; $53e1: $16 $0d
    nop                                           ; $53e3: $00
    dec de                                        ; $53e4: $1b
    ld [bc], a                                    ; $53e5: $02
    nop                                           ; $53e6: $00
    ld e, a                                       ; $53e7: $5f
    ld bc, $1700                                  ; $53e8: $01 $00 $17
    dec c                                         ; $53eb: $0d
    nop                                           ; $53ec: $00
    dec d                                         ; $53ed: $15
    ld [bc], a                                    ; $53ee: $02
    nop                                           ; $53ef: $00
    add hl, de                                    ; $53f0: $19
    nop                                           ; $53f1: $00
    jr z, jr_00e_540f                             ; $53f2: $28 $1b

    ld [bc], a                                    ; $53f4: $02
    nop                                           ; $53f5: $00
    rla                                           ; $53f6: $17
    nop                                           ; $53f7: $00
    nop                                           ; $53f8: $00
    dec de                                        ; $53f9: $1b
    ld b, $00                                     ; $53fa: $06 $00
    dec d                                         ; $53fc: $15
    ld bc, $3300                                  ; $53fd: $01 $00 $33
    ld bc, $15eb                                  ; $5400: $01 $eb $15
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    inc sp                                        ; $5405: $33
    ld bc, $15ec                                  ; $5406: $01 $ec $15
    ld bc, $3300                                  ; $5409: $01 $00 $33
    ld bc, $15ed                                  ; $540c: $01 $ed $15

jr_00e_540f:
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    inc sp                                        ; $5411: $33
    ld a, [bc]                                    ; $5412: $0a
    ret z                                         ; $5413: $c8

    dec d                                         ; $5414: $15
    ld bc, $3300                                  ; $5415: $01 $00 $33
    ld a, [bc]                                    ; $5418: $0a
    ret                                           ; $5419: $c9


    dec d                                         ; $541a: $15
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    inc sp                                        ; $541d: $33
    ld a, [bc]                                    ; $541e: $0a
    jp z, $0115                                   ; $541f: $ca $15 $01

    nop                                           ; $5422: $00
    inc sp                                        ; $5423: $33
    ld a, [bc]                                    ; $5424: $0a
    rl a                                          ; $5425: $cb $17
    dec c                                         ; $5427: $0d
    nop                                           ; $5428: $00
    dec d                                         ; $5429: $15
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    add hl, de                                    ; $542c: $19
    nop                                           ; $542d: $00
    dec l                                         ; $542e: $2d
    ld e, $0d                                     ; $542f: $1e $0d
    nop                                           ; $5431: $00
    daa                                           ; $5432: $27
    nop                                           ; $5433: $00
    inc d                                         ; $5434: $14
    dec d                                         ; $5435: $15
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    inc sp                                        ; $5438: $33
    ld bc, $57ef                                  ; $5439: $01 $ef $57
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    rrca                                          ; $543e: $0f
    dec d                                         ; $543f: $15
    ld bc, $0000                                  ; $5440: $01 $00 $00
    nop                                           ; $5443: $00
    add hl, bc                                    ; $5444: $09
    nop                                           ; $5445: $00
    dec c                                         ; $5446: $0d
    dec b                                         ; $5447: $05
    ld hl, $0900                                  ; $5448: $21 $00 $09
    dec d                                         ; $544b: $15
    ld bc, $0305                                  ; $544c: $01 $05 $03
    nop                                           ; $544f: $00
    ld e, a                                       ; $5450: $5f
    ld bc, $0000                                  ; $5451: $01 $00 $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld d, [hl]                                    ; $5456: $56
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    inc de                                        ; $5459: $13
    nop                                           ; $545a: $00
    ld b, [hl]                                    ; $545b: $46
    inc d                                         ; $545c: $14
    ld bc, $1504                                  ; $545d: $01 $04 $15
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    ld d, $0d                                     ; $5462: $16 $0d
    nop                                           ; $5464: $00
    dec de                                        ; $5465: $1b
    ld [bc], a                                    ; $5466: $02
    nop                                           ; $5467: $00
    ld e, a                                       ; $5468: $5f
    ld bc, $1700                                  ; $5469: $01 $00 $17
    dec c                                         ; $546c: $0d
    nop                                           ; $546d: $00
    dec d                                         ; $546e: $15
    ld [bc], a                                    ; $546f: $02
    nop                                           ; $5470: $00
    add hl, de                                    ; $5471: $19
    nop                                           ; $5472: $00
    jr z, jr_00e_5490                             ; $5473: $28 $1b

    ld [bc], a                                    ; $5475: $02
    nop                                           ; $5476: $00
    rla                                           ; $5477: $17
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    dec de                                        ; $547a: $1b
    ld b, $00                                     ; $547b: $06 $00
    dec d                                         ; $547d: $15
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    inc sp                                        ; $5480: $33
    ld [bc], a                                    ; $5481: $02
    call nc, $0115                                ; $5482: $d4 $15 $01
    nop                                           ; $5485: $00
    inc sp                                        ; $5486: $33
    ld [bc], a                                    ; $5487: $02
    push de                                       ; $5488: $d5
    dec d                                         ; $5489: $15
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    inc sp                                        ; $548c: $33
    ld [bc], a                                    ; $548d: $02
    sub $15                                       ; $548e: $d6 $15

jr_00e_5490:
    ld bc, $3300                                  ; $5490: $01 $00 $33
    ld [bc], a                                    ; $5493: $02
    rst $10                                       ; $5494: $d7
    rla                                           ; $5495: $17
    dec c                                         ; $5496: $0d
    nop                                           ; $5497: $00
    dec d                                         ; $5498: $15
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    add hl, de                                    ; $549b: $19
    nop                                           ; $549c: $00
    dec l                                         ; $549d: $2d
    ld e, $0d                                     ; $549e: $1e $0d
    nop                                           ; $54a0: $00
    ld d, a                                       ; $54a1: $57
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    rrca                                          ; $54a4: $0f
    dec d                                         ; $54a5: $15
    ld bc, $0000                                  ; $54a6: $01 $00 $00
    nop                                           ; $54a9: $00
    add hl, bc                                    ; $54aa: $09
    nop                                           ; $54ab: $00
    dec bc                                        ; $54ac: $0b
    dec b                                         ; $54ad: $05
    daa                                           ; $54ae: $27
    nop                                           ; $54af: $00
    add hl, bc                                    ; $54b0: $09
    rla                                           ; $54b1: $17
    ld bc, $0305                                  ; $54b2: $01 $05 $03
    nop                                           ; $54b5: $00
    ld e, a                                       ; $54b6: $5f
    ld bc, $0000                                  ; $54b7: $01 $00 $00
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    ld d, [hl]                                    ; $54bc: $56
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    inc de                                        ; $54bf: $13
    nop                                           ; $54c0: $00
    ld b, [hl]                                    ; $54c1: $46
    inc d                                         ; $54c2: $14
    ld bc, $1504                                  ; $54c3: $01 $04 $15
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    ld d, $0d                                     ; $54c8: $16 $0d
    nop                                           ; $54ca: $00
    dec de                                        ; $54cb: $1b
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    ld e, a                                       ; $54ce: $5f
    ld bc, $1700                                  ; $54cf: $01 $00 $17
    dec c                                         ; $54d2: $0d
    nop                                           ; $54d3: $00
    dec d                                         ; $54d4: $15
    ld [bc], a                                    ; $54d5: $02
    nop                                           ; $54d6: $00
    add hl, de                                    ; $54d7: $19
    nop                                           ; $54d8: $00
    jr z, jr_00e_54f6                             ; $54d9: $28 $1b

    ld [bc], a                                    ; $54db: $02
    nop                                           ; $54dc: $00
    rla                                           ; $54dd: $17
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    dec de                                        ; $54e0: $1b
    ld b, $00                                     ; $54e1: $06 $00
    dec d                                         ; $54e3: $15
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    inc sp                                        ; $54e6: $33
    inc bc                                        ; $54e7: $03
    ld [hl], c                                    ; $54e8: $71
    dec d                                         ; $54e9: $15
    ld bc, $3300                                  ; $54ea: $01 $00 $33
    inc bc                                        ; $54ed: $03
    add l                                         ; $54ee: $85
    dec d                                         ; $54ef: $15
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    inc sp                                        ; $54f2: $33
    inc bc                                        ; $54f3: $03
    add [hl]                                      ; $54f4: $86
    dec d                                         ; $54f5: $15

jr_00e_54f6:
    ld bc, $3300                                  ; $54f6: $01 $00 $33
    inc bc                                        ; $54f9: $03
    add a                                         ; $54fa: $87
    dec d                                         ; $54fb: $15
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    inc sp                                        ; $54fe: $33
    inc bc                                        ; $54ff: $03
    adc b                                         ; $5500: $88
    dec d                                         ; $5501: $15
    ld bc, $3300                                  ; $5502: $01 $00 $33
    inc bc                                        ; $5505: $03
    adc c                                         ; $5506: $89
    dec d                                         ; $5507: $15
    ld bc, $3300                                  ; $5508: $01 $00 $33
    inc bc                                        ; $550b: $03
    adc d                                         ; $550c: $8a
    rla                                           ; $550d: $17
    dec c                                         ; $550e: $0d
    nop                                           ; $550f: $00
    dec d                                         ; $5510: $15
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    add hl, de                                    ; $5513: $19
    nop                                           ; $5514: $00
    dec l                                         ; $5515: $2d
    ld e, $0d                                     ; $5516: $1e $0d
    nop                                           ; $5518: $00
    ld d, a                                       ; $5519: $57
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    rrca                                          ; $551c: $0f
    rla                                           ; $551d: $17
    ld bc, $0000                                  ; $551e: $01 $00 $00
    nop                                           ; $5521: $00
    add hl, bc                                    ; $5522: $09
    nop                                           ; $5523: $00
    ld b, b                                       ; $5524: $40
    dec b                                         ; $5525: $05
    ld b, a                                       ; $5526: $47
    nop                                           ; $5527: $00
    add hl, bc                                    ; $5528: $09
    ld c, $01                                     ; $5529: $0e $01
    dec b                                         ; $552b: $05
    inc [hl]                                      ; $552c: $34
    nop                                           ; $552d: $00
    ld d, [hl]                                    ; $552e: $56
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    add hl, bc                                    ; $5531: $09
    cp $01                                        ; $5532: $fe $01
    dec b                                         ; $5534: $05
    dec e                                         ; $5535: $1d
    nop                                           ; $5536: $00
    inc de                                        ; $5537: $13
    nop                                           ; $5538: $00
    adc a                                         ; $5539: $8f
    inc d                                         ; $553a: $14
    nop                                           ; $553b: $00
    ld a, [$0015]                                 ; $553c: $fa $15 $00
    nop                                           ; $553f: $00
    ld d, $64                                     ; $5540: $16 $64
    nop                                           ; $5542: $00
    inc de                                        ; $5543: $13
    nop                                           ; $5544: $00
    ld b, [hl]                                    ; $5545: $46
    inc d                                         ; $5546: $14
    ld bc, $1504                                  ; $5547: $01 $04 $15
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    ld d, $0d                                     ; $554c: $16 $0d
    nop                                           ; $554e: $00
    dec de                                        ; $554f: $1b
    ld [bc], a                                    ; $5550: $02
    nop                                           ; $5551: $00
    ld e, a                                       ; $5552: $5f
    ld bc, $1700                                  ; $5553: $01 $00 $17
    dec c                                         ; $5556: $0d
    nop                                           ; $5557: $00
    dec d                                         ; $5558: $15
    ld [bc], a                                    ; $5559: $02
    nop                                           ; $555a: $00
    add hl, de                                    ; $555b: $19
    nop                                           ; $555c: $00
    jr z, jr_00e_557a                             ; $555d: $28 $1b

    ld [bc], a                                    ; $555f: $02
    nop                                           ; $5560: $00
    dec d                                         ; $5561: $15
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    inc sp                                        ; $5564: $33
    inc b                                         ; $5565: $04
    sub b                                         ; $5566: $90
    dec d                                         ; $5567: $15
    ld bc, $3300                                  ; $5568: $01 $00 $33
    inc b                                         ; $556b: $04
    sub c                                         ; $556c: $91
    dec d                                         ; $556d: $15
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    inc sp                                        ; $5570: $33
    inc b                                         ; $5571: $04
    sub d                                         ; $5572: $92
    dec d                                         ; $5573: $15
    ld bc, $3300                                  ; $5574: $01 $00 $33
    inc b                                         ; $5577: $04
    sub e                                         ; $5578: $93
    rrca                                          ; $5579: $0f

jr_00e_557a:
    ld b, a                                       ; $557a: $47
    ld bc, $132c                                  ; $557b: $01 $2c $13
    inc bc                                        ; $557e: $03
    ld h, d                                       ; $557f: $62
    ld b, c                                       ; $5580: $41
    nop                                           ; $5581: $00
    ld d, a                                       ; $5582: $57
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    ld d, l                                       ; $5585: $55
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    inc bc                                        ; $5588: $03
    inc d                                         ; $5589: $14
    nop                                           ; $558a: $00
    inc de                                        ; $558b: $13
    nop                                           ; $558c: $00
    ld b, [hl]                                    ; $558d: $46
    inc d                                         ; $558e: $14
    ld bc, $1504                                  ; $558f: $01 $04 $15
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    ld d, $0d                                     ; $5594: $16 $0d
    nop                                           ; $5596: $00
    dec de                                        ; $5597: $1b
    ld [bc], a                                    ; $5598: $02
    nop                                           ; $5599: $00
    ld e, a                                       ; $559a: $5f
    ld bc, $1700                                  ; $559b: $01 $00 $17
    dec c                                         ; $559e: $0d
    nop                                           ; $559f: $00
    dec d                                         ; $55a0: $15
    ld [bc], a                                    ; $55a1: $02
    nop                                           ; $55a2: $00
    add hl, de                                    ; $55a3: $19
    nop                                           ; $55a4: $00
    jr z, jr_00e_55c2                             ; $55a5: $28 $1b

    ld [bc], a                                    ; $55a7: $02
    nop                                           ; $55a8: $00
    dec d                                         ; $55a9: $15
    ld bc, $3300                                  ; $55aa: $01 $00 $33
    inc b                                         ; $55ad: $04
    sub h                                         ; $55ae: $94
    dec d                                         ; $55af: $15
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    inc sp                                        ; $55b2: $33
    inc b                                         ; $55b3: $04
    sub l                                         ; $55b4: $95
    dec d                                         ; $55b5: $15
    ld bc, $3300                                  ; $55b6: $01 $00 $33
    inc b                                         ; $55b9: $04
    sub [hl]                                      ; $55ba: $96
    ld d, a                                       ; $55bb: $57
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    ld d, l                                       ; $55be: $55
    dec bc                                        ; $55bf: $0b
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00

jr_00e_55c2:
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    nop                                           ; $55c6: $00
    ld d, [hl]                                    ; $55c7: $56
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    inc de                                        ; $55ca: $13
    nop                                           ; $55cb: $00
    ld b, [hl]                                    ; $55cc: $46
    inc d                                         ; $55cd: $14
    ld bc, $1504                                  ; $55ce: $01 $04 $15
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    ld d, $0d                                     ; $55d3: $16 $0d
    nop                                           ; $55d5: $00
    dec de                                        ; $55d6: $1b
    ld [bc], a                                    ; $55d7: $02
    nop                                           ; $55d8: $00
    ld e, a                                       ; $55d9: $5f
    ld bc, $1700                                  ; $55da: $01 $00 $17
    dec c                                         ; $55dd: $0d
    nop                                           ; $55de: $00
    dec d                                         ; $55df: $15
    ld [bc], a                                    ; $55e0: $02
    nop                                           ; $55e1: $00
    add hl, de                                    ; $55e2: $19
    nop                                           ; $55e3: $00
    jr z, jr_00e_5601                             ; $55e4: $28 $1b

    ld [bc], a                                    ; $55e6: $02
    nop                                           ; $55e7: $00
    dec d                                         ; $55e8: $15
    ld bc, $3300                                  ; $55e9: $01 $00 $33
    inc b                                         ; $55ec: $04
    adc a                                         ; $55ed: $8f
    ld d, a                                       ; $55ee: $57
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    rrca                                          ; $55f1: $0f
    ld c, $01                                     ; $55f2: $0e $01
    ld d, l                                       ; $55f4: $55
    dec bc                                        ; $55f5: $0b
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    add hl, bc                                    ; $55fa: $09
    nop                                           ; $55fb: $00
    ld b, c                                       ; $55fc: $41
    dec b                                         ; $55fd: $05
    ld [$0900], sp                                ; $55fe: $08 $00 $09

jr_00e_5601:
    inc c                                         ; $5601: $0c
    ld bc, $0205                                  ; $5602: $01 $05 $02
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    rrca                                          ; $5609: $0f
    inc c                                         ; $560a: $0c
    ld bc, $014d                                  ; $560b: $01 $4d $01
    nop                                           ; $560e: $00
    jr z, jr_00e_5658                             ; $560f: $28 $47

    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    rlca                                          ; $5618: $07
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    ld [hl], l                                    ; $561c: $75
    nop                                           ; $561d: $00
    xor b                                         ; $561e: $a8
    nop                                           ; $561f: $00
    xor [hl]                                      ; $5620: $ae
    nop                                           ; $5621: $00
    or h                                          ; $5622: $b4
    nop                                           ; $5623: $00
    di                                            ; $5624: $f3
    ld bc, $5f11                                  ; $5625: $01 $11 $5f
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    add hl, bc                                    ; $562a: $09
    nop                                           ; $562b: $00
    ld c, b                                       ; $562c: $48
    dec b                                         ; $562d: $05
    ld de, $1300                                  ; $562e: $11 $00 $13
    rst $38                                       ; $5631: $ff
    db $ec                                        ; $5632: $ec
    inc d                                         ; $5633: $14
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    dec d                                         ; $5636: $15
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    ld d, $68                                     ; $5639: $16 $68
    ld bc, $0052                                  ; $563b: $01 $52 $00
    nop                                           ; $563e: $00
    dec de                                        ; $563f: $1b
    inc b                                         ; $5640: $04
    nop                                           ; $5641: $00
    inc de                                        ; $5642: $13
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    inc d                                         ; $5645: $14
    nop                                           ; $5646: $00
    inc d                                         ; $5647: $14
    dec d                                         ; $5648: $15
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    ld d, $69                                     ; $564b: $16 $69
    ld bc, $0052                                  ; $564d: $01 $52 $00
    nop                                           ; $5650: $00
    dec de                                        ; $5651: $1b
    inc b                                         ; $5652: $04
    nop                                           ; $5653: $00
    rla                                           ; $5654: $17
    ld l, c                                       ; $5655: $69
    nop                                           ; $5656: $00
    ld [hl+], a                                   ; $5657: $22

jr_00e_5658:
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    rla                                           ; $565a: $17
    ld l, b                                       ; $565b: $68
    nop                                           ; $565c: $00
    ld [hl+], a                                   ; $565d: $22
    ld l, c                                       ; $565e: $69
    nop                                           ; $565f: $00
    inc de                                        ; $5660: $13
    nop                                           ; $5661: $00
    jr c, jr_00e_5678                             ; $5662: $38 $14

    nop                                           ; $5664: $00
    dec l                                         ; $5665: $2d
    dec d                                         ; $5666: $15
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    ld d, $34                                     ; $5669: $16 $34
    nop                                           ; $566b: $00
    ld d, d                                       ; $566c: $52
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    dec de                                        ; $566f: $1b
    ld [bc], a                                    ; $5670: $02
    nop                                           ; $5671: $00
    inc de                                        ; $5672: $13
    nop                                           ; $5673: $00
    ld c, a                                       ; $5674: $4f
    inc d                                         ; $5675: $14
    nop                                           ; $5676: $00
    dec l                                         ; $5677: $2d

jr_00e_5678:
    dec d                                         ; $5678: $15
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    ld d, $35                                     ; $567b: $16 $35
    nop                                           ; $567d: $00
    ld d, d                                       ; $567e: $52
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    dec de                                        ; $5681: $1b
    ld b, $00                                     ; $5682: $06 $00
    inc de                                        ; $5684: $13
    nop                                           ; $5685: $00
    jr nc, jr_00e_569c                            ; $5686: $30 $14

    nop                                           ; $5688: $00
    rst $08                                       ; $5689: $cf
    dec d                                         ; $568a: $15
    ld b, $00                                     ; $568b: $06 $00
    ld d, $65                                     ; $568d: $16 $65
    nop                                           ; $568f: $00
    ld d, d                                       ; $5690: $52
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    dec de                                        ; $5693: $1b
    ld [bc], a                                    ; $5694: $02
    nop                                           ; $5695: $00
    ld e, a                                       ; $5696: $5f
    ld bc, $0000                                  ; $5697: $01 $00 $00
    nop                                           ; $569a: $00
    nop                                           ; $569b: $00

jr_00e_569c:
    add hl, bc                                    ; $569c: $09
    nop                                           ; $569d: $00
    ld e, b                                       ; $569e: $58
    dec b                                         ; $569f: $05
    ld c, $00                                     ; $56a0: $0e $00
    add hl, bc                                    ; $56a2: $09
    add hl, bc                                    ; $56a3: $09
    nop                                           ; $56a4: $00
    dec b                                         ; $56a5: $05
    inc c                                         ; $56a6: $0c
    nop                                           ; $56a7: $00
    rla                                           ; $56a8: $17
    inc [hl]                                      ; $56a9: $34
    nop                                           ; $56aa: $00
    inc e                                         ; $56ab: $1c
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    rla                                           ; $56ae: $17
    dec [hl]                                      ; $56af: $35
    nop                                           ; $56b0: $00
    inc e                                         ; $56b1: $1c
    nop                                           ; $56b2: $00
    nop                                           ; $56b3: $00
    dec d                                         ; $56b4: $15
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    inc sp                                        ; $56b7: $33
    inc b                                         ; $56b8: $04
    dec d                                         ; $56b9: $15
    dec d                                         ; $56ba: $15
    dec hl                                        ; $56bb: $2b
    nop                                           ; $56bc: $00
    inc sp                                        ; $56bd: $33
    inc b                                         ; $56be: $04
    ld a, [de]                                    ; $56bf: $1a
    dec d                                         ; $56c0: $15
    ld a, [hl+]                                   ; $56c1: $2a
    nop                                           ; $56c2: $00
    inc sp                                        ; $56c3: $33
    inc b                                         ; $56c4: $04
    dec de                                        ; $56c5: $1b
    nop                                           ; $56c6: $00
    nop                                           ; $56c7: $00
    nop                                           ; $56c8: $00
    ld d, h                                       ; $56c9: $54
    nop                                           ; $56ca: $00
    ld b, $00                                     ; $56cb: $06 $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    ld d, h                                       ; $56cf: $54
    inc bc                                        ; $56d0: $03
    ld bc, $0000                                  ; $56d1: $01 $00 $00
    nop                                           ; $56d4: $00
    ld d, h                                       ; $56d5: $54
    inc b                                         ; $56d6: $04
    ld bc, $0000                                  ; $56d7: $01 $00 $00
    nop                                           ; $56da: $00
    add hl, bc                                    ; $56db: $09
    nop                                           ; $56dc: $00
    ld e, b                                       ; $56dd: $58
    dec b                                         ; $56de: $05
    ld c, $00                                     ; $56df: $0e $00
    add hl, bc                                    ; $56e1: $09
    add hl, bc                                    ; $56e2: $09
    nop                                           ; $56e3: $00
    dec b                                         ; $56e4: $05
    inc c                                         ; $56e5: $0c
    nop                                           ; $56e6: $00
    rla                                           ; $56e7: $17
    inc [hl]                                      ; $56e8: $34
    nop                                           ; $56e9: $00
    inc e                                         ; $56ea: $1c
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    rla                                           ; $56ed: $17
    dec [hl]                                      ; $56ee: $35
    nop                                           ; $56ef: $00
    inc e                                         ; $56f0: $1c
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    dec d                                         ; $56f3: $15
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    inc sp                                        ; $56f6: $33
    inc b                                         ; $56f7: $04
    dec d                                         ; $56f8: $15
    dec d                                         ; $56f9: $15
    dec hl                                        ; $56fa: $2b
    nop                                           ; $56fb: $00
    inc sp                                        ; $56fc: $33
    inc b                                         ; $56fd: $04
    ld a, [de]                                    ; $56fe: $1a
    dec d                                         ; $56ff: $15
    ld a, [hl+]                                   ; $5700: $2a
    nop                                           ; $5701: $00
    inc sp                                        ; $5702: $33
    inc b                                         ; $5703: $04
    dec de                                        ; $5704: $1b
    nop                                           ; $5705: $00
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    add hl, bc                                    ; $5708: $09
    scf                                           ; $5709: $37
    ld bc, $0305                                  ; $570a: $01 $05 $03
    nop                                           ; $570d: $00
    ld d, h                                       ; $570e: $54
    nop                                           ; $570f: $00
    rlca                                          ; $5710: $07
    inc bc                                        ; $5711: $03
    ld [bc], a                                    ; $5712: $02
    nop                                           ; $5713: $00
    ld d, h                                       ; $5714: $54
    nop                                           ; $5715: $00
    ld [$0000], sp                                ; $5716: $08 $00 $00
    nop                                           ; $5719: $00
    ld d, [hl]                                    ; $571a: $56
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    rla                                           ; $571d: $17
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    dec de                                        ; $5720: $1b
    ld b, $00                                     ; $5721: $06 $00
    add hl, bc                                    ; $5723: $09
    dec sp                                        ; $5724: $3b
    nop                                           ; $5725: $00
    dec b                                         ; $5726: $05
    inc b                                         ; $5727: $04
    nop                                           ; $5728: $00
    rrca                                          ; $5729: $0f
    dec sp                                        ; $572a: $3b
    ld bc, $097f                                  ; $572b: $01 $7f $09
    db $dd                                        ; $572e: $dd
    daa                                           ; $572f: $27
    nop                                           ; $5730: $00
    dec b                                         ; $5731: $05
    ld d, l                                       ; $5732: $55
    ld de, $0000                                  ; $5733: $11 $00 $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    ld e, a                                       ; $5738: $5f
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    ld d, [hl]                                    ; $573b: $56
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    rla                                           ; $573e: $17
    nop                                           ; $573f: $00
    nop                                           ; $5740: $00
    inc e                                         ; $5741: $1c
    ld h, l                                       ; $5742: $65
    nop                                           ; $5743: $00
    rrca                                          ; $5744: $0f
    ld c, d                                       ; $5745: $4a
    nop                                           ; $5746: $00
    add hl, bc                                    ; $5747: $09
    ccf                                           ; $5748: $3f
    ld bc, $0705                                  ; $5749: $01 $05 $07
    nop                                           ; $574c: $00
    ld e, a                                       ; $574d: $5f
    ld bc, $1500                                  ; $574e: $01 $00 $15
    ld h, $00                                     ; $5751: $26 $00
    inc sp                                        ; $5753: $33
    dec bc                                        ; $5754: $0b
    rlca                                          ; $5755: $07
    ld a, [hl+]                                   ; $5756: $2a
    inc b                                         ; $5757: $04
    nop                                           ; $5758: $00
    rrca                                          ; $5759: $0f
    ccf                                           ; $575a: $3f
    nop                                           ; $575b: $00
    rrca                                          ; $575c: $0f
    ld c, d                                       ; $575d: $4a
    ld bc, $4009                                  ; $575e: $01 $09 $40
    ld bc, $0705                                  ; $5761: $01 $05 $07
    nop                                           ; $5764: $00
    ld e, a                                       ; $5765: $5f
    ld bc, $1500                                  ; $5766: $01 $00 $15
    ld h, $00                                     ; $5769: $26 $00
    inc sp                                        ; $576b: $33
    dec bc                                        ; $576c: $0b
    ld [$052a], sp                                ; $576d: $08 $2a $05
    nop                                           ; $5770: $00
    rrca                                          ; $5771: $0f
    ld b, b                                       ; $5772: $40
    nop                                           ; $5773: $00
    rrca                                          ; $5774: $0f
    ld c, d                                       ; $5775: $4a
    ld bc, $4109                                  ; $5776: $01 $09 $41
    ld bc, $0705                                  ; $5779: $01 $05 $07
    nop                                           ; $577c: $00
    ld e, a                                       ; $577d: $5f
    ld bc, $1500                                  ; $577e: $01 $00 $15
    ld h, $00                                     ; $5781: $26 $00
    inc sp                                        ; $5783: $33
    dec bc                                        ; $5784: $0b
    add hl, bc                                    ; $5785: $09
    ld a, [hl+]                                   ; $5786: $2a
    ld b, $00                                     ; $5787: $06 $00
    rrca                                          ; $5789: $0f
    ld b, c                                       ; $578a: $41
    nop                                           ; $578b: $00
    rrca                                          ; $578c: $0f
    ld c, d                                       ; $578d: $4a
    ld bc, $5009                                  ; $578e: $01 $09 $50
    ld bc, $0705                                  ; $5791: $01 $05 $07
    nop                                           ; $5794: $00
    ld e, a                                       ; $5795: $5f
    ld bc, $1500                                  ; $5796: $01 $00 $15
    ld h, $00                                     ; $5799: $26 $00
    inc sp                                        ; $579b: $33
    dec bc                                        ; $579c: $0b
    ld a, [bc]                                    ; $579d: $0a
    ld a, [hl+]                                   ; $579e: $2a
    rlca                                          ; $579f: $07
    nop                                           ; $57a0: $00
    rrca                                          ; $57a1: $0f
    ld d, b                                       ; $57a2: $50
    nop                                           ; $57a3: $00
    rrca                                          ; $57a4: $0f
    ld c, d                                       ; $57a5: $4a
    ld bc, $5109                                  ; $57a6: $01 $09 $51
    ld bc, $0705                                  ; $57a9: $01 $05 $07
    nop                                           ; $57ac: $00
    ld e, a                                       ; $57ad: $5f
    ld bc, $1500                                  ; $57ae: $01 $00 $15
    ld h, $00                                     ; $57b1: $26 $00
    inc sp                                        ; $57b3: $33
    dec bc                                        ; $57b4: $0b
    dec bc                                        ; $57b5: $0b
    ld a, [hl+]                                   ; $57b6: $2a
    ld [$0f00], sp                                ; $57b7: $08 $00 $0f
    ld d, c                                       ; $57ba: $51
    nop                                           ; $57bb: $00
    rrca                                          ; $57bc: $0f
    ld c, d                                       ; $57bd: $4a
    ld bc, $5209                                  ; $57be: $01 $09 $52
    ld bc, $0705                                  ; $57c1: $01 $05 $07
    nop                                           ; $57c4: $00
    ld e, a                                       ; $57c5: $5f
    ld bc, $1500                                  ; $57c6: $01 $00 $15
    ld h, $00                                     ; $57c9: $26 $00
    inc sp                                        ; $57cb: $33
    dec bc                                        ; $57cc: $0b
    inc c                                         ; $57cd: $0c
    ld a, [hl+]                                   ; $57ce: $2a
    add hl, bc                                    ; $57cf: $09
    nop                                           ; $57d0: $00
    rrca                                          ; $57d1: $0f
    ld d, d                                       ; $57d2: $52
    nop                                           ; $57d3: $00
    rrca                                          ; $57d4: $0f
    ld c, d                                       ; $57d5: $4a
    ld bc, $5309                                  ; $57d6: $01 $09 $53
    ld bc, $0705                                  ; $57d9: $01 $05 $07
    nop                                           ; $57dc: $00
    ld e, a                                       ; $57dd: $5f
    ld bc, $1500                                  ; $57de: $01 $00 $15
    ld h, $00                                     ; $57e1: $26 $00
    inc sp                                        ; $57e3: $33
    dec bc                                        ; $57e4: $0b
    dec c                                         ; $57e5: $0d
    ld a, [hl+]                                   ; $57e6: $2a
    ld a, [bc]                                    ; $57e7: $0a
    nop                                           ; $57e8: $00
    rrca                                          ; $57e9: $0f
    ld d, e                                       ; $57ea: $53
    nop                                           ; $57eb: $00
    rrca                                          ; $57ec: $0f
    ld c, d                                       ; $57ed: $4a
    ld bc, $5409                                  ; $57ee: $01 $09 $54
    ld bc, $0705                                  ; $57f1: $01 $05 $07
    nop                                           ; $57f4: $00
    ld e, a                                       ; $57f5: $5f
    ld bc, $1500                                  ; $57f6: $01 $00 $15
    ld h, $00                                     ; $57f9: $26 $00
    inc sp                                        ; $57fb: $33
    dec bc                                        ; $57fc: $0b
    ld c, $2a                                     ; $57fd: $0e $2a
    dec bc                                        ; $57ff: $0b
    nop                                           ; $5800: $00
    rrca                                          ; $5801: $0f
    ld d, h                                       ; $5802: $54
    nop                                           ; $5803: $00
    rrca                                          ; $5804: $0f
    ld c, d                                       ; $5805: $4a
    ld bc, $5509                                  ; $5806: $01 $09 $55
    ld bc, $0705                                  ; $5809: $01 $05 $07
    nop                                           ; $580c: $00
    ld e, a                                       ; $580d: $5f
    ld bc, $1500                                  ; $580e: $01 $00 $15
    ld h, $00                                     ; $5811: $26 $00
    inc sp                                        ; $5813: $33
    dec bc                                        ; $5814: $0b
    rrca                                          ; $5815: $0f
    ld a, [hl+]                                   ; $5816: $2a
    inc c                                         ; $5817: $0c
    nop                                           ; $5818: $00
    rrca                                          ; $5819: $0f
    ld d, l                                       ; $581a: $55
    nop                                           ; $581b: $00
    rrca                                          ; $581c: $0f
    ld c, d                                       ; $581d: $4a
    ld bc, $4209                                  ; $581e: $01 $09 $42
    ld bc, $0705                                  ; $5821: $01 $05 $07
    nop                                           ; $5824: $00
    ld e, a                                       ; $5825: $5f
    ld bc, $1500                                  ; $5826: $01 $00 $15
    ld h, $00                                     ; $5829: $26 $00
    inc sp                                        ; $582b: $33
    dec bc                                        ; $582c: $0b
    db $10                                        ; $582d: $10
    ld a, [hl+]                                   ; $582e: $2a
    dec c                                         ; $582f: $0d
    nop                                           ; $5830: $00
    rrca                                          ; $5831: $0f
    ld b, d                                       ; $5832: $42
    nop                                           ; $5833: $00
    rrca                                          ; $5834: $0f
    ld c, d                                       ; $5835: $4a
    ld bc, $4309                                  ; $5836: $01 $09 $43
    ld bc, $0705                                  ; $5839: $01 $05 $07
    nop                                           ; $583c: $00
    ld e, a                                       ; $583d: $5f
    ld bc, $1500                                  ; $583e: $01 $00 $15
    ld h, $00                                     ; $5841: $26 $00
    inc sp                                        ; $5843: $33
    dec bc                                        ; $5844: $0b
    rlca                                          ; $5845: $07
    ld a, [hl+]                                   ; $5846: $2a
    ld c, $00                                     ; $5847: $0e $00
    rrca                                          ; $5849: $0f
    ld b, e                                       ; $584a: $43
    nop                                           ; $584b: $00
    rrca                                          ; $584c: $0f
    ld c, d                                       ; $584d: $4a
    ld bc, $4409                                  ; $584e: $01 $09 $44
    ld bc, $0705                                  ; $5851: $01 $05 $07
    nop                                           ; $5854: $00
    ld e, a                                       ; $5855: $5f
    ld bc, $1500                                  ; $5856: $01 $00 $15
    ld h, $00                                     ; $5859: $26 $00
    inc sp                                        ; $585b: $33
    dec bc                                        ; $585c: $0b
    ld [$0f2a], sp                                ; $585d: $08 $2a $0f
    nop                                           ; $5860: $00
    rrca                                          ; $5861: $0f
    ld b, h                                       ; $5862: $44
    nop                                           ; $5863: $00
    rrca                                          ; $5864: $0f
    ld c, d                                       ; $5865: $4a
    ld bc, $4509                                  ; $5866: $01 $09 $45
    ld bc, $0705                                  ; $5869: $01 $05 $07
    nop                                           ; $586c: $00
    ld e, a                                       ; $586d: $5f
    ld bc, $1500                                  ; $586e: $01 $00 $15
    ld h, $00                                     ; $5871: $26 $00
    inc sp                                        ; $5873: $33
    dec bc                                        ; $5874: $0b
    ld [$102a], sp                                ; $5875: $08 $2a $10
    nop                                           ; $5878: $00
    rrca                                          ; $5879: $0f
    ld b, l                                       ; $587a: $45
    nop                                           ; $587b: $00
    rrca                                          ; $587c: $0f
    ld c, d                                       ; $587d: $4a
    ld bc, $4609                                  ; $587e: $01 $09 $46
    ld bc, $0705                                  ; $5881: $01 $05 $07
    nop                                           ; $5884: $00
    ld e, a                                       ; $5885: $5f
    ld bc, $1500                                  ; $5886: $01 $00 $15
    ld h, $00                                     ; $5889: $26 $00
    inc sp                                        ; $588b: $33
    dec bc                                        ; $588c: $0b
    add hl, bc                                    ; $588d: $09
    ld a, [hl+]                                   ; $588e: $2a
    ld de, $0f00                                  ; $588f: $11 $00 $0f
    ld b, [hl]                                    ; $5892: $46
    nop                                           ; $5893: $00
    rrca                                          ; $5894: $0f
    ld c, d                                       ; $5895: $4a
    ld bc, $4709                                  ; $5896: $01 $09 $47
    ld bc, $0705                                  ; $5899: $01 $05 $07
    nop                                           ; $589c: $00
    ld e, a                                       ; $589d: $5f
    ld bc, $1500                                  ; $589e: $01 $00 $15
    ld h, $00                                     ; $58a1: $26 $00
    inc sp                                        ; $58a3: $33
    dec bc                                        ; $58a4: $0b
    ld a, [bc]                                    ; $58a5: $0a
    ld a, [hl+]                                   ; $58a6: $2a
    ld [de], a                                    ; $58a7: $12
    nop                                           ; $58a8: $00
    rrca                                          ; $58a9: $0f
    ld b, a                                       ; $58aa: $47
    nop                                           ; $58ab: $00
    rrca                                          ; $58ac: $0f
    ld c, d                                       ; $58ad: $4a
    ld bc, $4809                                  ; $58ae: $01 $09 $48
    ld bc, $0705                                  ; $58b1: $01 $05 $07
    nop                                           ; $58b4: $00
    ld e, a                                       ; $58b5: $5f
    ld bc, $1500                                  ; $58b6: $01 $00 $15
    ld h, $00                                     ; $58b9: $26 $00
    inc sp                                        ; $58bb: $33
    dec bc                                        ; $58bc: $0b
    dec bc                                        ; $58bd: $0b
    ld a, [hl+]                                   ; $58be: $2a
    inc de                                        ; $58bf: $13
    nop                                           ; $58c0: $00
    rrca                                          ; $58c1: $0f
    ld c, b                                       ; $58c2: $48
    nop                                           ; $58c3: $00
    rrca                                          ; $58c4: $0f
    ld c, d                                       ; $58c5: $4a
    ld bc, $4909                                  ; $58c6: $01 $09 $49
    ld bc, $0705                                  ; $58c9: $01 $05 $07
    nop                                           ; $58cc: $00
    ld e, a                                       ; $58cd: $5f
    ld bc, $1500                                  ; $58ce: $01 $00 $15
    ld h, $00                                     ; $58d1: $26 $00
    inc sp                                        ; $58d3: $33
    dec bc                                        ; $58d4: $0b
    inc c                                         ; $58d5: $0c
    ld a, [hl+]                                   ; $58d6: $2a
    inc d                                         ; $58d7: $14
    nop                                           ; $58d8: $00
    rrca                                          ; $58d9: $0f
    ld c, c                                       ; $58da: $49
    nop                                           ; $58db: $00
    rrca                                          ; $58dc: $0f
    ld c, d                                       ; $58dd: $4a
    ld bc, $0057                                  ; $58de: $01 $57 $00
    nop                                           ; $58e1: $00
    add hl, bc                                    ; $58e2: $09
    ld c, d                                       ; $58e3: $4a
    nop                                           ; $58e4: $00
    dec b                                         ; $58e5: $05
    dec e                                         ; $58e6: $1d
    nop                                           ; $58e7: $00
    ld d, [hl]                                    ; $58e8: $56
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    ld e, a                                       ; $58eb: $5f
    ld bc, $6300                                  ; $58ec: $01 $00 $63
    cp $04                                        ; $58ef: $fe $04
    ld [$00fe], sp                                ; $58f1: $08 $fe $00
    dec d                                         ; $58f4: $15
    ld d, [hl]                                    ; $58f5: $56
    nop                                           ; $58f6: $00
    rlca                                          ; $58f7: $07
    ld [bc], a                                    ; $58f8: $02
    push hl                                       ; $58f9: $e5
    dec d                                         ; $58fa: $15
    ld d, [hl]                                    ; $58fb: $56
    nop                                           ; $58fc: $00
    rlca                                          ; $58fd: $07
    ld [bc], a                                    ; $58fe: $02
    pop af                                        ; $58ff: $f1
    dec d                                         ; $5900: $15
    ld d, [hl]                                    ; $5901: $56
    nop                                           ; $5902: $00
    rlca                                          ; $5903: $07
    ld [bc], a                                    ; $5904: $02
    db $fd                                        ; $5905: $fd
    dec d                                         ; $5906: $15
    ld d, [hl]                                    ; $5907: $56
    nop                                           ; $5908: $00
    rlca                                          ; $5909: $07
    inc bc                                        ; $590a: $03
    add hl, bc                                    ; $590b: $09
    dec d                                         ; $590c: $15
    ld h, $00                                     ; $590d: $26 $00
    inc sp                                        ; $590f: $33
    dec bc                                        ; $5910: $0b
    ld de, $0057                                  ; $5911: $11 $57 $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    dec d                                         ; $5918: $15
    ld h, $00                                     ; $5919: $26 $00
    inc sp                                        ; $591b: $33
    dec bc                                        ; $591c: $0b
    ld [de], a                                    ; $591d: $12
    ld d, a                                       ; $591e: $57
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    dec d                                         ; $5924: $15
    ld h, $00                                     ; $5925: $26 $00
    inc sp                                        ; $5927: $33
    dec bc                                        ; $5928: $0b
    inc de                                        ; $5929: $13
    ld d, a                                       ; $592a: $57
    nop                                           ; $592b: $00
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    dec d                                         ; $5930: $15
    ld h, $00                                     ; $5931: $26 $00
    inc sp                                        ; $5933: $33
    dec bc                                        ; $5934: $0b
    inc d                                         ; $5935: $14
    ld d, a                                       ; $5936: $57
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00
    nop                                           ; $593c: $00
    nop                                           ; $593d: $00
    nop                                           ; $593e: $00
    ld bc, $0000                                  ; $593f: $01 $00 $00
    ld e, a                                       ; $5942: $5f
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    add hl, bc                                    ; $5945: $09
    nop                                           ; $5946: $00
    dec h                                         ; $5947: $25
    dec b                                         ; $5948: $05
    ld l, c                                       ; $5949: $69
    nop                                           ; $594a: $00
    add hl, bc                                    ; $594b: $09
    inc c                                         ; $594c: $0c
    ld bc, $0305                                  ; $594d: $01 $05 $03
    nop                                           ; $5950: $00
    ld e, a                                       ; $5951: $5f
    ld bc, $0000                                  ; $5952: $01 $00 $00
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    ld d, [hl]                                    ; $5957: $56
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    rla                                           ; $595a: $17
    nop                                           ; $595b: $00
    nop                                           ; $595c: $00
    dec de                                        ; $595d: $1b
    ld [bc], a                                    ; $595e: $02
    nop                                           ; $595f: $00
    inc de                                        ; $5960: $13
    nop                                           ; $5961: $00
    inc a                                         ; $5962: $3c
    inc d                                         ; $5963: $14
    ld bc, $15a7                                  ; $5964: $01 $a7 $15
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    ld d, $39                                     ; $5969: $16 $39
    nop                                           ; $596b: $00
    ld d, d                                       ; $596c: $52
    nop                                           ; $596d: $00
    nop                                           ; $596e: $00
    dec de                                        ; $596f: $1b
    inc b                                         ; $5970: $04
    nop                                           ; $5971: $00
    inc de                                        ; $5972: $13
    nop                                           ; $5973: $00
    sbc h                                         ; $5974: $9c
    inc d                                         ; $5975: $14
    ld bc, $15b3                                  ; $5976: $01 $b3 $15
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    ld d, $36                                     ; $597b: $16 $36
    nop                                           ; $597d: $00
    ld d, d                                       ; $597e: $52
    nop                                           ; $597f: $00
    nop                                           ; $5980: $00
    dec de                                        ; $5981: $1b
    ld b, $00                                     ; $5982: $06 $00
    inc de                                        ; $5984: $13
    nop                                           ; $5985: $00
    xor b                                         ; $5986: $a8
    inc d                                         ; $5987: $14
    ld bc, $15a7                                  ; $5988: $01 $a7 $15
    nop                                           ; $598b: $00
    nop                                           ; $598c: $00
    ld d, $32                                     ; $598d: $16 $32
    nop                                           ; $598f: $00
    ld d, d                                       ; $5990: $52
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    dec de                                        ; $5993: $1b
    ld b, $00                                     ; $5994: $06 $00
    inc de                                        ; $5996: $13
    nop                                           ; $5997: $00
    xor b                                         ; $5998: $a8
    inc d                                         ; $5999: $14
    ld bc, $15bb                                  ; $599a: $01 $bb $15
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    ld d, $33                                     ; $599f: $16 $33
    nop                                           ; $59a1: $00
    ld d, d                                       ; $59a2: $52
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    dec de                                        ; $59a5: $1b
    ld b, $00                                     ; $59a6: $06 $00
    ld e, a                                       ; $59a8: $5f
    ld bc, $1500                                  ; $59a9: $01 $00 $15
    dec d                                         ; $59ac: $15
    nop                                           ; $59ad: $00
    inc sp                                        ; $59ae: $33
    inc b                                         ; $59af: $04
    inc b                                         ; $59b0: $04
    ld e, [hl]                                    ; $59b1: $5e
    nop                                           ; $59b2: $00
    nop                                           ; $59b3: $00
    rla                                           ; $59b4: $17
    ld [hl], $00                                  ; $59b5: $36 $00
    dec d                                         ; $59b7: $15
    ld b, $00                                     ; $59b8: $06 $00
    add hl, de                                    ; $59ba: $19
    nop                                           ; $59bb: $00
    ld d, b                                       ; $59bc: $50
    rla                                           ; $59bd: $17
    ld [hl-], a                                   ; $59be: $32
    nop                                           ; $59bf: $00
    dec d                                         ; $59c0: $15
    ld b, $00                                     ; $59c1: $06 $00
    add hl, de                                    ; $59c3: $19
    nop                                           ; $59c4: $00
    ld d, b                                       ; $59c5: $50
    rla                                           ; $59c6: $17
    inc sp                                        ; $59c7: $33
    nop                                           ; $59c8: $00
    dec d                                         ; $59c9: $15
    ld b, $00                                     ; $59ca: $06 $00
    add hl, de                                    ; $59cc: $19
    nop                                           ; $59cd: $00
    ld d, b                                       ; $59ce: $50
    ld e, [hl]                                    ; $59cf: $5e
    ld bc, $2500                                  ; $59d0: $01 $00 $25
    nop                                           ; $59d3: $00
    nop                                           ; $59d4: $00
    rla                                           ; $59d5: $17
    ld [hl], $00                                  ; $59d6: $36 $00
    dec de                                        ; $59d8: $1b
    ld b, $00                                     ; $59d9: $06 $00
    rla                                           ; $59db: $17
    ld [hl-], a                                   ; $59dc: $32
    nop                                           ; $59dd: $00
    dec de                                        ; $59de: $1b
    ld b, $00                                     ; $59df: $06 $00
    rla                                           ; $59e1: $17
    inc sp                                        ; $59e2: $33
    nop                                           ; $59e3: $00
    dec de                                        ; $59e4: $1b
    ld b, $00                                     ; $59e5: $06 $00
    dec d                                         ; $59e7: $15
    ld d, $00                                     ; $59e8: $16 $00
    inc sp                                        ; $59ea: $33
    inc bc                                        ; $59eb: $03
    jp Jump_000_0015                              ; $59ec: $c3 $15 $00


    nop                                           ; $59ef: $00
    inc sp                                        ; $59f0: $33
    inc bc                                        ; $59f1: $03
    call nz, $1615                                ; $59f2: $c4 $15 $16
    nop                                           ; $59f5: $00
    inc sp                                        ; $59f6: $33
    inc bc                                        ; $59f7: $03
    push bc                                       ; $59f8: $c5
    dec d                                         ; $59f9: $15
    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    inc sp                                        ; $59fc: $33
    inc bc                                        ; $59fd: $03
    add $15                                       ; $59fe: $c6 $15
    dec d                                         ; $5a00: $15
    nop                                           ; $5a01: $00
    inc sp                                        ; $5a02: $33
    inc bc                                        ; $5a03: $03
    rst $00                                       ; $5a04: $c7
    dec d                                         ; $5a05: $15
    ld d, $00                                     ; $5a06: $16 $00
    inc sp                                        ; $5a08: $33
    inc bc                                        ; $5a09: $03
    ret z                                         ; $5a0a: $c8

    ld e, [hl]                                    ; $5a0b: $5e
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    rla                                           ; $5a0e: $17
    ld [hl], $00                                  ; $5a0f: $36 $00
    dec d                                         ; $5a11: $15
    ld [bc], a                                    ; $5a12: $02
    nop                                           ; $5a13: $00
    add hl, de                                    ; $5a14: $19
    nop                                           ; $5a15: $00
    ld e, d                                       ; $5a16: $5a
    rla                                           ; $5a17: $17
    ld [hl-], a                                   ; $5a18: $32
    nop                                           ; $5a19: $00
    dec d                                         ; $5a1a: $15
    ld [bc], a                                    ; $5a1b: $02
    nop                                           ; $5a1c: $00
    add hl, de                                    ; $5a1d: $19
    nop                                           ; $5a1e: $00
    ld e, d                                       ; $5a1f: $5a
    rla                                           ; $5a20: $17
    inc sp                                        ; $5a21: $33
    nop                                           ; $5a22: $00
    dec d                                         ; $5a23: $15
    ld [bc], a                                    ; $5a24: $02
    nop                                           ; $5a25: $00
    add hl, de                                    ; $5a26: $19
    nop                                           ; $5a27: $00
    ld e, d                                       ; $5a28: $5a
    ld e, [hl]                                    ; $5a29: $5e
    ld bc, $2500                                  ; $5a2a: $01 $00 $25
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    ld e, $33                                     ; $5a2f: $1e $33
    nop                                           ; $5a31: $00
    rla                                           ; $5a32: $17
    ld [hl-], a                                   ; $5a33: $32
    nop                                           ; $5a34: $00
    ld e, $32                                     ; $5a35: $1e $32
    nop                                           ; $5a37: $00
    rla                                           ; $5a38: $17
    ld [hl], $00                                  ; $5a39: $36 $00
    ld e, $36                                     ; $5a3b: $1e $36
    nop                                           ; $5a3d: $00
    dec d                                         ; $5a3e: $15
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    inc sp                                        ; $5a41: $33
    inc bc                                        ; $5a42: $03
    ret                                           ; $5a43: $c9


    dec d                                         ; $5a44: $15
    dec d                                         ; $5a45: $15
    nop                                           ; $5a46: $00
    inc sp                                        ; $5a47: $33
    inc bc                                        ; $5a48: $03
    jp z, Jump_000_0013                           ; $5a49: $ca $13 $00

    sbc h                                         ; $5a4c: $9c
    inc d                                         ; $5a4d: $14
    ld bc, $15b3                                  ; $5a4e: $01 $b3 $15
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    ld d, $37                                     ; $5a53: $16 $37
    nop                                           ; $5a55: $00
    ld d, d                                       ; $5a56: $52
    nop                                           ; $5a57: $00
    nop                                           ; $5a58: $00
    dec d                                         ; $5a59: $15
    ld b, $00                                     ; $5a5a: $06 $00
    add hl, de                                    ; $5a5c: $19
    nop                                           ; $5a5d: $00
    ld d, b                                       ; $5a5e: $50
    dec de                                        ; $5a5f: $1b
    ld b, $00                                     ; $5a60: $06 $00
    dec d                                         ; $5a62: $15
    add hl, de                                    ; $5a63: $19
    nop                                           ; $5a64: $00
    inc sp                                        ; $5a65: $33
    inc bc                                        ; $5a66: $03
    rl l                                          ; $5a67: $cb $15
    dec d                                         ; $5a69: $15
    nop                                           ; $5a6a: $00
    inc sp                                        ; $5a6b: $33
    inc bc                                        ; $5a6c: $03
    call z, Call_000_0c0f                         ; $5a6d: $cc $0f $0c
    ld bc, $2662                                  ; $5a70: $01 $62 $26
    nop                                           ; $5a73: $00
    ld a, d                                       ; $5a74: $7a
    ld bc, $5500                                  ; $5a75: $01 $00 $55
    rlca                                          ; $5a78: $07
    nop                                           ; $5a79: $00
    ld c, l                                       ; $5a7a: $4d
    ld bc, $7900                                  ; $5a7b: $01 $00 $79
    ld [bc], a                                    ; $5a7e: $02
    ld b, a                                       ; $5a7f: $47
    nop                                           ; $5a80: $00
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    ld e, a                                       ; $5a83: $5f
    ld bc, $0000                                  ; $5a84: $01 $00 $00
    nop                                           ; $5a87: $00
    nop                                           ; $5a88: $00
    ld [bc], a                                    ; $5a89: $02
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    jr jr_00e_5a98                                ; $5a8d: $18 $09

    nop                                           ; $5a8f: $00
    ld de, $0605                                  ; $5a90: $11 $05 $06
    nop                                           ; $5a93: $00
    rrca                                          ; $5a94: $0f
    ld a, [$0f00]                                 ; $5a95: $fa $00 $0f

jr_00e_5a98:
    ld a, [de]                                    ; $5a98: $1a
    ld bc, $2b2e                                  ; $5a99: $01 $2e $2b
    nop                                           ; $5a9c: $00
    dec [hl]                                      ; $5a9d: $35
    inc b                                         ; $5a9e: $04
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    add hl, bc                                    ; $5aa6: $09
    nop                                           ; $5aa7: $00
    ld de, $0a05                                  ; $5aa8: $11 $05 $0a
    nop                                           ; $5aab: $00
    ld a, d                                       ; $5aac: $7a
    ld bc, $0900                                  ; $5aad: $01 $00 $09
    ld a, [de]                                    ; $5ab0: $1a
    ld bc, $0705                                  ; $5ab1: $01 $05 $07
    nop                                           ; $5ab4: $00
    add hl, bc                                    ; $5ab5: $09
    ld a, [$0501]                                 ; $5ab6: $fa $01 $05
    dec b                                         ; $5ab9: $05
    nop                                           ; $5aba: $00
    jr c, jr_00e_5af9                             ; $5abb: $38 $3c

    nop                                           ; $5abd: $00
    ld h, d                                       ; $5abe: $62
    ld d, h                                       ; $5abf: $54
    nop                                           ; $5ac0: $00
    ld a, d                                       ; $5ac1: $7a
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    nop                                           ; $5ac8: $00
    nop                                           ; $5ac9: $00
    ld bc, $0000                                  ; $5aca: $01 $00 $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    ld bc, $0000                                  ; $5ad0: $01 $00 $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    ld bc, $0000                                  ; $5ad6: $01 $00 $00
    nop                                           ; $5ad9: $00
    nop                                           ; $5ada: $00
    nop                                           ; $5adb: $00
    ld bc, $0000                                  ; $5adc: $01 $00 $00
    nop                                           ; $5adf: $00
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    ld [bc], a                                    ; $5ae2: $02
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    dec d                                         ; $5ae6: $15
    add hl, bc                                    ; $5ae7: $09
    nop                                           ; $5ae8: $00
    jr @+$07                                      ; $5ae9: $18 $05

    dec b                                         ; $5aeb: $05
    nop                                           ; $5aec: $00
    rrca                                          ; $5aed: $0f
    ld a, [$0f00]                                 ; $5aee: $fa $00 $0f
    inc de                                        ; $5af1: $13
    ld bc, $0235                                  ; $5af2: $01 $35 $02
    nop                                           ; $5af5: $00
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    nop                                           ; $5af8: $00

jr_00e_5af9:
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    add hl, bc                                    ; $5afc: $09
    nop                                           ; $5afd: $00
    jr @+$07                                      ; $5afe: $18 $05

    ld a, [bc]                                    ; $5b00: $0a
    nop                                           ; $5b01: $00
    ld a, d                                       ; $5b02: $7a
    ld bc, $0900                                  ; $5b03: $01 $00 $09
    inc de                                        ; $5b06: $13
    ld bc, $0705                                  ; $5b07: $01 $05 $07
    nop                                           ; $5b0a: $00
    add hl, bc                                    ; $5b0b: $09
    ld a, [$0501]                                 ; $5b0c: $fa $01 $05
    dec b                                         ; $5b0f: $05
    nop                                           ; $5b10: $00
    inc a                                         ; $5b11: $3c
    ld h, c                                       ; $5b12: $61
    nop                                           ; $5b13: $00
    ld h, d                                       ; $5b14: $62
    ld d, $00                                     ; $5b15: $16 $00
    ld a, d                                       ; $5b17: $7a
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    nop                                           ; $5b1d: $00
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    ld bc, $0000                                  ; $5b20: $01 $00 $00
    ld e, a                                       ; $5b23: $5f
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    add hl, bc                                    ; $5b26: $09
    nop                                           ; $5b27: $00
    ld e, b                                       ; $5b28: $58
    dec b                                         ; $5b29: $05
    inc b                                         ; $5b2a: $04
    nop                                           ; $5b2b: $00
    ld a, d                                       ; $5b2c: $7a
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    ld e, a                                       ; $5b2f: $5f
    ld bc, $0000                                  ; $5b30: $01 $00 $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    ld e, a                                       ; $5b35: $5f
    ld bc, $0000                                  ; $5b36: $01 $00 $00
    nop                                           ; $5b39: $00
    nop                                           ; $5b3a: $00
    ld bc, $0000                                  ; $5b3b: $01 $00 $00
    nop                                           ; $5b3e: $00
    nop                                           ; $5b3f: $00
    nop                                           ; $5b40: $00
    ld bc, $0000                                  ; $5b41: $01 $00 $00
    ld e, a                                       ; $5b44: $5f
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    add hl, bc                                    ; $5b47: $09
    nop                                           ; $5b48: $00
    inc sp                                        ; $5b49: $33
    dec b                                         ; $5b4a: $05
    dec bc                                        ; $5b4b: $0b
    nop                                           ; $5b4c: $00
    add hl, bc                                    ; $5b4d: $09
    ld [$0501], sp                                ; $5b4e: $08 $01 $05
    add hl, bc                                    ; $5b51: $09
    nop                                           ; $5b52: $00
    inc de                                        ; $5b53: $13
    rst $38                                       ; $5b54: $ff
    add sp, $14                                   ; $5b55: $e8 $14
    nop                                           ; $5b57: $00
    nop                                           ; $5b58: $00
    dec d                                         ; $5b59: $15
    nop                                           ; $5b5a: $00
    nop                                           ; $5b5b: $00
    ld d, $39                                     ; $5b5c: $16 $39
    ld bc, $0052                                  ; $5b5e: $01 $52 $00
    nop                                           ; $5b61: $00
    ld [hl+], a                                   ; $5b62: $22
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    ld e, a                                       ; $5b65: $5f
    ld bc, $0000                                  ; $5b66: $01 $00 $00
    nop                                           ; $5b69: $00
    nop                                           ; $5b6a: $00
    ld e, a                                       ; $5b6b: $5f
    ld bc, $0000                                  ; $5b6c: $01 $00 $00
    nop                                           ; $5b6f: $00
    nop                                           ; $5b70: $00
    ld [bc], a                                    ; $5b71: $02
    nop                                           ; $5b72: $00
    nop                                           ; $5b73: $00
    nop                                           ; $5b74: $00
    inc c                                         ; $5b75: $0c
    ld d, [hl]                                    ; $5b76: $56
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    rla                                           ; $5b79: $17
    nop                                           ; $5b7a: $00
    nop                                           ; $5b7b: $00
    ld hl, $004e                                  ; $5b7c: $21 $4e $00
    nop                                           ; $5b7f: $00
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    ld e, a                                       ; $5b82: $5f
    nop                                           ; $5b83: $00
    nop                                           ; $5b84: $00
    rrca                                          ; $5b85: $0f
    cp $01                                        ; $5b86: $fe $01
    ld d, a                                       ; $5b88: $57
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    rrca                                          ; $5b8b: $0f
    rst $38                                       ; $5b8c: $ff
    nop                                           ; $5b8d: $00
    ld e, a                                       ; $5b8e: $5f
    ld bc, $7900                                  ; $5b8f: $01 $00 $79
    nop                                           ; $5b92: $00
    jr nz, jr_00e_5b95                            ; $5b93: $20 $00

jr_00e_5b95:
    nop                                           ; $5b95: $00
    nop                                           ; $5b96: $00
    ld bc, $0000                                  ; $5b97: $01 $00 $00
    ld e, a                                       ; $5b9a: $5f
    nop                                           ; $5b9b: $00
    nop                                           ; $5b9c: $00
    inc de                                        ; $5b9d: $13
    nop                                           ; $5b9e: $00
    sbc d                                         ; $5b9f: $9a
    inc d                                         ; $5ba0: $14
    nop                                           ; $5ba1: $00
    jp nz, Jump_000_0015                          ; $5ba2: $c2 $15 $00

    nop                                           ; $5ba5: $00
    ld d, $39                                     ; $5ba6: $16 $39
    nop                                           ; $5ba8: $00
    ld d, d                                       ; $5ba9: $52
    nop                                           ; $5baa: $00
    nop                                           ; $5bab: $00
    dec de                                        ; $5bac: $1b
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    inc de                                        ; $5baf: $13
    nop                                           ; $5bb0: $00
    xor e                                         ; $5bb1: $ab
    inc d                                         ; $5bb2: $14
    nop                                           ; $5bb3: $00
    jp nc, Jump_000_0015                          ; $5bb4: $d2 $15 $00

    nop                                           ; $5bb7: $00
    ld d, $37                                     ; $5bb8: $16 $37
    nop                                           ; $5bba: $00
    ld d, d                                       ; $5bbb: $52
    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    dec de                                        ; $5bbe: $1b
    nop                                           ; $5bbf: $00
    nop                                           ; $5bc0: $00
    inc de                                        ; $5bc1: $13
    nop                                           ; $5bc2: $00
    ret c                                         ; $5bc3: $d8

    inc d                                         ; $5bc4: $14
    nop                                           ; $5bc5: $00
    db $d3                                        ; $5bc6: $d3
    dec d                                         ; $5bc7: $15
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    ld d, $38                                     ; $5bca: $16 $38
    nop                                           ; $5bcc: $00
    ld d, d                                       ; $5bcd: $52
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    dec de                                        ; $5bd0: $1b
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    inc de                                        ; $5bd3: $13
    nop                                           ; $5bd4: $00
    pop af                                        ; $5bd5: $f1
    inc d                                         ; $5bd6: $14
    nop                                           ; $5bd7: $00
    jp Jump_000_0015                              ; $5bd8: $c3 $15 $00


    nop                                           ; $5bdb: $00
    ld d, $36                                     ; $5bdc: $16 $36
    nop                                           ; $5bde: $00
    ld d, d                                       ; $5bdf: $52
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    dec de                                        ; $5be2: $1b
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    inc de                                        ; $5be5: $13
    nop                                           ; $5be6: $00
    jp hl                                         ; $5be7: $e9


    inc d                                         ; $5be8: $14
    nop                                           ; $5be9: $00
    add sp, $15                                   ; $5bea: $e8 $15
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    ld d, $48                                     ; $5bee: $16 $48
    nop                                           ; $5bf0: $00
    ld d, d                                       ; $5bf1: $52
    nop                                           ; $5bf2: $00
    nop                                           ; $5bf3: $00
    dec de                                        ; $5bf4: $1b
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    ld d, [hl]                                    ; $5bf7: $56
    nop                                           ; $5bf8: $00
    nop                                           ; $5bf9: $00
    rla                                           ; $5bfa: $17
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00
    dec de                                        ; $5bfd: $1b
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    ld l, l                                       ; $5c00: $6d
    nop                                           ; $5c01: $00
    nop                                           ; $5c02: $00
    add hl, bc                                    ; $5c03: $09
    dec c                                         ; $5c04: $0d
    ld bc, $0305                                  ; $5c05: $01 $05 $03
    nop                                           ; $5c08: $00
    ld e, a                                       ; $5c09: $5f
    ld bc, $0000                                  ; $5c0a: $01 $00 $00
    nop                                           ; $5c0d: $00
    nop                                           ; $5c0e: $00
    rrca                                          ; $5c0f: $0f
    dec c                                         ; $5c10: $0d
    ld bc, $1555                                  ; $5c11: $01 $55 $15
    nop                                           ; $5c14: $00
    ld a, l                                       ; $5c15: $7d
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    ld [$00fe], sp                                ; $5c18: $08 $fe $00
    dec d                                         ; $5c1b: $15
    ld h, d                                       ; $5c1c: $62
    nop                                           ; $5c1d: $00
    rlca                                          ; $5c1e: $07
    nop                                           ; $5c1f: $00
    sbc a                                         ; $5c20: $9f
    dec d                                         ; $5c21: $15
    ld h, d                                       ; $5c22: $62
    nop                                           ; $5c23: $00
    rlca                                          ; $5c24: $07
    ld bc, $1523                                  ; $5c25: $01 $23 $15
    ld h, d                                       ; $5c28: $62
    nop                                           ; $5c29: $00
    rlca                                          ; $5c2a: $07
    ld bc, $158f                                  ; $5c2b: $01 $8f $15
    ld h, d                                       ; $5c2e: $62
    nop                                           ; $5c2f: $00
    rlca                                          ; $5c30: $07
    ld bc, $5fef                                  ; $5c31: $01 $ef $5f
    ld bc, $0000                                  ; $5c34: $01 $00 $00
    nop                                           ; $5c37: $00
    nop                                           ; $5c38: $00
    ld e, a                                       ; $5c39: $5f
    ld bc, $1500                                  ; $5c3a: $01 $00 $15
    add hl, sp                                    ; $5c3d: $39
    nop                                           ; $5c3e: $00
    inc sp                                        ; $5c3f: $33
    dec b                                         ; $5c40: $05
    inc a                                         ; $5c41: $3c
    dec d                                         ; $5c42: $15
    add hl, sp                                    ; $5c43: $39
    nop                                           ; $5c44: $00
    inc sp                                        ; $5c45: $33
    dec b                                         ; $5c46: $05
    ld b, b                                       ; $5c47: $40
    dec d                                         ; $5c48: $15
    add hl, sp                                    ; $5c49: $39
    nop                                           ; $5c4a: $00
    inc sp                                        ; $5c4b: $33
    dec b                                         ; $5c4c: $05
    ld b, c                                       ; $5c4d: $41
    dec d                                         ; $5c4e: $15
    add hl, sp                                    ; $5c4f: $39
    nop                                           ; $5c50: $00
    inc sp                                        ; $5c51: $33
    dec b                                         ; $5c52: $05
    ld b, d                                       ; $5c53: $42
    dec d                                         ; $5c54: $15
    add hl, sp                                    ; $5c55: $39
    nop                                           ; $5c56: $00
    inc sp                                        ; $5c57: $33
    dec b                                         ; $5c58: $05
    ld b, e                                       ; $5c59: $43
    dec d                                         ; $5c5a: $15
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    ld b, c                                       ; $5c5d: $41
    nop                                           ; $5c5e: $00
    xor d                                         ; $5c5f: $aa
    dec d                                         ; $5c60: $15
    add hl, sp                                    ; $5c61: $39
    nop                                           ; $5c62: $00
    inc sp                                        ; $5c63: $33
    dec b                                         ; $5c64: $05
    ld b, h                                       ; $5c65: $44
    inc l                                         ; $5c66: $2c
    ld d, $01                                     ; $5c67: $16 $01
    ld d, [hl]                                    ; $5c69: $56
    nop                                           ; $5c6a: $00
    nop                                           ; $5c6b: $00
    ld e, [hl]                                    ; $5c6c: $5e
    ld bc, $3c00                                  ; $5c6d: $01 $00 $3c
    jr c, jr_00e_5c72                             ; $5c70: $38 $00

jr_00e_5c72:
    ld a, [hl+]                                   ; $5c72: $2a
    dec d                                         ; $5c73: $15
    nop                                           ; $5c74: $00
    rla                                           ; $5c75: $17
    ld [hl], $00                                  ; $5c76: $36 $00
    dec de                                        ; $5c78: $1b
    ld b, $00                                     ; $5c79: $06 $00
    rla                                           ; $5c7b: $17
    add hl, sp                                    ; $5c7c: $39
    nop                                           ; $5c7d: $00
    dec de                                        ; $5c7e: $1b
    ld [bc], a                                    ; $5c7f: $02
    nop                                           ; $5c80: $00
    dec d                                         ; $5c81: $15
    ld d, $00                                     ; $5c82: $16 $00
    inc sp                                        ; $5c84: $33
    dec b                                         ; $5c85: $05
    ld b, l                                       ; $5c86: $45
    dec d                                         ; $5c87: $15
    dec d                                         ; $5c88: $15
    nop                                           ; $5c89: $00
    inc sp                                        ; $5c8a: $33
    dec b                                         ; $5c8b: $05
    ld b, [hl]                                    ; $5c8c: $46
    rla                                           ; $5c8d: $17
    scf                                           ; $5c8e: $37
    nop                                           ; $5c8f: $00
    dec de                                        ; $5c90: $1b
    ld [bc], a                                    ; $5c91: $02
    nop                                           ; $5c92: $00
    dec d                                         ; $5c93: $15
    add hl, de                                    ; $5c94: $19
    nop                                           ; $5c95: $00
    inc sp                                        ; $5c96: $33
    dec b                                         ; $5c97: $05
    ld b, a                                       ; $5c98: $47
    dec d                                         ; $5c99: $15
    ld d, l                                       ; $5c9a: $55
    nop                                           ; $5c9b: $00
    inc sp                                        ; $5c9c: $33
    dec b                                         ; $5c9d: $05
    ld c, b                                       ; $5c9e: $48
    dec d                                         ; $5c9f: $15
    ld c, l                                       ; $5ca0: $4d
    nop                                           ; $5ca1: $00
    inc sp                                        ; $5ca2: $33
    dec b                                         ; $5ca3: $05
    ld c, c                                       ; $5ca4: $49
    dec d                                         ; $5ca5: $15
    inc l                                         ; $5ca6: $2c
    nop                                           ; $5ca7: $00
    inc sp                                        ; $5ca8: $33
    dec b                                         ; $5ca9: $05
    ld c, d                                       ; $5caa: $4a
    dec d                                         ; $5cab: $15
    nop                                           ; $5cac: $00
    nop                                           ; $5cad: $00
    inc sp                                        ; $5cae: $33
    dec b                                         ; $5caf: $05
    ld c, e                                       ; $5cb0: $4b
    dec d                                         ; $5cb1: $15
    add hl, sp                                    ; $5cb2: $39
    nop                                           ; $5cb3: $00
    inc sp                                        ; $5cb4: $33
    dec b                                         ; $5cb5: $05
    ld c, h                                       ; $5cb6: $4c
    ld d, h                                       ; $5cb7: $54
    dec b                                         ; $5cb8: $05
    ld bc, $0000                                  ; $5cb9: $01 $00 $00
    nop                                           ; $5cbc: $00
    ld e, a                                       ; $5cbd: $5f
    ld bc, $1500                                  ; $5cbe: $01 $00 $15
    add hl, sp                                    ; $5cc1: $39
    nop                                           ; $5cc2: $00
    inc sp                                        ; $5cc3: $33
    dec b                                         ; $5cc4: $05
    dec a                                         ; $5cc5: $3d
    dec d                                         ; $5cc6: $15
    add hl, sp                                    ; $5cc7: $39
    nop                                           ; $5cc8: $00
    inc sp                                        ; $5cc9: $33
    dec b                                         ; $5cca: $05
    ld b, b                                       ; $5ccb: $40
    dec d                                         ; $5ccc: $15
    add hl, sp                                    ; $5ccd: $39
    nop                                           ; $5cce: $00
    inc sp                                        ; $5ccf: $33
    dec b                                         ; $5cd0: $05
    ld b, c                                       ; $5cd1: $41
    dec d                                         ; $5cd2: $15
    add hl, sp                                    ; $5cd3: $39
    nop                                           ; $5cd4: $00
    inc sp                                        ; $5cd5: $33
    dec b                                         ; $5cd6: $05
    ld b, d                                       ; $5cd7: $42
    dec d                                         ; $5cd8: $15
    add hl, sp                                    ; $5cd9: $39
    nop                                           ; $5cda: $00
    inc sp                                        ; $5cdb: $33
    dec b                                         ; $5cdc: $05
    ld b, e                                       ; $5cdd: $43
    dec d                                         ; $5cde: $15
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    ld b, c                                       ; $5ce1: $41
    nop                                           ; $5ce2: $00
    xor d                                         ; $5ce3: $aa
    ld a, l                                       ; $5ce4: $7d
    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    add hl, bc                                    ; $5ce7: $09
    cp $00                                        ; $5ce8: $fe $00
    dec b                                         ; $5cea: $05
    inc bc                                        ; $5ceb: $03
    nop                                           ; $5cec: $00
    inc bc                                        ; $5ced: $03
    pop de                                        ; $5cee: $d1
    nop                                           ; $5cef: $00
    inc bc                                        ; $5cf0: $03
    ld [de], a                                    ; $5cf1: $12
    nop                                           ; $5cf2: $00
    dec d                                         ; $5cf3: $15
    add hl, sp                                    ; $5cf4: $39
    nop                                           ; $5cf5: $00
    inc sp                                        ; $5cf6: $33
    dec b                                         ; $5cf7: $05
    ld d, a                                       ; $5cf8: $57
    rla                                           ; $5cf9: $17
    ld [hl], $00                                  ; $5cfa: $36 $00
    dec de                                        ; $5cfc: $1b
    ld b, $00                                     ; $5cfd: $06 $00
    rla                                           ; $5cff: $17
    add hl, sp                                    ; $5d00: $39
    nop                                           ; $5d01: $00
    dec de                                        ; $5d02: $1b
    ld [bc], a                                    ; $5d03: $02
    nop                                           ; $5d04: $00
    dec d                                         ; $5d05: $15
    ld d, l                                       ; $5d06: $55
    nop                                           ; $5d07: $00
    inc sp                                        ; $5d08: $33
    dec b                                         ; $5d09: $05
    ld e, b                                       ; $5d0a: $58
    dec d                                         ; $5d0b: $15
    ld c, l                                       ; $5d0c: $4d
    nop                                           ; $5d0d: $00
    inc sp                                        ; $5d0e: $33
    dec b                                         ; $5d0f: $05
    ld e, c                                       ; $5d10: $59
    dec d                                         ; $5d11: $15
    ld d, $00                                     ; $5d12: $16 $00
    inc sp                                        ; $5d14: $33
    dec b                                         ; $5d15: $05
    ld e, d                                       ; $5d16: $5a
    dec d                                         ; $5d17: $15
    jr c, jr_00e_5d1a                             ; $5d18: $38 $00

jr_00e_5d1a:
    inc sp                                        ; $5d1a: $33
    dec b                                         ; $5d1b: $05
    ld e, e                                       ; $5d1c: $5b
    dec d                                         ; $5d1d: $15
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    inc sp                                        ; $5d20: $33
    dec b                                         ; $5d21: $05
    ld e, h                                       ; $5d22: $5c
    ld d, h                                       ; $5d23: $54
    dec b                                         ; $5d24: $05
    ld bc, $0000                                  ; $5d25: $01 $00 $00
    nop                                           ; $5d28: $00
    ld e, a                                       ; $5d29: $5f
    ld bc, $1500                                  ; $5d2a: $01 $00 $15
    add hl, sp                                    ; $5d2d: $39
    nop                                           ; $5d2e: $00
    inc sp                                        ; $5d2f: $33
    dec b                                         ; $5d30: $05
    ld a, $15                                     ; $5d31: $3e $15
    add hl, sp                                    ; $5d33: $39
    nop                                           ; $5d34: $00
    inc sp                                        ; $5d35: $33
    dec b                                         ; $5d36: $05
    ld b, b                                       ; $5d37: $40
    dec d                                         ; $5d38: $15
    add hl, sp                                    ; $5d39: $39
    nop                                           ; $5d3a: $00
    inc sp                                        ; $5d3b: $33
    dec b                                         ; $5d3c: $05
    ld b, c                                       ; $5d3d: $41
    dec d                                         ; $5d3e: $15
    add hl, sp                                    ; $5d3f: $39
    nop                                           ; $5d40: $00
    inc sp                                        ; $5d41: $33
    dec b                                         ; $5d42: $05
    ld b, d                                       ; $5d43: $42
    dec d                                         ; $5d44: $15
    add hl, sp                                    ; $5d45: $39
    nop                                           ; $5d46: $00
    inc sp                                        ; $5d47: $33
    dec b                                         ; $5d48: $05
    ld b, e                                       ; $5d49: $43
    dec d                                         ; $5d4a: $15
    nop                                           ; $5d4b: $00
    nop                                           ; $5d4c: $00
    ld b, c                                       ; $5d4d: $41
    nop                                           ; $5d4e: $00
    xor d                                         ; $5d4f: $aa
    ld a, l                                       ; $5d50: $7d
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    add hl, bc                                    ; $5d53: $09
    cp $00                                        ; $5d54: $fe $00
    dec b                                         ; $5d56: $05
    inc bc                                        ; $5d57: $03
    nop                                           ; $5d58: $00
    inc bc                                        ; $5d59: $03
    xor l                                         ; $5d5a: $ad
    nop                                           ; $5d5b: $00
    inc bc                                        ; $5d5c: $03
    ld c, $00                                     ; $5d5d: $0e $00
    dec d                                         ; $5d5f: $15
    add hl, sp                                    ; $5d60: $39
    nop                                           ; $5d61: $00
    inc sp                                        ; $5d62: $33
    dec b                                         ; $5d63: $05
    ld d, e                                       ; $5d64: $53
    rla                                           ; $5d65: $17
    ld [hl], $00                                  ; $5d66: $36 $00
    dec de                                        ; $5d68: $1b
    ld b, $00                                     ; $5d69: $06 $00
    rla                                           ; $5d6b: $17
    add hl, sp                                    ; $5d6c: $39
    nop                                           ; $5d6d: $00
    dec de                                        ; $5d6e: $1b
    ld [bc], a                                    ; $5d6f: $02
    nop                                           ; $5d70: $00
    dec d                                         ; $5d71: $15
    ld d, $00                                     ; $5d72: $16 $00
    inc sp                                        ; $5d74: $33
    dec b                                         ; $5d75: $05
    ld d, h                                       ; $5d76: $54
    dec d                                         ; $5d77: $15
    inc l                                         ; $5d78: $2c
    nop                                           ; $5d79: $00
    inc sp                                        ; $5d7a: $33
    dec b                                         ; $5d7b: $05
    ld d, l                                       ; $5d7c: $55
    dec d                                         ; $5d7d: $15
    dec d                                         ; $5d7e: $15
    nop                                           ; $5d7f: $00
    inc sp                                        ; $5d80: $33
    dec b                                         ; $5d81: $05
    ld d, [hl]                                    ; $5d82: $56
    ld d, h                                       ; $5d83: $54
    dec b                                         ; $5d84: $05
    ld bc, $0000                                  ; $5d85: $01 $00 $00
    nop                                           ; $5d88: $00
    ld e, a                                       ; $5d89: $5f
    ld bc, $1500                                  ; $5d8a: $01 $00 $15
    add hl, sp                                    ; $5d8d: $39
    nop                                           ; $5d8e: $00
    inc sp                                        ; $5d8f: $33
    dec b                                         ; $5d90: $05
    ccf                                           ; $5d91: $3f
    dec d                                         ; $5d92: $15
    add hl, sp                                    ; $5d93: $39
    nop                                           ; $5d94: $00
    inc sp                                        ; $5d95: $33
    dec b                                         ; $5d96: $05
    ld b, b                                       ; $5d97: $40
    dec d                                         ; $5d98: $15
    add hl, sp                                    ; $5d99: $39
    nop                                           ; $5d9a: $00
    inc sp                                        ; $5d9b: $33
    dec b                                         ; $5d9c: $05
    ld b, c                                       ; $5d9d: $41
    dec d                                         ; $5d9e: $15
    add hl, sp                                    ; $5d9f: $39
    nop                                           ; $5da0: $00
    inc sp                                        ; $5da1: $33
    dec b                                         ; $5da2: $05
    ld b, d                                       ; $5da3: $42
    dec d                                         ; $5da4: $15
    add hl, sp                                    ; $5da5: $39
    nop                                           ; $5da6: $00
    inc sp                                        ; $5da7: $33
    dec b                                         ; $5da8: $05
    ld b, e                                       ; $5da9: $43
    dec d                                         ; $5daa: $15
    nop                                           ; $5dab: $00
    nop                                           ; $5dac: $00
    ld b, c                                       ; $5dad: $41
    nop                                           ; $5dae: $00
    xor d                                         ; $5daf: $aa
    ld a, l                                       ; $5db0: $7d
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    add hl, bc                                    ; $5db3: $09
    cp $00                                        ; $5db4: $fe $00
    dec b                                         ; $5db6: $05
    inc bc                                        ; $5db7: $03
    nop                                           ; $5db8: $00
    inc bc                                        ; $5db9: $03
    adc l                                         ; $5dba: $8d
    nop                                           ; $5dbb: $00
    inc bc                                        ; $5dbc: $03
    stop                                          ; $5dbd: $10 $00
    dec d                                         ; $5dbf: $15
    add hl, sp                                    ; $5dc0: $39
    nop                                           ; $5dc1: $00
    inc sp                                        ; $5dc2: $33
    dec b                                         ; $5dc3: $05
    ld c, [hl]                                    ; $5dc4: $4e
    rla                                           ; $5dc5: $17
    ld [hl], $00                                  ; $5dc6: $36 $00
    dec de                                        ; $5dc8: $1b
    ld b, $00                                     ; $5dc9: $06 $00
    rla                                           ; $5dcb: $17
    add hl, sp                                    ; $5dcc: $39
    nop                                           ; $5dcd: $00
    dec de                                        ; $5dce: $1b
    ld [bc], a                                    ; $5dcf: $02
    nop                                           ; $5dd0: $00
    dec d                                         ; $5dd1: $15
    ld d, $00                                     ; $5dd2: $16 $00
    inc sp                                        ; $5dd4: $33
    dec b                                         ; $5dd5: $05
    ld c, a                                       ; $5dd6: $4f
    dec d                                         ; $5dd7: $15
    dec d                                         ; $5dd8: $15
    nop                                           ; $5dd9: $00
    inc sp                                        ; $5dda: $33
    dec b                                         ; $5ddb: $05
    ld d, b                                       ; $5ddc: $50
    dec d                                         ; $5ddd: $15
    nop                                           ; $5dde: $00
    nop                                           ; $5ddf: $00
    inc sp                                        ; $5de0: $33
    dec b                                         ; $5de1: $05
    ld d, c                                       ; $5de2: $51
    dec d                                         ; $5de3: $15
    ld d, l                                       ; $5de4: $55
    nop                                           ; $5de5: $00
    inc sp                                        ; $5de6: $33
    dec b                                         ; $5de7: $05
    ld d, d                                       ; $5de8: $52
    ld d, h                                       ; $5de9: $54
    dec b                                         ; $5dea: $05
    ld bc, $0000                                  ; $5deb: $01 $00 $00
    nop                                           ; $5dee: $00
    ld bc, $0000                                  ; $5def: $01 $00 $00
    ld d, [hl]                                    ; $5df2: $56
    nop                                           ; $5df3: $00
    nop                                           ; $5df4: $00
    rla                                           ; $5df5: $17
    nop                                           ; $5df6: $00
    nop                                           ; $5df7: $00
    ld [hl], $00                                  ; $5df8: $36 $00
    nop                                           ; $5dfa: $00
    ld hl, $005f                                  ; $5dfb: $21 $5f $00
    inc de                                        ; $5dfe: $13
    rst $38                                       ; $5dff: $ff
    ld sp, hl                                     ; $5e00: $f9
    inc d                                         ; $5e01: $14
    rst $38                                       ; $5e02: $ff
    db $f4                                        ; $5e03: $f4
    dec d                                         ; $5e04: $15
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    ld d, $73                                     ; $5e07: $16 $73
    ld bc, $005c                                  ; $5e09: $01 $5c $00
    nop                                           ; $5e0c: $00
    daa                                           ; $5e0d: $27
    nop                                           ; $5e0e: $00
    ld h, h                                       ; $5e0f: $64
    ld e, l                                       ; $5e10: $5d
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    ld e, c                                       ; $5e13: $59
    nop                                           ; $5e14: $00
    nop                                           ; $5e15: $00
    daa                                           ; $5e16: $27
    nop                                           ; $5e17: $00
    ld h, h                                       ; $5e18: $64
    rla                                           ; $5e19: $17
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    ld h, h                                       ; $5e1c: $64
    nop                                           ; $5e1d: $00
    nop                                           ; $5e1e: $00
    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    rst $38                                       ; $5e24: $ff
    rst $38                                       ; $5e25: $ff
    rst $38                                       ; $5e26: $ff
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    rst $38                                       ; $5e2a: $ff
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    rst $38                                       ; $5e31: $ff
    rst $38                                       ; $5e32: $ff
    rst $38                                       ; $5e33: $ff
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    rst $38                                       ; $5e36: $ff
    rst $38                                       ; $5e37: $ff
    rst $38                                       ; $5e38: $ff
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    rst $38                                       ; $5e42: $ff
    rst $38                                       ; $5e43: $ff
    rst $38                                       ; $5e44: $ff
    rst $38                                       ; $5e45: $ff
    rst $38                                       ; $5e46: $ff
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    rst $38                                       ; $5e4e: $ff
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    rst $38                                       ; $5e52: $ff
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    rst $38                                       ; $5e57: $ff
    rst $38                                       ; $5e58: $ff
    rst $38                                       ; $5e59: $ff
    rst $38                                       ; $5e5a: $ff
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    rst $38                                       ; $5e67: $ff
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    rst $38                                       ; $5e6b: $ff
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    rst $38                                       ; $5e6f: $ff
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    rst $38                                       ; $5e75: $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    rst $38                                       ; $5e7b: $ff
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    rst $38                                       ; $5e8b: $ff
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    rst $38                                       ; $5e8e: $ff
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    rst $38                                       ; $5e91: $ff
    rst $38                                       ; $5e92: $ff
    rst $38                                       ; $5e93: $ff
    rst $38                                       ; $5e94: $ff
    rst $38                                       ; $5e95: $ff
    rst $38                                       ; $5e96: $ff
    rst $38                                       ; $5e97: $ff
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    rst $38                                       ; $5e9a: $ff
    rst $38                                       ; $5e9b: $ff
    rst $38                                       ; $5e9c: $ff
    rst $38                                       ; $5e9d: $ff
    rst $38                                       ; $5e9e: $ff
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
    rst $38                                       ; $5ea3: $ff
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    rst $38                                       ; $5eab: $ff
    rst $38                                       ; $5eac: $ff
    rst $38                                       ; $5ead: $ff
    rst $38                                       ; $5eae: $ff
    rst $38                                       ; $5eaf: $ff
    rst $38                                       ; $5eb0: $ff
    rst $38                                       ; $5eb1: $ff
    rst $38                                       ; $5eb2: $ff
    rst $38                                       ; $5eb3: $ff
    rst $38                                       ; $5eb4: $ff
    rst $38                                       ; $5eb5: $ff
    rst $38                                       ; $5eb6: $ff
    rst $38                                       ; $5eb7: $ff
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    rst $38                                       ; $5eba: $ff
    rst $38                                       ; $5ebb: $ff
    rst $38                                       ; $5ebc: $ff
    rst $38                                       ; $5ebd: $ff
    rst $38                                       ; $5ebe: $ff
    rst $38                                       ; $5ebf: $ff
    rst $38                                       ; $5ec0: $ff
    rst $38                                       ; $5ec1: $ff
    rst $38                                       ; $5ec2: $ff
    rst $38                                       ; $5ec3: $ff
    rst $38                                       ; $5ec4: $ff
    rst $38                                       ; $5ec5: $ff
    rst $38                                       ; $5ec6: $ff
    rst $38                                       ; $5ec7: $ff
    rst $38                                       ; $5ec8: $ff
    rst $38                                       ; $5ec9: $ff
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    rst $38                                       ; $5ecf: $ff
    rst $38                                       ; $5ed0: $ff
    rst $38                                       ; $5ed1: $ff
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    rst $38                                       ; $5ed8: $ff
    rst $38                                       ; $5ed9: $ff
    rst $38                                       ; $5eda: $ff
    rst $38                                       ; $5edb: $ff
    rst $38                                       ; $5edc: $ff
    rst $38                                       ; $5edd: $ff
    rst $38                                       ; $5ede: $ff
    rst $38                                       ; $5edf: $ff
    rst $38                                       ; $5ee0: $ff
    rst $38                                       ; $5ee1: $ff
    rst $38                                       ; $5ee2: $ff
    rst $38                                       ; $5ee3: $ff
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    rst $38                                       ; $5ee6: $ff
    rst $38                                       ; $5ee7: $ff
    rst $38                                       ; $5ee8: $ff
    rst $38                                       ; $5ee9: $ff
    rst $38                                       ; $5eea: $ff
    rst $38                                       ; $5eeb: $ff
    rst $38                                       ; $5eec: $ff
    rst $38                                       ; $5eed: $ff
    rst $38                                       ; $5eee: $ff
    rst $38                                       ; $5eef: $ff
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    rst $38                                       ; $5ef2: $ff
    rst $38                                       ; $5ef3: $ff
    rst $38                                       ; $5ef4: $ff
    rst $38                                       ; $5ef5: $ff
    rst $38                                       ; $5ef6: $ff
    rst $38                                       ; $5ef7: $ff
    rst $38                                       ; $5ef8: $ff
    rst $38                                       ; $5ef9: $ff
    rst $38                                       ; $5efa: $ff
    rst $38                                       ; $5efb: $ff
    rst $38                                       ; $5efc: $ff
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    rst $38                                       ; $5eff: $ff
    rst $38                                       ; $5f00: $ff
    rst $38                                       ; $5f01: $ff
    rst $38                                       ; $5f02: $ff
    rst $38                                       ; $5f03: $ff
    rst $38                                       ; $5f04: $ff
    rst $38                                       ; $5f05: $ff
    rst $38                                       ; $5f06: $ff
    rst $38                                       ; $5f07: $ff
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    rst $38                                       ; $5f0a: $ff
    rst $38                                       ; $5f0b: $ff
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    rst $38                                       ; $5f0f: $ff
    rst $38                                       ; $5f10: $ff
    rst $38                                       ; $5f11: $ff
    rst $38                                       ; $5f12: $ff
    rst $38                                       ; $5f13: $ff
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    rst $38                                       ; $5f16: $ff
    rst $38                                       ; $5f17: $ff
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    rst $38                                       ; $5f22: $ff
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    rst $38                                       ; $5f28: $ff
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    rst $38                                       ; $5f2c: $ff
    rst $38                                       ; $5f2d: $ff
    rst $38                                       ; $5f2e: $ff
    rst $38                                       ; $5f2f: $ff
    rst $38                                       ; $5f30: $ff
    rst $38                                       ; $5f31: $ff
    rst $38                                       ; $5f32: $ff
    rst $38                                       ; $5f33: $ff
    rst $38                                       ; $5f34: $ff
    rst $38                                       ; $5f35: $ff
    rst $38                                       ; $5f36: $ff
    rst $38                                       ; $5f37: $ff
    rst $38                                       ; $5f38: $ff
    rst $38                                       ; $5f39: $ff
    rst $38                                       ; $5f3a: $ff
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    rst $38                                       ; $5f3d: $ff
    rst $38                                       ; $5f3e: $ff
    rst $38                                       ; $5f3f: $ff
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    rst $38                                       ; $5f42: $ff
    rst $38                                       ; $5f43: $ff
    rst $38                                       ; $5f44: $ff
    rst $38                                       ; $5f45: $ff
    rst $38                                       ; $5f46: $ff
    rst $38                                       ; $5f47: $ff
    rst $38                                       ; $5f48: $ff
    rst $38                                       ; $5f49: $ff
    rst $38                                       ; $5f4a: $ff
    rst $38                                       ; $5f4b: $ff
    rst $38                                       ; $5f4c: $ff
    rst $38                                       ; $5f4d: $ff
    rst $38                                       ; $5f4e: $ff
    rst $38                                       ; $5f4f: $ff
    rst $38                                       ; $5f50: $ff
    rst $38                                       ; $5f51: $ff
    rst $38                                       ; $5f52: $ff
    rst $38                                       ; $5f53: $ff
    rst $38                                       ; $5f54: $ff
    rst $38                                       ; $5f55: $ff
    rst $38                                       ; $5f56: $ff
    rst $38                                       ; $5f57: $ff
    rst $38                                       ; $5f58: $ff
    rst $38                                       ; $5f59: $ff
    rst $38                                       ; $5f5a: $ff
    rst $38                                       ; $5f5b: $ff
    rst $38                                       ; $5f5c: $ff
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    rst $38                                       ; $5f62: $ff
    rst $38                                       ; $5f63: $ff
    rst $38                                       ; $5f64: $ff
    rst $38                                       ; $5f65: $ff
    rst $38                                       ; $5f66: $ff
    rst $38                                       ; $5f67: $ff
    rst $38                                       ; $5f68: $ff
    rst $38                                       ; $5f69: $ff
    rst $38                                       ; $5f6a: $ff
    rst $38                                       ; $5f6b: $ff
    rst $38                                       ; $5f6c: $ff
    rst $38                                       ; $5f6d: $ff
    rst $38                                       ; $5f6e: $ff
    rst $38                                       ; $5f6f: $ff
    rst $38                                       ; $5f70: $ff
    rst $38                                       ; $5f71: $ff
    rst $38                                       ; $5f72: $ff
    rst $38                                       ; $5f73: $ff
    rst $38                                       ; $5f74: $ff
    rst $38                                       ; $5f75: $ff
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    rst $38                                       ; $5f78: $ff
    rst $38                                       ; $5f79: $ff
    rst $38                                       ; $5f7a: $ff
    rst $38                                       ; $5f7b: $ff
    rst $38                                       ; $5f7c: $ff
    rst $38                                       ; $5f7d: $ff
    rst $38                                       ; $5f7e: $ff
    rst $38                                       ; $5f7f: $ff
    rst $38                                       ; $5f80: $ff
    rst $38                                       ; $5f81: $ff
    rst $38                                       ; $5f82: $ff
    rst $38                                       ; $5f83: $ff
    rst $38                                       ; $5f84: $ff
    rst $38                                       ; $5f85: $ff
    rst $38                                       ; $5f86: $ff
    rst $38                                       ; $5f87: $ff
    rst $38                                       ; $5f88: $ff
    rst $38                                       ; $5f89: $ff
    rst $38                                       ; $5f8a: $ff
    rst $38                                       ; $5f8b: $ff
    rst $38                                       ; $5f8c: $ff
    rst $38                                       ; $5f8d: $ff
    rst $38                                       ; $5f8e: $ff
    rst $38                                       ; $5f8f: $ff
    rst $38                                       ; $5f90: $ff
    rst $38                                       ; $5f91: $ff
    rst $38                                       ; $5f92: $ff
    rst $38                                       ; $5f93: $ff
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    rst $38                                       ; $5f96: $ff
    rst $38                                       ; $5f97: $ff
    rst $38                                       ; $5f98: $ff
    rst $38                                       ; $5f99: $ff
    rst $38                                       ; $5f9a: $ff
    rst $38                                       ; $5f9b: $ff
    rst $38                                       ; $5f9c: $ff
    rst $38                                       ; $5f9d: $ff
    rst $38                                       ; $5f9e: $ff
    rst $38                                       ; $5f9f: $ff
    rst $38                                       ; $5fa0: $ff
    rst $38                                       ; $5fa1: $ff
    rst $38                                       ; $5fa2: $ff
    rst $38                                       ; $5fa3: $ff
    rst $38                                       ; $5fa4: $ff
    rst $38                                       ; $5fa5: $ff
    rst $38                                       ; $5fa6: $ff
    rst $38                                       ; $5fa7: $ff
    rst $38                                       ; $5fa8: $ff
    rst $38                                       ; $5fa9: $ff
    rst $38                                       ; $5faa: $ff
    rst $38                                       ; $5fab: $ff
    rst $38                                       ; $5fac: $ff
    rst $38                                       ; $5fad: $ff
    rst $38                                       ; $5fae: $ff
    rst $38                                       ; $5faf: $ff
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    rst $38                                       ; $5fb2: $ff
    rst $38                                       ; $5fb3: $ff
    rst $38                                       ; $5fb4: $ff
    rst $38                                       ; $5fb5: $ff
    rst $38                                       ; $5fb6: $ff
    rst $38                                       ; $5fb7: $ff
    rst $38                                       ; $5fb8: $ff
    rst $38                                       ; $5fb9: $ff
    rst $38                                       ; $5fba: $ff
    rst $38                                       ; $5fbb: $ff
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    rst $38                                       ; $5fbe: $ff
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    rst $38                                       ; $5fc2: $ff
    rst $38                                       ; $5fc3: $ff
    rst $38                                       ; $5fc4: $ff
    rst $38                                       ; $5fc5: $ff
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    rst $38                                       ; $5fc8: $ff
    rst $38                                       ; $5fc9: $ff
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    rst $38                                       ; $5fcc: $ff
    rst $38                                       ; $5fcd: $ff
    rst $38                                       ; $5fce: $ff
    rst $38                                       ; $5fcf: $ff
    rst $38                                       ; $5fd0: $ff
    rst $38                                       ; $5fd1: $ff
    rst $38                                       ; $5fd2: $ff
    rst $38                                       ; $5fd3: $ff
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    rst $38                                       ; $5fda: $ff
    rst $38                                       ; $5fdb: $ff
    rst $38                                       ; $5fdc: $ff
    rst $38                                       ; $5fdd: $ff
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    rst $38                                       ; $5fe3: $ff
    rst $38                                       ; $5fe4: $ff
    rst $38                                       ; $5fe5: $ff
    rst $38                                       ; $5fe6: $ff
    rst $38                                       ; $5fe7: $ff
    rst $38                                       ; $5fe8: $ff
    rst $38                                       ; $5fe9: $ff
    rst $38                                       ; $5fea: $ff
    rst $38                                       ; $5feb: $ff
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    rst $38                                       ; $5fef: $ff
    rst $38                                       ; $5ff0: $ff
    rst $38                                       ; $5ff1: $ff
    rst $38                                       ; $5ff2: $ff
    rst $38                                       ; $5ff3: $ff
    rst $38                                       ; $5ff4: $ff
    rst $38                                       ; $5ff5: $ff
    rst $38                                       ; $5ff6: $ff
    rst $38                                       ; $5ff7: $ff
    rst $38                                       ; $5ff8: $ff
    rst $38                                       ; $5ff9: $ff
    rst $38                                       ; $5ffa: $ff
    rst $38                                       ; $5ffb: $ff
    rst $38                                       ; $5ffc: $ff
    rst $38                                       ; $5ffd: $ff
    rst $38                                       ; $5ffe: $ff
    rst $38                                       ; $5fff: $ff
    rst $38                                       ; $6000: $ff
    rst $38                                       ; $6001: $ff
    rst $38                                       ; $6002: $ff
    rst $38                                       ; $6003: $ff
    rst $38                                       ; $6004: $ff
    rst $38                                       ; $6005: $ff
    rst $38                                       ; $6006: $ff
    rst $38                                       ; $6007: $ff
    rst $38                                       ; $6008: $ff
    rst $38                                       ; $6009: $ff
    rst $38                                       ; $600a: $ff
    rst $38                                       ; $600b: $ff
    rst $38                                       ; $600c: $ff
    rst $38                                       ; $600d: $ff
    rst $38                                       ; $600e: $ff
    rst $38                                       ; $600f: $ff
    rst $38                                       ; $6010: $ff
    rst $38                                       ; $6011: $ff
    rst $38                                       ; $6012: $ff
    rst $38                                       ; $6013: $ff
    rst $38                                       ; $6014: $ff
    rst $38                                       ; $6015: $ff
    rst $38                                       ; $6016: $ff
    rst $38                                       ; $6017: $ff
    rst $38                                       ; $6018: $ff
    rst $38                                       ; $6019: $ff
    rst $38                                       ; $601a: $ff
    rst $38                                       ; $601b: $ff
    rst $38                                       ; $601c: $ff
    rst $38                                       ; $601d: $ff
    rst $38                                       ; $601e: $ff
    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    rst $38                                       ; $6021: $ff
    rst $38                                       ; $6022: $ff
    rst $38                                       ; $6023: $ff
    rst $38                                       ; $6024: $ff
    rst $38                                       ; $6025: $ff
    rst $38                                       ; $6026: $ff
    rst $38                                       ; $6027: $ff
    rst $38                                       ; $6028: $ff
    rst $38                                       ; $6029: $ff
    rst $38                                       ; $602a: $ff
    rst $38                                       ; $602b: $ff
    rst $38                                       ; $602c: $ff
    rst $38                                       ; $602d: $ff
    rst $38                                       ; $602e: $ff
    rst $38                                       ; $602f: $ff
    rst $38                                       ; $6030: $ff
    rst $38                                       ; $6031: $ff
    rst $38                                       ; $6032: $ff
    rst $38                                       ; $6033: $ff
    rst $38                                       ; $6034: $ff
    rst $38                                       ; $6035: $ff
    rst $38                                       ; $6036: $ff
    rst $38                                       ; $6037: $ff
    rst $38                                       ; $6038: $ff
    rst $38                                       ; $6039: $ff
    rst $38                                       ; $603a: $ff
    rst $38                                       ; $603b: $ff
    rst $38                                       ; $603c: $ff
    rst $38                                       ; $603d: $ff
    rst $38                                       ; $603e: $ff
    rst $38                                       ; $603f: $ff
    rst $38                                       ; $6040: $ff
    rst $38                                       ; $6041: $ff
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    rst $38                                       ; $6044: $ff
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    rst $38                                       ; $6047: $ff
    rst $38                                       ; $6048: $ff
    rst $38                                       ; $6049: $ff
    rst $38                                       ; $604a: $ff
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    rst $38                                       ; $604d: $ff
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    rst $38                                       ; $6050: $ff
    rst $38                                       ; $6051: $ff
    rst $38                                       ; $6052: $ff
    rst $38                                       ; $6053: $ff
    rst $38                                       ; $6054: $ff
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    rst $38                                       ; $6059: $ff
    rst $38                                       ; $605a: $ff
    rst $38                                       ; $605b: $ff
    rst $38                                       ; $605c: $ff
    rst $38                                       ; $605d: $ff
    rst $38                                       ; $605e: $ff
    rst $38                                       ; $605f: $ff
    rst $38                                       ; $6060: $ff
    rst $38                                       ; $6061: $ff
    rst $38                                       ; $6062: $ff
    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rst $38                                       ; $606a: $ff
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    rst $38                                       ; $6070: $ff
    rst $38                                       ; $6071: $ff
    rst $38                                       ; $6072: $ff
    rst $38                                       ; $6073: $ff
    rst $38                                       ; $6074: $ff
    rst $38                                       ; $6075: $ff
    rst $38                                       ; $6076: $ff
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    rst $38                                       ; $607c: $ff
    rst $38                                       ; $607d: $ff
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    rst $38                                       ; $6083: $ff
    rst $38                                       ; $6084: $ff
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    rst $38                                       ; $6087: $ff
    rst $38                                       ; $6088: $ff
    rst $38                                       ; $6089: $ff
    rst $38                                       ; $608a: $ff
    rst $38                                       ; $608b: $ff
    rst $38                                       ; $608c: $ff
    rst $38                                       ; $608d: $ff
    rst $38                                       ; $608e: $ff
    rst $38                                       ; $608f: $ff
    rst $38                                       ; $6090: $ff
    rst $38                                       ; $6091: $ff
    rst $38                                       ; $6092: $ff
    rst $38                                       ; $6093: $ff
    rst $38                                       ; $6094: $ff
    rst $38                                       ; $6095: $ff
    rst $38                                       ; $6096: $ff
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    rst $38                                       ; $60a1: $ff
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    rst $38                                       ; $60a4: $ff
    rst $38                                       ; $60a5: $ff
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    rst $38                                       ; $60aa: $ff
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    rst $38                                       ; $60b7: $ff
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    rst $38                                       ; $60eb: $ff
    rst $38                                       ; $60ec: $ff
    rst $38                                       ; $60ed: $ff
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
    rst $38                                       ; $611f: $ff
    rst $38                                       ; $6120: $ff
    rst $38                                       ; $6121: $ff
    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    rst $38                                       ; $6145: $ff
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    rst $38                                       ; $6151: $ff
    rst $38                                       ; $6152: $ff
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    rst $38                                       ; $615c: $ff
    rst $38                                       ; $615d: $ff
    rst $38                                       ; $615e: $ff
    rst $38                                       ; $615f: $ff
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    rst $38                                       ; $6163: $ff
    rst $38                                       ; $6164: $ff
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    rst $38                                       ; $616a: $ff
    rst $38                                       ; $616b: $ff
    rst $38                                       ; $616c: $ff
    rst $38                                       ; $616d: $ff
    rst $38                                       ; $616e: $ff
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rst $38                                       ; $6173: $ff
    rst $38                                       ; $6174: $ff
    rst $38                                       ; $6175: $ff
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    rst $38                                       ; $6179: $ff
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    rst $38                                       ; $617d: $ff
    rst $38                                       ; $617e: $ff
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    rst $38                                       ; $6182: $ff
    rst $38                                       ; $6183: $ff
    rst $38                                       ; $6184: $ff
    rst $38                                       ; $6185: $ff
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    rst $38                                       ; $618f: $ff
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    rst $38                                       ; $61a0: $ff
    rst $38                                       ; $61a1: $ff
    rst $38                                       ; $61a2: $ff
    rst $38                                       ; $61a3: $ff
    rst $38                                       ; $61a4: $ff
    rst $38                                       ; $61a5: $ff
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    rst $38                                       ; $61a8: $ff
    rst $38                                       ; $61a9: $ff
    rst $38                                       ; $61aa: $ff
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    rst $38                                       ; $61ae: $ff
    rst $38                                       ; $61af: $ff
    rst $38                                       ; $61b0: $ff
    rst $38                                       ; $61b1: $ff
    rst $38                                       ; $61b2: $ff
    rst $38                                       ; $61b3: $ff
    rst $38                                       ; $61b4: $ff
    rst $38                                       ; $61b5: $ff
    rst $38                                       ; $61b6: $ff
    rst $38                                       ; $61b7: $ff
    rst $38                                       ; $61b8: $ff
    rst $38                                       ; $61b9: $ff
    rst $38                                       ; $61ba: $ff
    rst $38                                       ; $61bb: $ff
    rst $38                                       ; $61bc: $ff
    rst $38                                       ; $61bd: $ff
    rst $38                                       ; $61be: $ff
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    rst $38                                       ; $61c1: $ff
    rst $38                                       ; $61c2: $ff
    rst $38                                       ; $61c3: $ff
    rst $38                                       ; $61c4: $ff
    rst $38                                       ; $61c5: $ff
    rst $38                                       ; $61c6: $ff
    rst $38                                       ; $61c7: $ff
    rst $38                                       ; $61c8: $ff
    rst $38                                       ; $61c9: $ff
    rst $38                                       ; $61ca: $ff
    rst $38                                       ; $61cb: $ff
    rst $38                                       ; $61cc: $ff
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    rst $38                                       ; $61d0: $ff
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    rst $38                                       ; $61d3: $ff
    rst $38                                       ; $61d4: $ff
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff
    rst $38                                       ; $61d8: $ff
    rst $38                                       ; $61d9: $ff
    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    rst $38                                       ; $61dc: $ff
    rst $38                                       ; $61dd: $ff
    rst $38                                       ; $61de: $ff
    rst $38                                       ; $61df: $ff
    rst $38                                       ; $61e0: $ff
    rst $38                                       ; $61e1: $ff
    rst $38                                       ; $61e2: $ff
    rst $38                                       ; $61e3: $ff
    rst $38                                       ; $61e4: $ff
    rst $38                                       ; $61e5: $ff
    rst $38                                       ; $61e6: $ff
    rst $38                                       ; $61e7: $ff
    rst $38                                       ; $61e8: $ff
    rst $38                                       ; $61e9: $ff
    rst $38                                       ; $61ea: $ff
    rst $38                                       ; $61eb: $ff
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    rst $38                                       ; $61ee: $ff
    rst $38                                       ; $61ef: $ff
    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff
    rst $38                                       ; $61f6: $ff
    rst $38                                       ; $61f7: $ff
    rst $38                                       ; $61f8: $ff
    rst $38                                       ; $61f9: $ff
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    rst $38                                       ; $61fe: $ff
    rst $38                                       ; $61ff: $ff
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    rst $38                                       ; $6202: $ff
    rst $38                                       ; $6203: $ff
    rst $38                                       ; $6204: $ff
    rst $38                                       ; $6205: $ff
    rst $38                                       ; $6206: $ff
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    rst $38                                       ; $6218: $ff
    rst $38                                       ; $6219: $ff
    rst $38                                       ; $621a: $ff
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    rst $38                                       ; $621e: $ff
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    rst $38                                       ; $6226: $ff
    rst $38                                       ; $6227: $ff
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    rst $38                                       ; $622a: $ff
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    rst $38                                       ; $6230: $ff
    rst $38                                       ; $6231: $ff
    rst $38                                       ; $6232: $ff
    rst $38                                       ; $6233: $ff
    rst $38                                       ; $6234: $ff
    rst $38                                       ; $6235: $ff
    rst $38                                       ; $6236: $ff
    rst $38                                       ; $6237: $ff
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    rst $38                                       ; $623a: $ff
    rst $38                                       ; $623b: $ff
    rst $38                                       ; $623c: $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    rst $38                                       ; $6242: $ff
    rst $38                                       ; $6243: $ff
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    rst $38                                       ; $6246: $ff
    rst $38                                       ; $6247: $ff
    rst $38                                       ; $6248: $ff
    rst $38                                       ; $6249: $ff
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    rst $38                                       ; $624c: $ff
    rst $38                                       ; $624d: $ff
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    rst $38                                       ; $6250: $ff
    rst $38                                       ; $6251: $ff
    rst $38                                       ; $6252: $ff
    rst $38                                       ; $6253: $ff
    rst $38                                       ; $6254: $ff
    rst $38                                       ; $6255: $ff
    rst $38                                       ; $6256: $ff
    rst $38                                       ; $6257: $ff
    rst $38                                       ; $6258: $ff
    rst $38                                       ; $6259: $ff
    rst $38                                       ; $625a: $ff
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    rst $38                                       ; $625d: $ff
    rst $38                                       ; $625e: $ff
    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    rst $38                                       ; $6263: $ff
    rst $38                                       ; $6264: $ff
    rst $38                                       ; $6265: $ff
    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    rst $38                                       ; $626a: $ff
    rst $38                                       ; $626b: $ff
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $38                                       ; $6272: $ff
    rst $38                                       ; $6273: $ff
    rst $38                                       ; $6274: $ff
    rst $38                                       ; $6275: $ff
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    rst $38                                       ; $627c: $ff
    rst $38                                       ; $627d: $ff
    rst $38                                       ; $627e: $ff
    rst $38                                       ; $627f: $ff
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    rst $38                                       ; $6285: $ff
    rst $38                                       ; $6286: $ff
    rst $38                                       ; $6287: $ff
    rst $38                                       ; $6288: $ff
    rst $38                                       ; $6289: $ff
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    rst $38                                       ; $628c: $ff
    rst $38                                       ; $628d: $ff
    rst $38                                       ; $628e: $ff
    rst $38                                       ; $628f: $ff
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    rst $38                                       ; $6296: $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    rst $38                                       ; $629c: $ff
    rst $38                                       ; $629d: $ff
    rst $38                                       ; $629e: $ff
    rst $38                                       ; $629f: $ff
    rst $38                                       ; $62a0: $ff
    rst $38                                       ; $62a1: $ff
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    rst $38                                       ; $62a7: $ff
    rst $38                                       ; $62a8: $ff
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    rst $38                                       ; $62ab: $ff
    rst $38                                       ; $62ac: $ff
    rst $38                                       ; $62ad: $ff
    rst $38                                       ; $62ae: $ff
    rst $38                                       ; $62af: $ff
    rst $38                                       ; $62b0: $ff
    rst $38                                       ; $62b1: $ff
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    rst $38                                       ; $62be: $ff
    rst $38                                       ; $62bf: $ff
    rst $38                                       ; $62c0: $ff
    rst $38                                       ; $62c1: $ff
    rst $38                                       ; $62c2: $ff
    rst $38                                       ; $62c3: $ff
    rst $38                                       ; $62c4: $ff
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
    rst $38                                       ; $62e6: $ff
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    rst $38                                       ; $62eb: $ff
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    rst $38                                       ; $62fc: $ff
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    rst $38                                       ; $62ff: $ff
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    rst $38                                       ; $6306: $ff
    rst $38                                       ; $6307: $ff
    rst $38                                       ; $6308: $ff
    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    rst $38                                       ; $6310: $ff
    rst $38                                       ; $6311: $ff
    rst $38                                       ; $6312: $ff
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    rst $38                                       ; $6315: $ff
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    rst $38                                       ; $631a: $ff
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    rst $38                                       ; $631f: $ff
    rst $38                                       ; $6320: $ff
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    rst $38                                       ; $6323: $ff
    rst $38                                       ; $6324: $ff
    rst $38                                       ; $6325: $ff
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff
    rst $38                                       ; $6339: $ff
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    rst $38                                       ; $6340: $ff
    rst $38                                       ; $6341: $ff
    rst $38                                       ; $6342: $ff
    rst $38                                       ; $6343: $ff
    rst $38                                       ; $6344: $ff
    rst $38                                       ; $6345: $ff
    rst $38                                       ; $6346: $ff
    rst $38                                       ; $6347: $ff
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    rst $38                                       ; $634a: $ff
    rst $38                                       ; $634b: $ff
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    rst $38                                       ; $634f: $ff
    rst $38                                       ; $6350: $ff
    rst $38                                       ; $6351: $ff
    rst $38                                       ; $6352: $ff
    rst $38                                       ; $6353: $ff
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    rst $38                                       ; $635b: $ff
    rst $38                                       ; $635c: $ff
    rst $38                                       ; $635d: $ff
    rst $38                                       ; $635e: $ff
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    rst $38                                       ; $6364: $ff
    rst $38                                       ; $6365: $ff
    rst $38                                       ; $6366: $ff
    rst $38                                       ; $6367: $ff
    rst $38                                       ; $6368: $ff
    rst $38                                       ; $6369: $ff
    rst $38                                       ; $636a: $ff
    rst $38                                       ; $636b: $ff
    rst $38                                       ; $636c: $ff
    rst $38                                       ; $636d: $ff
    rst $38                                       ; $636e: $ff
    rst $38                                       ; $636f: $ff
    rst $38                                       ; $6370: $ff
    rst $38                                       ; $6371: $ff
    rst $38                                       ; $6372: $ff
    rst $38                                       ; $6373: $ff
    rst $38                                       ; $6374: $ff
    rst $38                                       ; $6375: $ff
    rst $38                                       ; $6376: $ff
    rst $38                                       ; $6377: $ff
    rst $38                                       ; $6378: $ff
    rst $38                                       ; $6379: $ff
    rst $38                                       ; $637a: $ff
    rst $38                                       ; $637b: $ff
    rst $38                                       ; $637c: $ff
    rst $38                                       ; $637d: $ff
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    rst $38                                       ; $6380: $ff
    rst $38                                       ; $6381: $ff
    rst $38                                       ; $6382: $ff
    rst $38                                       ; $6383: $ff
    rst $38                                       ; $6384: $ff
    rst $38                                       ; $6385: $ff
    rst $38                                       ; $6386: $ff
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    rst $38                                       ; $638d: $ff
    rst $38                                       ; $638e: $ff
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    rst $38                                       ; $6391: $ff
    rst $38                                       ; $6392: $ff
    rst $38                                       ; $6393: $ff
    rst $38                                       ; $6394: $ff
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    rst $38                                       ; $639c: $ff
    rst $38                                       ; $639d: $ff
    rst $38                                       ; $639e: $ff
    rst $38                                       ; $639f: $ff
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $38                                       ; $63a2: $ff
    rst $38                                       ; $63a3: $ff
    rst $38                                       ; $63a4: $ff
    rst $38                                       ; $63a5: $ff
    rst $38                                       ; $63a6: $ff
    rst $38                                       ; $63a7: $ff
    rst $38                                       ; $63a8: $ff
    rst $38                                       ; $63a9: $ff
    rst $38                                       ; $63aa: $ff
    rst $38                                       ; $63ab: $ff
    rst $38                                       ; $63ac: $ff
    rst $38                                       ; $63ad: $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    rst $38                                       ; $63b0: $ff
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    rst $38                                       ; $63b3: $ff
    rst $38                                       ; $63b4: $ff
    rst $38                                       ; $63b5: $ff
    rst $38                                       ; $63b6: $ff
    rst $38                                       ; $63b7: $ff
    rst $38                                       ; $63b8: $ff
    rst $38                                       ; $63b9: $ff
    rst $38                                       ; $63ba: $ff
    rst $38                                       ; $63bb: $ff
    rst $38                                       ; $63bc: $ff
    rst $38                                       ; $63bd: $ff
    rst $38                                       ; $63be: $ff
    rst $38                                       ; $63bf: $ff
    rst $38                                       ; $63c0: $ff
    rst $38                                       ; $63c1: $ff
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    rst $38                                       ; $63c4: $ff
    rst $38                                       ; $63c5: $ff
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    rst $38                                       ; $63ca: $ff
    rst $38                                       ; $63cb: $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    rst $38                                       ; $63d0: $ff
    rst $38                                       ; $63d1: $ff
    rst $38                                       ; $63d2: $ff
    rst $38                                       ; $63d3: $ff
    rst $38                                       ; $63d4: $ff
    rst $38                                       ; $63d5: $ff
    rst $38                                       ; $63d6: $ff
    rst $38                                       ; $63d7: $ff
    rst $38                                       ; $63d8: $ff
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    rst $38                                       ; $63db: $ff
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    rst $38                                       ; $63de: $ff
    rst $38                                       ; $63df: $ff
    rst $38                                       ; $63e0: $ff
    rst $38                                       ; $63e1: $ff
    rst $38                                       ; $63e2: $ff
    rst $38                                       ; $63e3: $ff
    rst $38                                       ; $63e4: $ff
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    rst $38                                       ; $63f3: $ff
    rst $38                                       ; $63f4: $ff
    rst $38                                       ; $63f5: $ff
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    rst $38                                       ; $63f8: $ff
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    rst $38                                       ; $63fc: $ff
    rst $38                                       ; $63fd: $ff
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    rst $38                                       ; $6403: $ff
    rst $38                                       ; $6404: $ff
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    rst $38                                       ; $6408: $ff
    rst $38                                       ; $6409: $ff
    rst $38                                       ; $640a: $ff
    rst $38                                       ; $640b: $ff
    rst $38                                       ; $640c: $ff
    rst $38                                       ; $640d: $ff
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    rst $38                                       ; $6410: $ff
    rst $38                                       ; $6411: $ff
    rst $38                                       ; $6412: $ff
    rst $38                                       ; $6413: $ff
    rst $38                                       ; $6414: $ff
    rst $38                                       ; $6415: $ff
    rst $38                                       ; $6416: $ff
    rst $38                                       ; $6417: $ff
    rst $38                                       ; $6418: $ff
    rst $38                                       ; $6419: $ff
    rst $38                                       ; $641a: $ff
    rst $38                                       ; $641b: $ff
    rst $38                                       ; $641c: $ff
    rst $38                                       ; $641d: $ff
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    rst $38                                       ; $6422: $ff
    rst $38                                       ; $6423: $ff
    rst $38                                       ; $6424: $ff
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    rst $38                                       ; $6427: $ff
    rst $38                                       ; $6428: $ff
    rst $38                                       ; $6429: $ff
    rst $38                                       ; $642a: $ff
    rst $38                                       ; $642b: $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    rst $38                                       ; $6430: $ff
    rst $38                                       ; $6431: $ff
    rst $38                                       ; $6432: $ff
    rst $38                                       ; $6433: $ff
    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    rst $38                                       ; $6439: $ff
    rst $38                                       ; $643a: $ff
    rst $38                                       ; $643b: $ff
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
    rst $38                                       ; $643e: $ff
    rst $38                                       ; $643f: $ff
    rst $38                                       ; $6440: $ff
    rst $38                                       ; $6441: $ff
    rst $38                                       ; $6442: $ff
    rst $38                                       ; $6443: $ff
    rst $38                                       ; $6444: $ff
    rst $38                                       ; $6445: $ff
    rst $38                                       ; $6446: $ff
    rst $38                                       ; $6447: $ff
    rst $38                                       ; $6448: $ff
    rst $38                                       ; $6449: $ff
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    rst $38                                       ; $6450: $ff
    rst $38                                       ; $6451: $ff
    rst $38                                       ; $6452: $ff
    rst $38                                       ; $6453: $ff
    rst $38                                       ; $6454: $ff
    rst $38                                       ; $6455: $ff
    rst $38                                       ; $6456: $ff
    rst $38                                       ; $6457: $ff
    rst $38                                       ; $6458: $ff
    rst $38                                       ; $6459: $ff
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    rst $38                                       ; $6460: $ff
    rst $38                                       ; $6461: $ff
    rst $38                                       ; $6462: $ff
    rst $38                                       ; $6463: $ff
    rst $38                                       ; $6464: $ff
    rst $38                                       ; $6465: $ff
    rst $38                                       ; $6466: $ff
    rst $38                                       ; $6467: $ff
    rst $38                                       ; $6468: $ff
    rst $38                                       ; $6469: $ff
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    rst $38                                       ; $646d: $ff
    rst $38                                       ; $646e: $ff
    rst $38                                       ; $646f: $ff
    rst $38                                       ; $6470: $ff
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    rst $38                                       ; $6473: $ff
    rst $38                                       ; $6474: $ff
    rst $38                                       ; $6475: $ff
    rst $38                                       ; $6476: $ff
    rst $38                                       ; $6477: $ff
    rst $38                                       ; $6478: $ff
    rst $38                                       ; $6479: $ff
    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    rst $38                                       ; $647c: $ff
    rst $38                                       ; $647d: $ff
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    rst $38                                       ; $6483: $ff
    rst $38                                       ; $6484: $ff
    rst $38                                       ; $6485: $ff
    rst $38                                       ; $6486: $ff
    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    rst $38                                       ; $648a: $ff
    rst $38                                       ; $648b: $ff
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    rst $38                                       ; $648f: $ff
    rst $38                                       ; $6490: $ff
    rst $38                                       ; $6491: $ff
    rst $38                                       ; $6492: $ff
    rst $38                                       ; $6493: $ff
    rst $38                                       ; $6494: $ff
    rst $38                                       ; $6495: $ff
    rst $38                                       ; $6496: $ff
    rst $38                                       ; $6497: $ff
    rst $38                                       ; $6498: $ff
    rst $38                                       ; $6499: $ff
    rst $38                                       ; $649a: $ff
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    rst $38                                       ; $64a2: $ff
    rst $38                                       ; $64a3: $ff
    rst $38                                       ; $64a4: $ff
    rst $38                                       ; $64a5: $ff
    rst $38                                       ; $64a6: $ff
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff
    rst $38                                       ; $64ad: $ff
    rst $38                                       ; $64ae: $ff
    rst $38                                       ; $64af: $ff
    rst $38                                       ; $64b0: $ff
    rst $38                                       ; $64b1: $ff
    rst $38                                       ; $64b2: $ff
    rst $38                                       ; $64b3: $ff
    rst $38                                       ; $64b4: $ff
    rst $38                                       ; $64b5: $ff
    rst $38                                       ; $64b6: $ff
    rst $38                                       ; $64b7: $ff
    rst $38                                       ; $64b8: $ff
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $38                                       ; $64bb: $ff
    rst $38                                       ; $64bc: $ff
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    rst $38                                       ; $64bf: $ff
    rst $38                                       ; $64c0: $ff
    rst $38                                       ; $64c1: $ff
    rst $38                                       ; $64c2: $ff
    rst $38                                       ; $64c3: $ff
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    rst $38                                       ; $64ca: $ff
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    rst $38                                       ; $64d3: $ff
    rst $38                                       ; $64d4: $ff
    rst $38                                       ; $64d5: $ff
    rst $38                                       ; $64d6: $ff
    rst $38                                       ; $64d7: $ff
    rst $38                                       ; $64d8: $ff
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    rst $38                                       ; $64db: $ff
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    rst $38                                       ; $64de: $ff
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    rst $38                                       ; $64e1: $ff
    rst $38                                       ; $64e2: $ff
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    rst $38                                       ; $6507: $ff
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    rst $38                                       ; $654c: $ff
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
    rst $38                                       ; $6561: $ff
    rst $38                                       ; $6562: $ff
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    rst $38                                       ; $6572: $ff
    rst $38                                       ; $6573: $ff
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    rst $38                                       ; $65a0: $ff
    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    rst $38                                       ; $65d2: $ff
    rst $38                                       ; $65d3: $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    rst $38                                       ; $65d7: $ff
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    rst $38                                       ; $65dd: $ff
    rst $38                                       ; $65de: $ff
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    rst $38                                       ; $65f7: $ff
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    rst $38                                       ; $6627: $ff
    rst $38                                       ; $6628: $ff
    rst $38                                       ; $6629: $ff
    rst $38                                       ; $662a: $ff
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    rst $38                                       ; $662f: $ff
    rst $38                                       ; $6630: $ff
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    rst $38                                       ; $6633: $ff
    rst $38                                       ; $6634: $ff
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $38                                       ; $663d: $ff
    rst $38                                       ; $663e: $ff
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    rst $38                                       ; $6641: $ff
    rst $38                                       ; $6642: $ff
    rst $38                                       ; $6643: $ff
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    rst $38                                       ; $664a: $ff
    rst $38                                       ; $664b: $ff
    rst $38                                       ; $664c: $ff
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    rst $38                                       ; $6655: $ff
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    rst $38                                       ; $6658: $ff
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    rst $38                                       ; $6663: $ff
    rst $38                                       ; $6664: $ff
    rst $38                                       ; $6665: $ff
    rst $38                                       ; $6666: $ff
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $38                                       ; $6671: $ff
    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    rst $38                                       ; $667c: $ff
    rst $38                                       ; $667d: $ff
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    rst $38                                       ; $6680: $ff
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    rst $38                                       ; $6688: $ff
    rst $38                                       ; $6689: $ff
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst $38                                       ; $6836: $ff
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    rst $38                                       ; $695e: $ff
    rst $38                                       ; $695f: $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    rst $38                                       ; $6964: $ff
    rst $38                                       ; $6965: $ff
    rst $38                                       ; $6966: $ff
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
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
