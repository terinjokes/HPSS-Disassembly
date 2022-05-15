; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0dd", ROMX[$4000], BANK[$dd]

    db $dd                                        ; $4000: $dd
    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld hl, sp+$07                                 ; $4003: $f8 $07
    ld a, [c]                                     ; $4005: $f2
    ld bc, $f9e2                                  ; $4006: $01 $e2 $f9
    ld [c], a                                     ; $4009: $e2
    db $fd                                        ; $400a: $fd
    ld a, [c]                                     ; $400b: $f2
    ld sp, hl                                     ; $400c: $f9
    ld a, [c]                                     ; $400d: $f2
    nop                                           ; $400e: $00
    ld [bc], a                                    ; $400f: $02
    ld d, $92                                     ; $4010: $16 $92
    ld e, a                                       ; $4012: $5f
    ld e, e                                       ; $4013: $5b
    ld [hl], l                                    ; $4014: $75
    ld l, a                                       ; $4015: $6f
    cp a                                          ; $4016: $bf
    cp d                                          ; $4017: $ba
    rst $30                                       ; $4018: $f7
    db $ec                                        ; $4019: $ec
    ld a, a                                       ; $401a: $7f
    ld e, c                                       ; $401b: $59
    rst $28                                       ; $401c: $ef
    ld hl, sp+$3f                                 ; $401d: $f8 $3f
    inc [hl]                                      ; $401f: $34
    ld l, a                                       ; $4020: $6f
    ld l, b                                       ; $4021: $68
    rla                                           ; $4022: $17
    inc d                                         ; $4023: $14
    ld [bc], a                                    ; $4024: $02
    rrca                                          ; $4025: $0f
    adc d                                         ; $4026: $8a
    inc de                                        ; $4027: $13
    ld e, $29                                     ; $4028: $1e $29
    ccf                                           ; $402a: $3f
    inc a                                         ; $402b: $3c
    ccf                                           ; $402c: $3f
    dec d                                         ; $402d: $15
    rra                                           ; $402e: $1f
    ld h, $3f                                     ; $402f: $26 $3f
    ld [bc], a                                    ; $4031: $02
    ld [$0c82], sp                                ; $4032: $08 $82 $0c
    inc b                                         ; $4035: $04
    ld [bc], a                                    ; $4036: $02
    ld [$0c8a], sp                                ; $4037: $08 $8a $0c
    inc b                                         ; $403a: $04
    inc c                                         ; $403b: $0c
    inc b                                         ; $403c: $04
    ld c, $0a                                     ; $403d: $0e $0a
    rrca                                          ; $403f: $0f
    ld bc, $020e                                  ; $4040: $01 $0e $02
    inc bc                                        ; $4043: $03
    inc c                                         ; $4044: $0c
    add c                                         ; $4045: $81
    inc b                                         ; $4046: $04
    ld [bc], a                                    ; $4047: $02
    ld [$0c02], sp                                ; $4048: $08 $02 $0c
    add d                                         ; $404b: $82
    ld a, [bc]                                    ; $404c: $0a
    ld b, $02                                     ; $404d: $06 $02
    ld c, $81                                     ; $404f: $0e $81
    add hl, bc                                    ; $4051: $09
    inc bc                                        ; $4052: $03
    rrca                                          ; $4053: $0f
    add c                                         ; $4054: $81
    ld c, e                                       ; $4055: $4b
    ld [bc], a                                    ; $4056: $02
    ld a, a                                       ; $4057: $7f
    sbc c                                         ; $4058: $99
    ld a, l                                       ; $4059: $7d
    sbc a                                         ; $405a: $9f
    db $f4                                        ; $405b: $f4
    ld a, a                                       ; $405c: $7f
    ld h, e                                       ; $405d: $63
    inc a                                         ; $405e: $3c
    scf                                           ; $405f: $37
    dec e                                         ; $4060: $1d
    rra                                           ; $4061: $1f
    inc e                                         ; $4062: $1c
    rra                                           ; $4063: $1f
    dec d                                         ; $4064: $15
    rra                                           ; $4065: $1f
    dec d                                         ; $4066: $15
    rra                                           ; $4067: $1f
    dec h                                         ; $4068: $25
    ccf                                           ; $4069: $3f
    dec [hl]                                      ; $406a: $35
    ccf                                           ; $406b: $3f
    add hl, sp                                    ; $406c: $39
    ccf                                           ; $406d: $3f
    dec de                                        ; $406e: $1b
    rra                                           ; $406f: $1f
    dec de                                        ; $4070: $1b
    rra                                           ; $4071: $1f
    ld [bc], a                                    ; $4072: $02
    ld b, $02                                     ; $4073: $06 $02
    nop                                           ; $4075: $00
    add e                                         ; $4076: $83
    ld a, b                                       ; $4077: $78
    jr c, jr_0dd_40d2                             ; $4078: $38 $58

    inc bc                                        ; $407a: $03
    ld a, b                                       ; $407b: $78
    adc [hl]                                      ; $407c: $8e
    ld e, h                                       ; $407d: $5c
    ld [hl], h                                    ; $407e: $74
    ld e, h                                       ; $407f: $5c
    ld a, h                                       ; $4080: $7c
    ld c, [hl]                                    ; $4081: $4e
    ld a, d                                       ; $4082: $7a
    ld c, h                                       ; $4083: $4c
    ld a, h                                       ; $4084: $7c
    ld c, b                                       ; $4085: $48
    ld a, b                                       ; $4086: $78
    ld c, b                                       ; $4087: $48
    ld a, b                                       ; $4088: $78
    ld c, b                                       ; $4089: $48
    ld a, b                                       ; $408a: $78
    ld [bc], a                                    ; $408b: $02
    ld [hl], b                                    ; $408c: $70
    add h                                         ; $408d: $84
    jr z, jr_0dd_4108                             ; $408e: $28 $78

    ld d, h                                       ; $4090: $54
    ld e, h                                       ; $4091: $5c
    ld [bc], a                                    ; $4092: $02
    rra                                           ; $4093: $1f
    ld [bc], a                                    ; $4094: $02
    ld d, $02                                     ; $4095: $16 $02
    nop                                           ; $4097: $00
    rst $38                                       ; $4098: $ff
    dec c                                         ; $4099: $0d
    inc b                                         ; $409a: $04
    ld hl, sp+$07                                 ; $409b: $f8 $07
    ld a, [c]                                     ; $409d: $f2
    ld bc, $f9e3                                  ; $409e: $01 $e3 $f9
    db $e3                                        ; $40a1: $e3
    db $fd                                        ; $40a2: $fd
    di                                            ; $40a3: $f3
    ld sp, hl                                     ; $40a4: $f9
    di                                            ; $40a5: $f3
    cp $02                                        ; $40a6: $fe $02
    ld d, $92                                     ; $40a8: $16 $92
    ld e, a                                       ; $40aa: $5f
    ld e, e                                       ; $40ab: $5b
    ld [hl], l                                    ; $40ac: $75
    ld l, a                                       ; $40ad: $6f
    cp a                                          ; $40ae: $bf
    cp d                                          ; $40af: $ba
    rst $30                                       ; $40b0: $f7
    db $ec                                        ; $40b1: $ec
    ld a, a                                       ; $40b2: $7f
    ld e, c                                       ; $40b3: $59
    rst $28                                       ; $40b4: $ef
    ld hl, sp+$3f                                 ; $40b5: $f8 $3f
    inc [hl]                                      ; $40b7: $34
    ld l, a                                       ; $40b8: $6f
    ld l, b                                       ; $40b9: $68
    rla                                           ; $40ba: $17
    inc d                                         ; $40bb: $14
    ld [bc], a                                    ; $40bc: $02
    rra                                           ; $40bd: $1f
    add l                                         ; $40be: $85
    inc hl                                        ; $40bf: $23
    ld a, $29                                     ; $40c0: $3e $29
    ccf                                           ; $40c2: $3f
    ld d, $03                                     ; $40c3: $16 $03
    rra                                           ; $40c5: $1f
    add d                                         ; $40c6: $82
    ld h, $3f                                     ; $40c7: $26 $3f
    ld [bc], a                                    ; $40c9: $02
    ld [$0c82], sp                                ; $40ca: $08 $82 $0c
    inc b                                         ; $40cd: $04
    ld [bc], a                                    ; $40ce: $02
    ld [$0c8a], sp                                ; $40cf: $08 $8a $0c

jr_0dd_40d2:
    inc b                                         ; $40d2: $04
    inc c                                         ; $40d3: $0c
    inc b                                         ; $40d4: $04
    ld c, $0a                                     ; $40d5: $0e $0a
    rrca                                          ; $40d7: $0f
    ld bc, $020e                                  ; $40d8: $01 $0e $02
    inc bc                                        ; $40db: $03
    inc c                                         ; $40dc: $0c
    add c                                         ; $40dd: $81
    inc b                                         ; $40de: $04
    ld [bc], a                                    ; $40df: $02
    ld [$0c02], sp                                ; $40e0: $08 $02 $0c
    add d                                         ; $40e3: $82
    dec bc                                        ; $40e4: $0b
    rlca                                          ; $40e5: $07
    ld [bc], a                                    ; $40e6: $02
    ld c, $81                                     ; $40e7: $0e $81
    add hl, bc                                    ; $40e9: $09
    inc bc                                        ; $40ea: $03
    rrca                                          ; $40eb: $0f
    add c                                         ; $40ec: $81
    ld c, e                                       ; $40ed: $4b
    ld [bc], a                                    ; $40ee: $02
    ld a, a                                       ; $40ef: $7f
    sub l                                         ; $40f0: $95
    ld a, l                                       ; $40f1: $7d
    sbc a                                         ; $40f2: $9f
    db $f4                                        ; $40f3: $f4
    ld a, a                                       ; $40f4: $7f
    ld h, e                                       ; $40f5: $63
    inc a                                         ; $40f6: $3c
    scf                                           ; $40f7: $37
    dec e                                         ; $40f8: $1d
    rra                                           ; $40f9: $1f
    inc e                                         ; $40fa: $1c
    rra                                           ; $40fb: $1f
    inc [hl]                                      ; $40fc: $34
    ccf                                           ; $40fd: $3f
    dec [hl]                                      ; $40fe: $35
    ccf                                           ; $40ff: $3f
    dec h                                         ; $4100: $25
    ccf                                           ; $4101: $3f
    dec [hl]                                      ; $4102: $35
    ccf                                           ; $4103: $3f
    dec e                                         ; $4104: $1d
    rra                                           ; $4105: $1f
    ld [bc], a                                    ; $4106: $02
    rrca                                          ; $4107: $0f

jr_0dd_4108:
    ld [bc], a                                    ; $4108: $02
    rlca                                          ; $4109: $07
    inc b                                         ; $410a: $04
    nop                                           ; $410b: $00
    add h                                         ; $410c: $84
    ld e, $0e                                     ; $410d: $1e $0e
    inc d                                         ; $410f: $14
    inc e                                         ; $4110: $1c
    ld [bc], a                                    ; $4111: $02
    ld e, $96                                     ; $4112: $1e $96
    ld d, $1e                                     ; $4114: $16 $1e
    rla                                           ; $4116: $17
    dec e                                         ; $4117: $1d
    inc de                                        ; $4118: $13
    rra                                           ; $4119: $1f
    inc de                                        ; $411a: $13
    rra                                           ; $411b: $1f
    ld [de], a                                    ; $411c: $12
    ld e, $12                                     ; $411d: $1e $12
    ld e, $14                                     ; $411f: $1e $14
    inc e                                         ; $4121: $1c
    inc c                                         ; $4122: $0c
    inc e                                         ; $4123: $1c
    inc d                                         ; $4124: $14
    inc e                                         ; $4125: $1c
    inc d                                         ; $4126: $14
    inc e                                         ; $4127: $1c
    ld a, [de]                                    ; $4128: $1a
    ld e, $02                                     ; $4129: $1e $02
    rla                                           ; $412b: $17
    ld [bc], a                                    ; $412c: $02
    nop                                           ; $412d: $00
    rst $38                                       ; $412e: $ff
    dec c                                         ; $412f: $0d
    inc b                                         ; $4130: $04
    ld hl, sp+$07                                 ; $4131: $f8 $07
    ld a, [c]                                     ; $4133: $f2
    ld bc, $f9e2                                  ; $4134: $01 $e2 $f9
    ld [c], a                                     ; $4137: $e2
    db $fd                                        ; $4138: $fd
    ld a, [c]                                     ; $4139: $f2
    ld sp, hl                                     ; $413a: $f9
    ld a, [c]                                     ; $413b: $f2
    db $fd                                        ; $413c: $fd
    ld [bc], a                                    ; $413d: $02
    ld d, $92                                     ; $413e: $16 $92
    ld e, a                                       ; $4140: $5f
    ld e, e                                       ; $4141: $5b
    ld [hl], l                                    ; $4142: $75
    ld l, a                                       ; $4143: $6f
    cp a                                          ; $4144: $bf
    cp d                                          ; $4145: $ba
    rst $30                                       ; $4146: $f7
    db $ec                                        ; $4147: $ec
    ld a, a                                       ; $4148: $7f
    ld e, c                                       ; $4149: $59
    rst $28                                       ; $414a: $ef
    ld hl, sp+$3f                                 ; $414b: $f8 $3f
    inc [hl]                                      ; $414d: $34
    ld l, a                                       ; $414e: $6f
    ld l, b                                       ; $414f: $68
    rla                                           ; $4150: $17
    inc d                                         ; $4151: $14
    ld [bc], a                                    ; $4152: $02
    rrca                                          ; $4153: $0f
    adc d                                         ; $4154: $8a
    inc de                                        ; $4155: $13
    ld e, $29                                     ; $4156: $1e $29
    ccf                                           ; $4158: $3f
    jr jr_0dd_417a                                ; $4159: $18 $1f

    dec de                                        ; $415b: $1b
    rra                                           ; $415c: $1f
    ld h, $3f                                     ; $415d: $26 $3f
    ld [bc], a                                    ; $415f: $02
    ld [$0c82], sp                                ; $4160: $08 $82 $0c
    inc b                                         ; $4163: $04
    ld [bc], a                                    ; $4164: $02
    ld [$0c8a], sp                                ; $4165: $08 $8a $0c
    inc b                                         ; $4168: $04
    inc c                                         ; $4169: $0c
    inc b                                         ; $416a: $04
    ld c, $0a                                     ; $416b: $0e $0a
    rrca                                          ; $416d: $0f
    ld bc, $020e                                  ; $416e: $01 $0e $02
    inc bc                                        ; $4171: $03
    inc c                                         ; $4172: $0c
    add c                                         ; $4173: $81
    inc b                                         ; $4174: $04
    ld [bc], a                                    ; $4175: $02
    ld [$0c02], sp                                ; $4176: $08 $02 $0c
    add d                                         ; $4179: $82

jr_0dd_417a:
    ld a, [bc]                                    ; $417a: $0a
    ld b, $02                                     ; $417b: $06 $02
    rrca                                          ; $417d: $0f
    add c                                         ; $417e: $81
    add hl, bc                                    ; $417f: $09
    inc bc                                        ; $4180: $03
    rrca                                          ; $4181: $0f
    sbc e                                         ; $4182: $9b
    dec l                                         ; $4183: $2d
    ccf                                           ; $4184: $3f
    ld e, a                                       ; $4185: $5f
    ld a, [hl]                                    ; $4186: $7e
    rst $08                                       ; $4187: $cf
    ld a, [c]                                     ; $4188: $f2
    ld a, a                                       ; $4189: $7f
    ld [hl], c                                    ; $418a: $71
    ld a, $3b                                     ; $418b: $3e $3b
    dec e                                         ; $418d: $1d
    rra                                           ; $418e: $1f
    inc e                                         ; $418f: $1c
    rra                                           ; $4190: $1f
    dec d                                         ; $4191: $15
    rra                                           ; $4192: $1f
    inc [hl]                                      ; $4193: $34
    ccf                                           ; $4194: $3f
    dec [hl]                                      ; $4195: $35
    ccf                                           ; $4196: $3f
    inc h                                         ; $4197: $24
    ccf                                           ; $4198: $3f
    dec [hl]                                      ; $4199: $35
    ccf                                           ; $419a: $3f
    dec e                                         ; $419b: $1d
    rra                                           ; $419c: $1f
    ld b, $03                                     ; $419d: $06 $03
    rlca                                          ; $419f: $07
    ld [bc], a                                    ; $41a0: $02
    dec b                                         ; $41a1: $05
    add d                                         ; $41a2: $82
    rrca                                          ; $41a3: $0f
    dec bc                                        ; $41a4: $0b
    inc bc                                        ; $41a5: $03
    ld c, $8f                                     ; $41a6: $0e $8f
    ld b, $0a                                     ; $41a8: $06 $0a
    ld c, $0b                                     ; $41aa: $0e $0b
    rrca                                          ; $41ac: $0f
    add hl, bc                                    ; $41ad: $09
    rrca                                          ; $41ae: $0f
    add hl, bc                                    ; $41af: $09
    rrca                                          ; $41b0: $0f
    add hl, bc                                    ; $41b1: $09
    rrca                                          ; $41b2: $0f
    add hl, bc                                    ; $41b3: $09
    rrca                                          ; $41b4: $0f
    dec bc                                        ; $41b5: $0b
    rrca                                          ; $41b6: $0f
    ld [bc], a                                    ; $41b7: $02
    ld c, $82                                     ; $41b8: $0e $82
    inc b                                         ; $41ba: $04
    inc c                                         ; $41bb: $0c
    ld [bc], a                                    ; $41bc: $02
    ld [$0c02], sp                                ; $41bd: $08 $02 $0c
    ld [bc], a                                    ; $41c0: $02
    ld [$0c02], sp                                ; $41c1: $08 $02 $0c
    rst $38                                       ; $41c4: $ff
    dec c                                         ; $41c5: $0d
    inc b                                         ; $41c6: $04
    ld hl, sp+$07                                 ; $41c7: $f8 $07
    ld a, [c]                                     ; $41c9: $f2
    ld bc, $f9e8                                  ; $41ca: $01 $e8 $f9
    add sp, $00                                   ; $41cd: $e8 $00
    ld hl, sp-$08                                 ; $41cf: $f8 $f8
    ld hl, sp+$00                                 ; $41d1: $f8 $00
    ld [bc], a                                    ; $41d3: $02
    ld a, [bc]                                    ; $41d4: $0a
    adc [hl]                                      ; $41d5: $8e
    cpl                                           ; $41d6: $2f
    dec l                                         ; $41d7: $2d
    ccf                                           ; $41d8: $3f
    dec [hl]                                      ; $41d9: $35
    ld a, a                                       ; $41da: $7f
    ld e, d                                       ; $41db: $5a
    dec sp                                        ; $41dc: $3b
    scf                                           ; $41dd: $37
    ld e, a                                       ; $41de: $5f
    ld l, l                                       ; $41df: $6d
    ccf                                           ; $41e0: $3f
    ld [hl], $35                                  ; $41e1: $36 $35
    ccf                                           ; $41e3: $3f
    ld [bc], a                                    ; $41e4: $02
    rra                                           ; $41e5: $1f
    adc [hl]                                      ; $41e6: $8e
    db $10                                        ; $41e7: $10
    rra                                           ; $41e8: $1f
    jr nz, @+$41                                  ; $41e9: $20 $3f

    ld [hl], b                                    ; $41eb: $70
    ld a, a                                       ; $41ec: $7f
    ld d, a                                       ; $41ed: $57
    ld a, a                                       ; $41ee: $7f
    ld e, b                                       ; $41ef: $58
    ld a, a                                       ; $41f0: $7f
    or b                                          ; $41f1: $b0
    rst $38                                       ; $41f2: $ff
    db $fd                                        ; $41f3: $fd
    rst $38                                       ; $41f4: $ff
    ld [bc], a                                    ; $41f5: $02
    jr nz, jr_0dd_41fa                            ; $41f6: $20 $02

    ld h, b                                       ; $41f8: $60
    add a                                         ; $41f9: $87

jr_0dd_41fa:
    ld [hl], b                                    ; $41fa: $70

jr_0dd_41fb:
    jr nc, jr_0dd_4235                            ; $41fb: $30 $38

    ld l, b                                       ; $41fd: $68
    ld [hl], b                                    ; $41fe: $70
    db $10                                        ; $41ff: $10
    ld d, b                                       ; $4200: $50
    ld [bc], a                                    ; $4201: $02
    ld [hl], b                                    ; $4202: $70
    add d                                         ; $4203: $82
    jr nc, jr_0dd_4226                            ; $4204: $30 $20

    inc bc                                        ; $4206: $03
    ld h, b                                       ; $4207: $60

jr_0dd_4208:
    sbc h                                         ; $4208: $9c
    jr nc, @+$72                                  ; $4209: $30 $70

    ld [$0478], sp                                ; $420b: $08 $78 $04
    ld a, h                                       ; $420e: $7c
    halt                                          ; $420f: $76
    ld a, [hl]                                    ; $4210: $7e
    dec l                                         ; $4211: $2d
    ld a, a                                       ; $4212: $7f
    cpl                                           ; $4213: $2f
    ld a, a                                       ; $4214: $7f
    cpl                                           ; $4215: $2f
    ld a, l                                       ; $4216: $7d
    cp $9f                                        ; $4217: $fe $9f
    db $fc                                        ; $4219: $fc
    rst $38                                       ; $421a: $ff
    db $f4                                        ; $421b: $f4
    cp a                                          ; $421c: $bf
    ld l, b                                       ; $421d: $68
    ld a, a                                       ; $421e: $7f
    jr z, jr_0dd_4260                             ; $421f: $28 $3f

    ld a, [de]                                    ; $4221: $1a
    rra                                           ; $4222: $1f
    jr jr_0dd_4244                                ; $4223: $18 $1f

    ld [bc], a                                    ; $4225: $02

jr_0dd_4226:
    rrca                                          ; $4226: $0f
    add d                                         ; $4227: $82
    ld a, [de]                                    ; $4228: $1a
    ld e, $02                                     ; $4229: $1e $02
    ld b, $0c                                     ; $422b: $06 $0c
    nop                                           ; $422d: $00
    sub b                                         ; $422e: $90
    ld d, $fe                                     ; $422f: $16 $fe
    rrca                                          ; $4231: $0f
    rst $38                                       ; $4232: $ff
    inc b                                         ; $4233: $04
    db $fc                                        ; $4234: $fc

jr_0dd_4235:
    ld l, h                                       ; $4235: $6c
    db $fc                                        ; $4236: $fc
    cp b                                          ; $4237: $b8
    ld hl, sp+$48                                 ; $4238: $f8 $48
    ld hl, sp+$74                                 ; $423a: $f8 $74
    db $fc                                        ; $423c: $fc
    ret c                                         ; $423d: $d8

    ld hl, sp+$02                                 ; $423e: $f8 $02
    ld [hl], b                                    ; $4240: $70
    ld [bc], a                                    ; $4241: $02
    ldh [$0c], a                                  ; $4242: $e0 $0c

jr_0dd_4244:
    nop                                           ; $4244: $00
    rst $38                                       ; $4245: $ff
    dec c                                         ; $4246: $0d
    inc b                                         ; $4247: $04
    ld sp, hl                                     ; $4248: $f9
    ld [$01f2], sp                                ; $4249: $08 $f2 $01
    ld [c], a                                     ; $424c: $e2
    ld a, [$00e4]                                 ; $424d: $fa $e4 $00
    ld a, [c]                                     ; $4250: $f2
    ld sp, hl                                     ; $4251: $f9
    ld a, [c]                                     ; $4252: $f2
    ld bc, $0602                                  ; $4253: $01 $02 $06
    sub h                                         ; $4256: $94
    add hl, bc                                    ; $4257: $09
    rrca                                          ; $4258: $0f
    ld [$100f], sp                                ; $4259: $08 $0f $10
    rra                                           ; $425c: $1f
    ld de, $121f                                  ; $425d: $11 $1f $12

jr_0dd_4260:
    rra                                           ; $4260: $1f
    ld sp, $503f                                  ; $4261: $31 $3f $50
    ld a, a                                       ; $4264: $7f
    adc a                                         ; $4265: $8f
    rst $38                                       ; $4266: $ff
    call nc, Call_0dd_72ff                        ; $4267: $d4 $ff $72
    ld a, a                                       ; $426a: $7f
    ld [bc], a                                    ; $426b: $02
    ccf                                           ; $426c: $3f
    adc b                                         ; $426d: $88
    ld a, a                                       ; $426e: $7f
    ld b, [hl]                                    ; $426f: $46
    ccf                                           ; $4270: $3f
    ld a, [hl+]                                   ; $4271: $2a
    ccf                                           ; $4272: $3f
    dec [hl]                                      ; $4273: $35
    ld a, d                                       ; $4274: $7a
    ld a, a                                       ; $4275: $7f
    inc b                                         ; $4276: $04
    jr nz, jr_0dd_41fb                            ; $4277: $20 $82

    db $10                                        ; $4279: $10
    jr nc, jr_0dd_427e                            ; $427a: $30 $02

    jr c, jr_0dd_4208                             ; $427c: $38 $8a

jr_0dd_427e:
    inc c                                         ; $427e: $0c
    inc a                                         ; $427f: $3c
    ld a, [de]                                    ; $4280: $1a
    ld a, $31                                     ; $4281: $3e $31
    ccf                                           ; $4283: $3f
    inc bc                                        ; $4284: $03
    ccf                                           ; $4285: $3f
    ld c, $3e                                     ; $4286: $0e $3e
    ld [bc], a                                    ; $4288: $02
    inc a                                         ; $4289: $3c
    sub l                                         ; $428a: $95
    ld a, $2a                                     ; $428b: $3e $2a
    inc a                                         ; $428d: $3c

jr_0dd_428e:
    inc d                                         ; $428e: $14
    inc a                                         ; $428f: $3c
    inc [hl]                                      ; $4290: $34
    ld a, [bc]                                    ; $4291: $0a
    ld a, $05                                     ; $4292: $3e $05
    rst $38                                       ; $4294: $ff
    dec b                                         ; $4295: $05
    rst $38                                       ; $4296: $ff
    ld d, b                                       ; $4297: $50
    ld a, [hl]                                    ; $4298: $7e
    ld d, b                                       ; $4299: $50
    ld a, [hl]                                    ; $429a: $7e

jr_0dd_429b:
    ld d, b                                       ; $429b: $50
    ld a, a                                       ; $429c: $7f
    reti                                          ; $429d: $d9


    rst $38                                       ; $429e: $ff
    cp h                                          ; $429f: $bc
    ld [bc], a                                    ; $42a0: $02
    rst $38                                       ; $42a1: $ff
    adc h                                         ; $42a2: $8c
    sbc a                                         ; $42a3: $9f
    ld a, [$f5ff]                                 ; $42a4: $fa $ff $f5
    cp a                                          ; $42a7: $bf
    ld [hl], l                                    ; $42a8: $75
    ld a, a                                       ; $42a9: $7f
    ld [hl], d                                    ; $42aa: $72
    ld a, a                                       ; $42ab: $7f
    ld h, b                                       ; $42ac: $60
    ld a, a                                       ; $42ad: $7f
    jr c, @+$05                                   ; $42ae: $38 $03

    ccf                                           ; $42b0: $3f
    add h                                         ; $42b1: $84
    jr nc, jr_0dd_42f3                            ; $42b2: $30 $3f

    db $10                                        ; $42b4: $10
    rra                                           ; $42b5: $1f
    ld [bc], a                                    ; $42b6: $02
    rrca                                          ; $42b7: $0f
    inc b                                         ; $42b8: $04
    nop                                           ; $42b9: $00
    add l                                         ; $42ba: $85
    ld c, d                                       ; $42bb: $4a
    cp $9b                                        ; $42bc: $fe $9b
    rst $38                                       ; $42be: $ff
    dec a                                         ; $42bf: $3d
    ld [bc], a                                    ; $42c0: $02
    rst $38                                       ; $42c1: $ff
    sub e                                         ; $42c2: $93
    ld sp, hl                                     ; $42c3: $f9
    cp a                                          ; $42c4: $bf
    rst $38                                       ; $42c5: $ff
    xor a                                         ; $42c6: $af
    db $fd                                        ; $42c7: $fd
    xor [hl]                                      ; $42c8: $ae
    cp $46                                        ; $42c9: $fe $46
    cp $06                                        ; $42cb: $fe $06
    cp $1c                                        ; $42cd: $fe $1c
    db $fc                                        ; $42cf: $fc
    db $e4                                        ; $42d0: $e4
    db $fc                                        ; $42d1: $fc
    inc b                                         ; $42d2: $04
    db $fc                                        ; $42d3: $fc
    ld [$02f8], sp                                ; $42d4: $08 $f8 $02
    ldh a, [rIE]                                  ; $42d7: $f0 $ff
    dec c                                         ; $42d9: $0d
    inc b                                         ; $42da: $04
    ld sp, hl                                     ; $42db: $f9
    ld [$01f2], sp                                ; $42dc: $08 $f2 $01
    ld [c], a                                     ; $42df: $e2
    ld a, [$00e4]                                 ; $42e0: $fa $e4 $00
    ld a, [c]                                     ; $42e3: $f2
    ld sp, hl                                     ; $42e4: $f9
    ld a, [c]                                     ; $42e5: $f2
    ld bc, $0602                                  ; $42e6: $01 $02 $06
    sub h                                         ; $42e9: $94
    add hl, bc                                    ; $42ea: $09
    rrca                                          ; $42eb: $0f
    ld [$100f], sp                                ; $42ec: $08 $0f $10
    rra                                           ; $42ef: $1f
    ld de, $121f                                  ; $42f0: $11 $1f $12

jr_0dd_42f3:
    rra                                           ; $42f3: $1f
    ld sp, $503f                                  ; $42f4: $31 $3f $50
    ld a, a                                       ; $42f7: $7f
    adc a                                         ; $42f8: $8f
    rst $38                                       ; $42f9: $ff
    call nc, Call_0dd_72ff                        ; $42fa: $d4 $ff $72
    ld a, a                                       ; $42fd: $7f
    ld [bc], a                                    ; $42fe: $02
    ccf                                           ; $42ff: $3f
    adc b                                         ; $4300: $88
    ld a, a                                       ; $4301: $7f
    ld b, [hl]                                    ; $4302: $46
    ccf                                           ; $4303: $3f
    ld a, [hl+]                                   ; $4304: $2a
    ccf                                           ; $4305: $3f
    dec [hl]                                      ; $4306: $35
    ld a, d                                       ; $4307: $7a
    ld a, a                                       ; $4308: $7f
    inc b                                         ; $4309: $04
    jr nz, jr_0dd_428e                            ; $430a: $20 $82

    db $10                                        ; $430c: $10
    jr nc, jr_0dd_4311                            ; $430d: $30 $02

    jr c, jr_0dd_429b                             ; $430f: $38 $8a

jr_0dd_4311:
    inc c                                         ; $4311: $0c
    inc a                                         ; $4312: $3c
    ld a, [de]                                    ; $4313: $1a
    ld a, $31                                     ; $4314: $3e $31
    ccf                                           ; $4316: $3f
    inc bc                                        ; $4317: $03
    ccf                                           ; $4318: $3f
    ld c, $3e                                     ; $4319: $0e $3e
    ld [bc], a                                    ; $431b: $02
    inc a                                         ; $431c: $3c
    and e                                         ; $431d: $a3
    ld a, $2a                                     ; $431e: $3e $2a
    inc a                                         ; $4320: $3c
    inc d                                         ; $4321: $14
    inc a                                         ; $4322: $3c
    inc [hl]                                      ; $4323: $34
    ld a, [bc]                                    ; $4324: $0a
    ld a, $05                                     ; $4325: $3e $05
    rst $38                                       ; $4327: $ff
    dec b                                         ; $4328: $05
    rst $38                                       ; $4329: $ff
    jr nc, jr_0dd_436a                            ; $432a: $30 $3e

jr_0dd_432c:
    ld d, b                                       ; $432c: $50
    ld a, [hl]                                    ; $432d: $7e
    ld d, b                                       ; $432e: $50
    ld a, a                                       ; $432f: $7f
    cp c                                          ; $4330: $b9
    rst $38                                       ; $4331: $ff
    sbc h                                         ; $4332: $9c
    rst $38                                       ; $4333: $ff
    rst $28                                       ; $4334: $ef
    sbc a                                         ; $4335: $9f
    ld a, [$759f]                                 ; $4336: $fa $9f $75
    ld a, a                                       ; $4339: $7f
    push de                                       ; $433a: $d5
    cp a                                          ; $433b: $bf
    ld [c], a                                     ; $433c: $e2
    cp a                                          ; $433d: $bf
    ld h, b                                       ; $433e: $60
    ld a, a                                       ; $433f: $7f
    jr nc, jr_0dd_4345                            ; $4340: $30 $03

    ccf                                           ; $4342: $3f
    add h                                         ; $4343: $84
    db $10                                        ; $4344: $10

jr_0dd_4345:
    rra                                           ; $4345: $1f
    inc e                                         ; $4346: $1c
    rra                                           ; $4347: $1f
    ld [bc], a                                    ; $4348: $02
    inc bc                                        ; $4349: $03
    inc b                                         ; $434a: $04
    nop                                           ; $434b: $00
    sbc d                                         ; $434c: $9a
    ld c, c                                       ; $434d: $49
    rst $38                                       ; $434e: $ff
    sbc a                                         ; $434f: $9f
    rst $38                                       ; $4350: $ff
    ccf                                           ; $4351: $3f
    db $fd                                        ; $4352: $fd
    ei                                            ; $4353: $fb
    db $fd                                        ; $4354: $fd
    cp [hl]                                       ; $4355: $be
    cp $ae                                        ; $4356: $fe $ae
    cp $ae                                        ; $4358: $fe $ae
    cp $4e                                        ; $435a: $fe $4e
    cp $06                                        ; $435c: $fe $06
    cp $7c                                        ; $435e: $fe $7c
    db $fc                                        ; $4360: $fc
    add h                                         ; $4361: $84
    db $fc                                        ; $4362: $fc
    inc b                                         ; $4363: $04
    db $fc                                        ; $4364: $fc
    inc b                                         ; $4365: $04
    db $fc                                        ; $4366: $fc
    ld [bc], a                                    ; $4367: $02
    ld hl, sp-$01                                 ; $4368: $f8 $ff

jr_0dd_436a:
    dec c                                         ; $436a: $0d
    inc b                                         ; $436b: $04
    ld sp, hl                                     ; $436c: $f9
    ld [$01f2], sp                                ; $436d: $08 $f2 $01
    db $e3                                        ; $4370: $e3
    ld a, [$00e5]                                 ; $4371: $fa $e5 $00
    di                                            ; $4374: $f3
    ld sp, hl                                     ; $4375: $f9
    di                                            ; $4376: $f3
    ld bc, $0602                                  ; $4377: $01 $02 $06
    sub h                                         ; $437a: $94
    add hl, bc                                    ; $437b: $09
    rrca                                          ; $437c: $0f
    ld [$100f], sp                                ; $437d: $08 $0f $10
    rra                                           ; $4380: $1f
    ld de, $121f                                  ; $4381: $11 $1f $12
    rra                                           ; $4384: $1f
    ld sp, $503f                                  ; $4385: $31 $3f $50
    ld a, a                                       ; $4388: $7f
    adc a                                         ; $4389: $8f
    rst $38                                       ; $438a: $ff
    call nc, Call_0dd_72ff                        ; $438b: $d4 $ff $72
    ld a, a                                       ; $438e: $7f
    ld [bc], a                                    ; $438f: $02
    ccf                                           ; $4390: $3f
    adc b                                         ; $4391: $88
    ld a, a                                       ; $4392: $7f
    ld c, d                                       ; $4393: $4a
    ccf                                           ; $4394: $3f
    add hl, hl                                    ; $4395: $29
    ccf                                           ; $4396: $3f
    ld [hl], $7b                                  ; $4397: $36 $7b
    ld a, a                                       ; $4399: $7f
    inc b                                         ; $439a: $04
    jr nz, @-$7c                                  ; $439b: $20 $82

    db $10                                        ; $439d: $10
    jr nc, jr_0dd_43a2                            ; $439e: $30 $02

    jr c, jr_0dd_432c                             ; $43a0: $38 $8a

jr_0dd_43a2:
    inc c                                         ; $43a2: $0c
    inc a                                         ; $43a3: $3c
    ld a, [de]                                    ; $43a4: $1a
    ld a, $31                                     ; $43a5: $3e $31
    ccf                                           ; $43a7: $3f
    inc bc                                        ; $43a8: $03
    ccf                                           ; $43a9: $3f
    ld c, $3e                                     ; $43aa: $0e $3e
    ld [bc], a                                    ; $43ac: $02
    inc a                                         ; $43ad: $3c
    and c                                         ; $43ae: $a1

jr_0dd_43af:
    ld a, $32                                     ; $43af: $3e $32
    inc a                                         ; $43b1: $3c
    inc d                                         ; $43b2: $14
    inc a                                         ; $43b3: $3c
    inc l                                         ; $43b4: $2c
    ld a, [de]                                    ; $43b5: $1a
    ld a, $05                                     ; $43b6: $3e $05
    rst $38                                       ; $43b8: $ff
    dec b                                         ; $43b9: $05
    rst $38                                       ; $43ba: $ff
    jr nc, jr_0dd_43fb                            ; $43bb: $30 $3e

    ld d, b                                       ; $43bd: $50
    ld a, [hl]                                    ; $43be: $7e
    ld e, b                                       ; $43bf: $58
    ld a, a                                       ; $43c0: $7f
    cp c                                          ; $43c1: $b9
    rst $38                                       ; $43c2: $ff
    sbc h                                         ; $43c3: $9c
    rst $38                                       ; $43c4: $ff
    rst $18                                       ; $43c5: $df
    cp a                                          ; $43c6: $bf
    ld a, [$f59f]                                 ; $43c7: $fa $9f $f5
    rst $38                                       ; $43ca: $ff
    jp c, Jump_0dd_64bf                           ; $43cb: $da $bf $64

    ld a, a                                       ; $43ce: $7f
    jr nc, @+$05                                  ; $43cf: $30 $03

    ccf                                           ; $43d1: $3f
    add h                                         ; $43d2: $84
    jr nc, jr_0dd_4414                            ; $43d3: $30 $3f

    jr jr_0dd_43f6                                ; $43d5: $18 $1f

    ld [bc], a                                    ; $43d7: $02
    rlca                                          ; $43d8: $07
    ld b, $00                                     ; $43d9: $06 $00
    add l                                         ; $43db: $85
    ld e, d                                       ; $43dc: $5a
    cp $9d                                        ; $43dd: $fe $9d
    rst $38                                       ; $43df: $ff
    ccf                                           ; $43e0: $3f
    ld [bc], a                                    ; $43e1: $02
    rst $38                                       ; $43e2: $ff
    sub c                                         ; $43e3: $91
    db $fd                                        ; $43e4: $fd
    cp e                                          ; $43e5: $bb
    db $fd                                        ; $43e6: $fd
    sbc $fe                                       ; $43e7: $de $fe
    ld e, [hl]                                    ; $43e9: $5e
    cp $26                                        ; $43ea: $fe $26
    cp $3c                                        ; $43ec: $fe $3c
    db $fc                                        ; $43ee: $fc
    call nz, $04fc                                ; $43ef: $c4 $fc $04
    db $fc                                        ; $43f2: $fc
    ld [$02f8], sp                                ; $43f3: $08 $f8 $02

jr_0dd_43f6:
    ldh a, [rSC]                                  ; $43f6: $f0 $02
    nop                                           ; $43f8: $00
    rst $38                                       ; $43f9: $ff
    dec c                                         ; $43fa: $0d

jr_0dd_43fb:
    inc b                                         ; $43fb: $04
    ld sp, hl                                     ; $43fc: $f9
    ld [$01f2], sp                                ; $43fd: $08 $f2 $01
    ld [c], a                                     ; $4400: $e2
    ld a, [$00e4]                                 ; $4401: $fa $e4 $00
    ld a, [c]                                     ; $4404: $f2
    ld sp, hl                                     ; $4405: $f9
    ld a, [c]                                     ; $4406: $f2
    ld bc, $0602                                  ; $4407: $01 $02 $06
    sub h                                         ; $440a: $94
    add hl, bc                                    ; $440b: $09
    rrca                                          ; $440c: $0f
    ld [$100f], sp                                ; $440d: $08 $0f $10
    rra                                           ; $4410: $1f
    ld de, $121f                                  ; $4411: $11 $1f $12

jr_0dd_4414:
    rra                                           ; $4414: $1f
    ld sp, $503f                                  ; $4415: $31 $3f $50
    ld a, a                                       ; $4418: $7f
    adc a                                         ; $4419: $8f
    rst $38                                       ; $441a: $ff
    call nc, Call_0dd_72ff                        ; $441b: $d4 $ff $72
    ld a, a                                       ; $441e: $7f
    ld [bc], a                                    ; $441f: $02
    ccf                                           ; $4420: $3f
    adc b                                         ; $4421: $88
    ld a, a                                       ; $4422: $7f
    ld b, [hl]                                    ; $4423: $46
    ccf                                           ; $4424: $3f
    ld a, [hl+]                                   ; $4425: $2a
    ccf                                           ; $4426: $3f
    dec [hl]                                      ; $4427: $35
    ld a, d                                       ; $4428: $7a
    ld a, a                                       ; $4429: $7f
    inc b                                         ; $442a: $04
    jr nz, jr_0dd_43af                            ; $442b: $20 $82

    db $10                                        ; $442d: $10
    jr nc, jr_0dd_4432                            ; $442e: $30 $02

    jr c, @-$74                                   ; $4430: $38 $8a

jr_0dd_4432:
    inc c                                         ; $4432: $0c
    inc a                                         ; $4433: $3c
    ld a, [de]                                    ; $4434: $1a
    ld a, $31                                     ; $4435: $3e $31
    ccf                                           ; $4437: $3f
    inc bc                                        ; $4438: $03
    ccf                                           ; $4439: $3f
    ld c, $3e                                     ; $443a: $0e $3e
    ld [bc], a                                    ; $443c: $02
    inc a                                         ; $443d: $3c
    sub l                                         ; $443e: $95
    ld a, $2a                                     ; $443f: $3e $2a
    inc a                                         ; $4441: $3c

jr_0dd_4442:
    inc d                                         ; $4442: $14
    inc a                                         ; $4443: $3c
    inc [hl]                                      ; $4444: $34
    ld a, [bc]                                    ; $4445: $0a
    ld a, $05                                     ; $4446: $3e $05
    rst $38                                       ; $4448: $ff
    dec b                                         ; $4449: $05
    rst $38                                       ; $444a: $ff
    ld d, b                                       ; $444b: $50
    ld a, [hl]                                    ; $444c: $7e
    ld d, b                                       ; $444d: $50
    ld a, [hl]                                    ; $444e: $7e

jr_0dd_444f:
    ld d, b                                       ; $444f: $50
    ld a, a                                       ; $4450: $7f
    reti                                          ; $4451: $d9


    rst $38                                       ; $4452: $ff
    cp h                                          ; $4453: $bc
    ld [bc], a                                    ; $4454: $02
    rst $38                                       ; $4455: $ff
    adc h                                         ; $4456: $8c
    sbc a                                         ; $4457: $9f
    ld a, [$f2ff]                                 ; $4458: $fa $ff $f2
    cp a                                          ; $445b: $bf
    ld [hl], l                                    ; $445c: $75
    ld a, a                                       ; $445d: $7f
    ld [hl], d                                    ; $445e: $72
    ld a, a                                       ; $445f: $7f
    ld h, b                                       ; $4460: $60
    ld a, a                                       ; $4461: $7f
    jr c, @+$05                                   ; $4462: $38 $03

    ccf                                           ; $4464: $3f
    add h                                         ; $4465: $84
    jr nc, jr_0dd_44a7                            ; $4466: $30 $3f

    db $10                                        ; $4468: $10
    rra                                           ; $4469: $1f
    ld [bc], a                                    ; $446a: $02
    rrca                                          ; $446b: $0f
    inc b                                         ; $446c: $04
    nop                                           ; $446d: $00
    add l                                         ; $446e: $85
    ld a, [bc]                                    ; $446f: $0a
    cp $db                                        ; $4470: $fe $db
    rst $38                                       ; $4472: $ff
    dec a                                         ; $4473: $3d
    ld [bc], a                                    ; $4474: $02
    rst $38                                       ; $4475: $ff
    sub e                                         ; $4476: $93
    ld sp, hl                                     ; $4477: $f9
    cp a                                          ; $4478: $bf
    rst $38                                       ; $4479: $ff
    xor a                                         ; $447a: $af
    db $fd                                        ; $447b: $fd
    xor [hl]                                      ; $447c: $ae
    cp $a6                                        ; $447d: $fe $a6
    cp $46                                        ; $447f: $fe $46
    cp $1c                                        ; $4481: $fe $1c
    db $fc                                        ; $4483: $fc
    db $e4                                        ; $4484: $e4
    db $fc                                        ; $4485: $fc
    inc b                                         ; $4486: $04
    db $fc                                        ; $4487: $fc
    jr @-$06                                      ; $4488: $18 $f8

    ld [bc], a                                    ; $448a: $02
    ldh [rIE], a                                  ; $448b: $e0 $ff
    dec c                                         ; $448d: $0d
    inc b                                         ; $448e: $04
    ld sp, hl                                     ; $448f: $f9
    ld [$01f2], sp                                ; $4490: $08 $f2 $01
    ld [c], a                                     ; $4493: $e2
    ld a, [$00e4]                                 ; $4494: $fa $e4 $00
    ld a, [c]                                     ; $4497: $f2
    ld sp, hl                                     ; $4498: $f9
    ld a, [c]                                     ; $4499: $f2
    ld bc, $0602                                  ; $449a: $01 $02 $06
    sub h                                         ; $449d: $94
    add hl, bc                                    ; $449e: $09
    rrca                                          ; $449f: $0f
    ld [$100f], sp                                ; $44a0: $08 $0f $10
    rra                                           ; $44a3: $1f
    ld de, $121f                                  ; $44a4: $11 $1f $12

jr_0dd_44a7:
    rra                                           ; $44a7: $1f
    ld sp, $503f                                  ; $44a8: $31 $3f $50
    ld a, a                                       ; $44ab: $7f
    adc a                                         ; $44ac: $8f
    rst $38                                       ; $44ad: $ff
    call nc, Call_0dd_72ff                        ; $44ae: $d4 $ff $72
    ld a, a                                       ; $44b1: $7f
    ld [bc], a                                    ; $44b2: $02
    ccf                                           ; $44b3: $3f
    adc b                                         ; $44b4: $88
    ld a, a                                       ; $44b5: $7f
    ld b, [hl]                                    ; $44b6: $46
    ccf                                           ; $44b7: $3f
    ld a, [hl+]                                   ; $44b8: $2a
    ccf                                           ; $44b9: $3f
    dec [hl]                                      ; $44ba: $35
    ld a, d                                       ; $44bb: $7a
    ld a, a                                       ; $44bc: $7f
    inc b                                         ; $44bd: $04
    jr nz, jr_0dd_4442                            ; $44be: $20 $82

    db $10                                        ; $44c0: $10
    jr nc, jr_0dd_44c5                            ; $44c1: $30 $02

    jr c, jr_0dd_444f                             ; $44c3: $38 $8a

jr_0dd_44c5:
    inc c                                         ; $44c5: $0c
    inc a                                         ; $44c6: $3c
    ld a, [de]                                    ; $44c7: $1a
    ld a, $31                                     ; $44c8: $3e $31
    ccf                                           ; $44ca: $3f
    inc bc                                        ; $44cb: $03
    ccf                                           ; $44cc: $3f
    ld c, $3e                                     ; $44cd: $0e $3e
    ld [bc], a                                    ; $44cf: $02
    inc a                                         ; $44d0: $3c
    xor d                                         ; $44d1: $aa
    ld a, $2a                                     ; $44d2: $3e $2a

jr_0dd_44d4:
    inc a                                         ; $44d4: $3c
    inc d                                         ; $44d5: $14
    inc a                                         ; $44d6: $3c
    inc [hl]                                      ; $44d7: $34
    ld a, [bc]                                    ; $44d8: $0a
    ld a, $06                                     ; $44d9: $3e $06
    cp $05                                        ; $44db: $fe $05
    rst $38                                       ; $44dd: $ff
    ld d, b                                       ; $44de: $50
    ld a, [hl]                                    ; $44df: $7e
    ld d, b                                       ; $44e0: $50

jr_0dd_44e1:
    ld a, [hl]                                    ; $44e1: $7e
    sub d                                         ; $44e2: $92
    rst $38                                       ; $44e3: $ff
    ld sp, hl                                     ; $44e4: $f9
    rst $38                                       ; $44e5: $ff
    db $fc                                        ; $44e6: $fc
    cp a                                          ; $44e7: $bf
    rst $18                                       ; $44e8: $df
    cp a                                          ; $44e9: $bf
    ld a, d                                       ; $44ea: $7a
    ld a, a                                       ; $44eb: $7f
    ld [hl], l                                    ; $44ec: $75
    ld a, a                                       ; $44ed: $7f
    ld [hl], l                                    ; $44ee: $75
    ld a, a                                       ; $44ef: $7f
    ld [hl], d                                    ; $44f0: $72
    ld a, a                                       ; $44f1: $7f
    ld [hl], b                                    ; $44f2: $70
    ld a, a                                       ; $44f3: $7f
    ld a, $3f                                     ; $44f4: $3e $3f
    dec sp                                        ; $44f6: $3b
    ccf                                           ; $44f7: $3f
    jr nc, jr_0dd_4539                            ; $44f8: $30 $3f

    jr nc, @+$41                                  ; $44fa: $30 $3f

    ld [bc], a                                    ; $44fc: $02
    rra                                           ; $44fd: $1f
    inc b                                         ; $44fe: $04
    nop                                           ; $44ff: $00
    add l                                         ; $4500: $85
    ld a, [bc]                                    ; $4501: $0a
    cp $9d                                        ; $4502: $fe $9d
    rst $38                                       ; $4504: $ff
    add hl, sp                                    ; $4505: $39
    ld [bc], a                                    ; $4506: $02
    rst $38                                       ; $4507: $ff
    sub e                                         ; $4508: $93
    ld sp, hl                                     ; $4509: $f9
    cp a                                          ; $450a: $bf
    ld sp, hl                                     ; $450b: $f9
    xor [hl]                                      ; $450c: $ae
    cp $ab                                        ; $450d: $fe $ab
    db $fd                                        ; $450f: $fd
    ld b, a                                       ; $4510: $47
    db $fd                                        ; $4511: $fd
    ld b, $fe                                     ; $4512: $06 $fe
    inc c                                         ; $4514: $0c
    db $fc                                        ; $4515: $fc
    db $f4                                        ; $4516: $f4
    db $fc                                        ; $4517: $fc
    ld [$38f8], sp                                ; $4518: $08 $f8 $38
    ld hl, sp+$02                                 ; $451b: $f8 $02
    ret nz                                        ; $451d: $c0

    rst $38                                       ; $451e: $ff
    dec c                                         ; $451f: $0d
    inc b                                         ; $4520: $04
    ld sp, hl                                     ; $4521: $f9
    ld [$01f2], sp                                ; $4522: $08 $f2 $01
    db $e3                                        ; $4525: $e3
    ld a, [$00e5]                                 ; $4526: $fa $e5 $00
    di                                            ; $4529: $f3
    ld sp, hl                                     ; $452a: $f9
    di                                            ; $452b: $f3
    ld bc, $0602                                  ; $452c: $01 $02 $06
    sub h                                         ; $452f: $94
    add hl, bc                                    ; $4530: $09
    rrca                                          ; $4531: $0f
    ld [$100f], sp                                ; $4532: $08 $0f $10
    rra                                           ; $4535: $1f
    ld de, $121f                                  ; $4536: $11 $1f $12

jr_0dd_4539:
    rra                                           ; $4539: $1f
    ld sp, $503f                                  ; $453a: $31 $3f $50
    ld a, a                                       ; $453d: $7f
    adc a                                         ; $453e: $8f
    rst $38                                       ; $453f: $ff
    call nc, Call_0dd_72ff                        ; $4540: $d4 $ff $72
    ld a, a                                       ; $4543: $7f
    ld [bc], a                                    ; $4544: $02
    ccf                                           ; $4545: $3f
    adc b                                         ; $4546: $88
    ld a, a                                       ; $4547: $7f
    ld c, d                                       ; $4548: $4a
    ccf                                           ; $4549: $3f
    add hl, hl                                    ; $454a: $29
    ccf                                           ; $454b: $3f
    ld [hl], $7b                                  ; $454c: $36 $7b
    ld a, a                                       ; $454e: $7f
    inc b                                         ; $454f: $04
    jr nz, jr_0dd_44d4                            ; $4550: $20 $82

    db $10                                        ; $4552: $10
    jr nc, jr_0dd_4557                            ; $4553: $30 $02

    jr c, jr_0dd_44e1                             ; $4555: $38 $8a

jr_0dd_4557:
    inc c                                         ; $4557: $0c
    inc a                                         ; $4558: $3c
    ld a, [de]                                    ; $4559: $1a
    ld a, $31                                     ; $455a: $3e $31
    ccf                                           ; $455c: $3f
    inc bc                                        ; $455d: $03
    ccf                                           ; $455e: $3f
    ld c, $3e                                     ; $455f: $0e $3e
    ld [bc], a                                    ; $4561: $02
    inc a                                         ; $4562: $3c
    sub l                                         ; $4563: $95

jr_0dd_4564:
    ld a, $32                                     ; $4564: $3e $32
    inc a                                         ; $4566: $3c
    inc d                                         ; $4567: $14
    inc a                                         ; $4568: $3c
    inc l                                         ; $4569: $2c
    ld a, [de]                                    ; $456a: $1a
    ld a, $06                                     ; $456b: $3e $06
    cp $05                                        ; $456d: $fe $05
    rst $38                                       ; $456f: $ff
    ld d, b                                       ; $4570: $50

jr_0dd_4571:
    ld a, [hl]                                    ; $4571: $7e
    ld d, b                                       ; $4572: $50
    ld a, [hl]                                    ; $4573: $7e
    ld e, d                                       ; $4574: $5a
    ld a, a                                       ; $4575: $7f
    cp c                                          ; $4576: $b9
    rst $38                                       ; $4577: $ff
    db $fc                                        ; $4578: $fc
    ld [bc], a                                    ; $4579: $02
    rst $38                                       ; $457a: $ff
    adc d                                         ; $457b: $8a
    cp a                                          ; $457c: $bf
    jp c, Jump_0dd_75bf                           ; $457d: $da $bf $75

    ld a, a                                       ; $4580: $7f
    ld a, d                                       ; $4581: $7a
    ld a, a                                       ; $4582: $7f
    ld [hl], h                                    ; $4583: $74
    ld a, a                                       ; $4584: $7f
    inc a                                         ; $4585: $3c
    inc bc                                        ; $4586: $03
    ccf                                           ; $4587: $3f
    add h                                         ; $4588: $84
    jr nc, jr_0dd_45ca                            ; $4589: $30 $3f

    db $10                                        ; $458b: $10
    rra                                           ; $458c: $1f
    ld [bc], a                                    ; $458d: $02
    rrca                                          ; $458e: $0f
    ld b, $00                                     ; $458f: $06 $00
    sbc b                                         ; $4591: $98
    ld a, [de]                                    ; $4592: $1a
    cp $9d                                        ; $4593: $fe $9d
    rst $38                                       ; $4595: $ff
    add hl, sp                                    ; $4596: $39
    rst $38                                       ; $4597: $ff
    ei                                            ; $4598: $fb
    db $fd                                        ; $4599: $fd
    cp a                                          ; $459a: $bf
    ld sp, hl                                     ; $459b: $f9
    rst $18                                       ; $459c: $df
    rst $38                                       ; $459d: $ff
    ld e, e                                       ; $459e: $5b
    db $fd                                        ; $459f: $fd
    ld h, $fe                                     ; $45a0: $26 $fe

jr_0dd_45a2:
    inc c                                         ; $45a2: $0c
    db $fc                                        ; $45a3: $fc
    db $f4                                        ; $45a4: $f4
    db $fc                                        ; $45a5: $fc
    inc b                                         ; $45a6: $04
    db $fc                                        ; $45a7: $fc
    jr jr_0dd_45a2                                ; $45a8: $18 $f8

    ld [bc], a                                    ; $45aa: $02
    ldh [rSC], a                                  ; $45ab: $e0 $02
    nop                                           ; $45ad: $00
    rst $38                                       ; $45ae: $ff
    dec c                                         ; $45af: $0d
    inc b                                         ; $45b0: $04
    ld sp, hl                                     ; $45b1: $f9
    ld [$01f2], sp                                ; $45b2: $08 $f2 $01
    ld [c], a                                     ; $45b5: $e2
    ld a, [$00e4]                                 ; $45b6: $fa $e4 $00
    ld a, [c]                                     ; $45b9: $f2
    ld sp, hl                                     ; $45ba: $f9
    ld a, [c]                                     ; $45bb: $f2
    ld bc, $0602                                  ; $45bc: $01 $02 $06
    sub h                                         ; $45bf: $94
    add hl, bc                                    ; $45c0: $09
    rrca                                          ; $45c1: $0f
    ld [$100f], sp                                ; $45c2: $08 $0f $10
    rra                                           ; $45c5: $1f
    ld de, $121f                                  ; $45c6: $11 $1f $12
    rra                                           ; $45c9: $1f

jr_0dd_45ca:
    ld sp, $503f                                  ; $45ca: $31 $3f $50
    ld a, a                                       ; $45cd: $7f
    adc a                                         ; $45ce: $8f
    rst $38                                       ; $45cf: $ff
    call nc, Call_0dd_72ff                        ; $45d0: $d4 $ff $72
    ld a, a                                       ; $45d3: $7f
    ld [bc], a                                    ; $45d4: $02
    ccf                                           ; $45d5: $3f
    adc b                                         ; $45d6: $88
    ld a, a                                       ; $45d7: $7f
    ld b, [hl]                                    ; $45d8: $46
    ccf                                           ; $45d9: $3f
    ld a, [hl+]                                   ; $45da: $2a
    ccf                                           ; $45db: $3f
    dec [hl]                                      ; $45dc: $35
    ld a, d                                       ; $45dd: $7a
    ld a, a                                       ; $45de: $7f
    inc b                                         ; $45df: $04
    jr nz, jr_0dd_4564                            ; $45e0: $20 $82

    db $10                                        ; $45e2: $10
    jr nc, jr_0dd_45e7                            ; $45e3: $30 $02

    jr c, jr_0dd_4571                             ; $45e5: $38 $8a

jr_0dd_45e7:
    inc c                                         ; $45e7: $0c
    inc a                                         ; $45e8: $3c
    ld a, [de]                                    ; $45e9: $1a
    ld a, $31                                     ; $45ea: $3e $31
    ccf                                           ; $45ec: $3f
    inc bc                                        ; $45ed: $03
    ccf                                           ; $45ee: $3f
    ld c, $3e                                     ; $45ef: $0e $3e
    ld [bc], a                                    ; $45f1: $02
    inc a                                         ; $45f2: $3c
    sub l                                         ; $45f3: $95
    ld a, $2a                                     ; $45f4: $3e $2a

jr_0dd_45f6:
    inc a                                         ; $45f6: $3c
    inc d                                         ; $45f7: $14
    inc a                                         ; $45f8: $3c
    inc [hl]                                      ; $45f9: $34
    ld a, [bc]                                    ; $45fa: $0a
    ld a, $05                                     ; $45fb: $3e $05
    rst $38                                       ; $45fd: $ff
    dec b                                         ; $45fe: $05
    rst $38                                       ; $45ff: $ff
    ld d, b                                       ; $4600: $50
    ld a, [hl]                                    ; $4601: $7e
    ld d, b                                       ; $4602: $50
    ld a, [hl]                                    ; $4603: $7e
    ld d, b                                       ; $4604: $50
    ld a, a                                       ; $4605: $7f
    db $db                                        ; $4606: $db
    rst $38                                       ; $4607: $ff
    cp h                                          ; $4608: $bc
    ld [bc], a                                    ; $4609: $02
    rst $38                                       ; $460a: $ff
    adc h                                         ; $460b: $8c
    sbc a                                         ; $460c: $9f
    ld a, [$f2ff]                                 ; $460d: $fa $ff $f2
    cp a                                          ; $4610: $bf
    ld [hl], l                                    ; $4611: $75
    ld a, a                                       ; $4612: $7f
    ld [hl], d                                    ; $4613: $72
    ld a, a                                       ; $4614: $7f
    ld h, b                                       ; $4615: $60
    ld a, a                                       ; $4616: $7f
    jr c, @+$05                                   ; $4617: $38 $03

    ccf                                           ; $4619: $3f

jr_0dd_461a:
    add h                                         ; $461a: $84
    jr nc, jr_0dd_465c                            ; $461b: $30 $3f

    jr @+$21                                      ; $461d: $18 $1f

    ld [bc], a                                    ; $461f: $02
    rlca                                          ; $4620: $07
    inc b                                         ; $4621: $04
    nop                                           ; $4622: $00
    add l                                         ; $4623: $85
    ld a, [bc]                                    ; $4624: $0a
    cp $9b                                        ; $4625: $fe $9b
    rst $38                                       ; $4627: $ff
    dec a                                         ; $4628: $3d
    ld [bc], a                                    ; $4629: $02
    rst $38                                       ; $462a: $ff
    sub e                                         ; $462b: $93
    ld sp, hl                                     ; $462c: $f9
    cp a                                          ; $462d: $bf
    rst $38                                       ; $462e: $ff
    xor a                                         ; $462f: $af
    db $fd                                        ; $4630: $fd
    xor [hl]                                      ; $4631: $ae
    cp $a6                                        ; $4632: $fe $a6
    cp $46                                        ; $4634: $fe $46
    cp $1c                                        ; $4636: $fe $1c
    db $fc                                        ; $4638: $fc
    db $e4                                        ; $4639: $e4
    db $fc                                        ; $463a: $fc
    inc b                                         ; $463b: $04
    db $fc                                        ; $463c: $fc
    ld [$02f8], sp                                ; $463d: $08 $f8 $02
    ldh a, [rIE]                                  ; $4640: $f0 $ff
    dec c                                         ; $4642: $0d
    inc b                                         ; $4643: $04
    ld sp, hl                                     ; $4644: $f9
    ld [$01f2], sp                                ; $4645: $08 $f2 $01
    ld [c], a                                     ; $4648: $e2
    ld a, [$00e2]                                 ; $4649: $fa $e2 $00
    ld a, [c]                                     ; $464c: $f2
    ld sp, hl                                     ; $464d: $f9
    ld a, [c]                                     ; $464e: $f2
    ld bc, $0102                                  ; $464f: $01 $02 $01
    adc b                                         ; $4652: $88
    ld [bc], a                                    ; $4653: $02
    inc bc                                        ; $4654: $03
    inc b                                         ; $4655: $04
    rlca                                          ; $4656: $07
    inc b                                         ; $4657: $04
    rlca                                          ; $4658: $07
    ld a, [bc]                                    ; $4659: $0a
    rrca                                          ; $465a: $0f
    ld [bc], a                                    ; $465b: $02

jr_0dd_465c:
    rra                                           ; $465c: $1f
    sub h                                         ; $465d: $94
    jr nc, @+$41                                  ; $465e: $30 $3f

    ld c, a                                       ; $4660: $4f
    ld a, a                                       ; $4661: $7f
    cp a                                          ; $4662: $bf
    add sp, -$05                                  ; $4663: $e8 $fb
    call c, Call_0dd_547f                         ; $4665: $dc $7f $54
    ccf                                           ; $4668: $3f
    ld [hl-], a                                   ; $4669: $32
    ld a, a                                       ; $466a: $7f
    ld d, e                                       ; $466b: $53
    ccf                                           ; $466c: $3f
    jr c, jr_0dd_46a6                             ; $466d: $38 $37

    ccf                                           ; $466f: $3f
    ld [hl], a                                    ; $4670: $77
    ld a, h                                       ; $4671: $7c
    ld [bc], a                                    ; $4672: $02
    jr nz, jr_0dd_45f6                            ; $4673: $20 $81

    db $10                                        ; $4675: $10
    inc bc                                        ; $4676: $03
    jr nc, @-$7b                                  ; $4677: $30 $83

    jr z, jr_0dd_46b3                             ; $4679: $28 $38

    jr jr_0dd_4680                                ; $467b: $18 $03

    jr c, jr_0dd_461a                             ; $467d: $38 $9b

    inc c                                         ; $467f: $0c

jr_0dd_4680:
    inc a                                         ; $4680: $3c
    ld [hl-], a                                   ; $4681: $32
    ld a, $3d                                     ; $4682: $3e $3d
    rla                                           ; $4684: $17
    rra                                           ; $4685: $1f
    ccf                                           ; $4686: $3f
    ld a, $0a                                     ; $4687: $3e $0a
    inc a                                         ; $4689: $3c
    inc l                                         ; $468a: $2c

jr_0dd_468b:
    ld a, $0a                                     ; $468b: $3e $0a
    inc a                                         ; $468d: $3c
    inc e                                         ; $468e: $1c
    inc l                                         ; $468f: $2c
    inc a                                         ; $4690: $3c

jr_0dd_4691:
    ld a, [hl+]                                   ; $4691: $2a
    ld a, $4d                                     ; $4692: $3e $4d
    ld a, a                                       ; $4694: $7f
    ld d, d                                       ; $4695: $52
    ld a, a                                       ; $4696: $7f
    sub h                                         ; $4697: $94
    rst $38                                       ; $4698: $ff
    db $fc                                        ; $4699: $fc
    ld [bc], a                                    ; $469a: $02
    rst $38                                       ; $469b: $ff
    sub l                                         ; $469c: $95
    cp a                                          ; $469d: $bf
    xor $9f                                       ; $469e: $ee $9f
    ld a, e                                       ; $46a0: $7b
    ld a, a                                       ; $46a1: $7f
    jp c, Jump_0dd_74bf                           ; $46a2: $da $bf $74

    ld e, a                                       ; $46a5: $5f

jr_0dd_46a6:
    inc [hl]                                      ; $46a6: $34
    ccf                                           ; $46a7: $3f
    ld h, h                                       ; $46a8: $64
    ld a, a                                       ; $46a9: $7f
    inc a                                         ; $46aa: $3c
    ccf                                           ; $46ab: $3f
    jr nc, jr_0dd_46ed                            ; $46ac: $30 $3f

    jr nz, jr_0dd_46ef                            ; $46ae: $20 $3f

    jr jr_0dd_46d1                                ; $46b0: $18 $1f

    ld [bc], a                                    ; $46b2: $02

jr_0dd_46b3:
    rlca                                          ; $46b3: $07
    add a                                         ; $46b4: $87
    or d                                          ; $46b5: $b2
    cp $4a                                        ; $46b6: $fe $4a
    cp $29                                        ; $46b8: $fe $29
    rst $38                                       ; $46ba: $ff
    ccf                                           ; $46bb: $3f
    ld [bc], a                                    ; $46bc: $02
    rst $38                                       ; $46bd: $ff
    sub l                                         ; $46be: $95
    db $fd                                        ; $46bf: $fd
    ld [hl], a                                    ; $46c0: $77
    ld sp, hl                                     ; $46c1: $f9
    sbc $fe                                       ; $46c2: $de $fe
    set 7, l                                      ; $46c4: $cb $fd

jr_0dd_46c6:
    ld l, [hl]                                    ; $46c6: $6e
    ld a, [$fc64]                                 ; $46c7: $fa $64 $fc
    ld h, $fe                                     ; $46ca: $26 $fe

jr_0dd_46cc:
    inc a                                         ; $46cc: $3c
    db $fc                                        ; $46cd: $fc
    inc b                                         ; $46ce: $04
    db $fc                                        ; $46cf: $fc
    inc b                                         ; $46d0: $04

jr_0dd_46d1:
    db $fc                                        ; $46d1: $fc
    jr jr_0dd_46cc                                ; $46d2: $18 $f8

    ld [bc], a                                    ; $46d4: $02
    ldh [rIE], a                                  ; $46d5: $e0 $ff
    dec c                                         ; $46d7: $0d
    inc b                                         ; $46d8: $04
    ld sp, hl                                     ; $46d9: $f9
    ld [$01f2], sp                                ; $46da: $08 $f2 $01
    ld [c], a                                     ; $46dd: $e2
    ld a, [$00e2]                                 ; $46de: $fa $e2 $00
    ld a, [c]                                     ; $46e1: $f2
    ld sp, hl                                     ; $46e2: $f9
    ld a, [c]                                     ; $46e3: $f2
    ld bc, $0102                                  ; $46e4: $01 $02 $01
    adc b                                         ; $46e7: $88
    ld [bc], a                                    ; $46e8: $02
    inc bc                                        ; $46e9: $03
    inc b                                         ; $46ea: $04
    rlca                                          ; $46eb: $07
    inc b                                         ; $46ec: $04

jr_0dd_46ed:
    rlca                                          ; $46ed: $07
    ld a, [bc]                                    ; $46ee: $0a

jr_0dd_46ef:
    rrca                                          ; $46ef: $0f
    ld [bc], a                                    ; $46f0: $02
    rra                                           ; $46f1: $1f
    sub h                                         ; $46f2: $94
    jr nc, jr_0dd_4734                            ; $46f3: $30 $3f

    ld c, a                                       ; $46f5: $4f
    ld a, a                                       ; $46f6: $7f
    cp a                                          ; $46f7: $bf
    add sp, -$05                                  ; $46f8: $e8 $fb
    call c, Call_0dd_547f                         ; $46fa: $dc $7f $54
    ccf                                           ; $46fd: $3f
    ld [hl-], a                                   ; $46fe: $32
    ld a, a                                       ; $46ff: $7f
    ld d, e                                       ; $4700: $53
    ccf                                           ; $4701: $3f
    jr c, @+$39                                   ; $4702: $38 $37

    ccf                                           ; $4704: $3f
    ld [hl], a                                    ; $4705: $77
    ld a, h                                       ; $4706: $7c
    ld [bc], a                                    ; $4707: $02
    jr nz, jr_0dd_468b                            ; $4708: $20 $81

    db $10                                        ; $470a: $10
    inc bc                                        ; $470b: $03
    jr nc, jr_0dd_4691                            ; $470c: $30 $83

    jr z, jr_0dd_4748                             ; $470e: $28 $38

    jr jr_0dd_4715                                ; $4710: $18 $03

    jr c, jr_0dd_46c6                             ; $4712: $38 $b2

    inc c                                         ; $4714: $0c

jr_0dd_4715:
    inc a                                         ; $4715: $3c
    ld [hl-], a                                   ; $4716: $32
    ld a, $3d                                     ; $4717: $3e $3d
    rla                                           ; $4719: $17
    rra                                           ; $471a: $1f
    ccf                                           ; $471b: $3f
    ld a, $0a                                     ; $471c: $3e $0a

jr_0dd_471e:
    inc a                                         ; $471e: $3c
    inc l                                         ; $471f: $2c
    ld a, $0a                                     ; $4720: $3e $0a
    inc a                                         ; $4722: $3c
    inc e                                         ; $4723: $1c

jr_0dd_4724:
    ld l, $3e                                     ; $4724: $2e $3e
    ld a, [hl+]                                   ; $4726: $2a
    ld a, $2d                                     ; $4727: $3e $2d
    ccf                                           ; $4729: $3f
    ld e, d                                       ; $472a: $5a
    ld a, a                                       ; $472b: $7f
    ld d, d                                       ; $472c: $52
    ld a, a                                       ; $472d: $7f
    db $ec                                        ; $472e: $ec
    rst $38                                       ; $472f: $ff
    cp a                                          ; $4730: $bf
    rst $18                                       ; $4731: $df
    cp $8f                                        ; $4732: $fe $8f

jr_0dd_4734:
    ei                                            ; $4734: $fb
    cp a                                          ; $4735: $bf
    ld a, d                                       ; $4736: $7a
    ld c, a                                       ; $4737: $4f
    ld l, d                                       ; $4738: $6a
    ld e, a                                       ; $4739: $5f
    ld [hl], $3f                                  ; $473a: $36 $3f
    inc h                                         ; $473c: $24
    ccf                                           ; $473d: $3f
    inc a                                         ; $473e: $3c
    ccf                                           ; $473f: $3f
    jr nc, jr_0dd_4781                            ; $4740: $30 $3f

jr_0dd_4742:
    jr nc, jr_0dd_4783                            ; $4742: $30 $3f

    inc c                                         ; $4744: $0c
    rrca                                          ; $4745: $0f
    ld [bc], a                                    ; $4746: $02
    inc bc                                        ; $4747: $03

jr_0dd_4748:
    sbc [hl]                                      ; $4748: $9e
    or d                                          ; $4749: $b2
    cp $4a                                        ; $474a: $fe $4a
    cp $2d                                        ; $474c: $fe $2d
    rst $38                                       ; $474e: $ff
    dec sp                                        ; $474f: $3b
    db $fd                                        ; $4750: $fd
    rst $38                                       ; $4751: $ff
    ld sp, hl                                     ; $4752: $f9
    ld a, a                                       ; $4753: $7f
    rst $38                                       ; $4754: $ff
    db $db                                        ; $4755: $db
    db $fd                                        ; $4756: $fd
    ld l, [hl]                                    ; $4757: $6e
    cp $24                                        ; $4758: $fe $24
    db $fc                                        ; $475a: $fc
    ld [hl], $fe                                  ; $475b: $36 $fe
    ld [de], a                                    ; $475d: $12
    cp $1c                                        ; $475e: $fe $1c
    db $fc                                        ; $4760: $fc
    inc b                                         ; $4761: $04
    db $fc                                        ; $4762: $fc
    inc b                                         ; $4763: $04
    db $fc                                        ; $4764: $fc
    db $e4                                        ; $4765: $e4
    db $fc                                        ; $4766: $fc
    ld [bc], a                                    ; $4767: $02
    ld hl, sp-$01                                 ; $4768: $f8 $ff
    dec c                                         ; $476a: $0d
    inc b                                         ; $476b: $04
    ld sp, hl                                     ; $476c: $f9
    ld [$01f2], sp                                ; $476d: $08 $f2 $01
    db $e3                                        ; $4770: $e3
    ld a, [$00e3]                                 ; $4771: $fa $e3 $00
    di                                            ; $4774: $f3
    ld sp, hl                                     ; $4775: $f9
    di                                            ; $4776: $f3
    ld bc, $0102                                  ; $4777: $01 $02 $01
    adc b                                         ; $477a: $88
    ld [bc], a                                    ; $477b: $02
    inc bc                                        ; $477c: $03
    inc b                                         ; $477d: $04
    rlca                                          ; $477e: $07
    inc b                                         ; $477f: $04
    rlca                                          ; $4780: $07

jr_0dd_4781:
    ld a, [bc]                                    ; $4781: $0a
    rrca                                          ; $4782: $0f

jr_0dd_4783:
    ld [bc], a                                    ; $4783: $02
    rra                                           ; $4784: $1f
    sub h                                         ; $4785: $94
    jr nc, @+$41                                  ; $4786: $30 $3f

    ld c, a                                       ; $4788: $4f
    ld a, a                                       ; $4789: $7f
    cp a                                          ; $478a: $bf
    add sp, -$05                                  ; $478b: $e8 $fb
    call c, Call_0dd_747f                         ; $478d: $dc $7f $74
    ld a, a                                       ; $4790: $7f
    ld d, d                                       ; $4791: $52
    ccf                                           ; $4792: $3f
    inc sp                                        ; $4793: $33
    ld e, a                                       ; $4794: $5f
    ld e, b                                       ; $4795: $58
    scf                                           ; $4796: $37
    ccf                                           ; $4797: $3f
    ld [hl], a                                    ; $4798: $77
    ld a, h                                       ; $4799: $7c
    ld [bc], a                                    ; $479a: $02
    jr nz, jr_0dd_471e                            ; $479b: $20 $81

    db $10                                        ; $479d: $10
    inc bc                                        ; $479e: $03
    jr nc, jr_0dd_4724                            ; $479f: $30 $83

    jr z, jr_0dd_47db                             ; $47a1: $28 $38

    jr jr_0dd_47a8                                ; $47a3: $18 $03

    jr c, jr_0dd_4742                             ; $47a5: $38 $9b

    inc c                                         ; $47a7: $0c

jr_0dd_47a8:
    inc a                                         ; $47a8: $3c
    ld [hl-], a                                   ; $47a9: $32
    ld a, $3d                                     ; $47aa: $3e $3d
    rla                                           ; $47ac: $17
    rra                                           ; $47ad: $1f
    ccf                                           ; $47ae: $3f
    ld a, $0a                                     ; $47af: $3e $0a
    ld a, $2a                                     ; $47b1: $3e $2a
    inc a                                         ; $47b3: $3c
    inc c                                         ; $47b4: $0c
    ld a, [hl-]                                   ; $47b5: $3a
    ld a, [de]                                    ; $47b6: $1a
    inc l                                         ; $47b7: $2c

jr_0dd_47b8:
    inc a                                         ; $47b8: $3c
    ld a, [hl+]                                   ; $47b9: $2a
    ld a, $4d                                     ; $47ba: $3e $4d
    ld a, a                                       ; $47bc: $7f
    ld d, d                                       ; $47bd: $52
    ld a, a                                       ; $47be: $7f
    ld d, [hl]                                    ; $47bf: $56
    ld a, a                                       ; $47c0: $7f
    db $ec                                        ; $47c1: $ec
    ld [bc], a                                    ; $47c2: $02
    rst $38                                       ; $47c3: $ff
    sub e                                         ; $47c4: $93
    sbc a                                         ; $47c5: $9f
    xor $9f                                       ; $47c6: $ee $9f
    ei                                            ; $47c8: $fb
    rst $38                                       ; $47c9: $ff
    ld [$7a9f], a                                 ; $47ca: $ea $9f $7a
    ld e, a                                       ; $47cd: $5f
    inc h                                         ; $47ce: $24
    ccf                                           ; $47cf: $3f
    inc a                                         ; $47d0: $3c
    ccf                                           ; $47d1: $3f
    jr nz, jr_0dd_4813                            ; $47d2: $20 $3f

    jr nz, jr_0dd_4815                            ; $47d4: $20 $3f

jr_0dd_47d6:
    jr jr_0dd_47f7                                ; $47d6: $18 $1f

    ld [bc], a                                    ; $47d8: $02
    rlca                                          ; $47d9: $07
    ld [bc], a                                    ; $47da: $02

jr_0dd_47db:
    nop                                           ; $47db: $00
    sbc h                                         ; $47dc: $9c
    or d                                          ; $47dd: $b2
    cp $4a                                        ; $47de: $fe $4a
    cp $2f                                        ; $47e0: $fe $2f
    rst $38                                       ; $47e2: $ff
    dec sp                                        ; $47e3: $3b
    db $fd                                        ; $47e4: $fd
    rst $38                                       ; $47e5: $ff
    ld sp, hl                                     ; $47e6: $f9
    ld a, [hl]                                    ; $47e7: $7e
    cp $db                                        ; $47e8: $fe $db
    db $fd                                        ; $47ea: $fd
    ld c, [hl]                                    ; $47eb: $4e
    cp $66                                        ; $47ec: $fe $66
    cp $26                                        ; $47ee: $fe $26
    cp $3c                                        ; $47f0: $fe $3c
    db $fc                                        ; $47f2: $fc
    inc c                                         ; $47f3: $0c
    db $fc                                        ; $47f4: $fc
    inc b                                         ; $47f5: $04
    db $fc                                        ; $47f6: $fc

jr_0dd_47f7:
    ld l, h                                       ; $47f7: $6c
    db $fc                                        ; $47f8: $fc
    ld [bc], a                                    ; $47f9: $02
    ldh a, [rSC]                                  ; $47fa: $f0 $02
    nop                                           ; $47fc: $00
    rst $38                                       ; $47fd: $ff
    dec c                                         ; $47fe: $0d
    inc b                                         ; $47ff: $04
    ld sp, hl                                     ; $4800: $f9
    ld [$01f2], sp                                ; $4801: $08 $f2 $01
    ld [c], a                                     ; $4804: $e2
    ld a, [$00e2]                                 ; $4805: $fa $e2 $00
    ld a, [c]                                     ; $4808: $f2
    ld sp, hl                                     ; $4809: $f9
    ld a, [c]                                     ; $480a: $f2
    ld bc, $0102                                  ; $480b: $01 $02 $01
    adc b                                         ; $480e: $88
    ld [bc], a                                    ; $480f: $02
    inc bc                                        ; $4810: $03
    inc b                                         ; $4811: $04
    rlca                                          ; $4812: $07

jr_0dd_4813:
    inc b                                         ; $4813: $04
    rlca                                          ; $4814: $07

jr_0dd_4815:
    ld a, [bc]                                    ; $4815: $0a
    rrca                                          ; $4816: $0f
    ld [bc], a                                    ; $4817: $02
    rra                                           ; $4818: $1f
    sub h                                         ; $4819: $94
    jr nc, @+$41                                  ; $481a: $30 $3f

    ld c, a                                       ; $481c: $4f
    ld a, a                                       ; $481d: $7f
    cp a                                          ; $481e: $bf
    add sp, -$05                                  ; $481f: $e8 $fb
    call c, Call_0dd_547f                         ; $4821: $dc $7f $54
    ccf                                           ; $4824: $3f
    ld [hl-], a                                   ; $4825: $32
    ld a, a                                       ; $4826: $7f
    ld d, e                                       ; $4827: $53
    ccf                                           ; $4828: $3f
    jr c, jr_0dd_4862                             ; $4829: $38 $37

    ccf                                           ; $482b: $3f
    ld [hl], a                                    ; $482c: $77
    ld a, h                                       ; $482d: $7c
    ld [bc], a                                    ; $482e: $02
    jr nz, @-$7d                                  ; $482f: $20 $81

    db $10                                        ; $4831: $10
    inc bc                                        ; $4832: $03
    jr nc, jr_0dd_47b8                            ; $4833: $30 $83

    jr z, jr_0dd_486f                             ; $4835: $28 $38

    jr jr_0dd_483c                                ; $4837: $18 $03

    jr c, jr_0dd_47d6                             ; $4839: $38 $9b

    inc c                                         ; $483b: $0c

jr_0dd_483c:
    inc a                                         ; $483c: $3c
    ld [hl-], a                                   ; $483d: $32
    ld a, $3d                                     ; $483e: $3e $3d
    rla                                           ; $4840: $17
    rra                                           ; $4841: $1f
    ccf                                           ; $4842: $3f
    ld a, $0a                                     ; $4843: $3e $0a
    inc a                                         ; $4845: $3c
    inc l                                         ; $4846: $2c

jr_0dd_4847:
    ld a, $0a                                     ; $4847: $3e $0a
    inc a                                         ; $4849: $3c
    inc e                                         ; $484a: $1c
    inc l                                         ; $484b: $2c
    inc a                                         ; $484c: $3c

jr_0dd_484d:
    ld a, [hl+]                                   ; $484d: $2a
    ld a, $4d                                     ; $484e: $3e $4d
    ld a, a                                       ; $4850: $7f
    ld d, d                                       ; $4851: $52
    ld a, a                                       ; $4852: $7f
    sub h                                         ; $4853: $94
    rst $38                                       ; $4854: $ff
    db $fc                                        ; $4855: $fc
    ld [bc], a                                    ; $4856: $02
    rst $38                                       ; $4857: $ff
    sub l                                         ; $4858: $95
    cp a                                          ; $4859: $bf
    xor $9f                                       ; $485a: $ee $9f
    ld a, e                                       ; $485c: $7b
    ld a, a                                       ; $485d: $7f
    jp nc, Jump_0dd_74bf                          ; $485e: $d2 $bf $74

    ld e, a                                       ; $4861: $5f

jr_0dd_4862:
    inc h                                         ; $4862: $24
    ccf                                           ; $4863: $3f
    ld l, b                                       ; $4864: $68
    ld a, a                                       ; $4865: $7f
    jr c, jr_0dd_48a7                             ; $4866: $38 $3f

    jr nz, jr_0dd_48a9                            ; $4868: $20 $3f

    jr nz, jr_0dd_48ab                            ; $486a: $20 $3f

    db $10                                        ; $486c: $10
    rra                                           ; $486d: $1f
    ld [bc], a                                    ; $486e: $02

jr_0dd_486f:
    rrca                                          ; $486f: $0f
    add a                                         ; $4870: $87
    or d                                          ; $4871: $b2
    cp $4a                                        ; $4872: $fe $4a
    cp $29                                        ; $4874: $fe $29
    rst $38                                       ; $4876: $ff
    ccf                                           ; $4877: $3f
    ld [bc], a                                    ; $4878: $02
    rst $38                                       ; $4879: $ff
    sub l                                         ; $487a: $95
    db $fd                                        ; $487b: $fd
    ld [hl], a                                    ; $487c: $77
    ld sp, hl                                     ; $487d: $f9
    sbc $fe                                       ; $487e: $de $fe
    set 7, l                                      ; $4880: $cb $fd

jr_0dd_4882:
    ld l, [hl]                                    ; $4882: $6e
    ld a, [$fc64]                                 ; $4883: $fa $64 $fc
    ld h, $fe                                     ; $4886: $26 $fe

jr_0dd_4888:
    inc a                                         ; $4888: $3c
    db $fc                                        ; $4889: $fc
    inc c                                         ; $488a: $0c
    db $fc                                        ; $488b: $fc
    inc b                                         ; $488c: $04
    db $fc                                        ; $488d: $fc
    jr c, jr_0dd_4888                             ; $488e: $38 $f8

    ld [bc], a                                    ; $4890: $02
    ret nz                                        ; $4891: $c0

    rst $38                                       ; $4892: $ff
    dec c                                         ; $4893: $0d
    inc b                                         ; $4894: $04
    ld sp, hl                                     ; $4895: $f9
    ld [$01f2], sp                                ; $4896: $08 $f2 $01
    ld [c], a                                     ; $4899: $e2
    ld a, [$00e2]                                 ; $489a: $fa $e2 $00
    ld a, [c]                                     ; $489d: $f2
    ld sp, hl                                     ; $489e: $f9
    ld a, [c]                                     ; $489f: $f2
    ld bc, $0102                                  ; $48a0: $01 $02 $01
    adc b                                         ; $48a3: $88
    ld [bc], a                                    ; $48a4: $02
    inc bc                                        ; $48a5: $03
    inc b                                         ; $48a6: $04

jr_0dd_48a7:
    rlca                                          ; $48a7: $07
    inc b                                         ; $48a8: $04

jr_0dd_48a9:
    rlca                                          ; $48a9: $07
    ld a, [bc]                                    ; $48aa: $0a

jr_0dd_48ab:
    rrca                                          ; $48ab: $0f
    ld [bc], a                                    ; $48ac: $02
    rra                                           ; $48ad: $1f
    sub h                                         ; $48ae: $94
    jr nc, jr_0dd_48f0                            ; $48af: $30 $3f

    ld c, a                                       ; $48b1: $4f
    ld a, a                                       ; $48b2: $7f
    cp a                                          ; $48b3: $bf
    add sp, -$05                                  ; $48b4: $e8 $fb
    call c, Call_0dd_547f                         ; $48b6: $dc $7f $54
    ccf                                           ; $48b9: $3f
    ld [hl-], a                                   ; $48ba: $32
    ld a, a                                       ; $48bb: $7f
    ld d, e                                       ; $48bc: $53
    ccf                                           ; $48bd: $3f
    jr c, jr_0dd_4937                             ; $48be: $38 $77

    ld a, a                                       ; $48c0: $7f
    ld d, a                                       ; $48c1: $57
    ld a, h                                       ; $48c2: $7c
    ld [bc], a                                    ; $48c3: $02
    jr nz, jr_0dd_4847                            ; $48c4: $20 $81

    db $10                                        ; $48c6: $10
    inc bc                                        ; $48c7: $03
    jr nc, jr_0dd_484d                            ; $48c8: $30 $83

    jr z, jr_0dd_4904                             ; $48ca: $28 $38

    jr jr_0dd_48d1                                ; $48cc: $18 $03

    jr c, jr_0dd_4882                             ; $48ce: $38 $b2

    inc c                                         ; $48d0: $0c

jr_0dd_48d1:
    inc a                                         ; $48d1: $3c
    ld [hl-], a                                   ; $48d2: $32
    ld a, $3d                                     ; $48d3: $3e $3d
    rla                                           ; $48d5: $17
    rra                                           ; $48d6: $1f
    ccf                                           ; $48d7: $3f
    ld a, $0a                                     ; $48d8: $3e $0a

jr_0dd_48da:
    inc a                                         ; $48da: $3c
    inc l                                         ; $48db: $2c
    ld a, $0a                                     ; $48dc: $3e $0a
    inc a                                         ; $48de: $3c
    inc e                                         ; $48df: $1c

jr_0dd_48e0:
    inc l                                         ; $48e0: $2c
    inc a                                         ; $48e1: $3c
    ld l, $3e                                     ; $48e2: $2e $3e
    ld c, l                                       ; $48e4: $4d
    ld a, a                                       ; $48e5: $7f
    ld d, d                                       ; $48e6: $52
    ld a, a                                       ; $48e7: $7f
    or h                                          ; $48e8: $b4
    rst $38                                       ; $48e9: $ff
    call c, $ffbf                                 ; $48ea: $dc $bf $ff
    sbc a                                         ; $48ed: $9f
    cp $ff                                        ; $48ee: $fe $ff

jr_0dd_48f0:
    db $db                                        ; $48f0: $db
    cp a                                          ; $48f1: $bf
    halt                                          ; $48f2: $76
    ld a, a                                       ; $48f3: $7f
    inc h                                         ; $48f4: $24
    ccf                                           ; $48f5: $3f
    ld l, h                                       ; $48f6: $6c
    ld a, a                                       ; $48f7: $7f
    ld c, b                                       ; $48f8: $48
    ld a, a                                       ; $48f9: $7f
    jr c, jr_0dd_493b                             ; $48fa: $38 $3f

    jr nz, jr_0dd_493d                            ; $48fc: $20 $3f

    jr nz, jr_0dd_493f                            ; $48fe: $20 $3f

    daa                                           ; $4900: $27
    ccf                                           ; $4901: $3f
    ld [bc], a                                    ; $4902: $02
    rra                                           ; $4903: $1f

jr_0dd_4904:
    sbc [hl]                                      ; $4904: $9e
    or h                                          ; $4905: $b4
    db $fc                                        ; $4906: $fc
    ld e, d                                       ; $4907: $5a
    cp $4a                                        ; $4908: $fe $4a
    cp $37                                        ; $490a: $fe $37
    rst $38                                       ; $490c: $ff
    db $fd                                        ; $490d: $fd
    ei                                            ; $490e: $fb
    ld a, a                                       ; $490f: $7f
    pop af                                        ; $4910: $f1
    rst $18                                       ; $4911: $df
    db $fd                                        ; $4912: $fd

jr_0dd_4913:
    ld e, [hl]                                    ; $4913: $5e
    ld a, [c]                                     ; $4914: $f2
    ld d, [hl]                                    ; $4915: $56
    ld a, [$fc6c]                                 ; $4916: $fa $6c $fc
    ld h, h                                       ; $4919: $64
    db $fc                                        ; $491a: $fc
    inc a                                         ; $491b: $3c
    db $fc                                        ; $491c: $fc
    inc c                                         ; $491d: $0c
    db $fc                                        ; $491e: $fc
    inc c                                         ; $491f: $0c
    db $fc                                        ; $4920: $fc
    jr nc, jr_0dd_4913                            ; $4921: $30 $f0

    ld [bc], a                                    ; $4923: $02
    ret nz                                        ; $4924: $c0

    rst $38                                       ; $4925: $ff
    dec c                                         ; $4926: $0d
    inc b                                         ; $4927: $04
    ld sp, hl                                     ; $4928: $f9
    ld [$01f2], sp                                ; $4929: $08 $f2 $01
    db $e3                                        ; $492c: $e3
    ld a, [$00e3]                                 ; $492d: $fa $e3 $00
    di                                            ; $4930: $f3
    ld sp, hl                                     ; $4931: $f9
    di                                            ; $4932: $f3
    ld bc, $0102                                  ; $4933: $01 $02 $01
    adc b                                         ; $4936: $88

jr_0dd_4937:
    ld [bc], a                                    ; $4937: $02
    inc bc                                        ; $4938: $03
    inc b                                         ; $4939: $04
    rlca                                          ; $493a: $07

jr_0dd_493b:
    inc b                                         ; $493b: $04
    rlca                                          ; $493c: $07

jr_0dd_493d:
    ld a, [bc]                                    ; $493d: $0a
    rrca                                          ; $493e: $0f

jr_0dd_493f:
    ld [bc], a                                    ; $493f: $02
    rra                                           ; $4940: $1f
    sub h                                         ; $4941: $94
    jr nc, jr_0dd_4983                            ; $4942: $30 $3f

    ld c, a                                       ; $4944: $4f
    ld a, a                                       ; $4945: $7f
    cp a                                          ; $4946: $bf
    add sp, -$05                                  ; $4947: $e8 $fb
    call c, Call_0dd_747f                         ; $4949: $dc $7f $74
    ld a, a                                       ; $494c: $7f
    ld d, d                                       ; $494d: $52
    ccf                                           ; $494e: $3f
    inc sp                                        ; $494f: $33
    ld e, a                                       ; $4950: $5f
    ld e, b                                       ; $4951: $58
    scf                                           ; $4952: $37
    ccf                                           ; $4953: $3f
    ld d, a                                       ; $4954: $57
    ld a, h                                       ; $4955: $7c
    ld [bc], a                                    ; $4956: $02
    jr nz, jr_0dd_48da                            ; $4957: $20 $81

    db $10                                        ; $4959: $10
    inc bc                                        ; $495a: $03
    jr nc, jr_0dd_48e0                            ; $495b: $30 $83

    jr z, jr_0dd_4997                             ; $495d: $28 $38

    jr jr_0dd_4964                                ; $495f: $18 $03

    jr c, jr_0dd_4913                             ; $4961: $38 $b0

    inc c                                         ; $4963: $0c

jr_0dd_4964:
    inc a                                         ; $4964: $3c
    ld [hl-], a                                   ; $4965: $32
    ld a, $3d                                     ; $4966: $3e $3d
    rla                                           ; $4968: $17
    rra                                           ; $4969: $1f
    ccf                                           ; $496a: $3f
    ld a, $0a                                     ; $496b: $3e $0a
    ld a, $2a                                     ; $496d: $3e $2a
    inc a                                         ; $496f: $3c
    inc c                                         ; $4970: $0c
    ld a, [hl-]                                   ; $4971: $3a
    ld a, [de]                                    ; $4972: $1a
    inc l                                         ; $4973: $2c

jr_0dd_4974:
    inc a                                         ; $4974: $3c
    ld l, $3e                                     ; $4975: $2e $3e
    ld c, l                                       ; $4977: $4d
    ld a, a                                       ; $4978: $7f
    ld d, d                                       ; $4979: $52
    ld a, a                                       ; $497a: $7f
    or h                                          ; $497b: $b4
    rst $38                                       ; $497c: $ff
    call c, $ffbf                                 ; $497d: $dc $bf $ff
    sbc a                                         ; $4980: $9f
    ld a, [hl]                                    ; $4981: $7e
    ld a, a                                       ; $4982: $7f

jr_0dd_4983:
    db $db                                        ; $4983: $db
    cp a                                          ; $4984: $bf
    ld [hl], d                                    ; $4985: $72
    ld a, a                                       ; $4986: $7f
    ld h, h                                       ; $4987: $64
    ld a, a                                       ; $4988: $7f
    ld h, h                                       ; $4989: $64
    ld a, a                                       ; $498a: $7f
    jr c, jr_0dd_49cc                             ; $498b: $38 $3f

    jr nc, jr_0dd_49ce                            ; $498d: $30 $3f

    jr nz, jr_0dd_49d0                            ; $498f: $20 $3f

    ld [hl], $3f                                  ; $4991: $36 $3f
    ld [bc], a                                    ; $4993: $02
    rrca                                          ; $4994: $0f
    ld [bc], a                                    ; $4995: $02
    nop                                           ; $4996: $00

jr_0dd_4997:
    add a                                         ; $4997: $87
    or d                                          ; $4998: $b2
    cp $4a                                        ; $4999: $fe $4a
    cp $6a                                        ; $499b: $fe $6a
    cp $37                                        ; $499d: $fe $37
    ld [bc], a                                    ; $499f: $02
    rst $38                                       ; $49a0: $ff
    sub e                                         ; $49a1: $93
    ld sp, hl                                     ; $49a2: $f9
    ld [hl], a                                    ; $49a3: $77
    ld sp, hl                                     ; $49a4: $f9
    rst $18                                       ; $49a5: $df
    rst $38                                       ; $49a6: $ff
    ld d, a                                       ; $49a7: $57
    ld sp, hl                                     ; $49a8: $f9
    ld c, [hl]                                    ; $49a9: $4e
    ld a, [$fc64]                                 ; $49aa: $fa $64 $fc

jr_0dd_49ad:
    inc a                                         ; $49ad: $3c
    db $fc                                        ; $49ae: $fc
    inc b                                         ; $49af: $04
    db $fc                                        ; $49b0: $fc
    inc b                                         ; $49b1: $04
    db $fc                                        ; $49b2: $fc
    jr jr_0dd_49ad                                ; $49b3: $18 $f8

    ld [bc], a                                    ; $49b5: $02
    ldh [rSC], a                                  ; $49b6: $e0 $02
    nop                                           ; $49b8: $00
    rst $38                                       ; $49b9: $ff
    dec c                                         ; $49ba: $0d
    inc b                                         ; $49bb: $04
    ld sp, hl                                     ; $49bc: $f9
    ld [$01f2], sp                                ; $49bd: $08 $f2 $01
    ld [c], a                                     ; $49c0: $e2
    ld a, [$00e2]                                 ; $49c1: $fa $e2 $00
    ld a, [c]                                     ; $49c4: $f2
    ld sp, hl                                     ; $49c5: $f9
    ld a, [c]                                     ; $49c6: $f2
    ld bc, $0102                                  ; $49c7: $01 $02 $01
    adc b                                         ; $49ca: $88
    ld [bc], a                                    ; $49cb: $02

jr_0dd_49cc:
    inc bc                                        ; $49cc: $03
    inc b                                         ; $49cd: $04

jr_0dd_49ce:
    rlca                                          ; $49ce: $07
    inc b                                         ; $49cf: $04

jr_0dd_49d0:
    rlca                                          ; $49d0: $07
    ld a, [bc]                                    ; $49d1: $0a
    rrca                                          ; $49d2: $0f
    ld [bc], a                                    ; $49d3: $02
    rra                                           ; $49d4: $1f
    sub h                                         ; $49d5: $94
    jr nc, @+$41                                  ; $49d6: $30 $3f

    ld c, a                                       ; $49d8: $4f
    ld a, a                                       ; $49d9: $7f
    cp a                                          ; $49da: $bf
    add sp, -$05                                  ; $49db: $e8 $fb
    call c, Call_0dd_547f                         ; $49dd: $dc $7f $54
    ccf                                           ; $49e0: $3f
    ld [hl-], a                                   ; $49e1: $32
    ld a, a                                       ; $49e2: $7f
    ld d, e                                       ; $49e3: $53
    ld a, a                                       ; $49e4: $7f
    ld a, b                                       ; $49e5: $78
    scf                                           ; $49e6: $37
    ccf                                           ; $49e7: $3f
    ld [hl], a                                    ; $49e8: $77
    ld a, h                                       ; $49e9: $7c
    ld [bc], a                                    ; $49ea: $02
    jr nz, @-$7d                                  ; $49eb: $20 $81

    db $10                                        ; $49ed: $10
    inc bc                                        ; $49ee: $03
    jr nc, jr_0dd_4974                            ; $49ef: $30 $83

    jr z, jr_0dd_4a2b                             ; $49f1: $28 $38

    jr jr_0dd_49f8                                ; $49f3: $18 $03

    jr c, @-$63                                   ; $49f5: $38 $9b

    inc c                                         ; $49f7: $0c

jr_0dd_49f8:
    inc a                                         ; $49f8: $3c
    ld [hl-], a                                   ; $49f9: $32
    ld a, $3d                                     ; $49fa: $3e $3d
    rla                                           ; $49fc: $17
    rra                                           ; $49fd: $1f
    ccf                                           ; $49fe: $3f
    ld a, $0a                                     ; $49ff: $3e $0a
    inc a                                         ; $4a01: $3c
    inc l                                         ; $4a02: $2c
    ld a, $0a                                     ; $4a03: $3e $0a
    ld a, $1e                                     ; $4a05: $3e $1e
    inc l                                         ; $4a07: $2c
    inc a                                         ; $4a08: $3c
    ld a, [hl+]                                   ; $4a09: $2a
    ld a, $4d                                     ; $4a0a: $3e $4d
    ld a, a                                       ; $4a0c: $7f
    ld d, d                                       ; $4a0d: $52
    ld a, a                                       ; $4a0e: $7f
    sub h                                         ; $4a0f: $94
    rst $38                                       ; $4a10: $ff
    db $fc                                        ; $4a11: $fc
    ld [bc], a                                    ; $4a12: $02

jr_0dd_4a13:
    rst $38                                       ; $4a13: $ff
    sub l                                         ; $4a14: $95
    cp a                                          ; $4a15: $bf
    xor $9f                                       ; $4a16: $ee $9f
    ld a, e                                       ; $4a18: $7b
    ld a, a                                       ; $4a19: $7f
    jp nc, Jump_0dd_74bf                          ; $4a1a: $d2 $bf $74

    ld e, a                                       ; $4a1d: $5f
    inc h                                         ; $4a1e: $24
    ccf                                           ; $4a1f: $3f
    ld h, h                                       ; $4a20: $64
    ld a, a                                       ; $4a21: $7f
    inc a                                         ; $4a22: $3c
    ccf                                           ; $4a23: $3f
    jr nc, jr_0dd_4a65                            ; $4a24: $30 $3f

    jr nz, jr_0dd_4a67                            ; $4a26: $20 $3f

    inc e                                         ; $4a28: $1c
    rra                                           ; $4a29: $1f
    ld [bc], a                                    ; $4a2a: $02

jr_0dd_4a2b:
    inc bc                                        ; $4a2b: $03
    add a                                         ; $4a2c: $87
    or d                                          ; $4a2d: $b2
    cp $4a                                        ; $4a2e: $fe $4a
    cp $29                                        ; $4a30: $fe $29
    rst $38                                       ; $4a32: $ff
    ccf                                           ; $4a33: $3f
    ld [bc], a                                    ; $4a34: $02
    rst $38                                       ; $4a35: $ff
    sub l                                         ; $4a36: $95
    db $fd                                        ; $4a37: $fd
    ld [hl], a                                    ; $4a38: $77
    ld sp, hl                                     ; $4a39: $f9
    sbc $fe                                       ; $4a3a: $de $fe
    set 7, l                                      ; $4a3c: $cb $fd

jr_0dd_4a3e:
    ld l, [hl]                                    ; $4a3e: $6e
    ld a, [$fc24]                                 ; $4a3f: $fa $24 $fc
    ld d, $fe                                     ; $4a42: $16 $fe
    inc e                                         ; $4a44: $1c
    db $fc                                        ; $4a45: $fc
    inc b                                         ; $4a46: $04
    db $fc                                        ; $4a47: $fc
    inc b                                         ; $4a48: $04
    db $fc                                        ; $4a49: $fc
    ld [$02f8], sp                                ; $4a4a: $08 $f8 $02
    ldh a, [rIE]                                  ; $4a4d: $f0 $ff
    dec c                                         ; $4a4f: $0d
    inc b                                         ; $4a50: $04
    ld sp, hl                                     ; $4a51: $f9
    ld [$01f2], sp                                ; $4a52: $08 $f2 $01
    ld [c], a                                     ; $4a55: $e2
    ei                                            ; $4a56: $fb
    and $00                                       ; $4a57: $e6 $00
    ld a, [c]                                     ; $4a59: $f2
    ld sp, hl                                     ; $4a5a: $f9
    ld a, [c]                                     ; $4a5b: $f2
    cp $02                                        ; $4a5c: $fe $02
    ld [hl], b                                    ; $4a5e: $70
    sbc [hl]                                      ; $4a5f: $9e
    adc h                                         ; $4a60: $8c
    db $fc                                        ; $4a61: $fc
    add $fe                                       ; $4a62: $c6 $fe
    ld b, c                                       ; $4a64: $41

jr_0dd_4a65:
    ld a, a                                       ; $4a65: $7f
    ld e, h                                       ; $4a66: $5c

jr_0dd_4a67:
    ld a, a                                       ; $4a67: $7f
    dec h                                         ; $4a68: $25
    ccf                                           ; $4a69: $3f
    ld a, $3f                                     ; $4a6a: $3e $3f
    ld sp, $4f3f                                  ; $4a6c: $31 $3f $4f
    ld a, [hl]                                    ; $4a6f: $7e
    cp a                                          ; $4a70: $bf
    push af                                       ; $4a71: $f5
    rst $38                                       ; $4a72: $ff
    ret c                                         ; $4a73: $d8

    rst $38                                       ; $4a74: $ff
    or l                                          ; $4a75: $b5
    ld a, a                                       ; $4a76: $7f
    ld c, b                                       ; $4a77: $48
    rst $38                                       ; $4a78: $ff
    xor h                                         ; $4a79: $ac
    ld [hl], a                                    ; $4a7a: $77
    ld a, a                                       ; $4a7b: $7f
    xor e                                         ; $4a7c: $ab
    cp [hl]                                       ; $4a7d: $be
    ld [bc], a                                    ; $4a7e: $02
    db $10                                        ; $4a7f: $10
    ld [bc], a                                    ; $4a80: $02
    inc e                                         ; $4a81: $1c
    adc h                                         ; $4a82: $8c
    ld [bc], a                                    ; $4a83: $02
    ld e, $1d                                     ; $4a84: $1e $1d
    rra                                           ; $4a86: $1f
    ld e, $06                                     ; $4a87: $1e $06
    inc c                                         ; $4a89: $0c
    inc d                                         ; $4a8a: $14
    ld e, $02                                     ; $4a8b: $1e $02
    inc e                                         ; $4a8d: $1c
    inc b                                         ; $4a8e: $04
    inc bc                                        ; $4a8f: $03
    jr jr_0dd_4a13                                ; $4a90: $18 $81

    ld [$1002], sp                                ; $4a92: $08 $02 $10
    ld [bc], a                                    ; $4a95: $02
    jr jr_0dd_4a3e                                ; $4a96: $18 $a6

    xor b                                         ; $4a98: $a8
    ld hl, sp+$54                                 ; $4a99: $f8 $54
    db $fc                                        ; $4a9b: $fc
    ld b, h                                       ; $4a9c: $44
    db $fc                                        ; $4a9d: $fc
    call z, Call_000_10fc                         ; $4a9e: $cc $fc $10
    ld e, $12                                     ; $4aa1: $1e $12
    ld e, $16                                     ; $4aa3: $1e $16
    ld e, $1a                                     ; $4aa5: $1e $1a
    ld e, $1f                                     ; $4aa7: $1e $1f
    inc de                                        ; $4aa9: $13
    rra                                           ; $4aaa: $1f
    ld de, $3f3b                                  ; $4aab: $11 $3b $3f
    cpl                                           ; $4aae: $2f
    add hl, sp                                    ; $4aaf: $39
    dec l                                         ; $4ab0: $2d
    dec sp                                        ; $4ab1: $3b

jr_0dd_4ab2:
    ld b, a                                       ; $4ab2: $47
    ld a, a                                       ; $4ab3: $7f
    ld b, c                                       ; $4ab4: $41
    ld a, a                                       ; $4ab5: $7f
    ld [hl], c                                    ; $4ab6: $71
    ld a, a                                       ; $4ab7: $7f
    rst $28                                       ; $4ab8: $ef
    rst $38                                       ; $4ab9: $ff
    ret nz                                        ; $4aba: $c0

    rst $38                                       ; $4abb: $ff
    ld h, b                                       ; $4abc: $60
    ld a, a                                       ; $4abd: $7f
    ld [bc], a                                    ; $4abe: $02
    rra                                           ; $4abf: $1f
    ld [$0200], sp                                ; $4ac0: $08 $00 $02
    ld e, $81                                     ; $4ac3: $1e $81
    ld [de], a                                    ; $4ac5: $12
    inc bc                                        ; $4ac6: $03
    ld e, $90                                     ; $4ac7: $1e $90
    ld d, $1e                                     ; $4ac9: $16 $1e
    inc de                                        ; $4acb: $13
    rra                                           ; $4acc: $1f
    inc bc                                        ; $4acd: $03
    rra                                           ; $4ace: $1f
    ld bc, $011f                                  ; $4acf: $01 $1f $01
    rra                                           ; $4ad2: $1f
    ld bc, $011f                                  ; $4ad3: $01 $1f $01
    rra                                           ; $4ad6: $1f
    inc bc                                        ; $4ad7: $03
    rra                                           ; $4ad8: $1f
    ld [bc], a                                    ; $4ad9: $02
    ld e, $ff                                     ; $4ada: $1e $ff
    dec c                                         ; $4adc: $0d
    inc b                                         ; $4add: $04
    ld sp, hl                                     ; $4ade: $f9
    ld [$01f2], sp                                ; $4adf: $08 $f2 $01
    ld [c], a                                     ; $4ae2: $e2
    ei                                            ; $4ae3: $fb
    and $00                                       ; $4ae4: $e6 $00
    ld a, [c]                                     ; $4ae6: $f2
    ld sp, hl                                     ; $4ae7: $f9
    ld a, [c]                                     ; $4ae8: $f2
    rst $38                                       ; $4ae9: $ff
    ld [bc], a                                    ; $4aea: $02
    ld [hl], b                                    ; $4aeb: $70
    sbc [hl]                                      ; $4aec: $9e
    adc h                                         ; $4aed: $8c
    db $fc                                        ; $4aee: $fc
    add $fe                                       ; $4aef: $c6 $fe
    ld b, c                                       ; $4af1: $41
    ld a, a                                       ; $4af2: $7f
    ld e, h                                       ; $4af3: $5c
    ld a, a                                       ; $4af4: $7f
    dec h                                         ; $4af5: $25
    ccf                                           ; $4af6: $3f
    ld a, $3f                                     ; $4af7: $3e $3f
    ld sp, $4f3f                                  ; $4af9: $31 $3f $4f
    ld a, [hl]                                    ; $4afc: $7e
    cp a                                          ; $4afd: $bf
    push af                                       ; $4afe: $f5
    rst $38                                       ; $4aff: $ff
    ret c                                         ; $4b00: $d8

    rst $38                                       ; $4b01: $ff
    or l                                          ; $4b02: $b5
    ld a, a                                       ; $4b03: $7f
    ld c, b                                       ; $4b04: $48
    rst $38                                       ; $4b05: $ff
    xor h                                         ; $4b06: $ac
    ld [hl], a                                    ; $4b07: $77
    ld a, a                                       ; $4b08: $7f
    xor e                                         ; $4b09: $ab
    cp [hl]                                       ; $4b0a: $be
    ld [bc], a                                    ; $4b0b: $02
    db $10                                        ; $4b0c: $10
    ld [bc], a                                    ; $4b0d: $02
    inc e                                         ; $4b0e: $1c
    adc h                                         ; $4b0f: $8c
    ld [bc], a                                    ; $4b10: $02
    ld e, $1d                                     ; $4b11: $1e $1d
    rra                                           ; $4b13: $1f
    ld e, $06                                     ; $4b14: $1e $06
    inc c                                         ; $4b16: $0c
    inc d                                         ; $4b17: $14
    ld e, $02                                     ; $4b18: $1e $02
    inc e                                         ; $4b1a: $1c
    inc b                                         ; $4b1b: $04
    inc bc                                        ; $4b1c: $03
    jr @-$7d                                      ; $4b1d: $18 $81

    ld [$1002], sp                                ; $4b1f: $08 $02 $10
    ld [bc], a                                    ; $4b22: $02
    jr jr_0dd_4ab2                                ; $4b23: $18 $8d

    xor b                                         ; $4b25: $a8
    ld hl, sp+$54                                 ; $4b26: $f8 $54
    db $fc                                        ; $4b28: $fc
    inc h                                         ; $4b29: $24
    db $fc                                        ; $4b2a: $fc
    db $e4                                        ; $4b2b: $e4
    db $fc                                        ; $4b2c: $fc
    db $10                                        ; $4b2d: $10
    ld e, $12                                     ; $4b2e: $1e $12
    ld e, $12                                     ; $4b30: $1e $12
    ld [bc], a                                    ; $4b32: $02
    ld e, $97                                     ; $4b33: $1e $97
    inc e                                         ; $4b35: $1c
    rra                                           ; $4b36: $1f
    jr jr_0dd_4b78                                ; $4b37: $18 $3f

    add hl, sp                                    ; $4b39: $39
    ccf                                           ; $4b3a: $3f
    ld a, $63                                     ; $4b3b: $3e $63
    ld a, [hl]                                    ; $4b3d: $7e
    ld b, c                                       ; $4b3e: $41
    ld a, a                                       ; $4b3f: $7f
    ld b, b                                       ; $4b40: $40
    ld a, a                                       ; $4b41: $7f
    ld b, b                                       ; $4b42: $40
    ld a, a                                       ; $4b43: $7f
    pop af                                        ; $4b44: $f1
    rst $38                                       ; $4b45: $ff
    rst $28                                       ; $4b46: $ef
    rst $38                                       ; $4b47: $ff
    ret nz                                        ; $4b48: $c0

    rst $38                                       ; $4b49: $ff
    ld h, b                                       ; $4b4a: $60
    ld a, a                                       ; $4b4b: $7f
    ld [bc], a                                    ; $4b4c: $02
    rra                                           ; $4b4d: $1f
    ld [$0200], sp                                ; $4b4e: $08 $00 $02
    inc a                                         ; $4b51: $3c

jr_0dd_4b52:
    add c                                         ; $4b52: $81
    inc h                                         ; $4b53: $24
    ld [bc], a                                    ; $4b54: $02
    inc a                                         ; $4b55: $3c
    ld [bc], a                                    ; $4b56: $02
    inc e                                         ; $4b57: $1c
    adc a                                         ; $4b58: $8f
    inc a                                         ; $4b59: $3c
    ld h, $3e                                     ; $4b5a: $26 $3e
    ld h, $3e                                     ; $4b5c: $26 $3e
    ld [hl+], a                                   ; $4b5e: $22
    ld a, $03                                     ; $4b5f: $3e $03
    ccf                                           ; $4b61: $3f
    ld bc, $013f                                  ; $4b62: $01 $3f $01
    ccf                                           ; $4b65: $3f
    ld c, $3e                                     ; $4b66: $0e $3e
    ld [bc], a                                    ; $4b68: $02
    jr nc, @+$01                                  ; $4b69: $30 $ff

    dec c                                         ; $4b6b: $0d
    inc b                                         ; $4b6c: $04
    ld sp, hl                                     ; $4b6d: $f9
    ld [$01f2], sp                                ; $4b6e: $08 $f2 $01
    db $e3                                        ; $4b71: $e3
    ei                                            ; $4b72: $fb
    rst $20                                       ; $4b73: $e7
    nop                                           ; $4b74: $00
    di                                            ; $4b75: $f3
    ld sp, hl                                     ; $4b76: $f9
    di                                            ; $4b77: $f3

jr_0dd_4b78:
    rst $38                                       ; $4b78: $ff
    ld [bc], a                                    ; $4b79: $02
    ld [hl], b                                    ; $4b7a: $70
    sbc [hl]                                      ; $4b7b: $9e
    adc h                                         ; $4b7c: $8c
    db $fc                                        ; $4b7d: $fc
    add $fe                                       ; $4b7e: $c6 $fe
    ld b, c                                       ; $4b80: $41
    ld a, a                                       ; $4b81: $7f
    ld e, h                                       ; $4b82: $5c
    ld a, a                                       ; $4b83: $7f
    dec h                                         ; $4b84: $25
    ccf                                           ; $4b85: $3f
    ld a, $3f                                     ; $4b86: $3e $3f
    ld sp, $4f3f                                  ; $4b88: $31 $3f $4f
    ld a, [hl]                                    ; $4b8b: $7e
    cp a                                          ; $4b8c: $bf
    push af                                       ; $4b8d: $f5
    rst $38                                       ; $4b8e: $ff
    xor b                                         ; $4b8f: $a8
    rst $38                                       ; $4b90: $ff
    push de                                       ; $4b91: $d5
    rst $38                                       ; $4b92: $ff
    xor b                                         ; $4b93: $a8
    ld a, a                                       ; $4b94: $7f
    ld l, h                                       ; $4b95: $6c
    or a                                          ; $4b96: $b7
    cp a                                          ; $4b97: $bf
    ld l, e                                       ; $4b98: $6b
    ld a, [hl]                                    ; $4b99: $7e
    ld [bc], a                                    ; $4b9a: $02
    db $10                                        ; $4b9b: $10
    ld [bc], a                                    ; $4b9c: $02
    inc e                                         ; $4b9d: $1c
    adc h                                         ; $4b9e: $8c
    ld [bc], a                                    ; $4b9f: $02
    ld e, $1d                                     ; $4ba0: $1e $1d
    rra                                           ; $4ba2: $1f
    ld e, $06                                     ; $4ba3: $1e $06
    inc c                                         ; $4ba5: $0c
    inc d                                         ; $4ba6: $14
    ld e, $02                                     ; $4ba7: $1e $02
    inc e                                         ; $4ba9: $1c
    inc b                                         ; $4baa: $04
    inc bc                                        ; $4bab: $03
    jr @-$7d                                      ; $4bac: $18 $81

    ld [$1002], sp                                ; $4bae: $08 $02 $10
    ld [bc], a                                    ; $4bb1: $02
    jr jr_0dd_4b52                                ; $4bb2: $18 $9e

    xor b                                         ; $4bb4: $a8
    ld hl, sp+$54                                 ; $4bb5: $f8 $54
    db $fc                                        ; $4bb7: $fc
    inc h                                         ; $4bb8: $24

jr_0dd_4bb9:
    db $fc                                        ; $4bb9: $fc
    call nz, Call_000_10fc                        ; $4bba: $c4 $fc $10
    ld e, $12                                     ; $4bbd: $1e $12
    ld e, $12                                     ; $4bbf: $1e $12
    ld e, $1c                                     ; $4bc1: $1e $1c
    ld e, $1f                                     ; $4bc3: $1e $1f
    ld de, $131d                                  ; $4bc5: $11 $1d $13
    ccf                                           ; $4bc8: $3f
    inc a                                         ; $4bc9: $3c
    ld h, $3d                                     ; $4bca: $26 $3d
    ld h, e                                       ; $4bcc: $63
    ld a, a                                       ; $4bcd: $7f
    ld b, c                                       ; $4bce: $41
    ld a, a                                       ; $4bcf: $7f
    ld h, c                                       ; $4bd0: $61
    ld a, a                                       ; $4bd1: $7f
    ld [bc], a                                    ; $4bd2: $02
    rst $38                                       ; $4bd3: $ff
    add h                                         ; $4bd4: $84
    ret nz                                        ; $4bd5: $c0

    rst $38                                       ; $4bd6: $ff
    ld h, b                                       ; $4bd7: $60
    ld a, a                                       ; $4bd8: $7f
    ld [bc], a                                    ; $4bd9: $02
    rra                                           ; $4bda: $1f
    ld a, [bc]                                    ; $4bdb: $0a
    nop                                           ; $4bdc: $00
    ld [bc], a                                    ; $4bdd: $02
    inc a                                         ; $4bde: $3c
    add c                                         ; $4bdf: $81
    inc h                                         ; $4be0: $24
    dec b                                         ; $4be1: $05
    inc a                                         ; $4be2: $3c
    adc h                                         ; $4be3: $8c

jr_0dd_4be4:
    ld h, $3e                                     ; $4be4: $26 $3e
    ld [bc], a                                    ; $4be6: $02
    ld a, $02                                     ; $4be7: $3e $02
    ld a, $01                                     ; $4be9: $3e $01
    ccf                                           ; $4beb: $3f
    ld bc, $1e3f                                  ; $4bec: $01 $3f $1e
    ld a, $02                                     ; $4bef: $3e $02
    jr nc, jr_0dd_4bf5                            ; $4bf1: $30 $02

    nop                                           ; $4bf3: $00
    rst $38                                       ; $4bf4: $ff

jr_0dd_4bf5:
    dec c                                         ; $4bf5: $0d
    inc b                                         ; $4bf6: $04
    ld sp, hl                                     ; $4bf7: $f9
    ld [$01f2], sp                                ; $4bf8: $08 $f2 $01
    ld [c], a                                     ; $4bfb: $e2
    ei                                            ; $4bfc: $fb
    and $00                                       ; $4bfd: $e6 $00
    ld a, [c]                                     ; $4bff: $f2
    ld sp, hl                                     ; $4c00: $f9
    ld a, [c]                                     ; $4c01: $f2
    rst $38                                       ; $4c02: $ff
    ld [bc], a                                    ; $4c03: $02
    ld [hl], b                                    ; $4c04: $70
    sbc [hl]                                      ; $4c05: $9e
    adc h                                         ; $4c06: $8c
    db $fc                                        ; $4c07: $fc
    add $fe                                       ; $4c08: $c6 $fe
    ld b, c                                       ; $4c0a: $41
    ld a, a                                       ; $4c0b: $7f
    ld e, h                                       ; $4c0c: $5c
    ld a, a                                       ; $4c0d: $7f
    dec h                                         ; $4c0e: $25
    ccf                                           ; $4c0f: $3f
    ld a, $3f                                     ; $4c10: $3e $3f
    ld sp, $4f3f                                  ; $4c12: $31 $3f $4f
    ld a, [hl]                                    ; $4c15: $7e
    cp a                                          ; $4c16: $bf
    push af                                       ; $4c17: $f5
    rst $38                                       ; $4c18: $ff
    ret c                                         ; $4c19: $d8

    rst $38                                       ; $4c1a: $ff
    or l                                          ; $4c1b: $b5
    ld a, a                                       ; $4c1c: $7f
    ld c, b                                       ; $4c1d: $48
    rst $38                                       ; $4c1e: $ff
    xor h                                         ; $4c1f: $ac
    ld [hl], a                                    ; $4c20: $77
    ld a, a                                       ; $4c21: $7f
    xor e                                         ; $4c22: $ab
    cp [hl]                                       ; $4c23: $be
    ld [bc], a                                    ; $4c24: $02
    db $10                                        ; $4c25: $10
    ld [bc], a                                    ; $4c26: $02
    inc e                                         ; $4c27: $1c
    adc h                                         ; $4c28: $8c
    ld [bc], a                                    ; $4c29: $02
    ld e, $1d                                     ; $4c2a: $1e $1d
    rra                                           ; $4c2c: $1f
    ld e, $06                                     ; $4c2d: $1e $06
    inc c                                         ; $4c2f: $0c
    inc d                                         ; $4c30: $14
    ld e, $02                                     ; $4c31: $1e $02
    inc e                                         ; $4c33: $1c
    inc b                                         ; $4c34: $04
    inc bc                                        ; $4c35: $03
    jr jr_0dd_4bb9                                ; $4c36: $18 $81

    ld [$1002], sp                                ; $4c38: $08 $02 $10
    ld [bc], a                                    ; $4c3b: $02
    jr jr_0dd_4be4                                ; $4c3c: $18 $a6

    xor b                                         ; $4c3e: $a8
    ld hl, sp+$54                                 ; $4c3f: $f8 $54
    db $fc                                        ; $4c41: $fc
    ld b, h                                       ; $4c42: $44
    db $fc                                        ; $4c43: $fc
    call z, Call_000_10fc                         ; $4c44: $cc $fc $10
    ld e, $12                                     ; $4c47: $1e $12
    ld e, $16                                     ; $4c49: $1e $16
    ld e, $1a                                     ; $4c4b: $1e $1a
    ld e, $1f                                     ; $4c4d: $1e $1f
    inc de                                        ; $4c4f: $13
    rra                                           ; $4c50: $1f
    ld de, $3f3b                                  ; $4c51: $11 $3b $3f
    cpl                                           ; $4c54: $2f
    add hl, sp                                    ; $4c55: $39
    dec l                                         ; $4c56: $2d
    dec sp                                        ; $4c57: $3b
    ld b, a                                       ; $4c58: $47
    ld a, a                                       ; $4c59: $7f
    ld b, c                                       ; $4c5a: $41
    ld a, a                                       ; $4c5b: $7f
    ld h, d                                       ; $4c5c: $62
    ld a, a                                       ; $4c5d: $7f
    cp $ff                                        ; $4c5e: $fe $ff
    ret nz                                        ; $4c60: $c0

    rst $38                                       ; $4c61: $ff
    ld [hl], b                                    ; $4c62: $70
    ld a, a                                       ; $4c63: $7f
    ld [bc], a                                    ; $4c64: $02
    rrca                                          ; $4c65: $0f
    ld [$0200], sp                                ; $4c66: $08 $00 $02
    inc a                                         ; $4c69: $3c
    add c                                         ; $4c6a: $81
    inc h                                         ; $4c6b: $24
    inc bc                                        ; $4c6c: $03
    inc a                                         ; $4c6d: $3c
    sub b                                         ; $4c6e: $90
    ld h, $3e                                     ; $4c6f: $26 $3e

jr_0dd_4c71:
    ld [bc], a                                    ; $4c71: $02
    ld a, $02                                     ; $4c72: $3e $02
    ld a, $01                                     ; $4c74: $3e $01
    ccf                                           ; $4c76: $3f
    ld bc, $013f                                  ; $4c77: $01 $3f $01
    ccf                                           ; $4c7a: $3f
    ld bc, $0e3f                                  ; $4c7b: $01 $3f $0e
    ld a, $02                                     ; $4c7e: $3e $02
    jr nc, @+$01                                  ; $4c80: $30 $ff

    dec c                                         ; $4c82: $0d
    inc b                                         ; $4c83: $04
    ld sp, hl                                     ; $4c84: $f9
    ld [$01f2], sp                                ; $4c85: $08 $f2 $01
    ld [c], a                                     ; $4c88: $e2
    ei                                            ; $4c89: $fb
    and $00                                       ; $4c8a: $e6 $00
    ld a, [c]                                     ; $4c8c: $f2
    ld sp, hl                                     ; $4c8d: $f9
    ld a, [c]                                     ; $4c8e: $f2
    rst $38                                       ; $4c8f: $ff
    ld [bc], a                                    ; $4c90: $02
    ld [hl], b                                    ; $4c91: $70
    sbc [hl]                                      ; $4c92: $9e
    adc h                                         ; $4c93: $8c
    db $fc                                        ; $4c94: $fc
    add $fe                                       ; $4c95: $c6 $fe
    ld b, c                                       ; $4c97: $41
    ld a, a                                       ; $4c98: $7f
    ld e, h                                       ; $4c99: $5c
    ld a, a                                       ; $4c9a: $7f
    dec h                                         ; $4c9b: $25
    ccf                                           ; $4c9c: $3f
    ld a, $3f                                     ; $4c9d: $3e $3f
    ld sp, $4f3f                                  ; $4c9f: $31 $3f $4f
    ld a, [hl]                                    ; $4ca2: $7e
    cp a                                          ; $4ca3: $bf
    push af                                       ; $4ca4: $f5
    rst $38                                       ; $4ca5: $ff
    ret c                                         ; $4ca6: $d8

    rst $38                                       ; $4ca7: $ff
    or l                                          ; $4ca8: $b5
    ld a, a                                       ; $4ca9: $7f
    ld c, b                                       ; $4caa: $48
    rst $38                                       ; $4cab: $ff
    xor h                                         ; $4cac: $ac
    ld [hl], a                                    ; $4cad: $77
    ld a, a                                       ; $4cae: $7f
    xor e                                         ; $4caf: $ab
    cp [hl]                                       ; $4cb0: $be
    ld [bc], a                                    ; $4cb1: $02
    db $10                                        ; $4cb2: $10
    ld [bc], a                                    ; $4cb3: $02
    inc e                                         ; $4cb4: $1c
    adc h                                         ; $4cb5: $8c
    ld [bc], a                                    ; $4cb6: $02
    ld e, $1d                                     ; $4cb7: $1e $1d
    rra                                           ; $4cb9: $1f
    ld e, $06                                     ; $4cba: $1e $06
    inc c                                         ; $4cbc: $0c
    inc d                                         ; $4cbd: $14
    ld e, $02                                     ; $4cbe: $1e $02
    inc e                                         ; $4cc0: $1c
    inc b                                         ; $4cc1: $04
    inc bc                                        ; $4cc2: $03
    jr @-$7d                                      ; $4cc3: $18 $81

    ld [$1002], sp                                ; $4cc5: $08 $02 $10
    ld [bc], a                                    ; $4cc8: $02
    jr jr_0dd_4c71                                ; $4cc9: $18 $a6

    xor b                                         ; $4ccb: $a8
    ld hl, sp+$54                                 ; $4ccc: $f8 $54
    db $fc                                        ; $4cce: $fc
    ld b, h                                       ; $4ccf: $44
    db $fc                                        ; $4cd0: $fc
    call z, Call_000_12fc                         ; $4cd1: $cc $fc $12

jr_0dd_4cd4:
    ld e, $12                                     ; $4cd4: $1e $12
    ld e, $26                                     ; $4cd6: $1e $26
    ld a, $16                                     ; $4cd8: $3e $16
    ld e, $3f                                     ; $4cda: $1e $3f
    daa                                           ; $4cdc: $27
    ccf                                           ; $4cdd: $3f
    inc hl                                        ; $4cde: $23
    scf                                           ; $4cdf: $37
    ccf                                           ; $4ce0: $3f
    ld a, [hl-]                                   ; $4ce1: $3a
    daa                                           ; $4ce2: $27
    ld e, a                                       ; $4ce3: $5f
    ld [hl], a                                    ; $4ce4: $77
    ld c, l                                       ; $4ce5: $4d
    ld a, a                                       ; $4ce6: $7f
    ld b, d                                       ; $4ce7: $42
    ld a, a                                       ; $4ce8: $7f
    ld h, d                                       ; $4ce9: $62
    ld a, a                                       ; $4cea: $7f
    ld a, [hl]                                    ; $4ceb: $7e
    ld a, a                                       ; $4cec: $7f
    ret nz                                        ; $4ced: $c0

    rst $38                                       ; $4cee: $ff
    ld a, b                                       ; $4cef: $78
    ld a, a                                       ; $4cf0: $7f
    ld [bc], a                                    ; $4cf1: $02
    rlca                                          ; $4cf2: $07
    ld [$0200], sp                                ; $4cf3: $08 $00 $02
    ld a, $82                                     ; $4cf6: $3e $82
    inc h                                         ; $4cf8: $24
    inc a                                         ; $4cf9: $3c
    ld [bc], a                                    ; $4cfa: $02
    ld a, $90                                     ; $4cfb: $3e $90

jr_0dd_4cfd:
    ld h, $3e                                     ; $4cfd: $26 $3e
    ld b, $3e                                     ; $4cff: $06 $3e
    ld [bc], a                                    ; $4d01: $02
    ld a, $02                                     ; $4d02: $3e $02
    ld a, $01                                     ; $4d04: $3e $01
    ccf                                           ; $4d06: $3f
    ld bc, $013f                                  ; $4d07: $01 $3f $01
    ccf                                           ; $4d0a: $3f
    rlca                                          ; $4d0b: $07
    ccf                                           ; $4d0c: $3f
    ld [bc], a                                    ; $4d0d: $02
    ld a, $ff                                     ; $4d0e: $3e $ff
    dec c                                         ; $4d10: $0d
    inc b                                         ; $4d11: $04
    ld sp, hl                                     ; $4d12: $f9
    ld [$01f2], sp                                ; $4d13: $08 $f2 $01
    db $e3                                        ; $4d16: $e3
    ei                                            ; $4d17: $fb
    rst $20                                       ; $4d18: $e7
    nop                                           ; $4d19: $00
    di                                            ; $4d1a: $f3
    ld sp, hl                                     ; $4d1b: $f9
    di                                            ; $4d1c: $f3
    cp $02                                        ; $4d1d: $fe $02
    ld [hl], b                                    ; $4d1f: $70
    sbc [hl]                                      ; $4d20: $9e
    adc h                                         ; $4d21: $8c
    db $fc                                        ; $4d22: $fc
    add $fe                                       ; $4d23: $c6 $fe
    ld b, c                                       ; $4d25: $41
    ld a, a                                       ; $4d26: $7f
    ld e, h                                       ; $4d27: $5c
    ld a, a                                       ; $4d28: $7f
    dec h                                         ; $4d29: $25
    ccf                                           ; $4d2a: $3f
    ld a, $3f                                     ; $4d2b: $3e $3f
    ld sp, $4f3f                                  ; $4d2d: $31 $3f $4f
    ld a, [hl]                                    ; $4d30: $7e
    cp a                                          ; $4d31: $bf
    push af                                       ; $4d32: $f5
    rst $38                                       ; $4d33: $ff
    xor b                                         ; $4d34: $a8
    rst $38                                       ; $4d35: $ff
    push de                                       ; $4d36: $d5
    rst $38                                       ; $4d37: $ff
    xor b                                         ; $4d38: $a8
    ld a, a                                       ; $4d39: $7f
    ld l, h                                       ; $4d3a: $6c
    or a                                          ; $4d3b: $b7
    cp a                                          ; $4d3c: $bf
    ld l, e                                       ; $4d3d: $6b
    ld a, [hl]                                    ; $4d3e: $7e
    ld [bc], a                                    ; $4d3f: $02
    db $10                                        ; $4d40: $10
    ld [bc], a                                    ; $4d41: $02
    inc e                                         ; $4d42: $1c
    adc h                                         ; $4d43: $8c
    ld [bc], a                                    ; $4d44: $02
    ld e, $1d                                     ; $4d45: $1e $1d
    rra                                           ; $4d47: $1f
    ld e, $06                                     ; $4d48: $1e $06
    inc c                                         ; $4d4a: $0c
    inc d                                         ; $4d4b: $14
    ld e, $02                                     ; $4d4c: $1e $02
    inc e                                         ; $4d4e: $1c
    inc b                                         ; $4d4f: $04
    inc bc                                        ; $4d50: $03
    jr jr_0dd_4cd4                                ; $4d51: $18 $81

    ld [$1002], sp                                ; $4d53: $08 $02 $10
    ld [bc], a                                    ; $4d56: $02
    jr jr_0dd_4cfd                                ; $4d57: $18 $a4

    xor b                                         ; $4d59: $a8
    ld hl, sp+$54                                 ; $4d5a: $f8 $54
    db $fc                                        ; $4d5c: $fc
    ld b, h                                       ; $4d5d: $44
    db $fc                                        ; $4d5e: $fc

jr_0dd_4d5f:
    call z, Call_000_12fc                         ; $4d5f: $cc $fc $12
    ld e, $12                                     ; $4d62: $1e $12
    ld e, $26                                     ; $4d64: $1e $26
    ld a, $16                                     ; $4d66: $3e $16
    ld e, $3b                                     ; $4d68: $1e $3b
    daa                                           ; $4d6a: $27
    ccf                                           ; $4d6b: $3f
    inc hl                                        ; $4d6c: $23
    scf                                           ; $4d6d: $37
    ccf                                           ; $4d6e: $3f
    ld a, [hl-]                                   ; $4d6f: $3a
    daa                                           ; $4d70: $27
    ccf                                           ; $4d71: $3f
    scf                                           ; $4d72: $37
    ld c, l                                       ; $4d73: $4d
    ld a, a                                       ; $4d74: $7f
    ld [hl], d                                    ; $4d75: $72
    ld a, a                                       ; $4d76: $7f
    xor $ff                                       ; $4d77: $ee $ff
    ret nz                                        ; $4d79: $c0

    rst $38                                       ; $4d7a: $ff
    ld h, b                                       ; $4d7b: $60
    ld a, a                                       ; $4d7c: $7f
    ld [bc], a                                    ; $4d7d: $02
    rra                                           ; $4d7e: $1f
    ld a, [bc]                                    ; $4d7f: $0a
    nop                                           ; $4d80: $00
    ld [bc], a                                    ; $4d81: $02
    rra                                           ; $4d82: $1f
    add c                                         ; $4d83: $81
    ld [de], a                                    ; $4d84: $12
    inc bc                                        ; $4d85: $03
    ld e, $8e                                     ; $4d86: $1e $8e
    rla                                           ; $4d88: $17
    rra                                           ; $4d89: $1f

jr_0dd_4d8a:
    inc bc                                        ; $4d8a: $03
    rra                                           ; $4d8b: $1f
    inc bc                                        ; $4d8c: $03
    rra                                           ; $4d8d: $1f
    ld bc, $011f                                  ; $4d8e: $01 $1f $01
    rra                                           ; $4d91: $1f
    ld bc, $011f                                  ; $4d92: $01 $1f $01
    rra                                           ; $4d95: $1f
    ld [bc], a                                    ; $4d96: $02
    ld e, $02                                     ; $4d97: $1e $02
    nop                                           ; $4d99: $00
    rst $38                                       ; $4d9a: $ff
    dec c                                         ; $4d9b: $0d
    inc b                                         ; $4d9c: $04
    ld sp, hl                                     ; $4d9d: $f9
    ld [$01f2], sp                                ; $4d9e: $08 $f2 $01
    ld [c], a                                     ; $4da1: $e2
    ei                                            ; $4da2: $fb
    and $00                                       ; $4da3: $e6 $00
    ld a, [c]                                     ; $4da5: $f2
    ld sp, hl                                     ; $4da6: $f9
    ld a, [c]                                     ; $4da7: $f2
    rst $38                                       ; $4da8: $ff
    ld [bc], a                                    ; $4da9: $02
    ld [hl], b                                    ; $4daa: $70
    sbc [hl]                                      ; $4dab: $9e
    adc h                                         ; $4dac: $8c
    db $fc                                        ; $4dad: $fc
    add $fe                                       ; $4dae: $c6 $fe
    ld b, c                                       ; $4db0: $41
    ld a, a                                       ; $4db1: $7f
    ld e, h                                       ; $4db2: $5c
    ld a, a                                       ; $4db3: $7f
    dec h                                         ; $4db4: $25
    ccf                                           ; $4db5: $3f
    ld a, $3f                                     ; $4db6: $3e $3f
    ld sp, $4f3f                                  ; $4db8: $31 $3f $4f
    ld a, [hl]                                    ; $4dbb: $7e
    cp a                                          ; $4dbc: $bf
    push af                                       ; $4dbd: $f5
    rst $38                                       ; $4dbe: $ff
    ret c                                         ; $4dbf: $d8

    rst $38                                       ; $4dc0: $ff
    or l                                          ; $4dc1: $b5
    ld a, a                                       ; $4dc2: $7f
    ld c, b                                       ; $4dc3: $48
    rst $38                                       ; $4dc4: $ff
    xor h                                         ; $4dc5: $ac
    ld [hl], a                                    ; $4dc6: $77
    ld a, a                                       ; $4dc7: $7f
    xor e                                         ; $4dc8: $ab
    cp [hl]                                       ; $4dc9: $be
    ld [bc], a                                    ; $4dca: $02
    db $10                                        ; $4dcb: $10
    ld [bc], a                                    ; $4dcc: $02
    inc e                                         ; $4dcd: $1c
    adc h                                         ; $4dce: $8c
    ld [bc], a                                    ; $4dcf: $02
    ld e, $1d                                     ; $4dd0: $1e $1d
    rra                                           ; $4dd2: $1f
    ld e, $06                                     ; $4dd3: $1e $06
    inc c                                         ; $4dd5: $0c
    inc d                                         ; $4dd6: $14
    ld e, $02                                     ; $4dd7: $1e $02
    inc e                                         ; $4dd9: $1c
    inc b                                         ; $4dda: $04
    inc bc                                        ; $4ddb: $03
    jr jr_0dd_4d5f                                ; $4ddc: $18 $81

    ld [$1002], sp                                ; $4dde: $08 $02 $10
    ld [bc], a                                    ; $4de1: $02
    jr jr_0dd_4d8a                                ; $4de2: $18 $a6

    xor b                                         ; $4de4: $a8
    ld hl, sp+$54                                 ; $4de5: $f8 $54
    db $fc                                        ; $4de7: $fc

jr_0dd_4de8:
    ld b, h                                       ; $4de8: $44
    db $fc                                        ; $4de9: $fc
    call z, Call_000_10fc                         ; $4dea: $cc $fc $10
    ld e, $12                                     ; $4ded: $1e $12
    ld e, $16                                     ; $4def: $1e $16
    ld e, $1a                                     ; $4df1: $1e $1a
    ld e, $1f                                     ; $4df3: $1e $1f
    inc de                                        ; $4df5: $13
    rra                                           ; $4df6: $1f
    ld de, $3f3b                                  ; $4df7: $11 $3b $3f
    cpl                                           ; $4dfa: $2f
    add hl, sp                                    ; $4dfb: $39
    ld l, l                                       ; $4dfc: $6d
    ld a, e                                       ; $4dfd: $7b
    ld b, [hl]                                    ; $4dfe: $46
    ld a, a                                       ; $4dff: $7f
    ld b, c                                       ; $4e00: $41
    ld a, a                                       ; $4e01: $7f
    pop af                                        ; $4e02: $f1
    rst $38                                       ; $4e03: $ff
    rst $28                                       ; $4e04: $ef
    rst $38                                       ; $4e05: $ff
    ret nz                                        ; $4e06: $c0

    rst $38                                       ; $4e07: $ff
    ld h, b                                       ; $4e08: $60
    ld a, a                                       ; $4e09: $7f
    ld [bc], a                                    ; $4e0a: $02
    rra                                           ; $4e0b: $1f
    ld [$0200], sp                                ; $4e0c: $08 $00 $02
    inc a                                         ; $4e0f: $3c
    add c                                         ; $4e10: $81
    inc h                                         ; $4e11: $24
    inc bc                                        ; $4e12: $03
    inc a                                         ; $4e13: $3c
    sub b                                         ; $4e14: $90
    ld l, $3e                                     ; $4e15: $2e $3e
    ld h, $3e                                     ; $4e17: $26 $3e
    inc hl                                        ; $4e19: $23
    ccf                                           ; $4e1a: $3f
    inc bc                                        ; $4e1b: $03
    ccf                                           ; $4e1c: $3f
    inc bc                                        ; $4e1d: $03
    ccf                                           ; $4e1e: $3f
    ld [bc], a                                    ; $4e1f: $02
    ld a, $02                                     ; $4e20: $3e $02
    ld a, $06                                     ; $4e22: $3e $06
    ld a, $02                                     ; $4e24: $3e $02
    jr c, @+$01                                   ; $4e26: $38 $ff

    dec c                                         ; $4e28: $0d
    inc b                                         ; $4e29: $04
    ld hl, sp+$07                                 ; $4e2a: $f8 $07
    ld a, [c]                                     ; $4e2c: $f2
    ld bc, $faeb                                  ; $4e2d: $01 $eb $fa
    db $eb                                        ; $4e30: $eb
    rst $38                                       ; $4e31: $ff
    ei                                            ; $4e32: $fb
    ld a, [$fffb]                                 ; $4e33: $fa $fb $ff
    ld [bc], a                                    ; $4e36: $02
    dec c                                         ; $4e37: $0d
    adc e                                         ; $4e38: $8b
    ld [de], a                                    ; $4e39: $12
    rra                                           ; $4e3a: $1f
    jr z, jr_0dd_4e7c                             ; $4e3b: $28 $3f

    ld [hl-], a                                   ; $4e3d: $32
    ccf                                           ; $4e3e: $3f
    ld a, [hl+]                                   ; $4e3f: $2a
    ccf                                           ; $4e40: $3f
    dec [hl]                                      ; $4e41: $35
    ccf                                           ; $4e42: $3f
    ld a, [de]                                    ; $4e43: $1a
    ld [bc], a                                    ; $4e44: $02
    rra                                           ; $4e45: $1f
    add c                                         ; $4e46: $81
    rla                                           ; $4e47: $17
    ld [bc], a                                    ; $4e48: $02
    rra                                           ; $4e49: $1f
    ld [bc], a                                    ; $4e4a: $02
    jr nz, jr_0dd_4e51                            ; $4e4b: $20 $04

    ld d, b                                       ; $4e4d: $50
    ld [bc], a                                    ; $4e4e: $02
    ret nc                                        ; $4e4f: $d0

    add [hl]                                      ; $4e50: $86

jr_0dd_4e51:
    db $f4                                        ; $4e51: $f4
    or h                                          ; $4e52: $b4
    db $e3                                        ; $4e53: $e3
    and e                                         ; $4e54: $a3
    ldh a, [$b0]                                  ; $4e55: $f0 $b0
    ld [bc], a                                    ; $4e57: $02
    db $10                                        ; $4e58: $10
    adc d                                         ; $4e59: $8a
    ld [$1418], sp                                ; $4e5a: $08 $18 $14
    inc e                                         ; $4e5d: $1c
    inc c                                         ; $4e5e: $0c
    inc e                                         ; $4e5f: $1c
    inc d                                         ; $4e60: $14
    inc e                                         ; $4e61: $1c
    inc c                                         ; $4e62: $0c
    inc e                                         ; $4e63: $1c
    inc bc                                        ; $4e64: $03
    jr jr_0dd_4de8                                ; $4e65: $18 $81

    ld [$1802], sp                                ; $4e67: $08 $02 $18
    ld [bc], a                                    ; $4e6a: $02
    inc b                                         ; $4e6b: $04
    inc b                                         ; $4e6c: $04
    ld a, [bc]                                    ; $4e6d: $0a
    ld [bc], a                                    ; $4e6e: $02
    dec bc                                        ; $4e6f: $0b
    adc b                                         ; $4e70: $88
    rrca                                          ; $4e71: $0f
    dec c                                         ; $4e72: $0d
    rlca                                          ; $4e73: $07
    dec b                                         ; $4e74: $05
    rrca                                          ; $4e75: $0f
    dec c                                         ; $4e76: $0d
    ld a, [c]                                     ; $4e77: $f2
    or d                                          ; $4e78: $b2
    ld [bc], a                                    ; $4e79: $02
    ld d, d                                       ; $4e7a: $52
    ld [bc], a                                    ; $4e7b: $02

jr_0dd_4e7c:
    rla                                           ; $4e7c: $17
    ld [bc], a                                    ; $4e7d: $02
    ld [hl+], a                                   ; $4e7e: $22
    ld [bc], a                                    ; $4e7f: $02
    dec [hl]                                      ; $4e80: $35
    ld [bc], a                                    ; $4e81: $02
    dec l                                         ; $4e82: $2d
    ld [bc], a                                    ; $4e83: $02
    jr jr_0dd_4e98                                ; $4e84: $18 $12

    nop                                           ; $4e86: $00
    add d                                         ; $4e87: $82
    rrca                                          ; $4e88: $0f
    dec c                                         ; $4e89: $0d
    ld [bc], a                                    ; $4e8a: $02
    ld a, [bc]                                    ; $4e8b: $0a
    ld [bc], a                                    ; $4e8c: $02
    ld [$0402], sp                                ; $4e8d: $08 $02 $04
    ld [bc], a                                    ; $4e90: $02
    inc c                                         ; $4e91: $0c
    ld [bc], a                                    ; $4e92: $02
    inc d                                         ; $4e93: $14
    ld [bc], a                                    ; $4e94: $02
    jr jr_0dd_4ea9                                ; $4e95: $18 $12

    nop                                           ; $4e97: $00

jr_0dd_4e98:
    rst $38                                       ; $4e98: $ff
    add hl, bc                                    ; $4e99: $09
    ld [bc], a                                    ; $4e9a: $02
    ld hl, sp+$07                                 ; $4e9b: $f8 $07
    ld a, [c]                                     ; $4e9d: $f2
    ld bc, $fcf4                                  ; $4e9e: $01 $f4 $fc
    db $f4                                        ; $4ea1: $f4
    db $fd                                        ; $4ea2: $fd
    adc [hl]                                      ; $4ea3: $8e
    nop                                           ; $4ea4: $00
    ld a, a                                       ; $4ea5: $7f
    nop                                           ; $4ea6: $00
    cp [hl]                                       ; $4ea7: $be
    nop                                           ; $4ea8: $00

jr_0dd_4ea9:
    cp [hl]                                       ; $4ea9: $be
    nop                                           ; $4eaa: $00
    cp [hl]                                       ; $4eab: $be
    nop                                           ; $4eac: $00
    ld l, $00                                     ; $4ead: $2e $00
    ld [hl], e                                    ; $4eaf: $73
    nop                                           ; $4eb0: $00
    ld a, $04                                     ; $4eb1: $3e $04
    ld [hl], $02                                  ; $4eb3: $36 $02
    ld [hl+], a                                   ; $4eb5: $22
    ld [bc], a                                    ; $4eb6: $02
    ld [hl], a                                    ; $4eb7: $77
    ld [bc], a                                    ; $4eb8: $02
    ld [hl+], a                                   ; $4eb9: $22
    add c                                         ; $4eba: $81
    ld b, c                                       ; $4ebb: $41
    ld a, [bc]                                    ; $4ebc: $0a
    nop                                           ; $4ebd: $00
    add l                                         ; $4ebe: $85
    ld bc, $0100                                  ; $4ebf: $01 $00 $01
    nop                                           ; $4ec2: $00
    ld bc, $0018                                  ; $4ec3: $01 $18 $00
    rst $38                                       ; $4ec6: $ff
    dec c                                         ; $4ec7: $0d
    inc b                                         ; $4ec8: $04
    ld hl, sp+$07                                 ; $4ec9: $f8 $07
    ld a, [c]                                     ; $4ecb: $f2
    ld bc, $faeb                                  ; $4ecc: $01 $eb $fa
    db $eb                                        ; $4ecf: $eb
    rst $38                                       ; $4ed0: $ff
    ei                                            ; $4ed1: $fb
    ld a, [$fdfb]                                 ; $4ed2: $fa $fb $fd
    ld [bc], a                                    ; $4ed5: $02
    dec c                                         ; $4ed6: $0d
    adc e                                         ; $4ed7: $8b
    ld [de], a                                    ; $4ed8: $12
    rra                                           ; $4ed9: $1f
    inc h                                         ; $4eda: $24
    ccf                                           ; $4edb: $3f
    jr nz, jr_0dd_4f1d                            ; $4edc: $20 $3f

    dec [hl]                                      ; $4ede: $35
    ccf                                           ; $4edf: $3f
    ld a, [hl-]                                   ; $4ee0: $3a
    ccf                                           ; $4ee1: $3f
    dec d                                         ; $4ee2: $15
    dec b                                         ; $4ee3: $05
    rra                                           ; $4ee4: $1f
    ld [bc], a                                    ; $4ee5: $02
    jr nz, jr_0dd_4eec                            ; $4ee6: $20 $04

    ld d, b                                       ; $4ee8: $50
    ld [bc], a                                    ; $4ee9: $02
    ldh a, [$86]                                  ; $4eea: $f0 $86

jr_0dd_4eec:
    db $f4                                        ; $4eec: $f4
    or h                                          ; $4eed: $b4
    db $e3                                        ; $4eee: $e3
    and e                                         ; $4eef: $a3
    ldh a, [$b0]                                  ; $4ef0: $f0 $b0
    ld [bc], a                                    ; $4ef2: $02
    db $10                                        ; $4ef3: $10
    add d                                         ; $4ef4: $82
    ld [$0218], sp                                ; $4ef5: $08 $18 $02
    inc e                                         ; $4ef8: $1c
    add e                                         ; $4ef9: $83
    inc d                                         ; $4efa: $14
    inc e                                         ; $4efb: $1c
    inc c                                         ; $4efc: $0c
    dec b                                         ; $4efd: $05
    inc e                                         ; $4efe: $1c
    add d                                         ; $4eff: $82
    jr jr_0dd_4f0a                                ; $4f00: $18 $08

    ld [bc], a                                    ; $4f02: $02
    jr jr_0dd_4f07                                ; $4f03: $18 $02

    ld b, $02                                     ; $4f05: $06 $02

jr_0dd_4f07:
    ld a, [bc]                                    ; $4f07: $0a
    ld [bc], a                                    ; $4f08: $02
    dec bc                                        ; $4f09: $0b

jr_0dd_4f0a:
    adc h                                         ; $4f0a: $8c
    rrca                                          ; $4f0b: $0f
    dec c                                         ; $4f0c: $0d
    rrca                                          ; $4f0d: $0f
    dec c                                         ; $4f0e: $0d
    rlca                                          ; $4f0f: $07
    dec b                                         ; $4f10: $05
    ld c, $0a                                     ; $4f11: $0e $0a
    ld a, [c]                                     ; $4f13: $f2
    sub d                                         ; $4f14: $92
    or $b6                                        ; $4f15: $f6 $b6
    ld [bc], a                                    ; $4f17: $02
    halt                                          ; $4f18: $76
    ld [bc], a                                    ; $4f19: $02
    ld a, $02                                     ; $4f1a: $3e $02
    scf                                           ; $4f1c: $37

jr_0dd_4f1d:
    ld [bc], a                                    ; $4f1d: $02
    add hl, de                                    ; $4f1e: $19
    ld [bc], a                                    ; $4f1f: $02
    ld bc, $0012                                  ; $4f20: $01 $12 $00
    ld [bc], a                                    ; $4f23: $02
    inc bc                                        ; $4f24: $03
    ld [bc], a                                    ; $4f25: $02
    ld [bc], a                                    ; $4f26: $02
    ld [bc], a                                    ; $4f27: $02
    ld bc, $0702                                  ; $4f28: $01 $02 $07
    ld [bc], a                                    ; $4f2b: $02
    inc bc                                        ; $4f2c: $03
    inc b                                         ; $4f2d: $04
    rlca                                          ; $4f2e: $07
    ld [de], a                                    ; $4f2f: $12
    nop                                           ; $4f30: $00
    rst $38                                       ; $4f31: $ff
    dec c                                         ; $4f32: $0d
    inc b                                         ; $4f33: $04
    ld hl, sp+$07                                 ; $4f34: $f8 $07
    ld a, [c]                                     ; $4f36: $f2
    ld bc, $faec                                  ; $4f37: $01 $ec $fa
    db $ec                                        ; $4f3a: $ec
    rst $38                                       ; $4f3b: $ff
    db $fc                                        ; $4f3c: $fc
    ld a, [$fdfc]                                 ; $4f3d: $fa $fc $fd
    ld [bc], a                                    ; $4f40: $02
    dec c                                         ; $4f41: $0d
    adc e                                         ; $4f42: $8b
    ld [de], a                                    ; $4f43: $12
    rra                                           ; $4f44: $1f
    inc h                                         ; $4f45: $24
    ccf                                           ; $4f46: $3f
    jr nz, jr_0dd_4f88                            ; $4f47: $20 $3f

    dec [hl]                                      ; $4f49: $35
    ccf                                           ; $4f4a: $3f
    ld a, [hl-]                                   ; $4f4b: $3a
    ccf                                           ; $4f4c: $3f
    dec d                                         ; $4f4d: $15
    dec b                                         ; $4f4e: $05
    rra                                           ; $4f4f: $1f
    ld [bc], a                                    ; $4f50: $02
    jr nz, jr_0dd_4f57                            ; $4f51: $20 $04

    ld d, b                                       ; $4f53: $50
    ld [bc], a                                    ; $4f54: $02
    or b                                          ; $4f55: $b0
    ld [bc], a                                    ; $4f56: $02

jr_0dd_4f57:
    or $84                                        ; $4f57: $f6 $84
    ldh [$a0], a                                  ; $4f59: $e0 $a0
    ld a, [c]                                     ; $4f5b: $f2
    or d                                          ; $4f5c: $b2
    ld [bc], a                                    ; $4f5d: $02
    db $10                                        ; $4f5e: $10
    add d                                         ; $4f5f: $82
    ld [$0218], sp                                ; $4f60: $08 $18 $02
    inc e                                         ; $4f63: $1c
    add e                                         ; $4f64: $83
    inc d                                         ; $4f65: $14
    inc e                                         ; $4f66: $1c
    inc c                                         ; $4f67: $0c
    inc b                                         ; $4f68: $04
    inc e                                         ; $4f69: $1c
    add e                                         ; $4f6a: $83
    inc d                                         ; $4f6b: $14
    jr jr_0dd_4f76                                ; $4f6c: $18 $08

    ld [bc], a                                    ; $4f6e: $02
    jr jr_0dd_4f73                                ; $4f6f: $18 $02

    ld b, $02                                     ; $4f71: $06 $02

jr_0dd_4f73:
    ld a, [bc]                                    ; $4f73: $0a
    ld [bc], a                                    ; $4f74: $02
    dec bc                                        ; $4f75: $0b

jr_0dd_4f76:
    add [hl]                                      ; $4f76: $86
    rrca                                          ; $4f77: $0f
    dec c                                         ; $4f78: $0d
    rrca                                          ; $4f79: $0f
    dec c                                         ; $4f7a: $0d
    rlca                                          ; $4f7b: $07
    dec b                                         ; $4f7c: $05
    ld [bc], a                                    ; $4f7d: $02
    ld c, $84                                     ; $4f7e: $0e $84
    di                                            ; $4f80: $f3
    sub e                                         ; $4f81: $93
    or $b6                                        ; $4f82: $f6 $b6
    ld [bc], a                                    ; $4f84: $02
    ld [hl], a                                    ; $4f85: $77
    ld [bc], a                                    ; $4f86: $02
    daa                                           ; $4f87: $27

jr_0dd_4f88:
    ld [bc], a                                    ; $4f88: $02
    dec a                                         ; $4f89: $3d
    ld [bc], a                                    ; $4f8a: $02
    ld bc, $0014                                  ; $4f8b: $01 $14 $00
    ld [bc], a                                    ; $4f8e: $02
    ld bc, $0702                                  ; $4f8f: $01 $02 $07
    ld [bc], a                                    ; $4f92: $02
    inc bc                                        ; $4f93: $03
    inc b                                         ; $4f94: $04
    rlca                                          ; $4f95: $07
    ld [bc], a                                    ; $4f96: $02
    ld b, $14                                     ; $4f97: $06 $14
    nop                                           ; $4f99: $00
    rst $38                                       ; $4f9a: $ff
    add hl, bc                                    ; $4f9b: $09
    ld [bc], a                                    ; $4f9c: $02
    ld hl, sp+$07                                 ; $4f9d: $f8 $07
    ld a, [c]                                     ; $4f9f: $f2
    ld bc, $fbf5                                  ; $4fa0: $01 $f5 $fb
    push af                                       ; $4fa3: $f5
    db $fd                                        ; $4fa4: $fd
    adc h                                         ; $4fa5: $8c
    nop                                           ; $4fa6: $00
    ccf                                           ; $4fa7: $3f
    nop                                           ; $4fa8: $00
    ld e, a                                       ; $4fa9: $5f
    nop                                           ; $4faa: $00
    ld e, a                                       ; $4fab: $5f
    nop                                           ; $4fac: $00
    sbc a                                         ; $4fad: $9f
    nop                                           ; $4fae: $00
    inc de                                        ; $4faf: $13
    nop                                           ; $4fb0: $00
    ccf                                           ; $4fb1: $3f
    ld [bc], a                                    ; $4fb2: $02
    dec de                                        ; $4fb3: $1b
    ld [bc], a                                    ; $4fb4: $02
    add hl, de                                    ; $4fb5: $19
    ld [bc], a                                    ; $4fb6: $02
    ld [de], a                                    ; $4fb7: $12
    add e                                         ; $4fb8: $83
    ld de, $3010                                  ; $4fb9: $11 $10 $30
    inc c                                         ; $4fbc: $0c
    nop                                           ; $4fbd: $00
    add l                                         ; $4fbe: $85
    ld [bc], a                                    ; $4fbf: $02
    nop                                           ; $4fc0: $00
    ld bc, $0100                                  ; $4fc1: $01 $00 $01
    dec b                                         ; $4fc4: $05
    nop                                           ; $4fc5: $00
    add c                                         ; $4fc6: $81
    ld [bc], a                                    ; $4fc7: $02
    ld [bc], a                                    ; $4fc8: $02
    nop                                           ; $4fc9: $00
    ld [bc], a                                    ; $4fca: $02
    ld [bc], a                                    ; $4fcb: $02
    stop                                          ; $4fcc: $10 $00
    rst $38                                       ; $4fce: $ff
    dec c                                         ; $4fcf: $0d
    inc b                                         ; $4fd0: $04
    ld hl, sp+$07                                 ; $4fd1: $f8 $07
    ld a, [c]                                     ; $4fd3: $f2
    ld bc, $faeb                                  ; $4fd4: $01 $eb $fa
    db $eb                                        ; $4fd7: $eb
    rst $38                                       ; $4fd8: $ff
    ei                                            ; $4fd9: $fb
    ld a, [$fffb]                                 ; $4fda: $fa $fb $ff
    ld [bc], a                                    ; $4fdd: $02
    dec c                                         ; $4fde: $0d
    adc e                                         ; $4fdf: $8b
    ld [de], a                                    ; $4fe0: $12
    rra                                           ; $4fe1: $1f
    jr z, jr_0dd_5023                             ; $4fe2: $28 $3f

    ld [hl-], a                                   ; $4fe4: $32
    ccf                                           ; $4fe5: $3f
    ld a, [hl+]                                   ; $4fe6: $2a
    ccf                                           ; $4fe7: $3f
    dec [hl]                                      ; $4fe8: $35
    ccf                                           ; $4fe9: $3f
    ld a, [de]                                    ; $4fea: $1a
    ld [bc], a                                    ; $4feb: $02
    rra                                           ; $4fec: $1f
    add c                                         ; $4fed: $81
    rla                                           ; $4fee: $17
    ld [bc], a                                    ; $4fef: $02
    rra                                           ; $4ff0: $1f
    ld [bc], a                                    ; $4ff1: $02
    jr nz, jr_0dd_4ff8                            ; $4ff2: $20 $04

    ld d, b                                       ; $4ff4: $50
    ld [bc], a                                    ; $4ff5: $02
    ret nc                                        ; $4ff6: $d0

    add [hl]                                      ; $4ff7: $86

jr_0dd_4ff8:
    db $f4                                        ; $4ff8: $f4
    or h                                          ; $4ff9: $b4
    db $e3                                        ; $4ffa: $e3
    and e                                         ; $4ffb: $a3
    ldh a, [$90]                                  ; $4ffc: $f0 $90
    ld [bc], a                                    ; $4ffe: $02
    db $10                                        ; $4fff: $10
    adc c                                         ; $5000: $89
    ld [$1418], sp                                ; $5001: $08 $18 $14
    inc e                                         ; $5004: $1c
    inc c                                         ; $5005: $0c
    inc e                                         ; $5006: $1c
    inc d                                         ; $5007: $14
    inc e                                         ; $5008: $1c
    inc c                                         ; $5009: $0c
    inc bc                                        ; $500a: $03
    inc e                                         ; $500b: $1c
    add d                                         ; $500c: $82
    jr jr_0dd_5017                                ; $500d: $18 $08

    ld [bc], a                                    ; $500f: $02
    jr jr_0dd_5014                                ; $5010: $18 $02

    inc b                                         ; $5012: $04
    inc b                                         ; $5013: $04

jr_0dd_5014:
    ld a, [bc]                                    ; $5014: $0a
    ld [bc], a                                    ; $5015: $02
    dec bc                                        ; $5016: $0b

jr_0dd_5017:
    adc b                                         ; $5017: $88
    rrca                                          ; $5018: $0f
    dec c                                         ; $5019: $0d
    rlca                                          ; $501a: $07
    dec b                                         ; $501b: $05
    rrca                                          ; $501c: $0f
    dec c                                         ; $501d: $0d
    ld a, [c]                                     ; $501e: $f2
    or d                                          ; $501f: $b2
    ld [bc], a                                    ; $5020: $02
    ld d, e                                       ; $5021: $53
    ld [bc], a                                    ; $5022: $02

jr_0dd_5023:
    rla                                           ; $5023: $17
    ld [bc], a                                    ; $5024: $02
    inc hl                                        ; $5025: $23
    ld [bc], a                                    ; $5026: $02
    dec a                                         ; $5027: $3d
    ld [bc], a                                    ; $5028: $02
    dec h                                         ; $5029: $25
    ld [bc], a                                    ; $502a: $02
    jr c, @+$14                                   ; $502b: $38 $12

    nop                                           ; $502d: $00
    add d                                         ; $502e: $82
    rrca                                          ; $502f: $0f
    dec c                                         ; $5030: $0d
    ld [bc], a                                    ; $5031: $02
    ld d, $02                                     ; $5032: $16 $02
    inc b                                         ; $5034: $04
    inc b                                         ; $5035: $04
    inc e                                         ; $5036: $1c
    ld [bc], a                                    ; $5037: $02
    jr jr_0dd_504e                                ; $5038: $18 $14

    nop                                           ; $503a: $00
    rst $38                                       ; $503b: $ff
    add hl, bc                                    ; $503c: $09
    ld [bc], a                                    ; $503d: $02
    ld hl, sp+$07                                 ; $503e: $f8 $07
    ld a, [c]                                     ; $5040: $f2
    ld bc, $fcf4                                  ; $5041: $01 $f4 $fc
    db $f4                                        ; $5044: $f4
    db $fd                                        ; $5045: $fd
    adc [hl]                                      ; $5046: $8e
    nop                                           ; $5047: $00
    ld a, a                                       ; $5048: $7f
    nop                                           ; $5049: $00
    cp [hl]                                       ; $504a: $be
    nop                                           ; $504b: $00
    cp [hl]                                       ; $504c: $be
    nop                                           ; $504d: $00

jr_0dd_504e:
    cp [hl]                                       ; $504e: $be
    nop                                           ; $504f: $00
    ld l, $00                                     ; $5050: $2e $00
    ld [hl], e                                    ; $5052: $73
    nop                                           ; $5053: $00
    ld a, $02                                     ; $5054: $3e $02
    ld [hl], $02                                  ; $5056: $36 $02
    ld sp, $2302                                  ; $5058: $31 $02 $23
    ld [bc], a                                    ; $505b: $02
    ld [hl], b                                    ; $505c: $70
    ld [bc], a                                    ; $505d: $02
    nop                                           ; $505e: $00
    add c                                         ; $505f: $81
    ld h, b                                       ; $5060: $60
    ld a, [bc]                                    ; $5061: $0a
    nop                                           ; $5062: $00
    add l                                         ; $5063: $85
    ld bc, $0100                                  ; $5064: $01 $00 $01
    nop                                           ; $5067: $00
    ld bc, $0018                                  ; $5068: $01 $18 $00
    rst $38                                       ; $506b: $ff
    dec c                                         ; $506c: $0d
    inc b                                         ; $506d: $04
    ld hl, sp+$07                                 ; $506e: $f8 $07
    ld a, [c]                                     ; $5070: $f2
    ld bc, $faeb                                  ; $5071: $01 $eb $fa
    db $eb                                        ; $5074: $eb
    rst $38                                       ; $5075: $ff
    ei                                            ; $5076: $fb
    db $fc                                        ; $5077: $fc
    ei                                            ; $5078: $fb
    rst $38                                       ; $5079: $ff
    ld [bc], a                                    ; $507a: $02
    dec c                                         ; $507b: $0d
    adc [hl]                                      ; $507c: $8e
    ld [de], a                                    ; $507d: $12
    rra                                           ; $507e: $1f
    add hl, sp                                    ; $507f: $39
    ccf                                           ; $5080: $3f
    jr z, jr_0dd_50c2                             ; $5081: $28 $3f

    dec [hl]                                      ; $5083: $35
    ccf                                           ; $5084: $3f
    ld a, [hl-]                                   ; $5085: $3a
    ccf                                           ; $5086: $3f
    dec a                                         ; $5087: $3d
    ccf                                           ; $5088: $3f
    rra                                           ; $5089: $1f
    rla                                           ; $508a: $17
    ld [bc], a                                    ; $508b: $02
    rra                                           ; $508c: $1f
    ld [bc], a                                    ; $508d: $02
    ld h, b                                       ; $508e: $60
    ld [bc], a                                    ; $508f: $02
    ld d, b                                       ; $5090: $50
    ld [bc], a                                    ; $5091: $02
    ret nc                                        ; $5092: $d0

    adc b                                         ; $5093: $88
    ldh a, [$b0]                                  ; $5094: $f0 $b0
    db $f4                                        ; $5096: $f4
    or h                                          ; $5097: $b4
    db $e3                                        ; $5098: $e3
    and e                                         ; $5099: $a3
    ld [hl], b                                    ; $509a: $70
    ld d, b                                       ; $509b: $50
    ld [bc], a                                    ; $509c: $02
    db $10                                        ; $509d: $10
    add a                                         ; $509e: $87
    ld [$0418], sp                                ; $509f: $08 $18 $04
    inc e                                         ; $50a2: $1c
    inc b                                         ; $50a3: $04
    inc e                                         ; $50a4: $1c
    inc c                                         ; $50a5: $0c
    inc bc                                        ; $50a6: $03
    inc e                                         ; $50a7: $1c
    add c                                         ; $50a8: $81
    ld [$1805], sp                                ; $50a9: $08 $05 $18
    ld [bc], a                                    ; $50ac: $02
    inc b                                         ; $50ad: $04
    inc b                                         ; $50ae: $04
    ld a, [bc]                                    ; $50af: $0a
    inc bc                                        ; $50b0: $03
    rrca                                          ; $50b1: $0f
    add l                                         ; $50b2: $85
    dec c                                         ; $50b3: $0d
    rlca                                          ; $50b4: $07
    dec b                                         ; $50b5: $05
    rrca                                          ; $50b6: $0f
    dec c                                         ; $50b7: $0d
    ld [bc], a                                    ; $50b8: $02
    ret                                           ; $50b9: $c9


    ld [bc], a                                    ; $50ba: $02
    ld c, l                                       ; $50bb: $4d
    ld [bc], a                                    ; $50bc: $02
    adc l                                         ; $50bd: $8d
    ld [bc], a                                    ; $50be: $02
    rst $28                                       ; $50bf: $ef
    ld [bc], a                                    ; $50c0: $02
    db $dd                                        ; $50c1: $dd

jr_0dd_50c2:
    ld [bc], a                                    ; $50c2: $02
    di                                            ; $50c3: $f3
    ld [bc], a                                    ; $50c4: $02
    ldh a, [rNR12]                                ; $50c5: $f0 $12
    nop                                           ; $50c7: $00
    add h                                         ; $50c8: $84
    rlca                                          ; $50c9: $07
    ld bc, $0507                                  ; $50ca: $01 $07 $05
    ld [bc], a                                    ; $50cd: $02
    ld b, $04                                     ; $50ce: $06 $04
    inc b                                         ; $50d0: $04
    ld d, $00                                     ; $50d1: $16 $00
    rst $38                                       ; $50d3: $ff
    add hl, bc                                    ; $50d4: $09
    ld [bc], a                                    ; $50d5: $02
    ld hl, sp+$07                                 ; $50d6: $f8 $07
    ld a, [c]                                     ; $50d8: $f2
    ld bc, $fcf4                                  ; $50d9: $01 $f4 $fc
    db $f4                                        ; $50dc: $f4
    db $fd                                        ; $50dd: $fd
    adc [hl]                                      ; $50de: $8e
    nop                                           ; $50df: $00
    ld a, a                                       ; $50e0: $7f
    nop                                           ; $50e1: $00
    cp [hl]                                       ; $50e2: $be
    nop                                           ; $50e3: $00
    cp [hl]                                       ; $50e4: $be
    nop                                           ; $50e5: $00
    ld a, $00                                     ; $50e6: $3e $00
    ld l, $00                                     ; $50e8: $2e $00
    ld [hl], e                                    ; $50ea: $73
    nop                                           ; $50eb: $00
    ld a, $02                                     ; $50ec: $3e $02
    ld [hl], $02                                  ; $50ee: $36 $02
    ld [hl-], a                                   ; $50f0: $32
    ld [bc], a                                    ; $50f1: $02
    ld [hl], d                                    ; $50f2: $72
    ld [bc], a                                    ; $50f3: $02
    db $10                                        ; $50f4: $10
    add c                                         ; $50f5: $81
    ld [hl+], a                                   ; $50f6: $22
    inc c                                         ; $50f7: $0c
    nop                                           ; $50f8: $00
    add e                                         ; $50f9: $83
    ld bc, $0100                                  ; $50fa: $01 $00 $01
    ld a, [de]                                    ; $50fd: $1a
    nop                                           ; $50fe: $00
    rst $38                                       ; $50ff: $ff
    dec c                                         ; $5100: $0d
    inc b                                         ; $5101: $04
    ld hl, sp+$07                                 ; $5102: $f8 $07
    ld a, [c]                                     ; $5104: $f2
    ld bc, $faec                                  ; $5105: $01 $ec $fa
    db $ec                                        ; $5108: $ec
    rst $38                                       ; $5109: $ff
    db $fc                                        ; $510a: $fc
    db $fc                                        ; $510b: $fc
    db $fc                                        ; $510c: $fc
    rst $38                                       ; $510d: $ff
    ld [bc], a                                    ; $510e: $02
    dec c                                         ; $510f: $0d
    adc [hl]                                      ; $5110: $8e
    ld [de], a                                    ; $5111: $12
    rra                                           ; $5112: $1f
    add hl, sp                                    ; $5113: $39
    ccf                                           ; $5114: $3f
    jr z, jr_0dd_5156                             ; $5115: $28 $3f

    dec [hl]                                      ; $5117: $35
    ccf                                           ; $5118: $3f
    ld a, [hl-]                                   ; $5119: $3a
    ccf                                           ; $511a: $3f
    dec a                                         ; $511b: $3d
    cpl                                           ; $511c: $2f
    rra                                           ; $511d: $1f
    rla                                           ; $511e: $17
    ld [bc], a                                    ; $511f: $02
    rra                                           ; $5120: $1f
    ld [bc], a                                    ; $5121: $02
    ld h, b                                       ; $5122: $60
    ld [bc], a                                    ; $5123: $02
    ld d, b                                       ; $5124: $50
    ld [bc], a                                    ; $5125: $02
    ret nc                                        ; $5126: $d0

    add [hl]                                      ; $5127: $86
    ldh a, [$b0]                                  ; $5128: $f0 $b0
    di                                            ; $512a: $f3
    or e                                          ; $512b: $b3
    ldh [$a0], a                                  ; $512c: $e0 $a0
    ld [bc], a                                    ; $512e: $02
    ld [hl], d                                    ; $512f: $72
    ld [bc], a                                    ; $5130: $02
    db $10                                        ; $5131: $10
    add a                                         ; $5132: $87
    ld [$0418], sp                                ; $5133: $08 $18 $04
    inc e                                         ; $5136: $1c
    inc b                                         ; $5137: $04
    inc e                                         ; $5138: $1c
    inc c                                         ; $5139: $0c
    inc bc                                        ; $513a: $03
    inc e                                         ; $513b: $1c
    add c                                         ; $513c: $81
    ld [$1805], sp                                ; $513d: $08 $05 $18
    ld [bc], a                                    ; $5140: $02
    inc b                                         ; $5141: $04
    inc b                                         ; $5142: $04
    ld a, [bc]                                    ; $5143: $0a
    ld [bc], a                                    ; $5144: $02
    dec c                                         ; $5145: $0d
    ld [bc], a                                    ; $5146: $02
    rrca                                          ; $5147: $0f
    add h                                         ; $5148: $84
    rlca                                          ; $5149: $07
    dec b                                         ; $514a: $05
    rrca                                          ; $514b: $0f
    dec c                                         ; $514c: $0d
    ld [bc], a                                    ; $514d: $02
    sbc c                                         ; $514e: $99
    ld [bc], a                                    ; $514f: $02
    db $ed                                        ; $5150: $ed
    ld [bc], a                                    ; $5151: $02

jr_0dd_5152:
    db $dd                                        ; $5152: $dd
    ld [bc], a                                    ; $5153: $02
    db $fc                                        ; $5154: $fc
    ld [bc], a                                    ; $5155: $02

jr_0dd_5156:
    rst $30                                       ; $5156: $f7
    ld [bc], a                                    ; $5157: $02
    ld [hl], b                                    ; $5158: $70
    inc d                                         ; $5159: $14
    nop                                           ; $515a: $00
    add h                                         ; $515b: $84
    rlca                                          ; $515c: $07
    ld bc, $0507                                  ; $515d: $01 $07 $05
    ld [bc], a                                    ; $5160: $02
    ld b, $04                                     ; $5161: $06 $04
    inc b                                         ; $5163: $04
    ld d, $00                                     ; $5164: $16 $00
    rst $38                                       ; $5166: $ff
    add hl, bc                                    ; $5167: $09
    ld [bc], a                                    ; $5168: $02
    ld hl, sp+$07                                 ; $5169: $f8 $07
    ld a, [c]                                     ; $516b: $f2
    ld bc, $fcf5                                  ; $516c: $01 $f5 $fc
    push af                                       ; $516f: $f5
    cp $8c                                        ; $5170: $fe $8c
    nop                                           ; $5172: $00
    ld a, a                                       ; $5173: $7f
    nop                                           ; $5174: $00
    cp [hl]                                       ; $5175: $be
    nop                                           ; $5176: $00
    cp [hl]                                       ; $5177: $be
    nop                                           ; $5178: $00
    ld a, $00                                     ; $5179: $3e $00
    ld [hl-], a                                   ; $517b: $32
    nop                                           ; $517c: $00
    ld a, a                                       ; $517d: $7f
    ld [bc], a                                    ; $517e: $02
    ld [hl], $02                                  ; $517f: $36 $02
    ld h, [hl]                                    ; $5181: $66
    ld [bc], a                                    ; $5182: $02
    ld [de], a                                    ; $5183: $12
    add e                                         ; $5184: $83
    ld [hl+], a                                   ; $5185: $22
    ld [bc], a                                    ; $5186: $02
    inc bc                                        ; $5187: $03
    ld c, $00                                     ; $5188: $0e $00
    add l                                         ; $518a: $85
    ld [bc], a                                    ; $518b: $02
    nop                                           ; $518c: $00
    ld [bc], a                                    ; $518d: $02
    nop                                           ; $518e: $00
    ld bc, $0018                                  ; $518f: $01 $18 $00
    rst $38                                       ; $5192: $ff
    dec c                                         ; $5193: $0d
    inc b                                         ; $5194: $04
    ld hl, sp+$07                                 ; $5195: $f8 $07
    ld a, [c]                                     ; $5197: $f2
    ld bc, $faeb                                  ; $5198: $01 $eb $fa
    db $eb                                        ; $519b: $eb
    rst $38                                       ; $519c: $ff
    ei                                            ; $519d: $fb
    ld a, [$fffb]                                 ; $519e: $fa $fb $ff
    ld [bc], a                                    ; $51a1: $02
    dec c                                         ; $51a2: $0d
    adc [hl]                                      ; $51a3: $8e
    ld [de], a                                    ; $51a4: $12
    rra                                           ; $51a5: $1f
    jr z, jr_0dd_51e7                             ; $51a6: $28 $3f

    ld [hl-], a                                   ; $51a8: $32
    ccf                                           ; $51a9: $3f
    ld a, [hl+]                                   ; $51aa: $2a
    ccf                                           ; $51ab: $3f
    dec [hl]                                      ; $51ac: $35
    ccf                                           ; $51ad: $3f
    ld a, [hl-]                                   ; $51ae: $3a
    ccf                                           ; $51af: $3f
    rra                                           ; $51b0: $1f
    rla                                           ; $51b1: $17
    ld [bc], a                                    ; $51b2: $02
    rra                                           ; $51b3: $1f
    ld [bc], a                                    ; $51b4: $02
    jr nz, jr_0dd_51bb                            ; $51b5: $20 $04

    ld d, b                                       ; $51b7: $50
    ld [bc], a                                    ; $51b8: $02
    ret nc                                        ; $51b9: $d0

    add [hl]                                      ; $51ba: $86

jr_0dd_51bb:
    db $f4                                        ; $51bb: $f4
    or h                                          ; $51bc: $b4
    db $e3                                        ; $51bd: $e3
    and e                                         ; $51be: $a3
    ldh a, [$b0]                                  ; $51bf: $f0 $b0
    ld [bc], a                                    ; $51c1: $02
    db $10                                        ; $51c2: $10
    adc d                                         ; $51c3: $8a
    ld [$1418], sp                                ; $51c4: $08 $18 $14
    inc e                                         ; $51c7: $1c
    inc c                                         ; $51c8: $0c
    inc e                                         ; $51c9: $1c
    inc d                                         ; $51ca: $14
    inc e                                         ; $51cb: $1c
    inc c                                         ; $51cc: $0c
    inc e                                         ; $51cd: $1c
    inc bc                                        ; $51ce: $03
    jr jr_0dd_5152                                ; $51cf: $18 $81

    ld [$1802], sp                                ; $51d1: $08 $02 $18
    ld [bc], a                                    ; $51d4: $02
    inc b                                         ; $51d5: $04
    inc b                                         ; $51d6: $04
    ld a, [bc]                                    ; $51d7: $0a
    ld [bc], a                                    ; $51d8: $02
    dec bc                                        ; $51d9: $0b
    adc b                                         ; $51da: $88
    rrca                                          ; $51db: $0f
    dec c                                         ; $51dc: $0d
    rlca                                          ; $51dd: $07
    dec b                                         ; $51de: $05
    rrca                                          ; $51df: $0f
    add hl, bc                                    ; $51e0: $09
    ld a, [c]                                     ; $51e1: $f2
    or d                                          ; $51e2: $b2
    ld [bc], a                                    ; $51e3: $02
    ld l, [hl]                                    ; $51e4: $6e
    ld [bc], a                                    ; $51e5: $02
    daa                                           ; $51e6: $27

jr_0dd_51e7:
    ld [bc], a                                    ; $51e7: $02
    ld a, $02                                     ; $51e8: $3e $02
    dec a                                         ; $51ea: $3d
    ld [bc], a                                    ; $51eb: $02
    dec e                                         ; $51ec: $1d
    inc d                                         ; $51ed: $14
    nop                                           ; $51ee: $00
    add d                                         ; $51ef: $82
    rrca                                          ; $51f0: $0f
    dec c                                         ; $51f1: $0d
    ld [bc], a                                    ; $51f2: $02
    ld a, [bc]                                    ; $51f3: $0a
    ld [bc], a                                    ; $51f4: $02
    ld [$0402], sp                                ; $51f5: $08 $02 $04
    ld [bc], a                                    ; $51f8: $02
    inc e                                         ; $51f9: $1c
    ld [bc], a                                    ; $51fa: $02
    inc b                                         ; $51fb: $04
    ld [bc], a                                    ; $51fc: $02
    inc e                                         ; $51fd: $1c
    ld [de], a                                    ; $51fe: $12
    nop                                           ; $51ff: $00
    rst $38                                       ; $5200: $ff
    add hl, bc                                    ; $5201: $09
    ld [bc], a                                    ; $5202: $02
    ld hl, sp+$07                                 ; $5203: $f8 $07
    ld a, [c]                                     ; $5205: $f2
    ld bc, $fcf4                                  ; $5206: $01 $f4 $fc
    db $f4                                        ; $5209: $f4
    db $fd                                        ; $520a: $fd
    adc [hl]                                      ; $520b: $8e
    nop                                           ; $520c: $00
    ld a, a                                       ; $520d: $7f
    nop                                           ; $520e: $00
    cp [hl]                                       ; $520f: $be
    nop                                           ; $5210: $00
    cp [hl]                                       ; $5211: $be
    nop                                           ; $5212: $00
    cp [hl]                                       ; $5213: $be
    nop                                           ; $5214: $00
    ld l, $00                                     ; $5215: $2e $00
    ld [hl], e                                    ; $5217: $73
    nop                                           ; $5218: $00
    ld a, $02                                     ; $5219: $3e $02
    ld [hl], $02                                  ; $521b: $36 $02
    ld b, [hl]                                    ; $521d: $46
    ld [bc], a                                    ; $521e: $02
    ld h, d                                       ; $521f: $62
    ld [bc], a                                    ; $5220: $02
    rlca                                          ; $5221: $07
    ld [bc], a                                    ; $5222: $02
    nop                                           ; $5223: $00
    add c                                         ; $5224: $81
    inc bc                                        ; $5225: $03
    ld a, [bc]                                    ; $5226: $0a
    nop                                           ; $5227: $00
    add l                                         ; $5228: $85
    ld bc, $0100                                  ; $5229: $01 $00 $01
    nop                                           ; $522c: $00
    ld bc, $0018                                  ; $522d: $01 $18 $00
    rst $38                                       ; $5230: $ff
    dec c                                         ; $5231: $0d
    inc b                                         ; $5232: $04
    ld hl, sp+$07                                 ; $5233: $f8 $07
    ld a, [c]                                     ; $5235: $f2
    ld bc, $faeb                                  ; $5236: $01 $eb $fa
    db $eb                                        ; $5239: $eb
    rst $38                                       ; $523a: $ff
    ei                                            ; $523b: $fb
    ld a, [$fffb]                                 ; $523c: $fa $fb $ff
    ld [bc], a                                    ; $523f: $02
    dec c                                         ; $5240: $0d
    add e                                         ; $5241: $83
    ld [de], a                                    ; $5242: $12
    rra                                           ; $5243: $1f
    dec l                                         ; $5244: $2d
    ld [bc], a                                    ; $5245: $02
    ccf                                           ; $5246: $3f
    adc e                                         ; $5247: $8b
    ld [hl-], a                                   ; $5248: $32
    ccf                                           ; $5249: $3f
    dec a                                         ; $524a: $3d
    ccf                                           ; $524b: $3f
    inc h                                         ; $524c: $24
    ccf                                           ; $524d: $3f
    ld [hl], $1f                                  ; $524e: $36 $1f
    inc de                                        ; $5250: $13
    rra                                           ; $5251: $1f
    jr @+$04                                      ; $5252: $18 $02

    cpl                                           ; $5254: $2f
    ld b, $50                                     ; $5255: $06 $50
    add [hl]                                      ; $5257: $86
    ldh a, [$b0]                                  ; $5258: $f0 $b0
    ldh [$a0], a                                  ; $525a: $e0 $a0
    ldh a, [$b0]                                  ; $525c: $f0 $b0
    ld [bc], a                                    ; $525e: $02
    db $10                                        ; $525f: $10
    add e                                         ; $5260: $83
    ld [$1418], sp                                ; $5261: $08 $18 $14
    ld [bc], a                                    ; $5264: $02
    inc e                                         ; $5265: $1c
    add c                                         ; $5266: $81
    inc c                                         ; $5267: $0c
    inc bc                                        ; $5268: $03
    inc e                                         ; $5269: $1c
    add l                                         ; $526a: $85
    inc b                                         ; $526b: $04
    inc e                                         ; $526c: $1c
    inc c                                         ; $526d: $0c
    jr jr_0dd_5278                                ; $526e: $18 $08

    ld [bc], a                                    ; $5270: $02
    jr @+$04                                      ; $5271: $18 $02

    inc b                                         ; $5273: $04
    ld b, $0a                                     ; $5274: $06 $0a
    adc b                                         ; $5276: $88
    rrca                                          ; $5277: $0f

jr_0dd_5278:
    dec c                                         ; $5278: $0d
    rlca                                          ; $5279: $07
    dec b                                         ; $527a: $05
    rrca                                          ; $527b: $0f
    dec c                                         ; $527c: $0d
    rst $30                                       ; $527d: $f7
    or a                                          ; $527e: $b7
    ld [bc], a                                    ; $527f: $02
    ld d, d                                       ; $5280: $52
    ld [bc], a                                    ; $5281: $02
    ld [de], a                                    ; $5282: $12
    ld [bc], a                                    ; $5283: $02
    ld [hl+], a                                   ; $5284: $22
    ld [bc], a                                    ; $5285: $02
    ld a, [de]                                    ; $5286: $1a
    ld [bc], a                                    ; $5287: $02
    dec h                                         ; $5288: $25
    ld [bc], a                                    ; $5289: $02
    jr c, jr_0dd_529e                             ; $528a: $38 $12

    nop                                           ; $528c: $00
    add d                                         ; $528d: $82
    rrca                                          ; $528e: $0f
    dec c                                         ; $528f: $0d
    ld [bc], a                                    ; $5290: $02
    ld a, [bc]                                    ; $5291: $0a
    ld [bc], a                                    ; $5292: $02
    ld [$0402], sp                                ; $5293: $08 $02 $04
    ld [bc], a                                    ; $5296: $02
    jr jr_0dd_529b                                ; $5297: $18 $02

    inc b                                         ; $5299: $04
    ld [bc], a                                    ; $529a: $02

jr_0dd_529b:
    inc e                                         ; $529b: $1c
    ld [de], a                                    ; $529c: $12
    nop                                           ; $529d: $00

jr_0dd_529e:
    rst $38                                       ; $529e: $ff
    add hl, bc                                    ; $529f: $09
    ld [bc], a                                    ; $52a0: $02
    ld hl, sp+$07                                 ; $52a1: $f8 $07
    ld a, [c]                                     ; $52a3: $f2
    ld bc, $fcf4                                  ; $52a4: $01 $f4 $fc
    db $f4                                        ; $52a7: $f4
    db $fd                                        ; $52a8: $fd
    adc [hl]                                      ; $52a9: $8e
    nop                                           ; $52aa: $00
    ld b, e                                       ; $52ab: $43
    nop                                           ; $52ac: $00
    cp [hl]                                       ; $52ad: $be
    nop                                           ; $52ae: $00
    cp [hl]                                       ; $52af: $be
    nop                                           ; $52b0: $00
    cp [hl]                                       ; $52b1: $be
    nop                                           ; $52b2: $00
    ld a, $00                                     ; $52b3: $3e $00
    ld a, a                                       ; $52b5: $7f
    nop                                           ; $52b6: $00
    ld a, $02                                     ; $52b7: $3e $02
    ld [hl+], a                                   ; $52b9: $22
    inc b                                         ; $52ba: $04
    ld [hl], $02                                  ; $52bb: $36 $02
    ld [hl], a                                    ; $52bd: $77
    ld [bc], a                                    ; $52be: $02
    inc d                                         ; $52bf: $14
    add c                                         ; $52c0: $81
    ld h, e                                       ; $52c1: $63
    ld a, [bc]                                    ; $52c2: $0a
    nop                                           ; $52c3: $00
    add l                                         ; $52c4: $85
    ld bc, $0100                                  ; $52c5: $01 $00 $01
    nop                                           ; $52c8: $00
    ld bc, $0018                                  ; $52c9: $01 $18 $00
    rst $38                                       ; $52cc: $ff
    dec c                                         ; $52cd: $0d
    inc b                                         ; $52ce: $04
    ld hl, sp+$07                                 ; $52cf: $f8 $07
    ld a, [c]                                     ; $52d1: $f2
    ld bc, $faeb                                  ; $52d2: $01 $eb $fa
    db $eb                                        ; $52d5: $eb
    rst $38                                       ; $52d6: $ff
    ei                                            ; $52d7: $fb
    ei                                            ; $52d8: $fb
    ei                                            ; $52d9: $fb
    db $fd                                        ; $52da: $fd
    ld [bc], a                                    ; $52db: $02
    dec c                                         ; $52dc: $0d
    add e                                         ; $52dd: $83
    ld [de], a                                    ; $52de: $12
    rra                                           ; $52df: $1f
    dec hl                                        ; $52e0: $2b
    ld [bc], a                                    ; $52e1: $02
    ccf                                           ; $52e2: $3f
    adc e                                         ; $52e3: $8b
    inc [hl]                                      ; $52e4: $34
    ccf                                           ; $52e5: $3f
    dec a                                         ; $52e6: $3d
    ccf                                           ; $52e7: $3f
    jr z, jr_0dd_5329                             ; $52e8: $28 $3f

    inc [hl]                                      ; $52ea: $34
    rra                                           ; $52eb: $1f
    ld d, $1f                                     ; $52ec: $16 $1f
    jr jr_0dd_52f2                                ; $52ee: $18 $02

    cpl                                           ; $52f0: $2f
    inc b                                         ; $52f1: $04

jr_0dd_52f2:
    ld d, b                                       ; $52f2: $50
    adc b                                         ; $52f3: $88
    ldh a, [$b0]                                  ; $52f4: $f0 $b0
    ldh a, [$b0]                                  ; $52f6: $f0 $b0
    ld [hl], b                                    ; $52f8: $70
    ld d, b                                       ; $52f9: $50
    ld a, b                                       ; $52fa: $78
    ld c, b                                       ; $52fb: $48
    ld [bc], a                                    ; $52fc: $02
    db $10                                        ; $52fd: $10
    add e                                         ; $52fe: $83
    ld [$1418], sp                                ; $52ff: $08 $18 $14
    ld [bc], a                                    ; $5302: $02
    inc e                                         ; $5303: $1c
    adc c                                         ; $5304: $89
    inc c                                         ; $5305: $0c
    inc e                                         ; $5306: $1c
    inc d                                         ; $5307: $14
    inc e                                         ; $5308: $1c
    inc c                                         ; $5309: $0c
    inc e                                         ; $530a: $1c
    inc c                                         ; $530b: $0c
    jr jr_0dd_5316                                ; $530c: $18 $08

    ld [bc], a                                    ; $530e: $02
    jr jr_0dd_5313                                ; $530f: $18 $02

    inc b                                         ; $5311: $04
    inc b                                         ; $5312: $04

jr_0dd_5313:
    ld a, [bc]                                    ; $5313: $0a
    add [hl]                                      ; $5314: $86
    rrca                                          ; $5315: $0f

jr_0dd_5316:
    dec c                                         ; $5316: $0d
    rlca                                          ; $5317: $07
    dec b                                         ; $5318: $05
    rlca                                          ; $5319: $07
    dec b                                         ; $531a: $05
    ld [bc], a                                    ; $531b: $02
    ld c, $82                                     ; $531c: $0e $82
    db $fc                                        ; $531e: $fc
    sbc h                                         ; $531f: $9c
    ld [bc], a                                    ; $5320: $02
    ld h, h                                       ; $5321: $64
    ld [bc], a                                    ; $5322: $02
    ld h, $02                                     ; $5323: $26 $02
    dec [hl]                                      ; $5325: $35
    ld [bc], a                                    ; $5326: $02
    ld e, [hl]                                    ; $5327: $5e
    ld [bc], a                                    ; $5328: $02

jr_0dd_5329:
    dec sp                                        ; $5329: $3b
    ld [bc], a                                    ; $532a: $02
    inc bc                                        ; $532b: $03
    ld [de], a                                    ; $532c: $12
    nop                                           ; $532d: $00
    inc b                                         ; $532e: $04
    ld [bc], a                                    ; $532f: $02
    ld [bc], a                                    ; $5330: $02
    ld bc, $0302                                  ; $5331: $01 $02 $03
    ld [bc], a                                    ; $5334: $02
    ld bc, $0302                                  ; $5335: $01 $02 $03
    ld [bc], a                                    ; $5338: $02
    ld [bc], a                                    ; $5339: $02
    ld [de], a                                    ; $533a: $12
    nop                                           ; $533b: $00
    rst $38                                       ; $533c: $ff
    add hl, bc                                    ; $533d: $09
    ld [bc], a                                    ; $533e: $02
    ld hl, sp+$07                                 ; $533f: $f8 $07
    ld a, [c]                                     ; $5341: $f2
    ld bc, $fcf4                                  ; $5342: $01 $f4 $fc
    db $f4                                        ; $5345: $f4
    db $fd                                        ; $5346: $fd
    adc [hl]                                      ; $5347: $8e
    nop                                           ; $5348: $00
    ld b, e                                       ; $5349: $43
    nop                                           ; $534a: $00
    cp [hl]                                       ; $534b: $be
    nop                                           ; $534c: $00
    cp [hl]                                       ; $534d: $be
    nop                                           ; $534e: $00
    ld a, $00                                     ; $534f: $3e $00
    ccf                                           ; $5351: $3f
    nop                                           ; $5352: $00
    ccf                                           ; $5353: $3f
    ld b, $1e                                     ; $5354: $06 $1e
    ld [bc], a                                    ; $5356: $02
    ld b, $02                                     ; $5357: $06 $02
    ld [hl], $02                                  ; $5359: $36 $02
    inc sp                                        ; $535b: $33
    ld [bc], a                                    ; $535c: $02
    inc d                                         ; $535d: $14
    add c                                         ; $535e: $81
    ld b, e                                       ; $535f: $43
    inc c                                         ; $5360: $0c
    nop                                           ; $5361: $00
    add e                                         ; $5362: $83
    ld bc, $0100                                  ; $5363: $01 $00 $01
    ld a, [de]                                    ; $5366: $1a
    nop                                           ; $5367: $00
    rst $38                                       ; $5368: $ff
    dec c                                         ; $5369: $0d
    inc b                                         ; $536a: $04
    ld hl, sp+$07                                 ; $536b: $f8 $07
    ld a, [c]                                     ; $536d: $f2
    ld bc, $faec                                  ; $536e: $01 $ec $fa
    db $ec                                        ; $5371: $ec
    rst $38                                       ; $5372: $ff
    db $fc                                        ; $5373: $fc
    ld a, [$fdfc]                                 ; $5374: $fa $fc $fd
    ld [bc], a                                    ; $5377: $02
    dec c                                         ; $5378: $0d
    add e                                         ; $5379: $83
    ld d, $1f                                     ; $537a: $16 $1f
    dec hl                                        ; $537c: $2b
    ld [bc], a                                    ; $537d: $02
    ccf                                           ; $537e: $3f
    adc e                                         ; $537f: $8b
    inc [hl]                                      ; $5380: $34
    ccf                                           ; $5381: $3f
    dec a                                         ; $5382: $3d
    ccf                                           ; $5383: $3f
    jr z, jr_0dd_53c5                             ; $5384: $28 $3f

    inc [hl]                                      ; $5386: $34
    rra                                           ; $5387: $1f
    ld d, $1f                                     ; $5388: $16 $1f
    jr @+$04                                      ; $538a: $18 $02

    cpl                                           ; $538c: $2f
    ld b, $50                                     ; $538d: $06 $50
    add [hl]                                      ; $538f: $86
    ldh a, [$b0]                                  ; $5390: $f0 $b0
    ldh a, [$b0]                                  ; $5392: $f0 $b0
    or $96                                        ; $5394: $f6 $96
    ld [bc], a                                    ; $5396: $02
    db $10                                        ; $5397: $10
    add e                                         ; $5398: $83
    ld [$0418], sp                                ; $5399: $08 $18 $04
    inc b                                         ; $539c: $04
    inc e                                         ; $539d: $1c
    add l                                         ; $539e: $85
    inc d                                         ; $539f: $14
    inc e                                         ; $53a0: $1c
    inc c                                         ; $53a1: $0c
    inc e                                         ; $53a2: $1c
    inc c                                         ; $53a3: $0c
    inc b                                         ; $53a4: $04
    jr jr_0dd_53a9                                ; $53a5: $18 $02

    inc b                                         ; $53a7: $04
    inc b                                         ; $53a8: $04

jr_0dd_53a9:
    ld a, [bc]                                    ; $53a9: $0a
    add [hl]                                      ; $53aa: $86
    rrca                                          ; $53ab: $0f
    dec c                                         ; $53ac: $0d
    rlca                                          ; $53ad: $07
    dec b                                         ; $53ae: $05
    rrca                                          ; $53af: $0f
    dec c                                         ; $53b0: $0d
    ld [bc], a                                    ; $53b1: $02
    ld c, $82                                     ; $53b2: $0e $82
    ld a, [c]                                     ; $53b4: $f2
    sub d                                         ; $53b5: $92
    ld [bc], a                                    ; $53b6: $02
    halt                                          ; $53b7: $76
    ld [bc], a                                    ; $53b8: $02
    ld e, $02                                     ; $53b9: $1e $02
    rra                                           ; $53bb: $1f
    ld [bc], a                                    ; $53bc: $02
    dec c                                         ; $53bd: $0d
    ld [bc], a                                    ; $53be: $02
    ld bc, $0014                                  ; $53bf: $01 $14 $00
    inc b                                         ; $53c2: $04
    ld [bc], a                                    ; $53c3: $02
    ld [bc], a                                    ; $53c4: $02

jr_0dd_53c5:
    ld bc, $0702                                  ; $53c5: $01 $02 $07
    ld [bc], a                                    ; $53c8: $02
    ld bc, $0702                                  ; $53c9: $01 $02 $07
    inc d                                         ; $53cc: $14
    nop                                           ; $53cd: $00
    rst $38                                       ; $53ce: $ff
    add hl, bc                                    ; $53cf: $09
    ld [bc], a                                    ; $53d0: $02
    ld hl, sp+$07                                 ; $53d1: $f8 $07
    ld a, [c]                                     ; $53d3: $f2
    ld bc, $fcf5                                  ; $53d4: $01 $f5 $fc
    push af                                       ; $53d7: $f5
    db $fd                                        ; $53d8: $fd
    adc h                                         ; $53d9: $8c
    nop                                           ; $53da: $00
    ld b, e                                       ; $53db: $43
    nop                                           ; $53dc: $00
    cp [hl]                                       ; $53dd: $be
    nop                                           ; $53de: $00
    cp [hl]                                       ; $53df: $be
    nop                                           ; $53e0: $00
    cp [hl]                                       ; $53e1: $be
    nop                                           ; $53e2: $00
    ccf                                           ; $53e3: $3f
    nop                                           ; $53e4: $00
    ld a, $02                                     ; $53e5: $3e $02
    ld h, $02                                     ; $53e7: $26 $02
    ld [hl], $02                                  ; $53e9: $36 $02
    ld h, $02                                     ; $53eb: $26 $02
    rlca                                          ; $53ed: $07
    ld [bc], a                                    ; $53ee: $02
    nop                                           ; $53ef: $00
    add c                                         ; $53f0: $81
    inc bc                                        ; $53f1: $03
    inc c                                         ; $53f2: $0c
    nop                                           ; $53f3: $00
    add e                                         ; $53f4: $83
    ld bc, $0100                                  ; $53f5: $01 $00 $01
    ld a, [de]                                    ; $53f8: $1a
    nop                                           ; $53f9: $00
    rst $38                                       ; $53fa: $ff
    dec c                                         ; $53fb: $0d
    inc b                                         ; $53fc: $04
    ld hl, sp+$07                                 ; $53fd: $f8 $07
    ld a, [c]                                     ; $53ff: $f2
    ld bc, $faeb                                  ; $5400: $01 $eb $fa
    db $eb                                        ; $5403: $eb
    rst $38                                       ; $5404: $ff
    ei                                            ; $5405: $fb
    ld a, [$fffb]                                 ; $5406: $fa $fb $ff
    ld [bc], a                                    ; $5409: $02
    dec c                                         ; $540a: $0d
    add e                                         ; $540b: $83
    ld [de], a                                    ; $540c: $12
    rra                                           ; $540d: $1f
    dec l                                         ; $540e: $2d
    ld [bc], a                                    ; $540f: $02
    ccf                                           ; $5410: $3f
    adc e                                         ; $5411: $8b
    ld [hl-], a                                   ; $5412: $32
    ccf                                           ; $5413: $3f
    dec a                                         ; $5414: $3d
    ccf                                           ; $5415: $3f
    inc h                                         ; $5416: $24
    ccf                                           ; $5417: $3f
    ld [hl], $1f                                  ; $5418: $36 $1f
    inc de                                        ; $541a: $13
    rra                                           ; $541b: $1f
    jr @+$04                                      ; $541c: $18 $02

    cpl                                           ; $541e: $2f
    ld b, $50                                     ; $541f: $06 $50
    add [hl]                                      ; $5421: $86
    ldh a, [$b0]                                  ; $5422: $f0 $b0
    ldh [$a0], a                                  ; $5424: $e0 $a0
    ldh a, [$b0]                                  ; $5426: $f0 $b0
    ld [bc], a                                    ; $5428: $02
    db $10                                        ; $5429: $10
    add e                                         ; $542a: $83
    ld [$1418], sp                                ; $542b: $08 $18 $14
    ld [bc], a                                    ; $542e: $02
    inc e                                         ; $542f: $1c
    add c                                         ; $5430: $81
    inc c                                         ; $5431: $0c
    inc bc                                        ; $5432: $03
    inc e                                         ; $5433: $1c
    add l                                         ; $5434: $85
    inc b                                         ; $5435: $04
    inc e                                         ; $5436: $1c
    inc c                                         ; $5437: $0c
    jr jr_0dd_5442                                ; $5438: $18 $08

    ld [bc], a                                    ; $543a: $02
    jr @+$04                                      ; $543b: $18 $02

    inc b                                         ; $543d: $04
    ld b, $0a                                     ; $543e: $06 $0a
    adc b                                         ; $5440: $88
    rrca                                          ; $5441: $0f

jr_0dd_5442:
    dec c                                         ; $5442: $0d
    rlca                                          ; $5443: $07
    dec b                                         ; $5444: $05
    rrca                                          ; $5445: $0f
    dec c                                         ; $5446: $0d
    rst $30                                       ; $5447: $f7
    or a                                          ; $5448: $b7
    ld [bc], a                                    ; $5449: $02
    ld h, d                                       ; $544a: $62
    ld [bc], a                                    ; $544b: $02
    ld [hl+], a                                   ; $544c: $22
    ld [bc], a                                    ; $544d: $02
    ld a, $02                                     ; $544e: $3e $02
    dec [hl]                                      ; $5450: $35
    ld [bc], a                                    ; $5451: $02
    add hl, de                                    ; $5452: $19
    inc d                                         ; $5453: $14
    nop                                           ; $5454: $00
    add d                                         ; $5455: $82
    rrca                                          ; $5456: $0f
    dec c                                         ; $5457: $0d
    ld [bc], a                                    ; $5458: $02
    ld a, [bc]                                    ; $5459: $0a
    ld [bc], a                                    ; $545a: $02
    inc b                                         ; $545b: $04
    ld [bc], a                                    ; $545c: $02
    inc e                                         ; $545d: $1c
    ld [bc], a                                    ; $545e: $02
    inc b                                         ; $545f: $04
    ld [bc], a                                    ; $5460: $02
    inc e                                         ; $5461: $1c
    inc d                                         ; $5462: $14
    nop                                           ; $5463: $00
    rst $38                                       ; $5464: $ff
    add hl, bc                                    ; $5465: $09
    ld [bc], a                                    ; $5466: $02
    ld hl, sp+$07                                 ; $5467: $f8 $07
    ld a, [c]                                     ; $5469: $f2
    ld bc, $fcf4                                  ; $546a: $01 $f4 $fc
    db $f4                                        ; $546d: $f4
    db $fd                                        ; $546e: $fd
    adc [hl]                                      ; $546f: $8e
    nop                                           ; $5470: $00
    ld b, e                                       ; $5471: $43
    nop                                           ; $5472: $00
    cp [hl]                                       ; $5473: $be
    nop                                           ; $5474: $00
    cp [hl]                                       ; $5475: $be
    nop                                           ; $5476: $00
    cp [hl]                                       ; $5477: $be
    nop                                           ; $5478: $00
    ld a, $00                                     ; $5479: $3e $00
    ld a, a                                       ; $547b: $7f
    jr nz, jr_0dd_54bc                            ; $547c: $20 $3e

    ld [bc], a                                    ; $547e: $02

Call_0dd_547f:
    ld [hl+], a                                   ; $547f: $22
    ld [bc], a                                    ; $5480: $02
    halt                                          ; $5481: $76
    ld [bc], a                                    ; $5482: $02
    ld [hl], a                                    ; $5483: $77
    ld [bc], a                                    ; $5484: $02
    inc b                                         ; $5485: $04
    add c                                         ; $5486: $81
    inc hl                                        ; $5487: $23
    inc c                                         ; $5488: $0c
    nop                                           ; $5489: $00
    add l                                         ; $548a: $85
    ld bc, $0100                                  ; $548b: $01 $00 $01
    nop                                           ; $548e: $00
    ld bc, $0018                                  ; $548f: $01 $18 $00
    rst $38                                       ; $5492: $ff
    dec c                                         ; $5493: $0d
    inc b                                         ; $5494: $04
    ld hl, sp+$07                                 ; $5495: $f8 $07
    ld a, [c]                                     ; $5497: $f2
    ld bc, $faeb                                  ; $5498: $01 $eb $fa
    db $eb                                        ; $549b: $eb
    rst $38                                       ; $549c: $ff
    ei                                            ; $549d: $fb
    db $fc                                        ; $549e: $fc
    ei                                            ; $549f: $fb
    cp $02                                        ; $54a0: $fe $02
    dec c                                         ; $54a2: $0d
    add e                                         ; $54a3: $83
    ld [de], a                                    ; $54a4: $12
    rra                                           ; $54a5: $1f
    ld l, $02                                     ; $54a6: $2e $02
    ccf                                           ; $54a8: $3f
    adc e                                         ; $54a9: $8b
    ld sp, $2e3f                                  ; $54aa: $31 $3f $2e
    ccf                                           ; $54ad: $3f
    ld [hl-], a                                   ; $54ae: $32
    ccf                                           ; $54af: $3f
    ld sp, $131f                                  ; $54b0: $31 $1f $13
    rra                                           ; $54b3: $1f
    jr jr_0dd_54b8                                ; $54b4: $18 $02

    cpl                                           ; $54b6: $2f
    inc b                                         ; $54b7: $04

jr_0dd_54b8:
    ld d, b                                       ; $54b8: $50
    add [hl]                                      ; $54b9: $86
    ldh a, [$b0]                                  ; $54ba: $f0 $b0

jr_0dd_54bc:
    ldh [$a0], a                                  ; $54bc: $e0 $a0
    ldh [$a0], a                                  ; $54be: $e0 $a0
    ld [bc], a                                    ; $54c0: $02
    ld [hl], b                                    ; $54c1: $70
    ld [bc], a                                    ; $54c2: $02
    db $10                                        ; $54c3: $10
    add e                                         ; $54c4: $83
    ld [$1418], sp                                ; $54c5: $08 $18 $14
    ld [bc], a                                    ; $54c8: $02
    inc e                                         ; $54c9: $1c
    add c                                         ; $54ca: $81
    inc c                                         ; $54cb: $0c
    inc bc                                        ; $54cc: $03
    inc e                                         ; $54cd: $1c
    add l                                         ; $54ce: $85
    inc b                                         ; $54cf: $04
    inc e                                         ; $54d0: $1c
    inc c                                         ; $54d1: $0c
    jr jr_0dd_54dc                                ; $54d2: $18 $08

    ld [bc], a                                    ; $54d4: $02
    jr jr_0dd_54d9                                ; $54d5: $18 $02

    inc b                                         ; $54d7: $04
    inc b                                         ; $54d8: $04

jr_0dd_54d9:
    ld a, [bc]                                    ; $54d9: $0a
    adc d                                         ; $54da: $8a
    rrca                                          ; $54db: $0f

jr_0dd_54dc:
    dec c                                         ; $54dc: $0d
    rrca                                          ; $54dd: $0f
    dec c                                         ; $54de: $0d
    ld c, $0a                                     ; $54df: $0e $0a
    ld e, $12                                     ; $54e1: $1e $12
    ld c, a                                       ; $54e3: $4f
    ld c, [hl]                                    ; $54e4: $4e
    ld [bc], a                                    ; $54e5: $02
    ld c, c                                       ; $54e6: $49
    ld [bc], a                                    ; $54e7: $02
    sbc c                                         ; $54e8: $99
    ld [bc], a                                    ; $54e9: $02
    db $eb                                        ; $54ea: $eb
    ld [bc], a                                    ; $54eb: $02
    sbc [hl]                                      ; $54ec: $9e
    ld [bc], a                                    ; $54ed: $02
    rst $30                                       ; $54ee: $f7
    ld [bc], a                                    ; $54ef: $02
    ld [hl], b                                    ; $54f0: $70
    ld [de], a                                    ; $54f1: $12
    nop                                           ; $54f2: $00
    add d                                         ; $54f3: $82
    inc bc                                        ; $54f4: $03
    ld bc, $0202                                  ; $54f5: $01 $02 $02
    inc b                                         ; $54f8: $04
    nop                                           ; $54f9: $00
    ld [bc], a                                    ; $54fa: $02
    ld [bc], a                                    ; $54fb: $02
    ld d, $00                                     ; $54fc: $16 $00
    rst $38                                       ; $54fe: $ff
    add hl, bc                                    ; $54ff: $09
    ld [bc], a                                    ; $5500: $02
    ld hl, sp+$07                                 ; $5501: $f8 $07
    ld a, [c]                                     ; $5503: $f2
    ld bc, $fcf4                                  ; $5504: $01 $f4 $fc
    db $f4                                        ; $5507: $f4
    db $fd                                        ; $5508: $fd
    adc [hl]                                      ; $5509: $8e
    nop                                           ; $550a: $00
    ld b, e                                       ; $550b: $43
    nop                                           ; $550c: $00
    cp [hl]                                       ; $550d: $be
    nop                                           ; $550e: $00
    cp [hl]                                       ; $550f: $be
    nop                                           ; $5510: $00
    ld a, $00                                     ; $5511: $3e $00
    ld a, [hl]                                    ; $5513: $7e
    nop                                           ; $5514: $00
    ld a, [hl]                                    ; $5515: $7e
    jr nc, jr_0dd_5554                            ; $5516: $30 $3c

    ld [bc], a                                    ; $5518: $02
    jr nc, jr_0dd_551d                            ; $5519: $30 $02

    ld [hl], $02                                  ; $551b: $36 $02

jr_0dd_551d:
    ld h, [hl]                                    ; $551d: $66
    ld [bc], a                                    ; $551e: $02
    inc d                                         ; $551f: $14
    add c                                         ; $5520: $81
    ld h, c                                       ; $5521: $61
    inc c                                         ; $5522: $0c
    nop                                           ; $5523: $00
    add e                                         ; $5524: $83
    ld bc, $0100                                  ; $5525: $01 $00 $01
    ld a, [de]                                    ; $5528: $1a
    nop                                           ; $5529: $00
    rst $38                                       ; $552a: $ff
    dec c                                         ; $552b: $0d
    inc b                                         ; $552c: $04
    ld hl, sp+$07                                 ; $552d: $f8 $07
    ld a, [c]                                     ; $552f: $f2
    ld bc, $faec                                  ; $5530: $01 $ec $fa
    db $ec                                        ; $5533: $ec
    rst $38                                       ; $5534: $ff
    db $fc                                        ; $5535: $fc
    db $fc                                        ; $5536: $fc
    db $fc                                        ; $5537: $fc
    rst $38                                       ; $5538: $ff
    ld [bc], a                                    ; $5539: $02
    dec c                                         ; $553a: $0d
    add e                                         ; $553b: $83
    inc de                                        ; $553c: $13
    rra                                           ; $553d: $1f
    ld h, $02                                     ; $553e: $26 $02
    ccf                                           ; $5540: $3f
    adc e                                         ; $5541: $8b
    add hl, sp                                    ; $5542: $39
    ccf                                           ; $5543: $3f
    ld l, $3f                                     ; $5544: $2e $3f
    ld [hl-], a                                   ; $5546: $32
    ccf                                           ; $5547: $3f
    ld sp, $1b1f                                  ; $5548: $31 $1f $1b
    rra                                           ; $554b: $1f
    jr jr_0dd_5550                                ; $554c: $18 $02

    cpl                                           ; $554e: $2f
    inc b                                         ; $554f: $04

jr_0dd_5550:
    ld d, b                                       ; $5550: $50
    add [hl]                                      ; $5551: $86
    ldh a, [$b0]                                  ; $5552: $f0 $b0

jr_0dd_5554:
    ldh [$a0], a                                  ; $5554: $e0 $a0
    ldh a, [$b0]                                  ; $5556: $f0 $b0
    ld [bc], a                                    ; $5558: $02
    ld [hl], e                                    ; $5559: $73
    ld [bc], a                                    ; $555a: $02
    db $10                                        ; $555b: $10
    add e                                         ; $555c: $83
    ld [$1418], sp                                ; $555d: $08 $18 $14
    ld [bc], a                                    ; $5560: $02
    inc e                                         ; $5561: $1c
    add c                                         ; $5562: $81
    inc c                                         ; $5563: $0c
    inc bc                                        ; $5564: $03
    inc e                                         ; $5565: $1c
    add l                                         ; $5566: $85
    inc b                                         ; $5567: $04
    inc e                                         ; $5568: $1c
    inc c                                         ; $5569: $0c
    jr jr_0dd_5574                                ; $556a: $18 $08

    ld [bc], a                                    ; $556c: $02
    jr @+$04                                      ; $556d: $18 $02

    inc b                                         ; $556f: $04
    ld b, $0a                                     ; $5570: $06 $0a
    add [hl]                                      ; $5572: $86
    rrca                                          ; $5573: $0f

jr_0dd_5574:
    dec c                                         ; $5574: $0d
    rrca                                          ; $5575: $0f
    dec c                                         ; $5576: $0d
    rrca                                          ; $5577: $0f
    add hl, bc                                    ; $5578: $09
    ld [bc], a                                    ; $5579: $02
    ld c, c                                       ; $557a: $49
    ld [bc], a                                    ; $557b: $02
    ld c, l                                       ; $557c: $4d
    ld [bc], a                                    ; $557d: $02
    adc a                                         ; $557e: $8f
    ld [bc], a                                    ; $557f: $02
    rst $38                                       ; $5580: $ff
    ld [bc], a                                    ; $5581: $02
    sub [hl]                                      ; $5582: $96
    ld [bc], a                                    ; $5583: $02
    ldh a, [rNR14]                                ; $5584: $f0 $14
    nop                                           ; $5586: $00
    add d                                         ; $5587: $82
    rlca                                          ; $5588: $07
    ld bc, $0602                                  ; $5589: $01 $02 $06
    inc e                                         ; $558c: $1c
    nop                                           ; $558d: $00
    rst $38                                       ; $558e: $ff
    add hl, bc                                    ; $558f: $09
    ld [bc], a                                    ; $5590: $02
    ld hl, sp+$07                                 ; $5591: $f8 $07
    ld a, [c]                                     ; $5593: $f2
    ld bc, $fcf5                                  ; $5594: $01 $f5 $fc
    push af                                       ; $5597: $f5
    db $fd                                        ; $5598: $fd
    adc h                                         ; $5599: $8c
    nop                                           ; $559a: $00
    ld b, e                                       ; $559b: $43
    nop                                           ; $559c: $00
    cp [hl]                                       ; $559d: $be
    nop                                           ; $559e: $00
    cp [hl]                                       ; $559f: $be
    nop                                           ; $55a0: $00
    ld a, $00                                     ; $55a1: $3e $00
    ld a, [hl]                                    ; $55a3: $7e
    nop                                           ; $55a4: $00
    ld a, $02                                     ; $55a5: $3e $02
    ld [hl-], a                                   ; $55a7: $32
    ld [bc], a                                    ; $55a8: $02
    ld [hl], $02                                  ; $55a9: $36 $02
    ld [hl-], a                                   ; $55ab: $32
    ld [bc], a                                    ; $55ac: $02
    ld [hl], b                                    ; $55ad: $70
    ld [bc], a                                    ; $55ae: $02
    nop                                           ; $55af: $00
    add c                                         ; $55b0: $81
    ld h, b                                       ; $55b1: $60
    inc c                                         ; $55b2: $0c
    nop                                           ; $55b3: $00
    add l                                         ; $55b4: $85
    ld bc, $0100                                  ; $55b5: $01 $00 $01
    nop                                           ; $55b8: $00
    ld bc, $0018                                  ; $55b9: $01 $18 $00
    rst $38                                       ; $55bc: $ff
    dec c                                         ; $55bd: $0d
    inc b                                         ; $55be: $04
    ld hl, sp+$07                                 ; $55bf: $f8 $07
    ld a, [c]                                     ; $55c1: $f2
    ld bc, $faeb                                  ; $55c2: $01 $eb $fa
    db $eb                                        ; $55c5: $eb
    rst $38                                       ; $55c6: $ff
    ei                                            ; $55c7: $fb
    ld a, [$fffb]                                 ; $55c8: $fa $fb $ff
    ld [bc], a                                    ; $55cb: $02
    dec c                                         ; $55cc: $0d
    add e                                         ; $55cd: $83
    ld [de], a                                    ; $55ce: $12
    rra                                           ; $55cf: $1f
    dec l                                         ; $55d0: $2d
    ld [bc], a                                    ; $55d1: $02
    ccf                                           ; $55d2: $3f
    adc e                                         ; $55d3: $8b
    ld [hl-], a                                   ; $55d4: $32
    ccf                                           ; $55d5: $3f
    dec a                                         ; $55d6: $3d
    ccf                                           ; $55d7: $3f
    inc h                                         ; $55d8: $24
    ccf                                           ; $55d9: $3f
    ld [hl], $1f                                  ; $55da: $36 $1f
    inc de                                        ; $55dc: $13
    rra                                           ; $55dd: $1f
    jr @+$04                                      ; $55de: $18 $02

    cpl                                           ; $55e0: $2f
    ld b, $50                                     ; $55e1: $06 $50
    add [hl]                                      ; $55e3: $86
    ldh a, [$b0]                                  ; $55e4: $f0 $b0
    ldh [$a0], a                                  ; $55e6: $e0 $a0
    ldh a, [$b0]                                  ; $55e8: $f0 $b0
    ld [bc], a                                    ; $55ea: $02
    db $10                                        ; $55eb: $10
    add e                                         ; $55ec: $83
    ld [$1418], sp                                ; $55ed: $08 $18 $14
    ld [bc], a                                    ; $55f0: $02
    inc e                                         ; $55f1: $1c
    add c                                         ; $55f2: $81
    inc c                                         ; $55f3: $0c
    inc bc                                        ; $55f4: $03
    inc e                                         ; $55f5: $1c
    add l                                         ; $55f6: $85
    inc b                                         ; $55f7: $04
    inc e                                         ; $55f8: $1c
    inc c                                         ; $55f9: $0c
    jr jr_0dd_5604                                ; $55fa: $18 $08

    ld [bc], a                                    ; $55fc: $02
    jr @+$04                                      ; $55fd: $18 $02

    inc b                                         ; $55ff: $04
    ld b, $0a                                     ; $5600: $06 $0a
    adc b                                         ; $5602: $88
    rrca                                          ; $5603: $0f

jr_0dd_5604:
    dec c                                         ; $5604: $0d
    rlca                                          ; $5605: $07
    dec b                                         ; $5606: $05
    rrca                                          ; $5607: $0f
    dec c                                         ; $5608: $0d
    rst $30                                       ; $5609: $f7
    or a                                          ; $560a: $b7
    ld [bc], a                                    ; $560b: $02
    ld d, d                                       ; $560c: $52
    ld [bc], a                                    ; $560d: $02
    ld [hl+], a                                   ; $560e: $22
    ld [bc], a                                    ; $560f: $02
    dec sp                                        ; $5610: $3b
    ld [bc], a                                    ; $5611: $02
    dec h                                         ; $5612: $25
    ld [bc], a                                    ; $5613: $02
    inc a                                         ; $5614: $3c
    inc d                                         ; $5615: $14
    nop                                           ; $5616: $00
    add d                                         ; $5617: $82
    rrca                                          ; $5618: $0f
    dec c                                         ; $5619: $0d
    ld [bc], a                                    ; $561a: $02
    ld b, $02                                     ; $561b: $06 $02
    inc b                                         ; $561d: $04
    ld [bc], a                                    ; $561e: $02
    inc e                                         ; $561f: $1c
    ld [bc], a                                    ; $5620: $02
    inc c                                         ; $5621: $0c
    ld [bc], a                                    ; $5622: $02
    jr jr_0dd_5639                                ; $5623: $18 $14

    nop                                           ; $5625: $00
    rst $38                                       ; $5626: $ff
    add hl, bc                                    ; $5627: $09
    ld [bc], a                                    ; $5628: $02
    ld hl, sp+$07                                 ; $5629: $f8 $07
    ld a, [c]                                     ; $562b: $f2
    ld bc, $fcf4                                  ; $562c: $01 $f4 $fc
    db $f4                                        ; $562f: $f4
    db $fd                                        ; $5630: $fd
    adc [hl]                                      ; $5631: $8e
    nop                                           ; $5632: $00
    ld b, e                                       ; $5633: $43
    nop                                           ; $5634: $00
    cp [hl]                                       ; $5635: $be
    nop                                           ; $5636: $00
    cp [hl]                                       ; $5637: $be
    nop                                           ; $5638: $00

jr_0dd_5639:
    cp [hl]                                       ; $5639: $be
    nop                                           ; $563a: $00
    ld a, $00                                     ; $563b: $3e $00
    ld a, a                                       ; $563d: $7f
    ld [bc], a                                    ; $563e: $02
    ld a, $02                                     ; $563f: $3e $02
    ld [hl+], a                                   ; $5641: $22
    ld [bc], a                                    ; $5642: $02
    scf                                           ; $5643: $37
    ld [bc], a                                    ; $5644: $02
    ld [hl], a                                    ; $5645: $77
    ld [bc], a                                    ; $5646: $02

jr_0dd_5647:
    db $10                                        ; $5647: $10
    add c                                         ; $5648: $81
    ld h, d                                       ; $5649: $62
    inc c                                         ; $564a: $0c
    nop                                           ; $564b: $00
    add l                                         ; $564c: $85
    ld bc, $0100                                  ; $564d: $01 $00 $01
    nop                                           ; $5650: $00
    ld bc, $0018                                  ; $5651: $01 $18 $00
    rst $38                                       ; $5654: $ff
    dec bc                                        ; $5655: $0b
    inc bc                                        ; $5656: $03
    ld hl, sp+$07                                 ; $5657: $f8 $07
    ld a, [c]                                     ; $5659: $f2
    ld bc, $fbeb                                  ; $565a: $01 $eb $fb
    db $ec                                        ; $565d: $ec
    db $fd                                        ; $565e: $fd
    ei                                            ; $565f: $fb
    ei                                            ; $5660: $fb
    ld [bc], a                                    ; $5661: $02
    ccf                                           ; $5662: $3f
    sub b                                         ; $5663: $90
    ld b, [hl]                                    ; $5664: $46
    ld a, a                                       ; $5665: $7f
    sub e                                         ; $5666: $93
    rst $38                                       ; $5667: $ff
    xor a                                         ; $5668: $af
    db $fd                                        ; $5669: $fd
    rst $18                                       ; $566a: $df
    or $7f                                        ; $566b: $f6 $7f
    ld [hl], b                                    ; $566d: $70
    ld a, a                                       ; $566e: $7f
    ld d, b                                       ; $566f: $50
    ccf                                           ; $5670: $3f
    ld sp, $181f                                  ; $5671: $31 $1f $18
    ld [bc], a                                    ; $5674: $02
    scf                                           ; $5675: $37
    ld [bc], a                                    ; $5676: $02
    ld hl, $2502                                  ; $5677: $21 $02 $25
    ld [bc], a                                    ; $567a: $02
    inc h                                         ; $567b: $24
    inc bc                                        ; $567c: $03
    inc a                                         ; $567d: $3c
    add e                                         ; $567e: $83
    inc l                                         ; $567f: $2c
    ld a, $36                                     ; $5680: $3e $36
    inc b                                         ; $5682: $04
    ld [bc], a                                    ; $5683: $02
    ld [bc], a                                    ; $5684: $02
    nop                                           ; $5685: $00
    ld [bc], a                                    ; $5686: $02
    ld [bc], a                                    ; $5687: $02
    add d                                         ; $5688: $82
    inc bc                                        ; $5689: $03
    ld bc, $0206                                  ; $568a: $01 $06 $02
    ld b, $00                                     ; $568d: $06 $00
    ld [$8202], sp                                ; $568f: $08 $02 $82
    db $fc                                        ; $5692: $fc
    call z, $0002                                 ; $5693: $cc $02 $00
    add d                                         ; $5696: $82
    rra                                           ; $5697: $1f
    rla                                           ; $5698: $17
    ld [bc], a                                    ; $5699: $02
    ld a, [de]                                    ; $569a: $1a
    ld [bc], a                                    ; $569b: $02
    ld [hl+], a                                   ; $569c: $22
    ld [bc], a                                    ; $569d: $02
    ld h, $02                                     ; $569e: $26 $02
    add hl, sp                                    ; $56a0: $39
    ld [bc], a                                    ; $56a1: $02
    ccf                                           ; $56a2: $3f
    ld [de], a                                    ; $56a3: $12
    nop                                           ; $56a4: $00
    rst $38                                       ; $56a5: $ff
    rlca                                          ; $56a6: $07
    ld bc, $07f8                                  ; $56a7: $01 $f8 $07
    ld a, [c]                                     ; $56aa: $f2
    ld bc, $fbf4                                  ; $56ab: $01 $f4 $fb
    adc [hl]                                      ; $56ae: $8e
    nop                                           ; $56af: $00
    ld [$1e00], sp                                ; $56b0: $08 $00 $1e
    nop                                           ; $56b3: $00
    ld a, [de]                                    ; $56b4: $1a
    nop                                           ; $56b5: $00
    dec de                                        ; $56b6: $1b
    nop                                           ; $56b7: $00
    inc bc                                        ; $56b8: $03
    nop                                           ; $56b9: $00
    inc bc                                        ; $56ba: $03
    nop                                           ; $56bb: $00
    ld bc, $0004                                  ; $56bc: $01 $04 $00
    ld [bc], a                                    ; $56bf: $02
    inc b                                         ; $56c0: $04
    ld [bc], a                                    ; $56c1: $02
    inc e                                         ; $56c2: $1c
    ld [bc], a                                    ; $56c3: $02
    jr jr_0dd_5647                                ; $56c4: $18 $81

    ld b, $07                                     ; $56c6: $06 $07
    nop                                           ; $56c8: $00
    rst $38                                       ; $56c9: $ff
    dec c                                         ; $56ca: $0d
    inc b                                         ; $56cb: $04
    ld hl, sp+$07                                 ; $56cc: $f8 $07
    ld a, [c]                                     ; $56ce: $f2
    ld bc, $fbeb                                  ; $56cf: $01 $eb $fb
    db $ec                                        ; $56d2: $ec
    db $fd                                        ; $56d3: $fd
    ei                                            ; $56d4: $fb
    ei                                            ; $56d5: $fb
    ei                                            ; $56d6: $fb
    nop                                           ; $56d7: $00
    ld [bc], a                                    ; $56d8: $02
    ccf                                           ; $56d9: $3f
    sub b                                         ; $56da: $90
    ld b, [hl]                                    ; $56db: $46
    ld a, a                                       ; $56dc: $7f
    and a                                         ; $56dd: $a7
    rst $38                                       ; $56de: $ff
    rst $18                                       ; $56df: $df
    ld sp, hl                                     ; $56e0: $f9
    cp a                                          ; $56e1: $bf
    or $7f                                        ; $56e2: $f6 $7f
    ld d, b                                       ; $56e4: $50
    ld a, a                                       ; $56e5: $7f
    ld h, b                                       ; $56e6: $60
    ccf                                           ; $56e7: $3f
    ld sp, $101f                                  ; $56e8: $31 $1f $10
    ld [bc], a                                    ; $56eb: $02
    ccf                                           ; $56ec: $3f
    ld [bc], a                                    ; $56ed: $02
    ld hl, $2502                                  ; $56ee: $21 $02 $25
    ld [bc], a                                    ; $56f1: $02
    ld [hl+], a                                   ; $56f2: $22
    ld [bc], a                                    ; $56f3: $02
    ld a, [hl]                                    ; $56f4: $7e
    add h                                         ; $56f5: $84
    ld l, a                                       ; $56f6: $6f
    ld l, c                                       ; $56f7: $69
    ld l, a                                       ; $56f8: $6f
    ld l, [hl]                                    ; $56f9: $6e
    ld [$8202], sp                                ; $56fa: $08 $02 $82
    inc bc                                        ; $56fd: $03
    ld bc, $0302                                  ; $56fe: $01 $02 $03
    inc b                                         ; $5701: $04
    ld [bc], a                                    ; $5702: $02
    ld b, $00                                     ; $5703: $06 $00
    ld b, $02                                     ; $5705: $06 $02
    add h                                         ; $5707: $84
    inc bc                                        ; $5708: $03
    ld bc, $9d9f                                  ; $5709: $01 $9f $9d
    ld [bc], a                                    ; $570c: $02
    nop                                           ; $570d: $00
    ld [bc], a                                    ; $570e: $02
    ld h, e                                       ; $570f: $63
    ld [bc], a                                    ; $5710: $02
    ld b, [hl]                                    ; $5711: $46
    ld [bc], a                                    ; $5712: $02
    adc [hl]                                      ; $5713: $8e
    ld [bc], a                                    ; $5714: $02
    ei                                            ; $5715: $fb
    ld [bc], a                                    ; $5716: $02
    ld h, l                                       ; $5717: $65
    ld [bc], a                                    ; $5718: $02
    inc e                                         ; $5719: $1c
    inc d                                         ; $571a: $14
    nop                                           ; $571b: $00
    ld [bc], a                                    ; $571c: $02
    jr jr_0dd_5721                                ; $571d: $18 $02

    ld c, $02                                     ; $571f: $0e $02

jr_0dd_5721:
    add hl, de                                    ; $5721: $19
    ld [bc], a                                    ; $5722: $02
    ld d, $02                                     ; $5723: $16 $02
    jr jr_0dd_573b                                ; $5725: $18 $14

    nop                                           ; $5727: $00
    rst $38                                       ; $5728: $ff
    add hl, bc                                    ; $5729: $09
    ld [bc], a                                    ; $572a: $02
    ld hl, sp+$07                                 ; $572b: $f8 $07
    ld a, [c]                                     ; $572d: $f2
    ld bc, $fcf5                                  ; $572e: $01 $f5 $fc
    push af                                       ; $5731: $f5
    rst $38                                       ; $5732: $ff
    adc h                                         ; $5733: $8c
    nop                                           ; $5734: $00
    inc a                                         ; $5735: $3c
    nop                                           ; $5736: $00
    inc [hl]                                      ; $5737: $34
    nop                                           ; $5738: $00
    ld a, [hl-]                                   ; $5739: $3a
    nop                                           ; $573a: $00

jr_0dd_573b:
    ld [bc], a                                    ; $573b: $02
    nop                                           ; $573c: $00
    jr nz, jr_0dd_573f                            ; $573d: $20 $00

jr_0dd_573f:
    jr nz, jr_0dd_5743                            ; $573f: $20 $02

    jr nc, jr_0dd_5745                            ; $5741: $30 $02

jr_0dd_5743:
    jr c, jr_0dd_5747                             ; $5743: $38 $02

jr_0dd_5745:
    ld [hl], e                                    ; $5745: $73
    ld [bc], a                                    ; $5746: $02

jr_0dd_5747:
    ld [c], a                                     ; $5747: $e2
    ld [bc], a                                    ; $5748: $02
    nop                                           ; $5749: $00
    add c                                         ; $574a: $81
    jr nc, jr_0dd_5768                            ; $574b: $30 $1b

    nop                                           ; $574d: $00
    add e                                         ; $574e: $83
    inc bc                                        ; $574f: $03
    nop                                           ; $5750: $00
    inc b                                         ; $5751: $04
    dec bc                                        ; $5752: $0b
    nop                                           ; $5753: $00
    rst $38                                       ; $5754: $ff
    dec c                                         ; $5755: $0d
    inc b                                         ; $5756: $04
    ld hl, sp+$07                                 ; $5757: $f8 $07
    ld a, [c]                                     ; $5759: $f2
    ld bc, $fbec                                  ; $575a: $01 $ec $fb
    db $ed                                        ; $575d: $ed
    db $fd                                        ; $575e: $fd
    db $fc                                        ; $575f: $fc
    ei                                            ; $5760: $fb
    db $fc                                        ; $5761: $fc
    cp $02                                        ; $5762: $fe $02
    ccf                                           ; $5764: $3f
    sub b                                         ; $5765: $90
    ld b, [hl]                                    ; $5766: $46
    ld a, a                                       ; $5767: $7f

jr_0dd_5768:
    and a                                         ; $5768: $a7
    rst $38                                       ; $5769: $ff
    rst $08                                       ; $576a: $cf
    ld sp, hl                                     ; $576b: $f9
    cp a                                          ; $576c: $bf
    or $7f                                        ; $576d: $f6 $7f
    ld d, b                                       ; $576f: $50
    ld a, a                                       ; $5770: $7f
    ld h, b                                       ; $5771: $60
    ccf                                           ; $5772: $3f
    ld sp, $101f                                  ; $5773: $31 $1f $10
    ld [bc], a                                    ; $5776: $02
    ccf                                           ; $5777: $3f
    ld [bc], a                                    ; $5778: $02
    ld hl, $2502                                  ; $5779: $21 $02 $25
    ld [bc], a                                    ; $577c: $02
    ld h, $03                                     ; $577d: $26 $03
    ld a, $83                                     ; $577f: $3e $83
    ld a, [hl-]                                   ; $5781: $3a
    ccf                                           ; $5782: $3f
    dec a                                         ; $5783: $3d
    ld [$8202], sp                                ; $5784: $08 $02 $82
    inc bc                                        ; $5787: $03
    ld bc, $0302                                  ; $5788: $01 $02 $03
    inc b                                         ; $578b: $04
    ld [bc], a                                    ; $578c: $02
    ld b, $00                                     ; $578d: $06 $00
    ld [$8202], sp                                ; $578f: $08 $02 $82
    cp [hl]                                       ; $5792: $be
    or d                                          ; $5793: $b2
    ld [bc], a                                    ; $5794: $02
    ld b, b                                       ; $5795: $40
    ld [bc], a                                    ; $5796: $02
    rst $00                                       ; $5797: $c7
    ld [bc], a                                    ; $5798: $02
    and $02                                       ; $5799: $e6 $02
    ld a, a                                       ; $579b: $7f
    ld [bc], a                                    ; $579c: $02
    ld l, e                                       ; $579d: $6b
    ld [bc], a                                    ; $579e: $02
    jr nc, jr_0dd_57b7                            ; $579f: $30 $16

    nop                                           ; $57a1: $00
    ld [bc], a                                    ; $57a2: $02
    ld b, $02                                     ; $57a3: $06 $02
    ld [bc], a                                    ; $57a5: $02
    ld [bc], a                                    ; $57a6: $02
    ld bc, $0702                                  ; $57a7: $01 $02 $07
    ld d, $00                                     ; $57aa: $16 $00
    rst $38                                       ; $57ac: $ff
    rlca                                          ; $57ad: $07
    ld bc, $07f8                                  ; $57ae: $01 $f8 $07
    ld a, [c]                                     ; $57b1: $f2
    ld bc, $fdf6                                  ; $57b2: $01 $f6 $fd
    adc d                                         ; $57b5: $8a
    nop                                           ; $57b6: $00

jr_0dd_57b7:
    ld a, b                                       ; $57b7: $78
    nop                                           ; $57b8: $00
    ld l, b                                       ; $57b9: $68
    nop                                           ; $57ba: $00
    ld h, h                                       ; $57bb: $64
    nop                                           ; $57bc: $00
    inc b                                         ; $57bd: $04
    nop                                           ; $57be: $00
    inc b                                         ; $57bf: $04
    ld [bc], a                                    ; $57c0: $02
    nop                                           ; $57c1: $00
    ld [bc], a                                    ; $57c2: $02
    ld b, b                                       ; $57c3: $40
    ld [bc], a                                    ; $57c4: $02
    ldh [rSC], a                                  ; $57c5: $e0 $02
    ld h, [hl]                                    ; $57c7: $66
    add e                                         ; $57c8: $83
    inc bc                                        ; $57c9: $03
    nop                                           ; $57ca: $00
    ld b, b                                       ; $57cb: $40
    dec bc                                        ; $57cc: $0b
    nop                                           ; $57cd: $00
    rst $38                                       ; $57ce: $ff
    dec bc                                        ; $57cf: $0b
    inc bc                                        ; $57d0: $03
    ld hl, sp+$07                                 ; $57d1: $f8 $07
    ld a, [c]                                     ; $57d3: $f2
    ld bc, $fbeb                                  ; $57d4: $01 $eb $fb
    db $ec                                        ; $57d7: $ec
    db $fd                                        ; $57d8: $fd
    ei                                            ; $57d9: $fb
    db $fd                                        ; $57da: $fd
    ld [bc], a                                    ; $57db: $02
    ccf                                           ; $57dc: $3f
    sub b                                         ; $57dd: $90
    ld b, [hl]                                    ; $57de: $46
    ld a, a                                       ; $57df: $7f
    sub e                                         ; $57e0: $93
    rst $38                                       ; $57e1: $ff
    xor a                                         ; $57e2: $af
    db $fd                                        ; $57e3: $fd
    rst $18                                       ; $57e4: $df
    or $7f                                        ; $57e5: $f6 $7f
    ld [hl], b                                    ; $57e7: $70
    ld a, a                                       ; $57e8: $7f
    ld d, b                                       ; $57e9: $50
    ccf                                           ; $57ea: $3f
    ld sp, $181f                                  ; $57eb: $31 $1f $18
    ld [bc], a                                    ; $57ee: $02
    scf                                           ; $57ef: $37
    ld [bc], a                                    ; $57f0: $02
    ld hl, $2504                                  ; $57f1: $21 $04 $25
    inc bc                                        ; $57f4: $03
    inc a                                         ; $57f5: $3c
    add e                                         ; $57f6: $83
    inc l                                         ; $57f7: $2c
    ld a, $36                                     ; $57f8: $3e $36
    inc b                                         ; $57fa: $04
    ld [bc], a                                    ; $57fb: $02
    ld [bc], a                                    ; $57fc: $02
    nop                                           ; $57fd: $00
    ld [bc], a                                    ; $57fe: $02
    ld [bc], a                                    ; $57ff: $02
    add d                                         ; $5800: $82
    inc bc                                        ; $5801: $03
    ld bc, $0206                                  ; $5802: $01 $06 $02
    ld b, $00                                     ; $5805: $06 $00
    ld [$8202], sp                                ; $5807: $08 $02 $82
    ld a, [$02ca]                                 ; $580a: $fa $ca $02
    nop                                           ; $580d: $00
    add d                                         ; $580e: $82
    ld a, c                                       ; $580f: $79
    ld e, c                                       ; $5810: $59
    ld [bc], a                                    ; $5811: $02
    ld [hl], e                                    ; $5812: $73
    ld [bc], a                                    ; $5813: $02
    xor $02                                       ; $5814: $ee $02
    di                                            ; $5816: $f3
    ld [bc], a                                    ; $5817: $02
    ld a, [hl]                                    ; $5818: $7e
    inc d                                         ; $5819: $14
    nop                                           ; $581a: $00
    rst $38                                       ; $581b: $ff
    rlca                                          ; $581c: $07
    ld bc, $07f8                                  ; $581d: $01 $f8 $07
    ld a, [c]                                     ; $5820: $f2
    ld bc, $fcf4                                  ; $5821: $01 $f4 $fc
    adc l                                         ; $5824: $8d
    nop                                           ; $5825: $00
    stop                                          ; $5826: $10 $00
    inc a                                         ; $5828: $3c
    nop                                           ; $5829: $00
    inc [hl]                                      ; $582a: $34
    nop                                           ; $582b: $00
    inc [hl]                                      ; $582c: $34
    nop                                           ; $582d: $00
    ld b, $00                                     ; $582e: $06 $00
    ld b, $00                                     ; $5830: $06 $00
    inc bc                                        ; $5832: $03
    ld [bc], a                                    ; $5833: $02
    ld [bc], a                                    ; $5834: $02
    inc bc                                        ; $5835: $03
    ld [bc], a                                    ; $5836: $02
    ld b, $83                                     ; $5837: $06 $83
    ld [$0600], sp                                ; $5839: $08 $00 $06
    add hl, bc                                    ; $583c: $09
    nop                                           ; $583d: $00
    rst $38                                       ; $583e: $ff
    dec c                                         ; $583f: $0d
    inc b                                         ; $5840: $04
    ld hl, sp+$07                                 ; $5841: $f8 $07
    ld a, [c]                                     ; $5843: $f2
    ld bc, $fbeb                                  ; $5844: $01 $eb $fb
    db $ec                                        ; $5847: $ec
    db $fd                                        ; $5848: $fd
    ei                                            ; $5849: $fb
    ei                                            ; $584a: $fb
    ei                                            ; $584b: $fb
    nop                                           ; $584c: $00
    ld [bc], a                                    ; $584d: $02
    ccf                                           ; $584e: $3f
    sub b                                         ; $584f: $90
    ld h, d                                       ; $5850: $62
    ld a, a                                       ; $5851: $7f
    sbc e                                         ; $5852: $9b
    rst $38                                       ; $5853: $ff
    and a                                         ; $5854: $a7
    db $fd                                        ; $5855: $fd
    rst $18                                       ; $5856: $df
    ei                                            ; $5857: $fb
    ld a, a                                       ; $5858: $7f
    ld [hl], b                                    ; $5859: $70
    ld a, a                                       ; $585a: $7f
    ld l, b                                       ; $585b: $68
    ccf                                           ; $585c: $3f
    jr nc, jr_0dd_587e                            ; $585d: $30 $1f

    inc e                                         ; $585f: $1c
    ld [bc], a                                    ; $5860: $02
    scf                                           ; $5861: $37
    ld [bc], a                                    ; $5862: $02
    ld hl, $4502                                  ; $5863: $21 $02 $45
    ld [bc], a                                    ; $5866: $02
    ld l, h                                       ; $5867: $6c
    add [hl]                                      ; $5868: $86
    ld a, h                                       ; $5869: $7c
    ld e, h                                       ; $586a: $5c
    ld a, b                                       ; $586b: $78
    ld e, b                                       ; $586c: $58
    ld a, b                                       ; $586d: $78
    ld e, b                                       ; $586e: $58
    ld [bc], a                                    ; $586f: $02
    ld [bc], a                                    ; $5870: $02
    inc b                                         ; $5871: $04
    nop                                           ; $5872: $00
    ld [bc], a                                    ; $5873: $02
    ld [bc], a                                    ; $5874: $02
    add d                                         ; $5875: $82
    inc bc                                        ; $5876: $03
    ld bc, $0206                                  ; $5877: $01 $06 $02
    ld b, $00                                     ; $587a: $06 $00
    ld b, $02                                     ; $587c: $06 $02

jr_0dd_587e:
    ld [bc], a                                    ; $587e: $02
    inc bc                                        ; $587f: $03
    add d                                         ; $5880: $82
    db $eb                                        ; $5881: $eb
    dec hl                                        ; $5882: $2b
    ld [bc], a                                    ; $5883: $02
    ld b, b                                       ; $5884: $40
    add d                                         ; $5885: $82
    ld a, h                                       ; $5886: $7c
    ld e, h                                       ; $5887: $5c
    ld [bc], a                                    ; $5888: $02
    db $ec                                        ; $5889: $ec
    ld [bc], a                                    ; $588a: $02
    ld a, [$7602]                                 ; $588b: $fa $02 $76
    ld [bc], a                                    ; $588e: $02
    dec de                                        ; $588f: $1b
    ld [bc], a                                    ; $5890: $02
    ld bc, $0014                                  ; $5891: $01 $14 $00
    ld [bc], a                                    ; $5894: $02
    db $10                                        ; $5895: $10
    ld [bc], a                                    ; $5896: $02
    ld [$0602], sp                                ; $5897: $08 $02 $06
    ld [bc], a                                    ; $589a: $02
    add hl, de                                    ; $589b: $19
    ld [bc], a                                    ; $589c: $02
    ld b, $02                                     ; $589d: $06 $02
    jr jr_0dd_58b3                                ; $589f: $18 $12

    nop                                           ; $58a1: $00
    rst $38                                       ; $58a2: $ff
    add hl, bc                                    ; $58a3: $09
    ld [bc], a                                    ; $58a4: $02
    ld hl, sp+$07                                 ; $58a5: $f8 $07
    ld a, [c]                                     ; $58a7: $f2
    ld bc, $fdf4                                  ; $58a8: $01 $f4 $fd
    db $f4                                        ; $58ab: $f4
    rst $38                                       ; $58ac: $ff
    adc [hl]                                      ; $58ad: $8e
    nop                                           ; $58ae: $00
    jr nz, jr_0dd_58b1                            ; $58af: $20 $00

jr_0dd_58b1:
    ld a, b                                       ; $58b1: $78
    nop                                           ; $58b2: $00

jr_0dd_58b3:
    add sp, $00                                   ; $58b3: $e8 $00
    ld c, h                                       ; $58b5: $4c
    nop                                           ; $58b6: $00
    inc c                                         ; $58b7: $0c
    nop                                           ; $58b8: $00
    inc e                                         ; $58b9: $1c
    nop                                           ; $58ba: $00
    inc e                                         ; $58bb: $1c
    ld [bc], a                                    ; $58bc: $02
    inc d                                         ; $58bd: $14
    ld [bc], a                                    ; $58be: $02
    inc c                                         ; $58bf: $0c
    ld [bc], a                                    ; $58c0: $02
    ld c, [hl]                                    ; $58c1: $4e
    ld [bc], a                                    ; $58c2: $02
    rlca                                          ; $58c3: $07
    add e                                         ; $58c4: $83
    inc h                                         ; $58c5: $24
    inc b                                         ; $58c6: $04
    inc bc                                        ; $58c7: $03
    dec e                                         ; $58c8: $1d
    nop                                           ; $58c9: $00
    add c                                         ; $58ca: $81
    inc bc                                        ; $58cb: $03
    add hl, bc                                    ; $58cc: $09
    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    dec c                                         ; $58cf: $0d
    inc b                                         ; $58d0: $04
    ld hl, sp+$07                                 ; $58d1: $f8 $07
    ld a, [c]                                     ; $58d3: $f2
    ld bc, $fbec                                  ; $58d4: $01 $ec $fb
    db $ed                                        ; $58d7: $ed
    db $fd                                        ; $58d8: $fd
    db $fc                                        ; $58d9: $fc
    ei                                            ; $58da: $fb
    db $fc                                        ; $58db: $fc
    cp $02                                        ; $58dc: $fe $02
    ccf                                           ; $58de: $3f
    sub b                                         ; $58df: $90
    ld h, d                                       ; $58e0: $62
    ld a, a                                       ; $58e1: $7f
    sbc e                                         ; $58e2: $9b
    rst $38                                       ; $58e3: $ff
    and a                                         ; $58e4: $a7
    db $fd                                        ; $58e5: $fd
    rst $18                                       ; $58e6: $df
    ei                                            ; $58e7: $fb
    ld a, a                                       ; $58e8: $7f
    ld [hl], b                                    ; $58e9: $70
    ld a, a                                       ; $58ea: $7f
    ld l, b                                       ; $58eb: $68
    ccf                                           ; $58ec: $3f
    jr nc, @+$21                                  ; $58ed: $30 $1f

    inc e                                         ; $58ef: $1c
    ld [bc], a                                    ; $58f0: $02
    scf                                           ; $58f1: $37
    ld [bc], a                                    ; $58f2: $02
    ld hl, $2502                                  ; $58f3: $21 $02 $25
    ld [bc], a                                    ; $58f6: $02
    inc [hl]                                      ; $58f7: $34
    add [hl]                                      ; $58f8: $86
    inc a                                         ; $58f9: $3c
    inc l                                         ; $58fa: $2c
    ld a, h                                       ; $58fb: $7c
    ld l, h                                       ; $58fc: $6c
    ld a, [hl]                                    ; $58fd: $7e
    ld l, [hl]                                    ; $58fe: $6e
    ld [bc], a                                    ; $58ff: $02
    ld [bc], a                                    ; $5900: $02
    inc b                                         ; $5901: $04
    nop                                           ; $5902: $00
    ld [bc], a                                    ; $5903: $02
    ld [bc], a                                    ; $5904: $02
    add d                                         ; $5905: $82
    inc bc                                        ; $5906: $03
    ld bc, $0206                                  ; $5907: $01 $06 $02
    ld b, $00                                     ; $590a: $06 $00
    ld [$8202], sp                                ; $590c: $08 $02 $82
    ld [$022a], a                                 ; $590f: $ea $2a $02
    ret nz                                        ; $5912: $c0

    add d                                         ; $5913: $82
    db $fc                                        ; $5914: $fc
    db $ec                                        ; $5915: $ec
    ld [bc], a                                    ; $5916: $02
    ld a, h                                       ; $5917: $7c
    ld [bc], a                                    ; $5918: $02
    ld l, l                                       ; $5919: $6d
    ld [bc], a                                    ; $591a: $02
    ld [hl], $02                                  ; $591b: $36 $02
    rlca                                          ; $591d: $07
    ld d, $00                                     ; $591e: $16 $00
    ld [bc], a                                    ; $5920: $02
    inc b                                         ; $5921: $04
    ld [bc], a                                    ; $5922: $02
    ld [bc], a                                    ; $5923: $02
    ld [bc], a                                    ; $5924: $02
    ld b, $02                                     ; $5925: $06 $02
    ld bc, $0702                                  ; $5927: $01 $02 $07
    inc d                                         ; $592a: $14
    nop                                           ; $592b: $00
    rst $38                                       ; $592c: $ff
    rlca                                          ; $592d: $07
    ld bc, $07f8                                  ; $592e: $01 $f8 $07
    ld a, [c]                                     ; $5931: $f2
    ld bc, $fdf5                                  ; $5932: $01 $f5 $fd
    adc [hl]                                      ; $5935: $8e
    nop                                           ; $5936: $00
    jr nz, jr_0dd_5939                            ; $5937: $20 $00

jr_0dd_5939:
    ld a, b                                       ; $5939: $78
    nop                                           ; $593a: $00
    ld l, b                                       ; $593b: $68
    nop                                           ; $593c: $00
    inc l                                         ; $593d: $2c
    nop                                           ; $593e: $00
    inc c                                         ; $593f: $0c
    nop                                           ; $5940: $00
    inc c                                         ; $5941: $0c

jr_0dd_5942:
    nop                                           ; $5942: $00
    inc b                                         ; $5943: $04
    ld [bc], a                                    ; $5944: $02
    inc d                                         ; $5945: $14
    ld [bc], a                                    ; $5946: $02
    inc c                                         ; $5947: $0c
    ld [bc], a                                    ; $5948: $02
    ld c, $83                                     ; $5949: $0e $83
    ld c, b                                       ; $594b: $48
    ld [$0907], sp                                ; $594c: $08 $07 $09
    nop                                           ; $594f: $00
    rst $38                                       ; $5950: $ff
    dec bc                                        ; $5951: $0b
    inc bc                                        ; $5952: $03
    ld hl, sp+$07                                 ; $5953: $f8 $07
    ld a, [c]                                     ; $5955: $f2
    ld bc, $fbeb                                  ; $5956: $01 $eb $fb
    db $ec                                        ; $5959: $ec
    db $fd                                        ; $595a: $fd
    ei                                            ; $595b: $fb
    db $fd                                        ; $595c: $fd
    ld [bc], a                                    ; $595d: $02
    ccf                                           ; $595e: $3f
    sub b                                         ; $595f: $90
    ld b, [hl]                                    ; $5960: $46
    ld a, a                                       ; $5961: $7f
    sub e                                         ; $5962: $93
    rst $38                                       ; $5963: $ff
    xor a                                         ; $5964: $af
    db $fd                                        ; $5965: $fd
    rst $18                                       ; $5966: $df
    or $7f                                        ; $5967: $f6 $7f
    ld [hl], b                                    ; $5969: $70
    ld a, a                                       ; $596a: $7f
    ld d, b                                       ; $596b: $50
    ccf                                           ; $596c: $3f
    ld sp, $181f                                  ; $596d: $31 $1f $18
    ld [bc], a                                    ; $5970: $02
    scf                                           ; $5971: $37
    ld [bc], a                                    ; $5972: $02
    ld hl, $2504                                  ; $5973: $21 $04 $25
    inc bc                                        ; $5976: $03
    ld a, $83                                     ; $5977: $3e $83
    ld [hl], $3e                                  ; $5979: $36 $3e
    ld a, [hl-]                                   ; $597b: $3a
    inc b                                         ; $597c: $04
    ld [bc], a                                    ; $597d: $02
    ld [bc], a                                    ; $597e: $02
    nop                                           ; $597f: $00
    ld [bc], a                                    ; $5980: $02
    ld [bc], a                                    ; $5981: $02
    add d                                         ; $5982: $82
    inc bc                                        ; $5983: $03

jr_0dd_5984:
    ld bc, $0206                                  ; $5984: $01 $06 $02
    ld b, $00                                     ; $5987: $06 $00
    ld [$8202], sp                                ; $5989: $08 $02 $82
    db $fd                                        ; $598c: $fd
    push hl                                       ; $598d: $e5
    ld [bc], a                                    ; $598e: $02
    nop                                           ; $598f: $00
    add d                                         ; $5990: $82
    ld a, l                                       ; $5991: $7d
    ld [hl], l                                    ; $5992: $75
    ld [bc], a                                    ; $5993: $02
    ld l, [hl]                                    ; $5994: $6e
    ld [bc], a                                    ; $5995: $02
    ld b, d                                       ; $5996: $42
    ld [bc], a                                    ; $5997: $02
    ld c, [hl]                                    ; $5998: $4e
    ld [bc], a                                    ; $5999: $02
    ld h, d                                       ; $599a: $62
    ld [bc], a                                    ; $599b: $02
    ld a, [hl]                                    ; $599c: $7e
    ld [de], a                                    ; $599d: $12
    nop                                           ; $599e: $00
    rst $38                                       ; $599f: $ff
    rlca                                          ; $59a0: $07
    ld bc, $07f8                                  ; $59a1: $01 $f8 $07
    ld a, [c]                                     ; $59a4: $f2
    ld bc, $fcf4                                  ; $59a5: $01 $f4 $fc
    adc [hl]                                      ; $59a8: $8e
    nop                                           ; $59a9: $00
    stop                                          ; $59aa: $10 $00
    inc a                                         ; $59ac: $3c
    nop                                           ; $59ad: $00
    inc [hl]                                      ; $59ae: $34
    nop                                           ; $59af: $00
    inc [hl]                                      ; $59b0: $34
    nop                                           ; $59b1: $00
    ld [bc], a                                    ; $59b2: $02
    nop                                           ; $59b3: $00
    ld [bc], a                                    ; $59b4: $02
    nop                                           ; $59b5: $00
    ld [bc], a                                    ; $59b6: $02
    inc b                                         ; $59b7: $04
    ld bc, $0802                                  ; $59b8: $01 $02 $08
    add d                                         ; $59bb: $82
    ld e, $1c                                     ; $59bc: $1e $1c
    ld [bc], a                                    ; $59be: $02
    jr jr_0dd_5942                                ; $59bf: $18 $81

    ld c, $07                                     ; $59c1: $0e $07
    nop                                           ; $59c3: $00
    rst $38                                       ; $59c4: $ff
    dec c                                         ; $59c5: $0d
    inc b                                         ; $59c6: $04
    ld hl, sp+$07                                 ; $59c7: $f8 $07
    ld a, [c]                                     ; $59c9: $f2
    ld bc, $faeb                                  ; $59ca: $01 $eb $fa
    db $eb                                        ; $59cd: $eb
    rst $38                                       ; $59ce: $ff
    ei                                            ; $59cf: $fb
    ld a, [$fffb]                                 ; $59d0: $fa $fb $ff
    ld [bc], a                                    ; $59d3: $02
    dec c                                         ; $59d4: $0d
    ld [bc], a                                    ; $59d5: $02
    ld [de], a                                    ; $59d6: $12
    ld [bc], a                                    ; $59d7: $02
    jr z, jr_0dd_59dc                             ; $59d8: $28 $02

    ld [hl-], a                                   ; $59da: $32
    ld [bc], a                                    ; $59db: $02

jr_0dd_59dc:
    ld a, [hl+]                                   ; $59dc: $2a
    ld [bc], a                                    ; $59dd: $02
    dec [hl]                                      ; $59de: $35
    ld [bc], a                                    ; $59df: $02
    ld a, [de]                                    ; $59e0: $1a
    add d                                         ; $59e1: $82
    rra                                           ; $59e2: $1f
    rla                                           ; $59e3: $17
    ld [bc], a                                    ; $59e4: $02
    rra                                           ; $59e5: $1f
    adc e                                         ; $59e6: $8b
    jr c, @+$41                                   ; $59e7: $38 $3f

    ld d, a                                       ; $59e9: $57
    ld a, a                                       ; $59ea: $7f
    ld e, b                                       ; $59eb: $58
    ld a, a                                       ; $59ec: $7f
    ld e, h                                       ; $59ed: $5c
    ld a, a                                       ; $59ee: $7f
    sbc a                                         ; $59ef: $9f
    rst $38                                       ; $59f0: $ff
    cp a                                          ; $59f1: $bf
    inc bc                                        ; $59f2: $03
    rst $38                                       ; $59f3: $ff
    ld [bc], a                                    ; $59f4: $02
    db $10                                        ; $59f5: $10
    ld [bc], a                                    ; $59f6: $02
    ld [$1402], sp                                ; $59f7: $08 $02 $14
    ld [bc], a                                    ; $59fa: $02
    inc c                                         ; $59fb: $0c
    ld [bc], a                                    ; $59fc: $02
    inc d                                         ; $59fd: $14
    ld [bc], a                                    ; $59fe: $02
    inc c                                         ; $59ff: $0c
    inc bc                                        ; $5a00: $03
    jr jr_0dd_5984                                ; $5a01: $18 $81

    ld [$1802], sp                                ; $5a03: $08 $02 $18
    ld [bc], a                                    ; $5a06: $02
    inc e                                         ; $5a07: $1c
    adc [hl]                                      ; $5a08: $8e
    ld a, [bc]                                    ; $5a09: $0a
    ld e, $0a                                     ; $5a0a: $1e $0a
    ld e, $1a                                     ; $5a0c: $1e $1a
    ld e, $19                                     ; $5a0e: $1e $19
    rra                                           ; $5a10: $1f
    dec e                                         ; $5a11: $1d
    rra                                           ; $5a12: $1f
    rrca                                          ; $5a13: $0f
    rra                                           ; $5a14: $1f
    rst $38                                       ; $5a15: $ff
    cp a                                          ; $5a16: $bf
    ld [bc], a                                    ; $5a17: $02
    ld a, a                                       ; $5a18: $7f
    ld [bc], a                                    ; $5a19: $02
    ccf                                           ; $5a1a: $3f
    inc b                                         ; $5a1b: $04
    ld a, a                                       ; $5a1c: $7f
    add d                                         ; $5a1d: $82
    jr c, jr_0dd_5a5f                             ; $5a1e: $38 $3f

    ld [bc], a                                    ; $5a20: $02
    rra                                           ; $5a21: $1f
    ld [de], a                                    ; $5a22: $12
    nop                                           ; $5a23: $00
    add [hl]                                      ; $5a24: $86
    rra                                           ; $5a25: $1f
    dec e                                         ; $5a26: $1d
    ld c, $1e                                     ; $5a27: $0e $1e
    inc c                                         ; $5a29: $0c
    inc e                                         ; $5a2a: $1c
    ld [bc], a                                    ; $5a2b: $02
    ld e, $84                                     ; $5a2c: $1e $84
    ld b, $1e                                     ; $5a2e: $06 $1e
    inc c                                         ; $5a30: $0c
    inc e                                         ; $5a31: $1c
    ld [bc], a                                    ; $5a32: $02
    jr jr_0dd_5a47                                ; $5a33: $18 $12

    nop                                           ; $5a35: $00
    rst $38                                       ; $5a36: $ff
    rlca                                          ; $5a37: $07
    ld bc, $07f8                                  ; $5a38: $01 $f8 $07
    ld a, [c]                                     ; $5a3b: $f2
    ld bc, $fcec                                  ; $5a3c: $01 $ec $fc
    adc h                                         ; $5a3f: $8c
    nop                                           ; $5a40: $00
    ld [hl], $00                                  ; $5a41: $36 $00
    ld e, l                                       ; $5a43: $5d
    nop                                           ; $5a44: $00
    ld [hl], $00                                  ; $5a45: $36 $00

jr_0dd_5a47:
    ld d, l                                       ; $5a47: $55
    nop                                           ; $5a48: $00
    ld a, [hl+]                                   ; $5a49: $2a
    nop                                           ; $5a4a: $00
    inc d                                         ; $5a4b: $14
    inc d                                         ; $5a4c: $14
    nop                                           ; $5a4d: $00
    rst $38                                       ; $5a4e: $ff
    dec c                                         ; $5a4f: $0d
    inc b                                         ; $5a50: $04
    ld hl, sp+$07                                 ; $5a51: $f8 $07
    ld a, [c]                                     ; $5a53: $f2
    ld bc, $faeb                                  ; $5a54: $01 $eb $fa
    db $eb                                        ; $5a57: $eb
    rst $38                                       ; $5a58: $ff
    ei                                            ; $5a59: $fb
    ld a, [$fefb]                                 ; $5a5a: $fa $fb $fe
    ld [bc], a                                    ; $5a5d: $02
    dec c                                         ; $5a5e: $0d

jr_0dd_5a5f:
    ld [bc], a                                    ; $5a5f: $02
    ld [de], a                                    ; $5a60: $12
    ld [bc], a                                    ; $5a61: $02
    inc h                                         ; $5a62: $24
    ld [bc], a                                    ; $5a63: $02
    jr nz, jr_0dd_5a68                            ; $5a64: $20 $02

    dec [hl]                                      ; $5a66: $35
    ld [bc], a                                    ; $5a67: $02

jr_0dd_5a68:
    ld a, [hl-]                                   ; $5a68: $3a
    ld [bc], a                                    ; $5a69: $02
    dec d                                         ; $5a6a: $15
    inc b                                         ; $5a6b: $04
    rra                                           ; $5a6c: $1f
    adc e                                         ; $5a6d: $8b
    add hl, sp                                    ; $5a6e: $39
    ccf                                           ; $5a6f: $3f
    ld d, a                                       ; $5a70: $57
    ld a, a                                       ; $5a71: $7f
    ld e, b                                       ; $5a72: $58
    ld a, a                                       ; $5a73: $7f
    sbc h                                         ; $5a74: $9c
    rst $38                                       ; $5a75: $ff
    cp a                                          ; $5a76: $bf
    rst $38                                       ; $5a77: $ff
    sbc a                                         ; $5a78: $9f
    inc bc                                        ; $5a79: $03
    rst $38                                       ; $5a7a: $ff
    ld [bc], a                                    ; $5a7b: $02
    db $10                                        ; $5a7c: $10
    ld [bc], a                                    ; $5a7d: $02
    ld [$1c02], sp                                ; $5a7e: $08 $02 $1c
    ld [bc], a                                    ; $5a81: $02
    inc d                                         ; $5a82: $14
    ld [bc], a                                    ; $5a83: $02
    inc c                                         ; $5a84: $0c
    inc b                                         ; $5a85: $04
    inc e                                         ; $5a86: $1c
    add d                                         ; $5a87: $82
    jr jr_0dd_5a92                                ; $5a88: $18 $08

    ld [bc], a                                    ; $5a8a: $02
    jr jr_0dd_5a8f                                ; $5a8b: $18 $02

    ld e, $87                                     ; $5a8d: $1e $87

jr_0dd_5a8f:
    ld a, [bc]                                    ; $5a8f: $0a
    ld e, $0b                                     ; $5a90: $1e $0b

jr_0dd_5a92:
    rra                                           ; $5a92: $1f
    dec e                                         ; $5a93: $1d
    rra                                           ; $5a94: $1f
    add hl, de                                    ; $5a95: $19
    inc bc                                        ; $5a96: $03
    rra                                           ; $5a97: $1f
    add [hl]                                      ; $5a98: $86
    ld c, $1a                                     ; $5a99: $0e $1a
    rst $38                                       ; $5a9b: $ff
    sbc a                                         ; $5a9c: $9f
    rst $38                                       ; $5a9d: $ff
    cp a                                          ; $5a9e: $bf

jr_0dd_5a9f:
    ld [bc], a                                    ; $5a9f: $02
    ld a, a                                       ; $5aa0: $7f
    ld [bc], a                                    ; $5aa1: $02
    ccf                                           ; $5aa2: $3f
    add h                                         ; $5aa3: $84
    ld a, $3f                                     ; $5aa4: $3e $3f
    dec sp                                        ; $5aa6: $3b
    ccf                                           ; $5aa7: $3f
    ld [bc], a                                    ; $5aa8: $02
    rrca                                          ; $5aa9: $0f
    ld [de], a                                    ; $5aaa: $12
    nop                                           ; $5aab: $00
    add c                                         ; $5aac: $81
    ld b, $03                                     ; $5aad: $06 $03
    ld c, $85                                     ; $5aaf: $0e $85
    ld b, $0e                                     ; $5ab1: $06 $0e
    inc bc                                        ; $5ab3: $03
    rrca                                          ; $5ab4: $0f
    inc bc                                        ; $5ab5: $03
    inc bc                                        ; $5ab6: $03
    rrca                                          ; $5ab7: $0f
    ld [bc], a                                    ; $5ab8: $02
    ld c, $12                                     ; $5ab9: $0e $12
    nop                                           ; $5abb: $00
    rst $38                                       ; $5abc: $ff
    rlca                                          ; $5abd: $07
    ld bc, $07f8                                  ; $5abe: $01 $f8 $07
    ld a, [c]                                     ; $5ac1: $f2
    ld bc, $fcec                                  ; $5ac2: $01 $ec $fc
    adc h                                         ; $5ac5: $8c
    nop                                           ; $5ac6: $00
    ld [hl], $00                                  ; $5ac7: $36 $00
    ld l, h                                       ; $5ac9: $6c
    nop                                           ; $5aca: $00
    ld a, l                                       ; $5acb: $7d
    nop                                           ; $5acc: $00
    ld a, [hl+]                                   ; $5acd: $2a
    nop                                           ; $5ace: $00
    inc d                                         ; $5acf: $14
    nop                                           ; $5ad0: $00
    jr z, jr_0dd_5ae7                             ; $5ad1: $28 $14

    nop                                           ; $5ad3: $00
    rst $38                                       ; $5ad4: $ff
    dec c                                         ; $5ad5: $0d
    inc b                                         ; $5ad6: $04
    ld hl, sp+$07                                 ; $5ad7: $f8 $07
    ld a, [c]                                     ; $5ad9: $f2
    ld bc, $faec                                  ; $5ada: $01 $ec $fa
    db $ec                                        ; $5add: $ec
    rst $38                                       ; $5ade: $ff
    db $fc                                        ; $5adf: $fc
    ld a, [$fefc]                                 ; $5ae0: $fa $fc $fe
    ld [bc], a                                    ; $5ae3: $02
    dec c                                         ; $5ae4: $0d
    ld [bc], a                                    ; $5ae5: $02
    ld [de], a                                    ; $5ae6: $12

jr_0dd_5ae7:
    ld [bc], a                                    ; $5ae7: $02
    inc h                                         ; $5ae8: $24
    ld [bc], a                                    ; $5ae9: $02
    jr nz, jr_0dd_5aee                            ; $5aea: $20 $02

    dec [hl]                                      ; $5aec: $35
    ld [bc], a                                    ; $5aed: $02

jr_0dd_5aee:
    ld a, [hl-]                                   ; $5aee: $3a
    ld [bc], a                                    ; $5aef: $02
    dec d                                         ; $5af0: $15
    ld [bc], a                                    ; $5af1: $02
    rra                                           ; $5af2: $1f
    adc l                                         ; $5af3: $8d
    dec e                                         ; $5af4: $1d
    rra                                           ; $5af5: $1f
    jr nc, jr_0dd_5b37                            ; $5af6: $30 $3f

    ld e, h                                       ; $5af8: $5c
    ld a, a                                       ; $5af9: $7f
    ld e, a                                       ; $5afa: $5f
    ld a, a                                       ; $5afb: $7f
    cp a                                          ; $5afc: $bf
    rst $38                                       ; $5afd: $ff
    cp a                                          ; $5afe: $bf
    rst $38                                       ; $5aff: $ff
    sbc a                                         ; $5b00: $9f
    inc bc                                        ; $5b01: $03
    rst $38                                       ; $5b02: $ff
    ld [bc], a                                    ; $5b03: $02
    db $10                                        ; $5b04: $10
    ld [bc], a                                    ; $5b05: $02
    ld [$1c02], sp                                ; $5b06: $08 $02 $1c
    ld [bc], a                                    ; $5b09: $02
    inc d                                         ; $5b0a: $14
    ld [bc], a                                    ; $5b0b: $02
    inc c                                         ; $5b0c: $0c
    inc bc                                        ; $5b0d: $03
    inc e                                         ; $5b0e: $1c
    add e                                         ; $5b0f: $83
    inc d                                         ; $5b10: $14
    jr jr_0dd_5b1b                                ; $5b11: $18 $08

    ld [bc], a                                    ; $5b13: $02
    jr jr_0dd_5a9f                                ; $5b14: $18 $89

    ld c, $1e                                     ; $5b16: $0e $1e
    ld a, [de]                                    ; $5b18: $1a
    ld e, $1b                                     ; $5b19: $1e $1b

jr_0dd_5b1b:
    rra                                           ; $5b1b: $1f
    dec e                                         ; $5b1c: $1d
    rra                                           ; $5b1d: $1f
    dec de                                        ; $5b1e: $1b
    ld [bc], a                                    ; $5b1f: $02
    rra                                           ; $5b20: $1f
    add a                                         ; $5b21: $87
    dec e                                         ; $5b22: $1d
    ld d, $1e                                     ; $5b23: $16 $1e
    rst $38                                       ; $5b25: $ff
    sbc a                                         ; $5b26: $9f
    rst $38                                       ; $5b27: $ff
    cp a                                          ; $5b28: $bf
    ld [bc], a                                    ; $5b29: $02
    ld a, a                                       ; $5b2a: $7f
    add h                                         ; $5b2b: $84
    ld a, [hl]                                    ; $5b2c: $7e
    ld a, a                                       ; $5b2d: $7f
    dec a                                         ; $5b2e: $3d
    ccf                                           ; $5b2f: $3f
    ld [bc], a                                    ; $5b30: $02
    rra                                           ; $5b31: $1f
    inc d                                         ; $5b32: $14
    nop                                           ; $5b33: $00
    add c                                         ; $5b34: $81
    ld [bc], a                                    ; $5b35: $02
    inc bc                                        ; $5b36: $03

jr_0dd_5b37:
    ld c, $82                                     ; $5b37: $0e $82
    ld [bc], a                                    ; $5b39: $02
    ld c, $04                                     ; $5b3a: $0e $04
    rrca                                          ; $5b3c: $0f
    ld [bc], a                                    ; $5b3d: $02
    inc c                                         ; $5b3e: $0c
    inc d                                         ; $5b3f: $14
    nop                                           ; $5b40: $00
    rst $38                                       ; $5b41: $ff
    rlca                                          ; $5b42: $07
    ld bc, $07f8                                  ; $5b43: $01 $f8 $07
    ld a, [c]                                     ; $5b46: $f2
    ld bc, $fced                                  ; $5b47: $01 $ed $fc
    adc h                                         ; $5b4a: $8c
    nop                                           ; $5b4b: $00
    ld [hl], $00                                  ; $5b4c: $36 $00
    ld l, h                                       ; $5b4e: $6c
    nop                                           ; $5b4f: $00
    ld a, l                                       ; $5b50: $7d
    nop                                           ; $5b51: $00
    ld a, [hl+]                                   ; $5b52: $2a
    nop                                           ; $5b53: $00
    inc d                                         ; $5b54: $14
    nop                                           ; $5b55: $00
    jr z, jr_0dd_5b6c                             ; $5b56: $28 $14

    nop                                           ; $5b58: $00
    rst $38                                       ; $5b59: $ff
    dec c                                         ; $5b5a: $0d
    inc b                                         ; $5b5b: $04
    ld hl, sp+$07                                 ; $5b5c: $f8 $07
    ld a, [c]                                     ; $5b5e: $f2
    ld bc, $faeb                                  ; $5b5f: $01 $eb $fa
    db $eb                                        ; $5b62: $eb
    rst $38                                       ; $5b63: $ff
    ei                                            ; $5b64: $fb
    ld a, [$fffb]                                 ; $5b65: $fa $fb $ff
    ld [bc], a                                    ; $5b68: $02
    dec c                                         ; $5b69: $0d
    ld [bc], a                                    ; $5b6a: $02
    ld [de], a                                    ; $5b6b: $12

jr_0dd_5b6c:
    ld [bc], a                                    ; $5b6c: $02
    jr z, jr_0dd_5b71                             ; $5b6d: $28 $02

    ld [hl-], a                                   ; $5b6f: $32
    ld [bc], a                                    ; $5b70: $02

jr_0dd_5b71:
    ld a, [hl+]                                   ; $5b71: $2a
    ld [bc], a                                    ; $5b72: $02
    dec [hl]                                      ; $5b73: $35
    ld [bc], a                                    ; $5b74: $02
    ld a, [de]                                    ; $5b75: $1a
    add d                                         ; $5b76: $82
    rra                                           ; $5b77: $1f
    rla                                           ; $5b78: $17
    ld [bc], a                                    ; $5b79: $02
    rra                                           ; $5b7a: $1f
    adc e                                         ; $5b7b: $8b
    jr c, jr_0dd_5bbd                             ; $5b7c: $38 $3f

    ld d, a                                       ; $5b7e: $57
    ld a, a                                       ; $5b7f: $7f
    ld e, b                                       ; $5b80: $58
    ld a, a                                       ; $5b81: $7f
    call c, $bfff                                 ; $5b82: $dc $ff $bf
    rst $38                                       ; $5b85: $ff
    cp a                                          ; $5b86: $bf
    inc bc                                        ; $5b87: $03
    rst $38                                       ; $5b88: $ff
    ld [bc], a                                    ; $5b89: $02
    db $10                                        ; $5b8a: $10
    ld [bc], a                                    ; $5b8b: $02
    ld [$1402], sp                                ; $5b8c: $08 $02 $14
    ld [bc], a                                    ; $5b8f: $02
    inc c                                         ; $5b90: $0c
    ld [bc], a                                    ; $5b91: $02
    inc d                                         ; $5b92: $14
    ld [bc], a                                    ; $5b93: $02
    inc c                                         ; $5b94: $0c
    ld [bc], a                                    ; $5b95: $02
    inc e                                         ; $5b96: $1c
    add d                                         ; $5b97: $82
    jr jr_0dd_5ba2                                ; $5b98: $18 $08

    ld [bc], a                                    ; $5b9a: $02
    jr jr_0dd_5b9f                                ; $5b9b: $18 $02

    inc e                                         ; $5b9d: $1c
    adc c                                         ; $5b9e: $89

jr_0dd_5b9f:
    ld a, [bc]                                    ; $5b9f: $0a
    ld e, $0a                                     ; $5ba0: $1e $0a

jr_0dd_5ba2:
    ld e, $1a                                     ; $5ba2: $1e $1a
    ld e, $19                                     ; $5ba4: $1e $19
    rra                                           ; $5ba6: $1f
    dec e                                         ; $5ba7: $1d
    inc bc                                        ; $5ba8: $03
    rra                                           ; $5ba9: $1f
    add d                                         ; $5baa: $82
    rst $38                                       ; $5bab: $ff
    cp a                                          ; $5bac: $bf
    ld [$827f], sp                                ; $5bad: $08 $7f $82
    ld h, a                                       ; $5bb0: $67
    ld a, a                                       ; $5bb1: $7f
    ld [bc], a                                    ; $5bb2: $02
    ld a, $12                                     ; $5bb3: $3e $12
    nop                                           ; $5bb5: $00
    add h                                         ; $5bb6: $84
    rra                                           ; $5bb7: $1f
    dec e                                         ; $5bb8: $1d
    ld d, $1e                                     ; $5bb9: $16 $1e
    ld [bc], a                                    ; $5bbb: $02
    inc e                                         ; $5bbc: $1c

jr_0dd_5bbd:
    add c                                         ; $5bbd: $81
    inc d                                         ; $5bbe: $14
    inc bc                                        ; $5bbf: $03
    inc e                                         ; $5bc0: $1c
    ld [bc], a                                    ; $5bc1: $02
    jr jr_0dd_5bd8                                ; $5bc2: $18 $14

    nop                                           ; $5bc4: $00
    rst $38                                       ; $5bc5: $ff
    rlca                                          ; $5bc6: $07
    ld bc, $07f8                                  ; $5bc7: $01 $f8 $07
    ld a, [c]                                     ; $5bca: $f2
    ld bc, $fcec                                  ; $5bcb: $01 $ec $fc
    adc h                                         ; $5bce: $8c
    nop                                           ; $5bcf: $00
    ld [hl], $00                                  ; $5bd0: $36 $00
    ld e, l                                       ; $5bd2: $5d
    nop                                           ; $5bd3: $00
    ld [hl], $00                                  ; $5bd4: $36 $00
    ld d, l                                       ; $5bd6: $55
    nop                                           ; $5bd7: $00

jr_0dd_5bd8:
    ld a, [hl+]                                   ; $5bd8: $2a
    nop                                           ; $5bd9: $00
    inc d                                         ; $5bda: $14
    inc d                                         ; $5bdb: $14
    nop                                           ; $5bdc: $00
    rst $38                                       ; $5bdd: $ff
    dec c                                         ; $5bde: $0d
    inc b                                         ; $5bdf: $04
    ld hl, sp+$07                                 ; $5be0: $f8 $07
    ld a, [c]                                     ; $5be2: $f2
    ld bc, $faeb                                  ; $5be3: $01 $eb $fa
    db $eb                                        ; $5be6: $eb
    rst $38                                       ; $5be7: $ff
    ei                                            ; $5be8: $fb
    ei                                            ; $5be9: $fb
    ei                                            ; $5bea: $fb
    rst $38                                       ; $5beb: $ff
    ld [bc], a                                    ; $5bec: $02
    dec c                                         ; $5bed: $0d
    ld [bc], a                                    ; $5bee: $02
    ld [de], a                                    ; $5bef: $12
    ld [bc], a                                    ; $5bf0: $02
    add hl, sp                                    ; $5bf1: $39
    ld [bc], a                                    ; $5bf2: $02
    jr z, jr_0dd_5bf7                             ; $5bf3: $28 $02

    dec [hl]                                      ; $5bf5: $35
    ld [bc], a                                    ; $5bf6: $02

jr_0dd_5bf7:
    ld a, [hl-]                                   ; $5bf7: $3a
    ld [bc], a                                    ; $5bf8: $02
    dec a                                         ; $5bf9: $3d
    add d                                         ; $5bfa: $82
    rra                                           ; $5bfb: $1f
    rla                                           ; $5bfc: $17
    ld [bc], a                                    ; $5bfd: $02
    rra                                           ; $5bfe: $1f
    adc c                                         ; $5bff: $89
    ld a, h                                       ; $5c00: $7c
    ld a, a                                       ; $5c01: $7f
    ld d, a                                       ; $5c02: $57
    ld a, a                                       ; $5c03: $7f
    ret c                                         ; $5c04: $d8

    rst $38                                       ; $5c05: $ff
    cp h                                          ; $5c06: $bc
    rst $38                                       ; $5c07: $ff
    sbc a                                         ; $5c08: $9f
    inc bc                                        ; $5c09: $03
    rst $38                                       ; $5c0a: $ff
    add d                                         ; $5c0b: $82
    ld [hl], a                                    ; $5c0c: $77
    ld e, a                                       ; $5c0d: $5f
    ld [bc], a                                    ; $5c0e: $02
    db $10                                        ; $5c0f: $10
    ld [bc], a                                    ; $5c10: $02
    ld [$0404], sp                                ; $5c11: $08 $04 $04
    ld [bc], a                                    ; $5c14: $02
    inc c                                         ; $5c15: $0c
    ld [bc], a                                    ; $5c16: $02
    inc e                                         ; $5c17: $1c
    ld [bc], a                                    ; $5c18: $02
    ld [$1804], sp                                ; $5c19: $08 $04 $18
    ld [bc], a                                    ; $5c1c: $02
    inc e                                         ; $5c1d: $1c
    adc c                                         ; $5c1e: $89
    ld a, [bc]                                    ; $5c1f: $0a
    ld e, $0a                                     ; $5c20: $1e $0a
    ld e, $19                                     ; $5c22: $1e $19
    rra                                           ; $5c24: $1f
    dec e                                         ; $5c25: $1d
    rra                                           ; $5c26: $1f
    add hl, de                                    ; $5c27: $19
    inc bc                                        ; $5c28: $03
    rra                                           ; $5c29: $1f
    inc b                                         ; $5c2a: $04
    ld a, a                                       ; $5c2b: $7f
    add d                                         ; $5c2c: $82
    ld l, a                                       ; $5c2d: $6f
    ld a, a                                       ; $5c2e: $7f
    ld [bc], a                                    ; $5c2f: $02
    rst $38                                       ; $5c30: $ff
    add h                                         ; $5c31: $84
    rst $00                                       ; $5c32: $c7
    rst $38                                       ; $5c33: $ff
    db $fd                                        ; $5c34: $fd
    rst $38                                       ; $5c35: $ff
    ld [bc], a                                    ; $5c36: $02
    ld a, a                                       ; $5c37: $7f
    ld [de], a                                    ; $5c38: $12
    nop                                           ; $5c39: $00
    add h                                         ; $5c3a: $84
    rrca                                          ; $5c3b: $0f
    add hl, bc                                    ; $5c3c: $09
    rrca                                          ; $5c3d: $0f
    dec c                                         ; $5c3e: $0d
    ld [bc], a                                    ; $5c3f: $02
    ld c, $06                                     ; $5c40: $0e $06
    inc c                                         ; $5c42: $0c
    inc d                                         ; $5c43: $14
    nop                                           ; $5c44: $00
    rst $38                                       ; $5c45: $ff
    rlca                                          ; $5c46: $07
    ld bc, $07f8                                  ; $5c47: $01 $f8 $07
    ld a, [c]                                     ; $5c4a: $f2
    ld bc, $fcec                                  ; $5c4b: $01 $ec $fc
    adc h                                         ; $5c4e: $8c
    nop                                           ; $5c4f: $00
    ld [hl], $00                                  ; $5c50: $36 $00
    dec de                                        ; $5c52: $1b
    nop                                           ; $5c53: $00
    ld e, a                                       ; $5c54: $5f
    nop                                           ; $5c55: $00
    ld a, [hl+]                                   ; $5c56: $2a
    nop                                           ; $5c57: $00
    inc d                                         ; $5c58: $14
    nop                                           ; $5c59: $00
    ld a, [bc]                                    ; $5c5a: $0a
    inc d                                         ; $5c5b: $14
    nop                                           ; $5c5c: $00
    rst $38                                       ; $5c5d: $ff
    dec c                                         ; $5c5e: $0d
    inc b                                         ; $5c5f: $04
    ld hl, sp+$07                                 ; $5c60: $f8 $07
    ld a, [c]                                     ; $5c62: $f2
    ld bc, $faec                                  ; $5c63: $01 $ec $fa
    db $ec                                        ; $5c66: $ec
    rst $38                                       ; $5c67: $ff
    db $fc                                        ; $5c68: $fc
    ei                                            ; $5c69: $fb
    db $fc                                        ; $5c6a: $fc
    rst $38                                       ; $5c6b: $ff
    ld [bc], a                                    ; $5c6c: $02
    dec c                                         ; $5c6d: $0d
    ld [bc], a                                    ; $5c6e: $02
    ld [de], a                                    ; $5c6f: $12
    ld [bc], a                                    ; $5c70: $02
    add hl, sp                                    ; $5c71: $39
    ld [bc], a                                    ; $5c72: $02
    jr z, jr_0dd_5c77                             ; $5c73: $28 $02

    dec [hl]                                      ; $5c75: $35
    ld [bc], a                                    ; $5c76: $02

jr_0dd_5c77:
    ld a, [hl-]                                   ; $5c77: $3a
    adc a                                         ; $5c78: $8f
    dec a                                         ; $5c79: $3d
    dec l                                         ; $5c7a: $2d
    rra                                           ; $5c7b: $1f
    rla                                           ; $5c7c: $17
    dec e                                         ; $5c7d: $1d
    rra                                           ; $5c7e: $1f
    ld [hl], b                                    ; $5c7f: $70
    ld a, a                                       ; $5c80: $7f
    ld e, h                                       ; $5c81: $5c
    ld a, a                                       ; $5c82: $7f
    rst $18                                       ; $5c83: $df
    rst $38                                       ; $5c84: $ff
    cp a                                          ; $5c85: $bf
    rst $38                                       ; $5c86: $ff
    rst $18                                       ; $5c87: $df
    ld [bc], a                                    ; $5c88: $02
    rst $38                                       ; $5c89: $ff
    add c                                         ; $5c8a: $81
    cp a                                          ; $5c8b: $bf
    ld [bc], a                                    ; $5c8c: $02
    ld a, a                                       ; $5c8d: $7f
    ld [bc], a                                    ; $5c8e: $02
    db $10                                        ; $5c8f: $10
    ld [bc], a                                    ; $5c90: $02
    ld [$0404], sp                                ; $5c91: $08 $04 $04
    ld [bc], a                                    ; $5c94: $02
    inc c                                         ; $5c95: $0c
    ld [bc], a                                    ; $5c96: $02
    inc e                                         ; $5c97: $1c
    ld [bc], a                                    ; $5c98: $02
    ld [$1804], sp                                ; $5c99: $08 $04 $18
    adc e                                         ; $5c9c: $8b
    inc c                                         ; $5c9d: $0c
    inc e                                         ; $5c9e: $1c
    ld a, [de]                                    ; $5c9f: $1a
    ld e, $1a                                     ; $5ca0: $1e $1a
    ld e, $1d                                     ; $5ca2: $1e $1d
    rra                                           ; $5ca4: $1f
    dec e                                         ; $5ca5: $1d
    rra                                           ; $5ca6: $1f
    add hl, de                                    ; $5ca7: $19
    inc bc                                        ; $5ca8: $03
    rra                                           ; $5ca9: $1f
    add c                                         ; $5caa: $81
    ld l, a                                       ; $5cab: $6f
    inc bc                                        ; $5cac: $03
    ld a, a                                       ; $5cad: $7f
    add [hl]                                      ; $5cae: $86
    ld c, a                                       ; $5caf: $4f
    ld a, a                                       ; $5cb0: $7f
    rst $30                                       ; $5cb1: $f7
    rst $38                                       ; $5cb2: $ff
    ei                                            ; $5cb3: $fb
    rst $38                                       ; $5cb4: $ff
    ld [bc], a                                    ; $5cb5: $02
    ccf                                           ; $5cb6: $3f
    inc d                                         ; $5cb7: $14
    nop                                           ; $5cb8: $00
    add h                                         ; $5cb9: $84
    rrca                                          ; $5cba: $0f
    add hl, bc                                    ; $5cbb: $09
    rrca                                          ; $5cbc: $0f
    dec c                                         ; $5cbd: $0d
    ld [bc], a                                    ; $5cbe: $02
    ld c, $02                                     ; $5cbf: $0e $02
    inc c                                         ; $5cc1: $0c
    add d                                         ; $5cc2: $82
    inc b                                         ; $5cc3: $04
    inc c                                         ; $5cc4: $0c
    ld [bc], a                                    ; $5cc5: $02
    ld [$0014], sp                                ; $5cc6: $08 $14 $00
    rst $38                                       ; $5cc9: $ff
    rlca                                          ; $5cca: $07
    ld bc, $07f8                                  ; $5ccb: $01 $f8 $07
    ld a, [c]                                     ; $5cce: $f2
    ld bc, $fced                                  ; $5ccf: $01 $ed $fc
    adc h                                         ; $5cd2: $8c
    nop                                           ; $5cd3: $00
    ld [hl], $00                                  ; $5cd4: $36 $00
    dec de                                        ; $5cd6: $1b
    nop                                           ; $5cd7: $00
    ld e, a                                       ; $5cd8: $5f
    nop                                           ; $5cd9: $00
    ld a, [hl+]                                   ; $5cda: $2a
    nop                                           ; $5cdb: $00
    inc d                                         ; $5cdc: $14
    nop                                           ; $5cdd: $00
    ld a, [bc]                                    ; $5cde: $0a
    inc d                                         ; $5cdf: $14
    nop                                           ; $5ce0: $00
    rst $38                                       ; $5ce1: $ff
    dec c                                         ; $5ce2: $0d
    inc b                                         ; $5ce3: $04
    ld hl, sp+$07                                 ; $5ce4: $f8 $07
    ld a, [c]                                     ; $5ce6: $f2
    ld bc, $faeb                                  ; $5ce7: $01 $eb $fa
    db $eb                                        ; $5cea: $eb
    rst $38                                       ; $5ceb: $ff
    ei                                            ; $5cec: $fb
    ld a, [$fffb]                                 ; $5ced: $fa $fb $ff
    ld [bc], a                                    ; $5cf0: $02
    dec c                                         ; $5cf1: $0d
    ld [bc], a                                    ; $5cf2: $02
    ld [de], a                                    ; $5cf3: $12
    ld [bc], a                                    ; $5cf4: $02
    jr z, jr_0dd_5cf9                             ; $5cf5: $28 $02

    ld [hl-], a                                   ; $5cf7: $32
    ld [bc], a                                    ; $5cf8: $02

jr_0dd_5cf9:
    ld a, [hl+]                                   ; $5cf9: $2a
    ld [bc], a                                    ; $5cfa: $02
    dec [hl]                                      ; $5cfb: $35
    ld [bc], a                                    ; $5cfc: $02
    ld a, [hl-]                                   ; $5cfd: $3a
    add d                                         ; $5cfe: $82
    rra                                           ; $5cff: $1f
    rla                                           ; $5d00: $17
    ld [bc], a                                    ; $5d01: $02
    rra                                           ; $5d02: $1f
    adc e                                         ; $5d03: $8b
    jr c, jr_0dd_5d45                             ; $5d04: $38 $3f

    ld d, a                                       ; $5d06: $57
    ld a, a                                       ; $5d07: $7f
    ld e, b                                       ; $5d08: $58
    ld a, a                                       ; $5d09: $7f
    ld e, h                                       ; $5d0a: $5c
    ld a, a                                       ; $5d0b: $7f
    sbc a                                         ; $5d0c: $9f
    rst $38                                       ; $5d0d: $ff
    cp a                                          ; $5d0e: $bf
    inc bc                                        ; $5d0f: $03
    rst $38                                       ; $5d10: $ff
    ld [bc], a                                    ; $5d11: $02
    db $10                                        ; $5d12: $10
    ld [bc], a                                    ; $5d13: $02
    ld [$1402], sp                                ; $5d14: $08 $02 $14
    ld [bc], a                                    ; $5d17: $02
    inc c                                         ; $5d18: $0c
    ld [bc], a                                    ; $5d19: $02
    inc d                                         ; $5d1a: $14
    ld [bc], a                                    ; $5d1b: $02
    inc c                                         ; $5d1c: $0c
    inc bc                                        ; $5d1d: $03
    jr @-$7d                                      ; $5d1e: $18 $81

    ld [$1802], sp                                ; $5d20: $08 $02 $18
    ld [bc], a                                    ; $5d23: $02
    inc e                                         ; $5d24: $1c
    adc c                                         ; $5d25: $89
    ld a, [bc]                                    ; $5d26: $0a
    ld e, $0a                                     ; $5d27: $1e $0a
    ld e, $1b                                     ; $5d29: $1e $1b
    rra                                           ; $5d2b: $1f
    dec e                                         ; $5d2c: $1d
    rra                                           ; $5d2d: $1f
    dec e                                         ; $5d2e: $1d
    inc bc                                        ; $5d2f: $03
    rra                                           ; $5d30: $1f
    add h                                         ; $5d31: $84
    rst $38                                       ; $5d32: $ff
    cp a                                          ; $5d33: $bf
    ld l, a                                       ; $5d34: $6f
    ld a, a                                       ; $5d35: $7f
    ld [bc], a                                    ; $5d36: $02
    ccf                                           ; $5d37: $3f
    add c                                         ; $5d38: $81
    cpl                                           ; $5d39: $2f
    inc bc                                        ; $5d3a: $03
    ccf                                           ; $5d3b: $3f
    ld [bc], a                                    ; $5d3c: $02
    rra                                           ; $5d3d: $1f
    ld [bc], a                                    ; $5d3e: $02
    inc bc                                        ; $5d3f: $03
    ld [de], a                                    ; $5d40: $12
    nop                                           ; $5d41: $00
    add d                                         ; $5d42: $82
    rra                                           ; $5d43: $1f
    dec e                                         ; $5d44: $1d

jr_0dd_5d45:
    ld [$821e], sp                                ; $5d45: $08 $1e $82
    ld b, $1e                                     ; $5d48: $06 $1e
    ld [bc], a                                    ; $5d4a: $02
    inc e                                         ; $5d4b: $1c
    ld [de], a                                    ; $5d4c: $12
    nop                                           ; $5d4d: $00
    rst $38                                       ; $5d4e: $ff
    rlca                                          ; $5d4f: $07
    ld bc, $07f8                                  ; $5d50: $01 $f8 $07
    ld a, [c]                                     ; $5d53: $f2
    ld bc, $fcec                                  ; $5d54: $01 $ec $fc
    adc h                                         ; $5d57: $8c
    nop                                           ; $5d58: $00
    ld [hl], $00                                  ; $5d59: $36 $00
    ld e, l                                       ; $5d5b: $5d
    nop                                           ; $5d5c: $00
    ld [hl], $00                                  ; $5d5d: $36 $00
    ld d, l                                       ; $5d5f: $55
    nop                                           ; $5d60: $00
    ld a, [hl+]                                   ; $5d61: $2a
    nop                                           ; $5d62: $00
    inc d                                         ; $5d63: $14
    inc d                                         ; $5d64: $14
    nop                                           ; $5d65: $00
    rst $38                                       ; $5d66: $ff
    dec c                                         ; $5d67: $0d
    inc b                                         ; $5d68: $04
    ld hl, sp+$07                                 ; $5d69: $f8 $07
    ld a, [c]                                     ; $5d6b: $f2
    ld bc, $faeb                                  ; $5d6c: $01 $eb $fa
    db $eb                                        ; $5d6f: $eb
    rst $38                                       ; $5d70: $ff
    ei                                            ; $5d71: $fb
    ld a, [$fffb]                                 ; $5d72: $fa $fb $ff
    ld [bc], a                                    ; $5d75: $02
    dec c                                         ; $5d76: $0d
    ld [bc], a                                    ; $5d77: $02
    ld [de], a                                    ; $5d78: $12
    ld [bc], a                                    ; $5d79: $02
    dec l                                         ; $5d7a: $2d
    adc h                                         ; $5d7b: $8c
    ccf                                           ; $5d7c: $3f
    ld [hl-], a                                   ; $5d7d: $32
    ccf                                           ; $5d7e: $3f
    dec a                                         ; $5d7f: $3d
    ccf                                           ; $5d80: $3f
    inc h                                         ; $5d81: $24
    ccf                                           ; $5d82: $3f
    ld [hl-], a                                   ; $5d83: $32
    rra                                           ; $5d84: $1f
    inc de                                        ; $5d85: $13
    rra                                           ; $5d86: $1f
    jr jr_0dd_5d8b                                ; $5d87: $18 $02

    ccf                                           ; $5d89: $3f
    adc h                                         ; $5d8a: $8c

jr_0dd_5d8b:
    ld e, d                                       ; $5d8b: $5a
    ld a, a                                       ; $5d8c: $7f
    ld e, l                                       ; $5d8d: $5d
    ld a, a                                       ; $5d8e: $7f
    ld e, d                                       ; $5d8f: $5a
    ld a, a                                       ; $5d90: $7f
    cp l                                          ; $5d91: $bd
    rst $38                                       ; $5d92: $ff
    db $dd                                        ; $5d93: $dd
    rst $38                                       ; $5d94: $ff
    db $fd                                        ; $5d95: $fd
    cp a                                          ; $5d96: $bf
    ld [bc], a                                    ; $5d97: $02
    db $10                                        ; $5d98: $10
    ld [bc], a                                    ; $5d99: $02
    ld [$1402], sp                                ; $5d9a: $08 $02 $14
    add d                                         ; $5d9d: $82
    inc e                                         ; $5d9e: $1c
    inc c                                         ; $5d9f: $0c
    inc bc                                        ; $5da0: $03
    inc e                                         ; $5da1: $1c
    add l                                         ; $5da2: $85
    inc b                                         ; $5da3: $04
    inc e                                         ; $5da4: $1c
    inc c                                         ; $5da5: $0c
    jr jr_0dd_5db0                                ; $5da6: $18 $08

    ld [bc], a                                    ; $5da8: $02
    jr jr_0dd_5dad                                ; $5da9: $18 $02

    inc e                                         ; $5dab: $1c
    adc c                                         ; $5dac: $89

jr_0dd_5dad:
    ld a, [de]                                    ; $5dad: $1a
    ld e, $1a                                     ; $5dae: $1e $1a

jr_0dd_5db0:
    ld e, $1a                                     ; $5db0: $1e $1a
    ld e, $1d                                     ; $5db2: $1e $1d
    rra                                           ; $5db4: $1f
    dec de                                        ; $5db5: $1b
    ld [bc], a                                    ; $5db6: $02
    rra                                           ; $5db7: $1f
    adc b                                         ; $5db8: $88
    dec e                                         ; $5db9: $1d
    ld a, [$7a9f]                                 ; $5dba: $fa $9f $7a
    ld l, a                                       ; $5dbd: $6f
    ld a, [hl-]                                   ; $5dbe: $3a
    ccf                                           ; $5dbf: $3f
    ld [hl], a                                    ; $5dc0: $77
    inc bc                                        ; $5dc1: $03
    ld a, a                                       ; $5dc2: $7f
    add d                                         ; $5dc3: $82
    daa                                           ; $5dc4: $27
    ccf                                           ; $5dc5: $3f
    ld [bc], a                                    ; $5dc6: $02
    jr c, jr_0dd_5ddb                             ; $5dc7: $38 $12

    nop                                           ; $5dc9: $00
    add d                                         ; $5dca: $82
    rra                                           ; $5dcb: $1f
    dec e                                         ; $5dcc: $1d
    ld [bc], a                                    ; $5dcd: $02
    ld e, $02                                     ; $5dce: $1e $02
    inc e                                         ; $5dd0: $1c
    add c                                         ; $5dd1: $81
    ld c, $03                                     ; $5dd2: $0e $03
    ld e, $81                                     ; $5dd4: $1e $81
    inc b                                         ; $5dd6: $04
    inc bc                                        ; $5dd7: $03
    inc e                                         ; $5dd8: $1c
    ld [de], a                                    ; $5dd9: $12
    nop                                           ; $5dda: $00

jr_0dd_5ddb:
    rst $38                                       ; $5ddb: $ff
    rlca                                          ; $5ddc: $07
    ld bc, $07f8                                  ; $5ddd: $01 $f8 $07
    ld a, [c]                                     ; $5de0: $f2
    ld bc, $fcec                                  ; $5de1: $01 $ec $fc
    add h                                         ; $5de4: $84
    nop                                           ; $5de5: $00
    ld [hl], $00                                  ; $5de6: $36 $00
    ld c, c                                       ; $5de8: $49
    inc e                                         ; $5de9: $1c
    nop                                           ; $5dea: $00
    rst $38                                       ; $5deb: $ff
    dec c                                         ; $5dec: $0d
    inc b                                         ; $5ded: $04
    ld hl, sp+$07                                 ; $5dee: $f8 $07
    ld a, [c]                                     ; $5df0: $f2
    ld bc, $faeb                                  ; $5df1: $01 $eb $fa
    db $eb                                        ; $5df4: $eb
    rst $38                                       ; $5df5: $ff
    ei                                            ; $5df6: $fb
    ei                                            ; $5df7: $fb
    ei                                            ; $5df8: $fb
    cp $02                                        ; $5df9: $fe $02
    dec c                                         ; $5dfb: $0d
    ld [bc], a                                    ; $5dfc: $02
    ld [de], a                                    ; $5dfd: $12
    ld [bc], a                                    ; $5dfe: $02
    dec hl                                        ; $5dff: $2b
    adc h                                         ; $5e00: $8c
    ccf                                           ; $5e01: $3f
    inc [hl]                                      ; $5e02: $34
    ccf                                           ; $5e03: $3f
    dec a                                         ; $5e04: $3d
    ccf                                           ; $5e05: $3f
    jr z, jr_0dd_5e47                             ; $5e06: $28 $3f

    inc [hl]                                      ; $5e08: $34
    rra                                           ; $5e09: $1f
    ld d, $1f                                     ; $5e0a: $16 $1f
    jr jr_0dd_5e10                                ; $5e0c: $18 $02

    ccf                                           ; $5e0e: $3f
    adc h                                         ; $5e0f: $8c

jr_0dd_5e10:
    ld e, d                                       ; $5e10: $5a
    ld a, a                                       ; $5e11: $7f
    ld e, l                                       ; $5e12: $5d
    ld a, a                                       ; $5e13: $7f
    cp d                                          ; $5e14: $ba
    rst $38                                       ; $5e15: $ff
    sbc l                                         ; $5e16: $9d
    rst $38                                       ; $5e17: $ff
    cp l                                          ; $5e18: $bd
    rst $38                                       ; $5e19: $ff
    ld a, a                                       ; $5e1a: $7f
    ld d, e                                       ; $5e1b: $53
    ld [bc], a                                    ; $5e1c: $02
    db $10                                        ; $5e1d: $10
    ld [bc], a                                    ; $5e1e: $02
    ld [$1402], sp                                ; $5e1f: $08 $02 $14
    adc d                                         ; $5e22: $8a
    inc e                                         ; $5e23: $1c
    inc c                                         ; $5e24: $0c
    inc e                                         ; $5e25: $1c
    inc d                                         ; $5e26: $14
    inc e                                         ; $5e27: $1c
    inc c                                         ; $5e28: $0c
    inc e                                         ; $5e29: $1c
    inc c                                         ; $5e2a: $0c
    jr jr_0dd_5e35                                ; $5e2b: $18 $08

    ld [bc], a                                    ; $5e2d: $02
    jr jr_0dd_5e32                                ; $5e2e: $18 $02

    inc e                                         ; $5e30: $1c
    add l                                         ; $5e31: $85

jr_0dd_5e32:
    ld a, [de]                                    ; $5e32: $1a
    ld e, $1a                                     ; $5e33: $1e $1a

jr_0dd_5e35:
    ld e, $1d                                     ; $5e35: $1e $1d
    inc b                                         ; $5e37: $04
    rra                                           ; $5e38: $1f
    add c                                         ; $5e39: $81
    dec e                                         ; $5e3a: $1d
    ld [bc], a                                    ; $5e3b: $02
    ld e, $8a                                     ; $5e3c: $1e $8a
    ld sp, hl                                     ; $5e3e: $f9
    cp a                                          ; $5e3f: $bf
    halt                                          ; $5e40: $76
    ld a, a                                       ; $5e41: $7f
    rst $30                                       ; $5e42: $f7
    rst $38                                       ; $5e43: $ff
    rst $30                                       ; $5e44: $f7
    rst $38                                       ; $5e45: $ff
    ld e, [hl]                                    ; $5e46: $5e

jr_0dd_5e47:
    ld a, a                                       ; $5e47: $7f
    ld [bc], a                                    ; $5e48: $02
    dec sp                                        ; $5e49: $3b
    ld [bc], a                                    ; $5e4a: $02
    inc bc                                        ; $5e4b: $03
    ld [de], a                                    ; $5e4c: $12
    nop                                           ; $5e4d: $00
    inc b                                         ; $5e4e: $04
    ld b, $82                                     ; $5e4f: $06 $82
    ld [bc], a                                    ; $5e51: $02
    ld b, $02                                     ; $5e52: $06 $02
    rlca                                          ; $5e54: $07
    add c                                         ; $5e55: $81
    ld [bc], a                                    ; $5e56: $02
    inc bc                                        ; $5e57: $03
    ld b, $02                                     ; $5e58: $06 $02
    inc b                                         ; $5e5a: $04
    ld [de], a                                    ; $5e5b: $12
    nop                                           ; $5e5c: $00
    rst $38                                       ; $5e5d: $ff
    rlca                                          ; $5e5e: $07
    ld bc, $07f8                                  ; $5e5f: $01 $f8 $07
    ld a, [c]                                     ; $5e62: $f2
    ld bc, $fcec                                  ; $5e63: $01 $ec $fc
    add h                                         ; $5e66: $84
    nop                                           ; $5e67: $00
    ld [hl], $00                                  ; $5e68: $36 $00
    ld d, c                                       ; $5e6a: $51
    inc e                                         ; $5e6b: $1c
    nop                                           ; $5e6c: $00
    rst $38                                       ; $5e6d: $ff
    dec c                                         ; $5e6e: $0d
    inc b                                         ; $5e6f: $04
    ld hl, sp+$07                                 ; $5e70: $f8 $07
    ld a, [c]                                     ; $5e72: $f2
    ld bc, $faec                                  ; $5e73: $01 $ec $fa
    db $ec                                        ; $5e76: $ec
    rst $38                                       ; $5e77: $ff
    db $fc                                        ; $5e78: $fc
    ei                                            ; $5e79: $fb
    db $fc                                        ; $5e7a: $fc
    db $fd                                        ; $5e7b: $fd
    ld [bc], a                                    ; $5e7c: $02
    dec c                                         ; $5e7d: $0d
    ld [bc], a                                    ; $5e7e: $02
    ld d, $02                                     ; $5e7f: $16 $02
    dec hl                                        ; $5e81: $2b
    adc h                                         ; $5e82: $8c
    ccf                                           ; $5e83: $3f
    inc [hl]                                      ; $5e84: $34
    ccf                                           ; $5e85: $3f
    dec a                                         ; $5e86: $3d
    ccf                                           ; $5e87: $3f
    jr z, jr_0dd_5ec9                             ; $5e88: $28 $3f

    inc [hl]                                      ; $5e8a: $34
    rra                                           ; $5e8b: $1f
    ld d, $1f                                     ; $5e8c: $16 $1f
    jr jr_0dd_5e92                                ; $5e8e: $18 $02

    ccf                                           ; $5e90: $3f
    adc h                                         ; $5e91: $8c

jr_0dd_5e92:
    ld e, d                                       ; $5e92: $5a
    ld a, a                                       ; $5e93: $7f
    ld e, l                                       ; $5e94: $5d
    ld a, a                                       ; $5e95: $7f
    ld e, d                                       ; $5e96: $5a
    ld a, a                                       ; $5e97: $7f
    cp l                                          ; $5e98: $bd
    rst $38                                       ; $5e99: $ff
    sbc l                                         ; $5e9a: $9d
    rst $38                                       ; $5e9b: $ff
    db $fd                                        ; $5e9c: $fd
    sbc a                                         ; $5e9d: $9f
    ld [bc], a                                    ; $5e9e: $02
    db $10                                        ; $5e9f: $10
    ld [bc], a                                    ; $5ea0: $02
    ld [$0402], sp                                ; $5ea1: $08 $02 $04
    inc bc                                        ; $5ea4: $03
    inc e                                         ; $5ea5: $1c
    add l                                         ; $5ea6: $85
    inc d                                         ; $5ea7: $14
    inc e                                         ; $5ea8: $1c
    inc c                                         ; $5ea9: $0c
    inc e                                         ; $5eaa: $1c
    inc c                                         ; $5eab: $0c
    inc b                                         ; $5eac: $04
    jr jr_0dd_5eb1                                ; $5ead: $18 $02

    inc e                                         ; $5eaf: $1c
    add a                                         ; $5eb0: $87

jr_0dd_5eb1:
    ld a, [de]                                    ; $5eb1: $1a
    ld e, $1a                                     ; $5eb2: $1e $1a
    ld e, $1d                                     ; $5eb4: $1e $1d
    rra                                           ; $5eb6: $1f
    dec e                                         ; $5eb7: $1d
    ld [bc], a                                    ; $5eb8: $02
    rra                                           ; $5eb9: $1f
    add c                                         ; $5eba: $81
    dec e                                         ; $5ebb: $1d
    ld [bc], a                                    ; $5ebc: $02
    ld e, $86                                     ; $5ebd: $1e $86
    db $fd                                        ; $5ebf: $fd
    rst $08                                       ; $5ec0: $cf
    ld [hl], l                                    ; $5ec1: $75
    ld a, a                                       ; $5ec2: $7f
    ld a, [hl]                                    ; $5ec3: $7e
    ld a, a                                       ; $5ec4: $7f
    ld [bc], a                                    ; $5ec5: $02
    ccf                                           ; $5ec6: $3f
    add d                                         ; $5ec7: $82
    ld a, [de]                                    ; $5ec8: $1a

jr_0dd_5ec9:
    dec de                                        ; $5ec9: $1b
    ld [bc], a                                    ; $5eca: $02
    inc bc                                        ; $5ecb: $03
    inc d                                         ; $5ecc: $14
    nop                                           ; $5ecd: $00
    ld [$8103], sp                                ; $5ece: $08 $03 $81
    ld bc, $0303                                  ; $5ed1: $01 $03 $03
    inc d                                         ; $5ed4: $14
    nop                                           ; $5ed5: $00
    rst $38                                       ; $5ed6: $ff
    rlca                                          ; $5ed7: $07
    ld bc, $07f8                                  ; $5ed8: $01 $f8 $07
    ld a, [c]                                     ; $5edb: $f2
    ld bc, $fced                                  ; $5edc: $01 $ed $fc
    add h                                         ; $5edf: $84
    nop                                           ; $5ee0: $00
    ld h, $00                                     ; $5ee1: $26 $00
    ld d, e                                       ; $5ee3: $53
    inc e                                         ; $5ee4: $1c
    nop                                           ; $5ee5: $00
    rst $38                                       ; $5ee6: $ff
    dec c                                         ; $5ee7: $0d
    inc b                                         ; $5ee8: $04
    ld hl, sp+$07                                 ; $5ee9: $f8 $07
    ld a, [c]                                     ; $5eeb: $f2
    ld bc, $faeb                                  ; $5eec: $01 $eb $fa
    db $eb                                        ; $5eef: $eb
    rst $38                                       ; $5ef0: $ff
    ei                                            ; $5ef1: $fb
    ld a, [$fffb]                                 ; $5ef2: $fa $fb $ff
    ld [bc], a                                    ; $5ef5: $02
    dec c                                         ; $5ef6: $0d
    ld [bc], a                                    ; $5ef7: $02
    ld [de], a                                    ; $5ef8: $12
    ld [bc], a                                    ; $5ef9: $02
    dec l                                         ; $5efa: $2d
    adc h                                         ; $5efb: $8c
    ccf                                           ; $5efc: $3f
    ld [hl-], a                                   ; $5efd: $32
    ccf                                           ; $5efe: $3f
    dec a                                         ; $5eff: $3d
    ccf                                           ; $5f00: $3f
    inc h                                         ; $5f01: $24
    ccf                                           ; $5f02: $3f
    ld [hl], $1f                                  ; $5f03: $36 $1f
    inc de                                        ; $5f05: $13
    rra                                           ; $5f06: $1f
    jr jr_0dd_5f0b                                ; $5f07: $18 $02

    ccf                                           ; $5f09: $3f
    adc h                                         ; $5f0a: $8c

jr_0dd_5f0b:
    ld e, d                                       ; $5f0b: $5a
    ld a, a                                       ; $5f0c: $7f
    ld e, l                                       ; $5f0d: $5d
    ld a, a                                       ; $5f0e: $7f
    ld e, d                                       ; $5f0f: $5a
    ld a, a                                       ; $5f10: $7f
    cp l                                          ; $5f11: $bd
    rst $38                                       ; $5f12: $ff
    db $dd                                        ; $5f13: $dd
    rst $38                                       ; $5f14: $ff
    db $fd                                        ; $5f15: $fd
    cp a                                          ; $5f16: $bf
    ld [bc], a                                    ; $5f17: $02
    db $10                                        ; $5f18: $10
    ld [bc], a                                    ; $5f19: $02
    ld [$1402], sp                                ; $5f1a: $08 $02 $14
    add d                                         ; $5f1d: $82
    inc e                                         ; $5f1e: $1c
    inc c                                         ; $5f1f: $0c
    inc bc                                        ; $5f20: $03
    inc e                                         ; $5f21: $1c
    add l                                         ; $5f22: $85
    inc b                                         ; $5f23: $04
    inc e                                         ; $5f24: $1c
    inc c                                         ; $5f25: $0c
    jr jr_0dd_5f30                                ; $5f26: $18 $08

    ld [bc], a                                    ; $5f28: $02
    jr jr_0dd_5f2d                                ; $5f29: $18 $02

    inc e                                         ; $5f2b: $1c
    adc c                                         ; $5f2c: $89

jr_0dd_5f2d:
    ld a, [de]                                    ; $5f2d: $1a
    ld e, $1a                                     ; $5f2e: $1e $1a

jr_0dd_5f30:
    ld e, $1a                                     ; $5f30: $1e $1a
    ld e, $1d                                     ; $5f32: $1e $1d
    rra                                           ; $5f34: $1f
    dec de                                        ; $5f35: $1b
    ld [bc], a                                    ; $5f36: $02
    rra                                           ; $5f37: $1f
    add [hl]                                      ; $5f38: $86
    dec e                                         ; $5f39: $1d
    ei                                            ; $5f3a: $fb
    cp a                                          ; $5f3b: $bf
    halt                                          ; $5f3c: $76
    ld e, a                                       ; $5f3d: $5f
    ld a, [hl]                                    ; $5f3e: $7e
    inc bc                                        ; $5f3f: $03
    ld a, a                                       ; $5f40: $7f
    add d                                         ; $5f41: $82
    dec [hl]                                      ; $5f42: $35
    dec a                                         ; $5f43: $3d
    ld [bc], a                                    ; $5f44: $02
    add hl, de                                    ; $5f45: $19
    inc d                                         ; $5f46: $14
    nop                                           ; $5f47: $00
    add d                                         ; $5f48: $82
    rra                                           ; $5f49: $1f
    dec e                                         ; $5f4a: $1d
    ld [bc], a                                    ; $5f4b: $02
    ld e, $02                                     ; $5f4c: $1e $02
    inc e                                         ; $5f4e: $1c
    add e                                         ; $5f4f: $83
    ld c, $1e                                     ; $5f50: $0e $1e
    inc b                                         ; $5f52: $04
    inc bc                                        ; $5f53: $03
    inc e                                         ; $5f54: $1c
    inc d                                         ; $5f55: $14
    nop                                           ; $5f56: $00
    rst $38                                       ; $5f57: $ff
    rlca                                          ; $5f58: $07
    ld bc, $07f8                                  ; $5f59: $01 $f8 $07
    ld a, [c]                                     ; $5f5c: $f2
    ld bc, $fcec                                  ; $5f5d: $01 $ec $fc
    add h                                         ; $5f60: $84
    nop                                           ; $5f61: $00
    ld [hl], $00                                  ; $5f62: $36 $00
    ld c, c                                       ; $5f64: $49
    inc e                                         ; $5f65: $1c
    nop                                           ; $5f66: $00
    rst $38                                       ; $5f67: $ff
    dec c                                         ; $5f68: $0d
    inc b                                         ; $5f69: $04
    ld hl, sp+$07                                 ; $5f6a: $f8 $07
    ld a, [c]                                     ; $5f6c: $f2
    ld bc, $faeb                                  ; $5f6d: $01 $eb $fa
    db $eb                                        ; $5f70: $eb
    rst $38                                       ; $5f71: $ff
    ei                                            ; $5f72: $fb
    ei                                            ; $5f73: $fb
    ei                                            ; $5f74: $fb
    cp $02                                        ; $5f75: $fe $02
    dec c                                         ; $5f77: $0d
    ld [bc], a                                    ; $5f78: $02
    ld [de], a                                    ; $5f79: $12
    ld [bc], a                                    ; $5f7a: $02
    ld l, $8c                                     ; $5f7b: $2e $8c
    ccf                                           ; $5f7d: $3f
    ld sp, $2e3f                                  ; $5f7e: $31 $3f $2e
    ccf                                           ; $5f81: $3f
    ld [hl-], a                                   ; $5f82: $32
    ccf                                           ; $5f83: $3f
    ld sp, $131f                                  ; $5f84: $31 $1f $13
    rra                                           ; $5f87: $1f
    jr jr_0dd_5f8c                                ; $5f88: $18 $02

    ccf                                           ; $5f8a: $3f
    adc h                                         ; $5f8b: $8c

jr_0dd_5f8c:
    ld e, d                                       ; $5f8c: $5a
    ld a, a                                       ; $5f8d: $7f
    ld e, l                                       ; $5f8e: $5d
    ld a, a                                       ; $5f8f: $7f
    cp d                                          ; $5f90: $ba
    rst $38                                       ; $5f91: $ff
    db $fd                                        ; $5f92: $fd
    rst $38                                       ; $5f93: $ff
    db $fd                                        ; $5f94: $fd
    cp a                                          ; $5f95: $bf
    db $fd                                        ; $5f96: $fd
    cp a                                          ; $5f97: $bf
    ld [bc], a                                    ; $5f98: $02
    db $10                                        ; $5f99: $10
    ld [bc], a                                    ; $5f9a: $02
    ld [$1402], sp                                ; $5f9b: $08 $02 $14
    add d                                         ; $5f9e: $82
    inc e                                         ; $5f9f: $1c
    inc c                                         ; $5fa0: $0c
    inc bc                                        ; $5fa1: $03
    inc e                                         ; $5fa2: $1c
    add l                                         ; $5fa3: $85
    inc b                                         ; $5fa4: $04
    inc e                                         ; $5fa5: $1c
    inc c                                         ; $5fa6: $0c
    jr jr_0dd_5fb1                                ; $5fa7: $18 $08

    ld [bc], a                                    ; $5fa9: $02
    jr jr_0dd_5fae                                ; $5faa: $18 $02

    inc e                                         ; $5fac: $1c
    sub [hl]                                      ; $5fad: $96

jr_0dd_5fae:
    ld a, [de]                                    ; $5fae: $1a
    ld e, $1a                                     ; $5faf: $1e $1a

jr_0dd_5fb1:
    ld e, $1d                                     ; $5fb1: $1e $1d
    rra                                           ; $5fb3: $1f
    add hl, de                                    ; $5fb4: $19
    rra                                           ; $5fb5: $1f
    dec e                                         ; $5fb6: $1d
    rra                                           ; $5fb7: $1f
    ld e, $12                                     ; $5fb8: $1e $12
    di                                            ; $5fba: $f3
    rst $38                                       ; $5fbb: $ff
    ld l, l                                       ; $5fbc: $6d
    ld a, a                                       ; $5fbd: $7f
    ld e, l                                       ; $5fbe: $5d
    ld a, a                                       ; $5fbf: $7f
    db $fd                                        ; $5fc0: $fd
    rst $38                                       ; $5fc1: $ff
    ld c, a                                       ; $5fc2: $4f
    ld a, a                                       ; $5fc3: $7f
    ld [bc], a                                    ; $5fc4: $02
    ld a, e                                       ; $5fc5: $7b
    ld [bc], a                                    ; $5fc6: $02
    jr c, @+$14                                   ; $5fc7: $38 $12

    nop                                           ; $5fc9: $00
    add d                                         ; $5fca: $82
    rlca                                          ; $5fcb: $07
    dec b                                         ; $5fcc: $05
    ld [bc], a                                    ; $5fcd: $02
    ld b, $04                                     ; $5fce: $06 $04
    rlca                                          ; $5fd0: $07
    add d                                         ; $5fd1: $82
    ld [bc], a                                    ; $5fd2: $02
    ld b, $02                                     ; $5fd3: $06 $02
    inc b                                         ; $5fd5: $04
    inc d                                         ; $5fd6: $14
    nop                                           ; $5fd7: $00
    rst $38                                       ; $5fd8: $ff
    rlca                                          ; $5fd9: $07
    ld bc, $07f8                                  ; $5fda: $01 $f8 $07
    ld a, [c]                                     ; $5fdd: $f2
    ld bc, $fcec                                  ; $5fde: $01 $ec $fc
    add h                                         ; $5fe1: $84
    nop                                           ; $5fe2: $00
    ld [hl], $00                                  ; $5fe3: $36 $00
    ld b, l                                       ; $5fe5: $45
    inc e                                         ; $5fe6: $1c
    nop                                           ; $5fe7: $00
    rst $38                                       ; $5fe8: $ff
    dec c                                         ; $5fe9: $0d
    inc b                                         ; $5fea: $04
    ld hl, sp+$07                                 ; $5feb: $f8 $07
    ld a, [c]                                     ; $5fed: $f2
    ld bc, $faec                                  ; $5fee: $01 $ec $fa
    db $ec                                        ; $5ff1: $ec
    rst $38                                       ; $5ff2: $ff
    db $fc                                        ; $5ff3: $fc
    db $fc                                        ; $5ff4: $fc
    db $fc                                        ; $5ff5: $fc
    cp $02                                        ; $5ff6: $fe $02
    dec c                                         ; $5ff8: $0d
    ld [bc], a                                    ; $5ff9: $02
    inc de                                        ; $5ffa: $13
    ld [bc], a                                    ; $5ffb: $02
    ld h, $8c                                     ; $5ffc: $26 $8c
    ccf                                           ; $5ffe: $3f
    add hl, sp                                    ; $5fff: $39
    ccf                                           ; $6000: $3f
    ld l, $3f                                     ; $6001: $2e $3f
    ld [hl-], a                                   ; $6003: $32
    ccf                                           ; $6004: $3f
    ld sp, $1b1f                                  ; $6005: $31 $1f $1b
    rra                                           ; $6008: $1f
    jr jr_0dd_600d                                ; $6009: $18 $02

    ccf                                           ; $600b: $3f
    adc h                                         ; $600c: $8c

jr_0dd_600d:
    ld e, d                                       ; $600d: $5a
    ld a, a                                       ; $600e: $7f
    ld e, l                                       ; $600f: $5d
    ld a, a                                       ; $6010: $7f
    cp d                                          ; $6011: $ba
    rst $38                                       ; $6012: $ff
    cp l                                          ; $6013: $bd
    rst $38                                       ; $6014: $ff
    db $fd                                        ; $6015: $fd
    cp a                                          ; $6016: $bf
    ld a, l                                       ; $6017: $7d
    ld a, a                                       ; $6018: $7f
    ld [bc], a                                    ; $6019: $02
    db $10                                        ; $601a: $10
    ld [bc], a                                    ; $601b: $02
    ld [$1402], sp                                ; $601c: $08 $02 $14
    add d                                         ; $601f: $82
    inc e                                         ; $6020: $1c
    inc c                                         ; $6021: $0c
    inc bc                                        ; $6022: $03
    inc e                                         ; $6023: $1c
    add l                                         ; $6024: $85
    inc b                                         ; $6025: $04
    inc e                                         ; $6026: $1c
    inc c                                         ; $6027: $0c
    jr jr_0dd_6032                                ; $6028: $18 $08

    ld [bc], a                                    ; $602a: $02
    jr jr_0dd_602f                                ; $602b: $18 $02

    inc e                                         ; $602d: $1c
    adc c                                         ; $602e: $89

jr_0dd_602f:
    ld a, [de]                                    ; $602f: $1a
    ld e, $1a                                     ; $6030: $1e $1a

jr_0dd_6032:
    ld e, $1a                                     ; $6032: $1e $1a
    ld e, $1d                                     ; $6034: $1e $1d
    rra                                           ; $6036: $1f
    add hl, de                                    ; $6037: $19
    ld [bc], a                                    ; $6038: $02
    rra                                           ; $6039: $1f
    add [hl]                                      ; $603a: $86
    add hl, de                                    ; $603b: $19
    db $eb                                        ; $603c: $eb
    rst $38                                       ; $603d: $ff
    db $eb                                        ; $603e: $eb
    rst $38                                       ; $603f: $ff
    rst $18                                       ; $6040: $df
    inc bc                                        ; $6041: $03
    rst $38                                       ; $6042: $ff
    add d                                         ; $6043: $82
    sub [hl]                                      ; $6044: $96
    or $02                                        ; $6045: $f6 $02
    ldh a, [rNR14]                                ; $6047: $f0 $14
    nop                                           ; $6049: $00
    add d                                         ; $604a: $82
    inc bc                                        ; $604b: $03
    ld bc, $0204                                  ; $604c: $01 $04 $02
    ld a, [de]                                    ; $604f: $1a
    nop                                           ; $6050: $00
    rst $38                                       ; $6051: $ff
    rlca                                          ; $6052: $07
    ld bc, $07f8                                  ; $6053: $01 $f8 $07
    ld a, [c]                                     ; $6056: $f2
    ld bc, $fced                                  ; $6057: $01 $ed $fc
    add h                                         ; $605a: $84
    nop                                           ; $605b: $00
    ld [hl-], a                                   ; $605c: $32
    nop                                           ; $605d: $00
    ld h, l                                       ; $605e: $65
    inc e                                         ; $605f: $1c
    nop                                           ; $6060: $00
    rst $38                                       ; $6061: $ff
    dec c                                         ; $6062: $0d
    inc b                                         ; $6063: $04
    ld hl, sp+$07                                 ; $6064: $f8 $07
    ld a, [c]                                     ; $6066: $f2
    ld bc, $faeb                                  ; $6067: $01 $eb $fa
    db $eb                                        ; $606a: $eb
    rst $38                                       ; $606b: $ff
    ei                                            ; $606c: $fb
    ld a, [$fffb]                                 ; $606d: $fa $fb $ff
    ld [bc], a                                    ; $6070: $02
    dec c                                         ; $6071: $0d
    ld [bc], a                                    ; $6072: $02
    ld [de], a                                    ; $6073: $12
    ld [bc], a                                    ; $6074: $02
    dec l                                         ; $6075: $2d
    adc h                                         ; $6076: $8c
    ccf                                           ; $6077: $3f
    ld [hl-], a                                   ; $6078: $32
    ccf                                           ; $6079: $3f
    dec a                                         ; $607a: $3d
    ccf                                           ; $607b: $3f
    inc h                                         ; $607c: $24
    ccf                                           ; $607d: $3f
    ld [hl], $1f                                  ; $607e: $36 $1f
    inc de                                        ; $6080: $13
    rra                                           ; $6081: $1f
    jr jr_0dd_6086                                ; $6082: $18 $02

    ccf                                           ; $6084: $3f
    adc h                                         ; $6085: $8c

jr_0dd_6086:
    ld e, d                                       ; $6086: $5a
    ld a, a                                       ; $6087: $7f
    ld e, l                                       ; $6088: $5d
    ld a, a                                       ; $6089: $7f
    ld e, d                                       ; $608a: $5a
    ld a, a                                       ; $608b: $7f
    cp l                                          ; $608c: $bd
    rst $38                                       ; $608d: $ff
    db $dd                                        ; $608e: $dd
    rst $38                                       ; $608f: $ff
    db $fd                                        ; $6090: $fd
    cp a                                          ; $6091: $bf
    ld [bc], a                                    ; $6092: $02
    db $10                                        ; $6093: $10
    ld [bc], a                                    ; $6094: $02
    ld [$1402], sp                                ; $6095: $08 $02 $14
    add d                                         ; $6098: $82
    inc e                                         ; $6099: $1c
    inc c                                         ; $609a: $0c
    inc bc                                        ; $609b: $03
    inc e                                         ; $609c: $1c
    add l                                         ; $609d: $85
    inc b                                         ; $609e: $04
    inc e                                         ; $609f: $1c
    inc c                                         ; $60a0: $0c
    jr jr_0dd_60ab                                ; $60a1: $18 $08

    ld [bc], a                                    ; $60a3: $02
    jr jr_0dd_60a8                                ; $60a4: $18 $02

    inc e                                         ; $60a6: $1c
    adc c                                         ; $60a7: $89

jr_0dd_60a8:
    ld a, [de]                                    ; $60a8: $1a
    ld e, $1a                                     ; $60a9: $1e $1a

jr_0dd_60ab:
    ld e, $1a                                     ; $60ab: $1e $1a
    ld e, $1d                                     ; $60ad: $1e $1d
    rra                                           ; $60af: $1f

jr_0dd_60b0:
    dec de                                        ; $60b0: $1b
    ld [bc], a                                    ; $60b1: $02
    rra                                           ; $60b2: $1f
    adc e                                         ; $60b3: $8b
    dec e                                         ; $60b4: $1d
    cp $bf                                        ; $60b5: $fe $bf
    ld a, e                                       ; $60b7: $7b
    ld e, a                                       ; $60b8: $5f
    dec sp                                        ; $60b9: $3b
    ccf                                           ; $60ba: $3f
    ld [hl], a                                    ; $60bb: $77
    ld a, a                                       ; $60bc: $7f
    dec h                                         ; $60bd: $25
    dec a                                         ; $60be: $3d
    ld [bc], a                                    ; $60bf: $02
    inc a                                         ; $60c0: $3c
    inc d                                         ; $60c1: $14
    nop                                           ; $60c2: $00
    add e                                         ; $60c3: $83
    rra                                           ; $60c4: $1f
    dec e                                         ; $60c5: $1d
    ld c, $05                                     ; $60c6: $0e $05
    ld e, $82                                     ; $60c8: $1e $82
    inc c                                         ; $60ca: $0c
    inc e                                         ; $60cb: $1c
    ld [bc], a                                    ; $60cc: $02
    jr jr_0dd_60e3                                ; $60cd: $18 $14

    nop                                           ; $60cf: $00
    rst $38                                       ; $60d0: $ff
    rlca                                          ; $60d1: $07
    ld bc, $07f8                                  ; $60d2: $01 $f8 $07
    ld a, [c]                                     ; $60d5: $f2
    ld bc, $fcec                                  ; $60d6: $01 $ec $fc
    add h                                         ; $60d9: $84
    nop                                           ; $60da: $00
    ld [hl], $00                                  ; $60db: $36 $00
    ld c, c                                       ; $60dd: $49
    inc e                                         ; $60de: $1c
    nop                                           ; $60df: $00
    rst $38                                       ; $60e0: $ff
    dec c                                         ; $60e1: $0d
    inc b                                         ; $60e2: $04

jr_0dd_60e3:
    ld hl, sp+$07                                 ; $60e3: $f8 $07
    ld a, [c]                                     ; $60e5: $f2
    ld bc, $fbeb                                  ; $60e6: $01 $eb $fb
    db $ec                                        ; $60e9: $ec
    db $fd                                        ; $60ea: $fd
    ei                                            ; $60eb: $fb
    ld a, [$fcfb]                                 ; $60ec: $fa $fb $fc
    ld [bc], a                                    ; $60ef: $02
    ccf                                           ; $60f0: $3f
    ld [bc], a                                    ; $60f1: $02
    ld b, [hl]                                    ; $60f2: $46
    ld [bc], a                                    ; $60f3: $02
    sub e                                         ; $60f4: $93
    adc h                                         ; $60f5: $8c
    xor a                                         ; $60f6: $af
    xor l                                         ; $60f7: $ad
    rst $18                                       ; $60f8: $df
    sub $7f                                       ; $60f9: $d6 $7f
    ld [hl], b                                    ; $60fb: $70
    ld a, a                                       ; $60fc: $7f
    ld d, b                                       ; $60fd: $50
    ccf                                           ; $60fe: $3f
    ld sp, $383f                                  ; $60ff: $31 $3f $38
    ld [bc], a                                    ; $6102: $02
    ld a, a                                       ; $6103: $7f
    adc h                                         ; $6104: $8c
    and l                                         ; $6105: $a5
    rst $38                                       ; $6106: $ff
    xor [hl]                                      ; $6107: $ae
    rst $38                                       ; $6108: $ff
    ld l, l                                       ; $6109: $6d
    ld a, a                                       ; $610a: $7f
    ld l, $3f                                     ; $610b: $2e $3f
    ld b, [hl]                                    ; $610d: $46
    ld a, a                                       ; $610e: $7f
    ld c, [hl]                                    ; $610f: $4e
    ld a, a                                       ; $6110: $7f
    inc b                                         ; $6111: $04
    ld [bc], a                                    ; $6112: $02
    ld [bc], a                                    ; $6113: $02
    nop                                           ; $6114: $00
    ld [bc], a                                    ; $6115: $02
    ld [bc], a                                    ; $6116: $02
    add d                                         ; $6117: $82
    inc bc                                        ; $6118: $03
    ld bc, $0206                                  ; $6119: $01 $06 $02
    inc b                                         ; $611c: $04
    nop                                           ; $611d: $00
    ld a, [bc]                                    ; $611e: $0a
    ld [bc], a                                    ; $611f: $02
    add d                                         ; $6120: $82
    cp $ce                                        ; $6121: $fe $ce
    ld [bc], a                                    ; $6123: $02
    jr nz, jr_0dd_60b0                            ; $6124: $20 $8a

    ccf                                           ; $6126: $3f
    ld a, [hl-]                                   ; $6127: $3a
    ld a, [hl]                                    ; $6128: $7e
    ld a, a                                       ; $6129: $7f
    ld a, l                                       ; $612a: $7d
    ld a, a                                       ; $612b: $7f
    cp a                                          ; $612c: $bf
    rst $38                                       ; $612d: $ff
    call c, Call_000_02ff                         ; $612e: $dc $ff $02
    ccf                                           ; $6131: $3f
    inc d                                         ; $6132: $14
    nop                                           ; $6133: $00
    add d                                         ; $6134: $82
    inc bc                                        ; $6135: $03
    ld bc, $020a                                  ; $6136: $01 $0a $02
    ld [de], a                                    ; $6139: $12
    nop                                           ; $613a: $00
    rst $38                                       ; $613b: $ff
    rlca                                          ; $613c: $07
    ld bc, $07f8                                  ; $613d: $01 $f8 $07
    ld a, [c]                                     ; $6140: $f2
    ld bc, $fbec                                  ; $6141: $01 $ec $fb
    adc b                                         ; $6144: $88
    nop                                           ; $6145: $00
    add hl, sp                                    ; $6146: $39
    nop                                           ; $6147: $00
    ld l, h                                       ; $6148: $6c
    nop                                           ; $6149: $00
    ld d, b                                       ; $614a: $50
    nop                                           ; $614b: $00
    jr nz, jr_0dd_6166                            ; $614c: $20 $18

    nop                                           ; $614e: $00
    rst $38                                       ; $614f: $ff
    dec c                                         ; $6150: $0d
    inc b                                         ; $6151: $04
    ld hl, sp+$07                                 ; $6152: $f8 $07
    ld a, [c]                                     ; $6154: $f2
    ld bc, $fbeb                                  ; $6155: $01 $eb $fb
    db $ec                                        ; $6158: $ec
    rst $38                                       ; $6159: $ff
    ei                                            ; $615a: $fb
    ld a, [$00fb]                                 ; $615b: $fa $fb $00
    ld [bc], a                                    ; $615e: $02
    ccf                                           ; $615f: $3f
    ld [bc], a                                    ; $6160: $02
    ld b, [hl]                                    ; $6161: $46
    ld [bc], a                                    ; $6162: $02
    and a                                         ; $6163: $a7
    sbc d                                         ; $6164: $9a
    rst $18                                       ; $6165: $df

jr_0dd_6166:
    reti                                          ; $6166: $d9


    cp a                                          ; $6167: $bf
    or [hl]                                       ; $6168: $b6
    ld a, a                                       ; $6169: $7f
    ld d, b                                       ; $616a: $50
    ld a, a                                       ; $616b: $7f
    ld h, b                                       ; $616c: $60
    ccf                                           ; $616d: $3f
    ld sp, $303f                                  ; $616e: $31 $3f $30
    ld e, a                                       ; $6171: $5f
    ld a, a                                       ; $6172: $7f
    or l                                          ; $6173: $b5
    rst $38                                       ; $6174: $ff
    halt                                          ; $6175: $76
    ld a, a                                       ; $6176: $7f
    inc sp                                        ; $6177: $33
    ccf                                           ; $6178: $3f
    halt                                          ; $6179: $76
    ld a, a                                       ; $617a: $7f
    ld a, c                                       ; $617b: $79
    ld a, a                                       ; $617c: $7f
    ld a, l                                       ; $617d: $7d
    ld a, a                                       ; $617e: $7f
    ld [$8208], sp                                ; $617f: $08 $08 $82
    inc c                                         ; $6182: $0c
    inc b                                         ; $6183: $04
    ld [bc], a                                    ; $6184: $02
    inc c                                         ; $6185: $0c
    inc b                                         ; $6186: $04
    ld [$0004], sp                                ; $6187: $08 $04 $00
    inc b                                         ; $618a: $04
    ld [$0a02], sp                                ; $618b: $08 $02 $0a
    add [hl]                                      ; $618e: $86
    rrca                                          ; $618f: $0f
    dec c                                         ; $6190: $0d
    ld c, $02                                     ; $6191: $0e $02
    db $fc                                        ; $6193: $fc
    db $f4                                        ; $6194: $f4
    ld [bc], a                                    ; $6195: $02
    jr c, @-$74                                   ; $6196: $38 $8a

    ld a, [hl]                                    ; $6198: $7e
    ld a, a                                       ; $6199: $7f
    ld a, l                                       ; $619a: $7d
    ld a, a                                       ; $619b: $7f
    cp e                                          ; $619c: $bb
    rst $38                                       ; $619d: $ff
    cp a                                          ; $619e: $bf
    rst $38                                       ; $619f: $ff
    ld [hl], d                                    ; $61a0: $72
    ld a, [hl]                                    ; $61a1: $7e
    ld [bc], a                                    ; $61a2: $02
    ld c, $14                                     ; $61a3: $0e $14
    nop                                           ; $61a5: $00
    ld [bc], a                                    ; $61a6: $02
    jr c, jr_0dd_61ab                             ; $61a7: $38 $02

    ld a, $84                                     ; $61a9: $3e $84

jr_0dd_61ab:
    add hl, sp                                    ; $61ab: $39
    ccf                                           ; $61ac: $3f
    ld [hl], $3e                                  ; $61ad: $36 $3e
    ld [bc], a                                    ; $61af: $02
    jr c, @+$16                                   ; $61b0: $38 $14

    nop                                           ; $61b2: $00
    rst $38                                       ; $61b3: $ff
    rlca                                          ; $61b4: $07
    ld bc, $07f8                                  ; $61b5: $01 $f8 $07
    ld a, [c]                                     ; $61b8: $f2
    ld bc, $fbec                                  ; $61b9: $01 $ec $fb
    adc b                                         ; $61bc: $88
    nop                                           ; $61bd: $00
    add hl, sp                                    ; $61be: $39
    nop                                           ; $61bf: $00
    ld e, b                                       ; $61c0: $58
    nop                                           ; $61c1: $00
    jr nz, jr_0dd_61c4                            ; $61c2: $20 $00

jr_0dd_61c4:
    ld b, b                                       ; $61c4: $40
    jr jr_0dd_61c7                                ; $61c5: $18 $00

jr_0dd_61c7:
    rst $38                                       ; $61c7: $ff
    dec c                                         ; $61c8: $0d
    inc b                                         ; $61c9: $04
    ld hl, sp+$07                                 ; $61ca: $f8 $07
    ld a, [c]                                     ; $61cc: $f2
    ld bc, $fbec                                  ; $61cd: $01 $ec $fb
    db $ed                                        ; $61d0: $ed
    cp $fc                                        ; $61d1: $fe $fc
    ld a, [$fefc]                                 ; $61d3: $fa $fc $fe
    ld [bc], a                                    ; $61d6: $02
    ccf                                           ; $61d7: $3f
    ld [bc], a                                    ; $61d8: $02
    ld b, [hl]                                    ; $61d9: $46
    ld [bc], a                                    ; $61da: $02
    and a                                         ; $61db: $a7
    sbc d                                         ; $61dc: $9a
    rst $08                                       ; $61dd: $cf
    ret                                           ; $61de: $c9


    cp a                                          ; $61df: $bf
    or [hl]                                       ; $61e0: $b6
    ld a, a                                       ; $61e1: $7f
    ld d, b                                       ; $61e2: $50
    ld a, a                                       ; $61e3: $7f
    ld h, b                                       ; $61e4: $60
    ccf                                           ; $61e5: $3f
    ld sp, $707f                                  ; $61e6: $31 $7f $70
    sbc a                                         ; $61e9: $9f
    rst $38                                       ; $61ea: $ff
    ld [hl], l                                    ; $61eb: $75
    ld a, a                                       ; $61ec: $7f
    ld [hl], $3f                                  ; $61ed: $36 $3f
    dec h                                         ; $61ef: $25
    ccf                                           ; $61f0: $3f
    ld [hl], $3f                                  ; $61f1: $36 $3f
    ld [hl], d                                    ; $61f3: $72
    ld a, a                                       ; $61f4: $7f
    ld a, e                                       ; $61f5: $7b
    ld a, l                                       ; $61f6: $7d
    ld [$8204], sp                                ; $61f7: $08 $04 $82
    ld b, $02                                     ; $61fa: $06 $02
    ld [bc], a                                    ; $61fc: $02
    ld b, $04                                     ; $61fd: $06 $04
    inc b                                         ; $61ff: $04
    inc b                                         ; $6200: $04
    nop                                           ; $6201: $00
    ld b, $04                                     ; $6202: $06 $04
    ld [bc], a                                    ; $6204: $02
    ld b, $84                                     ; $6205: $06 $84
    rlca                                          ; $6207: $07
    ld bc, $e6fe                                  ; $6208: $01 $fe $e6
    ld [bc], a                                    ; $620b: $02
    jr nc, jr_0dd_6210                            ; $620c: $30 $02

    ld a, a                                       ; $620e: $7f
    add [hl]                                      ; $620f: $86

jr_0dd_6210:
    cp [hl]                                       ; $6210: $be
    rst $38                                       ; $6211: $ff
    ld a, l                                       ; $6212: $7d
    ld a, a                                       ; $6213: $7f
    ld [hl], a                                    ; $6214: $77
    ld a, a                                       ; $6215: $7f
    ld [bc], a                                    ; $6216: $02
    jr jr_0dd_622f                                ; $6217: $18 $16

    nop                                           ; $6219: $00
    inc b                                         ; $621a: $04
    ld c, $81                                     ; $621b: $0e $81
    add hl, bc                                    ; $621d: $09
    inc bc                                        ; $621e: $03
    rrca                                          ; $621f: $0f
    ld d, $00                                     ; $6220: $16 $00
    rst $38                                       ; $6222: $ff
    rlca                                          ; $6223: $07
    ld bc, $07f8                                  ; $6224: $01 $f8 $07
    ld a, [c]                                     ; $6227: $f2
    ld bc, $fbed                                  ; $6228: $01 $ed $fb
    adc b                                         ; $622b: $88
    nop                                           ; $622c: $00
    add hl, sp                                    ; $622d: $39
    nop                                           ; $622e: $00

jr_0dd_622f:
    ld e, b                                       ; $622f: $58
    nop                                           ; $6230: $00
    jr nc, jr_0dd_6233                            ; $6231: $30 $00

jr_0dd_6233:
    ld b, b                                       ; $6233: $40
    jr jr_0dd_6236                                ; $6234: $18 $00

jr_0dd_6236:
    rst $38                                       ; $6236: $ff
    dec c                                         ; $6237: $0d
    inc b                                         ; $6238: $04
    ld hl, sp+$07                                 ; $6239: $f8 $07
    ld a, [c]                                     ; $623b: $f2
    ld bc, $fbeb                                  ; $623c: $01 $eb $fb
    db $ec                                        ; $623f: $ec
    db $fd                                        ; $6240: $fd
    ei                                            ; $6241: $fb
    ei                                            ; $6242: $fb
    ei                                            ; $6243: $fb
    db $fd                                        ; $6244: $fd
    ld [bc], a                                    ; $6245: $02
    ccf                                           ; $6246: $3f
    ld [bc], a                                    ; $6247: $02
    ld b, [hl]                                    ; $6248: $46
    ld [bc], a                                    ; $6249: $02
    sub e                                         ; $624a: $93
    adc h                                         ; $624b: $8c
    xor a                                         ; $624c: $af
    xor l                                         ; $624d: $ad
    rst $18                                       ; $624e: $df
    sub $7f                                       ; $624f: $d6 $7f
    ld [hl], b                                    ; $6251: $70
    ld a, a                                       ; $6252: $7f
    ld d, b                                       ; $6253: $50
    ccf                                           ; $6254: $3f
    ld sp, $181f                                  ; $6255: $31 $1f $18
    ld [bc], a                                    ; $6258: $02
    ccf                                           ; $6259: $3f
    adc h                                         ; $625a: $8c
    ld d, l                                       ; $625b: $55
    ld a, a                                       ; $625c: $7f
    and [hl]                                      ; $625d: $a6
    rst $38                                       ; $625e: $ff
    ld h, l                                       ; $625f: $65
    ld a, a                                       ; $6260: $7f
    ld l, $3f                                     ; $6261: $2e $3f
    ld h, $3f                                     ; $6263: $26 $3f
    ld l, $3f                                     ; $6265: $2e $3f
    inc b                                         ; $6267: $04
    ld [bc], a                                    ; $6268: $02
    ld [bc], a                                    ; $6269: $02
    nop                                           ; $626a: $00
    ld [bc], a                                    ; $626b: $02
    ld [bc], a                                    ; $626c: $02
    add d                                         ; $626d: $82
    inc bc                                        ; $626e: $03
    ld bc, $0206                                  ; $626f: $01 $06 $02
    inc b                                         ; $6272: $04
    nop                                           ; $6273: $00
    ld a, [bc]                                    ; $6274: $0a
    ld [bc], a                                    ; $6275: $02
    add d                                         ; $6276: $82
    db $fd                                        ; $6277: $fd
    rst $08                                       ; $6278: $cf
    ld [bc], a                                    ; $6279: $02
    ld b, b                                       ; $627a: $40
    add h                                         ; $627b: $84
    ld a, a                                       ; $627c: $7f
    ld [hl], h                                    ; $627d: $74
    ld a, [hl]                                    ; $627e: $7e
    ld a, a                                       ; $627f: $7f
    ld [bc], a                                    ; $6280: $02
    rst $38                                       ; $6281: $ff
    add h                                         ; $6282: $84
    cp [hl]                                       ; $6283: $be
    rst $38                                       ; $6284: $ff
    ld e, a                                       ; $6285: $5f
    ld a, a                                       ; $6286: $7f
    ld [bc], a                                    ; $6287: $02
    jr c, @+$16                                   ; $6288: $38 $14

    nop                                           ; $628a: $00
    add c                                         ; $628b: $81
    ld bc, $0303                                  ; $628c: $01 $03 $03
    ld [bc], a                                    ; $628f: $02
    ld [bc], a                                    ; $6290: $02
    ld [bc], a                                    ; $6291: $02
    inc bc                                        ; $6292: $03
    ld [bc], a                                    ; $6293: $02
    ld [bc], a                                    ; $6294: $02
    inc d                                         ; $6295: $14
    nop                                           ; $6296: $00
    rst $38                                       ; $6297: $ff
    rlca                                          ; $6298: $07
    ld bc, $07f8                                  ; $6299: $01 $f8 $07
    ld a, [c]                                     ; $629c: $f2
    ld bc, $fbec                                  ; $629d: $01 $ec $fb
    adc b                                         ; $62a0: $88
    nop                                           ; $62a1: $00
    add hl, sp                                    ; $62a2: $39
    nop                                           ; $62a3: $00
    ld l, h                                       ; $62a4: $6c
    nop                                           ; $62a5: $00
    ld d, b                                       ; $62a6: $50
    nop                                           ; $62a7: $00
    jr nz, jr_0dd_62c2                            ; $62a8: $20 $18

    nop                                           ; $62aa: $00
    rst $38                                       ; $62ab: $ff
    dec c                                         ; $62ac: $0d
    inc b                                         ; $62ad: $04
    ld hl, sp+$07                                 ; $62ae: $f8 $07
    ld a, [c]                                     ; $62b0: $f2
    ld bc, $fbeb                                  ; $62b1: $01 $eb $fb
    db $ec                                        ; $62b4: $ec
    db $fd                                        ; $62b5: $fd
    ei                                            ; $62b6: $fb
    ei                                            ; $62b7: $fb
    ei                                            ; $62b8: $fb
    nop                                           ; $62b9: $00
    ld [bc], a                                    ; $62ba: $02
    ccf                                           ; $62bb: $3f
    ld [bc], a                                    ; $62bc: $02
    ld h, d                                       ; $62bd: $62
    ld [bc], a                                    ; $62be: $02
    sbc e                                         ; $62bf: $9b
    sbc d                                         ; $62c0: $9a
    and a                                         ; $62c1: $a7

jr_0dd_62c2:
    and l                                         ; $62c2: $a5
    rst $18                                       ; $62c3: $df
    db $db                                        ; $62c4: $db
    ld a, a                                       ; $62c5: $7f
    ld [hl], b                                    ; $62c6: $70
    ld a, a                                       ; $62c7: $7f
    ld l, b                                       ; $62c8: $68
    ccf                                           ; $62c9: $3f
    jr nc, jr_0dd_630b                            ; $62ca: $30 $3f

    inc a                                         ; $62cc: $3c
    ld e, a                                       ; $62cd: $5f
    ld a, a                                       ; $62ce: $7f
    or l                                          ; $62cf: $b5
    rst $38                                       ; $62d0: $ff
    ld l, [hl]                                    ; $62d1: $6e
    ld a, a                                       ; $62d2: $7f
    ld c, l                                       ; $62d3: $4d
    ld a, a                                       ; $62d4: $7f
    ld e, [hl]                                    ; $62d5: $5e
    ld a, a                                       ; $62d6: $7f
    ld c, [hl]                                    ; $62d7: $4e
    ld a, a                                       ; $62d8: $7f
    ld a, [hl]                                    ; $62d9: $7e
    ld a, a                                       ; $62da: $7f
    ld [bc], a                                    ; $62db: $02
    ld [bc], a                                    ; $62dc: $02
    inc b                                         ; $62dd: $04
    nop                                           ; $62de: $00
    ld [bc], a                                    ; $62df: $02
    ld [bc], a                                    ; $62e0: $02
    add d                                         ; $62e1: $82
    inc bc                                        ; $62e2: $03
    ld bc, $0206                                  ; $62e3: $01 $06 $02
    inc b                                         ; $62e6: $04
    nop                                           ; $62e7: $00
    ld [$0202], sp                                ; $62e8: $08 $02 $02
    inc bc                                        ; $62eb: $03
    add d                                         ; $62ec: $82
    ei                                            ; $62ed: $fb
    ccf                                           ; $62ee: $3f
    ld [bc], a                                    ; $62ef: $02
    ld b, b                                       ; $62f0: $40

jr_0dd_62f1:
    adc d                                         ; $62f1: $8a
    ld a, [hl]                                    ; $62f2: $7e
    ld d, a                                       ; $62f3: $57
    db $fd                                        ; $62f4: $fd
    ei                                            ; $62f5: $fb
    cp l                                          ; $62f6: $bd
    rst $38                                       ; $62f7: $ff
    cp e                                          ; $62f8: $bb
    rst $38                                       ; $62f9: $ff
    rst $18                                       ; $62fa: $df
    rst $38                                       ; $62fb: $ff
    ld [bc], a                                    ; $62fc: $02
    dec a                                         ; $62fd: $3d
    inc d                                         ; $62fe: $14
    nop                                           ; $62ff: $00
    ld [bc], a                                    ; $6300: $02
    db $10                                        ; $6301: $10
    add d                                         ; $6302: $82
    ld [$0218], sp                                ; $6303: $08 $18 $02
    ld e, $82                                     ; $6306: $1e $82
    add hl, de                                    ; $6308: $19
    rra                                           ; $6309: $1f
    ld [bc], a                                    ; $630a: $02

jr_0dd_630b:
    ld e, $02                                     ; $630b: $1e $02
    jr jr_0dd_6321                                ; $630d: $18 $12

    nop                                           ; $630f: $00
    rst $38                                       ; $6310: $ff
    rlca                                          ; $6311: $07
    ld bc, $07f8                                  ; $6312: $01 $f8 $07
    ld a, [c]                                     ; $6315: $f2
    ld bc, $fbec                                  ; $6316: $01 $ec $fb
    adc b                                         ; $6319: $88
    nop                                           ; $631a: $00
    dec e                                         ; $631b: $1d
    nop                                           ; $631c: $00
    ld h, h                                       ; $631d: $64
    nop                                           ; $631e: $00
    ld e, b                                       ; $631f: $58
    nop                                           ; $6320: $00

jr_0dd_6321:
    jr nz, jr_0dd_633b                            ; $6321: $20 $18

    nop                                           ; $6323: $00
    rst $38                                       ; $6324: $ff
    dec c                                         ; $6325: $0d
    inc b                                         ; $6326: $04
    ld hl, sp+$07                                 ; $6327: $f8 $07
    ld a, [c]                                     ; $6329: $f2
    ld bc, $fbec                                  ; $632a: $01 $ec $fb
    db $ed                                        ; $632d: $ed
    db $fd                                        ; $632e: $fd
    db $fc                                        ; $632f: $fc
    ld a, [$fefc]                                 ; $6330: $fa $fc $fe
    ld [bc], a                                    ; $6333: $02
    ccf                                           ; $6334: $3f
    ld [bc], a                                    ; $6335: $02
    ld h, d                                       ; $6336: $62
    ld [bc], a                                    ; $6337: $02
    sbc e                                         ; $6338: $9b
    sbc d                                         ; $6339: $9a
    and a                                         ; $633a: $a7

jr_0dd_633b:
    and l                                         ; $633b: $a5
    rst $18                                       ; $633c: $df
    db $db                                        ; $633d: $db
    ld a, a                                       ; $633e: $7f
    ld [hl], b                                    ; $633f: $70
    ld a, a                                       ; $6340: $7f
    ld l, b                                       ; $6341: $68
    ccf                                           ; $6342: $3f
    jr nc, jr_0dd_63c4                            ; $6343: $30 $7f

    ld a, h                                       ; $6345: $7c
    sbc a                                         ; $6346: $9f
    rst $38                                       ; $6347: $ff
    ld [hl], l                                    ; $6348: $75
    ld a, a                                       ; $6349: $7f
    ld h, $3f                                     ; $634a: $26 $3f
    dec h                                         ; $634c: $25
    ccf                                           ; $634d: $3f
    ld l, $3f                                     ; $634e: $2e $3f
    ld l, [hl]                                    ; $6350: $6e
    ld a, a                                       ; $6351: $7f
    ld h, [hl]                                    ; $6352: $66
    ld a, a                                       ; $6353: $7f
    ld [bc], a                                    ; $6354: $02
    ld [bc], a                                    ; $6355: $02
    inc b                                         ; $6356: $04
    nop                                           ; $6357: $00
    ld [bc], a                                    ; $6358: $02
    ld [bc], a                                    ; $6359: $02
    add d                                         ; $635a: $82
    inc bc                                        ; $635b: $03
    ld bc, $0206                                  ; $635c: $01 $06 $02
    inc b                                         ; $635f: $04
    nop                                           ; $6360: $00
    ld a, [bc]                                    ; $6361: $0a
    ld [bc], a                                    ; $6362: $02
    add d                                         ; $6363: $82
    ld a, [$027e]                                 ; $6364: $fa $7e $02
    jr nz, jr_0dd_62f1                            ; $6367: $20 $88

    ld a, a                                       ; $6369: $7f
    ld [hl], a                                    ; $636a: $77
    ld a, a                                       ; $636b: $7f
    ld [hl], a                                    ; $636c: $77
    cp [hl]                                       ; $636d: $be
    ei                                            ; $636e: $fb
    cp a                                          ; $636f: $bf
    rst $38                                       ; $6370: $ff
    ld [bc], a                                    ; $6371: $02
    ld a, a                                       ; $6372: $7f
    ld d, $00                                     ; $6373: $16 $00
    add e                                         ; $6375: $83
    inc b                                         ; $6376: $04
    inc c                                         ; $6377: $0c
    ld b, $03                                     ; $6378: $06 $03
    ld c, $81                                     ; $637a: $0e $81
    ld bc, $0f03                                  ; $637c: $01 $03 $0f
    inc d                                         ; $637f: $14
    nop                                           ; $6380: $00
    rst $38                                       ; $6381: $ff
    rlca                                          ; $6382: $07
    ld bc, $07f8                                  ; $6383: $01 $f8 $07
    ld a, [c]                                     ; $6386: $f2
    ld bc, $fbed                                  ; $6387: $01 $ed $fb
    adc b                                         ; $638a: $88
    nop                                           ; $638b: $00
    dec e                                         ; $638c: $1d
    nop                                           ; $638d: $00
    ld h, h                                       ; $638e: $64
    nop                                           ; $638f: $00
    ld e, b                                       ; $6390: $58
    nop                                           ; $6391: $00
    jr nz, jr_0dd_63ac                            ; $6392: $20 $18

    nop                                           ; $6394: $00
    rst $38                                       ; $6395: $ff
    dec c                                         ; $6396: $0d
    inc b                                         ; $6397: $04
    ld hl, sp+$07                                 ; $6398: $f8 $07
    ld a, [c]                                     ; $639a: $f2
    ld bc, $fbeb                                  ; $639b: $01 $eb $fb
    db $ec                                        ; $639e: $ec
    db $fd                                        ; $639f: $fd
    ei                                            ; $63a0: $fb
    ld a, [$fdfb]                                 ; $63a1: $fa $fb $fd
    ld [bc], a                                    ; $63a4: $02
    ccf                                           ; $63a5: $3f
    ld [bc], a                                    ; $63a6: $02
    ld b, [hl]                                    ; $63a7: $46
    ld [bc], a                                    ; $63a8: $02
    sub e                                         ; $63a9: $93
    adc h                                         ; $63aa: $8c
    xor a                                         ; $63ab: $af

jr_0dd_63ac:
    xor l                                         ; $63ac: $ad
    rst $18                                       ; $63ad: $df
    sub $7f                                       ; $63ae: $d6 $7f
    ld [hl], b                                    ; $63b0: $70
    ld a, a                                       ; $63b1: $7f
    ld d, b                                       ; $63b2: $50
    ccf                                           ; $63b3: $3f
    ld sp, $181f                                  ; $63b4: $31 $1f $18
    ld [bc], a                                    ; $63b7: $02
    ccf                                           ; $63b8: $3f

jr_0dd_63b9:
    adc h                                         ; $63b9: $8c
    ld d, l                                       ; $63ba: $55
    ld a, a                                       ; $63bb: $7f
    and [hl]                                      ; $63bc: $a6
    rst $38                                       ; $63bd: $ff
    ld h, l                                       ; $63be: $65
    ld a, a                                       ; $63bf: $7f
    ld l, $3f                                     ; $63c0: $2e $3f
    ld [hl], $3f                                  ; $63c2: $36 $3f

jr_0dd_63c4:
    ld [hl], d                                    ; $63c4: $72
    ld a, a                                       ; $63c5: $7f
    inc b                                         ; $63c6: $04
    ld [bc], a                                    ; $63c7: $02
    ld [bc], a                                    ; $63c8: $02
    nop                                           ; $63c9: $00
    ld [bc], a                                    ; $63ca: $02

jr_0dd_63cb:
    ld [bc], a                                    ; $63cb: $02
    add d                                         ; $63cc: $82
    inc bc                                        ; $63cd: $03
    ld bc, $0206                                  ; $63ce: $01 $06 $02
    inc b                                         ; $63d1: $04
    nop                                           ; $63d2: $00
    ld a, [bc]                                    ; $63d3: $0a
    ld [bc], a                                    ; $63d4: $02
    add d                                         ; $63d5: $82
    rst $38                                       ; $63d6: $ff
    pop af                                        ; $63d7: $f1
    ld [bc], a                                    ; $63d8: $02
    jr nz, @-$74                                  ; $63d9: $20 $8a

    ccf                                           ; $63db: $3f
    dec a                                         ; $63dc: $3d
    ld a, [hl]                                    ; $63dd: $7e
    ld a, a                                       ; $63de: $7f
    cp l                                          ; $63df: $bd
    rst $38                                       ; $63e0: $ff
    cp a                                          ; $63e1: $bf
    rst $38                                       ; $63e2: $ff
    ld a, h                                       ; $63e3: $7c
    ld a, a                                       ; $63e4: $7f
    ld [bc], a                                    ; $63e5: $02
    rra                                           ; $63e6: $1f
    inc d                                         ; $63e7: $14
    nop                                           ; $63e8: $00
    ld [bc], a                                    ; $63e9: $02
    rlca                                          ; $63ea: $07
    ld [bc], a                                    ; $63eb: $02
    ld b, $81                                     ; $63ec: $06 $81
    ld [bc], a                                    ; $63ee: $02
    inc bc                                        ; $63ef: $03
    ld b, $81                                     ; $63f0: $06 $81
    ld [bc], a                                    ; $63f2: $02
    inc bc                                        ; $63f3: $03
    ld b, $12                                     ; $63f4: $06 $12
    nop                                           ; $63f6: $00
    rst $38                                       ; $63f7: $ff
    rlca                                          ; $63f8: $07
    ld bc, $07f8                                  ; $63f9: $01 $f8 $07
    ld a, [c]                                     ; $63fc: $f2
    ld bc, $fbec                                  ; $63fd: $01 $ec $fb
    adc b                                         ; $6400: $88
    nop                                           ; $6401: $00
    add hl, sp                                    ; $6402: $39
    nop                                           ; $6403: $00
    ld l, h                                       ; $6404: $6c
    nop                                           ; $6405: $00
    ld d, b                                       ; $6406: $50
    nop                                           ; $6407: $00
    jr nz, jr_0dd_6422                            ; $6408: $20 $18

    nop                                           ; $640a: $00
    rst $38                                       ; $640b: $ff
    dec c                                         ; $640c: $0d
    inc b                                         ; $640d: $04
    ld hl, sp+$07                                 ; $640e: $f8 $07
    ld a, [c]                                     ; $6410: $f2
    ld bc, $faeb                                  ; $6411: $01 $eb $fa
    db $eb                                        ; $6414: $eb
    rst $38                                       ; $6415: $ff
    ei                                            ; $6416: $fb
    ld a, [$fffb]                                 ; $6417: $fa $fb $ff
    ld [bc], a                                    ; $641a: $02
    dec c                                         ; $641b: $0d
    ld [bc], a                                    ; $641c: $02
    ld [de], a                                    ; $641d: $12
    ld [bc], a                                    ; $641e: $02
    jr z, jr_0dd_6423                             ; $641f: $28 $02

    ld [hl-], a                                   ; $6421: $32

jr_0dd_6422:
    ld [bc], a                                    ; $6422: $02

jr_0dd_6423:
    ld a, [hl+]                                   ; $6423: $2a
    ld [bc], a                                    ; $6424: $02
    dec [hl]                                      ; $6425: $35
    ld [bc], a                                    ; $6426: $02
    ld a, [de]                                    ; $6427: $1a
    add d                                         ; $6428: $82
    rra                                           ; $6429: $1f
    rla                                           ; $642a: $17
    ld [bc], a                                    ; $642b: $02
    rra                                           ; $642c: $1f
    ld [bc], a                                    ; $642d: $02
    jr c, jr_0dd_63b9                             ; $642e: $38 $89

    ld d, a                                       ; $6430: $57
    ld a, a                                       ; $6431: $7f
    ld e, b                                       ; $6432: $58
    ld a, a                                       ; $6433: $7f
    ld e, h                                       ; $6434: $5c
    ld a, a                                       ; $6435: $7f
    sbc a                                         ; $6436: $9f
    rst $38                                       ; $6437: $ff
    cp a                                          ; $6438: $bf
    inc bc                                        ; $6439: $03
    rst $38                                       ; $643a: $ff
    ld [bc], a                                    ; $643b: $02
    db $10                                        ; $643c: $10
    ld [bc], a                                    ; $643d: $02
    ld [$1402], sp                                ; $643e: $08 $02 $14
    ld [bc], a                                    ; $6441: $02
    inc c                                         ; $6442: $0c
    ld [bc], a                                    ; $6443: $02
    inc d                                         ; $6444: $14
    ld [bc], a                                    ; $6445: $02
    inc c                                         ; $6446: $0c
    inc bc                                        ; $6447: $03
    jr jr_0dd_63cb                                ; $6448: $18 $81

    ld [$1802], sp                                ; $644a: $08 $02 $18
    ld [bc], a                                    ; $644d: $02
    inc e                                         ; $644e: $1c
    adc [hl]                                      ; $644f: $8e
    ld a, [bc]                                    ; $6450: $0a
    ld e, $0a                                     ; $6451: $1e $0a
    ld e, $1a                                     ; $6453: $1e $1a
    ld e, $19                                     ; $6455: $1e $19
    rra                                           ; $6457: $1f
    dec e                                         ; $6458: $1d
    rra                                           ; $6459: $1f
    rrca                                          ; $645a: $0f
    rra                                           ; $645b: $1f
    rst $38                                       ; $645c: $ff
    cp a                                          ; $645d: $bf
    ld [bc], a                                    ; $645e: $02
    ld a, a                                       ; $645f: $7f
    ld [bc], a                                    ; $6460: $02
    ccf                                           ; $6461: $3f
    inc b                                         ; $6462: $04
    ld a, a                                       ; $6463: $7f
    add d                                         ; $6464: $82
    jr c, @+$41                                   ; $6465: $38 $3f

    ld [bc], a                                    ; $6467: $02
    rra                                           ; $6468: $1f
    ld [de], a                                    ; $6469: $12
    nop                                           ; $646a: $00
    add [hl]                                      ; $646b: $86
    rra                                           ; $646c: $1f
    dec e                                         ; $646d: $1d
    ld c, $1e                                     ; $646e: $0e $1e
    inc c                                         ; $6470: $0c
    inc e                                         ; $6471: $1c
    ld [bc], a                                    ; $6472: $02
    ld e, $84                                     ; $6473: $1e $84
    ld b, $1e                                     ; $6475: $06 $1e
    inc c                                         ; $6477: $0c
    inc e                                         ; $6478: $1c
    ld [bc], a                                    ; $6479: $02
    jr jr_0dd_648e                                ; $647a: $18 $12

    nop                                           ; $647c: $00
    rst $38                                       ; $647d: $ff
    rlca                                          ; $647e: $07
    ld bc, $07f8                                  ; $647f: $01 $f8 $07
    ld a, [c]                                     ; $6482: $f2
    ld bc, $fcec                                  ; $6483: $01 $ec $fc
    adc e                                         ; $6486: $8b
    ld [hl], $00                                  ; $6487: $36 $00
    ld e, l                                       ; $6489: $5d
    nop                                           ; $648a: $00
    ld [hl], $00                                  ; $648b: $36 $00
    ld d, l                                       ; $648d: $55

jr_0dd_648e:
    nop                                           ; $648e: $00
    ld a, [hl+]                                   ; $648f: $2a
    nop                                           ; $6490: $00
    inc d                                         ; $6491: $14
    ld b, $00                                     ; $6492: $06 $00
    add c                                         ; $6494: $81
    inc e                                         ; $6495: $1c
    ld c, $00                                     ; $6496: $0e $00
    rst $38                                       ; $6498: $ff
    dec c                                         ; $6499: $0d
    inc b                                         ; $649a: $04
    ld hl, sp+$07                                 ; $649b: $f8 $07
    ld a, [c]                                     ; $649d: $f2
    ld bc, $faeb                                  ; $649e: $01 $eb $fa
    db $eb                                        ; $64a1: $eb
    rst $38                                       ; $64a2: $ff
    ei                                            ; $64a3: $fb
    ld a, [$fefb]                                 ; $64a4: $fa $fb $fe
    ld [bc], a                                    ; $64a7: $02
    dec c                                         ; $64a8: $0d
    ld [bc], a                                    ; $64a9: $02
    ld [de], a                                    ; $64aa: $12
    ld [bc], a                                    ; $64ab: $02
    inc h                                         ; $64ac: $24
    ld [bc], a                                    ; $64ad: $02
    jr nz, jr_0dd_64b2                            ; $64ae: $20 $02

    dec [hl]                                      ; $64b0: $35
    ld [bc], a                                    ; $64b1: $02

jr_0dd_64b2:
    ld a, [hl-]                                   ; $64b2: $3a
    ld [bc], a                                    ; $64b3: $02
    dec d                                         ; $64b4: $15
    inc b                                         ; $64b5: $04
    rra                                           ; $64b6: $1f
    ld [bc], a                                    ; $64b7: $02
    add hl, sp                                    ; $64b8: $39
    adc c                                         ; $64b9: $89
    ld d, a                                       ; $64ba: $57
    ld a, a                                       ; $64bb: $7f
    ld e, b                                       ; $64bc: $58
    ld a, a                                       ; $64bd: $7f
    sbc h                                         ; $64be: $9c

Jump_0dd_64bf:
    rst $38                                       ; $64bf: $ff
    cp a                                          ; $64c0: $bf
    rst $38                                       ; $64c1: $ff
    sbc a                                         ; $64c2: $9f
    inc bc                                        ; $64c3: $03
    rst $38                                       ; $64c4: $ff
    ld [bc], a                                    ; $64c5: $02
    db $10                                        ; $64c6: $10
    ld [bc], a                                    ; $64c7: $02
    ld [$1c02], sp                                ; $64c8: $08 $02 $1c
    ld [bc], a                                    ; $64cb: $02
    inc d                                         ; $64cc: $14
    ld [bc], a                                    ; $64cd: $02
    inc c                                         ; $64ce: $0c
    inc b                                         ; $64cf: $04
    inc e                                         ; $64d0: $1c
    add d                                         ; $64d1: $82
    jr jr_0dd_64dc                                ; $64d2: $18 $08

    ld [bc], a                                    ; $64d4: $02
    jr jr_0dd_64d9                                ; $64d5: $18 $02

    ld e, $87                                     ; $64d7: $1e $87

jr_0dd_64d9:
    ld a, [bc]                                    ; $64d9: $0a
    ld e, $0b                                     ; $64da: $1e $0b

jr_0dd_64dc:
    rra                                           ; $64dc: $1f
    dec e                                         ; $64dd: $1d
    rra                                           ; $64de: $1f
    add hl, de                                    ; $64df: $19
    inc bc                                        ; $64e0: $03
    rra                                           ; $64e1: $1f
    add [hl]                                      ; $64e2: $86
    ld c, $1a                                     ; $64e3: $0e $1a
    rst $38                                       ; $64e5: $ff
    sbc a                                         ; $64e6: $9f
    rst $38                                       ; $64e7: $ff
    cp a                                          ; $64e8: $bf
    ld [bc], a                                    ; $64e9: $02

jr_0dd_64ea:
    ld a, a                                       ; $64ea: $7f
    ld [bc], a                                    ; $64eb: $02
    ccf                                           ; $64ec: $3f
    add h                                         ; $64ed: $84
    ld a, $3f                                     ; $64ee: $3e $3f
    dec sp                                        ; $64f0: $3b
    ccf                                           ; $64f1: $3f
    ld [bc], a                                    ; $64f2: $02
    rrca                                          ; $64f3: $0f
    ld [de], a                                    ; $64f4: $12
    nop                                           ; $64f5: $00
    add c                                         ; $64f6: $81
    ld b, $03                                     ; $64f7: $06 $03
    ld c, $85                                     ; $64f9: $0e $85
    ld b, $0e                                     ; $64fb: $06 $0e
    inc bc                                        ; $64fd: $03
    rrca                                          ; $64fe: $0f
    inc bc                                        ; $64ff: $03
    inc bc                                        ; $6500: $03
    rrca                                          ; $6501: $0f
    ld [bc], a                                    ; $6502: $02
    ld c, $12                                     ; $6503: $0e $12
    nop                                           ; $6505: $00
    rst $38                                       ; $6506: $ff
    rlca                                          ; $6507: $07
    ld bc, $07f8                                  ; $6508: $01 $f8 $07
    ld a, [c]                                     ; $650b: $f2
    ld bc, $fcec                                  ; $650c: $01 $ec $fc
    adc e                                         ; $650f: $8b
    ld [hl], $00                                  ; $6510: $36 $00
    ld l, h                                       ; $6512: $6c
    nop                                           ; $6513: $00
    ld a, l                                       ; $6514: $7d
    nop                                           ; $6515: $00
    ld a, [hl+]                                   ; $6516: $2a
    nop                                           ; $6517: $00
    inc d                                         ; $6518: $14
    nop                                           ; $6519: $00
    jr z, jr_0dd_6522                             ; $651a: $28 $06

    nop                                           ; $651c: $00
    add c                                         ; $651d: $81
    jr @+$10                                      ; $651e: $18 $0e

    nop                                           ; $6520: $00
    rst $38                                       ; $6521: $ff

jr_0dd_6522:
    dec c                                         ; $6522: $0d
    inc b                                         ; $6523: $04
    ld hl, sp+$07                                 ; $6524: $f8 $07
    ld a, [c]                                     ; $6526: $f2
    ld bc, $faec                                  ; $6527: $01 $ec $fa
    db $ec                                        ; $652a: $ec
    rst $38                                       ; $652b: $ff
    db $fc                                        ; $652c: $fc
    ld a, [$fefc]                                 ; $652d: $fa $fc $fe
    ld [bc], a                                    ; $6530: $02
    dec c                                         ; $6531: $0d
    ld [bc], a                                    ; $6532: $02
    ld [de], a                                    ; $6533: $12
    ld [bc], a                                    ; $6534: $02
    inc h                                         ; $6535: $24
    ld [bc], a                                    ; $6536: $02
    jr nz, jr_0dd_653b                            ; $6537: $20 $02

    dec [hl]                                      ; $6539: $35
    ld [bc], a                                    ; $653a: $02

jr_0dd_653b:
    ld a, [hl-]                                   ; $653b: $3a
    ld [bc], a                                    ; $653c: $02
    dec d                                         ; $653d: $15
    inc b                                         ; $653e: $04
    rra                                           ; $653f: $1f
    adc e                                         ; $6540: $8b
    jr nc, jr_0dd_6582                            ; $6541: $30 $3f

    ld e, h                                       ; $6543: $5c
    ld a, a                                       ; $6544: $7f
    ld e, a                                       ; $6545: $5f
    ld a, a                                       ; $6546: $7f
    cp a                                          ; $6547: $bf
    rst $38                                       ; $6548: $ff
    cp a                                          ; $6549: $bf
    rst $38                                       ; $654a: $ff
    sbc a                                         ; $654b: $9f
    inc bc                                        ; $654c: $03
    rst $38                                       ; $654d: $ff
    ld [bc], a                                    ; $654e: $02
    db $10                                        ; $654f: $10
    ld [bc], a                                    ; $6550: $02

jr_0dd_6551:
    ld [$1c02], sp                                ; $6551: $08 $02 $1c
    ld [bc], a                                    ; $6554: $02
    inc d                                         ; $6555: $14
    ld [bc], a                                    ; $6556: $02
    inc c                                         ; $6557: $0c
    inc bc                                        ; $6558: $03
    inc e                                         ; $6559: $1c
    add e                                         ; $655a: $83
    inc d                                         ; $655b: $14
    jr jr_0dd_6566                                ; $655c: $18 $08

    ld [bc], a                                    ; $655e: $02
    jr jr_0dd_64ea                                ; $655f: $18 $89

    ld c, $1e                                     ; $6561: $0e $1e
    ld a, [de]                                    ; $6563: $1a
    ld e, $1b                                     ; $6564: $1e $1b

jr_0dd_6566:
    rra                                           ; $6566: $1f
    dec e                                         ; $6567: $1d
    rra                                           ; $6568: $1f
    dec de                                        ; $6569: $1b
    ld [bc], a                                    ; $656a: $02
    rra                                           ; $656b: $1f
    add a                                         ; $656c: $87
    dec e                                         ; $656d: $1d
    ld d, $1e                                     ; $656e: $16 $1e
    rst $38                                       ; $6570: $ff
    sbc a                                         ; $6571: $9f
    rst $38                                       ; $6572: $ff
    cp a                                          ; $6573: $bf
    ld [bc], a                                    ; $6574: $02
    ld a, a                                       ; $6575: $7f
    add h                                         ; $6576: $84
    ld a, [hl]                                    ; $6577: $7e
    ld a, a                                       ; $6578: $7f
    dec a                                         ; $6579: $3d
    ccf                                           ; $657a: $3f
    ld [bc], a                                    ; $657b: $02
    rra                                           ; $657c: $1f
    inc d                                         ; $657d: $14
    nop                                           ; $657e: $00
    add c                                         ; $657f: $81
    ld [bc], a                                    ; $6580: $02
    inc bc                                        ; $6581: $03

jr_0dd_6582:
    ld c, $82                                     ; $6582: $0e $82
    ld [bc], a                                    ; $6584: $02
    ld c, $04                                     ; $6585: $0e $04
    rrca                                          ; $6587: $0f
    ld [bc], a                                    ; $6588: $02
    inc c                                         ; $6589: $0c
    inc d                                         ; $658a: $14
    nop                                           ; $658b: $00
    rst $38                                       ; $658c: $ff
    rlca                                          ; $658d: $07
    ld bc, $07f8                                  ; $658e: $01 $f8 $07
    ld a, [c]                                     ; $6591: $f2
    ld bc, $fced                                  ; $6592: $01 $ed $fc
    adc e                                         ; $6595: $8b
    ld [hl], $00                                  ; $6596: $36 $00
    ld l, h                                       ; $6598: $6c
    nop                                           ; $6599: $00
    ld a, l                                       ; $659a: $7d
    nop                                           ; $659b: $00
    ld a, [hl+]                                   ; $659c: $2a
    nop                                           ; $659d: $00
    inc d                                         ; $659e: $14
    nop                                           ; $659f: $00
    jr z, jr_0dd_65b7                             ; $65a0: $28 $15

    nop                                           ; $65a2: $00
    rst $38                                       ; $65a3: $ff
    dec c                                         ; $65a4: $0d
    inc b                                         ; $65a5: $04
    ld hl, sp+$07                                 ; $65a6: $f8 $07
    ld a, [c]                                     ; $65a8: $f2
    ld bc, $faeb                                  ; $65a9: $01 $eb $fa
    db $eb                                        ; $65ac: $eb
    rst $38                                       ; $65ad: $ff
    ei                                            ; $65ae: $fb
    ld a, [$fffb]                                 ; $65af: $fa $fb $ff
    ld [bc], a                                    ; $65b2: $02
    dec c                                         ; $65b3: $0d
    ld [bc], a                                    ; $65b4: $02
    ld [de], a                                    ; $65b5: $12
    ld [bc], a                                    ; $65b6: $02

jr_0dd_65b7:
    jr z, jr_0dd_65bb                             ; $65b7: $28 $02

    ld [hl-], a                                   ; $65b9: $32
    ld [bc], a                                    ; $65ba: $02

jr_0dd_65bb:
    ld a, [hl+]                                   ; $65bb: $2a
    ld [bc], a                                    ; $65bc: $02
    dec [hl]                                      ; $65bd: $35
    ld [bc], a                                    ; $65be: $02
    ld a, [de]                                    ; $65bf: $1a
    add d                                         ; $65c0: $82
    rra                                           ; $65c1: $1f
    rla                                           ; $65c2: $17
    ld [bc], a                                    ; $65c3: $02
    rra                                           ; $65c4: $1f
    ld [bc], a                                    ; $65c5: $02
    jr c, jr_0dd_6551                             ; $65c6: $38 $89

    ld d, a                                       ; $65c8: $57
    ld a, a                                       ; $65c9: $7f
    ld e, b                                       ; $65ca: $58
    ld a, a                                       ; $65cb: $7f
    call c, $bfff                                 ; $65cc: $dc $ff $bf
    rst $38                                       ; $65cf: $ff
    cp a                                          ; $65d0: $bf
    inc bc                                        ; $65d1: $03
    rst $38                                       ; $65d2: $ff
    ld [bc], a                                    ; $65d3: $02
    db $10                                        ; $65d4: $10
    ld [bc], a                                    ; $65d5: $02
    ld [$1402], sp                                ; $65d6: $08 $02 $14
    ld [bc], a                                    ; $65d9: $02
    inc c                                         ; $65da: $0c
    ld [bc], a                                    ; $65db: $02
    inc d                                         ; $65dc: $14
    ld [bc], a                                    ; $65dd: $02
    inc c                                         ; $65de: $0c
    ld [bc], a                                    ; $65df: $02
    inc e                                         ; $65e0: $1c
    add d                                         ; $65e1: $82
    jr jr_0dd_65ec                                ; $65e2: $18 $08

    ld [bc], a                                    ; $65e4: $02
    jr jr_0dd_65e9                                ; $65e5: $18 $02

    inc e                                         ; $65e7: $1c
    adc c                                         ; $65e8: $89

jr_0dd_65e9:
    ld a, [bc]                                    ; $65e9: $0a
    ld e, $0a                                     ; $65ea: $1e $0a

jr_0dd_65ec:
    ld e, $1a                                     ; $65ec: $1e $1a
    ld e, $19                                     ; $65ee: $1e $19
    rra                                           ; $65f0: $1f
    dec e                                         ; $65f1: $1d
    inc bc                                        ; $65f2: $03
    rra                                           ; $65f3: $1f
    add d                                         ; $65f4: $82
    rst $38                                       ; $65f5: $ff
    cp a                                          ; $65f6: $bf
    ld [$827f], sp                                ; $65f7: $08 $7f $82
    ld h, a                                       ; $65fa: $67
    ld a, a                                       ; $65fb: $7f
    ld [bc], a                                    ; $65fc: $02
    ld a, $12                                     ; $65fd: $3e $12
    nop                                           ; $65ff: $00
    add h                                         ; $6600: $84
    rra                                           ; $6601: $1f
    dec e                                         ; $6602: $1d
    ld d, $1e                                     ; $6603: $16 $1e
    ld [bc], a                                    ; $6605: $02
    inc e                                         ; $6606: $1c
    add c                                         ; $6607: $81
    inc d                                         ; $6608: $14
    inc bc                                        ; $6609: $03
    inc e                                         ; $660a: $1c
    ld [bc], a                                    ; $660b: $02
    jr jr_0dd_6622                                ; $660c: $18 $14

    nop                                           ; $660e: $00
    rst $38                                       ; $660f: $ff
    rlca                                          ; $6610: $07
    ld bc, $07f8                                  ; $6611: $01 $f8 $07
    ld a, [c]                                     ; $6614: $f2
    ld bc, $fcec                                  ; $6615: $01 $ec $fc
    adc e                                         ; $6618: $8b
    ld [hl], $00                                  ; $6619: $36 $00
    ld e, l                                       ; $661b: $5d
    nop                                           ; $661c: $00
    ld [hl], $00                                  ; $661d: $36 $00
    ld d, l                                       ; $661f: $55
    nop                                           ; $6620: $00
    ld a, [hl+]                                   ; $6621: $2a

jr_0dd_6622:
    nop                                           ; $6622: $00
    inc d                                         ; $6623: $14
    ld b, $00                                     ; $6624: $06 $00
    add c                                         ; $6626: $81
    inc e                                         ; $6627: $1c
    ld c, $00                                     ; $6628: $0e $00
    rst $38                                       ; $662a: $ff
    dec c                                         ; $662b: $0d
    inc b                                         ; $662c: $04
    ld hl, sp+$07                                 ; $662d: $f8 $07
    ld a, [c]                                     ; $662f: $f2
    ld bc, $faeb                                  ; $6630: $01 $eb $fa
    db $eb                                        ; $6633: $eb
    rst $38                                       ; $6634: $ff
    ei                                            ; $6635: $fb
    ei                                            ; $6636: $fb
    ei                                            ; $6637: $fb
    rst $38                                       ; $6638: $ff
    ld [bc], a                                    ; $6639: $02
    dec c                                         ; $663a: $0d
    ld [bc], a                                    ; $663b: $02
    ld [de], a                                    ; $663c: $12
    ld [bc], a                                    ; $663d: $02
    add hl, sp                                    ; $663e: $39
    ld [bc], a                                    ; $663f: $02
    jr z, jr_0dd_6644                             ; $6640: $28 $02

    dec [hl]                                      ; $6642: $35
    ld [bc], a                                    ; $6643: $02

jr_0dd_6644:
    ld a, [hl-]                                   ; $6644: $3a
    ld [bc], a                                    ; $6645: $02
    dec a                                         ; $6646: $3d
    add d                                         ; $6647: $82
    rra                                           ; $6648: $1f
    rla                                           ; $6649: $17
    ld [bc], a                                    ; $664a: $02
    rra                                           ; $664b: $1f
    ld [bc], a                                    ; $664c: $02
    ld a, h                                       ; $664d: $7c
    add a                                         ; $664e: $87
    ld d, a                                       ; $664f: $57
    ld a, a                                       ; $6650: $7f
    ret c                                         ; $6651: $d8

    rst $38                                       ; $6652: $ff
    cp h                                          ; $6653: $bc
    rst $38                                       ; $6654: $ff
    sbc a                                         ; $6655: $9f
    inc bc                                        ; $6656: $03
    rst $38                                       ; $6657: $ff
    add d                                         ; $6658: $82
    ld [hl], a                                    ; $6659: $77
    ld e, a                                       ; $665a: $5f
    ld [bc], a                                    ; $665b: $02
    db $10                                        ; $665c: $10
    ld [bc], a                                    ; $665d: $02
    ld [$0404], sp                                ; $665e: $08 $04 $04
    ld [bc], a                                    ; $6661: $02
    inc c                                         ; $6662: $0c
    ld [bc], a                                    ; $6663: $02
    inc e                                         ; $6664: $1c
    ld [bc], a                                    ; $6665: $02
    ld [$1804], sp                                ; $6666: $08 $04 $18
    ld [bc], a                                    ; $6669: $02
    inc e                                         ; $666a: $1c
    adc c                                         ; $666b: $89
    ld a, [bc]                                    ; $666c: $0a
    ld e, $0a                                     ; $666d: $1e $0a
    ld e, $19                                     ; $666f: $1e $19
    rra                                           ; $6671: $1f
    dec e                                         ; $6672: $1d
    rra                                           ; $6673: $1f
    add hl, de                                    ; $6674: $19
    inc bc                                        ; $6675: $03
    rra                                           ; $6676: $1f
    inc b                                         ; $6677: $04
    ld a, a                                       ; $6678: $7f
    add d                                         ; $6679: $82
    ld l, a                                       ; $667a: $6f
    ld a, a                                       ; $667b: $7f
    ld [bc], a                                    ; $667c: $02
    rst $38                                       ; $667d: $ff
    add h                                         ; $667e: $84
    rst $00                                       ; $667f: $c7
    rst $38                                       ; $6680: $ff
    db $fd                                        ; $6681: $fd
    rst $38                                       ; $6682: $ff
    ld [bc], a                                    ; $6683: $02
    ld a, a                                       ; $6684: $7f
    ld [de], a                                    ; $6685: $12
    nop                                           ; $6686: $00
    add h                                         ; $6687: $84
    rrca                                          ; $6688: $0f
    add hl, bc                                    ; $6689: $09
    rrca                                          ; $668a: $0f
    dec c                                         ; $668b: $0d
    ld [bc], a                                    ; $668c: $02
    ld c, $06                                     ; $668d: $0e $06
    inc c                                         ; $668f: $0c
    inc d                                         ; $6690: $14
    nop                                           ; $6691: $00
    rst $38                                       ; $6692: $ff
    rlca                                          ; $6693: $07
    ld bc, $07f8                                  ; $6694: $01 $f8 $07
    ld a, [c]                                     ; $6697: $f2
    ld bc, $fcec                                  ; $6698: $01 $ec $fc
    adc e                                         ; $669b: $8b
    ld [hl], $00                                  ; $669c: $36 $00
    dec de                                        ; $669e: $1b
    nop                                           ; $669f: $00
    ld e, a                                       ; $66a0: $5f
    nop                                           ; $66a1: $00
    ld a, [hl+]                                   ; $66a2: $2a
    nop                                           ; $66a3: $00
    inc d                                         ; $66a4: $14
    nop                                           ; $66a5: $00
    ld a, [bc]                                    ; $66a6: $0a
    ld b, $00                                     ; $66a7: $06 $00
    add c                                         ; $66a9: $81
    inc c                                         ; $66aa: $0c
    ld c, $00                                     ; $66ab: $0e $00
    rst $38                                       ; $66ad: $ff
    dec c                                         ; $66ae: $0d
    inc b                                         ; $66af: $04
    ld hl, sp+$07                                 ; $66b0: $f8 $07
    ld a, [c]                                     ; $66b2: $f2
    ld bc, $faec                                  ; $66b3: $01 $ec $fa
    db $ec                                        ; $66b6: $ec
    rst $38                                       ; $66b7: $ff
    db $fc                                        ; $66b8: $fc
    ei                                            ; $66b9: $fb
    db $fc                                        ; $66ba: $fc
    rst $38                                       ; $66bb: $ff
    ld [bc], a                                    ; $66bc: $02
    dec c                                         ; $66bd: $0d
    ld [bc], a                                    ; $66be: $02
    ld [de], a                                    ; $66bf: $12
    ld [bc], a                                    ; $66c0: $02
    add hl, sp                                    ; $66c1: $39
    ld [bc], a                                    ; $66c2: $02
    jr z, jr_0dd_66c7                             ; $66c3: $28 $02

    dec [hl]                                      ; $66c5: $35
    ld [bc], a                                    ; $66c6: $02

jr_0dd_66c7:
    ld a, [hl-]                                   ; $66c7: $3a
    add h                                         ; $66c8: $84
    dec a                                         ; $66c9: $3d
    dec l                                         ; $66ca: $2d
    rra                                           ; $66cb: $1f
    rla                                           ; $66cc: $17
    ld [bc], a                                    ; $66cd: $02
    rra                                           ; $66ce: $1f
    adc c                                         ; $66cf: $89
    ld [hl], b                                    ; $66d0: $70
    ld a, a                                       ; $66d1: $7f
    ld e, h                                       ; $66d2: $5c
    ld a, a                                       ; $66d3: $7f
    rst $18                                       ; $66d4: $df
    rst $38                                       ; $66d5: $ff
    cp a                                          ; $66d6: $bf
    rst $38                                       ; $66d7: $ff
    rst $18                                       ; $66d8: $df
    ld [bc], a                                    ; $66d9: $02
    rst $38                                       ; $66da: $ff
    add c                                         ; $66db: $81
    cp a                                          ; $66dc: $bf
    ld [bc], a                                    ; $66dd: $02
    ld a, a                                       ; $66de: $7f

jr_0dd_66df:
    ld [bc], a                                    ; $66df: $02
    db $10                                        ; $66e0: $10
    ld [bc], a                                    ; $66e1: $02
    ld [$0404], sp                                ; $66e2: $08 $04 $04
    ld [bc], a                                    ; $66e5: $02
    inc c                                         ; $66e6: $0c
    ld [bc], a                                    ; $66e7: $02
    inc e                                         ; $66e8: $1c
    ld [bc], a                                    ; $66e9: $02
    ld [$1804], sp                                ; $66ea: $08 $04 $18
    adc e                                         ; $66ed: $8b
    inc c                                         ; $66ee: $0c
    inc e                                         ; $66ef: $1c
    ld a, [de]                                    ; $66f0: $1a

jr_0dd_66f1:
    ld e, $1a                                     ; $66f1: $1e $1a
    ld e, $1d                                     ; $66f3: $1e $1d
    rra                                           ; $66f5: $1f
    dec e                                         ; $66f6: $1d
    rra                                           ; $66f7: $1f
    add hl, de                                    ; $66f8: $19
    inc bc                                        ; $66f9: $03
    rra                                           ; $66fa: $1f
    add c                                         ; $66fb: $81
    ld l, a                                       ; $66fc: $6f
    inc bc                                        ; $66fd: $03
    ld a, a                                       ; $66fe: $7f
    add [hl]                                      ; $66ff: $86
    ld c, a                                       ; $6700: $4f
    ld a, a                                       ; $6701: $7f
    rst $30                                       ; $6702: $f7
    rst $38                                       ; $6703: $ff
    ei                                            ; $6704: $fb
    rst $38                                       ; $6705: $ff
    ld [bc], a                                    ; $6706: $02
    ccf                                           ; $6707: $3f
    inc d                                         ; $6708: $14
    nop                                           ; $6709: $00
    add h                                         ; $670a: $84
    rrca                                          ; $670b: $0f
    add hl, bc                                    ; $670c: $09
    rrca                                          ; $670d: $0f
    dec c                                         ; $670e: $0d
    ld [bc], a                                    ; $670f: $02
    ld c, $02                                     ; $6710: $0e $02
    inc c                                         ; $6712: $0c
    add d                                         ; $6713: $82
    inc b                                         ; $6714: $04
    inc c                                         ; $6715: $0c
    ld [bc], a                                    ; $6716: $02
    ld [$0014], sp                                ; $6717: $08 $14 $00
    rst $38                                       ; $671a: $ff
    rlca                                          ; $671b: $07
    ld bc, $07f8                                  ; $671c: $01 $f8 $07
    ld a, [c]                                     ; $671f: $f2
    ld bc, $fced                                  ; $6720: $01 $ed $fc
    adc e                                         ; $6723: $8b
    ld [hl], $00                                  ; $6724: $36 $00
    dec de                                        ; $6726: $1b
    nop                                           ; $6727: $00
    ld e, a                                       ; $6728: $5f
    nop                                           ; $6729: $00
    ld a, [hl+]                                   ; $672a: $2a
    nop                                           ; $672b: $00
    inc d                                         ; $672c: $14
    nop                                           ; $672d: $00
    ld a, [bc]                                    ; $672e: $0a
    dec d                                         ; $672f: $15
    nop                                           ; $6730: $00
    rst $38                                       ; $6731: $ff
    dec c                                         ; $6732: $0d
    inc b                                         ; $6733: $04
    ld hl, sp+$07                                 ; $6734: $f8 $07
    ld a, [c]                                     ; $6736: $f2
    ld bc, $faeb                                  ; $6737: $01 $eb $fa
    db $eb                                        ; $673a: $eb
    rst $38                                       ; $673b: $ff
    ei                                            ; $673c: $fb
    ld a, [$fffb]                                 ; $673d: $fa $fb $ff
    ld [bc], a                                    ; $6740: $02
    dec c                                         ; $6741: $0d
    ld [bc], a                                    ; $6742: $02
    ld [de], a                                    ; $6743: $12
    ld [bc], a                                    ; $6744: $02
    jr z, jr_0dd_6749                             ; $6745: $28 $02

    ld [hl-], a                                   ; $6747: $32
    ld [bc], a                                    ; $6748: $02

jr_0dd_6749:
    ld a, [hl+]                                   ; $6749: $2a
    ld [bc], a                                    ; $674a: $02
    dec [hl]                                      ; $674b: $35
    ld [bc], a                                    ; $674c: $02
    ld a, [hl-]                                   ; $674d: $3a
    add d                                         ; $674e: $82
    rra                                           ; $674f: $1f
    rla                                           ; $6750: $17
    ld [bc], a                                    ; $6751: $02
    rra                                           ; $6752: $1f
    ld [bc], a                                    ; $6753: $02
    jr c, jr_0dd_66df                             ; $6754: $38 $89

    ld d, a                                       ; $6756: $57
    ld a, a                                       ; $6757: $7f
    ld e, b                                       ; $6758: $58
    ld a, a                                       ; $6759: $7f
    ld e, h                                       ; $675a: $5c
    ld a, a                                       ; $675b: $7f
    sbc a                                         ; $675c: $9f
    rst $38                                       ; $675d: $ff
    cp a                                          ; $675e: $bf
    inc bc                                        ; $675f: $03
    rst $38                                       ; $6760: $ff
    ld [bc], a                                    ; $6761: $02
    db $10                                        ; $6762: $10
    ld [bc], a                                    ; $6763: $02
    ld [$1402], sp                                ; $6764: $08 $02 $14
    ld [bc], a                                    ; $6767: $02
    inc c                                         ; $6768: $0c
    ld [bc], a                                    ; $6769: $02
    inc d                                         ; $676a: $14
    ld [bc], a                                    ; $676b: $02
    inc c                                         ; $676c: $0c
    inc bc                                        ; $676d: $03
    jr jr_0dd_66f1                                ; $676e: $18 $81

    ld [$1802], sp                                ; $6770: $08 $02 $18
    ld [bc], a                                    ; $6773: $02
    inc e                                         ; $6774: $1c
    adc c                                         ; $6775: $89
    ld a, [bc]                                    ; $6776: $0a
    ld e, $0a                                     ; $6777: $1e $0a
    ld e, $1b                                     ; $6779: $1e $1b
    rra                                           ; $677b: $1f
    dec e                                         ; $677c: $1d
    rra                                           ; $677d: $1f
    dec e                                         ; $677e: $1d
    inc bc                                        ; $677f: $03
    rra                                           ; $6780: $1f
    add h                                         ; $6781: $84
    rst $38                                       ; $6782: $ff
    cp a                                          ; $6783: $bf
    ld l, a                                       ; $6784: $6f
    ld a, a                                       ; $6785: $7f
    ld [bc], a                                    ; $6786: $02
    ccf                                           ; $6787: $3f
    add c                                         ; $6788: $81
    cpl                                           ; $6789: $2f
    inc bc                                        ; $678a: $03
    ccf                                           ; $678b: $3f
    ld [bc], a                                    ; $678c: $02
    rra                                           ; $678d: $1f
    ld [bc], a                                    ; $678e: $02
    inc bc                                        ; $678f: $03
    ld [de], a                                    ; $6790: $12
    nop                                           ; $6791: $00
    add d                                         ; $6792: $82
    rra                                           ; $6793: $1f
    dec e                                         ; $6794: $1d
    ld [$821e], sp                                ; $6795: $08 $1e $82
    ld b, $1e                                     ; $6798: $06 $1e
    ld [bc], a                                    ; $679a: $02
    inc e                                         ; $679b: $1c
    ld [de], a                                    ; $679c: $12
    nop                                           ; $679d: $00
    rst $38                                       ; $679e: $ff
    rlca                                          ; $679f: $07
    ld bc, $07f8                                  ; $67a0: $01 $f8 $07
    ld a, [c]                                     ; $67a3: $f2
    ld bc, $fcec                                  ; $67a4: $01 $ec $fc
    adc e                                         ; $67a7: $8b
    ld [hl], $00                                  ; $67a8: $36 $00
    ld e, l                                       ; $67aa: $5d
    nop                                           ; $67ab: $00
    ld [hl], $00                                  ; $67ac: $36 $00
    ld d, l                                       ; $67ae: $55
    nop                                           ; $67af: $00
    ld a, [hl+]                                   ; $67b0: $2a
    nop                                           ; $67b1: $00
    inc d                                         ; $67b2: $14
    ld b, $00                                     ; $67b3: $06 $00
    add c                                         ; $67b5: $81
    inc e                                         ; $67b6: $1c
    ld c, $00                                     ; $67b7: $0e $00
    rst $38                                       ; $67b9: $ff
    dec c                                         ; $67ba: $0d
    inc b                                         ; $67bb: $04
    ld hl, sp+$07                                 ; $67bc: $f8 $07
    ld a, [c]                                     ; $67be: $f2
    ld bc, $faeb                                  ; $67bf: $01 $eb $fa
    db $eb                                        ; $67c2: $eb
    rst $38                                       ; $67c3: $ff
    ei                                            ; $67c4: $fb
    ld a, [$fffb]                                 ; $67c5: $fa $fb $ff
    ld [bc], a                                    ; $67c8: $02
    dec c                                         ; $67c9: $0d
    ld [bc], a                                    ; $67ca: $02
    ld [de], a                                    ; $67cb: $12
    ld [bc], a                                    ; $67cc: $02
    dec l                                         ; $67cd: $2d
    adc h                                         ; $67ce: $8c
    ccf                                           ; $67cf: $3f
    ld [hl-], a                                   ; $67d0: $32
    ccf                                           ; $67d1: $3f
    dec a                                         ; $67d2: $3d
    ccf                                           ; $67d3: $3f
    inc h                                         ; $67d4: $24
    ccf                                           ; $67d5: $3f
    ld [hl-], a                                   ; $67d6: $32
    rra                                           ; $67d7: $1f
    inc de                                        ; $67d8: $13
    rra                                           ; $67d9: $1f
    jr jr_0dd_67de                                ; $67da: $18 $02

    ccf                                           ; $67dc: $3f
    adc h                                         ; $67dd: $8c

jr_0dd_67de:
    ld e, d                                       ; $67de: $5a
    ld a, d                                       ; $67df: $7a
    ld e, l                                       ; $67e0: $5d
    ld a, l                                       ; $67e1: $7d
    ld e, d                                       ; $67e2: $5a
    ld a, a                                       ; $67e3: $7f
    cp l                                          ; $67e4: $bd
    rst $38                                       ; $67e5: $ff
    db $dd                                        ; $67e6: $dd
    rst $38                                       ; $67e7: $ff
    db $fd                                        ; $67e8: $fd
    cp a                                          ; $67e9: $bf
    ld [bc], a                                    ; $67ea: $02
    db $10                                        ; $67eb: $10
    ld [bc], a                                    ; $67ec: $02
    ld [$1402], sp                                ; $67ed: $08 $02 $14
    add d                                         ; $67f0: $82
    inc e                                         ; $67f1: $1c
    inc c                                         ; $67f2: $0c
    inc bc                                        ; $67f3: $03
    inc e                                         ; $67f4: $1c
    add l                                         ; $67f5: $85
    inc b                                         ; $67f6: $04
    inc e                                         ; $67f7: $1c
    inc c                                         ; $67f8: $0c
    jr jr_0dd_6803                                ; $67f9: $18 $08

    ld [bc], a                                    ; $67fb: $02
    jr jr_0dd_6800                                ; $67fc: $18 $02

    inc e                                         ; $67fe: $1c
    adc c                                         ; $67ff: $89

jr_0dd_6800:
    ld a, [de]                                    ; $6800: $1a
    ld e, $1a                                     ; $6801: $1e $1a

jr_0dd_6803:
    ld e, $1a                                     ; $6803: $1e $1a
    ld e, $1d                                     ; $6805: $1e $1d
    rra                                           ; $6807: $1f
    dec de                                        ; $6808: $1b
    ld [bc], a                                    ; $6809: $02
    rra                                           ; $680a: $1f
    adc b                                         ; $680b: $88
    dec e                                         ; $680c: $1d
    ld a, [$7a9f]                                 ; $680d: $fa $9f $7a
    ld l, a                                       ; $6810: $6f
    ld a, [hl-]                                   ; $6811: $3a
    ccf                                           ; $6812: $3f
    ld [hl], a                                    ; $6813: $77
    inc bc                                        ; $6814: $03
    ld a, a                                       ; $6815: $7f
    add d                                         ; $6816: $82
    daa                                           ; $6817: $27
    ccf                                           ; $6818: $3f
    ld [bc], a                                    ; $6819: $02
    jr c, jr_0dd_682e                             ; $681a: $38 $12

    nop                                           ; $681c: $00
    add d                                         ; $681d: $82
    rra                                           ; $681e: $1f
    dec e                                         ; $681f: $1d
    ld [bc], a                                    ; $6820: $02
    ld e, $02                                     ; $6821: $1e $02
    inc e                                         ; $6823: $1c
    add c                                         ; $6824: $81
    ld c, $03                                     ; $6825: $0e $03
    ld e, $81                                     ; $6827: $1e $81
    inc b                                         ; $6829: $04
    inc bc                                        ; $682a: $03
    inc e                                         ; $682b: $1c
    ld [de], a                                    ; $682c: $12
    nop                                           ; $682d: $00

jr_0dd_682e:
    rst $38                                       ; $682e: $ff
    rlca                                          ; $682f: $07
    ld bc, $07f8                                  ; $6830: $01 $f8 $07
    ld a, [c]                                     ; $6833: $f2
    ld bc, $fcec                                  ; $6834: $01 $ec $fc
    add e                                         ; $6837: $83
    ld [hl], $00                                  ; $6838: $36 $00
    ld c, c                                       ; $683a: $49
    stop                                          ; $683b: $10 $00
    add e                                         ; $683d: $83
    inc d                                         ; $683e: $14
    nop                                           ; $683f: $00
    ld [$000a], sp                                ; $6840: $08 $0a $00
    rst $38                                       ; $6843: $ff
    dec c                                         ; $6844: $0d
    inc b                                         ; $6845: $04
    ld hl, sp+$07                                 ; $6846: $f8 $07
    ld a, [c]                                     ; $6848: $f2
    ld bc, $faeb                                  ; $6849: $01 $eb $fa
    db $eb                                        ; $684c: $eb
    rst $38                                       ; $684d: $ff
    ei                                            ; $684e: $fb
    ei                                            ; $684f: $fb
    ei                                            ; $6850: $fb
    cp $02                                        ; $6851: $fe $02
    dec c                                         ; $6853: $0d
    ld [bc], a                                    ; $6854: $02
    ld [de], a                                    ; $6855: $12
    ld [bc], a                                    ; $6856: $02
    dec hl                                        ; $6857: $2b
    adc h                                         ; $6858: $8c
    ccf                                           ; $6859: $3f
    inc [hl]                                      ; $685a: $34
    ccf                                           ; $685b: $3f
    dec a                                         ; $685c: $3d
    ccf                                           ; $685d: $3f
    jr z, jr_0dd_689f                             ; $685e: $28 $3f

    inc [hl]                                      ; $6860: $34
    rra                                           ; $6861: $1f
    ld d, $1f                                     ; $6862: $16 $1f
    jr jr_0dd_6868                                ; $6864: $18 $02

    ccf                                           ; $6866: $3f
    adc h                                         ; $6867: $8c

jr_0dd_6868:
    ld e, d                                       ; $6868: $5a
    ld a, d                                       ; $6869: $7a
    ld e, l                                       ; $686a: $5d
    ld a, l                                       ; $686b: $7d
    cp d                                          ; $686c: $ba
    rst $38                                       ; $686d: $ff
    sbc l                                         ; $686e: $9d
    rst $38                                       ; $686f: $ff
    cp l                                          ; $6870: $bd
    rst $38                                       ; $6871: $ff
    ld a, a                                       ; $6872: $7f
    ld d, e                                       ; $6873: $53
    ld [bc], a                                    ; $6874: $02
    db $10                                        ; $6875: $10
    ld [bc], a                                    ; $6876: $02
    ld [$1402], sp                                ; $6877: $08 $02 $14
    adc d                                         ; $687a: $8a
    inc e                                         ; $687b: $1c
    inc c                                         ; $687c: $0c
    inc e                                         ; $687d: $1c
    inc d                                         ; $687e: $14
    inc e                                         ; $687f: $1c
    inc c                                         ; $6880: $0c
    inc e                                         ; $6881: $1c
    inc c                                         ; $6882: $0c
    jr jr_0dd_688d                                ; $6883: $18 $08

    ld [bc], a                                    ; $6885: $02
    jr jr_0dd_688a                                ; $6886: $18 $02

    inc e                                         ; $6888: $1c
    add l                                         ; $6889: $85

jr_0dd_688a:
    ld a, [de]                                    ; $688a: $1a
    ld e, $1a                                     ; $688b: $1e $1a

jr_0dd_688d:
    ld e, $1d                                     ; $688d: $1e $1d
    inc b                                         ; $688f: $04
    rra                                           ; $6890: $1f
    add c                                         ; $6891: $81
    dec e                                         ; $6892: $1d
    ld [bc], a                                    ; $6893: $02
    ld e, $8a                                     ; $6894: $1e $8a
    ld sp, hl                                     ; $6896: $f9
    cp a                                          ; $6897: $bf
    halt                                          ; $6898: $76
    ld a, a                                       ; $6899: $7f
    rst $30                                       ; $689a: $f7
    rst $38                                       ; $689b: $ff
    rst $30                                       ; $689c: $f7
    rst $38                                       ; $689d: $ff
    ld e, [hl]                                    ; $689e: $5e

jr_0dd_689f:
    ld a, a                                       ; $689f: $7f
    ld [bc], a                                    ; $68a0: $02
    dec sp                                        ; $68a1: $3b
    ld [bc], a                                    ; $68a2: $02
    inc bc                                        ; $68a3: $03
    ld [de], a                                    ; $68a4: $12
    nop                                           ; $68a5: $00
    inc b                                         ; $68a6: $04
    ld b, $82                                     ; $68a7: $06 $82
    ld [bc], a                                    ; $68a9: $02
    ld b, $02                                     ; $68aa: $06 $02
    rlca                                          ; $68ac: $07
    add c                                         ; $68ad: $81
    ld [bc], a                                    ; $68ae: $02
    inc bc                                        ; $68af: $03
    ld b, $02                                     ; $68b0: $06 $02
    inc b                                         ; $68b2: $04
    ld [de], a                                    ; $68b3: $12
    nop                                           ; $68b4: $00
    rst $38                                       ; $68b5: $ff
    rlca                                          ; $68b6: $07
    ld bc, $07f8                                  ; $68b7: $01 $f8 $07
    ld a, [c]                                     ; $68ba: $f2
    ld bc, $fcec                                  ; $68bb: $01 $ec $fc
    add e                                         ; $68be: $83
    ld [hl], $00                                  ; $68bf: $36 $00
    ld d, c                                       ; $68c1: $51
    stop                                          ; $68c2: $10 $00
    add e                                         ; $68c4: $83
    inc d                                         ; $68c5: $14
    nop                                           ; $68c6: $00
    ld [$000a], sp                                ; $68c7: $08 $0a $00
    rst $38                                       ; $68ca: $ff
    dec c                                         ; $68cb: $0d
    inc b                                         ; $68cc: $04
    ld hl, sp+$07                                 ; $68cd: $f8 $07
    ld a, [c]                                     ; $68cf: $f2
    ld bc, $faec                                  ; $68d0: $01 $ec $fa
    db $ec                                        ; $68d3: $ec
    rst $38                                       ; $68d4: $ff
    db $fc                                        ; $68d5: $fc
    ei                                            ; $68d6: $fb
    db $fc                                        ; $68d7: $fc
    db $fd                                        ; $68d8: $fd
    ld [bc], a                                    ; $68d9: $02
    dec c                                         ; $68da: $0d
    ld [bc], a                                    ; $68db: $02
    ld d, $02                                     ; $68dc: $16 $02
    dec hl                                        ; $68de: $2b
    adc h                                         ; $68df: $8c
    ccf                                           ; $68e0: $3f
    inc [hl]                                      ; $68e1: $34
    ccf                                           ; $68e2: $3f
    dec a                                         ; $68e3: $3d
    ccf                                           ; $68e4: $3f
    jr z, jr_0dd_6926                             ; $68e5: $28 $3f

    inc [hl]                                      ; $68e7: $34
    rra                                           ; $68e8: $1f
    ld d, $1f                                     ; $68e9: $16 $1f
    jr jr_0dd_68ef                                ; $68eb: $18 $02

    ccf                                           ; $68ed: $3f
    adc h                                         ; $68ee: $8c

jr_0dd_68ef:
    ld e, d                                       ; $68ef: $5a
    ld a, d                                       ; $68f0: $7a
    ld e, l                                       ; $68f1: $5d
    ld a, l                                       ; $68f2: $7d
    ld e, d                                       ; $68f3: $5a
    ld a, a                                       ; $68f4: $7f
    cp l                                          ; $68f5: $bd
    rst $38                                       ; $68f6: $ff
    sbc l                                         ; $68f7: $9d
    rst $38                                       ; $68f8: $ff
    db $fd                                        ; $68f9: $fd
    sbc a                                         ; $68fa: $9f
    ld [bc], a                                    ; $68fb: $02
    db $10                                        ; $68fc: $10
    ld [bc], a                                    ; $68fd: $02
    ld [$0402], sp                                ; $68fe: $08 $02 $04
    inc bc                                        ; $6901: $03
    inc e                                         ; $6902: $1c
    add l                                         ; $6903: $85
    inc d                                         ; $6904: $14
    inc e                                         ; $6905: $1c
    inc c                                         ; $6906: $0c
    inc e                                         ; $6907: $1c
    inc c                                         ; $6908: $0c
    inc b                                         ; $6909: $04
    jr jr_0dd_690e                                ; $690a: $18 $02

    inc e                                         ; $690c: $1c
    add a                                         ; $690d: $87

jr_0dd_690e:
    ld a, [de]                                    ; $690e: $1a
    ld e, $1a                                     ; $690f: $1e $1a
    ld e, $1d                                     ; $6911: $1e $1d
    rra                                           ; $6913: $1f
    dec e                                         ; $6914: $1d
    ld [bc], a                                    ; $6915: $02
    rra                                           ; $6916: $1f
    add c                                         ; $6917: $81
    dec e                                         ; $6918: $1d
    ld [bc], a                                    ; $6919: $02
    ld e, $86                                     ; $691a: $1e $86
    db $fd                                        ; $691c: $fd
    rst $08                                       ; $691d: $cf
    ld [hl], l                                    ; $691e: $75
    ld a, a                                       ; $691f: $7f
    ld a, [hl]                                    ; $6920: $7e
    ld a, a                                       ; $6921: $7f
    ld [bc], a                                    ; $6922: $02
    ccf                                           ; $6923: $3f
    add d                                         ; $6924: $82
    ld a, [de]                                    ; $6925: $1a

jr_0dd_6926:
    dec de                                        ; $6926: $1b
    ld [bc], a                                    ; $6927: $02
    inc bc                                        ; $6928: $03
    inc d                                         ; $6929: $14
    nop                                           ; $692a: $00
    ld [$8103], sp                                ; $692b: $08 $03 $81
    ld bc, $0303                                  ; $692e: $01 $03 $03
    inc d                                         ; $6931: $14
    nop                                           ; $6932: $00
    rst $38                                       ; $6933: $ff
    rlca                                          ; $6934: $07
    ld bc, $07f8                                  ; $6935: $01 $f8 $07
    ld a, [c]                                     ; $6938: $f2
    ld bc, $fced                                  ; $6939: $01 $ed $fc
    add e                                         ; $693c: $83
    ld h, $00                                     ; $693d: $26 $00
    ld d, e                                       ; $693f: $53
    stop                                          ; $6940: $10 $00
    add e                                         ; $6942: $83
    inc d                                         ; $6943: $14
    nop                                           ; $6944: $00
    ld [$000a], sp                                ; $6945: $08 $0a $00
    rst $38                                       ; $6948: $ff
    dec c                                         ; $6949: $0d
    inc b                                         ; $694a: $04
    ld hl, sp+$07                                 ; $694b: $f8 $07
    ld a, [c]                                     ; $694d: $f2
    ld bc, $faeb                                  ; $694e: $01 $eb $fa
    db $eb                                        ; $6951: $eb
    rst $38                                       ; $6952: $ff
    ei                                            ; $6953: $fb
    ld a, [$fffb]                                 ; $6954: $fa $fb $ff
    ld [bc], a                                    ; $6957: $02
    dec c                                         ; $6958: $0d
    ld [bc], a                                    ; $6959: $02
    ld [de], a                                    ; $695a: $12
    ld [bc], a                                    ; $695b: $02
    dec l                                         ; $695c: $2d
    adc h                                         ; $695d: $8c
    ccf                                           ; $695e: $3f
    ld [hl-], a                                   ; $695f: $32
    ccf                                           ; $6960: $3f
    dec a                                         ; $6961: $3d
    ccf                                           ; $6962: $3f
    inc h                                         ; $6963: $24
    ccf                                           ; $6964: $3f
    ld [hl], $1f                                  ; $6965: $36 $1f
    inc de                                        ; $6967: $13
    rra                                           ; $6968: $1f
    jr jr_0dd_696d                                ; $6969: $18 $02

    ccf                                           ; $696b: $3f
    adc h                                         ; $696c: $8c

jr_0dd_696d:
    ld e, d                                       ; $696d: $5a
    ld a, d                                       ; $696e: $7a
    ld e, l                                       ; $696f: $5d
    ld a, l                                       ; $6970: $7d
    ld e, d                                       ; $6971: $5a
    ld a, a                                       ; $6972: $7f
    cp l                                          ; $6973: $bd
    rst $38                                       ; $6974: $ff
    db $dd                                        ; $6975: $dd
    rst $38                                       ; $6976: $ff
    db $fd                                        ; $6977: $fd
    cp a                                          ; $6978: $bf
    ld [bc], a                                    ; $6979: $02
    db $10                                        ; $697a: $10
    ld [bc], a                                    ; $697b: $02
    ld [$1402], sp                                ; $697c: $08 $02 $14
    add d                                         ; $697f: $82
    inc e                                         ; $6980: $1c
    inc c                                         ; $6981: $0c
    inc bc                                        ; $6982: $03
    inc e                                         ; $6983: $1c
    add l                                         ; $6984: $85
    inc b                                         ; $6985: $04
    inc e                                         ; $6986: $1c
    inc c                                         ; $6987: $0c
    jr jr_0dd_6992                                ; $6988: $18 $08

    ld [bc], a                                    ; $698a: $02
    jr jr_0dd_698f                                ; $698b: $18 $02

    inc e                                         ; $698d: $1c
    adc c                                         ; $698e: $89

jr_0dd_698f:
    ld a, [de]                                    ; $698f: $1a
    ld e, $1a                                     ; $6990: $1e $1a

jr_0dd_6992:
    ld e, $1a                                     ; $6992: $1e $1a
    ld e, $1d                                     ; $6994: $1e $1d
    rra                                           ; $6996: $1f
    dec de                                        ; $6997: $1b
    ld [bc], a                                    ; $6998: $02
    rra                                           ; $6999: $1f
    add [hl]                                      ; $699a: $86
    dec e                                         ; $699b: $1d
    ei                                            ; $699c: $fb
    cp a                                          ; $699d: $bf
    halt                                          ; $699e: $76
    ld e, a                                       ; $699f: $5f
    ld a, [hl]                                    ; $69a0: $7e
    inc bc                                        ; $69a1: $03
    ld a, a                                       ; $69a2: $7f
    add d                                         ; $69a3: $82
    dec [hl]                                      ; $69a4: $35
    dec a                                         ; $69a5: $3d
    ld [bc], a                                    ; $69a6: $02
    add hl, de                                    ; $69a7: $19
    inc d                                         ; $69a8: $14
    nop                                           ; $69a9: $00
    add d                                         ; $69aa: $82
    rra                                           ; $69ab: $1f
    dec e                                         ; $69ac: $1d
    ld [bc], a                                    ; $69ad: $02
    ld e, $02                                     ; $69ae: $1e $02
    inc e                                         ; $69b0: $1c
    add e                                         ; $69b1: $83
    ld c, $1e                                     ; $69b2: $0e $1e
    inc b                                         ; $69b4: $04
    inc bc                                        ; $69b5: $03
    inc e                                         ; $69b6: $1c
    inc d                                         ; $69b7: $14
    nop                                           ; $69b8: $00
    rst $38                                       ; $69b9: $ff
    rlca                                          ; $69ba: $07
    ld bc, $07f8                                  ; $69bb: $01 $f8 $07
    ld a, [c]                                     ; $69be: $f2
    ld bc, $fcec                                  ; $69bf: $01 $ec $fc
    add e                                         ; $69c2: $83
    ld [hl], $00                                  ; $69c3: $36 $00
    ld c, c                                       ; $69c5: $49
    stop                                          ; $69c6: $10 $00
    add e                                         ; $69c8: $83
    inc d                                         ; $69c9: $14
    nop                                           ; $69ca: $00
    ld [$000a], sp                                ; $69cb: $08 $0a $00
    rst $38                                       ; $69ce: $ff
    dec c                                         ; $69cf: $0d
    inc b                                         ; $69d0: $04
    ld hl, sp+$07                                 ; $69d1: $f8 $07
    ld a, [c]                                     ; $69d3: $f2
    ld bc, $faeb                                  ; $69d4: $01 $eb $fa
    db $eb                                        ; $69d7: $eb
    rst $38                                       ; $69d8: $ff
    ei                                            ; $69d9: $fb
    ei                                            ; $69da: $fb
    ei                                            ; $69db: $fb
    cp $02                                        ; $69dc: $fe $02
    dec c                                         ; $69de: $0d
    ld [bc], a                                    ; $69df: $02
    ld [de], a                                    ; $69e0: $12
    ld [bc], a                                    ; $69e1: $02
    ld l, $8c                                     ; $69e2: $2e $8c
    ccf                                           ; $69e4: $3f
    ld sp, $2e3f                                  ; $69e5: $31 $3f $2e
    ccf                                           ; $69e8: $3f
    ld [hl-], a                                   ; $69e9: $32
    ccf                                           ; $69ea: $3f
    ld sp, $131f                                  ; $69eb: $31 $1f $13
    rra                                           ; $69ee: $1f
    jr jr_0dd_69f3                                ; $69ef: $18 $02

    ccf                                           ; $69f1: $3f
    adc h                                         ; $69f2: $8c

jr_0dd_69f3:
    ld e, d                                       ; $69f3: $5a
    ld a, d                                       ; $69f4: $7a
    ld e, l                                       ; $69f5: $5d
    ld a, l                                       ; $69f6: $7d
    cp d                                          ; $69f7: $ba
    rst $38                                       ; $69f8: $ff
    db $fd                                        ; $69f9: $fd
    rst $38                                       ; $69fa: $ff
    db $fd                                        ; $69fb: $fd
    cp a                                          ; $69fc: $bf
    db $fd                                        ; $69fd: $fd
    cp a                                          ; $69fe: $bf
    ld [bc], a                                    ; $69ff: $02
    db $10                                        ; $6a00: $10
    ld [bc], a                                    ; $6a01: $02
    ld [$1402], sp                                ; $6a02: $08 $02 $14
    add d                                         ; $6a05: $82
    inc e                                         ; $6a06: $1c
    inc c                                         ; $6a07: $0c
    inc bc                                        ; $6a08: $03
    inc e                                         ; $6a09: $1c
    add l                                         ; $6a0a: $85
    inc b                                         ; $6a0b: $04
    inc e                                         ; $6a0c: $1c
    inc c                                         ; $6a0d: $0c
    jr jr_0dd_6a18                                ; $6a0e: $18 $08

    ld [bc], a                                    ; $6a10: $02
    jr jr_0dd_6a15                                ; $6a11: $18 $02

    inc e                                         ; $6a13: $1c
    sub [hl]                                      ; $6a14: $96

jr_0dd_6a15:
    ld a, [de]                                    ; $6a15: $1a
    ld e, $1a                                     ; $6a16: $1e $1a

jr_0dd_6a18:
    ld e, $1d                                     ; $6a18: $1e $1d
    rra                                           ; $6a1a: $1f
    add hl, de                                    ; $6a1b: $19
    rra                                           ; $6a1c: $1f
    dec e                                         ; $6a1d: $1d
    rra                                           ; $6a1e: $1f
    ld e, $12                                     ; $6a1f: $1e $12
    di                                            ; $6a21: $f3
    rst $38                                       ; $6a22: $ff
    ld l, l                                       ; $6a23: $6d
    ld a, a                                       ; $6a24: $7f
    ld e, l                                       ; $6a25: $5d
    ld a, a                                       ; $6a26: $7f
    db $fd                                        ; $6a27: $fd
    rst $38                                       ; $6a28: $ff
    ld c, a                                       ; $6a29: $4f
    ld a, a                                       ; $6a2a: $7f
    ld [bc], a                                    ; $6a2b: $02
    ld a, e                                       ; $6a2c: $7b
    ld [bc], a                                    ; $6a2d: $02
    jr c, @+$14                                   ; $6a2e: $38 $12

    nop                                           ; $6a30: $00
    add d                                         ; $6a31: $82
    rlca                                          ; $6a32: $07
    dec b                                         ; $6a33: $05
    ld [bc], a                                    ; $6a34: $02
    ld b, $04                                     ; $6a35: $06 $04
    rlca                                          ; $6a37: $07
    add d                                         ; $6a38: $82
    ld [bc], a                                    ; $6a39: $02
    ld b, $02                                     ; $6a3a: $06 $02
    inc b                                         ; $6a3c: $04
    inc d                                         ; $6a3d: $14
    nop                                           ; $6a3e: $00
    rst $38                                       ; $6a3f: $ff
    rlca                                          ; $6a40: $07
    ld bc, $07f8                                  ; $6a41: $01 $f8 $07
    ld a, [c]                                     ; $6a44: $f2
    ld bc, $fcec                                  ; $6a45: $01 $ec $fc
    add e                                         ; $6a48: $83
    ld [hl], $00                                  ; $6a49: $36 $00
    ld b, l                                       ; $6a4b: $45
    stop                                          ; $6a4c: $10 $00
    add e                                         ; $6a4e: $83
    inc d                                         ; $6a4f: $14
    nop                                           ; $6a50: $00
    ld [$000a], sp                                ; $6a51: $08 $0a $00
    rst $38                                       ; $6a54: $ff
    dec c                                         ; $6a55: $0d
    inc b                                         ; $6a56: $04
    ld hl, sp+$07                                 ; $6a57: $f8 $07
    ld a, [c]                                     ; $6a59: $f2
    ld bc, $faec                                  ; $6a5a: $01 $ec $fa
    db $ec                                        ; $6a5d: $ec
    rst $38                                       ; $6a5e: $ff
    db $fc                                        ; $6a5f: $fc
    db $fc                                        ; $6a60: $fc
    db $fc                                        ; $6a61: $fc
    cp $02                                        ; $6a62: $fe $02
    dec c                                         ; $6a64: $0d
    ld [bc], a                                    ; $6a65: $02
    inc de                                        ; $6a66: $13
    ld [bc], a                                    ; $6a67: $02
    ld h, $8c                                     ; $6a68: $26 $8c
    ccf                                           ; $6a6a: $3f
    add hl, sp                                    ; $6a6b: $39
    ccf                                           ; $6a6c: $3f
    ld l, $3f                                     ; $6a6d: $2e $3f
    ld [hl-], a                                   ; $6a6f: $32
    ccf                                           ; $6a70: $3f
    ld sp, $1b1f                                  ; $6a71: $31 $1f $1b
    rra                                           ; $6a74: $1f
    jr jr_0dd_6a79                                ; $6a75: $18 $02

    ccf                                           ; $6a77: $3f
    adc h                                         ; $6a78: $8c

jr_0dd_6a79:
    ld e, d                                       ; $6a79: $5a
    ld a, d                                       ; $6a7a: $7a
    ld e, l                                       ; $6a7b: $5d
    ld a, l                                       ; $6a7c: $7d
    cp d                                          ; $6a7d: $ba
    rst $38                                       ; $6a7e: $ff
    cp l                                          ; $6a7f: $bd
    rst $38                                       ; $6a80: $ff
    db $fd                                        ; $6a81: $fd
    cp a                                          ; $6a82: $bf
    ld a, l                                       ; $6a83: $7d
    ld a, a                                       ; $6a84: $7f
    ld [bc], a                                    ; $6a85: $02
    db $10                                        ; $6a86: $10
    ld [bc], a                                    ; $6a87: $02
    ld [$1402], sp                                ; $6a88: $08 $02 $14
    add d                                         ; $6a8b: $82
    inc e                                         ; $6a8c: $1c
    inc c                                         ; $6a8d: $0c
    inc bc                                        ; $6a8e: $03
    inc e                                         ; $6a8f: $1c
    add l                                         ; $6a90: $85
    inc b                                         ; $6a91: $04
    inc e                                         ; $6a92: $1c
    inc c                                         ; $6a93: $0c
    jr jr_0dd_6a9e                                ; $6a94: $18 $08

    ld [bc], a                                    ; $6a96: $02
    jr jr_0dd_6a9b                                ; $6a97: $18 $02

    inc e                                         ; $6a99: $1c
    adc c                                         ; $6a9a: $89

jr_0dd_6a9b:
    ld a, [de]                                    ; $6a9b: $1a
    ld e, $1a                                     ; $6a9c: $1e $1a

jr_0dd_6a9e:
    ld e, $1a                                     ; $6a9e: $1e $1a
    ld e, $1d                                     ; $6aa0: $1e $1d
    rra                                           ; $6aa2: $1f
    add hl, de                                    ; $6aa3: $19
    ld [bc], a                                    ; $6aa4: $02
    rra                                           ; $6aa5: $1f
    add [hl]                                      ; $6aa6: $86
    add hl, de                                    ; $6aa7: $19
    db $eb                                        ; $6aa8: $eb
    rst $38                                       ; $6aa9: $ff
    db $eb                                        ; $6aaa: $eb
    rst $38                                       ; $6aab: $ff
    rst $18                                       ; $6aac: $df
    inc bc                                        ; $6aad: $03
    rst $38                                       ; $6aae: $ff
    add d                                         ; $6aaf: $82
    sub [hl]                                      ; $6ab0: $96
    or $02                                        ; $6ab1: $f6 $02
    ldh a, [rNR14]                                ; $6ab3: $f0 $14
    nop                                           ; $6ab5: $00
    add d                                         ; $6ab6: $82
    inc bc                                        ; $6ab7: $03
    ld bc, $0204                                  ; $6ab8: $01 $04 $02
    ld a, [de]                                    ; $6abb: $1a
    nop                                           ; $6abc: $00
    rst $38                                       ; $6abd: $ff
    rlca                                          ; $6abe: $07
    ld bc, $07f8                                  ; $6abf: $01 $f8 $07
    ld a, [c]                                     ; $6ac2: $f2
    ld bc, $fced                                  ; $6ac3: $01 $ed $fc
    add e                                         ; $6ac6: $83
    ld [hl-], a                                   ; $6ac7: $32
    nop                                           ; $6ac8: $00
    ld h, l                                       ; $6ac9: $65
    stop                                          ; $6aca: $10 $00
    add e                                         ; $6acc: $83
    inc d                                         ; $6acd: $14
    nop                                           ; $6ace: $00
    ld [$000a], sp                                ; $6acf: $08 $0a $00
    rst $38                                       ; $6ad2: $ff
    dec c                                         ; $6ad3: $0d
    inc b                                         ; $6ad4: $04
    ld hl, sp+$07                                 ; $6ad5: $f8 $07
    ld a, [c]                                     ; $6ad7: $f2
    ld bc, $faeb                                  ; $6ad8: $01 $eb $fa
    db $eb                                        ; $6adb: $eb
    rst $38                                       ; $6adc: $ff
    ei                                            ; $6add: $fb
    ld a, [$fffb]                                 ; $6ade: $fa $fb $ff
    ld [bc], a                                    ; $6ae1: $02
    dec c                                         ; $6ae2: $0d
    ld [bc], a                                    ; $6ae3: $02
    ld [de], a                                    ; $6ae4: $12
    ld [bc], a                                    ; $6ae5: $02
    dec l                                         ; $6ae6: $2d
    adc h                                         ; $6ae7: $8c
    ccf                                           ; $6ae8: $3f
    ld [hl-], a                                   ; $6ae9: $32
    ccf                                           ; $6aea: $3f
    dec a                                         ; $6aeb: $3d
    ccf                                           ; $6aec: $3f
    inc h                                         ; $6aed: $24
    ccf                                           ; $6aee: $3f
    ld [hl], $1f                                  ; $6aef: $36 $1f
    inc de                                        ; $6af1: $13
    rra                                           ; $6af2: $1f
    jr jr_0dd_6af7                                ; $6af3: $18 $02

    ccf                                           ; $6af5: $3f
    adc h                                         ; $6af6: $8c

jr_0dd_6af7:
    ld e, d                                       ; $6af7: $5a
    ld a, d                                       ; $6af8: $7a
    ld e, l                                       ; $6af9: $5d
    ld a, l                                       ; $6afa: $7d
    ld e, d                                       ; $6afb: $5a
    ld a, a                                       ; $6afc: $7f
    cp l                                          ; $6afd: $bd
    rst $38                                       ; $6afe: $ff
    db $dd                                        ; $6aff: $dd
    rst $38                                       ; $6b00: $ff
    db $fd                                        ; $6b01: $fd
    cp a                                          ; $6b02: $bf
    ld [bc], a                                    ; $6b03: $02
    db $10                                        ; $6b04: $10
    ld [bc], a                                    ; $6b05: $02
    ld [$1402], sp                                ; $6b06: $08 $02 $14
    add d                                         ; $6b09: $82
    inc e                                         ; $6b0a: $1c
    inc c                                         ; $6b0b: $0c
    inc bc                                        ; $6b0c: $03
    inc e                                         ; $6b0d: $1c
    add l                                         ; $6b0e: $85
    inc b                                         ; $6b0f: $04
    inc e                                         ; $6b10: $1c
    inc c                                         ; $6b11: $0c
    jr jr_0dd_6b1c                                ; $6b12: $18 $08

    ld [bc], a                                    ; $6b14: $02
    jr jr_0dd_6b19                                ; $6b15: $18 $02

    inc e                                         ; $6b17: $1c
    adc c                                         ; $6b18: $89

jr_0dd_6b19:
    ld a, [de]                                    ; $6b19: $1a
    ld e, $1a                                     ; $6b1a: $1e $1a

jr_0dd_6b1c:
    ld e, $1a                                     ; $6b1c: $1e $1a
    ld e, $1d                                     ; $6b1e: $1e $1d
    rra                                           ; $6b20: $1f
    dec de                                        ; $6b21: $1b
    ld [bc], a                                    ; $6b22: $02
    rra                                           ; $6b23: $1f
    adc e                                         ; $6b24: $8b
    dec e                                         ; $6b25: $1d

jr_0dd_6b26:
    cp $bf                                        ; $6b26: $fe $bf
    ld a, e                                       ; $6b28: $7b
    ld e, a                                       ; $6b29: $5f
    dec sp                                        ; $6b2a: $3b
    ccf                                           ; $6b2b: $3f
    ld [hl], a                                    ; $6b2c: $77
    ld a, a                                       ; $6b2d: $7f
    dec h                                         ; $6b2e: $25
    dec a                                         ; $6b2f: $3d
    ld [bc], a                                    ; $6b30: $02
    inc a                                         ; $6b31: $3c
    inc d                                         ; $6b32: $14
    nop                                           ; $6b33: $00
    add e                                         ; $6b34: $83
    rra                                           ; $6b35: $1f
    dec e                                         ; $6b36: $1d
    ld c, $05                                     ; $6b37: $0e $05
    ld e, $82                                     ; $6b39: $1e $82
    inc c                                         ; $6b3b: $0c
    inc e                                         ; $6b3c: $1c
    ld [bc], a                                    ; $6b3d: $02
    jr @+$16                                      ; $6b3e: $18 $14

    nop                                           ; $6b40: $00
    rst $38                                       ; $6b41: $ff
    rlca                                          ; $6b42: $07
    ld bc, $07f8                                  ; $6b43: $01 $f8 $07
    ld a, [c]                                     ; $6b46: $f2
    ld bc, $fcec                                  ; $6b47: $01 $ec $fc
    add e                                         ; $6b4a: $83
    ld [hl], $00                                  ; $6b4b: $36 $00
    ld c, c                                       ; $6b4d: $49
    stop                                          ; $6b4e: $10 $00
    add e                                         ; $6b50: $83
    inc d                                         ; $6b51: $14
    nop                                           ; $6b52: $00
    ld [$000a], sp                                ; $6b53: $08 $0a $00
    rst $38                                       ; $6b56: $ff
    dec c                                         ; $6b57: $0d
    inc b                                         ; $6b58: $04
    ld hl, sp+$07                                 ; $6b59: $f8 $07
    ld a, [c]                                     ; $6b5b: $f2
    ld bc, $fbeb                                  ; $6b5c: $01 $eb $fb
    db $ec                                        ; $6b5f: $ec
    db $fd                                        ; $6b60: $fd
    ei                                            ; $6b61: $fb
    ld a, [$fcfb]                                 ; $6b62: $fa $fb $fc
    ld [bc], a                                    ; $6b65: $02
    ccf                                           ; $6b66: $3f
    ld [bc], a                                    ; $6b67: $02
    ld b, [hl]                                    ; $6b68: $46
    ld [bc], a                                    ; $6b69: $02
    sub e                                         ; $6b6a: $93
    adc h                                         ; $6b6b: $8c
    xor a                                         ; $6b6c: $af
    xor l                                         ; $6b6d: $ad
    rst $18                                       ; $6b6e: $df
    sub $7f                                       ; $6b6f: $d6 $7f
    ld [hl], b                                    ; $6b71: $70
    ld a, a                                       ; $6b72: $7f
    ld d, b                                       ; $6b73: $50
    ccf                                           ; $6b74: $3f
    ld sp, $383f                                  ; $6b75: $31 $3f $38
    ld [bc], a                                    ; $6b78: $02
    ld a, a                                       ; $6b79: $7f
    adc h                                         ; $6b7a: $8c
    and l                                         ; $6b7b: $a5
    db $fd                                        ; $6b7c: $fd
    xor [hl]                                      ; $6b7d: $ae
    cp $6d                                        ; $6b7e: $fe $6d
    ld a, a                                       ; $6b80: $7f
    ld l, $3f                                     ; $6b81: $2e $3f
    ld b, [hl]                                    ; $6b83: $46
    ld a, a                                       ; $6b84: $7f
    ld c, [hl]                                    ; $6b85: $4e
    ld a, a                                       ; $6b86: $7f
    inc b                                         ; $6b87: $04
    ld [bc], a                                    ; $6b88: $02
    ld [bc], a                                    ; $6b89: $02
    nop                                           ; $6b8a: $00
    ld [bc], a                                    ; $6b8b: $02
    ld [bc], a                                    ; $6b8c: $02
    add d                                         ; $6b8d: $82
    inc bc                                        ; $6b8e: $03
    ld bc, $0206                                  ; $6b8f: $01 $06 $02
    inc b                                         ; $6b92: $04
    nop                                           ; $6b93: $00
    ld a, [bc]                                    ; $6b94: $0a
    ld [bc], a                                    ; $6b95: $02
    add d                                         ; $6b96: $82
    cp $ce                                        ; $6b97: $fe $ce
    ld [bc], a                                    ; $6b99: $02
    jr nz, jr_0dd_6b26                            ; $6b9a: $20 $8a

    ccf                                           ; $6b9c: $3f

jr_0dd_6b9d:
    ld a, [hl-]                                   ; $6b9d: $3a
    ld a, [hl]                                    ; $6b9e: $7e
    ld a, a                                       ; $6b9f: $7f
    ld a, l                                       ; $6ba0: $7d
    ld a, a                                       ; $6ba1: $7f
    cp a                                          ; $6ba2: $bf
    rst $38                                       ; $6ba3: $ff
    call c, Call_000_02ff                         ; $6ba4: $dc $ff $02
    ccf                                           ; $6ba7: $3f
    inc d                                         ; $6ba8: $14
    nop                                           ; $6ba9: $00
    add d                                         ; $6baa: $82
    inc bc                                        ; $6bab: $03
    ld bc, $020a                                  ; $6bac: $01 $0a $02
    ld [de], a                                    ; $6baf: $12
    nop                                           ; $6bb0: $00
    rst $38                                       ; $6bb1: $ff
    rlca                                          ; $6bb2: $07
    ld bc, $07f8                                  ; $6bb3: $01 $f8 $07
    ld a, [c]                                     ; $6bb6: $f2
    ld bc, $fbec                                  ; $6bb7: $01 $ec $fb
    add a                                         ; $6bba: $87
    add hl, sp                                    ; $6bbb: $39
    nop                                           ; $6bbc: $00
    ld l, h                                       ; $6bbd: $6c
    nop                                           ; $6bbe: $00
    ld d, b                                       ; $6bbf: $50
    nop                                           ; $6bc0: $00
    jr nz, jr_0dd_6bcf                            ; $6bc1: $20 $0c

    nop                                           ; $6bc3: $00
    add e                                         ; $6bc4: $83
    ld [bc], a                                    ; $6bc5: $02
    nop                                           ; $6bc6: $00
    ld bc, $000a                                  ; $6bc7: $01 $0a $00
    rst $38                                       ; $6bca: $ff
    dec c                                         ; $6bcb: $0d
    inc b                                         ; $6bcc: $04
    ld hl, sp+$07                                 ; $6bcd: $f8 $07

jr_0dd_6bcf:
    ld a, [c]                                     ; $6bcf: $f2
    ld bc, $fbeb                                  ; $6bd0: $01 $eb $fb
    db $ec                                        ; $6bd3: $ec
    rst $38                                       ; $6bd4: $ff
    ei                                            ; $6bd5: $fb
    ld a, [$00fb]                                 ; $6bd6: $fa $fb $00
    ld [bc], a                                    ; $6bd9: $02
    ccf                                           ; $6bda: $3f
    ld [bc], a                                    ; $6bdb: $02
    ld b, [hl]                                    ; $6bdc: $46
    ld [bc], a                                    ; $6bdd: $02
    and a                                         ; $6bde: $a7
    sbc d                                         ; $6bdf: $9a
    rst $18                                       ; $6be0: $df
    reti                                          ; $6be1: $d9


    cp a                                          ; $6be2: $bf
    or [hl]                                       ; $6be3: $b6
    ld a, a                                       ; $6be4: $7f
    ld d, b                                       ; $6be5: $50
    ld a, a                                       ; $6be6: $7f
    ld h, b                                       ; $6be7: $60
    ccf                                           ; $6be8: $3f
    ld sp, $303f                                  ; $6be9: $31 $3f $30
    ld e, a                                       ; $6bec: $5f
    ld a, a                                       ; $6bed: $7f
    or l                                          ; $6bee: $b5
    db $fd                                        ; $6bef: $fd
    halt                                          ; $6bf0: $76
    ld a, [hl]                                    ; $6bf1: $7e
    inc sp                                        ; $6bf2: $33
    ccf                                           ; $6bf3: $3f
    halt                                          ; $6bf4: $76
    ld a, a                                       ; $6bf5: $7f
    ld a, c                                       ; $6bf6: $79
    ld a, a                                       ; $6bf7: $7f
    ld a, l                                       ; $6bf8: $7d
    ld a, a                                       ; $6bf9: $7f
    ld [$8208], sp                                ; $6bfa: $08 $08 $82
    inc c                                         ; $6bfd: $0c
    inc b                                         ; $6bfe: $04
    ld [bc], a                                    ; $6bff: $02
    inc c                                         ; $6c00: $0c
    inc b                                         ; $6c01: $04
    ld [$0004], sp                                ; $6c02: $08 $04 $00
    inc b                                         ; $6c05: $04
    ld [$0a02], sp                                ; $6c06: $08 $02 $0a
    add [hl]                                      ; $6c09: $86
    rrca                                          ; $6c0a: $0f
    dec c                                         ; $6c0b: $0d
    ld c, $02                                     ; $6c0c: $0e $02
    db $fc                                        ; $6c0e: $fc
    db $f4                                        ; $6c0f: $f4
    ld [bc], a                                    ; $6c10: $02
    jr c, jr_0dd_6b9d                             ; $6c11: $38 $8a

    ld a, [hl]                                    ; $6c13: $7e
    ld a, a                                       ; $6c14: $7f
    ld a, l                                       ; $6c15: $7d
    ld a, a                                       ; $6c16: $7f
    cp e                                          ; $6c17: $bb
    rst $38                                       ; $6c18: $ff
    cp a                                          ; $6c19: $bf
    rst $38                                       ; $6c1a: $ff
    ld [hl], d                                    ; $6c1b: $72
    ld a, [hl]                                    ; $6c1c: $7e
    ld [bc], a                                    ; $6c1d: $02
    ld c, $14                                     ; $6c1e: $0e $14
    nop                                           ; $6c20: $00
    ld [bc], a                                    ; $6c21: $02
    jr c, jr_0dd_6c26                             ; $6c22: $38 $02

    ld a, $84                                     ; $6c24: $3e $84

jr_0dd_6c26:
    add hl, sp                                    ; $6c26: $39
    ccf                                           ; $6c27: $3f
    ld [hl], $3e                                  ; $6c28: $36 $3e
    ld [bc], a                                    ; $6c2a: $02
    jr c, jr_0dd_6c41                             ; $6c2b: $38 $14

    nop                                           ; $6c2d: $00
    rst $38                                       ; $6c2e: $ff
    rlca                                          ; $6c2f: $07
    ld bc, $07f8                                  ; $6c30: $01 $f8 $07
    ld a, [c]                                     ; $6c33: $f2
    ld bc, $fbec                                  ; $6c34: $01 $ec $fb
    add a                                         ; $6c37: $87
    add hl, sp                                    ; $6c38: $39
    nop                                           ; $6c39: $00
    ld e, b                                       ; $6c3a: $58
    nop                                           ; $6c3b: $00
    jr nz, jr_0dd_6c3e                            ; $6c3c: $20 $00

jr_0dd_6c3e:
    ld b, b                                       ; $6c3e: $40
    inc c                                         ; $6c3f: $0c
    nop                                           ; $6c40: $00

jr_0dd_6c41:
    add e                                         ; $6c41: $83
    ld [bc], a                                    ; $6c42: $02
    nop                                           ; $6c43: $00
    ld bc, $000a                                  ; $6c44: $01 $0a $00
    rst $38                                       ; $6c47: $ff
    dec c                                         ; $6c48: $0d
    inc b                                         ; $6c49: $04
    ld hl, sp+$07                                 ; $6c4a: $f8 $07
    ld a, [c]                                     ; $6c4c: $f2
    ld bc, $fbec                                  ; $6c4d: $01 $ec $fb
    db $ed                                        ; $6c50: $ed
    cp $fc                                        ; $6c51: $fe $fc
    ld a, [$fefc]                                 ; $6c53: $fa $fc $fe
    ld [bc], a                                    ; $6c56: $02
    ccf                                           ; $6c57: $3f
    ld [bc], a                                    ; $6c58: $02
    ld b, [hl]                                    ; $6c59: $46
    ld [bc], a                                    ; $6c5a: $02
    and a                                         ; $6c5b: $a7
    sbc d                                         ; $6c5c: $9a
    rst $08                                       ; $6c5d: $cf
    ret                                           ; $6c5e: $c9


    cp a                                          ; $6c5f: $bf
    or [hl]                                       ; $6c60: $b6
    ld a, a                                       ; $6c61: $7f
    ld d, b                                       ; $6c62: $50
    ld a, a                                       ; $6c63: $7f
    ld h, b                                       ; $6c64: $60
    ccf                                           ; $6c65: $3f
    ld sp, $707f                                  ; $6c66: $31 $7f $70
    sbc a                                         ; $6c69: $9f
    rst $38                                       ; $6c6a: $ff
    ld [hl], l                                    ; $6c6b: $75
    ld a, l                                       ; $6c6c: $7d
    ld [hl], $3e                                  ; $6c6d: $36 $3e
    dec h                                         ; $6c6f: $25
    ccf                                           ; $6c70: $3f
    ld [hl], $3f                                  ; $6c71: $36 $3f
    ld [hl], d                                    ; $6c73: $72
    ld a, a                                       ; $6c74: $7f
    ld a, e                                       ; $6c75: $7b
    ld a, l                                       ; $6c76: $7d
    ld [$8204], sp                                ; $6c77: $08 $04 $82
    ld b, $02                                     ; $6c7a: $06 $02
    ld [bc], a                                    ; $6c7c: $02
    ld b, $04                                     ; $6c7d: $06 $04
    inc b                                         ; $6c7f: $04
    inc b                                         ; $6c80: $04
    nop                                           ; $6c81: $00
    ld b, $04                                     ; $6c82: $06 $04
    ld [bc], a                                    ; $6c84: $02
    ld b, $84                                     ; $6c85: $06 $84
    rlca                                          ; $6c87: $07
    ld bc, $e6fe                                  ; $6c88: $01 $fe $e6
    ld [bc], a                                    ; $6c8b: $02
    jr nc, jr_0dd_6c90                            ; $6c8c: $30 $02

    ld a, a                                       ; $6c8e: $7f
    add [hl]                                      ; $6c8f: $86

jr_0dd_6c90:
    cp [hl]                                       ; $6c90: $be
    rst $38                                       ; $6c91: $ff
    ld a, l                                       ; $6c92: $7d
    ld a, a                                       ; $6c93: $7f
    ld [hl], a                                    ; $6c94: $77
    ld a, a                                       ; $6c95: $7f
    ld [bc], a                                    ; $6c96: $02
    jr jr_0dd_6caf                                ; $6c97: $18 $16

    nop                                           ; $6c99: $00
    inc b                                         ; $6c9a: $04
    ld c, $81                                     ; $6c9b: $0e $81
    add hl, bc                                    ; $6c9d: $09
    inc bc                                        ; $6c9e: $03
    rrca                                          ; $6c9f: $0f
    ld d, $00                                     ; $6ca0: $16 $00
    rst $38                                       ; $6ca2: $ff
    rlca                                          ; $6ca3: $07
    ld bc, $07f8                                  ; $6ca4: $01 $f8 $07
    ld a, [c]                                     ; $6ca7: $f2
    ld bc, $fbed                                  ; $6ca8: $01 $ed $fb
    add a                                         ; $6cab: $87
    add hl, sp                                    ; $6cac: $39
    nop                                           ; $6cad: $00
    ld e, b                                       ; $6cae: $58

jr_0dd_6caf:
    nop                                           ; $6caf: $00
    jr nc, jr_0dd_6cb2                            ; $6cb0: $30 $00

jr_0dd_6cb2:
    ld b, b                                       ; $6cb2: $40
    inc c                                         ; $6cb3: $0c
    nop                                           ; $6cb4: $00
    add e                                         ; $6cb5: $83
    ld [bc], a                                    ; $6cb6: $02
    nop                                           ; $6cb7: $00
    ld bc, $000a                                  ; $6cb8: $01 $0a $00
    rst $38                                       ; $6cbb: $ff
    dec c                                         ; $6cbc: $0d
    inc b                                         ; $6cbd: $04
    ld hl, sp+$07                                 ; $6cbe: $f8 $07
    ld a, [c]                                     ; $6cc0: $f2
    ld bc, $fbeb                                  ; $6cc1: $01 $eb $fb
    db $ec                                        ; $6cc4: $ec
    db $fd                                        ; $6cc5: $fd
    ei                                            ; $6cc6: $fb
    ei                                            ; $6cc7: $fb
    ei                                            ; $6cc8: $fb
    db $fd                                        ; $6cc9: $fd
    ld [bc], a                                    ; $6cca: $02
    ccf                                           ; $6ccb: $3f
    ld [bc], a                                    ; $6ccc: $02
    ld b, [hl]                                    ; $6ccd: $46
    ld [bc], a                                    ; $6cce: $02
    sub e                                         ; $6ccf: $93
    adc h                                         ; $6cd0: $8c
    xor a                                         ; $6cd1: $af
    xor l                                         ; $6cd2: $ad
    rst $18                                       ; $6cd3: $df
    sub $7f                                       ; $6cd4: $d6 $7f
    ld [hl], b                                    ; $6cd6: $70
    ld a, a                                       ; $6cd7: $7f
    ld d, b                                       ; $6cd8: $50
    ccf                                           ; $6cd9: $3f
    ld sp, $181f                                  ; $6cda: $31 $1f $18
    ld [bc], a                                    ; $6cdd: $02
    ccf                                           ; $6cde: $3f
    adc h                                         ; $6cdf: $8c
    ld d, l                                       ; $6ce0: $55
    ld a, l                                       ; $6ce1: $7d
    and [hl]                                      ; $6ce2: $a6
    cp $65                                        ; $6ce3: $fe $65
    ld a, a                                       ; $6ce5: $7f
    ld l, $3f                                     ; $6ce6: $2e $3f
    ld h, $3f                                     ; $6ce8: $26 $3f
    ld l, $3f                                     ; $6cea: $2e $3f
    inc b                                         ; $6cec: $04
    ld [bc], a                                    ; $6ced: $02
    ld [bc], a                                    ; $6cee: $02
    nop                                           ; $6cef: $00
    ld [bc], a                                    ; $6cf0: $02
    ld [bc], a                                    ; $6cf1: $02
    add d                                         ; $6cf2: $82
    inc bc                                        ; $6cf3: $03
    ld bc, $0206                                  ; $6cf4: $01 $06 $02
    inc b                                         ; $6cf7: $04
    nop                                           ; $6cf8: $00
    ld a, [bc]                                    ; $6cf9: $0a
    ld [bc], a                                    ; $6cfa: $02
    add d                                         ; $6cfb: $82
    db $fd                                        ; $6cfc: $fd
    rst $08                                       ; $6cfd: $cf
    ld [bc], a                                    ; $6cfe: $02
    ld b, b                                       ; $6cff: $40
    add h                                         ; $6d00: $84
    ld a, a                                       ; $6d01: $7f
    ld [hl], h                                    ; $6d02: $74
    ld a, [hl]                                    ; $6d03: $7e
    ld a, a                                       ; $6d04: $7f
    ld [bc], a                                    ; $6d05: $02
    rst $38                                       ; $6d06: $ff
    add h                                         ; $6d07: $84
    cp [hl]                                       ; $6d08: $be
    rst $38                                       ; $6d09: $ff
    ld e, a                                       ; $6d0a: $5f
    ld a, a                                       ; $6d0b: $7f
    ld [bc], a                                    ; $6d0c: $02
    jr c, @+$16                                   ; $6d0d: $38 $14

    nop                                           ; $6d0f: $00
    add c                                         ; $6d10: $81
    ld bc, $0303                                  ; $6d11: $01 $03 $03
    ld [bc], a                                    ; $6d14: $02
    ld [bc], a                                    ; $6d15: $02
    ld [bc], a                                    ; $6d16: $02
    inc bc                                        ; $6d17: $03
    ld [bc], a                                    ; $6d18: $02
    ld [bc], a                                    ; $6d19: $02
    inc d                                         ; $6d1a: $14
    nop                                           ; $6d1b: $00
    rst $38                                       ; $6d1c: $ff
    rlca                                          ; $6d1d: $07
    ld bc, $07f8                                  ; $6d1e: $01 $f8 $07
    ld a, [c]                                     ; $6d21: $f2
    ld bc, $fbec                                  ; $6d22: $01 $ec $fb
    add a                                         ; $6d25: $87
    add hl, sp                                    ; $6d26: $39
    nop                                           ; $6d27: $00
    ld l, h                                       ; $6d28: $6c
    nop                                           ; $6d29: $00
    ld d, b                                       ; $6d2a: $50
    nop                                           ; $6d2b: $00
    jr nz, jr_0dd_6d3a                            ; $6d2c: $20 $0c

    nop                                           ; $6d2e: $00
    add e                                         ; $6d2f: $83
    ld [bc], a                                    ; $6d30: $02
    nop                                           ; $6d31: $00
    ld bc, $000a                                  ; $6d32: $01 $0a $00
    rst $38                                       ; $6d35: $ff
    dec c                                         ; $6d36: $0d
    inc b                                         ; $6d37: $04
    ld hl, sp+$07                                 ; $6d38: $f8 $07

jr_0dd_6d3a:
    ld a, [c]                                     ; $6d3a: $f2
    ld bc, $fbeb                                  ; $6d3b: $01 $eb $fb
    db $ec                                        ; $6d3e: $ec
    db $fd                                        ; $6d3f: $fd
    ei                                            ; $6d40: $fb
    ei                                            ; $6d41: $fb
    ei                                            ; $6d42: $fb
    nop                                           ; $6d43: $00
    ld [bc], a                                    ; $6d44: $02
    ccf                                           ; $6d45: $3f
    ld [bc], a                                    ; $6d46: $02
    ld h, d                                       ; $6d47: $62
    ld [bc], a                                    ; $6d48: $02
    sbc e                                         ; $6d49: $9b
    sbc d                                         ; $6d4a: $9a
    and a                                         ; $6d4b: $a7
    and l                                         ; $6d4c: $a5
    rst $18                                       ; $6d4d: $df
    db $db                                        ; $6d4e: $db
    ld a, a                                       ; $6d4f: $7f
    ld [hl], b                                    ; $6d50: $70
    ld a, a                                       ; $6d51: $7f
    ld l, b                                       ; $6d52: $68
    ccf                                           ; $6d53: $3f
    jr nc, jr_0dd_6d95                            ; $6d54: $30 $3f

    inc a                                         ; $6d56: $3c
    ld e, a                                       ; $6d57: $5f
    ld a, a                                       ; $6d58: $7f
    or l                                          ; $6d59: $b5
    db $fd                                        ; $6d5a: $fd
    ld l, [hl]                                    ; $6d5b: $6e
    ld a, [hl]                                    ; $6d5c: $7e
    ld c, l                                       ; $6d5d: $4d
    ld a, a                                       ; $6d5e: $7f
    ld e, [hl]                                    ; $6d5f: $5e
    ld a, a                                       ; $6d60: $7f
    ld c, [hl]                                    ; $6d61: $4e
    ld a, a                                       ; $6d62: $7f
    ld a, [hl]                                    ; $6d63: $7e
    ld a, a                                       ; $6d64: $7f
    ld [bc], a                                    ; $6d65: $02
    ld [bc], a                                    ; $6d66: $02
    inc b                                         ; $6d67: $04
    nop                                           ; $6d68: $00
    ld [bc], a                                    ; $6d69: $02
    ld [bc], a                                    ; $6d6a: $02
    add d                                         ; $6d6b: $82
    inc bc                                        ; $6d6c: $03
    ld bc, $0206                                  ; $6d6d: $01 $06 $02
    inc b                                         ; $6d70: $04
    nop                                           ; $6d71: $00
    ld [$0202], sp                                ; $6d72: $08 $02 $02
    inc bc                                        ; $6d75: $03
    add d                                         ; $6d76: $82
    ei                                            ; $6d77: $fb
    ccf                                           ; $6d78: $3f
    ld [bc], a                                    ; $6d79: $02
    ld b, b                                       ; $6d7a: $40
    adc d                                         ; $6d7b: $8a
    ld a, [hl]                                    ; $6d7c: $7e
    ld d, a                                       ; $6d7d: $57
    db $fd                                        ; $6d7e: $fd
    ei                                            ; $6d7f: $fb

jr_0dd_6d80:
    cp l                                          ; $6d80: $bd
    rst $38                                       ; $6d81: $ff
    cp e                                          ; $6d82: $bb
    rst $38                                       ; $6d83: $ff
    rst $18                                       ; $6d84: $df
    rst $38                                       ; $6d85: $ff
    ld [bc], a                                    ; $6d86: $02
    dec a                                         ; $6d87: $3d
    inc d                                         ; $6d88: $14
    nop                                           ; $6d89: $00
    ld [bc], a                                    ; $6d8a: $02
    db $10                                        ; $6d8b: $10
    add d                                         ; $6d8c: $82
    ld [$0218], sp                                ; $6d8d: $08 $18 $02
    ld e, $82                                     ; $6d90: $1e $82
    add hl, de                                    ; $6d92: $19
    rra                                           ; $6d93: $1f
    ld [bc], a                                    ; $6d94: $02

jr_0dd_6d95:
    ld e, $02                                     ; $6d95: $1e $02
    jr @+$14                                      ; $6d97: $18 $12

    nop                                           ; $6d99: $00
    rst $38                                       ; $6d9a: $ff
    rlca                                          ; $6d9b: $07
    ld bc, $07f8                                  ; $6d9c: $01 $f8 $07
    ld a, [c]                                     ; $6d9f: $f2
    ld bc, $fbec                                  ; $6da0: $01 $ec $fb
    add a                                         ; $6da3: $87
    dec e                                         ; $6da4: $1d
    nop                                           ; $6da5: $00
    ld h, h                                       ; $6da6: $64
    nop                                           ; $6da7: $00
    ld e, b                                       ; $6da8: $58
    nop                                           ; $6da9: $00
    jr nz, jr_0dd_6db8                            ; $6daa: $20 $0c

    nop                                           ; $6dac: $00
    add e                                         ; $6dad: $83
    ld [bc], a                                    ; $6dae: $02
    nop                                           ; $6daf: $00
    ld bc, $000a                                  ; $6db0: $01 $0a $00
    rst $38                                       ; $6db3: $ff
    dec c                                         ; $6db4: $0d
    inc b                                         ; $6db5: $04
    ld hl, sp+$07                                 ; $6db6: $f8 $07

jr_0dd_6db8:
    ld a, [c]                                     ; $6db8: $f2
    ld bc, $fbec                                  ; $6db9: $01 $ec $fb
    db $ed                                        ; $6dbc: $ed
    db $fd                                        ; $6dbd: $fd
    db $fc                                        ; $6dbe: $fc
    ld a, [$fefc]                                 ; $6dbf: $fa $fc $fe
    ld [bc], a                                    ; $6dc2: $02
    ccf                                           ; $6dc3: $3f
    ld [bc], a                                    ; $6dc4: $02
    ld h, d                                       ; $6dc5: $62
    ld [bc], a                                    ; $6dc6: $02
    sbc e                                         ; $6dc7: $9b
    sbc d                                         ; $6dc8: $9a
    and a                                         ; $6dc9: $a7
    and l                                         ; $6dca: $a5
    rst $18                                       ; $6dcb: $df
    db $db                                        ; $6dcc: $db
    ld a, a                                       ; $6dcd: $7f
    ld [hl], b                                    ; $6dce: $70
    ld a, a                                       ; $6dcf: $7f
    ld l, b                                       ; $6dd0: $68
    ccf                                           ; $6dd1: $3f
    jr nc, jr_0dd_6e53                            ; $6dd2: $30 $7f

    ld a, h                                       ; $6dd4: $7c
    sbc a                                         ; $6dd5: $9f
    rst $38                                       ; $6dd6: $ff
    ld [hl], l                                    ; $6dd7: $75
    ld a, l                                       ; $6dd8: $7d
    ld h, $3e                                     ; $6dd9: $26 $3e
    dec h                                         ; $6ddb: $25
    ccf                                           ; $6ddc: $3f
    ld l, $3f                                     ; $6ddd: $2e $3f
    ld l, [hl]                                    ; $6ddf: $6e
    ld a, a                                       ; $6de0: $7f
    ld h, [hl]                                    ; $6de1: $66
    ld a, a                                       ; $6de2: $7f
    ld [bc], a                                    ; $6de3: $02
    ld [bc], a                                    ; $6de4: $02
    inc b                                         ; $6de5: $04
    nop                                           ; $6de6: $00
    ld [bc], a                                    ; $6de7: $02
    ld [bc], a                                    ; $6de8: $02
    add d                                         ; $6de9: $82
    inc bc                                        ; $6dea: $03
    ld bc, $0206                                  ; $6deb: $01 $06 $02
    inc b                                         ; $6dee: $04
    nop                                           ; $6def: $00
    ld a, [bc]                                    ; $6df0: $0a
    ld [bc], a                                    ; $6df1: $02
    add d                                         ; $6df2: $82
    ld a, [$027e]                                 ; $6df3: $fa $7e $02
    jr nz, jr_0dd_6d80                            ; $6df6: $20 $88

    ld a, a                                       ; $6df8: $7f

jr_0dd_6df9:
    ld [hl], a                                    ; $6df9: $77
    ld a, a                                       ; $6dfa: $7f
    ld [hl], a                                    ; $6dfb: $77
    cp [hl]                                       ; $6dfc: $be
    ei                                            ; $6dfd: $fb
    cp a                                          ; $6dfe: $bf
    rst $38                                       ; $6dff: $ff
    ld [bc], a                                    ; $6e00: $02
    ld a, a                                       ; $6e01: $7f
    ld d, $00                                     ; $6e02: $16 $00
    add e                                         ; $6e04: $83
    inc b                                         ; $6e05: $04
    inc c                                         ; $6e06: $0c
    ld b, $03                                     ; $6e07: $06 $03
    ld c, $81                                     ; $6e09: $0e $81
    ld bc, $0f03                                  ; $6e0b: $01 $03 $0f
    inc d                                         ; $6e0e: $14
    nop                                           ; $6e0f: $00
    rst $38                                       ; $6e10: $ff
    rlca                                          ; $6e11: $07
    ld bc, $07f8                                  ; $6e12: $01 $f8 $07
    ld a, [c]                                     ; $6e15: $f2
    ld bc, $fbed                                  ; $6e16: $01 $ed $fb
    add a                                         ; $6e19: $87
    dec e                                         ; $6e1a: $1d
    nop                                           ; $6e1b: $00
    ld h, h                                       ; $6e1c: $64
    nop                                           ; $6e1d: $00
    ld e, b                                       ; $6e1e: $58
    nop                                           ; $6e1f: $00
    jr nz, jr_0dd_6e2e                            ; $6e20: $20 $0c

    nop                                           ; $6e22: $00
    add e                                         ; $6e23: $83
    ld [bc], a                                    ; $6e24: $02
    nop                                           ; $6e25: $00
    ld bc, $000a                                  ; $6e26: $01 $0a $00
    rst $38                                       ; $6e29: $ff
    dec c                                         ; $6e2a: $0d
    inc b                                         ; $6e2b: $04
    ld hl, sp+$07                                 ; $6e2c: $f8 $07

jr_0dd_6e2e:
    ld a, [c]                                     ; $6e2e: $f2
    ld bc, $fbeb                                  ; $6e2f: $01 $eb $fb
    db $ec                                        ; $6e32: $ec
    db $fd                                        ; $6e33: $fd
    ei                                            ; $6e34: $fb
    ld a, [$fdfb]                                 ; $6e35: $fa $fb $fd
    ld [bc], a                                    ; $6e38: $02
    ccf                                           ; $6e39: $3f
    ld [bc], a                                    ; $6e3a: $02
    ld b, [hl]                                    ; $6e3b: $46
    ld [bc], a                                    ; $6e3c: $02
    sub e                                         ; $6e3d: $93
    adc h                                         ; $6e3e: $8c
    xor a                                         ; $6e3f: $af
    xor l                                         ; $6e40: $ad
    rst $18                                       ; $6e41: $df
    sub $7f                                       ; $6e42: $d6 $7f
    ld [hl], b                                    ; $6e44: $70
    ld a, a                                       ; $6e45: $7f
    ld d, b                                       ; $6e46: $50
    ccf                                           ; $6e47: $3f
    ld sp, $181f                                  ; $6e48: $31 $1f $18
    ld [bc], a                                    ; $6e4b: $02
    ccf                                           ; $6e4c: $3f
    adc h                                         ; $6e4d: $8c
    ld d, l                                       ; $6e4e: $55
    ld a, l                                       ; $6e4f: $7d
    and [hl]                                      ; $6e50: $a6
    cp $65                                        ; $6e51: $fe $65

jr_0dd_6e53:
    ld a, a                                       ; $6e53: $7f
    ld l, $3f                                     ; $6e54: $2e $3f
    ld [hl], $3f                                  ; $6e56: $36 $3f
    ld [hl], d                                    ; $6e58: $72
    ld a, a                                       ; $6e59: $7f
    inc b                                         ; $6e5a: $04
    ld [bc], a                                    ; $6e5b: $02
    ld [bc], a                                    ; $6e5c: $02
    nop                                           ; $6e5d: $00
    ld [bc], a                                    ; $6e5e: $02
    ld [bc], a                                    ; $6e5f: $02
    add d                                         ; $6e60: $82
    inc bc                                        ; $6e61: $03
    ld bc, $0206                                  ; $6e62: $01 $06 $02
    inc b                                         ; $6e65: $04
    nop                                           ; $6e66: $00
    ld a, [bc]                                    ; $6e67: $0a
    ld [bc], a                                    ; $6e68: $02
    add d                                         ; $6e69: $82
    rst $38                                       ; $6e6a: $ff
    pop af                                        ; $6e6b: $f1
    ld [bc], a                                    ; $6e6c: $02
    jr nz, jr_0dd_6df9                            ; $6e6d: $20 $8a

    ccf                                           ; $6e6f: $3f
    dec a                                         ; $6e70: $3d
    ld a, [hl]                                    ; $6e71: $7e
    ld a, a                                       ; $6e72: $7f
    cp l                                          ; $6e73: $bd
    rst $38                                       ; $6e74: $ff
    cp a                                          ; $6e75: $bf
    rst $38                                       ; $6e76: $ff
    ld a, h                                       ; $6e77: $7c
    ld a, a                                       ; $6e78: $7f
    ld [bc], a                                    ; $6e79: $02
    rra                                           ; $6e7a: $1f
    inc d                                         ; $6e7b: $14
    nop                                           ; $6e7c: $00
    ld [bc], a                                    ; $6e7d: $02
    rlca                                          ; $6e7e: $07
    ld [bc], a                                    ; $6e7f: $02
    ld b, $81                                     ; $6e80: $06 $81
    ld [bc], a                                    ; $6e82: $02
    inc bc                                        ; $6e83: $03
    ld b, $81                                     ; $6e84: $06 $81
    ld [bc], a                                    ; $6e86: $02
    inc bc                                        ; $6e87: $03
    ld b, $12                                     ; $6e88: $06 $12
    nop                                           ; $6e8a: $00
    rst $38                                       ; $6e8b: $ff
    rlca                                          ; $6e8c: $07
    ld bc, $07f8                                  ; $6e8d: $01 $f8 $07
    ld a, [c]                                     ; $6e90: $f2
    ld bc, $fbec                                  ; $6e91: $01 $ec $fb
    add a                                         ; $6e94: $87
    add hl, sp                                    ; $6e95: $39
    nop                                           ; $6e96: $00
    ld l, h                                       ; $6e97: $6c
    nop                                           ; $6e98: $00
    ld d, b                                       ; $6e99: $50
    nop                                           ; $6e9a: $00
    jr nz, jr_0dd_6ea9                            ; $6e9b: $20 $0c

    nop                                           ; $6e9d: $00
    add e                                         ; $6e9e: $83
    ld [bc], a                                    ; $6e9f: $02
    nop                                           ; $6ea0: $00
    ld bc, $000a                                  ; $6ea1: $01 $0a $00
    rst $38                                       ; $6ea4: $ff
    dec c                                         ; $6ea5: $0d
    inc b                                         ; $6ea6: $04
    ei                                            ; $6ea7: $fb
    dec b                                         ; $6ea8: $05

jr_0dd_6ea9:
    rst $30                                       ; $6ea9: $f7
    cp $eb                                        ; $6eaa: $fe $eb
    ld a, [$ffeb]                                 ; $6eac: $fa $eb $ff
    ei                                            ; $6eaf: $fb
    ld a, [$fffb]                                 ; $6eb0: $fa $fb $ff
    ld [bc], a                                    ; $6eb3: $02
    rrca                                          ; $6eb4: $0f
    ld [bc], a                                    ; $6eb5: $02
    ld de, $2002                                  ; $6eb6: $11 $02 $20
    ld [bc], a                                    ; $6eb9: $02
    jr z, jr_0dd_6ebe                             ; $6eba: $28 $02

    ld [hl], b                                    ; $6ebc: $70
    ld [bc], a                                    ; $6ebd: $02

jr_0dd_6ebe:
    ld l, b                                       ; $6ebe: $68
    ld [bc], a                                    ; $6ebf: $02
    ld [hl-], a                                   ; $6ec0: $32
    ld [bc], a                                    ; $6ec1: $02
    ld [hl], b                                    ; $6ec2: $70
    ld [bc], a                                    ; $6ec3: $02
    ld l, b                                       ; $6ec4: $68
    ld [bc], a                                    ; $6ec5: $02
    dec [hl]                                      ; $6ec6: $35
    adc h                                         ; $6ec7: $8c
    ld l, a                                       ; $6ec8: $6f
    ld a, a                                       ; $6ec9: $7f
    ld e, b                                       ; $6eca: $58
    ld a, a                                       ; $6ecb: $7f
    ld e, h                                       ; $6ecc: $5c
    ld a, a                                       ; $6ecd: $7f
    ld e, a                                       ; $6ece: $5f
    ld a, a                                       ; $6ecf: $7f
    sbc a                                         ; $6ed0: $9f
    rst $38                                       ; $6ed1: $ff
    sbc a                                         ; $6ed2: $9f
    rst $38                                       ; $6ed3: $ff
    ld [bc], a                                    ; $6ed4: $02
    db $10                                        ; $6ed5: $10
    ld [bc], a                                    ; $6ed6: $02
    ld [$0404], sp                                ; $6ed7: $08 $04 $04
    ld [bc], a                                    ; $6eda: $02
    ld [bc], a                                    ; $6edb: $02
    ld [bc], a                                    ; $6edc: $02
    ld [de], a                                    ; $6edd: $12
    ld [bc], a                                    ; $6ede: $02
    inc d                                         ; $6edf: $14
    ld [bc], a                                    ; $6ee0: $02
    ld a, [bc]                                    ; $6ee1: $0a
    ld [bc], a                                    ; $6ee2: $02
    ld b, $02                                     ; $6ee3: $06 $02
    inc c                                         ; $6ee5: $0c
    adc [hl]                                      ; $6ee6: $8e
    ld d, $1e                                     ; $6ee7: $16 $1e
    ld a, [bc]                                    ; $6ee9: $0a
    ld e, $1a                                     ; $6eea: $1e $1a
    ld e, $0a                                     ; $6eec: $1e $0a
    ld e, $09                                     ; $6eee: $1e $09
    rra                                           ; $6ef0: $1f
    add hl, de                                    ; $6ef1: $19
    rra                                           ; $6ef2: $1f
    cp a                                          ; $6ef3: $bf
    rst $38                                       ; $6ef4: $ff
    ld [bc], a                                    ; $6ef5: $02
    ld e, a                                       ; $6ef6: $5f
    ld [bc], a                                    ; $6ef7: $02
    ccf                                           ; $6ef8: $3f
    ld [bc], a                                    ; $6ef9: $02
    ld a, a                                       ; $6efa: $7f
    add h                                         ; $6efb: $84
    ld l, a                                       ; $6efc: $6f
    ld a, a                                       ; $6efd: $7f
    ld a, b                                       ; $6efe: $78
    ld a, a                                       ; $6eff: $7f
    ld [bc], a                                    ; $6f00: $02
    ccf                                           ; $6f01: $3f
    ld [de], a                                    ; $6f02: $12
    nop                                           ; $6f03: $00
    add d                                         ; $6f04: $82
    dec c                                         ; $6f05: $0d
    rra                                           ; $6f06: $1f
    ld [bc], a                                    ; $6f07: $02
    ld a, [de]                                    ; $6f08: $1a
    adc b                                         ; $6f09: $88
    inc d                                         ; $6f0a: $14
    inc e                                         ; $6f0b: $1c
    ld a, [de]                                    ; $6f0c: $1a
    ld e, $16                                     ; $6f0d: $1e $16
    ld e, $0e                                     ; $6f0f: $1e $0e
    ld e, $02                                     ; $6f11: $1e $02
    inc e                                         ; $6f13: $1c
    ld [de], a                                    ; $6f14: $12
    nop                                           ; $6f15: $00
    rst $38                                       ; $6f16: $ff
    rlca                                          ; $6f17: $07
    ld bc, $07f8                                  ; $6f18: $01 $f8 $07
    ld a, [c]                                     ; $6f1b: $f2
    ld bc, $fdec                                  ; $6f1c: $01 $ec $fd
    sub d                                         ; $6f1f: $92
    nop                                           ; $6f20: $00
    ld [hl], h                                    ; $6f21: $74
    nop                                           ; $6f22: $00
    cp $00                                        ; $6f23: $fe $00
    cp [hl]                                       ; $6f25: $be
    nop                                           ; $6f26: $00
    ld a, a                                       ; $6f27: $7f
    nop                                           ; $6f28: $00
    cp e                                          ; $6f29: $bb
    nop                                           ; $6f2a: $00
    ld l, d                                       ; $6f2b: $6a
    nop                                           ; $6f2c: $00
    ld a, l                                       ; $6f2d: $7d
    nop                                           ; $6f2e: $00
    cp [hl]                                       ; $6f2f: $be
    nop                                           ; $6f30: $00
    ld d, h                                       ; $6f31: $54
    ld c, $00                                     ; $6f32: $0e $00
    rst $38                                       ; $6f34: $ff
    dec c                                         ; $6f35: $0d
    inc b                                         ; $6f36: $04
    ei                                            ; $6f37: $fb
    dec b                                         ; $6f38: $05
    rst $30                                       ; $6f39: $f7
    cp $eb                                        ; $6f3a: $fe $eb
    ld a, [$ffeb]                                 ; $6f3c: $fa $eb $ff
    ei                                            ; $6f3f: $fb
    ld a, [$fefb]                                 ; $6f40: $fa $fb $fe
    ld [bc], a                                    ; $6f43: $02
    rrca                                          ; $6f44: $0f
    ld [bc], a                                    ; $6f45: $02
    ld de, $2002                                  ; $6f46: $11 $02 $20
    ld [bc], a                                    ; $6f49: $02
    jr z, jr_0dd_6f4e                             ; $6f4a: $28 $02

    ld [hl], b                                    ; $6f4c: $70
    ld [bc], a                                    ; $6f4d: $02

jr_0dd_6f4e:
    ld l, b                                       ; $6f4e: $68
    ld [bc], a                                    ; $6f4f: $02
    ld [hl-], a                                   ; $6f50: $32
    ld [bc], a                                    ; $6f51: $02
    ld [hl], b                                    ; $6f52: $70
    ld [bc], a                                    ; $6f53: $02
    ld l, b                                       ; $6f54: $68
    ld [bc], a                                    ; $6f55: $02
    dec [hl]                                      ; $6f56: $35
    ld [bc], a                                    ; $6f57: $02
    ccf                                           ; $6f58: $3f
    adc d                                         ; $6f59: $8a
    ld e, b                                       ; $6f5a: $58
    ld a, a                                       ; $6f5b: $7f
    ld e, h                                       ; $6f5c: $5c
    ld a, a                                       ; $6f5d: $7f
    sbc a                                         ; $6f5e: $9f
    rst $38                                       ; $6f5f: $ff
    sbc a                                         ; $6f60: $9f
    rst $38                                       ; $6f61: $ff
    cp a                                          ; $6f62: $bf
    rst $38                                       ; $6f63: $ff
    ld [bc], a                                    ; $6f64: $02
    db $10                                        ; $6f65: $10
    ld [bc], a                                    ; $6f66: $02
    ld [$0404], sp                                ; $6f67: $08 $04 $04
    ld [bc], a                                    ; $6f6a: $02
    ld [bc], a                                    ; $6f6b: $02
    ld [bc], a                                    ; $6f6c: $02
    ld [de], a                                    ; $6f6d: $12
    ld [bc], a                                    ; $6f6e: $02
    inc d                                         ; $6f6f: $14
    ld [bc], a                                    ; $6f70: $02
    ld a, [bc]                                    ; $6f71: $0a
    ld [bc], a                                    ; $6f72: $02
    ld b, $02                                     ; $6f73: $06 $02
    inc c                                         ; $6f75: $0c
    sub b                                         ; $6f76: $90
    ld d, $1e                                     ; $6f77: $16 $1e
    ld a, [bc]                                    ; $6f79: $0a
    ld e, $1a                                     ; $6f7a: $1e $1a
    ld e, $09                                     ; $6f7c: $1e $09
    rra                                           ; $6f7e: $1f
    add hl, bc                                    ; $6f7f: $09
    rra                                           ; $6f80: $1f
    dec e                                         ; $6f81: $1d
    rra                                           ; $6f82: $1f
    sbc a                                         ; $6f83: $9f
    rst $38                                       ; $6f84: $ff
    cp a                                          ; $6f85: $bf
    rst $38                                       ; $6f86: $ff
    ld [bc], a                                    ; $6f87: $02
    ld a, a                                       ; $6f88: $7f
    inc b                                         ; $6f89: $04
    ccf                                           ; $6f8a: $3f
    add d                                         ; $6f8b: $82
    ld a, $3f                                     ; $6f8c: $3e $3f
    ld [bc], a                                    ; $6f8e: $02
    rrca                                          ; $6f8f: $0f
    ld [de], a                                    ; $6f90: $12
    nop                                           ; $6f91: $00
    adc h                                         ; $6f92: $8c
    rlca                                          ; $6f93: $07
    rrca                                          ; $6f94: $0f
    ld a, [bc]                                    ; $6f95: $0a
    ld c, $0a                                     ; $6f96: $0e $0a
    ld c, $0d                                     ; $6f98: $0e $0d
    rrca                                          ; $6f9a: $0f
    dec bc                                        ; $6f9b: $0b
    rrca                                          ; $6f9c: $0f
    rlca                                          ; $6f9d: $07
    rrca                                          ; $6f9e: $0f
    ld [bc], a                                    ; $6f9f: $02
    ld c, $12                                     ; $6fa0: $0e $12
    nop                                           ; $6fa2: $00
    rst $38                                       ; $6fa3: $ff
    rlca                                          ; $6fa4: $07
    ld bc, $07f8                                  ; $6fa5: $01 $f8 $07
    ld a, [c]                                     ; $6fa8: $f2
    ld bc, $fdec                                  ; $6fa9: $01 $ec $fd
    sub d                                         ; $6fac: $92
    nop                                           ; $6fad: $00
    ld [hl], h                                    ; $6fae: $74
    nop                                           ; $6faf: $00
    cp $00                                        ; $6fb0: $fe $00
    cp [hl]                                       ; $6fb2: $be
    nop                                           ; $6fb3: $00
    ld a, a                                       ; $6fb4: $7f
    nop                                           ; $6fb5: $00
    cp e                                          ; $6fb6: $bb
    nop                                           ; $6fb7: $00
    ld l, d                                       ; $6fb8: $6a
    nop                                           ; $6fb9: $00
    ld a, l                                       ; $6fba: $7d
    nop                                           ; $6fbb: $00
    cp [hl]                                       ; $6fbc: $be
    nop                                           ; $6fbd: $00
    ld d, h                                       ; $6fbe: $54
    ld c, $00                                     ; $6fbf: $0e $00
    rst $38                                       ; $6fc1: $ff
    dec c                                         ; $6fc2: $0d
    inc b                                         ; $6fc3: $04
    ei                                            ; $6fc4: $fb
    dec b                                         ; $6fc5: $05
    rst $30                                       ; $6fc6: $f7
    cp $ec                                        ; $6fc7: $fe $ec
    ld a, [$ffec]                                 ; $6fc9: $fa $ec $ff
    db $fc                                        ; $6fcc: $fc
    ld a, [$fefc]                                 ; $6fcd: $fa $fc $fe
    ld [bc], a                                    ; $6fd0: $02
    rrca                                          ; $6fd1: $0f
    ld [bc], a                                    ; $6fd2: $02
    ld de, $2002                                  ; $6fd3: $11 $02 $20
    ld [bc], a                                    ; $6fd6: $02
    ld l, b                                       ; $6fd7: $68
    ld [bc], a                                    ; $6fd8: $02
    ld [hl], b                                    ; $6fd9: $70
    ld [bc], a                                    ; $6fda: $02
    ld l, d                                       ; $6fdb: $6a
    ld [bc], a                                    ; $6fdc: $02
    jr nc, jr_0dd_6fe1                            ; $6fdd: $30 $02

    ld [hl], b                                    ; $6fdf: $70
    ld [bc], a                                    ; $6fe0: $02

jr_0dd_6fe1:
    dec l                                         ; $6fe1: $2d
    ld [bc], a                                    ; $6fe2: $02
    ccf                                           ; $6fe3: $3f
    adc h                                         ; $6fe4: $8c
    ld [hl], b                                    ; $6fe5: $70
    ld a, a                                       ; $6fe6: $7f
    ld e, l                                       ; $6fe7: $5d
    ld a, a                                       ; $6fe8: $7f
    ld e, a                                       ; $6fe9: $5f
    ld a, a                                       ; $6fea: $7f
    sbc a                                         ; $6feb: $9f
    rst $38                                       ; $6fec: $ff
    cp a                                          ; $6fed: $bf
    rst $38                                       ; $6fee: $ff
    sbc a                                         ; $6fef: $9f
    rst $38                                       ; $6ff0: $ff
    ld [bc], a                                    ; $6ff1: $02
    db $10                                        ; $6ff2: $10
    ld [bc], a                                    ; $6ff3: $02
    ld [$0402], sp                                ; $6ff4: $08 $02 $04
    inc b                                         ; $6ff7: $04
    ld [bc], a                                    ; $6ff8: $02
    ld [bc], a                                    ; $6ff9: $02
    ld [de], a                                    ; $6ffa: $12
    ld [bc], a                                    ; $6ffb: $02
    inc c                                         ; $6ffc: $0c
    ld [bc], a                                    ; $6ffd: $02
    ld [bc], a                                    ; $6ffe: $02
    ld [bc], a                                    ; $6fff: $02
    inc b                                         ; $7000: $04
    ld [bc], a                                    ; $7001: $02
    inc e                                         ; $7002: $1c
    adc [hl]                                      ; $7003: $8e
    ld b, $1e                                     ; $7004: $06 $1e
    ld a, [de]                                    ; $7006: $1a
    ld e, $1a                                     ; $7007: $1e $1a
    ld e, $09                                     ; $7009: $1e $09
    rra                                           ; $700b: $1f
    add hl, bc                                    ; $700c: $09
    rra                                           ; $700d: $1f
    add hl, de                                    ; $700e: $19
    rra                                           ; $700f: $1f
    cp a                                          ; $7010: $bf
    rst $38                                       ; $7011: $ff
    ld [bc], a                                    ; $7012: $02
    ld a, a                                       ; $7013: $7f
    inc b                                         ; $7014: $04
    ccf                                           ; $7015: $3f
    ld [bc], a                                    ; $7016: $02
    rra                                           ; $7017: $1f
    ld [bc], a                                    ; $7018: $02
    rlca                                          ; $7019: $07
    inc d                                         ; $701a: $14
    nop                                           ; $701b: $00
    add e                                         ; $701c: $83
    rlca                                          ; $701d: $07
    rrca                                          ; $701e: $0f
    ld a, [bc]                                    ; $701f: $0a
    inc bc                                        ; $7020: $03
    ld c, $81                                     ; $7021: $0e $81
    dec b                                         ; $7023: $05
    inc bc                                        ; $7024: $03
    rrca                                          ; $7025: $0f
    ld [bc], a                                    ; $7026: $02
    inc c                                         ; $7027: $0c
    inc d                                         ; $7028: $14
    nop                                           ; $7029: $00
    rst $38                                       ; $702a: $ff
    rlca                                          ; $702b: $07
    ld bc, $07f8                                  ; $702c: $01 $f8 $07
    ld a, [c]                                     ; $702f: $f2
    ld bc, $fded                                  ; $7030: $01 $ed $fd
    sub b                                         ; $7033: $90
    nop                                           ; $7034: $00
    ld [hl], h                                    ; $7035: $74
    nop                                           ; $7036: $00
    cp $00                                        ; $7037: $fe $00
    cp a                                          ; $7039: $bf
    nop                                           ; $703a: $00
    ld a, a                                       ; $703b: $7f
    nop                                           ; $703c: $00
    xor e                                         ; $703d: $ab
    nop                                           ; $703e: $00
    ld a, h                                       ; $703f: $7c
    nop                                           ; $7040: $00
    ld a, a                                       ; $7041: $7f
    nop                                           ; $7042: $00
    sub [hl]                                      ; $7043: $96
    stop                                          ; $7044: $10 $00
    rst $38                                       ; $7046: $ff
    dec c                                         ; $7047: $0d
    inc b                                         ; $7048: $04
    ei                                            ; $7049: $fb
    dec b                                         ; $704a: $05
    rst $30                                       ; $704b: $f7
    cp $eb                                        ; $704c: $fe $eb
    ld a, [$ffeb]                                 ; $704e: $fa $eb $ff
    ei                                            ; $7051: $fb
    ld a, [$fffb]                                 ; $7052: $fa $fb $ff
    ld [bc], a                                    ; $7055: $02
    rrca                                          ; $7056: $0f
    ld [bc], a                                    ; $7057: $02
    ld de, $2004                                  ; $7058: $11 $04 $20
    ld [bc], a                                    ; $705b: $02
    ld l, b                                       ; $705c: $68
    ld [bc], a                                    ; $705d: $02
    ld [hl], b                                    ; $705e: $70
    ld [bc], a                                    ; $705f: $02
    jr c, jr_0dd_7064                             ; $7060: $38 $02

    ld [hl], d                                    ; $7062: $72
    ld [bc], a                                    ; $7063: $02

jr_0dd_7064:
    ld l, b                                       ; $7064: $68
    ld [bc], a                                    ; $7065: $02
    dec [hl]                                      ; $7066: $35
    adc h                                         ; $7067: $8c
    ld l, a                                       ; $7068: $6f
    ld a, a                                       ; $7069: $7f
    ld d, a                                       ; $706a: $57
    ld a, a                                       ; $706b: $7f
    ld e, b                                       ; $706c: $58
    ld a, a                                       ; $706d: $7f
    ld e, a                                       ; $706e: $5f
    ld a, a                                       ; $706f: $7f
    sbc a                                         ; $7070: $9f
    rst $38                                       ; $7071: $ff
    sbc a                                         ; $7072: $9f
    rst $38                                       ; $7073: $ff
    ld [bc], a                                    ; $7074: $02
    db $10                                        ; $7075: $10
    ld [bc], a                                    ; $7076: $02
    ld [$0404], sp                                ; $7077: $08 $04 $04
    inc b                                         ; $707a: $04
    ld [bc], a                                    ; $707b: $02
    ld [bc], a                                    ; $707c: $02
    inc d                                         ; $707d: $14
    ld [bc], a                                    ; $707e: $02
    ld a, [de]                                    ; $707f: $1a
    ld [bc], a                                    ; $7080: $02
    ld b, $02                                     ; $7081: $06 $02
    inc c                                         ; $7083: $0c
    adc [hl]                                      ; $7084: $8e
    inc d                                         ; $7085: $14
    inc e                                         ; $7086: $1c
    ld a, [bc]                                    ; $7087: $0a
    ld e, $1a                                     ; $7088: $1e $1a
    ld e, $0a                                     ; $708a: $1e $0a
    ld e, $09                                     ; $708c: $1e $09
    rra                                           ; $708e: $1f
    add hl, de                                    ; $708f: $19
    rra                                           ; $7090: $1f
    cp a                                          ; $7091: $bf
    rst $38                                       ; $7092: $ff
    ld [bc], a                                    ; $7093: $02
    ld a, a                                       ; $7094: $7f
    ld [bc], a                                    ; $7095: $02
    ccf                                           ; $7096: $3f
    add c                                         ; $7097: $81
    ld a, e                                       ; $7098: $7b
    inc bc                                        ; $7099: $03
    ld a, a                                       ; $709a: $7f
    ld [bc], a                                    ; $709b: $02
    ccf                                           ; $709c: $3f
    ld [bc], a                                    ; $709d: $02
    rrca                                          ; $709e: $0f
    ld [de], a                                    ; $709f: $12
    nop                                           ; $70a0: $00
    add d                                         ; $70a1: $82
    dec c                                         ; $70a2: $0d
    rra                                           ; $70a3: $1f
    ld [bc], a                                    ; $70a4: $02
    ld a, [de]                                    ; $70a5: $1a
    add e                                         ; $70a6: $83
    inc d                                         ; $70a7: $14
    inc e                                         ; $70a8: $1c
    inc d                                         ; $70a9: $14
    dec b                                         ; $70aa: $05
    inc e                                         ; $70ab: $1c
    ld [bc], a                                    ; $70ac: $02
    jr jr_0dd_70c1                                ; $70ad: $18 $12

    nop                                           ; $70af: $00
    rst $38                                       ; $70b0: $ff
    rlca                                          ; $70b1: $07
    ld bc, $07f8                                  ; $70b2: $01 $f8 $07
    ld a, [c]                                     ; $70b5: $f2
    ld bc, $fdec                                  ; $70b6: $01 $ec $fd
    sub d                                         ; $70b9: $92
    nop                                           ; $70ba: $00
    ld [hl], h                                    ; $70bb: $74
    nop                                           ; $70bc: $00
    cp $00                                        ; $70bd: $fe $00
    cp $00                                        ; $70bf: $fe $00

jr_0dd_70c1:
    cp a                                          ; $70c1: $bf
    nop                                           ; $70c2: $00
    ld a, a                                       ; $70c3: $7f
    nop                                           ; $70c4: $00
    ld a, [hl-]                                   ; $70c5: $3a
    nop                                           ; $70c6: $00
    ld l, c                                       ; $70c7: $69
    nop                                           ; $70c8: $00
    cp [hl]                                       ; $70c9: $be
    nop                                           ; $70ca: $00
    ld d, h                                       ; $70cb: $54
    ld c, $00                                     ; $70cc: $0e $00
    rst $38                                       ; $70ce: $ff
    dec c                                         ; $70cf: $0d
    inc b                                         ; $70d0: $04
    ei                                            ; $70d1: $fb
    dec b                                         ; $70d2: $05
    rst $30                                       ; $70d3: $f7
    cp $eb                                        ; $70d4: $fe $eb
    ld a, [$ffeb]                                 ; $70d6: $fa $eb $ff
    ei                                            ; $70d9: $fb
    ei                                            ; $70da: $fb
    ei                                            ; $70db: $fb
    rst $38                                       ; $70dc: $ff
    ld [bc], a                                    ; $70dd: $02
    rrca                                          ; $70de: $0f
    ld [bc], a                                    ; $70df: $02
    ld de, $2002                                  ; $70e0: $11 $02 $20
    ld [bc], a                                    ; $70e3: $02
    jr z, jr_0dd_70e8                             ; $70e4: $28 $02

    ld [hl], b                                    ; $70e6: $70
    ld [bc], a                                    ; $70e7: $02

jr_0dd_70e8:
    ld l, b                                       ; $70e8: $68
    ld [bc], a                                    ; $70e9: $02
    ld [hl-], a                                   ; $70ea: $32
    ld [bc], a                                    ; $70eb: $02
    ld [hl], b                                    ; $70ec: $70
    ld [bc], a                                    ; $70ed: $02
    ld l, b                                       ; $70ee: $68
    ld [bc], a                                    ; $70ef: $02
    dec [hl]                                      ; $70f0: $35
    adc h                                         ; $70f1: $8c
    ld l, a                                       ; $70f2: $6f
    ld a, a                                       ; $70f3: $7f
    ld e, b                                       ; $70f4: $58
    ld a, a                                       ; $70f5: $7f
    ld e, h                                       ; $70f6: $5c
    ld a, a                                       ; $70f7: $7f
    sbc a                                         ; $70f8: $9f
    rst $38                                       ; $70f9: $ff
    sbc a                                         ; $70fa: $9f
    rst $38                                       ; $70fb: $ff
    cp a                                          ; $70fc: $bf
    rst $38                                       ; $70fd: $ff
    ld [bc], a                                    ; $70fe: $02
    db $10                                        ; $70ff: $10
    ld [bc], a                                    ; $7100: $02
    ld [$0404], sp                                ; $7101: $08 $04 $04
    ld [bc], a                                    ; $7104: $02
    ld [bc], a                                    ; $7105: $02
    ld [bc], a                                    ; $7106: $02
    ld [de], a                                    ; $7107: $12
    ld [bc], a                                    ; $7108: $02
    inc d                                         ; $7109: $14
    ld [bc], a                                    ; $710a: $02
    ld a, [bc]                                    ; $710b: $0a
    ld [bc], a                                    ; $710c: $02
    ld b, $02                                     ; $710d: $06 $02
    inc c                                         ; $710f: $0c
    ld [bc], a                                    ; $7110: $02
    inc e                                         ; $7111: $1c
    adc h                                         ; $7112: $8c
    ld a, [bc]                                    ; $7113: $0a
    ld e, $1a                                     ; $7114: $1e $1a
    ld e, $09                                     ; $7116: $1e $09
    rra                                           ; $7118: $1f
    add hl, bc                                    ; $7119: $09
    rra                                           ; $711a: $1f
    dec e                                         ; $711b: $1d
    rra                                           ; $711c: $1f
    cp $ff                                        ; $711d: $fe $ff
    ld [bc], a                                    ; $711f: $02
    ld a, a                                       ; $7120: $7f
    add e                                         ; $7121: $83
    ld [hl], a                                    ; $7122: $77
    ld a, a                                       ; $7123: $7f
    rst $30                                       ; $7124: $f7
    inc bc                                        ; $7125: $03
    rst $38                                       ; $7126: $ff
    add d                                         ; $7127: $82
    rst $20                                       ; $7128: $e7
    rst $38                                       ; $7129: $ff
    ld [bc], a                                    ; $712a: $02
    ld a, a                                       ; $712b: $7f
    ld [de], a                                    ; $712c: $12
    nop                                           ; $712d: $00
    add [hl]                                      ; $712e: $86
    add hl, bc                                    ; $712f: $09
    rrca                                          ; $7130: $0f
    dec c                                         ; $7131: $0d
    rrca                                          ; $7132: $0f
    ld b, $0e                                     ; $7133: $06 $0e
    ld b, $0c                                     ; $7135: $06 $0c
    inc d                                         ; $7137: $14
    nop                                           ; $7138: $00
    rst $38                                       ; $7139: $ff
    rlca                                          ; $713a: $07
    ld bc, $07f8                                  ; $713b: $01 $f8 $07
    ld a, [c]                                     ; $713e: $f2
    ld bc, $fdec                                  ; $713f: $01 $ec $fd
    sub d                                         ; $7142: $92
    nop                                           ; $7143: $00
    ld [hl], h                                    ; $7144: $74
    nop                                           ; $7145: $00
    cp $00                                        ; $7146: $fe $00
    cp [hl]                                       ; $7148: $be
    nop                                           ; $7149: $00
    ld a, a                                       ; $714a: $7f
    nop                                           ; $714b: $00
    cp e                                          ; $714c: $bb
    nop                                           ; $714d: $00
    ld l, d                                       ; $714e: $6a
    nop                                           ; $714f: $00
    ld a, l                                       ; $7150: $7d
    nop                                           ; $7151: $00
    cp [hl]                                       ; $7152: $be
    nop                                           ; $7153: $00
    ld d, h                                       ; $7154: $54
    ld c, $00                                     ; $7155: $0e $00
    rst $38                                       ; $7157: $ff
    dec c                                         ; $7158: $0d
    inc b                                         ; $7159: $04
    ei                                            ; $715a: $fb
    dec b                                         ; $715b: $05
    rst $30                                       ; $715c: $f7
    cp $ec                                        ; $715d: $fe $ec
    ld a, [$ffec]                                 ; $715f: $fa $ec $ff
    db $fc                                        ; $7162: $fc
    ei                                            ; $7163: $fb
    db $fc                                        ; $7164: $fc
    rst $38                                       ; $7165: $ff
    ld [bc], a                                    ; $7166: $02
    rrca                                          ; $7167: $0f
    ld [bc], a                                    ; $7168: $02
    ld de, $2002                                  ; $7169: $11 $02 $20
    ld [bc], a                                    ; $716c: $02
    ld l, b                                       ; $716d: $68
    ld [bc], a                                    ; $716e: $02
    ld [hl], b                                    ; $716f: $70
    ld [bc], a                                    ; $7170: $02
    ld l, d                                       ; $7171: $6a
    ld [bc], a                                    ; $7172: $02
    jr nc, jr_0dd_7177                            ; $7173: $30 $02

    ld [hl], b                                    ; $7175: $70
    ld [bc], a                                    ; $7176: $02

jr_0dd_7177:
    dec l                                         ; $7177: $2d
    ld [bc], a                                    ; $7178: $02
    ccf                                           ; $7179: $3f
    adc h                                         ; $717a: $8c
    ld h, b                                       ; $717b: $60
    ld a, a                                       ; $717c: $7f
    ld e, l                                       ; $717d: $5d
    ld a, a                                       ; $717e: $7f
    ld e, a                                       ; $717f: $5f
    ld a, a                                       ; $7180: $7f
    sbc a                                         ; $7181: $9f
    rst $38                                       ; $7182: $ff
    sbc a                                         ; $7183: $9f
    rst $38                                       ; $7184: $ff
    sbc a                                         ; $7185: $9f
    rst $38                                       ; $7186: $ff
    ld [bc], a                                    ; $7187: $02
    db $10                                        ; $7188: $10
    ld [bc], a                                    ; $7189: $02
    ld [$0402], sp                                ; $718a: $08 $02 $04
    inc b                                         ; $718d: $04
    ld [bc], a                                    ; $718e: $02
    ld [bc], a                                    ; $718f: $02
    ld [de], a                                    ; $7190: $12
    ld [bc], a                                    ; $7191: $02
    inc c                                         ; $7192: $0c
    ld [bc], a                                    ; $7193: $02
    ld [bc], a                                    ; $7194: $02
    ld [bc], a                                    ; $7195: $02
    inc b                                         ; $7196: $04
    ld [bc], a                                    ; $7197: $02
    inc e                                         ; $7198: $1c
    adc [hl]                                      ; $7199: $8e
    ld c, $1e                                     ; $719a: $0e $1e
    ld a, [de]                                    ; $719c: $1a
    ld e, $1a                                     ; $719d: $1e $1a
    ld e, $09                                     ; $719f: $1e $09
    rra                                           ; $71a1: $1f
    dec c                                         ; $71a2: $0d
    rra                                           ; $71a3: $1f
    add hl, de                                    ; $71a4: $19
    rra                                           ; $71a5: $1f
    cp $ff                                        ; $71a6: $fe $ff
    inc b                                         ; $71a8: $04
    ld a, a                                       ; $71a9: $7f
    add c                                         ; $71aa: $81
    rst $30                                       ; $71ab: $f7
    inc bc                                        ; $71ac: $03
    rst $38                                       ; $71ad: $ff
    ld [bc], a                                    ; $71ae: $02
    ld a, $14                                     ; $71af: $3e $14
    nop                                           ; $71b1: $00
    add d                                         ; $71b2: $82
    dec c                                         ; $71b3: $0d
    rrca                                          ; $71b4: $0f
    ld [bc], a                                    ; $71b5: $02
    ld c, $81                                     ; $71b6: $0e $81
    inc b                                         ; $71b8: $04
    inc bc                                        ; $71b9: $03
    inc c                                         ; $71ba: $0c
    ld [bc], a                                    ; $71bb: $02
    ld [$0016], sp                                ; $71bc: $08 $16 $00
    rst $38                                       ; $71bf: $ff
    rlca                                          ; $71c0: $07
    ld bc, $07f8                                  ; $71c1: $01 $f8 $07
    ld a, [c]                                     ; $71c4: $f2
    ld bc, $fded                                  ; $71c5: $01 $ed $fd
    sub b                                         ; $71c8: $90
    nop                                           ; $71c9: $00
    ld [hl], h                                    ; $71ca: $74
    nop                                           ; $71cb: $00
    cp $00                                        ; $71cc: $fe $00
    cp a                                          ; $71ce: $bf
    nop                                           ; $71cf: $00
    ld a, a                                       ; $71d0: $7f
    nop                                           ; $71d1: $00
    xor e                                         ; $71d2: $ab
    nop                                           ; $71d3: $00
    ld a, h                                       ; $71d4: $7c
    nop                                           ; $71d5: $00
    ld a, a                                       ; $71d6: $7f
    nop                                           ; $71d7: $00
    sub [hl]                                      ; $71d8: $96
    stop                                          ; $71d9: $10 $00
    rst $38                                       ; $71db: $ff
    dec c                                         ; $71dc: $0d
    inc b                                         ; $71dd: $04
    ei                                            ; $71de: $fb
    dec b                                         ; $71df: $05
    rst $30                                       ; $71e0: $f7
    cp $eb                                        ; $71e1: $fe $eb
    ld a, [$ffeb]                                 ; $71e3: $fa $eb $ff
    ei                                            ; $71e6: $fb
    ld a, [$fffb]                                 ; $71e7: $fa $fb $ff
    ld [bc], a                                    ; $71ea: $02
    rrca                                          ; $71eb: $0f
    ld [bc], a                                    ; $71ec: $02
    ld de, $2004                                  ; $71ed: $11 $04 $20
    ld [bc], a                                    ; $71f0: $02
    ld l, b                                       ; $71f1: $68
    ld [bc], a                                    ; $71f2: $02
    ld [hl], b                                    ; $71f3: $70
    ld [bc], a                                    ; $71f4: $02
    jr c, jr_0dd_71f9                             ; $71f5: $38 $02

    ld [hl], d                                    ; $71f7: $72
    ld [bc], a                                    ; $71f8: $02

jr_0dd_71f9:
    ld l, b                                       ; $71f9: $68
    ld [bc], a                                    ; $71fa: $02
    dec [hl]                                      ; $71fb: $35
    adc h                                         ; $71fc: $8c
    cpl                                           ; $71fd: $2f
    ccf                                           ; $71fe: $3f
    ld d, a                                       ; $71ff: $57
    ld a, a                                       ; $7200: $7f
    ld e, b                                       ; $7201: $58
    ld a, a                                       ; $7202: $7f
    ld e, a                                       ; $7203: $5f
    ld a, a                                       ; $7204: $7f
    sbc a                                         ; $7205: $9f
    rst $38                                       ; $7206: $ff
    sbc a                                         ; $7207: $9f
    rst $38                                       ; $7208: $ff
    ld [bc], a                                    ; $7209: $02
    db $10                                        ; $720a: $10
    ld [bc], a                                    ; $720b: $02
    ld [$0404], sp                                ; $720c: $08 $04 $04
    inc b                                         ; $720f: $04
    ld [bc], a                                    ; $7210: $02
    ld [bc], a                                    ; $7211: $02
    inc d                                         ; $7212: $14
    ld [bc], a                                    ; $7213: $02
    ld a, [de]                                    ; $7214: $1a
    ld [bc], a                                    ; $7215: $02
    ld b, $02                                     ; $7216: $06 $02
    inc c                                         ; $7218: $0c
    adc [hl]                                      ; $7219: $8e
    ld d, $1e                                     ; $721a: $16 $1e
    ld a, [bc]                                    ; $721c: $0a
    ld e, $1a                                     ; $721d: $1e $1a
    ld e, $0a                                     ; $721f: $1e $0a
    ld e, $09                                     ; $7221: $1e $09
    rra                                           ; $7223: $1f
    add hl, de                                    ; $7224: $19
    rra                                           ; $7225: $1f
    cp a                                          ; $7226: $bf
    rst $38                                       ; $7227: $ff
    ld [bc], a                                    ; $7228: $02
    ld e, a                                       ; $7229: $5f
    ld [$023f], sp                                ; $722a: $08 $3f $02
    rra                                           ; $722d: $1f
    ld [de], a                                    ; $722e: $12
    nop                                           ; $722f: $00
    add h                                         ; $7230: $84
    dec c                                         ; $7231: $0d
    rra                                           ; $7232: $1f
    ld d, $1e                                     ; $7233: $16 $1e
    ld [bc], a                                    ; $7235: $02
    inc e                                         ; $7236: $1c
    add c                                         ; $7237: $81
    ld a, [de]                                    ; $7238: $1a
    inc bc                                        ; $7239: $03
    ld e, $02                                     ; $723a: $1e $02
    inc e                                         ; $723c: $1c
    ld [bc], a                                    ; $723d: $02
    db $10                                        ; $723e: $10
    ld [de], a                                    ; $723f: $12
    nop                                           ; $7240: $00
    rst $38                                       ; $7241: $ff
    rlca                                          ; $7242: $07
    ld bc, $07f8                                  ; $7243: $01 $f8 $07
    ld a, [c]                                     ; $7246: $f2
    ld bc, $fdec                                  ; $7247: $01 $ec $fd
    sub d                                         ; $724a: $92
    nop                                           ; $724b: $00
    ld [hl], h                                    ; $724c: $74
    nop                                           ; $724d: $00
    cp $00                                        ; $724e: $fe $00
    cp $00                                        ; $7250: $fe $00
    cp a                                          ; $7252: $bf
    nop                                           ; $7253: $00
    ld a, a                                       ; $7254: $7f
    nop                                           ; $7255: $00
    ld a, [hl-]                                   ; $7256: $3a
    nop                                           ; $7257: $00
    ld l, c                                       ; $7258: $69
    nop                                           ; $7259: $00
    cp [hl]                                       ; $725a: $be
    nop                                           ; $725b: $00
    ld d, h                                       ; $725c: $54
    ld c, $00                                     ; $725d: $0e $00
    rst $38                                       ; $725f: $ff
    dec c                                         ; $7260: $0d
    inc b                                         ; $7261: $04
    ei                                            ; $7262: $fb
    dec b                                         ; $7263: $05
    rst $30                                       ; $7264: $f7
    cp $eb                                        ; $7265: $fe $eb
    ld a, [$ffeb]                                 ; $7267: $fa $eb $ff
    ei                                            ; $726a: $fb
    ld a, [$fffb]                                 ; $726b: $fa $fb $ff
    ld [bc], a                                    ; $726e: $02
    rrca                                          ; $726f: $0f
    ld [bc], a                                    ; $7270: $02
    inc d                                         ; $7271: $14
    ld [bc], a                                    ; $7272: $02
    inc h                                         ; $7273: $24
    adc h                                         ; $7274: $8c
    cpl                                           ; $7275: $2f
    dec hl                                        ; $7276: $2b
    ld a, a                                       ; $7277: $7f
    ld a, b                                       ; $7278: $78
    ld a, a                                       ; $7279: $7f
    ld l, l                                       ; $727a: $6d
    ccf                                           ; $727b: $3f
    jr nc, @+$81                                  ; $727c: $30 $7f

    ld [hl], d                                    ; $727e: $72
    ld l, a                                       ; $727f: $6f
    ld l, b                                       ; $7280: $68
    ld [bc], a                                    ; $7281: $02
    ld a, a                                       ; $7282: $7f
    adc h                                         ; $7283: $8c
    ld l, d                                       ; $7284: $6a
    ld a, d                                       ; $7285: $7a
    ld e, l                                       ; $7286: $5d
    ld a, l                                       ; $7287: $7d
    ld e, d                                       ; $7288: $5a
    ld a, a                                       ; $7289: $7f
    sbc l                                         ; $728a: $9d
    rst $38                                       ; $728b: $ff
    cp l                                          ; $728c: $bd
    rst $38                                       ; $728d: $ff
    jp c, Jump_000_02ff                           ; $728e: $da $ff $02

    db $10                                        ; $7291: $10
    ld [bc], a                                    ; $7292: $02
    ld [$1402], sp                                ; $7293: $08 $02 $14
    ld [bc], a                                    ; $7296: $02
    inc b                                         ; $7297: $04
    ld [bc], a                                    ; $7298: $02
    ld a, [de]                                    ; $7299: $1a
    add [hl]                                      ; $729a: $86
    ld e, $16                                     ; $729b: $1e $16
    inc e                                         ; $729d: $1c
    inc c                                         ; $729e: $0c
    ld a, [de]                                    ; $729f: $1a
    ld a, [bc]                                    ; $72a0: $0a
    ld [bc], a                                    ; $72a1: $02
    ld [de], a                                    ; $72a2: $12
    ld [bc], a                                    ; $72a3: $02
    ld a, [de]                                    ; $72a4: $1a
    sub h                                         ; $72a5: $94
    ld d, $1e                                     ; $72a6: $16 $1e
    ld a, [de]                                    ; $72a8: $1a
    ld e, $1a                                     ; $72a9: $1e $1a
    ld e, $19                                     ; $72ab: $1e $19
    rra                                           ; $72ad: $1f
    dec e                                         ; $72ae: $1d
    rra                                           ; $72af: $1f
    dec de                                        ; $72b0: $1b
    rra                                           ; $72b1: $1f
    ld a, [$7abf]                                 ; $72b2: $fa $bf $7a
    ld e, a                                       ; $72b5: $5f
    ld a, [hl-]                                   ; $72b6: $3a
    cpl                                           ; $72b7: $2f
    ld [hl], a                                    ; $72b8: $77
    ld a, a                                       ; $72b9: $7f
    ld [bc], a                                    ; $72ba: $02
    ccf                                           ; $72bb: $3f
    add d                                         ; $72bc: $82
    dec d                                         ; $72bd: $15
    dec e                                         ; $72be: $1d
    ld [bc], a                                    ; $72bf: $02
    jr jr_0dd_72d4                                ; $72c0: $18 $12

    nop                                           ; $72c2: $00
    add d                                         ; $72c3: $82
    rra                                           ; $72c4: $1f
    dec e                                         ; $72c5: $1d
    ld [bc], a                                    ; $72c6: $02
    ld a, [de]                                    ; $72c7: $1a
    ld [bc], a                                    ; $72c8: $02
    inc e                                         ; $72c9: $1c
    add d                                         ; $72ca: $82
    ld a, [bc]                                    ; $72cb: $0a
    ld e, $02                                     ; $72cc: $1e $02
    inc e                                         ; $72ce: $1c
    add c                                         ; $72cf: $81
    ld [$1803], sp                                ; $72d0: $08 $03 $18
    ld [de], a                                    ; $72d3: $12

jr_0dd_72d4:
    nop                                           ; $72d4: $00
    rst $38                                       ; $72d5: $ff
    rlca                                          ; $72d6: $07
    ld bc, $07f8                                  ; $72d7: $01 $f8 $07
    ld a, [c]                                     ; $72da: $f2
    ld bc, $fdec                                  ; $72db: $01 $ec $fd
    adc b                                         ; $72de: $88
    nop                                           ; $72df: $00
    ld e, h                                       ; $72e0: $5c
    nop                                           ; $72e1: $00
    jp c, $8600                                   ; $72e2: $da $00 $86

    nop                                           ; $72e5: $00
    ld bc, $0005                                  ; $72e6: $01 $05 $00
    adc b                                         ; $72e9: $88
    ld bc, $8300                                  ; $72ea: $01 $00 $83
    nop                                           ; $72ed: $00
    ld bc, $0028                                  ; $72ee: $01 $28 $00
    db $10                                        ; $72f1: $10
    dec bc                                        ; $72f2: $0b
    nop                                           ; $72f3: $00
    rst $38                                       ; $72f4: $ff
    dec c                                         ; $72f5: $0d
    inc b                                         ; $72f6: $04
    ei                                            ; $72f7: $fb
    dec b                                         ; $72f8: $05
    rst $30                                       ; $72f9: $f7
    cp $eb                                        ; $72fa: $fe $eb
    ld a, [$ffeb]                                 ; $72fc: $fa $eb $ff

Call_0dd_72ff:
    ei                                            ; $72ff: $fb
    ei                                            ; $7300: $fb
    ei                                            ; $7301: $fb
    cp $02                                        ; $7302: $fe $02
    rrca                                          ; $7304: $0f
    ld [bc], a                                    ; $7305: $02
    inc d                                         ; $7306: $14
    ld [bc], a                                    ; $7307: $02
    inc h                                         ; $7308: $24
    adc h                                         ; $7309: $8c
    cpl                                           ; $730a: $2f
    dec hl                                        ; $730b: $2b
    ld a, a                                       ; $730c: $7f
    ld a, b                                       ; $730d: $78
    ld a, a                                       ; $730e: $7f
    ld l, l                                       ; $730f: $6d
    ccf                                           ; $7310: $3f
    jr nc, jr_0dd_7392                            ; $7311: $30 $7f

    ld [hl], d                                    ; $7313: $72
    ld l, a                                       ; $7314: $6f
    ld l, b                                       ; $7315: $68
    ld [bc], a                                    ; $7316: $02
    ld a, a                                       ; $7317: $7f
    ld [bc], a                                    ; $7318: $02
    ld a, d                                       ; $7319: $7a
    adc d                                         ; $731a: $8a
    ld e, l                                       ; $731b: $5d
    ld a, l                                       ; $731c: $7d
    ld e, d                                       ; $731d: $5a
    ld a, a                                       ; $731e: $7f
    ld a, l                                       ; $731f: $7d
    ld a, a                                       ; $7320: $7f
    sbc l                                         ; $7321: $9d
    rst $38                                       ; $7322: $ff
    adc c                                         ; $7323: $89
    rst $38                                       ; $7324: $ff
    ld [bc], a                                    ; $7325: $02
    db $10                                        ; $7326: $10
    ld [bc], a                                    ; $7327: $02
    ld [$1402], sp                                ; $7328: $08 $02 $14
    ld [bc], a                                    ; $732b: $02
    inc b                                         ; $732c: $04
    ld [bc], a                                    ; $732d: $02
    ld a, [de]                                    ; $732e: $1a
    add [hl]                                      ; $732f: $86
    ld e, $16                                     ; $7330: $1e $16
    inc e                                         ; $7332: $1c
    inc c                                         ; $7333: $0c
    ld a, [de]                                    ; $7334: $1a
    ld a, [bc]                                    ; $7335: $0a
    ld [bc], a                                    ; $7336: $02
    ld [de], a                                    ; $7337: $12
    ld [bc], a                                    ; $7338: $02
    ld a, [de]                                    ; $7339: $1a
    adc c                                         ; $733a: $89
    ld d, $1e                                     ; $733b: $16 $1e
    ld a, [de]                                    ; $733d: $1a
    ld e, $19                                     ; $733e: $1e $19
    rra                                           ; $7340: $1f
    dec e                                         ; $7341: $1d
    rra                                           ; $7342: $1f
    add hl, de                                    ; $7343: $19
    inc bc                                        ; $7344: $03
    rra                                           ; $7345: $1f
    add [hl]                                      ; $7346: $86
    push af                                       ; $7347: $f5
    sbc a                                         ; $7348: $9f
    ld a, l                                       ; $7349: $7d
    ld h, a                                       ; $734a: $67
    ld l, [hl]                                    ; $734b: $6e
    ld a, a                                       ; $734c: $7f
    ld [bc], a                                    ; $734d: $02
    rst $38                                       ; $734e: $ff
    add d                                         ; $734f: $82
    ld a, [hl]                                    ; $7350: $7e
    ld a, a                                       ; $7351: $7f
    ld [bc], a                                    ; $7352: $02
    scf                                           ; $7353: $37
    ld [bc], a                                    ; $7354: $02
    inc bc                                        ; $7355: $03
    ld [de], a                                    ; $7356: $12
    nop                                           ; $7357: $00
    ld [bc], a                                    ; $7358: $02
    dec b                                         ; $7359: $05
    inc b                                         ; $735a: $04
    inc b                                         ; $735b: $04
    inc b                                         ; $735c: $04
    ld b, $02                                     ; $735d: $06 $02
    inc b                                         ; $735f: $04
    inc d                                         ; $7360: $14
    nop                                           ; $7361: $00
    rst $38                                       ; $7362: $ff
    rlca                                          ; $7363: $07
    ld bc, $07f8                                  ; $7364: $01 $f8 $07
    ld a, [c]                                     ; $7367: $f2
    ld bc, $fdec                                  ; $7368: $01 $ec $fd
    adc b                                         ; $736b: $88
    nop                                           ; $736c: $00
    ld e, h                                       ; $736d: $5c
    nop                                           ; $736e: $00
    jp c, $8600                                   ; $736f: $da $00 $86

    nop                                           ; $7372: $00
    ld bc, $0005                                  ; $7373: $01 $05 $00
    adc b                                         ; $7376: $88
    ld bc, $8300                                  ; $7377: $01 $00 $83
    nop                                           ; $737a: $00
    ld bc, $0028                                  ; $737b: $01 $28 $00
    db $10                                        ; $737e: $10
    dec bc                                        ; $737f: $0b
    nop                                           ; $7380: $00
    rst $38                                       ; $7381: $ff
    dec c                                         ; $7382: $0d
    inc b                                         ; $7383: $04
    ei                                            ; $7384: $fb
    dec b                                         ; $7385: $05
    rst $30                                       ; $7386: $f7
    cp $ec                                        ; $7387: $fe $ec
    ld a, [$ffec]                                 ; $7389: $fa $ec $ff
    db $fc                                        ; $738c: $fc
    ld a, [$fefc]                                 ; $738d: $fa $fc $fe
    ld [bc], a                                    ; $7390: $02
    rrca                                          ; $7391: $0f

jr_0dd_7392:
    ld [bc], a                                    ; $7392: $02
    inc d                                         ; $7393: $14
    ld [bc], a                                    ; $7394: $02
    inc h                                         ; $7395: $24
    adc h                                         ; $7396: $8c
    ld l, a                                       ; $7397: $6f
    ld l, e                                       ; $7398: $6b
    ld a, a                                       ; $7399: $7f
    ld a, b                                       ; $739a: $78
    ld a, a                                       ; $739b: $7f
    ld l, l                                       ; $739c: $6d
    ccf                                           ; $739d: $3f
    jr nc, jr_0dd_741f                            ; $739e: $30 $7f

    ld [hl], d                                    ; $73a0: $72
    ld l, a                                       ; $73a1: $6f
    ld l, b                                       ; $73a2: $68
    ld [bc], a                                    ; $73a3: $02
    ccf                                           ; $73a4: $3f
    adc h                                         ; $73a5: $8c
    ld l, d                                       ; $73a6: $6a
    ld a, d                                       ; $73a7: $7a
    ld e, l                                       ; $73a8: $5d
    ld a, l                                       ; $73a9: $7d
    ld e, d                                       ; $73aa: $5a
    ld a, a                                       ; $73ab: $7f
    cp l                                          ; $73ac: $bd
    rst $38                                       ; $73ad: $ff
    cp l                                          ; $73ae: $bd
    rst $38                                       ; $73af: $ff
    sbc c                                         ; $73b0: $99
    rst $38                                       ; $73b1: $ff
    ld [bc], a                                    ; $73b2: $02
    db $10                                        ; $73b3: $10
    ld [bc], a                                    ; $73b4: $02
    ld [$1402], sp                                ; $73b5: $08 $02 $14
    ld [bc], a                                    ; $73b8: $02
    ld [bc], a                                    ; $73b9: $02
    ld [bc], a                                    ; $73ba: $02
    ld a, [de]                                    ; $73bb: $1a
    add [hl]                                      ; $73bc: $86
    ld e, $16                                     ; $73bd: $1e $16
    inc e                                         ; $73bf: $1c
    inc c                                         ; $73c0: $0c
    ld a, [de]                                    ; $73c1: $1a
    ld a, [bc]                                    ; $73c2: $0a
    ld [bc], a                                    ; $73c3: $02
    ld [de], a                                    ; $73c4: $12
    ld [bc], a                                    ; $73c5: $02
    inc e                                         ; $73c6: $1c
    sub d                                         ; $73c7: $92
    ld d, $1e                                     ; $73c8: $16 $1e
    ld a, [de]                                    ; $73ca: $1a
    ld e, $1a                                     ; $73cb: $1e $1a
    ld e, $1d                                     ; $73cd: $1e $1d
    rra                                           ; $73cf: $1f
    add hl, de                                    ; $73d0: $19
    rra                                           ; $73d1: $1f
    dec de                                        ; $73d2: $1b
    rra                                           ; $73d3: $1f
    ld a, [$7a9f]                                 ; $73d4: $fa $9f $7a
    ld h, a                                       ; $73d7: $67
    ld [hl], a                                    ; $73d8: $77
    ld a, a                                       ; $73d9: $7f
    ld [bc], a                                    ; $73da: $02
    ccf                                           ; $73db: $3f
    ld [bc], a                                    ; $73dc: $02
    dec e                                         ; $73dd: $1d
    ld [bc], a                                    ; $73de: $02
    ld bc, $0014                                  ; $73df: $01 $14 $00
    ld [bc], a                                    ; $73e2: $02
    rrca                                          ; $73e3: $0f
    ld [bc], a                                    ; $73e4: $02
    ld c, $81                                     ; $73e5: $0e $81
    ld b, $03                                     ; $73e7: $06 $03
    ld c, $81                                     ; $73e9: $0e $81
    inc b                                         ; $73eb: $04
    inc bc                                        ; $73ec: $03
    inc c                                         ; $73ed: $0c
    inc d                                         ; $73ee: $14
    nop                                           ; $73ef: $00
    rst $38                                       ; $73f0: $ff
    rlca                                          ; $73f1: $07
    ld bc, $07f8                                  ; $73f2: $01 $f8 $07
    ld a, [c]                                     ; $73f5: $f2
    ld bc, $fded                                  ; $73f6: $01 $ed $fd
    adc b                                         ; $73f9: $88
    nop                                           ; $73fa: $00
    ld e, h                                       ; $73fb: $5c
    nop                                           ; $73fc: $00
    jp c, $8700                                   ; $73fd: $da $00 $87

    nop                                           ; $7400: $00
    ld bc, $0005                                  ; $7401: $01 $05 $00
    add e                                         ; $7404: $83
    ld bc, $8300                                  ; $7405: $01 $00 $83
    ld [bc], a                                    ; $7408: $02
    nop                                           ; $7409: $00
    add e                                         ; $740a: $83
    jr z, jr_0dd_740d                             ; $740b: $28 $00

jr_0dd_740d:
    db $10                                        ; $740d: $10
    dec bc                                        ; $740e: $0b
    nop                                           ; $740f: $00
    rst $38                                       ; $7410: $ff
    dec c                                         ; $7411: $0d
    inc b                                         ; $7412: $04
    ei                                            ; $7413: $fb
    dec b                                         ; $7414: $05
    rst $30                                       ; $7415: $f7
    cp $eb                                        ; $7416: $fe $eb
    ld a, [$ffeb]                                 ; $7418: $fa $eb $ff
    ei                                            ; $741b: $fb
    ld a, [$fffb]                                 ; $741c: $fa $fb $ff

jr_0dd_741f:
    ld [bc], a                                    ; $741f: $02
    rrca                                          ; $7420: $0f
    ld [bc], a                                    ; $7421: $02
    inc d                                         ; $7422: $14
    ld [bc], a                                    ; $7423: $02
    inc h                                         ; $7424: $24
    adc h                                         ; $7425: $8c
    cpl                                           ; $7426: $2f
    dec hl                                        ; $7427: $2b
    ld a, a                                       ; $7428: $7f
    ld a, b                                       ; $7429: $78
    ld a, a                                       ; $742a: $7f
    ld l, l                                       ; $742b: $6d
    ld a, a                                       ; $742c: $7f
    ld [hl], b                                    ; $742d: $70
    ccf                                           ; $742e: $3f
    ld [hl-], a                                   ; $742f: $32
    ld l, a                                       ; $7430: $6f
    ld l, b                                       ; $7431: $68
    ld [bc], a                                    ; $7432: $02
    ld a, a                                       ; $7433: $7f
    adc h                                         ; $7434: $8c
    ld l, d                                       ; $7435: $6a
    ld a, d                                       ; $7436: $7a
    ld e, l                                       ; $7437: $5d
    ld a, l                                       ; $7438: $7d
    ld e, d                                       ; $7439: $5a
    ld a, a                                       ; $743a: $7f
    sbc l                                         ; $743b: $9d
    rst $38                                       ; $743c: $ff
    cp l                                          ; $743d: $bd
    rst $38                                       ; $743e: $ff
    db $dd                                        ; $743f: $dd
    rst $38                                       ; $7440: $ff
    ld [bc], a                                    ; $7441: $02
    db $10                                        ; $7442: $10
    ld [bc], a                                    ; $7443: $02
    ld [$1402], sp                                ; $7444: $08 $02 $14
    ld [bc], a                                    ; $7447: $02
    inc b                                         ; $7448: $04
    ld [bc], a                                    ; $7449: $02
    ld a, [de]                                    ; $744a: $1a
    add [hl]                                      ; $744b: $86
    ld e, $16                                     ; $744c: $1e $16
    ld e, $0e                                     ; $744e: $1e $0e
    inc e                                         ; $7450: $1c
    inc c                                         ; $7451: $0c
    ld [bc], a                                    ; $7452: $02
    ld [de], a                                    ; $7453: $12
    ld [bc], a                                    ; $7454: $02
    ld a, [de]                                    ; $7455: $1a
    ld [bc], a                                    ; $7456: $02
    ld e, $90                                     ; $7457: $1e $90
    ld a, [de]                                    ; $7459: $1a
    ld e, $1a                                     ; $745a: $1e $1a
    ld e, $19                                     ; $745c: $1e $19
    rra                                           ; $745e: $1f
    dec e                                         ; $745f: $1d
    rra                                           ; $7460: $1f
    dec de                                        ; $7461: $1b
    rra                                           ; $7462: $1f
    db $fc                                        ; $7463: $fc
    cp a                                          ; $7464: $bf
    ld a, d                                       ; $7465: $7a
    ld e, a                                       ; $7466: $5f
    inc sp                                        ; $7467: $33
    cpl                                           ; $7468: $2f
    ld [bc], a                                    ; $7469: $02
    ld a, a                                       ; $746a: $7f
    add d                                         ; $746b: $82
    scf                                           ; $746c: $37
    ccf                                           ; $746d: $3f
    ld [bc], a                                    ; $746e: $02
    dec e                                         ; $746f: $1d
    inc d                                         ; $7470: $14
    nop                                           ; $7471: $00
    add d                                         ; $7472: $82
    rra                                           ; $7473: $1f
    dec e                                         ; $7474: $1d
    ld [bc], a                                    ; $7475: $02
    ld a, [de]                                    ; $7476: $1a
    add d                                         ; $7477: $82
    inc c                                         ; $7478: $0c
    inc e                                         ; $7479: $1c
    ld [bc], a                                    ; $747a: $02
    ld e, $02                                     ; $747b: $1e $02
    inc e                                         ; $747d: $1c
    add d                                         ; $747e: $82

Call_0dd_747f:
    ld [$0218], sp                                ; $747f: $08 $18 $02
    db $10                                        ; $7482: $10
    ld [de], a                                    ; $7483: $12
    nop                                           ; $7484: $00
    rst $38                                       ; $7485: $ff
    rlca                                          ; $7486: $07
    ld bc, $07f8                                  ; $7487: $01 $f8 $07
    ld a, [c]                                     ; $748a: $f2
    ld bc, $fdec                                  ; $748b: $01 $ec $fd
    adc b                                         ; $748e: $88
    nop                                           ; $748f: $00
    ld e, h                                       ; $7490: $5c
    nop                                           ; $7491: $00
    jp c, $8600                                   ; $7492: $da $00 $86

    nop                                           ; $7495: $00
    ld bc, $0007                                  ; $7496: $01 $07 $00
    add [hl]                                      ; $7499: $86
    add e                                         ; $749a: $83
    nop                                           ; $749b: $00
    ld bc, $0028                                  ; $749c: $01 $28 $00
    db $10                                        ; $749f: $10
    dec bc                                        ; $74a0: $0b
    nop                                           ; $74a1: $00
    rst $38                                       ; $74a2: $ff
    dec c                                         ; $74a3: $0d
    inc b                                         ; $74a4: $04
    ei                                            ; $74a5: $fb
    dec b                                         ; $74a6: $05
    rst $30                                       ; $74a7: $f7
    cp $eb                                        ; $74a8: $fe $eb
    ld a, [$ffeb]                                 ; $74aa: $fa $eb $ff
    ei                                            ; $74ad: $fb
    ld a, [$fffb]                                 ; $74ae: $fa $fb $ff
    ld [bc], a                                    ; $74b1: $02
    rrca                                          ; $74b2: $0f
    ld [bc], a                                    ; $74b3: $02
    inc d                                         ; $74b4: $14
    ld [bc], a                                    ; $74b5: $02
    inc h                                         ; $74b6: $24
    adc h                                         ; $74b7: $8c
    cpl                                           ; $74b8: $2f
    dec hl                                        ; $74b9: $2b
    ld a, a                                       ; $74ba: $7f
    ld a, b                                       ; $74bb: $78
    ld a, a                                       ; $74bc: $7f
    ld l, l                                       ; $74bd: $6d
    ccf                                           ; $74be: $3f

Jump_0dd_74bf:
    jr nc, jr_0dd_7540                            ; $74bf: $30 $7f

    ld [hl], d                                    ; $74c1: $72
    ld l, a                                       ; $74c2: $6f
    ld l, b                                       ; $74c3: $68
    ld [bc], a                                    ; $74c4: $02
    ld a, a                                       ; $74c5: $7f
    adc h                                         ; $74c6: $8c
    ld l, d                                       ; $74c7: $6a
    ld a, d                                       ; $74c8: $7a
    ld e, l                                       ; $74c9: $5d
    ld a, l                                       ; $74ca: $7d
    sbc d                                         ; $74cb: $9a
    rst $38                                       ; $74cc: $ff
    cp l                                          ; $74cd: $bd
    rst $38                                       ; $74ce: $ff
    sbc l                                         ; $74cf: $9d
    rst $38                                       ; $74d0: $ff
    db $fc                                        ; $74d1: $fc
    rst $38                                       ; $74d2: $ff
    ld [bc], a                                    ; $74d3: $02
    db $10                                        ; $74d4: $10
    ld [bc], a                                    ; $74d5: $02
    ld [$1402], sp                                ; $74d6: $08 $02 $14
    ld [bc], a                                    ; $74d9: $02
    inc b                                         ; $74da: $04
    ld [bc], a                                    ; $74db: $02
    ld a, [de]                                    ; $74dc: $1a
    add [hl]                                      ; $74dd: $86
    ld e, $16                                     ; $74de: $1e $16
    inc e                                         ; $74e0: $1c
    inc c                                         ; $74e1: $0c
    ld a, [de]                                    ; $74e2: $1a
    ld a, [bc]                                    ; $74e3: $0a
    ld [bc], a                                    ; $74e4: $02
    ld [de], a                                    ; $74e5: $12
    ld [bc], a                                    ; $74e6: $02
    ld a, [de]                                    ; $74e7: $1a
    ld [bc], a                                    ; $74e8: $02
    ld e, $83                                     ; $74e9: $1e $83
    ld a, [de]                                    ; $74eb: $1a
    ld e, $1a                                     ; $74ec: $1e $1a
    inc bc                                        ; $74ee: $03
    ld e, $8a                                     ; $74ef: $1e $8a
    add hl, de                                    ; $74f1: $19
    rra                                           ; $74f2: $1f
    ld de, $fa1f                                  ; $74f3: $11 $1f $fa
    cp a                                          ; $74f6: $bf
    ei                                            ; $74f7: $fb
    cp a                                          ; $74f8: $bf
    ld d, a                                       ; $74f9: $57
    ld e, a                                       ; $74fa: $5f
    ld [bc], a                                    ; $74fb: $02
    ccf                                           ; $74fc: $3f
    add d                                         ; $74fd: $82
    scf                                           ; $74fe: $37
    ccf                                           ; $74ff: $3f
    ld [bc], a                                    ; $7500: $02
    ld e, $02                                     ; $7501: $1e $02
    inc c                                         ; $7503: $0c
    ld [de], a                                    ; $7504: $12
    nop                                           ; $7505: $00
    add [hl]                                      ; $7506: $86
    rra                                           ; $7507: $1f
    inc de                                        ; $7508: $13
    ld c, $1e                                     ; $7509: $0e $1e
    inc c                                         ; $750b: $0c
    inc e                                         ; $750c: $1c
    ld [bc], a                                    ; $750d: $02
    ld e, $02                                     ; $750e: $1e $02
    inc e                                         ; $7510: $1c
    ld [bc], a                                    ; $7511: $02
    jr @+$16                                      ; $7512: $18 $14

    nop                                           ; $7514: $00
    rst $38                                       ; $7515: $ff
    rlca                                          ; $7516: $07
    ld bc, $07f8                                  ; $7517: $01 $f8 $07
    ld a, [c]                                     ; $751a: $f2
    ld bc, $fdec                                  ; $751b: $01 $ec $fd
    adc b                                         ; $751e: $88
    nop                                           ; $751f: $00
    ld e, h                                       ; $7520: $5c
    nop                                           ; $7521: $00
    jp c, $8600                                   ; $7522: $da $00 $86

    nop                                           ; $7525: $00
    ld bc, $0005                                  ; $7526: $01 $05 $00
    adc b                                         ; $7529: $88
    ld bc, $8300                                  ; $752a: $01 $00 $83
    nop                                           ; $752d: $00
    ld bc, $0028                                  ; $752e: $01 $28 $00
    db $10                                        ; $7531: $10
    dec bc                                        ; $7532: $0b
    nop                                           ; $7533: $00
    rst $38                                       ; $7534: $ff
    dec c                                         ; $7535: $0d
    inc b                                         ; $7536: $04
    ei                                            ; $7537: $fb
    dec b                                         ; $7538: $05
    rst $30                                       ; $7539: $f7
    cp $ec                                        ; $753a: $fe $ec
    ld a, [$ffec]                                 ; $753c: $fa $ec $ff
    db $fc                                        ; $753f: $fc

jr_0dd_7540:
    ld a, [$fffc]                                 ; $7540: $fa $fc $ff
    ld [bc], a                                    ; $7543: $02
    rrca                                          ; $7544: $0f
    ld [bc], a                                    ; $7545: $02
    inc d                                         ; $7546: $14
    ld [bc], a                                    ; $7547: $02
    inc h                                         ; $7548: $24
    adc h                                         ; $7549: $8c
    ld l, a                                       ; $754a: $6f
    ld l, e                                       ; $754b: $6b
    ld a, a                                       ; $754c: $7f
    ld a, b                                       ; $754d: $78
    ld a, a                                       ; $754e: $7f
    ld l, l                                       ; $754f: $6d
    ccf                                           ; $7550: $3f
    jr nc, @+$81                                  ; $7551: $30 $7f

    ld [hl], d                                    ; $7553: $72
    ld l, a                                       ; $7554: $6f
    ld l, b                                       ; $7555: $68
    ld [bc], a                                    ; $7556: $02
    ccf                                           ; $7557: $3f
    adc h                                         ; $7558: $8c
    ld l, d                                       ; $7559: $6a
    ld a, d                                       ; $755a: $7a
    ld e, l                                       ; $755b: $5d
    ld a, l                                       ; $755c: $7d
    ld e, d                                       ; $755d: $5a
    ld a, a                                       ; $755e: $7f
    cp l                                          ; $755f: $bd
    rst $38                                       ; $7560: $ff
    sbc l                                         ; $7561: $9d
    rst $38                                       ; $7562: $ff
    call c, Call_000_02ff                         ; $7563: $dc $ff $02
    db $10                                        ; $7566: $10
    ld [bc], a                                    ; $7567: $02
    ld [$1402], sp                                ; $7568: $08 $02 $14
    ld [bc], a                                    ; $756b: $02
    ld [bc], a                                    ; $756c: $02
    ld [bc], a                                    ; $756d: $02
    ld a, [de]                                    ; $756e: $1a
    add [hl]                                      ; $756f: $86
    ld e, $16                                     ; $7570: $1e $16
    inc e                                         ; $7572: $1c
    inc c                                         ; $7573: $0c
    ld a, [de]                                    ; $7574: $1a
    ld a, [bc]                                    ; $7575: $0a
    ld [bc], a                                    ; $7576: $02
    ld [de], a                                    ; $7577: $12
    ld [bc], a                                    ; $7578: $02
    inc e                                         ; $7579: $1c
    sub d                                         ; $757a: $92
    ld d, $1e                                     ; $757b: $16 $1e
    ld a, [de]                                    ; $757d: $1a
    ld e, $1a                                     ; $757e: $1e $1a
    ld e, $1d                                     ; $7580: $1e $1d
    rra                                           ; $7582: $1f
    dec e                                         ; $7583: $1d
    rra                                           ; $7584: $1f
    add hl, de                                    ; $7585: $19
    rra                                           ; $7586: $1f
    ld a, d                                       ; $7587: $7a
    ld a, a                                       ; $7588: $7f
    ld a, [$f7bf]                                 ; $7589: $fa $bf $f7
    cp a                                          ; $758c: $bf
    ld [bc], a                                    ; $758d: $02
    ld a, a                                       ; $758e: $7f
    add d                                         ; $758f: $82
    dec d                                         ; $7590: $15
    dec e                                         ; $7591: $1d
    ld [bc], a                                    ; $7592: $02
    inc e                                         ; $7593: $1c
    inc d                                         ; $7594: $14
    nop                                           ; $7595: $00
    add d                                         ; $7596: $82
    rra                                           ; $7597: $1f
    add hl, de                                    ; $7598: $19
    ld [bc], a                                    ; $7599: $02
    ld e, $82                                     ; $759a: $1e $82
    ld c, $1e                                     ; $759c: $0e $1e
    ld [bc], a                                    ; $759e: $02
    inc e                                         ; $759f: $1c
    ld [bc], a                                    ; $75a0: $02
    jr jr_0dd_75b9                                ; $75a1: $18 $16

    nop                                           ; $75a3: $00
    rst $38                                       ; $75a4: $ff
    rlca                                          ; $75a5: $07
    ld bc, $07f8                                  ; $75a6: $01 $f8 $07
    ld a, [c]                                     ; $75a9: $f2
    ld bc, $fded                                  ; $75aa: $01 $ed $fd
    adc b                                         ; $75ad: $88
    nop                                           ; $75ae: $00
    ld e, h                                       ; $75af: $5c
    nop                                           ; $75b0: $00
    jp c, $8700                                   ; $75b1: $da $00 $87

    nop                                           ; $75b4: $00
    ld bc, $0005                                  ; $75b5: $01 $05 $00
    add e                                         ; $75b8: $83

jr_0dd_75b9:
    ld bc, $8300                                  ; $75b9: $01 $00 $83
    ld [bc], a                                    ; $75bc: $02
    nop                                           ; $75bd: $00
    add e                                         ; $75be: $83

Jump_0dd_75bf:
    jr z, jr_0dd_75c1                             ; $75bf: $28 $00

jr_0dd_75c1:
    db $10                                        ; $75c1: $10
    dec bc                                        ; $75c2: $0b
    nop                                           ; $75c3: $00
    rst $38                                       ; $75c4: $ff
    dec c                                         ; $75c5: $0d
    inc b                                         ; $75c6: $04
    ei                                            ; $75c7: $fb
    dec b                                         ; $75c8: $05
    rst $30                                       ; $75c9: $f7
    cp $eb                                        ; $75ca: $fe $eb
    ld a, [$ffeb]                                 ; $75cc: $fa $eb $ff
    ei                                            ; $75cf: $fb
    ld a, [$fffb]                                 ; $75d0: $fa $fb $ff
    ld [bc], a                                    ; $75d3: $02
    rrca                                          ; $75d4: $0f
    ld [bc], a                                    ; $75d5: $02
    inc d                                         ; $75d6: $14
    ld [bc], a                                    ; $75d7: $02
    inc h                                         ; $75d8: $24
    adc h                                         ; $75d9: $8c
    cpl                                           ; $75da: $2f
    dec hl                                        ; $75db: $2b
    ld a, a                                       ; $75dc: $7f
    ld a, b                                       ; $75dd: $78
    ld a, a                                       ; $75de: $7f
    ld l, l                                       ; $75df: $6d
    ld a, a                                       ; $75e0: $7f
    ld [hl], b                                    ; $75e1: $70
    ccf                                           ; $75e2: $3f
    ld [hl-], a                                   ; $75e3: $32
    ld l, a                                       ; $75e4: $6f
    ld l, b                                       ; $75e5: $68
    ld [bc], a                                    ; $75e6: $02
    ld a, a                                       ; $75e7: $7f
    ld [bc], a                                    ; $75e8: $02
    ld a, d                                       ; $75e9: $7a
    adc d                                         ; $75ea: $8a
    ld e, l                                       ; $75eb: $5d
    ld a, l                                       ; $75ec: $7d
    ld e, d                                       ; $75ed: $5a
    ld a, a                                       ; $75ee: $7f
    sbc l                                         ; $75ef: $9d
    rst $38                                       ; $75f0: $ff
    cp l                                          ; $75f1: $bd
    rst $38                                       ; $75f2: $ff
    db $dd                                        ; $75f3: $dd
    rst $38                                       ; $75f4: $ff
    ld [bc], a                                    ; $75f5: $02
    db $10                                        ; $75f6: $10
    ld [bc], a                                    ; $75f7: $02
    ld [$1402], sp                                ; $75f8: $08 $02 $14
    ld [bc], a                                    ; $75fb: $02
    inc b                                         ; $75fc: $04
    ld [bc], a                                    ; $75fd: $02
    ld a, [de]                                    ; $75fe: $1a
    add [hl]                                      ; $75ff: $86
    ld e, $16                                     ; $7600: $1e $16
    ld e, $0e                                     ; $7602: $1e $0e
    inc e                                         ; $7604: $1c
    inc c                                         ; $7605: $0c
    ld [bc], a                                    ; $7606: $02
    ld [de], a                                    ; $7607: $12
    ld [bc], a                                    ; $7608: $02
    ld a, [de]                                    ; $7609: $1a
    sub d                                         ; $760a: $92
    ld d, $1e                                     ; $760b: $16 $1e
    ld a, [de]                                    ; $760d: $1a
    ld e, $1a                                     ; $760e: $1e $1a
    ld e, $19                                     ; $7610: $1e $19
    rra                                           ; $7612: $1f
    dec e                                         ; $7613: $1d
    rra                                           ; $7614: $1f
    dec de                                        ; $7615: $1b
    rra                                           ; $7616: $1f
    ld sp, hl                                     ; $7617: $f9
    cp a                                          ; $7618: $bf
    ld a, d                                       ; $7619: $7a
    ld e, a                                       ; $761a: $5f
    ld [hl], $2f                                  ; $761b: $36 $2f
    ld [bc], a                                    ; $761d: $02
    ld a, a                                       ; $761e: $7f
    ld [bc], a                                    ; $761f: $02
    ccf                                           ; $7620: $3f
    add d                                         ; $7621: $82
    dec d                                         ; $7622: $15
    dec e                                         ; $7623: $1d
    ld [bc], a                                    ; $7624: $02
    ld [$0012], sp                                ; $7625: $08 $12 $00
    add d                                         ; $7628: $82
    rra                                           ; $7629: $1f
    dec e                                         ; $762a: $1d
    ld [bc], a                                    ; $762b: $02
    ld a, [de]                                    ; $762c: $1a
    add d                                         ; $762d: $82
    inc c                                         ; $762e: $0c
    inc e                                         ; $762f: $1c
    ld [bc], a                                    ; $7630: $02
    ld e, $82                                     ; $7631: $1e $82
    inc c                                         ; $7633: $0c
    inc e                                         ; $7634: $1c
    ld [bc], a                                    ; $7635: $02
    jr @+$16                                      ; $7636: $18 $14

    nop                                           ; $7638: $00
    rst $38                                       ; $7639: $ff
    rlca                                          ; $763a: $07
    ld bc, $07f8                                  ; $763b: $01 $f8 $07
    ld a, [c]                                     ; $763e: $f2
    ld bc, $fdec                                  ; $763f: $01 $ec $fd
    adc b                                         ; $7642: $88
    nop                                           ; $7643: $00
    ld e, h                                       ; $7644: $5c
    nop                                           ; $7645: $00
    jp c, $8600                                   ; $7646: $da $00 $86

    nop                                           ; $7649: $00
    ld bc, $0007                                  ; $764a: $01 $07 $00
    add [hl]                                      ; $764d: $86
    add e                                         ; $764e: $83
    nop                                           ; $764f: $00
    ld bc, $0028                                  ; $7650: $01 $28 $00
    db $10                                        ; $7653: $10
    dec bc                                        ; $7654: $0b
    nop                                           ; $7655: $00
    rst $38                                       ; $7656: $ff
    dec c                                         ; $7657: $0d
    inc b                                         ; $7658: $04
    ld a, [$f704]                                 ; $7659: $fa $04 $f7
    cp $eb                                        ; $765c: $fe $eb
    ei                                            ; $765e: $fb
    db $ec                                        ; $765f: $ec
    db $fd                                        ; $7660: $fd
    ei                                            ; $7661: $fb
    ld a, [$fcfb]                                 ; $7662: $fa $fb $fc
    ld [bc], a                                    ; $7665: $02
    rra                                           ; $7666: $1f
    ld [bc], a                                    ; $7667: $02
    inc h                                         ; $7668: $24
    ld [bc], a                                    ; $7669: $02
    ld b, e                                       ; $766a: $43
    adc h                                         ; $766b: $8c
    ld d, a                                       ; $766c: $57
    ld d, l                                       ; $766d: $55
    ld h, a                                       ; $766e: $67
    ld h, h                                       ; $766f: $64
    ld a, [hl]                                    ; $7670: $7e
    ld a, d                                       ; $7671: $7a
    ld e, a                                       ; $7672: $5f
    ld d, b                                       ; $7673: $50
    rst $18                                       ; $7674: $df
    ret c                                         ; $7675: $d8

    adc a                                         ; $7676: $8f
    adc c                                         ; $7677: $89
    ld [bc], a                                    ; $7678: $02
    cp [hl]                                       ; $7679: $be
    adc h                                         ; $767a: $8c
    ld [$adfa], a                                 ; $767b: $ea $fa $ad
    db $fd                                        ; $767e: $fd
    ld l, e                                       ; $767f: $6b
    ld a, a                                       ; $7680: $7f
    ld e, l                                       ; $7681: $5d
    ld a, a                                       ; $7682: $7f
    ld c, l                                       ; $7683: $4d
    ld a, a                                       ; $7684: $7f
    db $dd                                        ; $7685: $dd
    rst $38                                       ; $7686: $ff
    ld [bc], a                                    ; $7687: $02
    ld [bc], a                                    ; $7688: $02
    ld [bc], a                                    ; $7689: $02
    ld bc, $0206                                  ; $768a: $01 $06 $02
    add d                                         ; $768d: $82
    inc bc                                        ; $768e: $03
    ld bc, $0202                                  ; $768f: $01 $02 $02
    stop                                          ; $7692: $10 $00
    adc [hl]                                      ; $7694: $8e
    db $f4                                        ; $7695: $f4
    sbc h                                         ; $7696: $9c
    ld b, b                                       ; $7697: $40
    ld h, b                                       ; $7698: $60
    ld a, a                                       ; $7699: $7f
    ld a, h                                       ; $769a: $7c
    ld a, $3f                                     ; $769b: $3e $3f
    ld a, l                                       ; $769d: $7d
    ld a, a                                       ; $769e: $7f
    cp e                                          ; $769f: $bb
    rst $38                                       ; $76a0: $ff
    ld e, h                                       ; $76a1: $5c
    ld a, a                                       ; $76a2: $7f
    ld [bc], a                                    ; $76a3: $02
    ccf                                           ; $76a4: $3f
    inc d                                         ; $76a5: $14
    nop                                           ; $76a6: $00
    ld a, [bc]                                    ; $76a7: $0a
    ld [bc], a                                    ; $76a8: $02
    ld [bc], a                                    ; $76a9: $02
    inc bc                                        ; $76aa: $03
    ld [de], a                                    ; $76ab: $12
    nop                                           ; $76ac: $00
    rst $38                                       ; $76ad: $ff
    rlca                                          ; $76ae: $07
    ld bc, $07f8                                  ; $76af: $01 $f8 $07
    ld a, [c]                                     ; $76b2: $f2
    ld bc, $fcec                                  ; $76b3: $01 $ec $fc
    sub l                                         ; $76b6: $95
    nop                                           ; $76b7: $00
    ld [hl], $00                                  ; $76b8: $36 $00
    ld a, c                                       ; $76ba: $79
    nop                                           ; $76bb: $00
    ld d, b                                       ; $76bc: $50
    nop                                           ; $76bd: $00
    jr nc, jr_0dd_76c0                            ; $76be: $30 $00

jr_0dd_76c0:
    ld [bc], a                                    ; $76c0: $02
    nop                                           ; $76c1: $00
    ld b, b                                       ; $76c2: $40
    nop                                           ; $76c3: $00
    ld b, b                                       ; $76c4: $40
    nop                                           ; $76c5: $00
    ldh [rP1], a                                  ; $76c6: $e0 $00
    add b                                         ; $76c8: $80
    ld [$0400], sp                                ; $76c9: $08 $00 $04
    dec bc                                        ; $76cc: $0b
    nop                                           ; $76cd: $00
    rst $38                                       ; $76ce: $ff
    dec c                                         ; $76cf: $0d
    inc b                                         ; $76d0: $04
    ld a, [$f704]                                 ; $76d1: $fa $04 $f7
    cp $eb                                        ; $76d4: $fe $eb
    ei                                            ; $76d6: $fb
    db $ec                                        ; $76d7: $ec
    db $fd                                        ; $76d8: $fd
    ei                                            ; $76d9: $fb
    ld a, [$fdfb]                                 ; $76da: $fa $fb $fd
    ld [bc], a                                    ; $76dd: $02
    rra                                           ; $76de: $1f
    ld [bc], a                                    ; $76df: $02
    inc h                                         ; $76e0: $24
    ld [bc], a                                    ; $76e1: $02
    ld b, e                                       ; $76e2: $43
    adc h                                         ; $76e3: $8c
    ld d, a                                       ; $76e4: $57
    ld d, l                                       ; $76e5: $55
    ld h, a                                       ; $76e6: $67
    ld h, h                                       ; $76e7: $64
    ld a, [hl]                                    ; $76e8: $7e
    ld a, d                                       ; $76e9: $7a
    ld e, a                                       ; $76ea: $5f
    ld d, b                                       ; $76eb: $50
    rst $18                                       ; $76ec: $df
    ret c                                         ; $76ed: $d8

    adc a                                         ; $76ee: $8f
    adc c                                         ; $76ef: $89
    ld [bc], a                                    ; $76f0: $02
    cp [hl]                                       ; $76f1: $be
    ld [bc], a                                    ; $76f2: $02
    ld a, [$ad8a]                                 ; $76f3: $fa $8a $ad
    db $fd                                        ; $76f6: $fd
    ld l, e                                       ; $76f7: $6b
    ld a, a                                       ; $76f8: $7f
    ld l, l                                       ; $76f9: $6d
    ld a, a                                       ; $76fa: $7f
    ld b, l                                       ; $76fb: $45
    ld a, a                                       ; $76fc: $7f
    ld h, a                                       ; $76fd: $67
    ld a, a                                       ; $76fe: $7f
    ld [bc], a                                    ; $76ff: $02
    ld [bc], a                                    ; $7700: $02
    ld [bc], a                                    ; $7701: $02
    ld bc, $0206                                  ; $7702: $01 $06 $02
    add d                                         ; $7705: $82
    inc bc                                        ; $7706: $03
    ld bc, $0202                                  ; $7707: $01 $02 $02
    stop                                          ; $770a: $10 $00
    add d                                         ; $770c: $82
    cp [hl]                                       ; $770d: $be
    ld [c], a                                     ; $770e: $e2
    ld [bc], a                                    ; $770f: $02
    ld h, b                                       ; $7710: $60
    add c                                         ; $7711: $81
    ld a, a                                       ; $7712: $7f
    ld [bc], a                                    ; $7713: $02
    ld a, e                                       ; $7714: $7b
    add a                                         ; $7715: $87
    ld a, a                                       ; $7716: $7f
    or a                                          ; $7717: $b7
    rst $38                                       ; $7718: $ff
    cp a                                          ; $7719: $bf
    rst $38                                       ; $771a: $ff
    rst $30                                       ; $771b: $f7
    rst $38                                       ; $771c: $ff
    ld [bc], a                                    ; $771d: $02
    ld a, [hl]                                    ; $771e: $7e
    inc d                                         ; $771f: $14
    nop                                           ; $7720: $00
    add c                                         ; $7721: $81
    ld [bc], a                                    ; $7722: $02
    inc bc                                        ; $7723: $03
    ld b, $82                                     ; $7724: $06 $82
    ld bc, $0207                                  ; $7726: $01 $07 $02
    ld b, $16                                     ; $7729: $06 $16
    nop                                           ; $772b: $00
    rst $38                                       ; $772c: $ff
    rlca                                          ; $772d: $07
    ld bc, $07f8                                  ; $772e: $01 $f8 $07
    ld a, [c]                                     ; $7731: $f2
    ld bc, $fcec                                  ; $7732: $01 $ec $fc
    sub l                                         ; $7735: $95
    nop                                           ; $7736: $00
    ld [hl], $00                                  ; $7737: $36 $00
    ld a, c                                       ; $7739: $79
    nop                                           ; $773a: $00
    ld d, b                                       ; $773b: $50
    nop                                           ; $773c: $00
    jr nc, jr_0dd_773f                            ; $773d: $30 $00

jr_0dd_773f:
    ld [bc], a                                    ; $773f: $02
    nop                                           ; $7740: $00
    ld b, b                                       ; $7741: $40
    nop                                           ; $7742: $00
    ld b, b                                       ; $7743: $40
    nop                                           ; $7744: $00
    ldh [rP1], a                                  ; $7745: $e0 $00
    add b                                         ; $7747: $80
    ld [$0400], sp                                ; $7748: $08 $00 $04
    dec bc                                        ; $774b: $0b
    nop                                           ; $774c: $00
    rst $38                                       ; $774d: $ff
    dec c                                         ; $774e: $0d
    inc b                                         ; $774f: $04
    ld a, [$f704]                                 ; $7750: $fa $04 $f7
    cp $ec                                        ; $7753: $fe $ec
    ei                                            ; $7755: $fb
    db $ed                                        ; $7756: $ed
    db $fd                                        ; $7757: $fd
    db $fc                                        ; $7758: $fc
    ld a, [$fcfc]                                 ; $7759: $fa $fc $fc
    ld [bc], a                                    ; $775c: $02
    rra                                           ; $775d: $1f
    ld [bc], a                                    ; $775e: $02
    inc h                                         ; $775f: $24
    ld [bc], a                                    ; $7760: $02
    ld b, e                                       ; $7761: $43
    adc h                                         ; $7762: $8c
    ld d, a                                       ; $7763: $57
    ld d, l                                       ; $7764: $55
    ld l, a                                       ; $7765: $6f
    ld l, h                                       ; $7766: $6c
    ld a, [hl]                                    ; $7767: $7e
    ld a, d                                       ; $7768: $7a
    rst $18                                       ; $7769: $df
    ret nc                                        ; $776a: $d0

    sbc a                                         ; $776b: $9f
    sbc b                                         ; $776c: $98
    sbc a                                         ; $776d: $9f
    sbc c                                         ; $776e: $99
    ld [bc], a                                    ; $776f: $02
    cp $8c                                        ; $7770: $fe $8c
    db $eb                                        ; $7772: $eb
    ei                                            ; $7773: $fb
    ld l, l                                       ; $7774: $6d
    ld a, l                                       ; $7775: $7d
    ld l, e                                       ; $7776: $6b
    ld a, a                                       ; $7777: $7f
    ld e, l                                       ; $7778: $5d
    ld a, a                                       ; $7779: $7f
    ld c, l                                       ; $777a: $4d
    ld a, a                                       ; $777b: $7f
    ld e, a                                       ; $777c: $5f
    ld a, a                                       ; $777d: $7f
    ld [bc], a                                    ; $777e: $02
    ld [bc], a                                    ; $777f: $02
    ld [bc], a                                    ; $7780: $02
    ld bc, $0206                                  ; $7781: $01 $06 $02
    add d                                         ; $7784: $82
    inc bc                                        ; $7785: $03
    ld bc, $0202                                  ; $7786: $01 $02 $02
    stop                                          ; $7789: $10 $00
    add h                                         ; $778b: $84
    db $fc                                        ; $778c: $fc
    add h                                         ; $778d: $84
    ld b, b                                       ; $778e: $40
    ld h, b                                       ; $778f: $60
    ld [bc], a                                    ; $7790: $02
    ld a, a                                       ; $7791: $7f
    ld [bc], a                                    ; $7792: $02
    rst $38                                       ; $7793: $ff
    add h                                         ; $7794: $84
    cp e                                          ; $7795: $bb
    rst $38                                       ; $7796: $ff
    cp a                                          ; $7797: $bf
    rst $38                                       ; $7798: $ff
    ld [bc], a                                    ; $7799: $02
    ld a, h                                       ; $779a: $7c
    ld d, $00                                     ; $779b: $16 $00
    inc b                                         ; $779d: $04
    ld [bc], a                                    ; $779e: $02
    add c                                         ; $779f: $81
    ld bc, $0303                                  ; $77a0: $01 $03 $03
    ld d, $00                                     ; $77a3: $16 $00
    rst $38                                       ; $77a5: $ff
    rlca                                          ; $77a6: $07
    ld bc, $07f8                                  ; $77a7: $01 $f8 $07
    ld a, [c]                                     ; $77aa: $f2
    ld bc, $fced                                  ; $77ab: $01 $ed $fc
    sub b                                         ; $77ae: $90
    nop                                           ; $77af: $00
    ld [hl], $00                                  ; $77b0: $36 $00
    ld a, c                                       ; $77b2: $79
    nop                                           ; $77b3: $00
    ld d, b                                       ; $77b4: $50
    nop                                           ; $77b5: $00
    jr nz, jr_0dd_77b8                            ; $77b6: $20 $00

jr_0dd_77b8:
    ld [bc], a                                    ; $77b8: $02
    nop                                           ; $77b9: $00
    ld b, b                                       ; $77ba: $40
    nop                                           ; $77bb: $00
    ret nz                                        ; $77bc: $c0

    nop                                           ; $77bd: $00
    ret nz                                        ; $77be: $c0

    ld [bc], a                                    ; $77bf: $02
    nop                                           ; $77c0: $00
    add e                                         ; $77c1: $83
    ld [$0400], sp                                ; $77c2: $08 $00 $04
    dec bc                                        ; $77c5: $0b
    nop                                           ; $77c6: $00
    rst $38                                       ; $77c7: $ff
    dec c                                         ; $77c8: $0d
    inc b                                         ; $77c9: $04
    ld a, [$f704]                                 ; $77ca: $fa $04 $f7
    cp $eb                                        ; $77cd: $fe $eb
    ei                                            ; $77cf: $fb
    db $ec                                        ; $77d0: $ec
    db $fd                                        ; $77d1: $fd
    ei                                            ; $77d2: $fb
    ld a, [$fcfb]                                 ; $77d3: $fa $fb $fc
    ld [bc], a                                    ; $77d6: $02
    rra                                           ; $77d7: $1f
    ld [bc], a                                    ; $77d8: $02
    inc h                                         ; $77d9: $24
    ld [bc], a                                    ; $77da: $02
    ld b, d                                       ; $77db: $42
    adc h                                         ; $77dc: $8c
    ld d, a                                       ; $77dd: $57
    ld d, l                                       ; $77de: $55
    ld h, a                                       ; $77df: $67
    ld h, h                                       ; $77e0: $64
    ld a, [hl]                                    ; $77e1: $7e
    ld a, d                                       ; $77e2: $7a
    ld a, a                                       ; $77e3: $7f
    ld [hl], b                                    ; $77e4: $70
    ld e, a                                       ; $77e5: $5f
    ld e, b                                       ; $77e6: $58
    adc a                                         ; $77e7: $8f
    adc c                                         ; $77e8: $89
    ld [bc], a                                    ; $77e9: $02
    cp [hl]                                       ; $77ea: $be
    adc h                                         ; $77eb: $8c
    ld l, d                                       ; $77ec: $6a
    ld a, d                                       ; $77ed: $7a
    xor l                                         ; $77ee: $ad
    db $fd                                        ; $77ef: $fd
    db $db                                        ; $77f0: $db
    rst $38                                       ; $77f1: $ff
    ld e, l                                       ; $77f2: $5d
    ld a, a                                       ; $77f3: $7f
    call $9dff                                    ; $77f4: $cd $ff $9d
    rst $38                                       ; $77f7: $ff
    ld [bc], a                                    ; $77f8: $02
    ld [bc], a                                    ; $77f9: $02
    ld [bc], a                                    ; $77fa: $02
    ld bc, $0206                                  ; $77fb: $01 $06 $02
    add d                                         ; $77fe: $82
    inc bc                                        ; $77ff: $03
    ld bc, $0202                                  ; $7800: $01 $02 $02
    stop                                          ; $7803: $10 $00
    adc b                                         ; $7805: $88
    db $f4                                        ; $7806: $f4
    inc a                                         ; $7807: $3c
    ld b, b                                       ; $7808: $40
    ld h, b                                       ; $7809: $60
    ccf                                           ; $780a: $3f
    dec sp                                        ; $780b: $3b
    ld a, [hl]                                    ; $780c: $7e
    ld a, l                                       ; $780d: $7d
    ld [bc], a                                    ; $780e: $02
    ld a, a                                       ; $780f: $7f
    add h                                         ; $7810: $84
    cp h                                          ; $7811: $bc
    rst $38                                       ; $7812: $ff
    ld e, a                                       ; $7813: $5f
    ld a, a                                       ; $7814: $7f
    ld [bc], a                                    ; $7815: $02
    jr c, jr_0dd_782c                             ; $7816: $38 $14

    nop                                           ; $7818: $00
    add c                                         ; $7819: $81
    ld bc, $0305                                  ; $781a: $01 $05 $03
    ld [bc], a                                    ; $781d: $02
    ld [bc], a                                    ; $781e: $02
    ld [bc], a                                    ; $781f: $02
    inc bc                                        ; $7820: $03
    inc d                                         ; $7821: $14
    nop                                           ; $7822: $00
    rst $38                                       ; $7823: $ff
    rlca                                          ; $7824: $07
    ld bc, $07f8                                  ; $7825: $01 $f8 $07
    ld a, [c]                                     ; $7828: $f2
    ld bc, $fcec                                  ; $7829: $01 $ec $fc

jr_0dd_782c:
    adc d                                         ; $782c: $8a
    nop                                           ; $782d: $00
    ld [hl], $00                                  ; $782e: $36 $00
    ld a, e                                       ; $7830: $7b
    nop                                           ; $7831: $00
    ld d, b                                       ; $7832: $50
    nop                                           ; $7833: $00
    jr nc, jr_0dd_7836                            ; $7834: $30 $00

jr_0dd_7836:
    ld [bc], a                                    ; $7836: $02
    inc bc                                        ; $7837: $03
    nop                                           ; $7838: $00
    adc b                                         ; $7839: $88
    ld b, b                                       ; $783a: $40
    nop                                           ; $783b: $00
    ldh [rP1], a                                  ; $783c: $e0 $00
    add b                                         ; $783e: $80
    ld [$0400], sp                                ; $783f: $08 $00 $04
    dec bc                                        ; $7842: $0b
    nop                                           ; $7843: $00
    rst $38                                       ; $7844: $ff
    dec c                                         ; $7845: $0d
    inc b                                         ; $7846: $04
    ld a, [$f704]                                 ; $7847: $fa $04 $f7
    cp $eb                                        ; $784a: $fe $eb
    ei                                            ; $784c: $fb
    db $ec                                        ; $784d: $ec
    db $fd                                        ; $784e: $fd
    ei                                            ; $784f: $fb
    ld a, [$fefb]                                 ; $7850: $fa $fb $fe
    ld [bc], a                                    ; $7853: $02
    rra                                           ; $7854: $1f
    ld [bc], a                                    ; $7855: $02
    inc h                                         ; $7856: $24
    ld [bc], a                                    ; $7857: $02
    ld b, e                                       ; $7858: $43
    adc h                                         ; $7859: $8c
    ld d, a                                       ; $785a: $57
    ld d, l                                       ; $785b: $55
    ld h, a                                       ; $785c: $67
    ld h, h                                       ; $785d: $64
    ld a, [hl]                                    ; $785e: $7e
    ld a, d                                       ; $785f: $7a
    ld e, a                                       ; $7860: $5f
    ld d, b                                       ; $7861: $50
    rst $18                                       ; $7862: $df
    ret c                                         ; $7863: $d8

    adc a                                         ; $7864: $8f
    adc c                                         ; $7865: $89
    ld [bc], a                                    ; $7866: $02
    cp [hl]                                       ; $7867: $be
    adc h                                         ; $7868: $8c
    ld [$adfa], a                                 ; $7869: $ea $fa $ad
    db $fd                                        ; $786c: $fd
    ld e, e                                       ; $786d: $5b
    ld a, a                                       ; $786e: $7f
    ld e, l                                       ; $786f: $5d
    ld a, a                                       ; $7870: $7f
    sbc l                                         ; $7871: $9d
    rst $38                                       ; $7872: $ff
    sbc l                                         ; $7873: $9d
    rst $38                                       ; $7874: $ff
    ld [bc], a                                    ; $7875: $02
    ld [bc], a                                    ; $7876: $02
    ld [bc], a                                    ; $7877: $02
    ld bc, $0206                                  ; $7878: $01 $06 $02
    add d                                         ; $787b: $82
    inc bc                                        ; $787c: $03
    ld bc, $0202                                  ; $787d: $01 $02 $02
    stop                                          ; $7880: $10 $00
    adc [hl]                                      ; $7882: $8e
    db $f4                                        ; $7883: $f4
    ld a, h                                       ; $7884: $7c
    and b                                         ; $7885: $a0
    ldh [$7e], a                                  ; $7886: $e0 $7e
    ld [hl], a                                    ; $7888: $77
    ld a, $3b                                     ; $7889: $3e $3b
    ld a, l                                       ; $788b: $7d
    ld a, a                                       ; $788c: $7f
    cp a                                          ; $788d: $bf
    rst $38                                       ; $788e: $ff
    ld c, a                                       ; $788f: $4f
    ld a, a                                       ; $7890: $7f
    ld [bc], a                                    ; $7891: $02
    add hl, sp                                    ; $7892: $39
    inc d                                         ; $7893: $14
    nop                                           ; $7894: $00
    ld [bc], a                                    ; $7895: $02
    ld [$0481], sp                                ; $7896: $08 $81 $04
    inc bc                                        ; $7899: $03
    inc c                                         ; $789a: $0c
    add d                                         ; $789b: $82
    inc bc                                        ; $789c: $03
    rrca                                          ; $789d: $0f
    ld [bc], a                                    ; $789e: $02
    ld c, $14                                     ; $789f: $0e $14
    nop                                           ; $78a1: $00
    rst $38                                       ; $78a2: $ff
    rlca                                          ; $78a3: $07
    ld bc, $07f8                                  ; $78a4: $01 $f8 $07
    ld a, [c]                                     ; $78a7: $f2
    ld bc, $fcec                                  ; $78a8: $01 $ec $fc
    sub l                                         ; $78ab: $95
    nop                                           ; $78ac: $00
    ld [hl], $00                                  ; $78ad: $36 $00
    ld a, c                                       ; $78af: $79
    nop                                           ; $78b0: $00
    ld d, b                                       ; $78b1: $50
    nop                                           ; $78b2: $00
    jr nc, jr_0dd_78b5                            ; $78b3: $30 $00

jr_0dd_78b5:
    ld [bc], a                                    ; $78b5: $02
    nop                                           ; $78b6: $00
    ld b, b                                       ; $78b7: $40
    nop                                           ; $78b8: $00
    ld b, b                                       ; $78b9: $40
    nop                                           ; $78ba: $00
    ldh [rP1], a                                  ; $78bb: $e0 $00
    add b                                         ; $78bd: $80
    ld [$0400], sp                                ; $78be: $08 $00 $04
    dec bc                                        ; $78c1: $0b
    nop                                           ; $78c2: $00
    rst $38                                       ; $78c3: $ff
    dec c                                         ; $78c4: $0d
    inc b                                         ; $78c5: $04
    ld a, [$f704]                                 ; $78c6: $fa $04 $f7
    cp $ec                                        ; $78c9: $fe $ec
    ei                                            ; $78cb: $fb
    db $ed                                        ; $78cc: $ed
    db $fd                                        ; $78cd: $fd
    db $fc                                        ; $78ce: $fc
    ld a, [$fdfc]                                 ; $78cf: $fa $fc $fd
    ld [bc], a                                    ; $78d2: $02
    rra                                           ; $78d3: $1f
    ld [bc], a                                    ; $78d4: $02
    inc h                                         ; $78d5: $24
    ld [bc], a                                    ; $78d6: $02
    ld b, e                                       ; $78d7: $43
    adc h                                         ; $78d8: $8c
    ld d, a                                       ; $78d9: $57
    ld d, l                                       ; $78da: $55
    ld l, a                                       ; $78db: $6f
    ld l, h                                       ; $78dc: $6c
    ld a, [hl]                                    ; $78dd: $7e
    ld a, d                                       ; $78de: $7a
    rst $18                                       ; $78df: $df
    ret nc                                        ; $78e0: $d0

    sbc a                                         ; $78e1: $9f
    sbc b                                         ; $78e2: $98
    sbc a                                         ; $78e3: $9f
    sbc c                                         ; $78e4: $99
    ld [bc], a                                    ; $78e5: $02
    cp $8c                                        ; $78e6: $fe $8c
    db $eb                                        ; $78e8: $eb
    ei                                            ; $78e9: $fb
    ld l, l                                       ; $78ea: $6d
    ld a, l                                       ; $78eb: $7d
    ld e, e                                       ; $78ec: $5b
    ld a, a                                       ; $78ed: $7f
    ld e, l                                       ; $78ee: $5d
    ld a, a                                       ; $78ef: $7f
    adc l                                         ; $78f0: $8d
    rst $38                                       ; $78f1: $ff
    sbc l                                         ; $78f2: $9d
    rst $38                                       ; $78f3: $ff
    ld [bc], a                                    ; $78f4: $02
    ld [bc], a                                    ; $78f5: $02
    ld [bc], a                                    ; $78f6: $02
    ld bc, $0206                                  ; $78f7: $01 $06 $02
    add d                                         ; $78fa: $82
    inc bc                                        ; $78fb: $03
    ld bc, $0202                                  ; $78fc: $01 $02 $02
    stop                                          ; $78ff: $10 $00
    adc h                                         ; $7901: $8c
    db $f4                                        ; $7902: $f4
    inc a                                         ; $7903: $3c
    and b                                         ; $7904: $a0
    ldh [$7e], a                                  ; $7905: $e0 $7e
    ld a, c                                       ; $7907: $79
    ld a, l                                       ; $7908: $7d
    ld a, a                                       ; $7909: $7f
    cp l                                          ; $790a: $bd

jr_0dd_790b:
    rst $38                                       ; $790b: $ff
    ld e, [hl]                                    ; $790c: $5e
    ld a, a                                       ; $790d: $7f
    ld [bc], a                                    ; $790e: $02
    dec sp                                        ; $790f: $3b
    ld d, $00                                     ; $7910: $16 $00
    ld b, $04                                     ; $7912: $06 $04
    add d                                         ; $7914: $82
    ld [bc], a                                    ; $7915: $02
    ld b, $02                                     ; $7916: $06 $02
    rlca                                          ; $7918: $07
    inc d                                         ; $7919: $14
    nop                                           ; $791a: $00
    rst $38                                       ; $791b: $ff
    rlca                                          ; $791c: $07
    ld bc, $07f8                                  ; $791d: $01 $f8 $07
    ld a, [c]                                     ; $7920: $f2
    ld bc, $fced                                  ; $7921: $01 $ed $fc
    sub b                                         ; $7924: $90
    nop                                           ; $7925: $00
    ld [hl], $00                                  ; $7926: $36 $00
    ld a, c                                       ; $7928: $79
    nop                                           ; $7929: $00
    ld d, b                                       ; $792a: $50
    nop                                           ; $792b: $00
    jr nz, jr_0dd_792e                            ; $792c: $20 $00

jr_0dd_792e:
    ld [bc], a                                    ; $792e: $02
    nop                                           ; $792f: $00
    ld b, b                                       ; $7930: $40
    nop                                           ; $7931: $00
    ret nz                                        ; $7932: $c0

    nop                                           ; $7933: $00
    ret nz                                        ; $7934: $c0

    ld [bc], a                                    ; $7935: $02
    nop                                           ; $7936: $00
    add e                                         ; $7937: $83
    ld [$0400], sp                                ; $7938: $08 $00 $04
    dec bc                                        ; $793b: $0b
    nop                                           ; $793c: $00
    rst $38                                       ; $793d: $ff
    dec c                                         ; $793e: $0d
    inc b                                         ; $793f: $04
    ld a, [$f704]                                 ; $7940: $fa $04 $f7
    cp $eb                                        ; $7943: $fe $eb
    ei                                            ; $7945: $fb
    db $ec                                        ; $7946: $ec
    db $fd                                        ; $7947: $fd
    ei                                            ; $7948: $fb
    ld a, [$fcfb]                                 ; $7949: $fa $fb $fc
    ld [bc], a                                    ; $794c: $02
    rra                                           ; $794d: $1f
    ld [bc], a                                    ; $794e: $02
    inc h                                         ; $794f: $24
    ld [bc], a                                    ; $7950: $02
    ld b, d                                       ; $7951: $42
    adc h                                         ; $7952: $8c
    ld d, a                                       ; $7953: $57
    ld d, l                                       ; $7954: $55
    ld h, a                                       ; $7955: $67
    ld h, h                                       ; $7956: $64
    ld a, [hl]                                    ; $7957: $7e
    ld a, d                                       ; $7958: $7a
    ld a, a                                       ; $7959: $7f
    ld [hl], b                                    ; $795a: $70
    ld e, a                                       ; $795b: $5f
    ld e, b                                       ; $795c: $58
    adc a                                         ; $795d: $8f
    adc c                                         ; $795e: $89
    ld [bc], a                                    ; $795f: $02
    cp [hl]                                       ; $7960: $be
    ld [bc], a                                    ; $7961: $02
    ld a, d                                       ; $7962: $7a
    adc d                                         ; $7963: $8a
    xor l                                         ; $7964: $ad
    db $fd                                        ; $7965: $fd
    db $eb                                        ; $7966: $eb
    rst $38                                       ; $7967: $ff
    ld l, l                                       ; $7968: $6d
    ld a, a                                       ; $7969: $7f
    ld b, l                                       ; $796a: $45
    ld a, a                                       ; $796b: $7f
    ld c, l                                       ; $796c: $4d
    ld a, a                                       ; $796d: $7f
    ld [bc], a                                    ; $796e: $02
    ld [bc], a                                    ; $796f: $02
    ld [bc], a                                    ; $7970: $02
    ld bc, $0206                                  ; $7971: $01 $06 $02
    add d                                         ; $7974: $82
    inc bc                                        ; $7975: $03
    ld bc, $0202                                  ; $7976: $01 $02 $02
    stop                                          ; $7979: $10 $00
    add d                                         ; $797b: $82
    ld a, [$02c6]                                 ; $797c: $fa $c6 $02
    jr nz, jr_0dd_790b                            ; $797f: $20 $8a

    ld a, a                                       ; $7981: $7f
    ld [hl], a                                    ; $7982: $77
    ld a, l                                       ; $7983: $7d
    ld a, a                                       ; $7984: $7f
    ei                                            ; $7985: $fb
    rst $38                                       ; $7986: $ff
    cp a                                          ; $7987: $bf
    rst $38                                       ; $7988: $ff
    ld e, l                                       ; $7989: $5d
    ld a, a                                       ; $798a: $7f
    ld [bc], a                                    ; $798b: $02

jr_0dd_798c:
    ccf                                           ; $798c: $3f
    inc d                                         ; $798d: $14
    nop                                           ; $798e: $00
    add c                                         ; $798f: $81
    ld bc, $0303                                  ; $7990: $01 $03 $03
    ld [bc], a                                    ; $7993: $02
    ld [bc], a                                    ; $7994: $02
    ld [bc], a                                    ; $7995: $02
    inc bc                                        ; $7996: $03
    ld [bc], a                                    ; $7997: $02
    nop                                           ; $7998: $00
    ld [bc], a                                    ; $7999: $02
    ld [bc], a                                    ; $799a: $02
    ld [de], a                                    ; $799b: $12
    nop                                           ; $799c: $00
    rst $38                                       ; $799d: $ff
    rlca                                          ; $799e: $07
    ld bc, $07f8                                  ; $799f: $01 $f8 $07
    ld a, [c]                                     ; $79a2: $f2
    ld bc, $fcec                                  ; $79a3: $01 $ec $fc
    adc d                                         ; $79a6: $8a
    nop                                           ; $79a7: $00
    ld [hl], $00                                  ; $79a8: $36 $00
    ld a, e                                       ; $79aa: $7b
    nop                                           ; $79ab: $00
    ld d, b                                       ; $79ac: $50
    nop                                           ; $79ad: $00
    jr nc, jr_0dd_79b0                            ; $79ae: $30 $00

jr_0dd_79b0:
    ld [bc], a                                    ; $79b0: $02
    inc bc                                        ; $79b1: $03
    nop                                           ; $79b2: $00
    adc b                                         ; $79b3: $88
    ld b, b                                       ; $79b4: $40
    nop                                           ; $79b5: $00
    ldh [rP1], a                                  ; $79b6: $e0 $00
    add b                                         ; $79b8: $80
    ld [$0400], sp                                ; $79b9: $08 $00 $04
    dec bc                                        ; $79bc: $0b
    nop                                           ; $79bd: $00
    rst $38                                       ; $79be: $ff
    dec c                                         ; $79bf: $0d
    inc b                                         ; $79c0: $04
    ld hl, sp+$07                                 ; $79c1: $f8 $07
    ld a, [c]                                     ; $79c3: $f2
    ld bc, $fbeb                                  ; $79c4: $01 $eb $fb
    db $ec                                        ; $79c7: $ec
    db $fd                                        ; $79c8: $fd
    ei                                            ; $79c9: $fb
    ld a, [$fcfb]                                 ; $79ca: $fa $fb $fc
    ld [bc], a                                    ; $79cd: $02
    rra                                           ; $79ce: $1f
    ld [bc], a                                    ; $79cf: $02
    inc h                                         ; $79d0: $24
    ld [bc], a                                    ; $79d1: $02
    ld b, e                                       ; $79d2: $43
    adc h                                         ; $79d3: $8c
    ld d, a                                       ; $79d4: $57
    ld d, l                                       ; $79d5: $55
    ld h, a                                       ; $79d6: $67
    ld h, h                                       ; $79d7: $64
    ld a, [hl]                                    ; $79d8: $7e
    ld a, d                                       ; $79d9: $7a
    ld e, a                                       ; $79da: $5f
    ld d, b                                       ; $79db: $50
    rst $18                                       ; $79dc: $df
    ret c                                         ; $79dd: $d8

    adc a                                         ; $79de: $8f
    adc c                                         ; $79df: $89
    ld [bc], a                                    ; $79e0: $02
    cp [hl]                                       ; $79e1: $be
    adc h                                         ; $79e2: $8c
    ld [$adfa], a                                 ; $79e3: $ea $fa $ad
    db $fd                                        ; $79e6: $fd
    ld e, e                                       ; $79e7: $5b
    ld a, a                                       ; $79e8: $7f
    ld b, l                                       ; $79e9: $45
    ld a, a                                       ; $79ea: $7f
    ld c, a                                       ; $79eb: $4f
    ld a, e                                       ; $79ec: $7b
    ld e, a                                       ; $79ed: $5f
    ld [hl], l                                    ; $79ee: $75
    ld [bc], a                                    ; $79ef: $02
    ld [bc], a                                    ; $79f0: $02
    ld [bc], a                                    ; $79f1: $02
    ld bc, $0206                                  ; $79f2: $01 $06 $02
    add d                                         ; $79f5: $82
    inc bc                                        ; $79f6: $03
    ld bc, $0202                                  ; $79f7: $01 $02 $02
    stop                                          ; $79fa: $10 $00
    add d                                         ; $79fc: $82
    cp $fa                                        ; $79fd: $fe $fa
    ld [bc], a                                    ; $79ff: $02
    jr nz, jr_0dd_798c                            ; $7a00: $20 $8a

    ld a, $3f                                     ; $7a02: $3e $3f
    ld a, $3f                                     ; $7a04: $3e $3f
    ld a, l                                       ; $7a06: $7d
    ld a, a                                       ; $7a07: $7f
    cp e                                          ; $7a08: $bb
    rst $38                                       ; $7a09: $ff
    ld e, h                                       ; $7a0a: $5c
    ld a, a                                       ; $7a0b: $7f
    ld [bc], a                                    ; $7a0c: $02
    ccf                                           ; $7a0d: $3f
    inc d                                         ; $7a0e: $14
    nop                                           ; $7a0f: $00
    ld a, [bc]                                    ; $7a10: $0a
    ld [bc], a                                    ; $7a11: $02
    ld [bc], a                                    ; $7a12: $02
    inc bc                                        ; $7a13: $03
    ld [de], a                                    ; $7a14: $12
    nop                                           ; $7a15: $00
    rst $38                                       ; $7a16: $ff
    rlca                                          ; $7a17: $07
    ld bc, $07f8                                  ; $7a18: $01 $f8 $07
    ld a, [c]                                     ; $7a1b: $f2
    ld bc, $fcec                                  ; $7a1c: $01 $ec $fc
    sub l                                         ; $7a1f: $95
    nop                                           ; $7a20: $00
    ld [hl], $00                                  ; $7a21: $36 $00
    ld a, c                                       ; $7a23: $79
    nop                                           ; $7a24: $00
    ld d, b                                       ; $7a25: $50
    nop                                           ; $7a26: $00
    jr nc, jr_0dd_7a29                            ; $7a27: $30 $00

jr_0dd_7a29:
    ld [bc], a                                    ; $7a29: $02
    nop                                           ; $7a2a: $00
    ld b, b                                       ; $7a2b: $40
    nop                                           ; $7a2c: $00
    ld b, b                                       ; $7a2d: $40
    nop                                           ; $7a2e: $00
    ldh [rP1], a                                  ; $7a2f: $e0 $00
    add b                                         ; $7a31: $80
    ld [$0400], sp                                ; $7a32: $08 $00 $04
    dec bc                                        ; $7a35: $0b
    nop                                           ; $7a36: $00
    rst $38                                       ; $7a37: $ff
    dec c                                         ; $7a38: $0d
    inc b                                         ; $7a39: $04
    ld hl, sp+$07                                 ; $7a3a: $f8 $07
    ld a, [c]                                     ; $7a3c: $f2
    ld bc, $fbeb                                  ; $7a3d: $01 $eb $fb
    db $ec                                        ; $7a40: $ec
    cp $fb                                        ; $7a41: $fe $fb
    ld a, [$fcfb]                                 ; $7a43: $fa $fb $fc
    ld [bc], a                                    ; $7a46: $02
    rra                                           ; $7a47: $1f
    ld [bc], a                                    ; $7a48: $02
    inc h                                         ; $7a49: $24
    ld [bc], a                                    ; $7a4a: $02
    ld b, e                                       ; $7a4b: $43
    adc h                                         ; $7a4c: $8c
    ld d, a                                       ; $7a4d: $57
    ld d, l                                       ; $7a4e: $55
    ld h, a                                       ; $7a4f: $67
    ld h, h                                       ; $7a50: $64
    ld a, [hl]                                    ; $7a51: $7e
    ld a, d                                       ; $7a52: $7a
    ld e, a                                       ; $7a53: $5f
    ld d, b                                       ; $7a54: $50
    rst $18                                       ; $7a55: $df
    ret c                                         ; $7a56: $d8

    adc a                                         ; $7a57: $8f
    adc c                                         ; $7a58: $89
    ld [bc], a                                    ; $7a59: $02
    cp [hl]                                       ; $7a5a: $be
    adc h                                         ; $7a5b: $8c
    ld [$adfa], a                                 ; $7a5c: $ea $fa $ad
    db $fd                                        ; $7a5f: $fd
    ld d, e                                       ; $7a60: $53
    ld a, [hl]                                    ; $7a61: $7e
    ld b, a                                       ; $7a62: $47
    ld a, l                                       ; $7a63: $7d
    daa                                           ; $7a64: $27
    ccf                                           ; $7a65: $3f
    dec a                                         ; $7a66: $3d
    ccf                                           ; $7a67: $3f
    ld [bc], a                                    ; $7a68: $02
    inc b                                         ; $7a69: $04
    ld [bc], a                                    ; $7a6a: $02
    ld [bc], a                                    ; $7a6b: $02
    ld b, $04                                     ; $7a6c: $06 $04
    add d                                         ; $7a6e: $82
    ld b, $02                                     ; $7a6f: $06 $02
    ld [bc], a                                    ; $7a71: $02
    inc b                                         ; $7a72: $04
    ld [$0200], sp                                ; $7a73: $08 $00 $02
    inc b                                         ; $7a76: $04
    add h                                         ; $7a77: $84
    ld b, $02                                     ; $7a78: $06 $02
    rlca                                          ; $7a7a: $07
    dec b                                         ; $7a7b: $05
    ld [bc], a                                    ; $7a7c: $02
    ld [bc], a                                    ; $7a7d: $02
    add d                                         ; $7a7e: $82
    add sp, -$08                                  ; $7a7f: $e8 $f8
    ld [bc], a                                    ; $7a81: $02
    db $10                                        ; $7a82: $10
    adc d                                         ; $7a83: $8a
    ld a, $3f                                     ; $7a84: $3e $3f
    ld a, $3f                                     ; $7a86: $3e $3f
    ld a, l                                       ; $7a88: $7d
    ld a, a                                       ; $7a89: $7f
    cp e                                          ; $7a8a: $bb
    rst $38                                       ; $7a8b: $ff
    ld e, h                                       ; $7a8c: $5c
    ld a, a                                       ; $7a8d: $7f
    ld [bc], a                                    ; $7a8e: $02
    ccf                                           ; $7a8f: $3f
    inc d                                         ; $7a90: $14
    nop                                           ; $7a91: $00
    ld a, [bc]                                    ; $7a92: $0a
    ld [bc], a                                    ; $7a93: $02
    ld [bc], a                                    ; $7a94: $02
    inc bc                                        ; $7a95: $03
    ld [de], a                                    ; $7a96: $12
    nop                                           ; $7a97: $00
    rst $38                                       ; $7a98: $ff
    rlca                                          ; $7a99: $07
    ld bc, $07f8                                  ; $7a9a: $01 $f8 $07
    ld a, [c]                                     ; $7a9d: $f2
    ld bc, $fcec                                  ; $7a9e: $01 $ec $fc
    sub l                                         ; $7aa1: $95
    nop                                           ; $7aa2: $00
    ld [hl], $00                                  ; $7aa3: $36 $00
    ld a, c                                       ; $7aa5: $79
    nop                                           ; $7aa6: $00
    ld d, b                                       ; $7aa7: $50
    nop                                           ; $7aa8: $00
    jr nc, jr_0dd_7aab                            ; $7aa9: $30 $00

jr_0dd_7aab:
    ld [bc], a                                    ; $7aab: $02
    nop                                           ; $7aac: $00
    ld b, b                                       ; $7aad: $40
    nop                                           ; $7aae: $00
    ld b, b                                       ; $7aaf: $40
    nop                                           ; $7ab0: $00
    ldh [rP1], a                                  ; $7ab1: $e0 $00
    add b                                         ; $7ab3: $80
    ld [$0400], sp                                ; $7ab4: $08 $00 $04
    dec bc                                        ; $7ab7: $0b
    nop                                           ; $7ab8: $00
    rst $38                                       ; $7ab9: $ff
    dec c                                         ; $7aba: $0d
    inc b                                         ; $7abb: $04
    ld hl, sp+$07                                 ; $7abc: $f8 $07
    ld a, [c]                                     ; $7abe: $f2
    ld bc, $fbeb                                  ; $7abf: $01 $eb $fb
    db $ec                                        ; $7ac2: $ec
    nop                                           ; $7ac3: $00
    ei                                            ; $7ac4: $fb
    ld a, [$fcfb]                                 ; $7ac5: $fa $fb $fc
    ld [bc], a                                    ; $7ac8: $02
    rra                                           ; $7ac9: $1f
    ld [bc], a                                    ; $7aca: $02
    inc h                                         ; $7acb: $24
    ld [bc], a                                    ; $7acc: $02
    ld b, e                                       ; $7acd: $43
    adc h                                         ; $7ace: $8c
    ld d, a                                       ; $7acf: $57
    ld d, l                                       ; $7ad0: $55
    ld h, a                                       ; $7ad1: $67
    ld h, h                                       ; $7ad2: $64
    ld a, [hl]                                    ; $7ad3: $7e
    ld a, d                                       ; $7ad4: $7a
    ld e, a                                       ; $7ad5: $5f
    ld d, b                                       ; $7ad6: $50
    rst $18                                       ; $7ad7: $df
    ret c                                         ; $7ad8: $d8

    adc a                                         ; $7ad9: $8f
    adc c                                         ; $7ada: $89
    ld [bc], a                                    ; $7adb: $02
    cp [hl]                                       ; $7adc: $be
    adc c                                         ; $7add: $89
    ld [$a7fa], a                                 ; $7ade: $ea $fa $a7
    rst $38                                       ; $7ae1: $ff
    ld l, c                                       ; $7ae2: $69
    ld a, a                                       ; $7ae3: $7f
    ld hl, $333f                                  ; $7ae4: $21 $3f $33
    inc bc                                        ; $7ae7: $03
    ccf                                           ; $7ae8: $3f
    ld [bc], a                                    ; $7ae9: $02
    db $10                                        ; $7aea: $10
    ld [bc], a                                    ; $7aeb: $02
    ld [$1006], sp                                ; $7aec: $08 $06 $10
    add d                                         ; $7aef: $82
    jr @+$0a                                      ; $7af0: $18 $08

    ld [bc], a                                    ; $7af2: $02
    db $10                                        ; $7af3: $10
    inc b                                         ; $7af4: $04
    nop                                           ; $7af5: $00
    ld [bc], a                                    ; $7af6: $02
    inc e                                         ; $7af7: $1c
    add h                                         ; $7af8: $84
    ld e, $02                                     ; $7af9: $1e $02
    rra                                           ; $7afb: $1f
    dec c                                         ; $7afc: $0d
    ld [bc], a                                    ; $7afd: $02
    ld a, [de]                                    ; $7afe: $1a
    ld [bc], a                                    ; $7aff: $02
    db $10                                        ; $7b00: $10
    ld [bc], a                                    ; $7b01: $02
    nop                                           ; $7b02: $00
    add d                                         ; $7b03: $82
    and b                                         ; $7b04: $a0
    ldh [rSC], a                                  ; $7b05: $e0 $02
    inc e                                         ; $7b07: $1c
    adc d                                         ; $7b08: $8a
    ld a, $3f                                     ; $7b09: $3e $3f
    ld a, $3f                                     ; $7b0b: $3e $3f
    ld a, l                                       ; $7b0d: $7d
    ld a, a                                       ; $7b0e: $7f
    cp e                                          ; $7b0f: $bb
    rst $38                                       ; $7b10: $ff
    ld e, h                                       ; $7b11: $5c
    ld a, a                                       ; $7b12: $7f
    ld [bc], a                                    ; $7b13: $02
    ccf                                           ; $7b14: $3f
    inc d                                         ; $7b15: $14
    nop                                           ; $7b16: $00
    ld a, [bc]                                    ; $7b17: $0a
    ld [bc], a                                    ; $7b18: $02
    ld [bc], a                                    ; $7b19: $02
    inc bc                                        ; $7b1a: $03
    ld [de], a                                    ; $7b1b: $12
    nop                                           ; $7b1c: $00
    rst $38                                       ; $7b1d: $ff
    rlca                                          ; $7b1e: $07
    ld bc, $07f8                                  ; $7b1f: $01 $f8 $07
    ld a, [c]                                     ; $7b22: $f2
    ld bc, $fcec                                  ; $7b23: $01 $ec $fc
    sub e                                         ; $7b26: $93
    nop                                           ; $7b27: $00
    ld [hl], $00                                  ; $7b28: $36 $00
    ld a, c                                       ; $7b2a: $79
    nop                                           ; $7b2b: $00
    ld d, b                                       ; $7b2c: $50
    nop                                           ; $7b2d: $00
    jr nc, jr_0dd_7b30                            ; $7b2e: $30 $00

jr_0dd_7b30:
    ld [bc], a                                    ; $7b30: $02
    nop                                           ; $7b31: $00
    ld b, b                                       ; $7b32: $40
    nop                                           ; $7b33: $00
    ld b, b                                       ; $7b34: $40
    nop                                           ; $7b35: $00
    ldh [rP1], a                                  ; $7b36: $e0 $00
    add b                                         ; $7b38: $80
    ld [$000d], sp                                ; $7b39: $08 $0d $00
    rst $38                                       ; $7b3c: $ff
    dec c                                         ; $7b3d: $0d
    inc b                                         ; $7b3e: $04
    ld hl, sp+$07                                 ; $7b3f: $f8 $07
    ld a, [c]                                     ; $7b41: $f2
    ld bc, $fbeb                                  ; $7b42: $01 $eb $fb
    db $ec                                        ; $7b45: $ec
    ld bc, $fafb                                  ; $7b46: $01 $fb $fa
    ei                                            ; $7b49: $fb
    db $fc                                        ; $7b4a: $fc
    ld [bc], a                                    ; $7b4b: $02
    rra                                           ; $7b4c: $1f
    ld [bc], a                                    ; $7b4d: $02
    inc h                                         ; $7b4e: $24
    ld [bc], a                                    ; $7b4f: $02
    ld b, e                                       ; $7b50: $43
    adc h                                         ; $7b51: $8c
    ld d, a                                       ; $7b52: $57
    ld d, l                                       ; $7b53: $55
    ld h, a                                       ; $7b54: $67
    ld h, h                                       ; $7b55: $64
    ld a, [hl]                                    ; $7b56: $7e
    ld a, d                                       ; $7b57: $7a
    ld e, a                                       ; $7b58: $5f
    ld d, b                                       ; $7b59: $50
    rst $18                                       ; $7b5a: $df
    ret c                                         ; $7b5b: $d8

    adc a                                         ; $7b5c: $8f
    adc c                                         ; $7b5d: $89
    ld [bc], a                                    ; $7b5e: $02
    cp a                                          ; $7b5f: $bf
    add a                                         ; $7b60: $87
    xor $ff                                       ; $7b61: $ee $ff
    or h                                          ; $7b63: $b4
    rst $38                                       ; $7b64: $ff
    ld [hl], b                                    ; $7b65: $70
    ld a, a                                       ; $7b66: $7f
    add hl, sp                                    ; $7b67: $39
    inc bc                                        ; $7b68: $03
    ccf                                           ; $7b69: $3f
    add d                                         ; $7b6a: $82
    dec a                                         ; $7b6b: $3d
    ccf                                           ; $7b6c: $3f
    ld [bc], a                                    ; $7b6d: $02
    jr nz, @+$04                                  ; $7b6e: $20 $02

    db $10                                        ; $7b70: $10
    ld b, $20                                     ; $7b71: $06 $20
    adc d                                         ; $7b73: $8a
    ld [hl-], a                                   ; $7b74: $32
    ld [de], a                                    ; $7b75: $12
    daa                                           ; $7b76: $27
    dec h                                         ; $7b77: $25
    ld e, $1a                                     ; $7b78: $1e $1a
    inc a                                         ; $7b7a: $3c
    inc h                                         ; $7b7b: $24
    jr c, jr_0dd_7ba6                             ; $7b7c: $38 $28

    ld [bc], a                                    ; $7b7e: $02
    jr c, jr_0dd_7b83                             ; $7b7f: $38 $02

    jr nc, jr_0dd_7b85                            ; $7b81: $30 $02

jr_0dd_7b83:
    jr nz, jr_0dd_7b89                            ; $7b83: $20 $04

jr_0dd_7b85:
    nop                                           ; $7b85: $00
    add d                                         ; $7b86: $82
    ld b, b                                       ; $7b87: $40
    ret nz                                        ; $7b88: $c0

jr_0dd_7b89:
    ld [bc], a                                    ; $7b89: $02
    ld e, $8a                                     ; $7b8a: $1e $8a
    ld a, $3f                                     ; $7b8c: $3e $3f
    ld a, $3f                                     ; $7b8e: $3e $3f
    ld a, l                                       ; $7b90: $7d
    ld a, a                                       ; $7b91: $7f
    cp e                                          ; $7b92: $bb
    rst $38                                       ; $7b93: $ff
    ld e, h                                       ; $7b94: $5c
    ld a, a                                       ; $7b95: $7f
    ld [bc], a                                    ; $7b96: $02
    ccf                                           ; $7b97: $3f
    inc d                                         ; $7b98: $14
    nop                                           ; $7b99: $00
    ld a, [bc]                                    ; $7b9a: $0a
    ld [bc], a                                    ; $7b9b: $02
    ld [bc], a                                    ; $7b9c: $02
    inc bc                                        ; $7b9d: $03
    ld [de], a                                    ; $7b9e: $12
    nop                                           ; $7b9f: $00
    rst $38                                       ; $7ba0: $ff
    rlca                                          ; $7ba1: $07
    ld bc, $07f8                                  ; $7ba2: $01 $f8 $07
    ld a, [c]                                     ; $7ba5: $f2

jr_0dd_7ba6:
    ld bc, $fcec                                  ; $7ba6: $01 $ec $fc
    sub d                                         ; $7ba9: $92
    nop                                           ; $7baa: $00
    ld [hl], $00                                  ; $7bab: $36 $00
    ld a, c                                       ; $7bad: $79
    nop                                           ; $7bae: $00
    ld d, b                                       ; $7baf: $50
    nop                                           ; $7bb0: $00
    jr nc, jr_0dd_7bb3                            ; $7bb1: $30 $00

jr_0dd_7bb3:
    ld [bc], a                                    ; $7bb3: $02
    nop                                           ; $7bb4: $00
    ld b, b                                       ; $7bb5: $40
    nop                                           ; $7bb6: $00
    ld b, b                                       ; $7bb7: $40
    nop                                           ; $7bb8: $00
    ldh [rP1], a                                  ; $7bb9: $e0 $00
    add b                                         ; $7bbb: $80
    ld c, $00                                     ; $7bbc: $0e $00
    rst $38                                       ; $7bbe: $ff
    dec c                                         ; $7bbf: $0d
    inc b                                         ; $7bc0: $04
    ld hl, sp+$07                                 ; $7bc1: $f8 $07
    ld a, [c]                                     ; $7bc3: $f2
    ld bc, $fbeb                                  ; $7bc4: $01 $eb $fb
    db $ec                                        ; $7bc7: $ec
    cp $fb                                        ; $7bc8: $fe $fb
    ld a, [$fcfb]                                 ; $7bca: $fa $fb $fc
    ld [bc], a                                    ; $7bcd: $02
    rra                                           ; $7bce: $1f
    ld [bc], a                                    ; $7bcf: $02
    inc h                                         ; $7bd0: $24
    ld [bc], a                                    ; $7bd1: $02
    ld b, e                                       ; $7bd2: $43
    sbc d                                         ; $7bd3: $9a
    ld d, a                                       ; $7bd4: $57
    ld d, l                                       ; $7bd5: $55
    ld h, a                                       ; $7bd6: $67
    ld h, h                                       ; $7bd7: $64
    ld a, [hl]                                    ; $7bd8: $7e
    ld a, d                                       ; $7bd9: $7a
    ld e, a                                       ; $7bda: $5f
    ld d, b                                       ; $7bdb: $50
    rst $18                                       ; $7bdc: $df
    ret c                                         ; $7bdd: $d8

    adc a                                         ; $7bde: $8f
    adc e                                         ; $7bdf: $8b
    cp l                                          ; $7be0: $bd
    cp a                                          ; $7be1: $bf
    jp hl                                         ; $7be2: $e9


    rst $38                                       ; $7be3: $ff
    and b                                         ; $7be4: $a0
    rst $38                                       ; $7be5: $ff
    ld a, e                                       ; $7be6: $7b
    ld a, a                                       ; $7be7: $7f
    dec a                                         ; $7be8: $3d
    ccf                                           ; $7be9: $3f
    dec a                                         ; $7bea: $3d
    ccf                                           ; $7beb: $3f
    dec a                                         ; $7bec: $3d
    ccf                                           ; $7bed: $3f
    ld [bc], a                                    ; $7bee: $02
    inc b                                         ; $7bef: $04
    ld [bc], a                                    ; $7bf0: $02
    ld [bc], a                                    ; $7bf1: $02
    inc b                                         ; $7bf2: $04
    inc b                                         ; $7bf3: $04
    ld [bc], a                                    ; $7bf4: $02
    ld b, $8a                                     ; $7bf5: $06 $8a
    rlca                                          ; $7bf7: $07
    dec b                                         ; $7bf8: $05
    rlca                                          ; $7bf9: $07
    dec b                                         ; $7bfa: $05
    rlca                                          ; $7bfb: $07
    dec b                                         ; $7bfc: $05
    rlca                                          ; $7bfd: $07
    inc bc                                        ; $7bfe: $03
    ld b, $02                                     ; $7bff: $06 $02
    ld [bc], a                                    ; $7c01: $02
    ld b, $02                                     ; $7c02: $06 $02
    inc b                                         ; $7c04: $04
    ld b, $00                                     ; $7c05: $06 $00
    add d                                         ; $7c07: $82
    add sp, -$08                                  ; $7c08: $e8 $f8
    ld [bc], a                                    ; $7c0a: $02
    db $10                                        ; $7c0b: $10
    adc d                                         ; $7c0c: $8a
    ld a, $3f                                     ; $7c0d: $3e $3f
    ld a, $3f                                     ; $7c0f: $3e $3f
    ld a, l                                       ; $7c11: $7d
    ld a, a                                       ; $7c12: $7f
    cp e                                          ; $7c13: $bb
    rst $38                                       ; $7c14: $ff
    ld e, h                                       ; $7c15: $5c
    ld a, a                                       ; $7c16: $7f
    ld [bc], a                                    ; $7c17: $02
    ccf                                           ; $7c18: $3f
    inc d                                         ; $7c19: $14
    nop                                           ; $7c1a: $00
    ld a, [bc]                                    ; $7c1b: $0a
    ld [bc], a                                    ; $7c1c: $02
    ld [bc], a                                    ; $7c1d: $02
    inc bc                                        ; $7c1e: $03
    ld [de], a                                    ; $7c1f: $12
    nop                                           ; $7c20: $00
    rst $38                                       ; $7c21: $ff
    rlca                                          ; $7c22: $07
    ld bc, $07f8                                  ; $7c23: $01 $f8 $07
    ld a, [c]                                     ; $7c26: $f2
    ld bc, $fcec                                  ; $7c27: $01 $ec $fc
    sub d                                         ; $7c2a: $92
    nop                                           ; $7c2b: $00
    ld [hl], $00                                  ; $7c2c: $36 $00
    ld a, c                                       ; $7c2e: $79
    nop                                           ; $7c2f: $00
    ld d, b                                       ; $7c30: $50
    nop                                           ; $7c31: $00
    jr nc, jr_0dd_7c34                            ; $7c32: $30 $00

jr_0dd_7c34:
    ld [bc], a                                    ; $7c34: $02
    nop                                           ; $7c35: $00
    ld b, b                                       ; $7c36: $40
    nop                                           ; $7c37: $00
    ld b, b                                       ; $7c38: $40
    nop                                           ; $7c39: $00
    ldh [rP1], a                                  ; $7c3a: $e0 $00
    add b                                         ; $7c3c: $80
    ld c, $00                                     ; $7c3d: $0e $00
    rst $38                                       ; $7c3f: $ff
    dec c                                         ; $7c40: $0d
    inc b                                         ; $7c41: $04
    ld hl, sp+$07                                 ; $7c42: $f8 $07
    ld a, [c]                                     ; $7c44: $f2
    ld bc, $fbeb                                  ; $7c45: $01 $eb $fb
    db $ec                                        ; $7c48: $ec
    cp $fb                                        ; $7c49: $fe $fb
    ld a, [$fcfb]                                 ; $7c4b: $fa $fb $fc
    ld [bc], a                                    ; $7c4e: $02
    rra                                           ; $7c4f: $1f
    ld [bc], a                                    ; $7c50: $02
    inc h                                         ; $7c51: $24
    ld [bc], a                                    ; $7c52: $02
    ld b, e                                       ; $7c53: $43
    add h                                         ; $7c54: $84
    ld d, a                                       ; $7c55: $57
    ld d, l                                       ; $7c56: $55
    ld h, a                                       ; $7c57: $67
    ld h, h                                       ; $7c58: $64
    ld [bc], a                                    ; $7c59: $02
    ld a, [hl]                                    ; $7c5a: $7e
    sub h                                         ; $7c5b: $94
    ld e, a                                       ; $7c5c: $5f
    ld d, l                                       ; $7c5d: $55
    rst $18                                       ; $7c5e: $df
    jp c, $8b8f                                   ; $7c5f: $da $8f $8b

    cp l                                          ; $7c62: $bd
    cp a                                          ; $7c63: $bf
    jp hl                                         ; $7c64: $e9


    rst $38                                       ; $7c65: $ff
    xor b                                         ; $7c66: $a8
    rst $38                                       ; $7c67: $ff
    ld [hl], e                                    ; $7c68: $73
    ld a, a                                       ; $7c69: $7f
    dec a                                         ; $7c6a: $3d
    ccf                                           ; $7c6b: $3f
    dec a                                         ; $7c6c: $3d
    ccf                                           ; $7c6d: $3f
    dec a                                         ; $7c6e: $3d
    ccf                                           ; $7c6f: $3f
    ld [bc], a                                    ; $7c70: $02
    inc b                                         ; $7c71: $04
    ld [bc], a                                    ; $7c72: $02
    ld [bc], a                                    ; $7c73: $02
    ld b, $04                                     ; $7c74: $06 $04
    add d                                         ; $7c76: $82
    ld b, $02                                     ; $7c77: $06 $02
    ld [bc], a                                    ; $7c79: $02
    ld b, $84                                     ; $7c7a: $06 $84
    rlca                                          ; $7c7c: $07
    ld bc, $0107                                  ; $7c7d: $01 $07 $01
    ld [bc], a                                    ; $7c80: $02
    ld b, $02                                     ; $7c81: $06 $02
    inc b                                         ; $7c83: $04
    ld [$8200], sp                                ; $7c84: $08 $00 $82
    add sp, -$08                                  ; $7c87: $e8 $f8
    ld [bc], a                                    ; $7c89: $02
    db $10                                        ; $7c8a: $10
    adc d                                         ; $7c8b: $8a
    ld a, $3f                                     ; $7c8c: $3e $3f
    ld a, $3f                                     ; $7c8e: $3e $3f
    ld a, l                                       ; $7c90: $7d
    ld a, a                                       ; $7c91: $7f
    cp e                                          ; $7c92: $bb
    rst $38                                       ; $7c93: $ff
    ld e, h                                       ; $7c94: $5c
    ld a, a                                       ; $7c95: $7f
    ld [bc], a                                    ; $7c96: $02
    ccf                                           ; $7c97: $3f
    inc d                                         ; $7c98: $14
    nop                                           ; $7c99: $00
    ld a, [bc]                                    ; $7c9a: $0a
    ld [bc], a                                    ; $7c9b: $02
    ld [bc], a                                    ; $7c9c: $02
    inc bc                                        ; $7c9d: $03
    ld [de], a                                    ; $7c9e: $12
    nop                                           ; $7c9f: $00
    rst $38                                       ; $7ca0: $ff
    rlca                                          ; $7ca1: $07
    ld bc, $07f8                                  ; $7ca2: $01 $f8 $07
    ld a, [c]                                     ; $7ca5: $f2
    ld bc, $fcec                                  ; $7ca6: $01 $ec $fc
    sub d                                         ; $7ca9: $92
    nop                                           ; $7caa: $00
    ld [hl], $00                                  ; $7cab: $36 $00
    ld a, c                                       ; $7cad: $79
    nop                                           ; $7cae: $00
    ld d, b                                       ; $7caf: $50
    nop                                           ; $7cb0: $00
    jr nc, jr_0dd_7cb3                            ; $7cb1: $30 $00

jr_0dd_7cb3:
    ld [bc], a                                    ; $7cb3: $02
    nop                                           ; $7cb4: $00
    ld b, b                                       ; $7cb5: $40
    nop                                           ; $7cb6: $00
    ld b, b                                       ; $7cb7: $40
    nop                                           ; $7cb8: $00
    ldh [rP1], a                                  ; $7cb9: $e0 $00
    add b                                         ; $7cbb: $80
    ld c, $00                                     ; $7cbc: $0e $00
    rst $38                                       ; $7cbe: $ff
    dec c                                         ; $7cbf: $0d
    inc b                                         ; $7cc0: $04
    ld hl, sp+$07                                 ; $7cc1: $f8 $07
    ld a, [c]                                     ; $7cc3: $f2
    ld bc, $fceb                                  ; $7cc4: $01 $eb $fc
    db $ec                                        ; $7cc7: $ec
    nop                                           ; $7cc8: $00
    ei                                            ; $7cc9: $fb
    ld a, [$fcfb]                                 ; $7cca: $fa $fb $fc
    ld [bc], a                                    ; $7ccd: $02
    rra                                           ; $7cce: $1f
    ld [bc], a                                    ; $7ccf: $02
    inc h                                         ; $7cd0: $24
    ld [bc], a                                    ; $7cd1: $02
    ld b, e                                       ; $7cd2: $43
    sub d                                         ; $7cd3: $92
    ld d, a                                       ; $7cd4: $57
    ld d, l                                       ; $7cd5: $55
    ld l, a                                       ; $7cd6: $6f
    ld l, h                                       ; $7cd7: $6c
    ld e, [hl]                                    ; $7cd8: $5e
    ld e, d                                       ; $7cd9: $5a
    rst $18                                       ; $7cda: $df
    ret nc                                        ; $7cdb: $d0

    sbc a                                         ; $7cdc: $9f
    sbc b                                         ; $7cdd: $98
    adc a                                         ; $7cde: $8f
    adc c                                         ; $7cdf: $89
    cp [hl]                                       ; $7ce0: $be
    cp a                                          ; $7ce1: $bf
    db $e4                                        ; $7ce2: $e4
    rst $38                                       ; $7ce3: $ff
    or b                                          ; $7ce4: $b0
    rst $38                                       ; $7ce5: $ff
    ld [bc], a                                    ; $7ce6: $02
    ld a, a                                       ; $7ce7: $7f
    add [hl]                                      ; $7ce8: $86
    cp l                                          ; $7ce9: $bd
    rst $38                                       ; $7cea: $ff
    cp l                                          ; $7ceb: $bd
    rst $38                                       ; $7cec: $ff
    ld a, [$02fe]                                 ; $7ced: $fa $fe $02
    ld [$0402], sp                                ; $7cf0: $08 $02 $04
    inc b                                         ; $7cf3: $04
    ld [$0a02], sp                                ; $7cf4: $08 $02 $0a
    adc h                                         ; $7cf7: $8c
    rrca                                          ; $7cf8: $0f
    dec b                                         ; $7cf9: $05
    rrca                                          ; $7cfa: $0f
    dec c                                         ; $7cfb: $0d
    rlca                                          ; $7cfc: $07
    dec b                                         ; $7cfd: $05
    rrca                                          ; $7cfe: $0f
    add hl, bc                                    ; $7cff: $09
    rlca                                          ; $7d00: $07
    dec c                                         ; $7d01: $0d
    ld b, $0e                                     ; $7d02: $06 $0e
    ld [bc], a                                    ; $7d04: $02
    ld [$0006], sp                                ; $7d05: $08 $06 $00
    add d                                         ; $7d08: $82
    and b                                         ; $7d09: $a0
    ldh [rSC], a                                  ; $7d0a: $e0 $02
    inc e                                         ; $7d0c: $1c
    adc d                                         ; $7d0d: $8a
    ld a, $3f                                     ; $7d0e: $3e $3f
    ld a, $3f                                     ; $7d10: $3e $3f
    ld a, l                                       ; $7d12: $7d
    ld a, a                                       ; $7d13: $7f
    cp e                                          ; $7d14: $bb
    rst $38                                       ; $7d15: $ff
    ld e, h                                       ; $7d16: $5c
    ld a, a                                       ; $7d17: $7f
    ld [bc], a                                    ; $7d18: $02
    ccf                                           ; $7d19: $3f
    inc d                                         ; $7d1a: $14
    nop                                           ; $7d1b: $00
    ld a, [bc]                                    ; $7d1c: $0a
    ld [bc], a                                    ; $7d1d: $02
    ld [bc], a                                    ; $7d1e: $02
    inc bc                                        ; $7d1f: $03
    ld [de], a                                    ; $7d20: $12
    nop                                           ; $7d21: $00
    rst $38                                       ; $7d22: $ff
    rlca                                          ; $7d23: $07
    ld bc, $07f8                                  ; $7d24: $01 $f8 $07
    ld a, [c]                                     ; $7d27: $f2
    ld bc, $fdec                                  ; $7d28: $01 $ec $fd
    sub d                                         ; $7d2b: $92
    nop                                           ; $7d2c: $00
    ld [hl], $00                                  ; $7d2d: $36 $00
    ld a, c                                       ; $7d2f: $79
    nop                                           ; $7d30: $00
    ld d, b                                       ; $7d31: $50
    nop                                           ; $7d32: $00
    jr nz, jr_0dd_7d35                            ; $7d33: $20 $00

jr_0dd_7d35:
    ld b, d                                       ; $7d35: $42
    nop                                           ; $7d36: $00
    ld b, b                                       ; $7d37: $40
    nop                                           ; $7d38: $00
    ret nz                                        ; $7d39: $c0

    nop                                           ; $7d3a: $00
    ldh [rP1], a                                  ; $7d3b: $e0 $00
    add b                                         ; $7d3d: $80
    ld c, $00                                     ; $7d3e: $0e $00
    rst $38                                       ; $7d40: $ff
    dec c                                         ; $7d41: $0d
    inc b                                         ; $7d42: $04
    ld hl, sp+$07                                 ; $7d43: $f8 $07
    ld a, [c]                                     ; $7d45: $f2
    ld bc, $f5f2                                  ; $7d46: $01 $f2 $f5
    db $eb                                        ; $7d49: $eb
    db $fd                                        ; $7d4a: $fd
    ei                                            ; $7d4b: $fb
    db $fd                                        ; $7d4c: $fd
    db $ed                                        ; $7d4d: $ed
    dec b                                         ; $7d4e: $05
    ld a, [bc]                                    ; $7d4f: $0a
    ld bc, $0002                                  ; $7d50: $01 $02 $00
    inc b                                         ; $7d53: $04
    ld bc, $0282                                  ; $7d54: $01 $82 $02
    inc bc                                        ; $7d57: $03
    ld b, $01                                     ; $7d58: $06 $01
    ld [bc], a                                    ; $7d5a: $02
    inc bc                                        ; $7d5b: $03
    add h                                         ; $7d5c: $84
    dec b                                         ; $7d5d: $05
    rlca                                          ; $7d5e: $07
    ld [bc], a                                    ; $7d5f: $02
    inc bc                                        ; $7d60: $03
    ld [bc], a                                    ; $7d61: $02
    ld bc, $3e02                                  ; $7d62: $01 $02 $3e
    ld [bc], a                                    ; $7d65: $02
    ld c, c                                       ; $7d66: $49
    ld [bc], a                                    ; $7d67: $02
    add [hl]                                      ; $7d68: $86
    adc h                                         ; $7d69: $8c
    xor a                                         ; $7d6a: $af
    xor e                                         ; $7d6b: $ab
    rst $08                                       ; $7d6c: $cf
    ret                                           ; $7d6d: $c9


    db $fd                                        ; $7d6e: $fd
    push af                                       ; $7d6f: $f5
    cp a                                          ; $7d70: $bf
    and b                                         ; $7d71: $a0
    cp a                                          ; $7d72: $bf
    or c                                          ; $7d73: $b1
    ld e, $12                                     ; $7d74: $1e $12
    ld [bc], a                                    ; $7d76: $02
    ld a, a                                       ; $7d77: $7f
    sbc b                                         ; $7d78: $98
    ret nz                                        ; $7d79: $c0

    rst $38                                       ; $7d7a: $ff
    ld a, h                                       ; $7d7b: $7c
    rst $38                                       ; $7d7c: $ff
    rst $30                                       ; $7d7d: $f7
    rst $38                                       ; $7d7e: $ff
    ld a, d                                       ; $7d7f: $7a
    cp $7a                                        ; $7d80: $fe $7a
    cp $f4                                        ; $7d82: $fe $f4
    db $fc                                        ; $7d84: $fc
    db $f4                                        ; $7d85: $f4
    db $fc                                        ; $7d86: $fc
    db $f4                                        ; $7d87: $f4
    db $fc                                        ; $7d88: $fc
    db $f4                                        ; $7d89: $f4
    db $fc                                        ; $7d8a: $fc
    db $ec                                        ; $7d8b: $ec
    db $fc                                        ; $7d8c: $fc
    call c, $e4fc                                 ; $7d8d: $dc $fc $e4
    db $fc                                        ; $7d90: $fc
    ld [bc], a                                    ; $7d91: $02
    cp $12                                        ; $7d92: $fe $12
    nop                                           ; $7d94: $00
    ld [bc], a                                    ; $7d95: $02
    add b                                         ; $7d96: $80
    ld b, $00                                     ; $7d97: $06 $00
    ld [bc], a                                    ; $7d99: $02
    add b                                         ; $7d9a: $80
    ld [bc], a                                    ; $7d9b: $02
    nop                                           ; $7d9c: $00
    ld [bc], a                                    ; $7d9d: $02
    ret nz                                        ; $7d9e: $c0

    adc b                                         ; $7d9f: $88
    inc a                                         ; $7da0: $3c
    db $fc                                        ; $7da1: $fc
    ld a, [hl]                                    ; $7da2: $7e
    jp nz, $dc7c                                  ; $7da3: $c2 $7c $dc

    ld h, b                                       ; $7da6: $60
    ldh [rSC], a                                  ; $7da7: $e0 $02
    add b                                         ; $7da9: $80
    ld [$ff00], sp                                ; $7daa: $08 $00 $ff
    rlca                                          ; $7dad: $07
    ld bc, $07f8                                  ; $7dae: $01 $f8 $07
    ld a, [c]                                     ; $7db1: $f2
    ld bc, $fdec                                  ; $7db2: $01 $ec $fd
    sub d                                         ; $7db5: $92
    nop                                           ; $7db6: $00
    ld [hl], $00                                  ; $7db7: $36 $00
    ld a, c                                       ; $7db9: $79
    nop                                           ; $7dba: $00
    ld d, b                                       ; $7dbb: $50
    nop                                           ; $7dbc: $00
    jr nc, jr_0dd_7dbf                            ; $7dbd: $30 $00

jr_0dd_7dbf:
    ld [bc], a                                    ; $7dbf: $02
    nop                                           ; $7dc0: $00
    ld b, b                                       ; $7dc1: $40
    nop                                           ; $7dc2: $00
    ld b, b                                       ; $7dc3: $40
    nop                                           ; $7dc4: $00
    ldh [rP1], a                                  ; $7dc5: $e0 $00
    add b                                         ; $7dc7: $80
    ld c, $00                                     ; $7dc8: $0e $00
    rst $38                                       ; $7dca: $ff
    dec c                                         ; $7dcb: $0d
    inc b                                         ; $7dcc: $04
    ld hl, sp+$07                                 ; $7dcd: $f8 $07
    ld a, [c]                                     ; $7dcf: $f2
    ld bc, $f8e7                                  ; $7dd0: $01 $e7 $f8
    jp hl                                         ; $7dd3: $e9


    cp $f7                                        ; $7dd4: $fe $f7
    ei                                            ; $7dd6: $fb
    rst $30                                       ; $7dd7: $f7
    cp $02                                        ; $7dd8: $fe $02
    inc b                                         ; $7dda: $04
    ld [bc], a                                    ; $7ddb: $02
    ld a, [bc]                                    ; $7ddc: $0a
    ld [bc], a                                    ; $7ddd: $02
    ld [de], a                                    ; $7dde: $12
    ld [bc], a                                    ; $7ddf: $02
    ld sp, $5802                                  ; $7de0: $31 $02 $58
    ld [bc], a                                    ; $7de3: $02
    add h                                         ; $7de4: $84
    ld [bc], a                                    ; $7de5: $02
    ld b, c                                       ; $7de6: $41
    ld [bc], a                                    ; $7de7: $02
    ld d, e                                       ; $7de8: $53
    adc [hl]                                      ; $7de9: $8e
    db $ed                                        ; $7dea: $ed
    xor h                                         ; $7deb: $ac
    rst $38                                       ; $7dec: $ff
    cp l                                          ; $7ded: $bd
    rst $10                                       ; $7dee: $d7
    di                                            ; $7def: $f3
    rst $18                                       ; $7df0: $df
    ld hl, sp+$4f                                 ; $7df1: $f8 $4f
    ld a, b                                       ; $7df3: $78
    daa                                           ; $7df4: $27
    inc a                                         ; $7df5: $3c
    rla                                           ; $7df6: $17
    rra                                           ; $7df7: $1f
    ld [bc], a                                    ; $7df8: $02
    ld e, $02                                     ; $7df9: $1e $02
    jr nz, jr_0dd_7dff                            ; $7dfb: $20 $02

    db $10                                        ; $7dfd: $10
    ld [bc], a                                    ; $7dfe: $02

jr_0dd_7dff:
    inc d                                         ; $7dff: $14
    ld [bc], a                                    ; $7e00: $02
    ld a, [bc]                                    ; $7e01: $0a
    ld [bc], a                                    ; $7e02: $02
    inc h                                         ; $7e03: $24
    ld [bc], a                                    ; $7e04: $02
    inc d                                         ; $7e05: $14
    adc [hl]                                      ; $7e06: $8e
    inc l                                         ; $7e07: $2c
    inc c                                         ; $7e08: $0c
    jr c, jr_0dd_7e23                             ; $7e09: $38 $18

    jr c, jr_0dd_7e25                             ; $7e0b: $38 $18

    ld a, $0e                                     ; $7e0d: $3e $0e
    ccf                                           ; $7e0f: $3f
    dec l                                         ; $7e10: $2d
    ld sp, $261f                                  ; $7e11: $31 $1f $26
    ld a, $02                                     ; $7e14: $3e $02
    inc a                                         ; $7e16: $3c
    add h                                         ; $7e17: $84
    db $10                                        ; $7e18: $10
    ldh a, [$de]                                  ; $7e19: $f0 $de
    cp $04                                        ; $7e1b: $fe $04
    ldh [$89], a                                  ; $7e1d: $e0 $89
    cp $ff                                        ; $7e1f: $fe $ff
    db $fd                                        ; $7e21: $fd
    rst $38                                       ; $7e22: $ff

jr_0dd_7e23:
    db $fd                                        ; $7e23: $fd
    rst $38                                       ; $7e24: $ff

jr_0dd_7e25:
    ld [hl], b                                    ; $7e25: $70
    ld a, a                                       ; $7e26: $7f
    ld c, [hl]                                    ; $7e27: $4e
    inc bc                                        ; $7e28: $03
    ld a, a                                       ; $7e29: $7f
    add d                                         ; $7e2a: $82
    dec h                                         ; $7e2b: $25
    dec a                                         ; $7e2c: $3d
    ld [bc], a                                    ; $7e2d: $02
    inc a                                         ; $7e2e: $3c
    add d                                         ; $7e2f: $82
    inc d                                         ; $7e30: $14
    inc e                                         ; $7e31: $1c
    ld [bc], a                                    ; $7e32: $02
    jr jr_0dd_7e41                                ; $7e33: $18 $0c

    nop                                           ; $7e35: $00
    add d                                         ; $7e36: $82
    inc bc                                        ; $7e37: $03
    rlca                                          ; $7e38: $07
    inc b                                         ; $7e39: $04
    ld b, $02                                     ; $7e3a: $06 $02
    inc b                                         ; $7e3c: $04
    ld [bc], a                                    ; $7e3d: $02
    ld b, $82                                     ; $7e3e: $06 $82
    inc bc                                        ; $7e40: $03

jr_0dd_7e41:
    rlca                                          ; $7e41: $07
    ld [bc], a                                    ; $7e42: $02
    inc b                                         ; $7e43: $04
    ld c, $00                                     ; $7e44: $0e $00
    rst $38                                       ; $7e46: $ff
    add hl, bc                                    ; $7e47: $09
    ld [bc], a                                    ; $7e48: $02
    ld hl, sp+$07                                 ; $7e49: $f8 $07
    ld a, [c]                                     ; $7e4b: $f2
    ld bc, $f9e8                                  ; $7e4c: $01 $e8 $f9
    add sp, -$04                                  ; $7e4f: $e8 $fc
    sub b                                         ; $7e51: $90
    nop                                           ; $7e52: $00
    ld [$1800], sp                                ; $7e53: $08 $00 $18
    nop                                           ; $7e56: $00
    dec e                                         ; $7e57: $1d
    nop                                           ; $7e58: $00
    ld c, a                                       ; $7e59: $4f
    nop                                           ; $7e5a: $00
    rst $30                                       ; $7e5b: $f7
    nop                                           ; $7e5c: $00
    ld a, h                                       ; $7e5d: $7c
    nop                                           ; $7e5e: $00
    ld e, c                                       ; $7e5f: $59
    nop                                           ; $7e60: $00
    inc h                                         ; $7e61: $24
    inc bc                                        ; $7e62: $03
    nop                                           ; $7e63: $00
    add c                                         ; $7e64: $81
    db $10                                        ; $7e65: $10
    ld [$8100], sp                                ; $7e66: $08 $00 $81
    ld [bc], a                                    ; $7e69: $02
    inc c                                         ; $7e6a: $0c
    nop                                           ; $7e6b: $00
    add a                                         ; $7e6c: $87
    dec b                                         ; $7e6d: $05
    nop                                           ; $7e6e: $00
    ld b, $00                                     ; $7e6f: $06 $00
    ld [bc], a                                    ; $7e71: $02
    nop                                           ; $7e72: $00
    inc b                                         ; $7e73: $04
    stop                                          ; $7e74: $10 $00
    rst $38                                       ; $7e76: $ff
    dec c                                         ; $7e77: $0d
    inc b                                         ; $7e78: $04
    ld hl, sp+$07                                 ; $7e79: $f8 $07
    ld a, [c]                                     ; $7e7b: $f2
    ld bc, $f7e8                                  ; $7e7c: $01 $e8 $f7
    add sp, -$02                                  ; $7e7f: $e8 $fe
    ld hl, sp-$05                                 ; $7e81: $f8 $fb
    ld hl, sp-$02                                 ; $7e83: $f8 $fe
    ld [bc], a                                    ; $7e85: $02
    rlca                                          ; $7e86: $07
    ld [bc], a                                    ; $7e87: $02
    ld [$2c02], sp                                ; $7e88: $08 $02 $2c
    ld [bc], a                                    ; $7e8b: $02
    ld e, c                                       ; $7e8c: $59
    ld [bc], a                                    ; $7e8d: $02
    jr nz, jr_0dd_7e92                            ; $7e8e: $20 $02

    ld d, b                                       ; $7e90: $50
    ld [bc], a                                    ; $7e91: $02

jr_0dd_7e92:
    add hl, hl                                    ; $7e92: $29
    ld [bc], a                                    ; $7e93: $02
    ld d, [hl]                                    ; $7e94: $56
    adc h                                         ; $7e95: $8c
    db $eb                                        ; $7e96: $eb
    xor d                                         ; $7e97: $aa
    ei                                            ; $7e98: $fb
    cp c                                          ; $7e99: $b9
    rst $28                                       ; $7e9a: $ef
    db $fc                                        ; $7e9b: $fc
    ld c, a                                       ; $7e9c: $4f
    ld a, h                                       ; $7e9d: $7c
    ld b, a                                       ; $7e9e: $47
    ld a, [hl]                                    ; $7e9f: $7e
    dec sp                                        ; $7ea0: $3b
    ccf                                           ; $7ea1: $3f
    inc b                                         ; $7ea2: $04
    rrca                                          ; $7ea3: $0f
    ld [bc], a                                    ; $7ea4: $02
    ld b, b                                       ; $7ea5: $40
    ld [bc], a                                    ; $7ea6: $02
    jr z, jr_0dd_7eab                             ; $7ea7: $28 $02

    db $10                                        ; $7ea9: $10
    ld [bc], a                                    ; $7eaa: $02

jr_0dd_7eab:
    ld c, b                                       ; $7eab: $48
    ld [bc], a                                    ; $7eac: $02
    ld b, $02                                     ; $7ead: $06 $02
    ld [hl+], a                                   ; $7eaf: $22
    ld [bc], a                                    ; $7eb0: $02
    ld d, h                                       ; $7eb1: $54
    adc [hl]                                      ; $7eb2: $8e
    ld l, h                                       ; $7eb3: $6c
    inc c                                         ; $7eb4: $0c
    ld a, b                                       ; $7eb5: $78
    ld e, b                                       ; $7eb6: $58
    ld a, [hl]                                    ; $7eb7: $7e
    ld e, [hl]                                    ; $7eb8: $5e
    ld a, a                                       ; $7eb9: $7f
    dec c                                         ; $7eba: $0d
    ld a, e                                       ; $7ebb: $7b
    cpl                                           ; $7ebc: $2f
    ld [hl], d                                    ; $7ebd: $72
    ld e, $6c                                     ; $7ebe: $1e $6c
    ld a, h                                       ; $7ec0: $7c
    ld [bc], a                                    ; $7ec1: $02
    jr nc, @-$6e                                  ; $7ec2: $30 $90

    inc e                                         ; $7ec4: $1c
    ld a, h                                       ; $7ec5: $7c
    cp $ff                                        ; $7ec6: $fe $ff
    db $fd                                        ; $7ec8: $fd
    rst $38                                       ; $7ec9: $ff
    db $fd                                        ; $7eca: $fd
    rst $38                                       ; $7ecb: $ff
    ld a, e                                       ; $7ecc: $7b
    ld a, a                                       ; $7ecd: $7f
    ld h, [hl]                                    ; $7ece: $66
    ld a, a                                       ; $7ecf: $7f
    ld e, a                                       ; $7ed0: $5f
    ld a, a                                       ; $7ed1: $7f
    ld h, [hl]                                    ; $7ed2: $66
    ld a, a                                       ; $7ed3: $7f
    ld [bc], a                                    ; $7ed4: $02
    ld a, c                                       ; $7ed5: $79
    add d                                         ; $7ed6: $82
    add hl, hl                                    ; $7ed7: $29
    add hl, sp                                    ; $7ed8: $39
    ld [bc], a                                    ; $7ed9: $02
    jr nc, jr_0dd_7ee8                            ; $7eda: $30 $0c

    nop                                           ; $7edc: $00
    add e                                         ; $7edd: $83
    ld [bc], a                                    ; $7ede: $02
    ld b, $05                                     ; $7edf: $06 $05
    inc bc                                        ; $7ee1: $03
    rlca                                          ; $7ee2: $07
    ld [bc], a                                    ; $7ee3: $02
    ld b, $02                                     ; $7ee4: $06 $02
    inc b                                         ; $7ee6: $04
    add c                                         ; $7ee7: $81

jr_0dd_7ee8:
    ld [bc], a                                    ; $7ee8: $02
    inc bc                                        ; $7ee9: $03
    ld b, $82                                     ; $7eea: $06 $82
    inc bc                                        ; $7eec: $03
    rlca                                          ; $7eed: $07
    ld [bc], a                                    ; $7eee: $02
    inc b                                         ; $7eef: $04
    ld c, $00                                     ; $7ef0: $0e $00
    rst $38                                       ; $7ef2: $ff
    add hl, bc                                    ; $7ef3: $09
    ld [bc], a                                    ; $7ef4: $02
    ld hl, sp+$07                                 ; $7ef5: $f8 $07
    ld a, [c]                                     ; $7ef7: $f2
    ld bc, $f9e9                                  ; $7ef8: $01 $e9 $f9
    jp hl                                         ; $7efb: $e9


    db $fc                                        ; $7efc: $fc
    sub d                                         ; $7efd: $92
    nop                                           ; $7efe: $00

jr_0dd_7eff:
    ld e, $00                                     ; $7eff: $1e $00
    rrca                                          ; $7f01: $0f
    nop                                           ; $7f02: $00
    sbc c                                         ; $7f03: $99
    nop                                           ; $7f04: $00
    ld a, a                                       ; $7f05: $7f
    nop                                           ; $7f06: $00
    cp [hl]                                       ; $7f07: $be
    nop                                           ; $7f08: $00
    ld e, c                                       ; $7f09: $59
    nop                                           ; $7f0a: $00
    and h                                         ; $7f0b: $a4
    nop                                           ; $7f0c: $00
    ld d, b                                       ; $7f0d: $50
    nop                                           ; $7f0e: $00
    db $10                                        ; $7f0f: $10
    ld [$8100], sp                                ; $7f10: $08 $00 $81
    ld [bc], a                                    ; $7f13: $02
    ld a, [bc]                                    ; $7f14: $0a
    nop                                           ; $7f15: $00
    adc c                                         ; $7f16: $89
    inc b                                         ; $7f17: $04
    nop                                           ; $7f18: $00
    ld b, $00                                     ; $7f19: $06 $00
    rlca                                          ; $7f1b: $07
    nop                                           ; $7f1c: $00
    ld [bc], a                                    ; $7f1d: $02
    nop                                           ; $7f1e: $00
    inc b                                         ; $7f1f: $04
    ld [de], a                                    ; $7f20: $12
    nop                                           ; $7f21: $00
    rst $38                                       ; $7f22: $ff
    dec c                                         ; $7f23: $0d
    inc b                                         ; $7f24: $04
    ld hl, sp+$07                                 ; $7f25: $f8 $07
    ld a, [c]                                     ; $7f27: $f2
    ld bc, $f7e7                                  ; $7f28: $01 $e7 $f7
    rst $20                                       ; $7f2b: $e7
    cp $f7                                        ; $7f2c: $fe $f7
    ei                                            ; $7f2e: $fb
    rst $30                                       ; $7f2f: $f7
    rst $38                                       ; $7f30: $ff
    ld [bc], a                                    ; $7f31: $02
    ld bc, $0202                                  ; $7f32: $01 $02 $02
    ld [bc], a                                    ; $7f35: $02
    ld b, $02                                     ; $7f36: $06 $02
    jr jr_0dd_7f3c                                ; $7f38: $18 $02

    inc h                                         ; $7f3a: $24
    ld [bc], a                                    ; $7f3b: $02

jr_0dd_7f3c:
    jr nz, jr_0dd_7f40                            ; $7f3c: $20 $02

    ld [hl+], a                                   ; $7f3e: $22
    ld [bc], a                                    ; $7f3f: $02

jr_0dd_7f40:
    ld d, l                                       ; $7f40: $55
    ld [bc], a                                    ; $7f41: $02
    ld l, d                                       ; $7f42: $6a
    adc h                                         ; $7f43: $8c
    rst $30                                       ; $7f44: $f7
    or [hl]                                       ; $7f45: $b6
    di                                            ; $7f46: $f3
    or c                                          ; $7f47: $b1
    ld e, a                                       ; $7f48: $5f
    ld a, h                                       ; $7f49: $7c
    ld c, a                                       ; $7f4a: $4f
    ld a, h                                       ; $7f4b: $7c
    ld h, e                                       ; $7f4c: $63
    ld a, [hl]                                    ; $7f4d: $7e
    dec de                                        ; $7f4e: $1b
    rra                                           ; $7f4f: $1f
    ld [bc], a                                    ; $7f50: $02
    rrca                                          ; $7f51: $0f
    ld [bc], a                                    ; $7f52: $02
    ld b, b                                       ; $7f53: $40
    ld [bc], a                                    ; $7f54: $02
    ld [hl], b                                    ; $7f55: $70
    ld [bc], a                                    ; $7f56: $02
    ld d, b                                       ; $7f57: $50
    ld [bc], a                                    ; $7f58: $02
    inc c                                         ; $7f59: $0c
    ld [bc], a                                    ; $7f5a: $02
    jr z, jr_0dd_7f5f                             ; $7f5b: $28 $02

    inc c                                         ; $7f5d: $0c
    ld [bc], a                                    ; $7f5e: $02

jr_0dd_7f5f:
    inc h                                         ; $7f5f: $24
    ld [bc], a                                    ; $7f60: $02
    ld [hl], h                                    ; $7f61: $74
    adc [hl]                                      ; $7f62: $8e
    ld l, b                                       ; $7f63: $68
    ld [$5878], sp                                ; $7f64: $08 $78 $58
    ld a, b                                       ; $7f67: $78
    ld e, b                                       ; $7f68: $58
    ld a, [hl]                                    ; $7f69: $7e
    ld c, $7f                                     ; $7f6a: $0e $7f
    dec l                                         ; $7f6c: $2d
    ld [hl], d                                    ; $7f6d: $72
    ld e, $66                                     ; $7f6e: $1e $66
    ld a, [hl]                                    ; $7f70: $7e
    ld [bc], a                                    ; $7f71: $02
    jr c, jr_0dd_7eff                             ; $7f72: $38 $8b

    push hl                                       ; $7f74: $e5
    db $fd                                        ; $7f75: $fd
    ld a, [$f2ff]                                 ; $7f76: $fa $ff $f2
    rst $38                                       ; $7f79: $ff
    rst $28                                       ; $7f7a: $ef
    rst $38                                       ; $7f7b: $ff
    rst $18                                       ; $7f7c: $df
    rst $38                                       ; $7f7d: $ff
    ld e, [hl]                                    ; $7f7e: $5e
    inc bc                                        ; $7f7f: $03
    ld a, a                                       ; $7f80: $7f
    add d                                         ; $7f81: $82
    ld h, l                                       ; $7f82: $65
    ld a, l                                       ; $7f83: $7d
    ld [bc], a                                    ; $7f84: $02
    inc a                                         ; $7f85: $3c
    add d                                         ; $7f86: $82
    inc d                                         ; $7f87: $14
    inc e                                         ; $7f88: $1c
    ld [bc], a                                    ; $7f89: $02
    jr jr_0dd_7f96                                ; $7f8a: $18 $0a

    nop                                           ; $7f8c: $00
    ld [$020c], sp                                ; $7f8d: $08 $0c $02
    ld [$0486], sp                                ; $7f90: $08 $86 $04
    inc c                                         ; $7f93: $0c
    ld b, $0e                                     ; $7f94: $06 $0e

jr_0dd_7f96:
    dec bc                                        ; $7f96: $0b
    rrca                                          ; $7f97: $0f
    ld [bc], a                                    ; $7f98: $02
    inc c                                         ; $7f99: $0c
    ld c, $00                                     ; $7f9a: $0e $00
    rst $38                                       ; $7f9c: $ff
    add hl, bc                                    ; $7f9d: $09
    ld [bc], a                                    ; $7f9e: $02
    ld hl, sp+$07                                 ; $7f9f: $f8 $07
    ld a, [c]                                     ; $7fa1: $f2
    ld bc, $fae8                                  ; $7fa2: $01 $e8 $fa
    add sp, -$05                                  ; $7fa5: $e8 $fb
    sub h                                         ; $7fa7: $94
    nop                                           ; $7fa8: $00
    ld [$0a00], sp                                ; $7fa9: $08 $00 $0a
    nop                                           ; $7fac: $00
    ccf                                           ; $7fad: $3f
    nop                                           ; $7fae: $00
    db $dd                                        ; $7faf: $dd
    nop                                           ; $7fb0: $00
    rst $38                                       ; $7fb1: $ff
    nop                                           ; $7fb2: $00
    db $ed                                        ; $7fb3: $ed
    nop                                           ; $7fb4: $00
    ld d, b                                       ; $7fb5: $50
    nop                                           ; $7fb6: $00
    xor c                                         ; $7fb7: $a9
    nop                                           ; $7fb8: $00
    ld b, b                                       ; $7fb9: $40
    nop                                           ; $7fba: $00
    ld h, b                                       ; $7fbb: $60
    ld [$8100], sp                                ; $7fbc: $08 $00 $81
    inc b                                         ; $7fbf: $04
    ld c, $00                                     ; $7fc0: $0e $00
    add e                                         ; $7fc2: $83
    ld bc, $0100                                  ; $7fc3: $01 $00 $01
    ld [de], a                                    ; $7fc6: $12
    nop                                           ; $7fc7: $00
    rst $38                                       ; $7fc8: $ff
    add hl, bc                                    ; $7fc9: $09
    ld [bc], a                                    ; $7fca: $02
    ld hl, sp+$07                                 ; $7fcb: $f8 $07
    ld a, [c]                                     ; $7fcd: $f2
    ld bc, $fef1                                  ; $7fce: $01 $f1 $fe
    pop af                                        ; $7fd1: $f1
    rst $38                                       ; $7fd2: $ff
    adc [hl]                                      ; $7fd3: $8e
    nop                                           ; $7fd4: $00
    rla                                           ; $7fd5: $17
    nop                                           ; $7fd6: $00
    ld [hl-], a                                   ; $7fd7: $32
    nop                                           ; $7fd8: $00
    jr nz, jr_0dd_7fdb                            ; $7fd9: $20 $00

jr_0dd_7fdb:
    ld b, b                                       ; $7fdb: $40
    nop                                           ; $7fdc: $00
    and b                                         ; $7fdd: $a0
    nop                                           ; $7fde: $00
    ret nz                                        ; $7fdf: $c0

    nop                                           ; $7fe0: $00
    ld b, b                                       ; $7fe1: $40
    ld [bc], a                                    ; $7fe2: $02
    nop                                           ; $7fe3: $00
    add c                                         ; $7fe4: $81
    db $10                                        ; $7fe5: $10
    ld [de], a                                    ; $7fe6: $12
    nop                                           ; $7fe7: $00
    add e                                         ; $7fe8: $83
    ld bc, $0100                                  ; $7fe9: $01 $00 $01
    ld a, [de]                                    ; $7fec: $1a
    nop                                           ; $7fed: $00
    rst $38                                       ; $7fee: $ff
    rlca                                          ; $7fef: $07
    ld bc, $07f8                                  ; $7ff0: $01 $f8 $07
    pop af                                        ; $7ff3: $f1
    nop                                           ; $7ff4: $00
    ld sp, hl                                     ; $7ff5: $f9
    ei                                            ; $7ff6: $fb
    add h                                         ; $7ff7: $84
    nop                                           ; $7ff8: $00
    add hl, bc                                    ; $7ff9: $09
    nop                                           ; $7ffa: $00
    ld b, $1c                                     ; $7ffb: $06 $1c
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
