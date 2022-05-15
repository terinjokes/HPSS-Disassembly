; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    db $7a

    ld a, d                                       ; $4001: $7a
    ld a, d                                       ; $4002: $7a
    ld a, d                                       ; $4003: $7a
    ld a, d                                       ; $4004: $7a
    ld a, c                                       ; $4005: $79
    add c                                         ; $4006: $81
    ld [hl], c                                    ; $4007: $71
    ld [hl], e                                    ; $4008: $73
    add [hl]                                      ; $4009: $86
    add l                                         ; $400a: $85
    add h                                         ; $400b: $84
    add e                                         ; $400c: $83
    ld a, h                                       ; $400d: $7c
    ld a, a                                       ; $400e: $7f
    ld a, d                                       ; $400f: $7a
    ld [hl], d                                    ; $4010: $72
    ld l, [hl]                                    ; $4011: $6e
    ld l, c                                       ; $4012: $69
    ld a, b                                       ; $4013: $78
    ld [hl], a                                    ; $4014: $77
    ld a, [hl]                                    ; $4015: $7e
    ld [hl], h                                    ; $4016: $74
    add c                                         ; $4017: $81
    add d                                         ; $4018: $82
    add b                                         ; $4019: $80
    ld a, e                                       ; $401a: $7b
    ld l, b                                       ; $401b: $68
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    nop                                           ; $401e: $00
    nop                                           ; $401f: $00
    nop                                           ; $4020: $00
    ld [hl], c                                    ; $4021: $71
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    nop                                           ; $403c: $00
    nop                                           ; $403d: $00
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    nop                                           ; $404c: $00
    nop                                           ; $404d: $00
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    nop                                           ; $406c: $00
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    ld b, $00                                     ; $4085: $06 $00
    inc l                                         ; $4087: $2c
    nop                                           ; $4088: $00
    ld e, d                                       ; $4089: $5a
    nop                                           ; $408a: $00
    ld c, $00                                     ; $408b: $0e $00
    jr jr_01b_408f                                ; $408d: $18 $00

jr_01b_408f:
    ld [hl+], a                                   ; $408f: $22
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    inc c                                         ; $4095: $0c
    nop                                           ; $4096: $00
    cp $00                                        ; $4097: $fe $00
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    nop                                           ; $409b: $00
    nop                                           ; $409c: $00
    nop                                           ; $409d: $00
    ld bc, $000c                                  ; $409e: $01 $0c $00
    cp $00                                        ; $40a1: $fe $00
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    ld [bc], a                                    ; $40a8: $02
    inc c                                         ; $40a9: $0c
    nop                                           ; $40aa: $00
    cp $00                                        ; $40ab: $fe $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    inc [hl]                                      ; $40b1: $34
    dec b                                         ; $40b2: $05
    ldh a, [$0a]                                  ; $40b3: $f0 $0a
    inc h                                         ; $40b5: $24
    inc c                                         ; $40b6: $0c
    ld h, h                                       ; $40b7: $64
    add b                                         ; $40b8: $80
    nop                                           ; $40b9: $00
    or d                                          ; $40ba: $b2
    dec d                                         ; $40bb: $15
    ld b, $60                                     ; $40bc: $06 $60
    inc c                                         ; $40be: $0c
    inc a                                         ; $40bf: $3c
    inc bc                                        ; $40c0: $03
    ld h, b                                       ; $40c1: $60
    inc c                                         ; $40c2: $0c
    scf                                           ; $40c3: $37
    dec b                                         ; $40c4: $05
    ld h, b                                       ; $40c5: $60
    inc c                                         ; $40c6: $0c
    add hl, sp                                    ; $40c7: $39
    dec b                                         ; $40c8: $05
    ld [hl], b                                    ; $40c9: $70
    inc c                                         ; $40ca: $0c
    ld a, $04                                     ; $40cb: $3e $04
    ld [hl], b                                    ; $40cd: $70
    inc c                                         ; $40ce: $0c
    scf                                           ; $40cf: $37
    dec b                                         ; $40d0: $05
    ld [hl], b                                    ; $40d1: $70
    inc c                                         ; $40d2: $0c
    add hl, sp                                    ; $40d3: $39
    inc b                                         ; $40d4: $04
    ld [hl], b                                    ; $40d5: $70
    inc c                                         ; $40d6: $0c
    dec [hl]                                      ; $40d7: $35
    dec b                                         ; $40d8: $05
    add b                                         ; $40d9: $80
    inc c                                         ; $40da: $0c
    ld [hl-], a                                   ; $40db: $32
    dec b                                         ; $40dc: $05
    ld [hl], b                                    ; $40dd: $70
    inc c                                         ; $40de: $0c
    add hl, sp                                    ; $40df: $39
    dec b                                         ; $40e0: $05
    ld [hl], b                                    ; $40e1: $70
    inc c                                         ; $40e2: $0c
    scf                                           ; $40e3: $37
    dec b                                         ; $40e4: $05
    ld [hl], b                                    ; $40e5: $70
    inc c                                         ; $40e6: $0c
    inc a                                         ; $40e7: $3c
    dec b                                         ; $40e8: $05
    ld [hl], b                                    ; $40e9: $70
    inc c                                         ; $40ea: $0c
    ld a, $04                                     ; $40eb: $3e $04
    ld [hl], b                                    ; $40ed: $70
    inc c                                         ; $40ee: $0c
    dec [hl]                                      ; $40ef: $35
    dec b                                         ; $40f0: $05
    ld [hl], b                                    ; $40f1: $70
    inc c                                         ; $40f2: $0c
    scf                                           ; $40f3: $37
    ld b, $70                                     ; $40f4: $06 $70
    inc c                                         ; $40f6: $0c
    add hl, sp                                    ; $40f7: $39
    ld b, $80                                     ; $40f8: $06 $80
    inc c                                         ; $40fa: $0c
    ld [hl-], a                                   ; $40fb: $32
    dec b                                         ; $40fc: $05
    ld [hl], b                                    ; $40fd: $70
    inc c                                         ; $40fe: $0c
    inc a                                         ; $40ff: $3c
    dec b                                         ; $4100: $05
    ld [hl], b                                    ; $4101: $70
    inc c                                         ; $4102: $0c
    scf                                           ; $4103: $37
    ld b, $70                                     ; $4104: $06 $70
    inc c                                         ; $4106: $0c
    inc a                                         ; $4107: $3c
    rlca                                          ; $4108: $07
    ld [hl], b                                    ; $4109: $70
    inc c                                         ; $410a: $0c
    ld a, $04                                     ; $410b: $3e $04
    ld h, b                                       ; $410d: $60
    inc c                                         ; $410e: $0c
    dec [hl]                                      ; $410f: $35
    ld [$0c70], sp                                ; $4110: $08 $70 $0c
    add hl, sp                                    ; $4113: $39
    inc b                                         ; $4114: $04
    ld [hl], b                                    ; $4115: $70
    inc c                                         ; $4116: $0c
    scf                                           ; $4117: $37
    dec b                                         ; $4118: $05
    ld [hl], b                                    ; $4119: $70
    inc c                                         ; $411a: $0c
    ld [hl-], a                                   ; $411b: $32
    dec b                                         ; $411c: $05
    ld [hl], b                                    ; $411d: $70
    inc c                                         ; $411e: $0c
    inc a                                         ; $411f: $3c
    ld b, $70                                     ; $4120: $06 $70
    inc c                                         ; $4122: $0c
    scf                                           ; $4123: $37
    dec b                                         ; $4124: $05
    ld [hl], b                                    ; $4125: $70
    inc c                                         ; $4126: $0c
    add hl, sp                                    ; $4127: $39
    ld b, $70                                     ; $4128: $06 $70
    inc c                                         ; $412a: $0c
    ld a, $05                                     ; $412b: $3e $05
    ld [hl], b                                    ; $412d: $70
    inc c                                         ; $412e: $0c
    dec [hl]                                      ; $412f: $35
    ld b, $70                                     ; $4130: $06 $70
    inc c                                         ; $4132: $0c
    scf                                           ; $4133: $37
    dec b                                         ; $4134: $05
    ld [hl], b                                    ; $4135: $70
    inc c                                         ; $4136: $0c
    add hl, sp                                    ; $4137: $39
    ld b, $70                                     ; $4138: $06 $70
    inc c                                         ; $413a: $0c
    ld [hl-], a                                   ; $413b: $32
    dec b                                         ; $413c: $05
    ld [hl], b                                    ; $413d: $70
    inc c                                         ; $413e: $0c
    inc a                                         ; $413f: $3c
    dec b                                         ; $4140: $05
    ld [hl], b                                    ; $4141: $70
    inc c                                         ; $4142: $0c
    add hl, sp                                    ; $4143: $39
    inc b                                         ; $4144: $04
    ld [hl], b                                    ; $4145: $70
    inc c                                         ; $4146: $0c
    ld a, $04                                     ; $4147: $3e $04
    ld [hl], b                                    ; $4149: $70
    inc h                                         ; $414a: $24
    ld [hl-], a                                   ; $414b: $32
    ld b, $70                                     ; $414c: $06 $70
    inc c                                         ; $414e: $0c
    inc a                                         ; $414f: $3c
    dec b                                         ; $4150: $05
    ld h, b                                       ; $4151: $60
    inc c                                         ; $4152: $0c
    add hl, sp                                    ; $4153: $39
    dec b                                         ; $4154: $05
    ld [hl], b                                    ; $4155: $70
    inc c                                         ; $4156: $0c
    ld a, $07                                     ; $4157: $3e $07
    ld [hl], b                                    ; $4159: $70
    jr jr_01b_4191                                ; $415a: $18 $35

    dec b                                         ; $415c: $05
    ld h, b                                       ; $415d: $60
    inc c                                         ; $415e: $0c
    scf                                           ; $415f: $37
    dec b                                         ; $4160: $05
    ld [hl], b                                    ; $4161: $70
    inc c                                         ; $4162: $0c
    add hl, sp                                    ; $4163: $39
    rlca                                          ; $4164: $07
    ld h, b                                       ; $4165: $60
    inc c                                         ; $4166: $0c
    scf                                           ; $4167: $37
    ld b, $60                                     ; $4168: $06 $60
    inc c                                         ; $416a: $0c
    dec [hl]                                      ; $416b: $35
    dec b                                         ; $416c: $05
    ld [hl], b                                    ; $416d: $70
    inc c                                         ; $416e: $0c
    ld [hl-], a                                   ; $416f: $32
    ld b, $60                                     ; $4170: $06 $60
    inc c                                         ; $4172: $0c
    inc a                                         ; $4173: $3c
    ld bc, $0c70                                  ; $4174: $01 $70 $0c
    add hl, sp                                    ; $4177: $39
    inc b                                         ; $4178: $04
    ld [hl], b                                    ; $4179: $70
    inc c                                         ; $417a: $0c
    ld a, $05                                     ; $417b: $3e $05
    add b                                         ; $417d: $80
    inc h                                         ; $417e: $24
    ld [hl-], a                                   ; $417f: $32
    inc b                                         ; $4180: $04
    ld [hl], b                                    ; $4181: $70
    inc c                                         ; $4182: $0c
    inc a                                         ; $4183: $3c
    ld b, $60                                     ; $4184: $06 $60
    inc c                                         ; $4186: $0c
    add hl, sp                                    ; $4187: $39
    ld b, $70                                     ; $4188: $06 $70
    inc c                                         ; $418a: $0c
    ld a, $05                                     ; $418b: $3e $05
    ld [hl], b                                    ; $418d: $70
    jr jr_01b_41c2                                ; $418e: $18 $32

    rlca                                          ; $4190: $07

jr_01b_4191:
    ld [hl], b                                    ; $4191: $70
    inc c                                         ; $4192: $0c
    add hl, sp                                    ; $4193: $39
    ld [$0c60], sp                                ; $4194: $08 $60 $0c
    scf                                           ; $4197: $37
    ld [$0c70], sp                                ; $4198: $08 $70 $0c
    dec [hl]                                      ; $419b: $35
    dec b                                         ; $419c: $05
    ld [hl], b                                    ; $419d: $70
    inc c                                         ; $419e: $0c
    inc [hl]                                      ; $419f: $34
    dec b                                         ; $41a0: $05
    ld [hl], b                                    ; $41a1: $70
    inc c                                         ; $41a2: $0c
    inc sp                                        ; $41a3: $33
    add hl, bc                                    ; $41a4: $09
    ld [hl], b                                    ; $41a5: $70
    inc c                                         ; $41a6: $0c
    dec a                                         ; $41a7: $3d
    dec b                                         ; $41a8: $05
    ld [hl], b                                    ; $41a9: $70
    inc c                                         ; $41aa: $0c
    ld a, [hl-]                                   ; $41ab: $3a
    inc b                                         ; $41ac: $04
    ld [hl], b                                    ; $41ad: $70
    inc c                                         ; $41ae: $0c
    ccf                                           ; $41af: $3f
    inc b                                         ; $41b0: $04
    ld h, b                                       ; $41b1: $60
    inc h                                         ; $41b2: $24
    inc sp                                        ; $41b3: $33
    ld b, $70                                     ; $41b4: $06 $70
    inc c                                         ; $41b6: $0c
    dec a                                         ; $41b7: $3d
    dec b                                         ; $41b8: $05
    ld h, b                                       ; $41b9: $60
    inc c                                         ; $41ba: $0c
    ld a, [hl-]                                   ; $41bb: $3a
    dec b                                         ; $41bc: $05
    ld [hl], b                                    ; $41bd: $70
    inc c                                         ; $41be: $0c
    ccf                                           ; $41bf: $3f
    rlca                                          ; $41c0: $07
    ld [hl], b                                    ; $41c1: $70

jr_01b_41c2:
    jr jr_01b_41fa                                ; $41c2: $18 $36

    dec b                                         ; $41c4: $05
    ld h, b                                       ; $41c5: $60
    inc c                                         ; $41c6: $0c
    jr c, jr_01b_41ce                             ; $41c7: $38 $05

    ld [hl], b                                    ; $41c9: $70
    inc c                                         ; $41ca: $0c
    ld a, [hl-]                                   ; $41cb: $3a
    rlca                                          ; $41cc: $07
    ld h, b                                       ; $41cd: $60

jr_01b_41ce:
    inc c                                         ; $41ce: $0c
    jr c, jr_01b_41d7                             ; $41cf: $38 $06

    ld h, b                                       ; $41d1: $60
    inc c                                         ; $41d2: $0c
    ld [hl], $05                                  ; $41d3: $36 $05
    ld [hl], b                                    ; $41d5: $70
    inc c                                         ; $41d6: $0c

jr_01b_41d7:
    ld [hl-], a                                   ; $41d7: $32
    ld b, $60                                     ; $41d8: $06 $60
    inc c                                         ; $41da: $0c
    inc a                                         ; $41db: $3c
    ld bc, $0c70                                  ; $41dc: $01 $70 $0c
    add hl, sp                                    ; $41df: $39
    inc b                                         ; $41e0: $04
    ld [hl], b                                    ; $41e1: $70
    inc c                                         ; $41e2: $0c
    ld a, $05                                     ; $41e3: $3e $05
    add b                                         ; $41e5: $80
    inc h                                         ; $41e6: $24
    ld [hl-], a                                   ; $41e7: $32
    inc b                                         ; $41e8: $04
    ld [hl], b                                    ; $41e9: $70
    inc c                                         ; $41ea: $0c
    inc a                                         ; $41eb: $3c
    ld b, $60                                     ; $41ec: $06 $60
    inc c                                         ; $41ee: $0c
    add hl, sp                                    ; $41ef: $39
    dec b                                         ; $41f0: $05
    ld [hl], b                                    ; $41f1: $70
    inc c                                         ; $41f2: $0c
    ld a, $07                                     ; $41f3: $3e $07
    ld [hl], b                                    ; $41f5: $70
    jr @+$37                                      ; $41f6: $18 $35

    dec b                                         ; $41f8: $05
    ld h, b                                       ; $41f9: $60

jr_01b_41fa:
    inc c                                         ; $41fa: $0c
    scf                                           ; $41fb: $37
    dec b                                         ; $41fc: $05
    ld [hl], b                                    ; $41fd: $70
    inc c                                         ; $41fe: $0c
    add hl, sp                                    ; $41ff: $39
    rlca                                          ; $4200: $07
    ld h, b                                       ; $4201: $60
    inc c                                         ; $4202: $0c
    scf                                           ; $4203: $37
    ld b, $60                                     ; $4204: $06 $60
    inc c                                         ; $4206: $0c
    dec [hl]                                      ; $4207: $35
    dec b                                         ; $4208: $05
    jr nc, jr_01b_4217                            ; $4209: $30 $0c

    ld d, h                                       ; $420b: $54
    rla                                           ; $420c: $17
    jr nc, jr_01b_4227                            ; $420d: $30 $18

    ld e, e                                       ; $420f: $5b
    jr nc, @+$32                                  ; $4210: $30 $30

    jr nc, @+$5b                                  ; $4212: $30 $59

    inc c                                         ; $4214: $0c
    jr nc, jr_01b_4223                            ; $4215: $30 $0c

jr_01b_4217:
    ld d, a                                       ; $4217: $57
    dec bc                                        ; $4218: $0b
    jr nc, jr_01b_4227                            ; $4219: $30 $0c

    ld d, [hl]                                    ; $421b: $56
    ld d, $30                                     ; $421c: $16 $30
    jr jr_01b_4279                                ; $421e: $18 $59

    cpl                                           ; $4220: $2f
    jr nc, @+$32                                  ; $4221: $30 $30

jr_01b_4223:
    ld d, a                                       ; $4223: $57
    inc c                                         ; $4224: $0c
    jr nc, jr_01b_4233                            ; $4225: $30 $0c

jr_01b_4227:
    ld d, [hl]                                    ; $4227: $56
    ld a, [bc]                                    ; $4228: $0a
    jr nc, jr_01b_4237                            ; $4229: $30 $0c

    ld d, h                                       ; $422b: $54
    jr jr_01b_425e                                ; $422c: $18 $30

    jr @+$51                                      ; $422e: $18 $4f

    cpl                                           ; $4230: $2f
    jr nc, @+$32                                  ; $4231: $30 $30

jr_01b_4233:
    ld c, l                                       ; $4233: $4d
    inc c                                         ; $4234: $0c
    jr nc, jr_01b_4243                            ; $4235: $30 $0c

jr_01b_4237:
    ld c, a                                       ; $4237: $4f
    inc c                                         ; $4238: $0c
    jr nc, jr_01b_4247                            ; $4239: $30 $0c

    ld d, b                                       ; $423b: $50
    inc c                                         ; $423c: $0c
    jr nc, jr_01b_424b                            ; $423d: $30 $0c

    ld d, d                                       ; $423f: $52
    inc c                                         ; $4240: $0c
    jr nc, jr_01b_424f                            ; $4241: $30 $0c

jr_01b_4243:
    ld d, e                                       ; $4243: $53
    inc l                                         ; $4244: $2c
    jr nc, jr_01b_4277                            ; $4245: $30 $30

jr_01b_4247:
    ld d, b                                       ; $4247: $50
    inc c                                         ; $4248: $0c
    jr nc, @+$0e                                  ; $4249: $30 $0c

jr_01b_424b:
    ld d, e                                       ; $424b: $53
    inc c                                         ; $424c: $0c
    jr nc, @+$0e                                  ; $424d: $30 $0c

jr_01b_424f:
    ld c, l                                       ; $424f: $4d
    ld b, $30                                     ; $4250: $06 $30
    ld b, $4f                                     ; $4252: $06 $4f
    ld b, $40                                     ; $4254: $06 $40
    ld b, $50                                     ; $4256: $06 $50
    ld b, $40                                     ; $4258: $06 $40
    ld b, $52                                     ; $425a: $06 $52
    ld b, $30                                     ; $425c: $06 $30

jr_01b_425e:
    ld b, $54                                     ; $425e: $06 $54
    jr nc, @+$32                                  ; $4260: $30 $30

    jr nc, jr_01b_42b6                            ; $4262: $30 $52

    inc c                                         ; $4264: $0c
    jr nc, jr_01b_4273                            ; $4265: $30 $0c

    ld d, b                                       ; $4267: $50
    dec bc                                        ; $4268: $0b
    jr nc, jr_01b_4277                            ; $4269: $30 $0c

    ld c, a                                       ; $426b: $4f
    ld d, $30                                     ; $426c: $16 $30
    jr jr_01b_42c2                                ; $426e: $18 $52

    cpl                                           ; $4270: $2f
    jr nc, @+$32                                  ; $4271: $30 $30

jr_01b_4273:
    ld d, b                                       ; $4273: $50
    inc c                                         ; $4274: $0c
    jr nc, jr_01b_4283                            ; $4275: $30 $0c

jr_01b_4277:
    ld c, a                                       ; $4277: $4f
    ld a, [bc]                                    ; $4278: $0a

jr_01b_4279:
    jr nc, jr_01b_4287                            ; $4279: $30 $0c

    ld c, l                                       ; $427b: $4d
    jr jr_01b_42ae                                ; $427c: $18 $30

    jr jr_01b_42d4                                ; $427e: $18 $54

    cpl                                           ; $4280: $2f
    jr nc, @+$32                                  ; $4281: $30 $30

jr_01b_4283:
    ld d, d                                       ; $4283: $52
    inc c                                         ; $4284: $0c
    jr nc, jr_01b_4293                            ; $4285: $30 $0c

jr_01b_4287:
    ld d, h                                       ; $4287: $54
    inc c                                         ; $4288: $0c
    jr nc, jr_01b_4297                            ; $4289: $30 $0c

    ld d, l                                       ; $428b: $55
    inc c                                         ; $428c: $0c
    jr nc, jr_01b_429b                            ; $428d: $30 $0c

    ld d, a                                       ; $428f: $57
    inc c                                         ; $4290: $0c
    jr nc, jr_01b_429f                            ; $4291: $30 $0c

jr_01b_4293:
    ld e, b                                       ; $4293: $58
    inc l                                         ; $4294: $2c
    jr nc, @+$32                                  ; $4295: $30 $30

jr_01b_4297:
    ld d, l                                       ; $4297: $55
    inc c                                         ; $4298: $0c
    jr nc, jr_01b_42a7                            ; $4299: $30 $0c

jr_01b_429b:
    ld e, b                                       ; $429b: $58
    inc c                                         ; $429c: $0c
    ld d, b                                       ; $429d: $50
    inc c                                         ; $429e: $0c

jr_01b_429f:
    ld b, c                                       ; $429f: $41
    jr jr_01b_42f2                                ; $42a0: $18 $50

    jr jr_01b_42e7                                ; $42a2: $18 $43

    inc c                                         ; $42a4: $0c
    ld d, b                                       ; $42a5: $50
    inc c                                         ; $42a6: $0c

jr_01b_42a7:
    ld b, h                                       ; $42a7: $44
    ld [de], a                                    ; $42a8: $12
    ld d, b                                       ; $42a9: $50
    inc c                                         ; $42aa: $0c
    ld b, c                                       ; $42ab: $41
    jr jr_01b_42fe                                ; $42ac: $18 $50

jr_01b_42ae:
    jr jr_01b_42ec                                ; $42ae: $18 $3c

    jr jr_01b_4302                                ; $42b0: $18 $50

    jr jr_01b_42f5                                ; $42b2: $18 $41

    jr jr_01b_4306                                ; $42b4: $18 $50

jr_01b_42b6:
    jr jr_01b_42fb                                ; $42b6: $18 $43

    inc c                                         ; $42b8: $0c
    ld d, b                                       ; $42b9: $50
    inc c                                         ; $42ba: $0c
    ld b, h                                       ; $42bb: $44
    inc c                                         ; $42bc: $0c
    ld d, b                                       ; $42bd: $50
    inc c                                         ; $42be: $0c
    ld b, c                                       ; $42bf: $41
    jr jr_01b_4312                                ; $42c0: $18 $50

jr_01b_42c2:
    jr jr_01b_4300                                ; $42c2: $18 $3c

    jr jr_01b_4316                                ; $42c4: $18 $50

    jr jr_01b_4308                                ; $42c6: $18 $40

    jr jr_01b_431a                                ; $42c8: $18 $50

    jr jr_01b_430e                                ; $42ca: $18 $42

    inc c                                         ; $42cc: $0c
    ld d, b                                       ; $42cd: $50
    inc c                                         ; $42ce: $0c
    ld b, e                                       ; $42cf: $43
    inc c                                         ; $42d0: $0c
    ld d, b                                       ; $42d1: $50
    inc c                                         ; $42d2: $0c
    ld b, b                                       ; $42d3: $40

jr_01b_42d4:
    ld e, $50                                     ; $42d4: $1e $50
    jr @+$3d                                      ; $42d6: $18 $3b

    jr jr_01b_432a                                ; $42d8: $18 $50

    jr jr_01b_431a                                ; $42da: $18 $3e

    ld e, $50                                     ; $42dc: $1e $50
    jr jr_01b_4320                                ; $42de: $18 $40

    inc c                                         ; $42e0: $0c
    ld d, b                                       ; $42e1: $50
    inc c                                         ; $42e2: $0c
    ld b, c                                       ; $42e3: $41
    inc c                                         ; $42e4: $0c
    ld d, b                                       ; $42e5: $50
    inc c                                         ; $42e6: $0c

jr_01b_42e7:
    ld a, $1e                                     ; $42e7: $3e $1e
    ld d, b                                       ; $42e9: $50
    jr @+$3f                                      ; $42ea: $18 $3d

jr_01b_42ec:
    jr jr_01b_433e                                ; $42ec: $18 $50

    jr jr_01b_4331                                ; $42ee: $18 $41

    jr jr_01b_4342                                ; $42f0: $18 $50

jr_01b_42f2:
    jr @+$45                                      ; $42f2: $18 $43

    inc c                                         ; $42f4: $0c

jr_01b_42f5:
    ld d, b                                       ; $42f5: $50
    inc c                                         ; $42f6: $0c
    ld b, h                                       ; $42f7: $44
    inc c                                         ; $42f8: $0c
    ld d, b                                       ; $42f9: $50
    inc c                                         ; $42fa: $0c

jr_01b_42fb:
    ld b, c                                       ; $42fb: $41
    jr jr_01b_434e                                ; $42fc: $18 $50

jr_01b_42fe:
    jr jr_01b_433c                                ; $42fe: $18 $3c

jr_01b_4300:
    jr jr_01b_4352                                ; $4300: $18 $50

jr_01b_4302:
    jr jr_01b_4345                                ; $4302: $18 $41

    jr jr_01b_4356                                ; $4304: $18 $50

jr_01b_4306:
    jr jr_01b_434b                                ; $4306: $18 $43

jr_01b_4308:
    inc c                                         ; $4308: $0c
    ld d, b                                       ; $4309: $50
    inc c                                         ; $430a: $0c
    ld b, c                                       ; $430b: $41
    inc h                                         ; $430c: $24
    ld d, b                                       ; $430d: $50

jr_01b_430e:
    inc h                                         ; $430e: $24
    inc a                                         ; $430f: $3c
    jr jr_01b_4362                                ; $4310: $18 $50

jr_01b_4312:
    jr jr_01b_4354                                ; $4312: $18 $40

    jr jr_01b_4366                                ; $4314: $18 $50

jr_01b_4316:
    jr jr_01b_435a                                ; $4316: $18 $42

    inc c                                         ; $4318: $0c
    ld d, b                                       ; $4319: $50

jr_01b_431a:
    inc c                                         ; $431a: $0c
    ld b, e                                       ; $431b: $43
    inc c                                         ; $431c: $0c
    ld d, b                                       ; $431d: $50
    inc c                                         ; $431e: $0c
    ld b, b                                       ; $431f: $40

jr_01b_4320:
    jr jr_01b_4372                                ; $4320: $18 $50

    jr jr_01b_435f                                ; $4322: $18 $3b

    ld e, $50                                     ; $4324: $1e $50
    jr jr_01b_4368                                ; $4326: $18 $40

    ld e, $50                                     ; $4328: $1e $50

jr_01b_432a:
    jr jr_01b_436e                                ; $432a: $18 $42

    inc c                                         ; $432c: $0c
    ld d, b                                       ; $432d: $50
    inc c                                         ; $432e: $0c
    ld b, e                                       ; $432f: $43
    inc c                                         ; $4330: $0c

jr_01b_4331:
    ld d, b                                       ; $4331: $50
    inc c                                         ; $4332: $0c
    ld b, b                                       ; $4333: $40
    jr @+$52                                      ; $4334: $18 $50

    jr jr_01b_437b                                ; $4336: $18 $43

    jr @+$62                                      ; $4338: $18 $60

    jr jr_01b_436e                                ; $433a: $18 $32

jr_01b_433c:
    jr @+$62                                      ; $433c: $18 $60

jr_01b_433e:
    jr jr_01b_4374                                ; $433e: $18 $34

    inc c                                         ; $4340: $0c
    ld h, b                                       ; $4341: $60

jr_01b_4342:
    inc c                                         ; $4342: $0c
    dec [hl]                                      ; $4343: $35
    inc c                                         ; $4344: $0c

jr_01b_4345:
    ld d, b                                       ; $4345: $50
    inc c                                         ; $4346: $0c
    ld a, $24                                     ; $4347: $3e $24
    ld d, b                                       ; $4349: $50
    inc h                                         ; $434a: $24

jr_01b_434b:
    add hl, sp                                    ; $434b: $39
    inc c                                         ; $434c: $0c
    ld d, b                                       ; $434d: $50

jr_01b_434e:
    inc c                                         ; $434e: $0c
    ld a, $18                                     ; $434f: $3e $18
    ld d, b                                       ; $4351: $50

jr_01b_4352:
    jr jr_01b_4394                                ; $4352: $18 $40

jr_01b_4354:
    inc c                                         ; $4354: $0c
    ld d, b                                       ; $4355: $50

jr_01b_4356:
    inc c                                         ; $4356: $0c
    ld b, c                                       ; $4357: $41
    inc c                                         ; $4358: $0c
    ld d, b                                       ; $4359: $50

jr_01b_435a:
    inc c                                         ; $435a: $0c
    ld a, $24                                     ; $435b: $3e $24
    ld d, b                                       ; $435d: $50
    inc h                                         ; $435e: $24

jr_01b_435f:
    add hl, sp                                    ; $435f: $39
    inc c                                         ; $4360: $0c
    ld h, b                                       ; $4361: $60

jr_01b_4362:
    inc c                                         ; $4362: $0c
    ld [hl-], a                                   ; $4363: $32
    inc h                                         ; $4364: $24
    ld d, b                                       ; $4365: $50

jr_01b_4366:
    jr nc, jr_01b_43a6                            ; $4366: $30 $3e

jr_01b_4368:
    inc c                                         ; $4368: $0c
    ld d, b                                       ; $4369: $50
    jr @+$40                                      ; $436a: $18 $3e

    inc c                                         ; $436c: $0c
    ld d, b                                       ; $436d: $50

jr_01b_436e:
    jr @+$40                                      ; $436e: $18 $3e

    ld [de], a                                    ; $4370: $12
    ld d, b                                       ; $4371: $50

jr_01b_4372:
    jr jr_01b_43b1                                ; $4372: $18 $3d

jr_01b_4374:
    ld [de], a                                    ; $4374: $12
    ld d, b                                       ; $4375: $50
    jr jr_01b_43b5                                ; $4376: $18 $3d

    inc c                                         ; $4378: $0c
    ld d, b                                       ; $4379: $50
    inc c                                         ; $437a: $0c

jr_01b_437b:
    ld a, $0c                                     ; $437b: $3e $0c
    ld d, b                                       ; $437d: $50
    inc c                                         ; $437e: $0c
    ld b, b                                       ; $437f: $40
    ld [de], a                                    ; $4380: $12
    ld sp, $5498                                  ; $4381: $31 $98 $54
    rla                                           ; $4384: $17
    jr nc, jr_01b_439f                            ; $4385: $30 $18

    ld e, e                                       ; $4387: $5b
    jr nc, @+$32                                  ; $4388: $30 $30

    jr nc, @+$5b                                  ; $438a: $30 $59

    inc c                                         ; $438c: $0c
    jr nc, jr_01b_439b                            ; $438d: $30 $0c

    ld d, a                                       ; $438f: $57
    dec bc                                        ; $4390: $0b
    jr nc, jr_01b_439f                            ; $4391: $30 $0c

    ld d, [hl]                                    ; $4393: $56

jr_01b_4394:
    ld d, $30                                     ; $4394: $16 $30
    jr jr_01b_43f1                                ; $4396: $18 $59

    cpl                                           ; $4398: $2f
    jr nc, @+$32                                  ; $4399: $30 $30

jr_01b_439b:
    ld d, a                                       ; $439b: $57
    inc c                                         ; $439c: $0c
    jr nc, jr_01b_43ab                            ; $439d: $30 $0c

jr_01b_439f:
    ld d, [hl]                                    ; $439f: $56
    ld a, [bc]                                    ; $43a0: $0a
    jr nc, jr_01b_43af                            ; $43a1: $30 $0c

    ld d, h                                       ; $43a3: $54
    jr jr_01b_43d6                                ; $43a4: $18 $30

jr_01b_43a6:
    jr @+$51                                      ; $43a6: $18 $4f

    cpl                                           ; $43a8: $2f
    jr nc, @+$32                                  ; $43a9: $30 $30

jr_01b_43ab:
    ld c, l                                       ; $43ab: $4d
    inc c                                         ; $43ac: $0c
    jr nc, jr_01b_43bb                            ; $43ad: $30 $0c

jr_01b_43af:
    ld c, a                                       ; $43af: $4f
    inc c                                         ; $43b0: $0c

jr_01b_43b1:
    jr nc, jr_01b_43bf                            ; $43b1: $30 $0c

    ld d, b                                       ; $43b3: $50
    inc c                                         ; $43b4: $0c

jr_01b_43b5:
    jr nc, jr_01b_43c3                            ; $43b5: $30 $0c

    ld d, d                                       ; $43b7: $52
    inc c                                         ; $43b8: $0c
    jr nc, jr_01b_43c7                            ; $43b9: $30 $0c

jr_01b_43bb:
    ld d, e                                       ; $43bb: $53
    inc l                                         ; $43bc: $2c
    jr nc, jr_01b_43ef                            ; $43bd: $30 $30

jr_01b_43bf:
    ld d, b                                       ; $43bf: $50
    inc c                                         ; $43c0: $0c
    jr nc, @+$0e                                  ; $43c1: $30 $0c

jr_01b_43c3:
    ld d, e                                       ; $43c3: $53
    inc c                                         ; $43c4: $0c
    jr nc, @+$0e                                  ; $43c5: $30 $0c

jr_01b_43c7:
    ld c, l                                       ; $43c7: $4d
    ld b, $30                                     ; $43c8: $06 $30
    ld b, $4f                                     ; $43ca: $06 $4f
    ld b, $40                                     ; $43cc: $06 $40
    ld b, $50                                     ; $43ce: $06 $50
    ld b, $40                                     ; $43d0: $06 $40
    ld b, $52                                     ; $43d2: $06 $52
    ld b, $30                                     ; $43d4: $06 $30

jr_01b_43d6:
    ld b, $54                                     ; $43d6: $06 $54
    jr nc, @+$32                                  ; $43d8: $30 $30

    jr nc, jr_01b_442e                            ; $43da: $30 $52

    inc c                                         ; $43dc: $0c
    jr nc, jr_01b_43eb                            ; $43dd: $30 $0c

    ld d, b                                       ; $43df: $50
    dec bc                                        ; $43e0: $0b
    jr nc, jr_01b_43ef                            ; $43e1: $30 $0c

    ld c, a                                       ; $43e3: $4f
    ld d, $30                                     ; $43e4: $16 $30
    jr jr_01b_443a                                ; $43e6: $18 $52

    cpl                                           ; $43e8: $2f
    jr nc, @+$32                                  ; $43e9: $30 $30

jr_01b_43eb:
    ld d, b                                       ; $43eb: $50
    inc c                                         ; $43ec: $0c
    jr nc, jr_01b_43fb                            ; $43ed: $30 $0c

jr_01b_43ef:
    ld c, a                                       ; $43ef: $4f
    ld a, [bc]                                    ; $43f0: $0a

jr_01b_43f1:
    jr nc, jr_01b_43ff                            ; $43f1: $30 $0c

    ld c, l                                       ; $43f3: $4d
    jr jr_01b_4426                                ; $43f4: $18 $30

    jr jr_01b_444c                                ; $43f6: $18 $54

    cpl                                           ; $43f8: $2f
    jr nc, @+$32                                  ; $43f9: $30 $30

jr_01b_43fb:
    ld d, d                                       ; $43fb: $52
    inc c                                         ; $43fc: $0c
    jr nc, jr_01b_440b                            ; $43fd: $30 $0c

jr_01b_43ff:
    ld d, h                                       ; $43ff: $54
    inc c                                         ; $4400: $0c
    jr nc, jr_01b_440f                            ; $4401: $30 $0c

    ld d, l                                       ; $4403: $55
    inc c                                         ; $4404: $0c
    jr nc, jr_01b_4413                            ; $4405: $30 $0c

    ld d, a                                       ; $4407: $57
    inc c                                         ; $4408: $0c
    jr nc, jr_01b_4417                            ; $4409: $30 $0c

jr_01b_440b:
    ld e, b                                       ; $440b: $58
    inc l                                         ; $440c: $2c
    jr nc, @+$32                                  ; $440d: $30 $30

jr_01b_440f:
    ld d, l                                       ; $440f: $55
    inc c                                         ; $4410: $0c
    jr nc, jr_01b_441f                            ; $4411: $30 $0c

jr_01b_4413:
    ld e, b                                       ; $4413: $58
    inc c                                         ; $4414: $0c
    ld d, b                                       ; $4415: $50
    inc c                                         ; $4416: $0c

jr_01b_4417:
    dec [hl]                                      ; $4417: $35
    jr jr_01b_446a                                ; $4418: $18 $50

    jr @+$39                                      ; $441a: $18 $37

    inc c                                         ; $441c: $0c
    ld d, b                                       ; $441d: $50
    inc c                                         ; $441e: $0c

jr_01b_441f:
    jr c, jr_01b_4433                             ; $441f: $38 $12

    ld d, b                                       ; $4421: $50
    inc c                                         ; $4422: $0c
    dec [hl]                                      ; $4423: $35
    jr jr_01b_4476                                ; $4424: $18 $50

jr_01b_4426:
    jr jr_01b_4464                                ; $4426: $18 $3c

    jr jr_01b_447a                                ; $4428: $18 $50

    jr @+$37                                      ; $442a: $18 $35

    jr jr_01b_447e                                ; $442c: $18 $50

jr_01b_442e:
    jr @+$39                                      ; $442e: $18 $37

    inc c                                         ; $4430: $0c
    ld d, b                                       ; $4431: $50
    inc c                                         ; $4432: $0c

jr_01b_4433:
    jr c, @+$0e                                   ; $4433: $38 $0c

    ld b, b                                       ; $4435: $40
    inc c                                         ; $4436: $0c
    dec [hl]                                      ; $4437: $35
    jr jr_01b_448a                                ; $4438: $18 $50

jr_01b_443a:
    jr jr_01b_446c                                ; $443a: $18 $30

    jr jr_01b_448e                                ; $443c: $18 $50

    jr jr_01b_4474                                ; $443e: $18 $34

    jr jr_01b_4492                                ; $4440: $18 $50

    jr jr_01b_447a                                ; $4442: $18 $36

    inc c                                         ; $4444: $0c
    ld d, b                                       ; $4445: $50
    inc c                                         ; $4446: $0c
    scf                                           ; $4447: $37
    inc c                                         ; $4448: $0c
    ld d, b                                       ; $4449: $50
    inc c                                         ; $444a: $0c
    inc [hl]                                      ; $444b: $34

jr_01b_444c:
    ld e, $50                                     ; $444c: $1e $50
    jr @+$3d                                      ; $444e: $18 $3b

    jr jr_01b_44a2                                ; $4450: $18 $50

    jr jr_01b_4486                                ; $4452: $18 $32

    ld e, $50                                     ; $4454: $1e $50
    jr jr_01b_448c                                ; $4456: $18 $34

    inc c                                         ; $4458: $0c
    ld d, b                                       ; $4459: $50
    inc c                                         ; $445a: $0c
    dec [hl]                                      ; $445b: $35
    inc c                                         ; $445c: $0c
    ld d, b                                       ; $445d: $50
    inc c                                         ; $445e: $0c
    ld [hl-], a                                   ; $445f: $32
    ld e, $50                                     ; $4460: $1e $50
    jr jr_01b_4495                                ; $4462: $18 $31

jr_01b_4464:
    jr jr_01b_44b6                                ; $4464: $18 $50

    jr @+$37                                      ; $4466: $18 $35

    jr jr_01b_44ba                                ; $4468: $18 $50

jr_01b_446a:
    jr @+$39                                      ; $446a: $18 $37

jr_01b_446c:
    inc c                                         ; $446c: $0c
    ld d, b                                       ; $446d: $50
    inc c                                         ; $446e: $0c
    jr c, @+$0e                                   ; $446f: $38 $0c

    ld d, b                                       ; $4471: $50
    inc c                                         ; $4472: $0c
    dec [hl]                                      ; $4473: $35

jr_01b_4474:
    jr jr_01b_44c6                                ; $4474: $18 $50

jr_01b_4476:
    jr jr_01b_44b4                                ; $4476: $18 $3c

    jr jr_01b_44ca                                ; $4478: $18 $50

jr_01b_447a:
    jr @+$37                                      ; $447a: $18 $35

    jr jr_01b_44ce                                ; $447c: $18 $50

jr_01b_447e:
    jr @+$39                                      ; $447e: $18 $37

    inc c                                         ; $4480: $0c
    ld d, b                                       ; $4481: $50
    inc c                                         ; $4482: $0c
    dec [hl]                                      ; $4483: $35
    inc h                                         ; $4484: $24
    ld d, b                                       ; $4485: $50

jr_01b_4486:
    inc h                                         ; $4486: $24
    jr nc, @+$1a                                  ; $4487: $30 $18

    ld d, b                                       ; $4489: $50

jr_01b_448a:
    jr jr_01b_44c0                                ; $448a: $18 $34

jr_01b_448c:
    jr jr_01b_44de                                ; $448c: $18 $50

jr_01b_448e:
    jr jr_01b_44c6                                ; $448e: $18 $36

    inc c                                         ; $4490: $0c
    ld d, b                                       ; $4491: $50

jr_01b_4492:
    inc c                                         ; $4492: $0c
    scf                                           ; $4493: $37
    inc c                                         ; $4494: $0c

jr_01b_4495:
    ld d, b                                       ; $4495: $50
    inc c                                         ; $4496: $0c
    inc [hl]                                      ; $4497: $34
    jr jr_01b_44ea                                ; $4498: $18 $50

    jr jr_01b_44d7                                ; $449a: $18 $3b

    ld e, $50                                     ; $449c: $1e $50
    jr jr_01b_44d4                                ; $449e: $18 $34

    ld e, $50                                     ; $44a0: $1e $50

jr_01b_44a2:
    jr jr_01b_44da                                ; $44a2: $18 $36

    inc c                                         ; $44a4: $0c
    ld d, b                                       ; $44a5: $50
    inc c                                         ; $44a6: $0c
    scf                                           ; $44a7: $37
    inc c                                         ; $44a8: $0c
    ld d, b                                       ; $44a9: $50
    inc c                                         ; $44aa: $0c
    inc [hl]                                      ; $44ab: $34
    jr @+$52                                      ; $44ac: $18 $50

    jr @+$39                                      ; $44ae: $18 $37

    jr jr_01b_4502                                ; $44b0: $18 $50

    jr jr_01b_44e6                                ; $44b2: $18 $32

jr_01b_44b4:
    jr @+$52                                      ; $44b4: $18 $50

jr_01b_44b6:
    jr jr_01b_44ec                                ; $44b6: $18 $34

    inc c                                         ; $44b8: $0c
    ld d, b                                       ; $44b9: $50

jr_01b_44ba:
    inc c                                         ; $44ba: $0c
    dec [hl]                                      ; $44bb: $35
    inc c                                         ; $44bc: $0c
    ld d, b                                       ; $44bd: $50
    inc c                                         ; $44be: $0c
    ld [hl-], a                                   ; $44bf: $32

jr_01b_44c0:
    inc h                                         ; $44c0: $24
    ld d, b                                       ; $44c1: $50
    inc h                                         ; $44c2: $24
    dec l                                         ; $44c3: $2d
    inc c                                         ; $44c4: $0c
    ld b, b                                       ; $44c5: $40

jr_01b_44c6:
    inc c                                         ; $44c6: $0c
    ld [hl-], a                                   ; $44c7: $32
    jr @+$52                                      ; $44c8: $18 $50

jr_01b_44ca:
    jr jr_01b_4500                                ; $44ca: $18 $34

    inc c                                         ; $44cc: $0c
    ld d, b                                       ; $44cd: $50

jr_01b_44ce:
    inc c                                         ; $44ce: $0c
    dec [hl]                                      ; $44cf: $35
    inc c                                         ; $44d0: $0c
    ld d, b                                       ; $44d1: $50
    inc c                                         ; $44d2: $0c
    ld [hl-], a                                   ; $44d3: $32

jr_01b_44d4:
    inc h                                         ; $44d4: $24
    ld d, b                                       ; $44d5: $50
    inc h                                         ; $44d6: $24

jr_01b_44d7:
    dec l                                         ; $44d7: $2d
    inc c                                         ; $44d8: $0c
    ld d, b                                       ; $44d9: $50

jr_01b_44da:
    inc c                                         ; $44da: $0c
    ld [hl-], a                                   ; $44db: $32
    inc h                                         ; $44dc: $24
    ld b, b                                       ; $44dd: $40

jr_01b_44de:
    jr nc, @+$34                                  ; $44de: $30 $32

    inc c                                         ; $44e0: $0c
    ld d, b                                       ; $44e1: $50
    jr @+$34                                      ; $44e2: $18 $32

    inc c                                         ; $44e4: $0c
    ld d, b                                       ; $44e5: $50

jr_01b_44e6:
    jr @+$34                                      ; $44e6: $18 $32

    ld [de], a                                    ; $44e8: $12
    ld d, b                                       ; $44e9: $50

jr_01b_44ea:
    jr @+$33                                      ; $44ea: $18 $31

jr_01b_44ec:
    ld [de], a                                    ; $44ec: $12
    ld d, b                                       ; $44ed: $50
    jr jr_01b_4521                                ; $44ee: $18 $31

    inc c                                         ; $44f0: $0c
    ld d, b                                       ; $44f1: $50
    inc c                                         ; $44f2: $0c
    ld [hl-], a                                   ; $44f3: $32
    inc c                                         ; $44f4: $0c
    ld d, b                                       ; $44f5: $50
    inc c                                         ; $44f6: $0c
    inc [hl]                                      ; $44f7: $34
    ld [de], a                                    ; $44f8: $12
    ld sp, $5498                                  ; $44f9: $31 $98 $54
    rla                                           ; $44fc: $17
    jr nc, jr_01b_4517                            ; $44fd: $30 $18

    ld e, e                                       ; $44ff: $5b

jr_01b_4500:
    jr nc, @+$32                                  ; $4500: $30 $30

jr_01b_4502:
    jr nc, @+$5b                                  ; $4502: $30 $59

    inc c                                         ; $4504: $0c
    jr nc, jr_01b_4513                            ; $4505: $30 $0c

    ld d, a                                       ; $4507: $57
    dec bc                                        ; $4508: $0b
    jr nc, jr_01b_4517                            ; $4509: $30 $0c

    ld d, [hl]                                    ; $450b: $56
    ld d, $30                                     ; $450c: $16 $30
    jr jr_01b_4569                                ; $450e: $18 $59

    cpl                                           ; $4510: $2f
    jr nc, @+$32                                  ; $4511: $30 $30

jr_01b_4513:
    ld d, a                                       ; $4513: $57
    inc c                                         ; $4514: $0c
    jr nc, jr_01b_4523                            ; $4515: $30 $0c

jr_01b_4517:
    ld d, [hl]                                    ; $4517: $56
    ld a, [bc]                                    ; $4518: $0a
    jr nc, jr_01b_4527                            ; $4519: $30 $0c

    ld d, h                                       ; $451b: $54
    jr jr_01b_454e                                ; $451c: $18 $30

    jr @+$51                                      ; $451e: $18 $4f

    cpl                                           ; $4520: $2f

jr_01b_4521:
    jr nc, @+$32                                  ; $4521: $30 $30

jr_01b_4523:
    ld c, l                                       ; $4523: $4d
    inc c                                         ; $4524: $0c
    jr nc, jr_01b_4533                            ; $4525: $30 $0c

jr_01b_4527:
    ld c, a                                       ; $4527: $4f
    inc c                                         ; $4528: $0c
    jr nc, jr_01b_4537                            ; $4529: $30 $0c

    ld d, b                                       ; $452b: $50
    inc c                                         ; $452c: $0c
    jr nc, jr_01b_453b                            ; $452d: $30 $0c

    ld d, d                                       ; $452f: $52
    inc c                                         ; $4530: $0c
    jr nc, jr_01b_453f                            ; $4531: $30 $0c

jr_01b_4533:
    ld d, e                                       ; $4533: $53
    inc l                                         ; $4534: $2c
    jr nc, jr_01b_4567                            ; $4535: $30 $30

jr_01b_4537:
    ld d, b                                       ; $4537: $50
    inc c                                         ; $4538: $0c
    jr nc, @+$0e                                  ; $4539: $30 $0c

jr_01b_453b:
    ld d, e                                       ; $453b: $53
    inc c                                         ; $453c: $0c
    jr nc, @+$0e                                  ; $453d: $30 $0c

jr_01b_453f:
    ld c, l                                       ; $453f: $4d
    ld b, $30                                     ; $4540: $06 $30
    ld b, $4f                                     ; $4542: $06 $4f
    ld b, $40                                     ; $4544: $06 $40
    ld b, $50                                     ; $4546: $06 $50
    ld b, $40                                     ; $4548: $06 $40
    ld b, $52                                     ; $454a: $06 $52
    ld b, $30                                     ; $454c: $06 $30

jr_01b_454e:
    ld b, $54                                     ; $454e: $06 $54
    jr nc, @+$32                                  ; $4550: $30 $30

    jr nc, jr_01b_45a6                            ; $4552: $30 $52

    inc c                                         ; $4554: $0c
    jr nc, jr_01b_4563                            ; $4555: $30 $0c

    ld d, b                                       ; $4557: $50
    dec bc                                        ; $4558: $0b
    jr nc, jr_01b_4567                            ; $4559: $30 $0c

    ld c, a                                       ; $455b: $4f
    ld d, $30                                     ; $455c: $16 $30
    jr jr_01b_45b2                                ; $455e: $18 $52

    cpl                                           ; $4560: $2f
    jr nc, @+$32                                  ; $4561: $30 $30

jr_01b_4563:
    ld d, b                                       ; $4563: $50
    inc c                                         ; $4564: $0c
    jr nc, jr_01b_4573                            ; $4565: $30 $0c

jr_01b_4567:
    ld c, a                                       ; $4567: $4f
    ld a, [bc]                                    ; $4568: $0a

jr_01b_4569:
    jr nc, jr_01b_4577                            ; $4569: $30 $0c

    ld c, l                                       ; $456b: $4d
    jr jr_01b_459e                                ; $456c: $18 $30

    jr jr_01b_45c4                                ; $456e: $18 $54

    cpl                                           ; $4570: $2f
    jr nc, @+$32                                  ; $4571: $30 $30

jr_01b_4573:
    ld d, d                                       ; $4573: $52
    inc c                                         ; $4574: $0c
    jr nc, jr_01b_4583                            ; $4575: $30 $0c

jr_01b_4577:
    ld d, h                                       ; $4577: $54
    inc c                                         ; $4578: $0c
    jr nc, jr_01b_4587                            ; $4579: $30 $0c

    ld d, l                                       ; $457b: $55
    inc c                                         ; $457c: $0c
    jr nc, jr_01b_458b                            ; $457d: $30 $0c

    ld d, a                                       ; $457f: $57
    inc c                                         ; $4580: $0c
    jr nc, jr_01b_458f                            ; $4581: $30 $0c

jr_01b_4583:
    ld e, b                                       ; $4583: $58
    inc l                                         ; $4584: $2c
    jr nc, @+$32                                  ; $4585: $30 $30

jr_01b_4587:
    ld d, l                                       ; $4587: $55
    inc c                                         ; $4588: $0c
    jr nc, jr_01b_4597                            ; $4589: $30 $0c

jr_01b_458b:
    ld e, b                                       ; $458b: $58
    inc c                                         ; $458c: $0c
    ld d, b                                       ; $458d: $50
    inc c                                         ; $458e: $0c

jr_01b_458f:
    dec [hl]                                      ; $458f: $35
    jr jr_01b_45e2                                ; $4590: $18 $50

    jr @+$39                                      ; $4592: $18 $37

    inc c                                         ; $4594: $0c
    ld d, b                                       ; $4595: $50
    inc c                                         ; $4596: $0c

jr_01b_4597:
    jr c, jr_01b_45ab                             ; $4597: $38 $12

    ld d, b                                       ; $4599: $50
    inc c                                         ; $459a: $0c
    dec [hl]                                      ; $459b: $35
    jr jr_01b_45ee                                ; $459c: $18 $50

jr_01b_459e:
    jr jr_01b_45dc                                ; $459e: $18 $3c

    jr jr_01b_45f2                                ; $45a0: $18 $50

    jr @+$37                                      ; $45a2: $18 $35

    jr jr_01b_45f6                                ; $45a4: $18 $50

jr_01b_45a6:
    jr @+$39                                      ; $45a6: $18 $37

    inc c                                         ; $45a8: $0c
    ld d, b                                       ; $45a9: $50
    inc c                                         ; $45aa: $0c

jr_01b_45ab:
    jr c, @+$0e                                   ; $45ab: $38 $0c

    ld b, b                                       ; $45ad: $40
    inc c                                         ; $45ae: $0c
    dec [hl]                                      ; $45af: $35
    jr jr_01b_4602                                ; $45b0: $18 $50

jr_01b_45b2:
    jr jr_01b_45e4                                ; $45b2: $18 $30

    jr jr_01b_4606                                ; $45b4: $18 $50

    jr jr_01b_45ec                                ; $45b6: $18 $34

    jr jr_01b_460a                                ; $45b8: $18 $50

    jr jr_01b_45f2                                ; $45ba: $18 $36

    inc c                                         ; $45bc: $0c
    ld d, b                                       ; $45bd: $50
    inc c                                         ; $45be: $0c
    scf                                           ; $45bf: $37
    inc c                                         ; $45c0: $0c
    ld d, b                                       ; $45c1: $50
    inc c                                         ; $45c2: $0c
    inc [hl]                                      ; $45c3: $34

jr_01b_45c4:
    ld e, $50                                     ; $45c4: $1e $50
    jr @+$3d                                      ; $45c6: $18 $3b

    jr jr_01b_461a                                ; $45c8: $18 $50

    jr jr_01b_45fe                                ; $45ca: $18 $32

    ld e, $50                                     ; $45cc: $1e $50
    jr jr_01b_4604                                ; $45ce: $18 $34

    inc c                                         ; $45d0: $0c
    ld d, b                                       ; $45d1: $50
    inc c                                         ; $45d2: $0c
    dec [hl]                                      ; $45d3: $35
    inc c                                         ; $45d4: $0c
    ld d, b                                       ; $45d5: $50
    inc c                                         ; $45d6: $0c
    ld [hl-], a                                   ; $45d7: $32
    ld e, $50                                     ; $45d8: $1e $50
    jr jr_01b_460d                                ; $45da: $18 $31

jr_01b_45dc:
    jr jr_01b_462e                                ; $45dc: $18 $50

    jr @+$37                                      ; $45de: $18 $35

    jr jr_01b_4632                                ; $45e0: $18 $50

jr_01b_45e2:
    jr @+$39                                      ; $45e2: $18 $37

jr_01b_45e4:
    inc c                                         ; $45e4: $0c
    ld d, b                                       ; $45e5: $50
    inc c                                         ; $45e6: $0c
    jr c, @+$0e                                   ; $45e7: $38 $0c

    ld d, b                                       ; $45e9: $50
    inc c                                         ; $45ea: $0c
    dec [hl]                                      ; $45eb: $35

jr_01b_45ec:
    jr jr_01b_463e                                ; $45ec: $18 $50

jr_01b_45ee:
    jr jr_01b_462c                                ; $45ee: $18 $3c

    jr jr_01b_4642                                ; $45f0: $18 $50

jr_01b_45f2:
    jr @+$37                                      ; $45f2: $18 $35

    jr jr_01b_4646                                ; $45f4: $18 $50

jr_01b_45f6:
    jr @+$39                                      ; $45f6: $18 $37

    inc c                                         ; $45f8: $0c
    ld d, b                                       ; $45f9: $50
    inc c                                         ; $45fa: $0c
    dec [hl]                                      ; $45fb: $35
    inc h                                         ; $45fc: $24
    ld d, b                                       ; $45fd: $50

jr_01b_45fe:
    inc h                                         ; $45fe: $24
    jr nc, @+$1a                                  ; $45ff: $30 $18

    ld d, b                                       ; $4601: $50

jr_01b_4602:
    jr jr_01b_4638                                ; $4602: $18 $34

jr_01b_4604:
    jr jr_01b_4656                                ; $4604: $18 $50

jr_01b_4606:
    jr jr_01b_463e                                ; $4606: $18 $36

    inc c                                         ; $4608: $0c
    ld d, b                                       ; $4609: $50

jr_01b_460a:
    inc c                                         ; $460a: $0c
    scf                                           ; $460b: $37
    inc c                                         ; $460c: $0c

jr_01b_460d:
    ld d, b                                       ; $460d: $50
    inc c                                         ; $460e: $0c
    inc [hl]                                      ; $460f: $34
    jr jr_01b_4662                                ; $4610: $18 $50

    jr jr_01b_464f                                ; $4612: $18 $3b

    ld e, $50                                     ; $4614: $1e $50
    jr jr_01b_464c                                ; $4616: $18 $34

    ld e, $50                                     ; $4618: $1e $50

jr_01b_461a:
    jr jr_01b_4652                                ; $461a: $18 $36

    inc c                                         ; $461c: $0c
    ld d, b                                       ; $461d: $50
    inc c                                         ; $461e: $0c
    scf                                           ; $461f: $37
    inc c                                         ; $4620: $0c
    ld d, b                                       ; $4621: $50
    inc c                                         ; $4622: $0c
    inc [hl]                                      ; $4623: $34
    jr jr_01b_4676                                ; $4624: $18 $50

    jr @+$39                                      ; $4626: $18 $37

    jr jr_01b_467a                                ; $4628: $18 $50

    jr jr_01b_465e                                ; $462a: $18 $32

jr_01b_462c:
    jr jr_01b_467e                                ; $462c: $18 $50

jr_01b_462e:
    jr jr_01b_4664                                ; $462e: $18 $34

    inc c                                         ; $4630: $0c
    ld d, b                                       ; $4631: $50

jr_01b_4632:
    inc c                                         ; $4632: $0c
    dec [hl]                                      ; $4633: $35
    inc c                                         ; $4634: $0c
    ld d, b                                       ; $4635: $50
    inc c                                         ; $4636: $0c
    ld [hl-], a                                   ; $4637: $32

jr_01b_4638:
    inc h                                         ; $4638: $24
    ld d, b                                       ; $4639: $50
    inc h                                         ; $463a: $24
    dec l                                         ; $463b: $2d
    inc c                                         ; $463c: $0c
    ld b, b                                       ; $463d: $40

jr_01b_463e:
    inc c                                         ; $463e: $0c
    ld [hl-], a                                   ; $463f: $32
    jr jr_01b_4692                                ; $4640: $18 $50

jr_01b_4642:
    jr @+$36                                      ; $4642: $18 $34

    inc c                                         ; $4644: $0c
    ld d, b                                       ; $4645: $50

jr_01b_4646:
    inc c                                         ; $4646: $0c
    dec [hl]                                      ; $4647: $35
    inc c                                         ; $4648: $0c
    ld d, b                                       ; $4649: $50
    inc c                                         ; $464a: $0c
    ld [hl-], a                                   ; $464b: $32

jr_01b_464c:
    inc h                                         ; $464c: $24
    ld d, b                                       ; $464d: $50
    inc h                                         ; $464e: $24

jr_01b_464f:
    dec l                                         ; $464f: $2d
    inc c                                         ; $4650: $0c
    ld d, b                                       ; $4651: $50

jr_01b_4652:
    inc c                                         ; $4652: $0c
    ld [hl-], a                                   ; $4653: $32
    inc h                                         ; $4654: $24
    ld b, b                                       ; $4655: $40

jr_01b_4656:
    jr nc, jr_01b_468a                            ; $4656: $30 $32

    inc c                                         ; $4658: $0c
    ld d, b                                       ; $4659: $50
    jr jr_01b_468e                                ; $465a: $18 $32

    inc c                                         ; $465c: $0c
    ld d, b                                       ; $465d: $50

jr_01b_465e:
    jr jr_01b_4692                                ; $465e: $18 $32

    ld [de], a                                    ; $4660: $12
    ld d, b                                       ; $4661: $50

jr_01b_4662:
    jr @+$33                                      ; $4662: $18 $31

jr_01b_4664:
    ld [de], a                                    ; $4664: $12
    ld d, b                                       ; $4665: $50
    jr jr_01b_4699                                ; $4666: $18 $31

    inc c                                         ; $4668: $0c
    ld d, b                                       ; $4669: $50
    inc c                                         ; $466a: $0c
    ld [hl-], a                                   ; $466b: $32
    inc c                                         ; $466c: $0c
    ld d, b                                       ; $466d: $50
    inc c                                         ; $466e: $0c
    inc [hl]                                      ; $466f: $34
    ld [de], a                                    ; $4670: $12
    ldh a, [rP1]                                  ; $4671: $f0 $00
    rst $38                                       ; $4673: $ff
    ld d, b                                       ; $4674: $50
    inc c                                         ; $4675: $0c

jr_01b_4676:
    pop bc                                        ; $4676: $c1
    ld bc, $5018                                  ; $4677: $01 $18 $50

jr_01b_467a:
    jr jr_01b_46bd                                ; $467a: $18 $41

    inc c                                         ; $467c: $0c
    ld d, b                                       ; $467d: $50

jr_01b_467e:
    inc c                                         ; $467e: $0c
    ld a, $0c                                     ; $467f: $3e $0c
    ld d, b                                       ; $4681: $50
    inc c                                         ; $4682: $0c
    ld b, c                                       ; $4683: $41
    inc c                                         ; $4684: $0c
    ld b, b                                       ; $4685: $40
    inc c                                         ; $4686: $0c
    ld b, e                                       ; $4687: $43
    inc c                                         ; $4688: $0c
    ld d, b                                       ; $4689: $50

jr_01b_468a:
    inc c                                         ; $468a: $0c
    ld b, l                                       ; $468b: $45
    inc c                                         ; $468c: $0c
    ld d, b                                       ; $468d: $50

jr_01b_468e:
    inc c                                         ; $468e: $0c
    add hl, sp                                    ; $468f: $39
    inc c                                         ; $4690: $0c
    ld b, b                                       ; $4691: $40

jr_01b_4692:
    inc c                                         ; $4692: $0c
    ld b, c                                       ; $4693: $41
    jr jr_01b_46d6                                ; $4694: $18 $40

    jr jr_01b_46d9                                ; $4696: $18 $41

    inc c                                         ; $4698: $0c

jr_01b_4699:
    ld d, b                                       ; $4699: $50
    inc c                                         ; $469a: $0c
    ld b, e                                       ; $469b: $43
    jr jr_01b_46de                                ; $469c: $18 $40

    jr jr_01b_46e5                                ; $469e: $18 $45

    jr jr_01b_46f2                                ; $46a0: $18 $50

    jr jr_01b_46dd                                ; $46a2: $18 $39

    inc c                                         ; $46a4: $0c
    ld d, b                                       ; $46a5: $50
    inc c                                         ; $46a6: $0c
    ld b, c                                       ; $46a7: $41
    jr jr_01b_46fa                                ; $46a8: $18 $50

    jr jr_01b_46ed                                ; $46aa: $18 $41

    inc c                                         ; $46ac: $0c
    ld b, b                                       ; $46ad: $40
    inc c                                         ; $46ae: $0c
    ld b, e                                       ; $46af: $43
    jr jr_01b_4702                                ; $46b0: $18 $50

    jr jr_01b_46f2                                ; $46b2: $18 $3e

    inc c                                         ; $46b4: $0c
    ld d, b                                       ; $46b5: $50
    inc c                                         ; $46b6: $0c
    ld b, b                                       ; $46b7: $40
    inc c                                         ; $46b8: $0c
    ld b, b                                       ; $46b9: $40
    inc c                                         ; $46ba: $0c
    add hl, sp                                    ; $46bb: $39
    inc c                                         ; $46bc: $0c

jr_01b_46bd:
    ld d, b                                       ; $46bd: $50
    inc c                                         ; $46be: $0c
    ld b, b                                       ; $46bf: $40
    inc c                                         ; $46c0: $0c
    ld b, b                                       ; $46c1: $40
    inc c                                         ; $46c2: $0c
    ld b, c                                       ; $46c3: $41
    inc c                                         ; $46c4: $0c
    ld d, b                                       ; $46c5: $50
    inc c                                         ; $46c6: $0c
    ld b, e                                       ; $46c7: $43
    inc c                                         ; $46c8: $0c
    ld d, b                                       ; $46c9: $50
    inc c                                         ; $46ca: $0c
    ld a, $0c                                     ; $46cb: $3e $0c
    ld d, b                                       ; $46cd: $50
    inc c                                         ; $46ce: $0c
    ld b, c                                       ; $46cf: $41
    inc c                                         ; $46d0: $0c
    ld d, b                                       ; $46d1: $50
    inc c                                         ; $46d2: $0c
    ld b, e                                       ; $46d3: $43
    inc c                                         ; $46d4: $0c
    ld d, b                                       ; $46d5: $50

jr_01b_46d6:
    inc c                                         ; $46d6: $0c
    ld b, l                                       ; $46d7: $45
    inc c                                         ; $46d8: $0c

jr_01b_46d9:
    ld d, b                                       ; $46d9: $50
    inc c                                         ; $46da: $0c
    ld h, $0c                                     ; $46db: $26 $0c

jr_01b_46dd:
    ld d, b                                       ; $46dd: $50

jr_01b_46de:
    inc c                                         ; $46de: $0c
    ld [hl-], a                                   ; $46df: $32
    inc c                                         ; $46e0: $0c
    ld d, b                                       ; $46e1: $50
    inc c                                         ; $46e2: $0c
    ld h, $0c                                     ; $46e3: $26 $0c

jr_01b_46e5:
    ld d, b                                       ; $46e5: $50
    inc c                                         ; $46e6: $0c
    ld [hl-], a                                   ; $46e7: $32
    inc c                                         ; $46e8: $0c
    ld d, b                                       ; $46e9: $50
    inc c                                         ; $46ea: $0c
    ld h, $0c                                     ; $46eb: $26 $0c

jr_01b_46ed:
    ld d, b                                       ; $46ed: $50
    inc c                                         ; $46ee: $0c
    ld [hl-], a                                   ; $46ef: $32
    inc c                                         ; $46f0: $0c
    ld d, b                                       ; $46f1: $50

jr_01b_46f2:
    inc c                                         ; $46f2: $0c
    ld h, $0c                                     ; $46f3: $26 $0c
    ld d, b                                       ; $46f5: $50
    inc c                                         ; $46f6: $0c
    ld [hl-], a                                   ; $46f7: $32
    inc c                                         ; $46f8: $0c
    ld d, b                                       ; $46f9: $50

jr_01b_46fa:
    inc c                                         ; $46fa: $0c
    ld h, $0c                                     ; $46fb: $26 $0c
    ld d, b                                       ; $46fd: $50
    inc c                                         ; $46fe: $0c
    ld [hl-], a                                   ; $46ff: $32
    inc c                                         ; $4700: $0c
    ld d, b                                       ; $4701: $50

jr_01b_4702:
    inc c                                         ; $4702: $0c
    ld h, $0c                                     ; $4703: $26 $0c
    ld d, b                                       ; $4705: $50
    inc c                                         ; $4706: $0c
    ld [hl-], a                                   ; $4707: $32
    inc c                                         ; $4708: $0c
    ld d, b                                       ; $4709: $50
    inc c                                         ; $470a: $0c
    ld h, $0c                                     ; $470b: $26 $0c
    ld d, b                                       ; $470d: $50
    inc c                                         ; $470e: $0c
    ld [hl-], a                                   ; $470f: $32
    inc c                                         ; $4710: $0c
    ld d, b                                       ; $4711: $50
    inc c                                         ; $4712: $0c
    ld h, $0c                                     ; $4713: $26 $0c
    ld d, b                                       ; $4715: $50
    inc c                                         ; $4716: $0c
    ld [hl-], a                                   ; $4717: $32
    inc c                                         ; $4718: $0c
    ld d, b                                       ; $4719: $50
    inc c                                         ; $471a: $0c
    ld h, $0c                                     ; $471b: $26 $0c
    ld d, b                                       ; $471d: $50
    inc c                                         ; $471e: $0c
    ld [hl-], a                                   ; $471f: $32
    inc c                                         ; $4720: $0c
    ld d, b                                       ; $4721: $50
    inc c                                         ; $4722: $0c
    ld h, $0c                                     ; $4723: $26 $0c
    ld d, b                                       ; $4725: $50
    inc c                                         ; $4726: $0c
    ld [hl-], a                                   ; $4727: $32
    inc c                                         ; $4728: $0c
    ld d, b                                       ; $4729: $50
    inc c                                         ; $472a: $0c
    ld h, $0c                                     ; $472b: $26 $0c
    ld d, b                                       ; $472d: $50
    inc c                                         ; $472e: $0c
    ld [hl-], a                                   ; $472f: $32
    inc c                                         ; $4730: $0c
    ld d, b                                       ; $4731: $50
    inc c                                         ; $4732: $0c
    ld h, $0c                                     ; $4733: $26 $0c
    ld d, b                                       ; $4735: $50
    inc c                                         ; $4736: $0c
    ld [hl-], a                                   ; $4737: $32
    inc c                                         ; $4738: $0c
    ld d, b                                       ; $4739: $50
    inc c                                         ; $473a: $0c
    ld h, $0c                                     ; $473b: $26 $0c
    ld d, b                                       ; $473d: $50
    inc c                                         ; $473e: $0c
    ld [hl-], a                                   ; $473f: $32
    inc c                                         ; $4740: $0c
    ld d, b                                       ; $4741: $50
    inc c                                         ; $4742: $0c
    ld h, $0c                                     ; $4743: $26 $0c
    ld d, b                                       ; $4745: $50
    inc c                                         ; $4746: $0c
    ld [hl-], a                                   ; $4747: $32
    inc c                                         ; $4748: $0c
    ld d, b                                       ; $4749: $50
    inc c                                         ; $474a: $0c
    ld h, $0c                                     ; $474b: $26 $0c
    ld d, b                                       ; $474d: $50
    inc c                                         ; $474e: $0c
    ld [hl-], a                                   ; $474f: $32
    inc c                                         ; $4750: $0c
    ld d, b                                       ; $4751: $50
    inc c                                         ; $4752: $0c
    ld h, $0c                                     ; $4753: $26 $0c
    ld d, b                                       ; $4755: $50
    inc c                                         ; $4756: $0c
    ld [hl-], a                                   ; $4757: $32
    inc c                                         ; $4758: $0c
    ld d, b                                       ; $4759: $50
    inc c                                         ; $475a: $0c
    ld h, $0c                                     ; $475b: $26 $0c
    ld d, b                                       ; $475d: $50
    inc c                                         ; $475e: $0c
    inc sp                                        ; $475f: $33
    inc c                                         ; $4760: $0c
    ld d, b                                       ; $4761: $50
    inc c                                         ; $4762: $0c
    daa                                           ; $4763: $27
    inc c                                         ; $4764: $0c
    ld d, b                                       ; $4765: $50
    inc c                                         ; $4766: $0c
    inc sp                                        ; $4767: $33
    inc c                                         ; $4768: $0c
    ld d, b                                       ; $4769: $50
    inc c                                         ; $476a: $0c
    daa                                           ; $476b: $27
    inc c                                         ; $476c: $0c
    ld d, b                                       ; $476d: $50
    inc c                                         ; $476e: $0c
    inc sp                                        ; $476f: $33
    inc c                                         ; $4770: $0c
    ld d, b                                       ; $4771: $50
    inc c                                         ; $4772: $0c
    daa                                           ; $4773: $27
    inc c                                         ; $4774: $0c
    ld d, b                                       ; $4775: $50
    inc c                                         ; $4776: $0c
    inc sp                                        ; $4777: $33
    inc c                                         ; $4778: $0c
    ld d, b                                       ; $4779: $50
    inc c                                         ; $477a: $0c
    daa                                           ; $477b: $27
    inc c                                         ; $477c: $0c
    ld d, b                                       ; $477d: $50
    inc c                                         ; $477e: $0c
    inc sp                                        ; $477f: $33
    inc c                                         ; $4780: $0c
    ld d, b                                       ; $4781: $50
    inc c                                         ; $4782: $0c
    daa                                           ; $4783: $27
    inc c                                         ; $4784: $0c
    ld d, b                                       ; $4785: $50
    inc c                                         ; $4786: $0c
    inc sp                                        ; $4787: $33
    inc c                                         ; $4788: $0c
    ld d, b                                       ; $4789: $50
    inc c                                         ; $478a: $0c
    daa                                           ; $478b: $27
    inc c                                         ; $478c: $0c
    ld d, b                                       ; $478d: $50
    inc c                                         ; $478e: $0c
    inc sp                                        ; $478f: $33
    inc c                                         ; $4790: $0c
    ld d, b                                       ; $4791: $50
    inc c                                         ; $4792: $0c
    daa                                           ; $4793: $27
    inc c                                         ; $4794: $0c
    ld d, b                                       ; $4795: $50
    inc c                                         ; $4796: $0c
    inc sp                                        ; $4797: $33
    inc c                                         ; $4798: $0c
    ld d, b                                       ; $4799: $50
    inc c                                         ; $479a: $0c
    ld h, $0c                                     ; $479b: $26 $0c
    ld d, b                                       ; $479d: $50
    inc c                                         ; $479e: $0c
    ld [hl-], a                                   ; $479f: $32
    inc c                                         ; $47a0: $0c
    ld d, b                                       ; $47a1: $50
    inc c                                         ; $47a2: $0c
    ld h, $0c                                     ; $47a3: $26 $0c
    ld d, b                                       ; $47a5: $50
    inc c                                         ; $47a6: $0c
    ld [hl-], a                                   ; $47a7: $32
    inc c                                         ; $47a8: $0c
    ld d, b                                       ; $47a9: $50
    inc c                                         ; $47aa: $0c
    ld h, $0c                                     ; $47ab: $26 $0c
    ld d, b                                       ; $47ad: $50
    inc c                                         ; $47ae: $0c
    ld [hl-], a                                   ; $47af: $32
    inc c                                         ; $47b0: $0c
    ld d, b                                       ; $47b1: $50
    inc c                                         ; $47b2: $0c
    ld h, $0c                                     ; $47b3: $26 $0c
    ld d, b                                       ; $47b5: $50
    inc c                                         ; $47b6: $0c
    ld [hl-], a                                   ; $47b7: $32
    inc c                                         ; $47b8: $0c
    ld d, b                                       ; $47b9: $50
    inc c                                         ; $47ba: $0c
    ld h, $0c                                     ; $47bb: $26 $0c
    ld d, b                                       ; $47bd: $50
    inc c                                         ; $47be: $0c
    ld [hl-], a                                   ; $47bf: $32
    inc c                                         ; $47c0: $0c
    ld d, b                                       ; $47c1: $50
    inc c                                         ; $47c2: $0c
    ld h, $0c                                     ; $47c3: $26 $0c
    ld d, b                                       ; $47c5: $50
    inc c                                         ; $47c6: $0c
    ld [hl-], a                                   ; $47c7: $32
    inc c                                         ; $47c8: $0c
    ld d, b                                       ; $47c9: $50
    inc c                                         ; $47ca: $0c
    ld h, $0c                                     ; $47cb: $26 $0c
    ld d, b                                       ; $47cd: $50
    inc c                                         ; $47ce: $0c
    ld [hl-], a                                   ; $47cf: $32
    inc c                                         ; $47d0: $0c
    ld d, b                                       ; $47d1: $50
    inc c                                         ; $47d2: $0c
    ld h, $0c                                     ; $47d3: $26 $0c
    ld d, b                                       ; $47d5: $50
    inc c                                         ; $47d6: $0c
    ld [hl-], a                                   ; $47d7: $32
    inc c                                         ; $47d8: $0c
    ld h, b                                       ; $47d9: $60
    inc c                                         ; $47da: $0c
    jr nc, @+$08                                  ; $47db: $30 $06

    ld b, b                                       ; $47dd: $40
    inc c                                         ; $47de: $0c
    inc a                                         ; $47df: $3c
    ld b, $30                                     ; $47e0: $06 $30
    ld b, $3c                                     ; $47e2: $06 $3c
    ld b, $60                                     ; $47e4: $06 $60
    ld b, $30                                     ; $47e6: $06 $30
    ld b, $30                                     ; $47e8: $06 $30
    inc c                                         ; $47ea: $0c
    inc a                                         ; $47eb: $3c
    ld b, $30                                     ; $47ec: $06 $30
    ld b, $3c                                     ; $47ee: $06 $3c
    ld b, $60                                     ; $47f0: $06 $60
    ld b, $30                                     ; $47f2: $06 $30
    ld b, $30                                     ; $47f4: $06 $30
    inc c                                         ; $47f6: $0c
    inc a                                         ; $47f7: $3c
    ld b, $30                                     ; $47f8: $06 $30
    ld b, $3c                                     ; $47fa: $06 $3c
    ld b, $60                                     ; $47fc: $06 $60
    ld b, $30                                     ; $47fe: $06 $30
    ld b, $40                                     ; $4800: $06 $40
    inc c                                         ; $4802: $0c
    inc a                                         ; $4803: $3c
    ld b, $40                                     ; $4804: $06 $40
    ld b, $3c                                     ; $4806: $06 $3c
    ld b, $60                                     ; $4808: $06 $60
    ld b, $2b                                     ; $480a: $06 $2b
    ld b, $40                                     ; $480c: $06 $40
    inc c                                         ; $480e: $0c
    scf                                           ; $480f: $37
    ld b, $40                                     ; $4810: $06 $40
    ld b, $37                                     ; $4812: $06 $37
    ld b, $60                                     ; $4814: $06 $60
    ld b, $2b                                     ; $4816: $06 $2b
    ld b, $30                                     ; $4818: $06 $30
    inc c                                         ; $481a: $0c
    scf                                           ; $481b: $37
    ld b, $40                                     ; $481c: $06 $40
    ld b, $37                                     ; $481e: $06 $37
    ld b, $60                                     ; $4820: $06 $60
    ld b, $2b                                     ; $4822: $06 $2b
    ld b, $30                                     ; $4824: $06 $30
    inc c                                         ; $4826: $0c
    scf                                           ; $4827: $37
    ld b, $40                                     ; $4828: $06 $40
    ld b, $37                                     ; $482a: $06 $37
    ld b, $60                                     ; $482c: $06 $60
    ld b, $2b                                     ; $482e: $06 $2b
    ld b, $40                                     ; $4830: $06 $40
    inc c                                         ; $4832: $0c
    scf                                           ; $4833: $37
    ld b, $40                                     ; $4834: $06 $40
    ld b, $37                                     ; $4836: $06 $37
    ld b, $60                                     ; $4838: $06 $60
    ld b, $27                                     ; $483a: $06 $27
    ld b, $40                                     ; $483c: $06 $40
    inc c                                         ; $483e: $0c
    inc sp                                        ; $483f: $33
    ld b, $40                                     ; $4840: $06 $40
    ld b, $33                                     ; $4842: $06 $33
    ld b, $60                                     ; $4844: $06 $60
    ld b, $27                                     ; $4846: $06 $27
    ld b, $40                                     ; $4848: $06 $40
    inc c                                         ; $484a: $0c
    inc sp                                        ; $484b: $33
    ld b, $40                                     ; $484c: $06 $40
    ld b, $33                                     ; $484e: $06 $33
    ld b, $60                                     ; $4850: $06 $60
    ld b, $27                                     ; $4852: $06 $27
    ld b, $40                                     ; $4854: $06 $40
    inc c                                         ; $4856: $0c
    inc sp                                        ; $4857: $33
    ld b, $40                                     ; $4858: $06 $40
    ld b, $33                                     ; $485a: $06 $33
    ld b, $60                                     ; $485c: $06 $60
    ld b, $27                                     ; $485e: $06 $27
    ld b, $40                                     ; $4860: $06 $40
    inc c                                         ; $4862: $0c
    inc sp                                        ; $4863: $33
    ld b, $40                                     ; $4864: $06 $40
    ld b, $33                                     ; $4866: $06 $33
    ld b, $60                                     ; $4868: $06 $60
    ld b, $30                                     ; $486a: $06 $30
    ld b, $40                                     ; $486c: $06 $40
    inc c                                         ; $486e: $0c
    inc a                                         ; $486f: $3c
    ld b, $40                                     ; $4870: $06 $40
    ld b, $3c                                     ; $4872: $06 $3c
    ld b, $60                                     ; $4874: $06 $60
    ld b, $30                                     ; $4876: $06 $30
    ld b, $40                                     ; $4878: $06 $40
    inc c                                         ; $487a: $0c
    inc a                                         ; $487b: $3c
    ld b, $40                                     ; $487c: $06 $40
    ld b, $3c                                     ; $487e: $06 $3c
    ld b, $60                                     ; $4880: $06 $60
    ld b, $2f                                     ; $4882: $06 $2f
    ld b, $40                                     ; $4884: $06 $40
    inc c                                         ; $4886: $0c
    dec sp                                        ; $4887: $3b
    ld b, $40                                     ; $4888: $06 $40
    ld b, $3b                                     ; $488a: $06 $3b
    ld b, $60                                     ; $488c: $06 $60
    ld b, $2b                                     ; $488e: $06 $2b
    ld b, $40                                     ; $4890: $06 $40
    inc c                                         ; $4892: $0c
    scf                                           ; $4893: $37
    ld b, $40                                     ; $4894: $06 $40
    ld b, $37                                     ; $4896: $06 $37
    ld b, $60                                     ; $4898: $06 $60
    ld b, $29                                     ; $489a: $06 $29
    ld b, $40                                     ; $489c: $06 $40
    inc c                                         ; $489e: $0c
    dec [hl]                                      ; $489f: $35
    ld b, $40                                     ; $48a0: $06 $40
    ld b, $35                                     ; $48a2: $06 $35
    ld b, $60                                     ; $48a4: $06 $60
    ld b, $29                                     ; $48a6: $06 $29
    ld b, $40                                     ; $48a8: $06 $40
    inc c                                         ; $48aa: $0c
    dec [hl]                                      ; $48ab: $35
    ld b, $40                                     ; $48ac: $06 $40
    ld b, $35                                     ; $48ae: $06 $35
    ld b, $60                                     ; $48b0: $06 $60
    ld b, $29                                     ; $48b2: $06 $29
    ld b, $40                                     ; $48b4: $06 $40
    inc c                                         ; $48b6: $0c
    dec [hl]                                      ; $48b7: $35
    ld b, $40                                     ; $48b8: $06 $40
    ld b, $35                                     ; $48ba: $06 $35
    ld b, $60                                     ; $48bc: $06 $60
    ld b, $29                                     ; $48be: $06 $29
    ld b, $40                                     ; $48c0: $06 $40
    inc c                                         ; $48c2: $0c
    scf                                           ; $48c3: $37
    ld b, $40                                     ; $48c4: $06 $40
    ld b, $38                                     ; $48c6: $06 $38
    ld b, $60                                     ; $48c8: $06 $60
    ld b, $29                                     ; $48ca: $06 $29
    ld b, $40                                     ; $48cc: $06 $40
    inc c                                         ; $48ce: $0c
    dec [hl]                                      ; $48cf: $35
    ld b, $40                                     ; $48d0: $06 $40
    ld b, $35                                     ; $48d2: $06 $35
    ld b, $60                                     ; $48d4: $06 $60
    ld b, $29                                     ; $48d6: $06 $29
    ld b, $40                                     ; $48d8: $06 $40
    inc c                                         ; $48da: $0c
    dec [hl]                                      ; $48db: $35
    ld b, $40                                     ; $48dc: $06 $40
    ld b, $35                                     ; $48de: $06 $35
    ld b, $60                                     ; $48e0: $06 $60
    ld b, $29                                     ; $48e2: $06 $29
    ld b, $60                                     ; $48e4: $06 $60
    ld b, $29                                     ; $48e6: $06 $29
    ld b, $40                                     ; $48e8: $06 $40
    ld b, $37                                     ; $48ea: $06 $37
    ld b, $40                                     ; $48ec: $06 $40
    ld b, $38                                     ; $48ee: $06 $38
    ld b, $60                                     ; $48f0: $06 $60
    ld b, $29                                     ; $48f2: $06 $29
    ld b, $40                                     ; $48f4: $06 $40
    inc c                                         ; $48f6: $0c
    dec [hl]                                      ; $48f7: $35
    ld b, $60                                     ; $48f8: $06 $60
    inc c                                         ; $48fa: $0c
    add hl, hl                                    ; $48fb: $29
    ld b, $40                                     ; $48fc: $06 $40
    inc c                                         ; $48fe: $0c
    dec [hl]                                      ; $48ff: $35
    ld b, $40                                     ; $4900: $06 $40
    ld b, $35                                     ; $4902: $06 $35
    ld b, $60                                     ; $4904: $06 $60
    ld b, $29                                     ; $4906: $06 $29
    ld b, $40                                     ; $4908: $06 $40
    inc c                                         ; $490a: $0c
    dec [hl]                                      ; $490b: $35
    ld b, $30                                     ; $490c: $06 $30
    ld b, $35                                     ; $490e: $06 $35
    ld b, $60                                     ; $4910: $06 $60
    ld b, $29                                     ; $4912: $06 $29
    ld b, $40                                     ; $4914: $06 $40
    ld b, $35                                     ; $4916: $06 $35
    ld b, $40                                     ; $4918: $06 $40
    ld b, $37                                     ; $491a: $06 $37
    ld b, $40                                     ; $491c: $06 $40
    ld b, $38                                     ; $491e: $06 $38
    ld b, $60                                     ; $4920: $06 $60
    ld b, $29                                     ; $4922: $06 $29
    ld b, $40                                     ; $4924: $06 $40
    inc c                                         ; $4926: $0c
    dec [hl]                                      ; $4927: $35
    ld b, $60                                     ; $4928: $06 $60
    inc c                                         ; $492a: $0c
    add hl, hl                                    ; $492b: $29
    ld b, $40                                     ; $492c: $06 $40
    ld b, $35                                     ; $492e: $06 $35
    ld b, $40                                     ; $4930: $06 $40
    ld b, $35                                     ; $4932: $06 $35
    ld b, $40                                     ; $4934: $06 $40
    ld b, $35                                     ; $4936: $06 $35
    ld b, $60                                     ; $4938: $06 $60
    ld b, $29                                     ; $493a: $06 $29
    ld b, $40                                     ; $493c: $06 $40
    inc c                                         ; $493e: $0c
    dec [hl]                                      ; $493f: $35
    inc c                                         ; $4940: $0c
    ld h, b                                       ; $4941: $60
    inc c                                         ; $4942: $0c
    add hl, hl                                    ; $4943: $29
    ld b, $60                                     ; $4944: $06 $60
    ld b, $29                                     ; $4946: $06 $29
    ld b, $30                                     ; $4948: $06 $30
    ld b, $3c                                     ; $494a: $06 $3c
    ld b, $30                                     ; $494c: $06 $30
    ld b, $3c                                     ; $494e: $06 $3c
    ld b, $60                                     ; $4950: $06 $60
    ld b, $30                                     ; $4952: $06 $30
    ld b, $30                                     ; $4954: $06 $30
    inc c                                         ; $4956: $0c
    inc a                                         ; $4957: $3c
    ld b, $30                                     ; $4958: $06 $30
    ld b, $3c                                     ; $495a: $06 $3c
    ld b, $40                                     ; $495c: $06 $40
    ld b, $38                                     ; $495e: $06 $38
    inc c                                         ; $4960: $0c
    jr nc, jr_01b_496f                            ; $4961: $30 $0c

    inc a                                         ; $4963: $3c
    inc c                                         ; $4964: $0c
    ld b, b                                       ; $4965: $40
    inc c                                         ; $4966: $0c
    ld a, [hl-]                                   ; $4967: $3a
    inc c                                         ; $4968: $0c
    ld b, b                                       ; $4969: $40
    inc c                                         ; $496a: $0c
    dec a                                         ; $496b: $3d
    inc c                                         ; $496c: $0c
    jr nc, jr_01b_497b                            ; $496d: $30 $0c

jr_01b_496f:
    inc a                                         ; $496f: $3c
    inc c                                         ; $4970: $0c
    ld b, b                                       ; $4971: $40
    inc c                                         ; $4972: $0c
    ccf                                           ; $4973: $3f
    inc c                                         ; $4974: $0c
    ld b, b                                       ; $4975: $40
    inc c                                         ; $4976: $0c
    ld a, [hl-]                                   ; $4977: $3a
    inc c                                         ; $4978: $0c
    jr nc, jr_01b_4987                            ; $4979: $30 $0c

jr_01b_497b:
    inc a                                         ; $497b: $3c
    inc c                                         ; $497c: $0c
    jr nc, jr_01b_498b                            ; $497d: $30 $0c

    jr c, jr_01b_498d                             ; $497f: $38 $0c

    jr nc, jr_01b_498f                            ; $4981: $30 $0c

    inc a                                         ; $4983: $3c
    inc c                                         ; $4984: $0c
    jr nc, jr_01b_4993                            ; $4985: $30 $0c

jr_01b_4987:
    ld a, [hl-]                                   ; $4987: $3a
    inc c                                         ; $4988: $0c
    ld b, b                                       ; $4989: $40
    inc c                                         ; $498a: $0c

jr_01b_498b:
    dec a                                         ; $498b: $3d
    inc c                                         ; $498c: $0c

jr_01b_498d:
    jr nc, jr_01b_499b                            ; $498d: $30 $0c

jr_01b_498f:
    inc a                                         ; $498f: $3c
    inc c                                         ; $4990: $0c
    jr nc, @+$0e                                  ; $4991: $30 $0c

jr_01b_4993:
    ccf                                           ; $4993: $3f
    inc c                                         ; $4994: $0c
    jr nc, jr_01b_49a3                            ; $4995: $30 $0c

    ld a, [hl-]                                   ; $4997: $3a
    inc c                                         ; $4998: $0c
    jr nc, jr_01b_49a1                            ; $4999: $30 $06

jr_01b_499b:
    dec sp                                        ; $499b: $3b
    inc c                                         ; $499c: $0c
    ld b, b                                       ; $499d: $40
    ld b, $3c                                     ; $499e: $06 $3c
    inc c                                         ; $49a0: $0c

jr_01b_49a1:
    ld b, b                                       ; $49a1: $40
    inc c                                         ; $49a2: $0c

jr_01b_49a3:
    scf                                           ; $49a3: $37
    inc c                                         ; $49a4: $0c
    jr nc, jr_01b_49b3                            ; $49a5: $30 $0c

    dec sp                                        ; $49a7: $3b
    inc c                                         ; $49a8: $0c
    ld b, b                                       ; $49a9: $40
    inc c                                         ; $49aa: $0c
    add hl, sp                                    ; $49ab: $39
    inc c                                         ; $49ac: $0c
    ld b, b                                       ; $49ad: $40
    inc c                                         ; $49ae: $0c
    inc a                                         ; $49af: $3c
    inc c                                         ; $49b0: $0c
    jr nc, jr_01b_49bf                            ; $49b1: $30 $0c

jr_01b_49b3:
    dec sp                                        ; $49b3: $3b
    inc c                                         ; $49b4: $0c
    ld b, b                                       ; $49b5: $40
    inc c                                         ; $49b6: $0c
    ld a, $0c                                     ; $49b7: $3e $0c
    ld b, b                                       ; $49b9: $40
    inc c                                         ; $49ba: $0c
    add hl, sp                                    ; $49bb: $39
    inc c                                         ; $49bc: $0c
    jr nc, jr_01b_49cb                            ; $49bd: $30 $0c

jr_01b_49bf:
    dec sp                                        ; $49bf: $3b
    inc c                                         ; $49c0: $0c
    ld b, b                                       ; $49c1: $40
    inc c                                         ; $49c2: $0c
    add hl, sp                                    ; $49c3: $39
    inc c                                         ; $49c4: $0c
    jr nc, jr_01b_49d3                            ; $49c5: $30 $0c

    ld a, $0c                                     ; $49c7: $3e $0c
    ld b, b                                       ; $49c9: $40
    inc c                                         ; $49ca: $0c

jr_01b_49cb:
    inc a                                         ; $49cb: $3c
    inc c                                         ; $49cc: $0c
    ld b, b                                       ; $49cd: $40
    inc c                                         ; $49ce: $0c
    ld a, [hl-]                                   ; $49cf: $3a
    inc c                                         ; $49d0: $0c
    jr nc, jr_01b_49df                            ; $49d1: $30 $0c

jr_01b_49d3:
    add hl, sp                                    ; $49d3: $39
    inc c                                         ; $49d4: $0c
    ld b, b                                       ; $49d5: $40
    inc c                                         ; $49d6: $0c
    dec [hl]                                      ; $49d7: $35
    inc c                                         ; $49d8: $0c
    jr nc, jr_01b_49e7                            ; $49d9: $30 $0c

    scf                                           ; $49db: $37
    inc c                                         ; $49dc: $0c
    ld b, b                                       ; $49dd: $40
    inc c                                         ; $49de: $0c

jr_01b_49df:
    add hl, sp                                    ; $49df: $39
    inc c                                         ; $49e0: $0c
    ld b, b                                       ; $49e1: $40
    inc c                                         ; $49e2: $0c
    jr c, jr_01b_49f1                             ; $49e3: $38 $0c

    jr nc, jr_01b_49f3                            ; $49e5: $30 $0c

jr_01b_49e7:
    inc a                                         ; $49e7: $3c
    inc c                                         ; $49e8: $0c
    ld b, b                                       ; $49e9: $40
    inc c                                         ; $49ea: $0c
    ld a, [hl-]                                   ; $49eb: $3a
    inc c                                         ; $49ec: $0c
    ld b, b                                       ; $49ed: $40
    inc c                                         ; $49ee: $0c
    dec a                                         ; $49ef: $3d
    inc c                                         ; $49f0: $0c

jr_01b_49f1:
    jr nc, jr_01b_49ff                            ; $49f1: $30 $0c

jr_01b_49f3:
    inc a                                         ; $49f3: $3c
    inc c                                         ; $49f4: $0c
    ld b, b                                       ; $49f5: $40
    inc c                                         ; $49f6: $0c
    ccf                                           ; $49f7: $3f
    inc c                                         ; $49f8: $0c
    ld b, b                                       ; $49f9: $40
    inc c                                         ; $49fa: $0c
    ld a, [hl-]                                   ; $49fb: $3a
    inc c                                         ; $49fc: $0c
    jr nc, jr_01b_4a0b                            ; $49fd: $30 $0c

jr_01b_49ff:
    inc a                                         ; $49ff: $3c
    inc c                                         ; $4a00: $0c
    jr nc, jr_01b_4a0f                            ; $4a01: $30 $0c

    jr c, jr_01b_4a11                             ; $4a03: $38 $0c

    jr nc, jr_01b_4a13                            ; $4a05: $30 $0c

    inc a                                         ; $4a07: $3c
    inc c                                         ; $4a08: $0c
    jr nc, jr_01b_4a17                            ; $4a09: $30 $0c

jr_01b_4a0b:
    ld a, [hl-]                                   ; $4a0b: $3a
    inc c                                         ; $4a0c: $0c
    ld b, b                                       ; $4a0d: $40
    inc c                                         ; $4a0e: $0c

jr_01b_4a0f:
    dec a                                         ; $4a0f: $3d
    inc c                                         ; $4a10: $0c

jr_01b_4a11:
    jr nc, jr_01b_4a1f                            ; $4a11: $30 $0c

jr_01b_4a13:
    inc a                                         ; $4a13: $3c
    inc c                                         ; $4a14: $0c
    jr nc, @+$0e                                  ; $4a15: $30 $0c

jr_01b_4a17:
    ccf                                           ; $4a17: $3f
    inc c                                         ; $4a18: $0c
    jr nc, jr_01b_4a27                            ; $4a19: $30 $0c

    ld a, [hl-]                                   ; $4a1b: $3a
    inc c                                         ; $4a1c: $0c
    jr nc, jr_01b_4a25                            ; $4a1d: $30 $06

jr_01b_4a1f:
    dec sp                                        ; $4a1f: $3b
    inc c                                         ; $4a20: $0c
    ld b, b                                       ; $4a21: $40
    ld b, $3c                                     ; $4a22: $06 $3c
    inc c                                         ; $4a24: $0c

jr_01b_4a25:
    ld b, b                                       ; $4a25: $40
    inc c                                         ; $4a26: $0c

jr_01b_4a27:
    scf                                           ; $4a27: $37
    inc c                                         ; $4a28: $0c
    jr nc, jr_01b_4a37                            ; $4a29: $30 $0c

    dec sp                                        ; $4a2b: $3b
    inc c                                         ; $4a2c: $0c
    ld b, b                                       ; $4a2d: $40
    inc c                                         ; $4a2e: $0c
    add hl, sp                                    ; $4a2f: $39
    inc c                                         ; $4a30: $0c
    ld b, b                                       ; $4a31: $40
    inc c                                         ; $4a32: $0c
    inc a                                         ; $4a33: $3c
    inc c                                         ; $4a34: $0c
    jr nc, jr_01b_4a43                            ; $4a35: $30 $0c

jr_01b_4a37:
    dec sp                                        ; $4a37: $3b
    inc c                                         ; $4a38: $0c
    ld b, b                                       ; $4a39: $40
    inc c                                         ; $4a3a: $0c
    ld a, $0c                                     ; $4a3b: $3e $0c
    ld b, b                                       ; $4a3d: $40
    inc c                                         ; $4a3e: $0c
    add hl, sp                                    ; $4a3f: $39
    inc c                                         ; $4a40: $0c
    jr nc, jr_01b_4a4f                            ; $4a41: $30 $0c

jr_01b_4a43:
    dec sp                                        ; $4a43: $3b
    inc c                                         ; $4a44: $0c
    ld b, b                                       ; $4a45: $40
    inc c                                         ; $4a46: $0c
    scf                                           ; $4a47: $37
    inc c                                         ; $4a48: $0c
    jr nc, jr_01b_4a57                            ; $4a49: $30 $0c

    dec sp                                        ; $4a4b: $3b
    inc c                                         ; $4a4c: $0c
    ld b, b                                       ; $4a4d: $40
    inc c                                         ; $4a4e: $0c

jr_01b_4a4f:
    add hl, sp                                    ; $4a4f: $39
    inc c                                         ; $4a50: $0c
    ld b, b                                       ; $4a51: $40
    inc c                                         ; $4a52: $0c
    inc a                                         ; $4a53: $3c
    inc c                                         ; $4a54: $0c
    jr nc, @+$0e                                  ; $4a55: $30 $0c

jr_01b_4a57:
    dec sp                                        ; $4a57: $3b
    inc c                                         ; $4a58: $0c
    ld b, b                                       ; $4a59: $40
    inc c                                         ; $4a5a: $0c
    ld a, $0c                                     ; $4a5b: $3e $0c
    ld b, b                                       ; $4a5d: $40
    inc c                                         ; $4a5e: $0c
    add hl, sp                                    ; $4a5f: $39
    ld b, $30                                     ; $4a60: $06 $30
    ld b, $3a                                     ; $4a62: $06 $3a
    ld b, $30                                     ; $4a64: $06 $30
    ld b, $3b                                     ; $4a66: $06 $3b
    inc c                                         ; $4a68: $0c
    ld b, b                                       ; $4a69: $40
    inc a                                         ; $4a6a: $3c
    ld b, c                                       ; $4a6b: $41
    jr jr_01b_4aae                                ; $4a6c: $18 $40

    jr @+$45                                      ; $4a6e: $18 $43

    dec c                                         ; $4a70: $0d
    ld b, b                                       ; $4a71: $40
    inc c                                         ; $4a72: $0c
    ld b, l                                       ; $4a73: $45
    dec c                                         ; $4a74: $0d
    ld b, b                                       ; $4a75: $40
    inc c                                         ; $4a76: $0c
    ld a, $33                                     ; $4a77: $3e $33
    ld b, b                                       ; $4a79: $40
    jr nc, jr_01b_4abd                            ; $4a7a: $30 $41

    add hl, de                                    ; $4a7c: $19
    ld b, b                                       ; $4a7d: $40
    jr jr_01b_4ac3                                ; $4a7e: $18 $43

    dec c                                         ; $4a80: $0d
    ld b, b                                       ; $4a81: $40
    inc c                                         ; $4a82: $0c
    ld b, l                                       ; $4a83: $45
    inc c                                         ; $4a84: $0c
    ld b, b                                       ; $4a85: $40
    inc c                                         ; $4a86: $0c
    ld a, $33                                     ; $4a87: $3e $33
    ld b, b                                       ; $4a89: $40
    jr nc, @+$43                                  ; $4a8a: $30 $41

    add hl, de                                    ; $4a8c: $19
    ld b, b                                       ; $4a8d: $40
    jr @+$45                                      ; $4a8e: $18 $43

    dec c                                         ; $4a90: $0d
    ld b, b                                       ; $4a91: $40
    inc c                                         ; $4a92: $0c
    ld b, l                                       ; $4a93: $45
    dec c                                         ; $4a94: $0d
    ld b, b                                       ; $4a95: $40
    inc c                                         ; $4a96: $0c
    ld a, $1b                                     ; $4a97: $3e $1b
    ld b, b                                       ; $4a99: $40
    jr jr_01b_4adf                                ; $4a9a: $18 $43

    jr jr_01b_4ade                                ; $4a9c: $18 $40

    jr @+$47                                      ; $4a9e: $18 $45

    ld a, [de]                                    ; $4aa0: $1a
    ld b, b                                       ; $4aa1: $40
    jr jr_01b_4ae1                                ; $4aa2: $18 $3d

    inc de                                        ; $4aa4: $13
    ldh a, [rP1]                                  ; $4aa5: $f0 $00
    rst $38                                       ; $4aa7: $ff
    jr nc, jr_01b_4aaa                            ; $4aa8: $30 $00

jr_01b_4aaa:
    cp [hl]                                       ; $4aaa: $be
    rla                                           ; $4aab: $17
    jr jr_01b_4ade                                ; $4aac: $18 $30

jr_01b_4aae:
    jr jr_01b_4af8                                ; $4aae: $18 $48

    jr jr_01b_4ae2                                ; $4ab0: $18 $30

    jr jr_01b_4afe                                ; $4ab2: $18 $4a

    jr nc, jr_01b_4ae6                            ; $4ab4: $30 $30

    jr nc, @+$47                                  ; $4ab6: $30 $45

    jr nc, jr_01b_4aea                            ; $4ab8: $30 $30

    jr nc, jr_01b_4b02                            ; $4aba: $30 $46

    ld a, [hl+]                                   ; $4abc: $2a

jr_01b_4abd:
    jr nc, jr_01b_4ae3                            ; $4abd: $30 $24

    ld b, l                                       ; $4abf: $45
    ld a, [hl+]                                   ; $4ac0: $2a
    jr nc, @+$26                                  ; $4ac1: $30 $24

jr_01b_4ac3:
    ld c, b                                       ; $4ac3: $48
    jr jr_01b_4af6                                ; $4ac4: $18 $30

    jr jr_01b_4b12                                ; $4ac6: $18 $4a

    jr nc, jr_01b_4afa                            ; $4ac8: $30 $30

    jr nc, jr_01b_4b11                            ; $4aca: $30 $45

    jr nc, jr_01b_4afe                            ; $4acc: $30 $30

    jr nc, jr_01b_4b16                            ; $4ace: $30 $46

    jr jr_01b_4b02                                ; $4ad0: $18 $30

    jr @+$47                                      ; $4ad2: $18 $45

    jr jr_01b_4b46                                ; $4ad4: $18 $70

    inc h                                         ; $4ad6: $24
    add hl, sp                                    ; $4ad7: $39
    inc c                                         ; $4ad8: $0c
    ld [hl], b                                    ; $4ad9: $70
    inc c                                         ; $4ada: $0c
    dec [hl]                                      ; $4adb: $35
    inc c                                         ; $4adc: $0c
    ld [hl], b                                    ; $4add: $70

jr_01b_4ade:
    inc c                                         ; $4ade: $0c

jr_01b_4adf:
    add hl, sp                                    ; $4adf: $39
    inc c                                         ; $4ae0: $0c

jr_01b_4ae1:
    ld [hl], b                                    ; $4ae1: $70

jr_01b_4ae2:
    inc c                                         ; $4ae2: $0c

jr_01b_4ae3:
    ld a, [hl-]                                   ; $4ae3: $3a
    jr jr_01b_4b56                                ; $4ae4: $18 $70

jr_01b_4ae6:
    jr jr_01b_4b1f                                ; $4ae6: $18 $37

    inc c                                         ; $4ae8: $0c
    ld [hl], b                                    ; $4ae9: $70

jr_01b_4aea:
    inc c                                         ; $4aea: $0c
    ld a, [hl-]                                   ; $4aeb: $3a
    inc c                                         ; $4aec: $0c
    ld [hl], b                                    ; $4aed: $70
    inc c                                         ; $4aee: $0c
    add hl, sp                                    ; $4aef: $39
    jr jr_01b_4b62                                ; $4af0: $18 $70

    jr jr_01b_4b26                                ; $4af2: $18 $32

    inc c                                         ; $4af4: $0c
    ld [hl], b                                    ; $4af5: $70

jr_01b_4af6:
    inc c                                         ; $4af6: $0c
    inc [hl]                                      ; $4af7: $34

jr_01b_4af8:
    inc c                                         ; $4af8: $0c
    ld [hl], b                                    ; $4af9: $70

jr_01b_4afa:
    inc c                                         ; $4afa: $0c
    dec [hl]                                      ; $4afb: $35
    jr nc, jr_01b_4b5e                            ; $4afc: $30 $60

jr_01b_4afe:
    inc a                                         ; $4afe: $3c
    ld b, c                                       ; $4aff: $41
    ld [de], a                                    ; $4b00: $12
    ld h, b                                       ; $4b01: $60

jr_01b_4b02:
    inc c                                         ; $4b02: $0c
    ld a, $0c                                     ; $4b03: $3e $0c
    ld h, b                                       ; $4b05: $60
    inc c                                         ; $4b06: $0c
    ld b, c                                       ; $4b07: $41
    inc c                                         ; $4b08: $0c
    ld h, b                                       ; $4b09: $60
    inc c                                         ; $4b0a: $0c
    ld b, e                                       ; $4b0b: $43
    jr jr_01b_4b6e                                ; $4b0c: $18 $60

    jr jr_01b_4b50                                ; $4b0e: $18 $40

    inc c                                         ; $4b10: $0c

jr_01b_4b11:
    ld h, b                                       ; $4b11: $60

jr_01b_4b12:
    inc c                                         ; $4b12: $0c
    ld b, e                                       ; $4b13: $43
    inc c                                         ; $4b14: $0c
    ld h, b                                       ; $4b15: $60

jr_01b_4b16:
    inc c                                         ; $4b16: $0c
    ld b, c                                       ; $4b17: $41
    jr jr_01b_4b7a                                ; $4b18: $18 $60

    jr @+$3b                                      ; $4b1a: $18 $39

    inc c                                         ; $4b1c: $0c
    ld [hl], b                                    ; $4b1d: $70
    inc c                                         ; $4b1e: $0c

jr_01b_4b1f:
    dec a                                         ; $4b1f: $3d
    inc c                                         ; $4b20: $0c
    ld [hl], b                                    ; $4b21: $70
    inc c                                         ; $4b22: $0c
    ld a, $0c                                     ; $4b23: $3e $0c
    ld [hl], b                                    ; $4b25: $70

jr_01b_4b26:
    inc c                                         ; $4b26: $0c
    inc a                                         ; $4b27: $3c
    inc c                                         ; $4b28: $0c
    ld [hl], b                                    ; $4b29: $70
    inc c                                         ; $4b2a: $0c
    ld a, [hl-]                                   ; $4b2b: $3a
    inc c                                         ; $4b2c: $0c
    ld h, b                                       ; $4b2d: $60
    inc c                                         ; $4b2e: $0c
    add hl, sp                                    ; $4b2f: $39
    inc c                                         ; $4b30: $0c
    ld h, b                                       ; $4b31: $60
    inc c                                         ; $4b32: $0c
    ld [hl], $18                                  ; $4b33: $36 $18
    ld h, b                                       ; $4b35: $60
    jr jr_01b_4b6d                                ; $4b36: $18 $35

    inc c                                         ; $4b38: $0c
    ld [hl], b                                    ; $4b39: $70
    inc c                                         ; $4b3a: $0c
    jr c, jr_01b_4b49                             ; $4b3b: $38 $0c

    ld [hl], b                                    ; $4b3d: $70
    inc c                                         ; $4b3e: $0c
    ld a, [hl-]                                   ; $4b3f: $3a
    jr jr_01b_4bb2                                ; $4b40: $18 $70

    jr jr_01b_4b7c                                ; $4b42: $18 $38

    inc h                                         ; $4b44: $24
    ld h, b                                       ; $4b45: $60

jr_01b_4b46:
    inc h                                         ; $4b46: $24
    ld b, d                                       ; $4b47: $42
    inc c                                         ; $4b48: $0c

jr_01b_4b49:
    ld h, b                                       ; $4b49: $60
    inc c                                         ; $4b4a: $0c
    ld b, c                                       ; $4b4b: $41
    inc c                                         ; $4b4c: $0c
    ld h, b                                       ; $4b4d: $60
    inc c                                         ; $4b4e: $0c
    ld b, h                                       ; $4b4f: $44

jr_01b_4b50:
    inc c                                         ; $4b50: $0c
    ld h, b                                       ; $4b51: $60
    inc c                                         ; $4b52: $0c
    ccf                                           ; $4b53: $3f
    jr jr_01b_4bb6                                ; $4b54: $18 $60

jr_01b_4b56:
    jr jr_01b_4b95                                ; $4b56: $18 $3d

    ld b, $60                                     ; $4b58: $06 $60
    ld b, $3c                                     ; $4b5a: $06 $3c
    ld b, $60                                     ; $4b5c: $06 $60

jr_01b_4b5e:
    ld b, $3b                                     ; $4b5e: $06 $3b
    ld b, $60                                     ; $4b60: $06 $60

jr_01b_4b62:
    ld b, $3a                                     ; $4b62: $06 $3a
    ld b, $60                                     ; $4b64: $06 $60
    ld b, $39                                     ; $4b66: $06 $39
    jr jr_01b_4bca                                ; $4b68: $18 $60

    jr jr_01b_4ba1                                ; $4b6a: $18 $35

    inc c                                         ; $4b6c: $0c

jr_01b_4b6d:
    ld h, b                                       ; $4b6d: $60

jr_01b_4b6e:
    inc c                                         ; $4b6e: $0c
    scf                                           ; $4b6f: $37
    inc c                                         ; $4b70: $0c
    ld h, b                                       ; $4b71: $60
    inc c                                         ; $4b72: $0c
    ld a, [hl-]                                   ; $4b73: $3a
    jr jr_01b_4bd6                                ; $4b74: $18 $60

    jr @+$3b                                      ; $4b76: $18 $39

    ld e, $70                                     ; $4b78: $1e $70

jr_01b_4b7a:
    inc h                                         ; $4b7a: $24
    add hl, sp                                    ; $4b7b: $39

jr_01b_4b7c:
    inc c                                         ; $4b7c: $0c
    ld h, b                                       ; $4b7d: $60
    inc c                                         ; $4b7e: $0c
    dec [hl]                                      ; $4b7f: $35
    inc c                                         ; $4b80: $0c
    ld h, b                                       ; $4b81: $60
    inc c                                         ; $4b82: $0c
    scf                                           ; $4b83: $37
    inc c                                         ; $4b84: $0c
    ld [hl], b                                    ; $4b85: $70
    inc c                                         ; $4b86: $0c
    ld a, [hl-]                                   ; $4b87: $3a
    inc c                                         ; $4b88: $0c
    ld h, b                                       ; $4b89: $60
    inc c                                         ; $4b8a: $0c
    dec a                                         ; $4b8b: $3d
    inc c                                         ; $4b8c: $0c
    ld h, b                                       ; $4b8d: $60
    inc c                                         ; $4b8e: $0c
    ld a, $18                                     ; $4b8f: $3e $18
    ld [hl], b                                    ; $4b91: $70
    add hl, de                                    ; $4b92: $19
    inc a                                         ; $4b93: $3c
    ld a, [bc]                                    ; $4b94: $0a

jr_01b_4b95:
    ld [hl], b                                    ; $4b95: $70
    rla                                           ; $4b96: $17
    ccf                                           ; $4b97: $3f
    ld a, [bc]                                    ; $4b98: $0a
    ld [hl], b                                    ; $4b99: $70
    jr jr_01b_4bda                                ; $4b9a: $18 $3e

    ld a, [bc]                                    ; $4b9c: $0a
    ld [hl], b                                    ; $4b9d: $70
    jr jr_01b_4bdc                                ; $4b9e: $18 $3c

    ld a, [bc]                                    ; $4ba0: $0a

jr_01b_4ba1:
    ld [hl], b                                    ; $4ba1: $70
    jr @+$39                                      ; $4ba2: $18 $37

    ld a, [bc]                                    ; $4ba4: $0a
    ld [hl], b                                    ; $4ba5: $70
    inc c                                         ; $4ba6: $0c
    dec sp                                        ; $4ba7: $3b
    ld a, [bc]                                    ; $4ba8: $0a
    ld [hl], b                                    ; $4ba9: $70
    inc c                                         ; $4baa: $0c
    inc a                                         ; $4bab: $3c
    ld a, [bc]                                    ; $4bac: $0a
    ld [hl], b                                    ; $4bad: $70
    jr @+$35                                      ; $4bae: $18 $33

    ld c, $70                                     ; $4bb0: $0e $70

jr_01b_4bb2:
    inc h                                         ; $4bb2: $24
    inc sp                                        ; $4bb3: $33
    ld a, [bc]                                    ; $4bb4: $0a
    ld [hl], b                                    ; $4bb5: $70

jr_01b_4bb6:
    inc c                                         ; $4bb6: $0c
    dec [hl]                                      ; $4bb7: $35
    ld a, [bc]                                    ; $4bb8: $0a
    ld [hl], b                                    ; $4bb9: $70
    inc c                                         ; $4bba: $0c
    scf                                           ; $4bbb: $37
    ld a, [bc]                                    ; $4bbc: $0a
    ld [hl], b                                    ; $4bbd: $70
    inc c                                         ; $4bbe: $0c
    jr nc, jr_01b_4bd1                            ; $4bbf: $30 $10

    ld [hl], b                                    ; $4bc1: $70
    jr jr_01b_4bf6                                ; $4bc2: $18 $32

    ld a, [bc]                                    ; $4bc4: $0a
    ld [hl], b                                    ; $4bc5: $70
    jr nc, jr_01b_4bf4                            ; $4bc6: $30 $2c

    dec c                                         ; $4bc8: $0d
    ld [hl], b                                    ; $4bc9: $70

jr_01b_4bca:
    jr jr_01b_4bf7                                ; $4bca: $18 $2b

    inc c                                         ; $4bcc: $0c
    ld [hl], b                                    ; $4bcd: $70
    jr jr_01b_4c02                                ; $4bce: $18 $32

    dec c                                         ; $4bd0: $0d

jr_01b_4bd1:
    ld [hl], b                                    ; $4bd1: $70
    jr @+$35                                      ; $4bd2: $18 $33

    ld a, [bc]                                    ; $4bd4: $0a
    ld [hl], b                                    ; $4bd5: $70

jr_01b_4bd6:
    jr jr_01b_4c19                                ; $4bd6: $18 $41

    ld a, [bc]                                    ; $4bd8: $0a
    ld [hl], b                                    ; $4bd9: $70

jr_01b_4bda:
    jr @+$46                                      ; $4bda: $18 $44

jr_01b_4bdc:
    ld a, [bc]                                    ; $4bdc: $0a
    ld h, b                                       ; $4bdd: $60
    jr jr_01b_4c23                                ; $4bde: $18 $43

    ld a, [bc]                                    ; $4be0: $0a
    ld h, b                                       ; $4be1: $60
    jr jr_01b_4c25                                ; $4be2: $18 $41

    ld a, [bc]                                    ; $4be4: $0a
    ld [hl], b                                    ; $4be5: $70
    jr jr_01b_4c24                                ; $4be6: $18 $3c

    ld a, [bc]                                    ; $4be8: $0a
    ld h, b                                       ; $4be9: $60
    inc c                                         ; $4bea: $0c
    ld b, b                                       ; $4beb: $40
    ld a, [bc]                                    ; $4bec: $0a
    ld h, b                                       ; $4bed: $60
    inc c                                         ; $4bee: $0c
    ld b, c                                       ; $4bef: $41
    ld a, [bc]                                    ; $4bf0: $0a
    ld [hl], b                                    ; $4bf1: $70
    jr jr_01b_4c2c                                ; $4bf2: $18 $38

jr_01b_4bf4:
    rrca                                          ; $4bf4: $0f
    ld [hl], b                                    ; $4bf5: $70

jr_01b_4bf6:
    inc h                                         ; $4bf6: $24

jr_01b_4bf7:
    jr c, jr_01b_4c03                             ; $4bf7: $38 $0a

    ld h, b                                       ; $4bf9: $60
    inc c                                         ; $4bfa: $0c
    ld a, [hl-]                                   ; $4bfb: $3a
    ld a, [bc]                                    ; $4bfc: $0a
    ld h, b                                       ; $4bfd: $60
    inc c                                         ; $4bfe: $0c
    inc a                                         ; $4bff: $3c
    ld a, [bc]                                    ; $4c00: $0a
    ld h, b                                       ; $4c01: $60

jr_01b_4c02:
    inc c                                         ; $4c02: $0c

jr_01b_4c03:
    dec [hl]                                      ; $4c03: $35
    inc c                                         ; $4c04: $0c
    ld h, b                                       ; $4c05: $60
    jr jr_01b_4c3f                                ; $4c06: $18 $37

    ld a, [bc]                                    ; $4c08: $0a
    ld h, b                                       ; $4c09: $60
    jr nc, jr_01b_4c3d                            ; $4c0a: $30 $31

    ld a, [bc]                                    ; $4c0c: $0a
    ld h, b                                       ; $4c0d: $60
    inc c                                         ; $4c0e: $0c
    jr nc, @+$06                                  ; $4c0f: $30 $04

    ld h, b                                       ; $4c11: $60
    inc b                                         ; $4c12: $04
    ld sp, $6004                                  ; $4c13: $31 $04 $60
    inc b                                         ; $4c16: $04
    jr nc, @+$06                                  ; $4c17: $30 $04

jr_01b_4c19:
    ld h, b                                       ; $4c19: $60
    inc b                                         ; $4c1a: $04
    ld sp, $7004                                  ; $4c1b: $31 $04 $70
    inc b                                         ; $4c1e: $04
    jr nc, @+$0c                                  ; $4c1f: $30 $0a

    ld h, b                                       ; $4c21: $60
    inc d                                         ; $4c22: $14

jr_01b_4c23:
    scf                                           ; $4c23: $37

jr_01b_4c24:
    dec c                                         ; $4c24: $0d

jr_01b_4c25:
    ld h, b                                       ; $4c25: $60
    jr jr_01b_4c60                                ; $4c26: $18 $38

    ld a, [bc]                                    ; $4c28: $0a
    ld d, b                                       ; $4c29: $50
    jr jr_01b_4c74                                ; $4c2a: $18 $48

jr_01b_4c2c:
    jr nc, jr_01b_4c6e                            ; $4c2c: $30 $40

    jr nc, jr_01b_4c76                            ; $4c2e: $30 $46

    ld a, [de]                                    ; $4c30: $1a
    ld b, b                                       ; $4c31: $40
    jr jr_01b_4c78                                ; $4c32: $18 $44

    rla                                           ; $4c34: $17
    ld b, b                                       ; $4c35: $40
    jr jr_01b_4c7b                                ; $4c36: $18 $43

    rrca                                          ; $4c38: $0f
    ld b, b                                       ; $4c39: $40
    inc c                                         ; $4c3a: $0c
    ld b, h                                       ; $4c3b: $44
    inc c                                         ; $4c3c: $0c

jr_01b_4c3d:
    ld b, b                                       ; $4c3d: $40
    inc c                                         ; $4c3e: $0c

jr_01b_4c3f:
    ld b, [hl]                                    ; $4c3f: $46
    ld a, [de]                                    ; $4c40: $1a
    ld d, b                                       ; $4c41: $50
    jr jr_01b_4c85                                ; $4c42: $18 $41

    ld sp, $3050                                  ; $4c44: $31 $50 $30
    ld b, b                                       ; $4c47: $40
    jr nc, jr_01b_4c9a                            ; $4c48: $30 $50

    jr nc, jr_01b_4c8e                            ; $4c4a: $30 $42

    add hl, de                                    ; $4c4c: $19
    ld d, b                                       ; $4c4d: $50
    jr jr_01b_4c93                                ; $4c4e: $18 $43

    ld a, [de]                                    ; $4c50: $1a
    ld d, b                                       ; $4c51: $50
    jr jr_01b_4c92                                ; $4c52: $18 $3e

    inc h                                         ; $4c54: $24
    ld d, b                                       ; $4c55: $50
    inc h                                         ; $4c56: $24
    ld b, c                                       ; $4c57: $41
    inc c                                         ; $4c58: $0c
    ld d, b                                       ; $4c59: $50
    inc c                                         ; $4c5a: $0c
    ld b, e                                       ; $4c5b: $43
    jr jr_01b_4cae                                ; $4c5c: $18 $50

    jr jr_01b_4ca5                                ; $4c5e: $18 $45

jr_01b_4c60:
    jr jr_01b_4cb2                                ; $4c60: $18 $50

    jr jr_01b_4cac                                ; $4c62: $18 $48

    cpl                                           ; $4c64: $2f
    ld d, b                                       ; $4c65: $50
    jr nc, jr_01b_4cae                            ; $4c66: $30 $46

    add hl, de                                    ; $4c68: $19
    ld d, b                                       ; $4c69: $50
    jr jr_01b_4cb0                                ; $4c6a: $18 $44

    dec c                                         ; $4c6c: $0d
    ld d, b                                       ; $4c6d: $50

jr_01b_4c6e:
    inc c                                         ; $4c6e: $0c
    ld b, e                                       ; $4c6f: $43
    ld c, $50                                     ; $4c70: $0e $50
    inc c                                         ; $4c72: $0c
    ld b, h                                       ; $4c73: $44

jr_01b_4c74:
    ld c, $50                                     ; $4c74: $0e $50

jr_01b_4c76:
    inc c                                         ; $4c76: $0c
    ld b, [hl]                                    ; $4c77: $46

jr_01b_4c78:
    dec bc                                        ; $4c78: $0b
    ld d, b                                       ; $4c79: $50
    inc c                                         ; $4c7a: $0c

jr_01b_4c7b:
    ld c, b                                       ; $4c7b: $48
    dec h                                         ; $4c7c: $25
    ld d, b                                       ; $4c7d: $50
    inc h                                         ; $4c7e: $24
    ld c, c                                       ; $4c7f: $49
    jr jr_01b_4cd2                                ; $4c80: $18 $50

    jr jr_01b_4ccc                                ; $4c82: $18 $48

    inc c                                         ; $4c84: $0c

jr_01b_4c85:
    ld d, b                                       ; $4c85: $50
    inc c                                         ; $4c86: $0c
    ld b, a                                       ; $4c87: $47
    ld a, [hl+]                                   ; $4c88: $2a
    ld d, b                                       ; $4c89: $50
    jr nc, @+$45                                  ; $4c8a: $30 $43

    add hl, de                                    ; $4c8c: $19
    ld d, b                                       ; $4c8d: $50

jr_01b_4c8e:
    jr jr_01b_4cd2                                ; $4c8e: $18 $42

    dec bc                                        ; $4c90: $0b
    ld d, b                                       ; $4c91: $50

jr_01b_4c92:
    inc c                                         ; $4c92: $0c

jr_01b_4c93:
    ld b, e                                       ; $4c93: $43
    rrca                                          ; $4c94: $0f
    ld d, b                                       ; $4c95: $50
    inc c                                         ; $4c96: $0c
    ld b, b                                       ; $4c97: $40
    inc c                                         ; $4c98: $0c
    ld d, b                                       ; $4c99: $50

jr_01b_4c9a:
    inc c                                         ; $4c9a: $0c
    ld b, e                                       ; $4c9b: $43
    inc c                                         ; $4c9c: $0c
    ld d, b                                       ; $4c9d: $50
    inc c                                         ; $4c9e: $0c
    ld b, a                                       ; $4c9f: $47
    ld b, h                                       ; $4ca0: $44
    ld d, b                                       ; $4ca1: $50
    ld c, b                                       ; $4ca2: $48
    ld a, $1b                                     ; $4ca3: $3e $1b

jr_01b_4ca5:
    ld d, b                                       ; $4ca5: $50
    jr jr_01b_4ce8                                ; $4ca6: $18 $40

    inc c                                         ; $4ca8: $0c
    ld d, b                                       ; $4ca9: $50
    inc c                                         ; $4caa: $0c
    ld b, c                                       ; $4cab: $41

jr_01b_4cac:
    inc c                                         ; $4cac: $0c
    ld d, b                                       ; $4cad: $50

jr_01b_4cae:
    inc c                                         ; $4cae: $0c
    ld b, l                                       ; $4caf: $45

jr_01b_4cb0:
    ld c, d                                       ; $4cb0: $4a
    ld d, b                                       ; $4cb1: $50

jr_01b_4cb2:
    ld c, b                                       ; $4cb2: $48
    ld b, [hl]                                    ; $4cb3: $46
    jr jr_01b_4cf6                                ; $4cb4: $18 $40

    jr jr_01b_4d00                                ; $4cb6: $18 $48

    dec d                                         ; $4cb8: $15
    ld b, b                                       ; $4cb9: $40
    jr jr_01b_4d06                                ; $4cba: $18 $4a

    jr jr_01b_4d0e                                ; $4cbc: $18 $50

    jr jr_01b_4d05                                ; $4cbe: $18 $45

    cpl                                           ; $4cc0: $2f
    ld d, b                                       ; $4cc1: $50
    jr nc, jr_01b_4d0a                            ; $4cc2: $30 $46

    ld [hl-], a                                   ; $4cc4: $32
    ld d, b                                       ; $4cc5: $50
    jr nc, jr_01b_4d0d                            ; $4cc6: $30 $45

    jr jr_01b_4d1a                                ; $4cc8: $18 $50

    jr jr_01b_4d0d                                ; $4cca: $18 $41

jr_01b_4ccc:
    ld d, $50                                     ; $4ccc: $16 $50
    jr jr_01b_4d11                                ; $4cce: $18 $41

    dec bc                                        ; $4cd0: $0b
    ld d, b                                       ; $4cd1: $50

jr_01b_4cd2:
    inc c                                         ; $4cd2: $0c
    ld b, b                                       ; $4cd3: $40
    inc bc                                        ; $4cd4: $03
    ld d, b                                       ; $4cd5: $50
    inc b                                         ; $4cd6: $04
    ld b, c                                       ; $4cd7: $41
    inc bc                                        ; $4cd8: $03
    ld d, b                                       ; $4cd9: $50
    inc bc                                        ; $4cda: $03
    ld b, b                                       ; $4cdb: $40
    inc bc                                        ; $4cdc: $03
    ld d, b                                       ; $4cdd: $50
    inc bc                                        ; $4cde: $03
    ld b, c                                       ; $4cdf: $41
    inc bc                                        ; $4ce0: $03
    ld d, b                                       ; $4ce1: $50
    inc b                                         ; $4ce2: $04
    ld b, b                                       ; $4ce3: $40
    rrca                                          ; $4ce4: $0f
    ldh a, [rP1]                                  ; $4ce5: $f0 $00
    rst $38                                       ; $4ce7: $ff

jr_01b_4ce8:
    ldh a, [rP1]                                  ; $4ce8: $f0 $00
    rst $38                                       ; $4cea: $ff
    ld a, d                                       ; $4ceb: $7a
    ld a, d                                       ; $4cec: $7a
    ld a, d                                       ; $4ced: $7a
    ld a, d                                       ; $4cee: $7a
    ld a, d                                       ; $4cef: $7a
    ld a, c                                       ; $4cf0: $79
    add c                                         ; $4cf1: $81
    ld [hl], c                                    ; $4cf2: $71
    ld [hl], e                                    ; $4cf3: $73
    add [hl]                                      ; $4cf4: $86
    add l                                         ; $4cf5: $85

jr_01b_4cf6:
    add h                                         ; $4cf6: $84
    add e                                         ; $4cf7: $83
    ld a, h                                       ; $4cf8: $7c
    ld a, a                                       ; $4cf9: $7f
    ld a, d                                       ; $4cfa: $7a
    ld [hl], d                                    ; $4cfb: $72
    ld l, [hl]                                    ; $4cfc: $6e
    ld l, c                                       ; $4cfd: $69
    ld a, b                                       ; $4cfe: $78
    ld [hl], a                                    ; $4cff: $77

jr_01b_4d00:
    ld a, [hl]                                    ; $4d00: $7e
    ld [hl], h                                    ; $4d01: $74
    add c                                         ; $4d02: $81
    add d                                         ; $4d03: $82
    add b                                         ; $4d04: $80

jr_01b_4d05:
    ld a, e                                       ; $4d05: $7b

jr_01b_4d06:
    ld l, b                                       ; $4d06: $68
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00

jr_01b_4d0a:
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    ld [hl], c                                    ; $4d0c: $71

jr_01b_4d0d:
    nop                                           ; $4d0d: $00

jr_01b_4d0e:
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    nop                                           ; $4d10: $00

jr_01b_4d11:
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    nop                                           ; $4d17: $00
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00

jr_01b_4d1a:
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    nop                                           ; $4d3c: $00
    nop                                           ; $4d3d: $00
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    nop                                           ; $4d58: $00
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    ld b, $00                                     ; $4d70: $06 $00
    inc l                                         ; $4d72: $2c
    nop                                           ; $4d73: $00
    ld l, b                                       ; $4d74: $68
    nop                                           ; $4d75: $00
    ld c, $00                                     ; $4d76: $0e $00
    jr jr_01b_4d7a                                ; $4d78: $18 $00

jr_01b_4d7a:
    ld [hl+], a                                   ; $4d7a: $22
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    rst $38                                       ; $4d82: $ff
    nop                                           ; $4d83: $00
    nop                                           ; $4d84: $00
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    ld bc, $0000                                  ; $4d89: $01 $00 $00
    rst $38                                       ; $4d8c: $ff
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    ld [bc], a                                    ; $4d93: $02
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    rst $38                                       ; $4d96: $ff
    nop                                           ; $4d97: $00
    nop                                           ; $4d98: $00
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    nop                                           ; $4d9b: $00
    inc [hl]                                      ; $4d9c: $34
    dec b                                         ; $4d9d: $05
    inc b                                         ; $4d9e: $04
    ld [$0a60], sp                                ; $4d9f: $08 $60 $0a
    ld d, b                                       ; $4da2: $50
    ld [hl], b                                    ; $4da3: $70
    nop                                           ; $4da4: $00
    cp h                                          ; $4da5: $bc
    rla                                           ; $4da6: $17
    inc c                                         ; $4da7: $0c
    ld [hl], b                                    ; $4da8: $70
    ld [de], a                                    ; $4da9: $12
    inc a                                         ; $4daa: $3c
    ld b, $60                                     ; $4dab: $06 $60
    ld b, $41                                     ; $4dad: $06 $41
    ld [de], a                                    ; $4daf: $12
    ld [hl], b                                    ; $4db0: $70
    jr jr_01b_4def                                ; $4db1: $18 $3c

    ld b, $60                                     ; $4db3: $06 $60
    inc c                                         ; $4db5: $0c
    ld b, c                                       ; $4db6: $41
    inc b                                         ; $4db7: $04
    ld h, b                                       ; $4db8: $60
    ld b, $43                                     ; $4db9: $06 $43
    inc b                                         ; $4dbb: $04
    ld [hl], b                                    ; $4dbc: $70
    ld b, $45                                     ; $4dbd: $06 $45
    inc c                                         ; $4dbf: $0c
    ld [hl], b                                    ; $4dc0: $70
    jr jr_01b_4dff                                ; $4dc1: $18 $3c

    dec b                                         ; $4dc3: $05
    ld h, b                                       ; $4dc4: $60
    inc c                                         ; $4dc5: $0c
    ld b, c                                       ; $4dc6: $41
    inc bc                                        ; $4dc7: $03
    ld h, b                                       ; $4dc8: $60
    ld b, $43                                     ; $4dc9: $06 $43
    inc b                                         ; $4dcb: $04
    ld [hl], b                                    ; $4dcc: $70
    ld b, $45                                     ; $4dcd: $06 $45
    inc b                                         ; $4dcf: $04
    ld [hl], b                                    ; $4dd0: $70
    inc c                                         ; $4dd1: $0c
    ld b, [hl]                                    ; $4dd2: $46
    inc b                                         ; $4dd3: $04
    ld h, b                                       ; $4dd4: $60
    inc c                                         ; $4dd5: $0c
    ld c, h                                       ; $4dd6: $4c
    inc c                                         ; $4dd7: $0c
    ld h, b                                       ; $4dd8: $60
    inc c                                         ; $4dd9: $0c
    ld c, l                                       ; $4dda: $4d
    inc b                                         ; $4ddb: $04
    ld [hl], b                                    ; $4ddc: $70
    inc c                                         ; $4ddd: $0c
    ld c, b                                       ; $4dde: $48
    ld [de], a                                    ; $4ddf: $12
    ld [hl], b                                    ; $4de0: $70
    jr jr_01b_4e2d                                ; $4de1: $18 $4a

    inc c                                         ; $4de3: $0c
    ld [hl], b                                    ; $4de4: $70
    inc c                                         ; $4de5: $0c
    ld c, b                                       ; $4de6: $48
    inc b                                         ; $4de7: $04
    ld h, b                                       ; $4de8: $60
    ld b, $46                                     ; $4de9: $06 $46
    inc bc                                        ; $4deb: $03
    ld [hl], b                                    ; $4dec: $70
    ld b, $45                                     ; $4ded: $06 $45

jr_01b_4def:
    ld a, [bc]                                    ; $4def: $0a
    ld [hl], b                                    ; $4df0: $70
    inc c                                         ; $4df1: $0c
    ld b, [hl]                                    ; $4df2: $46
    inc bc                                        ; $4df3: $03
    ld [hl], b                                    ; $4df4: $70
    inc c                                         ; $4df5: $0c
    ld c, b                                       ; $4df6: $48
    rrca                                          ; $4df7: $0f
    ld [hl], b                                    ; $4df8: $70
    ld [de], a                                    ; $4df9: $12
    ld b, [hl]                                    ; $4dfa: $46
    ld b, $70                                     ; $4dfb: $06 $70
    ld b, $45                                     ; $4dfd: $06 $45

jr_01b_4dff:
    ld de, $1870                                  ; $4dff: $11 $70 $18
    ld b, e                                       ; $4e02: $43
    add hl, bc                                    ; $4e03: $09
    ld h, b                                       ; $4e04: $60
    inc c                                         ; $4e05: $0c
    ld b, l                                       ; $4e06: $45
    dec b                                         ; $4e07: $05
    ld [hl], b                                    ; $4e08: $70
    ld b, $46                                     ; $4e09: $06 $46
    ld b, $60                                     ; $4e0b: $06 $60
    ld b, $45                                     ; $4e0d: $06 $45
    ld b, $60                                     ; $4e0f: $06 $60
    inc c                                         ; $4e11: $0c
    ld b, b                                       ; $4e12: $40
    dec b                                         ; $4e13: $05
    ld [hl], b                                    ; $4e14: $70
    inc c                                         ; $4e15: $0c
    ld b, c                                       ; $4e16: $41
    ld a, [bc]                                    ; $4e17: $0a
    ld h, b                                       ; $4e18: $60
    inc c                                         ; $4e19: $0c
    ld b, e                                       ; $4e1a: $43
    dec b                                         ; $4e1b: $05
    ld [hl], b                                    ; $4e1c: $70
    inc c                                         ; $4e1d: $0c
    ld b, c                                       ; $4e1e: $41
    ld c, $70                                     ; $4e1f: $0e $70
    jr jr_01b_4e5f                                ; $4e21: $18 $3c

    inc c                                         ; $4e23: $0c
    ld [hl], b                                    ; $4e24: $70
    inc c                                         ; $4e25: $0c
    ld b, l                                       ; $4e26: $45
    rla                                           ; $4e27: $17
    ld [hl], b                                    ; $4e28: $70
    jr jr_01b_4e67                                ; $4e29: $18 $3c

    rlca                                          ; $4e2b: $07
    ld h, b                                       ; $4e2c: $60

jr_01b_4e2d:
    ld b, $3b                                     ; $4e2d: $06 $3b
    ld b, $60                                     ; $4e2f: $06 $60
    ld b, $3a                                     ; $4e31: $06 $3a
    inc c                                         ; $4e33: $0c
    ld [hl], b                                    ; $4e34: $70
    inc c                                         ; $4e35: $0c
    ld b, [hl]                                    ; $4e36: $46
    add hl, de                                    ; $4e37: $19
    ld h, b                                       ; $4e38: $60
    jr jr_01b_4e77                                ; $4e39: $18 $3c

    rlca                                          ; $4e3b: $07
    ld h, b                                       ; $4e3c: $60
    ld b, $3e                                     ; $4e3d: $06 $3e
    ld b, $70                                     ; $4e3f: $06 $70
    ld b, $40                                     ; $4e41: $06 $40
    inc c                                         ; $4e43: $0c
    ld h, b                                       ; $4e44: $60
    inc c                                         ; $4e45: $0c
    ld b, e                                       ; $4e46: $43
    dec b                                         ; $4e47: $05
    ld h, b                                       ; $4e48: $60
    ld b, $45                                     ; $4e49: $06 $45
    ld b, $70                                     ; $4e4b: $06 $70
    ld b, $46                                     ; $4e4d: $06 $46
    dec c                                         ; $4e4f: $0d
    ld [hl], b                                    ; $4e50: $70
    inc c                                         ; $4e51: $0c
    ld b, c                                       ; $4e52: $41
    inc c                                         ; $4e53: $0c
    ld h, b                                       ; $4e54: $60
    inc c                                         ; $4e55: $0c
    ld b, b                                       ; $4e56: $40
    inc c                                         ; $4e57: $0c
    ld [hl], b                                    ; $4e58: $70
    inc c                                         ; $4e59: $0c
    ld b, c                                       ; $4e5a: $41
    inc c                                         ; $4e5b: $0c
    ld h, b                                       ; $4e5c: $60
    inc c                                         ; $4e5d: $0c
    ld b, e                                       ; $4e5e: $43

jr_01b_4e5f:
    rrca                                          ; $4e5f: $0f
    ld h, b                                       ; $4e60: $60
    jr jr_01b_4ea1                                ; $4e61: $18 $3e

    inc c                                         ; $4e63: $0c
    ld [hl], b                                    ; $4e64: $70
    inc c                                         ; $4e65: $0c
    ld b, [hl]                                    ; $4e66: $46

jr_01b_4e67:
    jr jr_01b_4ec9                                ; $4e67: $18 $60

    jr jr_01b_4ea9                                ; $4e69: $18 $3e

    ld b, $60                                     ; $4e6b: $06 $60
    ld b, $40                                     ; $4e6d: $06 $40
    ld b, $70                                     ; $4e6f: $06 $70
    ld b, $41                                     ; $4e71: $06 $41
    inc c                                         ; $4e73: $0c
    ld [hl], b                                    ; $4e74: $70
    inc c                                         ; $4e75: $0c
    ld c, b                                       ; $4e76: $48

jr_01b_4e77:
    jr jr_01b_4ed9                                ; $4e77: $18 $60

    jr jr_01b_4ebb                                ; $4e79: $18 $40

    dec b                                         ; $4e7b: $05
    ld h, b                                       ; $4e7c: $60
    ld b, $41                                     ; $4e7d: $06 $41
    dec b                                         ; $4e7f: $05
    ld h, b                                       ; $4e80: $60
    ld b, $43                                     ; $4e81: $06 $43
    add hl, bc                                    ; $4e83: $09
    ld h, b                                       ; $4e84: $60
    inc c                                         ; $4e85: $0c
    ld b, l                                       ; $4e86: $45
    ld b, $70                                     ; $4e87: $06 $70
    ld b, $46                                     ; $4e89: $06 $46
    ld b, $60                                     ; $4e8b: $06 $60
    ld b, $45                                     ; $4e8d: $06 $45
    dec bc                                        ; $4e8f: $0b
    ld h, b                                       ; $4e90: $60
    inc c                                         ; $4e91: $0c
    ld b, e                                       ; $4e92: $43
    dec b                                         ; $4e93: $05
    ld h, b                                       ; $4e94: $60
    inc c                                         ; $4e95: $0c
    ld b, c                                       ; $4e96: $41
    inc d                                         ; $4e97: $14
    ld h, b                                       ; $4e98: $60
    inc h                                         ; $4e99: $24
    inc a                                         ; $4e9a: $3c
    ld b, $60                                     ; $4e9b: $06 $60
    ld b, $3e                                     ; $4e9d: $06 $3e
    ld b, $70                                     ; $4e9f: $06 $70

jr_01b_4ea1:
    ld b, $40                                     ; $4ea1: $06 $40
    dec bc                                        ; $4ea3: $0b
    ld [hl], b                                    ; $4ea4: $70
    inc c                                         ; $4ea5: $0c
    ld b, [hl]                                    ; $4ea6: $46
    dec bc                                        ; $4ea7: $0b
    ld [hl], b                                    ; $4ea8: $70

jr_01b_4ea9:
    inc c                                         ; $4ea9: $0c
    ld b, l                                       ; $4eaa: $45
    dec bc                                        ; $4eab: $0b
    ld [hl], b                                    ; $4eac: $70
    inc c                                         ; $4ead: $0c
    ld b, e                                       ; $4eae: $43
    inc c                                         ; $4eaf: $0c
    ld [hl], b                                    ; $4eb0: $70
    inc c                                         ; $4eb1: $0c
    ld a, $0c                                     ; $4eb2: $3e $0c
    ld h, b                                       ; $4eb4: $60
    inc c                                         ; $4eb5: $0c
    ld b, b                                       ; $4eb6: $40
    inc c                                         ; $4eb7: $0c
    ld [hl], b                                    ; $4eb8: $70
    inc c                                         ; $4eb9: $0c
    ld b, c                                       ; $4eba: $41

jr_01b_4ebb:
    inc c                                         ; $4ebb: $0c
    ld h, b                                       ; $4ebc: $60
    inc c                                         ; $4ebd: $0c
    ld b, l                                       ; $4ebe: $45
    dec b                                         ; $4ebf: $05
    ld h, b                                       ; $4ec0: $60
    ld b, $43                                     ; $4ec1: $06 $43
    dec b                                         ; $4ec3: $05
    ld h, b                                       ; $4ec4: $60
    ld b, $41                                     ; $4ec5: $06 $41
    dec bc                                        ; $4ec7: $0b
    ld h, b                                       ; $4ec8: $60

jr_01b_4ec9:
    inc c                                         ; $4ec9: $0c
    ld b, b                                       ; $4eca: $40
    dec bc                                        ; $4ecb: $0b
    ld h, b                                       ; $4ecc: $60
    inc c                                         ; $4ecd: $0c
    ld a, $0a                                     ; $4ece: $3e $0a
    ld [hl], b                                    ; $4ed0: $70
    inc c                                         ; $4ed1: $0c
    inc a                                         ; $4ed2: $3c
    inc bc                                        ; $4ed3: $03
    ld h, b                                       ; $4ed4: $60
    inc c                                         ; $4ed5: $0c
    ld a, [hl-]                                   ; $4ed6: $3a
    inc c                                         ; $4ed7: $0c
    ld h, b                                       ; $4ed8: $60

jr_01b_4ed9:
    inc c                                         ; $4ed9: $0c
    ld a, $0c                                     ; $4eda: $3e $0c
    ld h, b                                       ; $4edc: $60
    inc c                                         ; $4edd: $0c
    inc a                                         ; $4ede: $3c
    rrca                                          ; $4edf: $0f
    ld [hl], b                                    ; $4ee0: $70
    jr jr_01b_4f26                                ; $4ee1: $18 $43

    ld a, [bc]                                    ; $4ee3: $0a
    ld h, b                                       ; $4ee4: $60
    inc c                                         ; $4ee5: $0c
    inc a                                         ; $4ee6: $3c
    dec c                                         ; $4ee7: $0d
    ld h, b                                       ; $4ee8: $60
    inc c                                         ; $4ee9: $0c
    ld a, $0b                                     ; $4eea: $3e $0b
    ld [hl], b                                    ; $4eec: $70
    inc c                                         ; $4eed: $0c
    ld b, c                                       ; $4eee: $41
    dec bc                                        ; $4eef: $0b
    ld h, b                                       ; $4ef0: $60
    inc c                                         ; $4ef1: $0c
    ld b, b                                       ; $4ef2: $40
    inc c                                         ; $4ef3: $0c
    ld h, b                                       ; $4ef4: $60
    inc c                                         ; $4ef5: $0c
    ld a, [hl-]                                   ; $4ef6: $3a
    inc c                                         ; $4ef7: $0c
    ld h, b                                       ; $4ef8: $60
    inc c                                         ; $4ef9: $0c
    inc a                                         ; $4efa: $3c
    dec c                                         ; $4efb: $0d
    ld [hl], b                                    ; $4efc: $70
    inc c                                         ; $4efd: $0c
    ld b, b                                       ; $4efe: $40
    dec bc                                        ; $4eff: $0b
    ld [hl], b                                    ; $4f00: $70
    inc c                                         ; $4f01: $0c
    ld a, $0c                                     ; $4f02: $3e $0c
    ld h, b                                       ; $4f04: $60
    inc c                                         ; $4f05: $0c
    scf                                           ; $4f06: $37
    ld b, $60                                     ; $4f07: $06 $60
    ld b, $39                                     ; $4f09: $06 $39
    ld [$0670], sp                                ; $4f0b: $08 $70 $06
    ld a, [hl-]                                   ; $4f0e: $3a
    dec bc                                        ; $4f0f: $0b
    ld [hl], b                                    ; $4f10: $70
    inc c                                         ; $4f11: $0c
    inc a                                         ; $4f12: $3c
    dec bc                                        ; $4f13: $0b
    ld [hl], b                                    ; $4f14: $70
    inc c                                         ; $4f15: $0c
    ld a, $0c                                     ; $4f16: $3e $0c
    ld [hl], b                                    ; $4f18: $70
    inc c                                         ; $4f19: $0c
    ld b, b                                       ; $4f1a: $40
    dec bc                                        ; $4f1b: $0b
    ld [hl], b                                    ; $4f1c: $70
    inc c                                         ; $4f1d: $0c
    ld b, c                                       ; $4f1e: $41
    ld de, $1860                                  ; $4f1f: $11 $60 $18
    ld b, b                                       ; $4f22: $40
    inc c                                         ; $4f23: $0c
    ld h, b                                       ; $4f24: $60
    inc c                                         ; $4f25: $0c

jr_01b_4f26:
    ld b, c                                       ; $4f26: $41
    inc c                                         ; $4f27: $0c
    ld [hl], b                                    ; $4f28: $70
    inc c                                         ; $4f29: $0c
    ld c, d                                       ; $4f2a: $4a
    dec bc                                        ; $4f2b: $0b
    ld h, b                                       ; $4f2c: $60
    inc c                                         ; $4f2d: $0c
    ld c, b                                       ; $4f2e: $48
    ld c, $70                                     ; $4f2f: $0e $70
    inc c                                         ; $4f31: $0c
    ld b, d                                       ; $4f32: $42
    inc c                                         ; $4f33: $0c
    ld h, b                                       ; $4f34: $60
    inc c                                         ; $4f35: $0c
    ld b, e                                       ; $4f36: $43
    inc c                                         ; $4f37: $0c
    ld [hl], b                                    ; $4f38: $70
    inc c                                         ; $4f39: $0c
    ld c, h                                       ; $4f3a: $4c
    dec bc                                        ; $4f3b: $0b
    ld h, b                                       ; $4f3c: $60
    inc c                                         ; $4f3d: $0c
    ld c, d                                       ; $4f3e: $4a
    inc c                                         ; $4f3f: $0c
    ld [hl], b                                    ; $4f40: $70
    inc c                                         ; $4f41: $0c
    ld b, e                                       ; $4f42: $43
    inc c                                         ; $4f43: $0c
    ld [hl], b                                    ; $4f44: $70
    inc c                                         ; $4f45: $0c
    ld b, l                                       ; $4f46: $45
    inc c                                         ; $4f47: $0c
    ld [hl], b                                    ; $4f48: $70
    inc c                                         ; $4f49: $0c
    ld c, l                                       ; $4f4a: $4d
    dec c                                         ; $4f4b: $0d
    ld [hl], b                                    ; $4f4c: $70
    inc c                                         ; $4f4d: $0c
    ld c, h                                       ; $4f4e: $4c
    inc c                                         ; $4f4f: $0c
    ld h, b                                       ; $4f50: $60
    inc c                                         ; $4f51: $0c
    ld b, [hl]                                    ; $4f52: $46
    inc c                                         ; $4f53: $0c
    ld [hl], b                                    ; $4f54: $70
    inc c                                         ; $4f55: $0c
    ld c, b                                       ; $4f56: $48
    inc c                                         ; $4f57: $0c
    ld [hl], b                                    ; $4f58: $70
    inc c                                         ; $4f59: $0c
    ld c, a                                       ; $4f5a: $4f
    dec c                                         ; $4f5b: $0d
    ld [hl], b                                    ; $4f5c: $70
    inc c                                         ; $4f5d: $0c
    ld c, l                                       ; $4f5e: $4d
    inc c                                         ; $4f5f: $0c
    ld [hl], b                                    ; $4f60: $70
    inc c                                         ; $4f61: $0c
    ld d, d                                       ; $4f62: $52
    ld a, [bc]                                    ; $4f63: $0a
    ld [hl], b                                    ; $4f64: $70
    ld [de], a                                    ; $4f65: $12
    ld d, d                                       ; $4f66: $52
    inc bc                                        ; $4f67: $03
    ld h, b                                       ; $4f68: $60
    ld b, $51                                     ; $4f69: $06 $51
    ld b, $70                                     ; $4f6b: $06 $70
    inc c                                         ; $4f6d: $0c
    ld d, c                                       ; $4f6e: $51
    ld a, [bc]                                    ; $4f6f: $0a
    ld h, b                                       ; $4f70: $60
    inc c                                         ; $4f71: $0c
    ld c, a                                       ; $4f72: $4f
    ld c, $70                                     ; $4f73: $0e $70
    ld [de], a                                    ; $4f75: $12
    ld c, a                                       ; $4f76: $4f
    inc b                                         ; $4f77: $04
    ld h, b                                       ; $4f78: $60
    ld b, $4c                                     ; $4f79: $06 $4c
    inc c                                         ; $4f7b: $0c
    ld [hl], b                                    ; $4f7c: $70
    inc c                                         ; $4f7d: $0c
    ld c, l                                       ; $4f7e: $4d
    ld a, [bc]                                    ; $4f7f: $0a
    ld h, b                                       ; $4f80: $60
    inc c                                         ; $4f81: $0c
    ld d, c                                       ; $4f82: $51
    ld a, [bc]                                    ; $4f83: $0a
    ld [hl], b                                    ; $4f84: $70
    ld [de], a                                    ; $4f85: $12
    ld d, c                                       ; $4f86: $51
    inc b                                         ; $4f87: $04
    ld h, b                                       ; $4f88: $60
    ld b, $4f                                     ; $4f89: $06 $4f
    dec b                                         ; $4f8b: $05
    ld [hl], b                                    ; $4f8c: $70
    inc c                                         ; $4f8d: $0c
    ld c, a                                       ; $4f8e: $4f
    ld b, $60                                     ; $4f8f: $06 $60
    inc c                                         ; $4f91: $0c
    ld c, l                                       ; $4f92: $4d
    inc b                                         ; $4f93: $04
    ld [hl], b                                    ; $4f94: $70
    ld b, $4c                                     ; $4f95: $06 $4c
    ld b, $60                                     ; $4f97: $06 $60
    ld b, $4a                                     ; $4f99: $06 $4a
    ld b, $70                                     ; $4f9b: $06 $70
    inc c                                         ; $4f9d: $0c
    ld c, b                                       ; $4f9e: $48
    dec c                                         ; $4f9f: $0d
    ld h, b                                       ; $4fa0: $60
    ld [de], a                                    ; $4fa1: $12
    ld c, b                                       ; $4fa2: $48
    inc b                                         ; $4fa3: $04
    ld h, b                                       ; $4fa4: $60
    ld b, $4a                                     ; $4fa5: $06 $4a
    dec b                                         ; $4fa7: $05
    ld h, b                                       ; $4fa8: $60
    ld b, $4c                                     ; $4fa9: $06 $4c
    ld b, $60                                     ; $4fab: $06 $60
    ld b, $4d                                     ; $4fad: $06 $4d
    inc b                                         ; $4faf: $04
    ld h, b                                       ; $4fb0: $60
    ld b, $4f                                     ; $4fb1: $06 $4f
    ld b, $70                                     ; $4fb3: $06 $70
    ld b, $56                                     ; $4fb5: $06 $56
    ld [$0c60], sp                                ; $4fb7: $08 $60 $0c
    ld c, h                                       ; $4fba: $4c
    add hl, bc                                    ; $4fbb: $09
    ld [hl], b                                    ; $4fbc: $70
    inc c                                         ; $4fbd: $0c
    ld c, l                                       ; $4fbe: $4d
    jr jr_01b_5031                                ; $4fbf: $18 $70

    jr nc, jr_01b_5010                            ; $4fc1: $30 $4d

    inc c                                         ; $4fc3: $0c
    ld h, b                                       ; $4fc4: $60
    inc c                                         ; $4fc5: $0c
    ld c, b                                       ; $4fc6: $48
    dec c                                         ; $4fc7: $0d
    ld [hl], b                                    ; $4fc8: $70
    inc c                                         ; $4fc9: $0c
    ld c, d                                       ; $4fca: $4a
    dec bc                                        ; $4fcb: $0b
    ld h, b                                       ; $4fcc: $60
    inc c                                         ; $4fcd: $0c
    ld c, h                                       ; $4fce: $4c
    inc c                                         ; $4fcf: $0c
    ld h, b                                       ; $4fd0: $60
    inc c                                         ; $4fd1: $0c
    ld c, d                                       ; $4fd2: $4a
    ld [de], a                                    ; $4fd3: $12
    ld h, b                                       ; $4fd4: $60
    ld [de], a                                    ; $4fd5: $12
    ld c, h                                       ; $4fd6: $4c
    inc bc                                        ; $4fd7: $03
    ld h, b                                       ; $4fd8: $60
    inc bc                                        ; $4fd9: $03
    ld c, d                                       ; $4fda: $4a
    inc bc                                        ; $4fdb: $03
    ld [hl], b                                    ; $4fdc: $70
    inc bc                                        ; $4fdd: $03
    ld c, b                                       ; $4fde: $48
    db $10                                        ; $4fdf: $10
    ld [hl], b                                    ; $4fe0: $70
    jr jr_01b_5030                                ; $4fe1: $18 $4d

    inc c                                         ; $4fe3: $0c
    ld h, b                                       ; $4fe4: $60
    inc c                                         ; $4fe5: $0c
    ld c, b                                       ; $4fe6: $48
    inc c                                         ; $4fe7: $0c
    ld h, b                                       ; $4fe8: $60
    inc c                                         ; $4fe9: $0c
    ld c, d                                       ; $4fea: $4a
    ld a, [bc]                                    ; $4feb: $0a
    ld [hl], b                                    ; $4fec: $70
    inc c                                         ; $4fed: $0c
    ld c, h                                       ; $4fee: $4c
    inc c                                         ; $4fef: $0c
    ld h, b                                       ; $4ff0: $60
    inc c                                         ; $4ff1: $0c
    ld b, [hl]                                    ; $4ff2: $46
    inc c                                         ; $4ff3: $0c
    ld h, b                                       ; $4ff4: $60
    inc c                                         ; $4ff5: $0c
    ld c, b                                       ; $4ff6: $48
    inc c                                         ; $4ff7: $0c
    ld [hl], b                                    ; $4ff8: $70
    inc c                                         ; $4ff9: $0c
    ld c, d                                       ; $4ffa: $4a
    ld a, [bc]                                    ; $4ffb: $0a
    ld [hl], b                                    ; $4ffc: $70
    inc c                                         ; $4ffd: $0c
    ld b, l                                       ; $4ffe: $45
    dec bc                                        ; $4fff: $0b
    ld [hl], b                                    ; $5000: $70
    inc c                                         ; $5001: $0c
    ld b, [hl]                                    ; $5002: $46
    ld a, [bc]                                    ; $5003: $0a
    ld [hl], b                                    ; $5004: $70
    inc c                                         ; $5005: $0c
    ld c, b                                       ; $5006: $48
    ld b, $70                                     ; $5007: $06 $70
    ld b, $46                                     ; $5009: $06 $46
    inc bc                                        ; $500b: $03
    ld [hl], b                                    ; $500c: $70
    ld b, $45                                     ; $500d: $06 $45
    dec c                                         ; $500f: $0d

jr_01b_5010:
    ld [hl], b                                    ; $5010: $70
    inc c                                         ; $5011: $0c
    ld b, e                                       ; $5012: $43
    ld b, $60                                     ; $5013: $06 $60
    ld b, $45                                     ; $5015: $06 $45
    inc bc                                        ; $5017: $03
    ld h, b                                       ; $5018: $60
    inc bc                                        ; $5019: $03
    ld b, e                                       ; $501a: $43
    inc bc                                        ; $501b: $03
    ld [hl], b                                    ; $501c: $70
    inc bc                                        ; $501d: $03
    ld b, c                                       ; $501e: $41
    jr jr_01b_5091                                ; $501f: $18 $70

    jr nc, jr_01b_506b                            ; $5021: $30 $48

    dec bc                                        ; $5023: $0b
    ld h, b                                       ; $5024: $60
    inc c                                         ; $5025: $0c
    ld c, d                                       ; $5026: $4a
    dec b                                         ; $5027: $05
    ld h, b                                       ; $5028: $60
    ld b, $4c                                     ; $5029: $06 $4c
    ld b, $60                                     ; $502b: $06 $60
    ld b, $4d                                     ; $502d: $06 $4d
    dec bc                                        ; $502f: $0b

jr_01b_5030:
    ld h, b                                       ; $5030: $60

jr_01b_5031:
    inc c                                         ; $5031: $0c
    ld c, h                                       ; $5032: $4c
    ld b, $60                                     ; $5033: $06 $60
    ld b, $4a                                     ; $5035: $06 $4a
    dec b                                         ; $5037: $05
    ld h, b                                       ; $5038: $60
    ld b, $48                                     ; $5039: $06 $48
    inc c                                         ; $503b: $0c
    ld [hl], b                                    ; $503c: $70
    inc c                                         ; $503d: $0c
    ld c, a                                       ; $503e: $4f
    inc h                                         ; $503f: $24
    ld [hl], b                                    ; $5040: $70
    inc h                                         ; $5041: $24
    ld c, d                                       ; $5042: $4a
    inc c                                         ; $5043: $0c
    ld h, b                                       ; $5044: $60
    inc c                                         ; $5045: $0c
    ld c, h                                       ; $5046: $4c
    ld b, $60                                     ; $5047: $06 $60
    ld b, $4d                                     ; $5049: $06 $4d
    ld b, $70                                     ; $504b: $06 $70
    ld b, $4f                                     ; $504d: $06 $4f
    dec bc                                        ; $504f: $0b
    ld h, b                                       ; $5050: $60
    inc c                                         ; $5051: $0c
    ld c, l                                       ; $5052: $4d
    dec b                                         ; $5053: $05
    ld h, b                                       ; $5054: $60
    ld b, $4c                                     ; $5055: $06 $4c
    dec b                                         ; $5057: $05
    ld h, b                                       ; $5058: $60
    ld b, $4a                                     ; $5059: $06 $4a
    dec c                                         ; $505b: $0d
    ld [hl], b                                    ; $505c: $70
    inc c                                         ; $505d: $0c
    ld d, c                                       ; $505e: $51
    dec bc                                        ; $505f: $0b
    ld h, b                                       ; $5060: $60
    inc c                                         ; $5061: $0c
    ld d, d                                       ; $5062: $52
    add hl, de                                    ; $5063: $19
    ld [hl], b                                    ; $5064: $70
    jr jr_01b_50af                                ; $5065: $18 $48

    inc c                                         ; $5067: $0c
    ld [hl], b                                    ; $5068: $70
    inc c                                         ; $5069: $0c
    ld c, e                                       ; $506a: $4b

jr_01b_506b:
    dec c                                         ; $506b: $0d
    ld h, b                                       ; $506c: $60
    inc c                                         ; $506d: $0c
    ld b, [hl]                                    ; $506e: $46
    ld c, $70                                     ; $506f: $0e $70
    inc c                                         ; $5071: $0c
    ld c, d                                       ; $5072: $4a
    inc c                                         ; $5073: $0c
    ld [hl], b                                    ; $5074: $70
    inc c                                         ; $5075: $0c
    ld c, e                                       ; $5076: $4b
    add hl, hl                                    ; $5077: $29
    ld [hl], b                                    ; $5078: $70
    jr nc, jr_01b_50c6                            ; $5079: $30 $4b

    inc c                                         ; $507b: $0c
    ld [hl], b                                    ; $507c: $70
    inc c                                         ; $507d: $0c
    ld c, l                                       ; $507e: $4d
    dec bc                                        ; $507f: $0b
    ld [hl], b                                    ; $5080: $70
    inc c                                         ; $5081: $0c
    ld c, b                                       ; $5082: $48
    inc c                                         ; $5083: $0c
    ld [hl], b                                    ; $5084: $70
    inc c                                         ; $5085: $0c
    ld c, d                                       ; $5086: $4a
    ld b, $60                                     ; $5087: $06 $60
    ld b, $4b                                     ; $5089: $06 $4b
    inc bc                                        ; $508b: $03
    ld h, b                                       ; $508c: $60
    inc bc                                        ; $508d: $03
    ld c, d                                       ; $508e: $4a
    inc bc                                        ; $508f: $03
    ld [hl], b                                    ; $5090: $70

jr_01b_5091:
    inc bc                                        ; $5091: $03
    ld c, e                                       ; $5092: $4b
    ld a, [de]                                    ; $5093: $1a
    ld [hl], b                                    ; $5094: $70
    jr nc, jr_01b_50e2                            ; $5095: $30 $4b

    dec bc                                        ; $5097: $0b
    ld [hl], b                                    ; $5098: $70
    inc c                                         ; $5099: $0c
    ld c, a                                       ; $509a: $4f
    inc b                                         ; $509b: $04
    ld h, b                                       ; $509c: $60
    ld b, $4d                                     ; $509d: $06 $4d
    ld [$0670], sp                                ; $509f: $08 $70 $06
    ld c, e                                       ; $50a2: $4b
    inc c                                         ; $50a3: $0c
    ld h, b                                       ; $50a4: $60
    inc c                                         ; $50a5: $0c
    ld c, d                                       ; $50a6: $4a
    inc c                                         ; $50a7: $0c
    ld [hl], b                                    ; $50a8: $70
    inc c                                         ; $50a9: $0c
    ld d, b                                       ; $50aa: $50
    db $10                                        ; $50ab: $10
    ld [hl], b                                    ; $50ac: $70
    ld [de], a                                    ; $50ad: $12
    ld c, a                                       ; $50ae: $4f

jr_01b_50af:
    ld b, $60                                     ; $50af: $06 $60
    ld b, $4d                                     ; $50b1: $06 $4d
    inc c                                         ; $50b3: $0c
    ld h, b                                       ; $50b4: $60
    inc c                                         ; $50b5: $0c
    ld c, e                                       ; $50b6: $4b
    dec c                                         ; $50b7: $0d
    ld h, b                                       ; $50b8: $60
    inc c                                         ; $50b9: $0c
    ld c, l                                       ; $50ba: $4d
    inc c                                         ; $50bb: $0c
    ld [hl], b                                    ; $50bc: $70
    inc c                                         ; $50bd: $0c
    ld c, a                                       ; $50be: $4f
    dec bc                                        ; $50bf: $0b
    ld h, b                                       ; $50c0: $60
    inc c                                         ; $50c1: $0c
    ld c, d                                       ; $50c2: $4a
    inc c                                         ; $50c3: $0c
    ld h, b                                       ; $50c4: $60
    inc c                                         ; $50c5: $0c

jr_01b_50c6:
    ld c, l                                       ; $50c6: $4d
    inc bc                                        ; $50c7: $03
    ld h, b                                       ; $50c8: $60
    inc bc                                        ; $50c9: $03
    ld c, a                                       ; $50ca: $4f
    inc bc                                        ; $50cb: $03
    ld h, b                                       ; $50cc: $60
    inc bc                                        ; $50cd: $03
    ld c, l                                       ; $50ce: $4d
    inc bc                                        ; $50cf: $03
    ld h, b                                       ; $50d0: $60
    inc bc                                        ; $50d1: $03
    ld c, a                                       ; $50d2: $4f
    inc bc                                        ; $50d3: $03
    ld h, b                                       ; $50d4: $60
    inc bc                                        ; $50d5: $03
    ld c, e                                       ; $50d6: $4b
    ld e, $70                                     ; $50d7: $1e $70
    jr nc, jr_01b_5125                            ; $50d9: $30 $4a

    inc c                                         ; $50db: $0c
    ld [hl], b                                    ; $50dc: $70
    inc c                                         ; $50dd: $0c
    ld b, e                                       ; $50de: $43
    dec c                                         ; $50df: $0d
    ld h, b                                       ; $50e0: $60
    inc c                                         ; $50e1: $0c

jr_01b_50e2:
    ld b, l                                       ; $50e2: $45
    dec c                                         ; $50e3: $0d
    ld [hl], b                                    ; $50e4: $70
    inc c                                         ; $50e5: $0c
    ld b, [hl]                                    ; $50e6: $46
    dec c                                         ; $50e7: $0d
    ld [hl], b                                    ; $50e8: $70
    inc c                                         ; $50e9: $0c
    ld b, l                                       ; $50ea: $45
    jr jr_01b_515d                                ; $50eb: $18 $70

    jr jr_01b_5137                                ; $50ed: $18 $48

    dec c                                         ; $50ef: $0d
    ld [hl], b                                    ; $50f0: $70
    inc c                                         ; $50f1: $0c
    ld b, [hl]                                    ; $50f2: $46
    ld a, [bc]                                    ; $50f3: $0a
    ld [hl], b                                    ; $50f4: $70
    inc c                                         ; $50f5: $0c
    ld b, l                                       ; $50f6: $45
    inc c                                         ; $50f7: $0c
    ld [hl], b                                    ; $50f8: $70
    inc c                                         ; $50f9: $0c
    ld b, b                                       ; $50fa: $40
    inc c                                         ; $50fb: $0c
    ld [hl], b                                    ; $50fc: $70
    inc c                                         ; $50fd: $0c
    ld b, c                                       ; $50fe: $41
    dec bc                                        ; $50ff: $0b
    ld [hl], b                                    ; $5100: $70
    inc c                                         ; $5101: $0c
    ld b, e                                       ; $5102: $43
    ld c, $70                                     ; $5103: $0e $70
    inc c                                         ; $5105: $0c
    ld a, $12                                     ; $5106: $3e $12
    ld h, b                                       ; $5108: $60
    ld [de], a                                    ; $5109: $12
    ld b, b                                       ; $510a: $40
    inc bc                                        ; $510b: $03
    ld h, b                                       ; $510c: $60
    inc bc                                        ; $510d: $03
    ld a, $03                                     ; $510e: $3e $03
    ld [hl], b                                    ; $5110: $70
    inc bc                                        ; $5111: $03
    inc a                                         ; $5112: $3c
    ld de, $1870                                  ; $5113: $11 $70 $18
    ld c, d                                       ; $5116: $4a
    ld [de], a                                    ; $5117: $12
    ld h, b                                       ; $5118: $60
    ld [de], a                                    ; $5119: $12
    ld c, b                                       ; $511a: $48
    dec b                                         ; $511b: $05
    ld [hl], b                                    ; $511c: $70
    ld b, $4c                                     ; $511d: $06 $4c
    dec c                                         ; $511f: $0d
    ld [hl], b                                    ; $5120: $70
    inc c                                         ; $5121: $0c
    ld b, [hl]                                    ; $5122: $46
    ld c, $70                                     ; $5123: $0e $70

jr_01b_5125:
    inc c                                         ; $5125: $0c
    ld b, l                                       ; $5126: $45
    rrca                                          ; $5127: $0f
    ld [hl], b                                    ; $5128: $70
    inc c                                         ; $5129: $0c
    ld c, h                                       ; $512a: $4c
    dec c                                         ; $512b: $0d
    ld [hl], b                                    ; $512c: $70
    inc c                                         ; $512d: $0c
    ld c, l                                       ; $512e: $4d
    inc c                                         ; $512f: $0c
    ld [hl], b                                    ; $5130: $70
    inc c                                         ; $5131: $0c
    ld c, a                                       ; $5132: $4f
    ld c, $60                                     ; $5133: $0e $60
    inc c                                         ; $5135: $0c
    ld b, e                                       ; $5136: $43

jr_01b_5137:
    dec bc                                        ; $5137: $0b
    ld h, b                                       ; $5138: $60
    inc c                                         ; $5139: $0c
    ld b, l                                       ; $513a: $45
    rlca                                          ; $513b: $07
    ld h, b                                       ; $513c: $60
    ld b, $46                                     ; $513d: $06 $46
    ld b, $70                                     ; $513f: $06 $70
    ld b, $48                                     ; $5141: $06 $48
    dec bc                                        ; $5143: $0b
    ld [hl], b                                    ; $5144: $70
    inc c                                         ; $5145: $0c
    ld c, d                                       ; $5146: $4a
    dec bc                                        ; $5147: $0b
    ld [hl], b                                    ; $5148: $70
    inc c                                         ; $5149: $0c
    ld c, b                                       ; $514a: $48
    ld hl, $3060                                  ; $514b: $21 $60 $30
    ld b, c                                       ; $514e: $41
    jr jr_01b_51c1                                ; $514f: $18 $70

    jr jr_01b_519b                                ; $5151: $18 $48

    ld d, $70                                     ; $5153: $16 $70
    jr jr_01b_51a1                                ; $5155: $18 $4a

    jr jr_01b_51b9                                ; $5157: $18 $60

    jr jr_01b_51a0                                ; $5159: $18 $45

    inc c                                         ; $515b: $0c
    ld h, b                                       ; $515c: $60

jr_01b_515d:
    inc c                                         ; $515d: $0c
    ld b, [hl]                                    ; $515e: $46
    dec bc                                        ; $515f: $0b
    ld h, b                                       ; $5160: $60
    inc c                                         ; $5161: $0c
    ld c, b                                       ; $5162: $48
    dec bc                                        ; $5163: $0b
    ld h, b                                       ; $5164: $60
    inc c                                         ; $5165: $0c
    ld b, e                                       ; $5166: $43
    dec c                                         ; $5167: $0d
    ld [hl], b                                    ; $5168: $70
    inc c                                         ; $5169: $0c
    ld b, l                                       ; $516a: $45
    inc c                                         ; $516b: $0c
    ld [hl], b                                    ; $516c: $70
    inc c                                         ; $516d: $0c
    ld b, [hl]                                    ; $516e: $46
    inc c                                         ; $516f: $0c
    ld [hl], b                                    ; $5170: $70
    inc c                                         ; $5171: $0c
    ld b, c                                       ; $5172: $41
    inc c                                         ; $5173: $0c
    ld h, b                                       ; $5174: $60
    inc c                                         ; $5175: $0c
    ld b, b                                       ; $5176: $40
    inc c                                         ; $5177: $0c
    ld [hl], b                                    ; $5178: $70
    inc c                                         ; $5179: $0c
    ld a, $0c                                     ; $517a: $3e $0c
    ld [hl], b                                    ; $517c: $70
    inc c                                         ; $517d: $0c
    inc a                                         ; $517e: $3c
    add hl, bc                                    ; $517f: $09
    ld h, b                                       ; $5180: $60
    add hl, bc                                    ; $5181: $09
    ld b, c                                       ; $5182: $41
    inc bc                                        ; $5183: $03
    ld [hl], b                                    ; $5184: $70
    inc bc                                        ; $5185: $03
    ld c, b                                       ; $5186: $48
    rla                                           ; $5187: $17
    ld [hl], b                                    ; $5188: $70
    jr jr_01b_51d5                                ; $5189: $18 $4a

    dec c                                         ; $518b: $0d
    ld h, b                                       ; $518c: $60
    ld [de], a                                    ; $518d: $12
    ld c, h                                       ; $518e: $4c
    inc b                                         ; $518f: $04
    ld [hl], b                                    ; $5190: $70
    ld b, $4d                                     ; $5191: $06 $4d
    jr jr_01b_5205                                ; $5193: $18 $70

    jr jr_01b_51e8                                ; $5195: $18 $51

    dec bc                                        ; $5197: $0b
    ld [hl], b                                    ; $5198: $70
    inc c                                         ; $5199: $0c
    ld c, a                                       ; $519a: $4f

jr_01b_519b:
    ld c, $70                                     ; $519b: $0e $70
    inc c                                         ; $519d: $0c
    ld c, l                                       ; $519e: $4d
    dec bc                                        ; $519f: $0b

jr_01b_51a0:
    ld h, b                                       ; $51a0: $60

jr_01b_51a1:
    inc c                                         ; $51a1: $0c
    ld c, h                                       ; $51a2: $4c
    dec b                                         ; $51a3: $05
    ld h, b                                       ; $51a4: $60
    ld b, $4a                                     ; $51a5: $06 $4a
    ld [$0670], sp                                ; $51a7: $08 $70 $06
    ld c, b                                       ; $51aa: $48
    dec bc                                        ; $51ab: $0b
    ld [hl], b                                    ; $51ac: $70
    inc c                                         ; $51ad: $0c
    ld c, d                                       ; $51ae: $4a
    ld a, [bc]                                    ; $51af: $0a
    ld h, b                                       ; $51b0: $60
    inc c                                         ; $51b1: $0c
    ld c, b                                       ; $51b2: $48
    jr jr_01b_5225                                ; $51b3: $18 $70

    jr nc, jr_01b_51ff                            ; $51b5: $30 $48

    rla                                           ; $51b7: $17
    ld [hl], b                                    ; $51b8: $70

jr_01b_51b9:
    jr jr_01b_5207                                ; $51b9: $18 $4c

    jr jr_01b_521d                                ; $51bb: $18 $60

    jr @+$45                                      ; $51bd: $18 $43

    ld d, $70                                     ; $51bf: $16 $70

jr_01b_51c1:
    jr jr_01b_5208                                ; $51c1: $18 $45

    dec c                                         ; $51c3: $0d
    ld [hl], b                                    ; $51c4: $70
    inc c                                         ; $51c5: $0c
    ld b, [hl]                                    ; $51c6: $46
    dec c                                         ; $51c7: $0d
    ld [hl], b                                    ; $51c8: $70
    inc c                                         ; $51c9: $0c
    ld c, b                                       ; $51ca: $48
    jr jr_01b_523d                                ; $51cb: $18 $70

    jr jr_01b_5210                                ; $51cd: $18 $41

    jr @+$62                                      ; $51cf: $18 $60

    jr jr_01b_5216                                ; $51d1: $18 $43

    ld c, $70                                     ; $51d3: $0e $70

jr_01b_51d5:
    inc c                                         ; $51d5: $0c
    ld b, l                                       ; $51d6: $45
    dec b                                         ; $51d7: $05
    ld [hl], b                                    ; $51d8: $70
    ld b, $46                                     ; $51d9: $06 $46
    ld b, $70                                     ; $51db: $06 $70
    ld b, $45                                     ; $51dd: $06 $45
    inc c                                         ; $51df: $0c
    ld h, b                                       ; $51e0: $60
    inc c                                         ; $51e1: $0c
    ld b, e                                       ; $51e2: $43
    inc c                                         ; $51e3: $0c
    ld [hl], b                                    ; $51e4: $70
    inc c                                         ; $51e5: $0c
    ld a, $12                                     ; $51e6: $3e $12

jr_01b_51e8:
    ld h, b                                       ; $51e8: $60
    ld [de], a                                    ; $51e9: $12
    ld b, b                                       ; $51ea: $40
    inc bc                                        ; $51eb: $03
    ld h, b                                       ; $51ec: $60
    inc bc                                        ; $51ed: $03
    ld a, $03                                     ; $51ee: $3e $03
    ld [hl], b                                    ; $51f0: $70
    inc bc                                        ; $51f1: $03
    inc a                                         ; $51f2: $3c
    jr jr_01b_5265                                ; $51f3: $18 $70

    jr jr_01b_523a                                ; $51f5: $18 $43

    add hl, de                                    ; $51f7: $19
    ld [hl], b                                    ; $51f8: $70
    jr jr_01b_523c                                ; $51f9: $18 $41

    rla                                           ; $51fb: $17
    ld [hl], b                                    ; $51fc: $70
    jr jr_01b_5245                                ; $51fd: $18 $46

jr_01b_51ff:
    rla                                           ; $51ff: $17
    ld [hl], b                                    ; $5200: $70
    jr jr_01b_5248                                ; $5201: $18 $45

    rla                                           ; $5203: $17
    ld [hl], b                                    ; $5204: $70

jr_01b_5205:
    jr jr_01b_5251                                ; $5205: $18 $4a

jr_01b_5207:
    rla                                           ; $5207: $17

jr_01b_5208:
    ld h, b                                       ; $5208: $60
    jr jr_01b_5253                                ; $5209: $18 $48

    jr jr_01b_527d                                ; $520b: $18 $70

    jr jr_01b_525e                                ; $520d: $18 $4f

    ld [de], a                                    ; $520f: $12

jr_01b_5210:
    ld d, b                                       ; $5210: $50
    ld [de], a                                    ; $5211: $12
    ld d, c                                       ; $5212: $51
    inc bc                                        ; $5213: $03
    ld d, b                                       ; $5214: $50
    inc bc                                        ; $5215: $03

jr_01b_5216:
    ld c, a                                       ; $5216: $4f
    inc bc                                        ; $5217: $03
    ld h, b                                       ; $5218: $60
    inc bc                                        ; $5219: $03
    ld c, l                                       ; $521a: $4d
    add hl, de                                    ; $521b: $19
    ld [hl], b                                    ; $521c: $70

jr_01b_521d:
    jr jr_01b_526b                                ; $521d: $18 $4c

    dec bc                                        ; $521f: $0b
    ld h, b                                       ; $5220: $60
    inc c                                         ; $5221: $0c
    ld c, d                                       ; $5222: $4a
    dec c                                         ; $5223: $0d
    ld h, b                                       ; $5224: $60

jr_01b_5225:
    inc c                                         ; $5225: $0c
    ld c, b                                       ; $5226: $48
    dec bc                                        ; $5227: $0b
    ld h, b                                       ; $5228: $60
    inc c                                         ; $5229: $0c
    ld c, d                                       ; $522a: $4a
    dec b                                         ; $522b: $05
    ld h, b                                       ; $522c: $60
    ld b, $4c                                     ; $522d: $06 $4c
    ld [$0670], sp                                ; $522f: $08 $70 $06
    ld b, [hl]                                    ; $5232: $46
    ld [$0970], sp                                ; $5233: $08 $70 $09
    ld c, b                                       ; $5236: $48
    inc bc                                        ; $5237: $03
    ld [hl], b                                    ; $5238: $70
    inc bc                                        ; $5239: $03

jr_01b_523a:
    ld b, [hl]                                    ; $523a: $46
    ld [bc], a                                    ; $523b: $02

jr_01b_523c:
    ld h, b                                       ; $523c: $60

jr_01b_523d:
    inc bc                                        ; $523d: $03
    ld c, b                                       ; $523e: $48
    inc bc                                        ; $523f: $03
    ld [hl], b                                    ; $5240: $70
    inc bc                                        ; $5241: $03
    ld b, [hl]                                    ; $5242: $46
    ld [bc], a                                    ; $5243: $02
    ld [hl], b                                    ; $5244: $70

jr_01b_5245:
    nop                                           ; $5245: $00
    ld b, [hl]                                    ; $5246: $46
    ld [bc], a                                    ; $5247: $02

jr_01b_5248:
    ld h, b                                       ; $5248: $60
    inc bc                                        ; $5249: $03
    ld c, b                                       ; $524a: $48
    ld [bc], a                                    ; $524b: $02
    ld [hl], b                                    ; $524c: $70
    inc bc                                        ; $524d: $03
    ld b, [hl]                                    ; $524e: $46
    ld [bc], a                                    ; $524f: $02
    ld [hl], b                                    ; $5250: $70

jr_01b_5251:
    inc bc                                        ; $5251: $03
    ld c, b                                       ; $5252: $48

jr_01b_5253:
    inc bc                                        ; $5253: $03
    ld h, b                                       ; $5254: $60
    inc bc                                        ; $5255: $03
    ld b, [hl]                                    ; $5256: $46
    ld [bc], a                                    ; $5257: $02
    ld h, b                                       ; $5258: $60
    inc bc                                        ; $5259: $03
    ld c, b                                       ; $525a: $48
    ld [bc], a                                    ; $525b: $02
    ld h, b                                       ; $525c: $60
    inc bc                                        ; $525d: $03

jr_01b_525e:
    ld b, [hl]                                    ; $525e: $46
    ld [bc], a                                    ; $525f: $02
    ld [hl], b                                    ; $5260: $70
    inc bc                                        ; $5261: $03
    ld c, b                                       ; $5262: $48
    ld [bc], a                                    ; $5263: $02
    ld [hl], b                                    ; $5264: $70

jr_01b_5265:
    inc bc                                        ; $5265: $03
    ld b, [hl]                                    ; $5266: $46
    inc bc                                        ; $5267: $03
    ld h, b                                       ; $5268: $60
    inc bc                                        ; $5269: $03
    ld c, b                                       ; $526a: $48

jr_01b_526b:
    inc bc                                        ; $526b: $03
    ld [hl], b                                    ; $526c: $70
    inc bc                                        ; $526d: $03
    ld b, l                                       ; $526e: $45
    inc e                                         ; $526f: $1c
    ldh a, [rP1]                                  ; $5270: $f0 $00
    rst $38                                       ; $5272: $ff
    ld h, b                                       ; $5273: $60
    nop                                           ; $5274: $00
    or l                                          ; $5275: $b5
    dec d                                         ; $5276: $15
    inc hl                                        ; $5277: $23
    ld [hl], b                                    ; $5278: $70
    inc h                                         ; $5279: $24
    dec [hl]                                      ; $527a: $35
    inc bc                                        ; $527b: $03
    ld [hl], b                                    ; $527c: $70

jr_01b_527d:
    inc c                                         ; $527d: $0c
    dec [hl]                                      ; $527e: $35
    rra                                           ; $527f: $1f
    ld [hl], b                                    ; $5280: $70
    inc h                                         ; $5281: $24
    dec [hl]                                      ; $5282: $35
    inc bc                                        ; $5283: $03
    ld [hl], b                                    ; $5284: $70
    inc c                                         ; $5285: $0c
    dec [hl]                                      ; $5286: $35
    inc e                                         ; $5287: $1c
    ld [hl], b                                    ; $5288: $70
    inc h                                         ; $5289: $24
    dec [hl]                                      ; $528a: $35
    dec bc                                        ; $528b: $0b
    ld [hl], b                                    ; $528c: $70
    inc c                                         ; $528d: $0c
    inc a                                         ; $528e: $3c
    jr jr_01b_5301                                ; $528f: $18 $70

    jr jr_01b_52c8                                ; $5291: $18 $35

    rla                                           ; $5293: $17
    ld [hl], b                                    ; $5294: $70
    jr jr_01b_52d1                                ; $5295: $18 $3a

    ld e, $70                                     ; $5297: $1e $70
    inc h                                         ; $5299: $24
    ld a, [hl-]                                   ; $529a: $3a
    ld a, [bc]                                    ; $529b: $0a
    ld [hl], b                                    ; $529c: $70
    inc c                                         ; $529d: $0c
    dec [hl]                                      ; $529e: $35
    ld a, [de]                                    ; $529f: $1a
    ld [hl], b                                    ; $52a0: $70
    inc h                                         ; $52a1: $24
    dec [hl]                                      ; $52a2: $35
    ld c, $70                                     ; $52a3: $0e $70
    inc c                                         ; $52a5: $0c
    inc a                                         ; $52a6: $3c
    dec e                                         ; $52a7: $1d
    ld [hl], b                                    ; $52a8: $70
    inc h                                         ; $52a9: $24
    inc a                                         ; $52aa: $3c
    inc b                                         ; $52ab: $04
    ld [hl], b                                    ; $52ac: $70
    inc c                                         ; $52ad: $0c
    inc a                                         ; $52ae: $3c
    ld c, $70                                     ; $52af: $0e $70
    ld [de], a                                    ; $52b1: $12
    inc a                                         ; $52b2: $3c
    dec b                                         ; $52b3: $05
    ld [hl], b                                    ; $52b4: $70
    ld b, $35                                     ; $52b5: $06 $35
    ld de, $1870                                  ; $52b7: $11 $70 $18
    dec [hl]                                      ; $52ba: $35
    add hl, de                                    ; $52bb: $19
    ld [hl], b                                    ; $52bc: $70
    inc h                                         ; $52bd: $24
    dec [hl]                                      ; $52be: $35
    inc c                                         ; $52bf: $0c
    ld [hl], b                                    ; $52c0: $70
    inc c                                         ; $52c1: $0c
    scf                                           ; $52c2: $37
    jr @+$72                                      ; $52c3: $18 $70

    inc h                                         ; $52c5: $24
    scf                                           ; $52c6: $37
    inc c                                         ; $52c7: $0c

jr_01b_52c8:
    ld [hl], b                                    ; $52c8: $70
    inc c                                         ; $52c9: $0c
    inc a                                         ; $52ca: $3c
    rrca                                          ; $52cb: $0f
    ld [hl], b                                    ; $52cc: $70
    ld [de], a                                    ; $52cd: $12
    inc a                                         ; $52ce: $3c
    inc bc                                        ; $52cf: $03
    ld h, b                                       ; $52d0: $60

jr_01b_52d1:
    ld b, $3c                                     ; $52d1: $06 $3c
    ld [$0c70], sp                                ; $52d3: $08 $70 $0c
    inc a                                         ; $52d6: $3c
    ld a, [bc]                                    ; $52d7: $0a
    ld [hl], b                                    ; $52d8: $70
    inc c                                         ; $52d9: $0c
    dec [hl]                                      ; $52da: $35
    jr jr_01b_534d                                ; $52db: $18 $70

    jr jr_01b_531b                                ; $52dd: $18 $3c

    add hl, de                                    ; $52df: $19
    ld [hl], b                                    ; $52e0: $70
    jr jr_01b_531d                                ; $52e1: $18 $3a

    dec e                                         ; $52e3: $1d
    ld [hl], b                                    ; $52e4: $70
    inc h                                         ; $52e5: $24
    ld a, [hl-]                                   ; $52e6: $3a
    dec bc                                        ; $52e7: $0b
    ld [hl], b                                    ; $52e8: $70
    inc c                                         ; $52e9: $0c
    inc a                                         ; $52ea: $3c
    dec e                                         ; $52eb: $1d
    ld [hl], b                                    ; $52ec: $70
    inc h                                         ; $52ed: $24
    inc a                                         ; $52ee: $3c
    rlca                                          ; $52ef: $07
    add b                                         ; $52f0: $80
    inc c                                         ; $52f1: $0c
    inc a                                         ; $52f2: $3c
    rra                                           ; $52f3: $1f
    ld [hl], b                                    ; $52f4: $70
    jr nc, @+$37                                  ; $52f5: $30 $35

    dec b                                         ; $52f7: $05
    ld h, b                                       ; $52f8: $60
    inc c                                         ; $52f9: $0c
    inc [hl]                                      ; $52fa: $34
    inc b                                         ; $52fb: $04
    ld [hl], b                                    ; $52fc: $70
    inc c                                         ; $52fd: $0c
    ld [hl-], a                                   ; $52fe: $32
    inc b                                         ; $52ff: $04
    ld [hl], b                                    ; $5300: $70

jr_01b_5301:
    inc c                                         ; $5301: $0c
    ld a, [hl-]                                   ; $5302: $3a
    dec b                                         ; $5303: $05
    ld [hl], b                                    ; $5304: $70
    inc c                                         ; $5305: $0c
    inc a                                         ; $5306: $3c
    ld [hl-], a                                   ; $5307: $32
    ld [hl], b                                    ; $5308: $70
    jr nc, jr_01b_5345                            ; $5309: $30 $3a

    add hl, de                                    ; $530b: $19
    ld [hl], b                                    ; $530c: $70
    jr @+$37                                      ; $530d: $18 $35

    rla                                           ; $530f: $17
    ld h, b                                       ; $5310: $60
    jr jr_01b_5348                                ; $5311: $18 $35

    dec l                                         ; $5313: $2d
    ld [hl], b                                    ; $5314: $70
    jr nc, jr_01b_534e                            ; $5315: $30 $37

    jr jr_01b_5389                                ; $5317: $18 $70

    jr nc, jr_01b_5357                            ; $5319: $30 $3c

jr_01b_531b:
    jr nz, jr_01b_538d                            ; $531b: $20 $70

jr_01b_531d:
    inc h                                         ; $531d: $24
    inc a                                         ; $531e: $3c
    inc c                                         ; $531f: $0c
    add b                                         ; $5320: $80
    inc c                                         ; $5321: $0c
    ld [hl-], a                                   ; $5322: $32
    ld a, [de]                                    ; $5323: $1a
    ld [hl], b                                    ; $5324: $70
    inc h                                         ; $5325: $24
    ld [hl-], a                                   ; $5326: $32
    dec bc                                        ; $5327: $0b
    ld [hl], b                                    ; $5328: $70
    inc c                                         ; $5329: $0c
    inc a                                         ; $532a: $3c
    ld e, $70                                     ; $532b: $1e $70
    inc h                                         ; $532d: $24
    inc a                                         ; $532e: $3c
    inc b                                         ; $532f: $04
    ld [hl], b                                    ; $5330: $70
    inc c                                         ; $5331: $0c
    inc a                                         ; $5332: $3c
    ld [$0c70], sp                                ; $5333: $08 $70 $0c
    inc a                                         ; $5336: $3c
    inc bc                                        ; $5337: $03
    ld [hl], b                                    ; $5338: $70
    ld b, $3c                                     ; $5339: $06 $3c
    dec b                                         ; $533b: $05
    ld [hl], b                                    ; $533c: $70
    ld b, $35                                     ; $533d: $06 $35
    jr jr_01b_53b1                                ; $533f: $18 $70

    jr jr_01b_537f                                ; $5341: $18 $3c

    ld c, $60                                     ; $5343: $0e $60

jr_01b_5345:
    ld [de], a                                    ; $5345: $12
    inc a                                         ; $5346: $3c
    inc bc                                        ; $5347: $03

jr_01b_5348:
    ld h, b                                       ; $5348: $60
    ld b, $3c                                     ; $5349: $06 $3c
    rlca                                          ; $534b: $07
    ld [hl], b                                    ; $534c: $70

jr_01b_534d:
    inc c                                         ; $534d: $0c

jr_01b_534e:
    inc a                                         ; $534e: $3c
    dec bc                                        ; $534f: $0b
    ld [hl], b                                    ; $5350: $70
    inc c                                         ; $5351: $0c
    scf                                           ; $5352: $37
    ld c, $70                                     ; $5353: $0e $70
    ld [de], a                                    ; $5355: $12
    scf                                           ; $5356: $37

jr_01b_5357:
    ld [bc], a                                    ; $5357: $02
    ld [hl], b                                    ; $5358: $70
    ld b, $37                                     ; $5359: $06 $37
    ld [$0c70], sp                                ; $535b: $08 $70 $0c
    scf                                           ; $535e: $37
    inc c                                         ; $535f: $0c
    ld [hl], b                                    ; $5360: $70
    inc c                                         ; $5361: $0c
    add hl, sp                                    ; $5362: $39
    ld c, $70                                     ; $5363: $0e $70
    ld [de], a                                    ; $5365: $12
    add hl, sp                                    ; $5366: $39
    inc bc                                        ; $5367: $03
    ld h, b                                       ; $5368: $60
    ld b, $39                                     ; $5369: $06 $39
    ld b, $70                                     ; $536b: $06 $70
    inc c                                         ; $536d: $0c
    add hl, sp                                    ; $536e: $39
    ld c, $70                                     ; $536f: $0e $70
    inc c                                         ; $5371: $0c
    ld a, [hl-]                                   ; $5372: $3a
    dec bc                                        ; $5373: $0b
    ld [hl], b                                    ; $5374: $70
    ld [de], a                                    ; $5375: $12
    ld a, [hl-]                                   ; $5376: $3a
    ld [bc], a                                    ; $5377: $02
    ld [hl], b                                    ; $5378: $70
    ld b, $3a                                     ; $5379: $06 $3a
    inc b                                         ; $537b: $04
    ld [hl], b                                    ; $537c: $70
    inc c                                         ; $537d: $0c
    ld a, [hl-]                                   ; $537e: $3a

jr_01b_537f:
    inc c                                         ; $537f: $0c
    ld [hl], b                                    ; $5380: $70
    inc c                                         ; $5381: $0c
    inc a                                         ; $5382: $3c
    rra                                           ; $5383: $1f
    ld h, b                                       ; $5384: $60
    inc h                                         ; $5385: $24
    inc a                                         ; $5386: $3c
    dec b                                         ; $5387: $05
    ld [hl], b                                    ; $5388: $70

jr_01b_5389:
    inc c                                         ; $5389: $0c
    inc a                                         ; $538a: $3c
    inc e                                         ; $538b: $1c
    ld h, b                                       ; $538c: $60

jr_01b_538d:
    inc h                                         ; $538d: $24
    inc a                                         ; $538e: $3c
    inc bc                                        ; $538f: $03
    ld [hl], b                                    ; $5390: $70
    ld b, $3c                                     ; $5391: $06 $3c
    inc bc                                        ; $5393: $03
    ld [hl], b                                    ; $5394: $70
    ld b, $3c                                     ; $5395: $06 $3c
    rra                                           ; $5397: $1f
    ld h, b                                       ; $5398: $60
    inc h                                         ; $5399: $24
    inc a                                         ; $539a: $3c
    ld [bc], a                                    ; $539b: $02
    ld h, b                                       ; $539c: $60
    ld b, $3c                                     ; $539d: $06 $3c
    ld bc, $0670                                  ; $539f: $01 $70 $06
    inc a                                         ; $53a2: $3c
    rrca                                          ; $53a3: $0f
    ld [hl], b                                    ; $53a4: $70
    ld [de], a                                    ; $53a5: $12
    inc a                                         ; $53a6: $3c
    inc bc                                        ; $53a7: $03
    ld [hl], b                                    ; $53a8: $70
    ld b, $3c                                     ; $53a9: $06 $3c
    rlca                                          ; $53ab: $07
    ld [hl], b                                    ; $53ac: $70
    inc c                                         ; $53ad: $0c
    inc a                                         ; $53ae: $3c
    dec b                                         ; $53af: $05
    ld [hl], b                                    ; $53b0: $70

jr_01b_53b1:
    inc c                                         ; $53b1: $0c
    inc a                                         ; $53b2: $3c
    dec c                                         ; $53b3: $0d
    ld [hl], b                                    ; $53b4: $70
    ld [de], a                                    ; $53b5: $12
    inc a                                         ; $53b6: $3c
    inc bc                                        ; $53b7: $03
    ld [hl], b                                    ; $53b8: $70
    ld b, $3c                                     ; $53b9: $06 $3c
    ld c, $70                                     ; $53bb: $0e $70
    inc c                                         ; $53bd: $0c
    scf                                           ; $53be: $37
    inc c                                         ; $53bf: $0c
    ld [hl], b                                    ; $53c0: $70
    inc c                                         ; $53c1: $0c
    dec [hl]                                      ; $53c2: $35
    ld e, $70                                     ; $53c3: $1e $70
    inc h                                         ; $53c5: $24
    dec [hl]                                      ; $53c6: $35
    dec b                                         ; $53c7: $05
    add b                                         ; $53c8: $80
    ld b, $34                                     ; $53c9: $06 $34
    ld b, $70                                     ; $53cb: $06 $70
    ld b, $32                                     ; $53cd: $06 $32
    add hl, de                                    ; $53cf: $19
    ld [hl], b                                    ; $53d0: $70
    inc h                                         ; $53d1: $24
    ld [hl-], a                                   ; $53d2: $32
    dec c                                         ; $53d3: $0d
    ld [hl], b                                    ; $53d4: $70
    inc c                                         ; $53d5: $0c
    scf                                           ; $53d6: $37
    ld c, $70                                     ; $53d7: $0e $70
    ld [de], a                                    ; $53d9: $12
    scf                                           ; $53da: $37
    rlca                                          ; $53db: $07
    ld [hl], b                                    ; $53dc: $70
    ld b, $39                                     ; $53dd: $06 $39
    ld c, $70                                     ; $53df: $0e $70
    ld [de], a                                    ; $53e1: $12
    add hl, sp                                    ; $53e2: $39
    inc b                                         ; $53e3: $04
    ld h, b                                       ; $53e4: $60
    ld b, $3a                                     ; $53e5: $06 $3a
    rla                                           ; $53e7: $17
    ld [hl], b                                    ; $53e8: $70
    inc h                                         ; $53e9: $24
    ld a, [hl-]                                   ; $53ea: $3a
    inc c                                         ; $53eb: $0c
    ld [hl], b                                    ; $53ec: $70
    inc c                                         ; $53ed: $0c
    inc a                                         ; $53ee: $3c
    jr nz, jr_01b_5461                            ; $53ef: $20 $70

    inc h                                         ; $53f1: $24
    inc a                                         ; $53f2: $3c
    ld b, $70                                     ; $53f3: $06 $70
    inc c                                         ; $53f5: $0c
    inc a                                         ; $53f6: $3c
    ld c, $70                                     ; $53f7: $0e $70
    ld [de], a                                    ; $53f9: $12
    inc a                                         ; $53fa: $3c
    inc bc                                        ; $53fb: $03
    ld [hl], b                                    ; $53fc: $70
    ld b, $3c                                     ; $53fd: $06 $3c
    ld b, $70                                     ; $53ff: $06 $70
    inc c                                         ; $5401: $0c
    inc a                                         ; $5402: $3c
    rlca                                          ; $5403: $07
    ld [hl], b                                    ; $5404: $70
    inc c                                         ; $5405: $0c
    dec [hl]                                      ; $5406: $35
    rrca                                          ; $5407: $0f
    ld [hl], b                                    ; $5408: $70
    ld [de], a                                    ; $5409: $12
    dec [hl]                                      ; $540a: $35
    inc bc                                        ; $540b: $03
    ld [hl], b                                    ; $540c: $70
    ld b, $35                                     ; $540d: $06 $35
    ld b, $70                                     ; $540f: $06 $70
    inc c                                         ; $5411: $0c
    dec [hl]                                      ; $5412: $35
    ld a, [bc]                                    ; $5413: $0a
    ld [hl], b                                    ; $5414: $70
    inc c                                         ; $5415: $0c
    inc a                                         ; $5416: $3c
    ld e, $60                                     ; $5417: $1e $60
    inc h                                         ; $5419: $24
    inc a                                         ; $541a: $3c
    dec b                                         ; $541b: $05
    ld h, b                                       ; $541c: $60
    inc c                                         ; $541d: $0c
    inc a                                         ; $541e: $3c
    dec d                                         ; $541f: $15
    ld [hl], b                                    ; $5420: $70
    jr jr_01b_545f                                ; $5421: $18 $3c

    dec b                                         ; $5423: $05
    ld [hl], b                                    ; $5424: $70
    inc c                                         ; $5425: $0c
    inc a                                         ; $5426: $3c
    inc c                                         ; $5427: $0c
    ld [hl], b                                    ; $5428: $70
    inc c                                         ; $5429: $0c
    scf                                           ; $542a: $37
    jr nz, jr_01b_548d                            ; $542b: $20 $60

    inc h                                         ; $542d: $24
    scf                                           ; $542e: $37
    ld [bc], a                                    ; $542f: $02
    ld h, b                                       ; $5430: $60
    ld b, $37                                     ; $5431: $06 $37
    inc bc                                        ; $5433: $03
    ld [hl], b                                    ; $5434: $70
    ld b, $37                                     ; $5435: $06 $37
    ld c, $70                                     ; $5437: $0e $70
    ld [de], a                                    ; $5439: $12
    scf                                           ; $543a: $37
    inc bc                                        ; $543b: $03
    ld [hl], b                                    ; $543c: $70
    ld b, $37                                     ; $543d: $06 $37
    rla                                           ; $543f: $17
    ld [hl], b                                    ; $5440: $70
    jr @+$35                                      ; $5441: $18 $33

    ld e, $70                                     ; $5443: $1e $70
    inc h                                         ; $5445: $24
    inc sp                                        ; $5446: $33
    inc b                                         ; $5447: $04
    ld h, b                                       ; $5448: $60
    inc c                                         ; $5449: $0c
    inc sp                                        ; $544a: $33
    ld c, $60                                     ; $544b: $0e $60
    ld [de], a                                    ; $544d: $12
    inc sp                                        ; $544e: $33
    inc bc                                        ; $544f: $03
    ld h, b                                       ; $5450: $60
    ld b, $33                                     ; $5451: $06 $33
    rlca                                          ; $5453: $07
    ld h, b                                       ; $5454: $60
    inc c                                         ; $5455: $0c
    inc sp                                        ; $5456: $33
    dec bc                                        ; $5457: $0b
    ld [hl], b                                    ; $5458: $70
    inc c                                         ; $5459: $0c
    ld a, [hl-]                                   ; $545a: $3a
    db $10                                        ; $545b: $10
    ld [hl], b                                    ; $545c: $70
    ld [de], a                                    ; $545d: $12
    ld a, [hl-]                                   ; $545e: $3a

jr_01b_545f:
    ld [bc], a                                    ; $545f: $02
    ld [hl], b                                    ; $5460: $70

jr_01b_5461:
    ld b, $3a                                     ; $5461: $06 $3a
    ld b, $70                                     ; $5463: $06 $70
    inc c                                         ; $5465: $0c
    ld a, [hl-]                                   ; $5466: $3a
    dec bc                                        ; $5467: $0b
    ld [hl], b                                    ; $5468: $70
    inc c                                         ; $5469: $0c
    inc sp                                        ; $546a: $33
    add hl, de                                    ; $546b: $19
    ld h, b                                       ; $546c: $60
    inc h                                         ; $546d: $24
    inc sp                                        ; $546e: $33
    inc b                                         ; $546f: $04
    ld [hl], b                                    ; $5470: $70
    inc c                                         ; $5471: $0c
    inc sp                                        ; $5472: $33
    inc de                                        ; $5473: $13
    ld [hl], b                                    ; $5474: $70
    jr jr_01b_54aa                                ; $5475: $18 $33

    dec c                                         ; $5477: $0d
    ld [hl], b                                    ; $5478: $70
    ld [de], a                                    ; $5479: $12
    inc sp                                        ; $547a: $33
    rlca                                          ; $547b: $07
    ld [hl], b                                    ; $547c: $70
    ld b, $3a                                     ; $547d: $06 $3a
    rrca                                          ; $547f: $0f
    ld [hl], b                                    ; $5480: $70
    ld [de], a                                    ; $5481: $12
    ld a, [hl-]                                   ; $5482: $3a
    ld [bc], a                                    ; $5483: $02
    ld [hl], b                                    ; $5484: $70
    ld b, $3a                                     ; $5485: $06 $3a
    rlca                                          ; $5487: $07
    ld h, b                                       ; $5488: $60
    inc c                                         ; $5489: $0c
    ld a, [hl-]                                   ; $548a: $3a
    rlca                                          ; $548b: $07
    ld [hl], b                                    ; $548c: $70

jr_01b_548d:
    inc c                                         ; $548d: $0c
    ld a, [hl-]                                   ; $548e: $3a
    ld c, $70                                     ; $548f: $0e $70
    ld [de], a                                    ; $5491: $12
    ld a, [hl-]                                   ; $5492: $3a
    inc bc                                        ; $5493: $03
    ld [hl], b                                    ; $5494: $70
    ld b, $3a                                     ; $5495: $06 $3a
    add hl, bc                                    ; $5497: $09
    ld [hl], b                                    ; $5498: $70
    inc c                                         ; $5499: $0c
    ld a, [hl-]                                   ; $549a: $3a
    dec bc                                        ; $549b: $0b
    ld [hl], b                                    ; $549c: $70
    inc c                                         ; $549d: $0c
    inc sp                                        ; $549e: $33
    ld [de], a                                    ; $549f: $12
    ld [hl], b                                    ; $54a0: $70
    jr jr_01b_54d6                                ; $54a1: $18 $33

    inc c                                         ; $54a3: $0c
    ld [hl], b                                    ; $54a4: $70
    inc c                                         ; $54a5: $0c
    dec [hl]                                      ; $54a6: $35
    inc c                                         ; $54a7: $0c
    ld [hl], b                                    ; $54a8: $70
    inc c                                         ; $54a9: $0c

jr_01b_54aa:
    scf                                           ; $54aa: $37
    dec de                                        ; $54ab: $1b
    ld [hl], b                                    ; $54ac: $70
    inc h                                         ; $54ad: $24
    scf                                           ; $54ae: $37
    inc c                                         ; $54af: $0c
    ld [hl], b                                    ; $54b0: $70
    inc c                                         ; $54b1: $0c
    ld [hl-], a                                   ; $54b2: $32
    dec d                                         ; $54b3: $15
    ld [hl], b                                    ; $54b4: $70
    jr jr_01b_54e9                                ; $54b5: $18 $32

    ld c, $70                                     ; $54b7: $0e $70
    ld [de], a                                    ; $54b9: $12
    ld [hl-], a                                   ; $54ba: $32
    inc bc                                        ; $54bb: $03
    ld [hl], b                                    ; $54bc: $70
    ld b, $30                                     ; $54bd: $06 $30
    dec de                                        ; $54bf: $1b
    ld [hl], b                                    ; $54c0: $70
    inc h                                         ; $54c1: $24
    jr nc, jr_01b_54c8                            ; $54c2: $30 $04

    ld [hl], b                                    ; $54c4: $70
    inc c                                         ; $54c5: $0c
    jr nc, jr_01b_54ce                            ; $54c6: $30 $06

jr_01b_54c8:
    ld [hl], b                                    ; $54c8: $70
    inc c                                         ; $54c9: $0c
    jr nc, jr_01b_54d8                            ; $54ca: $30 $0c

    ld [hl], b                                    ; $54cc: $70
    inc c                                         ; $54cd: $0c

jr_01b_54ce:
    dec [hl]                                      ; $54ce: $35
    jr jr_01b_5541                                ; $54cf: $18 $70

    jr jr_01b_550d                                ; $54d1: $18 $3a

    dec de                                        ; $54d3: $1b
    ld [hl], b                                    ; $54d4: $70
    inc h                                         ; $54d5: $24

jr_01b_54d6:
    ld a, [hl-]                                   ; $54d6: $3a
    dec c                                         ; $54d7: $0d

jr_01b_54d8:
    ld [hl], b                                    ; $54d8: $70
    inc c                                         ; $54d9: $0c
    jr nc, jr_01b_54ea                            ; $54da: $30 $0e

    ld [hl], b                                    ; $54dc: $70
    ld [de], a                                    ; $54dd: $12
    jr nc, jr_01b_54e3                            ; $54de: $30 $03

    ld [hl], b                                    ; $54e0: $70
    ld b, $30                                     ; $54e1: $06 $30

jr_01b_54e3:
    dec c                                         ; $54e3: $0d
    ld [hl], b                                    ; $54e4: $70
    jr jr_01b_5517                                ; $54e5: $18 $30

    inc de                                        ; $54e7: $13
    ld [hl], b                                    ; $54e8: $70

jr_01b_54e9:
    ld [de], a                                    ; $54e9: $12

jr_01b_54ea:
    inc a                                         ; $54ea: $3c
    inc bc                                        ; $54eb: $03
    ld [hl], b                                    ; $54ec: $70
    ld b, $3c                                     ; $54ed: $06 $3c
    ld [$0c80], sp                                ; $54ef: $08 $80 $0c
    inc a                                         ; $54f2: $3c
    add hl, bc                                    ; $54f3: $09
    ld [hl], b                                    ; $54f4: $70
    inc c                                         ; $54f5: $0c
    jr nc, @+$24                                  ; $54f6: $30 $22

    ld h, b                                       ; $54f8: $60
    inc h                                         ; $54f9: $24
    jr nc, jr_01b_5509                            ; $54fa: $30 $0d

    ld [hl], b                                    ; $54fc: $70
    inc c                                         ; $54fd: $0c
    dec [hl]                                      ; $54fe: $35
    ld e, $60                                     ; $54ff: $1e $60
    inc h                                         ; $5501: $24
    dec [hl]                                      ; $5502: $35
    rlca                                          ; $5503: $07
    ld [hl], b                                    ; $5504: $70
    inc c                                         ; $5505: $0c
    dec [hl]                                      ; $5506: $35
    rla                                           ; $5507: $17
    ld [hl], b                                    ; $5508: $70

jr_01b_5509:
    inc h                                         ; $5509: $24
    dec [hl]                                      ; $550a: $35
    dec b                                         ; $550b: $05
    ld [hl], b                                    ; $550c: $70

jr_01b_550d:
    inc c                                         ; $550d: $0c
    dec [hl]                                      ; $550e: $35
    ld c, $60                                     ; $550f: $0e $60
    ld [de], a                                    ; $5511: $12
    dec [hl]                                      ; $5512: $35
    inc bc                                        ; $5513: $03
    ld [hl], b                                    ; $5514: $70
    ld b, $35                                     ; $5515: $06 $35

jr_01b_5517:
    inc d                                         ; $5517: $14
    ld [hl], b                                    ; $5518: $70
    jr jr_01b_5550                                ; $5519: $18 $35

    ld c, $60                                     ; $551b: $0e $60
    ld [de], a                                    ; $551d: $12
    dec [hl]                                      ; $551e: $35
    inc bc                                        ; $551f: $03
    ld [hl], b                                    ; $5520: $70
    ld b, $35                                     ; $5521: $06 $35
    ld a, [bc]                                    ; $5523: $0a
    ld h, b                                       ; $5524: $60
    inc c                                         ; $5525: $0c
    dec [hl]                                      ; $5526: $35
    rlca                                          ; $5527: $07
    ld [hl], b                                    ; $5528: $70
    inc c                                         ; $5529: $0c
    dec [hl]                                      ; $552a: $35
    ld a, [de]                                    ; $552b: $1a
    ld [hl], b                                    ; $552c: $70
    inc h                                         ; $552d: $24
    dec [hl]                                      ; $552e: $35
    dec b                                         ; $552f: $05
    ld [hl], b                                    ; $5530: $70
    inc c                                         ; $5531: $0c
    dec [hl]                                      ; $5532: $35
    ld c, $70                                     ; $5533: $0e $70
    ld [de], a                                    ; $5535: $12
    dec [hl]                                      ; $5536: $35
    inc bc                                        ; $5537: $03
    ld [hl], b                                    ; $5538: $70
    ld b, $35                                     ; $5539: $06 $35
    ld b, $70                                     ; $553b: $06 $70
    inc c                                         ; $553d: $0c
    dec [hl]                                      ; $553e: $35
    dec bc                                        ; $553f: $0b
    ld [hl], b                                    ; $5540: $70

jr_01b_5541:
    inc c                                         ; $5541: $0c
    jr nc, jr_01b_555f                            ; $5542: $30 $1b

    ld [hl], b                                    ; $5544: $70
    inc h                                         ; $5545: $24
    jr nc, @+$0e                                  ; $5546: $30 $0c

    ld [hl], b                                    ; $5548: $70
    inc c                                         ; $5549: $0c
    inc a                                         ; $554a: $3c
    add hl, de                                    ; $554b: $19
    ld [hl], b                                    ; $554c: $70
    jr @+$32                                      ; $554d: $18 $30

    rla                                           ; $554f: $17

jr_01b_5550:
    ld [hl], b                                    ; $5550: $70
    jr jr_01b_558f                                ; $5551: $18 $3c

    ld hl, $2460                                  ; $5553: $21 $60 $24
    inc a                                         ; $5556: $3c
    ld [$0c70], sp                                ; $5557: $08 $70 $0c
    inc a                                         ; $555a: $3c
    ld hl, $2460                                  ; $555b: $21 $60 $24
    inc a                                         ; $555e: $3c

jr_01b_555f:
    ld [$0c70], sp                                ; $555f: $08 $70 $0c
    inc a                                         ; $5562: $3c
    ld c, $60                                     ; $5563: $0e $60
    ld [de], a                                    ; $5565: $12
    inc a                                         ; $5566: $3c
    inc b                                         ; $5567: $04
    ld [hl], b                                    ; $5568: $70
    ld b, $3c                                     ; $5569: $06 $3c
    ld [$0c60], sp                                ; $556b: $08 $60 $0c
    inc a                                         ; $556e: $3c
    ld b, $70                                     ; $556f: $06 $70
    inc c                                         ; $5571: $0c
    inc a                                         ; $5572: $3c
    ld [de], a                                    ; $5573: $12
    ld [hl], b                                    ; $5574: $70
    ld [de], a                                    ; $5575: $12
    inc a                                         ; $5576: $3c
    dec bc                                        ; $5577: $0b
    ld [hl], b                                    ; $5578: $70
    ld [de], a                                    ; $5579: $12
    inc a                                         ; $557a: $3c
    ld [$0c60], sp                                ; $557b: $08 $60 $0c
    jr nc, jr_01b_559d                            ; $557e: $30 $1d

    ld h, b                                       ; $5580: $60
    inc h                                         ; $5581: $24
    jr nc, jr_01b_5589                            ; $5582: $30 $05

    ld [hl], b                                    ; $5584: $70
    inc c                                         ; $5585: $0c
    jr nc, jr_01b_5596                            ; $5586: $30 $0e

    ld h, b                                       ; $5588: $60

jr_01b_5589:
    ld [de], a                                    ; $5589: $12
    jr nc, @+$04                                  ; $558a: $30 $02

    ld h, b                                       ; $558c: $60
    ld b, $30                                     ; $558d: $06 $30

jr_01b_558f:
    ld b, $70                                     ; $558f: $06 $70
    inc c                                         ; $5591: $0c
    jr nc, jr_01b_559a                            ; $5592: $30 $06

    ld [hl], b                                    ; $5594: $70
    inc c                                         ; $5595: $0c

jr_01b_5596:
    jr nc, jr_01b_55b6                            ; $5596: $30 $1e

    ld [hl], b                                    ; $5598: $70
    inc h                                         ; $5599: $24

jr_01b_559a:
    jr nc, jr_01b_55a2                            ; $559a: $30 $06

    ld [hl], b                                    ; $559c: $70

jr_01b_559d:
    inc c                                         ; $559d: $0c
    jr nc, jr_01b_55ae                            ; $559e: $30 $0e

    ld h, b                                       ; $55a0: $60
    ld [de], a                                    ; $55a1: $12

jr_01b_55a2:
    jr nc, jr_01b_55a7                            ; $55a2: $30 $03

    ld [hl], b                                    ; $55a4: $70
    ld b, $30                                     ; $55a5: $06 $30

jr_01b_55a7:
    ld b, $70                                     ; $55a7: $06 $70
    inc c                                         ; $55a9: $0c
    jr nc, jr_01b_55b7                            ; $55aa: $30 $0b

    ld [hl], b                                    ; $55ac: $70
    inc c                                         ; $55ad: $0c

jr_01b_55ae:
    inc a                                         ; $55ae: $3c
    dec e                                         ; $55af: $1d
    ld [hl], b                                    ; $55b0: $70
    inc h                                         ; $55b1: $24
    inc a                                         ; $55b2: $3c
    dec b                                         ; $55b3: $05
    ld [hl], b                                    ; $55b4: $70
    inc c                                         ; $55b5: $0c

jr_01b_55b6:
    inc a                                         ; $55b6: $3c

jr_01b_55b7:
    dec c                                         ; $55b7: $0d
    ld h, b                                       ; $55b8: $60
    ld [de], a                                    ; $55b9: $12
    inc a                                         ; $55ba: $3c
    inc bc                                        ; $55bb: $03
    ld [hl], b                                    ; $55bc: $70
    ld b, $3c                                     ; $55bd: $06 $3c
    ld b, $70                                     ; $55bf: $06 $70
    inc c                                         ; $55c1: $0c
    inc a                                         ; $55c2: $3c
    add hl, bc                                    ; $55c3: $09
    ld [hl], b                                    ; $55c4: $70
    inc c                                         ; $55c5: $0c
    inc a                                         ; $55c6: $3c
    inc hl                                        ; $55c7: $23
    ld [hl], b                                    ; $55c8: $70
    jr nc, jr_01b_5600                            ; $55c9: $30 $35

    ld a, [hl+]                                   ; $55cb: $2a
    ldh a, [rP1]                                  ; $55cc: $f0 $00
    rst $38                                       ; $55ce: $ff
    jr nc, jr_01b_55d1                            ; $55cf: $30 $00

jr_01b_55d1:
    ret z                                         ; $55d1: $c8

    ld bc, $302a                                  ; $55d2: $01 $2a $30
    jr nc, jr_01b_561f                            ; $55d5: $30 $48

    ld a, [hl+]                                   ; $55d7: $2a
    jr nc, jr_01b_560a                            ; $55d8: $30 $30

    ld c, b                                       ; $55da: $48
    jr nc, @+$32                                  ; $55db: $30 $30

    jr nc, jr_01b_5622                            ; $55dd: $30 $43

    jr @+$32                                      ; $55df: $18 $30

    jr jr_01b_562b                                ; $55e1: $18 $48

    jr @+$32                                      ; $55e3: $18 $30

    jr @+$43                                      ; $55e5: $18 $41

    jr nc, jr_01b_5619                            ; $55e7: $30 $30

    jr nc, jr_01b_5633                            ; $55e9: $30 $48

    jr nc, jr_01b_561d                            ; $55eb: $30 $30

    jr nc, @+$45                                  ; $55ed: $30 $43

    jr @+$32                                      ; $55ef: $18 $30

    jr @+$45                                      ; $55f1: $18 $43

    ld [de], a                                    ; $55f3: $12
    jr nc, jr_01b_560e                            ; $55f4: $30 $18

    ld b, e                                       ; $55f6: $43
    jr jr_01b_5629                                ; $55f7: $18 $30

    jr jr_01b_5643                                ; $55f9: $18 $48

    ld [de], a                                    ; $55fb: $12
    jr nc, jr_01b_5616                            ; $55fc: $30 $18

    ld c, b                                       ; $55fe: $48
    ld a, [hl+]                                   ; $55ff: $2a

jr_01b_5600:
    jr nc, @+$32                                  ; $5600: $30 $30

    ld c, d                                       ; $5602: $4a
    inc h                                         ; $5603: $24
    jr nc, @+$32                                  ; $5604: $30 $30

    ld b, e                                       ; $5606: $43
    jr jr_01b_5639                                ; $5607: $18 $30

    ld c, b                                       ; $5609: $48

jr_01b_560a:
    ld b, e                                       ; $560a: $43
    ld [de], a                                    ; $560b: $12
    jr nc, jr_01b_5626                            ; $560c: $30 $18

jr_01b_560e:
    ld b, c                                       ; $560e: $41
    inc h                                         ; $560f: $24
    jr nc, jr_01b_5642                            ; $5610: $30 $30

    ld b, e                                       ; $5612: $43
    ld a, [hl+]                                   ; $5613: $2a
    jr nc, @+$32                                  ; $5614: $30 $30

jr_01b_5616:
    ld c, d                                       ; $5616: $4a
    jr @+$32                                      ; $5617: $18 $30

jr_01b_5619:
    jr @+$45                                      ; $5619: $18 $43

    jr jr_01b_564d                                ; $561b: $18 $30

jr_01b_561d:
    jr jr_01b_5667                                ; $561d: $18 $48

jr_01b_561f:
    inc h                                         ; $561f: $24
    jr nc, jr_01b_5652                            ; $5620: $30 $30

jr_01b_5622:
    ld b, e                                       ; $5622: $43
    inc h                                         ; $5623: $24
    jr nc, @+$32                                  ; $5624: $30 $30

jr_01b_5626:
    ld b, c                                       ; $5626: $41
    jr @+$32                                      ; $5627: $18 $30

jr_01b_5629:
    jr jr_01b_5673                                ; $5629: $18 $48

jr_01b_562b:
    ld [de], a                                    ; $562b: $12
    jr nc, @+$1a                                  ; $562c: $30 $18

    ld c, b                                       ; $562e: $48
    jr nc, @+$32                                  ; $562f: $30 $30

    jr nc, jr_01b_567d                            ; $5631: $30 $4a

jr_01b_5633:
    jr @+$32                                      ; $5633: $18 $30

    jr @+$45                                      ; $5635: $18 $43

    jr @+$32                                      ; $5637: $18 $30

jr_01b_5639:
    jr jr_01b_5683                                ; $5639: $18 $48

    ld b, $30                                     ; $563b: $06 $30
    inc h                                         ; $563d: $24
    ld c, b                                       ; $563e: $48
    ld [de], a                                    ; $563f: $12
    jr nc, jr_01b_5666                            ; $5640: $30 $24

jr_01b_5642:
    ld b, l                                       ; $5642: $45

jr_01b_5643:
    jr @+$32                                      ; $5643: $18 $30

    jr jr_01b_568a                                ; $5645: $18 $43

    inc h                                         ; $5647: $24
    jr nc, @+$32                                  ; $5648: $30 $30

    ld b, e                                       ; $564a: $43
    jr jr_01b_567d                                ; $564b: $18 $30

jr_01b_564d:
    jr jr_01b_5697                                ; $564d: $18 $48

    ld [de], a                                    ; $564f: $12
    jr nc, jr_01b_566a                            ; $5650: $30 $18

jr_01b_5652:
    ld c, b                                       ; $5652: $48
    jr nc, @+$32                                  ; $5653: $30 $30

    jr nc, @+$4c                                  ; $5655: $30 $4a

    inc h                                         ; $5657: $24
    jr nc, jr_01b_56d2                            ; $5658: $30 $78

    ld b, c                                       ; $565a: $41
    jr jr_01b_568d                                ; $565b: $18 $30

    jr jr_01b_56a2                                ; $565d: $18 $43

    ld a, [hl+]                                   ; $565f: $2a
    jr nc, @+$32                                  ; $5660: $30 $30

    ld b, e                                       ; $5662: $43
    inc h                                         ; $5663: $24
    jr nc, @+$32                                  ; $5664: $30 $30

jr_01b_5666:
    ld b, e                                       ; $5666: $43

jr_01b_5667:
    inc h                                         ; $5667: $24
    jr nc, jr_01b_569a                            ; $5668: $30 $30

jr_01b_566a:
    ld b, e                                       ; $566a: $43
    ld a, [hl+]                                   ; $566b: $2a
    jr nc, jr_01b_569e                            ; $566c: $30 $30

    ld b, e                                       ; $566e: $43
    inc h                                         ; $566f: $24
    jr nc, jr_01b_56a2                            ; $5670: $30 $30

    ld c, b                                       ; $5672: $48

jr_01b_5673:
    ld a, [hl+]                                   ; $5673: $2a
    jr nc, jr_01b_56a6                            ; $5674: $30 $30

    ld b, l                                       ; $5676: $45
    jr nc, jr_01b_56a9                            ; $5677: $30 $30

    jr nc, @+$4c                                  ; $5679: $30 $4a

    jr jr_01b_56ad                                ; $567b: $18 $30

jr_01b_567d:
    jr jr_01b_56cb                                ; $567d: $18 $4c

    jr @+$32                                      ; $567f: $18 $30

    ld e, $41                                     ; $5681: $1e $41

jr_01b_5683:
    inc h                                         ; $5683: $24
    jr nc, jr_01b_56b0                            ; $5684: $30 $2a

    ld b, e                                       ; $5686: $43
    inc h                                         ; $5687: $24
    jr nc, jr_01b_56ba                            ; $5688: $30 $30

jr_01b_568a:
    ld b, e                                       ; $568a: $43
    jr jr_01b_56bd                                ; $568b: $18 $30

jr_01b_568d:
    jr jr_01b_56d7                                ; $568d: $18 $48

    jr @+$32                                      ; $568f: $18 $30

    jr jr_01b_56d6                                ; $5691: $18 $43

    ld e, $30                                     ; $5693: $1e $30
    jr nc, jr_01b_56da                            ; $5695: $30 $43

jr_01b_5697:
    ld a, [hl+]                                   ; $5697: $2a
    jr nc, jr_01b_56ca                            ; $5698: $30 $30

jr_01b_569a:
    ld b, e                                       ; $569a: $43
    ld e, $30                                     ; $569b: $1e $30
    inc h                                         ; $569d: $24

jr_01b_569e:
    ld b, e                                       ; $569e: $43
    ld [de], a                                    ; $569f: $12
    jr nc, jr_01b_56ae                            ; $56a0: $30 $0c

jr_01b_56a2:
    ld c, d                                       ; $56a2: $4a
    ld e, $30                                     ; $56a3: $1e $30
    inc h                                         ; $56a5: $24

jr_01b_56a6:
    ld c, d                                       ; $56a6: $4a
    ld b, $30                                     ; $56a7: $06 $30

jr_01b_56a9:
    inc c                                         ; $56a9: $0c
    ld c, d                                       ; $56aa: $4a
    ld e, $30                                     ; $56ab: $1e $30

jr_01b_56ad:
    inc h                                         ; $56ad: $24

jr_01b_56ae:
    ld c, d                                       ; $56ae: $4a
    inc c                                         ; $56af: $0c

jr_01b_56b0:
    jr nc, jr_01b_56be                            ; $56b0: $30 $0c

    ld b, [hl]                                    ; $56b2: $46
    inc h                                         ; $56b3: $24
    jr nc, @+$32                                  ; $56b4: $30 $30

    ld b, [hl]                                    ; $56b6: $46
    inc h                                         ; $56b7: $24
    jr nc, jr_01b_56ea                            ; $56b8: $30 $30

jr_01b_56ba:
    ld b, [hl]                                    ; $56ba: $46
    ld e, $30                                     ; $56bb: $1e $30

jr_01b_56bd:
    inc h                                         ; $56bd: $24

jr_01b_56be:
    ld b, [hl]                                    ; $56be: $46
    inc c                                         ; $56bf: $0c
    jr nc, @+$26                                  ; $56c0: $30 $24

    ld b, [hl]                                    ; $56c2: $46
    inc c                                         ; $56c3: $0c
    jr nc, @+$1a                                  ; $56c4: $30 $18

    ld b, [hl]                                    ; $56c6: $46
    ld e, $30                                     ; $56c7: $1e $30
    inc h                                         ; $56c9: $24

jr_01b_56ca:
    ld b, [hl]                                    ; $56ca: $46

jr_01b_56cb:
    inc c                                         ; $56cb: $0c
    jr nc, jr_01b_56da                            ; $56cc: $30 $0c

    ld c, l                                       ; $56ce: $4d
    jr jr_01b_5701                                ; $56cf: $18 $30

    inc h                                         ; $56d1: $24

jr_01b_56d2:
    ld c, l                                       ; $56d2: $4d
    ld b, $30                                     ; $56d3: $06 $30
    inc c                                         ; $56d5: $0c

jr_01b_56d6:
    ld c, l                                       ; $56d6: $4d

jr_01b_56d7:
    ld [de], a                                    ; $56d7: $12
    jr nc, jr_01b_56f2                            ; $56d8: $30 $18

jr_01b_56da:
    ld c, l                                       ; $56da: $4d
    jr @+$32                                      ; $56db: $18 $30

    jr jr_01b_5725                                ; $56dd: $18 $46

    jr jr_01b_5711                                ; $56df: $18 $30

    jr jr_01b_5729                                ; $56e1: $18 $46

    jr @+$32                                      ; $56e3: $18 $30

    jr jr_01b_5731                                ; $56e5: $18 $4a

    ld e, $30                                     ; $56e7: $1e $30
    inc h                                         ; $56e9: $24

jr_01b_56ea:
    ld c, d                                       ; $56ea: $4a
    inc c                                         ; $56eb: $0c
    jr nc, jr_01b_56fa                            ; $56ec: $30 $0c

    ld b, l                                       ; $56ee: $45
    ld a, [hl+]                                   ; $56ef: $2a
    jr nc, jr_01b_571c                            ; $56f0: $30 $2a

jr_01b_56f2:
    ld b, l                                       ; $56f2: $45
    ld b, $30                                     ; $56f3: $06 $30
    ld b, $43                                     ; $56f5: $06 $43
    inc h                                         ; $56f7: $24
    jr nc, jr_01b_572a                            ; $56f8: $30 $30

jr_01b_56fa:
    ld b, e                                       ; $56fa: $43
    jr jr_01b_572d                                ; $56fb: $18 $30

    jr @+$43                                      ; $56fd: $18 $41

    ld e, $30                                     ; $56ff: $1e $30

jr_01b_5701:
    jr nc, @+$43                                  ; $5701: $30 $41

    jr @+$32                                      ; $5703: $18 $30

    jr nc, jr_01b_574a                            ; $5705: $30 $43

    ld [de], a                                    ; $5707: $12
    jr nc, jr_01b_573a                            ; $5708: $30 $30

    ld b, e                                       ; $570a: $43
    inc c                                         ; $570b: $0c
    jr nc, jr_01b_5726                            ; $570c: $30 $18

    ld b, e                                       ; $570e: $43
    jr jr_01b_5741                                ; $570f: $18 $30

jr_01b_5711:
    jr jr_01b_575b                                ; $5711: $18 $48

    inc c                                         ; $5713: $0c
    jr nc, jr_01b_572e                            ; $5714: $30 $18

    ld c, b                                       ; $5716: $48
    inc h                                         ; $5717: $24
    jr nc, jr_01b_574a                            ; $5718: $30 $30

    ld c, b                                       ; $571a: $48
    inc c                                         ; $571b: $0c

jr_01b_571c:
    jr nc, @+$14                                  ; $571c: $30 $12

    ld c, b                                       ; $571e: $48
    ld b, $30                                     ; $571f: $06 $30
    ld b, $48                                     ; $5721: $06 $48
    ld b, $30                                     ; $5723: $06 $30

jr_01b_5725:
    inc c                                         ; $5725: $0c

jr_01b_5726:
    ld c, b                                       ; $5726: $48
    ld b, $30                                     ; $5727: $06 $30

jr_01b_5729:
    inc c                                         ; $5729: $0c

jr_01b_572a:
    ld c, b                                       ; $572a: $48
    jr jr_01b_575d                                ; $572b: $18 $30

jr_01b_572d:
    inc h                                         ; $572d: $24

jr_01b_572e:
    ld c, b                                       ; $572e: $48
    ld b, $30                                     ; $572f: $06 $30

jr_01b_5731:
    inc c                                         ; $5731: $0c
    ld c, b                                       ; $5732: $48
    ld [de], a                                    ; $5733: $12
    jr nc, jr_01b_574e                            ; $5734: $30 $18

    ld c, b                                       ; $5736: $48
    inc c                                         ; $5737: $0c
    jr nc, jr_01b_5752                            ; $5738: $30 $18

jr_01b_573a:
    ld c, b                                       ; $573a: $48
    jr jr_01b_576d                                ; $573b: $18 $30

    inc h                                         ; $573d: $24
    ld c, b                                       ; $573e: $48
    ld b, $30                                     ; $573f: $06 $30

jr_01b_5741:
    inc c                                         ; $5741: $0c
    ld c, b                                       ; $5742: $48
    jr @+$32                                      ; $5743: $18 $30

    inc h                                         ; $5745: $24
    ld c, b                                       ; $5746: $48
    inc c                                         ; $5747: $0c
    jr nc, jr_01b_5756                            ; $5748: $30 $0c

jr_01b_574a:
    ld b, e                                       ; $574a: $43
    ld e, $30                                     ; $574b: $1e $30
    inc h                                         ; $574d: $24

jr_01b_574e:
    ld b, e                                       ; $574e: $43
    ld b, $30                                     ; $574f: $06 $30
    inc c                                         ; $5751: $0c

jr_01b_5752:
    ld b, e                                       ; $5752: $43
    ld e, $30                                     ; $5753: $1e $30
    inc h                                         ; $5755: $24

jr_01b_5756:
    ld b, e                                       ; $5756: $43
    ld b, $30                                     ; $5757: $06 $30
    inc c                                         ; $5759: $0c
    ld b, e                                       ; $575a: $43

jr_01b_575b:
    ld e, $30                                     ; $575b: $1e $30

jr_01b_575d:
    inc h                                         ; $575d: $24
    ld b, e                                       ; $575e: $43
    ld b, $30                                     ; $575f: $06 $30
    inc c                                         ; $5761: $0c
    ld b, e                                       ; $5762: $43
    ld e, $30                                     ; $5763: $1e $30
    inc h                                         ; $5765: $24
    ld b, e                                       ; $5766: $43
    ld b, $30                                     ; $5767: $06 $30
    inc c                                         ; $5769: $0c
    ld b, e                                       ; $576a: $43
    ld e, $30                                     ; $576b: $1e $30

jr_01b_576d:
    inc h                                         ; $576d: $24
    ld b, e                                       ; $576e: $43
    ld b, $30                                     ; $576f: $06 $30
    inc c                                         ; $5771: $0c
    ld b, e                                       ; $5772: $43
    ld [de], a                                    ; $5773: $12
    jr nc, jr_01b_578e                            ; $5774: $30 $18

    ld b, e                                       ; $5776: $43
    ld b, $30                                     ; $5777: $06 $30
    inc c                                         ; $5779: $0c
    ld b, e                                       ; $577a: $43
    ld b, $30                                     ; $577b: $06 $30
    inc c                                         ; $577d: $0c
    ld b, e                                       ; $577e: $43
    ld e, $30                                     ; $577f: $1e $30
    inc h                                         ; $5781: $24
    ld b, e                                       ; $5782: $43
    ld b, $30                                     ; $5783: $06 $30
    inc c                                         ; $5785: $0c
    ld b, e                                       ; $5786: $43
    ld [de], a                                    ; $5787: $12
    jr nc, jr_01b_57a2                            ; $5788: $30 $18

    ld b, e                                       ; $578a: $43
    ld b, $30                                     ; $578b: $06 $30
    inc c                                         ; $578d: $0c

jr_01b_578e:
    ld b, e                                       ; $578e: $43
    ld b, $30                                     ; $578f: $06 $30
    inc c                                         ; $5791: $0c
    ld b, e                                       ; $5792: $43
    ld e, $30                                     ; $5793: $1e $30
    inc h                                         ; $5795: $24
    ld b, e                                       ; $5796: $43
    ld b, $30                                     ; $5797: $06 $30
    inc c                                         ; $5799: $0c
    ld b, e                                       ; $579a: $43
    jr jr_01b_57cd                                ; $579b: $18 $30

    inc h                                         ; $579d: $24
    ld b, e                                       ; $579e: $43
    ld b, $30                                     ; $579f: $06 $30
    inc c                                         ; $57a1: $0c

jr_01b_57a2:
    ld b, e                                       ; $57a2: $43
    jr jr_01b_57d5                                ; $57a3: $18 $30

    inc h                                         ; $57a5: $24
    ld b, e                                       ; $57a6: $43
    ld b, $30                                     ; $57a7: $06 $30
    inc c                                         ; $57a9: $0c
    ld b, e                                       ; $57aa: $43
    ld e, $30                                     ; $57ab: $1e $30
    inc h                                         ; $57ad: $24
    ld b, e                                       ; $57ae: $43
    ld b, $30                                     ; $57af: $06 $30
    inc c                                         ; $57b1: $0c
    ld b, e                                       ; $57b2: $43
    ld e, $30                                     ; $57b3: $1e $30
    inc h                                         ; $57b5: $24
    ld b, e                                       ; $57b6: $43
    inc c                                         ; $57b7: $0c
    jr nc, jr_01b_57c6                            ; $57b8: $30 $0c

    ld c, b                                       ; $57ba: $48
    inc h                                         ; $57bb: $24
    ldh a, [rP1]                                  ; $57bc: $f0 $00
    rst $38                                       ; $57be: $ff
    ldh a, [rP1]                                  ; $57bf: $f0 $00
    rst $38                                       ; $57c1: $ff

    db $7a, $7a, $7a, $7a

jr_01b_57c6:
    ld a, d                                       ; $57c6: $7a
    ld a, c                                       ; $57c7: $79
    add c                                         ; $57c8: $81
    ld [hl], c                                    ; $57c9: $71

    db $73

    add [hl]                                      ; $57cb: $86
    add l                                         ; $57cc: $85

jr_01b_57cd:
    add h                                         ; $57cd: $84
    add e                                         ; $57ce: $83
    ld a, h                                       ; $57cf: $7c
    ld a, a                                       ; $57d0: $7f
    ld a, d                                       ; $57d1: $7a
    ld [hl], d                                    ; $57d2: $72

    db $6e

    ld l, c                                       ; $57d4: $69

jr_01b_57d5:
    ld a, b                                       ; $57d5: $78
    ld [hl], a                                    ; $57d6: $77
    ld a, [hl]                                    ; $57d7: $7e
    ld [hl], h                                    ; $57d8: $74
    add c                                         ; $57d9: $81
    add d                                         ; $57da: $82

    db $80

    ld a, e                                       ; $57dc: $7b
    ld l, b                                       ; $57dd: $68
    nop                                           ; $57de: $00
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
    nop                                           ; $57e2: $00

    db $71

    nop                                           ; $57e4: $00
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    nop                                           ; $57e8: $00
    nop                                           ; $57e9: $00
    nop                                           ; $57ea: $00
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    nop                                           ; $57f2: $00
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    nop                                           ; $582d: $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    nop                                           ; $583b: $00
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00

    db $00, $06, $00, $36, $00, $80, $00, $0e, $00, $18, $00, $22, $00, $2c, $00, $00
    db $00, $09, $00, $fe

    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00

    db $00, $00, $01, $09, $00, $fe

    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00

    db $00, $00, $02, $09, $00, $fe

    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00

    db $00, $00, $03, $09, $00, $fe

    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00

    db $00, $40, $02, $fc, $05, $90, $08, $68

    add hl, bc                                    ; $5884: $09
    db $fc                                        ; $5885: $fc

    db $90, $00, $a4, $15, $0c, $80, $0c, $2b, $0c, $80, $0c, $30, $24, $80, $24, $2b
    db $0c, $80, $0c, $24, $10, $80, $0c, $2b, $0c, $80, $0c, $30, $26, $80, $24, $2b
    db $0c, $80, $0c, $24, $12, $80, $0c, $2b, $0c, $80, $0c, $30, $10, $80, $0c, $2b
    db $0c, $80, $0c, $24, $0f, $80, $0c, $2b, $0c, $80, $0c, $30, $24, $80, $24, $2b
    db $0e, $80, $0c, $24, $11, $80, $0c, $2b, $0c, $80, $0c, $30, $24, $70, $24, $2b
    db $0c, $70, $0c, $24, $0f, $70, $0c, $2b, $0c, $70, $0c, $30, $0f, $60, $0c, $2b
    db $0c, $80, $0c, $30, $06, $80, $0c, $33, $06, $80, $0c, $37, $06, $80, $0c, $36
    db $06, $80, $0c

    dec [hl]                                      ; $58f9: $35
    ld b, $80                                     ; $58fa: $06 $80
    inc c                                         ; $58fc: $0c
    jr c, jr_01b_5905                             ; $58fd: $38 $06

    add b                                         ; $58ff: $80
    inc c                                         ; $5900: $0c
    scf                                           ; $5901: $37
    ld b, $80                                     ; $5902: $06 $80
    inc c                                         ; $5904: $0c

jr_01b_5905:
    ld a, [hl-]                                   ; $5905: $3a
    ld b, $70                                     ; $5906: $06 $70
    inc c                                         ; $5908: $0c
    ld [hl-], a                                   ; $5909: $32
    ld b, $80                                     ; $590a: $06 $80
    inc c                                         ; $590c: $0c
    dec [hl]                                      ; $590d: $35
    ld b, $80                                     ; $590e: $06 $80
    inc c                                         ; $5910: $0c
    add hl, sp                                    ; $5911: $39
    ld b, $80                                     ; $5912: $06 $80
    inc c                                         ; $5914: $0c
    scf                                           ; $5915: $37
    ld b, $80                                     ; $5916: $06 $80
    inc c                                         ; $5918: $0c
    jr c, jr_01b_5921                             ; $5919: $38 $06

    ld [hl], b                                    ; $591b: $70
    inc c                                         ; $591c: $0c
    dec [hl]                                      ; $591d: $35
    inc c                                         ; $591e: $0c
    add b                                         ; $591f: $80
    inc c                                         ; $5920: $0c

jr_01b_5921:
    inc sp                                        ; $5921: $33
    ld b, $80                                     ; $5922: $06 $80
    inc c                                         ; $5924: $0c
    ld [hl-], a                                   ; $5925: $32
    ld b, $80                                     ; $5926: $06 $80
    inc c                                         ; $5928: $0c
    ld sp, $8006                                  ; $5929: $31 $06 $80
    inc c                                         ; $592c: $0c
    inc [hl]                                      ; $592d: $34
    ld b, $80                                     ; $592e: $06 $80
    inc c                                         ; $5930: $0c
    jr c, jr_01b_5939                             ; $5931: $38 $06

    add b                                         ; $5933: $80
    inc c                                         ; $5934: $0c
    scf                                           ; $5935: $37
    ld b, $80                                     ; $5936: $06 $80
    inc c                                         ; $5938: $0c

jr_01b_5939:
    ld [hl], $06                                  ; $5939: $36 $06
    add b                                         ; $593b: $80
    inc c                                         ; $593c: $0c
    add hl, sp                                    ; $593d: $39
    ld b, $80                                     ; $593e: $06 $80
    inc c                                         ; $5940: $0c
    jr c, jr_01b_5949                             ; $5941: $38 $06

    add b                                         ; $5943: $80
    inc c                                         ; $5944: $0c
    dec sp                                        ; $5945: $3b
    ld b, $70                                     ; $5946: $06 $70
    inc c                                         ; $5948: $0c

jr_01b_5949:
    inc sp                                        ; $5949: $33
    ld b, $80                                     ; $594a: $06 $80
    inc c                                         ; $594c: $0c
    ld [hl], $06                                  ; $594d: $36 $06
    add b                                         ; $594f: $80
    inc c                                         ; $5950: $0c
    ld a, [hl-]                                   ; $5951: $3a
    ld b, $80                                     ; $5952: $06 $80
    inc c                                         ; $5954: $0c
    jr c, jr_01b_595d                             ; $5955: $38 $06

    add b                                         ; $5957: $80
    inc c                                         ; $5958: $0c
    add hl, sp                                    ; $5959: $39
    ld b, $70                                     ; $595a: $06 $70
    inc c                                         ; $595c: $0c

jr_01b_595d:
    ld [hl], $0c                                  ; $595d: $36 $0c
    add b                                         ; $595f: $80
    inc c                                         ; $5960: $0c
    inc [hl]                                      ; $5961: $34
    ld b, $80                                     ; $5962: $06 $80
    inc c                                         ; $5964: $0c
    inc sp                                        ; $5965: $33
    ld b, $80                                     ; $5966: $06 $80
    inc c                                         ; $5968: $0c
    ld [hl-], a                                   ; $5969: $32
    inc c                                         ; $596a: $0c
    add b                                         ; $596b: $80
    inc c                                         ; $596c: $0c
    add hl, sp                                    ; $596d: $39
    ld b, $80                                     ; $596e: $06 $80
    jr jr_01b_59a4                                ; $5970: $18 $32

    ld b, $80                                     ; $5972: $06 $80
    ld b, $39                                     ; $5974: $06 $39
    ld b, $80                                     ; $5976: $06 $80
    ld b, $32                                     ; $5978: $06 $32
    inc c                                         ; $597a: $0c
    ld [hl], b                                    ; $597b: $70
    inc c                                         ; $597c: $0c
    add hl, sp                                    ; $597d: $39
    inc c                                         ; $597e: $0c
    ld [hl], b                                    ; $597f: $70
    inc c                                         ; $5980: $0c
    ld [hl-], a                                   ; $5981: $32
    inc c                                         ; $5982: $0c
    ld [hl], b                                    ; $5983: $70
    inc c                                         ; $5984: $0c
    add hl, sp                                    ; $5985: $39
    inc c                                         ; $5986: $0c
    ld [hl], b                                    ; $5987: $70
    inc c                                         ; $5988: $0c
    jr nc, @+$0e                                  ; $5989: $30 $0c

    ld [hl], b                                    ; $598b: $70
    inc c                                         ; $598c: $0c
    scf                                           ; $598d: $37
    ld b, $80                                     ; $598e: $06 $80
    jr jr_01b_59c2                                ; $5990: $18 $30

    ld b, $80                                     ; $5992: $06 $80
    ld b, $37                                     ; $5994: $06 $37
    ld b, $70                                     ; $5996: $06 $70
    ld b, $30                                     ; $5998: $06 $30
    inc c                                         ; $599a: $0c
    ld [hl], b                                    ; $599b: $70
    inc c                                         ; $599c: $0c
    scf                                           ; $599d: $37
    inc c                                         ; $599e: $0c
    ld [hl], b                                    ; $599f: $70
    inc c                                         ; $59a0: $0c
    jr nc, @+$0e                                  ; $59a1: $30 $0c

    ld [hl], b                                    ; $59a3: $70

jr_01b_59a4:
    inc c                                         ; $59a4: $0c
    ld [hl-], a                                   ; $59a5: $32
    inc c                                         ; $59a6: $0c
    add b                                         ; $59a7: $80
    inc c                                         ; $59a8: $0c
    inc sp                                        ; $59a9: $33
    ld [de], a                                    ; $59aa: $12
    ld [hl], b                                    ; $59ab: $70
    inc c                                         ; $59ac: $0c
    ld a, [hl-]                                   ; $59ad: $3a
    ld b, $70                                     ; $59ae: $06 $70
    jr jr_01b_59e5                                ; $59b0: $18 $33

    ld b, $70                                     ; $59b2: $06 $70
    ld b, $3a                                     ; $59b4: $06 $3a
    ld b, $70                                     ; $59b6: $06 $70
    ld b, $33                                     ; $59b8: $06 $33
    inc c                                         ; $59ba: $0c
    add b                                         ; $59bb: $80
    inc c                                         ; $59bc: $0c
    ld a, [hl-]                                   ; $59bd: $3a
    inc c                                         ; $59be: $0c
    ld [hl], b                                    ; $59bf: $70
    inc c                                         ; $59c0: $0c
    inc sp                                        ; $59c1: $33

jr_01b_59c2:
    inc c                                         ; $59c2: $0c
    add b                                         ; $59c3: $80
    inc c                                         ; $59c4: $0c
    ld a, [hl-]                                   ; $59c5: $3a
    ld b, $70                                     ; $59c6: $06 $70
    inc c                                         ; $59c8: $0c
    dec [hl]                                      ; $59c9: $35
    inc c                                         ; $59ca: $0c
    ld [hl], b                                    ; $59cb: $70
    inc c                                         ; $59cc: $0c
    jr nc, jr_01b_59d5                            ; $59cd: $30 $06

    ld [hl], b                                    ; $59cf: $70
    jr jr_01b_5a02                                ; $59d0: $18 $30

    inc c                                         ; $59d2: $0c
    ld h, b                                       ; $59d3: $60
    inc c                                         ; $59d4: $0c

jr_01b_59d5:
    dec [hl]                                      ; $59d5: $35
    inc c                                         ; $59d6: $0c
    ld [hl], b                                    ; $59d7: $70
    inc c                                         ; $59d8: $0c
    jr nc, @+$0e                                  ; $59d9: $30 $0c

    ld [hl], b                                    ; $59db: $70
    inc c                                         ; $59dc: $0c
    dec [hl]                                      ; $59dd: $35
    inc c                                         ; $59de: $0c
    ld [hl], b                                    ; $59df: $70
    inc c                                         ; $59e0: $0c
    inc sp                                        ; $59e1: $33
    inc c                                         ; $59e2: $0c
    add b                                         ; $59e3: $80
    inc c                                         ; $59e4: $0c

jr_01b_59e5:
    ld [hl-], a                                   ; $59e5: $32
    ld b, $80                                     ; $59e6: $06 $80
    inc c                                         ; $59e8: $0c
    dec [hl]                                      ; $59e9: $35
    ld b, $80                                     ; $59ea: $06 $80
    inc c                                         ; $59ec: $0c
    add hl, sp                                    ; $59ed: $39
    ld b, $80                                     ; $59ee: $06 $80
    inc c                                         ; $59f0: $0c
    jr c, jr_01b_59f9                             ; $59f1: $38 $06

    add b                                         ; $59f3: $80
    inc c                                         ; $59f4: $0c
    scf                                           ; $59f5: $37
    ld b, $80                                     ; $59f6: $06 $80
    inc c                                         ; $59f8: $0c

jr_01b_59f9:
    ld a, [hl-]                                   ; $59f9: $3a
    ld b, $80                                     ; $59fa: $06 $80
    inc c                                         ; $59fc: $0c
    add hl, sp                                    ; $59fd: $39
    ld b, $80                                     ; $59fe: $06 $80
    inc c                                         ; $5a00: $0c
    inc a                                         ; $5a01: $3c

jr_01b_5a02:
    ld b, $70                                     ; $5a02: $06 $70
    inc c                                         ; $5a04: $0c
    inc [hl]                                      ; $5a05: $34
    ld b, $80                                     ; $5a06: $06 $80
    inc c                                         ; $5a08: $0c
    scf                                           ; $5a09: $37
    ld b, $80                                     ; $5a0a: $06 $80
    inc c                                         ; $5a0c: $0c
    dec sp                                        ; $5a0d: $3b
    ld b, $80                                     ; $5a0e: $06 $80
    inc c                                         ; $5a10: $0c
    add hl, sp                                    ; $5a11: $39
    ld b, $80                                     ; $5a12: $06 $80
    inc c                                         ; $5a14: $0c
    ld a, [hl-]                                   ; $5a15: $3a
    ld b, $70                                     ; $5a16: $06 $70
    inc c                                         ; $5a18: $0c
    scf                                           ; $5a19: $37
    inc c                                         ; $5a1a: $0c
    add b                                         ; $5a1b: $80
    inc c                                         ; $5a1c: $0c
    dec [hl]                                      ; $5a1d: $35
    ld b, $80                                     ; $5a1e: $06 $80
    inc c                                         ; $5a20: $0c
    inc [hl]                                      ; $5a21: $34
    ld b, $80                                     ; $5a22: $06 $80
    inc c                                         ; $5a24: $0c
    inc sp                                        ; $5a25: $33
    ld b, $80                                     ; $5a26: $06 $80
    inc c                                         ; $5a28: $0c
    ld [hl], $06                                  ; $5a29: $36 $06
    add b                                         ; $5a2b: $80
    inc c                                         ; $5a2c: $0c
    ld a, [hl-]                                   ; $5a2d: $3a
    ld b, $80                                     ; $5a2e: $06 $80
    inc c                                         ; $5a30: $0c
    add hl, sp                                    ; $5a31: $39
    ld b, $80                                     ; $5a32: $06 $80
    inc c                                         ; $5a34: $0c
    jr c, jr_01b_5a3d                             ; $5a35: $38 $06

    add b                                         ; $5a37: $80
    inc c                                         ; $5a38: $0c
    dec sp                                        ; $5a39: $3b
    ld b, $80                                     ; $5a3a: $06 $80
    inc c                                         ; $5a3c: $0c

jr_01b_5a3d:
    ld a, [hl-]                                   ; $5a3d: $3a
    ld b, $80                                     ; $5a3e: $06 $80
    inc c                                         ; $5a40: $0c
    dec a                                         ; $5a41: $3d
    ld b, $70                                     ; $5a42: $06 $70
    inc c                                         ; $5a44: $0c
    dec [hl]                                      ; $5a45: $35
    ld b, $80                                     ; $5a46: $06 $80
    inc c                                         ; $5a48: $0c
    jr c, jr_01b_5a51                             ; $5a49: $38 $06

    add b                                         ; $5a4b: $80
    inc c                                         ; $5a4c: $0c
    inc a                                         ; $5a4d: $3c
    ld b, $80                                     ; $5a4e: $06 $80
    inc c                                         ; $5a50: $0c

jr_01b_5a51:
    ld a, [hl-]                                   ; $5a51: $3a
    ld b, $70                                     ; $5a52: $06 $70
    inc c                                         ; $5a54: $0c
    dec sp                                        ; $5a55: $3b
    ld b, $60                                     ; $5a56: $06 $60
    inc c                                         ; $5a58: $0c
    scf                                           ; $5a59: $37
    ld b, $70                                     ; $5a5a: $06 $70
    inc c                                         ; $5a5c: $0c
    dec [hl]                                      ; $5a5d: $35
    ld b, $70                                     ; $5a5e: $06 $70
    inc c                                         ; $5a60: $0c
    ld [hl-], a                                   ; $5a61: $32
    ld b, $80                                     ; $5a62: $06 $80
    inc c                                         ; $5a64: $0c
    inc [hl]                                      ; $5a65: $34
    inc c                                         ; $5a66: $0c
    add b                                         ; $5a67: $80
    inc c                                         ; $5a68: $0c
    dec sp                                        ; $5a69: $3b
    ld b, $80                                     ; $5a6a: $06 $80
    jr jr_01b_5aa2                                ; $5a6c: $18 $34

    ld b, $80                                     ; $5a6e: $06 $80
    ld b, $3b                                     ; $5a70: $06 $3b
    ld b, $80                                     ; $5a72: $06 $80
    ld b, $34                                     ; $5a74: $06 $34
    inc c                                         ; $5a76: $0c
    ld [hl], b                                    ; $5a77: $70
    inc c                                         ; $5a78: $0c
    dec sp                                        ; $5a79: $3b
    inc c                                         ; $5a7a: $0c
    ld [hl], b                                    ; $5a7b: $70
    inc c                                         ; $5a7c: $0c
    inc [hl]                                      ; $5a7d: $34
    inc c                                         ; $5a7e: $0c
    ld [hl], b                                    ; $5a7f: $70
    inc c                                         ; $5a80: $0c
    dec sp                                        ; $5a81: $3b
    inc c                                         ; $5a82: $0c
    ld [hl], b                                    ; $5a83: $70
    inc c                                         ; $5a84: $0c
    ld [hl-], a                                   ; $5a85: $32
    inc c                                         ; $5a86: $0c
    ld [hl], b                                    ; $5a87: $70
    inc c                                         ; $5a88: $0c
    add hl, sp                                    ; $5a89: $39
    ld b, $80                                     ; $5a8a: $06 $80
    jr jr_01b_5ac0                                ; $5a8c: $18 $32

    ld b, $80                                     ; $5a8e: $06 $80
    ld b, $39                                     ; $5a90: $06 $39
    ld b, $70                                     ; $5a92: $06 $70
    ld b, $32                                     ; $5a94: $06 $32
    inc c                                         ; $5a96: $0c
    ld [hl], b                                    ; $5a97: $70
    inc c                                         ; $5a98: $0c
    add hl, sp                                    ; $5a99: $39
    inc c                                         ; $5a9a: $0c
    ld [hl], b                                    ; $5a9b: $70
    inc c                                         ; $5a9c: $0c
    ld [hl-], a                                   ; $5a9d: $32
    inc c                                         ; $5a9e: $0c
    ld [hl], b                                    ; $5a9f: $70
    inc c                                         ; $5aa0: $0c
    inc [hl]                                      ; $5aa1: $34

jr_01b_5aa2:
    inc c                                         ; $5aa2: $0c
    add b                                         ; $5aa3: $80
    inc c                                         ; $5aa4: $0c
    dec [hl]                                      ; $5aa5: $35
    ld [de], a                                    ; $5aa6: $12
    ld [hl], b                                    ; $5aa7: $70
    inc c                                         ; $5aa8: $0c
    inc a                                         ; $5aa9: $3c
    ld b, $70                                     ; $5aaa: $06 $70
    jr jr_01b_5ae3                                ; $5aac: $18 $35

    ld b, $70                                     ; $5aae: $06 $70
    ld b, $3c                                     ; $5ab0: $06 $3c
    ld b, $70                                     ; $5ab2: $06 $70
    ld b, $35                                     ; $5ab4: $06 $35
    inc c                                         ; $5ab6: $0c
    add b                                         ; $5ab7: $80
    inc c                                         ; $5ab8: $0c
    inc a                                         ; $5ab9: $3c
    inc c                                         ; $5aba: $0c
    ld [hl], b                                    ; $5abb: $70
    inc c                                         ; $5abc: $0c
    dec [hl]                                      ; $5abd: $35
    inc c                                         ; $5abe: $0c
    add b                                         ; $5abf: $80

jr_01b_5ac0:
    inc c                                         ; $5ac0: $0c
    inc a                                         ; $5ac1: $3c
    ld b, $70                                     ; $5ac2: $06 $70
    inc c                                         ; $5ac4: $0c
    scf                                           ; $5ac5: $37
    inc c                                         ; $5ac6: $0c
    ld [hl], b                                    ; $5ac7: $70
    inc c                                         ; $5ac8: $0c
    ld [hl-], a                                   ; $5ac9: $32
    ld b, $70                                     ; $5aca: $06 $70
    jr jr_01b_5b00                                ; $5acc: $18 $32

    inc c                                         ; $5ace: $0c
    ld h, b                                       ; $5acf: $60
    inc c                                         ; $5ad0: $0c
    scf                                           ; $5ad1: $37
    inc c                                         ; $5ad2: $0c
    ld [hl], b                                    ; $5ad3: $70
    inc c                                         ; $5ad4: $0c
    ld [hl-], a                                   ; $5ad5: $32
    inc c                                         ; $5ad6: $0c
    ld [hl], b                                    ; $5ad7: $70
    inc c                                         ; $5ad8: $0c
    scf                                           ; $5ad9: $37
    inc c                                         ; $5ada: $0c
    ld [hl], b                                    ; $5adb: $70
    inc c                                         ; $5adc: $0c
    dec [hl]                                      ; $5add: $35
    inc c                                         ; $5ade: $0c
    sub b                                         ; $5adf: $90
    inc c                                         ; $5ae0: $0c
    inc h                                         ; $5ae1: $24
    inc c                                         ; $5ae2: $0c

jr_01b_5ae3:
    add b                                         ; $5ae3: $80
    inc c                                         ; $5ae4: $0c
    dec hl                                        ; $5ae5: $2b
    inc c                                         ; $5ae6: $0c
    add b                                         ; $5ae7: $80
    inc c                                         ; $5ae8: $0c
    jr nc, jr_01b_5b0f                            ; $5ae9: $30 $24

    add b                                         ; $5aeb: $80
    inc h                                         ; $5aec: $24
    dec hl                                        ; $5aed: $2b
    inc c                                         ; $5aee: $0c
    add b                                         ; $5aef: $80
    inc c                                         ; $5af0: $0c
    inc h                                         ; $5af1: $24
    db $10                                        ; $5af2: $10
    add b                                         ; $5af3: $80
    inc c                                         ; $5af4: $0c
    dec hl                                        ; $5af5: $2b
    inc c                                         ; $5af6: $0c
    add b                                         ; $5af7: $80
    inc c                                         ; $5af8: $0c
    jr nc, jr_01b_5b21                            ; $5af9: $30 $26

    add b                                         ; $5afb: $80
    inc h                                         ; $5afc: $24
    dec hl                                        ; $5afd: $2b
    inc c                                         ; $5afe: $0c
    add b                                         ; $5aff: $80

jr_01b_5b00:
    inc c                                         ; $5b00: $0c
    inc h                                         ; $5b01: $24
    ld [de], a                                    ; $5b02: $12
    add b                                         ; $5b03: $80
    inc c                                         ; $5b04: $0c
    dec hl                                        ; $5b05: $2b
    inc c                                         ; $5b06: $0c
    add b                                         ; $5b07: $80
    inc c                                         ; $5b08: $0c
    jr nc, jr_01b_5b1b                            ; $5b09: $30 $10

    add b                                         ; $5b0b: $80
    inc c                                         ; $5b0c: $0c
    dec hl                                        ; $5b0d: $2b
    inc c                                         ; $5b0e: $0c

jr_01b_5b0f:
    add b                                         ; $5b0f: $80
    inc c                                         ; $5b10: $0c
    inc h                                         ; $5b11: $24
    rrca                                          ; $5b12: $0f
    add b                                         ; $5b13: $80
    inc c                                         ; $5b14: $0c
    dec hl                                        ; $5b15: $2b
    inc c                                         ; $5b16: $0c
    add b                                         ; $5b17: $80
    inc c                                         ; $5b18: $0c
    jr nc, jr_01b_5b3f                            ; $5b19: $30 $24

jr_01b_5b1b:
    add b                                         ; $5b1b: $80
    inc h                                         ; $5b1c: $24
    dec hl                                        ; $5b1d: $2b
    ld c, $80                                     ; $5b1e: $0e $80
    inc c                                         ; $5b20: $0c

jr_01b_5b21:
    inc h                                         ; $5b21: $24
    ld de, $0c80                                  ; $5b22: $11 $80 $0c
    dec hl                                        ; $5b25: $2b
    inc c                                         ; $5b26: $0c
    add b                                         ; $5b27: $80
    inc c                                         ; $5b28: $0c
    jr nc, @+$26                                  ; $5b29: $30 $24

    ld [hl], b                                    ; $5b2b: $70
    inc h                                         ; $5b2c: $24
    dec hl                                        ; $5b2d: $2b
    inc c                                         ; $5b2e: $0c
    ld [hl], b                                    ; $5b2f: $70
    inc c                                         ; $5b30: $0c
    inc h                                         ; $5b31: $24
    rrca                                          ; $5b32: $0f
    ld [hl], b                                    ; $5b33: $70
    inc c                                         ; $5b34: $0c
    dec hl                                        ; $5b35: $2b
    inc c                                         ; $5b36: $0c
    ld [hl], b                                    ; $5b37: $70
    inc c                                         ; $5b38: $0c
    jr nc, @+$11                                  ; $5b39: $30 $0f

    ld h, b                                       ; $5b3b: $60
    inc c                                         ; $5b3c: $0c
    dec hl                                        ; $5b3d: $2b
    inc c                                         ; $5b3e: $0c

jr_01b_5b3f:
    ldh a, [rP1]                                  ; $5b3f: $f0 $00
    rst $38                                       ; $5b41: $ff

    db $80, $00, $b7, $04, $2a, $80, $30, $37, $2a, $70, $30, $37, $2a, $70, $30, $37
    db $12, $70, $18, $37, $18, $70, $18, $3c, $06, $70, $0c, $3c, $0c, $70, $0c, $3a
    db $06, $70, $0c, $3a, $0c, $70, $0c, $38, $0c, $70, $0c, $38, $0c, $70, $12, $37
    db $06, $70, $06, $37, $0c, $70, $0c, $35, $0c, $70, $0c, $33, $0c, $70, $0c, $35
    db $0c, $70, $0c, $37, $0c, $70, $0c, $38, $0c, $70, $0c, $35, $0c, $70, $0c, $32
    db $18, $80, $18, $30, $0c, $80, $0c, $33, $0c, $70, $0c, $37, $0c, $80, $0c, $36
    db $0c, $80, $0c

    dec [hl]                                      ; $5ba5: $35
    inc c                                         ; $5ba6: $0c
    add b                                         ; $5ba7: $80

jr_01b_5ba8:
    inc c                                         ; $5ba8: $0c
    jr c, jr_01b_5bb7                             ; $5ba9: $38 $0c

    add b                                         ; $5bab: $80
    inc c                                         ; $5bac: $0c
    scf                                           ; $5bad: $37
    inc c                                         ; $5bae: $0c
    add b                                         ; $5baf: $80
    inc c                                         ; $5bb0: $0c
    ld a, [hl-]                                   ; $5bb1: $3a
    inc c                                         ; $5bb2: $0c
    ld h, b                                       ; $5bb3: $60
    inc c                                         ; $5bb4: $0c
    ld [hl-], a                                   ; $5bb5: $32
    inc c                                         ; $5bb6: $0c

jr_01b_5bb7:
    ld [hl], b                                    ; $5bb7: $70

jr_01b_5bb8:
    inc c                                         ; $5bb8: $0c
    dec [hl]                                      ; $5bb9: $35
    inc c                                         ; $5bba: $0c
    ld [hl], b                                    ; $5bbb: $70
    inc c                                         ; $5bbc: $0c
    add hl, sp                                    ; $5bbd: $39
    inc c                                         ; $5bbe: $0c
    add b                                         ; $5bbf: $80
    inc c                                         ; $5bc0: $0c
    scf                                           ; $5bc1: $37
    inc c                                         ; $5bc2: $0c
    add b                                         ; $5bc3: $80
    inc c                                         ; $5bc4: $0c
    jr c, jr_01b_5bd3                             ; $5bc5: $38 $0c

    ld h, b                                       ; $5bc7: $60
    inc c                                         ; $5bc8: $0c
    dec [hl]                                      ; $5bc9: $35
    inc c                                         ; $5bca: $0c
    add b                                         ; $5bcb: $80
    inc c                                         ; $5bcc: $0c
    inc sp                                        ; $5bcd: $33
    inc c                                         ; $5bce: $0c
    ld [hl], b                                    ; $5bcf: $70
    inc c                                         ; $5bd0: $0c
    ld [hl-], a                                   ; $5bd1: $32
    inc c                                         ; $5bd2: $0c

jr_01b_5bd3:
    add b                                         ; $5bd3: $80
    inc c                                         ; $5bd4: $0c
    ld sp, $800c                                  ; $5bd5: $31 $0c $80
    inc c                                         ; $5bd8: $0c
    inc [hl]                                      ; $5bd9: $34
    inc c                                         ; $5bda: $0c
    ld [hl], b                                    ; $5bdb: $70
    inc c                                         ; $5bdc: $0c
    jr c, jr_01b_5beb                             ; $5bdd: $38 $0c

    add b                                         ; $5bdf: $80
    inc c                                         ; $5be0: $0c
    scf                                           ; $5be1: $37
    inc c                                         ; $5be2: $0c
    add b                                         ; $5be3: $80
    inc c                                         ; $5be4: $0c
    ld [hl], $0c                                  ; $5be5: $36 $0c
    add b                                         ; $5be7: $80
    inc c                                         ; $5be8: $0c
    add hl, sp                                    ; $5be9: $39
    inc c                                         ; $5bea: $0c

jr_01b_5beb:
    add b                                         ; $5beb: $80
    inc c                                         ; $5bec: $0c
    jr c, jr_01b_5bfb                             ; $5bed: $38 $0c

    add b                                         ; $5bef: $80
    inc c                                         ; $5bf0: $0c
    dec sp                                        ; $5bf1: $3b
    inc c                                         ; $5bf2: $0c
    ld h, b                                       ; $5bf3: $60
    inc c                                         ; $5bf4: $0c
    inc sp                                        ; $5bf5: $33
    inc c                                         ; $5bf6: $0c
    ld [hl], b                                    ; $5bf7: $70
    inc c                                         ; $5bf8: $0c
    ld [hl], $0c                                  ; $5bf9: $36 $0c

jr_01b_5bfb:
    ld [hl], b                                    ; $5bfb: $70

jr_01b_5bfc:
    inc c                                         ; $5bfc: $0c
    ld a, [hl-]                                   ; $5bfd: $3a
    inc c                                         ; $5bfe: $0c
    add b                                         ; $5bff: $80
    inc c                                         ; $5c00: $0c
    jr c, jr_01b_5c0f                             ; $5c01: $38 $0c

    add b                                         ; $5c03: $80
    inc c                                         ; $5c04: $0c
    add hl, sp                                    ; $5c05: $39
    inc c                                         ; $5c06: $0c
    ld h, b                                       ; $5c07: $60
    inc c                                         ; $5c08: $0c
    ld [hl], $0c                                  ; $5c09: $36 $0c
    add b                                         ; $5c0b: $80
    inc c                                         ; $5c0c: $0c
    inc [hl]                                      ; $5c0d: $34
    inc c                                         ; $5c0e: $0c

jr_01b_5c0f:
    ld [hl], b                                    ; $5c0f: $70
    inc c                                         ; $5c10: $0c
    inc sp                                        ; $5c11: $33
    inc c                                         ; $5c12: $0c
    ld h, b                                       ; $5c13: $60
    inc c                                         ; $5c14: $0c
    ld c, d                                       ; $5c15: $4a
    jr jr_01b_5bb8                                ; $5c16: $18 $a0

    jr jr_01b_5c58                                ; $5c18: $18 $3e

    inc c                                         ; $5c1a: $0c
    ld h, b                                       ; $5c1b: $60
    inc c                                         ; $5c1c: $0c
    ld b, c                                       ; $5c1d: $41
    inc c                                         ; $5c1e: $0c
    ld h, b                                       ; $5c1f: $60
    inc c                                         ; $5c20: $0c
    ld b, [hl]                                    ; $5c21: $46
    jr jr_01b_5c84                                ; $5c22: $18 $60

    jr jr_01b_5c6b                                ; $5c24: $18 $45

    jr jr_01b_5ba8                                ; $5c26: $18 $80

    jr jr_01b_5c6d                                ; $5c28: $18 $43

    ld [de], a                                    ; $5c2a: $12
    ld [hl], b                                    ; $5c2b: $70
    ld [de], a                                    ; $5c2c: $12
    ld b, c                                       ; $5c2d: $41
    ld b, $90                                     ; $5c2e: $06 $90
    ld b, $43                                     ; $5c30: $06 $43
    ld b, $70                                     ; $5c32: $06 $70
    ld b, $41                                     ; $5c34: $06 $41
    ld b, $80                                     ; $5c36: $06 $80
    ld b, $43                                     ; $5c38: $06 $43
    ld b, $80                                     ; $5c3a: $06 $80
    ld b, $41                                     ; $5c3c: $06 $41
    ld b, $90                                     ; $5c3e: $06 $90
    ld b, $43                                     ; $5c40: $06 $43
    ld b, $90                                     ; $5c42: $06 $90
    ld b, $3f                                     ; $5c44: $06 $3f
    ld b, $90                                     ; $5c46: $06 $90
    ld b, $3c                                     ; $5c48: $06 $3c
    ld b, $80                                     ; $5c4a: $06 $80
    ld b, $37                                     ; $5c4c: $06 $37
    ld b, $90                                     ; $5c4e: $06 $90
    ld b, $3c                                     ; $5c50: $06 $3c
    inc c                                         ; $5c52: $0c
    and b                                         ; $5c53: $a0
    inc c                                         ; $5c54: $0c
    ld a, $0c                                     ; $5c55: $3e $0c
    add b                                         ; $5c57: $80

jr_01b_5c58:
    inc c                                         ; $5c58: $0c
    ccf                                           ; $5c59: $3f
    inc h                                         ; $5c5a: $24
    add b                                         ; $5c5b: $80
    inc h                                         ; $5c5c: $24
    ld b, c                                       ; $5c5d: $41
    ld b, $80                                     ; $5c5e: $06 $80
    ld b, $43                                     ; $5c60: $06 $43
    ld b, $a0                                     ; $5c62: $06 $a0
    ld b, $44                                     ; $5c64: $06 $44
    inc c                                         ; $5c66: $0c
    sub b                                         ; $5c67: $90
    inc c                                         ; $5c68: $0c
    ld b, e                                       ; $5c69: $43
    inc c                                         ; $5c6a: $0c

jr_01b_5c6b:
    ld [hl], b                                    ; $5c6b: $70
    inc c                                         ; $5c6c: $0c

jr_01b_5c6d:
    ld b, c                                       ; $5c6d: $41
    inc c                                         ; $5c6e: $0c
    ld h, b                                       ; $5c6f: $60
    inc c                                         ; $5c70: $0c
    ccf                                           ; $5c71: $3f
    inc c                                         ; $5c72: $0c
    add b                                         ; $5c73: $80
    inc c                                         ; $5c74: $0c
    ld b, c                                       ; $5c75: $41
    inc c                                         ; $5c76: $0c
    add b                                         ; $5c77: $80
    inc c                                         ; $5c78: $0c
    ld b, l                                       ; $5c79: $45
    jr jr_01b_5bfc                                ; $5c7a: $18 $80

    jr jr_01b_5cc1                                ; $5c7c: $18 $43

    inc c                                         ; $5c7e: $0c
    add b                                         ; $5c7f: $80
    inc c                                         ; $5c80: $0c
    ld b, c                                       ; $5c81: $41
    inc c                                         ; $5c82: $0c
    and b                                         ; $5c83: $a0

jr_01b_5c84:
    inc c                                         ; $5c84: $0c
    inc a                                         ; $5c85: $3c
    inc c                                         ; $5c86: $0c
    and b                                         ; $5c87: $a0
    inc c                                         ; $5c88: $0c
    inc a                                         ; $5c89: $3c
    ld b, $a0                                     ; $5c8a: $06 $a0
    ld b, $3b                                     ; $5c8c: $06 $3b
    ld b, $90                                     ; $5c8e: $06 $90
    ld b, $3c                                     ; $5c90: $06 $3c
    ld b, $a0                                     ; $5c92: $06 $a0
    ld b, $3f                                     ; $5c94: $06 $3f
    ld b, $80                                     ; $5c96: $06 $80
    ld b, $32                                     ; $5c98: $06 $32
    inc c                                         ; $5c9a: $0c
    add b                                         ; $5c9b: $80
    inc c                                         ; $5c9c: $0c
    dec [hl]                                      ; $5c9d: $35
    inc c                                         ; $5c9e: $0c
    ld [hl], b                                    ; $5c9f: $70
    inc c                                         ; $5ca0: $0c
    add hl, sp                                    ; $5ca1: $39
    inc c                                         ; $5ca2: $0c
    add b                                         ; $5ca3: $80
    inc c                                         ; $5ca4: $0c
    jr c, jr_01b_5cb3                             ; $5ca5: $38 $0c

    add b                                         ; $5ca7: $80
    inc c                                         ; $5ca8: $0c
    scf                                           ; $5ca9: $37
    inc c                                         ; $5caa: $0c
    add b                                         ; $5cab: $80
    inc c                                         ; $5cac: $0c
    ld a, [hl-]                                   ; $5cad: $3a
    inc c                                         ; $5cae: $0c
    add b                                         ; $5caf: $80
    inc c                                         ; $5cb0: $0c
    add hl, sp                                    ; $5cb1: $39
    inc c                                         ; $5cb2: $0c

jr_01b_5cb3:
    add b                                         ; $5cb3: $80
    inc c                                         ; $5cb4: $0c
    inc a                                         ; $5cb5: $3c
    inc c                                         ; $5cb6: $0c
    ld h, b                                       ; $5cb7: $60
    inc c                                         ; $5cb8: $0c
    inc [hl]                                      ; $5cb9: $34
    inc c                                         ; $5cba: $0c
    ld [hl], b                                    ; $5cbb: $70
    inc c                                         ; $5cbc: $0c
    scf                                           ; $5cbd: $37
    inc c                                         ; $5cbe: $0c
    ld [hl], b                                    ; $5cbf: $70
    inc c                                         ; $5cc0: $0c

jr_01b_5cc1:
    dec sp                                        ; $5cc1: $3b
    inc c                                         ; $5cc2: $0c
    add b                                         ; $5cc3: $80
    inc c                                         ; $5cc4: $0c
    add hl, sp                                    ; $5cc5: $39
    inc c                                         ; $5cc6: $0c
    add b                                         ; $5cc7: $80
    inc c                                         ; $5cc8: $0c
    ld a, [hl-]                                   ; $5cc9: $3a
    inc c                                         ; $5cca: $0c
    ld h, b                                       ; $5ccb: $60
    inc c                                         ; $5ccc: $0c
    scf                                           ; $5ccd: $37
    inc c                                         ; $5cce: $0c
    add b                                         ; $5ccf: $80
    inc c                                         ; $5cd0: $0c
    dec [hl]                                      ; $5cd1: $35
    inc c                                         ; $5cd2: $0c
    ld [hl], b                                    ; $5cd3: $70
    inc c                                         ; $5cd4: $0c
    inc [hl]                                      ; $5cd5: $34
    inc c                                         ; $5cd6: $0c
    add b                                         ; $5cd7: $80
    inc c                                         ; $5cd8: $0c
    inc sp                                        ; $5cd9: $33
    inc c                                         ; $5cda: $0c
    add b                                         ; $5cdb: $80
    inc c                                         ; $5cdc: $0c
    ld [hl], $0c                                  ; $5cdd: $36 $0c
    ld [hl], b                                    ; $5cdf: $70

jr_01b_5ce0:
    inc c                                         ; $5ce0: $0c
    ld a, [hl-]                                   ; $5ce1: $3a
    inc c                                         ; $5ce2: $0c
    add b                                         ; $5ce3: $80

jr_01b_5ce4:
    inc c                                         ; $5ce4: $0c
    add hl, sp                                    ; $5ce5: $39
    inc c                                         ; $5ce6: $0c
    add b                                         ; $5ce7: $80
    inc c                                         ; $5ce8: $0c
    jr c, jr_01b_5cf7                             ; $5ce9: $38 $0c

    add b                                         ; $5ceb: $80

jr_01b_5cec:
    inc c                                         ; $5cec: $0c
    dec sp                                        ; $5ced: $3b
    inc c                                         ; $5cee: $0c
    add b                                         ; $5cef: $80
    inc c                                         ; $5cf0: $0c
    ld a, [hl-]                                   ; $5cf1: $3a
    inc c                                         ; $5cf2: $0c
    add b                                         ; $5cf3: $80
    inc c                                         ; $5cf4: $0c
    dec a                                         ; $5cf5: $3d
    inc c                                         ; $5cf6: $0c

jr_01b_5cf7:
    ld h, b                                       ; $5cf7: $60
    inc c                                         ; $5cf8: $0c
    dec [hl]                                      ; $5cf9: $35
    inc c                                         ; $5cfa: $0c
    ld [hl], b                                    ; $5cfb: $70
    inc c                                         ; $5cfc: $0c
    jr c, jr_01b_5d0b                             ; $5cfd: $38 $0c

    ld [hl], b                                    ; $5cff: $70
    inc c                                         ; $5d00: $0c
    inc a                                         ; $5d01: $3c
    inc c                                         ; $5d02: $0c
    add b                                         ; $5d03: $80
    inc c                                         ; $5d04: $0c
    ld a, [hl-]                                   ; $5d05: $3a
    inc c                                         ; $5d06: $0c
    add b                                         ; $5d07: $80
    inc c                                         ; $5d08: $0c
    dec sp                                        ; $5d09: $3b
    inc c                                         ; $5d0a: $0c

jr_01b_5d0b:
    ld h, b                                       ; $5d0b: $60
    inc c                                         ; $5d0c: $0c
    scf                                           ; $5d0d: $37
    inc c                                         ; $5d0e: $0c
    add b                                         ; $5d0f: $80
    inc c                                         ; $5d10: $0c
    dec [hl]                                      ; $5d11: $35
    inc c                                         ; $5d12: $0c
    ld [hl], b                                    ; $5d13: $70
    inc c                                         ; $5d14: $0c
    ld [hl-], a                                   ; $5d15: $32
    inc c                                         ; $5d16: $0c
    add b                                         ; $5d17: $80
    inc c                                         ; $5d18: $0c
    ld b, a                                       ; $5d19: $47
    jr jr_01b_5d7c                                ; $5d1a: $18 $60

    jr @+$45                                      ; $5d1c: $18 $43

    ld b, $70                                     ; $5d1e: $06 $70
    ld b, $42                                     ; $5d20: $06 $42
    ld b, $60                                     ; $5d22: $06 $60
    ld b, $40                                     ; $5d24: $06 $40
    ld b, $80                                     ; $5d26: $06 $80
    ld b, $42                                     ; $5d28: $06 $42
    ld b, $70                                     ; $5d2a: $06 $70
    ld b, $43                                     ; $5d2c: $06 $43
    jr jr_01b_5d90                                ; $5d2e: $18 $60

    jr jr_01b_5d74                                ; $5d30: $18 $42

    ld [de], a                                    ; $5d32: $12
    ld h, b                                       ; $5d33: $60
    ld [de], a                                    ; $5d34: $12
    ld b, e                                       ; $5d35: $43
    ld b, $70                                     ; $5d36: $06 $70
    ld b, $45                                     ; $5d38: $06 $45
    ld a, [hl+]                                   ; $5d3a: $2a
    sub b                                         ; $5d3b: $90
    jr nc, jr_01b_5d77                            ; $5d3c: $30 $39

    inc c                                         ; $5d3e: $0c
    sub b                                         ; $5d3f: $90
    inc c                                         ; $5d40: $0c
    dec [hl]                                      ; $5d41: $35
    inc c                                         ; $5d42: $0c
    sub b                                         ; $5d43: $90
    inc c                                         ; $5d44: $0c
    ld [hl-], a                                   ; $5d45: $32
    inc c                                         ; $5d46: $0c
    sub b                                         ; $5d47: $90
    inc c                                         ; $5d48: $0c
    dec [hl]                                      ; $5d49: $35
    inc c                                         ; $5d4a: $0c
    add b                                         ; $5d4b: $80
    inc c                                         ; $5d4c: $0c
    ld c, b                                       ; $5d4d: $48
    jr jr_01b_5ce0                                ; $5d4e: $18 $90

    jr jr_01b_5d93                                ; $5d50: $18 $41

    ld b, $80                                     ; $5d52: $06 $80
    ld b, $40                                     ; $5d54: $06 $40
    ld b, $90                                     ; $5d56: $06 $90
    ld b, $41                                     ; $5d58: $06 $41
    ld b, $80                                     ; $5d5a: $06 $80
    ld b, $43                                     ; $5d5c: $06 $43
    ld b, $90                                     ; $5d5e: $06 $90
    ld b, $45                                     ; $5d60: $06 $45
    jr jr_01b_5ce4                                ; $5d62: $18 $80

    jr @+$4a                                      ; $5d64: $18 $48

    ld [de], a                                    ; $5d66: $12
    ld [hl], b                                    ; $5d67: $70
    jr jr_01b_5db1                                ; $5d68: $18 $47

    jr jr_01b_5cec                                ; $5d6a: $18 $80

    jr jr_01b_5db1                                ; $5d6c: $18 $43

    inc c                                         ; $5d6e: $0c
    ld h, b                                       ; $5d6f: $60
    inc c                                         ; $5d70: $0c
    ld b, c                                       ; $5d71: $41
    inc c                                         ; $5d72: $0c
    ld h, b                                       ; $5d73: $60

jr_01b_5d74:
    inc c                                         ; $5d74: $0c
    ld a, $0c                                     ; $5d75: $3e $0c

jr_01b_5d77:
    ld h, b                                       ; $5d77: $60
    inc c                                         ; $5d78: $0c
    dec sp                                        ; $5d79: $3b
    inc c                                         ; $5d7a: $0c
    ld h, b                                       ; $5d7b: $60

jr_01b_5d7c:
    inc c                                         ; $5d7c: $0c
    scf                                           ; $5d7d: $37
    ld [de], a                                    ; $5d7e: $12
    ld [hl], b                                    ; $5d7f: $70
    ld [de], a                                    ; $5d80: $12
    dec [hl]                                      ; $5d81: $35
    ld b, $80                                     ; $5d82: $06 $80
    ld b, $37                                     ; $5d84: $06 $37
    ld a, [hl+]                                   ; $5d86: $2a
    add b                                         ; $5d87: $80
    jr nc, jr_01b_5dc1                            ; $5d88: $30 $37

    ld a, [hl+]                                   ; $5d8a: $2a
    ld [hl], b                                    ; $5d8b: $70
    jr nc, jr_01b_5dc5                            ; $5d8c: $30 $37

    ld a, [hl+]                                   ; $5d8e: $2a
    ld [hl], b                                    ; $5d8f: $70

jr_01b_5d90:
    jr nc, jr_01b_5dc9                            ; $5d90: $30 $37

    ld [de], a                                    ; $5d92: $12

jr_01b_5d93:
    ld [hl], b                                    ; $5d93: $70
    jr jr_01b_5dcd                                ; $5d94: $18 $37

    jr @+$72                                      ; $5d96: $18 $70

    jr @+$3e                                      ; $5d98: $18 $3c

    ld b, $70                                     ; $5d9a: $06 $70
    inc c                                         ; $5d9c: $0c
    inc a                                         ; $5d9d: $3c
    inc c                                         ; $5d9e: $0c
    ld [hl], b                                    ; $5d9f: $70
    inc c                                         ; $5da0: $0c
    ld a, [hl-]                                   ; $5da1: $3a
    ld b, $70                                     ; $5da2: $06 $70
    inc c                                         ; $5da4: $0c
    ld a, [hl-]                                   ; $5da5: $3a
    inc c                                         ; $5da6: $0c
    ld [hl], b                                    ; $5da7: $70
    inc c                                         ; $5da8: $0c
    jr c, jr_01b_5db7                             ; $5da9: $38 $0c

    ld [hl], b                                    ; $5dab: $70
    inc c                                         ; $5dac: $0c
    jr c, jr_01b_5dbb                             ; $5dad: $38 $0c

    ld [hl], b                                    ; $5daf: $70
    ld [de], a                                    ; $5db0: $12

jr_01b_5db1:
    scf                                           ; $5db1: $37
    ld b, $70                                     ; $5db2: $06 $70
    ld b, $37                                     ; $5db4: $06 $37
    inc c                                         ; $5db6: $0c

jr_01b_5db7:
    ld [hl], b                                    ; $5db7: $70
    inc c                                         ; $5db8: $0c
    dec [hl]                                      ; $5db9: $35
    inc c                                         ; $5dba: $0c

jr_01b_5dbb:
    ld [hl], b                                    ; $5dbb: $70
    inc c                                         ; $5dbc: $0c
    inc sp                                        ; $5dbd: $33
    inc c                                         ; $5dbe: $0c
    ld [hl], b                                    ; $5dbf: $70
    inc c                                         ; $5dc0: $0c

jr_01b_5dc1:
    dec [hl]                                      ; $5dc1: $35
    inc c                                         ; $5dc2: $0c
    ld [hl], b                                    ; $5dc3: $70

jr_01b_5dc4:
    inc c                                         ; $5dc4: $0c

jr_01b_5dc5:
    scf                                           ; $5dc5: $37
    inc c                                         ; $5dc6: $0c
    ld [hl], b                                    ; $5dc7: $70
    inc c                                         ; $5dc8: $0c

jr_01b_5dc9:
    jr c, @+$0e                                   ; $5dc9: $38 $0c

    ld [hl], b                                    ; $5dcb: $70
    inc c                                         ; $5dcc: $0c

jr_01b_5dcd:
    dec [hl]                                      ; $5dcd: $35
    inc c                                         ; $5dce: $0c
    ld [hl], b                                    ; $5dcf: $70
    inc c                                         ; $5dd0: $0c
    ld [hl-], a                                   ; $5dd1: $32
    jr jr_01b_5dc4                                ; $5dd2: $18 $f0

    nop                                           ; $5dd4: $00
    rst $38                                       ; $5dd5: $ff

    db $70, $00, $c8, $0d, $06, $70, $18, $48, $06, $60, $0c, $48, $06, $70, $0c, $48
    db $06, $60, $12, $48, $06, $60, $06, $48, $06, $60, $0c, $48, $06, $60, $0c, $48
    db $06, $60, $18, $48, $06, $70, $18, $48, $06, $70, $0c, $4a, $06, $70, $0c, $4b
    db $06, $70, $0c, $4a, $06, $70, $0c, $48, $06, $60, $18, $48, $06, $60, $0c, $48
    db $06, $70, $0c, $48, $06, $70, $12, $48, $06, $60, $06, $48, $06, $70, $0c, $48
    db $06, $70, $0c, $48, $06, $60, $0c, $4a, $06, $50, $0c, $4b, $06, $70, $0c, $4a
    db $06, $70, $0c, $48, $06, $70, $18, $48, $06, $60, $18, $37, $0c, $60, $0c, $3a
    db $0c, $50, $0c, $3e, $0c, $60, $0c, $3d, $0c, $60, $0c

    inc a                                         ; $5e51: $3c
    inc c                                         ; $5e52: $0c
    ld h, b                                       ; $5e53: $60
    inc c                                         ; $5e54: $0c
    ccf                                           ; $5e55: $3f
    inc c                                         ; $5e56: $0c
    ld h, b                                       ; $5e57: $60
    inc c                                         ; $5e58: $0c
    ld a, $0c                                     ; $5e59: $3e $0c
    ld h, b                                       ; $5e5b: $60
    inc c                                         ; $5e5c: $0c
    ld b, c                                       ; $5e5d: $41
    inc c                                         ; $5e5e: $0c
    ld d, b                                       ; $5e5f: $50
    inc c                                         ; $5e60: $0c
    add hl, sp                                    ; $5e61: $39
    inc c                                         ; $5e62: $0c
    ld d, b                                       ; $5e63: $50
    inc c                                         ; $5e64: $0c
    inc a                                         ; $5e65: $3c
    inc c                                         ; $5e66: $0c
    ld h, b                                       ; $5e67: $60
    inc c                                         ; $5e68: $0c
    ld b, b                                       ; $5e69: $40
    inc c                                         ; $5e6a: $0c
    ld h, b                                       ; $5e6b: $60
    inc c                                         ; $5e6c: $0c
    ld a, $0c                                     ; $5e6d: $3e $0c
    ld h, b                                       ; $5e6f: $60
    inc c                                         ; $5e70: $0c
    ccf                                           ; $5e71: $3f
    inc c                                         ; $5e72: $0c
    ld d, b                                       ; $5e73: $50
    inc c                                         ; $5e74: $0c
    inc a                                         ; $5e75: $3c
    inc c                                         ; $5e76: $0c
    ld h, b                                       ; $5e77: $60
    inc c                                         ; $5e78: $0c
    ld a, [hl-]                                   ; $5e79: $3a
    inc c                                         ; $5e7a: $0c
    ld h, b                                       ; $5e7b: $60
    inc c                                         ; $5e7c: $0c
    add hl, sp                                    ; $5e7d: $39
    inc c                                         ; $5e7e: $0c
    ld h, b                                       ; $5e7f: $60
    inc c                                         ; $5e80: $0c
    jr c, jr_01b_5e8f                             ; $5e81: $38 $0c

    ld h, b                                       ; $5e83: $60
    inc c                                         ; $5e84: $0c
    dec sp                                        ; $5e85: $3b
    inc c                                         ; $5e86: $0c
    ld d, b                                       ; $5e87: $50
    inc c                                         ; $5e88: $0c
    ccf                                           ; $5e89: $3f
    inc c                                         ; $5e8a: $0c
    ld h, b                                       ; $5e8b: $60
    inc c                                         ; $5e8c: $0c
    ld a, $0c                                     ; $5e8d: $3e $0c

jr_01b_5e8f:
    ld h, b                                       ; $5e8f: $60
    inc c                                         ; $5e90: $0c
    dec a                                         ; $5e91: $3d
    inc c                                         ; $5e92: $0c
    ld h, b                                       ; $5e93: $60
    inc c                                         ; $5e94: $0c
    ld b, b                                       ; $5e95: $40
    inc c                                         ; $5e96: $0c
    ld h, b                                       ; $5e97: $60
    inc c                                         ; $5e98: $0c
    ccf                                           ; $5e99: $3f
    inc c                                         ; $5e9a: $0c
    ld h, b                                       ; $5e9b: $60
    inc c                                         ; $5e9c: $0c
    ld b, d                                       ; $5e9d: $42
    inc c                                         ; $5e9e: $0c
    ld d, b                                       ; $5e9f: $50
    inc c                                         ; $5ea0: $0c
    ld a, [hl-]                                   ; $5ea1: $3a
    inc c                                         ; $5ea2: $0c
    ld d, b                                       ; $5ea3: $50
    inc c                                         ; $5ea4: $0c
    dec a                                         ; $5ea5: $3d
    inc c                                         ; $5ea6: $0c
    ld h, b                                       ; $5ea7: $60
    inc c                                         ; $5ea8: $0c
    ld b, c                                       ; $5ea9: $41
    inc c                                         ; $5eaa: $0c
    ld h, b                                       ; $5eab: $60
    inc c                                         ; $5eac: $0c
    ccf                                           ; $5ead: $3f
    inc c                                         ; $5eae: $0c
    ld h, b                                       ; $5eaf: $60
    inc c                                         ; $5eb0: $0c
    ld b, b                                       ; $5eb1: $40
    inc c                                         ; $5eb2: $0c
    ld d, b                                       ; $5eb3: $50
    inc c                                         ; $5eb4: $0c
    dec a                                         ; $5eb5: $3d
    inc c                                         ; $5eb6: $0c
    ld h, b                                       ; $5eb7: $60
    inc c                                         ; $5eb8: $0c
    dec sp                                        ; $5eb9: $3b
    inc c                                         ; $5eba: $0c
    ld h, b                                       ; $5ebb: $60
    inc c                                         ; $5ebc: $0c
    ld a, [hl-]                                   ; $5ebd: $3a
    inc c                                         ; $5ebe: $0c
    ld h, b                                       ; $5ebf: $60
    inc c                                         ; $5ec0: $0c
    ld c, l                                       ; $5ec1: $4d
    inc c                                         ; $5ec2: $0c
    ld d, b                                       ; $5ec3: $50
    inc c                                         ; $5ec4: $0c
    ld b, l                                       ; $5ec5: $45
    inc c                                         ; $5ec6: $0c
    ld d, b                                       ; $5ec7: $50
    inc c                                         ; $5ec8: $0c
    ld c, d                                       ; $5ec9: $4a
    inc c                                         ; $5eca: $0c
    ld d, b                                       ; $5ecb: $50
    inc c                                         ; $5ecc: $0c
    ld b, l                                       ; $5ecd: $45
    inc c                                         ; $5ece: $0c
    ld h, b                                       ; $5ecf: $60
    inc c                                         ; $5ed0: $0c
    ld c, l                                       ; $5ed1: $4d
    inc c                                         ; $5ed2: $0c
    ld d, b                                       ; $5ed3: $50
    inc c                                         ; $5ed4: $0c
    ld b, l                                       ; $5ed5: $45
    inc c                                         ; $5ed6: $0c
    ld d, b                                       ; $5ed7: $50
    inc c                                         ; $5ed8: $0c
    ld c, d                                       ; $5ed9: $4a
    inc c                                         ; $5eda: $0c
    ld h, b                                       ; $5edb: $60
    inc c                                         ; $5edc: $0c
    ld b, l                                       ; $5edd: $45
    inc c                                         ; $5ede: $0c
    ld d, b                                       ; $5edf: $50
    inc c                                         ; $5ee0: $0c
    ld c, e                                       ; $5ee1: $4b
    inc c                                         ; $5ee2: $0c
    ld d, b                                       ; $5ee3: $50
    inc c                                         ; $5ee4: $0c
    ld c, a                                       ; $5ee5: $4f
    inc c                                         ; $5ee6: $0c
    ld h, b                                       ; $5ee7: $60
    inc c                                         ; $5ee8: $0c
    ld c, b                                       ; $5ee9: $48
    inc c                                         ; $5eea: $0c
    ld h, b                                       ; $5eeb: $60
    inc c                                         ; $5eec: $0c
    ld c, a                                       ; $5eed: $4f
    inc c                                         ; $5eee: $0c
    ld d, b                                       ; $5eef: $50
    inc c                                         ; $5ef0: $0c
    ld c, e                                       ; $5ef1: $4b
    inc c                                         ; $5ef2: $0c
    ld h, b                                       ; $5ef3: $60
    inc c                                         ; $5ef4: $0c
    ld c, a                                       ; $5ef5: $4f
    inc c                                         ; $5ef6: $0c
    ld d, b                                       ; $5ef7: $50
    inc c                                         ; $5ef8: $0c
    ld c, b                                       ; $5ef9: $48
    inc c                                         ; $5efa: $0c
    ld h, b                                       ; $5efb: $60
    inc c                                         ; $5efc: $0c
    ld c, a                                       ; $5efd: $4f
    inc c                                         ; $5efe: $0c
    ld h, b                                       ; $5eff: $60
    inc c                                         ; $5f00: $0c
    ld c, e                                       ; $5f01: $4b
    inc c                                         ; $5f02: $0c
    ld h, b                                       ; $5f03: $60
    inc c                                         ; $5f04: $0c
    ld c, a                                       ; $5f05: $4f
    inc c                                         ; $5f06: $0c
    ld h, b                                       ; $5f07: $60
    inc c                                         ; $5f08: $0c
    ld b, [hl]                                    ; $5f09: $46
    inc c                                         ; $5f0a: $0c
    ld h, b                                       ; $5f0b: $60
    inc c                                         ; $5f0c: $0c
    ld c, a                                       ; $5f0d: $4f
    inc c                                         ; $5f0e: $0c
    ld d, b                                       ; $5f0f: $50
    inc c                                         ; $5f10: $0c
    ld c, e                                       ; $5f11: $4b
    inc c                                         ; $5f12: $0c
    ld h, b                                       ; $5f13: $60
    inc c                                         ; $5f14: $0c
    ld c, a                                       ; $5f15: $4f
    inc c                                         ; $5f16: $0c
    ld h, b                                       ; $5f17: $60
    inc c                                         ; $5f18: $0c
    ld b, [hl]                                    ; $5f19: $46
    inc c                                         ; $5f1a: $0c
    ld h, b                                       ; $5f1b: $60
    inc c                                         ; $5f1c: $0c
    ld c, a                                       ; $5f1d: $4f
    inc c                                         ; $5f1e: $0c
    ld h, b                                       ; $5f1f: $60
    inc c                                         ; $5f20: $0c
    ld c, b                                       ; $5f21: $48
    inc c                                         ; $5f22: $0c
    ld d, b                                       ; $5f23: $50
    inc c                                         ; $5f24: $0c
    ld c, l                                       ; $5f25: $4d
    inc c                                         ; $5f26: $0c
    ld d, b                                       ; $5f27: $50
    inc c                                         ; $5f28: $0c
    ld b, l                                       ; $5f29: $45
    inc c                                         ; $5f2a: $0c
    ld d, b                                       ; $5f2b: $50
    inc c                                         ; $5f2c: $0c
    ld c, l                                       ; $5f2d: $4d
    inc c                                         ; $5f2e: $0c
    ld d, b                                       ; $5f2f: $50
    inc c                                         ; $5f30: $0c
    ld c, b                                       ; $5f31: $48
    inc c                                         ; $5f32: $0c
    ld d, b                                       ; $5f33: $50
    inc c                                         ; $5f34: $0c
    ld c, l                                       ; $5f35: $4d
    inc c                                         ; $5f36: $0c
    ld d, b                                       ; $5f37: $50
    inc c                                         ; $5f38: $0c
    ld b, l                                       ; $5f39: $45
    inc c                                         ; $5f3a: $0c
    ld h, b                                       ; $5f3b: $60
    inc c                                         ; $5f3c: $0c
    ld c, l                                       ; $5f3d: $4d
    inc c                                         ; $5f3e: $0c
    ld d, b                                       ; $5f3f: $50
    inc c                                         ; $5f40: $0c
    add hl, sp                                    ; $5f41: $39
    inc c                                         ; $5f42: $0c
    ld d, b                                       ; $5f43: $50
    inc c                                         ; $5f44: $0c
    inc a                                         ; $5f45: $3c
    inc c                                         ; $5f46: $0c
    ld d, b                                       ; $5f47: $50
    inc c                                         ; $5f48: $0c
    ld b, b                                       ; $5f49: $40
    inc c                                         ; $5f4a: $0c
    ld d, b                                       ; $5f4b: $50
    inc c                                         ; $5f4c: $0c
    ccf                                           ; $5f4d: $3f
    inc c                                         ; $5f4e: $0c
    ld d, b                                       ; $5f4f: $50
    inc c                                         ; $5f50: $0c
    ld a, $0c                                     ; $5f51: $3e $0c
    ld d, b                                       ; $5f53: $50
    inc c                                         ; $5f54: $0c
    ld b, c                                       ; $5f55: $41
    inc c                                         ; $5f56: $0c
    ld d, b                                       ; $5f57: $50
    inc c                                         ; $5f58: $0c
    ld b, b                                       ; $5f59: $40
    inc c                                         ; $5f5a: $0c
    ld d, b                                       ; $5f5b: $50
    inc c                                         ; $5f5c: $0c
    ld b, e                                       ; $5f5d: $43
    inc c                                         ; $5f5e: $0c
    ld b, b                                       ; $5f5f: $40
    inc c                                         ; $5f60: $0c
    dec sp                                        ; $5f61: $3b
    inc c                                         ; $5f62: $0c
    ld d, b                                       ; $5f63: $50
    inc c                                         ; $5f64: $0c
    ld a, $0c                                     ; $5f65: $3e $0c
    ld d, b                                       ; $5f67: $50
    inc c                                         ; $5f68: $0c
    ld b, d                                       ; $5f69: $42
    inc c                                         ; $5f6a: $0c
    ld d, b                                       ; $5f6b: $50
    inc c                                         ; $5f6c: $0c
    ld b, b                                       ; $5f6d: $40
    inc c                                         ; $5f6e: $0c
    ld d, b                                       ; $5f6f: $50
    inc c                                         ; $5f70: $0c
    ld b, c                                       ; $5f71: $41
    inc c                                         ; $5f72: $0c
    ld b, b                                       ; $5f73: $40
    inc c                                         ; $5f74: $0c
    ld a, $0c                                     ; $5f75: $3e $0c
    ld d, b                                       ; $5f77: $50
    inc c                                         ; $5f78: $0c
    inc a                                         ; $5f79: $3c
    inc c                                         ; $5f7a: $0c
    ld d, b                                       ; $5f7b: $50
    inc c                                         ; $5f7c: $0c
    dec sp                                        ; $5f7d: $3b
    inc c                                         ; $5f7e: $0c
    ld d, b                                       ; $5f7f: $50
    inc c                                         ; $5f80: $0c
    ld a, [hl-]                                   ; $5f81: $3a
    inc c                                         ; $5f82: $0c
    ld d, b                                       ; $5f83: $50
    inc c                                         ; $5f84: $0c
    dec a                                         ; $5f85: $3d
    inc c                                         ; $5f86: $0c
    ld d, b                                       ; $5f87: $50
    inc c                                         ; $5f88: $0c
    ld b, c                                       ; $5f89: $41
    inc c                                         ; $5f8a: $0c
    ld d, b                                       ; $5f8b: $50
    inc c                                         ; $5f8c: $0c
    ld b, b                                       ; $5f8d: $40
    inc c                                         ; $5f8e: $0c
    ld d, b                                       ; $5f8f: $50
    inc c                                         ; $5f90: $0c
    ccf                                           ; $5f91: $3f
    inc c                                         ; $5f92: $0c
    ld d, b                                       ; $5f93: $50
    inc c                                         ; $5f94: $0c
    ld b, d                                       ; $5f95: $42
    inc c                                         ; $5f96: $0c
    ld d, b                                       ; $5f97: $50
    inc c                                         ; $5f98: $0c
    ld b, c                                       ; $5f99: $41
    inc c                                         ; $5f9a: $0c
    ld d, b                                       ; $5f9b: $50
    inc c                                         ; $5f9c: $0c
    ld b, h                                       ; $5f9d: $44
    inc c                                         ; $5f9e: $0c
    ld b, b                                       ; $5f9f: $40
    inc c                                         ; $5fa0: $0c
    inc a                                         ; $5fa1: $3c
    inc c                                         ; $5fa2: $0c
    ld d, b                                       ; $5fa3: $50
    inc c                                         ; $5fa4: $0c
    ccf                                           ; $5fa5: $3f
    inc c                                         ; $5fa6: $0c
    ld d, b                                       ; $5fa7: $50
    inc c                                         ; $5fa8: $0c
    ld b, e                                       ; $5fa9: $43
    inc c                                         ; $5faa: $0c
    ld d, b                                       ; $5fab: $50
    inc c                                         ; $5fac: $0c
    ld b, c                                       ; $5fad: $41
    inc c                                         ; $5fae: $0c
    ld d, b                                       ; $5faf: $50
    inc c                                         ; $5fb0: $0c
    ld b, d                                       ; $5fb1: $42
    inc c                                         ; $5fb2: $0c
    ld b, b                                       ; $5fb3: $40
    inc c                                         ; $5fb4: $0c
    ld a, $0c                                     ; $5fb5: $3e $0c
    ld d, b                                       ; $5fb7: $50
    inc c                                         ; $5fb8: $0c
    inc a                                         ; $5fb9: $3c
    inc c                                         ; $5fba: $0c
    ld d, b                                       ; $5fbb: $50
    inc c                                         ; $5fbc: $0c
    add hl, sp                                    ; $5fbd: $39
    inc c                                         ; $5fbe: $0c
    ld d, b                                       ; $5fbf: $50
    inc c                                         ; $5fc0: $0c
    ld b, a                                       ; $5fc1: $47
    inc c                                         ; $5fc2: $0c
    ld d, b                                       ; $5fc3: $50
    inc c                                         ; $5fc4: $0c
    ld c, h                                       ; $5fc5: $4c
    inc c                                         ; $5fc6: $0c
    ld d, b                                       ; $5fc7: $50
    inc c                                         ; $5fc8: $0c
    ld b, e                                       ; $5fc9: $43
    inc c                                         ; $5fca: $0c
    ld d, b                                       ; $5fcb: $50
    inc c                                         ; $5fcc: $0c
    ld c, h                                       ; $5fcd: $4c
    inc c                                         ; $5fce: $0c
    ld d, b                                       ; $5fcf: $50
    inc c                                         ; $5fd0: $0c
    ld b, a                                       ; $5fd1: $47
    inc c                                         ; $5fd2: $0c
    ld d, b                                       ; $5fd3: $50
    inc c                                         ; $5fd4: $0c
    ld c, h                                       ; $5fd5: $4c
    inc c                                         ; $5fd6: $0c
    ld h, b                                       ; $5fd7: $60
    inc c                                         ; $5fd8: $0c
    ld b, e                                       ; $5fd9: $43
    inc c                                         ; $5fda: $0c
    ld h, b                                       ; $5fdb: $60
    inc c                                         ; $5fdc: $0c
    ld c, h                                       ; $5fdd: $4c
    inc c                                         ; $5fde: $0c
    ld d, b                                       ; $5fdf: $50
    inc c                                         ; $5fe0: $0c
    ld b, l                                       ; $5fe1: $45
    inc c                                         ; $5fe2: $0c
    ld h, b                                       ; $5fe3: $60
    inc c                                         ; $5fe4: $0c
    ld c, d                                       ; $5fe5: $4a
    inc c                                         ; $5fe6: $0c
    ld d, b                                       ; $5fe7: $50
    inc c                                         ; $5fe8: $0c
    ld c, l                                       ; $5fe9: $4d
    inc c                                         ; $5fea: $0c
    ld d, b                                       ; $5feb: $50
    inc c                                         ; $5fec: $0c
    ld c, d                                       ; $5fed: $4a
    inc c                                         ; $5fee: $0c
    ld d, b                                       ; $5fef: $50
    inc c                                         ; $5ff0: $0c
    ld b, l                                       ; $5ff1: $45
    inc c                                         ; $5ff2: $0c
    ld h, b                                       ; $5ff3: $60
    inc c                                         ; $5ff4: $0c
    ld c, d                                       ; $5ff5: $4a
    inc c                                         ; $5ff6: $0c
    ld b, b                                       ; $5ff7: $40
    inc c                                         ; $5ff8: $0c
    ld c, l                                       ; $5ff9: $4d
    inc c                                         ; $5ffa: $0c
    ld h, b                                       ; $5ffb: $60
    inc c                                         ; $5ffc: $0c
    ld c, d                                       ; $5ffd: $4a
    inc c                                         ; $5ffe: $0c
    ld h, b                                       ; $5fff: $60
    inc c                                         ; $6000: $0c
    ld c, b                                       ; $6001: $48
    inc c                                         ; $6002: $0c
    ld d, b                                       ; $6003: $50
    inc c                                         ; $6004: $0c
    ld c, l                                       ; $6005: $4d
    inc c                                         ; $6006: $0c
    ld h, b                                       ; $6007: $60
    inc c                                         ; $6008: $0c
    ld b, l                                       ; $6009: $45
    inc c                                         ; $600a: $0c
    ld h, b                                       ; $600b: $60
    inc c                                         ; $600c: $0c
    ld c, l                                       ; $600d: $4d
    inc c                                         ; $600e: $0c
    ld d, b                                       ; $600f: $50
    inc c                                         ; $6010: $0c
    ld c, b                                       ; $6011: $48
    inc c                                         ; $6012: $0c
    ld d, b                                       ; $6013: $50
    inc c                                         ; $6014: $0c
    ld c, l                                       ; $6015: $4d
    inc c                                         ; $6016: $0c
    ld h, b                                       ; $6017: $60
    inc c                                         ; $6018: $0c
    ld b, l                                       ; $6019: $45
    inc c                                         ; $601a: $0c
    ld d, b                                       ; $601b: $50
    inc c                                         ; $601c: $0c
    ld c, l                                       ; $601d: $4d
    inc c                                         ; $601e: $0c
    ld h, b                                       ; $601f: $60
    inc c                                         ; $6020: $0c
    ld b, a                                       ; $6021: $47
    inc c                                         ; $6022: $0c
    ld h, b                                       ; $6023: $60
    inc c                                         ; $6024: $0c
    ld c, d                                       ; $6025: $4a
    inc c                                         ; $6026: $0c
    ld d, b                                       ; $6027: $50
    inc c                                         ; $6028: $0c
    ld b, e                                       ; $6029: $43
    inc c                                         ; $602a: $0c
    ld d, b                                       ; $602b: $50
    inc c                                         ; $602c: $0c
    ld c, d                                       ; $602d: $4a
    inc c                                         ; $602e: $0c
    ld d, b                                       ; $602f: $50
    inc c                                         ; $6030: $0c
    ld b, a                                       ; $6031: $47
    inc c                                         ; $6032: $0c
    ld d, b                                       ; $6033: $50
    inc c                                         ; $6034: $0c
    ld c, d                                       ; $6035: $4a
    inc c                                         ; $6036: $0c
    ld h, b                                       ; $6037: $60
    inc c                                         ; $6038: $0c
    ld b, e                                       ; $6039: $43
    inc c                                         ; $603a: $0c
    ld h, b                                       ; $603b: $60
    inc c                                         ; $603c: $0c
    ld c, d                                       ; $603d: $4a
    inc c                                         ; $603e: $0c
    ld h, b                                       ; $603f: $60
    inc c                                         ; $6040: $0c
    ld c, b                                       ; $6041: $48
    ld b, $50                                     ; $6042: $06 $50
    inc c                                         ; $6044: $0c
    ld c, b                                       ; $6045: $48
    ld b, $60                                     ; $6046: $06 $60
    jr jr_01b_6092                                ; $6048: $18 $48

    ld b, $50                                     ; $604a: $06 $50
    inc c                                         ; $604c: $0c
    ld c, b                                       ; $604d: $48
    ld b, $60                                     ; $604e: $06 $60
    jr jr_01b_609a                                ; $6050: $18 $48

    ld b, $60                                     ; $6052: $06 $60
    inc c                                         ; $6054: $0c
    ld c, b                                       ; $6055: $48
    ld b, $50                                     ; $6056: $06 $50
    inc c                                         ; $6058: $0c
    ld c, d                                       ; $6059: $4a
    ld b, $60                                     ; $605a: $06 $60
    inc c                                         ; $605c: $0c
    ld c, e                                       ; $605d: $4b
    ld b, $60                                     ; $605e: $06 $60
    inc c                                         ; $6060: $0c
    ld c, d                                       ; $6061: $4a
    ld b, $50                                     ; $6062: $06 $50
    inc c                                         ; $6064: $0c
    ld c, b                                       ; $6065: $48
    ld b, $60                                     ; $6066: $06 $60
    inc c                                         ; $6068: $0c
    ld c, b                                       ; $6069: $48
    ld b, $70                                     ; $606a: $06 $70
    jr @+$45                                      ; $606c: $18 $43

    ld b, $60                                     ; $606e: $06 $60
    inc c                                         ; $6070: $0c
    ld b, a                                       ; $6071: $47
    ld b, $50                                     ; $6072: $06 $50
    inc c                                         ; $6074: $0c
    ld c, b                                       ; $6075: $48
    ld b, $60                                     ; $6076: $06 $60
    inc c                                         ; $6078: $0c
    ld c, b                                       ; $6079: $48
    ld b, $60                                     ; $607a: $06 $60
    inc c                                         ; $607c: $0c
    ld c, b                                       ; $607d: $48
    ld b, $60                                     ; $607e: $06 $60
    jr @+$4a                                      ; $6080: $18 $48

    ld b, $60                                     ; $6082: $06 $60
    inc c                                         ; $6084: $0c
    ld c, b                                       ; $6085: $48
    ld b, $40                                     ; $6086: $06 $40
    inc c                                         ; $6088: $0c
    ld c, b                                       ; $6089: $48
    ld b, $60                                     ; $608a: $06 $60
    inc c                                         ; $608c: $0c
    ld b, e                                       ; $608d: $43
    ld b, $60                                     ; $608e: $06 $60
    inc c                                         ; $6090: $0c
    ld c, b                                       ; $6091: $48

jr_01b_6092:
    ld b, $60                                     ; $6092: $06 $60
    inc c                                         ; $6094: $0c
    ld c, d                                       ; $6095: $4a
    ld b, $60                                     ; $6096: $06 $60
    inc c                                         ; $6098: $0c
    ld c, e                                       ; $6099: $4b

jr_01b_609a:
    ld b, $50                                     ; $609a: $06 $50
    inc c                                         ; $609c: $0c
    ld c, d                                       ; $609d: $4a
    ld b, $50                                     ; $609e: $06 $50
    inc c                                         ; $60a0: $0c
    ld c, b                                       ; $60a1: $48
    ld b, $40                                     ; $60a2: $06 $40
    jr @+$4a                                      ; $60a4: $18 $48

    ld b, $50                                     ; $60a6: $06 $50
    inc c                                         ; $60a8: $0c
    ld b, a                                       ; $60a9: $47
    ld b, $f0                                     ; $60aa: $06 $f0
    nop                                           ; $60ac: $00
    rst $38                                       ; $60ad: $ff

    db $f0, $00, $a7, $1d, $06, $f0, $18, $27, $06, $f0, $24, $27, $06, $f0, $0c, $27
    db $06, $f0, $18, $27, $06, $f0, $24, $27, $06, $f0, $0c, $27, $06, $f0, $18, $27
    db $06, $f0, $18, $27, $06, $f0, $18, $27, $06, $f0, $24, $27, $06, $f0, $0c, $27
    db $06, $f0, $18, $27, $06, $f0, $24, $27, $06, $f0, $0c, $27, $06, $f0, $18, $27
    db $06, $e0, $24, $26, $06, $e0, $0c, $26, $06, $e0, $12, $26, $06, $d0, $06

    ld h, $06                                     ; $60fd: $26 $06
    ldh a, [$0c]                                  ; $60ff: $f0 $0c
    ld h, $06                                     ; $6101: $26 $06
    ldh a, [$0c]                                  ; $6103: $f0 $0c
    ld h, $06                                     ; $6105: $26 $06
    ldh a, [rNR23]                                ; $6107: $f0 $18
    ld h, $06                                     ; $6109: $26 $06
    ldh a, [rNR12]                                ; $610b: $f0 $12
    ld h, $06                                     ; $610d: $26 $06
    and b                                         ; $610f: $a0
    ld b, $26                                     ; $6110: $06 $26
    ld b, $f0                                     ; $6112: $06 $f0
    inc c                                         ; $6114: $0c
    ld h, $06                                     ; $6115: $26 $06
    ldh a, [$0c]                                  ; $6117: $f0 $0c
    ld h, $06                                     ; $6119: $26 $06
    ldh a, [$0c]                                  ; $611b: $f0 $0c
    ld h, $06                                     ; $611d: $26 $06
    ldh [rTMA], a                                 ; $611f: $e0 $06
    ld h, $06                                     ; $6121: $26 $06
    ldh a, [rTMA]                                 ; $6123: $f0 $06
    ld h, $06                                     ; $6125: $26 $06
    ldh a, [$0c]                                  ; $6127: $f0 $0c
    ld h, $06                                     ; $6129: $26 $06
    ldh a, [$0c]                                  ; $612b: $f0 $0c
    ld h, $06                                     ; $612d: $26 $06
    ldh a, [$0c]                                  ; $612f: $f0 $0c
    ld h, $06                                     ; $6131: $26 $06
    ldh [rTMA], a                                 ; $6133: $e0 $06
    ld h, $06                                     ; $6135: $26 $06
    ldh a, [rTMA]                                 ; $6137: $f0 $06
    ld h, $06                                     ; $6139: $26 $06
    ldh a, [$0c]                                  ; $613b: $f0 $0c
    ld h, $06                                     ; $613d: $26 $06
    ldh a, [$0c]                                  ; $613f: $f0 $0c
    ld h, $06                                     ; $6141: $26 $06
    ldh a, [rNR12]                                ; $6143: $f0 $12
    ld h, $06                                     ; $6145: $26 $06
    ldh [rTMA], a                                 ; $6147: $e0 $06
    ld h, $06                                     ; $6149: $26 $06
    ldh a, [$0c]                                  ; $614b: $f0 $0c
    ld h, $06                                     ; $614d: $26 $06
    ldh a, [$0c]                                  ; $614f: $f0 $0c
    ld h, $06                                     ; $6151: $26 $06
    ldh a, [$0c]                                  ; $6153: $f0 $0c
    ld h, $06                                     ; $6155: $26 $06
    ldh a, [$0c]                                  ; $6157: $f0 $0c
    ld h, $06                                     ; $6159: $26 $06
    ldh a, [rTMA]                                 ; $615b: $f0 $06
    ld h, $06                                     ; $615d: $26 $06
    ldh a, [rTMA]                                 ; $615f: $f0 $06
    ld h, $06                                     ; $6161: $26 $06
    ldh a, [$0c]                                  ; $6163: $f0 $0c
    ld h, $06                                     ; $6165: $26 $06
    ldh a, [$0c]                                  ; $6167: $f0 $0c
    ld h, $06                                     ; $6169: $26 $06
    ldh a, [$0c]                                  ; $616b: $f0 $0c
    ld h, $06                                     ; $616d: $26 $06
    ldh a, [$0c]                                  ; $616f: $f0 $0c
    ld h, $06                                     ; $6171: $26 $06
    ldh a, [$0c]                                  ; $6173: $f0 $0c
    ld h, $06                                     ; $6175: $26 $06
    pop af                                        ; $6177: $f1
    add b                                         ; $6178: $80
    ld h, $06                                     ; $6179: $26 $06
    ldh a, [rNR12]                                ; $617b: $f0 $12
    ld h, $06                                     ; $617d: $26 $06
    ret nc                                        ; $617f: $d0

    ld b, $26                                     ; $6180: $06 $26
    ld b, $f0                                     ; $6182: $06 $f0
    inc c                                         ; $6184: $0c
    ld h, $06                                     ; $6185: $26 $06
    ldh a, [$0c]                                  ; $6187: $f0 $0c
    ld h, $06                                     ; $6189: $26 $06
    ldh a, [rNR23]                                ; $618b: $f0 $18
    ld h, $06                                     ; $618d: $26 $06
    ldh [$0c], a                                  ; $618f: $e0 $0c
    ld h, $06                                     ; $6191: $26 $06
    ret nz                                        ; $6193: $c0

    ld b, $26                                     ; $6194: $06 $26
    ld b, $d0                                     ; $6196: $06 $d0
    ld b, $26                                     ; $6198: $06 $26
    ld b, $f0                                     ; $619a: $06 $f0
    inc c                                         ; $619c: $0c
    ld h, $06                                     ; $619d: $26 $06
    ldh a, [$0c]                                  ; $619f: $f0 $0c
    ld h, $06                                     ; $61a1: $26 $06
    ldh [$0c], a                                  ; $61a3: $e0 $0c
    ld h, $06                                     ; $61a5: $26 $06
    ldh a, [$0c]                                  ; $61a7: $f0 $0c
    ld h, $06                                     ; $61a9: $26 $06
    ldh a, [rNR12]                                ; $61ab: $f0 $12
    ld h, $06                                     ; $61ad: $26 $06
    and b                                         ; $61af: $a0
    ld b, $26                                     ; $61b0: $06 $26
    ld b, $f0                                     ; $61b2: $06 $f0
    inc c                                         ; $61b4: $0c
    ld h, $06                                     ; $61b5: $26 $06
    ldh [$0c], a                                  ; $61b7: $e0 $0c
    ld h, $06                                     ; $61b9: $26 $06
    ldh a, [rNR23]                                ; $61bb: $f0 $18
    ld h, $06                                     ; $61bd: $26 $06
    ret nc                                        ; $61bf: $d0

    inc c                                         ; $61c0: $0c
    ld h, $06                                     ; $61c1: $26 $06
    ldh [$0c], a                                  ; $61c3: $e0 $0c
    ld h, $06                                     ; $61c5: $26 $06
    ldh a, [$0c]                                  ; $61c7: $f0 $0c
    ld h, $06                                     ; $61c9: $26 $06
    ldh [rNR12], a                                ; $61cb: $e0 $12
    ld h, $06                                     ; $61cd: $26 $06
    ret nz                                        ; $61cf: $c0

    ld b, $26                                     ; $61d0: $06 $26
    ld b, $f0                                     ; $61d2: $06 $f0
    inc c                                         ; $61d4: $0c
    ld h, $06                                     ; $61d5: $26 $06
    ldh a, [rNR12]                                ; $61d7: $f0 $12
    ld h, $06                                     ; $61d9: $26 $06
    ret nz                                        ; $61db: $c0

    ld b, $26                                     ; $61dc: $06 $26
    ld b, $f0                                     ; $61de: $06 $f0
    inc c                                         ; $61e0: $0c
    ld h, $06                                     ; $61e1: $26 $06
    ldh a, [$0c]                                  ; $61e3: $f0 $0c
    ld h, $06                                     ; $61e5: $26 $06
    ldh [rTMA], a                                 ; $61e7: $e0 $06
    ld h, $06                                     ; $61e9: $26 $06
    ldh [rTMA], a                                 ; $61eb: $e0 $06
    ld h, $06                                     ; $61ed: $26 $06
    ldh a, [rTMA]                                 ; $61ef: $f0 $06
    ld h, $06                                     ; $61f1: $26 $06
    ldh a, [rTMA]                                 ; $61f3: $f0 $06
    ld h, $06                                     ; $61f5: $26 $06
    ldh a, [$0c]                                  ; $61f7: $f0 $0c
    ld h, $06                                     ; $61f9: $26 $06
    ldh a, [$0c]                                  ; $61fb: $f0 $0c
    ld h, $06                                     ; $61fd: $26 $06
    pop af                                        ; $61ff: $f1
    add b                                         ; $6200: $80
    daa                                           ; $6201: $27
    ld b, $f0                                     ; $6202: $06 $f0
    jr jr_01b_622d                                ; $6204: $18 $27

    ld b, $f0                                     ; $6206: $06 $f0
    inc h                                         ; $6208: $24
    daa                                           ; $6209: $27
    ld b, $f0                                     ; $620a: $06 $f0
    inc c                                         ; $620c: $0c
    daa                                           ; $620d: $27
    ld b, $f0                                     ; $620e: $06 $f0
    jr jr_01b_6239                                ; $6210: $18 $27

    ld b, $f0                                     ; $6212: $06 $f0
    inc h                                         ; $6214: $24
    daa                                           ; $6215: $27
    ld b, $f0                                     ; $6216: $06 $f0
    inc c                                         ; $6218: $0c
    daa                                           ; $6219: $27
    ld b, $f0                                     ; $621a: $06 $f0
    jr jr_01b_6245                                ; $621c: $18 $27

    ld b, $f0                                     ; $621e: $06 $f0
    jr jr_01b_6249                                ; $6220: $18 $27

    ld b, $f0                                     ; $6222: $06 $f0
    jr jr_01b_624d                                ; $6224: $18 $27

    ld b, $f0                                     ; $6226: $06 $f0
    inc h                                         ; $6228: $24
    daa                                           ; $6229: $27
    ld b, $f0                                     ; $622a: $06 $f0
    inc c                                         ; $622c: $0c

jr_01b_622d:
    daa                                           ; $622d: $27
    ld b, $f0                                     ; $622e: $06 $f0
    jr jr_01b_6259                                ; $6230: $18 $27

    ld b, $f0                                     ; $6232: $06 $f0
    inc h                                         ; $6234: $24
    daa                                           ; $6235: $27
    ld b, $f0                                     ; $6236: $06 $f0
    inc c                                         ; $6238: $0c

jr_01b_6239:
    daa                                           ; $6239: $27
    ld b, $f0                                     ; $623a: $06 $f0
    jr jr_01b_6265                                ; $623c: $18 $27

    ld b, $f0                                     ; $623e: $06 $f0
    nop                                           ; $6240: $00
    rst $38                                       ; $6241: $ff
    ldh a, [rP1]                                  ; $6242: $f0 $00
    rst $38                                       ; $6244: $ff

jr_01b_6245:
    ld a, d                                       ; $6245: $7a
    ld a, d                                       ; $6246: $7a
    ld a, d                                       ; $6247: $7a
    ld a, d                                       ; $6248: $7a

jr_01b_6249:
    ld a, d                                       ; $6249: $7a
    ld a, c                                       ; $624a: $79
    add c                                         ; $624b: $81
    ld [hl], c                                    ; $624c: $71

jr_01b_624d:
    ld [hl], e                                    ; $624d: $73
    add [hl]                                      ; $624e: $86
    add l                                         ; $624f: $85
    add h                                         ; $6250: $84
    add e                                         ; $6251: $83
    ld a, h                                       ; $6252: $7c
    ld a, a                                       ; $6253: $7f
    ld a, d                                       ; $6254: $7a
    ld [hl], d                                    ; $6255: $72
    ld l, [hl]                                    ; $6256: $6e
    ld l, c                                       ; $6257: $69
    ld a, b                                       ; $6258: $78

jr_01b_6259:
    ld [hl], a                                    ; $6259: $77
    ld a, [hl]                                    ; $625a: $7e
    ld [hl], h                                    ; $625b: $74
    add c                                         ; $625c: $81
    add d                                         ; $625d: $82
    add b                                         ; $625e: $80
    ld a, e                                       ; $625f: $7b
    ld l, b                                       ; $6260: $68
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00

jr_01b_6265:
    nop                                           ; $6265: $00
    ld [hl], c                                    ; $6266: $71
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    nop                                           ; $626b: $00
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627a: $00
    nop                                           ; $627b: $00
    nop                                           ; $627c: $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    nop                                           ; $628b: $00
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    nop                                           ; $62ab: $00
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    nop                                           ; $62b2: $00
    nop                                           ; $62b3: $00
    nop                                           ; $62b4: $00
    nop                                           ; $62b5: $00
    nop                                           ; $62b6: $00
    nop                                           ; $62b7: $00
    nop                                           ; $62b8: $00
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00
    nop                                           ; $62bb: $00
    nop                                           ; $62bc: $00
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00
    nop                                           ; $62c8: $00
    nop                                           ; $62c9: $00
    ld b, $00                                     ; $62ca: $06 $00
    ld [hl], $00                                  ; $62cc: $36 $00
    and b                                         ; $62ce: $a0
    nop                                           ; $62cf: $00
    ld c, $00                                     ; $62d0: $0e $00
    jr jr_01b_62d4                                ; $62d2: $18 $00

jr_01b_62d4:
    ld [hl+], a                                   ; $62d4: $22
    nop                                           ; $62d5: $00
    inc l                                         ; $62d6: $2c
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00
    add hl, bc                                    ; $62da: $09
    nop                                           ; $62db: $00
    cp $00                                        ; $62dc: $fe $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    ld bc, $0009                                  ; $62e3: $01 $09 $00
    cp $00                                        ; $62e6: $fe $00
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    ld [bc], a                                    ; $62ed: $02
    add hl, bc                                    ; $62ee: $09
    nop                                           ; $62ef: $00
    cp $00                                        ; $62f0: $fe $00
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    inc bc                                        ; $62f7: $03
    add hl, bc                                    ; $62f8: $09
    nop                                           ; $62f9: $00
    cp $00                                        ; $62fa: $fe $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    ld b, b                                       ; $6300: $40
    inc bc                                        ; $6301: $03
    ld c, b                                       ; $6302: $48
    ld b, $50                                     ; $6303: $06 $50
    ld b, $f1                                     ; $6305: $06 $f1
    add hl, bc                                    ; $6307: $09
    push af                                       ; $6308: $f5
    ret nc                                        ; $6309: $d0

    nop                                           ; $630a: $00
    xor b                                         ; $630b: $a8
    nop                                           ; $630c: $00
    ld b, $d0                                     ; $630d: $06 $d0
    inc c                                         ; $630f: $0c
    daa                                           ; $6310: $27
    ld b, $d0                                     ; $6311: $06 $d0
    inc c                                         ; $6313: $0c
    dec h                                         ; $6314: $25
    ld b, $d0                                     ; $6315: $06 $d0
    inc c                                         ; $6317: $0c
    ld a, [hl+]                                   ; $6318: $2a
    ld b, $d0                                     ; $6319: $06 $d0
    inc c                                         ; $631b: $0c
    jr z, jr_01b_6324                             ; $631c: $28 $06

    ret nc                                        ; $631e: $d0

    inc c                                         ; $631f: $0c
    daa                                           ; $6320: $27
    ld b, $d0                                     ; $6321: $06 $d0
    inc c                                         ; $6323: $0c

jr_01b_6324:
    dec h                                         ; $6324: $25
    ld b, $d0                                     ; $6325: $06 $d0
    inc c                                         ; $6327: $0c
    daa                                           ; $6328: $27
    ld b, $d0                                     ; $6329: $06 $d0
    inc c                                         ; $632b: $0c
    jr z, jr_01b_6334                             ; $632c: $28 $06

    ret nc                                        ; $632e: $d0

    inc c                                         ; $632f: $0c
    daa                                           ; $6330: $27
    ld b, $d0                                     ; $6331: $06 $d0
    inc c                                         ; $6333: $0c

jr_01b_6334:
    dec h                                         ; $6334: $25
    ld b, $d0                                     ; $6335: $06 $d0
    inc c                                         ; $6337: $0c
    ld a, [hl+]                                   ; $6338: $2a
    ld b, $d0                                     ; $6339: $06 $d0
    inc c                                         ; $633b: $0c
    jr z, jr_01b_6344                             ; $633c: $28 $06

    ret nc                                        ; $633e: $d0

    inc c                                         ; $633f: $0c
    daa                                           ; $6340: $27
    ld b, $d0                                     ; $6341: $06 $d0
    inc c                                         ; $6343: $0c

jr_01b_6344:
    dec h                                         ; $6344: $25
    ld b, $d0                                     ; $6345: $06 $d0
    inc c                                         ; $6347: $0c
    daa                                           ; $6348: $27
    ld b, $d0                                     ; $6349: $06 $d0
    inc c                                         ; $634b: $0c
    dec l                                         ; $634c: $2d
    ld b, $d0                                     ; $634d: $06 $d0
    inc c                                         ; $634f: $0c
    inc l                                         ; $6350: $2c
    ld b, $d0                                     ; $6351: $06 $d0
    inc c                                         ; $6353: $0c
    ld a, [hl+]                                   ; $6354: $2a
    ld b, $d0                                     ; $6355: $06 $d0
    inc c                                         ; $6357: $0c
    cpl                                           ; $6358: $2f
    ld b, $d0                                     ; $6359: $06 $d0
    inc c                                         ; $635b: $0c
    dec l                                         ; $635c: $2d
    ld b, $d0                                     ; $635d: $06 $d0
    inc c                                         ; $635f: $0c
    inc l                                         ; $6360: $2c
    ld b, $d0                                     ; $6361: $06 $d0
    inc c                                         ; $6363: $0c
    ld a, [hl+]                                   ; $6364: $2a
    ld b, $d0                                     ; $6365: $06 $d0
    inc c                                         ; $6367: $0c
    inc l                                         ; $6368: $2c
    ld b, $d0                                     ; $6369: $06 $d0
    inc c                                         ; $636b: $0c
    dec l                                         ; $636c: $2d
    ld b, $d0                                     ; $636d: $06 $d0
    inc c                                         ; $636f: $0c
    inc l                                         ; $6370: $2c
    ld b, $d0                                     ; $6371: $06 $d0
    inc c                                         ; $6373: $0c
    ld a, [hl+]                                   ; $6374: $2a
    ld b, $d0                                     ; $6375: $06 $d0
    inc c                                         ; $6377: $0c
    cpl                                           ; $6378: $2f
    ld b, $d0                                     ; $6379: $06 $d0
    inc c                                         ; $637b: $0c
    dec l                                         ; $637c: $2d
    ld b, $d0                                     ; $637d: $06 $d0
    inc c                                         ; $637f: $0c
    inc l                                         ; $6380: $2c
    ld b, $d0                                     ; $6381: $06 $d0
    inc c                                         ; $6383: $0c
    ld a, [hl+]                                   ; $6384: $2a
    ld b, $d0                                     ; $6385: $06 $d0
    inc c                                         ; $6387: $0c
    inc l                                         ; $6388: $2c
    ld b, $d0                                     ; $6389: $06 $d0
    inc c                                         ; $638b: $0c
    ld a, [hl+]                                   ; $638c: $2a
    ld b, $d0                                     ; $638d: $06 $d0
    inc c                                         ; $638f: $0c
    jr z, jr_01b_6398                             ; $6390: $28 $06

    ret nc                                        ; $6392: $d0

    inc c                                         ; $6393: $0c
    daa                                           ; $6394: $27
    ld b, $d0                                     ; $6395: $06 $d0
    inc c                                         ; $6397: $0c

jr_01b_6398:
    inc l                                         ; $6398: $2c
    ld b, $d0                                     ; $6399: $06 $d0
    inc c                                         ; $639b: $0c
    ld a, [hl+]                                   ; $639c: $2a
    ld b, $d0                                     ; $639d: $06 $d0
    inc c                                         ; $639f: $0c
    jr z, jr_01b_63a8                             ; $63a0: $28 $06

    ret nc                                        ; $63a2: $d0

    inc c                                         ; $63a3: $0c
    daa                                           ; $63a4: $27
    ld b, $d0                                     ; $63a5: $06 $d0
    inc c                                         ; $63a7: $0c

jr_01b_63a8:
    ld a, [hl+]                                   ; $63a8: $2a
    ld b, $d0                                     ; $63a9: $06 $d0
    inc c                                         ; $63ab: $0c
    xor b                                         ; $63ac: $a8
    nop                                           ; $63ad: $00
    ld b, $d0                                     ; $63ae: $06 $d0
    inc c                                         ; $63b0: $0c
    daa                                           ; $63b1: $27
    ld b, $d0                                     ; $63b2: $06 $d0
    inc c                                         ; $63b4: $0c
    dec h                                         ; $63b5: $25
    ld b, $d0                                     ; $63b6: $06 $d0
    inc c                                         ; $63b8: $0c
    ld a, [hl+]                                   ; $63b9: $2a
    ld b, $d0                                     ; $63ba: $06 $d0
    inc c                                         ; $63bc: $0c
    jr z, jr_01b_63c5                             ; $63bd: $28 $06

    ret nc                                        ; $63bf: $d0

    inc c                                         ; $63c0: $0c
    daa                                           ; $63c1: $27
    ld b, $d0                                     ; $63c2: $06 $d0
    inc c                                         ; $63c4: $0c

jr_01b_63c5:
    dec h                                         ; $63c5: $25
    ld b, $d0                                     ; $63c6: $06 $d0
    inc c                                         ; $63c8: $0c
    daa                                           ; $63c9: $27
    ld b, $d0                                     ; $63ca: $06 $d0
    inc c                                         ; $63cc: $0c
    jr z, jr_01b_63d5                             ; $63cd: $28 $06

    ret nc                                        ; $63cf: $d0

    inc c                                         ; $63d0: $0c
    daa                                           ; $63d1: $27
    ld b, $d0                                     ; $63d2: $06 $d0
    inc c                                         ; $63d4: $0c

jr_01b_63d5:
    dec h                                         ; $63d5: $25
    ld b, $d0                                     ; $63d6: $06 $d0
    inc c                                         ; $63d8: $0c
    ld a, [hl+]                                   ; $63d9: $2a
    ld b, $d0                                     ; $63da: $06 $d0
    inc c                                         ; $63dc: $0c
    jr z, jr_01b_63e5                             ; $63dd: $28 $06

    ret nc                                        ; $63df: $d0

    inc c                                         ; $63e0: $0c
    daa                                           ; $63e1: $27
    ld b, $d0                                     ; $63e2: $06 $d0
    inc c                                         ; $63e4: $0c

jr_01b_63e5:
    dec h                                         ; $63e5: $25
    ld b, $d0                                     ; $63e6: $06 $d0
    inc c                                         ; $63e8: $0c
    daa                                           ; $63e9: $27
    ld b, $d0                                     ; $63ea: $06 $d0
    inc c                                         ; $63ec: $0c
    dec l                                         ; $63ed: $2d
    ld b, $d0                                     ; $63ee: $06 $d0
    inc c                                         ; $63f0: $0c
    inc l                                         ; $63f1: $2c
    ld b, $d0                                     ; $63f2: $06 $d0
    inc c                                         ; $63f4: $0c
    ld a, [hl+]                                   ; $63f5: $2a
    ld b, $d0                                     ; $63f6: $06 $d0
    inc c                                         ; $63f8: $0c
    cpl                                           ; $63f9: $2f
    ld b, $d0                                     ; $63fa: $06 $d0
    inc c                                         ; $63fc: $0c
    dec l                                         ; $63fd: $2d
    ld b, $d0                                     ; $63fe: $06 $d0
    inc c                                         ; $6400: $0c
    inc l                                         ; $6401: $2c
    ld b, $d0                                     ; $6402: $06 $d0
    inc c                                         ; $6404: $0c
    ld a, [hl+]                                   ; $6405: $2a
    ld b, $d0                                     ; $6406: $06 $d0
    inc c                                         ; $6408: $0c
    inc l                                         ; $6409: $2c
    ld b, $d0                                     ; $640a: $06 $d0
    inc c                                         ; $640c: $0c
    dec l                                         ; $640d: $2d
    ld b, $d0                                     ; $640e: $06 $d0
    inc c                                         ; $6410: $0c
    inc l                                         ; $6411: $2c
    ld b, $d0                                     ; $6412: $06 $d0
    inc c                                         ; $6414: $0c
    ld a, [hl+]                                   ; $6415: $2a
    ld b, $d0                                     ; $6416: $06 $d0
    inc c                                         ; $6418: $0c
    cpl                                           ; $6419: $2f
    ld b, $d0                                     ; $641a: $06 $d0
    inc c                                         ; $641c: $0c
    dec l                                         ; $641d: $2d
    ld b, $d0                                     ; $641e: $06 $d0
    inc c                                         ; $6420: $0c
    inc l                                         ; $6421: $2c
    ld b, $d0                                     ; $6422: $06 $d0
    inc c                                         ; $6424: $0c
    ld a, [hl+]                                   ; $6425: $2a
    ld b, $d0                                     ; $6426: $06 $d0
    inc c                                         ; $6428: $0c
    inc l                                         ; $6429: $2c
    ld b, $d0                                     ; $642a: $06 $d0
    inc c                                         ; $642c: $0c
    ld a, [hl+]                                   ; $642d: $2a
    ld b, $d0                                     ; $642e: $06 $d0
    inc c                                         ; $6430: $0c
    jr z, jr_01b_6439                             ; $6431: $28 $06

    ret nc                                        ; $6433: $d0

    inc c                                         ; $6434: $0c
    daa                                           ; $6435: $27
    ld b, $d0                                     ; $6436: $06 $d0
    inc c                                         ; $6438: $0c

jr_01b_6439:
    inc l                                         ; $6439: $2c
    ld b, $d0                                     ; $643a: $06 $d0
    inc c                                         ; $643c: $0c
    ld a, [hl+]                                   ; $643d: $2a
    ld b, $d0                                     ; $643e: $06 $d0
    inc c                                         ; $6440: $0c
    jr z, jr_01b_6449                             ; $6441: $28 $06

    ret nc                                        ; $6443: $d0

    inc c                                         ; $6444: $0c
    daa                                           ; $6445: $27
    ld b, $d0                                     ; $6446: $06 $d0
    inc c                                         ; $6448: $0c

jr_01b_6449:
    ld a, [hl+]                                   ; $6449: $2a
    ld b, $d0                                     ; $644a: $06 $d0
    inc c                                         ; $644c: $0c
    xor b                                         ; $644d: $a8
    nop                                           ; $644e: $00
    ld b, $d0                                     ; $644f: $06 $d0
    inc c                                         ; $6451: $0c
    daa                                           ; $6452: $27
    ld b, $d0                                     ; $6453: $06 $d0
    inc c                                         ; $6455: $0c
    dec h                                         ; $6456: $25
    ld b, $d0                                     ; $6457: $06 $d0
    inc c                                         ; $6459: $0c
    ld a, [hl+]                                   ; $645a: $2a
    ld b, $d0                                     ; $645b: $06 $d0
    inc c                                         ; $645d: $0c
    jr z, jr_01b_6466                             ; $645e: $28 $06

    ret nc                                        ; $6460: $d0

    inc c                                         ; $6461: $0c
    daa                                           ; $6462: $27
    ld b, $d0                                     ; $6463: $06 $d0
    inc c                                         ; $6465: $0c

jr_01b_6466:
    dec h                                         ; $6466: $25
    ld b, $d0                                     ; $6467: $06 $d0
    inc c                                         ; $6469: $0c
    daa                                           ; $646a: $27
    ld b, $d0                                     ; $646b: $06 $d0
    inc c                                         ; $646d: $0c
    jr z, jr_01b_6476                             ; $646e: $28 $06

    ret nc                                        ; $6470: $d0

    inc c                                         ; $6471: $0c
    daa                                           ; $6472: $27
    ld b, $d0                                     ; $6473: $06 $d0
    inc c                                         ; $6475: $0c

jr_01b_6476:
    dec h                                         ; $6476: $25
    ld b, $d0                                     ; $6477: $06 $d0
    inc c                                         ; $6479: $0c
    ld a, [hl+]                                   ; $647a: $2a
    ld b, $d0                                     ; $647b: $06 $d0
    inc c                                         ; $647d: $0c
    jr z, jr_01b_6486                             ; $647e: $28 $06

    ret nc                                        ; $6480: $d0

    inc c                                         ; $6481: $0c
    daa                                           ; $6482: $27
    ld b, $d0                                     ; $6483: $06 $d0
    inc c                                         ; $6485: $0c

jr_01b_6486:
    dec h                                         ; $6486: $25
    ld b, $d0                                     ; $6487: $06 $d0
    inc c                                         ; $6489: $0c
    daa                                           ; $648a: $27
    ld b, $d0                                     ; $648b: $06 $d0
    inc c                                         ; $648d: $0c
    dec l                                         ; $648e: $2d
    ld b, $d0                                     ; $648f: $06 $d0
    inc c                                         ; $6491: $0c
    inc l                                         ; $6492: $2c
    ld b, $d0                                     ; $6493: $06 $d0
    inc c                                         ; $6495: $0c
    ld a, [hl+]                                   ; $6496: $2a
    ld b, $d0                                     ; $6497: $06 $d0
    inc c                                         ; $6499: $0c
    cpl                                           ; $649a: $2f
    ld b, $d0                                     ; $649b: $06 $d0
    inc c                                         ; $649d: $0c
    dec l                                         ; $649e: $2d
    ld b, $d0                                     ; $649f: $06 $d0
    inc c                                         ; $64a1: $0c
    inc l                                         ; $64a2: $2c
    ld b, $d0                                     ; $64a3: $06 $d0
    inc c                                         ; $64a5: $0c
    ld a, [hl+]                                   ; $64a6: $2a
    ld b, $d0                                     ; $64a7: $06 $d0
    inc c                                         ; $64a9: $0c
    inc l                                         ; $64aa: $2c
    ld b, $d0                                     ; $64ab: $06 $d0
    inc c                                         ; $64ad: $0c
    dec l                                         ; $64ae: $2d
    ld b, $d0                                     ; $64af: $06 $d0
    inc c                                         ; $64b1: $0c
    inc l                                         ; $64b2: $2c
    ld b, $d0                                     ; $64b3: $06 $d0
    inc c                                         ; $64b5: $0c
    ld a, [hl+]                                   ; $64b6: $2a
    ld b, $d0                                     ; $64b7: $06 $d0
    inc c                                         ; $64b9: $0c
    cpl                                           ; $64ba: $2f
    ld b, $d0                                     ; $64bb: $06 $d0
    inc c                                         ; $64bd: $0c
    dec l                                         ; $64be: $2d
    ld b, $d0                                     ; $64bf: $06 $d0
    inc c                                         ; $64c1: $0c
    inc l                                         ; $64c2: $2c
    ld b, $d0                                     ; $64c3: $06 $d0
    inc c                                         ; $64c5: $0c
    ld a, [hl+]                                   ; $64c6: $2a
    ld b, $d0                                     ; $64c7: $06 $d0
    inc c                                         ; $64c9: $0c
    inc l                                         ; $64ca: $2c
    ld b, $d0                                     ; $64cb: $06 $d0
    inc c                                         ; $64cd: $0c
    xor d                                         ; $64ce: $aa
    nop                                           ; $64cf: $00
    ld b, $d0                                     ; $64d0: $06 $d0
    inc c                                         ; $64d2: $0c
    add hl, hl                                    ; $64d3: $29
    ld b, $d0                                     ; $64d4: $06 $d0
    inc c                                         ; $64d6: $0c
    daa                                           ; $64d7: $27
    ld b, $d0                                     ; $64d8: $06 $d0
    inc c                                         ; $64da: $0c
    inc l                                         ; $64db: $2c
    ld b, $d0                                     ; $64dc: $06 $d0
    inc c                                         ; $64de: $0c
    ld a, [hl+]                                   ; $64df: $2a
    ld b, $d0                                     ; $64e0: $06 $d0
    inc c                                         ; $64e2: $0c
    add hl, hl                                    ; $64e3: $29
    ld b, $d0                                     ; $64e4: $06 $d0
    inc c                                         ; $64e6: $0c
    daa                                           ; $64e7: $27
    ld b, $d0                                     ; $64e8: $06 $d0
    inc c                                         ; $64ea: $0c
    add hl, hl                                    ; $64eb: $29
    ld b, $d0                                     ; $64ec: $06 $d0
    inc c                                         ; $64ee: $0c
    ld a, [hl+]                                   ; $64ef: $2a
    ld b, $d0                                     ; $64f0: $06 $d0
    inc c                                         ; $64f2: $0c
    add hl, hl                                    ; $64f3: $29
    ld b, $d0                                     ; $64f4: $06 $d0
    inc c                                         ; $64f6: $0c
    daa                                           ; $64f7: $27
    ld b, $d0                                     ; $64f8: $06 $d0
    inc c                                         ; $64fa: $0c
    inc l                                         ; $64fb: $2c
    ld b, $d0                                     ; $64fc: $06 $d0
    inc c                                         ; $64fe: $0c
    ld a, [hl+]                                   ; $64ff: $2a
    ld b, $d0                                     ; $6500: $06 $d0
    inc c                                         ; $6502: $0c
    add hl, hl                                    ; $6503: $29
    ld b, $d0                                     ; $6504: $06 $d0
    inc c                                         ; $6506: $0c
    daa                                           ; $6507: $27
    ld b, $d0                                     ; $6508: $06 $d0
    inc c                                         ; $650a: $0c
    add hl, hl                                    ; $650b: $29
    ld b, $d0                                     ; $650c: $06 $d0
    inc c                                         ; $650e: $0c
    cpl                                           ; $650f: $2f
    ld b, $d0                                     ; $6510: $06 $d0
    inc c                                         ; $6512: $0c
    ld l, $06                                     ; $6513: $2e $06
    ret nc                                        ; $6515: $d0

    inc c                                         ; $6516: $0c
    inc l                                         ; $6517: $2c
    ld b, $d0                                     ; $6518: $06 $d0
    inc c                                         ; $651a: $0c
    ld sp, $d006                                  ; $651b: $31 $06 $d0
    inc c                                         ; $651e: $0c
    cpl                                           ; $651f: $2f
    ld b, $d0                                     ; $6520: $06 $d0
    inc c                                         ; $6522: $0c
    ld l, $06                                     ; $6523: $2e $06
    ret nc                                        ; $6525: $d0

    inc c                                         ; $6526: $0c
    inc l                                         ; $6527: $2c
    ld b, $d0                                     ; $6528: $06 $d0
    inc c                                         ; $652a: $0c
    ld l, $06                                     ; $652b: $2e $06
    ret nc                                        ; $652d: $d0

    inc c                                         ; $652e: $0c
    cpl                                           ; $652f: $2f
    ld b, $d0                                     ; $6530: $06 $d0
    inc c                                         ; $6532: $0c
    ld l, $06                                     ; $6533: $2e $06
    ret nc                                        ; $6535: $d0

    inc c                                         ; $6536: $0c
    inc l                                         ; $6537: $2c
    ld b, $d0                                     ; $6538: $06 $d0
    inc c                                         ; $653a: $0c
    ld sp, $d006                                  ; $653b: $31 $06 $d0
    inc c                                         ; $653e: $0c
    cpl                                           ; $653f: $2f
    ld b, $d0                                     ; $6540: $06 $d0
    inc c                                         ; $6542: $0c
    ld l, $06                                     ; $6543: $2e $06
    ret nc                                        ; $6545: $d0

    inc c                                         ; $6546: $0c
    inc l                                         ; $6547: $2c
    ld b, $d0                                     ; $6548: $06 $d0
    inc c                                         ; $654a: $0c
    jr z, jr_01b_6553                             ; $654b: $28 $06

    ret nc                                        ; $654d: $d0

    inc c                                         ; $654e: $0c
    ld a, [hl+]                                   ; $654f: $2a
    ld b, $d0                                     ; $6550: $06 $d0
    inc c                                         ; $6552: $0c

jr_01b_6553:
    jr z, jr_01b_655b                             ; $6553: $28 $06

    ret nc                                        ; $6555: $d0

    inc c                                         ; $6556: $0c
    daa                                           ; $6557: $27
    ld b, $d0                                     ; $6558: $06 $d0
    inc c                                         ; $655a: $0c

jr_01b_655b:
    inc l                                         ; $655b: $2c
    ld b, $d0                                     ; $655c: $06 $d0
    inc c                                         ; $655e: $0c
    ld a, [hl+]                                   ; $655f: $2a
    ld b, $d0                                     ; $6560: $06 $d0
    inc c                                         ; $6562: $0c
    jr z, jr_01b_656b                             ; $6563: $28 $06

    ret nc                                        ; $6565: $d0

    inc c                                         ; $6566: $0c
    daa                                           ; $6567: $27
    ld b, $d0                                     ; $6568: $06 $d0
    inc c                                         ; $656a: $0c

jr_01b_656b:
    ld a, [hl+]                                   ; $656b: $2a
    ld b, $d0                                     ; $656c: $06 $d0
    inc c                                         ; $656e: $0c
    xor b                                         ; $656f: $a8
    nop                                           ; $6570: $00
    ld b, $d0                                     ; $6571: $06 $d0
    inc c                                         ; $6573: $0c
    daa                                           ; $6574: $27
    ld b, $d0                                     ; $6575: $06 $d0
    inc c                                         ; $6577: $0c
    dec h                                         ; $6578: $25
    ld b, $d0                                     ; $6579: $06 $d0
    inc c                                         ; $657b: $0c
    ld a, [hl+]                                   ; $657c: $2a
    ld b, $d0                                     ; $657d: $06 $d0
    inc c                                         ; $657f: $0c
    jr z, jr_01b_6588                             ; $6580: $28 $06

    ret nc                                        ; $6582: $d0

    inc c                                         ; $6583: $0c
    daa                                           ; $6584: $27
    ld b, $d0                                     ; $6585: $06 $d0
    inc c                                         ; $6587: $0c

jr_01b_6588:
    dec h                                         ; $6588: $25
    ld b, $d0                                     ; $6589: $06 $d0
    inc c                                         ; $658b: $0c
    daa                                           ; $658c: $27
    ld b, $d0                                     ; $658d: $06 $d0
    inc c                                         ; $658f: $0c
    jr z, jr_01b_6598                             ; $6590: $28 $06

    ret nc                                        ; $6592: $d0

    inc c                                         ; $6593: $0c
    daa                                           ; $6594: $27
    ld b, $d0                                     ; $6595: $06 $d0
    inc c                                         ; $6597: $0c

jr_01b_6598:
    dec h                                         ; $6598: $25
    ld b, $d0                                     ; $6599: $06 $d0
    inc c                                         ; $659b: $0c
    ld a, [hl+]                                   ; $659c: $2a
    ld b, $d0                                     ; $659d: $06 $d0
    inc c                                         ; $659f: $0c
    jr z, jr_01b_65a8                             ; $65a0: $28 $06

    ret nc                                        ; $65a2: $d0

    inc c                                         ; $65a3: $0c
    daa                                           ; $65a4: $27
    ld b, $d0                                     ; $65a5: $06 $d0
    inc c                                         ; $65a7: $0c

jr_01b_65a8:
    dec h                                         ; $65a8: $25
    ld b, $d0                                     ; $65a9: $06 $d0
    inc c                                         ; $65ab: $0c
    daa                                           ; $65ac: $27
    ld b, $d0                                     ; $65ad: $06 $d0
    inc c                                         ; $65af: $0c
    dec l                                         ; $65b0: $2d
    ld b, $d0                                     ; $65b1: $06 $d0
    inc c                                         ; $65b3: $0c
    inc l                                         ; $65b4: $2c
    ld b, $d0                                     ; $65b5: $06 $d0
    inc c                                         ; $65b7: $0c
    ld a, [hl+]                                   ; $65b8: $2a
    ld b, $d0                                     ; $65b9: $06 $d0
    inc c                                         ; $65bb: $0c
    cpl                                           ; $65bc: $2f
    ld b, $d0                                     ; $65bd: $06 $d0
    inc c                                         ; $65bf: $0c
    dec l                                         ; $65c0: $2d
    ld b, $d0                                     ; $65c1: $06 $d0
    inc c                                         ; $65c3: $0c
    inc l                                         ; $65c4: $2c
    ld b, $d0                                     ; $65c5: $06 $d0
    inc c                                         ; $65c7: $0c
    ld a, [hl+]                                   ; $65c8: $2a
    ld b, $d0                                     ; $65c9: $06 $d0
    inc c                                         ; $65cb: $0c
    inc l                                         ; $65cc: $2c
    ld b, $d0                                     ; $65cd: $06 $d0
    inc c                                         ; $65cf: $0c
    dec l                                         ; $65d0: $2d
    ld b, $d0                                     ; $65d1: $06 $d0
    inc c                                         ; $65d3: $0c
    inc l                                         ; $65d4: $2c
    ld b, $d0                                     ; $65d5: $06 $d0
    inc c                                         ; $65d7: $0c
    ld a, [hl+]                                   ; $65d8: $2a
    ld b, $d0                                     ; $65d9: $06 $d0
    inc c                                         ; $65db: $0c
    cpl                                           ; $65dc: $2f
    ld b, $d0                                     ; $65dd: $06 $d0
    inc c                                         ; $65df: $0c
    dec l                                         ; $65e0: $2d
    ld b, $d0                                     ; $65e1: $06 $d0
    inc c                                         ; $65e3: $0c
    inc l                                         ; $65e4: $2c
    ld b, $d0                                     ; $65e5: $06 $d0
    inc c                                         ; $65e7: $0c
    ld a, [hl+]                                   ; $65e8: $2a
    ld b, $d0                                     ; $65e9: $06 $d0
    inc c                                         ; $65eb: $0c
    inc l                                         ; $65ec: $2c
    ld b, $d0                                     ; $65ed: $06 $d0
    inc c                                         ; $65ef: $0c
    ld a, [hl+]                                   ; $65f0: $2a
    ld b, $d0                                     ; $65f1: $06 $d0
    inc c                                         ; $65f3: $0c
    jr z, jr_01b_65fc                             ; $65f4: $28 $06

    ret nc                                        ; $65f6: $d0

    inc c                                         ; $65f7: $0c
    daa                                           ; $65f8: $27
    ld b, $d0                                     ; $65f9: $06 $d0
    inc c                                         ; $65fb: $0c

jr_01b_65fc:
    inc l                                         ; $65fc: $2c
    ld b, $d0                                     ; $65fd: $06 $d0
    inc c                                         ; $65ff: $0c
    ld a, [hl+]                                   ; $6600: $2a
    ld b, $d0                                     ; $6601: $06 $d0
    inc c                                         ; $6603: $0c
    jr z, jr_01b_660c                             ; $6604: $28 $06

    ret nc                                        ; $6606: $d0

    inc c                                         ; $6607: $0c
    daa                                           ; $6608: $27
    ld b, $d0                                     ; $6609: $06 $d0
    inc c                                         ; $660b: $0c

jr_01b_660c:
    ld a, [hl+]                                   ; $660c: $2a
    ld b, $f0                                     ; $660d: $06 $f0
    nop                                           ; $660f: $00
    rst $38                                       ; $6610: $ff
    ld d, b                                       ; $6611: $50
    nop                                           ; $6612: $00
    ret                                           ; $6613: $c9


    inc d                                         ; $6614: $14
    ld b, $50                                     ; $6615: $06 $50
    inc c                                         ; $6617: $0c
    ld c, c                                       ; $6618: $49
    inc c                                         ; $6619: $0c
    ld d, b                                       ; $661a: $50
    inc c                                         ; $661b: $0c
    ld b, h                                       ; $661c: $44
    inc c                                         ; $661d: $0c
    ld d, b                                       ; $661e: $50
    inc c                                         ; $661f: $0c
    ld c, c                                       ; $6620: $49
    inc c                                         ; $6621: $0c
    ld d, b                                       ; $6622: $50
    inc c                                         ; $6623: $0c
    ld c, c                                       ; $6624: $49
    ld b, $50                                     ; $6625: $06 $50
    inc c                                         ; $6627: $0c
    ld c, c                                       ; $6628: $49
    inc c                                         ; $6629: $0c
    ld d, b                                       ; $662a: $50
    inc c                                         ; $662b: $0c
    ld c, h                                       ; $662c: $4c
    inc c                                         ; $662d: $0c
    ld d, b                                       ; $662e: $50
    inc c                                         ; $662f: $0c
    ld c, c                                       ; $6630: $49
    ld b, $50                                     ; $6631: $06 $50
    inc c                                         ; $6633: $0c
    ld c, c                                       ; $6634: $49
    ld b, $50                                     ; $6635: $06 $50
    inc c                                         ; $6637: $0c
    ld c, c                                       ; $6638: $49
    inc c                                         ; $6639: $0c
    ld d, b                                       ; $663a: $50
    inc c                                         ; $663b: $0c
    ld b, h                                       ; $663c: $44
    inc c                                         ; $663d: $0c
    ld d, b                                       ; $663e: $50
    inc c                                         ; $663f: $0c
    ld c, c                                       ; $6640: $49
    ld b, $50                                     ; $6641: $06 $50
    inc c                                         ; $6643: $0c
    ld c, c                                       ; $6644: $49
    ld b, $50                                     ; $6645: $06 $50
    inc c                                         ; $6647: $0c
    ld c, c                                       ; $6648: $49
    inc c                                         ; $6649: $0c
    ld d, b                                       ; $664a: $50
    inc c                                         ; $664b: $0c
    ld c, h                                       ; $664c: $4c
    inc c                                         ; $664d: $0c
    ld d, b                                       ; $664e: $50
    inc c                                         ; $664f: $0c
    ld c, c                                       ; $6650: $49
    ld b, $50                                     ; $6651: $06 $50
    inc c                                         ; $6653: $0c
    ld c, c                                       ; $6654: $49
    ld b, $50                                     ; $6655: $06 $50
    inc c                                         ; $6657: $0c
    ld c, c                                       ; $6658: $49
    inc c                                         ; $6659: $0c
    ld d, b                                       ; $665a: $50
    inc c                                         ; $665b: $0c
    ld b, d                                       ; $665c: $42
    inc c                                         ; $665d: $0c
    ld d, b                                       ; $665e: $50
    inc c                                         ; $665f: $0c
    ld c, c                                       ; $6660: $49
    ld b, $50                                     ; $6661: $06 $50
    inc c                                         ; $6663: $0c
    ld c, c                                       ; $6664: $49
    ld b, $50                                     ; $6665: $06 $50
    inc c                                         ; $6667: $0c
    ld c, c                                       ; $6668: $49
    inc c                                         ; $6669: $0c
    ld d, b                                       ; $666a: $50
    inc c                                         ; $666b: $0c
    ld c, [hl]                                    ; $666c: $4e
    inc c                                         ; $666d: $0c
    ld d, b                                       ; $666e: $50
    inc c                                         ; $666f: $0c
    ld c, c                                       ; $6670: $49
    ld b, $50                                     ; $6671: $06 $50
    inc c                                         ; $6673: $0c
    ld c, c                                       ; $6674: $49
    ld b, $50                                     ; $6675: $06 $50
    inc c                                         ; $6677: $0c
    ld c, c                                       ; $6678: $49
    inc c                                         ; $6679: $0c
    ld d, b                                       ; $667a: $50
    inc c                                         ; $667b: $0c
    ld b, d                                       ; $667c: $42
    inc c                                         ; $667d: $0c
    ld d, b                                       ; $667e: $50
    inc c                                         ; $667f: $0c
    ld c, c                                       ; $6680: $49
    ld b, $50                                     ; $6681: $06 $50
    inc c                                         ; $6683: $0c
    ld c, c                                       ; $6684: $49
    ld b, $50                                     ; $6685: $06 $50
    inc c                                         ; $6687: $0c
    ld c, c                                       ; $6688: $49
    inc c                                         ; $6689: $0c
    ld d, b                                       ; $668a: $50
    inc c                                         ; $668b: $0c
    ld c, [hl]                                    ; $668c: $4e
    inc c                                         ; $668d: $0c
    ld d, b                                       ; $668e: $50
    inc c                                         ; $668f: $0c
    ld c, c                                       ; $6690: $49
    inc c                                         ; $6691: $0c
    ld d, b                                       ; $6692: $50
    inc c                                         ; $6693: $0c
    ld c, e                                       ; $6694: $4b
    ld b, $50                                     ; $6695: $06 $50
    inc c                                         ; $6697: $0c
    ld c, e                                       ; $6698: $4b
    inc c                                         ; $6699: $0c
    ld d, b                                       ; $669a: $50
    inc c                                         ; $669b: $0c
    ld b, h                                       ; $669c: $44
    inc c                                         ; $669d: $0c
    ld d, b                                       ; $669e: $50
    inc c                                         ; $669f: $0c
    ld c, e                                       ; $66a0: $4b
    ld b, $50                                     ; $66a1: $06 $50
    inc c                                         ; $66a3: $0c
    ld c, e                                       ; $66a4: $4b
    ld b, $50                                     ; $66a5: $06 $50
    inc c                                         ; $66a7: $0c
    ld c, e                                       ; $66a8: $4b
    inc c                                         ; $66a9: $0c
    ld d, b                                       ; $66aa: $50
    inc c                                         ; $66ab: $0c
    ld c, h                                       ; $66ac: $4c
    inc c                                         ; $66ad: $0c
    ld d, b                                       ; $66ae: $50
    inc c                                         ; $66af: $0c
    ld c, e                                       ; $66b0: $4b
    inc c                                         ; $66b1: $0c
    ld d, b                                       ; $66b2: $50
    inc c                                         ; $66b3: $0c
    ret                                           ; $66b4: $c9


    inc d                                         ; $66b5: $14
    ld b, $50                                     ; $66b6: $06 $50
    inc c                                         ; $66b8: $0c
    ld c, c                                       ; $66b9: $49
    inc c                                         ; $66ba: $0c
    ld d, b                                       ; $66bb: $50
    inc c                                         ; $66bc: $0c
    ld b, h                                       ; $66bd: $44
    inc c                                         ; $66be: $0c
    ld d, b                                       ; $66bf: $50
    inc c                                         ; $66c0: $0c
    ld c, c                                       ; $66c1: $49
    inc c                                         ; $66c2: $0c
    ld d, b                                       ; $66c3: $50
    inc c                                         ; $66c4: $0c
    ld c, c                                       ; $66c5: $49
    ld b, $50                                     ; $66c6: $06 $50
    inc c                                         ; $66c8: $0c
    ld c, c                                       ; $66c9: $49
    inc c                                         ; $66ca: $0c
    ld d, b                                       ; $66cb: $50
    inc c                                         ; $66cc: $0c
    ld c, h                                       ; $66cd: $4c
    inc c                                         ; $66ce: $0c
    ld d, b                                       ; $66cf: $50
    inc c                                         ; $66d0: $0c
    ld c, c                                       ; $66d1: $49
    ld b, $50                                     ; $66d2: $06 $50
    inc c                                         ; $66d4: $0c
    ld c, c                                       ; $66d5: $49
    ld b, $50                                     ; $66d6: $06 $50
    inc c                                         ; $66d8: $0c
    ld c, c                                       ; $66d9: $49
    inc c                                         ; $66da: $0c
    ld d, b                                       ; $66db: $50
    inc c                                         ; $66dc: $0c
    ld b, h                                       ; $66dd: $44
    inc c                                         ; $66de: $0c
    ld d, b                                       ; $66df: $50
    inc c                                         ; $66e0: $0c
    ld c, c                                       ; $66e1: $49
    ld b, $50                                     ; $66e2: $06 $50
    inc c                                         ; $66e4: $0c
    ld c, c                                       ; $66e5: $49
    ld b, $50                                     ; $66e6: $06 $50
    inc c                                         ; $66e8: $0c
    ld c, c                                       ; $66e9: $49
    inc c                                         ; $66ea: $0c
    ld d, b                                       ; $66eb: $50
    inc c                                         ; $66ec: $0c
    ld c, h                                       ; $66ed: $4c
    inc c                                         ; $66ee: $0c
    ld d, b                                       ; $66ef: $50
    inc c                                         ; $66f0: $0c
    ld c, c                                       ; $66f1: $49
    ld b, $50                                     ; $66f2: $06 $50
    inc c                                         ; $66f4: $0c
    ld c, c                                       ; $66f5: $49
    ld b, $50                                     ; $66f6: $06 $50
    inc c                                         ; $66f8: $0c
    ld c, c                                       ; $66f9: $49
    inc c                                         ; $66fa: $0c
    ld d, b                                       ; $66fb: $50
    inc c                                         ; $66fc: $0c
    ld b, d                                       ; $66fd: $42
    inc c                                         ; $66fe: $0c
    ld d, b                                       ; $66ff: $50
    inc c                                         ; $6700: $0c
    ld c, c                                       ; $6701: $49
    ld b, $50                                     ; $6702: $06 $50
    inc c                                         ; $6704: $0c
    ld c, c                                       ; $6705: $49
    ld b, $50                                     ; $6706: $06 $50
    inc c                                         ; $6708: $0c
    ld c, c                                       ; $6709: $49
    inc c                                         ; $670a: $0c
    ld d, b                                       ; $670b: $50
    inc c                                         ; $670c: $0c
    ld c, [hl]                                    ; $670d: $4e
    inc c                                         ; $670e: $0c
    ld d, b                                       ; $670f: $50
    inc c                                         ; $6710: $0c
    ld c, c                                       ; $6711: $49
    ld b, $50                                     ; $6712: $06 $50
    inc c                                         ; $6714: $0c
    ld c, c                                       ; $6715: $49
    ld b, $50                                     ; $6716: $06 $50
    inc c                                         ; $6718: $0c
    ld c, c                                       ; $6719: $49
    inc c                                         ; $671a: $0c
    ld d, b                                       ; $671b: $50
    inc c                                         ; $671c: $0c
    ld b, d                                       ; $671d: $42
    inc c                                         ; $671e: $0c
    ld d, b                                       ; $671f: $50
    inc c                                         ; $6720: $0c
    ld c, c                                       ; $6721: $49
    ld b, $50                                     ; $6722: $06 $50
    inc c                                         ; $6724: $0c
    ld c, c                                       ; $6725: $49
    ld b, $50                                     ; $6726: $06 $50
    inc c                                         ; $6728: $0c
    ld c, c                                       ; $6729: $49
    inc c                                         ; $672a: $0c
    ld d, b                                       ; $672b: $50
    inc c                                         ; $672c: $0c
    ld c, [hl]                                    ; $672d: $4e
    inc c                                         ; $672e: $0c
    ld d, b                                       ; $672f: $50
    inc c                                         ; $6730: $0c
    ld c, c                                       ; $6731: $49
    inc c                                         ; $6732: $0c
    ld d, b                                       ; $6733: $50
    inc c                                         ; $6734: $0c
    ld c, e                                       ; $6735: $4b
    ld b, $50                                     ; $6736: $06 $50
    inc c                                         ; $6738: $0c
    ld c, e                                       ; $6739: $4b
    inc c                                         ; $673a: $0c
    ld d, b                                       ; $673b: $50
    inc c                                         ; $673c: $0c
    ld b, h                                       ; $673d: $44
    inc c                                         ; $673e: $0c
    ld d, b                                       ; $673f: $50
    inc c                                         ; $6740: $0c
    ld c, e                                       ; $6741: $4b
    ld b, $50                                     ; $6742: $06 $50
    inc c                                         ; $6744: $0c
    ld c, e                                       ; $6745: $4b
    ld b, $50                                     ; $6746: $06 $50
    inc c                                         ; $6748: $0c
    ld c, e                                       ; $6749: $4b
    inc c                                         ; $674a: $0c
    ld d, b                                       ; $674b: $50
    inc c                                         ; $674c: $0c
    ld c, h                                       ; $674d: $4c
    inc c                                         ; $674e: $0c
    ld d, b                                       ; $674f: $50
    inc c                                         ; $6750: $0c
    ld c, e                                       ; $6751: $4b
    inc c                                         ; $6752: $0c
    ld d, b                                       ; $6753: $50
    inc c                                         ; $6754: $0c
    ret                                           ; $6755: $c9


    inc d                                         ; $6756: $14
    ld b, $50                                     ; $6757: $06 $50
    inc c                                         ; $6759: $0c
    ld c, c                                       ; $675a: $49
    inc c                                         ; $675b: $0c
    ld d, b                                       ; $675c: $50
    inc c                                         ; $675d: $0c
    ld b, h                                       ; $675e: $44
    inc c                                         ; $675f: $0c
    ld d, b                                       ; $6760: $50
    inc c                                         ; $6761: $0c
    ld c, c                                       ; $6762: $49
    inc c                                         ; $6763: $0c
    ld d, b                                       ; $6764: $50
    inc c                                         ; $6765: $0c
    ld c, c                                       ; $6766: $49
    ld b, $50                                     ; $6767: $06 $50
    inc c                                         ; $6769: $0c
    ld c, c                                       ; $676a: $49
    inc c                                         ; $676b: $0c
    ld d, b                                       ; $676c: $50
    inc c                                         ; $676d: $0c
    ld c, h                                       ; $676e: $4c
    inc c                                         ; $676f: $0c
    ld d, b                                       ; $6770: $50
    inc c                                         ; $6771: $0c
    ld c, c                                       ; $6772: $49
    ld b, $50                                     ; $6773: $06 $50
    inc c                                         ; $6775: $0c
    ld c, c                                       ; $6776: $49
    ld b, $50                                     ; $6777: $06 $50
    inc c                                         ; $6779: $0c
    ld c, c                                       ; $677a: $49
    inc c                                         ; $677b: $0c
    ld d, b                                       ; $677c: $50
    inc c                                         ; $677d: $0c
    ld b, h                                       ; $677e: $44
    inc c                                         ; $677f: $0c
    ld d, b                                       ; $6780: $50
    inc c                                         ; $6781: $0c
    ld c, c                                       ; $6782: $49
    ld b, $50                                     ; $6783: $06 $50
    inc c                                         ; $6785: $0c
    ld c, c                                       ; $6786: $49
    ld b, $50                                     ; $6787: $06 $50
    inc c                                         ; $6789: $0c
    ld c, c                                       ; $678a: $49
    inc c                                         ; $678b: $0c
    ld d, b                                       ; $678c: $50
    inc c                                         ; $678d: $0c
    ld c, h                                       ; $678e: $4c
    inc c                                         ; $678f: $0c
    ld d, b                                       ; $6790: $50
    inc c                                         ; $6791: $0c
    ld c, c                                       ; $6792: $49
    ld b, $50                                     ; $6793: $06 $50
    inc c                                         ; $6795: $0c
    ld c, c                                       ; $6796: $49
    ld b, $50                                     ; $6797: $06 $50
    inc c                                         ; $6799: $0c
    ld c, c                                       ; $679a: $49
    inc c                                         ; $679b: $0c
    ld d, b                                       ; $679c: $50
    inc c                                         ; $679d: $0c
    ld b, d                                       ; $679e: $42
    inc c                                         ; $679f: $0c
    ld d, b                                       ; $67a0: $50
    inc c                                         ; $67a1: $0c
    ld c, c                                       ; $67a2: $49
    ld b, $50                                     ; $67a3: $06 $50
    inc c                                         ; $67a5: $0c
    ld c, c                                       ; $67a6: $49
    ld b, $50                                     ; $67a7: $06 $50
    inc c                                         ; $67a9: $0c
    ld c, c                                       ; $67aa: $49
    inc c                                         ; $67ab: $0c
    ld d, b                                       ; $67ac: $50
    inc c                                         ; $67ad: $0c
    ld c, [hl]                                    ; $67ae: $4e
    inc c                                         ; $67af: $0c
    ld d, b                                       ; $67b0: $50
    inc c                                         ; $67b1: $0c
    ld c, c                                       ; $67b2: $49
    ld b, $50                                     ; $67b3: $06 $50
    inc c                                         ; $67b5: $0c
    ld c, c                                       ; $67b6: $49
    ld b, $50                                     ; $67b7: $06 $50
    inc c                                         ; $67b9: $0c
    ld c, c                                       ; $67ba: $49
    inc c                                         ; $67bb: $0c
    ld d, b                                       ; $67bc: $50
    inc c                                         ; $67bd: $0c
    ld b, d                                       ; $67be: $42
    inc c                                         ; $67bf: $0c
    ld d, b                                       ; $67c0: $50
    inc c                                         ; $67c1: $0c
    ld c, c                                       ; $67c2: $49
    ld b, $50                                     ; $67c3: $06 $50
    inc c                                         ; $67c5: $0c
    ld c, c                                       ; $67c6: $49
    ld b, $50                                     ; $67c7: $06 $50
    inc c                                         ; $67c9: $0c
    ld c, c                                       ; $67ca: $49
    inc c                                         ; $67cb: $0c
    ld d, b                                       ; $67cc: $50
    inc c                                         ; $67cd: $0c
    ld c, [hl]                                    ; $67ce: $4e
    inc c                                         ; $67cf: $0c
    ld d, b                                       ; $67d0: $50
    inc c                                         ; $67d1: $0c
    ld c, c                                       ; $67d2: $49
    inc c                                         ; $67d3: $0c
    ld d, b                                       ; $67d4: $50
    inc c                                         ; $67d5: $0c
    rl h                                          ; $67d6: $cb $14
    ld b, $50                                     ; $67d8: $06 $50
    inc c                                         ; $67da: $0c
    ld c, e                                       ; $67db: $4b
    inc c                                         ; $67dc: $0c
    ld d, b                                       ; $67dd: $50
    inc c                                         ; $67de: $0c
    ld b, [hl]                                    ; $67df: $46
    inc c                                         ; $67e0: $0c
    ld d, b                                       ; $67e1: $50
    inc c                                         ; $67e2: $0c
    ld c, e                                       ; $67e3: $4b
    inc c                                         ; $67e4: $0c
    ld d, b                                       ; $67e5: $50
    inc c                                         ; $67e6: $0c
    ld c, e                                       ; $67e7: $4b
    ld b, $50                                     ; $67e8: $06 $50
    inc c                                         ; $67ea: $0c
    ld c, e                                       ; $67eb: $4b
    inc c                                         ; $67ec: $0c
    ld d, b                                       ; $67ed: $50
    inc c                                         ; $67ee: $0c
    ld c, [hl]                                    ; $67ef: $4e
    inc c                                         ; $67f0: $0c
    ld d, b                                       ; $67f1: $50
    inc c                                         ; $67f2: $0c
    ld c, e                                       ; $67f3: $4b
    ld b, $50                                     ; $67f4: $06 $50
    inc c                                         ; $67f6: $0c
    ld c, e                                       ; $67f7: $4b
    ld b, $50                                     ; $67f8: $06 $50
    inc c                                         ; $67fa: $0c
    ld c, e                                       ; $67fb: $4b
    inc c                                         ; $67fc: $0c
    ld d, b                                       ; $67fd: $50
    inc c                                         ; $67fe: $0c
    ld b, [hl]                                    ; $67ff: $46
    inc c                                         ; $6800: $0c
    ld d, b                                       ; $6801: $50
    inc c                                         ; $6802: $0c
    ld c, e                                       ; $6803: $4b
    ld b, $50                                     ; $6804: $06 $50
    inc c                                         ; $6806: $0c
    ld c, e                                       ; $6807: $4b
    ld b, $50                                     ; $6808: $06 $50
    inc c                                         ; $680a: $0c
    ld c, e                                       ; $680b: $4b
    inc c                                         ; $680c: $0c
    ld d, b                                       ; $680d: $50
    inc c                                         ; $680e: $0c
    ld c, [hl]                                    ; $680f: $4e
    inc c                                         ; $6810: $0c
    ld d, b                                       ; $6811: $50
    inc c                                         ; $6812: $0c
    ld c, e                                       ; $6813: $4b
    ld b, $50                                     ; $6814: $06 $50
    inc c                                         ; $6816: $0c
    ld c, e                                       ; $6817: $4b
    ld b, $50                                     ; $6818: $06 $50
    inc c                                         ; $681a: $0c
    ld c, e                                       ; $681b: $4b
    inc c                                         ; $681c: $0c
    ld d, b                                       ; $681d: $50
    inc c                                         ; $681e: $0c
    ld b, h                                       ; $681f: $44
    inc c                                         ; $6820: $0c
    ld d, b                                       ; $6821: $50
    inc c                                         ; $6822: $0c
    ld c, e                                       ; $6823: $4b
    ld b, $50                                     ; $6824: $06 $50
    inc c                                         ; $6826: $0c
    ld c, e                                       ; $6827: $4b
    ld b, $50                                     ; $6828: $06 $50
    inc c                                         ; $682a: $0c
    ld c, e                                       ; $682b: $4b
    inc c                                         ; $682c: $0c
    ld d, b                                       ; $682d: $50
    inc c                                         ; $682e: $0c
    ld d, b                                       ; $682f: $50
    inc c                                         ; $6830: $0c
    ld d, b                                       ; $6831: $50
    inc c                                         ; $6832: $0c
    ld c, e                                       ; $6833: $4b
    ld b, $50                                     ; $6834: $06 $50
    inc c                                         ; $6836: $0c
    ld c, e                                       ; $6837: $4b
    ld b, $50                                     ; $6838: $06 $50
    inc c                                         ; $683a: $0c
    ld c, e                                       ; $683b: $4b
    inc c                                         ; $683c: $0c
    ld d, b                                       ; $683d: $50
    inc c                                         ; $683e: $0c
    ld b, h                                       ; $683f: $44
    inc c                                         ; $6840: $0c
    ld d, b                                       ; $6841: $50
    inc c                                         ; $6842: $0c
    ld c, e                                       ; $6843: $4b
    ld b, $50                                     ; $6844: $06 $50
    inc c                                         ; $6846: $0c
    ld c, e                                       ; $6847: $4b
    ld b, $50                                     ; $6848: $06 $50
    inc c                                         ; $684a: $0c
    ld c, e                                       ; $684b: $4b
    inc c                                         ; $684c: $0c
    ld d, b                                       ; $684d: $50
    inc c                                         ; $684e: $0c
    ld d, b                                       ; $684f: $50
    inc c                                         ; $6850: $0c
    ld d, b                                       ; $6851: $50
    inc c                                         ; $6852: $0c
    ld c, e                                       ; $6853: $4b
    inc c                                         ; $6854: $0c
    ld d, b                                       ; $6855: $50
    inc c                                         ; $6856: $0c
    ld c, e                                       ; $6857: $4b
    ld b, $50                                     ; $6858: $06 $50
    inc c                                         ; $685a: $0c
    ld c, e                                       ; $685b: $4b
    inc c                                         ; $685c: $0c
    ld d, b                                       ; $685d: $50
    inc c                                         ; $685e: $0c
    ld b, h                                       ; $685f: $44
    inc c                                         ; $6860: $0c
    ld d, b                                       ; $6861: $50
    inc c                                         ; $6862: $0c
    ld c, e                                       ; $6863: $4b
    ld b, $50                                     ; $6864: $06 $50
    inc c                                         ; $6866: $0c
    ld c, e                                       ; $6867: $4b
    ld b, $50                                     ; $6868: $06 $50
    inc c                                         ; $686a: $0c
    ld c, e                                       ; $686b: $4b
    inc c                                         ; $686c: $0c
    ld d, b                                       ; $686d: $50
    inc c                                         ; $686e: $0c
    ld c, h                                       ; $686f: $4c
    inc c                                         ; $6870: $0c
    ld d, b                                       ; $6871: $50
    inc c                                         ; $6872: $0c
    ld c, e                                       ; $6873: $4b
    inc c                                         ; $6874: $0c
    ld d, b                                       ; $6875: $50
    inc c                                         ; $6876: $0c
    ret                                           ; $6877: $c9


    inc d                                         ; $6878: $14
    ld b, $50                                     ; $6879: $06 $50
    inc c                                         ; $687b: $0c
    ld c, c                                       ; $687c: $49
    inc c                                         ; $687d: $0c
    ld d, b                                       ; $687e: $50
    inc c                                         ; $687f: $0c
    ld b, h                                       ; $6880: $44
    inc c                                         ; $6881: $0c
    ld d, b                                       ; $6882: $50
    inc c                                         ; $6883: $0c
    ld c, c                                       ; $6884: $49
    inc c                                         ; $6885: $0c
    ld d, b                                       ; $6886: $50
    inc c                                         ; $6887: $0c
    ld c, c                                       ; $6888: $49
    ld b, $50                                     ; $6889: $06 $50
    inc c                                         ; $688b: $0c
    ld c, c                                       ; $688c: $49
    inc c                                         ; $688d: $0c
    ld d, b                                       ; $688e: $50
    inc c                                         ; $688f: $0c
    ld c, h                                       ; $6890: $4c
    inc c                                         ; $6891: $0c
    ld d, b                                       ; $6892: $50
    inc c                                         ; $6893: $0c
    ld c, c                                       ; $6894: $49
    ld b, $50                                     ; $6895: $06 $50
    inc c                                         ; $6897: $0c
    ld c, c                                       ; $6898: $49
    ld b, $50                                     ; $6899: $06 $50
    inc c                                         ; $689b: $0c
    ld c, c                                       ; $689c: $49
    inc c                                         ; $689d: $0c
    ld d, b                                       ; $689e: $50
    inc c                                         ; $689f: $0c
    ld b, h                                       ; $68a0: $44
    inc c                                         ; $68a1: $0c
    ld d, b                                       ; $68a2: $50
    inc c                                         ; $68a3: $0c
    ld c, c                                       ; $68a4: $49
    ld b, $50                                     ; $68a5: $06 $50
    inc c                                         ; $68a7: $0c
    ld c, c                                       ; $68a8: $49
    ld b, $50                                     ; $68a9: $06 $50
    inc c                                         ; $68ab: $0c
    ld c, c                                       ; $68ac: $49
    inc c                                         ; $68ad: $0c
    ld d, b                                       ; $68ae: $50
    inc c                                         ; $68af: $0c
    ld c, h                                       ; $68b0: $4c
    inc c                                         ; $68b1: $0c
    ld d, b                                       ; $68b2: $50
    inc c                                         ; $68b3: $0c
    ld c, c                                       ; $68b4: $49
    ld b, $50                                     ; $68b5: $06 $50
    inc c                                         ; $68b7: $0c
    ld c, c                                       ; $68b8: $49
    ld b, $50                                     ; $68b9: $06 $50
    inc c                                         ; $68bb: $0c
    ld c, c                                       ; $68bc: $49
    inc c                                         ; $68bd: $0c
    ld d, b                                       ; $68be: $50
    inc c                                         ; $68bf: $0c
    ld b, d                                       ; $68c0: $42
    inc c                                         ; $68c1: $0c
    ld d, b                                       ; $68c2: $50
    inc c                                         ; $68c3: $0c
    ld c, c                                       ; $68c4: $49
    ld b, $50                                     ; $68c5: $06 $50
    inc c                                         ; $68c7: $0c
    ld c, c                                       ; $68c8: $49
    ld b, $50                                     ; $68c9: $06 $50
    inc c                                         ; $68cb: $0c
    ld c, c                                       ; $68cc: $49
    inc c                                         ; $68cd: $0c
    ld d, b                                       ; $68ce: $50
    inc c                                         ; $68cf: $0c
    ld c, [hl]                                    ; $68d0: $4e
    inc c                                         ; $68d1: $0c
    ld d, b                                       ; $68d2: $50
    inc c                                         ; $68d3: $0c
    ld c, c                                       ; $68d4: $49
    ld b, $50                                     ; $68d5: $06 $50
    inc c                                         ; $68d7: $0c
    ld c, c                                       ; $68d8: $49
    ld b, $50                                     ; $68d9: $06 $50
    inc c                                         ; $68db: $0c
    ld c, c                                       ; $68dc: $49
    inc c                                         ; $68dd: $0c
    ld d, b                                       ; $68de: $50
    inc c                                         ; $68df: $0c
    ld b, d                                       ; $68e0: $42
    inc c                                         ; $68e1: $0c
    ld d, b                                       ; $68e2: $50
    inc c                                         ; $68e3: $0c
    ld c, c                                       ; $68e4: $49
    ld b, $50                                     ; $68e5: $06 $50
    inc c                                         ; $68e7: $0c
    ld c, c                                       ; $68e8: $49
    ld b, $50                                     ; $68e9: $06 $50
    inc c                                         ; $68eb: $0c
    ld c, c                                       ; $68ec: $49
    inc c                                         ; $68ed: $0c
    ld d, b                                       ; $68ee: $50
    inc c                                         ; $68ef: $0c
    ld c, [hl]                                    ; $68f0: $4e
    inc c                                         ; $68f1: $0c
    ld d, b                                       ; $68f2: $50
    inc c                                         ; $68f3: $0c
    ld c, c                                       ; $68f4: $49
    inc c                                         ; $68f5: $0c
    ld d, b                                       ; $68f6: $50
    inc c                                         ; $68f7: $0c
    ld c, e                                       ; $68f8: $4b
    ld b, $50                                     ; $68f9: $06 $50
    inc c                                         ; $68fb: $0c
    ld c, e                                       ; $68fc: $4b
    inc c                                         ; $68fd: $0c
    ld d, b                                       ; $68fe: $50
    inc c                                         ; $68ff: $0c
    ld b, h                                       ; $6900: $44
    inc c                                         ; $6901: $0c
    ld d, b                                       ; $6902: $50
    inc c                                         ; $6903: $0c
    ld c, e                                       ; $6904: $4b
    ld b, $50                                     ; $6905: $06 $50
    inc c                                         ; $6907: $0c
    ld c, e                                       ; $6908: $4b
    ld b, $50                                     ; $6909: $06 $50
    inc c                                         ; $690b: $0c
    ld c, e                                       ; $690c: $4b
    inc c                                         ; $690d: $0c
    ld d, b                                       ; $690e: $50
    inc c                                         ; $690f: $0c
    ld c, h                                       ; $6910: $4c
    inc c                                         ; $6911: $0c
    ld d, b                                       ; $6912: $50
    inc c                                         ; $6913: $0c
    ld c, e                                       ; $6914: $4b
    inc c                                         ; $6915: $0c
    ldh a, [rP1]                                  ; $6916: $f0 $00
    rst $38                                       ; $6918: $ff
    ld h, c                                       ; $6919: $61
    db $ec                                        ; $691a: $ec
    jp nz, Jump_000_0e17                          ; $691b: $c2 $17 $0e

    ld h, b                                       ; $691e: $60
    inc c                                         ; $691f: $0c
    ld b, h                                       ; $6920: $44
    rrca                                          ; $6921: $0f
    ld h, b                                       ; $6922: $60
    inc c                                         ; $6923: $0c
    ld b, l                                       ; $6924: $45
    dec c                                         ; $6925: $0d
    ld h, b                                       ; $6926: $60
    inc c                                         ; $6927: $0c
    ld b, h                                       ; $6928: $44
    dec c                                         ; $6929: $0d
    ld h, b                                       ; $692a: $60
    inc c                                         ; $692b: $0c
    ld b, d                                       ; $692c: $42
    dec c                                         ; $692d: $0d
    ld h, b                                       ; $692e: $60
    inc c                                         ; $692f: $0c
    ld b, h                                       ; $6930: $44
    ld c, $60                                     ; $6931: $0e $60
    inc c                                         ; $6933: $0c
    ld b, l                                       ; $6934: $45
    rrca                                          ; $6935: $0f
    ld h, b                                       ; $6936: $60
    inc c                                         ; $6937: $0c
    ld b, a                                       ; $6938: $47
    jr @+$62                                      ; $6939: $18 $60

    jr jr_01b_6986                                ; $693b: $18 $49

    dec de                                        ; $693d: $1b
    ld h, b                                       ; $693e: $60
    jr jr_01b_6985                                ; $693f: $18 $44

    ld d, $60                                     ; $6941: $16 $60
    jr jr_01b_6982                                ; $6943: $18 $3d

    inc e                                         ; $6945: $1c
    ld h, b                                       ; $6946: $60
    jr jr_01b_697f                                ; $6947: $18 $36

    ld d, b                                       ; $6949: $50
    ld h, b                                       ; $694a: $60
    ld l, h                                       ; $694b: $6c
    dec a                                         ; $694c: $3d
    dec bc                                        ; $694d: $0b
    ld h, b                                       ; $694e: $60
    inc c                                         ; $694f: $0c
    ld a, $0b                                     ; $6950: $3e $0b
    ld h, b                                       ; $6952: $60
    inc c                                         ; $6953: $0c
    ld b, b                                       ; $6954: $40
    db $10                                        ; $6955: $10
    ld h, b                                       ; $6956: $60
    inc c                                         ; $6957: $0c
    ld a, $17                                     ; $6958: $3e $17
    ld h, b                                       ; $695a: $60
    ld [de], a                                    ; $695b: $12
    dec a                                         ; $695c: $3d
    ld e, $60                                     ; $695d: $1e $60
    ld a, [hl+]                                   ; $695f: $2a
    ccf                                           ; $6960: $3f
    dec c                                         ; $6961: $0d
    ld h, b                                       ; $6962: $60
    inc c                                         ; $6963: $0c
    ld b, b                                       ; $6964: $40
    db $10                                        ; $6965: $10
    ld h, b                                       ; $6966: $60
    inc c                                         ; $6967: $0c
    ld b, d                                       ; $6968: $42
    inc de                                        ; $6969: $13
    ld h, b                                       ; $696a: $60
    inc c                                         ; $696b: $0c
    ld b, b                                       ; $696c: $40
    dec de                                        ; $696d: $1b
    ld h, b                                       ; $696e: $60
    ld [de], a                                    ; $696f: $12
    ccf                                           ; $6970: $3f
    rra                                           ; $6971: $1f
    ld h, b                                       ; $6972: $60
    ld e, $38                                     ; $6973: $1e $38
    add b                                         ; $6975: $80
    sub [hl]                                      ; $6976: $96
    ld [hl], c                                    ; $6977: $71
    sbc b                                         ; $6978: $98
    ld b, [hl]                                    ; $6979: $46
    jr nc, jr_01b_69dc                            ; $697a: $30 $60

    jr nc, @+$43                                  ; $697c: $30 $41

    inc c                                         ; $697e: $0c

jr_01b_697f:
    ld [hl], b                                    ; $697f: $70
    inc c                                         ; $6980: $0c
    ld b, d                                       ; $6981: $42

jr_01b_6982:
    inc c                                         ; $6982: $0c
    ld [hl], b                                    ; $6983: $70
    inc c                                         ; $6984: $0c

jr_01b_6985:
    ld b, h                                       ; $6985: $44

jr_01b_6986:
    jr jr_01b_69f8                                ; $6986: $18 $70

    jr jr_01b_69c9                                ; $6988: $18 $3f

    inc c                                         ; $698a: $0c
    ld h, b                                       ; $698b: $60
    inc c                                         ; $698c: $0c
    ld b, c                                       ; $698d: $41
    inc c                                         ; $698e: $0c
    ld h, b                                       ; $698f: $60
    inc c                                         ; $6990: $0c
    ld b, d                                       ; $6991: $42
    ld [de], a                                    ; $6992: $12
    ld [hl], b                                    ; $6993: $70
    ld [de], a                                    ; $6994: $12
    dec a                                         ; $6995: $3d
    ld e, $60                                     ; $6996: $1e $60
    ld e, $3b                                     ; $6998: $1e $3b
    jr nc, jr_01b_6a0c                            ; $699a: $30 $70

    jr nc, jr_01b_69e0                            ; $699c: $30 $42

    jr jr_01b_6a10                                ; $699e: $18 $70

    jr jr_01b_69e9                                ; $69a0: $18 $47

    ld h, b                                       ; $69a2: $60
    ld [hl], b                                    ; $69a3: $70
    xor b                                         ; $69a4: $a8
    ccf                                           ; $69a5: $3f
    jr jr_01b_6a18                                ; $69a6: $18 $70

    jr @+$42                                      ; $69a8: $18 $40

    inc c                                         ; $69aa: $0c
    ld [hl], b                                    ; $69ab: $70
    inc c                                         ; $69ac: $0c
    ccf                                           ; $69ad: $3f
    inc c                                         ; $69ae: $0c
    ld [hl], b                                    ; $69af: $70
    inc c                                         ; $69b0: $0c
    dec a                                         ; $69b1: $3d
    ld h, b                                       ; $69b2: $60
    ld [hl], b                                    ; $69b3: $70
    ld h, b                                       ; $69b4: $60
    jr c, @+$62                                   ; $69b5: $38 $60

    ldh a, [rP1]                                  ; $69b7: $f0 $00
    rst $38                                       ; $69b9: $ff
    ld h, b                                       ; $69ba: $60
    nop                                           ; $69bb: $00
    xor e                                         ; $69bc: $ab
    dec e                                         ; $69bd: $1d
    ld b, $60                                     ; $69be: $06 $60
    inc c                                         ; $69c0: $0c
    ld h, $06                                     ; $69c1: $26 $06
    ld h, b                                       ; $69c3: $60
    inc c                                         ; $69c4: $0c
    ld a, [hl+]                                   ; $69c5: $2a
    ld b, $50                                     ; $69c6: $06 $50
    inc c                                         ; $69c8: $0c

jr_01b_69c9:
    ld h, $06                                     ; $69c9: $26 $06
    ld h, b                                       ; $69cb: $60
    inc c                                         ; $69cc: $0c
    dec hl                                        ; $69cd: $2b
    ld b, $50                                     ; $69ce: $06 $50
    inc c                                         ; $69d0: $0c
    ld h, $06                                     ; $69d1: $26 $06
    ld h, b                                       ; $69d3: $60
    inc c                                         ; $69d4: $0c
    ld a, [hl+]                                   ; $69d5: $2a
    ld b, $60                                     ; $69d6: $06 $60
    inc c                                         ; $69d8: $0c
    ld h, $06                                     ; $69d9: $26 $06
    ld d, b                                       ; $69db: $50

jr_01b_69dc:
    inc c                                         ; $69dc: $0c
    dec hl                                        ; $69dd: $2b
    ld b, $60                                     ; $69de: $06 $60

jr_01b_69e0:
    inc c                                         ; $69e0: $0c
    ld h, $06                                     ; $69e1: $26 $06
    ld h, b                                       ; $69e3: $60
    inc c                                         ; $69e4: $0c
    ld a, [hl+]                                   ; $69e5: $2a
    ld b, $60                                     ; $69e6: $06 $60
    inc c                                         ; $69e8: $0c

jr_01b_69e9:
    ld h, $06                                     ; $69e9: $26 $06
    ld h, b                                       ; $69eb: $60
    inc c                                         ; $69ec: $0c
    dec hl                                        ; $69ed: $2b
    ld b, $60                                     ; $69ee: $06 $60
    inc c                                         ; $69f0: $0c
    ld h, $06                                     ; $69f1: $26 $06
    ld h, b                                       ; $69f3: $60
    inc c                                         ; $69f4: $0c
    ld a, [hl+]                                   ; $69f5: $2a
    ld b, $60                                     ; $69f6: $06 $60

jr_01b_69f8:
    inc c                                         ; $69f8: $0c
    ld h, $06                                     ; $69f9: $26 $06
    ld h, b                                       ; $69fb: $60
    inc c                                         ; $69fc: $0c
    dec hl                                        ; $69fd: $2b
    ld b, $60                                     ; $69fe: $06 $60
    inc c                                         ; $6a00: $0c
    ld h, $06                                     ; $6a01: $26 $06
    ld h, b                                       ; $6a03: $60
    inc c                                         ; $6a04: $0c
    ld a, [hl+]                                   ; $6a05: $2a
    ld b, $60                                     ; $6a06: $06 $60
    inc c                                         ; $6a08: $0c
    ld h, $06                                     ; $6a09: $26 $06
    ld h, b                                       ; $6a0b: $60

jr_01b_6a0c:
    inc c                                         ; $6a0c: $0c
    dec hl                                        ; $6a0d: $2b
    ld b, $60                                     ; $6a0e: $06 $60

jr_01b_6a10:
    inc c                                         ; $6a10: $0c
    ld h, $06                                     ; $6a11: $26 $06
    ld h, b                                       ; $6a13: $60
    inc c                                         ; $6a14: $0c
    ld a, [hl+]                                   ; $6a15: $2a
    ld b, $60                                     ; $6a16: $06 $60

jr_01b_6a18:
    inc c                                         ; $6a18: $0c
    ld h, $06                                     ; $6a19: $26 $06
    ld h, b                                       ; $6a1b: $60
    inc c                                         ; $6a1c: $0c
    dec hl                                        ; $6a1d: $2b
    ld b, $60                                     ; $6a1e: $06 $60
    inc c                                         ; $6a20: $0c
    ld h, $06                                     ; $6a21: $26 $06
    ld h, b                                       ; $6a23: $60
    inc c                                         ; $6a24: $0c
    ld a, [hl+]                                   ; $6a25: $2a
    ld b, $60                                     ; $6a26: $06 $60
    inc c                                         ; $6a28: $0c
    ld h, $06                                     ; $6a29: $26 $06
    ld h, b                                       ; $6a2b: $60
    inc c                                         ; $6a2c: $0c
    dec hl                                        ; $6a2d: $2b
    ld b, $60                                     ; $6a2e: $06 $60
    inc c                                         ; $6a30: $0c
    ld h, $06                                     ; $6a31: $26 $06
    ld h, b                                       ; $6a33: $60
    inc c                                         ; $6a34: $0c
    ld a, [hl+]                                   ; $6a35: $2a
    ld b, $60                                     ; $6a36: $06 $60
    inc c                                         ; $6a38: $0c
    ld h, $06                                     ; $6a39: $26 $06
    ld h, b                                       ; $6a3b: $60
    inc c                                         ; $6a3c: $0c
    dec hl                                        ; $6a3d: $2b
    ld b, $60                                     ; $6a3e: $06 $60
    inc c                                         ; $6a40: $0c
    ld h, $06                                     ; $6a41: $26 $06
    ld h, b                                       ; $6a43: $60
    inc c                                         ; $6a44: $0c
    ld a, [hl+]                                   ; $6a45: $2a
    ld b, $60                                     ; $6a46: $06 $60
    inc c                                         ; $6a48: $0c
    ld h, $06                                     ; $6a49: $26 $06
    ld h, b                                       ; $6a4b: $60
    inc c                                         ; $6a4c: $0c
    dec hl                                        ; $6a4d: $2b
    ld b, $60                                     ; $6a4e: $06 $60
    inc c                                         ; $6a50: $0c
    ld h, $06                                     ; $6a51: $26 $06
    ld h, b                                       ; $6a53: $60
    inc c                                         ; $6a54: $0c
    ld a, [hl+]                                   ; $6a55: $2a
    ld b, $60                                     ; $6a56: $06 $60
    inc c                                         ; $6a58: $0c
    ld h, $06                                     ; $6a59: $26 $06
    ld h, b                                       ; $6a5b: $60
    inc c                                         ; $6a5c: $0c
    dec hl                                        ; $6a5d: $2b
    ld b, $60                                     ; $6a5e: $06 $60
    inc c                                         ; $6a60: $0c
    ld h, $06                                     ; $6a61: $26 $06
    ld h, b                                       ; $6a63: $60
    inc c                                         ; $6a64: $0c
    ld a, [hl+]                                   ; $6a65: $2a
    ld b, $60                                     ; $6a66: $06 $60
    inc c                                         ; $6a68: $0c
    ld h, $06                                     ; $6a69: $26 $06
    ld h, b                                       ; $6a6b: $60
    inc c                                         ; $6a6c: $0c
    dec hl                                        ; $6a6d: $2b
    ld b, $60                                     ; $6a6e: $06 $60
    inc c                                         ; $6a70: $0c
    ld h, $06                                     ; $6a71: $26 $06
    ld h, b                                       ; $6a73: $60
    inc c                                         ; $6a74: $0c
    ld a, [hl+]                                   ; $6a75: $2a
    ld b, $60                                     ; $6a76: $06 $60
    inc c                                         ; $6a78: $0c
    ld h, $06                                     ; $6a79: $26 $06
    ld h, b                                       ; $6a7b: $60
    inc c                                         ; $6a7c: $0c
    dec hl                                        ; $6a7d: $2b
    ld b, $60                                     ; $6a7e: $06 $60
    inc c                                         ; $6a80: $0c
    ld h, $06                                     ; $6a81: $26 $06
    ld h, b                                       ; $6a83: $60
    inc c                                         ; $6a84: $0c
    ld a, [hl+]                                   ; $6a85: $2a
    ld b, $60                                     ; $6a86: $06 $60
    inc c                                         ; $6a88: $0c
    ld h, $06                                     ; $6a89: $26 $06
    ld h, b                                       ; $6a8b: $60
    inc c                                         ; $6a8c: $0c
    dec hl                                        ; $6a8d: $2b
    ld b, $60                                     ; $6a8e: $06 $60
    inc c                                         ; $6a90: $0c
    ld h, $06                                     ; $6a91: $26 $06
    ld h, b                                       ; $6a93: $60
    inc c                                         ; $6a94: $0c
    ld a, [hl+]                                   ; $6a95: $2a
    ld b, $60                                     ; $6a96: $06 $60
    inc c                                         ; $6a98: $0c
    ld h, $06                                     ; $6a99: $26 $06
    ld h, b                                       ; $6a9b: $60
    inc c                                         ; $6a9c: $0c
    dec hl                                        ; $6a9d: $2b
    ld b, $60                                     ; $6a9e: $06 $60
    inc c                                         ; $6aa0: $0c
    ld h, $06                                     ; $6aa1: $26 $06
    ld h, b                                       ; $6aa3: $60
    inc c                                         ; $6aa4: $0c
    ld a, [hl+]                                   ; $6aa5: $2a
    ld b, $60                                     ; $6aa6: $06 $60
    inc c                                         ; $6aa8: $0c
    ld h, $06                                     ; $6aa9: $26 $06
    ld h, b                                       ; $6aab: $60
    inc c                                         ; $6aac: $0c
    dec hl                                        ; $6aad: $2b
    ld b, $60                                     ; $6aae: $06 $60
    inc c                                         ; $6ab0: $0c
    ld h, $06                                     ; $6ab1: $26 $06
    ld h, b                                       ; $6ab3: $60
    inc c                                         ; $6ab4: $0c
    ld a, [hl+]                                   ; $6ab5: $2a
    ld b, $60                                     ; $6ab6: $06 $60
    inc c                                         ; $6ab8: $0c
    ld h, $06                                     ; $6ab9: $26 $06
    ld h, b                                       ; $6abb: $60
    inc c                                         ; $6abc: $0c
    dec hl                                        ; $6abd: $2b
    ld b, $60                                     ; $6abe: $06 $60
    inc c                                         ; $6ac0: $0c
    ld h, $06                                     ; $6ac1: $26 $06
    ld h, b                                       ; $6ac3: $60
    inc c                                         ; $6ac4: $0c
    ld a, [hl+]                                   ; $6ac5: $2a
    ld b, $60                                     ; $6ac6: $06 $60
    inc c                                         ; $6ac8: $0c
    ld h, $06                                     ; $6ac9: $26 $06
    ld h, b                                       ; $6acb: $60
    inc c                                         ; $6acc: $0c
    dec hl                                        ; $6acd: $2b
    ld b, $60                                     ; $6ace: $06 $60
    inc c                                         ; $6ad0: $0c
    ld h, $06                                     ; $6ad1: $26 $06
    ld h, b                                       ; $6ad3: $60
    inc c                                         ; $6ad4: $0c
    ld a, [hl+]                                   ; $6ad5: $2a
    ld b, $60                                     ; $6ad6: $06 $60
    inc c                                         ; $6ad8: $0c
    ld h, $06                                     ; $6ad9: $26 $06
    ld h, b                                       ; $6adb: $60
    inc c                                         ; $6adc: $0c
    dec hl                                        ; $6add: $2b
    ld b, $60                                     ; $6ade: $06 $60
    inc c                                         ; $6ae0: $0c
    ld h, $06                                     ; $6ae1: $26 $06
    ld h, b                                       ; $6ae3: $60
    inc c                                         ; $6ae4: $0c
    ld a, [hl+]                                   ; $6ae5: $2a
    ld b, $50                                     ; $6ae6: $06 $50
    inc c                                         ; $6ae8: $0c
    ld h, $06                                     ; $6ae9: $26 $06
    ld h, b                                       ; $6aeb: $60
    inc c                                         ; $6aec: $0c
    dec hl                                        ; $6aed: $2b
    ld b, $50                                     ; $6aee: $06 $50
    inc c                                         ; $6af0: $0c
    ld h, $06                                     ; $6af1: $26 $06
    ld h, b                                       ; $6af3: $60
    inc c                                         ; $6af4: $0c
    ld a, [hl+]                                   ; $6af5: $2a
    ld b, $60                                     ; $6af6: $06 $60
    inc c                                         ; $6af8: $0c
    ld h, $06                                     ; $6af9: $26 $06
    ld d, b                                       ; $6afb: $50
    inc c                                         ; $6afc: $0c
    dec hl                                        ; $6afd: $2b
    ld b, $60                                     ; $6afe: $06 $60
    inc c                                         ; $6b00: $0c
    ld h, $06                                     ; $6b01: $26 $06
    ld h, b                                       ; $6b03: $60
    inc c                                         ; $6b04: $0c
    ld a, [hl+]                                   ; $6b05: $2a
    ld b, $60                                     ; $6b06: $06 $60
    inc c                                         ; $6b08: $0c
    ld h, $06                                     ; $6b09: $26 $06
    ld h, b                                       ; $6b0b: $60
    inc c                                         ; $6b0c: $0c
    dec hl                                        ; $6b0d: $2b
    ld b, $60                                     ; $6b0e: $06 $60
    inc c                                         ; $6b10: $0c
    ld h, $06                                     ; $6b11: $26 $06
    ld h, b                                       ; $6b13: $60
    inc c                                         ; $6b14: $0c
    ld a, [hl+]                                   ; $6b15: $2a
    ld b, $60                                     ; $6b16: $06 $60
    inc c                                         ; $6b18: $0c
    ld h, $06                                     ; $6b19: $26 $06
    ld h, b                                       ; $6b1b: $60
    inc c                                         ; $6b1c: $0c
    dec hl                                        ; $6b1d: $2b
    ld b, $60                                     ; $6b1e: $06 $60
    inc c                                         ; $6b20: $0c
    ld h, $06                                     ; $6b21: $26 $06
    ld h, b                                       ; $6b23: $60
    inc c                                         ; $6b24: $0c
    ld a, [hl+]                                   ; $6b25: $2a
    ld b, $60                                     ; $6b26: $06 $60
    inc c                                         ; $6b28: $0c
    ld h, $06                                     ; $6b29: $26 $06
    ld h, b                                       ; $6b2b: $60
    inc c                                         ; $6b2c: $0c
    dec hl                                        ; $6b2d: $2b
    ld b, $60                                     ; $6b2e: $06 $60
    inc c                                         ; $6b30: $0c
    ld h, $06                                     ; $6b31: $26 $06
    ld h, b                                       ; $6b33: $60
    inc c                                         ; $6b34: $0c
    ld a, [hl+]                                   ; $6b35: $2a
    ld b, $60                                     ; $6b36: $06 $60
    inc c                                         ; $6b38: $0c
    ld h, $06                                     ; $6b39: $26 $06
    ld h, b                                       ; $6b3b: $60
    inc c                                         ; $6b3c: $0c
    dec hl                                        ; $6b3d: $2b
    ld b, $60                                     ; $6b3e: $06 $60
    inc c                                         ; $6b40: $0c
    ld h, $06                                     ; $6b41: $26 $06
    ld h, b                                       ; $6b43: $60
    inc c                                         ; $6b44: $0c
    ld a, [hl+]                                   ; $6b45: $2a
    ld b, $60                                     ; $6b46: $06 $60
    inc c                                         ; $6b48: $0c
    ld h, $06                                     ; $6b49: $26 $06
    ld h, b                                       ; $6b4b: $60
    inc c                                         ; $6b4c: $0c
    dec hl                                        ; $6b4d: $2b
    ld b, $60                                     ; $6b4e: $06 $60
    inc c                                         ; $6b50: $0c
    ld h, $06                                     ; $6b51: $26 $06
    ld h, b                                       ; $6b53: $60
    inc c                                         ; $6b54: $0c
    ld a, [hl+]                                   ; $6b55: $2a
    ld b, $60                                     ; $6b56: $06 $60
    inc c                                         ; $6b58: $0c
    ld h, $06                                     ; $6b59: $26 $06
    ld h, b                                       ; $6b5b: $60
    inc c                                         ; $6b5c: $0c
    dec hl                                        ; $6b5d: $2b
    ld b, $60                                     ; $6b5e: $06 $60
    inc c                                         ; $6b60: $0c
    ld h, $06                                     ; $6b61: $26 $06
    ld h, b                                       ; $6b63: $60
    inc c                                         ; $6b64: $0c
    ld a, [hl+]                                   ; $6b65: $2a
    ld b, $60                                     ; $6b66: $06 $60
    inc c                                         ; $6b68: $0c
    ld h, $06                                     ; $6b69: $26 $06
    ld h, b                                       ; $6b6b: $60
    inc c                                         ; $6b6c: $0c
    dec hl                                        ; $6b6d: $2b
    ld b, $60                                     ; $6b6e: $06 $60
    inc c                                         ; $6b70: $0c
    ld h, $06                                     ; $6b71: $26 $06
    ld h, b                                       ; $6b73: $60
    inc c                                         ; $6b74: $0c
    ld a, [hl+]                                   ; $6b75: $2a
    ld b, $60                                     ; $6b76: $06 $60
    inc c                                         ; $6b78: $0c
    ld h, $06                                     ; $6b79: $26 $06
    ld h, b                                       ; $6b7b: $60
    inc c                                         ; $6b7c: $0c
    dec hl                                        ; $6b7d: $2b
    ld b, $60                                     ; $6b7e: $06 $60
    inc c                                         ; $6b80: $0c
    ld h, $06                                     ; $6b81: $26 $06
    ld h, b                                       ; $6b83: $60
    inc c                                         ; $6b84: $0c
    ld a, [hl+]                                   ; $6b85: $2a
    ld b, $60                                     ; $6b86: $06 $60
    inc c                                         ; $6b88: $0c
    ld h, $06                                     ; $6b89: $26 $06
    ld h, b                                       ; $6b8b: $60
    inc c                                         ; $6b8c: $0c
    dec hl                                        ; $6b8d: $2b
    ld b, $60                                     ; $6b8e: $06 $60
    inc c                                         ; $6b90: $0c
    ld h, $06                                     ; $6b91: $26 $06
    ld h, b                                       ; $6b93: $60
    inc c                                         ; $6b94: $0c
    ld a, [hl+]                                   ; $6b95: $2a
    ld b, $60                                     ; $6b96: $06 $60
    inc c                                         ; $6b98: $0c
    ld h, $06                                     ; $6b99: $26 $06
    ld h, b                                       ; $6b9b: $60
    inc c                                         ; $6b9c: $0c
    dec hl                                        ; $6b9d: $2b
    ld b, $60                                     ; $6b9e: $06 $60
    inc c                                         ; $6ba0: $0c
    ld h, $06                                     ; $6ba1: $26 $06
    ld h, b                                       ; $6ba3: $60
    inc c                                         ; $6ba4: $0c
    ld a, [hl+]                                   ; $6ba5: $2a
    ld b, $60                                     ; $6ba6: $06 $60
    inc c                                         ; $6ba8: $0c
    ld h, $06                                     ; $6ba9: $26 $06
    ld h, b                                       ; $6bab: $60
    inc c                                         ; $6bac: $0c
    dec hl                                        ; $6bad: $2b
    ld b, $60                                     ; $6bae: $06 $60
    inc c                                         ; $6bb0: $0c
    ld h, $06                                     ; $6bb1: $26 $06
    ld h, b                                       ; $6bb3: $60
    inc c                                         ; $6bb4: $0c
    ld a, [hl+]                                   ; $6bb5: $2a
    ld b, $60                                     ; $6bb6: $06 $60
    inc c                                         ; $6bb8: $0c
    ld h, $06                                     ; $6bb9: $26 $06
    ld h, b                                       ; $6bbb: $60
    inc c                                         ; $6bbc: $0c
    dec hl                                        ; $6bbd: $2b
    ld b, $60                                     ; $6bbe: $06 $60
    inc c                                         ; $6bc0: $0c
    ld h, $06                                     ; $6bc1: $26 $06
    ld h, b                                       ; $6bc3: $60
    inc c                                         ; $6bc4: $0c
    ld a, [hl+]                                   ; $6bc5: $2a
    ld b, $60                                     ; $6bc6: $06 $60
    inc c                                         ; $6bc8: $0c
    ld h, $06                                     ; $6bc9: $26 $06
    ld h, b                                       ; $6bcb: $60
    inc c                                         ; $6bcc: $0c
    dec hl                                        ; $6bcd: $2b
    ld b, $60                                     ; $6bce: $06 $60
    inc c                                         ; $6bd0: $0c
    ld h, $06                                     ; $6bd1: $26 $06
    ld h, b                                       ; $6bd3: $60
    inc c                                         ; $6bd4: $0c
    ld a, [hl+]                                   ; $6bd5: $2a
    ld b, $60                                     ; $6bd6: $06 $60
    inc c                                         ; $6bd8: $0c
    ld h, $06                                     ; $6bd9: $26 $06
    ld h, b                                       ; $6bdb: $60
    inc c                                         ; $6bdc: $0c
    dec hl                                        ; $6bdd: $2b
    ld b, $60                                     ; $6bde: $06 $60
    inc c                                         ; $6be0: $0c
    ld h, $06                                     ; $6be1: $26 $06
    ld h, b                                       ; $6be3: $60
    inc c                                         ; $6be4: $0c
    ld a, [hl+]                                   ; $6be5: $2a
    ld b, $50                                     ; $6be6: $06 $50
    inc c                                         ; $6be8: $0c
    ld h, $06                                     ; $6be9: $26 $06
    ld h, b                                       ; $6beb: $60
    inc c                                         ; $6bec: $0c
    dec hl                                        ; $6bed: $2b
    ld b, $50                                     ; $6bee: $06 $50
    inc c                                         ; $6bf0: $0c
    ld h, $06                                     ; $6bf1: $26 $06
    ld h, b                                       ; $6bf3: $60
    inc c                                         ; $6bf4: $0c
    ld a, [hl+]                                   ; $6bf5: $2a
    ld b, $60                                     ; $6bf6: $06 $60
    inc c                                         ; $6bf8: $0c
    ld h, $06                                     ; $6bf9: $26 $06
    ld d, b                                       ; $6bfb: $50
    inc c                                         ; $6bfc: $0c
    dec hl                                        ; $6bfd: $2b
    ld b, $60                                     ; $6bfe: $06 $60
    inc c                                         ; $6c00: $0c
    ld h, $06                                     ; $6c01: $26 $06
    ld h, b                                       ; $6c03: $60
    inc c                                         ; $6c04: $0c
    ld a, [hl+]                                   ; $6c05: $2a
    ld b, $60                                     ; $6c06: $06 $60
    inc c                                         ; $6c08: $0c
    ld h, $06                                     ; $6c09: $26 $06
    ld h, b                                       ; $6c0b: $60
    inc c                                         ; $6c0c: $0c
    dec hl                                        ; $6c0d: $2b
    ld b, $60                                     ; $6c0e: $06 $60
    inc c                                         ; $6c10: $0c
    ld h, $06                                     ; $6c11: $26 $06
    ld h, b                                       ; $6c13: $60
    inc c                                         ; $6c14: $0c
    ld a, [hl+]                                   ; $6c15: $2a
    ld b, $60                                     ; $6c16: $06 $60
    inc c                                         ; $6c18: $0c
    ld h, $06                                     ; $6c19: $26 $06
    ld h, b                                       ; $6c1b: $60
    inc c                                         ; $6c1c: $0c
    dec hl                                        ; $6c1d: $2b
    ld b, $60                                     ; $6c1e: $06 $60
    inc c                                         ; $6c20: $0c
    ld h, $06                                     ; $6c21: $26 $06
    ld h, b                                       ; $6c23: $60
    inc c                                         ; $6c24: $0c
    ld a, [hl+]                                   ; $6c25: $2a
    ld b, $60                                     ; $6c26: $06 $60
    inc c                                         ; $6c28: $0c
    ld h, $06                                     ; $6c29: $26 $06
    ld h, b                                       ; $6c2b: $60
    inc c                                         ; $6c2c: $0c
    dec hl                                        ; $6c2d: $2b
    ld b, $60                                     ; $6c2e: $06 $60
    inc c                                         ; $6c30: $0c
    ld h, $06                                     ; $6c31: $26 $06
    ld h, b                                       ; $6c33: $60
    inc c                                         ; $6c34: $0c
    ld a, [hl+]                                   ; $6c35: $2a
    ld b, $60                                     ; $6c36: $06 $60
    inc c                                         ; $6c38: $0c
    ld h, $06                                     ; $6c39: $26 $06
    ld h, b                                       ; $6c3b: $60
    inc c                                         ; $6c3c: $0c
    dec hl                                        ; $6c3d: $2b
    ld b, $60                                     ; $6c3e: $06 $60
    inc c                                         ; $6c40: $0c
    ld h, $06                                     ; $6c41: $26 $06
    ld h, b                                       ; $6c43: $60
    inc c                                         ; $6c44: $0c
    ld a, [hl+]                                   ; $6c45: $2a
    ld b, $60                                     ; $6c46: $06 $60
    inc c                                         ; $6c48: $0c
    ld h, $06                                     ; $6c49: $26 $06
    ld h, b                                       ; $6c4b: $60
    inc c                                         ; $6c4c: $0c
    dec hl                                        ; $6c4d: $2b
    ld b, $60                                     ; $6c4e: $06 $60
    inc c                                         ; $6c50: $0c
    ld h, $06                                     ; $6c51: $26 $06
    ld h, b                                       ; $6c53: $60
    inc c                                         ; $6c54: $0c
    ld a, [hl+]                                   ; $6c55: $2a
    ld b, $60                                     ; $6c56: $06 $60
    inc c                                         ; $6c58: $0c
    ld h, $06                                     ; $6c59: $26 $06
    ld h, b                                       ; $6c5b: $60
    inc c                                         ; $6c5c: $0c
    dec hl                                        ; $6c5d: $2b
    ld b, $60                                     ; $6c5e: $06 $60
    inc c                                         ; $6c60: $0c
    ld h, $06                                     ; $6c61: $26 $06
    ld h, b                                       ; $6c63: $60
    inc c                                         ; $6c64: $0c
    ld a, [hl+]                                   ; $6c65: $2a
    ld b, $60                                     ; $6c66: $06 $60
    inc c                                         ; $6c68: $0c
    ld h, $06                                     ; $6c69: $26 $06
    ld h, b                                       ; $6c6b: $60
    inc c                                         ; $6c6c: $0c
    dec hl                                        ; $6c6d: $2b
    ld b, $60                                     ; $6c6e: $06 $60
    inc c                                         ; $6c70: $0c
    ld h, $06                                     ; $6c71: $26 $06
    ld h, b                                       ; $6c73: $60
    inc c                                         ; $6c74: $0c
    ld a, [hl+]                                   ; $6c75: $2a
    ld b, $60                                     ; $6c76: $06 $60
    inc c                                         ; $6c78: $0c
    ld h, $06                                     ; $6c79: $26 $06
    ld h, b                                       ; $6c7b: $60
    inc c                                         ; $6c7c: $0c
    dec hl                                        ; $6c7d: $2b
    ld b, $60                                     ; $6c7e: $06 $60
    inc c                                         ; $6c80: $0c
    ld h, $06                                     ; $6c81: $26 $06
    ld h, b                                       ; $6c83: $60
    inc c                                         ; $6c84: $0c
    ld a, [hl+]                                   ; $6c85: $2a
    ld b, $50                                     ; $6c86: $06 $50
    inc c                                         ; $6c88: $0c
    ld h, $06                                     ; $6c89: $26 $06
    ld h, b                                       ; $6c8b: $60
    inc c                                         ; $6c8c: $0c
    dec hl                                        ; $6c8d: $2b
    ld b, $50                                     ; $6c8e: $06 $50
    inc c                                         ; $6c90: $0c
    ld h, $06                                     ; $6c91: $26 $06
    ld h, b                                       ; $6c93: $60
    inc c                                         ; $6c94: $0c
    ld a, [hl+]                                   ; $6c95: $2a
    ld b, $60                                     ; $6c96: $06 $60
    inc c                                         ; $6c98: $0c
    ld h, $06                                     ; $6c99: $26 $06
    ld d, b                                       ; $6c9b: $50
    inc c                                         ; $6c9c: $0c
    dec hl                                        ; $6c9d: $2b
    ld b, $60                                     ; $6c9e: $06 $60
    inc c                                         ; $6ca0: $0c
    ld h, $06                                     ; $6ca1: $26 $06
    ld h, b                                       ; $6ca3: $60
    inc c                                         ; $6ca4: $0c
    ld a, [hl+]                                   ; $6ca5: $2a
    ld b, $60                                     ; $6ca6: $06 $60
    inc c                                         ; $6ca8: $0c
    ld h, $06                                     ; $6ca9: $26 $06
    ld h, b                                       ; $6cab: $60
    inc c                                         ; $6cac: $0c
    dec hl                                        ; $6cad: $2b
    ld b, $60                                     ; $6cae: $06 $60
    inc c                                         ; $6cb0: $0c
    ld h, $06                                     ; $6cb1: $26 $06
    ld h, b                                       ; $6cb3: $60
    inc c                                         ; $6cb4: $0c
    ld a, [hl+]                                   ; $6cb5: $2a
    ld b, $60                                     ; $6cb6: $06 $60
    inc c                                         ; $6cb8: $0c
    ld h, $06                                     ; $6cb9: $26 $06
    ldh a, [rP1]                                  ; $6cbb: $f0 $00
    rst $38                                       ; $6cbd: $ff
    ldh a, [rP1]                                  ; $6cbe: $f0 $00
    rst $38                                       ; $6cc0: $ff
    ld a, d                                       ; $6cc1: $7a
    ld a, d                                       ; $6cc2: $7a
    ld a, d                                       ; $6cc3: $7a
    ld a, d                                       ; $6cc4: $7a
    ld a, d                                       ; $6cc5: $7a
    ld a, c                                       ; $6cc6: $79
    add c                                         ; $6cc7: $81
    ld [hl], c                                    ; $6cc8: $71
    ld [hl], e                                    ; $6cc9: $73
    add [hl]                                      ; $6cca: $86
    add l                                         ; $6ccb: $85
    add h                                         ; $6ccc: $84
    add e                                         ; $6ccd: $83
    ld a, h                                       ; $6cce: $7c
    ld a, a                                       ; $6ccf: $7f
    ld a, d                                       ; $6cd0: $7a
    ld [hl], d                                    ; $6cd1: $72
    ld l, [hl]                                    ; $6cd2: $6e
    ld l, c                                       ; $6cd3: $69
    ld a, b                                       ; $6cd4: $78
    ld [hl], a                                    ; $6cd5: $77
    ld a, [hl]                                    ; $6cd6: $7e
    ld [hl], h                                    ; $6cd7: $74
    add c                                         ; $6cd8: $81
    add d                                         ; $6cd9: $82
    add b                                         ; $6cda: $80
    ld a, e                                       ; $6cdb: $7b
    ld l, b                                       ; $6cdc: $68
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    ld [hl], c                                    ; $6ce2: $71
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00
    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    nop                                           ; $6d1c: $00
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    nop                                           ; $6d1f: $00
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    nop                                           ; $6d34: $00
    nop                                           ; $6d35: $00
    nop                                           ; $6d36: $00
    nop                                           ; $6d37: $00
    nop                                           ; $6d38: $00
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    nop                                           ; $6d45: $00
    ld b, $00                                     ; $6d46: $06 $00
    inc l                                         ; $6d48: $2c
    nop                                           ; $6d49: $00
    ld l, b                                       ; $6d4a: $68
    nop                                           ; $6d4b: $00
    ld c, $00                                     ; $6d4c: $0e $00
    jr jr_01b_6d50                                ; $6d4e: $18 $00

jr_01b_6d50:
    ld [hl+], a                                   ; $6d50: $22
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    dec c                                         ; $6d56: $0d

jr_01b_6d57:
    jr nz, jr_01b_6d57                            ; $6d57: $20 $fe

    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    ld bc, $200d                                  ; $6d5f: $01 $0d $20
    cp $00                                        ; $6d62: $fe $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    ld [bc], a                                    ; $6d69: $02
    dec c                                         ; $6d6a: $0d

jr_01b_6d6b:
    jr nz, jr_01b_6d6b                            ; $6d6b: $20 $fe

    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    inc [hl]                                      ; $6d72: $34
    inc bc                                        ; $6d73: $03
    ld [hl], l                                    ; $6d74: $75
    ld b, $4a                                     ; $6d75: $06 $4a
    add hl, bc                                    ; $6d77: $09
    db $d3                                        ; $6d78: $d3
    ld h, b                                       ; $6d79: $60
    nop                                           ; $6d7a: $00
    ret nz                                        ; $6d7b: $c0

    rla                                           ; $6d7c: $17
    ld a, [bc]                                    ; $6d7d: $0a
    ld h, b                                       ; $6d7e: $60
    inc c                                         ; $6d7f: $0c
    ld b, d                                       ; $6d80: $42
    dec bc                                        ; $6d81: $0b
    ld [hl], b                                    ; $6d82: $70
    inc c                                         ; $6d83: $0c
    ld b, e                                       ; $6d84: $43
    rlca                                          ; $6d85: $07
    ld d, b                                       ; $6d86: $50
    jr jr_01b_6dcb                                ; $6d87: $18 $42

    add hl, bc                                    ; $6d89: $09
    ld h, b                                       ; $6d8a: $60
    jr jr_01b_6dcd                                ; $6d8b: $18 $40

    ld de, $1860                                  ; $6d8d: $11 $60 $18
    ld a, [hl-]                                   ; $6d90: $3a
    ld a, [hl+]                                   ; $6d91: $2a
    ld d, b                                       ; $6d92: $50
    ld a, [hl+]                                   ; $6d93: $2a
    jr c, jr_01b_6d99                             ; $6d94: $38 $03

    ld d, b                                       ; $6d96: $50
    inc bc                                        ; $6d97: $03
    ld a, [hl-]                                   ; $6d98: $3a

jr_01b_6d99:
    inc bc                                        ; $6d99: $03
    ld h, b                                       ; $6d9a: $60
    inc bc                                        ; $6d9b: $03
    dec sp                                        ; $6d9c: $3b
    jr jr_01b_6dff                                ; $6d9d: $18 $60

    inc h                                         ; $6d9f: $24
    inc a                                         ; $6da0: $3c
    rlca                                          ; $6da1: $07
    ld h, b                                       ; $6da2: $60
    ld b, $3f                                     ; $6da3: $06 $3f
    dec b                                         ; $6da5: $05
    ld h, b                                       ; $6da6: $60
    ld b, $40                                     ; $6da7: $06 $40
    ld c, $60                                     ; $6da9: $0e $60
    inc c                                         ; $6dab: $0c
    ld b, d                                       ; $6dac: $42
    dec bc                                        ; $6dad: $0b
    ld [hl], b                                    ; $6dae: $70
    inc c                                         ; $6daf: $0c
    ld b, e                                       ; $6db0: $43
    ld [$1860], sp                                ; $6db1: $08 $60 $18
    ld b, d                                       ; $6db4: $42
    ld b, $60                                     ; $6db5: $06 $60
    jr jr_01b_6df9                                ; $6db7: $18 $40

    add hl, bc                                    ; $6db9: $09
    ld h, b                                       ; $6dba: $60
    ld [de], a                                    ; $6dbb: $12
    ld b, d                                       ; $6dbc: $42
    ld b, $60                                     ; $6dbd: $06 $60
    ld b, $45                                     ; $6dbf: $06 $45
    inc h                                         ; $6dc1: $24
    ld h, b                                       ; $6dc2: $60
    inc h                                         ; $6dc3: $24
    ld b, e                                       ; $6dc4: $43
    dec b                                         ; $6dc5: $05
    ld h, b                                       ; $6dc6: $60
    inc c                                         ; $6dc7: $0c
    ld b, d                                       ; $6dc8: $42
    ld a, [bc]                                    ; $6dc9: $0a
    ld h, b                                       ; $6dca: $60

jr_01b_6dcb:
    inc c                                         ; $6dcb: $0c
    ld b, e                                       ; $6dcc: $43

jr_01b_6dcd:
    ld b, $60                                     ; $6dcd: $06 $60
    inc c                                         ; $6dcf: $0c
    ld b, d                                       ; $6dd0: $42
    add hl, bc                                    ; $6dd1: $09
    ld h, b                                       ; $6dd2: $60
    inc c                                         ; $6dd3: $0c
    ccf                                           ; $6dd4: $3f
    add hl, bc                                    ; $6dd5: $09
    ld h, b                                       ; $6dd6: $60
    inc c                                         ; $6dd7: $0c
    ld b, b                                       ; $6dd8: $40
    dec bc                                        ; $6dd9: $0b
    ld h, b                                       ; $6dda: $60
    inc c                                         ; $6ddb: $0c
    ld b, d                                       ; $6ddc: $42
    dec bc                                        ; $6ddd: $0b
    ld h, b                                       ; $6dde: $60
    inc c                                         ; $6ddf: $0c
    ld b, e                                       ; $6de0: $43
    inc c                                         ; $6de1: $0c
    ld h, b                                       ; $6de2: $60
    jr jr_01b_6e25                                ; $6de3: $18 $40

    inc c                                         ; $6de5: $0c
    ld d, b                                       ; $6de6: $50
    inc h                                         ; $6de7: $24
    ccf                                           ; $6de8: $3f
    ld b, $60                                     ; $6de9: $06 $60
    ld b, $3c                                     ; $6deb: $06 $3c
    dec b                                         ; $6ded: $05
    ld h, b                                       ; $6dee: $60
    ld b, $3b                                     ; $6def: $06 $3b
    inc e                                         ; $6df1: $1c
    ld h, b                                       ; $6df2: $60
    inc h                                         ; $6df3: $24
    add hl, sp                                    ; $6df4: $39
    add hl, bc                                    ; $6df5: $09
    ld h, b                                       ; $6df6: $60
    inc c                                         ; $6df7: $0c
    dec sp                                        ; $6df8: $3b

jr_01b_6df9:
    ld b, $60                                     ; $6df9: $06 $60
    inc c                                         ; $6dfb: $0c
    inc a                                         ; $6dfc: $3c
    ld b, $60                                     ; $6dfd: $06 $60

jr_01b_6dff:
    inc c                                         ; $6dff: $0c
    add hl, sp                                    ; $6e00: $39
    ld [de], a                                    ; $6e01: $12
    ld d, b                                       ; $6e02: $50
    ld [de], a                                    ; $6e03: $12
    dec sp                                        ; $6e04: $3b
    inc bc                                        ; $6e05: $03
    ld d, b                                       ; $6e06: $50
    inc bc                                        ; $6e07: $03
    add hl, sp                                    ; $6e08: $39
    inc bc                                        ; $6e09: $03
    ld h, b                                       ; $6e0a: $60
    inc bc                                        ; $6e0b: $03
    scf                                           ; $6e0c: $37
    add hl, de                                    ; $6e0d: $19
    ld h, b                                       ; $6e0e: $60
    jr jr_01b_6e4a                                ; $6e0f: $18 $39

    dec bc                                        ; $6e11: $0b
    ld h, b                                       ; $6e12: $60
    inc c                                         ; $6e13: $0c
    dec sp                                        ; $6e14: $3b
    dec b                                         ; $6e15: $05
    ld h, b                                       ; $6e16: $60
    inc c                                         ; $6e17: $0c
    scf                                           ; $6e18: $37
    inc h                                         ; $6e19: $24
    ld h, b                                       ; $6e1a: $60
    inc h                                         ; $6e1b: $24
    ld [hl], $0a                                  ; $6e1c: $36 $0a
    ld d, b                                       ; $6e1e: $50
    inc c                                         ; $6e1f: $0c
    inc [hl]                                      ; $6e20: $34
    ld b, h                                       ; $6e21: $44
    ld b, b                                       ; $6e22: $40
    ld h, b                                       ; $6e23: $60
    scf                                           ; $6e24: $37

jr_01b_6e25:
    dec b                                         ; $6e25: $05
    ld b, b                                       ; $6e26: $40
    inc c                                         ; $6e27: $0c
    add hl, sp                                    ; $6e28: $39
    dec b                                         ; $6e29: $05
    ld b, b                                       ; $6e2a: $40
    inc c                                         ; $6e2b: $0c
    dec sp                                        ; $6e2c: $3b
    ld [bc], a                                    ; $6e2d: $02
    ld b, b                                       ; $6e2e: $40
    inc c                                         ; $6e2f: $0c
    inc a                                         ; $6e30: $3c
    inc bc                                        ; $6e31: $03
    ld b, b                                       ; $6e32: $40
    inc c                                         ; $6e33: $0c
    ld a, $03                                     ; $6e34: $3e $03
    ld b, b                                       ; $6e36: $40
    inc c                                         ; $6e37: $0c
    inc a                                         ; $6e38: $3c
    inc b                                         ; $6e39: $04
    ld b, b                                       ; $6e3a: $40
    inc c                                         ; $6e3b: $0c
    dec sp                                        ; $6e3c: $3b
    inc b                                         ; $6e3d: $04
    ld b, b                                       ; $6e3e: $40
    inc c                                         ; $6e3f: $0c
    add hl, sp                                    ; $6e40: $39
    ld [bc], a                                    ; $6e41: $02
    ld b, b                                       ; $6e42: $40
    inc c                                         ; $6e43: $0c
    jr c, jr_01b_6e4b                             ; $6e44: $38 $05

    ld b, b                                       ; $6e46: $40
    inc c                                         ; $6e47: $0c
    ld a, [hl-]                                   ; $6e48: $3a
    dec b                                         ; $6e49: $05

jr_01b_6e4a:
    ld b, b                                       ; $6e4a: $40

jr_01b_6e4b:
    inc c                                         ; $6e4b: $0c
    dec sp                                        ; $6e4c: $3b
    ld b, $40                                     ; $6e4d: $06 $40
    inc c                                         ; $6e4f: $0c
    dec a                                         ; $6e50: $3d
    inc bc                                        ; $6e51: $03
    ld b, b                                       ; $6e52: $40
    inc c                                         ; $6e53: $0c
    ccf                                           ; $6e54: $3f
    inc b                                         ; $6e55: $04
    ld b, b                                       ; $6e56: $40
    inc c                                         ; $6e57: $0c
    dec a                                         ; $6e58: $3d
    dec b                                         ; $6e59: $05
    ld b, b                                       ; $6e5a: $40
    inc c                                         ; $6e5b: $0c
    dec sp                                        ; $6e5c: $3b
    inc b                                         ; $6e5d: $04
    ld b, b                                       ; $6e5e: $40
    inc c                                         ; $6e5f: $0c
    ld a, [hl-]                                   ; $6e60: $3a
    inc b                                         ; $6e61: $04
    ld b, b                                       ; $6e62: $40
    inc c                                         ; $6e63: $0c
    scf                                           ; $6e64: $37
    dec b                                         ; $6e65: $05
    ld b, b                                       ; $6e66: $40
    inc c                                         ; $6e67: $0c
    add hl, sp                                    ; $6e68: $39
    dec b                                         ; $6e69: $05
    ld b, b                                       ; $6e6a: $40
    inc c                                         ; $6e6b: $0c
    dec sp                                        ; $6e6c: $3b
    inc b                                         ; $6e6d: $04
    ld b, b                                       ; $6e6e: $40
    inc c                                         ; $6e6f: $0c
    inc a                                         ; $6e70: $3c
    inc b                                         ; $6e71: $04
    ld b, b                                       ; $6e72: $40
    inc c                                         ; $6e73: $0c
    ld a, $06                                     ; $6e74: $3e $06
    ld b, b                                       ; $6e76: $40
    inc c                                         ; $6e77: $0c
    inc a                                         ; $6e78: $3c
    dec b                                         ; $6e79: $05
    ld b, b                                       ; $6e7a: $40
    inc c                                         ; $6e7b: $0c
    dec sp                                        ; $6e7c: $3b
    inc bc                                        ; $6e7d: $03
    ld b, b                                       ; $6e7e: $40
    inc c                                         ; $6e7f: $0c
    add hl, sp                                    ; $6e80: $39
    dec b                                         ; $6e81: $05
    ld b, b                                       ; $6e82: $40
    inc c                                         ; $6e83: $0c
    jr c, jr_01b_6e8d                             ; $6e84: $38 $07

    ld b, b                                       ; $6e86: $40
    inc c                                         ; $6e87: $0c
    ld a, [hl-]                                   ; $6e88: $3a
    dec b                                         ; $6e89: $05
    ld b, b                                       ; $6e8a: $40
    inc c                                         ; $6e8b: $0c
    dec sp                                        ; $6e8c: $3b

jr_01b_6e8d:
    ld b, $40                                     ; $6e8d: $06 $40
    inc c                                         ; $6e8f: $0c
    dec a                                         ; $6e90: $3d
    dec b                                         ; $6e91: $05
    ld b, b                                       ; $6e92: $40
    inc c                                         ; $6e93: $0c
    ccf                                           ; $6e94: $3f
    dec b                                         ; $6e95: $05
    ld b, b                                       ; $6e96: $40
    inc c                                         ; $6e97: $0c
    dec a                                         ; $6e98: $3d
    ld b, $40                                     ; $6e99: $06 $40
    inc c                                         ; $6e9b: $0c
    dec sp                                        ; $6e9c: $3b
    dec b                                         ; $6e9d: $05
    ld b, b                                       ; $6e9e: $40
    inc c                                         ; $6e9f: $0c
    ld a, [hl-]                                   ; $6ea0: $3a
    rlca                                          ; $6ea1: $07
    ld [hl], b                                    ; $6ea2: $70
    inc c                                         ; $6ea3: $0c
    xor h                                         ; $6ea4: $ac
    rla                                           ; $6ea5: $17
    jr jr_01b_6f08                                ; $6ea6: $18 $60

    jr @+$35                                      ; $6ea8: $18 $33

    ld [de], a                                    ; $6eaa: $12
    ld h, b                                       ; $6eab: $60
    ld [de], a                                    ; $6eac: $12
    dec [hl]                                      ; $6ead: $35
    inc bc                                        ; $6eae: $03
    ld [hl], b                                    ; $6eaf: $70
    inc bc                                        ; $6eb0: $03
    scf                                           ; $6eb1: $37
    inc bc                                        ; $6eb2: $03
    ld [hl], b                                    ; $6eb3: $70
    inc bc                                        ; $6eb4: $03
    jr c, @+$1a                                   ; $6eb5: $38 $18

    ld h, b                                       ; $6eb7: $60
    jr @+$3d                                      ; $6eb8: $18 $3b

    inc de                                        ; $6eba: $13
    ld [hl], b                                    ; $6ebb: $70
    jr jr_01b_6ef6                                ; $6ebc: $18 $38

    ld d, h                                       ; $6ebe: $54
    ld [hl], b                                    ; $6ebf: $70
    ld h, b                                       ; $6ec0: $60
    ld a, $06                                     ; $6ec1: $3e $06
    ld [hl], b                                    ; $6ec3: $70
    inc c                                         ; $6ec4: $0c
    add hl, sp                                    ; $6ec5: $39
    ld b, $70                                     ; $6ec6: $06 $70
    inc c                                         ; $6ec8: $0c
    ld b, b                                       ; $6ec9: $40
    ld b, $70                                     ; $6eca: $06 $70
    inc c                                         ; $6ecc: $0c
    ld b, c                                       ; $6ecd: $41
    ld b, $60                                     ; $6ece: $06 $60
    ld b, $40                                     ; $6ed0: $06 $40
    inc bc                                        ; $6ed2: $03
    ld h, b                                       ; $6ed3: $60
    inc bc                                        ; $6ed4: $03
    ld b, c                                       ; $6ed5: $41
    inc bc                                        ; $6ed6: $03
    ld [hl], b                                    ; $6ed7: $70
    inc bc                                        ; $6ed8: $03
    ld a, $19                                     ; $6ed9: $3e $19
    ld [hl], b                                    ; $6edb: $70
    jr nc, jr_01b_6f1c                            ; $6edc: $30 $3e

    add hl, bc                                    ; $6ede: $09
    ld [hl], b                                    ; $6edf: $70
    inc c                                         ; $6ee0: $0c
    add hl, sp                                    ; $6ee1: $39
    inc bc                                        ; $6ee2: $03
    ld [hl], b                                    ; $6ee3: $70
    ld b, $39                                     ; $6ee4: $06 $39
    ld b, $70                                     ; $6ee6: $06 $70
    ld b, $3e                                     ; $6ee8: $06 $3e
    add hl, bc                                    ; $6eea: $09
    ld [hl], b                                    ; $6eeb: $70
    inc c                                         ; $6eec: $0c
    ld b, b                                       ; $6eed: $40
    inc c                                         ; $6eee: $0c
    ld [hl], b                                    ; $6eef: $70
    inc c                                         ; $6ef0: $0c
    ld b, c                                       ; $6ef1: $41
    ld e, $70                                     ; $6ef2: $1e $70
    jr nc, jr_01b_6f31                            ; $6ef4: $30 $3b

jr_01b_6ef6:
    ld b, $70                                     ; $6ef6: $06 $70
    inc c                                         ; $6ef8: $0c
    add hl, sp                                    ; $6ef9: $39
    ld b, $70                                     ; $6efa: $06 $70
    inc c                                         ; $6efc: $0c
    dec sp                                        ; $6efd: $3b
    ld b, $70                                     ; $6efe: $06 $70
    inc c                                         ; $6f00: $0c
    inc a                                         ; $6f01: $3c
    ld b, $70                                     ; $6f02: $06 $70
    inc c                                         ; $6f04: $0c
    ld a, $09                                     ; $6f05: $3e $09
    ld h, b                                       ; $6f07: $60

jr_01b_6f08:
    inc c                                         ; $6f08: $0c
    inc a                                         ; $6f09: $3c
    ld b, $70                                     ; $6f0a: $06 $70
    inc c                                         ; $6f0c: $0c
    dec sp                                        ; $6f0d: $3b
    ld b, $70                                     ; $6f0e: $06 $70
    inc c                                         ; $6f10: $0c
    add hl, sp                                    ; $6f11: $39
    ld b, $70                                     ; $6f12: $06 $70
    inc c                                         ; $6f14: $0c
    scf                                           ; $6f15: $37
    jr jr_01b_6f88                                ; $6f16: $18 $70

    jr jr_01b_6f54                                ; $6f18: $18 $3a

    add hl, de                                    ; $6f1a: $19
    ld [hl], b                                    ; $6f1b: $70

jr_01b_6f1c:
    jr jr_01b_6f5c                                ; $6f1c: $18 $3e

    ld [de], a                                    ; $6f1e: $12
    ld h, b                                       ; $6f1f: $60
    ld [de], a                                    ; $6f20: $12
    dec a                                         ; $6f21: $3d
    inc bc                                        ; $6f22: $03
    ld h, b                                       ; $6f23: $60
    inc bc                                        ; $6f24: $03
    ld a, $03                                     ; $6f25: $3e $03
    ld [hl], b                                    ; $6f27: $70
    inc bc                                        ; $6f28: $03
    ccf                                           ; $6f29: $3f
    dec c                                         ; $6f2a: $0d
    ld [hl], b                                    ; $6f2b: $70
    jr jr_01b_6f6c                                ; $6f2c: $18 $3e

    ld b, $60                                     ; $6f2e: $06 $60
    inc c                                         ; $6f30: $0c

jr_01b_6f31:
    ld b, b                                       ; $6f31: $40
    ld b, $70                                     ; $6f32: $06 $70
    inc c                                         ; $6f34: $0c
    ld b, c                                       ; $6f35: $41
    ld b, $70                                     ; $6f36: $06 $70
    inc c                                         ; $6f38: $0c
    ld a, $0c                                     ; $6f39: $3e $0c
    ld [hl], b                                    ; $6f3b: $70
    inc c                                         ; $6f3c: $0c
    add hl, sp                                    ; $6f3d: $39
    add hl, de                                    ; $6f3e: $19
    ld [hl], b                                    ; $6f3f: $70
    jr jr_01b_6f80                                ; $6f40: $18 $3e

    ld d, $70                                     ; $6f42: $16 $70
    jr jr_01b_6f7f                                ; $6f44: $18 $39

    ld b, $70                                     ; $6f46: $06 $70
    inc c                                         ; $6f48: $0c
    dec sp                                        ; $6f49: $3b
    ld b, $70                                     ; $6f4a: $06 $70
    inc c                                         ; $6f4c: $0c
    inc a                                         ; $6f4d: $3c
    ld b, $60                                     ; $6f4e: $06 $60
    inc c                                         ; $6f50: $0c
    dec sp                                        ; $6f51: $3b
    ld b, $60                                     ; $6f52: $06 $60

jr_01b_6f54:
    ld b, $3c                                     ; $6f54: $06 $3c
    inc bc                                        ; $6f56: $03
    ld h, b                                       ; $6f57: $60
    inc bc                                        ; $6f58: $03
    dec sp                                        ; $6f59: $3b
    inc bc                                        ; $6f5a: $03
    ld [hl], b                                    ; $6f5b: $70

jr_01b_6f5c:
    inc bc                                        ; $6f5c: $03
    add hl, sp                                    ; $6f5d: $39
    ld a, [de]                                    ; $6f5e: $1a
    ld [hl], b                                    ; $6f5f: $70
    jr nc, jr_01b_6fa0                            ; $6f60: $30 $3e

    ld b, $60                                     ; $6f62: $06 $60
    inc c                                         ; $6f64: $0c
    ld b, b                                       ; $6f65: $40
    ld b, $70                                     ; $6f66: $06 $70
    inc c                                         ; $6f68: $0c
    ld b, c                                       ; $6f69: $41
    ld b, $70                                     ; $6f6a: $06 $70

jr_01b_6f6c:
    inc c                                         ; $6f6c: $0c
    ld b, b                                       ; $6f6d: $40
    inc c                                         ; $6f6e: $0c
    ld [hl], b                                    ; $6f6f: $70
    inc c                                         ; $6f70: $0c
    ld a, $18                                     ; $6f71: $3e $18
    ld [hl], b                                    ; $6f73: $70
    jr jr_01b_6faf                                ; $6f74: $18 $39

    add hl, de                                    ; $6f76: $19
    ld [hl], b                                    ; $6f77: $70
    jr jr_01b_6fb4                                ; $6f78: $18 $3a

    ld b, $70                                     ; $6f7a: $06 $70
    inc c                                         ; $6f7c: $0c
    inc a                                         ; $6f7d: $3c
    dec b                                         ; $6f7e: $05

jr_01b_6f7f:
    ld [hl], b                                    ; $6f7f: $70

jr_01b_6f80:
    inc c                                         ; $6f80: $0c
    ld a, $06                                     ; $6f81: $3e $06
    ld [hl], b                                    ; $6f83: $70
    inc c                                         ; $6f84: $0c
    ld b, c                                       ; $6f85: $41
    ld b, $60                                     ; $6f86: $06 $60

jr_01b_6f88:
    inc c                                         ; $6f88: $0c
    ld a, $07                                     ; $6f89: $3e $07
    ld h, b                                       ; $6f8b: $60
    inc c                                         ; $6f8c: $0c
    inc a                                         ; $6f8d: $3c
    ld b, $70                                     ; $6f8e: $06 $70
    inc c                                         ; $6f90: $0c
    ld a, [hl-]                                   ; $6f91: $3a
    dec b                                         ; $6f92: $05
    ld [hl], b                                    ; $6f93: $70
    inc c                                         ; $6f94: $0c
    jr c, @+$08                                   ; $6f95: $38 $06

    ld h, b                                       ; $6f97: $60
    ld b, $3a                                     ; $6f98: $06 $3a
    ld b, $70                                     ; $6f9a: $06 $70
    ld b, $37                                     ; $6f9c: $06 $37
    inc h                                         ; $6f9e: $24
    ld [hl], b                                    ; $6f9f: $70

jr_01b_6fa0:
    inc h                                         ; $6fa0: $24
    ld a, [hl-]                                   ; $6fa1: $3a
    ld e, $60                                     ; $6fa2: $1e $60
    ld e, $3c                                     ; $6fa4: $1e $3c
    inc bc                                        ; $6fa6: $03
    ld h, b                                       ; $6fa7: $60
    inc bc                                        ; $6fa8: $03
    dec a                                         ; $6fa9: $3d
    inc bc                                        ; $6faa: $03
    ld [hl], b                                    ; $6fab: $70
    inc bc                                        ; $6fac: $03
    ld a, $18                                     ; $6fad: $3e $18

jr_01b_6faf:
    ld h, b                                       ; $6faf: $60
    jr jr_01b_6fe9                                ; $6fb0: $18 $37

    inc c                                         ; $6fb2: $0c
    ld h, b                                       ; $6fb3: $60

jr_01b_6fb4:
    inc c                                         ; $6fb4: $0c
    ld a, [hl-]                                   ; $6fb5: $3a
    inc c                                         ; $6fb6: $0c
    ld [hl], b                                    ; $6fb7: $70
    inc c                                         ; $6fb8: $0c
    ld [hl-], a                                   ; $6fb9: $32
    inc c                                         ; $6fba: $0c
    ld [hl], b                                    ; $6fbb: $70
    inc c                                         ; $6fbc: $0c
    scf                                           ; $6fbd: $37
    cpl                                           ; $6fbe: $2f
    ld [hl], b                                    ; $6fbf: $70
    inc a                                         ; $6fc0: $3c
    dec sp                                        ; $6fc1: $3b
    ld de, $1270                                  ; $6fc2: $11 $70 $12
    add hl, sp                                    ; $6fc5: $39
    inc b                                         ; $6fc6: $04
    ld [hl], b                                    ; $6fc7: $70
    inc bc                                        ; $6fc8: $03
    scf                                           ; $6fc9: $37
    inc bc                                        ; $6fca: $03
    ld [hl], b                                    ; $6fcb: $70
    inc bc                                        ; $6fcc: $03
    ld [hl], $26                                  ; $6fcd: $36 $26
    ld [hl], b                                    ; $6fcf: $70
    inc h                                         ; $6fd0: $24
    scf                                           ; $6fd1: $37
    inc b                                         ; $6fd2: $04
    ld [hl], b                                    ; $6fd3: $70
    inc c                                         ; $6fd4: $0c
    add hl, sp                                    ; $6fd5: $39
    inc b                                         ; $6fd6: $04
    ld [hl], b                                    ; $6fd7: $70
    inc c                                         ; $6fd8: $0c
    dec sp                                        ; $6fd9: $3b
    inc bc                                        ; $6fda: $03
    ld [hl], b                                    ; $6fdb: $70
    inc c                                         ; $6fdc: $0c
    dec sp                                        ; $6fdd: $3b
    db $10                                        ; $6fde: $10
    ld h, b                                       ; $6fdf: $60
    ld [de], a                                    ; $6fe0: $12
    add hl, sp                                    ; $6fe1: $39
    ld [bc], a                                    ; $6fe2: $02
    ld [hl], b                                    ; $6fe3: $70
    inc bc                                        ; $6fe4: $03
    scf                                           ; $6fe5: $37
    inc b                                         ; $6fe6: $04
    ld [hl], b                                    ; $6fe7: $70
    inc bc                                        ; $6fe8: $03

jr_01b_6fe9:
    ld [hl], $18                                  ; $6fe9: $36 $18
    ld [hl], b                                    ; $6feb: $70
    jr jr_01b_702a                                ; $6fec: $18 $3c

    ld [de], a                                    ; $6fee: $12
    ld [hl], b                                    ; $6fef: $70
    ld [de], a                                    ; $6ff0: $12
    ld a, $03                                     ; $6ff1: $3e $03
    ld [hl], b                                    ; $6ff3: $70
    inc bc                                        ; $6ff4: $03
    inc a                                         ; $6ff5: $3c
    inc bc                                        ; $6ff6: $03
    ld [hl], b                                    ; $6ff7: $70
    inc bc                                        ; $6ff8: $03
    dec sp                                        ; $6ff9: $3b
    ld [de], a                                    ; $6ffa: $12
    ld [hl], b                                    ; $6ffb: $70
    jr jr_01b_703c                                ; $6ffc: $18 $3e

    ld [hl+], a                                   ; $6ffe: $22
    ld [hl], b                                    ; $6fff: $70
    inc h                                         ; $7000: $24
    ld b, b                                       ; $7001: $40
    dec c                                         ; $7002: $0d
    ld [hl], b                                    ; $7003: $70
    inc c                                         ; $7004: $0c
    ld b, c                                       ; $7005: $41
    inc c                                         ; $7006: $0c
    ld [hl], b                                    ; $7007: $70
    inc c                                         ; $7008: $0c
    ld b, b                                       ; $7009: $40
    inc c                                         ; $700a: $0c
    ld [hl], b                                    ; $700b: $70
    inc c                                         ; $700c: $0c
    ld a, $0c                                     ; $700d: $3e $0c
    ld [hl], b                                    ; $700f: $70
    inc c                                         ; $7010: $0c
    ld b, l                                       ; $7011: $45
    dec bc                                        ; $7012: $0b
    ld [hl], b                                    ; $7013: $70
    inc c                                         ; $7014: $0c
    ld b, e                                       ; $7015: $43
    inc hl                                        ; $7016: $23
    ld [hl], b                                    ; $7017: $70
    inc h                                         ; $7018: $24
    ld b, l                                       ; $7019: $45
    dec c                                         ; $701a: $0d
    ld [hl], b                                    ; $701b: $70
    inc c                                         ; $701c: $0c
    ld b, [hl]                                    ; $701d: $46
    inc c                                         ; $701e: $0c
    ld [hl], b                                    ; $701f: $70
    inc c                                         ; $7020: $0c
    ld b, l                                       ; $7021: $45
    dec bc                                        ; $7022: $0b
    ld [hl], b                                    ; $7023: $70
    inc c                                         ; $7024: $0c
    ld b, e                                       ; $7025: $43
    jr jr_01b_7098                                ; $7026: $18 $70

    jr jr_01b_706a                                ; $7028: $18 $40

jr_01b_702a:
    ld a, [de]                                    ; $702a: $1a
    ld [hl], b                                    ; $702b: $70
    inc h                                         ; $702c: $24
    ld b, c                                       ; $702d: $41
    inc b                                         ; $702e: $04
    ld [hl], b                                    ; $702f: $70
    ld b, $40                                     ; $7030: $06 $40
    rlca                                          ; $7032: $07
    ld [hl], b                                    ; $7033: $70
    ld b, $3e                                     ; $7034: $06 $3e
    rla                                           ; $7036: $17
    ld [hl], b                                    ; $7037: $70
    jr jr_01b_7077                                ; $7038: $18 $3d

    ld [de], a                                    ; $703a: $12
    ld h, b                                       ; $703b: $60

jr_01b_703c:
    ld [de], a                                    ; $703c: $12
    ld a, $03                                     ; $703d: $3e $03
    ld h, b                                       ; $703f: $60
    inc bc                                        ; $7040: $03
    dec a                                         ; $7041: $3d
    inc bc                                        ; $7042: $03
    ld [hl], b                                    ; $7043: $70
    inc bc                                        ; $7044: $03
    dec sp                                        ; $7045: $3b
    ld c, d                                       ; $7046: $4a
    ld [hl], b                                    ; $7047: $70
    ld h, b                                       ; $7048: $60
    add hl, sp                                    ; $7049: $39
    inc c                                         ; $704a: $0c
    ld [hl], b                                    ; $704b: $70
    inc c                                         ; $704c: $0c
    ld a, [hl-]                                   ; $704d: $3a
    inc bc                                        ; $704e: $03
    ld [hl], b                                    ; $704f: $70
    ld b, $3b                                     ; $7050: $06 $3b
    ld b, $70                                     ; $7052: $06 $70
    ld b, $3c                                     ; $7054: $06 $3c
    rla                                           ; $7056: $17
    ld [hl], b                                    ; $7057: $70
    jr jr_01b_7095                                ; $7058: $18 $3b

    inc c                                         ; $705a: $0c
    ld [hl], b                                    ; $705b: $70
    inc c                                         ; $705c: $0c
    ld a, [hl-]                                   ; $705d: $3a
    inc c                                         ; $705e: $0c
    ld [hl], b                                    ; $705f: $70
    inc c                                         ; $7060: $0c
    add hl, sp                                    ; $7061: $39
    rla                                           ; $7062: $17
    ld [hl], b                                    ; $7063: $70
    jr jr_01b_709e                                ; $7064: $18 $38

    ld [de], a                                    ; $7066: $12
    ld [hl], b                                    ; $7067: $70
    ld [de], a                                    ; $7068: $12
    add hl, sp                                    ; $7069: $39

jr_01b_706a:
    inc b                                         ; $706a: $04
    ld [hl], b                                    ; $706b: $70
    inc bc                                        ; $706c: $03
    ld a, [hl-]                                   ; $706d: $3a
    ld [bc], a                                    ; $706e: $02
    ld [hl], b                                    ; $706f: $70
    inc bc                                        ; $7070: $03
    dec sp                                        ; $7071: $3b
    dec d                                         ; $7072: $15
    ld [hl], b                                    ; $7073: $70
    jr jr_01b_70b0                                ; $7074: $18 $3a

    inc c                                         ; $7076: $0c

jr_01b_7077:
    ld [hl], b                                    ; $7077: $70
    inc c                                         ; $7078: $0c
    add hl, sp                                    ; $7079: $39
    dec c                                         ; $707a: $0d
    ld [hl], b                                    ; $707b: $70
    inc c                                         ; $707c: $0c
    jr c, jr_01b_7096                             ; $707d: $38 $17

    ld [hl], b                                    ; $707f: $70
    jr jr_01b_70b9                                ; $7080: $18 $37

    inc c                                         ; $7082: $0c
    ld [hl], b                                    ; $7083: $70
    inc c                                         ; $7084: $0c
    ld a, $0d                                     ; $7085: $3e $0d
    ld [hl], b                                    ; $7087: $70
    inc c                                         ; $7088: $0c
    ld b, e                                       ; $7089: $43
    daa                                           ; $708a: $27
    ld [hl], b                                    ; $708b: $70
    inc h                                         ; $708c: $24
    ld a, [hl-]                                   ; $708d: $3a
    jr nz, jr_01b_7100                            ; $708e: $20 $70

    inc h                                         ; $7090: $24
    ld a, $0d                                     ; $7091: $3e $0d
    ld [hl], b                                    ; $7093: $70
    inc c                                         ; $7094: $0c

jr_01b_7095:
    ld b, b                                       ; $7095: $40

jr_01b_7096:
    dec c                                         ; $7096: $0d
    ld [hl], b                                    ; $7097: $70

jr_01b_7098:
    inc c                                         ; $7098: $0c
    ld b, c                                       ; $7099: $41
    inc c                                         ; $709a: $0c
    ld [hl], b                                    ; $709b: $70
    inc c                                         ; $709c: $0c
    ld b, l                                       ; $709d: $45

jr_01b_709e:
    dec c                                         ; $709e: $0d
    ld h, b                                       ; $709f: $60
    inc c                                         ; $70a0: $0c
    ld b, c                                       ; $70a1: $41
    inc c                                         ; $70a2: $0c
    ld [hl], b                                    ; $70a3: $70
    inc c                                         ; $70a4: $0c
    ld b, b                                       ; $70a5: $40
    ld c, $70                                     ; $70a6: $0e $70

jr_01b_70a8:
    inc c                                         ; $70a8: $0c
    ld a, $15                                     ; $70a9: $3e $15
    ld [hl], b                                    ; $70ab: $70
    jr jr_01b_70ea                                ; $70ac: $18 $3c

    dec l                                         ; $70ae: $2d
    ld h, b                                       ; $70af: $60

jr_01b_70b0:
    jr nc, jr_01b_70ed                            ; $70b0: $30 $3b

    jr jr_01b_7124                                ; $70b2: $18 $70

    jr @+$41                                      ; $70b4: $18 $3f

    jr jr_01b_70a8                                ; $70b6: $18 $f0

    nop                                           ; $70b8: $00

jr_01b_70b9:
    rst $38                                       ; $70b9: $ff
    ld b, b                                       ; $70ba: $40
    nop                                           ; $70bb: $00
    db $d3                                        ; $70bc: $d3
    dec d                                         ; $70bd: $15
    ld b, $40                                     ; $70be: $06 $40
    inc c                                         ; $70c0: $0c
    ld d, e                                       ; $70c1: $53
    ld e, $40                                     ; $70c2: $1e $40
    inc h                                         ; $70c4: $24
    ld d, e                                       ; $70c5: $53
    ld e, $40                                     ; $70c6: $1e $40
    inc h                                         ; $70c8: $24
    ld d, e                                       ; $70c9: $53
    ld b, $30                                     ; $70ca: $06 $30
    inc c                                         ; $70cc: $0c
    ld d, l                                       ; $70cd: $55
    ld e, $30                                     ; $70ce: $1e $30
    inc h                                         ; $70d0: $24
    ld d, l                                       ; $70d1: $55
    ld b, $40                                     ; $70d2: $06 $40
    inc c                                         ; $70d4: $0c
    ld c, [hl]                                    ; $70d5: $4e
    ld e, $40                                     ; $70d6: $1e $40
    inc h                                         ; $70d8: $24
    ld c, [hl]                                    ; $70d9: $4e
    ld b, $40                                     ; $70da: $06 $40
    inc c                                         ; $70dc: $0c
    ld d, e                                       ; $70dd: $53
    ld [de], a                                    ; $70de: $12
    ld b, b                                       ; $70df: $40
    jr jr_01b_7135                                ; $70e0: $18 $53

    ld [de], a                                    ; $70e2: $12
    ld b, b                                       ; $70e3: $40
    jr jr_01b_7139                                ; $70e4: $18 $53

    ld [de], a                                    ; $70e6: $12
    ld b, b                                       ; $70e7: $40
    jr jr_01b_713d                                ; $70e8: $18 $53

jr_01b_70ea:
    ld [de], a                                    ; $70ea: $12
    jr nc, jr_01b_7105                            ; $70eb: $30 $18

jr_01b_70ed:
    ld e, b                                       ; $70ed: $58
    ld [de], a                                    ; $70ee: $12
    jr nc, @+$1a                                  ; $70ef: $30 $18

    ld e, b                                       ; $70f1: $58
    ld [de], a                                    ; $70f2: $12
    ld b, b                                       ; $70f3: $40
    jr @+$50                                      ; $70f4: $18 $4e

    ld [de], a                                    ; $70f6: $12
    ld b, b                                       ; $70f7: $40
    jr @+$50                                      ; $70f8: $18 $4e

    ld [de], a                                    ; $70fa: $12
    ld b, b                                       ; $70fb: $40
    jr jr_01b_7151                                ; $70fc: $18 $53

    ld [de], a                                    ; $70fe: $12
    ld b, b                                       ; $70ff: $40

jr_01b_7100:
    jr jr_01b_7155                                ; $7100: $18 $53

    ld e, $40                                     ; $7102: $1e $40
    inc h                                         ; $7104: $24

jr_01b_7105:
    ld d, e                                       ; $7105: $53
    ld [de], a                                    ; $7106: $12
    ld b, b                                       ; $7107: $40
    jr jr_01b_715d                                ; $7108: $18 $53

    ld b, $30                                     ; $710a: $06 $30
    inc c                                         ; $710c: $0c
    ld d, l                                       ; $710d: $55
    ld [de], a                                    ; $710e: $12
    jr nc, jr_01b_7129                            ; $710f: $30 $18

    ld d, l                                       ; $7111: $55
    ld [de], a                                    ; $7112: $12
    ld b, b                                       ; $7113: $40
    jr jr_01b_7164                                ; $7114: $18 $4e

    ld e, $40                                     ; $7116: $1e $40
    inc h                                         ; $7118: $24
    ld c, [hl]                                    ; $7119: $4e
    ld b, $40                                     ; $711a: $06 $40
    inc c                                         ; $711c: $0c
    ld c, a                                       ; $711d: $4f
    ld [hl], $40                                  ; $711e: $36 $40
    inc a                                         ; $7120: $3c
    ld c, a                                       ; $7121: $4f
    ld [de], a                                    ; $7122: $12
    ld b, b                                       ; $7123: $40

jr_01b_7124:
    jr jr_01b_7175                                ; $7124: $18 $4f

    ld b, $40                                     ; $7126: $06 $40
    inc c                                         ; $7128: $0c

jr_01b_7129:
    ld d, c                                       ; $7129: $51
    ld a, [hl+]                                   ; $712a: $2a
    ld b, b                                       ; $712b: $40
    jr nc, jr_01b_717f                            ; $712c: $30 $51

    ld a, [hl+]                                   ; $712e: $2a
    ld b, b                                       ; $712f: $40
    jr nc, jr_01b_7185                            ; $7130: $30 $53

    inc [hl]                                      ; $7132: $34
    jr nc, jr_01b_716b                            ; $7133: $30 $36

jr_01b_7135:
    ld d, e                                       ; $7135: $53
    inc bc                                        ; $7136: $03
    jr nc, @+$05                                  ; $7137: $30 $03

jr_01b_7139:
    ld d, h                                       ; $7139: $54
    inc bc                                        ; $713a: $03
    jr nc, @+$05                                  ; $713b: $30 $03

jr_01b_713d:
    ld d, e                                       ; $713d: $53
    inc bc                                        ; $713e: $03
    jr nc, @+$05                                  ; $713f: $30 $03

    ld d, h                                       ; $7141: $54
    inc bc                                        ; $7142: $03
    jr nc, @+$05                                  ; $7143: $30 $03

    ld d, e                                       ; $7145: $53
    inc bc                                        ; $7146: $03
    jr nc, @+$05                                  ; $7147: $30 $03

    ld d, h                                       ; $7149: $54
    inc bc                                        ; $714a: $03
    jr nc, @+$05                                  ; $714b: $30 $03

    ld d, e                                       ; $714d: $53
    inc bc                                        ; $714e: $03
    jr nc, @+$05                                  ; $714f: $30 $03

jr_01b_7151:
    ld d, h                                       ; $7151: $54
    inc bc                                        ; $7152: $03
    jr nc, @+$05                                  ; $7153: $30 $03

jr_01b_7155:
    ld d, e                                       ; $7155: $53
    inc bc                                        ; $7156: $03
    jr nc, @+$05                                  ; $7157: $30 $03

    ld d, h                                       ; $7159: $54
    inc bc                                        ; $715a: $03
    jr nc, jr_01b_7161                            ; $715b: $30 $04

jr_01b_715d:
    ld d, e                                       ; $715d: $53
    inc bc                                        ; $715e: $03
    jr nc, jr_01b_7163                            ; $715f: $30 $02

jr_01b_7161:
    ld d, h                                       ; $7161: $54
    inc bc                                        ; $7162: $03

jr_01b_7163:
    ld b, b                                       ; $7163: $40

jr_01b_7164:
    inc bc                                        ; $7164: $03
    ld d, e                                       ; $7165: $53
    inc bc                                        ; $7166: $03
    ld b, b                                       ; $7167: $40
    inc bc                                        ; $7168: $03
    ld d, h                                       ; $7169: $54
    inc bc                                        ; $716a: $03

jr_01b_716b:
    ld b, b                                       ; $716b: $40
    inc bc                                        ; $716c: $03
    ld d, e                                       ; $716d: $53
    ld sp, $3330                                  ; $716e: $31 $30 $33
    ld d, l                                       ; $7171: $55
    inc bc                                        ; $7172: $03
    jr nc, @+$05                                  ; $7173: $30 $03

jr_01b_7175:
    ld d, e                                       ; $7175: $53
    inc bc                                        ; $7176: $03
    jr nc, @+$05                                  ; $7177: $30 $03

    ld d, l                                       ; $7179: $55
    inc bc                                        ; $717a: $03
    jr nc, @+$05                                  ; $717b: $30 $03

    ld d, e                                       ; $717d: $53
    inc bc                                        ; $717e: $03

jr_01b_717f:
    jr nc, @+$05                                  ; $717f: $30 $03

    ld d, l                                       ; $7181: $55
    inc bc                                        ; $7182: $03
    jr nz, @+$05                                  ; $7183: $20 $03

jr_01b_7185:
    ld d, e                                       ; $7185: $53
    inc bc                                        ; $7186: $03
    jr nz, @+$05                                  ; $7187: $20 $03

    ld d, l                                       ; $7189: $55
    inc bc                                        ; $718a: $03
    jr nz, @+$05                                  ; $718b: $20 $03

    ld d, e                                       ; $718d: $53
    inc bc                                        ; $718e: $03
    jr nz, @+$05                                  ; $718f: $20 $03

    ld d, l                                       ; $7191: $55
    inc bc                                        ; $7192: $03
    jr nz, @+$05                                  ; $7193: $20 $03

    ld d, e                                       ; $7195: $53
    inc bc                                        ; $7196: $03
    jr nc, @+$05                                  ; $7197: $30 $03

    ld d, l                                       ; $7199: $55
    inc bc                                        ; $719a: $03
    jr nc, jr_01b_71a1                            ; $719b: $30 $04

    ld d, e                                       ; $719d: $53
    inc bc                                        ; $719e: $03
    jr nc, jr_01b_71a3                            ; $719f: $30 $02

jr_01b_71a1:
    ld d, l                                       ; $71a1: $55
    inc bc                                        ; $71a2: $03

jr_01b_71a3:
    jr nc, jr_01b_71a8                            ; $71a3: $30 $03

    ld d, e                                       ; $71a5: $53
    inc bc                                        ; $71a6: $03
    ld b, b                                       ; $71a7: $40

jr_01b_71a8:
    inc bc                                        ; $71a8: $03
    ld d, l                                       ; $71a9: $55
    ld [bc], a                                    ; $71aa: $02
    jr nc, @+$05                                  ; $71ab: $30 $03

    ld d, e                                       ; $71ad: $53
    inc [hl]                                      ; $71ae: $34
    jr nc, jr_01b_71e7                            ; $71af: $30 $36

    ld d, e                                       ; $71b1: $53
    inc bc                                        ; $71b2: $03
    jr nc, @+$05                                  ; $71b3: $30 $03

    ld d, h                                       ; $71b5: $54
    inc bc                                        ; $71b6: $03
    jr nc, @+$05                                  ; $71b7: $30 $03

    ld d, e                                       ; $71b9: $53
    inc bc                                        ; $71ba: $03
    jr nc, @+$05                                  ; $71bb: $30 $03

    ld d, h                                       ; $71bd: $54
    inc bc                                        ; $71be: $03
    jr nc, @+$05                                  ; $71bf: $30 $03

    ld d, e                                       ; $71c1: $53
    inc bc                                        ; $71c2: $03
    jr nz, @+$05                                  ; $71c3: $20 $03

    ld d, h                                       ; $71c5: $54
    inc bc                                        ; $71c6: $03
    jr nz, @+$05                                  ; $71c7: $20 $03

    ld d, e                                       ; $71c9: $53
    inc bc                                        ; $71ca: $03
    jr nc, @+$05                                  ; $71cb: $30 $03

    ld d, h                                       ; $71cd: $54
    inc bc                                        ; $71ce: $03
    jr nc, @+$05                                  ; $71cf: $30 $03

    ld d, e                                       ; $71d1: $53
    inc bc                                        ; $71d2: $03
    jr nc, jr_01b_71d8                            ; $71d3: $30 $03

    ld d, h                                       ; $71d5: $54
    inc bc                                        ; $71d6: $03
    ld b, b                                       ; $71d7: $40

jr_01b_71d8:
    inc b                                         ; $71d8: $04
    ld d, e                                       ; $71d9: $53
    inc bc                                        ; $71da: $03
    ld b, b                                       ; $71db: $40
    ld [bc], a                                    ; $71dc: $02
    ld d, h                                       ; $71dd: $54
    inc bc                                        ; $71de: $03
    ld b, b                                       ; $71df: $40
    inc bc                                        ; $71e0: $03
    ld d, e                                       ; $71e1: $53
    inc bc                                        ; $71e2: $03
    ld b, b                                       ; $71e3: $40
    inc bc                                        ; $71e4: $03
    ld d, h                                       ; $71e5: $54
    inc bc                                        ; $71e6: $03

jr_01b_71e7:
    jr nc, @+$05                                  ; $71e7: $30 $03

    ld d, e                                       ; $71e9: $53
    ld sp, $3330                                  ; $71ea: $31 $30 $33
    ld d, l                                       ; $71ed: $55
    inc bc                                        ; $71ee: $03
    jr nc, @+$05                                  ; $71ef: $30 $03

    ld d, e                                       ; $71f1: $53
    inc bc                                        ; $71f2: $03
    jr nc, @+$05                                  ; $71f3: $30 $03

    ld d, l                                       ; $71f5: $55
    inc bc                                        ; $71f6: $03
    jr nc, @+$05                                  ; $71f7: $30 $03

    ld d, e                                       ; $71f9: $53
    inc bc                                        ; $71fa: $03
    jr nc, @+$05                                  ; $71fb: $30 $03

    ld d, l                                       ; $71fd: $55
    inc bc                                        ; $71fe: $03
    jr nc, @+$05                                  ; $71ff: $30 $03

    ld d, e                                       ; $7201: $53
    inc bc                                        ; $7202: $03
    jr nc, @+$05                                  ; $7203: $30 $03

    ld d, l                                       ; $7205: $55
    inc bc                                        ; $7206: $03
    jr nc, @+$05                                  ; $7207: $30 $03

    ld d, e                                       ; $7209: $53
    inc bc                                        ; $720a: $03
    jr nc, @+$05                                  ; $720b: $30 $03

    ld d, l                                       ; $720d: $55
    inc bc                                        ; $720e: $03
    jr nc, jr_01b_7214                            ; $720f: $30 $03

    ld d, e                                       ; $7211: $53
    inc bc                                        ; $7212: $03
    ld b, b                                       ; $7213: $40

jr_01b_7214:
    inc bc                                        ; $7214: $03
    ld d, l                                       ; $7215: $55
    inc bc                                        ; $7216: $03
    ld b, b                                       ; $7217: $40
    inc b                                         ; $7218: $04
    ld d, e                                       ; $7219: $53
    inc bc                                        ; $721a: $03
    ld b, b                                       ; $721b: $40
    ld [bc], a                                    ; $721c: $02
    ld d, l                                       ; $721d: $55
    inc bc                                        ; $721e: $03
    ld b, b                                       ; $721f: $40
    inc bc                                        ; $7220: $03
    ld d, e                                       ; $7221: $53
    inc bc                                        ; $7222: $03
    ld b, b                                       ; $7223: $40
    inc bc                                        ; $7224: $03
    ld d, l                                       ; $7225: $55
    ld [bc], a                                    ; $7226: $02
    jr nc, jr_01b_722c                            ; $7227: $30 $03

    rlc c                                         ; $7229: $cb $01
    dec d                                         ; $722b: $15

jr_01b_722c:
    jr nc, jr_01b_7246                            ; $722c: $30 $18

    ld c, e                                       ; $722e: $4b
    db $10                                        ; $722f: $10
    jr nc, jr_01b_724a                            ; $7230: $30 $18

    ld c, e                                       ; $7232: $4b
    ld hl, $2430                                  ; $7233: $21 $30 $24
    ld c, e                                       ; $7236: $4b
    add hl, bc                                    ; $7237: $09
    jr nc, jr_01b_7246                            ; $7238: $30 $0c

    ld c, e                                       ; $723a: $4b
    jr nz, jr_01b_726d                            ; $723b: $20 $30

    inc h                                         ; $723d: $24
    ld c, e                                       ; $723e: $4b
    inc b                                         ; $723f: $04
    jr nc, jr_01b_724e                            ; $7240: $30 $0c

    ld c, e                                       ; $7242: $4b
    inc hl                                        ; $7243: $23
    jr nc, jr_01b_7276                            ; $7244: $30 $30

jr_01b_7246:
    ld b, l                                       ; $7246: $45
    ld a, [hl+]                                   ; $7247: $2a
    jr nc, jr_01b_727a                            ; $7248: $30 $30

jr_01b_724a:
    ld b, l                                       ; $724a: $45
    dec hl                                        ; $724b: $2b
    jr nc, jr_01b_727e                            ; $724c: $30 $30

jr_01b_724e:
    ld b, l                                       ; $724e: $45
    inc h                                         ; $724f: $24
    jr nc, jr_01b_7282                            ; $7250: $30 $30

    ld b, l                                       ; $7252: $45
    inc de                                        ; $7253: $13
    jr nc, @+$1a                                  ; $7254: $30 $18

    ld b, l                                       ; $7256: $45
    ld d, $30                                     ; $7257: $16 $30
    jr @+$4b                                      ; $7259: $18 $49

    ld a, [hl+]                                   ; $725b: $2a
    jr nc, jr_01b_728e                            ; $725c: $30 $30

    ld c, c                                       ; $725e: $49
    jr nc, @+$32                                  ; $725f: $30 $30

    jr nc, @+$4c                                  ; $7261: $30 $4a

    ld a, [hl+]                                   ; $7263: $2a
    jr nc, jr_01b_7296                            ; $7264: $30 $30

    ld c, d                                       ; $7266: $4a
    ld [de], a                                    ; $7267: $12
    jr nc, jr_01b_7282                            ; $7268: $30 $18

    ld c, d                                       ; $726a: $4a
    ld d, $30                                     ; $726b: $16 $30

jr_01b_726d:
    jr jr_01b_72b4                                ; $726d: $18 $45

    inc bc                                        ; $726f: $03
    jr nc, jr_01b_727e                            ; $7270: $30 $0c

    ld b, l                                       ; $7272: $45
    dec de                                        ; $7273: $1b
    jr nc, jr_01b_729a                            ; $7274: $30 $24

jr_01b_7276:
    ld b, l                                       ; $7276: $45
    inc b                                         ; $7277: $04
    jr nc, @+$0e                                  ; $7278: $30 $0c

jr_01b_727a:
    ld b, l                                       ; $727a: $45
    inc hl                                        ; $727b: $23
    jr nc, jr_01b_72a2                            ; $727c: $30 $24

jr_01b_727e:
    ld c, b                                       ; $727e: $48
    inc b                                         ; $727f: $04
    jr nc, jr_01b_728e                            ; $7280: $30 $0c

jr_01b_7282:
    ld c, b                                       ; $7282: $48
    ld d, $30                                     ; $7283: $16 $30
    jr jr_01b_72cf                                ; $7285: $18 $48

    inc c                                         ; $7287: $0c
    jr nc, jr_01b_7296                            ; $7288: $30 $0c

    ld c, h                                       ; $728a: $4c
    dec b                                         ; $728b: $05
    jr nc, jr_01b_729a                            ; $728c: $30 $0c

jr_01b_728e:
    ld c, h                                       ; $728e: $4c
    inc hl                                        ; $728f: $23
    jr nc, jr_01b_72b6                            ; $7290: $30 $24

    ld b, l                                       ; $7292: $45
    inc b                                         ; $7293: $04
    jr nc, jr_01b_72a2                            ; $7294: $30 $0c

jr_01b_7296:
    ld b, l                                       ; $7296: $45
    ld e, $30                                     ; $7297: $1e $30
    inc h                                         ; $7299: $24

jr_01b_729a:
    ld b, l                                       ; $729a: $45
    inc bc                                        ; $729b: $03
    jr nc, jr_01b_72aa                            ; $729c: $30 $0c

    ld b, l                                       ; $729e: $45
    db $10                                        ; $729f: $10
    jr nc, jr_01b_72ba                            ; $72a0: $30 $18

jr_01b_72a2:
    ld b, l                                       ; $72a2: $45
    jr @+$32                                      ; $72a3: $18 $30

    inc h                                         ; $72a5: $24
    ld c, l                                       ; $72a6: $4d
    ld b, $30                                     ; $72a7: $06 $30
    inc c                                         ; $72a9: $0c

jr_01b_72aa:
    ld c, l                                       ; $72aa: $4d
    ld a, [hl+]                                   ; $72ab: $2a
    jr nc, jr_01b_72de                            ; $72ac: $30 $30

    ld c, l                                       ; $72ae: $4d
    inc c                                         ; $72af: $0c
    jr nc, jr_01b_72be                            ; $72b0: $30 $0c

    ld c, d                                       ; $72b2: $4a
    inc bc                                        ; $72b3: $03

jr_01b_72b4:
    jr nc, jr_01b_72c2                            ; $72b4: $30 $0c

jr_01b_72b6:
    ld c, d                                       ; $72b6: $4a
    db $10                                        ; $72b7: $10
    jr nc, jr_01b_72d2                            ; $72b8: $30 $18

jr_01b_72ba:
    ld c, d                                       ; $72ba: $4a
    inc bc                                        ; $72bb: $03
    jr nc, jr_01b_72ca                            ; $72bc: $30 $0c

jr_01b_72be:
    ld c, d                                       ; $72be: $4a
    inc b                                         ; $72bf: $04
    jr nc, jr_01b_72ce                            ; $72c0: $30 $0c

jr_01b_72c2:
    ld c, d                                       ; $72c2: $4a
    ld de, $1830                                  ; $72c3: $11 $30 $18
    ld c, d                                       ; $72c6: $4a
    inc b                                         ; $72c7: $04
    jr nc, jr_01b_72d6                            ; $72c8: $30 $0c

jr_01b_72ca:
    ld c, d                                       ; $72ca: $4a
    ld a, [bc]                                    ; $72cb: $0a
    jr nc, jr_01b_72da                            ; $72cc: $30 $0c

jr_01b_72ce:
    ld c, h                                       ; $72ce: $4c

jr_01b_72cf:
    dec b                                         ; $72cf: $05
    jr nc, jr_01b_72de                            ; $72d0: $30 $0c

jr_01b_72d2:
    ld c, l                                       ; $72d2: $4d
    add hl, de                                    ; $72d3: $19
    jr nc, jr_01b_72ee                            ; $72d4: $30 $18

jr_01b_72d6:
    ld c, h                                       ; $72d6: $4c
    dec d                                         ; $72d7: $15
    jr nc, jr_01b_72f2                            ; $72d8: $30 $18

jr_01b_72da:
    ld c, d                                       ; $72da: $4a
    inc d                                         ; $72db: $14
    jr nc, jr_01b_72f6                            ; $72dc: $30 $18

jr_01b_72de:
    ld b, a                                       ; $72de: $47
    ld [bc], a                                    ; $72df: $02
    jr nc, jr_01b_72ee                            ; $72e0: $30 $0c

    ld b, a                                       ; $72e2: $47
    dec h                                         ; $72e3: $25
    jr nc, jr_01b_7322                            ; $72e4: $30 $3c

    ld c, [hl]                                    ; $72e6: $4e
    ld d, $30                                     ; $72e7: $16 $30
    jr jr_01b_7332                                ; $72e9: $18 $47

    dec e                                         ; $72eb: $1d
    jr nc, jr_01b_7312                            ; $72ec: $30 $24

jr_01b_72ee:
    ld b, a                                       ; $72ee: $47
    ld a, [de]                                    ; $72ef: $1a
    jr nc, jr_01b_7316                            ; $72f0: $30 $24

jr_01b_72f2:
    ld c, [hl]                                    ; $72f2: $4e
    ld d, $30                                     ; $72f3: $16 $30
    inc h                                         ; $72f5: $24

jr_01b_72f6:
    ld b, l                                       ; $72f6: $45
    inc de                                        ; $72f7: $13
    jr nc, jr_01b_7312                            ; $72f8: $30 $18

    ld b, l                                       ; $72fa: $45
    inc bc                                        ; $72fb: $03
    jr nc, jr_01b_730a                            ; $72fc: $30 $0c

    ld b, l                                       ; $72fe: $45
    inc bc                                        ; $72ff: $03
    jr nc, @+$0e                                  ; $7300: $30 $0c

    ld b, l                                       ; $7302: $45
    rrca                                          ; $7303: $0f
    jr nc, jr_01b_731e                            ; $7304: $30 $18

    ld b, l                                       ; $7306: $45
    ld a, [bc]                                    ; $7307: $0a
    jr nc, jr_01b_7322                            ; $7308: $30 $18

jr_01b_730a:
    ld c, d                                       ; $730a: $4a
    ld c, $30                                     ; $730b: $0e $30
    jr @+$4c                                      ; $730d: $18 $4a

    inc bc                                        ; $730f: $03
    jr nc, jr_01b_731e                            ; $7310: $30 $0c

jr_01b_7312:
    ld c, d                                       ; $7312: $4a
    inc bc                                        ; $7313: $03
    jr nc, jr_01b_7322                            ; $7314: $30 $0c

jr_01b_7316:
    ld c, d                                       ; $7316: $4a
    inc c                                         ; $7317: $0c
    jr nc, jr_01b_7332                            ; $7318: $30 $18

    ld c, d                                       ; $731a: $4a
    ld b, $30                                     ; $731b: $06 $30
    inc c                                         ; $731d: $0c

jr_01b_731e:
    ld b, h                                       ; $731e: $44
    inc bc                                        ; $731f: $03
    jr nc, @+$0e                                  ; $7320: $30 $0c

jr_01b_7322:
    ld b, h                                       ; $7322: $44
    ld de, $1830                                  ; $7323: $11 $30 $18
    ld b, h                                       ; $7326: $44
    jr @+$32                                      ; $7327: $18 $30

    jr @+$4b                                      ; $7329: $18 $49

    ld c, $30                                     ; $732b: $0e $30
    jr jr_01b_7378                                ; $732d: $18 $49

    inc c                                         ; $732f: $0c
    jr nc, jr_01b_733e                            ; $7330: $30 $0c

jr_01b_7332:
    ld b, a                                       ; $7332: $47
    jr @+$22                                      ; $7333: $18 $20

    jr jr_01b_7385                                ; $7335: $18 $4e

    inc bc                                        ; $7337: $03
    jr nc, jr_01b_7346                            ; $7338: $30 $0c

    ld c, [hl]                                    ; $733a: $4e
    inc d                                         ; $733b: $14
    jr nc, jr_01b_7356                            ; $733c: $30 $18

jr_01b_733e:
    ld c, [hl]                                    ; $733e: $4e
    ld [de], a                                    ; $733f: $12
    jr nc, jr_01b_735a                            ; $7340: $30 $18

    ld c, [hl]                                    ; $7342: $4e
    ld a, [bc]                                    ; $7343: $0a
    jr nc, jr_01b_7352                            ; $7344: $30 $0c

jr_01b_7346:
    ld c, b                                       ; $7346: $48
    add hl, de                                    ; $7347: $19
    jr nc, jr_01b_736d                            ; $7348: $30 $23

    ld c, b                                       ; $734a: $48
    ld b, $30                                     ; $734b: $06 $30
    inc c                                         ; $734d: $0c
    ld c, b                                       ; $734e: $48
    dec b                                         ; $734f: $05
    jr nc, jr_01b_735e                            ; $7350: $30 $0c

jr_01b_7352:
    ld c, b                                       ; $7352: $48
    inc de                                        ; $7353: $13
    jr nc, jr_01b_736e                            ; $7354: $30 $18

jr_01b_7356:
    ld c, b                                       ; $7356: $48
    inc c                                         ; $7357: $0c
    jr nc, jr_01b_7366                            ; $7358: $30 $0c

jr_01b_735a:
    ld b, a                                       ; $735a: $47
    ld [hl+], a                                   ; $735b: $22
    jr nc, jr_01b_7383                            ; $735c: $30 $25

jr_01b_735e:
    ld b, a                                       ; $735e: $47
    ld b, $30                                     ; $735f: $06 $30
    inc c                                         ; $7361: $0c
    ld b, a                                       ; $7362: $47
    ld e, $30                                     ; $7363: $1e $30
    inc h                                         ; $7365: $24

jr_01b_7366:
    ld b, a                                       ; $7366: $47
    inc c                                         ; $7367: $0c
    jr nc, jr_01b_7377                            ; $7368: $30 $0d

    ld c, d                                       ; $736a: $4a
    ld e, $30                                     ; $736b: $1e $30

jr_01b_736d:
    cpl                                           ; $736d: $2f

jr_01b_736e:
    ld c, d                                       ; $736e: $4a
    jr nc, jr_01b_73a1                            ; $736f: $30 $30

    jr nc, jr_01b_73b8                            ; $7371: $30 $45

    ld b, $30                                     ; $7373: $06 $30
    dec c                                         ; $7375: $0d
    ld b, l                                       ; $7376: $45

jr_01b_7377:
    ld [de], a                                    ; $7377: $12

jr_01b_7378:
    jr nc, jr_01b_7391                            ; $7378: $30 $17

    ld b, l                                       ; $737a: $45
    ld [de], a                                    ; $737b: $12
    jr nc, jr_01b_7395                            ; $737c: $30 $17

    ld b, l                                       ; $737e: $45
    db $10                                        ; $737f: $10
    jr nc, @+$1a                                  ; $7380: $30 $18

    ld b, l                                       ; $7382: $45

jr_01b_7383:
    jr jr_01b_73b5                                ; $7383: $18 $30

jr_01b_7385:
    dec h                                         ; $7385: $25
    ld c, h                                       ; $7386: $4c
    jr nc, jr_01b_73b9                            ; $7387: $30 $30

    cpl                                           ; $7389: $2f
    ld c, [hl]                                    ; $738a: $4e
    ld de, $00f0                                  ; $738b: $11 $f0 $00
    rst $38                                       ; $738e: $ff
    ld [hl], b                                    ; $738f: $70
    nop                                           ; $7390: $00

jr_01b_7391:
    or h                                          ; $7391: $b4
    ld bc, $7004                                  ; $7392: $01 $04 $70

jr_01b_7395:
    inc h                                         ; $7395: $24
    inc [hl]                                      ; $7396: $34
    ld [bc], a                                    ; $7397: $02
    ld [hl], b                                    ; $7398: $70
    ld b, $34                                     ; $7399: $06 $34
    inc bc                                        ; $739b: $03
    add b                                         ; $739c: $80
    ld b, $34                                     ; $739d: $06 $34
    inc bc                                        ; $739f: $03
    add b                                         ; $73a0: $80

jr_01b_73a1:
    inc c                                         ; $73a1: $0c
    inc [hl]                                      ; $73a2: $34
    dec b                                         ; $73a3: $05
    ld [hl], b                                    ; $73a4: $70
    jr jr_01b_73db                                ; $73a5: $18 $34

    ld [bc], a                                    ; $73a7: $02
    add b                                         ; $73a8: $80
    ld b, $34                                     ; $73a9: $06 $34
    inc b                                         ; $73ab: $04
    ld [hl], b                                    ; $73ac: $70
    ld b, $2a                                     ; $73ad: $06 $2a
    inc b                                         ; $73af: $04
    ld [hl], b                                    ; $73b0: $70
    inc c                                         ; $73b1: $0c
    ld a, [hl+]                                   ; $73b2: $2a
    inc bc                                        ; $73b3: $03
    ld [hl], b                                    ; $73b4: $70

jr_01b_73b5:
    jr jr_01b_73e1                                ; $73b5: $18 $2a

    inc bc                                        ; $73b7: $03

jr_01b_73b8:
    ld [hl], b                                    ; $73b8: $70

jr_01b_73b9:
    ld b, $2a                                     ; $73b9: $06 $2a
    inc b                                         ; $73bb: $04
    ld [hl], b                                    ; $73bc: $70
    ld b, $2f                                     ; $73bd: $06 $2f
    inc b                                         ; $73bf: $04
    add b                                         ; $73c0: $80
    inc c                                         ; $73c1: $0c
    cpl                                           ; $73c2: $2f
    dec b                                         ; $73c3: $05
    ld [hl], b                                    ; $73c4: $70
    jr @+$31                                      ; $73c5: $18 $2f

    ld bc, $0670                                  ; $73c7: $01 $70 $06
    cpl                                           ; $73ca: $2f
    inc b                                         ; $73cb: $04
    ld [hl], b                                    ; $73cc: $70
    ld b, $34                                     ; $73cd: $06 $34
    dec b                                         ; $73cf: $05
    ld [hl], b                                    ; $73d0: $70
    inc c                                         ; $73d1: $0c
    inc [hl]                                      ; $73d2: $34
    inc b                                         ; $73d3: $04
    ld [hl], b                                    ; $73d4: $70
    jr jr_01b_740b                                ; $73d5: $18 $34

    ld [bc], a                                    ; $73d7: $02
    ld [hl], b                                    ; $73d8: $70
    ld b, $34                                     ; $73d9: $06 $34

jr_01b_73db:
    ld [bc], a                                    ; $73db: $02
    add b                                         ; $73dc: $80
    ld b, $34                                     ; $73dd: $06 $34
    dec b                                         ; $73df: $05
    ld [hl], b                                    ; $73e0: $70

jr_01b_73e1:
    inc c                                         ; $73e1: $0c
    inc [hl]                                      ; $73e2: $34
    inc bc                                        ; $73e3: $03
    add b                                         ; $73e4: $80
    jr jr_01b_741b                                ; $73e5: $18 $34

    ld [bc], a                                    ; $73e7: $02
    ld [hl], b                                    ; $73e8: $70
    ld b, $34                                     ; $73e9: $06 $34
    inc b                                         ; $73eb: $04
    ld [hl], b                                    ; $73ec: $70
    ld b, $2d                                     ; $73ed: $06 $2d
    inc b                                         ; $73ef: $04
    add b                                         ; $73f0: $80
    inc c                                         ; $73f1: $0c
    dec l                                         ; $73f2: $2d
    dec b                                         ; $73f3: $05
    ld [hl], b                                    ; $73f4: $70
    jr jr_01b_7424                                ; $73f5: $18 $2d

    inc bc                                        ; $73f7: $03
    ld [hl], b                                    ; $73f8: $70
    ld b, $2d                                     ; $73f9: $06 $2d
    inc b                                         ; $73fb: $04
    ld [hl], b                                    ; $73fc: $70
    ld b, $2f                                     ; $73fd: $06 $2f
    inc b                                         ; $73ff: $04
    add b                                         ; $7400: $80
    inc c                                         ; $7401: $0c
    cpl                                           ; $7402: $2f
    inc b                                         ; $7403: $04
    ld [hl], b                                    ; $7404: $70
    jr jr_01b_7436                                ; $7405: $18 $2f

    ld [bc], a                                    ; $7407: $02
    ld [hl], b                                    ; $7408: $70
    ld b, $2f                                     ; $7409: $06 $2f

jr_01b_740b:
    inc b                                         ; $740b: $04
    ld [hl], b                                    ; $740c: $70
    ld b, $28                                     ; $740d: $06 $28
    inc bc                                        ; $740f: $03
    ld [hl], b                                    ; $7410: $70
    inc c                                         ; $7411: $0c
    jr z, jr_01b_7417                             ; $7412: $28 $03

    ld [hl], b                                    ; $7414: $70
    ld e, $28                                     ; $7415: $1e $28

jr_01b_7417:
    inc b                                         ; $7417: $04
    add b                                         ; $7418: $80
    ld b, $34                                     ; $7419: $06 $34

jr_01b_741b:
    inc bc                                        ; $741b: $03
    ld [hl], b                                    ; $741c: $70
    inc c                                         ; $741d: $0c
    inc [hl]                                      ; $741e: $34
    inc bc                                        ; $741f: $03
    ld [hl], b                                    ; $7420: $70
    jr jr_01b_7457                                ; $7421: $18 $34

    inc bc                                        ; $7423: $03

jr_01b_7424:
    ld [hl], b                                    ; $7424: $70
    ld b, $34                                     ; $7425: $06 $34
    ld [bc], a                                    ; $7427: $02
    ld [hl], b                                    ; $7428: $70
    ld b, $2a                                     ; $7429: $06 $2a
    ld c, $70                                     ; $742b: $0e $70
    ld [de], a                                    ; $742d: $12
    ld a, [hl+]                                   ; $742e: $2a
    ld [bc], a                                    ; $742f: $02
    ld [hl], b                                    ; $7430: $70
    ld b, $2a                                     ; $7431: $06 $2a
    inc bc                                        ; $7433: $03
    ld [hl], b                                    ; $7434: $70
    inc c                                         ; $7435: $0c

jr_01b_7436:
    ld a, [hl+]                                   ; $7436: $2a
    ld [bc], a                                    ; $7437: $02
    add b                                         ; $7438: $80
    inc c                                         ; $7439: $0c
    cpl                                           ; $743a: $2f
    inc c                                         ; $743b: $0c
    ld [hl], b                                    ; $743c: $70
    ld [de], a                                    ; $743d: $12
    cpl                                           ; $743e: $2f
    ld [bc], a                                    ; $743f: $02
    ld [hl], b                                    ; $7440: $70
    ld b, $2f                                     ; $7441: $06 $2f
    inc b                                         ; $7443: $04
    add b                                         ; $7444: $80
    inc c                                         ; $7445: $0c
    cpl                                           ; $7446: $2f
    ld [bc], a                                    ; $7447: $02
    ld [hl], b                                    ; $7448: $70
    ld b, $2f                                     ; $7449: $06 $2f
    ld [bc], a                                    ; $744b: $02
    add b                                         ; $744c: $80
    ld b, $30                                     ; $744d: $06 $30
    inc c                                         ; $744f: $0c
    add b                                         ; $7450: $80
    ld [de], a                                    ; $7451: $12
    jr nc, @+$04                                  ; $7452: $30 $02

    ld [hl], b                                    ; $7454: $70
    ld b, $30                                     ; $7455: $06 $30

jr_01b_7457:
    inc bc                                        ; $7457: $03
    add b                                         ; $7458: $80
    inc c                                         ; $7459: $0c
    jr nc, @+$05                                  ; $745a: $30 $03

    ld [hl], b                                    ; $745c: $70
    inc c                                         ; $745d: $0c
    jr nc, @+$0d                                  ; $745e: $30 $0b

    add b                                         ; $7460: $80
    ld [de], a                                    ; $7461: $12
    jr nc, @+$04                                  ; $7462: $30 $02

    ld [hl], b                                    ; $7464: $70
    ld b, $30                                     ; $7465: $06 $30
    inc bc                                        ; $7467: $03
    add b                                         ; $7468: $80
    inc c                                         ; $7469: $0c
    jr nc, jr_01b_746f                            ; $746a: $30 $03

    add b                                         ; $746c: $80
    inc c                                         ; $746d: $0c
    ld [hl-], a                                   ; $746e: $32

jr_01b_746f:
    inc bc                                        ; $746f: $03
    ld [hl], b                                    ; $7470: $70
    inc c                                         ; $7471: $0c
    ld [hl-], a                                   ; $7472: $32
    inc bc                                        ; $7473: $03
    ld [hl], b                                    ; $7474: $70
    inc c                                         ; $7475: $0c
    ld [hl-], a                                   ; $7476: $32
    add hl, bc                                    ; $7477: $09
    ld [hl], b                                    ; $7478: $70
    inc c                                         ; $7479: $0c
    dec l                                         ; $747a: $2d
    ld a, [bc]                                    ; $747b: $0a
    ld [hl], b                                    ; $747c: $70
    inc c                                         ; $747d: $0c
    ld [hl-], a                                   ; $747e: $32
    ld [bc], a                                    ; $747f: $02
    ld [hl], b                                    ; $7480: $70
    inc c                                         ; $7481: $0c
    ld [hl-], a                                   ; $7482: $32
    inc bc                                        ; $7483: $03
    ld [hl], b                                    ; $7484: $70
    inc c                                         ; $7485: $0c
    ld [hl-], a                                   ; $7486: $32
    dec bc                                        ; $7487: $0b
    ld d, b                                       ; $7488: $50
    jr @+$39                                      ; $7489: $18 $37

    inc bc                                        ; $748b: $03
    ld d, b                                       ; $748c: $50
    ld [de], a                                    ; $748d: $12
    scf                                           ; $748e: $37
    ld [bc], a                                    ; $748f: $02
    ld d, b                                       ; $7490: $50
    ld b, $37                                     ; $7491: $06 $37
    inc b                                         ; $7493: $04
    ld d, b                                       ; $7494: $50
    inc c                                         ; $7495: $0c
    scf                                           ; $7496: $37
    inc bc                                        ; $7497: $03
    ld d, b                                       ; $7498: $50
    inc c                                         ; $7499: $0c
    scf                                           ; $749a: $37
    inc b                                         ; $749b: $04
    ld d, b                                       ; $749c: $50
    ld [de], a                                    ; $749d: $12
    scf                                           ; $749e: $37
    ld [bc], a                                    ; $749f: $02
    ld d, b                                       ; $74a0: $50
    ld b, $37                                     ; $74a1: $06 $37
    inc bc                                        ; $74a3: $03
    ld d, b                                       ; $74a4: $50
    inc c                                         ; $74a5: $0c
    scf                                           ; $74a6: $37
    inc b                                         ; $74a7: $04
    ld d, b                                       ; $74a8: $50
    inc c                                         ; $74a9: $0c
    jr c, @+$05                                   ; $74aa: $38 $03

    ld d, b                                       ; $74ac: $50
    ld [de], a                                    ; $74ad: $12
    jr c, @+$04                                   ; $74ae: $38 $02

    ld d, b                                       ; $74b0: $50
    ld b, $38                                     ; $74b1: $06 $38
    inc bc                                        ; $74b3: $03
    ld d, b                                       ; $74b4: $50
    inc c                                         ; $74b5: $0c
    jr c, @+$05                                   ; $74b6: $38 $03

    ld d, b                                       ; $74b8: $50
    inc c                                         ; $74b9: $0c
    jr c, jr_01b_74c0                             ; $74ba: $38 $04

    ld d, b                                       ; $74bc: $50
    ld [de], a                                    ; $74bd: $12
    jr c, @+$04                                   ; $74be: $38 $02

jr_01b_74c0:
    ld d, b                                       ; $74c0: $50
    ld b, $38                                     ; $74c1: $06 $38
    inc bc                                        ; $74c3: $03
    ld d, b                                       ; $74c4: $50
    inc c                                         ; $74c5: $0c
    jr c, jr_01b_74cb                             ; $74c6: $38 $03

    ld d, b                                       ; $74c8: $50
    inc c                                         ; $74c9: $0c
    scf                                           ; $74ca: $37

jr_01b_74cb:
    inc b                                         ; $74cb: $04
    ld d, b                                       ; $74cc: $50
    ld [de], a                                    ; $74cd: $12
    scf                                           ; $74ce: $37
    inc bc                                        ; $74cf: $03
    ld d, b                                       ; $74d0: $50
    ld b, $37                                     ; $74d1: $06 $37
    inc b                                         ; $74d3: $04
    ld d, b                                       ; $74d4: $50
    inc c                                         ; $74d5: $0c
    scf                                           ; $74d6: $37
    inc bc                                        ; $74d7: $03
    ld d, b                                       ; $74d8: $50
    inc c                                         ; $74d9: $0c
    scf                                           ; $74da: $37
    inc b                                         ; $74db: $04
    ld d, b                                       ; $74dc: $50
    ld [de], a                                    ; $74dd: $12
    scf                                           ; $74de: $37
    inc bc                                        ; $74df: $03
    ld d, b                                       ; $74e0: $50
    ld b, $37                                     ; $74e1: $06 $37
    inc b                                         ; $74e3: $04
    ld d, b                                       ; $74e4: $50
    inc c                                         ; $74e5: $0c
    scf                                           ; $74e6: $37
    inc b                                         ; $74e7: $04
    ld d, b                                       ; $74e8: $50
    inc c                                         ; $74e9: $0c
    jr c, @+$05                                   ; $74ea: $38 $03

    ld d, b                                       ; $74ec: $50
    ld [de], a                                    ; $74ed: $12
    jr c, @+$04                                   ; $74ee: $38 $02

    ld d, b                                       ; $74f0: $50
    ld b, $38                                     ; $74f1: $06 $38
    inc bc                                        ; $74f3: $03
    ld d, b                                       ; $74f4: $50
    inc c                                         ; $74f5: $0c
    jr c, @+$05                                   ; $74f6: $38 $03

    ld d, b                                       ; $74f8: $50
    inc c                                         ; $74f9: $0c
    jr c, @+$05                                   ; $74fa: $38 $03

    ld d, b                                       ; $74fc: $50
    ld [de], a                                    ; $74fd: $12
    jr c, @+$04                                   ; $74fe: $38 $02

    ld d, b                                       ; $7500: $50
    ld b, $38                                     ; $7501: $06 $38
    inc bc                                        ; $7503: $03
    ld d, b                                       ; $7504: $50
    inc c                                         ; $7505: $0c
    jr c, jr_01b_750b                             ; $7506: $38 $03

    ld [hl], b                                    ; $7508: $70
    inc c                                         ; $7509: $0c
    cp b                                          ; $750a: $b8

jr_01b_750b:
    inc d                                         ; $750b: $14
    ld b, $70                                     ; $750c: $06 $70
    ld [de], a                                    ; $750e: $12
    jr c, jr_01b_7517                             ; $750f: $38 $06

    ld h, b                                       ; $7511: $60
    ld b, $38                                     ; $7512: $06 $38
    ld b, $70                                     ; $7514: $06 $70
    inc c                                         ; $7516: $0c

jr_01b_7517:
    jr c, jr_01b_751f                             ; $7517: $38 $06

    ld h, b                                       ; $7519: $60
    inc c                                         ; $751a: $0c
    jr c, @+$08                                   ; $751b: $38 $06

    ld [hl], b                                    ; $751d: $70
    ld [de], a                                    ; $751e: $12

jr_01b_751f:
    jr c, jr_01b_7527                             ; $751f: $38 $06

    ld h, b                                       ; $7521: $60
    ld b, $38                                     ; $7522: $06 $38
    ld b, $60                                     ; $7524: $06 $60
    inc c                                         ; $7526: $0c

jr_01b_7527:
    jr c, jr_01b_752f                             ; $7527: $38 $06

    ld [hl], b                                    ; $7529: $70
    inc c                                         ; $752a: $0c
    jr c, @+$08                                   ; $752b: $38 $06

    ld h, b                                       ; $752d: $60
    ld [de], a                                    ; $752e: $12

jr_01b_752f:
    jr c, jr_01b_7537                             ; $752f: $38 $06

    ld h, b                                       ; $7531: $60
    ld b, $38                                     ; $7532: $06 $38
    ld b, $60                                     ; $7534: $06 $60
    inc c                                         ; $7536: $0c

jr_01b_7537:
    jr c, jr_01b_753f                             ; $7537: $38 $06

    ld h, b                                       ; $7539: $60
    inc c                                         ; $753a: $0c
    jr c, @+$08                                   ; $753b: $38 $06

    ld [hl], b                                    ; $753d: $70
    ld [de], a                                    ; $753e: $12

jr_01b_753f:
    jr c, jr_01b_7547                             ; $753f: $38 $06

    ld h, b                                       ; $7541: $60
    ld b, $38                                     ; $7542: $06 $38
    ld b, $60                                     ; $7544: $06 $60
    inc c                                         ; $7546: $0c

jr_01b_7547:
    jr c, @+$0e                                   ; $7547: $38 $0c

    ld [hl], b                                    ; $7549: $70
    inc c                                         ; $754a: $0c
    ld [hl-], a                                   ; $754b: $32
    ld b, $60                                     ; $754c: $06 $60
    ld [de], a                                    ; $754e: $12
    ld [hl-], a                                   ; $754f: $32
    ld b, $60                                     ; $7550: $06 $60
    ld b, $32                                     ; $7552: $06 $32
    ld b, $60                                     ; $7554: $06 $60
    inc c                                         ; $7556: $0c
    ld [hl-], a                                   ; $7557: $32
    ld b, $60                                     ; $7558: $06 $60
    inc c                                         ; $755a: $0c
    ld [hl-], a                                   ; $755b: $32
    ld b, $60                                     ; $755c: $06 $60
    ld [de], a                                    ; $755e: $12
    ld [hl-], a                                   ; $755f: $32
    ld b, $60                                     ; $7560: $06 $60
    ld b, $32                                     ; $7562: $06 $32
    ld b, $70                                     ; $7564: $06 $70
    inc c                                         ; $7566: $0c
    ld [hl-], a                                   ; $7567: $32
    ld b, $70                                     ; $7568: $06 $70
    inc c                                         ; $756a: $0c
    ld [hl-], a                                   ; $756b: $32
    ld b, $60                                     ; $756c: $06 $60
    ld [de], a                                    ; $756e: $12
    ld [hl-], a                                   ; $756f: $32
    ld b, $60                                     ; $7570: $06 $60
    ld b, $32                                     ; $7572: $06 $32
    ld b, $70                                     ; $7574: $06 $70
    inc c                                         ; $7576: $0c
    ld [hl-], a                                   ; $7577: $32
    ld b, $70                                     ; $7578: $06 $70
    inc c                                         ; $757a: $0c
    ld [hl-], a                                   ; $757b: $32
    inc c                                         ; $757c: $0c
    ld h, b                                       ; $757d: $60
    inc c                                         ; $757e: $0c
    dec l                                         ; $757f: $2d
    inc c                                         ; $7580: $0c
    ld h, b                                       ; $7581: $60
    inc c                                         ; $7582: $0c
    ld [hl-], a                                   ; $7583: $32
    ld b, $60                                     ; $7584: $06 $60
    inc c                                         ; $7586: $0c
    ld [hl-], a                                   ; $7587: $32
    inc c                                         ; $7588: $0c
    ld [hl], b                                    ; $7589: $70
    inc c                                         ; $758a: $0c
    ld [hl], $30                                  ; $758b: $36 $30
    ld h, b                                       ; $758d: $60
    jr nc, jr_01b_75c6                            ; $758e: $30 $36

    ld a, [hl+]                                   ; $7590: $2a
    ld [hl], b                                    ; $7591: $70
    jr nc, @+$39                                  ; $7592: $30 $37

    inc c                                         ; $7594: $0c
    ld [hl], b                                    ; $7595: $70
    ld [de], a                                    ; $7596: $12
    scf                                           ; $7597: $37
    ld b, $70                                     ; $7598: $06 $70
    ld b, $37                                     ; $759a: $06 $37
    ld b, $70                                     ; $759c: $06 $70
    inc c                                         ; $759e: $0c
    scf                                           ; $759f: $37
    ld b, $70                                     ; $75a0: $06 $70
    inc c                                         ; $75a2: $0c
    scf                                           ; $75a3: $37
    inc c                                         ; $75a4: $0c
    ld h, b                                       ; $75a5: $60
    ld [de], a                                    ; $75a6: $12
    scf                                           ; $75a7: $37
    ld b, $60                                     ; $75a8: $06 $60
    ld b, $37                                     ; $75aa: $06 $37
    ld b, $60                                     ; $75ac: $06 $60
    inc c                                         ; $75ae: $0c
    scf                                           ; $75af: $37
    inc c                                         ; $75b0: $0c
    ld h, b                                       ; $75b1: $60
    inc c                                         ; $75b2: $0c
    ld [hl-], a                                   ; $75b3: $32
    inc c                                         ; $75b4: $0c
    ld h, b                                       ; $75b5: $60
    ld [de], a                                    ; $75b6: $12
    ld [hl-], a                                   ; $75b7: $32
    ld b, $60                                     ; $75b8: $06 $60
    ld b, $32                                     ; $75ba: $06 $32
    ld b, $60                                     ; $75bc: $06 $60
    inc c                                         ; $75be: $0c
    ld [hl-], a                                   ; $75bf: $32
    ld b, $60                                     ; $75c0: $06 $60
    inc c                                         ; $75c2: $0c
    ld [hl-], a                                   ; $75c3: $32
    inc c                                         ; $75c4: $0c
    ld h, b                                       ; $75c5: $60

jr_01b_75c6:
    ld [de], a                                    ; $75c6: $12
    ld [hl-], a                                   ; $75c7: $32
    ld b, $70                                     ; $75c8: $06 $70
    ld b, $32                                     ; $75ca: $06 $32
    ld b, $60                                     ; $75cc: $06 $60
    inc c                                         ; $75ce: $0c
    ld [hl-], a                                   ; $75cf: $32
    inc c                                         ; $75d0: $0c
    ld [hl], b                                    ; $75d1: $70
    inc c                                         ; $75d2: $0c
    dec [hl]                                      ; $75d3: $35
    ld [de], a                                    ; $75d4: $12
    ld [hl], b                                    ; $75d5: $70
    jr jr_01b_760d                                ; $75d6: $18 $35

    jr jr_01b_764a                                ; $75d8: $18 $70

    jr jr_01b_7615                                ; $75da: $18 $39

    ld [de], a                                    ; $75dc: $12
    ld [hl], b                                    ; $75dd: $70
    jr jr_01b_7619                                ; $75de: $18 $39

    jr jr_01b_7642                                ; $75e0: $18 $60

    jr jr_01b_7616                                ; $75e2: $18 $32

    inc c                                         ; $75e4: $0c
    ld h, b                                       ; $75e5: $60
    ld [de], a                                    ; $75e6: $12
    ld [hl-], a                                   ; $75e7: $32
    ld b, $60                                     ; $75e8: $06 $60
    ld b, $32                                     ; $75ea: $06 $32
    ld b, $60                                     ; $75ec: $06 $60
    inc c                                         ; $75ee: $0c
    ld [hl-], a                                   ; $75ef: $32
    ld b, $60                                     ; $75f0: $06 $60
    inc c                                         ; $75f2: $0c
    ld [hl-], a                                   ; $75f3: $32
    inc c                                         ; $75f4: $0c
    ld h, b                                       ; $75f5: $60
    ld [de], a                                    ; $75f6: $12
    ld [hl-], a                                   ; $75f7: $32
    ld b, $70                                     ; $75f8: $06 $70
    ld b, $32                                     ; $75fa: $06 $32
    ld [de], a                                    ; $75fc: $12
    ld [hl], b                                    ; $75fd: $70
    ld [de], a                                    ; $75fe: $12
    jr nc, @+$08                                  ; $75ff: $30 $06

    ld [hl], b                                    ; $7601: $70
    ld b, $2e                                     ; $7602: $06 $2e
    jr jr_01b_7666                                ; $7604: $18 $60

    jr jr_01b_7636                                ; $7606: $18 $2e

    inc c                                         ; $7608: $0c
    ld h, b                                       ; $7609: $60
    jr jr_01b_763a                                ; $760a: $18 $2e

    ld [de], a                                    ; $760c: $12

jr_01b_760d:
    ld [hl], b                                    ; $760d: $70
    ld [de], a                                    ; $760e: $12
    ld l, $06                                     ; $760f: $2e $06
    ld [hl], b                                    ; $7611: $70
    ld b, $2e                                     ; $7612: $06 $2e
    inc c                                         ; $7614: $0c

jr_01b_7615:
    ld [hl], b                                    ; $7615: $70

jr_01b_7616:
    inc c                                         ; $7616: $0c
    ld l, $0c                                     ; $7617: $2e $0c

jr_01b_7619:
    ld [hl], b                                    ; $7619: $70
    inc c                                         ; $761a: $0c
    scf                                           ; $761b: $37
    inc c                                         ; $761c: $0c
    ld h, b                                       ; $761d: $60
    ld [de], a                                    ; $761e: $12
    scf                                           ; $761f: $37
    ld b, $60                                     ; $7620: $06 $60
    ld b, $37                                     ; $7622: $06 $37
    ld b, $70                                     ; $7624: $06 $70
    inc c                                         ; $7626: $0c
    scf                                           ; $7627: $37
    ld b, $70                                     ; $7628: $06 $70
    inc c                                         ; $762a: $0c
    scf                                           ; $762b: $37
    inc c                                         ; $762c: $0c
    ld [hl], b                                    ; $762d: $70
    ld [de], a                                    ; $762e: $12
    scf                                           ; $762f: $37
    ld b, $60                                     ; $7630: $06 $60
    ld b, $32                                     ; $7632: $06 $32
    inc c                                         ; $7634: $0c
    ld [hl], b                                    ; $7635: $70

jr_01b_7636:
    inc c                                         ; $7636: $0c
    scf                                           ; $7637: $37
    ld b, $70                                     ; $7638: $06 $70

jr_01b_763a:
    inc c                                         ; $763a: $0c
    scf                                           ; $763b: $37
    inc c                                         ; $763c: $0c
    ld [hl], b                                    ; $763d: $70
    ld [de], a                                    ; $763e: $12
    scf                                           ; $763f: $37
    ld b, $70                                     ; $7640: $06 $70

jr_01b_7642:
    ld b, $37                                     ; $7642: $06 $37
    ld b, $70                                     ; $7644: $06 $70
    inc c                                         ; $7646: $0c
    scf                                           ; $7647: $37
    ld b, $70                                     ; $7648: $06 $70

jr_01b_764a:
    inc c                                         ; $764a: $0c
    scf                                           ; $764b: $37
    inc c                                         ; $764c: $0c
    ld [hl], b                                    ; $764d: $70
    ld [de], a                                    ; $764e: $12
    scf                                           ; $764f: $37
    ld b, $60                                     ; $7650: $06 $60
    ld b, $32                                     ; $7652: $06 $32
    jr jr_01b_76c6                                ; $7654: $18 $70

    inc c                                         ; $7656: $0c
    scf                                           ; $7657: $37
    ld b, $60                                     ; $7658: $06 $60
    inc c                                         ; $765a: $0c
    inc [hl]                                      ; $765b: $34
    inc c                                         ; $765c: $0c
    ld h, b                                       ; $765d: $60
    ld [de], a                                    ; $765e: $12
    inc [hl]                                      ; $765f: $34
    ld b, $60                                     ; $7660: $06 $60
    ld b, $34                                     ; $7662: $06 $34
    ld b, $60                                     ; $7664: $06 $60

jr_01b_7666:
    inc c                                         ; $7666: $0c
    inc [hl]                                      ; $7667: $34
    ld b, $60                                     ; $7668: $06 $60
    inc c                                         ; $766a: $0c
    inc [hl]                                      ; $766b: $34
    ld [de], a                                    ; $766c: $12
    ld h, b                                       ; $766d: $60
    jr @+$31                                      ; $766e: $18 $2f

    ld [de], a                                    ; $7670: $12
    ld [hl], b                                    ; $7671: $70
    jr jr_01b_76a8                                ; $7672: $18 $34

    inc c                                         ; $7674: $0c
    ld h, b                                       ; $7675: $60
    ld [de], a                                    ; $7676: $12
    inc [hl]                                      ; $7677: $34
    ld b, $60                                     ; $7678: $06 $60
    ld b, $34                                     ; $767a: $06 $34
    jr jr_01b_76de                                ; $767c: $18 $60

    jr jr_01b_76af                                ; $767e: $18 $2f

    ld [de], a                                    ; $7680: $12
    ld [hl], b                                    ; $7681: $70
    jr jr_01b_76b3                                ; $7682: $18 $2f

    jr jr_01b_76e6                                ; $7684: $18 $60

    jr jr_01b_76ba                                ; $7686: $18 $32

    inc c                                         ; $7688: $0c
    ld h, b                                       ; $7689: $60
    ld [de], a                                    ; $768a: $12
    ld [hl-], a                                   ; $768b: $32
    ld b, $60                                     ; $768c: $06 $60
    ld b, $32                                     ; $768e: $06 $32
    ld b, $60                                     ; $7690: $06 $60
    inc c                                         ; $7692: $0c
    ld [hl-], a                                   ; $7693: $32
    ld b, $60                                     ; $7694: $06 $60
    inc c                                         ; $7696: $0c
    ld [hl-], a                                   ; $7697: $32
    inc c                                         ; $7698: $0c
    ld h, b                                       ; $7699: $60
    ld [de], a                                    ; $769a: $12
    ld [hl-], a                                   ; $769b: $32
    ld b, $60                                     ; $769c: $06 $60
    ld b, $32                                     ; $769e: $06 $32
    ld b, $60                                     ; $76a0: $06 $60
    inc c                                         ; $76a2: $0c
    ld [hl-], a                                   ; $76a3: $32
    ld [de], a                                    ; $76a4: $12
    ld [hl], b                                    ; $76a5: $70
    inc c                                         ; $76a6: $0c
    scf                                           ; $76a7: $37

jr_01b_76a8:
    ld [de], a                                    ; $76a8: $12
    ld [hl], b                                    ; $76a9: $70
    jr jr_01b_76e3                                ; $76aa: $18 $37

    ld b, $70                                     ; $76ac: $06 $70
    inc c                                         ; $76ae: $0c

jr_01b_76af:
    scf                                           ; $76af: $37
    ld b, $70                                     ; $76b0: $06 $70
    inc c                                         ; $76b2: $0c

jr_01b_76b3:
    scf                                           ; $76b3: $37
    ld [de], a                                    ; $76b4: $12
    ld [hl], b                                    ; $76b5: $70
    jr jr_01b_76ef                                ; $76b6: $18 $37

    ld b, $70                                     ; $76b8: $06 $70

jr_01b_76ba:
    inc c                                         ; $76ba: $0c
    scf                                           ; $76bb: $37
    ld b, $60                                     ; $76bc: $06 $60
    inc c                                         ; $76be: $0c
    ld sp, $6012                                  ; $76bf: $31 $12 $60
    jr @+$33                                      ; $76c2: $18 $31

    ld b, $60                                     ; $76c4: $06 $60

jr_01b_76c6:
    inc c                                         ; $76c6: $0c
    ld sp, $700c                                  ; $76c7: $31 $0c $70
    inc c                                         ; $76ca: $0c
    ld [hl], $06                                  ; $76cb: $36 $06
    ld [hl], b                                    ; $76cd: $70
    inc c                                         ; $76ce: $0c
    ld [hl], $06                                  ; $76cf: $36 $06
    ld [hl], b                                    ; $76d1: $70
    inc c                                         ; $76d2: $0c
    ld [hl], $06                                  ; $76d3: $36 $06
    ld [hl], b                                    ; $76d5: $70
    inc c                                         ; $76d6: $0c
    ld [hl], $0c                                  ; $76d7: $36 $0c
    ld h, b                                       ; $76d9: $60
    inc c                                         ; $76da: $0c
    dec sp                                        ; $76db: $3b
    ld [de], a                                    ; $76dc: $12
    ld h, b                                       ; $76dd: $60

jr_01b_76de:
    jr jr_01b_771b                                ; $76de: $18 $3b

    ld b, $60                                     ; $76e0: $06 $60
    inc c                                         ; $76e2: $0c

jr_01b_76e3:
    cpl                                           ; $76e3: $2f
    ld b, $60                                     ; $76e4: $06 $60

jr_01b_76e6:
    inc c                                         ; $76e6: $0c
    cpl                                           ; $76e7: $2f
    inc h                                         ; $76e8: $24
    ld h, b                                       ; $76e9: $60
    jr nc, jr_01b_7721                            ; $76ea: $30 $35

    ld d, h                                       ; $76ec: $54
    ld [hl], b                                    ; $76ed: $70
    ld d, h                                       ; $76ee: $54

jr_01b_76ef:
    scf                                           ; $76ef: $37
    ld b, $70                                     ; $76f0: $06 $70
    ld b, $35                                     ; $76f2: $06 $35
    ld b, $60                                     ; $76f4: $06 $60
    ld b, $34                                     ; $76f6: $06 $34
    ld h, b                                       ; $76f8: $60
    ld [hl], b                                    ; $76f9: $70
    ld h, b                                       ; $76fa: $60
    scf                                           ; $76fb: $37
    ld a, [hl+]                                   ; $76fc: $2a
    ld h, b                                       ; $76fd: $60
    jr nc, jr_01b_7737                            ; $76fe: $30 $37

    jr jr_01b_7772                                ; $7700: $18 $70

    jr jr_01b_773b                                ; $7702: $18 $37

    jr nc, jr_01b_7766                            ; $7704: $30 $60

    jr nc, jr_01b_773e                            ; $7706: $30 $36

    inc a                                         ; $7708: $3c
    ld h, b                                       ; $7709: $60
    inc a                                         ; $770a: $3c
    ld sp, $600c                                  ; $770b: $31 $0c $60
    inc c                                         ; $770e: $0c
    add hl, sp                                    ; $770f: $39
    inc h                                         ; $7710: $24
    ld h, b                                       ; $7711: $60
    jr nc, jr_01b_7743                            ; $7712: $30 $2f

    ld a, [hl+]                                   ; $7714: $2a
    ldh a, [rP1]                                  ; $7715: $f0 $00
    rst $38                                       ; $7717: $ff
    ldh a, [rP1]                                  ; $7718: $f0 $00
    rst $38                                       ; $771a: $ff

jr_01b_771b:
    ld a, d                                       ; $771b: $7a
    ld a, d                                       ; $771c: $7a
    ld a, d                                       ; $771d: $7a
    ld a, d                                       ; $771e: $7a
    ld a, d                                       ; $771f: $7a
    ld a, c                                       ; $7720: $79

jr_01b_7721:
    add c                                         ; $7721: $81
    ld [hl], c                                    ; $7722: $71
    ld [hl], e                                    ; $7723: $73
    add [hl]                                      ; $7724: $86
    add l                                         ; $7725: $85
    add h                                         ; $7726: $84
    add e                                         ; $7727: $83
    ld a, h                                       ; $7728: $7c
    ld a, a                                       ; $7729: $7f
    ld a, d                                       ; $772a: $7a
    ld [hl], d                                    ; $772b: $72
    ld l, [hl]                                    ; $772c: $6e
    ld l, c                                       ; $772d: $69
    ld a, b                                       ; $772e: $78
    ld [hl], a                                    ; $772f: $77
    ld a, [hl]                                    ; $7730: $7e
    ld [hl], h                                    ; $7731: $74
    add c                                         ; $7732: $81
    add d                                         ; $7733: $82
    add b                                         ; $7734: $80
    ld a, e                                       ; $7735: $7b
    ld l, b                                       ; $7736: $68

jr_01b_7737:
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773a: $00

jr_01b_773b:
    nop                                           ; $773b: $00
    ld [hl], c                                    ; $773c: $71
    nop                                           ; $773d: $00

jr_01b_773e:
    nop                                           ; $773e: $00
    nop                                           ; $773f: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00

jr_01b_7743:
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00

jr_01b_7766:
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00

jr_01b_7772:
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778a: $00
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00
    ld b, $00                                     ; $77a0: $06 $00
    inc l                                         ; $77a2: $2c
    nop                                           ; $77a3: $00
    adc c                                         ; $77a4: $89
    nop                                           ; $77a5: $00
    ld c, $00                                     ; $77a6: $0e $00
    jr jr_01b_77aa                                ; $77a8: $18 $00

jr_01b_77aa:
    ld [hl+], a                                   ; $77aa: $22
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    nop                                           ; $77af: $00
    ld a, [bc]                                    ; $77b0: $0a
    ldh [$fe], a                                  ; $77b1: $e0 $fe
    nop                                           ; $77b3: $00
    nop                                           ; $77b4: $00
    nop                                           ; $77b5: $00
    nop                                           ; $77b6: $00
    nop                                           ; $77b7: $00
    nop                                           ; $77b8: $00
    ld bc, $e00a                                  ; $77b9: $01 $0a $e0
    cp $00                                        ; $77bc: $fe $00
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    nop                                           ; $77c2: $00
    ld [bc], a                                    ; $77c3: $02
    ld a, [bc]                                    ; $77c4: $0a
    ldh [$fe], a                                  ; $77c5: $e0 $fe
    nop                                           ; $77c7: $00
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    inc [hl]                                      ; $77cc: $34
    ld bc, $04ea                                  ; $77cd: $01 $ea $04
    xor c                                         ; $77d0: $a9
    ld [$6059], sp                                ; $77d1: $08 $59 $60
    nop                                           ; $77d4: $00
    and h                                         ; $77d5: $a4
    ld bc, $602a                                  ; $77d6: $01 $2a $60
    jr nc, jr_01b_77ff                            ; $77d9: $30 $24

    ld [de], a                                    ; $77db: $12
    ld h, b                                       ; $77dc: $60
    jr jr_01b_7803                                ; $77dd: $18 $24

    ld a, [hl+]                                   ; $77df: $2a
    ld h, b                                       ; $77e0: $60
    jr nc, jr_01b_7807                            ; $77e1: $30 $24

    jr jr_01b_7845                                ; $77e3: $18 $60

    jr jr_01b_7815                                ; $77e5: $18 $2e

    ld a, [hl+]                                   ; $77e7: $2a
    ld h, b                                       ; $77e8: $60
    jr nc, jr_01b_7819                            ; $77e9: $30 $2e

    ld [de], a                                    ; $77eb: $12
    ld h, b                                       ; $77ec: $60
    jr jr_01b_781d                                ; $77ed: $18 $2e

    ld a, [hl+]                                   ; $77ef: $2a
    ld h, b                                       ; $77f0: $60
    jr nc, jr_01b_7821                            ; $77f1: $30 $2e

    jr jr_01b_7855                                ; $77f3: $18 $60

    jr jr_01b_781b                                ; $77f5: $18 $24

    ld a, [hl+]                                   ; $77f7: $2a
    ld h, b                                       ; $77f8: $60
    jr nc, jr_01b_781f                            ; $77f9: $30 $24

    ld [de], a                                    ; $77fb: $12
    ld h, b                                       ; $77fc: $60
    jr jr_01b_7823                                ; $77fd: $18 $24

jr_01b_77ff:
    ld a, [hl+]                                   ; $77ff: $2a
    ld h, b                                       ; $7800: $60
    jr nc, jr_01b_7827                            ; $7801: $30 $24

jr_01b_7803:
    jr jr_01b_7865                                ; $7803: $18 $60

    jr jr_01b_7835                                ; $7805: $18 $2e

jr_01b_7807:
    ld a, [hl+]                                   ; $7807: $2a
    ld h, b                                       ; $7808: $60
    jr nc, jr_01b_7839                            ; $7809: $30 $2e

    ld [de], a                                    ; $780b: $12
    ld h, b                                       ; $780c: $60
    jr jr_01b_783d                                ; $780d: $18 $2e

    ld a, [hl+]                                   ; $780f: $2a
    ld h, b                                       ; $7810: $60
    jr nc, jr_01b_7841                            ; $7811: $30 $2e

    jr jr_01b_7875                                ; $7813: $18 $60

jr_01b_7815:
    jr jr_01b_783b                                ; $7815: $18 $24

    ld a, [hl+]                                   ; $7817: $2a

jr_01b_7818:
    ld h, b                                       ; $7818: $60

jr_01b_7819:
    jr nc, jr_01b_783f                            ; $7819: $30 $24

jr_01b_781b:
    ld [de], a                                    ; $781b: $12
    ld h, b                                       ; $781c: $60

jr_01b_781d:
    jr jr_01b_7843                                ; $781d: $18 $24

jr_01b_781f:
    ld a, [hl+]                                   ; $781f: $2a
    ld h, b                                       ; $7820: $60

jr_01b_7821:
    jr nc, jr_01b_7847                            ; $7821: $30 $24

jr_01b_7823:
    jr jr_01b_7885                                ; $7823: $18 $60

    jr jr_01b_7855                                ; $7825: $18 $2e

jr_01b_7827:
    ld a, [hl+]                                   ; $7827: $2a
    ld h, b                                       ; $7828: $60
    jr nc, jr_01b_7859                            ; $7829: $30 $2e

    ld [de], a                                    ; $782b: $12
    ld d, b                                       ; $782c: $50
    jr jr_01b_785d                                ; $782d: $18 $2e

    ld a, [hl+]                                   ; $782f: $2a
    ld d, b                                       ; $7830: $50
    jr nc, jr_01b_7861                            ; $7831: $30 $2e

    jr jr_01b_7885                                ; $7833: $18 $50

jr_01b_7835:
    jr jr_01b_785b                                ; $7835: $18 $24

    ld a, [hl+]                                   ; $7837: $2a
    ld d, b                                       ; $7838: $50

jr_01b_7839:
    jr nc, jr_01b_785f                            ; $7839: $30 $24

jr_01b_783b:
    ld [de], a                                    ; $783b: $12
    ld d, b                                       ; $783c: $50

jr_01b_783d:
    jr jr_01b_7863                                ; $783d: $18 $24

jr_01b_783f:
    ld a, [hl+]                                   ; $783f: $2a
    ld h, b                                       ; $7840: $60

jr_01b_7841:
    jr nc, @+$26                                  ; $7841: $30 $24

jr_01b_7843:
    jr jr_01b_78a5                                ; $7843: $18 $60

jr_01b_7845:
    jr jr_01b_7875                                ; $7845: $18 $2e

jr_01b_7847:
    ld a, [hl+]                                   ; $7847: $2a
    ld h, b                                       ; $7848: $60
    jr nc, jr_01b_7879                            ; $7849: $30 $2e

    ld [de], a                                    ; $784b: $12
    ld d, b                                       ; $784c: $50
    jr jr_01b_787d                                ; $784d: $18 $2e

    ld a, [hl+]                                   ; $784f: $2a
    ld d, b                                       ; $7850: $50
    jr nc, jr_01b_7881                            ; $7851: $30 $2e

    jr jr_01b_78c5                                ; $7853: $18 $70

jr_01b_7855:
    jr jr_01b_7818                                ; $7855: $18 $c1

    dec b                                         ; $7857: $05
    inc c                                         ; $7858: $0c

jr_01b_7859:
    ld h, b                                       ; $7859: $60
    inc c                                         ; $785a: $0c

jr_01b_785b:
    ld b, e                                       ; $785b: $43
    inc c                                         ; $785c: $0c

jr_01b_785d:
    ld h, b                                       ; $785d: $60
    inc c                                         ; $785e: $0c

jr_01b_785f:
    ld b, h                                       ; $785f: $44
    ld [de], a                                    ; $7860: $12

jr_01b_7861:
    ld [hl], b                                    ; $7861: $70
    inc c                                         ; $7862: $0c

jr_01b_7863:
    inc a                                         ; $7863: $3c
    ld [de], a                                    ; $7864: $12

jr_01b_7865:
    ld [hl], b                                    ; $7865: $70
    jr jr_01b_78a4                                ; $7866: $18 $3c

    jr jr_01b_78da                                ; $7868: $18 $70

    jr jr_01b_78a9                                ; $786a: $18 $3d

    jr jr_01b_78de                                ; $786c: $18 $70

    jr jr_01b_78b3                                ; $786e: $18 $43

    inc c                                         ; $7870: $0c
    ld [hl], b                                    ; $7871: $70
    inc c                                         ; $7872: $0c
    ccf                                           ; $7873: $3f
    inc c                                         ; $7874: $0c

jr_01b_7875:
    ld [hl], b                                    ; $7875: $70
    inc c                                         ; $7876: $0c
    ld b, h                                       ; $7877: $44
    inc c                                         ; $7878: $0c

jr_01b_7879:
    ld [hl], b                                    ; $7879: $70
    inc c                                         ; $787a: $0c
    ld b, c                                       ; $787b: $41
    inc c                                         ; $787c: $0c

jr_01b_787d:
    ld [hl], b                                    ; $787d: $70
    inc c                                         ; $787e: $0c
    ld b, [hl]                                    ; $787f: $46
    ld [de], a                                    ; $7880: $12

jr_01b_7881:
    ld [hl], b                                    ; $7881: $70
    inc c                                         ; $7882: $0c
    ld b, e                                       ; $7883: $43
    inc c                                         ; $7884: $0c

jr_01b_7885:
    ld [hl], b                                    ; $7885: $70
    inc c                                         ; $7886: $0c
    ld c, b                                       ; $7887: $48
    inc c                                         ; $7888: $0c
    ld [hl], b                                    ; $7889: $70
    inc c                                         ; $788a: $0c
    ld b, c                                       ; $788b: $41
    inc c                                         ; $788c: $0c
    ld h, b                                       ; $788d: $60
    inc c                                         ; $788e: $0c
    ld b, e                                       ; $788f: $43
    inc c                                         ; $7890: $0c
    ld h, b                                       ; $7891: $60
    inc c                                         ; $7892: $0c
    ld b, h                                       ; $7893: $44
    ld [de], a                                    ; $7894: $12
    ld [hl], b                                    ; $7895: $70
    inc c                                         ; $7896: $0c
    inc a                                         ; $7897: $3c
    ld [de], a                                    ; $7898: $12
    ld [hl], b                                    ; $7899: $70
    jr jr_01b_78d8                                ; $789a: $18 $3c

    jr jr_01b_790e                                ; $789c: $18 $70

    jr jr_01b_78dd                                ; $789e: $18 $3d

    jr jr_01b_7912                                ; $78a0: $18 $70

    jr jr_01b_78e7                                ; $78a2: $18 $43

jr_01b_78a4:
    inc c                                         ; $78a4: $0c

jr_01b_78a5:
    ld [hl], b                                    ; $78a5: $70
    inc c                                         ; $78a6: $0c
    ccf                                           ; $78a7: $3f
    inc c                                         ; $78a8: $0c

jr_01b_78a9:
    ld [hl], b                                    ; $78a9: $70
    inc c                                         ; $78aa: $0c
    ld b, h                                       ; $78ab: $44
    inc c                                         ; $78ac: $0c
    ld [hl], b                                    ; $78ad: $70
    inc c                                         ; $78ae: $0c
    ld b, c                                       ; $78af: $41
    inc c                                         ; $78b0: $0c
    ld [hl], b                                    ; $78b1: $70
    inc c                                         ; $78b2: $0c

jr_01b_78b3:
    ld b, [hl]                                    ; $78b3: $46
    ld [de], a                                    ; $78b4: $12
    ld [hl], b                                    ; $78b5: $70
    inc c                                         ; $78b6: $0c
    ld b, e                                       ; $78b7: $43
    inc c                                         ; $78b8: $0c
    ld [hl], b                                    ; $78b9: $70
    inc c                                         ; $78ba: $0c
    ld c, b                                       ; $78bb: $48
    inc c                                         ; $78bc: $0c
    ld [hl], b                                    ; $78bd: $70
    inc c                                         ; $78be: $0c
    ld b, e                                       ; $78bf: $43
    inc c                                         ; $78c0: $0c
    ld h, b                                       ; $78c1: $60
    inc c                                         ; $78c2: $0c
    ld b, l                                       ; $78c3: $45
    inc c                                         ; $78c4: $0c

jr_01b_78c5:
    ld h, b                                       ; $78c5: $60
    inc c                                         ; $78c6: $0c
    ld b, [hl]                                    ; $78c7: $46
    ld [de], a                                    ; $78c8: $12
    ld [hl], b                                    ; $78c9: $70
    inc c                                         ; $78ca: $0c
    ld a, $12                                     ; $78cb: $3e $12
    ld [hl], b                                    ; $78cd: $70
    jr jr_01b_790e                                ; $78ce: $18 $3e

    jr jr_01b_7942                                ; $78d0: $18 $70

    jr jr_01b_7913                                ; $78d2: $18 $3f

    jr @+$72                                      ; $78d4: $18 $70

    jr jr_01b_791d                                ; $78d6: $18 $45

jr_01b_78d8:
    inc c                                         ; $78d8: $0c
    ld [hl], b                                    ; $78d9: $70

jr_01b_78da:
    inc c                                         ; $78da: $0c
    ld b, c                                       ; $78db: $41
    inc c                                         ; $78dc: $0c

jr_01b_78dd:
    ld [hl], b                                    ; $78dd: $70

jr_01b_78de:
    inc c                                         ; $78de: $0c
    ld b, [hl]                                    ; $78df: $46
    inc c                                         ; $78e0: $0c
    ld [hl], b                                    ; $78e1: $70
    inc c                                         ; $78e2: $0c
    ld b, e                                       ; $78e3: $43
    inc c                                         ; $78e4: $0c
    ld [hl], b                                    ; $78e5: $70
    inc c                                         ; $78e6: $0c

jr_01b_78e7:
    ld c, b                                       ; $78e7: $48
    ld [de], a                                    ; $78e8: $12
    ld [hl], b                                    ; $78e9: $70
    inc c                                         ; $78ea: $0c
    ld b, l                                       ; $78eb: $45
    inc c                                         ; $78ec: $0c
    ld [hl], b                                    ; $78ed: $70
    inc c                                         ; $78ee: $0c
    ld c, d                                       ; $78ef: $4a
    inc c                                         ; $78f0: $0c
    ld [hl], b                                    ; $78f1: $70
    inc c                                         ; $78f2: $0c
    ccf                                           ; $78f3: $3f
    inc c                                         ; $78f4: $0c
    ld h, b                                       ; $78f5: $60
    inc c                                         ; $78f6: $0c
    ld b, c                                       ; $78f7: $41
    inc c                                         ; $78f8: $0c
    ld h, b                                       ; $78f9: $60
    inc c                                         ; $78fa: $0c
    ld b, d                                       ; $78fb: $42
    ld [de], a                                    ; $78fc: $12
    ld [hl], b                                    ; $78fd: $70
    inc c                                         ; $78fe: $0c
    ld a, [hl-]                                   ; $78ff: $3a
    ld [de], a                                    ; $7900: $12
    ld [hl], b                                    ; $7901: $70
    jr jr_01b_793e                                ; $7902: $18 $3a

    jr @+$72                                      ; $7904: $18 $70

    jr jr_01b_7943                                ; $7906: $18 $3b

    jr jr_01b_797a                                ; $7908: $18 $70

    jr jr_01b_794d                                ; $790a: $18 $41

    inc c                                         ; $790c: $0c
    ld [hl], b                                    ; $790d: $70

jr_01b_790e:
    inc c                                         ; $790e: $0c
    dec a                                         ; $790f: $3d
    inc c                                         ; $7910: $0c
    ld [hl], b                                    ; $7911: $70

jr_01b_7912:
    inc c                                         ; $7912: $0c

jr_01b_7913:
    ld b, d                                       ; $7913: $42
    inc c                                         ; $7914: $0c
    ld [hl], b                                    ; $7915: $70
    inc c                                         ; $7916: $0c
    ccf                                           ; $7917: $3f
    inc c                                         ; $7918: $0c
    ld [hl], b                                    ; $7919: $70
    inc c                                         ; $791a: $0c
    ld b, h                                       ; $791b: $44
    ld [de], a                                    ; $791c: $12

jr_01b_791d:
    ld [hl], b                                    ; $791d: $70
    inc c                                         ; $791e: $0c
    ld b, c                                       ; $791f: $41
    inc c                                         ; $7920: $0c
    ld h, b                                       ; $7921: $60
    inc c                                         ; $7922: $0c
    ld b, [hl]                                    ; $7923: $46
    inc c                                         ; $7924: $0c
    jr nc, jr_01b_7933                            ; $7925: $30 $0c

    daa                                           ; $7927: $27
    ld a, [hl+]                                   ; $7928: $2a
    ld b, b                                       ; $7929: $40
    jr nc, @-$57                                  ; $792a: $30 $a7

    ld bc, $4012                                  ; $792c: $01 $12 $40
    jr @+$29                                      ; $792f: $18 $27

    ld a, [hl+]                                   ; $7931: $2a
    ld b, b                                       ; $7932: $40

jr_01b_7933:
    jr nc, jr_01b_795c                            ; $7933: $30 $27

    jr jr_01b_7977                                ; $7935: $18 $40

    jr jr_01b_795e                                ; $7937: $18 $25

    ld a, [hl+]                                   ; $7939: $2a
    ld b, b                                       ; $793a: $40
    jr nc, jr_01b_7962                            ; $793b: $30 $25

    ld [de], a                                    ; $793d: $12

jr_01b_793e:
    ld b, b                                       ; $793e: $40
    jr @+$27                                      ; $793f: $18 $25

    ld a, [hl+]                                   ; $7941: $2a

jr_01b_7942:
    ld b, b                                       ; $7942: $40

jr_01b_7943:
    jr nc, jr_01b_796a                            ; $7943: $30 $25

    jr jr_01b_7987                                ; $7945: $18 $40

    jr jr_01b_7970                                ; $7947: $18 $27

    ld a, [hl+]                                   ; $7949: $2a
    ld b, b                                       ; $794a: $40
    jr nc, jr_01b_7974                            ; $794b: $30 $27

jr_01b_794d:
    ld [de], a                                    ; $794d: $12
    ld b, b                                       ; $794e: $40
    jr @+$29                                      ; $794f: $18 $27

    ld a, [hl+]                                   ; $7951: $2a
    jr nc, @+$32                                  ; $7952: $30 $30

    daa                                           ; $7954: $27
    jr jr_01b_7987                                ; $7955: $18 $30

    jr jr_01b_797e                                ; $7957: $18 $25

    ld a, [hl+]                                   ; $7959: $2a
    jr nc, jr_01b_798c                            ; $795a: $30 $30

jr_01b_795c:
    dec h                                         ; $795c: $25
    ld [de], a                                    ; $795d: $12

jr_01b_795e:
    jr nc, @+$1a                                  ; $795e: $30 $18

    dec h                                         ; $7960: $25
    ld a, [hl+]                                   ; $7961: $2a

jr_01b_7962:
    jr nc, jr_01b_7994                            ; $7962: $30 $30

    dec h                                         ; $7964: $25
    jr jr_01b_7997                                ; $7965: $18 $30

    jr jr_01b_7990                                ; $7967: $18 $27

    ld a, [hl+]                                   ; $7969: $2a

jr_01b_796a:
    jr nc, jr_01b_799c                            ; $796a: $30 $30

    daa                                           ; $796c: $27
    ld [de], a                                    ; $796d: $12
    jr nc, jr_01b_7988                            ; $796e: $30 $18

jr_01b_7970:
    daa                                           ; $7970: $27
    ld a, [hl+]                                   ; $7971: $2a
    jr nc, jr_01b_79a4                            ; $7972: $30 $30

jr_01b_7974:
    daa                                           ; $7974: $27
    jr jr_01b_79a7                                ; $7975: $18 $30

jr_01b_7977:
    jr @+$27                                      ; $7977: $18 $25

    ld a, [hl+]                                   ; $7979: $2a

jr_01b_797a:
    ld b, b                                       ; $797a: $40
    jr nc, @+$27                                  ; $797b: $30 $25

    ld [de], a                                    ; $797d: $12

jr_01b_797e:
    ld b, b                                       ; $797e: $40
    jr @+$27                                      ; $797f: $18 $25

    ld a, [hl+]                                   ; $7981: $2a
    ld b, b                                       ; $7982: $40
    jr nc, @+$27                                  ; $7983: $30 $25

    jr jr_01b_7977                                ; $7985: $18 $f0

jr_01b_7987:
    nop                                           ; $7987: $00

jr_01b_7988:
    rst $38                                       ; $7988: $ff
    ld d, b                                       ; $7989: $50
    nop                                           ; $798a: $00
    cp h                                          ; $798b: $bc

jr_01b_798c:
    dec c                                         ; $798c: $0d
    ld b, $50                                     ; $798d: $06 $50
    inc c                                         ; $798f: $0c

jr_01b_7990:
    ccf                                           ; $7990: $3f
    ld b, $50                                     ; $7991: $06 $50
    inc c                                         ; $7993: $0c

jr_01b_7994:
    inc a                                         ; $7994: $3c
    ld b, $50                                     ; $7995: $06 $50

jr_01b_7997:
    inc c                                         ; $7997: $0c
    ld b, e                                       ; $7998: $43
    ld b, $50                                     ; $7999: $06 $50
    inc c                                         ; $799b: $0c

jr_01b_799c:
    scf                                           ; $799c: $37
    ld b, $50                                     ; $799d: $06 $50
    inc c                                         ; $799f: $0c
    ld b, h                                       ; $79a0: $44
    ld b, $50                                     ; $79a1: $06 $50
    inc c                                         ; $79a3: $0c

jr_01b_79a4:
    inc a                                         ; $79a4: $3c
    ld b, $50                                     ; $79a5: $06 $50

jr_01b_79a7:
    inc c                                         ; $79a7: $0c
    ld b, [hl]                                    ; $79a8: $46
    ld b, $50                                     ; $79a9: $06 $50
    inc c                                         ; $79ab: $0c
    inc a                                         ; $79ac: $3c
    ld b, $50                                     ; $79ad: $06 $50
    inc c                                         ; $79af: $0c
    ld b, e                                       ; $79b0: $43
    ld b, $50                                     ; $79b1: $06 $50
    inc c                                         ; $79b3: $0c
    ld b, e                                       ; $79b4: $43
    ld b, $50                                     ; $79b5: $06 $50
    inc c                                         ; $79b7: $0c
    ld c, d                                       ; $79b8: $4a
    ld b, $50                                     ; $79b9: $06 $50
    inc c                                         ; $79bb: $0c
    ld a, [hl-]                                   ; $79bc: $3a
    ld b, $50                                     ; $79bd: $06 $50
    inc c                                         ; $79bf: $0c
    ld c, b                                       ; $79c0: $48
    ld b, $50                                     ; $79c1: $06 $50
    inc c                                         ; $79c3: $0c
    ld a, [hl-]                                   ; $79c4: $3a
    ld b, $50                                     ; $79c5: $06 $50
    inc c                                         ; $79c7: $0c
    ld c, e                                       ; $79c8: $4b
    ld b, $50                                     ; $79c9: $06 $50
    inc c                                         ; $79cb: $0c
    ld b, c                                       ; $79cc: $41
    ld b, $50                                     ; $79cd: $06 $50
    inc c                                         ; $79cf: $0c
    ld c, d                                       ; $79d0: $4a
    ld b, $50                                     ; $79d1: $06 $50
    inc c                                         ; $79d3: $0c
    ld a, [hl-]                                   ; $79d4: $3a
    ld b, $50                                     ; $79d5: $06 $50
    inc c                                         ; $79d7: $0c
    ld c, b                                       ; $79d8: $48
    ld b, $50                                     ; $79d9: $06 $50
    inc c                                         ; $79db: $0c
    ld a, [hl-]                                   ; $79dc: $3a
    ld b, $50                                     ; $79dd: $06 $50
    inc c                                         ; $79df: $0c
    ld b, [hl]                                    ; $79e0: $46
    ld b, $50                                     ; $79e1: $06 $50
    inc c                                         ; $79e3: $0c
    dec [hl]                                      ; $79e4: $35
    ld b, $50                                     ; $79e5: $06 $50
    inc c                                         ; $79e7: $0c
    scf                                           ; $79e8: $37
    ld b, $50                                     ; $79e9: $06 $50
    nop                                           ; $79eb: $00
    ld b, l                                       ; $79ec: $45
    ld b, $50                                     ; $79ed: $06 $50
    inc c                                         ; $79ef: $0c
    inc a                                         ; $79f0: $3c
    ld b, $50                                     ; $79f1: $06 $50
    inc c                                         ; $79f3: $0c
    ld b, [hl]                                    ; $79f4: $46
    ld b, $50                                     ; $79f5: $06 $50
    inc c                                         ; $79f7: $0c
    inc a                                         ; $79f8: $3c
    ld b, $50                                     ; $79f9: $06 $50
    inc c                                         ; $79fb: $0c
    ld c, b                                       ; $79fc: $48
    ld b, $50                                     ; $79fd: $06 $50
    inc c                                         ; $79ff: $0c
    scf                                           ; $7a00: $37
    ld b, $50                                     ; $7a01: $06 $50
    inc c                                         ; $7a03: $0c
    ld b, e                                       ; $7a04: $43
    ld b, $50                                     ; $7a05: $06 $50
    inc c                                         ; $7a07: $0c
    inc a                                         ; $7a08: $3c
    ld b, $50                                     ; $7a09: $06 $50
    inc c                                         ; $7a0b: $0c
    ld b, h                                       ; $7a0c: $44
    ld b, $50                                     ; $7a0d: $06 $50
    inc c                                         ; $7a0f: $0c
    ccf                                           ; $7a10: $3f
    ld b, $50                                     ; $7a11: $06 $50
    inc c                                         ; $7a13: $0c
    ld c, e                                       ; $7a14: $4b
    ld b, $50                                     ; $7a15: $06 $50
    inc c                                         ; $7a17: $0c
    ld a, $06                                     ; $7a18: $3e $06
    ld d, b                                       ; $7a1a: $50
    inc c                                         ; $7a1b: $0c
    ld c, d                                       ; $7a1c: $4a
    ld b, $50                                     ; $7a1d: $06 $50
    inc c                                         ; $7a1f: $0c
    ld a, [hl-]                                   ; $7a20: $3a
    ld b, $50                                     ; $7a21: $06 $50
    inc c                                         ; $7a23: $0c
    ld b, [hl]                                    ; $7a24: $46
    ld b, $50                                     ; $7a25: $06 $50
    inc c                                         ; $7a27: $0c
    ld a, [hl-]                                   ; $7a28: $3a
    ld b, $50                                     ; $7a29: $06 $50
    inc c                                         ; $7a2b: $0c
    ld c, d                                       ; $7a2c: $4a
    ld b, $50                                     ; $7a2d: $06 $50
    inc c                                         ; $7a2f: $0c
    ld a, $06                                     ; $7a30: $3e $06
    ld d, b                                       ; $7a32: $50
    inc c                                         ; $7a33: $0c
    ld c, b                                       ; $7a34: $48
    ld b, $50                                     ; $7a35: $06 $50
    inc c                                         ; $7a37: $0c
    ld a, [hl-]                                   ; $7a38: $3a
    ld b, $50                                     ; $7a39: $06 $50
    inc c                                         ; $7a3b: $0c
    ld b, e                                       ; $7a3c: $43
    ld b, $50                                     ; $7a3d: $06 $50
    inc c                                         ; $7a3f: $0c
    ld b, c                                       ; $7a40: $41
    ld b, $50                                     ; $7a41: $06 $50
    inc c                                         ; $7a43: $0c
    ld a, $06                                     ; $7a44: $3e $06
    ld d, b                                       ; $7a46: $50
    inc c                                         ; $7a47: $0c
    ccf                                           ; $7a48: $3f
    ld b, $50                                     ; $7a49: $06 $50
    inc c                                         ; $7a4b: $0c
    ld b, h                                       ; $7a4c: $44
    ld b, $50                                     ; $7a4d: $06 $50
    inc c                                         ; $7a4f: $0c
    inc a                                         ; $7a50: $3c
    ld b, $50                                     ; $7a51: $06 $50
    inc c                                         ; $7a53: $0c
    ccf                                           ; $7a54: $3f
    ld b, $50                                     ; $7a55: $06 $50
    inc c                                         ; $7a57: $0c
    inc a                                         ; $7a58: $3c
    ld b, $50                                     ; $7a59: $06 $50
    inc c                                         ; $7a5b: $0c
    ld b, e                                       ; $7a5c: $43
    ld b, $50                                     ; $7a5d: $06 $50
    inc c                                         ; $7a5f: $0c
    scf                                           ; $7a60: $37
    ld b, $50                                     ; $7a61: $06 $50
    inc c                                         ; $7a63: $0c
    ld b, h                                       ; $7a64: $44
    ld b, $50                                     ; $7a65: $06 $50
    inc c                                         ; $7a67: $0c
    inc a                                         ; $7a68: $3c
    ld b, $50                                     ; $7a69: $06 $50
    inc c                                         ; $7a6b: $0c
    ld b, [hl]                                    ; $7a6c: $46
    ld b, $50                                     ; $7a6d: $06 $50
    inc c                                         ; $7a6f: $0c
    inc a                                         ; $7a70: $3c
    ld b, $50                                     ; $7a71: $06 $50
    inc c                                         ; $7a73: $0c
    ld b, e                                       ; $7a74: $43
    ld b, $50                                     ; $7a75: $06 $50
    inc c                                         ; $7a77: $0c
    ld b, e                                       ; $7a78: $43
    ld b, $50                                     ; $7a79: $06 $50
    inc c                                         ; $7a7b: $0c
    ld c, d                                       ; $7a7c: $4a
    ld b, $50                                     ; $7a7d: $06 $50
    inc c                                         ; $7a7f: $0c
    ld a, [hl-]                                   ; $7a80: $3a
    ld b, $50                                     ; $7a81: $06 $50
    inc c                                         ; $7a83: $0c
    ld c, b                                       ; $7a84: $48
    ld b, $50                                     ; $7a85: $06 $50
    inc c                                         ; $7a87: $0c
    ld a, [hl-]                                   ; $7a88: $3a
    ld b, $50                                     ; $7a89: $06 $50
    inc c                                         ; $7a8b: $0c
    ld c, e                                       ; $7a8c: $4b
    ld b, $50                                     ; $7a8d: $06 $50
    inc c                                         ; $7a8f: $0c
    ld b, c                                       ; $7a90: $41
    ld b, $50                                     ; $7a91: $06 $50
    inc c                                         ; $7a93: $0c
    ld c, d                                       ; $7a94: $4a
    ld b, $50                                     ; $7a95: $06 $50
    inc c                                         ; $7a97: $0c
    ld a, [hl-]                                   ; $7a98: $3a
    ld b, $50                                     ; $7a99: $06 $50
    inc c                                         ; $7a9b: $0c
    ld c, b                                       ; $7a9c: $48
    ld b, $50                                     ; $7a9d: $06 $50
    inc c                                         ; $7a9f: $0c
    ld a, [hl-]                                   ; $7aa0: $3a
    ld b, $50                                     ; $7aa1: $06 $50
    inc c                                         ; $7aa3: $0c
    ld b, [hl]                                    ; $7aa4: $46
    ld b, $50                                     ; $7aa5: $06 $50
    inc c                                         ; $7aa7: $0c
    dec [hl]                                      ; $7aa8: $35
    ld b, $50                                     ; $7aa9: $06 $50
    inc c                                         ; $7aab: $0c
    ld b, l                                       ; $7aac: $45
    ld b, $50                                     ; $7aad: $06 $50
    inc c                                         ; $7aaf: $0c
    inc a                                         ; $7ab0: $3c
    ld b, $50                                     ; $7ab1: $06 $50
    inc c                                         ; $7ab3: $0c
    ld b, [hl]                                    ; $7ab4: $46
    ld b, $50                                     ; $7ab5: $06 $50
    inc c                                         ; $7ab7: $0c
    inc a                                         ; $7ab8: $3c
    ld b, $50                                     ; $7ab9: $06 $50
    inc c                                         ; $7abb: $0c
    ld c, b                                       ; $7abc: $48
    ld b, $50                                     ; $7abd: $06 $50
    inc c                                         ; $7abf: $0c
    scf                                           ; $7ac0: $37
    ld b, $50                                     ; $7ac1: $06 $50
    inc c                                         ; $7ac3: $0c
    ld b, e                                       ; $7ac4: $43
    ld b, $50                                     ; $7ac5: $06 $50
    inc c                                         ; $7ac7: $0c
    inc a                                         ; $7ac8: $3c
    ld b, $50                                     ; $7ac9: $06 $50
    inc c                                         ; $7acb: $0c
    ld b, h                                       ; $7acc: $44
    ld b, $50                                     ; $7acd: $06 $50
    inc c                                         ; $7acf: $0c
    ccf                                           ; $7ad0: $3f
    ld b, $50                                     ; $7ad1: $06 $50
    inc c                                         ; $7ad3: $0c
    ld c, e                                       ; $7ad4: $4b
    ld b, $50                                     ; $7ad5: $06 $50
    inc c                                         ; $7ad7: $0c
    ld a, $06                                     ; $7ad8: $3e $06
    ld d, b                                       ; $7ada: $50
    inc c                                         ; $7adb: $0c
    ld c, d                                       ; $7adc: $4a
    ld b, $50                                     ; $7add: $06 $50
    inc c                                         ; $7adf: $0c
    ld a, [hl-]                                   ; $7ae0: $3a
    ld b, $50                                     ; $7ae1: $06 $50
    inc c                                         ; $7ae3: $0c
    ld b, [hl]                                    ; $7ae4: $46
    ld b, $50                                     ; $7ae5: $06 $50
    inc c                                         ; $7ae7: $0c
    ld a, [hl-]                                   ; $7ae8: $3a
    ld b, $50                                     ; $7ae9: $06 $50
    inc c                                         ; $7aeb: $0c
    ld c, d                                       ; $7aec: $4a
    ld b, $50                                     ; $7aed: $06 $50
    inc c                                         ; $7aef: $0c
    ld a, $06                                     ; $7af0: $3e $06
    ld d, b                                       ; $7af2: $50
    inc c                                         ; $7af3: $0c
    ld c, b                                       ; $7af4: $48
    ld b, $50                                     ; $7af5: $06 $50
    inc c                                         ; $7af7: $0c
    ld a, [hl-]                                   ; $7af8: $3a
    ld b, $50                                     ; $7af9: $06 $50
    inc c                                         ; $7afb: $0c
    ld b, [hl]                                    ; $7afc: $46
    ld b, $50                                     ; $7afd: $06 $50
    inc c                                         ; $7aff: $0c
    ld a, [hl-]                                   ; $7b00: $3a
    ld b, $50                                     ; $7b01: $06 $50
    inc c                                         ; $7b03: $0c
    ld c, d                                       ; $7b04: $4a
    ld b, $50                                     ; $7b05: $06 $50
    inc c                                         ; $7b07: $0c
    ld a, $06                                     ; $7b08: $3e $06
    ld d, b                                       ; $7b0a: $50
    inc c                                         ; $7b0b: $0c
    ld c, b                                       ; $7b0c: $48
    ld b, $70                                     ; $7b0d: $06 $70
    inc c                                         ; $7b0f: $0c
    ld c, b                                       ; $7b10: $48
    jr z, jr_01b_7b83                             ; $7b11: $28 $70

    dec hl                                        ; $7b13: $2b
    ld c, c                                       ; $7b14: $49
    dec b                                         ; $7b15: $05
    ld [hl], b                                    ; $7b16: $70
    ld b, $48                                     ; $7b17: $06 $48
    ld b, $70                                     ; $7b19: $06 $70
    rlca                                          ; $7b1b: $07
    ld c, c                                       ; $7b1c: $49
    dec b                                         ; $7b1d: $05
    ld [hl], b                                    ; $7b1e: $70
    dec b                                         ; $7b1f: $05
    ld c, b                                       ; $7b20: $48
    dec b                                         ; $7b21: $05
    ld [hl], b                                    ; $7b22: $70
    rlca                                          ; $7b23: $07
    ld c, c                                       ; $7b24: $49
    inc b                                         ; $7b25: $04
    ld [hl], b                                    ; $7b26: $70
    dec b                                         ; $7b27: $05
    ld c, b                                       ; $7b28: $48
    inc b                                         ; $7b29: $04
    ld [hl], b                                    ; $7b2a: $70
    dec b                                         ; $7b2b: $05
    ld c, c                                       ; $7b2c: $49
    dec b                                         ; $7b2d: $05
    ld [hl], b                                    ; $7b2e: $70
    dec b                                         ; $7b2f: $05
    ld c, b                                       ; $7b30: $48
    dec h                                         ; $7b31: $25
    ld [hl], b                                    ; $7b32: $70
    dec h                                         ; $7b33: $25
    ld b, h                                       ; $7b34: $44
    jr nc, jr_01b_7ba7                            ; $7b35: $30 $70

    jr nc, jr_01b_7b7a                            ; $7b37: $30 $41

    ld h, [hl]                                    ; $7b39: $66
    ld [hl], b                                    ; $7b3a: $70
    ld l, h                                       ; $7b3b: $6c
    ld b, e                                       ; $7b3c: $43
    add hl, de                                    ; $7b3d: $19
    ld [hl], b                                    ; $7b3e: $70
    add hl, de                                    ; $7b3f: $19
    ld b, h                                       ; $7b40: $44
    inc b                                         ; $7b41: $04
    ld [hl], b                                    ; $7b42: $70
    dec b                                         ; $7b43: $05
    ld b, e                                       ; $7b44: $43
    dec b                                         ; $7b45: $05
    ld [hl], b                                    ; $7b46: $70
    dec b                                         ; $7b47: $05
    ld b, h                                       ; $7b48: $44
    inc b                                         ; $7b49: $04
    ld [hl], b                                    ; $7b4a: $70
    dec b                                         ; $7b4b: $05
    ld b, e                                       ; $7b4c: $43
    inc bc                                        ; $7b4d: $03
    ld [hl], b                                    ; $7b4e: $70
    inc b                                         ; $7b4f: $04
    ld b, h                                       ; $7b50: $44
    inc bc                                        ; $7b51: $03
    ld [hl], b                                    ; $7b52: $70
    inc b                                         ; $7b53: $04
    ld b, e                                       ; $7b54: $43
    inc b                                         ; $7b55: $04
    ld [hl], b                                    ; $7b56: $70
    dec b                                         ; $7b57: $05
    ld b, h                                       ; $7b58: $44
    inc b                                         ; $7b59: $04
    ld [hl], b                                    ; $7b5a: $70
    inc b                                         ; $7b5b: $04
    ld b, e                                       ; $7b5c: $43
    inc b                                         ; $7b5d: $04
    ld [hl], b                                    ; $7b5e: $70
    dec b                                         ; $7b5f: $05
    ld b, h                                       ; $7b60: $44
    inc bc                                        ; $7b61: $03
    ld [hl], b                                    ; $7b62: $70
    dec b                                         ; $7b63: $05
    ld b, e                                       ; $7b64: $43
    inc b                                         ; $7b65: $04
    ld [hl], b                                    ; $7b66: $70
    inc bc                                        ; $7b67: $03
    ld b, h                                       ; $7b68: $44
    inc b                                         ; $7b69: $04
    ld [hl], b                                    ; $7b6a: $70
    dec b                                         ; $7b6b: $05
    ld b, e                                       ; $7b6c: $43
    inc b                                         ; $7b6d: $04
    ld [hl], b                                    ; $7b6e: $70
    inc b                                         ; $7b6f: $04
    ld b, h                                       ; $7b70: $44
    inc bc                                        ; $7b71: $03
    ld [hl], b                                    ; $7b72: $70
    dec b                                         ; $7b73: $05
    ld b, c                                       ; $7b74: $41
    inc c                                         ; $7b75: $0c
    ld [hl], b                                    ; $7b76: $70
    inc c                                         ; $7b77: $0c
    ld b, h                                       ; $7b78: $44
    inc c                                         ; $7b79: $0c

jr_01b_7b7a:
    ld [hl], b                                    ; $7b7a: $70
    inc c                                         ; $7b7b: $0c
    ld b, [hl]                                    ; $7b7c: $46
    ld c, [hl]                                    ; $7b7d: $4e
    ld [hl], b                                    ; $7b7e: $70
    ld h, b                                       ; $7b7f: $60
    ld b, e                                       ; $7b80: $43
    ld [de], a                                    ; $7b81: $12
    ld [hl], b                                    ; $7b82: $70

jr_01b_7b83:
    jr jr_01b_7bcb                                ; $7b83: $18 $46

    inc c                                         ; $7b85: $0c
    ld [hl], b                                    ; $7b86: $70
    inc c                                         ; $7b87: $0c
    ld c, d                                       ; $7b88: $4a
    ld [hl], $70                                  ; $7b89: $36 $70
    inc a                                         ; $7b8b: $3c
    ld b, e                                       ; $7b8c: $43
    jr jr_01b_7bff                                ; $7b8d: $18 $70

    jr jr_01b_7bd0                                ; $7b8f: $18 $3f

    jr jr_01b_7c03                                ; $7b91: $18 $70

    jr jr_01b_7bdb                                ; $7b93: $18 $46

    ld hl, $2570                                  ; $7b95: $21 $70 $25
    ld b, a                                       ; $7b98: $47
    dec b                                         ; $7b99: $05
    ld [hl], b                                    ; $7b9a: $70
    ld b, $46                                     ; $7b9b: $06 $46
    ld b, $70                                     ; $7b9d: $06 $70
    rlca                                          ; $7b9f: $07
    ld b, a                                       ; $7ba0: $47
    dec b                                         ; $7ba1: $05
    ld [hl], b                                    ; $7ba2: $70

jr_01b_7ba3:
    ld [$0446], sp                                ; $7ba3: $08 $46 $04
    ld [hl], b                                    ; $7ba6: $70

jr_01b_7ba7:
    dec b                                         ; $7ba7: $05
    ld b, a                                       ; $7ba8: $47
    inc b                                         ; $7ba9: $04
    ld [hl], b                                    ; $7baa: $70
    rlca                                          ; $7bab: $07
    ld b, [hl]                                    ; $7bac: $46
    inc bc                                        ; $7bad: $03
    ld [hl], b                                    ; $7bae: $70
    dec b                                         ; $7baf: $05
    ld b, a                                       ; $7bb0: $47
    inc bc                                        ; $7bb1: $03
    ld [hl], b                                    ; $7bb2: $70
    ld b, $46                                     ; $7bb3: $06 $46
    inc b                                         ; $7bb5: $04
    ld [hl], b                                    ; $7bb6: $70
    inc b                                         ; $7bb7: $04
    ld b, a                                       ; $7bb8: $47
    inc b                                         ; $7bb9: $04
    ld [hl], b                                    ; $7bba: $70
    ld b, $46                                     ; $7bbb: $06 $46
    inc bc                                        ; $7bbd: $03
    ld [hl], b                                    ; $7bbe: $70
    inc b                                         ; $7bbf: $04
    ld b, a                                       ; $7bc0: $47
    inc bc                                        ; $7bc1: $03
    ld [hl], b                                    ; $7bc2: $70
    dec b                                         ; $7bc3: $05
    ld b, [hl]                                    ; $7bc4: $46
    inc b                                         ; $7bc5: $04
    ld [hl], b                                    ; $7bc6: $70
    dec b                                         ; $7bc7: $05
    ld b, a                                       ; $7bc8: $47
    inc bc                                        ; $7bc9: $03
    ld [hl], b                                    ; $7bca: $70

jr_01b_7bcb:
    dec b                                         ; $7bcb: $05
    ld b, [hl]                                    ; $7bcc: $46
    inc bc                                        ; $7bcd: $03
    ld [hl], b                                    ; $7bce: $70
    inc b                                         ; $7bcf: $04

jr_01b_7bd0:
    ld b, a                                       ; $7bd0: $47
    inc bc                                        ; $7bd1: $03
    ld [hl], b                                    ; $7bd2: $70
    dec b                                         ; $7bd3: $05
    ld b, [hl]                                    ; $7bd4: $46
    inc bc                                        ; $7bd5: $03
    ld [hl], b                                    ; $7bd6: $70
    dec c                                         ; $7bd7: $0d
    ld b, [hl]                                    ; $7bd8: $46
    add b                                         ; $7bd9: $80
    sub [hl]                                      ; $7bda: $96

jr_01b_7bdb:
    ld [hl], b                                    ; $7bdb: $70
    db $e4                                        ; $7bdc: $e4
    cp l                                          ; $7bdd: $bd
    dec c                                         ; $7bde: $0d
    inc c                                         ; $7bdf: $0c
    ld [hl], b                                    ; $7be0: $70
    inc c                                         ; $7be1: $0c
    dec sp                                        ; $7be2: $3b
    inc c                                         ; $7be3: $0c
    ld [hl], b                                    ; $7be4: $70
    inc c                                         ; $7be5: $0c
    ld a, [hl-]                                   ; $7be6: $3a
    inc c                                         ; $7be7: $0c
    ld [hl], b                                    ; $7be8: $70
    inc c                                         ; $7be9: $0c
    dec sp                                        ; $7bea: $3b
    inc c                                         ; $7beb: $0c
    ld [hl], b                                    ; $7bec: $70
    inc c                                         ; $7bed: $0c
    dec a                                         ; $7bee: $3d
    inc c                                         ; $7bef: $0c
    ld [hl], b                                    ; $7bf0: $70
    inc c                                         ; $7bf1: $0c
    ld a, $0c                                     ; $7bf2: $3e $0c
    ld [hl], b                                    ; $7bf4: $70
    inc c                                         ; $7bf5: $0c
    ccf                                           ; $7bf6: $3f
    inc a                                         ; $7bf7: $3c
    ld [hl], b                                    ; $7bf8: $70
    ld c, b                                       ; $7bf9: $48
    ld b, [hl]                                    ; $7bfa: $46
    ld c, b                                       ; $7bfb: $48
    ld [hl], b                                    ; $7bfc: $70
    ld c, b                                       ; $7bfd: $48
    ld b, d                                       ; $7bfe: $42

jr_01b_7bff:
    jr @+$72                                      ; $7bff: $18 $70

    jr jr_01b_7c47                                ; $7c01: $18 $44

jr_01b_7c03:
    jr nc, @+$72                                  ; $7c03: $30 $70

    jr nc, jr_01b_7c49                            ; $7c05: $30 $42

    inc h                                         ; $7c07: $24
    ld [hl], b                                    ; $7c08: $70
    inc h                                         ; $7c09: $24
    ld b, c                                       ; $7c0a: $41
    ld e, $70                                     ; $7c0b: $1e $70
    inc h                                         ; $7c0d: $24
    ccf                                           ; $7c0e: $3f
    add b                                         ; $7c0f: $80
    sub b                                         ; $7c10: $90
    jr nz, jr_01b_7ba3                            ; $7c11: $20 $90

    dec a                                         ; $7c13: $3d
    ld b, $20                                     ; $7c14: $06 $20
    inc c                                         ; $7c16: $0c
    ld c, c                                       ; $7c17: $49
    ld b, $20                                     ; $7c18: $06 $20
    inc c                                         ; $7c1a: $0c
    dec a                                         ; $7c1b: $3d
    ld b, $20                                     ; $7c1c: $06 $20
    inc c                                         ; $7c1e: $0c
    ld c, l                                       ; $7c1f: $4d
    ld b, $20                                     ; $7c20: $06 $20
    inc c                                         ; $7c22: $0c
    ld b, h                                       ; $7c23: $44
    ld b, $20                                     ; $7c24: $06 $20
    inc c                                         ; $7c26: $0c
    ld c, [hl]                                    ; $7c27: $4e
    ld b, $20                                     ; $7c28: $06 $20
    inc c                                         ; $7c2a: $0c
    dec a                                         ; $7c2b: $3d
    ld b, $20                                     ; $7c2c: $06 $20
    inc c                                         ; $7c2e: $0c
    ld c, l                                       ; $7c2f: $4d
    ld b, $20                                     ; $7c30: $06 $20
    inc c                                         ; $7c32: $0c
    dec a                                         ; $7c33: $3d
    ld b, $20                                     ; $7c34: $06 $20
    inc c                                         ; $7c36: $0c
    ld c, c                                       ; $7c37: $49
    ld b, $20                                     ; $7c38: $06 $20
    inc c                                         ; $7c3a: $0c
    jr c, @+$08                                   ; $7c3b: $38 $06

    jr nz, @+$0e                                  ; $7c3d: $20 $0c

    dec a                                         ; $7c3f: $3d
    ld b, $20                                     ; $7c40: $06 $20
    ld b, $47                                     ; $7c42: $06 $47
    ld b, $f0                                     ; $7c44: $06 $f0
    nop                                           ; $7c46: $00

jr_01b_7c47:
    rst $38                                       ; $7c47: $ff
    ld b, b                                       ; $7c48: $40

jr_01b_7c49:
    nop                                           ; $7c49: $00
    call nc, $0615                                ; $7c4a: $d4 $15 $06
    ld b, b                                       ; $7c4d: $40
    inc c                                         ; $7c4e: $0c
    ld d, [hl]                                    ; $7c4f: $56
    ld b, $40                                     ; $7c50: $06 $40
    ld b, $57                                     ; $7c52: $06 $57
    ld b, $40                                     ; $7c54: $06 $40
    ld b, $59                                     ; $7c56: $06 $59
    ld b, $40                                     ; $7c58: $06 $40
    inc c                                         ; $7c5a: $0c
    ld e, e                                       ; $7c5b: $5b
    ld b, $40                                     ; $7c5c: $06 $40
    inc c                                         ; $7c5e: $0c
    ld e, c                                       ; $7c5f: $59
    ld b, $40                                     ; $7c60: $06 $40
    inc c                                         ; $7c62: $0c
    ld d, a                                       ; $7c63: $57
    ld b, $40                                     ; $7c64: $06 $40
    inc c                                         ; $7c66: $0c
    ld d, [hl]                                    ; $7c67: $56
    ld b, $40                                     ; $7c68: $06 $40
    inc c                                         ; $7c6a: $0c
    ld d, h                                       ; $7c6b: $54
    ld b, $40                                     ; $7c6c: $06 $40
    inc c                                         ; $7c6e: $0c
    ld d, [hl]                                    ; $7c6f: $56
    ld b, $40                                     ; $7c70: $06 $40
    inc c                                         ; $7c72: $0c
    ld d, a                                       ; $7c73: $57
    ld b, $40                                     ; $7c74: $06 $40
    inc c                                         ; $7c76: $0c
    ld d, [hl]                                    ; $7c77: $56
    ld b, $40                                     ; $7c78: $06 $40
    ld b, $54                                     ; $7c7a: $06 $54
    ld b, $40                                     ; $7c7c: $06 $40
    ld b, $56                                     ; $7c7e: $06 $56
    ld b, $40                                     ; $7c80: $06 $40
    ld b, $54                                     ; $7c82: $06 $54
    ld b, $40                                     ; $7c84: $06 $40
    ld b, $52                                     ; $7c86: $06 $52
    ld b, $40                                     ; $7c88: $06 $40
    inc c                                         ; $7c8a: $0c
    ld d, h                                       ; $7c8b: $54
    ld b, $40                                     ; $7c8c: $06 $40
    inc c                                         ; $7c8e: $0c
    ld d, [hl]                                    ; $7c8f: $56
    ld b, $40                                     ; $7c90: $06 $40
    inc c                                         ; $7c92: $0c
    ld d, h                                       ; $7c93: $54
    ld b, $40                                     ; $7c94: $06 $40
    inc c                                         ; $7c96: $0c
    ld d, d                                       ; $7c97: $52
    ld b, $40                                     ; $7c98: $06 $40
    inc c                                         ; $7c9a: $0c
    ld d, c                                       ; $7c9b: $51
    ld b, $40                                     ; $7c9c: $06 $40
    inc c                                         ; $7c9e: $0c
    ld d, d                                       ; $7c9f: $52
    ld b, $40                                     ; $7ca0: $06 $40
    inc c                                         ; $7ca2: $0c
    ld d, h                                       ; $7ca3: $54
    ld b, $40                                     ; $7ca4: $06 $40
    inc c                                         ; $7ca6: $0c
    ld d, [hl]                                    ; $7ca7: $56
    ld b, $40                                     ; $7ca8: $06 $40
    ld b, $57                                     ; $7caa: $06 $57
    ld b, $40                                     ; $7cac: $06 $40
    ld b, $56                                     ; $7cae: $06 $56
    ld b, $40                                     ; $7cb0: $06 $40
    inc c                                         ; $7cb2: $0c
    ld d, h                                       ; $7cb3: $54
    ld b, $40                                     ; $7cb4: $06 $40
    inc c                                         ; $7cb6: $0c
    ld d, [hl]                                    ; $7cb7: $56
    ld b, $40                                     ; $7cb8: $06 $40
    ld b, $57                                     ; $7cba: $06 $57
    ld b, $40                                     ; $7cbc: $06 $40
    ld b, $59                                     ; $7cbe: $06 $59
    ld b, $40                                     ; $7cc0: $06 $40
    ld b, $5b                                     ; $7cc2: $06 $5b
    ld b, $40                                     ; $7cc4: $06 $40
    ld b, $59                                     ; $7cc6: $06 $59
    ld b, $40                                     ; $7cc8: $06 $40
    inc c                                         ; $7cca: $0c
    ld d, a                                       ; $7ccb: $57
    ld b, $40                                     ; $7ccc: $06 $40
    inc c                                         ; $7cce: $0c
    ld d, [hl]                                    ; $7ccf: $56
    ld b, $40                                     ; $7cd0: $06 $40
    inc c                                         ; $7cd2: $0c
    ld d, h                                       ; $7cd3: $54
    ld b, $40                                     ; $7cd4: $06 $40
    ld b, $56                                     ; $7cd6: $06 $56
    ld b, $40                                     ; $7cd8: $06 $40
    ld b, $57                                     ; $7cda: $06 $57
    ld b, $40                                     ; $7cdc: $06 $40
    ld b, $59                                     ; $7cde: $06 $59
    ld b, $40                                     ; $7ce0: $06 $40
    ld b, $57                                     ; $7ce2: $06 $57
    ld b, $40                                     ; $7ce4: $06 $40
    inc c                                         ; $7ce6: $0c
    ld d, [hl]                                    ; $7ce7: $56
    ld b, $40                                     ; $7ce8: $06 $40
    inc c                                         ; $7cea: $0c
    ld d, [hl]                                    ; $7ceb: $56
    ld b, $40                                     ; $7cec: $06 $40
    ld b, $57                                     ; $7cee: $06 $57
    ld b, $40                                     ; $7cf0: $06 $40
    ld b, $59                                     ; $7cf2: $06 $59
    ld b, $40                                     ; $7cf4: $06 $40
    ld b, $5b                                     ; $7cf6: $06 $5b
    ld b, $40                                     ; $7cf8: $06 $40
    ld b, $5c                                     ; $7cfa: $06 $5c
    ld b, $40                                     ; $7cfc: $06 $40
    inc c                                         ; $7cfe: $0c
    ld e, e                                       ; $7cff: $5b
    ld b, $40                                     ; $7d00: $06 $40
    inc c                                         ; $7d02: $0c
    ld e, c                                       ; $7d03: $59
    ld b, $40                                     ; $7d04: $06 $40
    inc c                                         ; $7d06: $0c
    ld e, e                                       ; $7d07: $5b
    ld b, $40                                     ; $7d08: $06 $40
    inc c                                         ; $7d0a: $0c
    ld e, h                                       ; $7d0b: $5c
    ld b, $40                                     ; $7d0c: $06 $40
    inc c                                         ; $7d0e: $0c
    ld e, h                                       ; $7d0f: $5c
    ld b, $40                                     ; $7d10: $06 $40
    inc c                                         ; $7d12: $0c
    ld e, e                                       ; $7d13: $5b
    ld b, $40                                     ; $7d14: $06 $40
    inc c                                         ; $7d16: $0c
    ld e, c                                       ; $7d17: $59
    ld b, $40                                     ; $7d18: $06 $40
    inc c                                         ; $7d1a: $0c
    ld d, a                                       ; $7d1b: $57
    ld b, $40                                     ; $7d1c: $06 $40
    ld b, $59                                     ; $7d1e: $06 $59
    ld b, $40                                     ; $7d20: $06 $40
    ld b, $57                                     ; $7d22: $06 $57
    ld b, $40                                     ; $7d24: $06 $40
    ld b, $59                                     ; $7d26: $06 $59
    ld b, $40                                     ; $7d28: $06 $40
    ld b, $56                                     ; $7d2a: $06 $56
    ld b, $40                                     ; $7d2c: $06 $40
    inc c                                         ; $7d2e: $0c
    ld d, h                                       ; $7d2f: $54
    ld b, $40                                     ; $7d30: $06 $40
    inc c                                         ; $7d32: $0c
    ld d, d                                       ; $7d33: $52
    ld b, $40                                     ; $7d34: $06 $40
    inc c                                         ; $7d36: $0c
    ld d, h                                       ; $7d37: $54
    ld b, $40                                     ; $7d38: $06 $40
    inc c                                         ; $7d3a: $0c
    ld d, [hl]                                    ; $7d3b: $56
    ld b, $40                                     ; $7d3c: $06 $40
    inc c                                         ; $7d3e: $0c
    ld d, [hl]                                    ; $7d3f: $56
    ld b, $40                                     ; $7d40: $06 $40
    ld b, $54                                     ; $7d42: $06 $54
    ld b, $40                                     ; $7d44: $06 $40
    ld b, $56                                     ; $7d46: $06 $56
    ld b, $40                                     ; $7d48: $06 $40
    inc c                                         ; $7d4a: $0c
    ld d, a                                       ; $7d4b: $57
    ld b, $40                                     ; $7d4c: $06 $40
    inc c                                         ; $7d4e: $0c
    ld e, c                                       ; $7d4f: $59
    ld b, $40                                     ; $7d50: $06 $40
    inc c                                         ; $7d52: $0c
    ld d, a                                       ; $7d53: $57
    ld b, $40                                     ; $7d54: $06 $40
    ld b, $56                                     ; $7d56: $06 $56
    ld b, $40                                     ; $7d58: $06 $40
    ld b, $54                                     ; $7d5a: $06 $54
    ld b, $40                                     ; $7d5c: $06 $40
    inc c                                         ; $7d5e: $0c
    ld d, [hl]                                    ; $7d5f: $56
    ld b, $40                                     ; $7d60: $06 $40
    ld b, $54                                     ; $7d62: $06 $54
    ld b, $40                                     ; $7d64: $06 $40
    ld b, $52                                     ; $7d66: $06 $52
    ld b, $40                                     ; $7d68: $06 $40
    inc c                                         ; $7d6a: $0c
    ld d, h                                       ; $7d6b: $54
    ld b, $40                                     ; $7d6c: $06 $40
    inc c                                         ; $7d6e: $0c
    ld d, d                                       ; $7d6f: $52
    ld b, $40                                     ; $7d70: $06 $40
    inc c                                         ; $7d72: $0c
    ld c, a                                       ; $7d73: $4f
    ld b, $40                                     ; $7d74: $06 $40
    inc c                                         ; $7d76: $0c
    ld d, d                                       ; $7d77: $52
    ld b, $40                                     ; $7d78: $06 $40
    ld b, $54                                     ; $7d7a: $06 $54
    ld b, $40                                     ; $7d7c: $06 $40
    ld b, $56                                     ; $7d7e: $06 $56
    ld b, $40                                     ; $7d80: $06 $40
    ld b, $57                                     ; $7d82: $06 $57
    ld b, $40                                     ; $7d84: $06 $40
    ld b, $56                                     ; $7d86: $06 $56
    ld b, $40                                     ; $7d88: $06 $40
    inc c                                         ; $7d8a: $0c
    ld d, h                                       ; $7d8b: $54
    ld b, $40                                     ; $7d8c: $06 $40
    inc c                                         ; $7d8e: $0c
    ld d, d                                       ; $7d8f: $52
    ld b, $40                                     ; $7d90: $06 $40
    inc c                                         ; $7d92: $0c
    ld d, [hl]                                    ; $7d93: $56
    ld b, $40                                     ; $7d94: $06 $40
    ld b, $57                                     ; $7d96: $06 $57
    ld b, $40                                     ; $7d98: $06 $40
    ld b, $59                                     ; $7d9a: $06 $59
    ld b, $40                                     ; $7d9c: $06 $40
    inc c                                         ; $7d9e: $0c
    ld e, e                                       ; $7d9f: $5b
    ld b, $40                                     ; $7da0: $06 $40
    inc c                                         ; $7da2: $0c
    ld e, c                                       ; $7da3: $59
    ld b, $40                                     ; $7da4: $06 $40
    inc c                                         ; $7da6: $0c
    ld e, e                                       ; $7da7: $5b
    ld b, $40                                     ; $7da8: $06 $40
    inc c                                         ; $7daa: $0c
    ld e, h                                       ; $7dab: $5c
    ld b, $40                                     ; $7dac: $06 $40
    ld b, $5b                                     ; $7dae: $06 $5b
    ld b, $40                                     ; $7db0: $06 $40
    ld b, $5c                                     ; $7db2: $06 $5c
    ld b, $40                                     ; $7db4: $06 $40
    ld b, $5b                                     ; $7db6: $06 $5b
    ld b, $40                                     ; $7db8: $06 $40
    ld b, $59                                     ; $7dba: $06 $59
    ld b, $40                                     ; $7dbc: $06 $40
    inc c                                         ; $7dbe: $0c
    ld d, a                                       ; $7dbf: $57
    ld b, $40                                     ; $7dc0: $06 $40
    inc c                                         ; $7dc2: $0c
    ld e, c                                       ; $7dc3: $59
    ld b, $40                                     ; $7dc4: $06 $40

jr_01b_7dc6:
    ld b, $57                                     ; $7dc6: $06 $57
    ld b, $40                                     ; $7dc8: $06 $40
    ld b, $59                                     ; $7dca: $06 $59
    ld b, $40                                     ; $7dcc: $06 $40
    ld b, $57                                     ; $7dce: $06 $57
    ld b, $40                                     ; $7dd0: $06 $40
    ld b, $56                                     ; $7dd2: $06 $56
    ld b, $40                                     ; $7dd4: $06 $40
    inc c                                         ; $7dd6: $0c
    ld d, h                                       ; $7dd7: $54
    ld b, $40                                     ; $7dd8: $06 $40
    inc c                                         ; $7dda: $0c
    ld d, a                                       ; $7ddb: $57
    ld b, $40                                     ; $7ddc: $06 $40

jr_01b_7dde:
    inc c                                         ; $7dde: $0c
    ld d, [hl]                                    ; $7ddf: $56
    ld b, $40                                     ; $7de0: $06 $40
    inc c                                         ; $7de2: $0c
    ld d, h                                       ; $7de3: $54
    ld b, $40                                     ; $7de4: $06 $40
    inc c                                         ; $7de6: $0c
    ld d, d                                       ; $7de7: $52
    ld b, $40                                     ; $7de8: $06 $40

jr_01b_7dea:
    inc c                                         ; $7dea: $0c
    ld c, a                                       ; $7deb: $4f
    ld b, $40                                     ; $7dec: $06 $40

jr_01b_7dee:
    inc c                                         ; $7dee: $0c
    ld d, c                                       ; $7def: $51
    ld b, $40                                     ; $7df0: $06 $40
    inc c                                         ; $7df2: $0c
    ld d, d                                       ; $7df3: $52
    ld b, $40                                     ; $7df4: $06 $40
    inc c                                         ; $7df6: $0c
    ld d, b                                       ; $7df7: $50
    ld b, $40                                     ; $7df8: $06 $40
    ld b, $4f                                     ; $7dfa: $06 $4f
    ld b, $40                                     ; $7dfc: $06 $40
    ld b, $50                                     ; $7dfe: $06 $50
    ld b, $40                                     ; $7e00: $06 $40
    inc c                                         ; $7e02: $0c
    ld d, d                                       ; $7e03: $52
    ld b, $40                                     ; $7e04: $06 $40

jr_01b_7e06:
    ld b, $54                                     ; $7e06: $06 $54
    ld b, $40                                     ; $7e08: $06 $40
    ld b, $56                                     ; $7e0a: $06 $56
    ld b, $40                                     ; $7e0c: $06 $40
    ld b, $57                                     ; $7e0e: $06 $57
    ld b, $40                                     ; $7e10: $06 $40

jr_01b_7e12:
    ld b, $56                                     ; $7e12: $06 $56
    ld b, $40                                     ; $7e14: $06 $40
    ld b, $54                                     ; $7e16: $06 $54
    ld b, $40                                     ; $7e18: $06 $40
    ld b, $52                                     ; $7e1a: $06 $52
    ld b, $40                                     ; $7e1c: $06 $40
    inc c                                         ; $7e1e: $0c
    ld d, h                                       ; $7e1f: $54
    ld b, $40                                     ; $7e20: $06 $40

jr_01b_7e22:
    inc c                                         ; $7e22: $0c
    ld d, [hl]                                    ; $7e23: $56
    ld b, $40                                     ; $7e24: $06 $40

jr_01b_7e26:
    ld b, $57                                     ; $7e26: $06 $57
    ld b, $40                                     ; $7e28: $06 $40

jr_01b_7e2a:
    ld b, $56                                     ; $7e2a: $06 $56
    ld b, $40                                     ; $7e2c: $06 $40
    inc c                                         ; $7e2e: $0c
    ld d, h                                       ; $7e2f: $54
    ld b, $40                                     ; $7e30: $06 $40

jr_01b_7e32:
    inc c                                         ; $7e32: $0c
    ld d, [hl]                                    ; $7e33: $56
    ld b, $40                                     ; $7e34: $06 $40

jr_01b_7e36:
    ld b, $57                                     ; $7e36: $06 $57
    ld b, $90                                     ; $7e38: $06 $90
    ld b, $35                                     ; $7e3a: $06 $35
    inc h                                         ; $7e3c: $24
    sub b                                         ; $7e3d: $90
    inc h                                         ; $7e3e: $24
    jr c, @+$1a                                   ; $7e3f: $38 $18

    sub b                                         ; $7e41: $90

jr_01b_7e42:
    jr jr_01b_7e7b                                ; $7e42: $18 $37

    jr jr_01b_7dc6                                ; $7e44: $18 $80

jr_01b_7e46:
    jr jr_01b_7e78                                ; $7e46: $18 $30

    inc c                                         ; $7e48: $0c
    sub b                                         ; $7e49: $90
    inc c                                         ; $7e4a: $0c
    dec [hl]                                      ; $7e4b: $35
    jr jr_01b_7dde                                ; $7e4c: $18 $90

    jr jr_01b_7e88                                ; $7e4e: $18 $38

    inc c                                         ; $7e50: $0c
    sub b                                         ; $7e51: $90
    inc c                                         ; $7e52: $0c
    scf                                           ; $7e53: $37
    inc c                                         ; $7e54: $0c
    sub b                                         ; $7e55: $90
    inc c                                         ; $7e56: $0c
    dec [hl]                                      ; $7e57: $35
    jr jr_01b_7dea                                ; $7e58: $18 $90

    jr jr_01b_7e8c                                ; $7e5a: $18 $30

    jr jr_01b_7dee                                ; $7e5c: $18 $90

    jr @+$37                                      ; $7e5e: $18 $35

    inc h                                         ; $7e60: $24
    sub b                                         ; $7e61: $90
    inc h                                         ; $7e62: $24
    jr c, jr_01b_7e7d                             ; $7e63: $38 $18

    sub b                                         ; $7e65: $90
    jr jr_01b_7e9f                                ; $7e66: $18 $37

    inc c                                         ; $7e68: $0c
    sub b                                         ; $7e69: $90
    inc c                                         ; $7e6a: $0c
    jr nc, jr_01b_7e79                            ; $7e6b: $30 $0c

    sub b                                         ; $7e6d: $90
    inc c                                         ; $7e6e: $0c
    scf                                           ; $7e6f: $37
    inc c                                         ; $7e70: $0c
    sub b                                         ; $7e71: $90
    inc c                                         ; $7e72: $0c
    dec [hl]                                      ; $7e73: $35
    jr jr_01b_7e06                                ; $7e74: $18 $90

    jr jr_01b_7eb0                                ; $7e76: $18 $38

jr_01b_7e78:
    inc c                                         ; $7e78: $0c

jr_01b_7e79:
    add b                                         ; $7e79: $80
    inc c                                         ; $7e7a: $0c

jr_01b_7e7b:
    scf                                           ; $7e7b: $37
    inc c                                         ; $7e7c: $0c

jr_01b_7e7d:
    sub b                                         ; $7e7d: $90
    inc c                                         ; $7e7e: $0c
    dec [hl]                                      ; $7e7f: $35
    jr jr_01b_7e12                                ; $7e80: $18 $90

    jr jr_01b_7ebb                                ; $7e82: $18 $37

    inc c                                         ; $7e84: $0c
    sub b                                         ; $7e85: $90
    inc c                                         ; $7e86: $0c
    dec [hl]                                      ; $7e87: $35

jr_01b_7e88:
    inc c                                         ; $7e88: $0c
    sub b                                         ; $7e89: $90
    inc c                                         ; $7e8a: $0c
    scf                                           ; $7e8b: $37

jr_01b_7e8c:
    inc h                                         ; $7e8c: $24
    sub b                                         ; $7e8d: $90
    inc h                                         ; $7e8e: $24
    ld a, [hl-]                                   ; $7e8f: $3a
    jr jr_01b_7e22                                ; $7e90: $18 $90

    jr jr_01b_7ecd                                ; $7e92: $18 $39

    jr jr_01b_7e26                                ; $7e94: $18 $90

    jr jr_01b_7eca                                ; $7e96: $18 $32

    jr nc, jr_01b_7e2a                            ; $7e98: $30 $90

    jr nc, jr_01b_7ed6                            ; $7e9a: $30 $3a

    inc c                                         ; $7e9c: $0c
    sub b                                         ; $7e9d: $90
    inc c                                         ; $7e9e: $0c

jr_01b_7e9f:
    add hl, sp                                    ; $7e9f: $39
    jr jr_01b_7e32                                ; $7ea0: $18 $90

    jr jr_01b_7edb                                ; $7ea2: $18 $37

    jr jr_01b_7e36                                ; $7ea4: $18 $90

    jr jr_01b_7edb                                ; $7ea6: $18 $33

    jr jr_01b_7e2a                                ; $7ea8: $18 $80

    jr jr_01b_7ee2                                ; $7eaa: $18 $36

    inc c                                         ; $7eac: $0c
    sub b                                         ; $7ead: $90
    inc c                                         ; $7eae: $0c
    ld a, [hl-]                                   ; $7eaf: $3a

jr_01b_7eb0:
    jr jr_01b_7e42                                ; $7eb0: $18 $90

    jr jr_01b_7eea                                ; $7eb2: $18 $36

    jr jr_01b_7e46                                ; $7eb4: $18 $90

    jr jr_01b_7eeb                                ; $7eb6: $18 $33

    inc h                                         ; $7eb8: $24
    add b                                         ; $7eb9: $80
    inc h                                         ; $7eba: $24

jr_01b_7ebb:
    add hl, sp                                    ; $7ebb: $39
    inc c                                         ; $7ebc: $0c
    add b                                         ; $7ebd: $80
    inc c                                         ; $7ebe: $0c
    ld a, [hl-]                                   ; $7ebf: $3a
    jr jr_01b_7e42                                ; $7ec0: $18 $80

    jr @+$3b                                      ; $7ec2: $18 $39

    inc c                                         ; $7ec4: $0c
    sub b                                         ; $7ec5: $90
    inc c                                         ; $7ec6: $0c
    ld [hl], $0c                                  ; $7ec7: $36 $0c
    add b                                         ; $7ec9: $80

jr_01b_7eca:
    inc c                                         ; $7eca: $0c
    ld [hl-], a                                   ; $7ecb: $32
    dec b                                         ; $7ecc: $05

jr_01b_7ecd:
    ld h, b                                       ; $7ecd: $60
    inc c                                         ; $7ece: $0c
    inc sp                                        ; $7ecf: $33
    rlca                                          ; $7ed0: $07
    ld d, b                                       ; $7ed1: $50
    inc c                                         ; $7ed2: $0c
    ld b, d                                       ; $7ed3: $42
    ld b, $50                                     ; $7ed4: $06 $50

jr_01b_7ed6:
    inc c                                         ; $7ed6: $0c
    ccf                                           ; $7ed7: $3f
    ld b, $50                                     ; $7ed8: $06 $50
    inc c                                         ; $7eda: $0c

jr_01b_7edb:
    ld b, [hl]                                    ; $7edb: $46
    ld b, $50                                     ; $7edc: $06 $50
    inc c                                         ; $7ede: $0c
    ld a, [hl-]                                   ; $7edf: $3a
    ld b, $50                                     ; $7ee0: $06 $50

jr_01b_7ee2:
    inc c                                         ; $7ee2: $0c
    ld b, a                                       ; $7ee3: $47
    ld b, $50                                     ; $7ee4: $06 $50
    inc c                                         ; $7ee6: $0c
    ccf                                           ; $7ee7: $3f
    ld b, $50                                     ; $7ee8: $06 $50

jr_01b_7eea:
    inc c                                         ; $7eea: $0c

jr_01b_7eeb:
    ld c, c                                       ; $7eeb: $49
    ld b, $50                                     ; $7eec: $06 $50
    inc c                                         ; $7eee: $0c
    ccf                                           ; $7eef: $3f
    ld b, $50                                     ; $7ef0: $06 $50
    inc c                                         ; $7ef2: $0c
    ld b, h                                       ; $7ef3: $44
    ld b, $50                                     ; $7ef4: $06 $50
    inc c                                         ; $7ef6: $0c
    ld b, [hl]                                    ; $7ef7: $46
    ld b, $50                                     ; $7ef8: $06 $50
    inc c                                         ; $7efa: $0c
    ld c, l                                       ; $7efb: $4d
    ld b, $50                                     ; $7efc: $06 $50
    inc c                                         ; $7efe: $0c
    dec a                                         ; $7eff: $3d
    ld b, $50                                     ; $7f00: $06 $50
    inc c                                         ; $7f02: $0c
    ld c, e                                       ; $7f03: $4b
    ld b, $50                                     ; $7f04: $06 $50
    inc c                                         ; $7f06: $0c
    dec a                                         ; $7f07: $3d
    ld b, $50                                     ; $7f08: $06 $50
    inc c                                         ; $7f0a: $0c
    ld c, [hl]                                    ; $7f0b: $4e
    ld b, $50                                     ; $7f0c: $06 $50
    inc c                                         ; $7f0e: $0c
    ld b, h                                       ; $7f0f: $44
    ld b, $50                                     ; $7f10: $06 $50
    inc c                                         ; $7f12: $0c
    ld c, l                                       ; $7f13: $4d
    ld b, $50                                     ; $7f14: $06 $50
    inc c                                         ; $7f16: $0c
    dec a                                         ; $7f17: $3d
    ld b, $50                                     ; $7f18: $06 $50
    inc c                                         ; $7f1a: $0c
    ld c, e                                       ; $7f1b: $4b
    ld b, $50                                     ; $7f1c: $06 $50
    inc c                                         ; $7f1e: $0c
    dec a                                         ; $7f1f: $3d
    ld b, $50                                     ; $7f20: $06 $50
    inc c                                         ; $7f22: $0c
    ld c, c                                       ; $7f23: $49
    ld b, $50                                     ; $7f24: $06 $50
    inc c                                         ; $7f26: $0c
    jr c, jr_01b_7f2f                             ; $7f27: $38 $06

    ld d, b                                       ; $7f29: $50
    inc c                                         ; $7f2a: $0c
    ld a, [hl-]                                   ; $7f2b: $3a
    ld b, $50                                     ; $7f2c: $06 $50
    nop                                           ; $7f2e: $00

jr_01b_7f2f:
    ld c, b                                       ; $7f2f: $48
    ld b, $50                                     ; $7f30: $06 $50
    inc c                                         ; $7f32: $0c
    ccf                                           ; $7f33: $3f
    ld b, $50                                     ; $7f34: $06 $50
    inc c                                         ; $7f36: $0c
    ld c, c                                       ; $7f37: $49
    ld b, $50                                     ; $7f38: $06 $50
    inc c                                         ; $7f3a: $0c
    ccf                                           ; $7f3b: $3f
    ld b, $50                                     ; $7f3c: $06 $50
    inc c                                         ; $7f3e: $0c
    ld c, e                                       ; $7f3f: $4b
    ld b, $50                                     ; $7f40: $06 $50
    inc c                                         ; $7f42: $0c
    ld a, [hl-]                                   ; $7f43: $3a
    ld b, $50                                     ; $7f44: $06 $50
    inc c                                         ; $7f46: $0c
    ld b, [hl]                                    ; $7f47: $46
    ld b, $50                                     ; $7f48: $06 $50
    inc c                                         ; $7f4a: $0c
    ccf                                           ; $7f4b: $3f
    ld b, $50                                     ; $7f4c: $06 $50
    inc c                                         ; $7f4e: $0c
    ld b, a                                       ; $7f4f: $47
    ld b, $50                                     ; $7f50: $06 $50
    inc c                                         ; $7f52: $0c
    ld b, d                                       ; $7f53: $42
    ld b, $50                                     ; $7f54: $06 $50
    inc c                                         ; $7f56: $0c
    ld c, [hl]                                    ; $7f57: $4e
    ld b, $50                                     ; $7f58: $06 $50
    inc c                                         ; $7f5a: $0c
    ld b, c                                       ; $7f5b: $41
    ld b, $50                                     ; $7f5c: $06 $50
    inc c                                         ; $7f5e: $0c
    ld c, l                                       ; $7f5f: $4d
    ld b, $50                                     ; $7f60: $06 $50
    inc c                                         ; $7f62: $0c
    dec a                                         ; $7f63: $3d
    ld b, $50                                     ; $7f64: $06 $50
    inc c                                         ; $7f66: $0c
    ld c, c                                       ; $7f67: $49
    ld b, $50                                     ; $7f68: $06 $50
    inc c                                         ; $7f6a: $0c
    dec a                                         ; $7f6b: $3d
    ld b, $50                                     ; $7f6c: $06 $50
    inc c                                         ; $7f6e: $0c
    ld c, l                                       ; $7f6f: $4d
    ld b, $50                                     ; $7f70: $06 $50
    inc c                                         ; $7f72: $0c
    ld b, c                                       ; $7f73: $41
    ld b, $50                                     ; $7f74: $06 $50
    inc c                                         ; $7f76: $0c
    ld c, e                                       ; $7f77: $4b
    ld b, $50                                     ; $7f78: $06 $50
    inc c                                         ; $7f7a: $0c
    dec a                                         ; $7f7b: $3d
    ld b, $50                                     ; $7f7c: $06 $50
    inc c                                         ; $7f7e: $0c
    ld b, [hl]                                    ; $7f7f: $46
    ld b, $50                                     ; $7f80: $06 $50
    inc c                                         ; $7f82: $0c
    ld b, h                                       ; $7f83: $44
    ld b, $50                                     ; $7f84: $06 $50
    inc c                                         ; $7f86: $0c
    ld b, c                                       ; $7f87: $41
    ld b, $50                                     ; $7f88: $06 $50
    inc c                                         ; $7f8a: $0c
    ld b, d                                       ; $7f8b: $42
    ld b, $50                                     ; $7f8c: $06 $50
    inc c                                         ; $7f8e: $0c
    ld b, a                                       ; $7f8f: $47
    ld b, $50                                     ; $7f90: $06 $50
    inc c                                         ; $7f92: $0c
    ccf                                           ; $7f93: $3f
    ld b, $50                                     ; $7f94: $06 $50
    inc c                                         ; $7f96: $0c
    ld b, d                                       ; $7f97: $42
    ld b, $50                                     ; $7f98: $06 $50
    inc c                                         ; $7f9a: $0c
    ccf                                           ; $7f9b: $3f
    ld b, $50                                     ; $7f9c: $06 $50
    inc c                                         ; $7f9e: $0c
    ld b, [hl]                                    ; $7f9f: $46
    ld b, $50                                     ; $7fa0: $06 $50
    inc c                                         ; $7fa2: $0c
    ld a, [hl-]                                   ; $7fa3: $3a
    ld b, $50                                     ; $7fa4: $06 $50
    inc c                                         ; $7fa6: $0c
    ld b, a                                       ; $7fa7: $47
    ld b, $50                                     ; $7fa8: $06 $50
    inc c                                         ; $7faa: $0c
    ccf                                           ; $7fab: $3f
    ld b, $50                                     ; $7fac: $06 $50
    inc c                                         ; $7fae: $0c
    ld c, c                                       ; $7faf: $49
    ld b, $50                                     ; $7fb0: $06 $50
    inc c                                         ; $7fb2: $0c
    ccf                                           ; $7fb3: $3f
    ld b, $50                                     ; $7fb4: $06 $50
    inc c                                         ; $7fb6: $0c
    ld b, a                                       ; $7fb7: $47
    ld b, $50                                     ; $7fb8: $06 $50
    inc c                                         ; $7fba: $0c
    ld b, [hl]                                    ; $7fbb: $46
    ld b, $50                                     ; $7fbc: $06 $50
    inc c                                         ; $7fbe: $0c
    ld c, l                                       ; $7fbf: $4d
    ld b, $40                                     ; $7fc0: $06 $40
    inc c                                         ; $7fc2: $0c
    ld d, l                                       ; $7fc3: $55
    ld b, $40                                     ; $7fc4: $06 $40
    inc c                                         ; $7fc6: $0c
    ld d, b                                       ; $7fc7: $50
    ld b, $40                                     ; $7fc8: $06 $40
    inc c                                         ; $7fca: $0c
    ld d, l                                       ; $7fcb: $55
    ld b, $40                                     ; $7fcc: $06 $40
    inc c                                         ; $7fce: $0c
    ld d, a                                       ; $7fcf: $57
    ld b, $40                                     ; $7fd0: $06 $40
    inc c                                         ; $7fd2: $0c
    ld d, l                                       ; $7fd3: $55
    ld b, $40                                     ; $7fd4: $06 $40
    inc c                                         ; $7fd6: $0c
    ld e, c                                       ; $7fd7: $59
    ld b, $40                                     ; $7fd8: $06 $40
    ld b, $52                                     ; $7fda: $06 $52
    ld b, $40                                     ; $7fdc: $06 $40
    ld b, $55                                     ; $7fde: $06 $55
    ld b, $40                                     ; $7fe0: $06 $40
    inc c                                         ; $7fe2: $0c
    ld e, c                                       ; $7fe3: $59
    ld b, $40                                     ; $7fe4: $06 $40
    inc c                                         ; $7fe6: $0c
    ld d, l                                       ; $7fe7: $55
    ld b, $40                                     ; $7fe8: $06 $40
    inc c                                         ; $7fea: $0c
    ld e, e                                       ; $7feb: $5b
    ld b, $40                                     ; $7fec: $06 $40
    inc c                                         ; $7fee: $0c
    ld e, h                                       ; $7fef: $5c
    ld b, $40                                     ; $7ff0: $06 $40
    inc c                                         ; $7ff2: $0c
    ld d, d                                       ; $7ff3: $52
    ld b, $f0                                     ; $7ff4: $06 $f0
    nop                                           ; $7ff6: $00
    rst $38                                       ; $7ff7: $ff
    ldh a, [rP1]                                  ; $7ff8: $f0 $00
    rst $38                                       ; $7ffa: $ff
    nop                                           ; $7ffb: $00
    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    nop                                           ; $7fff: $00
