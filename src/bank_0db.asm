; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0db", ROMX[$4000], BANK[$db]

    db $db                                        ; $4000: $db
    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld sp, hl                                     ; $4003: $f9
    rlca                                          ; $4004: $07
    di                                            ; $4005: $f3
    ld [bc], a                                    ; $4006: $02
    db $ec                                        ; $4007: $ec
    ld a, [$ffec]                                 ; $4008: $fa $ec $ff
    db $fc                                        ; $400b: $fc
    ld a, [$fffc]                                 ; $400c: $fa $fc $ff
    ld [bc], a                                    ; $400f: $02
    rrca                                          ; $4010: $0f
    add d                                         ; $4011: $82
    ld a, l                                       ; $4012: $7d
    ld a, a                                       ; $4013: $7f
    ld [bc], a                                    ; $4014: $02
    ccf                                           ; $4015: $3f
    add l                                         ; $4016: $85
    ld e, a                                       ; $4017: $5f
    ld a, a                                       ; $4018: $7f
    ld a, e                                       ; $4019: $7b
    ld a, a                                       ; $401a: $7f
    inc a                                         ; $401b: $3c
    inc bc                                        ; $401c: $03
    ccf                                           ; $401d: $3f
    add d                                         ; $401e: $82
    ld a, a                                       ; $401f: $7f
    ld e, a                                       ; $4020: $5f
    ld [bc], a                                    ; $4021: $02
    ld a, a                                       ; $4022: $7f
    adc [hl]                                      ; $4023: $8e
    jr nc, jr_0db_405e                            ; $4024: $30 $38

    cpl                                           ; $4026: $2f
    ccf                                           ; $4027: $3f
    ld d, b                                       ; $4028: $50
    ld a, a                                       ; $4029: $7f
    ld e, b                                       ; $402a: $58
    ld a, a                                       ; $402b: $7f
    ld e, a                                       ; $402c: $5f
    ld a, a                                       ; $402d: $7f
    sbc a                                         ; $402e: $9f
    rst $38                                       ; $402f: $ff
    sbc a                                         ; $4030: $9f
    rst $38                                       ; $4031: $ff
    ld [bc], a                                    ; $4032: $02
    db $10                                        ; $4033: $10
    ld [bc], a                                    ; $4034: $02
    jr jr_0db_4039                                ; $4035: $18 $02

    ld e, $02                                     ; $4037: $1e $02

jr_0db_4039:
    inc e                                         ; $4039: $1c
    add c                                         ; $403a: $81
    ld b, $03                                     ; $403b: $06 $03
    ld e, $84                                     ; $403d: $1e $84
    inc d                                         ; $403f: $14
    inc e                                         ; $4040: $1c
    ld e, $1a                                     ; $4041: $1e $1a
    ld [bc], a                                    ; $4043: $02
    ld e, $8f                                     ; $4044: $1e $8f
    inc c                                         ; $4046: $0c
    inc e                                         ; $4047: $1c
    inc d                                         ; $4048: $14
    inc e                                         ; $4049: $1c
    ld a, [bc]                                    ; $404a: $0a
    ld e, $1a                                     ; $404b: $1e $1a
    ld e, $1a                                     ; $404d: $1e $1a
    ld e, $19                                     ; $404f: $1e $19
    rra                                           ; $4051: $1f
    dec e                                         ; $4052: $1d
    rra                                           ; $4053: $1f
    cp a                                          ; $4054: $bf
    inc bc                                        ; $4055: $03
    rst $38                                       ; $4056: $ff
    inc b                                         ; $4057: $04
    ld a, a                                       ; $4058: $7f
    add h                                         ; $4059: $84
    ld l, a                                       ; $405a: $6f
    ld a, a                                       ; $405b: $7f
    jr c, jr_0db_409d                             ; $405c: $38 $3f

jr_0db_405e:
    ld [bc], a                                    ; $405e: $02
    rra                                           ; $405f: $1f
    ld [de], a                                    ; $4060: $12
    nop                                           ; $4061: $00
    adc d                                         ; $4062: $8a
    rla                                           ; $4063: $17
    rra                                           ; $4064: $1f
    rla                                           ; $4065: $17
    dec e                                         ; $4066: $1d
    ld d, $1e                                     ; $4067: $16 $1e
    ld a, [de]                                    ; $4069: $1a
    ld e, $0e                                     ; $406a: $1e $0e
    ld e, $02                                     ; $406c: $1e $02
    inc e                                         ; $406e: $1c
    ld [bc], a                                    ; $406f: $02
    jr jr_0db_4084                                ; $4070: $18 $12

    nop                                           ; $4072: $00
    rst $38                                       ; $4073: $ff
    dec c                                         ; $4074: $0d
    inc b                                         ; $4075: $04
    ld sp, hl                                     ; $4076: $f9
    rlca                                          ; $4077: $07
    di                                            ; $4078: $f3
    ld [bc], a                                    ; $4079: $02
    db $ec                                        ; $407a: $ec
    ld a, [$ffec]                                 ; $407b: $fa $ec $ff
    db $fc                                        ; $407e: $fc
    ld a, [$fffc]                                 ; $407f: $fa $fc $ff
    ld [bc], a                                    ; $4082: $02
    rrca                                          ; $4083: $0f

jr_0db_4084:
    add d                                         ; $4084: $82
    ld a, l                                       ; $4085: $7d
    ld a, a                                       ; $4086: $7f
    ld [bc], a                                    ; $4087: $02
    ccf                                           ; $4088: $3f
    add l                                         ; $4089: $85
    ld e, a                                       ; $408a: $5f
    ld a, a                                       ; $408b: $7f
    ld a, e                                       ; $408c: $7b
    ld a, a                                       ; $408d: $7f
    inc a                                         ; $408e: $3c
    inc bc                                        ; $408f: $03
    ccf                                           ; $4090: $3f
    add d                                         ; $4091: $82
    ld a, a                                       ; $4092: $7f
    ld e, a                                       ; $4093: $5f
    ld [bc], a                                    ; $4094: $02
    ld a, a                                       ; $4095: $7f
    adc [hl]                                      ; $4096: $8e

jr_0db_4097:
    jr nc, jr_0db_40d1                            ; $4097: $30 $38

    cpl                                           ; $4099: $2f
    ccf                                           ; $409a: $3f
    ld d, b                                       ; $409b: $50
    ld a, a                                       ; $409c: $7f

jr_0db_409d:
    ld e, b                                       ; $409d: $58
    ld a, a                                       ; $409e: $7f
    sbc a                                         ; $409f: $9f
    rst $38                                       ; $40a0: $ff
    sbc a                                         ; $40a1: $9f
    rst $38                                       ; $40a2: $ff
    cp a                                          ; $40a3: $bf
    rst $38                                       ; $40a4: $ff
    ld [bc], a                                    ; $40a5: $02
    db $10                                        ; $40a6: $10
    ld [bc], a                                    ; $40a7: $02
    jr jr_0db_40ac                                ; $40a8: $18 $02

    ld e, $02                                     ; $40aa: $1e $02

jr_0db_40ac:
    inc e                                         ; $40ac: $1c
    add c                                         ; $40ad: $81
    ld b, $03                                     ; $40ae: $06 $03
    ld e, $84                                     ; $40b0: $1e $84
    inc d                                         ; $40b2: $14
    inc e                                         ; $40b3: $1c
    ld e, $1a                                     ; $40b4: $1e $1a
    ld [bc], a                                    ; $40b6: $02
    ld e, $8e                                     ; $40b7: $1e $8e
    inc c                                         ; $40b9: $0c
    inc e                                         ; $40ba: $1c
    inc d                                         ; $40bb: $14
    inc e                                         ; $40bc: $1c
    ld a, [bc]                                    ; $40bd: $0a
    ld e, $1a                                     ; $40be: $1e $1a
    ld e, $1b                                     ; $40c0: $1e $1b
    rra                                           ; $40c2: $1f
    dec e                                         ; $40c3: $1d
    rra                                           ; $40c4: $1f
    dec e                                         ; $40c5: $1d
    rra                                           ; $40c6: $1f
    inc bc                                        ; $40c7: $03
    rst $38                                       ; $40c8: $ff
    add c                                         ; $40c9: $81
    cp a                                          ; $40ca: $bf
    inc b                                         ; $40cb: $04
    ld a, a                                       ; $40cc: $7f
    add d                                         ; $40cd: $82
    dec a                                         ; $40ce: $3d
    ccf                                           ; $40cf: $3f
    ld [bc], a                                    ; $40d0: $02

jr_0db_40d1:
    rrca                                          ; $40d1: $0f
    ld [bc], a                                    ; $40d2: $02
    rlca                                          ; $40d3: $07
    ld [de], a                                    ; $40d4: $12
    nop                                           ; $40d5: $00
    ld [bc], a                                    ; $40d6: $02
    rra                                           ; $40d7: $1f
    inc b                                         ; $40d8: $04
    ld e, $81                                     ; $40d9: $1e $81
    ld [bc], a                                    ; $40db: $02
    inc bc                                        ; $40dc: $03
    ld e, $82                                     ; $40dd: $1e $82
    ld b, $1e                                     ; $40df: $06 $1e
    ld [bc], a                                    ; $40e1: $02
    inc e                                         ; $40e2: $1c
    ld [de], a                                    ; $40e3: $12
    nop                                           ; $40e4: $00
    rst $38                                       ; $40e5: $ff
    dec c                                         ; $40e6: $0d
    inc b                                         ; $40e7: $04
    ld sp, hl                                     ; $40e8: $f9
    rlca                                          ; $40e9: $07
    di                                            ; $40ea: $f3
    ld [bc], a                                    ; $40eb: $02
    db $ed                                        ; $40ec: $ed
    ld a, [$ffed]                                 ; $40ed: $fa $ed $ff
    db $fd                                        ; $40f0: $fd
    ld a, [$fffd]                                 ; $40f1: $fa $fd $ff
    ld [bc], a                                    ; $40f4: $02
    rrca                                          ; $40f5: $0f
    add d                                         ; $40f6: $82
    ld a, h                                       ; $40f7: $7c
    ld a, a                                       ; $40f8: $7f
    ld [bc], a                                    ; $40f9: $02
    ccf                                           ; $40fa: $3f
    add l                                         ; $40fb: $85
    ld e, a                                       ; $40fc: $5f
    ld a, a                                       ; $40fd: $7f
    ld a, [hl-]                                   ; $40fe: $3a
    ccf                                           ; $40ff: $3f
    dec a                                         ; $4100: $3d
    inc bc                                        ; $4101: $03
    ccf                                           ; $4102: $3f
    add d                                         ; $4103: $82
    ld a, a                                       ; $4104: $7f
    ld e, a                                       ; $4105: $5f
    ld [bc], a                                    ; $4106: $02
    ld a, a                                       ; $4107: $7f
    ld [bc], a                                    ; $4108: $02
    jr c, jr_0db_4097                             ; $4109: $38 $8c

    jr nz, @+$41                                  ; $410b: $20 $3f

    ld e, b                                       ; $410d: $58
    ld a, a                                       ; $410e: $7f
    ld e, a                                       ; $410f: $5f
    ld a, a                                       ; $4110: $7f
    ld e, a                                       ; $4111: $5f
    ld a, a                                       ; $4112: $7f
    sbc a                                         ; $4113: $9f
    rst $38                                       ; $4114: $ff
    cp a                                          ; $4115: $bf
    rst $38                                       ; $4116: $ff
    ld [bc], a                                    ; $4117: $02
    db $10                                        ; $4118: $10
    ld [bc], a                                    ; $4119: $02
    inc e                                         ; $411a: $1c
    ld [bc], a                                    ; $411b: $02
    ld e, $02                                     ; $411c: $1e $02
    inc e                                         ; $411e: $1c
    add d                                         ; $411f: $82
    ld b, $1e                                     ; $4120: $06 $1e
    ld [bc], a                                    ; $4122: $02
    inc e                                         ; $4123: $1c
    add h                                         ; $4124: $84
    inc d                                         ; $4125: $14
    inc e                                         ; $4126: $1c
    ld e, $1a                                     ; $4127: $1e $1a
    ld [bc], a                                    ; $4129: $02
    ld e, $02                                     ; $412a: $1e $02
    inc e                                         ; $412c: $1c
    adc h                                         ; $412d: $8c
    inc b                                         ; $412e: $04
    inc e                                         ; $412f: $1c
    ld a, [de]                                    ; $4130: $1a
    ld e, $1a                                     ; $4131: $1e $1a
    ld e, $1a                                     ; $4133: $1e $1a
    ld e, $1d                                     ; $4135: $1e $1d
    rra                                           ; $4137: $1f
    dec e                                         ; $4138: $1d
    rra                                           ; $4139: $1f
    inc bc                                        ; $413a: $03
    rst $38                                       ; $413b: $ff
    add e                                         ; $413c: $83
    cp a                                          ; $413d: $bf
    ld a, [hl]                                    ; $413e: $7e
    ld a, a                                       ; $413f: $7f
    ld [bc], a                                    ; $4140: $02
    ccf                                           ; $4141: $3f
    ld [bc], a                                    ; $4142: $02
    rra                                           ; $4143: $1f
    ld [bc], a                                    ; $4144: $02
    inc bc                                        ; $4145: $03
    inc d                                         ; $4146: $14
    nop                                           ; $4147: $00
    ld [bc], a                                    ; $4148: $02
    rra                                           ; $4149: $1f
    add d                                         ; $414a: $82
    ld d, $1e                                     ; $414b: $16 $1e
    ld [bc], a                                    ; $414d: $02
    inc e                                         ; $414e: $1c
    add c                                         ; $414f: $81
    ld b, $03                                     ; $4150: $06 $03
    ld e, $02                                     ; $4152: $1e $02
    inc e                                         ; $4154: $1c
    inc d                                         ; $4155: $14
    nop                                           ; $4156: $00
    rst $38                                       ; $4157: $ff
    dec c                                         ; $4158: $0d
    inc b                                         ; $4159: $04
    ld sp, hl                                     ; $415a: $f9
    rlca                                          ; $415b: $07
    di                                            ; $415c: $f3
    ld [bc], a                                    ; $415d: $02
    db $ed                                        ; $415e: $ed
    ld a, [$ffed]                                 ; $415f: $fa $ed $ff
    db $fd                                        ; $4162: $fd
    ld a, [$fffd]                                 ; $4163: $fa $fd $ff
    ld [bc], a                                    ; $4166: $02
    rrca                                          ; $4167: $0f
    add d                                         ; $4168: $82
    ld a, l                                       ; $4169: $7d
    ld a, a                                       ; $416a: $7f
    ld [bc], a                                    ; $416b: $02
    ccf                                           ; $416c: $3f
    add l                                         ; $416d: $85
    ld e, a                                       ; $416e: $5f
    ld a, a                                       ; $416f: $7f
    ld a, e                                       ; $4170: $7b
    ld a, a                                       ; $4171: $7f
    inc a                                         ; $4172: $3c
    inc bc                                        ; $4173: $03
    ccf                                           ; $4174: $3f
    add d                                         ; $4175: $82
    ld a, a                                       ; $4176: $7f
    ld e, a                                       ; $4177: $5f
    ld [bc], a                                    ; $4178: $02
    ld a, a                                       ; $4179: $7f
    adc [hl]                                      ; $417a: $8e
    jr nc, jr_0db_41b5                            ; $417b: $30 $38

    cpl                                           ; $417d: $2f
    ccf                                           ; $417e: $3f
    ld d, b                                       ; $417f: $50
    ld a, a                                       ; $4180: $7f
    ld e, b                                       ; $4181: $58
    ld a, a                                       ; $4182: $7f
    ld e, a                                       ; $4183: $5f
    ld a, a                                       ; $4184: $7f
    cp a                                          ; $4185: $bf
    rst $38                                       ; $4186: $ff
    cp a                                          ; $4187: $bf
    rst $38                                       ; $4188: $ff
    ld [bc], a                                    ; $4189: $02
    db $10                                        ; $418a: $10
    ld [bc], a                                    ; $418b: $02
    jr jr_0db_4190                                ; $418c: $18 $02

    ld e, $02                                     ; $418e: $1e $02

jr_0db_4190:
    inc e                                         ; $4190: $1c
    add c                                         ; $4191: $81
    ld b, $03                                     ; $4192: $06 $03
    ld e, $84                                     ; $4194: $1e $84
    inc d                                         ; $4196: $14
    inc e                                         ; $4197: $1c
    ld e, $1a                                     ; $4198: $1e $1a
    ld [bc], a                                    ; $419a: $02
    ld e, $8f                                     ; $419b: $1e $8f
    inc c                                         ; $419d: $0c
    inc e                                         ; $419e: $1c
    inc d                                         ; $419f: $14
    inc e                                         ; $41a0: $1c
    ld a, [bc]                                    ; $41a1: $0a
    ld e, $1a                                     ; $41a2: $1e $1a
    ld e, $1a                                     ; $41a4: $1e $1a
    ld e, $1d                                     ; $41a6: $1e $1d
    rra                                           ; $41a8: $1f
    dec e                                         ; $41a9: $1d
    rra                                           ; $41aa: $1f
    cp a                                          ; $41ab: $bf
    inc bc                                        ; $41ac: $03
    rst $38                                       ; $41ad: $ff
    inc b                                         ; $41ae: $04
    ccf                                           ; $41af: $3f
    ld [bc], a                                    ; $41b0: $02
    rra                                           ; $41b1: $1f
    ld [bc], a                                    ; $41b2: $02
    inc bc                                        ; $41b3: $03
    inc d                                         ; $41b4: $14

jr_0db_41b5:
    nop                                           ; $41b5: $00
    add c                                         ; $41b6: $81
    dec e                                         ; $41b7: $1d
    inc bc                                        ; $41b8: $03
    rra                                           ; $41b9: $1f
    add c                                         ; $41ba: $81
    inc c                                         ; $41bb: $0c
    inc bc                                        ; $41bc: $03
    inc e                                         ; $41bd: $1c
    ld [bc], a                                    ; $41be: $02
    ld e, $02                                     ; $41bf: $1e $02
    jr jr_0db_41d7                                ; $41c1: $18 $14

    nop                                           ; $41c3: $00
    rst $38                                       ; $41c4: $ff
    rlca                                          ; $41c5: $07
    ld bc, $07f8                                  ; $41c6: $01 $f8 $07
    di                                            ; $41c9: $f3
    ld [bc], a                                    ; $41ca: $02
    or $fa                                        ; $41cb: $f6 $fa
    add c                                         ; $41cd: $81
    rlca                                          ; $41ce: $07
    rra                                           ; $41cf: $1f
    nop                                           ; $41d0: $00
    rst $38                                       ; $41d1: $ff
    dec c                                         ; $41d2: $0d
    inc b                                         ; $41d3: $04
    ld sp, hl                                     ; $41d4: $f9
    rlca                                          ; $41d5: $07
    di                                            ; $41d6: $f3

jr_0db_41d7:
    ld [bc], a                                    ; $41d7: $02
    db $ec                                        ; $41d8: $ec
    ld a, [$ffec]                                 ; $41d9: $fa $ec $ff
    db $fc                                        ; $41dc: $fc
    ld a, [$fffc]                                 ; $41dd: $fa $fc $ff
    ld [bc], a                                    ; $41e0: $02
    rrca                                          ; $41e1: $0f
    add d                                         ; $41e2: $82
    ld a, l                                       ; $41e3: $7d
    ld a, a                                       ; $41e4: $7f
    ld [bc], a                                    ; $41e5: $02
    ccf                                           ; $41e6: $3f
    add l                                         ; $41e7: $85
    ld e, a                                       ; $41e8: $5f
    ld a, a                                       ; $41e9: $7f
    ld a, e                                       ; $41ea: $7b
    ld a, a                                       ; $41eb: $7f
    inc a                                         ; $41ec: $3c
    inc bc                                        ; $41ed: $03
    ccf                                           ; $41ee: $3f
    add d                                         ; $41ef: $82
    ld a, a                                       ; $41f0: $7f
    ld e, a                                       ; $41f1: $5f
    ld [bc], a                                    ; $41f2: $02
    ld a, a                                       ; $41f3: $7f
    adc [hl]                                      ; $41f4: $8e
    jr nc, jr_0db_422f                            ; $41f5: $30 $38

    cpl                                           ; $41f7: $2f
    ccf                                           ; $41f8: $3f
    ld d, b                                       ; $41f9: $50
    ld a, a                                       ; $41fa: $7f
    ld e, b                                       ; $41fb: $58
    ld a, a                                       ; $41fc: $7f
    ld e, a                                       ; $41fd: $5f
    ld a, a                                       ; $41fe: $7f
    cp a                                          ; $41ff: $bf
    rst $38                                       ; $4200: $ff
    cp a                                          ; $4201: $bf
    rst $38                                       ; $4202: $ff
    ld [bc], a                                    ; $4203: $02
    db $10                                        ; $4204: $10
    ld [bc], a                                    ; $4205: $02
    jr jr_0db_420a                                ; $4206: $18 $02

    ld e, $02                                     ; $4208: $1e $02

jr_0db_420a:
    inc e                                         ; $420a: $1c
    add c                                         ; $420b: $81
    ld b, $03                                     ; $420c: $06 $03
    ld e, $84                                     ; $420e: $1e $84
    inc d                                         ; $4210: $14
    inc e                                         ; $4211: $1c
    ld e, $1a                                     ; $4212: $1e $1a
    ld [bc], a                                    ; $4214: $02
    ld e, $90                                     ; $4215: $1e $90
    inc c                                         ; $4217: $0c
    inc e                                         ; $4218: $1c
    inc d                                         ; $4219: $14
    inc e                                         ; $421a: $1c
    ld a, [bc]                                    ; $421b: $0a
    ld e, $1a                                     ; $421c: $1e $1a
    ld e, $1a                                     ; $421e: $1e $1a
    ld e, $19                                     ; $4220: $1e $19
    rra                                           ; $4222: $1f
    dec e                                         ; $4223: $1d
    rra                                           ; $4224: $1f
    cp a                                          ; $4225: $bf
    rst $38                                       ; $4226: $ff
    inc b                                         ; $4227: $04
    ld a, a                                       ; $4228: $7f
    add c                                         ; $4229: $81
    ld [hl], a                                    ; $422a: $77
    inc bc                                        ; $422b: $03
    ld a, a                                       ; $422c: $7f
    add d                                         ; $422d: $82
    cpl                                           ; $422e: $2f

jr_0db_422f:
    ccf                                           ; $422f: $3f
    ld [bc], a                                    ; $4230: $02
    ld e, $12                                     ; $4231: $1e $12
    nop                                           ; $4233: $00
    inc b                                         ; $4234: $04
    rra                                           ; $4235: $1f
    ld [bc], a                                    ; $4236: $02
    ld e, $82                                     ; $4237: $1e $82
    ld d, $1e                                     ; $4239: $16 $1e
    ld [bc], a                                    ; $423b: $02
    inc e                                         ; $423c: $1c
    ld [bc], a                                    ; $423d: $02
    jr jr_0db_4254                                ; $423e: $18 $14

    nop                                           ; $4240: $00
    rst $38                                       ; $4241: $ff
    rlca                                          ; $4242: $07
    ld bc, $07f8                                  ; $4243: $01 $f8 $07
    di                                            ; $4246: $f3
    ld [bc], a                                    ; $4247: $02
    push af                                       ; $4248: $f5
    ld a, [$0781]                                 ; $4249: $fa $81 $07
    rra                                           ; $424c: $1f
    nop                                           ; $424d: $00
    rst $38                                       ; $424e: $ff
    dec c                                         ; $424f: $0d
    inc b                                         ; $4250: $04
    ld sp, hl                                     ; $4251: $f9
    rlca                                          ; $4252: $07
    di                                            ; $4253: $f3

jr_0db_4254:
    ld [bc], a                                    ; $4254: $02
    db $ec                                        ; $4255: $ec
    ld a, [$ffec]                                 ; $4256: $fa $ec $ff
    db $fc                                        ; $4259: $fc
    ld a, [$fffc]                                 ; $425a: $fa $fc $ff
    ld [bc], a                                    ; $425d: $02
    rrca                                          ; $425e: $0f
    add d                                         ; $425f: $82
    ld a, l                                       ; $4260: $7d
    ld a, a                                       ; $4261: $7f
    ld [bc], a                                    ; $4262: $02
    ccf                                           ; $4263: $3f
    add l                                         ; $4264: $85
    ld e, a                                       ; $4265: $5f
    ld a, a                                       ; $4266: $7f
    ld a, e                                       ; $4267: $7b
    ld a, a                                       ; $4268: $7f
    inc a                                         ; $4269: $3c
    inc bc                                        ; $426a: $03
    ccf                                           ; $426b: $3f
    add d                                         ; $426c: $82
    ld a, a                                       ; $426d: $7f
    ld e, a                                       ; $426e: $5f
    ld [bc], a                                    ; $426f: $02
    ld a, a                                       ; $4270: $7f
    adc [hl]                                      ; $4271: $8e
    jr nc, jr_0db_42ac                            ; $4272: $30 $38

    cpl                                           ; $4274: $2f
    ccf                                           ; $4275: $3f
    ld d, b                                       ; $4276: $50
    ld a, a                                       ; $4277: $7f
    ld e, b                                       ; $4278: $58
    ld a, a                                       ; $4279: $7f
    rst $18                                       ; $427a: $df
    rst $38                                       ; $427b: $ff
    cp a                                          ; $427c: $bf
    rst $38                                       ; $427d: $ff

jr_0db_427e:
    cp a                                          ; $427e: $bf
    rst $38                                       ; $427f: $ff
    ld [bc], a                                    ; $4280: $02
    db $10                                        ; $4281: $10
    ld [bc], a                                    ; $4282: $02
    jr jr_0db_4287                                ; $4283: $18 $02

    ld e, $02                                     ; $4285: $1e $02

jr_0db_4287:
    inc e                                         ; $4287: $1c
    add c                                         ; $4288: $81
    ld b, $03                                     ; $4289: $06 $03
    ld e, $84                                     ; $428b: $1e $84
    inc d                                         ; $428d: $14
    inc e                                         ; $428e: $1c
    ld e, $1a                                     ; $428f: $1e $1a
    ld [bc], a                                    ; $4291: $02
    ld e, $8e                                     ; $4292: $1e $8e
    inc c                                         ; $4294: $0c
    inc e                                         ; $4295: $1c
    inc d                                         ; $4296: $14
    inc e                                         ; $4297: $1c
    ld a, [bc]                                    ; $4298: $0a
    ld e, $1a                                     ; $4299: $1e $1a
    ld e, $19                                     ; $429b: $1e $19
    rra                                           ; $429d: $1f
    add hl, de                                    ; $429e: $19
    rra                                           ; $429f: $1f
    dec e                                         ; $42a0: $1d
    rra                                           ; $42a1: $1f
    ld [bc], a                                    ; $42a2: $02
    rst $38                                       ; $42a3: $ff
    ld [bc], a                                    ; $42a4: $02
    ld a, a                                       ; $42a5: $7f
    add c                                         ; $42a6: $81
    ld [hl], a                                    ; $42a7: $77
    dec b                                         ; $42a8: $05
    ld a, a                                       ; $42a9: $7f
    add d                                         ; $42aa: $82
    ld h, [hl]                                    ; $42ab: $66

jr_0db_42ac:
    ld a, a                                       ; $42ac: $7f
    ld [bc], a                                    ; $42ad: $02
    ccf                                           ; $42ae: $3f
    ld [de], a                                    ; $42af: $12
    nop                                           ; $42b0: $00
    inc bc                                        ; $42b1: $03
    rra                                           ; $42b2: $1f
    add d                                         ; $42b3: $82
    dec e                                         ; $42b4: $1d
    ld d, $03                                     ; $42b5: $16 $03
    ld e, $82                                     ; $42b7: $1e $82
    inc c                                         ; $42b9: $0c
    inc e                                         ; $42ba: $1c
    ld [bc], a                                    ; $42bb: $02
    db $10                                        ; $42bc: $10
    inc d                                         ; $42bd: $14
    nop                                           ; $42be: $00
    rst $38                                       ; $42bf: $ff
    rlca                                          ; $42c0: $07
    ld bc, $07f8                                  ; $42c1: $01 $f8 $07
    di                                            ; $42c4: $f3
    ld [bc], a                                    ; $42c5: $02
    push af                                       ; $42c6: $f5
    ld a, [$0781]                                 ; $42c7: $fa $81 $07
    rra                                           ; $42ca: $1f
    nop                                           ; $42cb: $00
    rst $38                                       ; $42cc: $ff
    dec c                                         ; $42cd: $0d
    inc b                                         ; $42ce: $04
    ld sp, hl                                     ; $42cf: $f9
    rlca                                          ; $42d0: $07
    di                                            ; $42d1: $f3
    ld [bc], a                                    ; $42d2: $02
    db $ed                                        ; $42d3: $ed
    ld a, [$ffed]                                 ; $42d4: $fa $ed $ff
    db $fd                                        ; $42d7: $fd
    ld a, [$fffd]                                 ; $42d8: $fa $fd $ff
    ld [bc], a                                    ; $42db: $02
    rrca                                          ; $42dc: $0f
    add d                                         ; $42dd: $82
    ld a, h                                       ; $42de: $7c
    ld a, a                                       ; $42df: $7f
    ld [bc], a                                    ; $42e0: $02
    ccf                                           ; $42e1: $3f
    add l                                         ; $42e2: $85
    ld e, a                                       ; $42e3: $5f
    ld a, a                                       ; $42e4: $7f
    ld a, [hl-]                                   ; $42e5: $3a
    ccf                                           ; $42e6: $3f
    dec a                                         ; $42e7: $3d
    inc bc                                        ; $42e8: $03
    ccf                                           ; $42e9: $3f
    add d                                         ; $42ea: $82
    ld a, a                                       ; $42eb: $7f
    ld e, a                                       ; $42ec: $5f
    ld [bc], a                                    ; $42ed: $02
    ld a, a                                       ; $42ee: $7f
    ld [bc], a                                    ; $42ef: $02
    jr c, jr_0db_427e                             ; $42f0: $38 $8c

    jr nz, jr_0db_4333                            ; $42f2: $20 $3f

    ld e, b                                       ; $42f4: $58
    ld a, a                                       ; $42f5: $7f
    ld e, a                                       ; $42f6: $5f
    ld a, a                                       ; $42f7: $7f
    ld e, a                                       ; $42f8: $5f
    ld a, a                                       ; $42f9: $7f
    cp a                                          ; $42fa: $bf
    rst $38                                       ; $42fb: $ff
    cp a                                          ; $42fc: $bf
    rst $38                                       ; $42fd: $ff
    ld [bc], a                                    ; $42fe: $02
    db $10                                        ; $42ff: $10
    ld [bc], a                                    ; $4300: $02
    inc e                                         ; $4301: $1c
    ld [bc], a                                    ; $4302: $02
    ld e, $02                                     ; $4303: $1e $02
    inc e                                         ; $4305: $1c
    add d                                         ; $4306: $82
    ld b, $1e                                     ; $4307: $06 $1e
    ld [bc], a                                    ; $4309: $02
    inc e                                         ; $430a: $1c
    add h                                         ; $430b: $84
    inc d                                         ; $430c: $14
    inc e                                         ; $430d: $1c
    ld e, $1a                                     ; $430e: $1e $1a
    ld [bc], a                                    ; $4310: $02
    ld e, $02                                     ; $4311: $1e $02
    inc e                                         ; $4313: $1c
    adc h                                         ; $4314: $8c
    inc b                                         ; $4315: $04
    inc e                                         ; $4316: $1c
    ld a, [de]                                    ; $4317: $1a
    ld e, $1a                                     ; $4318: $1e $1a
    ld e, $1a                                     ; $431a: $1e $1a
    ld e, $19                                     ; $431c: $1e $19
    rra                                           ; $431e: $1f
    dec e                                         ; $431f: $1d
    rra                                           ; $4320: $1f
    ld [bc], a                                    ; $4321: $02
    rst $38                                       ; $4322: $ff
    add d                                         ; $4323: $82
    ld [hl], a                                    ; $4324: $77
    ld a, a                                       ; $4325: $7f
    ld [bc], a                                    ; $4326: $02
    ccf                                           ; $4327: $3f
    add h                                         ; $4328: $84
    ld h, [hl]                                    ; $4329: $66
    ld a, a                                       ; $432a: $7f
    ld a, l                                       ; $432b: $7d
    ld a, a                                       ; $432c: $7f
    ld [bc], a                                    ; $432d: $02
    ld a, $14                                     ; $432e: $3e $14
    nop                                           ; $4330: $00
    inc bc                                        ; $4331: $03
    rra                                           ; $4332: $1f

jr_0db_4333:
    add l                                         ; $4333: $85
    dec e                                         ; $4334: $1d
    ld d, $1e                                     ; $4335: $16 $1e
    inc c                                         ; $4337: $0c
    inc e                                         ; $4338: $1c
    ld [bc], a                                    ; $4339: $02
    jr jr_0db_4352                                ; $433a: $18 $16

    nop                                           ; $433c: $00
    rst $38                                       ; $433d: $ff
    rlca                                          ; $433e: $07
    ld bc, $07f8                                  ; $433f: $01 $f8 $07
    di                                            ; $4342: $f3
    ld [bc], a                                    ; $4343: $02
    or $fa                                        ; $4344: $f6 $fa
    add c                                         ; $4346: $81
    rlca                                          ; $4347: $07
    rra                                           ; $4348: $1f
    nop                                           ; $4349: $00
    rst $38                                       ; $434a: $ff
    dec c                                         ; $434b: $0d
    inc b                                         ; $434c: $04
    ld sp, hl                                     ; $434d: $f9
    rlca                                          ; $434e: $07
    di                                            ; $434f: $f3
    ld [bc], a                                    ; $4350: $02
    db $ed                                        ; $4351: $ed

jr_0db_4352:
    ld a, [$ffed]                                 ; $4352: $fa $ed $ff
    db $fd                                        ; $4355: $fd
    ld a, [$fffd]                                 ; $4356: $fa $fd $ff
    ld [bc], a                                    ; $4359: $02
    rrca                                          ; $435a: $0f
    add d                                         ; $435b: $82
    ld a, l                                       ; $435c: $7d
    ld a, a                                       ; $435d: $7f
    ld [bc], a                                    ; $435e: $02
    ccf                                           ; $435f: $3f
    add l                                         ; $4360: $85
    ld e, a                                       ; $4361: $5f
    ld a, a                                       ; $4362: $7f
    ld a, e                                       ; $4363: $7b
    ld a, a                                       ; $4364: $7f
    inc a                                         ; $4365: $3c
    inc bc                                        ; $4366: $03
    ccf                                           ; $4367: $3f
    add d                                         ; $4368: $82
    ld a, a                                       ; $4369: $7f
    ld e, a                                       ; $436a: $5f
    ld [bc], a                                    ; $436b: $02
    ld a, a                                       ; $436c: $7f
    adc [hl]                                      ; $436d: $8e
    jr nc, jr_0db_43a8                            ; $436e: $30 $38

    cpl                                           ; $4370: $2f
    ccf                                           ; $4371: $3f
    ld d, b                                       ; $4372: $50
    ld a, a                                       ; $4373: $7f
    ld e, b                                       ; $4374: $58
    ld a, a                                       ; $4375: $7f
    ld e, a                                       ; $4376: $5f
    ld a, a                                       ; $4377: $7f
    cp a                                          ; $4378: $bf
    rst $38                                       ; $4379: $ff
    cp a                                          ; $437a: $bf
    rst $38                                       ; $437b: $ff
    ld [bc], a                                    ; $437c: $02
    db $10                                        ; $437d: $10
    ld [bc], a                                    ; $437e: $02
    jr jr_0db_4383                                ; $437f: $18 $02

    ld e, $02                                     ; $4381: $1e $02

jr_0db_4383:
    inc e                                         ; $4383: $1c
    add c                                         ; $4384: $81
    ld b, $03                                     ; $4385: $06 $03
    ld e, $84                                     ; $4387: $1e $84
    inc d                                         ; $4389: $14
    inc e                                         ; $438a: $1c
    ld e, $1a                                     ; $438b: $1e $1a
    ld [bc], a                                    ; $438d: $02
    ld e, $8f                                     ; $438e: $1e $8f
    inc c                                         ; $4390: $0c
    inc e                                         ; $4391: $1c
    inc d                                         ; $4392: $14
    inc e                                         ; $4393: $1c
    ld a, [bc]                                    ; $4394: $0a
    ld e, $1a                                     ; $4395: $1e $1a
    ld e, $1a                                     ; $4397: $1e $1a
    ld e, $1d                                     ; $4399: $1e $1d
    rra                                           ; $439b: $1f
    dec e                                         ; $439c: $1d
    rra                                           ; $439d: $1f
    cp a                                          ; $439e: $bf
    inc bc                                        ; $439f: $03
    rst $38                                       ; $43a0: $ff
    ld [bc], a                                    ; $43a1: $02
    ccf                                           ; $43a2: $3f
    add d                                         ; $43a3: $82
    ld a, $3f                                     ; $43a4: $3e $3f
    ld [bc], a                                    ; $43a6: $02
    ld a, a                                       ; $43a7: $7f

jr_0db_43a8:
    ld [bc], a                                    ; $43a8: $02
    ld a, $14                                     ; $43a9: $3e $14
    nop                                           ; $43ab: $00
    add c                                         ; $43ac: $81
    dec e                                         ; $43ad: $1d
    inc bc                                        ; $43ae: $03
    rra                                           ; $43af: $1f
    inc b                                         ; $43b0: $04
    inc e                                         ; $43b1: $1c
    ld [bc], a                                    ; $43b2: $02
    jr jr_0db_43cb                                ; $43b3: $18 $16

    nop                                           ; $43b5: $00
    rst $38                                       ; $43b6: $ff
    rlca                                          ; $43b7: $07
    ld bc, $07f8                                  ; $43b8: $01 $f8 $07
    di                                            ; $43bb: $f3
    ld [bc], a                                    ; $43bc: $02
    or $fa                                        ; $43bd: $f6 $fa
    add c                                         ; $43bf: $81
    rlca                                          ; $43c0: $07
    rra                                           ; $43c1: $1f
    nop                                           ; $43c2: $00
    rst $38                                       ; $43c3: $ff
    dec c                                         ; $43c4: $0d
    inc b                                         ; $43c5: $04
    ld sp, hl                                     ; $43c6: $f9
    rlca                                          ; $43c7: $07
    di                                            ; $43c8: $f3
    ld [bc], a                                    ; $43c9: $02
    db $ec                                        ; $43ca: $ec

jr_0db_43cb:
    ld a, [$ffec]                                 ; $43cb: $fa $ec $ff
    db $fc                                        ; $43ce: $fc
    ld a, [$fffc]                                 ; $43cf: $fa $fc $ff
    ld [bc], a                                    ; $43d2: $02
    rrca                                          ; $43d3: $0f
    add d                                         ; $43d4: $82
    ld a, l                                       ; $43d5: $7d
    ld a, a                                       ; $43d6: $7f
    ld [bc], a                                    ; $43d7: $02
    ccf                                           ; $43d8: $3f
    add l                                         ; $43d9: $85
    ld e, a                                       ; $43da: $5f
    ld a, a                                       ; $43db: $7f
    ld a, e                                       ; $43dc: $7b
    ld a, a                                       ; $43dd: $7f
    inc a                                         ; $43de: $3c
    inc bc                                        ; $43df: $03
    ccf                                           ; $43e0: $3f
    add d                                         ; $43e1: $82
    ld a, a                                       ; $43e2: $7f
    ld e, a                                       ; $43e3: $5f
    ld [bc], a                                    ; $43e4: $02
    ld a, a                                       ; $43e5: $7f
    adc [hl]                                      ; $43e6: $8e
    jr nc, jr_0db_4421                            ; $43e7: $30 $38

    cpl                                           ; $43e9: $2f
    ccf                                           ; $43ea: $3f
    ld d, b                                       ; $43eb: $50
    ld a, a                                       ; $43ec: $7f
    ld e, b                                       ; $43ed: $58
    ld a, a                                       ; $43ee: $7f
    ld e, a                                       ; $43ef: $5f
    ld a, a                                       ; $43f0: $7f
    sbc a                                         ; $43f1: $9f
    rst $38                                       ; $43f2: $ff
    cp a                                          ; $43f3: $bf
    rst $38                                       ; $43f4: $ff
    ld [bc], a                                    ; $43f5: $02
    db $10                                        ; $43f6: $10
    ld [bc], a                                    ; $43f7: $02
    jr jr_0db_43fc                                ; $43f8: $18 $02

    ld e, $02                                     ; $43fa: $1e $02

jr_0db_43fc:
    inc e                                         ; $43fc: $1c
    add c                                         ; $43fd: $81
    ld b, $03                                     ; $43fe: $06 $03
    ld e, $84                                     ; $4400: $1e $84
    inc d                                         ; $4402: $14
    inc e                                         ; $4403: $1c
    ld e, $1a                                     ; $4404: $1e $1a
    ld [bc], a                                    ; $4406: $02
    ld e, $8e                                     ; $4407: $1e $8e
    inc c                                         ; $4409: $0c
    inc e                                         ; $440a: $1c
    inc d                                         ; $440b: $14
    inc e                                         ; $440c: $1c
    ld a, [bc]                                    ; $440d: $0a
    ld e, $1a                                     ; $440e: $1e $1a
    ld e, $1a                                     ; $4410: $1e $1a
    ld e, $1d                                     ; $4412: $1e $1d
    rra                                           ; $4414: $1f
    dec e                                         ; $4415: $1d
    rra                                           ; $4416: $1f
    inc b                                         ; $4417: $04
    rst $38                                       ; $4418: $ff
    inc b                                         ; $4419: $04
    ld a, a                                       ; $441a: $7f
    add d                                         ; $441b: $82
    ld a, $3f                                     ; $441c: $3e $3f
    ld [bc], a                                    ; $441e: $02
    rra                                           ; $441f: $1f
    ld [bc], a                                    ; $4420: $02

jr_0db_4421:
    inc bc                                        ; $4421: $03
    ld [de], a                                    ; $4422: $12
    nop                                           ; $4423: $00
    add d                                         ; $4424: $82
    dec d                                         ; $4425: $15
    rra                                           ; $4426: $1f
    inc b                                         ; $4427: $04
    ld e, $81                                     ; $4428: $1e $81
    ld b, $03                                     ; $442a: $06 $03
    ld e, $82                                     ; $442c: $1e $82
    inc d                                         ; $442e: $14
    inc e                                         ; $442f: $1c
    ld [bc], a                                    ; $4430: $02
    jr jr_0db_4445                                ; $4431: $18 $12

    nop                                           ; $4433: $00
    rst $38                                       ; $4434: $ff
    rlca                                          ; $4435: $07
    ld bc, $07f8                                  ; $4436: $01 $f8 $07
    di                                            ; $4439: $f3
    ld [bc], a                                    ; $443a: $02
    push af                                       ; $443b: $f5
    ld a, [$0781]                                 ; $443c: $fa $81 $07
    rra                                           ; $443f: $1f
    nop                                           ; $4440: $00
    rst $38                                       ; $4441: $ff
    dec c                                         ; $4442: $0d
    inc b                                         ; $4443: $04
    ld sp, hl                                     ; $4444: $f9

jr_0db_4445:
    rlca                                          ; $4445: $07
    di                                            ; $4446: $f3
    ld [bc], a                                    ; $4447: $02
    db $ec                                        ; $4448: $ec
    ld a, [$ffec]                                 ; $4449: $fa $ec $ff
    db $fc                                        ; $444c: $fc
    ld a, [$fffc]                                 ; $444d: $fa $fc $ff
    ld [bc], a                                    ; $4450: $02
    rlca                                          ; $4451: $07
    add e                                         ; $4452: $83
    dec a                                         ; $4453: $3d
    ccf                                           ; $4454: $3f
    ld [hl], a                                    ; $4455: $77
    inc bc                                        ; $4456: $03
    ld a, a                                       ; $4457: $7f
    sbc b                                         ; $4458: $98
    ccf                                           ; $4459: $3f
    dec [hl]                                      ; $445a: $35
    ld [hl], a                                    ; $445b: $77
    ld a, l                                       ; $445c: $7d
    ccf                                           ; $445d: $3f
    ld a, [hl-]                                   ; $445e: $3a
    ld a, a                                       ; $445f: $7f
    ld d, d                                       ; $4460: $52
    ld a, a                                       ; $4461: $7f
    ld a, l                                       ; $4462: $7d
    rra                                           ; $4463: $1f
    ld [de], a                                    ; $4464: $12
    ccf                                           ; $4465: $3f
    jr c, jr_0db_44bf                             ; $4466: $38 $57

    ld [hl], a                                    ; $4468: $77
    ld e, b                                       ; $4469: $58
    ld a, b                                       ; $446a: $78
    ld e, d                                       ; $446b: $5a
    ld a, a                                       ; $446c: $7f
    cp l                                          ; $446d: $bd
    rst $38                                       ; $446e: $ff
    sbc l                                         ; $446f: $9d
    rst $38                                       ; $4470: $ff
    ld [bc], a                                    ; $4471: $02
    db $10                                        ; $4472: $10
    ld [bc], a                                    ; $4473: $02
    ld e, $02                                     ; $4474: $1e $02
    inc e                                         ; $4476: $1c
    add c                                         ; $4477: $81
    ld a, [de]                                    ; $4478: $1a
    ld [bc], a                                    ; $4479: $02
    ld e, $82                                     ; $447a: $1e $82
    ld c, $0c                                     ; $447c: $0e $0c
    inc bc                                        ; $447e: $03
    inc e                                         ; $447f: $1c
    add d                                         ; $4480: $82
    ld e, $0a                                     ; $4481: $1e $0a
    ld [bc], a                                    ; $4483: $02
    ld e, $82                                     ; $4484: $1e $82
    jr jr_0db_4490                                ; $4486: $18 $08

    ld [bc], a                                    ; $4488: $02
    inc e                                         ; $4489: $1c
    adc a                                         ; $448a: $8f
    ld a, [bc]                                    ; $448b: $0a
    ld c, $1a                                     ; $448c: $0e $1a
    ld e, $1a                                     ; $448e: $1e $1a

jr_0db_4490:
    ld e, $1d                                     ; $4490: $1e $1d
    rra                                           ; $4492: $1f
    add hl, de                                    ; $4493: $19
    rra                                           ; $4494: $1f
    ld a, [$fa9f]                                 ; $4495: $fa $9f $fa
    xor a                                         ; $4498: $af
    ld a, d                                       ; $4499: $7a
    ld [bc], a                                    ; $449a: $02
    ld [hl], a                                    ; $449b: $77
    inc bc                                        ; $449c: $03
    ld a, a                                       ; $449d: $7f
    add d                                         ; $449e: $82
    dec h                                         ; $449f: $25
    dec a                                         ; $44a0: $3d
    ld [bc], a                                    ; $44a1: $02
    jr c, jr_0db_44b6                             ; $44a2: $38 $12

    nop                                           ; $44a4: $00
    add h                                         ; $44a5: $84
    rra                                           ; $44a6: $1f
    add hl, de                                    ; $44a7: $19
    rra                                           ; $44a8: $1f
    dec e                                         ; $44a9: $1d
    ld [bc], a                                    ; $44aa: $02
    ld e, $85                                     ; $44ab: $1e $85
    ld a, [bc]                                    ; $44ad: $0a
    ld e, $1a                                     ; $44ae: $1e $1a
    ld e, $04                                     ; $44b0: $1e $04
    inc bc                                        ; $44b2: $03
    inc e                                         ; $44b3: $1c
    ld [de], a                                    ; $44b4: $12
    nop                                           ; $44b5: $00

jr_0db_44b6:
    rst $38                                       ; $44b6: $ff
    rlca                                          ; $44b7: $07
    ld bc, $07f8                                  ; $44b8: $01 $f8 $07
    di                                            ; $44bb: $f3
    ld [bc], a                                    ; $44bc: $02
    rst $30                                       ; $44bd: $f7
    ei                                            ; $44be: $fb

jr_0db_44bf:
    add e                                         ; $44bf: $83
    ld de, $0e00                                  ; $44c0: $11 $00 $0e
    dec e                                         ; $44c3: $1d
    nop                                           ; $44c4: $00
    rst $38                                       ; $44c5: $ff
    dec c                                         ; $44c6: $0d
    inc b                                         ; $44c7: $04
    ld sp, hl                                     ; $44c8: $f9
    rlca                                          ; $44c9: $07
    di                                            ; $44ca: $f3
    ld [bc], a                                    ; $44cb: $02
    db $ec                                        ; $44cc: $ec
    ld a, [$ffec]                                 ; $44cd: $fa $ec $ff
    db $fc                                        ; $44d0: $fc
    ld a, [$fffc]                                 ; $44d1: $fa $fc $ff
    ld [bc], a                                    ; $44d4: $02
    rlca                                          ; $44d5: $07
    add e                                         ; $44d6: $83
    dec a                                         ; $44d7: $3d
    ccf                                           ; $44d8: $3f
    ld [hl], a                                    ; $44d9: $77
    inc bc                                        ; $44da: $03
    ld a, a                                       ; $44db: $7f
    adc [hl]                                      ; $44dc: $8e
    ccf                                           ; $44dd: $3f
    dec [hl]                                      ; $44de: $35
    ld [hl], a                                    ; $44df: $77
    ld a, l                                       ; $44e0: $7d
    ccf                                           ; $44e1: $3f
    ld a, [hl-]                                   ; $44e2: $3a
    ld a, a                                       ; $44e3: $7f
    ld d, d                                       ; $44e4: $52
    ld a, a                                       ; $44e5: $7f
    ld a, l                                       ; $44e6: $7d
    rra                                           ; $44e7: $1f
    ld [de], a                                    ; $44e8: $12
    ccf                                           ; $44e9: $3f
    jr c, jr_0db_44ee                             ; $44ea: $38 $02

    scf                                           ; $44ec: $37
    adc b                                         ; $44ed: $88

jr_0db_44ee:
    ld e, b                                       ; $44ee: $58
    ld a, b                                       ; $44ef: $78
    ld e, d                                       ; $44f0: $5a
    ld a, a                                       ; $44f1: $7f
    ld e, l                                       ; $44f2: $5d
    ld a, a                                       ; $44f3: $7f
    adc l                                         ; $44f4: $8d
    rst $38                                       ; $44f5: $ff
    ld [bc], a                                    ; $44f6: $02
    db $10                                        ; $44f7: $10
    ld [bc], a                                    ; $44f8: $02
    ld e, $02                                     ; $44f9: $1e $02
    inc e                                         ; $44fb: $1c
    add c                                         ; $44fc: $81
    ld a, [de]                                    ; $44fd: $1a
    ld [bc], a                                    ; $44fe: $02
    ld e, $82                                     ; $44ff: $1e $82
    ld c, $0c                                     ; $4501: $0e $0c
    inc bc                                        ; $4503: $03
    inc e                                         ; $4504: $1c
    add d                                         ; $4505: $82
    ld e, $0a                                     ; $4506: $1e $0a
    ld [bc], a                                    ; $4508: $02
    ld e, $82                                     ; $4509: $1e $82
    jr jr_0db_4515                                ; $450b: $18 $08

    ld [bc], a                                    ; $450d: $02
    inc e                                         ; $450e: $1c
    adc a                                         ; $450f: $8f
    ld a, [bc]                                    ; $4510: $0a
    ld c, $1a                                     ; $4511: $0e $1a
    ld e, $19                                     ; $4513: $1e $19

jr_0db_4515:
    rra                                           ; $4515: $1f
    dec e                                         ; $4516: $1d
    rra                                           ; $4517: $1f
    add hl, de                                    ; $4518: $19
    rra                                           ; $4519: $1f
    db $ed                                        ; $451a: $ed
    rst $18                                       ; $451b: $df
    cp $93                                        ; $451c: $fe $93
    ld a, e                                       ; $451e: $7b
    inc bc                                        ; $451f: $03
    ld a, a                                       ; $4520: $7f
    add d                                         ; $4521: $82
    cpl                                           ; $4522: $2f
    ccf                                           ; $4523: $3f
    ld [bc], a                                    ; $4524: $02
    dec e                                         ; $4525: $1d
    inc d                                         ; $4526: $14
    nop                                           ; $4527: $00
    add d                                         ; $4528: $82
    rra                                           ; $4529: $1f
    dec e                                         ; $452a: $1d
    ld [bc], a                                    ; $452b: $02
    ld e, $83                                     ; $452c: $1e $83
    ld c, $1e                                     ; $452e: $0e $1e
    ld c, $03                                     ; $4530: $0e $03
    ld e, $82                                     ; $4532: $1e $82
    inc b                                         ; $4534: $04
    inc e                                         ; $4535: $1c
    ld [bc], a                                    ; $4536: $02
    jr jr_0db_454b                                ; $4537: $18 $12

    nop                                           ; $4539: $00
    rst $38                                       ; $453a: $ff
    rlca                                          ; $453b: $07
    ld bc, $07f8                                  ; $453c: $01 $f8 $07
    di                                            ; $453f: $f3
    ld [bc], a                                    ; $4540: $02
    rst $30                                       ; $4541: $f7
    ei                                            ; $4542: $fb
    add e                                         ; $4543: $83
    ld de, $0e00                                  ; $4544: $11 $00 $0e
    dec e                                         ; $4547: $1d
    nop                                           ; $4548: $00
    rst $38                                       ; $4549: $ff
    dec c                                         ; $454a: $0d

jr_0db_454b:
    inc b                                         ; $454b: $04
    ld sp, hl                                     ; $454c: $f9
    rlca                                          ; $454d: $07
    di                                            ; $454e: $f3
    ld [bc], a                                    ; $454f: $02
    db $ed                                        ; $4550: $ed
    ld a, [$ffed]                                 ; $4551: $fa $ed $ff
    db $fd                                        ; $4554: $fd
    ld a, [$fffd]                                 ; $4555: $fa $fd $ff
    ld [bc], a                                    ; $4558: $02
    rla                                           ; $4559: $17
    add e                                         ; $455a: $83
    dec a                                         ; $455b: $3d
    ccf                                           ; $455c: $3f
    ld h, a                                       ; $455d: $67
    inc bc                                        ; $455e: $03
    ld a, a                                       ; $455f: $7f
    adc [hl]                                      ; $4560: $8e
    ccf                                           ; $4561: $3f
    dec [hl]                                      ; $4562: $35
    ld [hl], a                                    ; $4563: $77
    ld a, l                                       ; $4564: $7d
    ccf                                           ; $4565: $3f
    ld a, [hl-]                                   ; $4566: $3a
    ld a, a                                       ; $4567: $7f
    ld d, d                                       ; $4568: $52
    ld a, a                                       ; $4569: $7f
    ld a, l                                       ; $456a: $7d
    rra                                           ; $456b: $1f
    ld [de], a                                    ; $456c: $12
    ccf                                           ; $456d: $3f
    jr c, jr_0db_4572                             ; $456e: $38 $02

    ld [hl], a                                    ; $4570: $77
    adc b                                         ; $4571: $88

jr_0db_4572:
    ld e, b                                       ; $4572: $58
    ld a, b                                       ; $4573: $78
    ld e, d                                       ; $4574: $5a
    ld a, a                                       ; $4575: $7f
    ld e, l                                       ; $4576: $5d
    ld a, a                                       ; $4577: $7f
    sbc l                                         ; $4578: $9d
    rst $38                                       ; $4579: $ff
    ld [bc], a                                    ; $457a: $02
    inc d                                         ; $457b: $14
    ld [bc], a                                    ; $457c: $02
    inc e                                         ; $457d: $1c
    add e                                         ; $457e: $83
    ld a, [de]                                    ; $457f: $1a
    ld e, $1a                                     ; $4580: $1e $1a
    ld [bc], a                                    ; $4582: $02
    ld e, $82                                     ; $4583: $1e $82
    ld c, $0c                                     ; $4585: $0e $0c
    inc bc                                        ; $4587: $03
    inc e                                         ; $4588: $1c
    add d                                         ; $4589: $82
    ld e, $0a                                     ; $458a: $1e $0a
    ld [bc], a                                    ; $458c: $02
    ld e, $82                                     ; $458d: $1e $82
    jr jr_0db_4599                                ; $458f: $18 $08

    ld [bc], a                                    ; $4591: $02
    inc e                                         ; $4592: $1c
    sub b                                         ; $4593: $90
    ld a, [bc]                                    ; $4594: $0a
    ld c, $1a                                     ; $4595: $0e $1a
    ld e, $1b                                     ; $4597: $1e $1b

jr_0db_4599:
    rra                                           ; $4599: $1f
    dec e                                         ; $459a: $1d
    rra                                           ; $459b: $1f
    add hl, de                                    ; $459c: $19
    rra                                           ; $459d: $1f
    ld [$fadf], a                                 ; $459e: $ea $df $fa
    and a                                         ; $45a1: $a7
    ld [hl], a                                    ; $45a2: $77
    ld a, a                                       ; $45a3: $7f
    ld [bc], a                                    ; $45a4: $02
    ccf                                           ; $45a5: $3f
    ld [bc], a                                    ; $45a6: $02
    rra                                           ; $45a7: $1f
    ld [bc], a                                    ; $45a8: $02
    ld bc, $0014                                  ; $45a9: $01 $14 $00
    add l                                         ; $45ac: $85
    rra                                           ; $45ad: $1f
    dec e                                         ; $45ae: $1d
    rra                                           ; $45af: $1f
    dec e                                         ; $45b0: $1d
    ld c, $03                                     ; $45b1: $0e $03
    ld e, $82                                     ; $45b3: $1e $82
    ld b, $1e                                     ; $45b5: $06 $1e
    ld [bc], a                                    ; $45b7: $02
    inc e                                         ; $45b8: $1c
    inc d                                         ; $45b9: $14
    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff
    rlca                                          ; $45bc: $07
    ld bc, $07f8                                  ; $45bd: $01 $f8 $07
    di                                            ; $45c0: $f3
    ld [bc], a                                    ; $45c1: $02
    ld hl, sp-$05                                 ; $45c2: $f8 $fb
    add e                                         ; $45c4: $83
    ld de, $0e00                                  ; $45c5: $11 $00 $0e
    dec e                                         ; $45c8: $1d
    nop                                           ; $45c9: $00
    rst $38                                       ; $45ca: $ff
    dec c                                         ; $45cb: $0d
    inc b                                         ; $45cc: $04
    ld sp, hl                                     ; $45cd: $f9
    rlca                                          ; $45ce: $07
    di                                            ; $45cf: $f3
    ld [bc], a                                    ; $45d0: $02
    db $ed                                        ; $45d1: $ed
    ld a, [$ffed]                                 ; $45d2: $fa $ed $ff
    db $fd                                        ; $45d5: $fd
    ld a, [$fffd]                                 ; $45d6: $fa $fd $ff
    ld [bc], a                                    ; $45d9: $02
    rlca                                          ; $45da: $07
    add e                                         ; $45db: $83
    dec a                                         ; $45dc: $3d
    ccf                                           ; $45dd: $3f
    ld [hl], a                                    ; $45de: $77
    inc bc                                        ; $45df: $03
    ld a, a                                       ; $45e0: $7f
    sbc b                                         ; $45e1: $98
    ccf                                           ; $45e2: $3f
    dec [hl]                                      ; $45e3: $35
    ld [hl], a                                    ; $45e4: $77
    ld a, l                                       ; $45e5: $7d
    ccf                                           ; $45e6: $3f
    ld a, [hl-]                                   ; $45e7: $3a
    ld a, a                                       ; $45e8: $7f
    ld d, d                                       ; $45e9: $52
    ld a, a                                       ; $45ea: $7f
    ld a, l                                       ; $45eb: $7d
    rra                                           ; $45ec: $1f
    ld [de], a                                    ; $45ed: $12
    ccf                                           ; $45ee: $3f
    jr c, jr_0db_4648                             ; $45ef: $38 $57

    ld [hl], a                                    ; $45f1: $77
    ld e, b                                       ; $45f2: $58
    ld a, b                                       ; $45f3: $78
    ld e, d                                       ; $45f4: $5a
    ld a, a                                       ; $45f5: $7f
    cp l                                          ; $45f6: $bd
    rst $38                                       ; $45f7: $ff
    sbc l                                         ; $45f8: $9d
    rst $38                                       ; $45f9: $ff
    ld [bc], a                                    ; $45fa: $02
    db $10                                        ; $45fb: $10
    ld [bc], a                                    ; $45fc: $02
    ld e, $02                                     ; $45fd: $1e $02
    inc e                                         ; $45ff: $1c

Jump_0db_4600:
    add c                                         ; $4600: $81
    ld a, [de]                                    ; $4601: $1a
    ld [bc], a                                    ; $4602: $02
    ld e, $82                                     ; $4603: $1e $82
    ld c, $0c                                     ; $4605: $0e $0c
    inc bc                                        ; $4607: $03
    inc e                                         ; $4608: $1c
    add d                                         ; $4609: $82
    ld e, $0a                                     ; $460a: $1e $0a
    ld [bc], a                                    ; $460c: $02
    ld e, $82                                     ; $460d: $1e $82
    jr jr_0db_4619                                ; $460f: $18 $08

    ld [bc], a                                    ; $4611: $02
    inc e                                         ; $4612: $1c
    sub d                                         ; $4613: $92
    ld a, [bc]                                    ; $4614: $0a
    ld c, $1a                                     ; $4615: $0e $1a
    ld e, $1a                                     ; $4617: $1e $1a

jr_0db_4619:
    ld e, $1d                                     ; $4619: $1e $1d
    rra                                           ; $461b: $1f
    add hl, de                                    ; $461c: $19
    rra                                           ; $461d: $1f
    ld a, [$fa9f]                                 ; $461e: $fa $9f $fa
    xor a                                         ; $4621: $af
    ld a, e                                       ; $4622: $7b
    ld [hl], a                                    ; $4623: $77
    scf                                           ; $4624: $37
    ccf                                           ; $4625: $3f
    ld [bc], a                                    ; $4626: $02
    rra                                           ; $4627: $1f
    ld [bc], a                                    ; $4628: $02
    ld bc, $0014                                  ; $4629: $01 $14 $00
    add l                                         ; $462c: $85
    rra                                           ; $462d: $1f
    add hl, de                                    ; $462e: $19
    rra                                           ; $462f: $1f
    dec e                                         ; $4630: $1d
    ld c, $03                                     ; $4631: $0e $03
    ld e, $82                                     ; $4633: $1e $82
    inc b                                         ; $4635: $04
    inc e                                         ; $4636: $1c
    ld [bc], a                                    ; $4637: $02
    jr jr_0db_464e                                ; $4638: $18 $14

    nop                                           ; $463a: $00
    rst $38                                       ; $463b: $ff
    rlca                                          ; $463c: $07
    ld bc, $07f8                                  ; $463d: $01 $f8 $07
    di                                            ; $4640: $f3
    ld [bc], a                                    ; $4641: $02
    ld hl, sp-$05                                 ; $4642: $f8 $fb
    add e                                         ; $4644: $83
    ld de, $0e00                                  ; $4645: $11 $00 $0e

jr_0db_4648:
    dec e                                         ; $4648: $1d
    nop                                           ; $4649: $00
    rst $38                                       ; $464a: $ff
    dec c                                         ; $464b: $0d
    inc b                                         ; $464c: $04
    ld sp, hl                                     ; $464d: $f9

jr_0db_464e:
    rlca                                          ; $464e: $07
    di                                            ; $464f: $f3
    ld [bc], a                                    ; $4650: $02
    db $ec                                        ; $4651: $ec
    ld a, [$ffec]                                 ; $4652: $fa $ec $ff
    db $fc                                        ; $4655: $fc
    ld a, [$fffc]                                 ; $4656: $fa $fc $ff
    ld [bc], a                                    ; $4659: $02
    rlca                                          ; $465a: $07
    add e                                         ; $465b: $83
    dec a                                         ; $465c: $3d
    ccf                                           ; $465d: $3f
    ld [hl], a                                    ; $465e: $77
    inc bc                                        ; $465f: $03
    ld a, a                                       ; $4660: $7f
    sbc b                                         ; $4661: $98
    ccf                                           ; $4662: $3f
    dec [hl]                                      ; $4663: $35
    ld [hl], a                                    ; $4664: $77
    ld a, l                                       ; $4665: $7d
    ccf                                           ; $4666: $3f
    ld a, [hl-]                                   ; $4667: $3a
    ld a, a                                       ; $4668: $7f
    ld d, d                                       ; $4669: $52
    ld a, a                                       ; $466a: $7f
    ld a, l                                       ; $466b: $7d
    rra                                           ; $466c: $1f
    ld [de], a                                    ; $466d: $12
    ccf                                           ; $466e: $3f
    jr c, jr_0db_46c8                             ; $466f: $38 $57

    ld [hl], a                                    ; $4671: $77
    ld e, b                                       ; $4672: $58
    ld a, b                                       ; $4673: $78
    ld e, d                                       ; $4674: $5a
    ld a, a                                       ; $4675: $7f
    cp l                                          ; $4676: $bd
    rst $38                                       ; $4677: $ff
    sbc l                                         ; $4678: $9d
    rst $38                                       ; $4679: $ff
    ld [bc], a                                    ; $467a: $02
    db $10                                        ; $467b: $10
    ld [bc], a                                    ; $467c: $02
    ld e, $02                                     ; $467d: $1e $02
    inc e                                         ; $467f: $1c
    add c                                         ; $4680: $81
    ld a, [de]                                    ; $4681: $1a
    ld [bc], a                                    ; $4682: $02
    ld e, $82                                     ; $4683: $1e $82
    ld c, $0c                                     ; $4685: $0e $0c
    inc bc                                        ; $4687: $03
    inc e                                         ; $4688: $1c
    add d                                         ; $4689: $82
    ld e, $0a                                     ; $468a: $1e $0a
    ld [bc], a                                    ; $468c: $02
    ld e, $82                                     ; $468d: $1e $82
    jr jr_0db_4699                                ; $468f: $18 $08

    ld [bc], a                                    ; $4691: $02
    inc e                                         ; $4692: $1c
    sub b                                         ; $4693: $90
    ld a, [bc]                                    ; $4694: $0a
    ld c, $1a                                     ; $4695: $0e $1a
    ld e, $1a                                     ; $4697: $1e $1a

jr_0db_4699:
    ld e, $1d                                     ; $4699: $1e $1d
    rra                                           ; $469b: $1f
    add hl, de                                    ; $469c: $19
    rra                                           ; $469d: $1f
    db $fd                                        ; $469e: $fd
    cp a                                          ; $469f: $bf
    ld a, [$769f]                                 ; $46a0: $fa $9f $76
    ld l, a                                       ; $46a3: $6f
    ld [bc], a                                    ; $46a4: $02
    ld a, a                                       ; $46a5: $7f
    add d                                         ; $46a6: $82
    scf                                           ; $46a7: $37
    ccf                                           ; $46a8: $3f
    ld [bc], a                                    ; $46a9: $02
    dec e                                         ; $46aa: $1d
    inc d                                         ; $46ab: $14
    nop                                           ; $46ac: $00
    add h                                         ; $46ad: $84
    rra                                           ; $46ae: $1f
    add hl, de                                    ; $46af: $19
    rra                                           ; $46b0: $1f
    dec e                                         ; $46b1: $1d
    ld [bc], a                                    ; $46b2: $02
    ld e, $81                                     ; $46b3: $1e $81
    ld c, $03                                     ; $46b5: $0e $03
    ld e, $82                                     ; $46b7: $1e $82
    inc b                                         ; $46b9: $04
    inc e                                         ; $46ba: $1c
    ld [bc], a                                    ; $46bb: $02
    jr jr_0db_46d0                                ; $46bc: $18 $12

    nop                                           ; $46be: $00
    rst $38                                       ; $46bf: $ff
    rlca                                          ; $46c0: $07
    ld bc, $07f8                                  ; $46c1: $01 $f8 $07
    di                                            ; $46c4: $f3
    ld [bc], a                                    ; $46c5: $02
    rst $30                                       ; $46c6: $f7
    ei                                            ; $46c7: $fb

jr_0db_46c8:
    add e                                         ; $46c8: $83
    ld de, $0e00                                  ; $46c9: $11 $00 $0e
    dec e                                         ; $46cc: $1d
    nop                                           ; $46cd: $00
    rst $38                                       ; $46ce: $ff
    dec c                                         ; $46cf: $0d

jr_0db_46d0:
    inc b                                         ; $46d0: $04
    ld sp, hl                                     ; $46d1: $f9
    rlca                                          ; $46d2: $07
    di                                            ; $46d3: $f3
    ld [bc], a                                    ; $46d4: $02
    db $ec                                        ; $46d5: $ec
    ld a, [$ffec]                                 ; $46d6: $fa $ec $ff
    db $fc                                        ; $46d9: $fc
    ld a, [$fffc]                                 ; $46da: $fa $fc $ff
    ld [bc], a                                    ; $46dd: $02
    rlca                                          ; $46de: $07
    add e                                         ; $46df: $83
    dec a                                         ; $46e0: $3d
    ccf                                           ; $46e1: $3f
    ld [hl], a                                    ; $46e2: $77
    inc bc                                        ; $46e3: $03
    ld a, a                                       ; $46e4: $7f
    sbc b                                         ; $46e5: $98
    ccf                                           ; $46e6: $3f
    dec [hl]                                      ; $46e7: $35
    ld [hl], a                                    ; $46e8: $77
    ld a, l                                       ; $46e9: $7d
    ccf                                           ; $46ea: $3f
    ld a, [hl-]                                   ; $46eb: $3a
    ld a, a                                       ; $46ec: $7f
    ld d, d                                       ; $46ed: $52
    ld a, a                                       ; $46ee: $7f
    ld a, l                                       ; $46ef: $7d
    rra                                           ; $46f0: $1f
    ld [de], a                                    ; $46f1: $12
    ccf                                           ; $46f2: $3f
    jr c, @+$59                                   ; $46f3: $38 $57

    ld [hl], a                                    ; $46f5: $77
    ld e, b                                       ; $46f6: $58
    ld a, b                                       ; $46f7: $78
    sbc d                                         ; $46f8: $9a
    rst $38                                       ; $46f9: $ff
    cp l                                          ; $46fa: $bd
    rst $38                                       ; $46fb: $ff
    sbc l                                         ; $46fc: $9d
    rst $38                                       ; $46fd: $ff
    ld [bc], a                                    ; $46fe: $02
    db $10                                        ; $46ff: $10
    ld [bc], a                                    ; $4700: $02
    ld e, $02                                     ; $4701: $1e $02
    inc e                                         ; $4703: $1c
    add c                                         ; $4704: $81
    ld a, [de]                                    ; $4705: $1a
    ld [bc], a                                    ; $4706: $02
    ld e, $82                                     ; $4707: $1e $82
    ld c, $0c                                     ; $4709: $0e $0c
    inc bc                                        ; $470b: $03
    inc e                                         ; $470c: $1c
    add d                                         ; $470d: $82
    ld e, $0a                                     ; $470e: $1e $0a
    ld [bc], a                                    ; $4710: $02
    ld e, $82                                     ; $4711: $1e $82
    jr jr_0db_471d                                ; $4713: $18 $08

    ld [bc], a                                    ; $4715: $02
    inc e                                         ; $4716: $1c
    ld [bc], a                                    ; $4717: $02
    inc c                                         ; $4718: $0c
    sub b                                         ; $4719: $90
    ld a, [de]                                    ; $471a: $1a
    ld e, $1a                                     ; $471b: $1e $1a

jr_0db_471d:
    ld e, $1a                                     ; $471d: $1e $1a
    ld e, $11                                     ; $471f: $1e $11
    rra                                           ; $4721: $1f
    db $fd                                        ; $4722: $fd
    cp a                                          ; $4723: $bf
    ld a, [$76bf]                                 ; $4724: $fa $bf $76
    ld e, a                                       ; $4727: $5f
    ld [hl], a                                    ; $4728: $77
    ld a, a                                       ; $4729: $7f
    ld [bc], a                                    ; $472a: $02
    ccf                                           ; $472b: $3f
    add d                                         ; $472c: $82
    dec h                                         ; $472d: $25
    dec a                                         ; $472e: $3d
    ld [bc], a                                    ; $472f: $02
    jr @+$14                                      ; $4730: $18 $12

    nop                                           ; $4732: $00
    add h                                         ; $4733: $84
    rla                                           ; $4734: $17
    dec de                                        ; $4735: $1b
    rra                                           ; $4736: $1f
    add hl, de                                    ; $4737: $19
    inc b                                         ; $4738: $04
    ld e, $82                                     ; $4739: $1e $82
    inc d                                         ; $473b: $14
    inc e                                         ; $473c: $1c
    ld [bc], a                                    ; $473d: $02
    jr jr_0db_4754                                ; $473e: $18 $14

    nop                                           ; $4740: $00
    rst $38                                       ; $4741: $ff
    rlca                                          ; $4742: $07
    ld bc, $07f8                                  ; $4743: $01 $f8 $07
    di                                            ; $4746: $f3
    ld [bc], a                                    ; $4747: $02
    rst $30                                       ; $4748: $f7
    ei                                            ; $4749: $fb
    add e                                         ; $474a: $83
    ld de, $0e00                                  ; $474b: $11 $00 $0e
    dec e                                         ; $474e: $1d
    nop                                           ; $474f: $00
    rst $38                                       ; $4750: $ff
    dec c                                         ; $4751: $0d
    inc b                                         ; $4752: $04
    ld sp, hl                                     ; $4753: $f9

jr_0db_4754:
    rlca                                          ; $4754: $07
    di                                            ; $4755: $f3
    ld [bc], a                                    ; $4756: $02
    db $ed                                        ; $4757: $ed
    ld a, [$ffed]                                 ; $4758: $fa $ed $ff
    db $fd                                        ; $475b: $fd
    ld a, [$fffd]                                 ; $475c: $fa $fd $ff
    ld [bc], a                                    ; $475f: $02
    rla                                           ; $4760: $17
    add e                                         ; $4761: $83
    dec a                                         ; $4762: $3d
    ccf                                           ; $4763: $3f
    ld h, a                                       ; $4764: $67
    inc bc                                        ; $4765: $03
    ld a, a                                       ; $4766: $7f
    sbc b                                         ; $4767: $98
    ccf                                           ; $4768: $3f
    dec [hl]                                      ; $4769: $35
    ld [hl], a                                    ; $476a: $77
    ld a, l                                       ; $476b: $7d
    ccf                                           ; $476c: $3f
    ld a, [hl-]                                   ; $476d: $3a
    ld a, a                                       ; $476e: $7f
    ld d, d                                       ; $476f: $52
    ld a, a                                       ; $4770: $7f
    ld a, l                                       ; $4771: $7d
    rra                                           ; $4772: $1f
    ld [de], a                                    ; $4773: $12
    ccf                                           ; $4774: $3f
    jr c, jr_0db_47ce                             ; $4775: $38 $57

    ld [hl], a                                    ; $4777: $77
    ld e, b                                       ; $4778: $58
    ld a, b                                       ; $4779: $78
    jp c, $bdff                                   ; $477a: $da $ff $bd

    rst $38                                       ; $477d: $ff
    sbc l                                         ; $477e: $9d
    rst $38                                       ; $477f: $ff
    ld [bc], a                                    ; $4780: $02
    inc d                                         ; $4781: $14
    ld [bc], a                                    ; $4782: $02
    inc e                                         ; $4783: $1c
    add e                                         ; $4784: $83
    ld a, [de]                                    ; $4785: $1a
    ld e, $1a                                     ; $4786: $1e $1a
    ld [bc], a                                    ; $4788: $02
    ld e, $82                                     ; $4789: $1e $82
    ld c, $0c                                     ; $478b: $0e $0c
    inc bc                                        ; $478d: $03
    inc e                                         ; $478e: $1c
    add d                                         ; $478f: $82
    ld e, $0a                                     ; $4790: $1e $0a
    ld [bc], a                                    ; $4792: $02
    ld e, $82                                     ; $4793: $1e $82
    jr jr_0db_479f                                ; $4795: $18 $08

    ld [bc], a                                    ; $4797: $02
    inc e                                         ; $4798: $1c
    ld [bc], a                                    ; $4799: $02
    ld c, $8e                                     ; $479a: $0e $8e
    ld a, [de]                                    ; $479c: $1a
    ld e, $1a                                     ; $479d: $1e $1a

jr_0db_479f:
    ld e, $1a                                     ; $479f: $1e $1a
    ld e, $19                                     ; $47a1: $1e $19
    rra                                           ; $47a3: $1f
    ld a, [$fabf]                                 ; $47a4: $fa $bf $fa
    cp a                                          ; $47a7: $bf
    halt                                          ; $47a8: $76
    ld e, a                                       ; $47a9: $5f
    ld [bc], a                                    ; $47aa: $02
    ld a, a                                       ; $47ab: $7f
    add d                                         ; $47ac: $82
    ld h, a                                       ; $47ad: $67
    ld a, a                                       ; $47ae: $7f
    ld [bc], a                                    ; $47af: $02
    inc a                                         ; $47b0: $3c
    inc d                                         ; $47b1: $14
    nop                                           ; $47b2: $00
    add h                                         ; $47b3: $84
    rla                                           ; $47b4: $17
    dec de                                        ; $47b5: $1b
    rra                                           ; $47b6: $1f
    dec e                                         ; $47b7: $1d
    ld [bc], a                                    ; $47b8: $02
    ld e, $02                                     ; $47b9: $1e $02
    inc e                                         ; $47bb: $1c
    ld [bc], a                                    ; $47bc: $02
    jr jr_0db_47d5                                ; $47bd: $18 $16

    nop                                           ; $47bf: $00
    rst $38                                       ; $47c0: $ff
    rlca                                          ; $47c1: $07
    ld bc, $07f8                                  ; $47c2: $01 $f8 $07
    di                                            ; $47c5: $f3
    ld [bc], a                                    ; $47c6: $02
    ld hl, sp-$05                                 ; $47c7: $f8 $fb
    add e                                         ; $47c9: $83
    ld de, $0e00                                  ; $47ca: $11 $00 $0e
    dec e                                         ; $47cd: $1d

jr_0db_47ce:
    nop                                           ; $47ce: $00
    rst $38                                       ; $47cf: $ff
    dec c                                         ; $47d0: $0d
    inc b                                         ; $47d1: $04
    ld sp, hl                                     ; $47d2: $f9
    rlca                                          ; $47d3: $07
    di                                            ; $47d4: $f3

jr_0db_47d5:
    ld [bc], a                                    ; $47d5: $02
    db $ed                                        ; $47d6: $ed
    ld a, [$ffed]                                 ; $47d7: $fa $ed $ff
    db $fd                                        ; $47da: $fd
    ld a, [$fffd]                                 ; $47db: $fa $fd $ff
    ld [bc], a                                    ; $47de: $02
    rlca                                          ; $47df: $07
    add e                                         ; $47e0: $83
    dec a                                         ; $47e1: $3d
    ccf                                           ; $47e2: $3f
    ld [hl], a                                    ; $47e3: $77
    inc bc                                        ; $47e4: $03
    ld a, a                                       ; $47e5: $7f
    sbc b                                         ; $47e6: $98
    ccf                                           ; $47e7: $3f
    dec [hl]                                      ; $47e8: $35
    ld [hl], a                                    ; $47e9: $77
    ld a, l                                       ; $47ea: $7d
    ccf                                           ; $47eb: $3f
    ld a, [hl-]                                   ; $47ec: $3a
    ld a, a                                       ; $47ed: $7f
    ld d, d                                       ; $47ee: $52
    ld a, a                                       ; $47ef: $7f
    ld a, l                                       ; $47f0: $7d
    rra                                           ; $47f1: $1f
    ld [de], a                                    ; $47f2: $12
    ccf                                           ; $47f3: $3f
    jr c, jr_0db_484d                             ; $47f4: $38 $57

    ld [hl], a                                    ; $47f6: $77
    ld e, b                                       ; $47f7: $58
    ld a, b                                       ; $47f8: $78
    ld e, d                                       ; $47f9: $5a
    ld a, a                                       ; $47fa: $7f
    cp l                                          ; $47fb: $bd
    rst $38                                       ; $47fc: $ff
    sbc l                                         ; $47fd: $9d
    rst $38                                       ; $47fe: $ff
    ld [bc], a                                    ; $47ff: $02
    db $10                                        ; $4800: $10
    ld [bc], a                                    ; $4801: $02
    ld e, $02                                     ; $4802: $1e $02
    inc e                                         ; $4804: $1c
    add c                                         ; $4805: $81
    ld a, [de]                                    ; $4806: $1a
    ld [bc], a                                    ; $4807: $02
    ld e, $82                                     ; $4808: $1e $82
    ld c, $0c                                     ; $480a: $0e $0c
    inc bc                                        ; $480c: $03
    inc e                                         ; $480d: $1c
    add d                                         ; $480e: $82
    ld e, $0a                                     ; $480f: $1e $0a
    ld [bc], a                                    ; $4811: $02
    ld e, $82                                     ; $4812: $1e $82
    jr jr_0db_481e                                ; $4814: $18 $08

    ld [bc], a                                    ; $4816: $02
    inc e                                         ; $4817: $1c
    sub b                                         ; $4818: $90
    ld a, [bc]                                    ; $4819: $0a
    ld c, $1a                                     ; $481a: $0e $1a
    ld e, $1a                                     ; $481c: $1e $1a

jr_0db_481e:
    ld e, $1d                                     ; $481e: $1e $1d
    rra                                           ; $4820: $1f
    add hl, de                                    ; $4821: $19
    rra                                           ; $4822: $1f
    ld a, [$fa9f]                                 ; $4823: $fa $9f $fa
    cp a                                          ; $4826: $bf
    ld a, [hl]                                    ; $4827: $7e
    ld l, a                                       ; $4828: $6f
    ld [bc], a                                    ; $4829: $02
    ld a, a                                       ; $482a: $7f
    add d                                         ; $482b: $82
    daa                                           ; $482c: $27
    ccf                                           ; $482d: $3f
    ld [bc], a                                    ; $482e: $02
    inc e                                         ; $482f: $1c
    inc d                                         ; $4830: $14
    nop                                           ; $4831: $00
    add h                                         ; $4832: $84
    rra                                           ; $4833: $1f
    add hl, de                                    ; $4834: $19
    rra                                           ; $4835: $1f
    dec e                                         ; $4836: $1d
    ld [bc], a                                    ; $4837: $02
    ld e, $82                                     ; $4838: $1e $82
    inc c                                         ; $483a: $0c
    inc e                                         ; $483b: $1c
    ld [bc], a                                    ; $483c: $02
    jr jr_0db_4855                                ; $483d: $18 $16

    nop                                           ; $483f: $00
    rst $38                                       ; $4840: $ff
    rlca                                          ; $4841: $07
    ld bc, $07f8                                  ; $4842: $01 $f8 $07
    di                                            ; $4845: $f3
    ld [bc], a                                    ; $4846: $02
    ld hl, sp-$05                                 ; $4847: $f8 $fb
    add e                                         ; $4849: $83
    ld de, $0e00                                  ; $484a: $11 $00 $0e

jr_0db_484d:
    dec e                                         ; $484d: $1d
    nop                                           ; $484e: $00
    rst $38                                       ; $484f: $ff
    dec c                                         ; $4850: $0d
    inc b                                         ; $4851: $04
    ld sp, hl                                     ; $4852: $f9
    rlca                                          ; $4853: $07
    di                                            ; $4854: $f3

jr_0db_4855:
    ld [bc], a                                    ; $4855: $02
    db $ec                                        ; $4856: $ec
    ld a, [$ffec]                                 ; $4857: $fa $ec $ff
    db $fc                                        ; $485a: $fc
    ld a, [$fffc]                                 ; $485b: $fa $fc $ff
    ld [bc], a                                    ; $485e: $02
    rlca                                          ; $485f: $07
    add e                                         ; $4860: $83
    dec a                                         ; $4861: $3d
    ccf                                           ; $4862: $3f
    ld [hl], a                                    ; $4863: $77
    inc bc                                        ; $4864: $03
    ld a, a                                       ; $4865: $7f
    sbc b                                         ; $4866: $98
    ccf                                           ; $4867: $3f
    dec [hl]                                      ; $4868: $35
    ld [hl], a                                    ; $4869: $77
    ld a, l                                       ; $486a: $7d
    ccf                                           ; $486b: $3f
    ld a, [hl-]                                   ; $486c: $3a
    ld a, a                                       ; $486d: $7f
    ld d, d                                       ; $486e: $52
    ld a, a                                       ; $486f: $7f
    ld a, l                                       ; $4870: $7d
    rra                                           ; $4871: $1f
    ld [de], a                                    ; $4872: $12
    ccf                                           ; $4873: $3f
    jr c, @+$59                                   ; $4874: $38 $57

    ld [hl], a                                    ; $4876: $77
    ld e, b                                       ; $4877: $58
    ld a, b                                       ; $4878: $78
    ld e, d                                       ; $4879: $5a
    ld a, a                                       ; $487a: $7f
    cp l                                          ; $487b: $bd
    rst $38                                       ; $487c: $ff
    sbc l                                         ; $487d: $9d
    rst $38                                       ; $487e: $ff
    ld [bc], a                                    ; $487f: $02
    db $10                                        ; $4880: $10
    ld [bc], a                                    ; $4881: $02
    ld e, $02                                     ; $4882: $1e $02
    inc e                                         ; $4884: $1c
    add c                                         ; $4885: $81
    ld a, [de]                                    ; $4886: $1a
    ld [bc], a                                    ; $4887: $02
    ld e, $82                                     ; $4888: $1e $82
    ld c, $0c                                     ; $488a: $0e $0c
    inc bc                                        ; $488c: $03
    inc e                                         ; $488d: $1c
    add d                                         ; $488e: $82
    ld e, $0a                                     ; $488f: $1e $0a
    ld [bc], a                                    ; $4891: $02
    ld e, $82                                     ; $4892: $1e $82
    jr jr_0db_489e                                ; $4894: $18 $08

    ld [bc], a                                    ; $4896: $02
    inc e                                         ; $4897: $1c
    adc a                                         ; $4898: $8f
    ld a, [bc]                                    ; $4899: $0a
    ld c, $1a                                     ; $489a: $0e $1a
    ld e, $1a                                     ; $489c: $1e $1a

jr_0db_489e:
    ld e, $1d                                     ; $489e: $1e $1d
    rra                                           ; $48a0: $1f
    add hl, de                                    ; $48a1: $19
    rra                                           ; $48a2: $1f
    db $fd                                        ; $48a3: $fd
    sbc a                                         ; $48a4: $9f
    ld a, [$7baf]                                 ; $48a5: $fa $af $7b
    ld [bc], a                                    ; $48a8: $02
    ld [hl], a                                    ; $48a9: $77
    inc bc                                        ; $48aa: $03
    ld a, a                                       ; $48ab: $7f
    add d                                         ; $48ac: $82
    dec h                                         ; $48ad: $25
    dec a                                         ; $48ae: $3d
    ld [bc], a                                    ; $48af: $02
    jr jr_0db_48c4                                ; $48b0: $18 $12

    nop                                           ; $48b2: $00
    add l                                         ; $48b3: $85
    rra                                           ; $48b4: $1f
    dec e                                         ; $48b5: $1d
    rra                                           ; $48b6: $1f
    dec e                                         ; $48b7: $1d
    ld c, $03                                     ; $48b8: $0e $03
    ld e, $82                                     ; $48ba: $1e $82
    inc c                                         ; $48bc: $0c
    inc e                                         ; $48bd: $1c
    ld [bc], a                                    ; $48be: $02
    jr jr_0db_48d5                                ; $48bf: $18 $14

    nop                                           ; $48c1: $00
    rst $38                                       ; $48c2: $ff
    rlca                                          ; $48c3: $07

jr_0db_48c4:
    ld bc, $07f8                                  ; $48c4: $01 $f8 $07
    di                                            ; $48c7: $f3
    ld [bc], a                                    ; $48c8: $02
    rst $30                                       ; $48c9: $f7
    ei                                            ; $48ca: $fb
    add e                                         ; $48cb: $83
    ld de, $0e00                                  ; $48cc: $11 $00 $0e
    dec e                                         ; $48cf: $1d
    nop                                           ; $48d0: $00
    rst $38                                       ; $48d1: $ff
    dec c                                         ; $48d2: $0d
    inc b                                         ; $48d3: $04
    ld sp, hl                                     ; $48d4: $f9

jr_0db_48d5:
    rlca                                          ; $48d5: $07
    di                                            ; $48d6: $f3
    ld [bc], a                                    ; $48d7: $02
    db $ec                                        ; $48d8: $ec
    ei                                            ; $48d9: $fb
    db $ec                                        ; $48da: $ec
    rst $38                                       ; $48db: $ff
    db $fc                                        ; $48dc: $fc
    ld a, [$fbfc]                                 ; $48dd: $fa $fc $fb
    ld [bc], a                                    ; $48e0: $02
    ld c, $82                                     ; $48e1: $0e $82
    dec de                                        ; $48e3: $1b
    rra                                           ; $48e4: $1f
    ld [bc], a                                    ; $48e5: $02
    ccf                                           ; $48e6: $3f
    add l                                         ; $48e7: $85
    cpl                                           ; $48e8: $2f
    ccf                                           ; $48e9: $3f
    scf                                           ; $48ea: $37
    ccf                                           ; $48eb: $3f
    ld a, a                                       ; $48ec: $7f
    ld [bc], a                                    ; $48ed: $02
    ld a, h                                       ; $48ee: $7c
    sub e                                         ; $48ef: $93
    ld a, a                                       ; $48f0: $7f
    ccf                                           ; $48f1: $3f
    add hl, sp                                    ; $48f2: $39
    rra                                           ; $48f3: $1f
    dec d                                         ; $48f4: $15
    rra                                           ; $48f5: $1f
    jr jr_0db_4977                                ; $48f6: $18 $7f

    ld a, h                                       ; $48f8: $7c
    sub a                                         ; $48f9: $97
    rst $30                                       ; $48fa: $f7
    jp hl                                         ; $48fb: $e9


    ld sp, hl                                     ; $48fc: $f9
    ld l, e                                       ; $48fd: $6b
    ld a, a                                       ; $48fe: $7f
    ld c, l                                       ; $48ff: $4d

Jump_0db_4900:
    ld a, a                                       ; $4900: $7f
    ld h, l                                       ; $4901: $65
    ld a, a                                       ; $4902: $7f
    ld [bc], a                                    ; $4903: $02
    inc b                                         ; $4904: $04
    ld [bc], a                                    ; $4905: $02
    inc c                                         ; $4906: $0c
    add d                                         ; $4907: $82
    ld [bc], a                                    ; $4908: $02
    ld c, $02                                     ; $4909: $0e $02
    rrca                                          ; $490b: $0f
    add h                                         ; $490c: $84
    inc c                                         ; $490d: $0c
    inc b                                         ; $490e: $04
    ld c, $0a                                     ; $490f: $0e $0a
    ld [bc], a                                    ; $4911: $02
    inc c                                         ; $4912: $0c
    adc b                                         ; $4913: $88
    ld c, $06                                     ; $4914: $0e $06
    ld c, $0a                                     ; $4916: $0e $0a
    inc c                                         ; $4918: $0c
    inc b                                         ; $4919: $04
    inc c                                         ; $491a: $0c
    inc b                                         ; $491b: $04
    ld [bc], a                                    ; $491c: $02
    ld [$0002], sp                                ; $491d: $08 $02 $00
    ld [bc], a                                    ; $4920: $02
    ld [$0004], sp                                ; $4921: $08 $04 $00
    adc h                                         ; $4924: $8c
    ld [hl], d                                    ; $4925: $72
    ld a, a                                       ; $4926: $7f
    ld l, [hl]                                    ; $4927: $6e
    ld e, e                                       ; $4928: $5b
    ld a, a                                       ; $4929: $7f
    ld [hl], e                                    ; $492a: $73
    ld a, a                                       ; $492b: $7f
    ld a, h                                       ; $492c: $7c
    cp a                                          ; $492d: $bf
    rst $38                                       ; $492e: $ff
    sbc b                                         ; $492f: $98
    rst $38                                       ; $4930: $ff
    ld [bc], a                                    ; $4931: $02
    ld a, a                                       ; $4932: $7f
    ld [de], a                                    ; $4933: $12
    nop                                           ; $4934: $00
    inc b                                         ; $4935: $04
    ld bc, $0002                                  ; $4936: $01 $02 $00
    ld [bc], a                                    ; $4939: $02
    ld bc, $0002                                  ; $493a: $01 $02 $00
    inc b                                         ; $493d: $04
    ld bc, $0012                                  ; $493e: $01 $12 $00
    rst $38                                       ; $4941: $ff
    rlca                                          ; $4942: $07
    ld bc, $07f8                                  ; $4943: $01 $f8 $07
    di                                            ; $4946: $f3
    ld [bc], a                                    ; $4947: $02
    rst $30                                       ; $4948: $f7
    ld a, [$0483]                                 ; $4949: $fa $83 $04
    nop                                           ; $494c: $00
    inc bc                                        ; $494d: $03
    dec e                                         ; $494e: $1d
    nop                                           ; $494f: $00
    rst $38                                       ; $4950: $ff
    dec c                                         ; $4951: $0d
    inc b                                         ; $4952: $04
    ld sp, hl                                     ; $4953: $f9
    rlca                                          ; $4954: $07
    di                                            ; $4955: $f3
    ld [bc], a                                    ; $4956: $02
    db $ec                                        ; $4957: $ec
    ei                                            ; $4958: $fb
    db $ec                                        ; $4959: $ec
    rst $38                                       ; $495a: $ff
    db $fc                                        ; $495b: $fc
    ld a, [$fdfc]                                 ; $495c: $fa $fc $fd
    ld [bc], a                                    ; $495f: $02
    ld c, $82                                     ; $4960: $0e $82
    dec de                                        ; $4962: $1b
    rra                                           ; $4963: $1f
    ld [bc], a                                    ; $4964: $02
    ccf                                           ; $4965: $3f
    add l                                         ; $4966: $85
    cpl                                           ; $4967: $2f
    ccf                                           ; $4968: $3f
    scf                                           ; $4969: $37
    ccf                                           ; $496a: $3f
    ld a, a                                       ; $496b: $7f
    ld [bc], a                                    ; $496c: $02
    ld a, h                                       ; $496d: $7c
    sub e                                         ; $496e: $93
    ld a, a                                       ; $496f: $7f
    ccf                                           ; $4970: $3f
    add hl, sp                                    ; $4971: $39
    rra                                           ; $4972: $1f
    dec d                                         ; $4973: $15
    rra                                           ; $4974: $1f
    jr jr_0db_49f6                                ; $4975: $18 $7f

jr_0db_4977:
    ld a, h                                       ; $4977: $7c
    sub a                                         ; $4978: $97
    rst $30                                       ; $4979: $f7
    jp hl                                         ; $497a: $e9


    ld sp, hl                                     ; $497b: $f9
    ld l, e                                       ; $497c: $6b
    ld a, a                                       ; $497d: $7f
    ld l, l                                       ; $497e: $6d
    ld a, a                                       ; $497f: $7f
    push bc                                       ; $4980: $c5
    rst $38                                       ; $4981: $ff
    ld [bc], a                                    ; $4982: $02
    inc b                                         ; $4983: $04
    ld [bc], a                                    ; $4984: $02
    inc c                                         ; $4985: $0c
    add d                                         ; $4986: $82
    ld [bc], a                                    ; $4987: $02
    ld c, $02                                     ; $4988: $0e $02
    rrca                                          ; $498a: $0f
    add h                                         ; $498b: $84
    inc c                                         ; $498c: $0c
    inc b                                         ; $498d: $04
    ld c, $0a                                     ; $498e: $0e $0a
    ld [bc], a                                    ; $4990: $02
    inc c                                         ; $4991: $0c
    adc b                                         ; $4992: $88
    ld c, $06                                     ; $4993: $0e $06
    ld c, $0a                                     ; $4995: $0e $0a
    inc c                                         ; $4997: $0c
    inc b                                         ; $4998: $04
    inc c                                         ; $4999: $0c
    inc b                                         ; $499a: $04
    ld [bc], a                                    ; $499b: $02
    ld [$0002], sp                                ; $499c: $08 $02 $00
    ld [bc], a                                    ; $499f: $02
    ld [$0004], sp                                ; $49a0: $08 $04 $00
    add c                                         ; $49a3: $81
    ld [hl], d                                    ; $49a4: $72
    ld [bc], a                                    ; $49a5: $02
    ld a, a                                       ; $49a6: $7f
    add e                                         ; $49a7: $83
    ld a, c                                       ; $49a8: $79
    cp $fb                                        ; $49a9: $fe $fb
    ld [bc], a                                    ; $49ab: $02
    rst $38                                       ; $49ac: $ff
    add h                                         ; $49ad: $84
    cp [hl]                                       ; $49ae: $be
    rst $38                                       ; $49af: $ff
    or e                                          ; $49b0: $b3
    rst $38                                       ; $49b1: $ff
    ld [bc], a                                    ; $49b2: $02
    ld a, a                                       ; $49b3: $7f
    ld [de], a                                    ; $49b4: $12
    nop                                           ; $49b5: $00
    ld [bc], a                                    ; $49b6: $02
    ld b, $82                                     ; $49b7: $06 $82
    rlca                                          ; $49b9: $07
    ld bc, $0602                                  ; $49ba: $01 $02 $06
    add c                                         ; $49bd: $81
    ld bc, $0703                                  ; $49be: $01 $03 $07
    ld d, $00                                     ; $49c1: $16 $00
    rst $38                                       ; $49c3: $ff
    rlca                                          ; $49c4: $07
    ld bc, $07f8                                  ; $49c5: $01 $f8 $07
    di                                            ; $49c8: $f3
    ld [bc], a                                    ; $49c9: $02
    rst $30                                       ; $49ca: $f7
    ld a, [$0483]                                 ; $49cb: $fa $83 $04
    nop                                           ; $49ce: $00
    inc bc                                        ; $49cf: $03
    dec e                                         ; $49d0: $1d
    nop                                           ; $49d1: $00
    rst $38                                       ; $49d2: $ff
    dec c                                         ; $49d3: $0d
    inc b                                         ; $49d4: $04
    ld sp, hl                                     ; $49d5: $f9
    rlca                                          ; $49d6: $07
    di                                            ; $49d7: $f3
    ld [bc], a                                    ; $49d8: $02
    db $ed                                        ; $49d9: $ed
    ei                                            ; $49da: $fb
    db $ed                                        ; $49db: $ed
    rst $38                                       ; $49dc: $ff
    db $fd                                        ; $49dd: $fd
    ld a, [$fcfd]                                 ; $49de: $fa $fd $fc
    ld [bc], a                                    ; $49e1: $02
    rrca                                          ; $49e2: $0f
    add d                                         ; $49e3: $82
    dec de                                        ; $49e4: $1b
    rra                                           ; $49e5: $1f
    ld [bc], a                                    ; $49e6: $02
    ccf                                           ; $49e7: $3f
    add d                                         ; $49e8: $82
    ld h, a                                       ; $49e9: $67
    ld a, a                                       ; $49ea: $7f
    ld [bc], a                                    ; $49eb: $02
    ccf                                           ; $49ec: $3f
    add e                                         ; $49ed: $83
    ld a, a                                       ; $49ee: $7f
    ld a, h                                       ; $49ef: $7c
    inc a                                         ; $49f0: $3c
    ld [bc], a                                    ; $49f1: $02
    ccf                                           ; $49f2: $3f
    sub c                                         ; $49f3: $91
    add hl, sp                                    ; $49f4: $39
    rra                                           ; $49f5: $1f

jr_0db_49f6:
    dec d                                         ; $49f6: $15
    rra                                           ; $49f7: $1f
    jr @+$01                                      ; $49f8: $18 $ff

    db $fc                                        ; $49fa: $fc
    sub a                                         ; $49fb: $97
    rst $30                                       ; $49fc: $f7
    ld l, c                                       ; $49fd: $69
    ld a, c                                       ; $49fe: $79
    ld l, e                                       ; $49ff: $6b
    ld a, a                                       ; $4a00: $7f
    ld l, l                                       ; $4a01: $6d
    ld a, a                                       ; $4a02: $7f
    ld h, l                                       ; $4a03: $65
    ld a, a                                       ; $4a04: $7f
    ld [bc], a                                    ; $4a05: $02
    inc b                                         ; $4a06: $04
    ld [bc], a                                    ; $4a07: $02
    inc c                                         ; $4a08: $0c
    add d                                         ; $4a09: $82
    inc bc                                        ; $4a0a: $03
    rrca                                          ; $4a0b: $0f
    ld [bc], a                                    ; $4a0c: $02
    ld c, $84                                     ; $4a0d: $0e $84
    inc c                                         ; $4a0f: $0c
    inc b                                         ; $4a10: $04
    ld c, $0a                                     ; $4a11: $0e $0a
    ld [bc], a                                    ; $4a13: $02
    inc c                                         ; $4a14: $0c
    adc b                                         ; $4a15: $88
    ld c, $06                                     ; $4a16: $0e $06
    ld c, $0a                                     ; $4a18: $0e $0a
    inc c                                         ; $4a1a: $0c
    inc b                                         ; $4a1b: $04
    inc c                                         ; $4a1c: $0c
    inc b                                         ; $4a1d: $04
    ld [bc], a                                    ; $4a1e: $02
    ld [$0002], sp                                ; $4a1f: $08 $02 $00
    ld [bc], a                                    ; $4a22: $02
    ld [$0004], sp                                ; $4a23: $08 $04 $00
    adc d                                         ; $4a26: $8a
    ld [hl], d                                    ; $4a27: $72
    ld a, a                                       ; $4a28: $7f
    rst $38                                       ; $4a29: $ff
    db $fd                                        ; $4a2a: $fd
    rst $38                                       ; $4a2b: $ff
    ei                                            ; $4a2c: $fb
    cp a                                          ; $4a2d: $bf
    rst $38                                       ; $4a2e: $ff
    ld e, e                                       ; $4a2f: $5b
    ld a, a                                       ; $4a30: $7f
    ld [bc], a                                    ; $4a31: $02
    ld a, $14                                     ; $4a32: $3e $14
    nop                                           ; $4a34: $00
    ld [bc], a                                    ; $4a35: $02
    ld [bc], a                                    ; $4a36: $02
    add d                                         ; $4a37: $82
    inc bc                                        ; $4a38: $03
    ld bc, $0202                                  ; $4a39: $01 $02 $02
    add c                                         ; $4a3c: $81
    ld bc, $0303                                  ; $4a3d: $01 $03 $03
    ld d, $00                                     ; $4a40: $16 $00
    rst $38                                       ; $4a42: $ff
    rlca                                          ; $4a43: $07
    ld bc, $07f8                                  ; $4a44: $01 $f8 $07
    di                                            ; $4a47: $f3
    ld [bc], a                                    ; $4a48: $02
    ld hl, sp-$06                                 ; $4a49: $f8 $fa
    add e                                         ; $4a4b: $83
    inc b                                         ; $4a4c: $04
    nop                                           ; $4a4d: $00
    inc bc                                        ; $4a4e: $03
    dec e                                         ; $4a4f: $1d
    nop                                           ; $4a50: $00
    rst $38                                       ; $4a51: $ff
    dec c                                         ; $4a52: $0d
    inc b                                         ; $4a53: $04
    ld sp, hl                                     ; $4a54: $f9
    rlca                                          ; $4a55: $07
    di                                            ; $4a56: $f3
    ld [bc], a                                    ; $4a57: $02
    db $ed                                        ; $4a58: $ed
    ei                                            ; $4a59: $fb
    db $ed                                        ; $4a5a: $ed
    rst $38                                       ; $4a5b: $ff
    db $fd                                        ; $4a5c: $fd
    ld a, [$fcfd]                                 ; $4a5d: $fa $fd $fc
    ld [bc], a                                    ; $4a60: $02
    ld c, $82                                     ; $4a61: $0e $82
    dec de                                        ; $4a63: $1b
    rra                                           ; $4a64: $1f
    ld [bc], a                                    ; $4a65: $02
    ccf                                           ; $4a66: $3f
    add l                                         ; $4a67: $85
    cpl                                           ; $4a68: $2f
    ccf                                           ; $4a69: $3f
    scf                                           ; $4a6a: $37
    ccf                                           ; $4a6b: $3f
    ld a, a                                       ; $4a6c: $7f
    ld [bc], a                                    ; $4a6d: $02
    ld a, h                                       ; $4a6e: $7c
    sub e                                         ; $4a6f: $93
    ld a, a                                       ; $4a70: $7f
    ccf                                           ; $4a71: $3f
    add hl, sp                                    ; $4a72: $39
    rra                                           ; $4a73: $1f
    dec d                                         ; $4a74: $15
    rra                                           ; $4a75: $1f
    jr jr_0db_4af7                                ; $4a76: $18 $7f

    ld a, h                                       ; $4a78: $7c
    sub a                                         ; $4a79: $97
    rst $30                                       ; $4a7a: $f7
    jp hl                                         ; $4a7b: $e9


    ld sp, hl                                     ; $4a7c: $f9
    ld l, e                                       ; $4a7d: $6b
    ld a, a                                       ; $4a7e: $7f
    ld c, l                                       ; $4a7f: $4d
    ld a, a                                       ; $4a80: $7f
    ld h, l                                       ; $4a81: $65
    ld a, a                                       ; $4a82: $7f
    ld [bc], a                                    ; $4a83: $02
    inc b                                         ; $4a84: $04
    ld [bc], a                                    ; $4a85: $02
    inc c                                         ; $4a86: $0c
    add d                                         ; $4a87: $82
    ld [bc], a                                    ; $4a88: $02
    ld c, $02                                     ; $4a89: $0e $02
    rrca                                          ; $4a8b: $0f
    add h                                         ; $4a8c: $84
    inc c                                         ; $4a8d: $0c
    inc b                                         ; $4a8e: $04
    ld c, $0a                                     ; $4a8f: $0e $0a
    ld [bc], a                                    ; $4a91: $02
    inc c                                         ; $4a92: $0c
    adc b                                         ; $4a93: $88
    ld c, $06                                     ; $4a94: $0e $06
    ld c, $0a                                     ; $4a96: $0e $0a
    inc c                                         ; $4a98: $0c
    inc b                                         ; $4a99: $04
    inc c                                         ; $4a9a: $0c
    inc b                                         ; $4a9b: $04
    ld [bc], a                                    ; $4a9c: $02
    ld [$0002], sp                                ; $4a9d: $08 $02 $00
    ld [bc], a                                    ; $4aa0: $02
    ld [$0004], sp                                ; $4aa1: $08 $04 $00
    add c                                         ; $4aa4: $81
    ld [hl], d                                    ; $4aa5: $72
    ld [bc], a                                    ; $4aa6: $02
    ld a, a                                       ; $4aa7: $7f
    add a                                         ; $4aa8: $87
    ld a, e                                       ; $4aa9: $7b
    rst $38                                       ; $4aaa: $ff
    ld a, [c]                                     ; $4aab: $f2
    sbc c                                         ; $4aac: $99
    rst $38                                       ; $4aad: $ff
    ld a, [hl]                                    ; $4aae: $7e
    ld a, a                                       ; $4aaf: $7f
    ld [bc], a                                    ; $4ab0: $02
    inc bc                                        ; $4ab1: $03
    inc d                                         ; $4ab2: $14
    nop                                           ; $4ab3: $00
    inc b                                         ; $4ab4: $04
    ld [bc], a                                    ; $4ab5: $02
    add d                                         ; $4ab6: $82
    inc bc                                        ; $4ab7: $03
    ld bc, $0202                                  ; $4ab8: $01 $02 $02
    ld [bc], a                                    ; $4abb: $02
    inc bc                                        ; $4abc: $03
    ld d, $00                                     ; $4abd: $16 $00
    rst $38                                       ; $4abf: $ff
    rlca                                          ; $4ac0: $07
    ld bc, $07f8                                  ; $4ac1: $01 $f8 $07
    di                                            ; $4ac4: $f3
    ld [bc], a                                    ; $4ac5: $02
    ld hl, sp-$06                                 ; $4ac6: $f8 $fa
    add e                                         ; $4ac8: $83
    inc b                                         ; $4ac9: $04
    nop                                           ; $4aca: $00
    inc bc                                        ; $4acb: $03
    dec e                                         ; $4acc: $1d
    nop                                           ; $4acd: $00
    rst $38                                       ; $4ace: $ff
    dec c                                         ; $4acf: $0d
    inc b                                         ; $4ad0: $04
    ld sp, hl                                     ; $4ad1: $f9
    rlca                                          ; $4ad2: $07
    di                                            ; $4ad3: $f3
    ld [bc], a                                    ; $4ad4: $02
    db $ec                                        ; $4ad5: $ec
    ei                                            ; $4ad6: $fb
    db $ec                                        ; $4ad7: $ec
    rst $38                                       ; $4ad8: $ff
    db $fc                                        ; $4ad9: $fc
    ld a, [$fcfc]                                 ; $4ada: $fa $fc $fc
    ld [bc], a                                    ; $4add: $02
    ld c, $82                                     ; $4ade: $0e $82
    dec de                                        ; $4ae0: $1b
    rra                                           ; $4ae1: $1f
    ld [bc], a                                    ; $4ae2: $02
    ccf                                           ; $4ae3: $3f
    add l                                         ; $4ae4: $85
    cpl                                           ; $4ae5: $2f
    ccf                                           ; $4ae6: $3f
    scf                                           ; $4ae7: $37
    ccf                                           ; $4ae8: $3f
    ld a, a                                       ; $4ae9: $7f
    ld [bc], a                                    ; $4aea: $02
    ld a, h                                       ; $4aeb: $7c
    sub e                                         ; $4aec: $93
    ld a, a                                       ; $4aed: $7f
    ccf                                           ; $4aee: $3f
    add hl, sp                                    ; $4aef: $39
    rra                                           ; $4af0: $1f
    dec d                                         ; $4af1: $15
    rra                                           ; $4af2: $1f
    jr jr_0db_4b74                                ; $4af3: $18 $7f

    ld a, h                                       ; $4af5: $7c
    sub a                                         ; $4af6: $97

jr_0db_4af7:
    rst $30                                       ; $4af7: $f7
    jp hl                                         ; $4af8: $e9


    ld sp, hl                                     ; $4af9: $f9
    ld l, e                                       ; $4afa: $6b
    ld a, a                                       ; $4afb: $7f
    ld c, l                                       ; $4afc: $4d
    ld a, a                                       ; $4afd: $7f
    ld h, l                                       ; $4afe: $65
    ld a, a                                       ; $4aff: $7f
    ld [bc], a                                    ; $4b00: $02
    inc b                                         ; $4b01: $04
    ld [bc], a                                    ; $4b02: $02
    inc c                                         ; $4b03: $0c
    add d                                         ; $4b04: $82
    ld [bc], a                                    ; $4b05: $02
    ld c, $02                                     ; $4b06: $0e $02
    rrca                                          ; $4b08: $0f
    add h                                         ; $4b09: $84
    inc c                                         ; $4b0a: $0c
    inc b                                         ; $4b0b: $04
    ld c, $0a                                     ; $4b0c: $0e $0a
    ld [bc], a                                    ; $4b0e: $02
    inc c                                         ; $4b0f: $0c
    adc b                                         ; $4b10: $88
    ld c, $06                                     ; $4b11: $0e $06
    ld c, $0a                                     ; $4b13: $0e $0a
    inc c                                         ; $4b15: $0c
    inc b                                         ; $4b16: $04
    inc c                                         ; $4b17: $0c
    inc b                                         ; $4b18: $04
    ld [bc], a                                    ; $4b19: $02
    ld [$0002], sp                                ; $4b1a: $08 $02 $00
    ld [bc], a                                    ; $4b1d: $02
    ld [$0004], sp                                ; $4b1e: $08 $04 $00
    adc h                                         ; $4b21: $8c
    ld [hl], d                                    ; $4b22: $72
    ld a, a                                       ; $4b23: $7f
    ld a, [hl]                                    ; $4b24: $7e
    ld a, e                                       ; $4b25: $7b
    ld a, [hl]                                    ; $4b26: $7e
    ld [hl], e                                    ; $4b27: $73
    ld a, a                                       ; $4b28: $7f
    ld a, h                                       ; $4b29: $7c
    cp l                                          ; $4b2a: $bd
    rst $38                                       ; $4b2b: $ff
    adc $ff                                       ; $4b2c: $ce $ff
    ld [bc], a                                    ; $4b2e: $02
    ccf                                           ; $4b2f: $3f
    ld [de], a                                    ; $4b30: $12
    nop                                           ; $4b31: $00
    ld [bc], a                                    ; $4b32: $02
    ld [bc], a                                    ; $4b33: $02
    ld b, $03                                     ; $4b34: $06 $03
    ld [bc], a                                    ; $4b36: $02
    ld [bc], a                                    ; $4b37: $02
    add c                                         ; $4b38: $81
    ld bc, $0303                                  ; $4b39: $01 $03 $03
    ld [de], a                                    ; $4b3c: $12
    nop                                           ; $4b3d: $00
    rst $38                                       ; $4b3e: $ff
    rlca                                          ; $4b3f: $07
    ld bc, $07f8                                  ; $4b40: $01 $f8 $07
    di                                            ; $4b43: $f3
    ld [bc], a                                    ; $4b44: $02
    rst $30                                       ; $4b45: $f7
    ld a, [$0483]                                 ; $4b46: $fa $83 $04
    nop                                           ; $4b49: $00
    inc bc                                        ; $4b4a: $03
    dec e                                         ; $4b4b: $1d
    nop                                           ; $4b4c: $00
    rst $38                                       ; $4b4d: $ff
    dec c                                         ; $4b4e: $0d
    inc b                                         ; $4b4f: $04
    ld sp, hl                                     ; $4b50: $f9
    rlca                                          ; $4b51: $07
    di                                            ; $4b52: $f3
    ld [bc], a                                    ; $4b53: $02
    db $ec                                        ; $4b54: $ec
    ei                                            ; $4b55: $fb
    db $ec                                        ; $4b56: $ec
    rst $38                                       ; $4b57: $ff
    db $fc                                        ; $4b58: $fc
    ld a, [$fefc]                                 ; $4b59: $fa $fc $fe
    ld [bc], a                                    ; $4b5c: $02
    ld c, $82                                     ; $4b5d: $0e $82
    dec de                                        ; $4b5f: $1b
    rra                                           ; $4b60: $1f
    ld [bc], a                                    ; $4b61: $02
    ccf                                           ; $4b62: $3f
    add l                                         ; $4b63: $85
    cpl                                           ; $4b64: $2f
    ccf                                           ; $4b65: $3f
    scf                                           ; $4b66: $37
    ccf                                           ; $4b67: $3f
    ld a, a                                       ; $4b68: $7f
    ld [bc], a                                    ; $4b69: $02
    ld a, h                                       ; $4b6a: $7c
    sub e                                         ; $4b6b: $93
    ld a, a                                       ; $4b6c: $7f
    ccf                                           ; $4b6d: $3f
    add hl, sp                                    ; $4b6e: $39
    rra                                           ; $4b6f: $1f
    dec d                                         ; $4b70: $15
    rra                                           ; $4b71: $1f
    jr jr_0db_4bf3                                ; $4b72: $18 $7f

jr_0db_4b74:
    ld a, h                                       ; $4b74: $7c
    sub a                                         ; $4b75: $97
    rst $30                                       ; $4b76: $f7
    jp hl                                         ; $4b77: $e9


    ld sp, hl                                     ; $4b78: $f9
    ld l, e                                       ; $4b79: $6b
    ld a, a                                       ; $4b7a: $7f
    ld c, l                                       ; $4b7b: $4d
    ld a, a                                       ; $4b7c: $7f
    ld c, l                                       ; $4b7d: $4d
    ld a, a                                       ; $4b7e: $7f
    ld [bc], a                                    ; $4b7f: $02
    inc b                                         ; $4b80: $04
    ld [bc], a                                    ; $4b81: $02
    inc c                                         ; $4b82: $0c
    add d                                         ; $4b83: $82
    ld [bc], a                                    ; $4b84: $02
    ld c, $02                                     ; $4b85: $0e $02
    rrca                                          ; $4b87: $0f
    add h                                         ; $4b88: $84
    inc c                                         ; $4b89: $0c
    inc b                                         ; $4b8a: $04
    ld c, $0a                                     ; $4b8b: $0e $0a
    ld [bc], a                                    ; $4b8d: $02
    inc c                                         ; $4b8e: $0c
    adc b                                         ; $4b8f: $88
    ld c, $06                                     ; $4b90: $0e $06
    ld c, $0a                                     ; $4b92: $0e $0a
    inc c                                         ; $4b94: $0c
    inc b                                         ; $4b95: $04
    inc c                                         ; $4b96: $0c
    inc b                                         ; $4b97: $04
    ld [bc], a                                    ; $4b98: $02
    ld [$0002], sp                                ; $4b99: $08 $02 $00
    ld [bc], a                                    ; $4b9c: $02
    ld [$0004], sp                                ; $4b9d: $08 $04 $00
    adc h                                         ; $4ba0: $8c
    ld h, [hl]                                    ; $4ba1: $66
    ld a, a                                       ; $4ba2: $7f
    ld a, [hl]                                    ; $4ba3: $7e
    ld [hl], a                                    ; $4ba4: $77
    ld a, l                                       ; $4ba5: $7d
    ld h, a                                       ; $4ba6: $67
    rst $38                                       ; $4ba7: $ff
    ei                                            ; $4ba8: $fb
    cp e                                          ; $4ba9: $bb
    db $fd                                        ; $4baa: $fd
    adc [hl]                                      ; $4bab: $8e
    rst $38                                       ; $4bac: $ff
    ld [bc], a                                    ; $4bad: $02
    ld a, e                                       ; $4bae: $7b
    ld [de], a                                    ; $4baf: $12
    nop                                           ; $4bb0: $00
    inc b                                         ; $4bb1: $04
    inc c                                         ; $4bb2: $0c
    ld [bc], a                                    ; $4bb3: $02
    ld [$0e02], sp                                ; $4bb4: $08 $02 $0e
    add h                                         ; $4bb7: $84
    add hl, bc                                    ; $4bb8: $09
    rrca                                          ; $4bb9: $0f
    rlca                                          ; $4bba: $07
    rrca                                          ; $4bbb: $0f
    ld [bc], a                                    ; $4bbc: $02
    ld [$0012], sp                                ; $4bbd: $08 $12 $00
    rst $38                                       ; $4bc0: $ff
    rlca                                          ; $4bc1: $07
    ld bc, $07f8                                  ; $4bc2: $01 $f8 $07
    di                                            ; $4bc5: $f3
    ld [bc], a                                    ; $4bc6: $02
    rst $30                                       ; $4bc7: $f7
    ld a, [$0483]                                 ; $4bc8: $fa $83 $04
    nop                                           ; $4bcb: $00
    inc bc                                        ; $4bcc: $03
    dec e                                         ; $4bcd: $1d
    nop                                           ; $4bce: $00
    rst $38                                       ; $4bcf: $ff
    dec c                                         ; $4bd0: $0d
    inc b                                         ; $4bd1: $04
    ld sp, hl                                     ; $4bd2: $f9
    rlca                                          ; $4bd3: $07
    di                                            ; $4bd4: $f3
    ld [bc], a                                    ; $4bd5: $02
    db $ed                                        ; $4bd6: $ed
    ei                                            ; $4bd7: $fb
    db $ed                                        ; $4bd8: $ed
    rst $38                                       ; $4bd9: $ff
    db $fd                                        ; $4bda: $fd
    ld a, [$fdfd]                                 ; $4bdb: $fa $fd $fd
    ld [bc], a                                    ; $4bde: $02
    rrca                                          ; $4bdf: $0f
    add d                                         ; $4be0: $82
    dec de                                        ; $4be1: $1b
    rra                                           ; $4be2: $1f
    ld [bc], a                                    ; $4be3: $02
    ccf                                           ; $4be4: $3f
    add d                                         ; $4be5: $82
    ld h, a                                       ; $4be6: $67
    ld a, a                                       ; $4be7: $7f
    ld [bc], a                                    ; $4be8: $02
    ccf                                           ; $4be9: $3f
    add e                                         ; $4bea: $83
    ld a, a                                       ; $4beb: $7f
    ld a, h                                       ; $4bec: $7c
    inc a                                         ; $4bed: $3c
    ld [bc], a                                    ; $4bee: $02
    ccf                                           ; $4bef: $3f
    sub c                                         ; $4bf0: $91
    add hl, sp                                    ; $4bf1: $39
    rra                                           ; $4bf2: $1f

jr_0db_4bf3:
    dec d                                         ; $4bf3: $15
    rra                                           ; $4bf4: $1f
    jr @+$01                                      ; $4bf5: $18 $ff

    db $fc                                        ; $4bf7: $fc
    sub a                                         ; $4bf8: $97
    rst $30                                       ; $4bf9: $f7
    ld l, c                                       ; $4bfa: $69
    ld a, c                                       ; $4bfb: $79
    ld l, e                                       ; $4bfc: $6b
    ld a, a                                       ; $4bfd: $7f
    ld c, l                                       ; $4bfe: $4d
    ld a, a                                       ; $4bff: $7f
    ld c, l                                       ; $4c00: $4d
    ld a, a                                       ; $4c01: $7f
    ld [bc], a                                    ; $4c02: $02
    inc b                                         ; $4c03: $04
    ld [bc], a                                    ; $4c04: $02
    inc c                                         ; $4c05: $0c
    add d                                         ; $4c06: $82
    inc bc                                        ; $4c07: $03
    rrca                                          ; $4c08: $0f
    ld [bc], a                                    ; $4c09: $02
    ld c, $84                                     ; $4c0a: $0e $84
    inc c                                         ; $4c0c: $0c
    inc b                                         ; $4c0d: $04
    ld c, $0a                                     ; $4c0e: $0e $0a
    ld [bc], a                                    ; $4c10: $02
    inc c                                         ; $4c11: $0c
    adc b                                         ; $4c12: $88
    ld c, $06                                     ; $4c13: $0e $06
    ld c, $0a                                     ; $4c15: $0e $0a
    inc c                                         ; $4c17: $0c
    inc b                                         ; $4c18: $04
    inc c                                         ; $4c19: $0c
    inc b                                         ; $4c1a: $04
    ld [bc], a                                    ; $4c1b: $02
    ld [$0002], sp                                ; $4c1c: $08 $02 $00
    ld [bc], a                                    ; $4c1f: $02
    ld [$0004], sp                                ; $4c20: $08 $04 $00
    add c                                         ; $4c23: $81
    ld h, [hl]                                    ; $4c24: $66
    inc bc                                        ; $4c25: $03
    ld a, a                                       ; $4c26: $7f
    add [hl]                                      ; $4c27: $86
    ld a, l                                       ; $4c28: $7d
    ld h, a                                       ; $4c29: $67
    cp a                                          ; $4c2a: $bf
    ei                                            ; $4c2b: $fb
    sbc [hl]                                      ; $4c2c: $9e
    db $fd                                        ; $4c2d: $fd
    ld [bc], a                                    ; $4c2e: $02
    ld a, a                                       ; $4c2f: $7f
    inc d                                         ; $4c30: $14
    nop                                           ; $4c31: $00
    inc b                                         ; $4c32: $04
    ld b, $02                                     ; $4c33: $06 $02
    inc b                                         ; $4c35: $04
    ld [bc], a                                    ; $4c36: $02
    ld b, $81                                     ; $4c37: $06 $81
    ld bc, $0703                                  ; $4c39: $01 $03 $07
    inc d                                         ; $4c3c: $14
    nop                                           ; $4c3d: $00
    rst $38                                       ; $4c3e: $ff
    rlca                                          ; $4c3f: $07
    ld bc, $07f8                                  ; $4c40: $01 $f8 $07
    di                                            ; $4c43: $f3
    ld [bc], a                                    ; $4c44: $02
    ld hl, sp-$06                                 ; $4c45: $f8 $fa
    add e                                         ; $4c47: $83
    inc b                                         ; $4c48: $04
    nop                                           ; $4c49: $00
    inc bc                                        ; $4c4a: $03
    dec e                                         ; $4c4b: $1d
    nop                                           ; $4c4c: $00
    rst $38                                       ; $4c4d: $ff
    dec c                                         ; $4c4e: $0d
    inc b                                         ; $4c4f: $04
    ld sp, hl                                     ; $4c50: $f9
    rlca                                          ; $4c51: $07
    di                                            ; $4c52: $f3
    ld [bc], a                                    ; $4c53: $02
    db $ed                                        ; $4c54: $ed
    ei                                            ; $4c55: $fb
    db $ed                                        ; $4c56: $ed
    rst $38                                       ; $4c57: $ff
    db $fd                                        ; $4c58: $fd
    ld a, [$fcfd]                                 ; $4c59: $fa $fd $fc
    ld [bc], a                                    ; $4c5c: $02
    ld c, $82                                     ; $4c5d: $0e $82
    dec de                                        ; $4c5f: $1b
    rra                                           ; $4c60: $1f
    ld [bc], a                                    ; $4c61: $02
    ccf                                           ; $4c62: $3f
    add l                                         ; $4c63: $85
    cpl                                           ; $4c64: $2f
    ccf                                           ; $4c65: $3f
    scf                                           ; $4c66: $37
    ccf                                           ; $4c67: $3f
    ld a, a                                       ; $4c68: $7f
    ld [bc], a                                    ; $4c69: $02
    ld a, h                                       ; $4c6a: $7c
    sub e                                         ; $4c6b: $93
    ld a, a                                       ; $4c6c: $7f
    ccf                                           ; $4c6d: $3f
    add hl, sp                                    ; $4c6e: $39
    rra                                           ; $4c6f: $1f
    dec d                                         ; $4c70: $15
    rra                                           ; $4c71: $1f
    jr jr_0db_4cf3                                ; $4c72: $18 $7f

    ld a, h                                       ; $4c74: $7c
    sub a                                         ; $4c75: $97
    rst $30                                       ; $4c76: $f7
    jp hl                                         ; $4c77: $e9


    ld sp, hl                                     ; $4c78: $f9
    ld l, e                                       ; $4c79: $6b
    ld a, a                                       ; $4c7a: $7f
    ld c, l                                       ; $4c7b: $4d
    ld a, a                                       ; $4c7c: $7f
    ld h, l                                       ; $4c7d: $65
    ld a, a                                       ; $4c7e: $7f
    ld [bc], a                                    ; $4c7f: $02
    inc b                                         ; $4c80: $04
    ld [bc], a                                    ; $4c81: $02
    inc c                                         ; $4c82: $0c
    add d                                         ; $4c83: $82
    ld [bc], a                                    ; $4c84: $02
    ld c, $02                                     ; $4c85: $0e $02
    rrca                                          ; $4c87: $0f
    add h                                         ; $4c88: $84
    inc c                                         ; $4c89: $0c
    inc b                                         ; $4c8a: $04
    ld c, $0a                                     ; $4c8b: $0e $0a
    ld [bc], a                                    ; $4c8d: $02
    inc c                                         ; $4c8e: $0c
    adc b                                         ; $4c8f: $88
    ld c, $06                                     ; $4c90: $0e $06
    ld c, $0a                                     ; $4c92: $0e $0a
    inc c                                         ; $4c94: $0c
    inc b                                         ; $4c95: $04
    inc c                                         ; $4c96: $0c
    inc b                                         ; $4c97: $04
    ld [bc], a                                    ; $4c98: $02
    ld [$0002], sp                                ; $4c99: $08 $02 $00
    ld [bc], a                                    ; $4c9c: $02
    ld [$0004], sp                                ; $4c9d: $08 $04 $00
    adc d                                         ; $4ca0: $8a
    ld [hl], d                                    ; $4ca1: $72
    ld a, a                                       ; $4ca2: $7f
    ld a, [hl]                                    ; $4ca3: $7e
    ld [hl], a                                    ; $4ca4: $77
    ld a, a                                       ; $4ca5: $7f
    ld [hl], e                                    ; $4ca6: $73
    cp a                                          ; $4ca7: $bf
    db $fc                                        ; $4ca8: $fc
    sbc h                                         ; $4ca9: $9c
    rst $38                                       ; $4caa: $ff
    ld [bc], a                                    ; $4cab: $02
    ld a, a                                       ; $4cac: $7f
    inc d                                         ; $4cad: $14
    nop                                           ; $4cae: $00
    ld [$8102], sp                                ; $4caf: $08 $02 $81
    ld bc, $0303                                  ; $4cb2: $01 $03 $03
    inc d                                         ; $4cb5: $14
    nop                                           ; $4cb6: $00
    rst $38                                       ; $4cb7: $ff
    rlca                                          ; $4cb8: $07
    ld bc, $07f8                                  ; $4cb9: $01 $f8 $07
    di                                            ; $4cbc: $f3
    ld [bc], a                                    ; $4cbd: $02
    ld hl, sp-$06                                 ; $4cbe: $f8 $fa
    add e                                         ; $4cc0: $83
    inc b                                         ; $4cc1: $04
    nop                                           ; $4cc2: $00
    inc bc                                        ; $4cc3: $03
    dec e                                         ; $4cc4: $1d
    nop                                           ; $4cc5: $00
    rst $38                                       ; $4cc6: $ff
    dec c                                         ; $4cc7: $0d
    inc b                                         ; $4cc8: $04
    ld sp, hl                                     ; $4cc9: $f9
    rlca                                          ; $4cca: $07
    di                                            ; $4ccb: $f3
    ld [bc], a                                    ; $4ccc: $02
    db $ec                                        ; $4ccd: $ec
    ei                                            ; $4cce: $fb
    db $ec                                        ; $4ccf: $ec
    rst $38                                       ; $4cd0: $ff
    db $fc                                        ; $4cd1: $fc
    ld a, [$fdfc]                                 ; $4cd2: $fa $fc $fd
    ld [bc], a                                    ; $4cd5: $02
    ld c, $82                                     ; $4cd6: $0e $82
    dec de                                        ; $4cd8: $1b
    rra                                           ; $4cd9: $1f
    ld [bc], a                                    ; $4cda: $02
    ccf                                           ; $4cdb: $3f
    add l                                         ; $4cdc: $85
    cpl                                           ; $4cdd: $2f
    ccf                                           ; $4cde: $3f
    scf                                           ; $4cdf: $37
    ccf                                           ; $4ce0: $3f
    ld a, a                                       ; $4ce1: $7f
    ld [bc], a                                    ; $4ce2: $02
    ld a, h                                       ; $4ce3: $7c
    sub e                                         ; $4ce4: $93
    ld a, a                                       ; $4ce5: $7f
    ccf                                           ; $4ce6: $3f
    add hl, sp                                    ; $4ce7: $39
    rra                                           ; $4ce8: $1f
    dec d                                         ; $4ce9: $15
    rra                                           ; $4cea: $1f
    jr jr_0db_4d6c                                ; $4ceb: $18 $7f

    ld a, h                                       ; $4ced: $7c
    sub a                                         ; $4cee: $97
    rst $30                                       ; $4cef: $f7
    jp hl                                         ; $4cf0: $e9


    ld sp, hl                                     ; $4cf1: $f9
    ld l, e                                       ; $4cf2: $6b

jr_0db_4cf3:
    ld a, a                                       ; $4cf3: $7f
    ld c, l                                       ; $4cf4: $4d
    ld a, a                                       ; $4cf5: $7f
    push hl                                       ; $4cf6: $e5
    rst $38                                       ; $4cf7: $ff
    ld [bc], a                                    ; $4cf8: $02
    inc b                                         ; $4cf9: $04
    ld [bc], a                                    ; $4cfa: $02
    inc c                                         ; $4cfb: $0c
    add d                                         ; $4cfc: $82
    ld [bc], a                                    ; $4cfd: $02
    ld c, $02                                     ; $4cfe: $0e $02
    rrca                                          ; $4d00: $0f
    add h                                         ; $4d01: $84
    inc c                                         ; $4d02: $0c
    inc b                                         ; $4d03: $04
    ld c, $0a                                     ; $4d04: $0e $0a
    ld [bc], a                                    ; $4d06: $02
    inc c                                         ; $4d07: $0c
    adc b                                         ; $4d08: $88
    ld c, $06                                     ; $4d09: $0e $06
    ld c, $0a                                     ; $4d0b: $0e $0a
    inc c                                         ; $4d0d: $0c
    inc b                                         ; $4d0e: $04
    inc c                                         ; $4d0f: $0c
    inc b                                         ; $4d10: $04
    ld [bc], a                                    ; $4d11: $02
    ld [$0002], sp                                ; $4d12: $08 $02 $00
    ld [bc], a                                    ; $4d15: $02
    ld [$0004], sp                                ; $4d16: $08 $04 $00
    add [hl]                                      ; $4d19: $86
    ld [hl], d                                    ; $4d1a: $72
    ld a, a                                       ; $4d1b: $7f
    ld a, [hl]                                    ; $4d1c: $7e
    ld a, e                                       ; $4d1d: $7b
    ld a, a                                       ; $4d1e: $7f
    ld [hl], d                                    ; $4d1f: $72
    ld [bc], a                                    ; $4d20: $02
    rst $38                                       ; $4d21: $ff
    add h                                         ; $4d22: $84
    cp a                                          ; $4d23: $bf
    rst $38                                       ; $4d24: $ff
    or c                                          ; $4d25: $b1
    rst $38                                       ; $4d26: $ff
    ld [bc], a                                    ; $4d27: $02
    ld a, a                                       ; $4d28: $7f
    ld [de], a                                    ; $4d29: $12
    nop                                           ; $4d2a: $00
    dec b                                         ; $4d2b: $05
    ld b, $81                                     ; $4d2c: $06 $81
    ld [bc], a                                    ; $4d2e: $02
    ld [bc], a                                    ; $4d2f: $02
    rlca                                          ; $4d30: $07
    ld [bc], a                                    ; $4d31: $02
    ld b, $02                                     ; $4d32: $06 $02
    inc b                                         ; $4d34: $04
    inc d                                         ; $4d35: $14
    nop                                           ; $4d36: $00
    rst $38                                       ; $4d37: $ff
    rlca                                          ; $4d38: $07
    ld bc, $07f8                                  ; $4d39: $01 $f8 $07
    di                                            ; $4d3c: $f3
    ld [bc], a                                    ; $4d3d: $02
    rst $30                                       ; $4d3e: $f7
    ld a, [$0483]                                 ; $4d3f: $fa $83 $04
    nop                                           ; $4d42: $00
    inc bc                                        ; $4d43: $03
    dec e                                         ; $4d44: $1d
    nop                                           ; $4d45: $00
    rst $38                                       ; $4d46: $ff
    dec c                                         ; $4d47: $0d
    inc b                                         ; $4d48: $04
    ld sp, hl                                     ; $4d49: $f9
    rlca                                          ; $4d4a: $07
    di                                            ; $4d4b: $f3
    ld [bc], a                                    ; $4d4c: $02
    db $eb                                        ; $4d4d: $eb
    ld a, [$00ec]                                 ; $4d4e: $fa $ec $00
    ei                                            ; $4d51: $fb
    ld a, [$fffb]                                 ; $4d52: $fa $fb $ff
    rst $08                                       ; $4d55: $cf
    cpl                                           ; $4d56: $2f
    nop                                           ; $4d57: $00
    ld [hl-], a                                   ; $4d58: $32
    nop                                           ; $4d59: $00
    ld h, b                                       ; $4d5a: $60
    nop                                           ; $4d5b: $00
    ld h, b                                       ; $4d5c: $60
    nop                                           ; $4d5d: $00
    ld b, l                                       ; $4d5e: $45
    nop                                           ; $4d5f: $00
    ld [hl+], a                                   ; $4d60: $22
    nop                                           ; $4d61: $00
    ld b, b                                       ; $4d62: $40
    nop                                           ; $4d63: $00
    ld h, b                                       ; $4d64: $60
    nop                                           ; $4d65: $00
    jr nz, jr_0db_4d68                            ; $4d66: $20 $00

jr_0db_4d68:
    jr jr_0db_4d6a                                ; $4d68: $18 $00

jr_0db_4d6a:
    scf                                           ; $4d6a: $37
    nop                                           ; $4d6b: $00

jr_0db_4d6c:
    ld c, b                                       ; $4d6c: $48
    nop                                           ; $4d6d: $00
    ld h, a                                       ; $4d6e: $67
    nop                                           ; $4d6f: $00
    ld h, e                                       ; $4d70: $63
    nop                                           ; $4d71: $00
    ldh [rP1], a                                  ; $4d72: $e0 $00
    ldh [rP1], a                                  ; $4d74: $e0 $00
    jr c, jr_0db_4d78                             ; $4d76: $38 $00

jr_0db_4d78:
    inc b                                         ; $4d78: $04
    nop                                           ; $4d79: $00
    jr z, jr_0db_4d7c                             ; $4d7a: $28 $00

jr_0db_4d7c:
    inc d                                         ; $4d7c: $14
    nop                                           ; $4d7d: $00
    ld [$1400], sp                                ; $4d7e: $08 $00 $14
    nop                                           ; $4d81: $00
    inc c                                         ; $4d82: $0c
    nop                                           ; $4d83: $00
    ld [$3000], sp                                ; $4d84: $08 $00 $30
    nop                                           ; $4d87: $00
    jr jr_0db_4d8a                                ; $4d88: $18 $00

jr_0db_4d8a:
    inc l                                         ; $4d8a: $2c
    nop                                           ; $4d8b: $00
    inc l                                         ; $4d8c: $2c
    nop                                           ; $4d8d: $00
    inc c                                         ; $4d8e: $0c
    nop                                           ; $4d8f: $00
    ld c, $00                                     ; $4d90: $0e $00
    ld c, $00                                     ; $4d92: $0e $00
    inc bc                                        ; $4d94: $03
    nop                                           ; $4d95: $00
    add b                                         ; $4d96: $80
    nop                                           ; $4d97: $00
    ret nz                                        ; $4d98: $c0

    nop                                           ; $4d99: $00
    ret nz                                        ; $4d9a: $c0

    nop                                           ; $4d9b: $00
    jr nz, jr_0db_4d9e                            ; $4d9c: $20 $00

jr_0db_4d9e:
    ld b, b                                       ; $4d9e: $40
    nop                                           ; $4d9f: $00
    ld b, b                                       ; $4da0: $40
    nop                                           ; $4da1: $00
    daa                                           ; $4da2: $27
    nop                                           ; $4da3: $00
    rra                                           ; $4da4: $1f
    inc de                                        ; $4da5: $13
    nop                                           ; $4da6: $00
    adc l                                         ; $4da7: $8d
    inc bc                                        ; $4da8: $03
    nop                                           ; $4da9: $00
    dec bc                                        ; $4daa: $0b
    nop                                           ; $4dab: $00
    inc c                                         ; $4dac: $0c
    nop                                           ; $4dad: $00
    ld b, $00                                     ; $4dae: $06 $00
    ld [de], a                                    ; $4db0: $12
    nop                                           ; $4db1: $00
    inc b                                         ; $4db2: $04
    nop                                           ; $4db3: $00
    jr jr_0db_4dc7                                ; $4db4: $18 $11

    nop                                           ; $4db6: $00
    rst $38                                       ; $4db7: $ff
    dec c                                         ; $4db8: $0d
    inc b                                         ; $4db9: $04
    ld sp, hl                                     ; $4dba: $f9
    rlca                                          ; $4dbb: $07
    di                                            ; $4dbc: $f3
    ld [bc], a                                    ; $4dbd: $02
    db $eb                                        ; $4dbe: $eb
    ld a, [$ffeb]                                 ; $4dbf: $fa $eb $ff
    ei                                            ; $4dc2: $fb
    ld a, [$fffb]                                 ; $4dc3: $fa $fb $ff
    rst $08                                       ; $4dc6: $cf

jr_0db_4dc7:
    rla                                           ; $4dc7: $17
    nop                                           ; $4dc8: $00
    add hl, hl                                    ; $4dc9: $29
    nop                                           ; $4dca: $00
    ld h, b                                       ; $4dcb: $60
    nop                                           ; $4dcc: $00
    ld b, c                                       ; $4dcd: $41
    nop                                           ; $4dce: $00
    ld c, d                                       ; $4dcf: $4a
    nop                                           ; $4dd0: $00
    inc h                                         ; $4dd1: $24
    nop                                           ; $4dd2: $00
    ld b, b                                       ; $4dd3: $40
    nop                                           ; $4dd4: $00
    ld h, b                                       ; $4dd5: $60
    nop                                           ; $4dd6: $00
    jr nz, jr_0db_4dd9                            ; $4dd7: $20 $00

jr_0db_4dd9:
    stop                                          ; $4dd9: $10 $00
    scf                                           ; $4ddb: $37
    nop                                           ; $4ddc: $00
    ld c, b                                       ; $4ddd: $48
    nop                                           ; $4dde: $00
    ld l, a                                       ; $4ddf: $6f
    nop                                           ; $4de0: $00
    ld h, [hl]                                    ; $4de1: $66
    nop                                           ; $4de2: $00
    ld h, b                                       ; $4de3: $60
    nop                                           ; $4de4: $00
    ldh [rP1], a                                  ; $4de5: $e0 $00
    stop                                          ; $4de7: $10 $00
    ld [$0400], sp                                ; $4de9: $08 $00 $04
    nop                                           ; $4dec: $00
    ld [bc], a                                    ; $4ded: $02
    nop                                           ; $4dee: $00
    ld a, [de]                                    ; $4def: $1a
    nop                                           ; $4df0: $00
    inc b                                         ; $4df1: $04
    nop                                           ; $4df2: $00
    ld [bc], a                                    ; $4df3: $02
    nop                                           ; $4df4: $00
    ld d, $00                                     ; $4df5: $16 $00
    inc c                                         ; $4df7: $0c
    nop                                           ; $4df8: $00
    jr jr_0db_4dfb                                ; $4df9: $18 $00

jr_0db_4dfb:
    inc c                                         ; $4dfb: $0c
    nop                                           ; $4dfc: $00
    ld d, $00                                     ; $4dfd: $16 $00
    dec b                                         ; $4dff: $05
    nop                                           ; $4e00: $00
    rlca                                          ; $4e01: $07
    nop                                           ; $4e02: $00
    inc bc                                        ; $4e03: $03
    nop                                           ; $4e04: $00
    inc bc                                        ; $4e05: $03
    nop                                           ; $4e06: $00
    ret nz                                        ; $4e07: $c0

    nop                                           ; $4e08: $00
    add b                                         ; $4e09: $80
    nop                                           ; $4e0a: $00
    ldh [rP1], a                                  ; $4e0b: $e0 $00
    ret nz                                        ; $4e0d: $c0

    nop                                           ; $4e0e: $00
    ld b, c                                       ; $4e0f: $41
    nop                                           ; $4e10: $00
    ld [hl-], a                                   ; $4e11: $32
    nop                                           ; $4e12: $00
    ld [$0700], sp                                ; $4e13: $08 $00 $07
    ld de, $8f00                                  ; $4e16: $11 $00 $8f
    ld bc, $0b00                                  ; $4e19: $01 $00 $0b
    nop                                           ; $4e1c: $00
    inc b                                         ; $4e1d: $04
    nop                                           ; $4e1e: $00
    inc c                                         ; $4e1f: $0c
    nop                                           ; $4e20: $00
    ld e, $00                                     ; $4e21: $1e $00
    ld [bc], a                                    ; $4e23: $02
    nop                                           ; $4e24: $00
    ld a, [de]                                    ; $4e25: $1a
    nop                                           ; $4e26: $00
    inc e                                         ; $4e27: $1c
    ld de, $ff00                                  ; $4e28: $11 $00 $ff
    dec c                                         ; $4e2b: $0d
    inc b                                         ; $4e2c: $04
    ld sp, hl                                     ; $4e2d: $f9
    rlca                                          ; $4e2e: $07
    di                                            ; $4e2f: $f3
    ld [bc], a                                    ; $4e30: $02
    db $ec                                        ; $4e31: $ec
    ld a, [$ffec]                                 ; $4e32: $fa $ec $ff
    db $fc                                        ; $4e35: $fc
    ld a, [$00fc]                                 ; $4e36: $fa $fc $00
    call Call_000_0013                            ; $4e39: $cd $13 $00
    inc l                                         ; $4e3c: $2c
    nop                                           ; $4e3d: $00
    ld h, b                                       ; $4e3e: $60
    nop                                           ; $4e3f: $00
    ld b, c                                       ; $4e40: $41
    nop                                           ; $4e41: $00
    ld l, $00                                     ; $4e42: $2e $00
    jr nz, jr_0db_4e46                            ; $4e44: $20 $00

jr_0db_4e46:
    ld b, b                                       ; $4e46: $40
    nop                                           ; $4e47: $00
    ld h, b                                       ; $4e48: $60
    nop                                           ; $4e49: $00
    jr nz, jr_0db_4e4c                            ; $4e4a: $20 $00

jr_0db_4e4c:
    stop                                          ; $4e4c: $10 $00
    ccf                                           ; $4e4e: $3f
    nop                                           ; $4e4f: $00
    ld c, a                                       ; $4e50: $4f
    nop                                           ; $4e51: $00
    ld h, b                                       ; $4e52: $60
    nop                                           ; $4e53: $00
    ld h, b                                       ; $4e54: $60
    nop                                           ; $4e55: $00
    ldh [rP1], a                                  ; $4e56: $e0 $00
    ldh [rP1], a                                  ; $4e58: $e0 $00
    jr jr_0db_4e5c                                ; $4e5a: $18 $00

jr_0db_4e5c:
    jr jr_0db_4e5e                                ; $4e5c: $18 $00

jr_0db_4e5e:
    ld b, $00                                     ; $4e5e: $06 $00
    ld [bc], a                                    ; $4e60: $02
    nop                                           ; $4e61: $00
    ld a, [de]                                    ; $4e62: $1a
    nop                                           ; $4e63: $00
    inc b                                         ; $4e64: $04
    nop                                           ; $4e65: $00
    ld [bc], a                                    ; $4e66: $02
    nop                                           ; $4e67: $00
    ld d, $00                                     ; $4e68: $16 $00
    inc c                                         ; $4e6a: $0c
    nop                                           ; $4e6b: $00
    ld [$1c00], sp                                ; $4e6c: $08 $00 $1c
    nop                                           ; $4e6f: $00
    ld d, $00                                     ; $4e70: $16 $00
    ld b, $00                                     ; $4e72: $06 $00
    ld b, $00                                     ; $4e74: $06 $00
    inc bc                                        ; $4e76: $03
    nop                                           ; $4e77: $00
    inc bc                                        ; $4e78: $03
    nop                                           ; $4e79: $00
    add b                                         ; $4e7a: $80
    nop                                           ; $4e7b: $00
    ldh [rP1], a                                  ; $4e7c: $e0 $00
    ret nz                                        ; $4e7e: $c0

    nop                                           ; $4e7f: $00
    ld b, c                                       ; $4e80: $41
    nop                                           ; $4e81: $00
    jr nz, jr_0db_4e84                            ; $4e82: $20 $00

jr_0db_4e84:
    inc e                                         ; $4e84: $1c
    nop                                           ; $4e85: $00
    inc bc                                        ; $4e86: $03
    inc de                                        ; $4e87: $13
    nop                                           ; $4e88: $00
    adc l                                         ; $4e89: $8d
    ld b, $00                                     ; $4e8a: $06 $00
    dec b                                         ; $4e8c: $05
    nop                                           ; $4e8d: $00
    ld a, [hl-]                                   ; $4e8e: $3a
    nop                                           ; $4e8f: $00
    ld [$3400], sp                                ; $4e90: $08 $00 $34
    nop                                           ; $4e93: $00
    inc b                                         ; $4e94: $04
    nop                                           ; $4e95: $00
    jr c, jr_0db_4eab                             ; $4e96: $38 $13

    nop                                           ; $4e98: $00
    rst $38                                       ; $4e99: $ff
    dec c                                         ; $4e9a: $0d
    inc b                                         ; $4e9b: $04
    ld sp, hl                                     ; $4e9c: $f9
    rlca                                          ; $4e9d: $07
    di                                            ; $4e9e: $f3
    ld [bc], a                                    ; $4e9f: $02
    db $ec                                        ; $4ea0: $ec
    ld a, [$ffec]                                 ; $4ea1: $fa $ec $ff
    db $fc                                        ; $4ea4: $fc
    ld a, [$00fc]                                 ; $4ea5: $fa $fc $00
    call $0017                                    ; $4ea8: $cd $17 $00

jr_0db_4eab:
    add hl, hl                                    ; $4eab: $29
    nop                                           ; $4eac: $00
    ld h, b                                       ; $4ead: $60
    nop                                           ; $4eae: $00
    ld b, c                                       ; $4eaf: $41
    nop                                           ; $4eb0: $00
    ld c, d                                       ; $4eb1: $4a
    nop                                           ; $4eb2: $00
    inc h                                         ; $4eb3: $24
    nop                                           ; $4eb4: $00
    ld b, b                                       ; $4eb5: $40
    nop                                           ; $4eb6: $00
    ld h, b                                       ; $4eb7: $60
    nop                                           ; $4eb8: $00
    jr nz, jr_0db_4ebb                            ; $4eb9: $20 $00

jr_0db_4ebb:
    stop                                          ; $4ebb: $10 $00
    ld a, $00                                     ; $4ebd: $3e $00
    ld l, a                                       ; $4ebf: $6f
    nop                                           ; $4ec0: $00
    ld h, a                                       ; $4ec1: $67
    nop                                           ; $4ec2: $00
    ld h, b                                       ; $4ec3: $60
    nop                                           ; $4ec4: $00
    and b                                         ; $4ec5: $a0
    nop                                           ; $4ec6: $00
    ret nz                                        ; $4ec7: $c0

    nop                                           ; $4ec8: $00
    stop                                          ; $4ec9: $10 $00
    ld [$0400], sp                                ; $4ecb: $08 $00 $04
    nop                                           ; $4ece: $00
    ld [bc], a                                    ; $4ecf: $02
    nop                                           ; $4ed0: $00
    ld a, [de]                                    ; $4ed1: $1a
    nop                                           ; $4ed2: $00
    inc b                                         ; $4ed3: $04
    nop                                           ; $4ed4: $00
    ld [bc], a                                    ; $4ed5: $02
    nop                                           ; $4ed6: $00
    ld d, $00                                     ; $4ed7: $16 $00
    inc c                                         ; $4ed9: $0c
    nop                                           ; $4eda: $00
    jr jr_0db_4edd                                ; $4edb: $18 $00

jr_0db_4edd:
    inc e                                         ; $4edd: $1c
    nop                                           ; $4ede: $00
    ld d, $00                                     ; $4edf: $16 $00
    ld b, $00                                     ; $4ee1: $06 $00
    ld b, $00                                     ; $4ee3: $06 $00
    rlca                                          ; $4ee5: $07
    nop                                           ; $4ee6: $00
    rlca                                          ; $4ee7: $07
    nop                                           ; $4ee8: $00
    add b                                         ; $4ee9: $80
    nop                                           ; $4eea: $00
    ret nz                                        ; $4eeb: $c0

    nop                                           ; $4eec: $00
    ld b, b                                       ; $4eed: $40
    nop                                           ; $4eee: $00
    jr nz, jr_0db_4ef1                            ; $4eef: $20 $00

jr_0db_4ef1:
    jr nz, jr_0db_4ef3                            ; $4ef1: $20 $00

jr_0db_4ef3:
    inc e                                         ; $4ef3: $1c
    nop                                           ; $4ef4: $00
    inc bc                                        ; $4ef5: $03
    inc de                                        ; $4ef6: $13
    nop                                           ; $4ef7: $00
    adc l                                         ; $4ef8: $8d
    ld [bc], a                                    ; $4ef9: $02
    nop                                           ; $4efa: $00
    rlca                                          ; $4efb: $07
    nop                                           ; $4efc: $00
    ld d, $00                                     ; $4efd: $16 $00
    jr z, jr_0db_4f01                             ; $4eff: $28 $00

jr_0db_4f01:
    ld [$0c00], sp                                ; $4f01: $08 $00 $0c
    nop                                           ; $4f04: $00
    jr nc, jr_0db_4f1a                            ; $4f05: $30 $13

    nop                                           ; $4f07: $00
    rst $38                                       ; $4f08: $ff
    dec c                                         ; $4f09: $0d
    inc b                                         ; $4f0a: $04
    ld sp, hl                                     ; $4f0b: $f9
    rlca                                          ; $4f0c: $07
    di                                            ; $4f0d: $f3
    ld [bc], a                                    ; $4f0e: $02
    db $eb                                        ; $4f0f: $eb
    ld a, [$ffec]                                 ; $4f10: $fa $ec $ff
    ei                                            ; $4f13: $fb
    ld a, [$00fb]                                 ; $4f14: $fa $fb $00
    rst $08                                       ; $4f17: $cf
    cpl                                           ; $4f18: $2f
    nop                                           ; $4f19: $00

jr_0db_4f1a:
    ld [hl-], a                                   ; $4f1a: $32
    nop                                           ; $4f1b: $00
    ld h, b                                       ; $4f1c: $60
    nop                                           ; $4f1d: $00
    ld h, b                                       ; $4f1e: $60
    nop                                           ; $4f1f: $00
    ld b, l                                       ; $4f20: $45
    nop                                           ; $4f21: $00
    ld [hl+], a                                   ; $4f22: $22
    nop                                           ; $4f23: $00
    ld b, b                                       ; $4f24: $40
    nop                                           ; $4f25: $00
    ld h, b                                       ; $4f26: $60
    nop                                           ; $4f27: $00
    jr nz, jr_0db_4f2a                            ; $4f28: $20 $00

jr_0db_4f2a:
    jr jr_0db_4f2c                                ; $4f2a: $18 $00

jr_0db_4f2c:
    daa                                           ; $4f2c: $27
    nop                                           ; $4f2d: $00
    ld d, b                                       ; $4f2e: $50
    nop                                           ; $4f2f: $00
    ld l, a                                       ; $4f30: $6f
    nop                                           ; $4f31: $00
    ld h, a                                       ; $4f32: $67
    nop                                           ; $4f33: $00
    ret nz                                        ; $4f34: $c0

    nop                                           ; $4f35: $00
    ret nz                                        ; $4f36: $c0

    nop                                           ; $4f37: $00
    inc e                                         ; $4f38: $1c
    nop                                           ; $4f39: $00
    ld [bc], a                                    ; $4f3a: $02
    nop                                           ; $4f3b: $00
    inc d                                         ; $4f3c: $14
    nop                                           ; $4f3d: $00
    ld a, [bc]                                    ; $4f3e: $0a
    nop                                           ; $4f3f: $00
    inc b                                         ; $4f40: $04
    nop                                           ; $4f41: $00
    ld a, [bc]                                    ; $4f42: $0a
    nop                                           ; $4f43: $00
    ld b, $00                                     ; $4f44: $06 $00
    inc b                                         ; $4f46: $04
    nop                                           ; $4f47: $00
    jr jr_0db_4f4a                                ; $4f48: $18 $00

jr_0db_4f4a:
    ld [$0e00], sp                                ; $4f4a: $08 $00 $0e
    nop                                           ; $4f4d: $00
    ld d, $00                                     ; $4f4e: $16 $00
    ld b, $00                                     ; $4f50: $06 $00
    ld b, $00                                     ; $4f52: $06 $00
    rlca                                          ; $4f54: $07
    nop                                           ; $4f55: $00
    ld bc, $c000                                  ; $4f56: $01 $00 $c0
    nop                                           ; $4f59: $00
    ld b, b                                       ; $4f5a: $40
    nop                                           ; $4f5b: $00
    jr nz, jr_0db_4f5e                            ; $4f5c: $20 $00

jr_0db_4f5e:
    jr nz, jr_0db_4f60                            ; $4f5e: $20 $00

jr_0db_4f60:
    ld c, b                                       ; $4f60: $48
    nop                                           ; $4f61: $00
    ld b, b                                       ; $4f62: $40
    nop                                           ; $4f63: $00
    ld sp, $1e00                                  ; $4f64: $31 $00 $1e
    inc de                                        ; $4f67: $13
    nop                                           ; $4f68: $00
    adc e                                         ; $4f69: $8b
    rlca                                          ; $4f6a: $07
    nop                                           ; $4f6b: $00
    ld b, $00                                     ; $4f6c: $06 $00
    inc b                                         ; $4f6e: $04
    nop                                           ; $4f6f: $00
    inc d                                         ; $4f70: $14
    nop                                           ; $4f71: $00
    ld [$3000], sp                                ; $4f72: $08 $00 $30
    inc de                                        ; $4f75: $13
    nop                                           ; $4f76: $00
    rst $38                                       ; $4f77: $ff
    dec c                                         ; $4f78: $0d
    inc b                                         ; $4f79: $04
    ld sp, hl                                     ; $4f7a: $f9
    rlca                                          ; $4f7b: $07
    di                                            ; $4f7c: $f3
    ld [bc], a                                    ; $4f7d: $02
    db $eb                                        ; $4f7e: $eb
    ld a, [$ffec]                                 ; $4f7f: $fa $ec $ff
    ei                                            ; $4f82: $fb
    ld a, [$00fb]                                 ; $4f83: $fa $fb $00
    rst $08                                       ; $4f86: $cf
    rra                                           ; $4f87: $1f
    nop                                           ; $4f88: $00
    ld h, h                                       ; $4f89: $64
    nop                                           ; $4f8a: $00
    ld b, b                                       ; $4f8b: $40
    nop                                           ; $4f8c: $00
    ld h, b                                       ; $4f8d: $60
    nop                                           ; $4f8e: $00
    ld h, d                                       ; $4f8f: $62
    nop                                           ; $4f90: $00
    ld hl, $4000                                  ; $4f91: $21 $00 $40
    nop                                           ; $4f94: $00
    ld h, b                                       ; $4f95: $60
    nop                                           ; $4f96: $00
    jr nc, jr_0db_4f99                            ; $4f97: $30 $00

jr_0db_4f99:
    jr jr_0db_4f9b                                ; $4f99: $18 $00

jr_0db_4f9b:
    scf                                           ; $4f9b: $37
    nop                                           ; $4f9c: $00
    ld l, b                                       ; $4f9d: $68
    nop                                           ; $4f9e: $00
    and a                                         ; $4f9f: $a7
    nop                                           ; $4fa0: $00
    db $e3                                        ; $4fa1: $e3
    nop                                           ; $4fa2: $00
    ret nz                                        ; $4fa3: $c0

    nop                                           ; $4fa4: $00
    ret nz                                        ; $4fa5: $c0

    nop                                           ; $4fa6: $00
    jr jr_0db_4fa9                                ; $4fa7: $18 $00

jr_0db_4fa9:
    ld b, $00                                     ; $4fa9: $06 $00
    inc c                                         ; $4fab: $0c
    nop                                           ; $4fac: $00
    ld [de], a                                    ; $4fad: $12
    nop                                           ; $4fae: $00
    inc b                                         ; $4faf: $04
    nop                                           ; $4fb0: $00
    ld [bc], a                                    ; $4fb1: $02
    nop                                           ; $4fb2: $00
    ld b, $00                                     ; $4fb3: $06 $00
    inc b                                         ; $4fb5: $04
    nop                                           ; $4fb6: $00
    ld [$0c00], sp                                ; $4fb7: $08 $00 $0c
    nop                                           ; $4fba: $00
    ld [de], a                                    ; $4fbb: $12
    nop                                           ; $4fbc: $00
    ld d, $00                                     ; $4fbd: $16 $00
    ld b, $00                                     ; $4fbf: $06 $00
    ld b, $00                                     ; $4fc1: $06 $00
    rlca                                          ; $4fc3: $07
    nop                                           ; $4fc4: $00
    inc bc                                        ; $4fc5: $03
    nop                                           ; $4fc6: $00
    add b                                         ; $4fc7: $80
    nop                                           ; $4fc8: $00
    ld b, b                                       ; $4fc9: $40
    nop                                           ; $4fca: $00
    jr z, jr_0db_4fcd                             ; $4fcb: $28 $00

jr_0db_4fcd:
    jr z, jr_0db_4fcf                             ; $4fcd: $28 $00

jr_0db_4fcf:
    ld b, b                                       ; $4fcf: $40
    nop                                           ; $4fd0: $00
    ld b, b                                       ; $4fd1: $40
    nop                                           ; $4fd2: $00
    ld e, c                                       ; $4fd3: $59
    nop                                           ; $4fd4: $00
    ccf                                           ; $4fd5: $3f
    inc de                                        ; $4fd6: $13
    nop                                           ; $4fd7: $00
    adc e                                         ; $4fd8: $8b
    inc bc                                        ; $4fd9: $03
    nop                                           ; $4fda: $00
    ld b, $00                                     ; $4fdb: $06 $00
    ld d, $00                                     ; $4fdd: $16 $00
    inc b                                         ; $4fdf: $04
    nop                                           ; $4fe0: $00
    jr c, jr_0db_4fe3                             ; $4fe1: $38 $00

jr_0db_4fe3:
    jr nz, jr_0db_4ff8                            ; $4fe3: $20 $13

    nop                                           ; $4fe5: $00
    rst $38                                       ; $4fe6: $ff
    dec c                                         ; $4fe7: $0d
    inc b                                         ; $4fe8: $04
    ld sp, hl                                     ; $4fe9: $f9
    rlca                                          ; $4fea: $07
    di                                            ; $4feb: $f3
    ld [bc], a                                    ; $4fec: $02
    db $ec                                        ; $4fed: $ec
    ld a, [$ffed]                                 ; $4fee: $fa $ed $ff
    db $fc                                        ; $4ff1: $fc
    ld a, [$00fc]                                 ; $4ff2: $fa $fc $00
    call $005f                                    ; $4ff5: $cd $5f $00

jr_0db_4ff8:
    ld h, h                                       ; $4ff8: $64
    nop                                           ; $4ff9: $00
    ld h, b                                       ; $4ffa: $60
    nop                                           ; $4ffb: $00
    ld b, b                                       ; $4ffc: $40
    nop                                           ; $4ffd: $00
    inc hl                                        ; $4ffe: $23
    nop                                           ; $4fff: $00

Jump_0db_5000:
    jr nz, jr_0db_5002                            ; $5000: $20 $00

jr_0db_5002:
    ld b, b                                       ; $5002: $40
    nop                                           ; $5003: $00
    ld h, b                                       ; $5004: $60
    nop                                           ; $5005: $00
    jr nc, jr_0db_5008                            ; $5006: $30 $00

jr_0db_5008:
    stop                                          ; $5008: $10 $00
    ccf                                           ; $500a: $3f
    nop                                           ; $500b: $00
    ld l, a                                       ; $500c: $6f
    nop                                           ; $500d: $00
    ld h, b                                       ; $500e: $60
    nop                                           ; $500f: $00
    ld h, b                                       ; $5010: $60
    nop                                           ; $5011: $00
    ret nz                                        ; $5012: $c0

    nop                                           ; $5013: $00
    ret nz                                        ; $5014: $c0

    nop                                           ; $5015: $00
    inc e                                         ; $5016: $1c
    nop                                           ; $5017: $00
    ld [bc], a                                    ; $5018: $02
    nop                                           ; $5019: $00
    ld a, [bc]                                    ; $501a: $0a
    nop                                           ; $501b: $00
    inc d                                         ; $501c: $14
    nop                                           ; $501d: $00
    inc b                                         ; $501e: $04
    nop                                           ; $501f: $00
    ld [bc], a                                    ; $5020: $02
    nop                                           ; $5021: $00
    ld b, $00                                     ; $5022: $06 $00
    inc b                                         ; $5024: $04
    nop                                           ; $5025: $00
    ld [$1c00], sp                                ; $5026: $08 $00 $1c
    nop                                           ; $5029: $00
    ld [de], a                                    ; $502a: $12
    nop                                           ; $502b: $00
    ld b, $00                                     ; $502c: $06 $00
    ld b, $00                                     ; $502e: $06 $00
    rlca                                          ; $5030: $07
    nop                                           ; $5031: $00
    rlca                                          ; $5032: $07
    nop                                           ; $5033: $00
    ld bc, $c000                                  ; $5034: $01 $00 $c0
    nop                                           ; $5037: $00
    ld b, b                                       ; $5038: $40
    nop                                           ; $5039: $00
    jr z, jr_0db_503c                             ; $503a: $28 $00

jr_0db_503c:
    jr nz, jr_0db_503e                            ; $503c: $20 $00

jr_0db_503e:
    ld e, c                                       ; $503e: $59
    nop                                           ; $503f: $00
    ld b, e                                       ; $5040: $43
    nop                                           ; $5041: $00
    ld a, $15                                     ; $5042: $3e $15
    nop                                           ; $5044: $00
    adc c                                         ; $5045: $89
    rlca                                          ; $5046: $07
    nop                                           ; $5047: $00
    ld b, $00                                     ; $5048: $06 $00
    inc d                                         ; $504a: $14
    nop                                           ; $504b: $00
    jr z, jr_0db_504e                             ; $504c: $28 $00

jr_0db_504e:
    jr nc, jr_0db_5065                            ; $504e: $30 $15

    nop                                           ; $5050: $00
    rst $38                                       ; $5051: $ff
    dec c                                         ; $5052: $0d
    inc b                                         ; $5053: $04
    ld sp, hl                                     ; $5054: $f9
    rlca                                          ; $5055: $07
    di                                            ; $5056: $f3
    ld [bc], a                                    ; $5057: $02
    db $ec                                        ; $5058: $ec
    ld a, [$ffed]                                 ; $5059: $fa $ed $ff
    db $fc                                        ; $505c: $fc
    ld a, [$00fc]                                 ; $505d: $fa $fc $00
    call $001f                                    ; $5060: $cd $1f $00
    ld h, h                                       ; $5063: $64
    nop                                           ; $5064: $00

jr_0db_5065:
    ld h, b                                       ; $5065: $60
    nop                                           ; $5066: $00
    ld h, b                                       ; $5067: $60
    nop                                           ; $5068: $00
    ld b, d                                       ; $5069: $42
    nop                                           ; $506a: $00
    ld hl, $4000                                  ; $506b: $21 $00 $40
    nop                                           ; $506e: $00
    ld h, b                                       ; $506f: $60
    nop                                           ; $5070: $00
    jr nc, jr_0db_5073                            ; $5071: $30 $00

jr_0db_5073:
    jr jr_0db_5075                                ; $5073: $18 $00

jr_0db_5075:
    dec sp                                        ; $5075: $3b
    nop                                           ; $5076: $00
    ld l, a                                       ; $5077: $6f
    nop                                           ; $5078: $00
    ld h, a                                       ; $5079: $67
    nop                                           ; $507a: $00
    ld h, b                                       ; $507b: $60
    nop                                           ; $507c: $00
    ldh [rP1], a                                  ; $507d: $e0 $00
    ldh [rP1], a                                  ; $507f: $e0 $00
    jr jr_0db_5083                                ; $5081: $18 $00

jr_0db_5083:
    ld b, $00                                     ; $5083: $06 $00
    inc c                                         ; $5085: $0c
    nop                                           ; $5086: $00
    ld [de], a                                    ; $5087: $12
    nop                                           ; $5088: $00
    inc b                                         ; $5089: $04
    nop                                           ; $508a: $00
    ld [bc], a                                    ; $508b: $02
    nop                                           ; $508c: $00
    ld b, $00                                     ; $508d: $06 $00
    inc b                                         ; $508f: $04
    nop                                           ; $5090: $00
    ld [$1c00], sp                                ; $5091: $08 $00 $1c
    nop                                           ; $5094: $00
    ld d, $00                                     ; $5095: $16 $00
    ld b, $00                                     ; $5097: $06 $00
    ld b, $00                                     ; $5099: $06 $00
    dec b                                         ; $509b: $05
    nop                                           ; $509c: $00
    inc bc                                        ; $509d: $03
    nop                                           ; $509e: $00
    add hl, bc                                    ; $509f: $09
    nop                                           ; $50a0: $00
    add b                                         ; $50a1: $80
    nop                                           ; $50a2: $00
    ret nz                                        ; $50a3: $c0

    nop                                           ; $50a4: $00
    ret nz                                        ; $50a5: $c0

    nop                                           ; $50a6: $00
    jr nz, jr_0db_50a9                            ; $50a7: $20 $00

jr_0db_50a9:
    ld hl, $4100                                  ; $50a9: $21 $00 $41
    nop                                           ; $50ac: $00
    ld a, $15                                     ; $50ad: $3e $15
    nop                                           ; $50af: $00
    adc c                                         ; $50b0: $89
    rlca                                          ; $50b1: $07
    nop                                           ; $50b2: $00
    ld b, $00                                     ; $50b3: $06 $00
    ld [$0800], sp                                ; $50b5: $08 $00 $08
    nop                                           ; $50b8: $00
    jr nc, jr_0db_50d0                            ; $50b9: $30 $15

    nop                                           ; $50bb: $00
    rst $38                                       ; $50bc: $ff
    dec c                                         ; $50bd: $0d
    inc b                                         ; $50be: $04
    ld sp, hl                                     ; $50bf: $f9
    rlca                                          ; $50c0: $07
    di                                            ; $50c1: $f3
    ld [bc], a                                    ; $50c2: $02
    db $eb                                        ; $50c3: $eb
    ld a, [$ffec]                                 ; $50c4: $fa $ec $ff
    ei                                            ; $50c7: $fb
    ld a, [$00fb]                                 ; $50c8: $fa $fb $00
    rst $08                                       ; $50cb: $cf
    cpl                                           ; $50cc: $2f
    nop                                           ; $50cd: $00
    ld [hl-], a                                   ; $50ce: $32
    nop                                           ; $50cf: $00

jr_0db_50d0:
    ld h, b                                       ; $50d0: $60
    nop                                           ; $50d1: $00
    ld h, b                                       ; $50d2: $60
    nop                                           ; $50d3: $00
    ld b, l                                       ; $50d4: $45
    nop                                           ; $50d5: $00
    ld [hl+], a                                   ; $50d6: $22
    nop                                           ; $50d7: $00
    ld b, b                                       ; $50d8: $40
    nop                                           ; $50d9: $00
    ld h, b                                       ; $50da: $60
    nop                                           ; $50db: $00
    jr nz, jr_0db_50de                            ; $50dc: $20 $00

jr_0db_50de:
    jr jr_0db_50e0                                ; $50de: $18 $00

jr_0db_50e0:
    rla                                           ; $50e0: $17
    nop                                           ; $50e1: $00
    ld [hl], b                                    ; $50e2: $70
    nop                                           ; $50e3: $00
    ld l, a                                       ; $50e4: $6f
    nop                                           ; $50e5: $00
    ld h, a                                       ; $50e6: $67
    nop                                           ; $50e7: $00
    ld h, b                                       ; $50e8: $60
    nop                                           ; $50e9: $00
    ldh [rP1], a                                  ; $50ea: $e0 $00
    inc e                                         ; $50ec: $1c
    nop                                           ; $50ed: $00
    ld [bc], a                                    ; $50ee: $02
    nop                                           ; $50ef: $00
    inc d                                         ; $50f0: $14
    nop                                           ; $50f1: $00
    ld a, [bc]                                    ; $50f2: $0a
    nop                                           ; $50f3: $00
    inc b                                         ; $50f4: $04
    nop                                           ; $50f5: $00
    ld a, [bc]                                    ; $50f6: $0a
    nop                                           ; $50f7: $00
    ld b, $00                                     ; $50f8: $06 $00
    inc b                                         ; $50fa: $04
    nop                                           ; $50fb: $00
    jr jr_0db_50fe                                ; $50fc: $18 $00

jr_0db_50fe:
    inc b                                         ; $50fe: $04
    nop                                           ; $50ff: $00
    ld a, [bc]                                    ; $5100: $0a
    nop                                           ; $5101: $00
    ld d, $00                                     ; $5102: $16 $00
    ld b, $00                                     ; $5104: $06 $00
    inc bc                                        ; $5106: $03
    nop                                           ; $5107: $00
    inc bc                                        ; $5108: $03
    nop                                           ; $5109: $00
    dec bc                                        ; $510a: $0b
    nop                                           ; $510b: $00
    add b                                         ; $510c: $80
    nop                                           ; $510d: $00
    ret nz                                        ; $510e: $c0

    nop                                           ; $510f: $00
    ret nz                                        ; $5110: $c0

    nop                                           ; $5111: $00
    add b                                         ; $5112: $80
    nop                                           ; $5113: $00
    ld b, b                                       ; $5114: $40
    nop                                           ; $5115: $00
    ld hl, $1c00                                  ; $5116: $21 $00 $1c
    nop                                           ; $5119: $00
    inc bc                                        ; $511a: $03
    inc de                                        ; $511b: $13
    nop                                           ; $511c: $00
    adc l                                         ; $511d: $8d
    dec d                                         ; $511e: $15
    nop                                           ; $511f: $00
    ld a, [bc]                                    ; $5120: $0a
    nop                                           ; $5121: $00
    ld [$3400], sp                                ; $5122: $08 $00 $34
    nop                                           ; $5125: $00
    inc b                                         ; $5126: $04
    nop                                           ; $5127: $00
    jr jr_0db_512a                                ; $5128: $18 $00

jr_0db_512a:
    jr nc, jr_0db_513d                            ; $512a: $30 $11

    nop                                           ; $512c: $00
    rst $38                                       ; $512d: $ff
    dec c                                         ; $512e: $0d
    inc b                                         ; $512f: $04
    ld sp, hl                                     ; $5130: $f9
    rlca                                          ; $5131: $07
    di                                            ; $5132: $f3
    ld [bc], a                                    ; $5133: $02
    db $eb                                        ; $5134: $eb
    ld a, [$ffeb]                                 ; $5135: $fa $eb $ff
    ei                                            ; $5138: $fb
    ld sp, hl                                     ; $5139: $f9
    ei                                            ; $513a: $fb
    nop                                           ; $513b: $00
    rst $08                                       ; $513c: $cf

jr_0db_513d:
    rlca                                          ; $513d: $07
    nop                                           ; $513e: $00
    ld a, [hl-]                                   ; $513f: $3a
    nop                                           ; $5140: $00
    ld c, b                                       ; $5141: $48
    nop                                           ; $5142: $00
    jr nz, jr_0db_5145                            ; $5143: $20 $00

jr_0db_5145:
    ld c, d                                       ; $5145: $4a
    nop                                           ; $5146: $00
    ld [hl+], a                                   ; $5147: $22
    nop                                           ; $5148: $00
    ld c, l                                       ; $5149: $4d
    nop                                           ; $514a: $00
    ld l, l                                       ; $514b: $6d
    nop                                           ; $514c: $00
    ld [hl+], a                                   ; $514d: $22
    nop                                           ; $514e: $00
    inc e                                         ; $514f: $1c
    nop                                           ; $5150: $00
    daa                                           ; $5151: $27
    nop                                           ; $5152: $00
    ld l, b                                       ; $5153: $68
    nop                                           ; $5154: $00
    ld h, l                                       ; $5155: $65
    nop                                           ; $5156: $00
    jp nz, $e500                                  ; $5157: $c2 $00 $e5

    nop                                           ; $515a: $00
    jp nz, Jump_000_1400                          ; $515b: $c2 $00 $14

    nop                                           ; $515e: $00
    inc c                                         ; $515f: $0c
    nop                                           ; $5160: $00
    ld b, $00                                     ; $5161: $06 $00
    ld b, $00                                     ; $5163: $06 $00
    ld [de], a                                    ; $5165: $12
    nop                                           ; $5166: $00
    inc b                                         ; $5167: $04
    nop                                           ; $5168: $00
    ld [de], a                                    ; $5169: $12
    nop                                           ; $516a: $00
    ld d, $00                                     ; $516b: $16 $00
    inc b                                         ; $516d: $04
    nop                                           ; $516e: $00
    jr jr_0db_5171                                ; $516f: $18 $00

jr_0db_5171:
    inc b                                         ; $5171: $04
    nop                                           ; $5172: $00
    ld d, $00                                     ; $5173: $16 $00
    ld b, $00                                     ; $5175: $06 $00
    inc bc                                        ; $5177: $03
    nop                                           ; $5178: $00
    rlca                                          ; $5179: $07
    nop                                           ; $517a: $00
    inc bc                                        ; $517b: $03
    nop                                           ; $517c: $00
    pop af                                        ; $517d: $f1
    nop                                           ; $517e: $00
    ld l, a                                       ; $517f: $6f
    nop                                           ; $5180: $00
    ld [hl+], a                                   ; $5181: $22
    nop                                           ; $5182: $00
    ld [de], a                                    ; $5183: $12
    nop                                           ; $5184: $00
    inc h                                         ; $5185: $24
    nop                                           ; $5186: $00
    ld hl, $1e00                                  ; $5187: $21 $00 $1e
    nop                                           ; $518a: $00
    inc c                                         ; $518b: $0c
    ld de, $8f00                                  ; $518c: $11 $00 $8f
    rlca                                          ; $518f: $07
    nop                                           ; $5190: $00
    ld b, $00                                     ; $5191: $06 $00
    ld b, h                                       ; $5193: $44
    nop                                           ; $5194: $00
    ld c, b                                       ; $5195: $48
    nop                                           ; $5196: $00
    inc l                                         ; $5197: $2c
    nop                                           ; $5198: $00
    inc b                                         ; $5199: $04
    nop                                           ; $519a: $00
    ld a, b                                       ; $519b: $78
    nop                                           ; $519c: $00
    jr nc, jr_0db_51b0                            ; $519d: $30 $11

    nop                                           ; $519f: $00
    rst $38                                       ; $51a0: $ff
    dec c                                         ; $51a1: $0d
    inc b                                         ; $51a2: $04
    ld sp, hl                                     ; $51a3: $f9
    rlca                                          ; $51a4: $07
    di                                            ; $51a5: $f3
    ld [bc], a                                    ; $51a6: $02
    db $eb                                        ; $51a7: $eb
    ld a, [$ffeb]                                 ; $51a8: $fa $eb $ff
    ei                                            ; $51ab: $fb
    ei                                            ; $51ac: $fb
    ei                                            ; $51ad: $fb
    rst $38                                       ; $51ae: $ff
    rst $08                                       ; $51af: $cf

jr_0db_51b0:
    rrca                                          ; $51b0: $0f
    nop                                           ; $51b1: $00
    ld [hl-], a                                   ; $51b2: $32
    nop                                           ; $51b3: $00
    ret nc                                        ; $51b4: $d0

    nop                                           ; $51b5: $00
    jr nz, jr_0db_51b8                            ; $51b6: $20 $00

jr_0db_51b8:
    ld d, l                                       ; $51b8: $55
    nop                                           ; $51b9: $00
    inc h                                         ; $51ba: $24
    nop                                           ; $51bb: $00
    dec sp                                        ; $51bc: $3b
    nop                                           ; $51bd: $00
    dec sp                                        ; $51be: $3b
    nop                                           ; $51bf: $00
    inc h                                         ; $51c0: $24
    nop                                           ; $51c1: $00
    add hl, de                                    ; $51c2: $19
    nop                                           ; $51c3: $00
    rla                                           ; $51c4: $17
    nop                                           ; $51c5: $00
    ld h, b                                       ; $51c6: $60
    nop                                           ; $51c7: $00
    ld h, l                                       ; $51c8: $65
    nop                                           ; $51c9: $00
    jp nz, $e500                                  ; $51ca: $c2 $00 $e5

    nop                                           ; $51cd: $00
    db $e3                                        ; $51ce: $e3
    nop                                           ; $51cf: $00
    ld [$1400], sp                                ; $51d0: $08 $00 $14
    nop                                           ; $51d3: $00
    ld b, $00                                     ; $51d4: $06 $00
    ld a, [bc]                                    ; $51d6: $0a
    nop                                           ; $51d7: $00
    ld [bc], a                                    ; $51d8: $02
    nop                                           ; $51d9: $00
    inc d                                         ; $51da: $14
    nop                                           ; $51db: $00
    ld a, [bc]                                    ; $51dc: $0a
    nop                                           ; $51dd: $00
    ld c, $00                                     ; $51de: $0e $00
    inc d                                         ; $51e0: $14
    nop                                           ; $51e1: $00
    ld [$0400], sp                                ; $51e2: $08 $00 $04
    nop                                           ; $51e5: $00
    ld d, $00                                     ; $51e6: $16 $00
    ld [bc], a                                    ; $51e8: $02
    nop                                           ; $51e9: $00
    inc bc                                        ; $51ea: $03
    nop                                           ; $51eb: $00
    inc bc                                        ; $51ec: $03
    nop                                           ; $51ed: $00
    inc bc                                        ; $51ee: $03
    nop                                           ; $51ef: $00
    ld [$e200], a                                 ; $51f0: $ea $00 $e2
    nop                                           ; $51f3: $00
    ld c, c                                       ; $51f4: $49
    nop                                           ; $51f5: $00
    jr nz, jr_0db_51f8                            ; $51f6: $20 $00

jr_0db_51f8:
    ld b, b                                       ; $51f8: $40
    nop                                           ; $51f9: $00
    ld [hl], l                                    ; $51fa: $75
    nop                                           ; $51fb: $00
    ld a, [hl-]                                   ; $51fc: $3a
    nop                                           ; $51fd: $00
    inc bc                                        ; $51fe: $03
    ld de, $8f00                                  ; $51ff: $11 $00 $8f
    rlca                                          ; $5202: $07
    nop                                           ; $5203: $00
    ld [bc], a                                    ; $5204: $02
    nop                                           ; $5205: $00
    inc b                                         ; $5206: $04
    nop                                           ; $5207: $00
    ld a, [bc]                                    ; $5208: $0a
    nop                                           ; $5209: $00
    ld [bc], a                                    ; $520a: $02
    nop                                           ; $520b: $00
    ld a, [bc]                                    ; $520c: $0a
    nop                                           ; $520d: $00
    inc b                                         ; $520e: $04
    nop                                           ; $520f: $00
    ld [$0011], sp                                ; $5210: $08 $11 $00
    rst $38                                       ; $5213: $ff
    dec c                                         ; $5214: $0d
    inc b                                         ; $5215: $04
    ld sp, hl                                     ; $5216: $f9
    rlca                                          ; $5217: $07
    di                                            ; $5218: $f3
    ld [bc], a                                    ; $5219: $02
    db $ec                                        ; $521a: $ec
    ld a, [$ffec]                                 ; $521b: $fa $ec $ff
    db $fc                                        ; $521e: $fc
    ld a, [$fffc]                                 ; $521f: $fa $fc $ff
    call $001e                                    ; $5222: $cd $1e $00
    ld h, e                                       ; $5225: $63
    nop                                           ; $5226: $00
    jr nc, jr_0db_5229                            ; $5227: $30 $00

jr_0db_5229:
    ld b, b                                       ; $5229: $40
    nop                                           ; $522a: $00
    ld d, l                                       ; $522b: $55
    nop                                           ; $522c: $00
    inc h                                         ; $522d: $24
    nop                                           ; $522e: $00
    dec sp                                        ; $522f: $3b
    nop                                           ; $5230: $00
    ld e, e                                       ; $5231: $5b
    nop                                           ; $5232: $00
    inc h                                         ; $5233: $24
    nop                                           ; $5234: $00
    dec de                                        ; $5235: $1b
    nop                                           ; $5236: $00
    daa                                           ; $5237: $27
    nop                                           ; $5238: $00
    ld b, b                                       ; $5239: $40
    nop                                           ; $523a: $00
    ld h, a                                       ; $523b: $67
    nop                                           ; $523c: $00
    ld h, l                                       ; $523d: $65
    nop                                           ; $523e: $00
    jp nz, $e200                                  ; $523f: $c2 $00 $e2

    nop                                           ; $5242: $00
    ld [$1600], sp                                ; $5243: $08 $00 $16
    nop                                           ; $5246: $00
    ld b, $00                                     ; $5247: $06 $00
    ld [bc], a                                    ; $5249: $02
    nop                                           ; $524a: $00
    inc d                                         ; $524b: $14
    nop                                           ; $524c: $00
    inc d                                         ; $524d: $14
    nop                                           ; $524e: $00
    ld a, [bc]                                    ; $524f: $0a
    nop                                           ; $5250: $00
    ld c, $00                                     ; $5251: $0e $00
    inc d                                         ; $5253: $14
    nop                                           ; $5254: $00
    jr jr_0db_5257                                ; $5255: $18 $00

jr_0db_5257:
    inc b                                         ; $5257: $04
    nop                                           ; $5258: $00
    ld d, $00                                     ; $5259: $16 $00
    ld [bc], a                                    ; $525b: $02
    nop                                           ; $525c: $00
    ld bc, $0300                                  ; $525d: $01 $00 $03
    nop                                           ; $5260: $00
    inc bc                                        ; $5261: $03
    nop                                           ; $5262: $00
    rst $28                                       ; $5263: $ef
    nop                                           ; $5264: $00
    pop hl                                        ; $5265: $e1
    nop                                           ; $5266: $00
    ld b, h                                       ; $5267: $44
    nop                                           ; $5268: $00
    inc h                                         ; $5269: $24
    nop                                           ; $526a: $00
    stop                                          ; $526b: $10 $00
    ld e, $00                                     ; $526d: $1e $00
    ld bc, $0013                                  ; $526f: $01 $13 $00
    adc l                                         ; $5272: $8d
    inc bc                                        ; $5273: $03
    nop                                           ; $5274: $00
    ld [bc], a                                    ; $5275: $02
    nop                                           ; $5276: $00
    inc d                                         ; $5277: $14
    nop                                           ; $5278: $00
    inc d                                         ; $5279: $14
    nop                                           ; $527a: $00
    ld [bc], a                                    ; $527b: $02
    nop                                           ; $527c: $00
    ld a, [de]                                    ; $527d: $1a
    nop                                           ; $527e: $00
    inc e                                         ; $527f: $1c
    inc de                                        ; $5280: $13
    nop                                           ; $5281: $00
    rst $38                                       ; $5282: $ff
    dec c                                         ; $5283: $0d
    inc b                                         ; $5284: $04
    ld sp, hl                                     ; $5285: $f9
    rlca                                          ; $5286: $07
    di                                            ; $5287: $f3
    ld [bc], a                                    ; $5288: $02
    db $ec                                        ; $5289: $ec
    ld a, [$ffec]                                 ; $528a: $fa $ec $ff
    db $fc                                        ; $528d: $fc
    ld sp, hl                                     ; $528e: $f9
    db $fc                                        ; $528f: $fc
    nop                                           ; $5290: $00
    rrc a                                         ; $5291: $cb $0f
    nop                                           ; $5293: $00
    ld [hl-], a                                   ; $5294: $32
    nop                                           ; $5295: $00
    ret nc                                        ; $5296: $d0

    nop                                           ; $5297: $00
    jr nz, jr_0db_529a                            ; $5298: $20 $00

jr_0db_529a:
    ld d, l                                       ; $529a: $55
    nop                                           ; $529b: $00
    inc h                                         ; $529c: $24
    nop                                           ; $529d: $00
    ld e, e                                       ; $529e: $5b
    nop                                           ; $529f: $00
    ld e, e                                       ; $52a0: $5b
    nop                                           ; $52a1: $00
    inc h                                         ; $52a2: $24
    nop                                           ; $52a3: $00
    dec de                                        ; $52a4: $1b
    nop                                           ; $52a5: $00
    daa                                           ; $52a6: $27
    nop                                           ; $52a7: $00
    ld h, b                                       ; $52a8: $60
    nop                                           ; $52a9: $00
    ld h, l                                       ; $52aa: $65
    nop                                           ; $52ab: $00
    and d                                         ; $52ac: $a2
    nop                                           ; $52ad: $00
    push bc                                       ; $52ae: $c5
    nop                                           ; $52af: $00
    jp nz, $0800                                  ; $52b0: $c2 $00 $08

    nop                                           ; $52b3: $00
    inc d                                         ; $52b4: $14
    nop                                           ; $52b5: $00
    ld b, $00                                     ; $52b6: $06 $00
    ld a, [bc]                                    ; $52b8: $0a
    nop                                           ; $52b9: $00
    ld [bc], a                                    ; $52ba: $02
    nop                                           ; $52bb: $00
    inc d                                         ; $52bc: $14
    nop                                           ; $52bd: $00
    ld a, [bc]                                    ; $52be: $0a
    nop                                           ; $52bf: $00
    ld c, $00                                     ; $52c0: $0e $00
    inc d                                         ; $52c2: $14
    nop                                           ; $52c3: $00
    ld [$0400], sp                                ; $52c4: $08 $00 $04
    nop                                           ; $52c7: $00
    ld d, $00                                     ; $52c8: $16 $00
    ld b, $00                                     ; $52ca: $06 $00
    dec b                                         ; $52cc: $05
    nop                                           ; $52cd: $00
    inc bc                                        ; $52ce: $03
    nop                                           ; $52cf: $00
    inc bc                                        ; $52d0: $03
    nop                                           ; $52d1: $00
    pop hl                                        ; $52d2: $e1
    nop                                           ; $52d3: $00
    ld [hl], c                                    ; $52d4: $71
    nop                                           ; $52d5: $00
    ld a, [hl+]                                   ; $52d6: $2a
    nop                                           ; $52d7: $00
    stop                                          ; $52d8: $10 $00
    dec d                                         ; $52da: $15
    nop                                           ; $52db: $00
    ld c, $15                                     ; $52dc: $0e $15
    nop                                           ; $52de: $00
    adc l                                         ; $52df: $8d
    rlca                                          ; $52e0: $07
    nop                                           ; $52e1: $00
    ld b, $00                                     ; $52e2: $06 $00
    ld b, h                                       ; $52e4: $44
    nop                                           ; $52e5: $00
    jr z, jr_0db_52e8                             ; $52e6: $28 $00

jr_0db_52e8:
    inc b                                         ; $52e8: $04
    nop                                           ; $52e9: $00
    ld a, b                                       ; $52ea: $78
    nop                                           ; $52eb: $00
    ld [hl], b                                    ; $52ec: $70
    inc de                                        ; $52ed: $13
    nop                                           ; $52ee: $00
    rst $38                                       ; $52ef: $ff
    dec c                                         ; $52f0: $0d
    inc b                                         ; $52f1: $04
    ld sp, hl                                     ; $52f2: $f9
    rlca                                          ; $52f3: $07
    di                                            ; $52f4: $f3
    ld [bc], a                                    ; $52f5: $02
    db $eb                                        ; $52f6: $eb
    ld a, [$ffeb]                                 ; $52f7: $fa $eb $ff
    ei                                            ; $52fa: $fb
    ld a, [$fffb]                                 ; $52fb: $fa $fb $ff
    call Call_000_0007                            ; $52fe: $cd $07 $00
    ld a, [hl-]                                   ; $5301: $3a
    nop                                           ; $5302: $00
    ld c, b                                       ; $5303: $48
    nop                                           ; $5304: $00
    jr nz, jr_0db_5307                            ; $5305: $20 $00

jr_0db_5307:
    ld c, d                                       ; $5307: $4a
    nop                                           ; $5308: $00
    ld [hl+], a                                   ; $5309: $22
    nop                                           ; $530a: $00
    ld c, l                                       ; $530b: $4d
    nop                                           ; $530c: $00
    ld l, l                                       ; $530d: $6d
    nop                                           ; $530e: $00
    ld [hl+], a                                   ; $530f: $22
    nop                                           ; $5310: $00
    add hl, de                                    ; $5311: $19
    nop                                           ; $5312: $00
    daa                                           ; $5313: $27
    nop                                           ; $5314: $00
    ld l, b                                       ; $5315: $68
    nop                                           ; $5316: $00
    ld h, l                                       ; $5317: $65
    nop                                           ; $5318: $00
    jp nz, $c500                                  ; $5319: $c2 $00 $c5

    nop                                           ; $531c: $00
    jp nz, Jump_000_1400                          ; $531d: $c2 $00 $14

    nop                                           ; $5320: $00
    inc c                                         ; $5321: $0c
    nop                                           ; $5322: $00
    ld b, $00                                     ; $5323: $06 $00
    ld b, $00                                     ; $5325: $06 $00
    ld [de], a                                    ; $5327: $12
    nop                                           ; $5328: $00
    inc b                                         ; $5329: $04
    nop                                           ; $532a: $00
    inc d                                         ; $532b: $14
    nop                                           ; $532c: $00
    ld [de], a                                    ; $532d: $12
    nop                                           ; $532e: $00
    inc b                                         ; $532f: $04
    nop                                           ; $5330: $00
    jr jr_0db_5333                                ; $5331: $18 $00

jr_0db_5333:
    inc b                                         ; $5333: $04
    nop                                           ; $5334: $00
    ld b, $00                                     ; $5335: $06 $00
    ld b, $00                                     ; $5337: $06 $00
    inc bc                                        ; $5339: $03
    nop                                           ; $533a: $00
    rlca                                          ; $533b: $07
    nop                                           ; $533c: $00
    inc bc                                        ; $533d: $03
    nop                                           ; $533e: $00
    ld [c], a                                     ; $533f: $e2
    nop                                           ; $5340: $00
    add $00                                       ; $5341: $c6 $00
    ld a, c                                       ; $5343: $79
    nop                                           ; $5344: $00
    ld h, c                                       ; $5345: $61
    nop                                           ; $5346: $00
    jr nz, jr_0db_5349                            ; $5347: $20 $00

jr_0db_5349:
    ld a, [hl-]                                   ; $5349: $3a
    nop                                           ; $534a: $00
    dec e                                         ; $534b: $1d
    inc de                                        ; $534c: $13
    nop                                           ; $534d: $00
    adc a                                         ; $534e: $8f
    rlca                                          ; $534f: $07
    nop                                           ; $5350: $00
    rlca                                          ; $5351: $07
    nop                                           ; $5352: $00
    ld [bc], a                                    ; $5353: $02
    nop                                           ; $5354: $00
    inc b                                         ; $5355: $04
    nop                                           ; $5356: $00
    ld [de], a                                    ; $5357: $12
    nop                                           ; $5358: $00
    ld [bc], a                                    ; $5359: $02
    nop                                           ; $535a: $00
    inc e                                         ; $535b: $1c
    nop                                           ; $535c: $00
    jr jr_0db_5370                                ; $535d: $18 $11

    nop                                           ; $535f: $00
    rst $38                                       ; $5360: $ff
    dec c                                         ; $5361: $0d
    inc b                                         ; $5362: $04
    ld sp, hl                                     ; $5363: $f9
    rlca                                          ; $5364: $07
    di                                            ; $5365: $f3
    ld [bc], a                                    ; $5366: $02
    db $eb                                        ; $5367: $eb
    ld a, [$ffeb]                                 ; $5368: $fa $eb $ff
    ei                                            ; $536b: $fb
    ld a, [$fefb]                                 ; $536c: $fa $fb $fe
    rst $08                                       ; $536f: $cf

jr_0db_5370:
    rrca                                          ; $5370: $0f
    nop                                           ; $5371: $00
    ld [hl-], a                                   ; $5372: $32
    nop                                           ; $5373: $00
    ld d, b                                       ; $5374: $50
    nop                                           ; $5375: $00
    ld h, b                                       ; $5376: $60
    nop                                           ; $5377: $00
    ld b, d                                       ; $5378: $42
    nop                                           ; $5379: $00
    ld c, c                                       ; $537a: $49
    nop                                           ; $537b: $00
    ld d, [hl]                                    ; $537c: $56
    nop                                           ; $537d: $00
    halt                                          ; $537e: $76
    nop                                           ; $537f: $00
    add hl, hl                                    ; $5380: $29
    nop                                           ; $5381: $00
    inc d                                         ; $5382: $14
    nop                                           ; $5383: $00
    daa                                           ; $5384: $27
    nop                                           ; $5385: $00
    ld l, b                                       ; $5386: $68
    nop                                           ; $5387: $00
    ld b, l                                       ; $5388: $45
    nop                                           ; $5389: $00
    jp nz, $c500                                  ; $538a: $c2 $00 $c5

    nop                                           ; $538d: $00
    jp nz, $0800                                  ; $538e: $c2 $00 $08

    nop                                           ; $5391: $00
    jr jr_0db_5394                                ; $5392: $18 $00

jr_0db_5394:
    inc c                                         ; $5394: $0c
    nop                                           ; $5395: $00
    ld [bc], a                                    ; $5396: $02
    nop                                           ; $5397: $00
    ld a, [bc]                                    ; $5398: $0a
    nop                                           ; $5399: $00
    inc b                                         ; $539a: $04
    nop                                           ; $539b: $00
    inc e                                         ; $539c: $1c
    nop                                           ; $539d: $00
    inc e                                         ; $539e: $1c
    nop                                           ; $539f: $00
    inc b                                         ; $53a0: $04
    nop                                           ; $53a1: $00
    jr jr_0db_53a4                                ; $53a2: $18 $00

jr_0db_53a4:
    ld [$0600], sp                                ; $53a4: $08 $00 $06
    nop                                           ; $53a7: $00
    ld b, $00                                     ; $53a8: $06 $00
    inc bc                                        ; $53aa: $03
    nop                                           ; $53ab: $00
    rlca                                          ; $53ac: $07
    nop                                           ; $53ad: $00
    rlca                                          ; $53ae: $07
    nop                                           ; $53af: $00
    db $e4                                        ; $53b0: $e4
    nop                                           ; $53b1: $00
    ld h, h                                       ; $53b2: $64
    nop                                           ; $53b3: $00
    ld l, c                                       ; $53b4: $69
    nop                                           ; $53b5: $00
    ld d, b                                       ; $53b6: $50
    nop                                           ; $53b7: $00
    ld b, b                                       ; $53b8: $40
    nop                                           ; $53b9: $00
    ld e, d                                       ; $53ba: $5a
    nop                                           ; $53bb: $00
    dec h                                         ; $53bc: $25
    nop                                           ; $53bd: $00
    inc e                                         ; $53be: $1c
    ld de, $8d00                                  ; $53bf: $11 $00 $8d
    rlca                                          ; $53c2: $07
    nop                                           ; $53c3: $00
    rlca                                          ; $53c4: $07
    nop                                           ; $53c5: $00
    ld [bc], a                                    ; $53c6: $02
    nop                                           ; $53c7: $00
    inc b                                         ; $53c8: $04
    nop                                           ; $53c9: $00
    ld [bc], a                                    ; $53ca: $02
    nop                                           ; $53cb: $00
    ld c, $00                                     ; $53cc: $0e $00
    inc c                                         ; $53ce: $0c
    inc de                                        ; $53cf: $13
    nop                                           ; $53d0: $00
    rst $38                                       ; $53d1: $ff
    dec c                                         ; $53d2: $0d
    inc b                                         ; $53d3: $04
    ld sp, hl                                     ; $53d4: $f9
    rlca                                          ; $53d5: $07
    di                                            ; $53d6: $f3
    ld [bc], a                                    ; $53d7: $02
    db $ec                                        ; $53d8: $ec
    ld a, [$ffec]                                 ; $53d9: $fa $ec $ff
    db $fc                                        ; $53dc: $fc
    ld a, [$fffc]                                 ; $53dd: $fa $fc $ff
    call Call_000_0007                            ; $53e0: $cd $07 $00
    ld a, d                                       ; $53e3: $7a
    nop                                           ; $53e4: $00
    ld d, b                                       ; $53e5: $50
    nop                                           ; $53e6: $00
    ld b, b                                       ; $53e7: $40
    nop                                           ; $53e8: $00
    ld c, d                                       ; $53e9: $4a
    nop                                           ; $53ea: $00
    ld c, c                                       ; $53eb: $49
    nop                                           ; $53ec: $00
    ld d, [hl]                                    ; $53ed: $56
    nop                                           ; $53ee: $00
    halt                                          ; $53ef: $76
    nop                                           ; $53f0: $00
    add hl, hl                                    ; $53f1: $29
    nop                                           ; $53f2: $00
    ld e, $00                                     ; $53f3: $1e $00
    daa                                           ; $53f5: $27
    nop                                           ; $53f6: $00
    ld l, b                                       ; $53f7: $68
    nop                                           ; $53f8: $00
    ld b, a                                       ; $53f9: $47
    nop                                           ; $53fa: $00
    add l                                         ; $53fb: $85
    nop                                           ; $53fc: $00
    jp nz, $c200                                  ; $53fd: $c2 $00 $c2

    nop                                           ; $5400: $00
    inc d                                         ; $5401: $14
    nop                                           ; $5402: $00
    ld [$0e00], sp                                ; $5403: $08 $00 $0e
    nop                                           ; $5406: $00
    ld [bc], a                                    ; $5407: $02
    nop                                           ; $5408: $00
    inc c                                         ; $5409: $0c
    nop                                           ; $540a: $00
    inc b                                         ; $540b: $04
    nop                                           ; $540c: $00
    inc e                                         ; $540d: $1c
    nop                                           ; $540e: $00
    ld a, [de]                                    ; $540f: $1a
    nop                                           ; $5410: $00
    inc b                                         ; $5411: $04
    nop                                           ; $5412: $00
    jr jr_0db_5415                                ; $5413: $18 $00

jr_0db_5415:
    inc b                                         ; $5415: $04
    nop                                           ; $5416: $00
    ld [bc], a                                    ; $5417: $02
    nop                                           ; $5418: $00
    ld b, $00                                     ; $5419: $06 $00
    ld b, $00                                     ; $541b: $06 $00
    inc bc                                        ; $541d: $03
    nop                                           ; $541e: $00
    rlca                                          ; $541f: $07
    nop                                           ; $5420: $00
    call nz, Call_0db_6400                        ; $5421: $c4 $00 $64
    nop                                           ; $5424: $00
    add hl, sp                                    ; $5425: $39
    nop                                           ; $5426: $00
    add hl, hl                                    ; $5427: $29
    nop                                           ; $5428: $00
    ld b, b                                       ; $5429: $40
    nop                                           ; $542a: $00
    ld e, e                                       ; $542b: $5b
    nop                                           ; $542c: $00
    inc a                                         ; $542d: $3c
    inc de                                        ; $542e: $13
    nop                                           ; $542f: $00
    adc e                                         ; $5430: $8b
    rlca                                          ; $5431: $07
    nop                                           ; $5432: $00
    rlca                                          ; $5433: $07
    nop                                           ; $5434: $00
    ld [bc], a                                    ; $5435: $02
    nop                                           ; $5436: $00
    inc b                                         ; $5437: $04
    nop                                           ; $5438: $00
    ld [$1800], sp                                ; $5439: $08 $00 $18
    dec d                                         ; $543c: $15
    nop                                           ; $543d: $00
    rst $38                                       ; $543e: $ff
    dec c                                         ; $543f: $0d
    inc b                                         ; $5440: $04
    ld sp, hl                                     ; $5441: $f9
    rlca                                          ; $5442: $07
    di                                            ; $5443: $f3
    ld [bc], a                                    ; $5444: $02
    db $ec                                        ; $5445: $ec
    ld a, [$ffec]                                 ; $5446: $fa $ec $ff
    db $fc                                        ; $5449: $fc
    ld sp, hl                                     ; $544a: $f9
    db $fc                                        ; $544b: $fc
    nop                                           ; $544c: $00
    call Call_000_000f                            ; $544d: $cd $0f $00
    ld [hl-], a                                   ; $5450: $32
    nop                                           ; $5451: $00
    ld d, b                                       ; $5452: $50
    nop                                           ; $5453: $00
    ld h, b                                       ; $5454: $60
    nop                                           ; $5455: $00
    ld b, d                                       ; $5456: $42
    nop                                           ; $5457: $00
    ld c, c                                       ; $5458: $49
    nop                                           ; $5459: $00
    ld d, [hl]                                    ; $545a: $56
    nop                                           ; $545b: $00
    halt                                          ; $545c: $76
    nop                                           ; $545d: $00
    add hl, hl                                    ; $545e: $29
    nop                                           ; $545f: $00
    ld d, $00                                     ; $5460: $16 $00
    daa                                           ; $5462: $27
    nop                                           ; $5463: $00
    ld l, b                                       ; $5464: $68
    nop                                           ; $5465: $00
    ld h, l                                       ; $5466: $65
    nop                                           ; $5467: $00
    and d                                         ; $5468: $a2
    nop                                           ; $5469: $00
    push bc                                       ; $546a: $c5
    nop                                           ; $546b: $00
    jp nz, $0800                                  ; $546c: $c2 $00 $08

    nop                                           ; $546f: $00
    jr jr_0db_5472                                ; $5470: $18 $00

jr_0db_5472:
    inc c                                         ; $5472: $0c
    nop                                           ; $5473: $00
    ld [bc], a                                    ; $5474: $02
    nop                                           ; $5475: $00
    ld a, [bc]                                    ; $5476: $0a
    nop                                           ; $5477: $00
    inc b                                         ; $5478: $04
    nop                                           ; $5479: $00
    ld a, [de]                                    ; $547a: $1a
    nop                                           ; $547b: $00
    ld a, [de]                                    ; $547c: $1a
    nop                                           ; $547d: $00
    inc b                                         ; $547e: $04
    nop                                           ; $547f: $00
    jr jr_0db_5482                                ; $5480: $18 $00

jr_0db_5482:
    inc b                                         ; $5482: $04
    nop                                           ; $5483: $00
    ld b, $00                                     ; $5484: $06 $00
    ld b, $00                                     ; $5486: $06 $00
    dec b                                         ; $5488: $05
    nop                                           ; $5489: $00
    inc bc                                        ; $548a: $03
    nop                                           ; $548b: $00
    inc bc                                        ; $548c: $03
    nop                                           ; $548d: $00
    pop af                                        ; $548e: $f1
    nop                                           ; $548f: $00
    ld l, a                                       ; $5490: $6f
    nop                                           ; $5491: $00
    ld [hl+], a                                   ; $5492: $22
    nop                                           ; $5493: $00
    inc d                                         ; $5494: $14
    nop                                           ; $5495: $00
    ld hl, $1e00                                  ; $5496: $21 $00 $1e
    nop                                           ; $5499: $00
    ld c, $13                                     ; $549a: $0e $13
    nop                                           ; $549c: $00
    adc e                                         ; $549d: $8b
    rlca                                          ; $549e: $07
    nop                                           ; $549f: $00
    ld b, $00                                     ; $54a0: $06 $00
    ld b, h                                       ; $54a2: $44
    nop                                           ; $54a3: $00
    ld [$2800], sp                                ; $54a4: $08 $00 $28
    nop                                           ; $54a7: $00
    ld [hl], b                                    ; $54a8: $70
    dec d                                         ; $54a9: $15
    nop                                           ; $54aa: $00
    rst $38                                       ; $54ab: $ff
    dec c                                         ; $54ac: $0d
    inc b                                         ; $54ad: $04
    ld sp, hl                                     ; $54ae: $f9
    rlca                                          ; $54af: $07
    di                                            ; $54b0: $f3
    ld [bc], a                                    ; $54b1: $02
    db $eb                                        ; $54b2: $eb
    ld a, [$ffeb]                                 ; $54b3: $fa $eb $ff
    ei                                            ; $54b6: $fb
    ld a, [$fffb]                                 ; $54b7: $fa $fb $ff
    rst $08                                       ; $54ba: $cf
    rlca                                          ; $54bb: $07
    nop                                           ; $54bc: $00
    ld a, [hl-]                                   ; $54bd: $3a
    nop                                           ; $54be: $00
    ld c, b                                       ; $54bf: $48
    nop                                           ; $54c0: $00
    jr nz, jr_0db_54c3                            ; $54c1: $20 $00

jr_0db_54c3:
    ld c, d                                       ; $54c3: $4a
    nop                                           ; $54c4: $00
    ld [hl+], a                                   ; $54c5: $22
    nop                                           ; $54c6: $00
    dec l                                         ; $54c7: $2d
    nop                                           ; $54c8: $00
    ld c, l                                       ; $54c9: $4d
    nop                                           ; $54ca: $00
    ld [hl+], a                                   ; $54cb: $22
    nop                                           ; $54cc: $00
    inc e                                         ; $54cd: $1c
    nop                                           ; $54ce: $00
    daa                                           ; $54cf: $27
    nop                                           ; $54d0: $00
    ld h, b                                       ; $54d1: $60
    nop                                           ; $54d2: $00
    ld h, l                                       ; $54d3: $65
    nop                                           ; $54d4: $00
    jp nz, $e500                                  ; $54d5: $c2 $00 $e5

    nop                                           ; $54d8: $00
    jp nz, Jump_000_1400                          ; $54d9: $c2 $00 $14

    nop                                           ; $54dc: $00
    inc c                                         ; $54dd: $0c
    nop                                           ; $54de: $00
    ld b, $00                                     ; $54df: $06 $00
    ld b, $00                                     ; $54e1: $06 $00
    ld [de], a                                    ; $54e3: $12
    nop                                           ; $54e4: $00
    inc b                                         ; $54e5: $04
    nop                                           ; $54e6: $00
    ld [de], a                                    ; $54e7: $12
    nop                                           ; $54e8: $00
    ld d, $00                                     ; $54e9: $16 $00
    inc b                                         ; $54eb: $04
    nop                                           ; $54ec: $00
    jr jr_0db_54ef                                ; $54ed: $18 $00

jr_0db_54ef:
    inc b                                         ; $54ef: $04
    nop                                           ; $54f0: $00
    ld d, $00                                     ; $54f1: $16 $00
    ld b, $00                                     ; $54f3: $06 $00
    inc bc                                        ; $54f5: $03
    nop                                           ; $54f6: $00
    inc bc                                        ; $54f7: $03
    nop                                           ; $54f8: $00
    inc bc                                        ; $54f9: $03
    nop                                           ; $54fa: $00
    xor $00                                       ; $54fb: $ee $00
    db $e3                                        ; $54fd: $e3
    nop                                           ; $54fe: $00
    ld b, h                                       ; $54ff: $44
    nop                                           ; $5500: $00
    inc h                                         ; $5501: $24
    nop                                           ; $5502: $00
    ld c, b                                       ; $5503: $48
    nop                                           ; $5504: $00
    ld b, d                                       ; $5505: $42
    nop                                           ; $5506: $00
    dec a                                         ; $5507: $3d
    nop                                           ; $5508: $00
    jr jr_0db_551c                                ; $5509: $18 $11

    nop                                           ; $550b: $00
    adc l                                         ; $550c: $8d
    rlca                                          ; $550d: $07
    nop                                           ; $550e: $00
    inc bc                                        ; $550f: $03
    nop                                           ; $5510: $00
    ld a, [de]                                    ; $5511: $1a
    nop                                           ; $5512: $00
    inc b                                         ; $5513: $04
    nop                                           ; $5514: $00
    inc b                                         ; $5515: $04
    nop                                           ; $5516: $00
    inc e                                         ; $5517: $1c
    nop                                           ; $5518: $00
    jr jr_0db_552e                                ; $5519: $18 $13

    nop                                           ; $551b: $00

jr_0db_551c:
    rst $38                                       ; $551c: $ff
    dec c                                         ; $551d: $0d
    inc b                                         ; $551e: $04
    ld sp, hl                                     ; $551f: $f9
    rlca                                          ; $5520: $07
    di                                            ; $5521: $f3
    ld [bc], a                                    ; $5522: $02
    db $eb                                        ; $5523: $eb
    ei                                            ; $5524: $fb
    db $ec                                        ; $5525: $ec
    cp $fb                                        ; $5526: $fe $fb
    ld a, [$fcfb]                                 ; $5528: $fa $fb $fc
    or c                                          ; $552b: $b1
    add hl, de                                    ; $552c: $19
    nop                                           ; $552d: $00

jr_0db_552e:
    ld e, $00                                     ; $552e: $1e $00
    ld h, c                                       ; $5530: $61
    nop                                           ; $5531: $00
    ld h, b                                       ; $5532: $60
    nop                                           ; $5533: $00
    sub c                                         ; $5534: $91
    nop                                           ; $5535: $00
    add [hl]                                      ; $5536: $86
    nop                                           ; $5537: $00
    ld b, l                                       ; $5538: $45
    nop                                           ; $5539: $00
    ld c, l                                       ; $553a: $4d
    nop                                           ; $553b: $00
    inc [hl]                                      ; $553c: $34
    nop                                           ; $553d: $00
    rra                                           ; $553e: $1f
    nop                                           ; $553f: $00
    daa                                           ; $5540: $27
    nop                                           ; $5541: $00
    ld l, d                                       ; $5542: $6a
    nop                                           ; $5543: $00
    push de                                       ; $5544: $d5
    nop                                           ; $5545: $00
    ld d, e                                       ; $5546: $53
    nop                                           ; $5547: $00
    dec [hl]                                      ; $5548: $35
    nop                                           ; $5549: $00
    ld [hl], e                                    ; $554a: $73
    nop                                           ; $554b: $00
    inc b                                         ; $554c: $04
    nop                                           ; $554d: $00
    rlca                                          ; $554e: $07
    nop                                           ; $554f: $00
    ld [bc], a                                    ; $5550: $02
    nop                                           ; $5551: $00
    inc b                                         ; $5552: $04
    nop                                           ; $5553: $00
    ld b, $00                                     ; $5554: $06 $00
    inc b                                         ; $5556: $04
    nop                                           ; $5557: $00
    ld [bc], a                                    ; $5558: $02
    nop                                           ; $5559: $00
    ld b, $00                                     ; $555a: $06 $00
    inc b                                         ; $555c: $04
    dec c                                         ; $555d: $0d
    nop                                           ; $555e: $00
    sub c                                         ; $555f: $91
    sbc b                                         ; $5560: $98
    nop                                           ; $5561: $00
    jr nc, jr_0db_5564                            ; $5562: $30 $00

jr_0db_5564:
    inc l                                         ; $5564: $2c
    nop                                           ; $5565: $00
    ld d, l                                       ; $5566: $55
    nop                                           ; $5567: $00
    ld b, d                                       ; $5568: $42
    nop                                           ; $5569: $00
    add h                                         ; $556a: $84
    nop                                           ; $556b: $00
    ret nz                                        ; $556c: $c0

    nop                                           ; $556d: $00
    ld h, a                                       ; $556e: $67
    nop                                           ; $556f: $00
    ccf                                           ; $5570: $3f
    inc de                                        ; $5571: $13
    nop                                           ; $5572: $00
    adc l                                         ; $5573: $8d
    ld [bc], a                                    ; $5574: $02
    nop                                           ; $5575: $00
    inc bc                                        ; $5576: $03
    nop                                           ; $5577: $00
    ld [bc], a                                    ; $5578: $02
    nop                                           ; $5579: $00
    ld [bc], a                                    ; $557a: $02
    nop                                           ; $557b: $00
    ld [bc], a                                    ; $557c: $02
    nop                                           ; $557d: $00
    ld bc, $0200                                  ; $557e: $01 $00 $02
    ld de, $ff00                                  ; $5581: $11 $00 $ff
    dec c                                         ; $5584: $0d
    inc b                                         ; $5585: $04
    ld sp, hl                                     ; $5586: $f9
    rlca                                          ; $5587: $07
    di                                            ; $5588: $f3
    ld [bc], a                                    ; $5589: $02
    db $eb                                        ; $558a: $eb
    ei                                            ; $558b: $fb
    db $ec                                        ; $558c: $ec
    cp $fb                                        ; $558d: $fe $fb
    ld a, [$fefb]                                 ; $558f: $fa $fb $fe
    or c                                          ; $5592: $b1
    add hl, de                                    ; $5593: $19
    nop                                           ; $5594: $00
    ld e, $00                                     ; $5595: $1e $00
    ld h, c                                       ; $5597: $61
    nop                                           ; $5598: $00
    ld h, b                                       ; $5599: $60
    nop                                           ; $559a: $00
    and e                                         ; $559b: $a3
    nop                                           ; $559c: $00
    add h                                         ; $559d: $84
    nop                                           ; $559e: $00
    ld c, d                                       ; $559f: $4a
    nop                                           ; $55a0: $00
    ld c, d                                       ; $55a1: $4a
    nop                                           ; $55a2: $00
    inc [hl]                                      ; $55a3: $34
    nop                                           ; $55a4: $00
    cpl                                           ; $55a5: $2f
    nop                                           ; $55a6: $00
    daa                                           ; $55a7: $27
    nop                                           ; $55a8: $00
    ld l, d                                       ; $55a9: $6a
    nop                                           ; $55aa: $00
    sub $00                                       ; $55ab: $d6 $00
    ld d, e                                       ; $55ad: $53
    nop                                           ; $55ae: $00
    ld d, c                                       ; $55af: $51
    nop                                           ; $55b0: $00
    ld e, d                                       ; $55b1: $5a
    nop                                           ; $55b2: $00
    inc b                                         ; $55b3: $04
    nop                                           ; $55b4: $00
    rlca                                          ; $55b5: $07
    nop                                           ; $55b6: $00
    ld [bc], a                                    ; $55b7: $02
    nop                                           ; $55b8: $00
    inc b                                         ; $55b9: $04
    nop                                           ; $55ba: $00
    ld b, $00                                     ; $55bb: $06 $00
    ld [bc], a                                    ; $55bd: $02
    nop                                           ; $55be: $00
    ld [bc], a                                    ; $55bf: $02
    nop                                           ; $55c0: $00
    ld b, $00                                     ; $55c1: $06 $00
    inc b                                         ; $55c3: $04
    add hl, bc                                    ; $55c4: $09
    nop                                           ; $55c5: $00
    sub l                                         ; $55c6: $95
    ld [bc], a                                    ; $55c7: $02
    nop                                           ; $55c8: $00
    rlca                                          ; $55c9: $07
    nop                                           ; $55ca: $00
    ld h, [hl]                                    ; $55cb: $66
    nop                                           ; $55cc: $00
    jr nz, jr_0db_55cf                            ; $55cd: $20 $00

jr_0db_55cf:
    inc hl                                        ; $55cf: $23
    nop                                           ; $55d0: $00
    jr nz, jr_0db_55d3                            ; $55d1: $20 $00

jr_0db_55d3:
    ld b, l                                       ; $55d3: $45
    nop                                           ; $55d4: $00
    ld c, b                                       ; $55d5: $48
    nop                                           ; $55d6: $00
    db $d3                                        ; $55d7: $d3
    nop                                           ; $55d8: $00
    adc h                                         ; $55d9: $8c
    nop                                           ; $55da: $00
    ld a, [hl]                                    ; $55db: $7e
    inc de                                        ; $55dc: $13
    nop                                           ; $55dd: $00
    adc e                                         ; $55de: $8b
    inc c                                         ; $55df: $0c
    nop                                           ; $55e0: $00
    ld a, [bc]                                    ; $55e1: $0a
    nop                                           ; $55e2: $00
    ld bc, $0700                                  ; $55e3: $01 $00 $07
    nop                                           ; $55e6: $00
    ld c, $00                                     ; $55e7: $0e $00
    ld [$0013], sp                                ; $55e9: $08 $13 $00
    rst $38                                       ; $55ec: $ff
    dec c                                         ; $55ed: $0d
    inc b                                         ; $55ee: $04
    ld sp, hl                                     ; $55ef: $f9
    rlca                                          ; $55f0: $07
    di                                            ; $55f1: $f3
    ld [bc], a                                    ; $55f2: $02
    db $ec                                        ; $55f3: $ec
    ei                                            ; $55f4: $fb
    db $ec                                        ; $55f5: $ec
    cp $fc                                        ; $55f6: $fe $fc
    ei                                            ; $55f8: $fb
    db $fc                                        ; $55f9: $fc
    cp $b3                                        ; $55fa: $fe $b3
    inc e                                         ; $55fc: $1c
    nop                                           ; $55fd: $00
    dec hl                                        ; $55fe: $2b
    nop                                           ; $55ff: $00

Jump_0db_5600:
    ld b, c                                       ; $5600: $41
    nop                                           ; $5601: $00
    and b                                         ; $5602: $a0
    nop                                           ; $5603: $00
    and e                                         ; $5604: $a3
    nop                                           ; $5605: $00
    ld c, h                                       ; $5606: $4c
    nop                                           ; $5607: $00
    ld c, d                                       ; $5608: $4a
    nop                                           ; $5609: $00
    ld c, d                                       ; $560a: $4a
    nop                                           ; $560b: $00
    dec [hl]                                      ; $560c: $35
    nop                                           ; $560d: $00
    ld l, $00                                     ; $560e: $2e $00
    rst $00                                       ; $5610: $c7
    nop                                           ; $5611: $00
    ld [$5700], a                                 ; $5612: $ea $00 $57
    nop                                           ; $5615: $00
    dec [hl]                                      ; $5616: $35
    nop                                           ; $5617: $00
    ld d, e                                       ; $5618: $53
    nop                                           ; $5619: $00
    ld e, d                                       ; $561a: $5a
    nop                                           ; $561b: $00
    inc b                                         ; $561c: $04
    nop                                           ; $561d: $00
    rlca                                          ; $561e: $07
    nop                                           ; $561f: $00
    ld [bc], a                                    ; $5620: $02
    nop                                           ; $5621: $00
    ld [bc], a                                    ; $5622: $02
    nop                                           ; $5623: $00
    inc b                                         ; $5624: $04
    nop                                           ; $5625: $00
    ld b, $00                                     ; $5626: $06 $00
    ld [bc], a                                    ; $5628: $02
    nop                                           ; $5629: $00
    ld [bc], a                                    ; $562a: $02
    nop                                           ; $562b: $00
    ld b, $00                                     ; $562c: $06 $00
    inc b                                         ; $562e: $04
    dec bc                                        ; $562f: $0b
    nop                                           ; $5630: $00
    adc a                                         ; $5631: $8f
    inc b                                         ; $5632: $04
    nop                                           ; $5633: $00
    ld c, l                                       ; $5634: $4d
    nop                                           ; $5635: $00
    ld c, [hl]                                    ; $5636: $4e
    nop                                           ; $5637: $00
    ld c, d                                       ; $5638: $4a
    nop                                           ; $5639: $00
    ret z                                         ; $563a: $c8

    nop                                           ; $563b: $00
    pop bc                                        ; $563c: $c1
    nop                                           ; $563d: $00
    sub a                                         ; $563e: $97
    nop                                           ; $563f: $00
    ld a, b                                       ; $5640: $78
    inc de                                        ; $5641: $13
    nop                                           ; $5642: $00
    adc e                                         ; $5643: $8b
    ld b, $00                                     ; $5644: $06 $00
    inc b                                         ; $5646: $04
    nop                                           ; $5647: $00
    inc b                                         ; $5648: $04
    nop                                           ; $5649: $00
    ld [bc], a                                    ; $564a: $02
    nop                                           ; $564b: $00
    rlca                                          ; $564c: $07
    nop                                           ; $564d: $00
    ld b, $15                                     ; $564e: $06 $15
    nop                                           ; $5650: $00
    rst $38                                       ; $5651: $ff
    dec c                                         ; $5652: $0d
    inc b                                         ; $5653: $04
    ld sp, hl                                     ; $5654: $f9
    rlca                                          ; $5655: $07
    di                                            ; $5656: $f3
    ld [bc], a                                    ; $5657: $02
    db $ec                                        ; $5658: $ec
    ei                                            ; $5659: $fb
    db $ed                                        ; $565a: $ed
    cp $fc                                        ; $565b: $fe $fc
    ei                                            ; $565d: $fb
    db $fc                                        ; $565e: $fc
    db $fd                                        ; $565f: $fd
    or c                                          ; $5660: $b1
    add hl, de                                    ; $5661: $19
    nop                                           ; $5662: $00
    ld e, $00                                     ; $5663: $1e $00
    ld h, c                                       ; $5665: $61
    nop                                           ; $5666: $00
    ld h, b                                       ; $5667: $60
    nop                                           ; $5668: $00
    and e                                         ; $5669: $a3
    nop                                           ; $566a: $00
    add h                                         ; $566b: $84
    nop                                           ; $566c: $00
    ld b, l                                       ; $566d: $45
    nop                                           ; $566e: $00
    ld c, l                                       ; $566f: $4d
    nop                                           ; $5670: $00
    inc [hl]                                      ; $5671: $34
    nop                                           ; $5672: $00
    cpl                                           ; $5673: $2f
    nop                                           ; $5674: $00
    daa                                           ; $5675: $27
    nop                                           ; $5676: $00
    ld l, d                                       ; $5677: $6a
    nop                                           ; $5678: $00
    push de                                       ; $5679: $d5
    nop                                           ; $567a: $00
    ld d, e                                       ; $567b: $53
    nop                                           ; $567c: $00
    ld h, l                                       ; $567d: $65
    nop                                           ; $567e: $00
    ld [hl], e                                    ; $567f: $73
    nop                                           ; $5680: $00
    inc b                                         ; $5681: $04
    nop                                           ; $5682: $00
    rlca                                          ; $5683: $07
    nop                                           ; $5684: $00
    ld [bc], a                                    ; $5685: $02
    nop                                           ; $5686: $00
    inc b                                         ; $5687: $04
    nop                                           ; $5688: $00
    ld b, $00                                     ; $5689: $06 $00
    ld [bc], a                                    ; $568b: $02
    nop                                           ; $568c: $00
    ld [bc], a                                    ; $568d: $02
    nop                                           ; $568e: $00
    ld b, $00                                     ; $568f: $06 $00
    inc b                                         ; $5691: $04
    dec c                                         ; $5692: $0d
    nop                                           ; $5693: $00
    adc a                                         ; $5694: $8f
    sbc b                                         ; $5695: $98
    nop                                           ; $5696: $00
    ld b, b                                       ; $5697: $40
    nop                                           ; $5698: $00
    ld e, e                                       ; $5699: $5b
    nop                                           ; $569a: $00
    ld l, d                                       ; $569b: $6a
    nop                                           ; $569c: $00
    and h                                         ; $569d: $a4
    nop                                           ; $569e: $00
    add c                                         ; $569f: $81
    nop                                           ; $56a0: $00
    call Call_0db_7e00                            ; $56a1: $cd $00 $7e
    dec d                                         ; $56a4: $15
    nop                                           ; $56a5: $00
    adc c                                         ; $56a6: $89
    ld [bc], a                                    ; $56a7: $02
    nop                                           ; $56a8: $00
    ld [bc], a                                    ; $56a9: $02
    nop                                           ; $56aa: $00
    ld [bc], a                                    ; $56ab: $02
    nop                                           ; $56ac: $00
    ld [bc], a                                    ; $56ad: $02
    nop                                           ; $56ae: $00
    inc bc                                        ; $56af: $03
    dec d                                         ; $56b0: $15
    nop                                           ; $56b1: $00
    rst $38                                       ; $56b2: $ff
    dec c                                         ; $56b3: $0d
    inc b                                         ; $56b4: $04
    ld sp, hl                                     ; $56b5: $f9
    rlca                                          ; $56b6: $07
    di                                            ; $56b7: $f3
    ld [bc], a                                    ; $56b8: $02
    db $eb                                        ; $56b9: $eb
    ei                                            ; $56ba: $fb
    db $ec                                        ; $56bb: $ec
    cp $fb                                        ; $56bc: $fe $fb
    ld a, [$fdfb]                                 ; $56be: $fa $fb $fd
    or c                                          ; $56c1: $b1
    add hl, de                                    ; $56c2: $19
    nop                                           ; $56c3: $00
    ld e, $00                                     ; $56c4: $1e $00
    ld h, c                                       ; $56c6: $61
    nop                                           ; $56c7: $00
    ld h, b                                       ; $56c8: $60
    nop                                           ; $56c9: $00
    sub c                                         ; $56ca: $91
    nop                                           ; $56cb: $00
    add d                                         ; $56cc: $82
    nop                                           ; $56cd: $00
    ld b, l                                       ; $56ce: $45
    nop                                           ; $56cf: $00
    ld c, l                                       ; $56d0: $4d
    nop                                           ; $56d1: $00
    ld [hl], $00                                  ; $56d2: $36 $00
    cpl                                           ; $56d4: $2f
    nop                                           ; $56d5: $00
    daa                                           ; $56d6: $27
    nop                                           ; $56d7: $00
    ld l, d                                       ; $56d8: $6a
    nop                                           ; $56d9: $00
    sub $00                                       ; $56da: $d6 $00
    db $d3                                        ; $56dc: $d3
    nop                                           ; $56dd: $00
    ld h, l                                       ; $56de: $65
    nop                                           ; $56df: $00
    ld h, e                                       ; $56e0: $63
    nop                                           ; $56e1: $00
    inc b                                         ; $56e2: $04
    nop                                           ; $56e3: $00
    rlca                                          ; $56e4: $07
    nop                                           ; $56e5: $00
    ld [bc], a                                    ; $56e6: $02
    nop                                           ; $56e7: $00
    inc b                                         ; $56e8: $04
    nop                                           ; $56e9: $00
    ld b, $00                                     ; $56ea: $06 $00
    inc b                                         ; $56ec: $04
    nop                                           ; $56ed: $00
    ld [bc], a                                    ; $56ee: $02
    nop                                           ; $56ef: $00
    ld b, $00                                     ; $56f0: $06 $00
    inc b                                         ; $56f2: $04
    dec c                                         ; $56f3: $0d
    nop                                           ; $56f4: $00
    sub c                                         ; $56f5: $91
    sbc b                                         ; $56f6: $98
    nop                                           ; $56f7: $00
    jr nc, jr_0db_56fa                            ; $56f8: $30 $00

jr_0db_56fa:
    jr c, jr_0db_56fc                             ; $56fa: $38 $00

jr_0db_56fc:
    ld l, e                                       ; $56fc: $6b
    nop                                           ; $56fd: $00
    ld b, c                                       ; $56fe: $41
    nop                                           ; $56ff: $00
    add b                                         ; $5700: $80
    nop                                           ; $5701: $00
    jp Jump_0db_6700                              ; $5702: $c3 $00 $67


    nop                                           ; $5705: $00
    jr c, jr_0db_571b                             ; $5706: $38 $13

    nop                                           ; $5708: $00
    adc e                                         ; $5709: $8b
    ld b, $00                                     ; $570a: $06 $00
    ld b, $00                                     ; $570c: $06 $00
    inc b                                         ; $570e: $04
    nop                                           ; $570f: $00
    ld [bc], a                                    ; $5710: $02
    nop                                           ; $5711: $00
    dec b                                         ; $5712: $05
    nop                                           ; $5713: $00
    ld b, $13                                     ; $5714: $06 $13
    nop                                           ; $5716: $00
    rst $38                                       ; $5717: $ff
    dec c                                         ; $5718: $0d
    inc b                                         ; $5719: $04
    ld sp, hl                                     ; $571a: $f9

jr_0db_571b:
    rlca                                          ; $571b: $07
    di                                            ; $571c: $f3
    ld [bc], a                                    ; $571d: $02
    db $eb                                        ; $571e: $eb
    ei                                            ; $571f: $fb
    db $ec                                        ; $5720: $ec
    cp $fb                                        ; $5721: $fe $fb
    ld a, [$fffb]                                 ; $5723: $fa $fb $ff
    or c                                          ; $5726: $b1
    ld [de], a                                    ; $5727: $12
    nop                                           ; $5728: $00
    dec a                                         ; $5729: $3d
    nop                                           ; $572a: $00
    ret nz                                        ; $572b: $c0

    nop                                           ; $572c: $00
    ld [hl], b                                    ; $572d: $70
    nop                                           ; $572e: $00
    ld c, c                                       ; $572f: $49
    nop                                           ; $5730: $00
    add d                                         ; $5731: $82
    nop                                           ; $5732: $00
    add [hl]                                      ; $5733: $86
    nop                                           ; $5734: $00
    ld b, [hl]                                    ; $5735: $46
    nop                                           ; $5736: $00
    ld a, [hl-]                                   ; $5737: $3a
    nop                                           ; $5738: $00
    daa                                           ; $5739: $27
    nop                                           ; $573a: $00
    daa                                           ; $573b: $27
    nop                                           ; $573c: $00
    ld l, d                                       ; $573d: $6a
    nop                                           ; $573e: $00
    sub $00                                       ; $573f: $d6 $00
    ld h, e                                       ; $5741: $63
    nop                                           ; $5742: $00
    push hl                                       ; $5743: $e5
    nop                                           ; $5744: $00
    jp Jump_000_0400                              ; $5745: $c3 $00 $04


    nop                                           ; $5748: $00
    rlca                                          ; $5749: $07
    nop                                           ; $574a: $00
    ld [bc], a                                    ; $574b: $02
    nop                                           ; $574c: $00
    inc b                                         ; $574d: $04
    nop                                           ; $574e: $00
    ld b, $00                                     ; $574f: $06 $00
    inc b                                         ; $5751: $04
    nop                                           ; $5752: $00
    inc b                                         ; $5753: $04
    nop                                           ; $5754: $00
    ld b, $00                                     ; $5755: $06 $00
    inc b                                         ; $5757: $04
    dec c                                         ; $5758: $0d
    nop                                           ; $5759: $00
    sub c                                         ; $575a: $91
    inc d                                         ; $575b: $14
    nop                                           ; $575c: $00
    ldh [rP1], a                                  ; $575d: $e0 $00
    or c                                          ; $575f: $b1
    nop                                           ; $5760: $00
    ld l, c                                       ; $5761: $69
    nop                                           ; $5762: $00
    add [hl]                                      ; $5763: $86
    nop                                           ; $5764: $00
    jp nz, $c000                                  ; $5765: $c2 $00 $c0

    nop                                           ; $5768: $00
    ld h, d                                       ; $5769: $62
    nop                                           ; $576a: $00
    dec a                                         ; $576b: $3d
    inc de                                        ; $576c: $13
    nop                                           ; $576d: $00
    adc l                                         ; $576e: $8d
    ld [$1000], sp                                ; $576f: $08 $00 $10
    nop                                           ; $5772: $00
    ld [$0700], sp                                ; $5773: $08 $00 $07
    nop                                           ; $5776: $00
    rlca                                          ; $5777: $07
    nop                                           ; $5778: $00
    ld c, $00                                     ; $5779: $0e $00
    jr jr_0db_578e                                ; $577b: $18 $11

    nop                                           ; $577d: $00
    rst $38                                       ; $577e: $ff
    dec c                                         ; $577f: $0d
    inc b                                         ; $5780: $04
    ld sp, hl                                     ; $5781: $f9
    rlca                                          ; $5782: $07
    di                                            ; $5783: $f3
    ld [bc], a                                    ; $5784: $02
    db $ec                                        ; $5785: $ec
    ei                                            ; $5786: $fb
    db $ed                                        ; $5787: $ed
    cp $fc                                        ; $5788: $fe $fc
    ld a, [$fffc]                                 ; $578a: $fa $fc $ff
    or c                                          ; $578d: $b1

jr_0db_578e:
    add hl, de                                    ; $578e: $19
    nop                                           ; $578f: $00
    ld [hl], $00                                  ; $5790: $36 $00
    ret nz                                        ; $5792: $c0

    nop                                           ; $5793: $00
    ld [hl], b                                    ; $5794: $70
    nop                                           ; $5795: $00
    adc c                                         ; $5796: $89
    nop                                           ; $5797: $00
    add d                                         ; $5798: $82
    nop                                           ; $5799: $00
    ld b, [hl]                                    ; $579a: $46
    nop                                           ; $579b: $00
    ld b, [hl]                                    ; $579c: $46
    nop                                           ; $579d: $00
    ld a, [hl-]                                   ; $579e: $3a
    nop                                           ; $579f: $00
    rla                                           ; $57a0: $17
    nop                                           ; $57a1: $00
    db $e3                                        ; $57a2: $e3
    nop                                           ; $57a3: $00
    xor $00                                       ; $57a4: $ee $00
    ld d, e                                       ; $57a6: $53
    nop                                           ; $57a7: $00
    ld [hl], l                                    ; $57a8: $75
    nop                                           ; $57a9: $00
    ld h, e                                       ; $57aa: $63
    nop                                           ; $57ab: $00
    db $e3                                        ; $57ac: $e3
    nop                                           ; $57ad: $00
    rlca                                          ; $57ae: $07
    nop                                           ; $57af: $00
    ld b, $00                                     ; $57b0: $06 $00
    inc b                                         ; $57b2: $04
    nop                                           ; $57b3: $00
    inc b                                         ; $57b4: $04
    nop                                           ; $57b5: $00
    ld b, $00                                     ; $57b6: $06 $00
    inc b                                         ; $57b8: $04
    nop                                           ; $57b9: $00
    inc b                                         ; $57ba: $04
    nop                                           ; $57bb: $00
    ld b, $00                                     ; $57bc: $06 $00
    inc b                                         ; $57be: $04
    dec c                                         ; $57bf: $0d
    nop                                           ; $57c0: $00
    adc a                                         ; $57c1: $8f
    jr jr_0db_57c4                                ; $57c2: $18 $00

jr_0db_57c4:
    ld [hl], b                                    ; $57c4: $70
    nop                                           ; $57c5: $00
    or c                                          ; $57c6: $b1
    nop                                           ; $57c7: $00
    ld l, d                                       ; $57c8: $6a
    nop                                           ; $57c9: $00
    ld b, [hl]                                    ; $57ca: $46
    nop                                           ; $57cb: $00
    call nz, $c400                                ; $57cc: $c4 $00 $c4
    nop                                           ; $57cf: $00
    ld a, e                                       ; $57d0: $7b
    dec d                                         ; $57d1: $15
    nop                                           ; $57d2: $00
    adc e                                         ; $57d3: $8b
    ld [$1000], sp                                ; $57d4: $08 $00 $10
    nop                                           ; $57d7: $00
    ld [$0600], sp                                ; $57d8: $08 $00 $06
    nop                                           ; $57db: $00
    dec e                                         ; $57dc: $1d
    nop                                           ; $57dd: $00
    ld e, $13                                     ; $57de: $1e $13
    nop                                           ; $57e0: $00
    rst $38                                       ; $57e1: $ff
    dec c                                         ; $57e2: $0d
    inc b                                         ; $57e3: $04
    ld sp, hl                                     ; $57e4: $f9
    rlca                                          ; $57e5: $07
    di                                            ; $57e6: $f3
    ld [bc], a                                    ; $57e7: $02
    db $ec                                        ; $57e8: $ec
    ei                                            ; $57e9: $fb
    db $ed                                        ; $57ea: $ed
    cp $fc                                        ; $57eb: $fe $fc
    ld a, [$fefc]                                 ; $57ed: $fa $fc $fe
    or c                                          ; $57f0: $b1
    ld [de], a                                    ; $57f1: $12
    nop                                           ; $57f2: $00
    dec a                                         ; $57f3: $3d
    nop                                           ; $57f4: $00
    ret nz                                        ; $57f5: $c0

    nop                                           ; $57f6: $00
    ld [hl], b                                    ; $57f7: $70
    nop                                           ; $57f8: $00
    ld c, c                                       ; $57f9: $49
    nop                                           ; $57fa: $00
    add d                                         ; $57fb: $82
    nop                                           ; $57fc: $00
    add l                                         ; $57fd: $85
    nop                                           ; $57fe: $00
    ld b, l                                       ; $57ff: $45
    nop                                           ; $5800: $00
    ld a, [hl-]                                   ; $5801: $3a
    nop                                           ; $5802: $00
    rla                                           ; $5803: $17
    nop                                           ; $5804: $00
    daa                                           ; $5805: $27
    nop                                           ; $5806: $00
    ld l, d                                       ; $5807: $6a
    nop                                           ; $5808: $00
    push de                                       ; $5809: $d5
    nop                                           ; $580a: $00
    ld d, e                                       ; $580b: $53
    nop                                           ; $580c: $00
    ld d, l                                       ; $580d: $55
    nop                                           ; $580e: $00
    ld [hl], e                                    ; $580f: $73
    nop                                           ; $5810: $00
    inc b                                         ; $5811: $04
    nop                                           ; $5812: $00
    rlca                                          ; $5813: $07
    nop                                           ; $5814: $00
    ld [bc], a                                    ; $5815: $02
    nop                                           ; $5816: $00
    inc b                                         ; $5817: $04
    nop                                           ; $5818: $00
    ld b, $00                                     ; $5819: $06 $00
    inc b                                         ; $581b: $04
    nop                                           ; $581c: $00
    inc b                                         ; $581d: $04
    nop                                           ; $581e: $00
    ld b, $00                                     ; $581f: $06 $00
    inc b                                         ; $5821: $04
    dec c                                         ; $5822: $0d
    nop                                           ; $5823: $00
    adc a                                         ; $5824: $8f
    sbc b                                         ; $5825: $98
    nop                                           ; $5826: $00
    jr nc, jr_0db_5829                            ; $5827: $30 $00

jr_0db_5829:
    dec l                                         ; $5829: $2d
    nop                                           ; $582a: $00
    ld d, l                                       ; $582b: $55
    nop                                           ; $582c: $00
    ld b, d                                       ; $582d: $42
    nop                                           ; $582e: $00
    add b                                         ; $582f: $80
    nop                                           ; $5830: $00
    pop bc                                        ; $5831: $c1
    nop                                           ; $5832: $00
    ld a, a                                       ; $5833: $7f
    dec d                                         ; $5834: $15
    nop                                           ; $5835: $00
    adc e                                         ; $5836: $8b
    ld [$0c00], sp                                ; $5837: $08 $00 $0c
    nop                                           ; $583a: $00
    ld [$0400], sp                                ; $583b: $08 $00 $04
    nop                                           ; $583e: $00
    rrca                                          ; $583f: $0f
    nop                                           ; $5840: $00
    ld c, $13                                     ; $5841: $0e $13
    nop                                           ; $5843: $00
    rst $38                                       ; $5844: $ff
    dec c                                         ; $5845: $0d
    inc b                                         ; $5846: $04
    ld sp, hl                                     ; $5847: $f9
    rlca                                          ; $5848: $07
    di                                            ; $5849: $f3
    ld [bc], a                                    ; $584a: $02
    db $eb                                        ; $584b: $eb
    ei                                            ; $584c: $fb
    db $ec                                        ; $584d: $ec
    cp $fb                                        ; $584e: $fe $fb
    ei                                            ; $5850: $fb
    ei                                            ; $5851: $fb
    db $fd                                        ; $5852: $fd
    or c                                          ; $5853: $b1
    add hl, de                                    ; $5854: $19
    nop                                           ; $5855: $00
    ld e, $00                                     ; $5856: $1e $00
    ld h, c                                       ; $5858: $61
    nop                                           ; $5859: $00
    ld h, b                                       ; $585a: $60
    nop                                           ; $585b: $00
    sub c                                         ; $585c: $91
    nop                                           ; $585d: $00
    add d                                         ; $585e: $82
    nop                                           ; $585f: $00
    ld b, l                                       ; $5860: $45
    nop                                           ; $5861: $00
    ld c, l                                       ; $5862: $4d

jr_0db_5863:
    nop                                           ; $5863: $00
    ld [hl], $00                                  ; $5864: $36 $00
    cpl                                           ; $5866: $2f
    nop                                           ; $5867: $00
    daa                                           ; $5868: $27
    nop                                           ; $5869: $00
    ld l, d                                       ; $586a: $6a
    nop                                           ; $586b: $00
    sub $00                                       ; $586c: $d6 $00
    db $d3                                        ; $586e: $d3
    nop                                           ; $586f: $00
    ld d, l                                       ; $5870: $55
    nop                                           ; $5871: $00
    dec sp                                        ; $5872: $3b
    nop                                           ; $5873: $00
    inc b                                         ; $5874: $04
    nop                                           ; $5875: $00
    rlca                                          ; $5876: $07
    nop                                           ; $5877: $00
    ld [bc], a                                    ; $5878: $02
    nop                                           ; $5879: $00
    inc b                                         ; $587a: $04
    nop                                           ; $587b: $00
    ld b, $00                                     ; $587c: $06 $00
    inc b                                         ; $587e: $04
    nop                                           ; $587f: $00
    ld [bc], a                                    ; $5880: $02
    nop                                           ; $5881: $00
    ld b, $00                                     ; $5882: $06 $00
    inc b                                         ; $5884: $04
    dec c                                         ; $5885: $0d
    nop                                           ; $5886: $00
    sub c                                         ; $5887: $91
    db $e4                                        ; $5888: $e4
    nop                                           ; $5889: $00
    ld b, b                                       ; $588a: $40
    nop                                           ; $588b: $00
    ld c, l                                       ; $588c: $4d
    nop                                           ; $588d: $00
    ld d, [hl]                                    ; $588e: $56
    nop                                           ; $588f: $00
    ld c, b                                       ; $5890: $48
    nop                                           ; $5891: $00
    adc e                                         ; $5892: $8b
    nop                                           ; $5893: $00
    pop bc                                        ; $5894: $c1
    nop                                           ; $5895: $00
    sbc l                                         ; $5896: $9d
    nop                                           ; $5897: $00
    ld a, [hl]                                    ; $5898: $7e
    inc de                                        ; $5899: $13
    nop                                           ; $589a: $00
    add a                                         ; $589b: $87
    inc bc                                        ; $589c: $03
    nop                                           ; $589d: $00
    ld [bc], a                                    ; $589e: $02
    nop                                           ; $589f: $00
    ld [bc], a                                    ; $58a0: $02
    nop                                           ; $58a1: $00
    ld [bc], a                                    ; $58a2: $02
    rla                                           ; $58a3: $17
    nop                                           ; $58a4: $00
    rst $38                                       ; $58a5: $ff
    dec c                                         ; $58a6: $0d
    inc b                                         ; $58a7: $04
    ld sp, hl                                     ; $58a8: $f9
    rlca                                          ; $58a9: $07
    ld a, [c]                                     ; $58aa: $f2
    ld bc, $fae3                                  ; $58ab: $01 $e3 $fa
    db $e4                                        ; $58ae: $e4
    nop                                           ; $58af: $00
    di                                            ; $58b0: $f3
    ld a, [$fff3]                                 ; $58b1: $fa $f3 $ff
    ld [bc], a                                    ; $58b4: $02
    cpl                                           ; $58b5: $2f
    adc d                                         ; $58b6: $8a
    dec a                                         ; $58b7: $3d
    ccf                                           ; $58b8: $3f
    ld e, a                                       ; $58b9: $5f
    ld a, a                                       ; $58ba: $7f
    ld e, a                                       ; $58bb: $5f
    ld a, a                                       ; $58bc: $7f
    ld a, d                                       ; $58bd: $7a
    ld a, a                                       ; $58be: $7f
    dec a                                         ; $58bf: $3d
    ccf                                           ; $58c0: $3f
    inc bc                                        ; $58c1: $03
    ld a, a                                       ; $58c2: $7f
    add c                                         ; $58c3: $81
    ld e, a                                       ; $58c4: $5f
    ld [bc], a                                    ; $58c5: $02
    ccf                                           ; $58c6: $3f
    ld [bc], a                                    ; $58c7: $02
    ld de, $2002                                  ; $58c8: $11 $02 $20
    ld [bc], a                                    ; $58cb: $02
    ld l, b                                       ; $58cc: $68
    ld [bc], a                                    ; $58cd: $02
    ld [hl], b                                    ; $58ce: $70
    ld [bc], a                                    ; $58cf: $02
    ld l, b                                       ; $58d0: $68
    add d                                         ; $58d1: $82
    or d                                          ; $58d2: $b2
    ld a, [c]                                     ; $58d3: $f2
    ld [bc], a                                    ; $58d4: $02
    ldh a, [rSC]                                  ; $58d5: $f0 $02
    jr c, jr_0db_58db                             ; $58d7: $38 $02

    inc a                                         ; $58d9: $3c
    add h                                         ; $58da: $84

jr_0db_58db:
    jr jr_0db_5915                                ; $58db: $18 $38

    inc l                                         ; $58dd: $2c
    inc a                                         ; $58de: $3c
    ld [bc], a                                    ; $58df: $02
    jr c, jr_0db_5863                             ; $58e0: $38 $81

    inc l                                         ; $58e2: $2c
    ld [bc], a                                    ; $58e3: $02
    inc a                                         ; $58e4: $3c
    add c                                         ; $58e5: $81
    inc [hl]                                      ; $58e6: $34
    ld [bc], a                                    ; $58e7: $02
    jr c, jr_0db_58ec                             ; $58e8: $38 $02

    db $10                                        ; $58ea: $10
    ld [bc], a                                    ; $58eb: $02

jr_0db_58ec:
    ld [$0c02], sp                                ; $58ec: $08 $02 $0c
    ld [bc], a                                    ; $58ef: $02
    inc b                                         ; $58f0: $04
    ld [bc], a                                    ; $58f1: $02
    inc h                                         ; $58f2: $24
    add d                                         ; $58f3: $82
    ld a, [hl+]                                   ; $58f4: $2a
    ld l, $02                                     ; $58f5: $2e $02
    ld d, $82                                     ; $58f7: $16 $82
    rrca                                          ; $58f9: $0f
    dec c                                         ; $58fa: $0d
    ld [bc], a                                    ; $58fb: $02
    add sp, -$70                                  ; $58fc: $e8 $90
    push af                                       ; $58fe: $f5
    or l                                          ; $58ff: $b5
    rst $28                                       ; $5900: $ef
    rst $38                                       ; $5901: $ff
    ld e, b                                       ; $5902: $58
    ld a, a                                       ; $5903: $7f
    ld e, h                                       ; $5904: $5c
    ld a, a                                       ; $5905: $7f
    ld e, a                                       ; $5906: $5f
    ld a, a                                       ; $5907: $7f
    sbc a                                         ; $5908: $9f
    rst $38                                       ; $5909: $ff
    sbc a                                         ; $590a: $9f
    rst $38                                       ; $590b: $ff
    cp a                                          ; $590c: $bf
    rst $38                                       ; $590d: $ff
    ld [bc], a                                    ; $590e: $02
    ld e, a                                       ; $590f: $5f
    ld [bc], a                                    ; $5910: $02
    ccf                                           ; $5911: $3f
    ld [bc], a                                    ; $5912: $02
    ld a, a                                       ; $5913: $7f
    add h                                         ; $5914: $84

jr_0db_5915:
    ld l, a                                       ; $5915: $6f
    ld a, a                                       ; $5916: $7f
    ld a, b                                       ; $5917: $78
    ld a, a                                       ; $5918: $7f
    ld [bc], a                                    ; $5919: $02
    ccf                                           ; $591a: $3f
    inc b                                         ; $591b: $04
    nop                                           ; $591c: $00
    sub b                                         ; $591d: $90
    rrca                                          ; $591e: $0f
    dec c                                         ; $591f: $0d
    rla                                           ; $5920: $17
    rra                                           ; $5921: $1f
    ld a, [bc]                                    ; $5922: $0a
    ld e, $1a                                     ; $5923: $1e $1a
    ld e, $0a                                     ; $5925: $1e $0a
    ld e, $09                                     ; $5927: $1e $09
    rra                                           ; $5929: $1f
    add hl, de                                    ; $592a: $19
    rra                                           ; $592b: $1f
    dec c                                         ; $592c: $0d
    rra                                           ; $592d: $1f
    ld [bc], a                                    ; $592e: $02
    ld a, [de]                                    ; $592f: $1a
    adc b                                         ; $5930: $88
    inc d                                         ; $5931: $14
    inc e                                         ; $5932: $1c
    ld a, [de]                                    ; $5933: $1a
    ld e, $16                                     ; $5934: $1e $16
    ld e, $0e                                     ; $5936: $1e $0e
    ld e, $02                                     ; $5938: $1e $02
    inc e                                         ; $593a: $1c
    ld [bc], a                                    ; $593b: $02
    nop                                           ; $593c: $00
    rst $38                                       ; $593d: $ff
    rlca                                          ; $593e: $07
    ld bc, $08f9                                  ; $593f: $01 $f9 $08
    ld a, [c]                                     ; $5942: $f2
    ld bc, $fdec                                  ; $5943: $01 $ec $fd
    sub d                                         ; $5946: $92
    nop                                           ; $5947: $00
    ld [hl], h                                    ; $5948: $74
    nop                                           ; $5949: $00
    cp $00                                        ; $594a: $fe $00
    cp [hl]                                       ; $594c: $be
    nop                                           ; $594d: $00
    ld a, a                                       ; $594e: $7f
    nop                                           ; $594f: $00
    cp e                                          ; $5950: $bb
    nop                                           ; $5951: $00
    ld l, d                                       ; $5952: $6a
    nop                                           ; $5953: $00
    ld a, l                                       ; $5954: $7d
    nop                                           ; $5955: $00
    cp [hl]                                       ; $5956: $be
    nop                                           ; $5957: $00
    ld d, h                                       ; $5958: $54
    ld c, $00                                     ; $5959: $0e $00
    rst $38                                       ; $595b: $ff
    dec c                                         ; $595c: $0d
    inc b                                         ; $595d: $04
    ld sp, hl                                     ; $595e: $f9
    rlca                                          ; $595f: $07
    ld a, [c]                                     ; $5960: $f2
    ld bc, $fae3                                  ; $5961: $01 $e3 $fa
    db $e3                                        ; $5964: $e3
    rst $38                                       ; $5965: $ff
    di                                            ; $5966: $f3
    ld a, [$fff3]                                 ; $5967: $fa $f3 $ff
    ld [bc], a                                    ; $596a: $02
    rla                                           ; $596b: $17
    adc d                                         ; $596c: $8a
    ld a, $3f                                     ; $596d: $3e $3f
    ld e, a                                       ; $596f: $5f
    ld a, a                                       ; $5970: $7f
    ld a, [hl]                                    ; $5971: $7e
    ld a, a                                       ; $5972: $7f
    ld [hl], l                                    ; $5973: $75
    ld a, a                                       ; $5974: $7f
    dec sp                                        ; $5975: $3b
    ccf                                           ; $5976: $3f
    inc bc                                        ; $5977: $03
    ld a, a                                       ; $5978: $7f
    add c                                         ; $5979: $81
    ld e, a                                       ; $597a: $5f
    ld [bc], a                                    ; $597b: $02
    ccf                                           ; $597c: $3f
    ld [bc], a                                    ; $597d: $02
    ld de, $2002                                  ; $597e: $11 $02 $20
    ld [bc], a                                    ; $5981: $02
    ld l, b                                       ; $5982: $68
    ld [bc], a                                    ; $5983: $02
    ld [hl], b                                    ; $5984: $70
    ld [bc], a                                    ; $5985: $02
    ld l, b                                       ; $5986: $68
    ld [bc], a                                    ; $5987: $02
    ld [hl], d                                    ; $5988: $72
    ld [bc], a                                    ; $5989: $02
    ldh a, [rSC]                                  ; $598a: $f0 $02
    db $10                                        ; $598c: $10
    ld [bc], a                                    ; $598d: $02
    jr jr_0db_5992                                ; $598e: $18 $02

    inc e                                         ; $5990: $1c
    ld [bc], a                                    ; $5991: $02

jr_0db_5992:
    ld e, $82                                     ; $5992: $1e $82
    ld b, $1e                                     ; $5994: $06 $1e
    ld [bc], a                                    ; $5996: $02
    inc e                                         ; $5997: $1c
    ld [bc], a                                    ; $5998: $02
    ld e, $84                                     ; $5999: $1e $84
    ld c, $1a                                     ; $599b: $0e $1a
    inc e                                         ; $599d: $1c
    inc d                                         ; $599e: $14
    ld [bc], a                                    ; $599f: $02
    ld [$0402], sp                                ; $59a0: $08 $02 $04
    ld [bc], a                                    ; $59a3: $02
    ld b, $02                                     ; $59a4: $06 $02
    inc bc                                        ; $59a6: $03
    ld [bc], a                                    ; $59a7: $02
    inc de                                        ; $59a8: $13
    add d                                         ; $59a9: $82
    dec d                                         ; $59aa: $15
    rla                                           ; $59ab: $17
    ld [bc], a                                    ; $59ac: $02
    dec bc                                        ; $59ad: $0b
    ld [bc], a                                    ; $59ae: $02
    add sp, $02                                   ; $59af: $e8 $02
    push af                                       ; $59b1: $f5
    sub b                                         ; $59b2: $90
    rst $38                                       ; $59b3: $ff
    cp a                                          ; $59b4: $bf
    ret c                                         ; $59b5: $d8

    rst $38                                       ; $59b6: $ff
    ld e, h                                       ; $59b7: $5c
    ld a, a                                       ; $59b8: $7f
    sbc a                                         ; $59b9: $9f
    rst $38                                       ; $59ba: $ff
    sbc a                                         ; $59bb: $9f
    rst $38                                       ; $59bc: $ff
    cp a                                          ; $59bd: $bf
    rst $38                                       ; $59be: $ff
    sbc a                                         ; $59bf: $9f
    rst $38                                       ; $59c0: $ff

jr_0db_59c1:
    cp a                                          ; $59c1: $bf
    rst $38                                       ; $59c2: $ff
    ld [bc], a                                    ; $59c3: $02
    ld a, a                                       ; $59c4: $7f
    inc b                                         ; $59c5: $04
    ccf                                           ; $59c6: $3f
    add d                                         ; $59c7: $82
    ld a, $3f                                     ; $59c8: $3e $3f
    ld [bc], a                                    ; $59ca: $02
    rrca                                          ; $59cb: $0f
    ld [bc], a                                    ; $59cc: $02
    nop                                           ; $59cd: $00
    ld [bc], a                                    ; $59ce: $02
    rlca                                          ; $59cf: $07
    ld [bc], a                                    ; $59d0: $02
    rrca                                          ; $59d1: $0f
    sbc b                                         ; $59d2: $98
    ld d, $1e                                     ; $59d3: $16 $1e
    ld a, [bc]                                    ; $59d5: $0a
    ld e, $1a                                     ; $59d6: $1e $1a
    ld e, $09                                     ; $59d8: $1e $09
    rra                                           ; $59da: $1f
    add hl, bc                                    ; $59db: $09
    rra                                           ; $59dc: $1f
    dec e                                         ; $59dd: $1d
    rra                                           ; $59de: $1f
    ld c, $1e                                     ; $59df: $0e $1e
    inc d                                         ; $59e1: $14
    inc e                                         ; $59e2: $1c
    inc d                                         ; $59e3: $14
    inc e                                         ; $59e4: $1c
    ld a, [de]                                    ; $59e5: $1a
    ld e, $16                                     ; $59e6: $1e $16
    ld e, $0e                                     ; $59e8: $1e $0e
    ld e, $02                                     ; $59ea: $1e $02
    inc e                                         ; $59ec: $1c
    ld [bc], a                                    ; $59ed: $02
    nop                                           ; $59ee: $00
    rst $38                                       ; $59ef: $ff
    rlca                                          ; $59f0: $07
    ld bc, $08f9                                  ; $59f1: $01 $f9 $08
    ld a, [c]                                     ; $59f4: $f2
    ld bc, $fdec                                  ; $59f5: $01 $ec $fd
    sub d                                         ; $59f8: $92
    nop                                           ; $59f9: $00
    ld [hl], h                                    ; $59fa: $74
    nop                                           ; $59fb: $00
    cp $00                                        ; $59fc: $fe $00
    cp [hl]                                       ; $59fe: $be
    nop                                           ; $59ff: $00
    ld a, a                                       ; $5a00: $7f
    nop                                           ; $5a01: $00
    cp e                                          ; $5a02: $bb
    nop                                           ; $5a03: $00
    ld l, d                                       ; $5a04: $6a
    nop                                           ; $5a05: $00
    ld a, l                                       ; $5a06: $7d
    nop                                           ; $5a07: $00
    cp [hl]                                       ; $5a08: $be
    nop                                           ; $5a09: $00
    ld d, h                                       ; $5a0a: $54
    ld c, $00                                     ; $5a0b: $0e $00
    rst $38                                       ; $5a0d: $ff
    dec c                                         ; $5a0e: $0d
    inc b                                         ; $5a0f: $04
    ld sp, hl                                     ; $5a10: $f9
    rlca                                          ; $5a11: $07

jr_0db_5a12:
    ld a, [c]                                     ; $5a12: $f2
    ld bc, $fae4                                  ; $5a13: $01 $e4 $fa
    db $e4                                        ; $5a16: $e4
    rst $38                                       ; $5a17: $ff
    db $f4                                        ; $5a18: $f4
    ld a, [$00f4]                                 ; $5a19: $fa $f4 $00
    ld [bc], a                                    ; $5a1c: $02
    inc de                                        ; $5a1d: $13
    ld [bc], a                                    ; $5a1e: $02
    ccf                                           ; $5a1f: $3f
    add l                                         ; $5a20: $85
    ld e, a                                       ; $5a21: $5f
    ld a, a                                       ; $5a22: $7f
    ld a, [hl]                                    ; $5a23: $7e
    ld a, a                                       ; $5a24: $7f
    ld sp, $3f03                                  ; $5a25: $31 $03 $3f
    inc bc                                        ; $5a28: $03
    ld a, a                                       ; $5a29: $7f
    add c                                         ; $5a2a: $81
    ld e, a                                       ; $5a2b: $5f
    ld [bc], a                                    ; $5a2c: $02
    ccf                                           ; $5a2d: $3f
    ld [bc], a                                    ; $5a2e: $02
    ld de, $2002                                  ; $5a2f: $11 $02 $20
    ld [bc], a                                    ; $5a32: $02
    ld l, b                                       ; $5a33: $68
    ld [bc], a                                    ; $5a34: $02
    ld [hl], b                                    ; $5a35: $70
    ld [bc], a                                    ; $5a36: $02
    ld l, d                                       ; $5a37: $6a
    add c                                         ; $5a38: $81
    or b                                          ; $5a39: $b0
    inc bc                                        ; $5a3a: $03
    ldh a, [rSC]                                  ; $5a3b: $f0 $02
    jr jr_0db_59c1                                ; $5a3d: $18 $82

    ld [$0418], sp                                ; $5a3f: $08 $18 $04
    ld e, $82                                     ; $5a42: $1e $82
    ld b, $1e                                     ; $5a44: $06 $1e
    ld [bc], a                                    ; $5a46: $02
    inc e                                         ; $5a47: $1c
    ld [bc], a                                    ; $5a48: $02
    ld e, $84                                     ; $5a49: $1e $84
    ld c, $1a                                     ; $5a4b: $0e $1a
    inc e                                         ; $5a4d: $1c
    inc d                                         ; $5a4e: $14
    ld [bc], a                                    ; $5a4f: $02
    ld [$0402], sp                                ; $5a50: $08 $02 $04
    inc b                                         ; $5a53: $04
    ld [bc], a                                    ; $5a54: $02
    ld [bc], a                                    ; $5a55: $02
    ld [de], a                                    ; $5a56: $12
    add d                                         ; $5a57: $82
    dec c                                         ; $5a58: $0d
    rrca                                          ; $5a59: $0f
    ld [bc], a                                    ; $5a5a: $02
    inc bc                                        ; $5a5b: $03
    ld [bc], a                                    ; $5a5c: $02
    db $ed                                        ; $5a5d: $ed
    sub b                                         ; $5a5e: $90
    rst $38                                       ; $5a5f: $ff
    cp a                                          ; $5a60: $bf
    ldh a, [rIE]                                  ; $5a61: $f0 $ff
    ld e, l                                       ; $5a63: $5d
    ld a, a                                       ; $5a64: $7f
    ld e, a                                       ; $5a65: $5f
    ld a, a                                       ; $5a66: $7f
    sbc a                                         ; $5a67: $9f
    rst $38                                       ; $5a68: $ff
    cp a                                          ; $5a69: $bf
    rst $38                                       ; $5a6a: $ff
    sbc a                                         ; $5a6b: $9f
    rst $38                                       ; $5a6c: $ff
    cp a                                          ; $5a6d: $bf
    rst $38                                       ; $5a6e: $ff
    ld [bc], a                                    ; $5a6f: $02
    ld a, a                                       ; $5a70: $7f
    inc b                                         ; $5a71: $04
    ccf                                           ; $5a72: $3f
    ld [bc], a                                    ; $5a73: $02
    rra                                           ; $5a74: $1f
    ld [bc], a                                    ; $5a75: $02
    rlca                                          ; $5a76: $07
    inc b                                         ; $5a77: $04
    nop                                           ; $5a78: $00
    add d                                         ; $5a79: $82
    ld a, [bc]                                    ; $5a7a: $0a
    ld c, $02                                     ; $5a7b: $0e $02
    ccf                                           ; $5a7d: $3f
    adc a                                         ; $5a7e: $8f
    ld c, $3e                                     ; $5a7f: $0e $3e
    inc [hl]                                      ; $5a81: $34
    inc a                                         ; $5a82: $3c
    inc [hl]                                      ; $5a83: $34
    inc a                                         ; $5a84: $3c
    ld [de], a                                    ; $5a85: $12
    ld a, $12                                     ; $5a86: $3e $12
    ld a, $32                                     ; $5a88: $3e $32
    ld a, $1c                                     ; $5a8a: $3e $1c
    inc a                                         ; $5a8c: $3c
    jr z, jr_0db_5a92                             ; $5a8d: $28 $03

    jr c, jr_0db_5a12                             ; $5a8f: $38 $81

    inc d                                         ; $5a91: $14

jr_0db_5a92:
    inc bc                                        ; $5a92: $03
    inc a                                         ; $5a93: $3c
    ld [bc], a                                    ; $5a94: $02
    jr nc, @+$06                                  ; $5a95: $30 $04

    nop                                           ; $5a97: $00
    rst $38                                       ; $5a98: $ff
    rlca                                          ; $5a99: $07
    ld bc, $08f9                                  ; $5a9a: $01 $f9 $08
    ld a, [c]                                     ; $5a9d: $f2
    ld bc, $fded                                  ; $5a9e: $01 $ed $fd
    sub b                                         ; $5aa1: $90
    nop                                           ; $5aa2: $00
    ld [hl], h                                    ; $5aa3: $74
    nop                                           ; $5aa4: $00
    cp $00                                        ; $5aa5: $fe $00
    cp a                                          ; $5aa7: $bf
    nop                                           ; $5aa8: $00
    ld a, a                                       ; $5aa9: $7f
    nop                                           ; $5aaa: $00
    xor e                                         ; $5aab: $ab
    nop                                           ; $5aac: $00
    ld a, h                                       ; $5aad: $7c
    nop                                           ; $5aae: $00
    ld a, a                                       ; $5aaf: $7f
    nop                                           ; $5ab0: $00
    sub [hl]                                      ; $5ab1: $96
    stop                                          ; $5ab2: $10 $00
    rst $38                                       ; $5ab4: $ff
    dec c                                         ; $5ab5: $0d
    inc b                                         ; $5ab6: $04
    ld sp, hl                                     ; $5ab7: $f9
    rlca                                          ; $5ab8: $07
    ld a, [c]                                     ; $5ab9: $f2
    ld bc, $fae4                                  ; $5aba: $01 $e4 $fa
    db $e4                                        ; $5abd: $e4
    rst $38                                       ; $5abe: $ff
    db $f4                                        ; $5abf: $f4
    ld a, [$00f4]                                 ; $5ac0: $fa $f4 $00
    ld [bc], a                                    ; $5ac3: $02
    rla                                           ; $5ac4: $17
    adc d                                         ; $5ac5: $8a
    ld a, $3f                                     ; $5ac6: $3e $3f
    ld e, a                                       ; $5ac8: $5f
    ld a, a                                       ; $5ac9: $7f
    ld a, [hl]                                    ; $5aca: $7e
    ld a, a                                       ; $5acb: $7f
    ld [hl], l                                    ; $5acc: $75
    ld a, a                                       ; $5acd: $7f
    dec sp                                        ; $5ace: $3b
    ccf                                           ; $5acf: $3f
    inc bc                                        ; $5ad0: $03
    ld a, a                                       ; $5ad1: $7f
    add c                                         ; $5ad2: $81
    ld e, a                                       ; $5ad3: $5f
    ld [bc], a                                    ; $5ad4: $02
    ccf                                           ; $5ad5: $3f
    ld [bc], a                                    ; $5ad6: $02
    ld de, $2002                                  ; $5ad7: $11 $02 $20
    ld [bc], a                                    ; $5ada: $02
    ld l, b                                       ; $5adb: $68
    ld [bc], a                                    ; $5adc: $02
    ld [hl], b                                    ; $5add: $70
    ld [bc], a                                    ; $5ade: $02
    ld l, d                                       ; $5adf: $6a
    ld [bc], a                                    ; $5ae0: $02
    ld a, [c]                                     ; $5ae1: $f2
    ld [bc], a                                    ; $5ae2: $02
    ldh a, [rSC]                                  ; $5ae3: $f0 $02
    db $10                                        ; $5ae5: $10
    ld [bc], a                                    ; $5ae6: $02
    jr jr_0db_5aeb                                ; $5ae7: $18 $02

    inc e                                         ; $5ae9: $1c
    ld [bc], a                                    ; $5aea: $02

jr_0db_5aeb:
    ld e, $82                                     ; $5aeb: $1e $82
    ld b, $1e                                     ; $5aed: $06 $1e
    ld [bc], a                                    ; $5aef: $02
    inc e                                         ; $5af0: $1c
    ld [bc], a                                    ; $5af1: $02
    ld e, $84                                     ; $5af2: $1e $84
    ld c, $1a                                     ; $5af4: $0e $1a
    inc e                                         ; $5af6: $1c
    inc d                                         ; $5af7: $14
    ld [bc], a                                    ; $5af8: $02
    ld [$0402], sp                                ; $5af9: $08 $02 $04
    inc b                                         ; $5afc: $04
    ld [bc], a                                    ; $5afd: $02
    ld [bc], a                                    ; $5afe: $02
    ld [de], a                                    ; $5aff: $12
    add d                                         ; $5b00: $82
    dec c                                         ; $5b01: $0d
    rrca                                          ; $5b02: $0f
    ld [bc], a                                    ; $5b03: $02
    inc bc                                        ; $5b04: $03
    ld [bc], a                                    ; $5b05: $02
    db $ed                                        ; $5b06: $ed
    sub b                                         ; $5b07: $90
    rst $38                                       ; $5b08: $ff
    cp a                                          ; $5b09: $bf
    ld [hl], b                                    ; $5b0a: $70
    ld a, a                                       ; $5b0b: $7f
    ld e, b                                       ; $5b0c: $58
    ld a, a                                       ; $5b0d: $7f
    ld e, a                                       ; $5b0e: $5f
    ld a, a                                       ; $5b0f: $7f
    rst $18                                       ; $5b10: $df
    rst $38                                       ; $5b11: $ff
    sbc a                                         ; $5b12: $9f
    rst $38                                       ; $5b13: $ff
    sbc a                                         ; $5b14: $9f
    rst $38                                       ; $5b15: $ff
    cp a                                          ; $5b16: $bf
    rst $38                                       ; $5b17: $ff
    ld [bc], a                                    ; $5b18: $02
    ld a, a                                       ; $5b19: $7f
    ld b, $3f                                     ; $5b1a: $06 $3f
    ld [bc], a                                    ; $5b1c: $02
    rrca                                          ; $5b1d: $0f
    inc b                                         ; $5b1e: $04
    nop                                           ; $5b1f: $00
    ld [bc], a                                    ; $5b20: $02
    ld c, $93                                     ; $5b21: $0e $93
    ccf                                           ; $5b23: $3f
    add hl, sp                                    ; $5b24: $39
    ld c, $3e                                     ; $5b25: $0e $3e
    inc [hl]                                      ; $5b27: $34
    inc a                                         ; $5b28: $3c
    inc [hl]                                      ; $5b29: $34
    inc a                                         ; $5b2a: $3c
    ld d, $3e                                     ; $5b2b: $16 $3e
    ld [de], a                                    ; $5b2d: $12
    ld a, $32                                     ; $5b2e: $3e $32
    ld a, $1a                                     ; $5b30: $3e $1a
    ld a, $2c                                     ; $5b32: $3e $2c
    inc a                                         ; $5b34: $3c
    jr z, jr_0db_5b3c                             ; $5b35: $28 $05

    jr c, jr_0db_5b3b                             ; $5b37: $38 $02

    jr nc, @+$06                                  ; $5b39: $30 $04

jr_0db_5b3b:
    nop                                           ; $5b3b: $00

jr_0db_5b3c:
    rst $38                                       ; $5b3c: $ff
    rlca                                          ; $5b3d: $07
    ld bc, $08f9                                  ; $5b3e: $01 $f9 $08
    ld a, [c]                                     ; $5b41: $f2
    ld bc, $fded                                  ; $5b42: $01 $ed $fd
    sub b                                         ; $5b45: $90
    nop                                           ; $5b46: $00
    ld [hl], h                                    ; $5b47: $74
    nop                                           ; $5b48: $00
    cp $00                                        ; $5b49: $fe $00
    cp a                                          ; $5b4b: $bf
    nop                                           ; $5b4c: $00
    ld a, a                                       ; $5b4d: $7f
    nop                                           ; $5b4e: $00
    xor e                                         ; $5b4f: $ab
    nop                                           ; $5b50: $00
    ld l, h                                       ; $5b51: $6c
    nop                                           ; $5b52: $00
    ld a, a                                       ; $5b53: $7f
    nop                                           ; $5b54: $00
    sub [hl]                                      ; $5b55: $96
    stop                                          ; $5b56: $10 $00
    rst $38                                       ; $5b58: $ff
    dec c                                         ; $5b59: $0d
    inc b                                         ; $5b5a: $04
    ld sp, hl                                     ; $5b5b: $f9
    rlca                                          ; $5b5c: $07
    ld a, [c]                                     ; $5b5d: $f2
    ld bc, $fae3                                  ; $5b5e: $01 $e3 $fa
    db $e4                                        ; $5b61: $e4
    rst $38                                       ; $5b62: $ff
    di                                            ; $5b63: $f3
    ld a, [$00f3]                                 ; $5b64: $fa $f3 $00
    ld [bc], a                                    ; $5b67: $02
    cpl                                           ; $5b68: $2f
    adc d                                         ; $5b69: $8a
    dec a                                         ; $5b6a: $3d
    ccf                                           ; $5b6b: $3f
    ld e, a                                       ; $5b6c: $5f
    ld a, a                                       ; $5b6d: $7f
    ld e, a                                       ; $5b6e: $5f
    ld a, a                                       ; $5b6f: $7f
    ld a, d                                       ; $5b70: $7a
    ld a, a                                       ; $5b71: $7f
    dec a                                         ; $5b72: $3d
    ccf                                           ; $5b73: $3f
    inc bc                                        ; $5b74: $03
    ld a, a                                       ; $5b75: $7f
    add c                                         ; $5b76: $81
    ld e, a                                       ; $5b77: $5f
    ld [bc], a                                    ; $5b78: $02
    ccf                                           ; $5b79: $3f
    ld [bc], a                                    ; $5b7a: $02
    ld de, $2002                                  ; $5b7b: $11 $02 $20
    ld [bc], a                                    ; $5b7e: $02
    ld h, b                                       ; $5b7f: $60
    ld [bc], a                                    ; $5b80: $02
    ld l, b                                       ; $5b81: $68
    ld [bc], a                                    ; $5b82: $02
    ld [hl], b                                    ; $5b83: $70
    add d                                         ; $5b84: $82
    cp b                                          ; $5b85: $b8
    ld hl, sp+$02                                 ; $5b86: $f8 $02
    ld a, [c]                                     ; $5b88: $f2
    ld [bc], a                                    ; $5b89: $02
    inc e                                         ; $5b8a: $1c
    ld [bc], a                                    ; $5b8b: $02
    ld e, $84                                     ; $5b8c: $1e $84
    inc c                                         ; $5b8e: $0c
    inc e                                         ; $5b8f: $1c
    ld d, $1e                                     ; $5b90: $16 $1e
    ld [bc], a                                    ; $5b92: $02
    inc e                                         ; $5b93: $1c
    add c                                         ; $5b94: $81
    ld d, $02                                     ; $5b95: $16 $02
    ld e, $81                                     ; $5b97: $1e $81
    ld a, [de]                                    ; $5b99: $1a
    ld [bc], a                                    ; $5b9a: $02
    inc e                                         ; $5b9b: $1c
    ld [bc], a                                    ; $5b9c: $02
    ld [$0402], sp                                ; $5b9d: $08 $02 $04
    ld [bc], a                                    ; $5ba0: $02
    ld b, $04                                     ; $5ba1: $06 $04
    ld [bc], a                                    ; $5ba3: $02
    ld [bc], a                                    ; $5ba4: $02
    ld d, $02                                     ; $5ba5: $16 $02
    dec de                                        ; $5ba7: $1b
    ld [bc], a                                    ; $5ba8: $02
    rlca                                          ; $5ba9: $07
    ld [bc], a                                    ; $5baa: $02
    add sp, $02                                   ; $5bab: $e8 $02
    ld [hl], l                                    ; $5bad: $75
    adc [hl]                                      ; $5bae: $8e
    ld l, a                                       ; $5baf: $6f
    ld a, a                                       ; $5bb0: $7f
    ld d, a                                       ; $5bb1: $57
    ld a, a                                       ; $5bb2: $7f
    ld e, b                                       ; $5bb3: $58
    ld a, a                                       ; $5bb4: $7f
    ld e, a                                       ; $5bb5: $5f
    ld a, a                                       ; $5bb6: $7f
    sbc a                                         ; $5bb7: $9f
    rst $38                                       ; $5bb8: $ff
    sbc a                                         ; $5bb9: $9f
    rst $38                                       ; $5bba: $ff
    cp a                                          ; $5bbb: $bf
    rst $38                                       ; $5bbc: $ff
    ld [bc], a                                    ; $5bbd: $02
    ld a, a                                       ; $5bbe: $7f
    ld [bc], a                                    ; $5bbf: $02
    ccf                                           ; $5bc0: $3f
    add c                                         ; $5bc1: $81
    ld a, e                                       ; $5bc2: $7b
    inc bc                                        ; $5bc3: $03
    ld a, a                                       ; $5bc4: $7f
    ld [bc], a                                    ; $5bc5: $02
    ccf                                           ; $5bc6: $3f
    ld [bc], a                                    ; $5bc7: $02
    rrca                                          ; $5bc8: $0f
    inc b                                         ; $5bc9: $04
    nop                                           ; $5bca: $00
    sub b                                         ; $5bcb: $90
    rra                                           ; $5bcc: $1f
    add hl, de                                    ; $5bcd: $19
    ld l, $3a                                     ; $5bce: $2e $3a
    inc d                                         ; $5bd0: $14
    inc a                                         ; $5bd1: $3c
    inc [hl]                                      ; $5bd2: $34
    inc a                                         ; $5bd3: $3c
    inc d                                         ; $5bd4: $14
    inc a                                         ; $5bd5: $3c
    ld [de], a                                    ; $5bd6: $12
    ld a, $32                                     ; $5bd7: $3e $32
    ld a, $1a                                     ; $5bd9: $3e $1a
    ld a, $02                                     ; $5bdb: $3e $02
    inc [hl]                                      ; $5bdd: $34
    add e                                         ; $5bde: $83
    jr z, jr_0db_5c19                             ; $5bdf: $28 $38

    jr z, jr_0db_5be8                             ; $5be1: $28 $05

    jr c, jr_0db_5be7                             ; $5be3: $38 $02

    jr nc, jr_0db_5be9                            ; $5be5: $30 $02

jr_0db_5be7:
    nop                                           ; $5be7: $00

jr_0db_5be8:
    rst $38                                       ; $5be8: $ff

jr_0db_5be9:
    rlca                                          ; $5be9: $07
    ld bc, $08f9                                  ; $5bea: $01 $f9 $08
    ld a, [c]                                     ; $5bed: $f2
    ld bc, $fdec                                  ; $5bee: $01 $ec $fd
    sub d                                         ; $5bf1: $92
    nop                                           ; $5bf2: $00
    ld [hl], h                                    ; $5bf3: $74
    nop                                           ; $5bf4: $00
    cp $00                                        ; $5bf5: $fe $00
    cp $00                                        ; $5bf7: $fe $00
    cp a                                          ; $5bf9: $bf
    nop                                           ; $5bfa: $00
    ld a, a                                       ; $5bfb: $7f
    nop                                           ; $5bfc: $00
    ld a, [hl-]                                   ; $5bfd: $3a
    nop                                           ; $5bfe: $00
    ld l, c                                       ; $5bff: $69
    nop                                           ; $5c00: $00
    cp [hl]                                       ; $5c01: $be
    nop                                           ; $5c02: $00
    ld d, h                                       ; $5c03: $54
    ld c, $00                                     ; $5c04: $0e $00
    rst $38                                       ; $5c06: $ff
    dec c                                         ; $5c07: $0d
    inc b                                         ; $5c08: $04
    ld sp, hl                                     ; $5c09: $f9
    rlca                                          ; $5c0a: $07
    ld a, [c]                                     ; $5c0b: $f2
    ld bc, $fae3                                  ; $5c0c: $01 $e3 $fa
    db $e4                                        ; $5c0f: $e4
    rst $38                                       ; $5c10: $ff
    di                                            ; $5c11: $f3
    ld a, [$00f3]                                 ; $5c12: $fa $f3 $00
    ld [bc], a                                    ; $5c15: $02
    rra                                           ; $5c16: $1f
    add c                                         ; $5c17: $81
    ld a, e                                       ; $5c18: $7b

jr_0db_5c19:
    inc bc                                        ; $5c19: $03
    ld a, a                                       ; $5c1a: $7f
    add [hl]                                      ; $5c1b: $86
    ld e, a                                       ; $5c1c: $5f
    ld a, a                                       ; $5c1d: $7f
    ld e, l                                       ; $5c1e: $5d
    ld a, a                                       ; $5c1f: $7f
    ld a, $3f                                     ; $5c20: $3e $3f
    inc bc                                        ; $5c22: $03
    ld a, a                                       ; $5c23: $7f
    add e                                         ; $5c24: $83
    ld e, a                                       ; $5c25: $5f
    ccf                                           ; $5c26: $3f
    cpl                                           ; $5c27: $2f
    ld [bc], a                                    ; $5c28: $02
    ld de, $2002                                  ; $5c29: $11 $02 $20
    ld [bc], a                                    ; $5c2c: $02
    ld l, b                                       ; $5c2d: $68
    ld [bc], a                                    ; $5c2e: $02
    ldh a, [rSC]                                  ; $5c2f: $f0 $02
    add sp, -$7e                                  ; $5c31: $e8 $82
    or d                                          ; $5c33: $b2
    ld a, [c]                                     ; $5c34: $f2
    ld [bc], a                                    ; $5c35: $02
    ldh a, [rSC]                                  ; $5c36: $f0 $02
    jr jr_0db_5c3c                                ; $5c38: $18 $02

    ld e, $84                                     ; $5c3a: $1e $84

jr_0db_5c3c:
    inc d                                         ; $5c3c: $14
    inc e                                         ; $5c3d: $1c
    ld c, $1e                                     ; $5c3e: $0e $1e
    ld [bc], a                                    ; $5c40: $02
    inc e                                         ; $5c41: $1c
    inc bc                                        ; $5c42: $03
    ld e, $81                                     ; $5c43: $1e $81
    ld a, [de]                                    ; $5c45: $1a
    ld [bc], a                                    ; $5c46: $02
    inc e                                         ; $5c47: $1c
    ld [bc], a                                    ; $5c48: $02
    ld [$0402], sp                                ; $5c49: $08 $02 $04
    ld [bc], a                                    ; $5c4c: $02
    ld b, $02                                     ; $5c4d: $06 $02
    ld [bc], a                                    ; $5c4f: $02
    ld [bc], a                                    ; $5c50: $02
    ld [de], a                                    ; $5c51: $12
    ld [bc], a                                    ; $5c52: $02
    ld d, $02                                     ; $5c53: $16 $02
    dec bc                                        ; $5c55: $0b
    ld [bc], a                                    ; $5c56: $02
    rlca                                          ; $5c57: $07
    ld [bc], a                                    ; $5c58: $02
    add sp, $02                                   ; $5c59: $e8 $02
    ld [hl], l                                    ; $5c5b: $75
    adc h                                         ; $5c5c: $8c
    ld l, a                                       ; $5c5d: $6f
    ld a, a                                       ; $5c5e: $7f
    ld e, b                                       ; $5c5f: $58
    ld a, a                                       ; $5c60: $7f
    ld e, h                                       ; $5c61: $5c
    ld a, a                                       ; $5c62: $7f
    sbc a                                         ; $5c63: $9f
    rst $38                                       ; $5c64: $ff
    sbc a                                         ; $5c65: $9f
    rst $38                                       ; $5c66: $ff
    cp a                                          ; $5c67: $bf
    rst $38                                       ; $5c68: $ff
    ld [bc], a                                    ; $5c69: $02
    ld a, a                                       ; $5c6a: $7f
    ld [bc], a                                    ; $5c6b: $02
    ccf                                           ; $5c6c: $3f
    add e                                         ; $5c6d: $83
    dec sp                                        ; $5c6e: $3b
    ccf                                           ; $5c6f: $3f
    ld a, e                                       ; $5c70: $7b
    inc bc                                        ; $5c71: $03
    ld a, a                                       ; $5c72: $7f
    add d                                         ; $5c73: $82
    ld [hl], e                                    ; $5c74: $73
    ld a, a                                       ; $5c75: $7f
    ld [bc], a                                    ; $5c76: $02
    ccf                                           ; $5c77: $3f
    inc b                                         ; $5c78: $04
    nop                                           ; $5c79: $00
    sub h                                         ; $5c7a: $94
    rra                                           ; $5c7b: $1f
    dec e                                         ; $5c7c: $1d
    ld a, $3a                                     ; $5c7d: $3e $3a
    ld d, $3e                                     ; $5c7f: $16 $3e
    inc [hl]                                      ; $5c81: $34
    inc a                                         ; $5c82: $3c
    ld [de], a                                    ; $5c83: $12
    ld a, $12                                     ; $5c84: $3e $12
    ld a, $3a                                     ; $5c86: $3e $3a
    ld a, $12                                     ; $5c88: $3e $12
    ld a, $3a                                     ; $5c8a: $3e $3a
    ld a, $2c                                     ; $5c8c: $3e $2c
    inc a                                         ; $5c8e: $3c
    ld b, $38                                     ; $5c8f: $06 $38
    ld [bc], a                                    ; $5c91: $02
    jr nz, jr_0db_5c96                            ; $5c92: $20 $02

    nop                                           ; $5c94: $00
    rst $38                                       ; $5c95: $ff

jr_0db_5c96:
    rlca                                          ; $5c96: $07
    ld bc, $08f9                                  ; $5c97: $01 $f9 $08
    ld a, [c]                                     ; $5c9a: $f2
    ld bc, $fdec                                  ; $5c9b: $01 $ec $fd
    sub d                                         ; $5c9e: $92
    nop                                           ; $5c9f: $00
    ld [hl], h                                    ; $5ca0: $74
    nop                                           ; $5ca1: $00
    cp $00                                        ; $5ca2: $fe $00
    cp [hl]                                       ; $5ca4: $be
    nop                                           ; $5ca5: $00
    ld a, a                                       ; $5ca6: $7f
    nop                                           ; $5ca7: $00
    cp e                                          ; $5ca8: $bb
    nop                                           ; $5ca9: $00
    ld l, d                                       ; $5caa: $6a
    nop                                           ; $5cab: $00
    ld a, l                                       ; $5cac: $7d
    nop                                           ; $5cad: $00
    cp [hl]                                       ; $5cae: $be
    nop                                           ; $5caf: $00
    ld d, h                                       ; $5cb0: $54
    ld c, $00                                     ; $5cb1: $0e $00
    rst $38                                       ; $5cb3: $ff
    dec c                                         ; $5cb4: $0d
    inc b                                         ; $5cb5: $04
    ld sp, hl                                     ; $5cb6: $f9
    rlca                                          ; $5cb7: $07
    ld a, [c]                                     ; $5cb8: $f2
    ld bc, $fae4                                  ; $5cb9: $01 $e4 $fa
    push hl                                       ; $5cbc: $e5
    rst $38                                       ; $5cbd: $ff
    db $f4                                        ; $5cbe: $f4
    ld a, [$00f4]                                 ; $5cbf: $fa $f4 $00
    ld [bc], a                                    ; $5cc2: $02
    ld e, a                                       ; $5cc3: $5f
    add e                                         ; $5cc4: $83
    ld a, e                                       ; $5cc5: $7b
    ld a, a                                       ; $5cc6: $7f
    ld e, a                                       ; $5cc7: $5f
    inc bc                                        ; $5cc8: $03
    ld a, a                                       ; $5cc9: $7f
    add c                                         ; $5cca: $81
    inc a                                         ; $5ccb: $3c
    inc bc                                        ; $5ccc: $03
    ccf                                           ; $5ccd: $3f
    inc bc                                        ; $5cce: $03
    ld a, a                                       ; $5ccf: $7f
    add e                                         ; $5cd0: $83
    ld e, a                                       ; $5cd1: $5f
    ccf                                           ; $5cd2: $3f
    cpl                                           ; $5cd3: $2f
    ld [bc], a                                    ; $5cd4: $02
    ld de, $2002                                  ; $5cd5: $11 $02 $20
    ld [bc], a                                    ; $5cd8: $02
    ld l, b                                       ; $5cd9: $68
    ld [bc], a                                    ; $5cda: $02
    ld [hl], b                                    ; $5cdb: $70
    ld [bc], a                                    ; $5cdc: $02
    ld l, d                                       ; $5cdd: $6a
    add c                                         ; $5cde: $81
    or b                                          ; $5cdf: $b0
    inc bc                                        ; $5ce0: $03
    ldh a, [rSC]                                  ; $5ce1: $f0 $02
    inc e                                         ; $5ce3: $1c
    ld [bc], a                                    ; $5ce4: $02
    ld e, $83                                     ; $5ce5: $1e $83
    ld d, $1e                                     ; $5ce7: $16 $1e
    inc c                                         ; $5ce9: $0c
    inc bc                                        ; $5cea: $03
    inc e                                         ; $5ceb: $1c
    inc bc                                        ; $5cec: $03
    ld e, $81                                     ; $5ced: $1e $81
    ld a, [de]                                    ; $5cef: $1a
    ld [bc], a                                    ; $5cf0: $02
    inc e                                         ; $5cf1: $1c
    ld [bc], a                                    ; $5cf2: $02
    ld [$0402], sp                                ; $5cf3: $08 $02 $04
    inc b                                         ; $5cf6: $04
    ld [bc], a                                    ; $5cf7: $02
    ld [bc], a                                    ; $5cf8: $02
    ld [de], a                                    ; $5cf9: $12
    add d                                         ; $5cfa: $82
    dec c                                         ; $5cfb: $0d
    rrca                                          ; $5cfc: $0f
    ld [bc], a                                    ; $5cfd: $02
    inc bc                                        ; $5cfe: $03
    ld [bc], a                                    ; $5cff: $02
    and a                                         ; $5d00: $a7
    add d                                         ; $5d01: $82
    xor b                                         ; $5d02: $a8
    add sp, $02                                   ; $5d03: $e8 $02
    ld a, a                                       ; $5d05: $7f
    adc h                                         ; $5d06: $8c
    ld h, b                                       ; $5d07: $60
    ld a, a                                       ; $5d08: $7f
    ld e, l                                       ; $5d09: $5d
    ld a, a                                       ; $5d0a: $7f
    ld e, a                                       ; $5d0b: $5f
    ld a, a                                       ; $5d0c: $7f
    sbc a                                         ; $5d0d: $9f
    rst $38                                       ; $5d0e: $ff
    sbc a                                         ; $5d0f: $9f
    rst $38                                       ; $5d10: $ff
    sbc a                                         ; $5d11: $9f
    rst $38                                       ; $5d12: $ff
    ld [bc], a                                    ; $5d13: $02
    ld a, a                                       ; $5d14: $7f
    ld [bc], a                                    ; $5d15: $02
    ccf                                           ; $5d16: $3f
    add e                                         ; $5d17: $83
    dec sp                                        ; $5d18: $3b
    ccf                                           ; $5d19: $3f
    ld a, l                                       ; $5d1a: $7d
    inc bc                                        ; $5d1b: $03
    ld a, a                                       ; $5d1c: $7f
    ld [bc], a                                    ; $5d1d: $02
    rra                                           ; $5d1e: $1f
    ld b, $00                                     ; $5d1f: $06 $00
    sub b                                         ; $5d21: $90
    ccf                                           ; $5d22: $3f
    add hl, sp                                    ; $5d23: $39
    ld e, $3e                                     ; $5d24: $1e $3e
    inc [hl]                                      ; $5d26: $34
    inc a                                         ; $5d27: $3c
    inc [hl]                                      ; $5d28: $34
    inc a                                         ; $5d29: $3c
    ld [de], a                                    ; $5d2a: $12
    ld a, $1a                                     ; $5d2b: $3e $1a
    ld a, $32                                     ; $5d2d: $3e $32
    ld a, $1a                                     ; $5d2f: $3e $1a
    ld a, $02                                     ; $5d31: $3e $02
    inc a                                         ; $5d33: $3c
    add c                                         ; $5d34: $81
    jr z, @+$05                                   ; $5d35: $28 $03

    jr c, jr_0db_5d3b                             ; $5d37: $38 $02

    jr nc, jr_0db_5d41                            ; $5d39: $30 $06

jr_0db_5d3b:
    nop                                           ; $5d3b: $00
    rst $38                                       ; $5d3c: $ff
    rlca                                          ; $5d3d: $07
    ld bc, $08f9                                  ; $5d3e: $01 $f9 $08

jr_0db_5d41:
    ld a, [c]                                     ; $5d41: $f2
    ld bc, $fded                                  ; $5d42: $01 $ed $fd
    sub b                                         ; $5d45: $90
    nop                                           ; $5d46: $00
    ld [hl], h                                    ; $5d47: $74
    nop                                           ; $5d48: $00
    cp $00                                        ; $5d49: $fe $00
    cp a                                          ; $5d4b: $bf
    nop                                           ; $5d4c: $00
    ld a, a                                       ; $5d4d: $7f
    nop                                           ; $5d4e: $00
    xor e                                         ; $5d4f: $ab
    nop                                           ; $5d50: $00
    ld a, h                                       ; $5d51: $7c
    nop                                           ; $5d52: $00
    ld a, a                                       ; $5d53: $7f
    nop                                           ; $5d54: $00
    sub [hl]                                      ; $5d55: $96
    stop                                          ; $5d56: $10 $00
    rst $38                                       ; $5d58: $ff
    dec c                                         ; $5d59: $0d
    inc b                                         ; $5d5a: $04
    ld sp, hl                                     ; $5d5b: $f9
    rlca                                          ; $5d5c: $07
    ld a, [c]                                     ; $5d5d: $f2
    ld bc, $fae4                                  ; $5d5e: $01 $e4 $fa
    push hl                                       ; $5d61: $e5
    rst $38                                       ; $5d62: $ff
    db $f4                                        ; $5d63: $f4
    ld a, [$00f4]                                 ; $5d64: $fa $f4 $00
    ld [bc], a                                    ; $5d67: $02
    rra                                           ; $5d68: $1f
    adc d                                         ; $5d69: $8a
    ld a, e                                       ; $5d6a: $7b
    ld a, a                                       ; $5d6b: $7f
    ld e, a                                       ; $5d6c: $5f
    ld a, a                                       ; $5d6d: $7f
    ld e, a                                       ; $5d6e: $5f
    ld a, a                                       ; $5d6f: $7f
    ld a, l                                       ; $5d70: $7d
    ld a, a                                       ; $5d71: $7f
    ld a, $3f                                     ; $5d72: $3e $3f
    inc bc                                        ; $5d74: $03
    ld a, a                                       ; $5d75: $7f
    add e                                         ; $5d76: $83
    ld e, a                                       ; $5d77: $5f
    ccf                                           ; $5d78: $3f
    cpl                                           ; $5d79: $2f
    ld [bc], a                                    ; $5d7a: $02
    ld de, $2002                                  ; $5d7b: $11 $02 $20
    ld [bc], a                                    ; $5d7e: $02
    ld l, b                                       ; $5d7f: $68
    ld [bc], a                                    ; $5d80: $02
    ld [hl], b                                    ; $5d81: $70
    ld [bc], a                                    ; $5d82: $02
    ld l, d                                       ; $5d83: $6a
    add d                                         ; $5d84: $82
    or d                                          ; $5d85: $b2
    ld a, [c]                                     ; $5d86: $f2
    ld [bc], a                                    ; $5d87: $02
    ldh a, [rSC]                                  ; $5d88: $f0 $02
    jr jr_0db_5d8e                                ; $5d8a: $18 $02

    ld e, $84                                     ; $5d8c: $1e $84

jr_0db_5d8e:
    inc d                                         ; $5d8e: $14
    inc e                                         ; $5d8f: $1c
    ld c, $1e                                     ; $5d90: $0e $1e
    ld [bc], a                                    ; $5d92: $02
    inc e                                         ; $5d93: $1c
    inc bc                                        ; $5d94: $03
    ld e, $81                                     ; $5d95: $1e $81
    ld a, [de]                                    ; $5d97: $1a
    ld [bc], a                                    ; $5d98: $02
    inc e                                         ; $5d99: $1c
    ld [bc], a                                    ; $5d9a: $02
    ld [$0402], sp                                ; $5d9b: $08 $02 $04
    inc b                                         ; $5d9e: $04
    ld [bc], a                                    ; $5d9f: $02
    ld [bc], a                                    ; $5da0: $02
    ld [de], a                                    ; $5da1: $12
    ld [bc], a                                    ; $5da2: $02
    rrca                                          ; $5da3: $0f
    ld [bc], a                                    ; $5da4: $02
    inc bc                                        ; $5da5: $03
    ld [bc], a                                    ; $5da6: $02
    and a                                         ; $5da7: $a7
    ld [bc], a                                    ; $5da8: $02
    add sp, -$70                                  ; $5da9: $e8 $90
    rst $38                                       ; $5dab: $ff
    cp a                                          ; $5dac: $bf
    ldh [rIE], a                                  ; $5dad: $e0 $ff
    ld e, b                                       ; $5daf: $58
    ld a, a                                       ; $5db0: $7f
    ld e, a                                       ; $5db1: $5f
    ld a, a                                       ; $5db2: $7f
    rst $18                                       ; $5db3: $df
    rst $38                                       ; $5db4: $ff
    sbc a                                         ; $5db5: $9f
    rst $38                                       ; $5db6: $ff
    sbc a                                         ; $5db7: $9f
    rst $38                                       ; $5db8: $ff
    cp a                                          ; $5db9: $bf
    rst $38                                       ; $5dba: $ff
    ld [bc], a                                    ; $5dbb: $02
    ld a, a                                       ; $5dbc: $7f
    add c                                         ; $5dbd: $81
    dec sp                                        ; $5dbe: $3b
    dec b                                         ; $5dbf: $05
    ccf                                           ; $5dc0: $3f
    ld [bc], a                                    ; $5dc1: $02
    rra                                           ; $5dc2: $1f
    ld b, $00                                     ; $5dc3: $06 $00
    sub b                                         ; $5dc5: $90
    ccf                                           ; $5dc6: $3f
    add hl, sp                                    ; $5dc7: $39
    ld e, $3e                                     ; $5dc8: $1e $3e
    inc [hl]                                      ; $5dca: $34
    inc a                                         ; $5dcb: $3c
    inc [hl]                                      ; $5dcc: $34
    inc a                                         ; $5dcd: $3c
    ld d, $3e                                     ; $5dce: $16 $3e
    ld [de], a                                    ; $5dd0: $12
    ld a, $32                                     ; $5dd1: $3e $32
    ld a, $1a                                     ; $5dd3: $3e $1a
    ld a, $02                                     ; $5dd5: $3e $02
    inc a                                         ; $5dd7: $3c
    add c                                         ; $5dd8: $81
    jr z, jr_0db_5de0                             ; $5dd9: $28 $05

    jr c, jr_0db_5ddf                             ; $5ddb: $38 $02

    jr nz, @+$06                                  ; $5ddd: $20 $04

jr_0db_5ddf:
    nop                                           ; $5ddf: $00

jr_0db_5de0:
    rst $38                                       ; $5de0: $ff
    rlca                                          ; $5de1: $07
    ld bc, $08f9                                  ; $5de2: $01 $f9 $08
    ld a, [c]                                     ; $5de5: $f2
    ld bc, $fded                                  ; $5de6: $01 $ed $fd
    sub b                                         ; $5de9: $90
    nop                                           ; $5dea: $00
    ld [hl], h                                    ; $5deb: $74
    nop                                           ; $5dec: $00
    cp $00                                        ; $5ded: $fe $00
    cp a                                          ; $5def: $bf
    nop                                           ; $5df0: $00
    ld a, a                                       ; $5df1: $7f
    nop                                           ; $5df2: $00
    xor e                                         ; $5df3: $ab
    nop                                           ; $5df4: $00
    ld l, h                                       ; $5df5: $6c
    nop                                           ; $5df6: $00
    ld a, a                                       ; $5df7: $7f
    nop                                           ; $5df8: $00
    sub [hl]                                      ; $5df9: $96
    stop                                          ; $5dfa: $10 $00
    rst $38                                       ; $5dfc: $ff
    dec c                                         ; $5dfd: $0d
    inc b                                         ; $5dfe: $04
    ld sp, hl                                     ; $5dff: $f9

jr_0db_5e00:
    rlca                                          ; $5e00: $07
    ld a, [c]                                     ; $5e01: $f2
    ld bc, $fae3                                  ; $5e02: $01 $e3 $fa
    db $e4                                        ; $5e05: $e4
    rst $38                                       ; $5e06: $ff
    di                                            ; $5e07: $f3
    ld a, [$00f3]                                 ; $5e08: $fa $f3 $00
    ld [bc], a                                    ; $5e0b: $02
    cpl                                           ; $5e0c: $2f
    adc d                                         ; $5e0d: $8a
    dec a                                         ; $5e0e: $3d
    ccf                                           ; $5e0f: $3f
    ld e, a                                       ; $5e10: $5f
    ld a, a                                       ; $5e11: $7f
    ld e, a                                       ; $5e12: $5f
    ld a, a                                       ; $5e13: $7f
    ld a, d                                       ; $5e14: $7a
    ld a, a                                       ; $5e15: $7f
    dec a                                         ; $5e16: $3d
    ccf                                           ; $5e17: $3f
    inc bc                                        ; $5e18: $03
    ld a, a                                       ; $5e19: $7f
    add c                                         ; $5e1a: $81
    ld e, a                                       ; $5e1b: $5f
    ld [bc], a                                    ; $5e1c: $02
    ccf                                           ; $5e1d: $3f
    ld [bc], a                                    ; $5e1e: $02
    ld de, $2002                                  ; $5e1f: $11 $02 $20
    ld [bc], a                                    ; $5e22: $02
    ld h, b                                       ; $5e23: $60
    ld [bc], a                                    ; $5e24: $02
    ld l, b                                       ; $5e25: $68
    ld [bc], a                                    ; $5e26: $02
    ld [hl], b                                    ; $5e27: $70
    ld [bc], a                                    ; $5e28: $02
    ld a, b                                       ; $5e29: $78
    ld [bc], a                                    ; $5e2a: $02
    ld a, [c]                                     ; $5e2b: $f2
    ld [bc], a                                    ; $5e2c: $02
    inc e                                         ; $5e2d: $1c
    ld [bc], a                                    ; $5e2e: $02
    ld e, $84                                     ; $5e2f: $1e $84
    inc c                                         ; $5e31: $0c
    inc e                                         ; $5e32: $1c
    ld d, $1e                                     ; $5e33: $16 $1e
    ld [bc], a                                    ; $5e35: $02
    inc e                                         ; $5e36: $1c
    add c                                         ; $5e37: $81
    ld d, $02                                     ; $5e38: $16 $02
    ld e, $81                                     ; $5e3a: $1e $81
    ld a, [de]                                    ; $5e3c: $1a
    ld [bc], a                                    ; $5e3d: $02
    inc e                                         ; $5e3e: $1c
    ld [bc], a                                    ; $5e3f: $02
    ld [$0402], sp                                ; $5e40: $08 $02 $04
    ld [bc], a                                    ; $5e43: $02
    ld b, $04                                     ; $5e44: $06 $04
    ld [bc], a                                    ; $5e46: $02
    add d                                         ; $5e47: $82
    dec d                                         ; $5e48: $15
    rla                                           ; $5e49: $17
    ld [bc], a                                    ; $5e4a: $02
    dec de                                        ; $5e4b: $1b
    ld [bc], a                                    ; $5e4c: $02
    rlca                                          ; $5e4d: $07
    ld [bc], a                                    ; $5e4e: $02
    add sp, -$70                                  ; $5e4f: $e8 $90
    push af                                       ; $5e51: $f5
    or l                                          ; $5e52: $b5
    rst $28                                       ; $5e53: $ef
    cp a                                          ; $5e54: $bf
    rst $10                                       ; $5e55: $d7
    rst $38                                       ; $5e56: $ff
    ld e, b                                       ; $5e57: $58
    ld a, a                                       ; $5e58: $7f
    ld e, a                                       ; $5e59: $5f
    ld a, a                                       ; $5e5a: $7f
    sbc a                                         ; $5e5b: $9f
    rst $38                                       ; $5e5c: $ff
    sbc a                                         ; $5e5d: $9f
    rst $38                                       ; $5e5e: $ff
    cp a                                          ; $5e5f: $bf
    rst $38                                       ; $5e60: $ff
    ld [bc], a                                    ; $5e61: $02
    ld e, a                                       ; $5e62: $5f
    ld [$023f], sp                                ; $5e63: $08 $3f $02
    rra                                           ; $5e66: $1f
    inc b                                         ; $5e67: $04
    nop                                           ; $5e68: $00
    ld [bc], a                                    ; $5e69: $02
    rra                                           ; $5e6a: $1f
    sub b                                         ; $5e6b: $90
    ld l, $3e                                     ; $5e6c: $2e $3e
    inc d                                         ; $5e6e: $14
    inc a                                         ; $5e6f: $3c
    inc [hl]                                      ; $5e70: $34
    inc a                                         ; $5e71: $3c
    inc d                                         ; $5e72: $14
    inc a                                         ; $5e73: $3c
    ld [de], a                                    ; $5e74: $12
    ld a, $32                                     ; $5e75: $3e $32
    ld a, $1a                                     ; $5e77: $3e $1a
    ld a, $2c                                     ; $5e79: $3e $2c
    inc a                                         ; $5e7b: $3c
    ld [bc], a                                    ; $5e7c: $02
    jr c, jr_0db_5e00                             ; $5e7d: $38 $81

    inc [hl]                                      ; $5e7f: $34
    inc bc                                        ; $5e80: $03
    inc a                                         ; $5e81: $3c
    ld [bc], a                                    ; $5e82: $02
    jr c, jr_0db_5e87                             ; $5e83: $38 $02

    jr nz, jr_0db_5e89                            ; $5e85: $20 $02

jr_0db_5e87:
    nop                                           ; $5e87: $00
    rst $38                                       ; $5e88: $ff

jr_0db_5e89:
    rlca                                          ; $5e89: $07
    ld bc, $08f9                                  ; $5e8a: $01 $f9 $08
    ld a, [c]                                     ; $5e8d: $f2
    ld bc, $fdec                                  ; $5e8e: $01 $ec $fd
    sub d                                         ; $5e91: $92
    nop                                           ; $5e92: $00
    ld [hl], h                                    ; $5e93: $74
    nop                                           ; $5e94: $00
    cp $00                                        ; $5e95: $fe $00
    cp $00                                        ; $5e97: $fe $00
    cp a                                          ; $5e99: $bf
    nop                                           ; $5e9a: $00
    ld a, a                                       ; $5e9b: $7f
    nop                                           ; $5e9c: $00
    ld a, [hl-]                                   ; $5e9d: $3a
    nop                                           ; $5e9e: $00
    ld l, c                                       ; $5e9f: $69
    nop                                           ; $5ea0: $00
    cp [hl]                                       ; $5ea1: $be
    nop                                           ; $5ea2: $00
    ld d, h                                       ; $5ea3: $54
    ld c, $00                                     ; $5ea4: $0e $00
    rst $38                                       ; $5ea6: $ff
    dec c                                         ; $5ea7: $0d
    inc b                                         ; $5ea8: $04
    ld sp, hl                                     ; $5ea9: $f9
    rlca                                          ; $5eaa: $07
    ld a, [c]                                     ; $5eab: $f2
    ld bc, $fae3                                  ; $5eac: $01 $e3 $fa
    db $e3                                        ; $5eaf: $e3
    rst $38                                       ; $5eb0: $ff
    di                                            ; $5eb1: $f3
    ld sp, hl                                     ; $5eb2: $f9
    di                                            ; $5eb3: $f3
    nop                                           ; $5eb4: $00
    ld [bc], a                                    ; $5eb5: $02
    rrca                                          ; $5eb6: $0f
    ld [bc], a                                    ; $5eb7: $02
    inc d                                         ; $5eb8: $14
    ld [bc], a                                    ; $5eb9: $02
    inc h                                         ; $5eba: $24
    adc l                                         ; $5ebb: $8d
    cpl                                           ; $5ebc: $2f
    dec hl                                        ; $5ebd: $2b
    ld a, a                                       ; $5ebe: $7f
    ld a, b                                       ; $5ebf: $78
    ld a, a                                       ; $5ec0: $7f
    ld l, l                                       ; $5ec1: $6d
    ccf                                           ; $5ec2: $3f
    jr nc, jr_0db_5f44                            ; $5ec3: $30 $7f

    ld [hl], a                                    ; $5ec5: $77
    ld a, l                                       ; $5ec6: $7d
    ld a, a                                       ; $5ec7: $7f
    ld [hl], a                                    ; $5ec8: $77
    inc b                                         ; $5ec9: $04
    ld a, a                                       ; $5eca: $7f
    adc c                                         ; $5ecb: $89
    ld [hl], l                                    ; $5ecc: $75
    ld a, a                                       ; $5ecd: $7f
    ld a, l                                       ; $5ece: $7d
    rst $38                                       ; $5ecf: $ff
    ld a, [c]                                     ; $5ed0: $f2
    rst $38                                       ; $5ed1: $ff
    jp nc, $fdff                                  ; $5ed2: $d2 $ff $fd

    ld [bc], a                                    ; $5ed5: $02
    db $10                                        ; $5ed6: $10
    ld [bc], a                                    ; $5ed7: $02
    ld [$1402], sp                                ; $5ed8: $08 $02 $14
    ld [bc], a                                    ; $5edb: $02
    inc b                                         ; $5edc: $04
    ld [bc], a                                    ; $5edd: $02
    ld a, [de]                                    ; $5ede: $1a
    add h                                         ; $5edf: $84
    ld e, $16                                     ; $5ee0: $1e $16
    inc e                                         ; $5ee2: $1c
    inc c                                         ; $5ee3: $0c
    inc b                                         ; $5ee4: $04
    ld e, $83                                     ; $5ee5: $1e $83
    ld a, [de]                                    ; $5ee7: $1a
    ld e, $1a                                     ; $5ee8: $1e $1a
    ld [bc], a                                    ; $5eea: $02
    ld e, $81                                     ; $5eeb: $1e $81
    ld c, $02                                     ; $5eed: $0e $02
    ld e, $84                                     ; $5eef: $1e $84
    rra                                           ; $5ef1: $1f
    rrca                                          ; $5ef2: $0f
    rra                                           ; $5ef3: $1f
    dec bc                                        ; $5ef4: $0b
    ld [bc], a                                    ; $5ef5: $02
    rra                                           ; $5ef6: $1f
    sub a                                         ; $5ef7: $97
    ld a, a                                       ; $5ef8: $7f
    ld e, c                                       ; $5ef9: $59
    ccf                                           ; $5efa: $3f
    inc a                                         ; $5efb: $3c
    dec hl                                        ; $5efc: $2b
    dec sp                                        ; $5efd: $3b
    dec l                                         ; $5efe: $2d
    dec a                                         ; $5eff: $3d
    ld e, [hl]                                    ; $5f00: $5e
    ld a, [hl]                                    ; $5f01: $7e
    ld c, l                                       ; $5f02: $4d
    ld a, a                                       ; $5f03: $7f
    ld e, [hl]                                    ; $5f04: $5e
    ld a, a                                       ; $5f05: $7f
    cp $8f                                        ; $5f06: $fe $8f
    ld a, [hl]                                    ; $5f08: $7e
    ld d, c                                       ; $5f09: $51
    dec a                                         ; $5f0a: $3d
    ccf                                           ; $5f0b: $3f
    dec e                                         ; $5f0c: $1d
    rra                                           ; $5f0d: $1f
    dec sp                                        ; $5f0e: $3b
    inc bc                                        ; $5f0f: $03
    ccf                                           ; $5f10: $3f
    add d                                         ; $5f11: $82
    ld [de], a                                    ; $5f12: $12
    ld e, $02                                     ; $5f13: $1e $02
    inc c                                         ; $5f15: $0c
    ld [bc], a                                    ; $5f16: $02
    nop                                           ; $5f17: $00
    sub a                                         ; $5f18: $97
    ld a, [hl]                                    ; $5f19: $7e
    ld e, d                                       ; $5f1a: $5a
    ld a, h                                       ; $5f1b: $7c
    inc a                                         ; $5f1c: $3c
    ld d, h                                       ; $5f1d: $54
    ld e, h                                       ; $5f1e: $5c
    inc [hl]                                      ; $5f1f: $34
    inc a                                         ; $5f20: $3c
    ld a, d                                       ; $5f21: $7a
    ld a, [hl]                                    ; $5f22: $7e
    ld [hl-], a                                   ; $5f23: $32
    ld a, [hl]                                    ; $5f24: $7e
    ld a, d                                       ; $5f25: $7a
    ld a, [hl]                                    ; $5f26: $7e
    ld a, a                                       ; $5f27: $7f
    ld a, c                                       ; $5f28: $79
    ld a, [hl]                                    ; $5f29: $7e
    ld a, d                                       ; $5f2a: $7a
    inc a                                         ; $5f2b: $3c
    ld a, h                                       ; $5f2c: $7c
    jr c, jr_0db_5fa7                             ; $5f2d: $38 $78

    ld d, h                                       ; $5f2f: $54
    inc bc                                        ; $5f30: $03
    ld a, h                                       ; $5f31: $7c
    add d                                         ; $5f32: $82
    ld c, b                                       ; $5f33: $48
    ld a, b                                       ; $5f34: $78
    ld [bc], a                                    ; $5f35: $02
    jr nc, jr_0db_5f3a                            ; $5f36: $30 $02

    nop                                           ; $5f38: $00
    rst $38                                       ; $5f39: $ff

jr_0db_5f3a:
    add hl, bc                                    ; $5f3a: $09
    ld [bc], a                                    ; $5f3b: $02
    ld sp, hl                                     ; $5f3c: $f9
    ld [$01f2], sp                                ; $5f3d: $08 $f2 $01
    db $e4                                        ; $5f40: $e4
    db $fd                                        ; $5f41: $fd
    db $f4                                        ; $5f42: $f4
    db $fd                                        ; $5f43: $fd

jr_0db_5f44:
    adc b                                         ; $5f44: $88
    nop                                           ; $5f45: $00
    ld e, h                                       ; $5f46: $5c
    nop                                           ; $5f47: $00
    jp c, $8600                                   ; $5f48: $da $00 $86

    nop                                           ; $5f4b: $00
    ld bc, $001a                                  ; $5f4c: $01 $1a $00
    add l                                         ; $5f4f: $85
    ld b, h                                       ; $5f50: $44
    nop                                           ; $5f51: $00
    jr z, jr_0db_5f54                             ; $5f52: $28 $00

jr_0db_5f54:
    db $10                                        ; $5f54: $10
    add hl, de                                    ; $5f55: $19
    nop                                           ; $5f56: $00
    rst $38                                       ; $5f57: $ff
    dec c                                         ; $5f58: $0d
    inc b                                         ; $5f59: $04
    ld sp, hl                                     ; $5f5a: $f9
    rlca                                          ; $5f5b: $07
    ld a, [c]                                     ; $5f5c: $f2
    ld bc, $fae3                                  ; $5f5d: $01 $e3 $fa
    db $e3                                        ; $5f60: $e3
    rst $38                                       ; $5f61: $ff
    di                                            ; $5f62: $f3
    ld a, [$fff3]                                 ; $5f63: $fa $f3 $ff
    ld [bc], a                                    ; $5f66: $02
    rrca                                          ; $5f67: $0f
    ld [bc], a                                    ; $5f68: $02
    inc d                                         ; $5f69: $14
    ld [bc], a                                    ; $5f6a: $02
    inc h                                         ; $5f6b: $24
    adc b                                         ; $5f6c: $88
    cpl                                           ; $5f6d: $2f
    dec hl                                        ; $5f6e: $2b
    ld a, a                                       ; $5f6f: $7f
    ld a, b                                       ; $5f70: $78
    ld a, a                                       ; $5f71: $7f
    ld l, l                                       ; $5f72: $6d
    ccf                                           ; $5f73: $3f
    jr nc, jr_0db_5f78                            ; $5f74: $30 $02

    ld a, a                                       ; $5f76: $7f
    add h                                         ; $5f77: $84

jr_0db_5f78:
    ld a, l                                       ; $5f78: $7d
    ld a, a                                       ; $5f79: $7f
    rst $28                                       ; $5f7a: $ef
    rst $38                                       ; $5f7b: $ff
    inc bc                                        ; $5f7c: $03
    ld a, a                                       ; $5f7d: $7f
    adc c                                         ; $5f7e: $89
    ld l, d                                       ; $5f7f: $6a
    ld a, a                                       ; $5f80: $7f
    ld a, e                                       ; $5f81: $7b
    ld a, a                                       ; $5f82: $7f
    ld h, h                                       ; $5f83: $64
    cp a                                          ; $5f84: $bf
    db $e4                                        ; $5f85: $e4
    cp a                                          ; $5f86: $bf
    ei                                            ; $5f87: $fb
    ld [bc], a                                    ; $5f88: $02
    db $10                                        ; $5f89: $10
    ld [bc], a                                    ; $5f8a: $02
    ld [$1402], sp                                ; $5f8b: $08 $02 $14
    ld [bc], a                                    ; $5f8e: $02
    inc b                                         ; $5f8f: $04
    ld [bc], a                                    ; $5f90: $02
    ld a, [de]                                    ; $5f91: $1a
    add [hl]                                      ; $5f92: $86
    ld e, $16                                     ; $5f93: $1e $16
    inc e                                         ; $5f95: $1c
    inc c                                         ; $5f96: $0c
    ld a, [de]                                    ; $5f97: $1a
    ld a, [bc]                                    ; $5f98: $0a
    ld [bc], a                                    ; $5f99: $02
    ld e, $83                                     ; $5f9a: $1e $83
    ld a, [de]                                    ; $5f9c: $1a
    ld e, $16                                     ; $5f9d: $1e $16
    inc bc                                        ; $5f9f: $03
    ld e, $83                                     ; $5fa0: $1e $83
    dec e                                         ; $5fa2: $1d
    rrca                                          ; $5fa3: $0f
    rla                                           ; $5fa4: $17
    ld [bc], a                                    ; $5fa5: $02
    rra                                           ; $5fa6: $1f

jr_0db_5fa7:
    add a                                         ; $5fa7: $87
    inc de                                        ; $5fa8: $13
    rra                                           ; $5fa9: $1f
    rrca                                          ; $5faa: $0f
    ld a, a                                       ; $5fab: $7f
    ld d, [hl]                                    ; $5fac: $56
    ccf                                           ; $5fad: $3f
    jr c, jr_0db_5fb2                             ; $5fae: $38 $02

    ld a, a                                       ; $5fb0: $7f
    adc [hl]                                      ; $5fb1: $8e

jr_0db_5fb2:
    ld e, d                                       ; $5fb2: $5a
    ld a, d                                       ; $5fb3: $7a
    cp l                                          ; $5fb4: $bd
    db $fd                                        ; $5fb5: $fd
    sbc d                                         ; $5fb6: $9a
    rst $38                                       ; $5fb7: $ff
    sbc a                                         ; $5fb8: $9f
    db $fc                                        ; $5fb9: $fc
    ld a, [hl]                                    ; $5fba: $7e
    ld c, e                                       ; $5fbb: $4b
    ld a, [hl]                                    ; $5fbc: $7e
    ld c, a                                       ; $5fbd: $4f
    dec sp                                        ; $5fbe: $3b
    ccf                                           ; $5fbf: $3f
    ld [bc], a                                    ; $5fc0: $02
    rra                                           ; $5fc1: $1f
    ld [bc], a                                    ; $5fc2: $02
    ccf                                           ; $5fc3: $3f
    add d                                         ; $5fc4: $82
    daa                                           ; $5fc5: $27
    ccf                                           ; $5fc6: $3f
    ld [bc], a                                    ; $5fc7: $02
    dec e                                         ; $5fc8: $1d
    ld [bc], a                                    ; $5fc9: $02
    ld bc, $0002                                  ; $5fca: $01 $02 $00
    ld [bc], a                                    ; $5fcd: $02
    ld a, [de]                                    ; $5fce: $1a
    ld [bc], a                                    ; $5fcf: $02
    inc e                                         ; $5fd0: $1c
    add d                                         ; $5fd1: $82
    ld a, [bc]                                    ; $5fd2: $0a
    ld c, $02                                     ; $5fd3: $0e $02
    ld e, $85                                     ; $5fd5: $1e $85
    dec e                                         ; $5fd7: $1d
    rra                                           ; $5fd8: $1f
    dec e                                         ; $5fd9: $1d
    rra                                           ; $5fda: $1f
    dec e                                         ; $5fdb: $1d
    ld [bc], a                                    ; $5fdc: $02
    rra                                           ; $5fdd: $1f
    add c                                         ; $5fde: $81
    add hl, de                                    ; $5fdf: $19
    ld [bc], a                                    ; $5fe0: $02
    ld e, $83                                     ; $5fe1: $1e $83
    inc c                                         ; $5fe3: $0c
    inc e                                         ; $5fe4: $1c
    ld d, $03                                     ; $5fe5: $16 $03
    ld e, $82                                     ; $5fe7: $1e $82
    ld b, $1e                                     ; $5fe9: $06 $1e
    ld [bc], a                                    ; $5feb: $02
    inc e                                         ; $5fec: $1c
    ld [bc], a                                    ; $5fed: $02
    jr jr_0db_5ff2                                ; $5fee: $18 $02

    nop                                           ; $5ff0: $00
    rst $38                                       ; $5ff1: $ff

jr_0db_5ff2:
    add hl, bc                                    ; $5ff2: $09
    ld [bc], a                                    ; $5ff3: $02
    ld sp, hl                                     ; $5ff4: $f9
    ld [$01f2], sp                                ; $5ff5: $08 $f2 $01
    db $e4                                        ; $5ff8: $e4
    db $fd                                        ; $5ff9: $fd
    db $f4                                        ; $5ffa: $f4
    db $fd                                        ; $5ffb: $fd
    adc b                                         ; $5ffc: $88
    nop                                           ; $5ffd: $00
    ld e, h                                       ; $5ffe: $5c
    nop                                           ; $5fff: $00
    jp c, $8600                                   ; $6000: $da $00 $86

    nop                                           ; $6003: $00
    ld bc, $0005                                  ; $6004: $01 $05 $00
    add c                                         ; $6007: $81
    ld bc, $0014                                  ; $6008: $01 $14 $00
    add l                                         ; $600b: $85
    inc b                                         ; $600c: $04
    nop                                           ; $600d: $00
    jr z, jr_0db_6010                             ; $600e: $28 $00

jr_0db_6010:
    db $10                                        ; $6010: $10
    add hl, de                                    ; $6011: $19
    nop                                           ; $6012: $00
    rst $38                                       ; $6013: $ff
    dec c                                         ; $6014: $0d
    inc b                                         ; $6015: $04
    ld sp, hl                                     ; $6016: $f9
    rlca                                          ; $6017: $07
    ld a, [c]                                     ; $6018: $f2
    ld bc, $fae4                                  ; $6019: $01 $e4 $fa
    db $e4                                        ; $601c: $e4
    rst $38                                       ; $601d: $ff
    db $f4                                        ; $601e: $f4
    ld a, [$fff4]                                 ; $601f: $fa $f4 $ff
    ld [bc], a                                    ; $6022: $02
    rrca                                          ; $6023: $0f
    ld [bc], a                                    ; $6024: $02
    inc d                                         ; $6025: $14
    ld [bc], a                                    ; $6026: $02
    inc h                                         ; $6027: $24
    adc [hl]                                      ; $6028: $8e
    ld l, a                                       ; $6029: $6f
    ld l, e                                       ; $602a: $6b
    ld a, a                                       ; $602b: $7f
    ld a, b                                       ; $602c: $78
    ld a, a                                       ; $602d: $7f
    ld l, l                                       ; $602e: $6d
    ccf                                           ; $602f: $3f
    jr nc, jr_0db_60b1                            ; $6030: $30 $7f

    ld a, [hl]                                    ; $6032: $7e
    ld a, l                                       ; $6033: $7d
    ld a, a                                       ; $6034: $7f
    cpl                                           ; $6035: $2f
    ccf                                           ; $6036: $3f
    inc bc                                        ; $6037: $03
    ld a, a                                       ; $6038: $7f
    adc c                                         ; $6039: $89
    ld l, d                                       ; $603a: $6a
    ld a, a                                       ; $603b: $7f
    ld a, e                                       ; $603c: $7b
    cp a                                          ; $603d: $bf
    db $e4                                        ; $603e: $e4
    rst $38                                       ; $603f: $ff
    db $e4                                        ; $6040: $e4
    cp a                                          ; $6041: $bf
    ei                                            ; $6042: $fb
    ld [bc], a                                    ; $6043: $02
    db $10                                        ; $6044: $10
    ld [bc], a                                    ; $6045: $02
    ld [$1402], sp                                ; $6046: $08 $02 $14
    ld [bc], a                                    ; $6049: $02
    ld [bc], a                                    ; $604a: $02
    ld [bc], a                                    ; $604b: $02
    ld a, [de]                                    ; $604c: $1a
    add [hl]                                      ; $604d: $86
    ld e, $16                                     ; $604e: $1e $16
    inc e                                         ; $6050: $1c
    inc c                                         ; $6051: $0c
    ld a, [de]                                    ; $6052: $1a
    ld a, [bc]                                    ; $6053: $0a
    ld [bc], a                                    ; $6054: $02
    ld e, $81                                     ; $6055: $1e $81
    ld a, [de]                                    ; $6057: $1a
    inc b                                         ; $6058: $04
    ld e, $84                                     ; $6059: $1e $84
    ld c, $1e                                     ; $605b: $0e $1e
    ld c, $17                                     ; $605d: $0e $17
    ld [bc], a                                    ; $605f: $02
    rra                                           ; $6060: $1f
    add a                                         ; $6061: $87
    inc de                                        ; $6062: $13
    rra                                           ; $6063: $1f
    rrca                                          ; $6064: $0f
    rst $38                                       ; $6065: $ff
    sub h                                         ; $6066: $94
    ld a, a                                       ; $6067: $7f
    ld a, b                                       ; $6068: $78
    ld [bc], a                                    ; $6069: $02
    ld a, a                                       ; $606a: $7f
    sub b                                         ; $606b: $90
    ld e, b                                       ; $606c: $58
    ld a, b                                       ; $606d: $78
    ld e, d                                       ; $606e: $5a
    ld a, a                                       ; $606f: $7f
    cp l                                          ; $6070: $bd
    rst $38                                       ; $6071: $ff
    sbc l                                         ; $6072: $9d
    rst $38                                       ; $6073: $ff
    cp [hl]                                       ; $6074: $be
    pop de                                        ; $6075: $d1
    cp $9f                                        ; $6076: $fe $9f
    ld a, e                                       ; $6078: $7b
    ld a, a                                       ; $6079: $7f
    dec sp                                        ; $607a: $3b
    ccf                                           ; $607b: $3f
    inc b                                         ; $607c: $04
    rra                                           ; $607d: $1f
    ld [bc], a                                    ; $607e: $02
    ld bc, $0004                                  ; $607f: $01 $04 $00
    add d                                         ; $6082: $82
    ld e, $0e                                     ; $6083: $1e $0e
    ld [bc], a                                    ; $6085: $02
    inc e                                         ; $6086: $1c
    add d                                         ; $6087: $82
    ld a, [bc]                                    ; $6088: $0a
    ld c, $02                                     ; $6089: $0e $02
    ld e, $02                                     ; $608b: $1e $02
    rra                                           ; $608d: $1f
    add e                                         ; $608e: $83
    dec e                                         ; $608f: $1d
    rra                                           ; $6090: $1f
    dec e                                         ; $6091: $1d
    ld [bc], a                                    ; $6092: $02
    rra                                           ; $6093: $1f
    add c                                         ; $6094: $81
    dec e                                         ; $6095: $1d
    ld [bc], a                                    ; $6096: $02
    ld e, $84                                     ; $6097: $1e $84
    inc c                                         ; $6099: $0c
    inc e                                         ; $609a: $1c
    inc c                                         ; $609b: $0c
    inc e                                         ; $609c: $1c
    ld [bc], a                                    ; $609d: $02
    ld e, $82                                     ; $609e: $1e $82
    ld b, $1e                                     ; $60a0: $06 $1e
    ld [bc], a                                    ; $60a2: $02
    inc e                                         ; $60a3: $1c
    inc b                                         ; $60a4: $04
    nop                                           ; $60a5: $00
    rst $38                                       ; $60a6: $ff
    add hl, bc                                    ; $60a7: $09
    ld [bc], a                                    ; $60a8: $02
    ld sp, hl                                     ; $60a9: $f9
    ld [$01f2], sp                                ; $60aa: $08 $f2 $01
    push hl                                       ; $60ad: $e5
    db $fd                                        ; $60ae: $fd
    push af                                       ; $60af: $f5
    db $fd                                        ; $60b0: $fd

jr_0db_60b1:
    adc b                                         ; $60b1: $88
    nop                                           ; $60b2: $00
    ld e, h                                       ; $60b3: $5c
    nop                                           ; $60b4: $00
    jp c, $8700                                   ; $60b5: $da $00 $87

    nop                                           ; $60b8: $00
    ld bc, $0005                                  ; $60b9: $01 $05 $00
    add c                                         ; $60bc: $81
    ld bc, $0014                                  ; $60bd: $01 $14 $00
    add e                                         ; $60c0: $83
    inc b                                         ; $60c1: $04
    nop                                           ; $60c2: $00
    jr c, jr_0db_60e0                             ; $60c3: $38 $1b

    nop                                           ; $60c5: $00
    rst $38                                       ; $60c6: $ff
    dec c                                         ; $60c7: $0d
    inc b                                         ; $60c8: $04
    ld sp, hl                                     ; $60c9: $f9
    rlca                                          ; $60ca: $07
    ld a, [c]                                     ; $60cb: $f2
    ld bc, $fae4                                  ; $60cc: $01 $e4 $fa
    db $e4                                        ; $60cf: $e4
    rst $38                                       ; $60d0: $ff
    db $f4                                        ; $60d1: $f4
    ld sp, hl                                     ; $60d2: $f9
    db $f4                                        ; $60d3: $f4
    nop                                           ; $60d4: $00
    ld [bc], a                                    ; $60d5: $02
    rrca                                          ; $60d6: $0f
    ld [bc], a                                    ; $60d7: $02
    inc d                                         ; $60d8: $14
    ld [bc], a                                    ; $60d9: $02
    inc h                                         ; $60da: $24
    adc b                                         ; $60db: $88
    ld l, a                                       ; $60dc: $6f
    ld l, e                                       ; $60dd: $6b
    ld a, a                                       ; $60de: $7f
    ld a, b                                       ; $60df: $78

jr_0db_60e0:
    ld a, a                                       ; $60e0: $7f
    ld l, l                                       ; $60e1: $6d
    ccf                                           ; $60e2: $3f
    jr nc, jr_0db_60e7                            ; $60e3: $30 $02

    ld a, a                                       ; $60e5: $7f
    add h                                         ; $60e6: $84

jr_0db_60e7:
    ld a, l                                       ; $60e7: $7d
    ld a, a                                       ; $60e8: $7f
    rst $28                                       ; $60e9: $ef
    rst $38                                       ; $60ea: $ff
    inc bc                                        ; $60eb: $03
    ld a, a                                       ; $60ec: $7f
    adc c                                         ; $60ed: $89
    ld l, d                                       ; $60ee: $6a
    ld a, a                                       ; $60ef: $7f
    ld a, e                                       ; $60f0: $7b
    rst $38                                       ; $60f1: $ff
    db $e4                                        ; $60f2: $e4
    rst $38                                       ; $60f3: $ff
    db $e4                                        ; $60f4: $e4
    cp a                                          ; $60f5: $bf
    ei                                            ; $60f6: $fb
    ld [bc], a                                    ; $60f7: $02
    db $10                                        ; $60f8: $10
    ld [bc], a                                    ; $60f9: $02
    ld [$1402], sp                                ; $60fa: $08 $02 $14
    ld [bc], a                                    ; $60fd: $02
    ld [bc], a                                    ; $60fe: $02
    ld [bc], a                                    ; $60ff: $02
    ld a, [de]                                    ; $6100: $1a
    add [hl]                                      ; $6101: $86
    ld e, $16                                     ; $6102: $1e $16
    inc e                                         ; $6104: $1c
    inc c                                         ; $6105: $0c
    ld a, [de]                                    ; $6106: $1a
    ld a, [bc]                                    ; $6107: $0a
    ld [bc], a                                    ; $6108: $02
    ld e, $83                                     ; $6109: $1e $83
    ld a, [de]                                    ; $610b: $1a
    ld e, $16                                     ; $610c: $1e $16
    inc b                                         ; $610e: $04
    ld e, $82                                     ; $610f: $1e $82
    ld c, $17                                     ; $6111: $0e $17
    ld [bc], a                                    ; $6113: $02
    rra                                           ; $6114: $1f
    sub a                                         ; $6115: $97
    inc de                                        ; $6116: $13
    rra                                           ; $6117: $1f
    rrca                                          ; $6118: $0f
    ld a, a                                       ; $6119: $7f
    ld e, d                                       ; $611a: $5a
    ccf                                           ; $611b: $3f
    inc a                                         ; $611c: $3c
    cpl                                           ; $611d: $2f
    ccf                                           ; $611e: $3f
    dec l                                         ; $611f: $2d
    dec a                                         ; $6120: $3d
    ld l, [hl]                                    ; $6121: $6e
    ld a, [hl]                                    ; $6122: $7e
    ld e, l                                       ; $6123: $5d
    ld a, a                                       ; $6124: $7f
    ld e, [hl]                                    ; $6125: $5e
    ld a, a                                       ; $6126: $7f
    cp $9f                                        ; $6127: $fe $9f
    ld a, [hl]                                    ; $6129: $7e
    ld c, a                                       ; $612a: $4f
    dec a                                         ; $612b: $3d
    scf                                           ; $612c: $37
    ld [bc], a                                    ; $612d: $02
    rra                                           ; $612e: $1f
    add d                                         ; $612f: $82
    dec de                                        ; $6130: $1b
    rra                                           ; $6131: $1f
    ld [bc], a                                    ; $6132: $02
    ld c, $06                                     ; $6133: $0e $06
    nop                                           ; $6135: $00
    sub [hl]                                      ; $6136: $96
    ld a, h                                       ; $6137: $7c
    inc a                                         ; $6138: $3c
    ld a, b                                       ; $6139: $78
    jr c, jr_0db_6190                             ; $613a: $38 $54

    ld e, h                                       ; $613c: $5c
    inc [hl]                                      ; $613d: $34
    inc a                                         ; $613e: $3c
    halt                                          ; $613f: $76
    ld a, [hl]                                    ; $6140: $7e
    ld a, [hl-]                                   ; $6141: $3a
    ld a, [hl]                                    ; $6142: $7e
    ld a, d                                       ; $6143: $7a
    ld a, [hl]                                    ; $6144: $7e
    ld a, a                                       ; $6145: $7f
    ld a, c                                       ; $6146: $79
    ld a, [hl]                                    ; $6147: $7e
    ld a, d                                       ; $6148: $7a
    inc a                                         ; $6149: $3c
    ld a, h                                       ; $614a: $7c
    ld e, b                                       ; $614b: $58
    ld a, b                                       ; $614c: $78
    ld [bc], a                                    ; $614d: $02
    ld a, h                                       ; $614e: $7c
    add d                                         ; $614f: $82
    ld c, b                                       ; $6150: $48
    ld a, b                                       ; $6151: $78
    ld [bc], a                                    ; $6152: $02
    ld [hl], b                                    ; $6153: $70
    inc b                                         ; $6154: $04
    nop                                           ; $6155: $00
    rst $38                                       ; $6156: $ff
    add hl, bc                                    ; $6157: $09
    ld [bc], a                                    ; $6158: $02
    ld sp, hl                                     ; $6159: $f9
    ld [$01f2], sp                                ; $615a: $08 $f2 $01
    push hl                                       ; $615d: $e5
    db $fd                                        ; $615e: $fd
    push af                                       ; $615f: $f5
    db $fd                                        ; $6160: $fd
    adc b                                         ; $6161: $88
    nop                                           ; $6162: $00
    ld e, h                                       ; $6163: $5c
    nop                                           ; $6164: $00
    jp c, $8700                                   ; $6165: $da $00 $87

    nop                                           ; $6168: $00
    ld bc, $0005                                  ; $6169: $01 $05 $00
    add c                                         ; $616c: $81
    ld bc, $0014                                  ; $616d: $01 $14 $00
    add l                                         ; $6170: $85
    inc b                                         ; $6171: $04
    nop                                           ; $6172: $00
    jr z, jr_0db_6175                             ; $6173: $28 $00

jr_0db_6175:
    db $10                                        ; $6175: $10
    add hl, de                                    ; $6176: $19
    nop                                           ; $6177: $00
    rst $38                                       ; $6178: $ff
    dec c                                         ; $6179: $0d
    inc b                                         ; $617a: $04
    ld sp, hl                                     ; $617b: $f9
    rlca                                          ; $617c: $07
    ld a, [c]                                     ; $617d: $f2
    ld bc, $fae3                                  ; $617e: $01 $e3 $fa
    db $e3                                        ; $6181: $e3
    rst $38                                       ; $6182: $ff
    di                                            ; $6183: $f3
    ld a, [$fff3]                                 ; $6184: $fa $f3 $ff
    ld [bc], a                                    ; $6187: $02
    rrca                                          ; $6188: $0f
    ld [bc], a                                    ; $6189: $02
    inc d                                         ; $618a: $14
    ld [bc], a                                    ; $618b: $02
    inc h                                         ; $618c: $24
    adc l                                         ; $618d: $8d
    cpl                                           ; $618e: $2f
    dec hl                                        ; $618f: $2b

jr_0db_6190:
    ld a, a                                       ; $6190: $7f
    ld a, b                                       ; $6191: $78
    ld a, a                                       ; $6192: $7f
    ld l, l                                       ; $6193: $6d
    ld a, a                                       ; $6194: $7f
    ld [hl], b                                    ; $6195: $70
    ccf                                           ; $6196: $3f
    scf                                           ; $6197: $37
    ld a, l                                       ; $6198: $7d
    ld a, a                                       ; $6199: $7f
    ld [hl], a                                    ; $619a: $77
    inc b                                         ; $619b: $04
    ld a, a                                       ; $619c: $7f
    adc c                                         ; $619d: $89
    ld [hl], l                                    ; $619e: $75
    ld a, a                                       ; $619f: $7f
    ld a, l                                       ; $61a0: $7d
    rst $38                                       ; $61a1: $ff
    ld a, [c]                                     ; $61a2: $f2
    rst $38                                       ; $61a3: $ff
    jp nc, $fdff                                  ; $61a4: $d2 $ff $fd

    ld [bc], a                                    ; $61a7: $02
    db $10                                        ; $61a8: $10
    ld [bc], a                                    ; $61a9: $02
    ld [$1402], sp                                ; $61aa: $08 $02 $14
    ld [bc], a                                    ; $61ad: $02
    inc b                                         ; $61ae: $04
    ld [bc], a                                    ; $61af: $02
    ld a, [de]                                    ; $61b0: $1a
    add h                                         ; $61b1: $84
    ld e, $16                                     ; $61b2: $1e $16
    ld e, $0e                                     ; $61b4: $1e $0e
    ld [bc], a                                    ; $61b6: $02
    inc e                                         ; $61b7: $1c
    ld [bc], a                                    ; $61b8: $02
    ld e, $83                                     ; $61b9: $1e $83
    ld a, [de]                                    ; $61bb: $1a
    ld e, $1a                                     ; $61bc: $1e $1a
    ld [bc], a                                    ; $61be: $02
    ld e, $81                                     ; $61bf: $1e $81
    ld c, $02                                     ; $61c1: $0e $02
    ld e, $84                                     ; $61c3: $1e $84
    dec e                                         ; $61c5: $1d
    rrca                                          ; $61c6: $0f
    rra                                           ; $61c7: $1f
    rrca                                          ; $61c8: $0f
    ld [bc], a                                    ; $61c9: $02
    rra                                           ; $61ca: $1f
    sub [hl]                                      ; $61cb: $96
    rst $38                                       ; $61cc: $ff
    or [hl]                                       ; $61cd: $b6
    ld a, a                                       ; $61ce: $7f
    ld a, b                                       ; $61cf: $78
    ld d, a                                       ; $61d0: $57
    ld [hl], a                                    ; $61d1: $77
    ld e, d                                       ; $61d2: $5a
    ld a, d                                       ; $61d3: $7a
    cp l                                          ; $61d4: $bd
    db $fd                                        ; $61d5: $fd
    cp d                                          ; $61d6: $ba
    rst $38                                       ; $61d7: $ff
    cp l                                          ; $61d8: $bd
    rst $38                                       ; $61d9: $ff
    db $fd                                        ; $61da: $fd
    sbc a                                         ; $61db: $9f
    ld sp, hl                                     ; $61dc: $f9
    cp a                                          ; $61dd: $bf
    ld h, [hl]                                    ; $61de: $66
    ld e, a                                       ; $61df: $5f
    ld a, [hl]                                    ; $61e0: $7e
    ld e, a                                       ; $61e1: $5f
    ld [bc], a                                    ; $61e2: $02
    ccf                                           ; $61e3: $3f
    add d                                         ; $61e4: $82
    daa                                           ; $61e5: $27
    ccf                                           ; $61e6: $3f
    ld [bc], a                                    ; $61e7: $02
    dec e                                         ; $61e8: $1d
    inc b                                         ; $61e9: $04
    nop                                           ; $61ea: $00
    add d                                         ; $61eb: $82
    rra                                           ; $61ec: $1f
    dec c                                         ; $61ed: $0d
    ld [bc], a                                    ; $61ee: $02
    ld e, $89                                     ; $61ef: $1e $89
    ld a, [de]                                    ; $61f1: $1a
    ld e, $1a                                     ; $61f2: $1e $1a
    ld e, $1d                                     ; $61f4: $1e $1d
    rra                                           ; $61f6: $1f
    add hl, de                                    ; $61f7: $19
    rra                                           ; $61f8: $1f
    dec e                                         ; $61f9: $1d
    ld [bc], a                                    ; $61fa: $02
    rra                                           ; $61fb: $1f
    add e                                         ; $61fc: $83
    add hl, de                                    ; $61fd: $19
    rra                                           ; $61fe: $1f
    add hl, de                                    ; $61ff: $19
    ld [bc], a                                    ; $6200: $02
    ld e, $02                                     ; $6201: $1e $02
    inc e                                         ; $6203: $1c
    add c                                         ; $6204: $81
    ld c, $03                                     ; $6205: $0e $03
    ld e, $82                                     ; $6207: $1e $82
    inc b                                         ; $6209: $04
    inc e                                         ; $620a: $1c
    ld [bc], a                                    ; $620b: $02
    jr jr_0db_6210                                ; $620c: $18 $02

    nop                                           ; $620e: $00
    rst $38                                       ; $620f: $ff

jr_0db_6210:
    add hl, bc                                    ; $6210: $09
    ld [bc], a                                    ; $6211: $02
    ld sp, hl                                     ; $6212: $f9
    ld [$01f2], sp                                ; $6213: $08 $f2 $01
    db $e4                                        ; $6216: $e4
    db $fd                                        ; $6217: $fd
    db $f4                                        ; $6218: $f4
    db $fd                                        ; $6219: $fd
    adc b                                         ; $621a: $88
    nop                                           ; $621b: $00
    ld e, h                                       ; $621c: $5c
    nop                                           ; $621d: $00
    jp c, $8600                                   ; $621e: $da $00 $86

    nop                                           ; $6221: $00
    ld bc, $001a                                  ; $6222: $01 $1a $00
    add l                                         ; $6225: $85
    ld b, b                                       ; $6226: $40
    nop                                           ; $6227: $00
    jr z, jr_0db_622a                             ; $6228: $28 $00

jr_0db_622a:
    db $10                                        ; $622a: $10
    add hl, de                                    ; $622b: $19
    nop                                           ; $622c: $00
    rst $38                                       ; $622d: $ff
    dec c                                         ; $622e: $0d
    inc b                                         ; $622f: $04
    ld sp, hl                                     ; $6230: $f9
    rlca                                          ; $6231: $07
    ld a, [c]                                     ; $6232: $f2
    ld bc, $fae3                                  ; $6233: $01 $e3 $fa
    db $e3                                        ; $6236: $e3
    rst $38                                       ; $6237: $ff
    di                                            ; $6238: $f3
    ld a, [$fff3]                                 ; $6239: $fa $f3 $ff
    ld [bc], a                                    ; $623c: $02
    rrca                                          ; $623d: $0f
    ld [bc], a                                    ; $623e: $02
    inc d                                         ; $623f: $14
    ld [bc], a                                    ; $6240: $02
    inc h                                         ; $6241: $24
    adc b                                         ; $6242: $88
    cpl                                           ; $6243: $2f
    dec hl                                        ; $6244: $2b
    ld a, a                                       ; $6245: $7f
    ld a, b                                       ; $6246: $78
    ld a, a                                       ; $6247: $7f
    ld l, l                                       ; $6248: $6d
    ccf                                           ; $6249: $3f
    jr nc, jr_0db_624e                            ; $624a: $30 $02

    ld a, a                                       ; $624c: $7f
    add l                                         ; $624d: $85

jr_0db_624e:
    ld a, l                                       ; $624e: $7d
    ld a, a                                       ; $624f: $7f
    ld l, a                                       ; $6250: $6f
    ld a, a                                       ; $6251: $7f
    ld e, a                                       ; $6252: $5f
    ld [bc], a                                    ; $6253: $02
    ld a, a                                       ; $6254: $7f
    adc c                                         ; $6255: $89
    ld a, l                                       ; $6256: $7d
    rst $38                                       ; $6257: $ff
    or $ef                                        ; $6258: $f6 $ef
    ld sp, hl                                     ; $625a: $f9
    rst $38                                       ; $625b: $ff
    ret                                           ; $625c: $c9


    rst $38                                       ; $625d: $ff
    or $02                                        ; $625e: $f6 $02
    db $10                                        ; $6260: $10
    ld [bc], a                                    ; $6261: $02
    ld [$1402], sp                                ; $6262: $08 $02 $14
    ld [bc], a                                    ; $6265: $02
    inc b                                         ; $6266: $04
    ld [bc], a                                    ; $6267: $02
    ld a, [de]                                    ; $6268: $1a
    add [hl]                                      ; $6269: $86
    ld e, $16                                     ; $626a: $1e $16
    inc e                                         ; $626c: $1c
    inc c                                         ; $626d: $0c
    ld a, [de]                                    ; $626e: $1a
    ld a, [bc]                                    ; $626f: $0a
    ld [bc], a                                    ; $6270: $02
    ld a, [de]                                    ; $6271: $1a
    add c                                         ; $6272: $81
    ld d, $04                                     ; $6273: $16 $04
    ld e, $81                                     ; $6275: $1e $81
    ld d, $03                                     ; $6277: $16 $03
    ld e, $8b                                     ; $6279: $1e $8b
    ld b, $1d                                     ; $627b: $06 $1d
    rlca                                          ; $627d: $07
    dec e                                         ; $627e: $1d
    rra                                           ; $627f: $1f
    rst $38                                       ; $6280: $ff
    cp e                                          ; $6281: $bb
    rst $38                                       ; $6282: $ff
    cp b                                          ; $6283: $b8
    ld d, a                                       ; $6284: $57
    ld [hl], a                                    ; $6285: $77
    ld [bc], a                                    ; $6286: $02
    ld a, d                                       ; $6287: $7a
    adc l                                         ; $6288: $8d
    cp l                                          ; $6289: $bd
    db $fd                                        ; $628a: $fd
    cp d                                          ; $628b: $ba
    rst $38                                       ; $628c: $ff
    cp l                                          ; $628d: $bd
    rst $38                                       ; $628e: $ff
    ei                                            ; $628f: $fb
    sbc a                                         ; $6290: $9f
    ld a, e                                       ; $6291: $7b
    ld e, a                                       ; $6292: $5f
    halt                                          ; $6293: $76
    ld e, a                                       ; $6294: $5f
    ld l, a                                       ; $6295: $6f
    inc bc                                        ; $6296: $03
    ld a, a                                       ; $6297: $7f
    add d                                         ; $6298: $82
    ld h, a                                       ; $6299: $67
    ld a, a                                       ; $629a: $7f
    ld [bc], a                                    ; $629b: $02
    dec a                                         ; $629c: $3d
    ld [bc], a                                    ; $629d: $02
    inc e                                         ; $629e: $1c
    ld [bc], a                                    ; $629f: $02
    nop                                           ; $62a0: $00
    add d                                         ; $62a1: $82
    rra                                           ; $62a2: $1f
    dec bc                                        ; $62a3: $0b
    inc b                                         ; $62a4: $04
    ld e, $8c                                     ; $62a5: $1e $8c
    ld a, [de]                                    ; $62a7: $1a
    ld e, $1d                                     ; $62a8: $1e $1d
    rra                                           ; $62aa: $1f
    add hl, de                                    ; $62ab: $19
    rra                                           ; $62ac: $1f
    add hl, de                                    ; $62ad: $19
    rra                                           ; $62ae: $1f
    ld e, $12                                     ; $62af: $1e $12
    ld e, $12                                     ; $62b1: $1e $12
    ld [bc], a                                    ; $62b3: $02
    inc e                                         ; $62b4: $1c
    ld [bc], a                                    ; $62b5: $02
    jr jr_0db_62ba                                ; $62b6: $18 $02

    inc e                                         ; $62b8: $1c
    add d                                         ; $62b9: $82

jr_0db_62ba:
    inc b                                         ; $62ba: $04
    inc e                                         ; $62bb: $1c
    ld [bc], a                                    ; $62bc: $02
    jr jr_0db_62c3                                ; $62bd: $18 $04

    nop                                           ; $62bf: $00
    rst $38                                       ; $62c0: $ff
    add hl, bc                                    ; $62c1: $09
    ld [bc], a                                    ; $62c2: $02

jr_0db_62c3:
    ld sp, hl                                     ; $62c3: $f9
    ld [$01f2], sp                                ; $62c4: $08 $f2 $01
    db $e4                                        ; $62c7: $e4
    db $fd                                        ; $62c8: $fd
    db $f4                                        ; $62c9: $f4
    db $fd                                        ; $62ca: $fd
    adc b                                         ; $62cb: $88
    nop                                           ; $62cc: $00
    ld e, h                                       ; $62cd: $5c
    nop                                           ; $62ce: $00
    jp c, $8600                                   ; $62cf: $da $00 $86

    nop                                           ; $62d2: $00
    ld bc, $0005                                  ; $62d3: $01 $05 $00
    add e                                         ; $62d6: $83
    ld bc, $0100                                  ; $62d7: $01 $00 $01
    ld [de], a                                    ; $62da: $12
    nop                                           ; $62db: $00
    add l                                         ; $62dc: $85
    ld b, b                                       ; $62dd: $40
    nop                                           ; $62de: $00
    jr z, jr_0db_62e1                             ; $62df: $28 $00

jr_0db_62e1:
    db $10                                        ; $62e1: $10
    add hl, de                                    ; $62e2: $19
    nop                                           ; $62e3: $00
    rst $38                                       ; $62e4: $ff
    dec c                                         ; $62e5: $0d
    inc b                                         ; $62e6: $04
    ld sp, hl                                     ; $62e7: $f9
    rlca                                          ; $62e8: $07
    ld a, [c]                                     ; $62e9: $f2
    ld bc, $fae4                                  ; $62ea: $01 $e4 $fa
    db $e4                                        ; $62ed: $e4
    rst $38                                       ; $62ee: $ff
    db $f4                                        ; $62ef: $f4
    ld a, [$fff4]                                 ; $62f0: $fa $f4 $ff
    ld [bc], a                                    ; $62f3: $02
    rrca                                          ; $62f4: $0f
    ld [bc], a                                    ; $62f5: $02
    inc d                                         ; $62f6: $14
    ld [bc], a                                    ; $62f7: $02
    inc h                                         ; $62f8: $24
    adc l                                         ; $62f9: $8d
    ld l, a                                       ; $62fa: $6f
    ld l, e                                       ; $62fb: $6b
    ld a, a                                       ; $62fc: $7f
    ld a, b                                       ; $62fd: $78
    ld a, a                                       ; $62fe: $7f
    ld l, l                                       ; $62ff: $6d

Call_0db_6300:
    ccf                                           ; $6300: $3f
    jr nc, jr_0db_6382                            ; $6301: $30 $7f

    ld [hl], a                                    ; $6303: $77
    ld a, l                                       ; $6304: $7d
    ld a, a                                       ; $6305: $7f
    ld l, a                                       ; $6306: $6f
    inc b                                         ; $6307: $04
    ld a, a                                       ; $6308: $7f
    adc c                                         ; $6309: $89
    ld [hl], l                                    ; $630a: $75
    ld a, a                                       ; $630b: $7f
    halt                                          ; $630c: $76
    rst $28                                       ; $630d: $ef
    ld sp, hl                                     ; $630e: $f9
    rst $38                                       ; $630f: $ff
    ret                                           ; $6310: $c9


    rst $38                                       ; $6311: $ff
    or $02                                        ; $6312: $f6 $02
    db $10                                        ; $6314: $10
    ld [bc], a                                    ; $6315: $02
    ld [$1402], sp                                ; $6316: $08 $02 $14
    ld [bc], a                                    ; $6319: $02
    ld [bc], a                                    ; $631a: $02
    ld [bc], a                                    ; $631b: $02
    ld a, [de]                                    ; $631c: $1a
    add h                                         ; $631d: $84
    ld e, $16                                     ; $631e: $1e $16
    inc e                                         ; $6320: $1c
    inc c                                         ; $6321: $0c
    ld [bc], a                                    ; $6322: $02
    ld e, $02                                     ; $6323: $1e $02
    ld a, [de]                                    ; $6325: $1a
    add c                                         ; $6326: $81
    ld d, $04                                     ; $6327: $16 $04
    ld e, $81                                     ; $6329: $1e $81
    ld d, $02                                     ; $632b: $16 $02
    ld e, $8c                                     ; $632d: $1e $8c
    dec e                                         ; $632f: $1d
    rlca                                          ; $6330: $07
    rra                                           ; $6331: $1f
    rlca                                          ; $6332: $07
    dec e                                         ; $6333: $1d
    rra                                           ; $6334: $1f
    ld a, a                                       ; $6335: $7f
    ld [hl], c                                    ; $6336: $71
    rst $38                                       ; $6337: $ff
    cp b                                          ; $6338: $b8
    rst $10                                       ; $6339: $d7
    rst $30                                       ; $633a: $f7
    ld [bc], a                                    ; $633b: $02
    ld a, b                                       ; $633c: $78
    adc [hl]                                      ; $633d: $8e
    ld a, [$bdff]                                 ; $633e: $fa $ff $bd
    rst $38                                       ; $6341: $ff
    cp l                                          ; $6342: $bd
    rst $38                                       ; $6343: $ff
    ei                                            ; $6344: $fb
    cp a                                          ; $6345: $bf
    ld a, e                                       ; $6346: $7b
    ld e, a                                       ; $6347: $5f
    ld [hl], $2f                                  ; $6348: $36 $2f
    ld [hl], $3f                                  ; $634a: $36 $3f
    ld [bc], a                                    ; $634c: $02
    ld a, a                                       ; $634d: $7f
    add d                                         ; $634e: $82
    ld h, a                                       ; $634f: $67
    ld a, a                                       ; $6350: $7f
    ld [bc], a                                    ; $6351: $02
    inc a                                         ; $6352: $3c
    inc b                                         ; $6353: $04
    nop                                           ; $6354: $00
    add d                                         ; $6355: $82
    rra                                           ; $6356: $1f
    add hl, bc                                    ; $6357: $09
    inc b                                         ; $6358: $04
    ld e, $8c                                     ; $6359: $1e $8c
    ld a, [de]                                    ; $635b: $1a
    ld e, $1a                                     ; $635c: $1e $1a
    ld e, $1d                                     ; $635e: $1e $1d
    rra                                           ; $6360: $1f
    add hl, de                                    ; $6361: $19
    rra                                           ; $6362: $1f
    dec e                                         ; $6363: $1d
    dec de                                        ; $6364: $1b
    rra                                           ; $6365: $1f
    add hl, de                                    ; $6366: $19
    ld [bc], a                                    ; $6367: $02
    ld e, $02                                     ; $6368: $1e $02
    inc e                                         ; $636a: $1c
    inc b                                         ; $636b: $04
    jr @+$08                                      ; $636c: $18 $06

    nop                                           ; $636e: $00
    rst $38                                       ; $636f: $ff
    add hl, bc                                    ; $6370: $09
    ld [bc], a                                    ; $6371: $02
    ld sp, hl                                     ; $6372: $f9
    ld [$01f2], sp                                ; $6373: $08 $f2 $01
    push hl                                       ; $6376: $e5
    db $fd                                        ; $6377: $fd
    push af                                       ; $6378: $f5
    db $fd                                        ; $6379: $fd
    adc b                                         ; $637a: $88
    nop                                           ; $637b: $00
    ld e, h                                       ; $637c: $5c
    nop                                           ; $637d: $00
    jp c, $8700                                   ; $637e: $da $00 $87

    nop                                           ; $6381: $00

jr_0db_6382:
    ld bc, $0007                                  ; $6382: $01 $07 $00
    add c                                         ; $6385: $81
    ld bc, $0012                                  ; $6386: $01 $12 $00
    add e                                         ; $6389: $83
    ld b, b                                       ; $638a: $40
    nop                                           ; $638b: $00
    jr c, jr_0db_63a9                             ; $638c: $38 $1b

    nop                                           ; $638e: $00
    rst $38                                       ; $638f: $ff
    dec c                                         ; $6390: $0d
    inc b                                         ; $6391: $04
    ld sp, hl                                     ; $6392: $f9
    rlca                                          ; $6393: $07
    ld a, [c]                                     ; $6394: $f2
    ld bc, $fae4                                  ; $6395: $01 $e4 $fa
    db $e4                                        ; $6398: $e4
    rst $38                                       ; $6399: $ff
    db $f4                                        ; $639a: $f4
    ld sp, hl                                     ; $639b: $f9
    db $f4                                        ; $639c: $f4
    nop                                           ; $639d: $00
    ld [bc], a                                    ; $639e: $02
    rrca                                          ; $639f: $0f
    ld [bc], a                                    ; $63a0: $02
    inc d                                         ; $63a1: $14
    ld [bc], a                                    ; $63a2: $02
    inc h                                         ; $63a3: $24
    adc b                                         ; $63a4: $88
    ld l, a                                       ; $63a5: $6f
    ld l, e                                       ; $63a6: $6b
    ld a, a                                       ; $63a7: $7f
    ld a, b                                       ; $63a8: $78

jr_0db_63a9:
    ld a, a                                       ; $63a9: $7f
    ld l, l                                       ; $63aa: $6d
    ccf                                           ; $63ab: $3f
    jr nc, jr_0db_63b0                            ; $63ac: $30 $02

    ld a, a                                       ; $63ae: $7f
    add l                                         ; $63af: $85

jr_0db_63b0:
    ld a, l                                       ; $63b0: $7d
    ld a, a                                       ; $63b1: $7f
    ld l, a                                       ; $63b2: $6f
    ld a, a                                       ; $63b3: $7f
    ld e, a                                       ; $63b4: $5f
    ld [bc], a                                    ; $63b5: $02
    ld a, a                                       ; $63b6: $7f
    adc c                                         ; $63b7: $89
    ld a, l                                       ; $63b8: $7d
    ld a, a                                       ; $63b9: $7f
    halt                                          ; $63ba: $76
    rst $28                                       ; $63bb: $ef
    ld sp, hl                                     ; $63bc: $f9
    rst $38                                       ; $63bd: $ff
    ret                                           ; $63be: $c9


    rst $38                                       ; $63bf: $ff
    or $02                                        ; $63c0: $f6 $02
    db $10                                        ; $63c2: $10
    ld [bc], a                                    ; $63c3: $02
    ld [$1402], sp                                ; $63c4: $08 $02 $14
    ld [bc], a                                    ; $63c7: $02
    ld [bc], a                                    ; $63c8: $02
    ld [bc], a                                    ; $63c9: $02
    ld a, [de]                                    ; $63ca: $1a
    add [hl]                                      ; $63cb: $86
    ld e, $16                                     ; $63cc: $1e $16
    inc e                                         ; $63ce: $1c
    inc c                                         ; $63cf: $0c
    ld a, [de]                                    ; $63d0: $1a
    ld a, [bc]                                    ; $63d1: $0a
    ld [bc], a                                    ; $63d2: $02
    ld a, [de]                                    ; $63d3: $1a
    add d                                         ; $63d4: $82
    inc d                                         ; $63d5: $14
    inc e                                         ; $63d6: $1c
    inc bc                                        ; $63d7: $03
    ld e, $81                                     ; $63d8: $1e $81
    ld d, $02                                     ; $63da: $16 $02
    ld e, $9c                                     ; $63dc: $1e $9c
    rra                                           ; $63de: $1f
    rlca                                          ; $63df: $07
    rra                                           ; $63e0: $1f
    rlca                                          ; $63e1: $07
    dec e                                         ; $63e2: $1d
    rra                                           ; $63e3: $1f
    ccf                                           ; $63e4: $3f
    inc a                                         ; $63e5: $3c
    ccf                                           ; $63e6: $3f
    inc a                                         ; $63e7: $3c
    dec hl                                        ; $63e8: $2b
    dec sp                                        ; $63e9: $3b
    dec l                                         ; $63ea: $2d
    dec a                                         ; $63eb: $3d
    ld l, [hl]                                    ; $63ec: $6e
    ld a, [hl]                                    ; $63ed: $7e
    ld e, l                                       ; $63ee: $5d
    ld a, a                                       ; $63ef: $7f
    ld e, [hl]                                    ; $63f0: $5e
    ld a, a                                       ; $63f1: $7f
    cp $8f                                        ; $63f2: $fe $8f
    ld a, [hl]                                    ; $63f4: $7e
    ld d, c                                       ; $63f5: $51
    dec a                                         ; $63f6: $3d
    ccf                                           ; $63f7: $3f
    dec de                                        ; $63f8: $1b
    rra                                           ; $63f9: $1f
    ld [bc], a                                    ; $63fa: $02
    ccf                                           ; $63fb: $3f
    add d                                         ; $63fc: $82
    ld [de], a                                    ; $63fd: $12
    ld e, $02                                     ; $63fe: $1e $02

Call_0db_6400:
    ld c, $04                                     ; $6400: $0e $04
    nop                                           ; $6402: $00
    sub h                                         ; $6403: $94
    ld a, [hl]                                    ; $6404: $7e
    ld e, d                                       ; $6405: $5a
    ld a, h                                       ; $6406: $7c
    inc a                                         ; $6407: $3c
    ld [hl], h                                    ; $6408: $74
    ld a, h                                       ; $6409: $7c
    inc [hl]                                      ; $640a: $34
    inc a                                         ; $640b: $3c
    halt                                          ; $640c: $76
    ld a, [hl]                                    ; $640d: $7e
    ld a, [hl-]                                   ; $640e: $3a
    ld a, [hl]                                    ; $640f: $7e
    ld a, d                                       ; $6410: $7a
    ld a, [hl]                                    ; $6411: $7e
    ld a, a                                       ; $6412: $7f
    ld a, c                                       ; $6413: $79
    ld a, [hl]                                    ; $6414: $7e
    ld a, d                                       ; $6415: $7a
    inc a                                         ; $6416: $3c
    ld a, h                                       ; $6417: $7c
    ld [bc], a                                    ; $6418: $02
    ld a, b                                       ; $6419: $78
    add d                                         ; $641a: $82
    ld e, b                                       ; $641b: $58
    ld a, b                                       ; $641c: $78
    ld [bc], a                                    ; $641d: $02
    ld [hl], b                                    ; $641e: $70
    ld b, $00                                     ; $641f: $06 $00
    rst $38                                       ; $6421: $ff
    add hl, bc                                    ; $6422: $09
    ld [bc], a                                    ; $6423: $02
    ld sp, hl                                     ; $6424: $f9
    ld [$01f2], sp                                ; $6425: $08 $f2 $01
    push hl                                       ; $6428: $e5
    db $fd                                        ; $6429: $fd
    push af                                       ; $642a: $f5
    db $fd                                        ; $642b: $fd
    adc b                                         ; $642c: $88
    nop                                           ; $642d: $00
    ld e, h                                       ; $642e: $5c
    nop                                           ; $642f: $00
    jp c, $8700                                   ; $6430: $da $00 $87

    nop                                           ; $6433: $00
    ld bc, $0005                                  ; $6434: $01 $05 $00
    add e                                         ; $6437: $83
    ld bc, $0100                                  ; $6438: $01 $00 $01
    ld [de], a                                    ; $643b: $12
    nop                                           ; $643c: $00
    add l                                         ; $643d: $85
    ld b, b                                       ; $643e: $40
    nop                                           ; $643f: $00
    jr z, jr_0db_6442                             ; $6440: $28 $00

jr_0db_6442:
    db $10                                        ; $6442: $10
    add hl, de                                    ; $6443: $19
    nop                                           ; $6444: $00
    rst $38                                       ; $6445: $ff
    dec c                                         ; $6446: $0d
    inc b                                         ; $6447: $04
    ld sp, hl                                     ; $6448: $f9
    rlca                                          ; $6449: $07
    ld a, [c]                                     ; $644a: $f2
    ld bc, $fae3                                  ; $644b: $01 $e3 $fa
    db $e3                                        ; $644e: $e3
    rst $38                                       ; $644f: $ff
    di                                            ; $6450: $f3
    ld a, [$fff3]                                 ; $6451: $fa $f3 $ff
    ld [bc], a                                    ; $6454: $02
    rrca                                          ; $6455: $0f
    ld [bc], a                                    ; $6456: $02
    inc d                                         ; $6457: $14
    ld [bc], a                                    ; $6458: $02
    inc h                                         ; $6459: $24
    adc l                                         ; $645a: $8d
    cpl                                           ; $645b: $2f
    dec hl                                        ; $645c: $2b
    ld a, a                                       ; $645d: $7f
    ld a, b                                       ; $645e: $78
    ld a, a                                       ; $645f: $7f
    ld l, l                                       ; $6460: $6d
    ld a, a                                       ; $6461: $7f
    ld [hl], b                                    ; $6462: $70
    ccf                                           ; $6463: $3f
    scf                                           ; $6464: $37
    ld a, l                                       ; $6465: $7d
    ld a, a                                       ; $6466: $7f
    ld [hl], a                                    ; $6467: $77
    inc b                                         ; $6468: $04
    ld a, a                                       ; $6469: $7f
    adc c                                         ; $646a: $89
    ld [hl], l                                    ; $646b: $75
    ld a, a                                       ; $646c: $7f
    ld a, l                                       ; $646d: $7d
    cp a                                          ; $646e: $bf
    ld a, [c]                                     ; $646f: $f2
    rst $38                                       ; $6470: $ff
    ld a, [c]                                     ; $6471: $f2
    rst $38                                       ; $6472: $ff
    db $fd                                        ; $6473: $fd
    ld [bc], a                                    ; $6474: $02
    db $10                                        ; $6475: $10
    ld [bc], a                                    ; $6476: $02
    ld [$1402], sp                                ; $6477: $08 $02 $14
    ld [bc], a                                    ; $647a: $02
    inc b                                         ; $647b: $04
    ld [bc], a                                    ; $647c: $02
    ld a, [de]                                    ; $647d: $1a
    add h                                         ; $647e: $84
    ld e, $16                                     ; $647f: $1e $16
    ld e, $0e                                     ; $6481: $1e $0e
    ld [bc], a                                    ; $6483: $02
    inc e                                         ; $6484: $1c
    ld [bc], a                                    ; $6485: $02
    ld e, $83                                     ; $6486: $1e $83
    ld a, [de]                                    ; $6488: $1a
    ld e, $1a                                     ; $6489: $1e $1a
    ld [bc], a                                    ; $648b: $02
    ld e, $81                                     ; $648c: $1e $81
    ld c, $02                                     ; $648e: $0e $02
    ld e, $84                                     ; $6490: $1e $84
    rra                                           ; $6492: $1f
    rrca                                          ; $6493: $0f
    rra                                           ; $6494: $1f
    dec bc                                        ; $6495: $0b
    ld [bc], a                                    ; $6496: $02
    rra                                           ; $6497: $1f
    adc l                                         ; $6498: $8d
    rst $38                                       ; $6499: $ff
    or e                                          ; $649a: $b3
    ld a, a                                       ; $649b: $7f
    ld a, b                                       ; $649c: $78
    ld e, a                                       ; $649d: $5f
    ld a, a                                       ; $649e: $7f
    ld e, d                                       ; $649f: $5a
    ld a, d                                       ; $64a0: $7a
    cp l                                          ; $64a1: $bd
    db $fd                                        ; $64a2: $fd
    sbc d                                         ; $64a3: $9a
    rst $38                                       ; $64a4: $ff
    cp l                                          ; $64a5: $bd
    ld [bc], a                                    ; $64a6: $02
    rst $38                                       ; $64a7: $ff
    adc b                                         ; $64a8: $88
    sub c                                         ; $64a9: $91
    db $fc                                        ; $64aa: $fc
    sbc a                                         ; $64ab: $9f
    ld a, e                                       ; $64ac: $7b
    ld a, a                                       ; $64ad: $7f
    dec sp                                        ; $64ae: $3b
    ccf                                           ; $64af: $3f
    ld [hl], a                                    ; $64b0: $77
    inc bc                                        ; $64b1: $03
    ld a, a                                       ; $64b2: $7f
    add d                                         ; $64b3: $82
    dec h                                         ; $64b4: $25
    dec a                                         ; $64b5: $3d
    ld [bc], a                                    ; $64b6: $02
    jr jr_0db_64bb                                ; $64b7: $18 $02

    nop                                           ; $64b9: $00
    add d                                         ; $64ba: $82

jr_0db_64bb:
    rra                                           ; $64bb: $1f
    dec c                                         ; $64bc: $0d
    ld [bc], a                                    ; $64bd: $02
    ld e, $89                                     ; $64be: $1e $89
    ld a, [bc]                                    ; $64c0: $0a
    ld c, $1a                                     ; $64c1: $0e $1a
    ld e, $1d                                     ; $64c3: $1e $1d
    rra                                           ; $64c5: $1f
    dec e                                         ; $64c6: $1d
    rra                                           ; $64c7: $1f
    dec e                                         ; $64c8: $1d
    ld [bc], a                                    ; $64c9: $02
    rra                                           ; $64ca: $1f
    add l                                         ; $64cb: $85
    add hl, de                                    ; $64cc: $19
    rra                                           ; $64cd: $1f
    dec e                                         ; $64ce: $1d
    ld b, $1e                                     ; $64cf: $06 $1e
    inc b                                         ; $64d1: $04
    inc e                                         ; $64d2: $1c
    add d                                         ; $64d3: $82
    inc b                                         ; $64d4: $04
    inc e                                         ; $64d5: $1c
    ld [bc], a                                    ; $64d6: $02
    jr jr_0db_64dd                                ; $64d7: $18 $04

    nop                                           ; $64d9: $00
    rst $38                                       ; $64da: $ff
    add hl, bc                                    ; $64db: $09
    ld [bc], a                                    ; $64dc: $02

jr_0db_64dd:
    ld sp, hl                                     ; $64dd: $f9
    ld [$01f2], sp                                ; $64de: $08 $f2 $01
    db $e4                                        ; $64e1: $e4
    db $fd                                        ; $64e2: $fd
    db $f4                                        ; $64e3: $f4
    db $fd                                        ; $64e4: $fd
    adc b                                         ; $64e5: $88
    nop                                           ; $64e6: $00
    ld e, h                                       ; $64e7: $5c
    nop                                           ; $64e8: $00
    jp c, $8600                                   ; $64e9: $da $00 $86

    nop                                           ; $64ec: $00
    ld bc, $001a                                  ; $64ed: $01 $1a $00
    add l                                         ; $64f0: $85
    inc b                                         ; $64f1: $04
    nop                                           ; $64f2: $00
    jr z, jr_0db_64f5                             ; $64f3: $28 $00

jr_0db_64f5:
    db $10                                        ; $64f5: $10
    add hl, de                                    ; $64f6: $19
    nop                                           ; $64f7: $00
    rst $38                                       ; $64f8: $ff
    ld de, $f906                                  ; $64f9: $11 $06 $f9
    rlca                                          ; $64fc: $07
    ld a, [c]                                     ; $64fd: $f2
    ld bc, $f6eb                                  ; $64fe: $01 $eb $f6
    ld [$eafe], a                                 ; $6501: $ea $fe $ea
    inc bc                                        ; $6504: $03
    ld a, [$faf5]                                 ; $6505: $fa $f5 $fa
    db $fd                                        ; $6508: $fd
    ld a, [$0201]                                 ; $6509: $fa $01 $02
    rra                                           ; $650c: $1f
    ld [bc], a                                    ; $650d: $02
    inc h                                         ; $650e: $24
    ld [bc], a                                    ; $650f: $02
    ld b, e                                       ; $6510: $43
    adc h                                         ; $6511: $8c
    ld d, a                                       ; $6512: $57
    ld d, l                                       ; $6513: $55
    ld h, a                                       ; $6514: $67
    ld h, h                                       ; $6515: $64
    ld a, [hl]                                    ; $6516: $7e
    ld a, d                                       ; $6517: $7a
    ld e, a                                       ; $6518: $5f
    ld d, b                                       ; $6519: $50
    rst $18                                       ; $651a: $df
    ret c                                         ; $651b: $d8

    adc a                                         ; $651c: $8f
    adc c                                         ; $651d: $89
    ld [bc], a                                    ; $651e: $02
    cp [hl]                                       ; $651f: $be
    adc h                                         ; $6520: $8c
    ld [$adfa], a                                 ; $6521: $ea $fa $ad
    db $fd                                        ; $6524: $fd
    ld l, e                                       ; $6525: $6b
    ld a, a                                       ; $6526: $7f
    ld e, l                                       ; $6527: $5d
    ld a, a                                       ; $6528: $7f
    ld c, l                                       ; $6529: $4d
    ld a, a                                       ; $652a: $7f
    db $dd                                        ; $652b: $dd
    rst $38                                       ; $652c: $ff
    ld [bc], a                                    ; $652d: $02
    ld b, $82                                     ; $652e: $06 $82
    dec b                                         ; $6530: $05
    rlca                                          ; $6531: $07
    ld [bc], a                                    ; $6532: $02
    sbc a                                         ; $6533: $9f
    add e                                         ; $6534: $83
    ld d, a                                       ; $6535: $57
    ld e, a                                       ; $6536: $5f
    cp e                                          ; $6537: $bb
    ld [bc], a                                    ; $6538: $02
    cp a                                          ; $6539: $bf
    sub l                                         ; $653a: $95
    cp [hl]                                       ; $653b: $be
    sbc [hl]                                      ; $653c: $9e
    sbc a                                         ; $653d: $9f
    rst $18                                       ; $653e: $df
    ld e, h                                       ; $653f: $5c
    adc a                                         ; $6540: $8f
    adc d                                         ; $6541: $8a
    rlca                                          ; $6542: $07
    inc b                                         ; $6543: $04
    rrca                                          ; $6544: $0f
    ld c, $15                                     ; $6545: $0e $15
    dec e                                         ; $6547: $1d
    ld a, [hl+]                                   ; $6548: $2a
    ld a, $1b                                     ; $6549: $3e $1b
    rra                                           ; $654b: $1f
    ld a, [bc]                                    ; $654c: $0a
    rrca                                          ; $654d: $0f
    inc de                                        ; $654e: $13
    rra                                           ; $654f: $1f
    ld [bc], a                                    ; $6550: $02
    ld [$1c02], sp                                ; $6551: $08 $02 $1c
    add d                                         ; $6554: $82
    inc de                                        ; $6555: $13
    rra                                           ; $6556: $1f
    ld [bc], a                                    ; $6557: $02
    ld e, $8e                                     ; $6558: $1e $8e
    inc e                                         ; $655a: $1c
    inc d                                         ; $655b: $14
    ld e, $0a                                     ; $655c: $1e $0a
    inc e                                         ; $655e: $1c
    inc d                                         ; $655f: $14
    ld e, $16                                     ; $6560: $1e $16
    ld e, $1a                                     ; $6562: $1e $1a
    inc e                                         ; $6564: $1c
    inc b                                         ; $6565: $04
    jr jr_0db_6570                                ; $6566: $18 $08

    ld [bc], a                                    ; $6568: $02
    db $10                                        ; $6569: $10
    ld [bc], a                                    ; $656a: $02
    jr @+$04                                      ; $656b: $18 $02

    ld [$1802], sp                                ; $656d: $08 $02 $18

jr_0db_6570:
    add d                                         ; $6570: $82
    ld [$0218], sp                                ; $6571: $08 $18 $02
    nop                                           ; $6574: $00
    adc h                                         ; $6575: $8c
    ld e, [hl]                                    ; $6576: $5e
    ld [hl], e                                    ; $6577: $73
    ld a, a                                       ; $6578: $7f
    ld a, h                                       ; $6579: $7c
    ld a, $3f                                     ; $657a: $3e $3f
    ld a, l                                       ; $657c: $7d
    ld a, a                                       ; $657d: $7f
    cp e                                          ; $657e: $bb
    rst $38                                       ; $657f: $ff
    ld e, h                                       ; $6580: $5c
    ld a, a                                       ; $6581: $7f
    ld [bc], a                                    ; $6582: $02
    ccf                                           ; $6583: $3f
    stop                                          ; $6584: $10 $00
    add [hl]                                      ; $6586: $86
    add hl, bc                                    ; $6587: $09
    rrca                                          ; $6588: $0f
    adc a                                         ; $6589: $8f
    adc h                                         ; $658a: $8c
    sbc a                                         ; $658b: $9f
    sbc d                                         ; $658c: $9a
    ld [bc], a                                    ; $658d: $02
    sbc a                                         ; $658e: $9f
    add [hl]                                      ; $658f: $86
    cp [hl]                                       ; $6590: $be
    cp a                                          ; $6591: $bf
    xor a                                         ; $6592: $af
    cp a                                          ; $6593: $bf
    sub [hl]                                      ; $6594: $96
    sbc a                                         ; $6595: $9f
    ld [bc], a                                    ; $6596: $02
    rst $08                                       ; $6597: $cf
    stop                                          ; $6598: $10 $00
    add c                                         ; $659a: $81
    ld a, [bc]                                    ; $659b: $0a
    inc bc                                        ; $659c: $03
    ld c, $83                                     ; $659d: $0e $83
    rrca                                          ; $659f: $0f
    add hl, bc                                    ; $65a0: $09
    ld b, $05                                     ; $65a1: $06 $05
    ld c, $82                                     ; $65a3: $0e $82
    inc bc                                        ; $65a5: $03
    rrca                                          ; $65a6: $0f
    ld [bc], a                                    ; $65a7: $02
    ld c, $10                                     ; $65a8: $0e $10
    nop                                           ; $65aa: $00
    rst $38                                       ; $65ab: $ff
    add hl, bc                                    ; $65ac: $09
    ld [bc], a                                    ; $65ad: $02
    db $f4                                        ; $65ae: $f4
    dec bc                                        ; $65af: $0b
    ld a, [c]                                     ; $65b0: $f2
    ld bc, $f7ec                                  ; $65b1: $01 $ec $f7
    db $ec                                        ; $65b4: $ec
    rst $38                                       ; $65b5: $ff
    sub l                                         ; $65b6: $95
    nop                                           ; $65b7: $00
    ld [hl], $00                                  ; $65b8: $36 $00
    ld a, c                                       ; $65ba: $79
    nop                                           ; $65bb: $00
    ld d, b                                       ; $65bc: $50
    nop                                           ; $65bd: $00
    jr nc, jr_0db_65c0                            ; $65be: $30 $00

jr_0db_65c0:
    ld [bc], a                                    ; $65c0: $02
    nop                                           ; $65c1: $00
    ld b, b                                       ; $65c2: $40
    nop                                           ; $65c3: $00
    ld b, b                                       ; $65c4: $40
    nop                                           ; $65c5: $00
    ldh [rP1], a                                  ; $65c6: $e0 $00
    add b                                         ; $65c8: $80
    ld [$0400], sp                                ; $65c9: $08 $00 $04
    dec e                                         ; $65cc: $1d
    nop                                           ; $65cd: $00
    add l                                         ; $65ce: $85
    inc b                                         ; $65cf: $04
    nop                                           ; $65d0: $00
    ld [bc], a                                    ; $65d1: $02
    nop                                           ; $65d2: $00
    ld bc, $0009                                  ; $65d3: $01 $09 $00
    rst $38                                       ; $65d6: $ff
    ld de, $f906                                  ; $65d7: $11 $06 $f9
    rlca                                          ; $65da: $07
    ld a, [c]                                     ; $65db: $f2
    ld bc, $f6eb                                  ; $65dc: $01 $eb $f6
    ld [$eafe], a                                 ; $65df: $ea $fe $ea
    inc bc                                        ; $65e2: $03
    ld a, [$faf5]                                 ; $65e3: $fa $f5 $fa
    db $fd                                        ; $65e6: $fd
    ld a, [$0203]                                 ; $65e7: $fa $03 $02
    rra                                           ; $65ea: $1f
    ld [bc], a                                    ; $65eb: $02
    inc h                                         ; $65ec: $24
    ld [bc], a                                    ; $65ed: $02
    ld b, e                                       ; $65ee: $43
    adc h                                         ; $65ef: $8c
    ld d, a                                       ; $65f0: $57
    ld d, l                                       ; $65f1: $55
    ld h, a                                       ; $65f2: $67
    ld h, h                                       ; $65f3: $64
    ld a, [hl]                                    ; $65f4: $7e
    ld a, d                                       ; $65f5: $7a
    ld e, a                                       ; $65f6: $5f
    ld d, b                                       ; $65f7: $50
    rst $18                                       ; $65f8: $df
    ret c                                         ; $65f9: $d8

    adc a                                         ; $65fa: $8f
    adc c                                         ; $65fb: $89
    ld [bc], a                                    ; $65fc: $02
    cp [hl]                                       ; $65fd: $be
    ld [bc], a                                    ; $65fe: $02
    ld a, [$ad8a]                                 ; $65ff: $fa $8a $ad
    db $fd                                        ; $6602: $fd
    ld l, e                                       ; $6603: $6b
    ld a, a                                       ; $6604: $7f
    ld l, l                                       ; $6605: $6d
    ld a, a                                       ; $6606: $7f
    ld b, l                                       ; $6607: $45
    ld a, a                                       ; $6608: $7f
    ld h, a                                       ; $6609: $67
    ld a, a                                       ; $660a: $7f
    ld [bc], a                                    ; $660b: $02
    ld b, $82                                     ; $660c: $06 $82
    dec b                                         ; $660e: $05
    rlca                                          ; $660f: $07
    ld [bc], a                                    ; $6610: $02
    sbc a                                         ; $6611: $9f
    add e                                         ; $6612: $83
    ld d, a                                       ; $6613: $57
    ld e, a                                       ; $6614: $5f
    or a                                          ; $6615: $b7
    ld [bc], a                                    ; $6616: $02
    cp a                                          ; $6617: $bf
    sub l                                         ; $6618: $95
    cp [hl]                                       ; $6619: $be
    sbc l                                         ; $661a: $9d
    sbc a                                         ; $661b: $9f
    rst $18                                       ; $661c: $df
    ld e, l                                       ; $661d: $5d
    adc a                                         ; $661e: $8f
    adc d                                         ; $661f: $8a
    rrca                                          ; $6620: $0f
    inc c                                         ; $6621: $0c
    rrca                                          ; $6622: $0f
    ld c, $15                                     ; $6623: $0e $15
    dec e                                         ; $6625: $1d
    ld a, [hl+]                                   ; $6626: $2a
    ld a, $1b                                     ; $6627: $3e $1b
    rra                                           ; $6629: $1f
    dec de                                        ; $662a: $1b
    rra                                           ; $662b: $1f
    add hl, de                                    ; $662c: $19
    rra                                           ; $662d: $1f
    ld [bc], a                                    ; $662e: $02
    ld [$1c02], sp                                ; $662f: $08 $02 $1c
    add d                                         ; $6632: $82
    inc de                                        ; $6633: $13
    rra                                           ; $6634: $1f
    ld [bc], a                                    ; $6635: $02
    ld e, $8e                                     ; $6636: $1e $8e
    inc e                                         ; $6638: $1c
    inc b                                         ; $6639: $04
    ld e, $1a                                     ; $663a: $1e $1a
    ld e, $0e                                     ; $663c: $1e $0e
    ld e, $0e                                     ; $663e: $1e $0e
    ld e, $1a                                     ; $6640: $1e $1a
    inc e                                         ; $6642: $1c
    inc b                                         ; $6643: $04
    jr jr_0db_664e                                ; $6644: $18 $08

    inc b                                         ; $6646: $04
    db $10                                        ; $6647: $10
    ld [bc], a                                    ; $6648: $02
    ld [$1a02], sp                                ; $6649: $08 $02 $1a
    add d                                         ; $664c: $82
    rrca                                          ; $664d: $0f

jr_0db_664e:
    dec e                                         ; $664e: $1d
    ld [bc], a                                    ; $664f: $02
    nop                                           ; $6650: $00
    add e                                         ; $6651: $83
    ld [hl], a                                    ; $6652: $77
    ld a, h                                       ; $6653: $7c
    ld a, a                                       ; $6654: $7f
    ld [bc], a                                    ; $6655: $02
    ld a, e                                       ; $6656: $7b
    add a                                         ; $6657: $87
    ld a, a                                       ; $6658: $7f
    or a                                          ; $6659: $b7
    rst $38                                       ; $665a: $ff
    cp a                                          ; $665b: $bf
    rst $38                                       ; $665c: $ff
    rst $30                                       ; $665d: $f7
    rst $38                                       ; $665e: $ff
    ld [bc], a                                    ; $665f: $02
    ld a, [hl]                                    ; $6660: $7e
    stop                                          ; $6661: $10 $00
    add e                                         ; $6663: $83
    ld c, $0f                                     ; $6664: $0e $0f
    rst $08                                       ; $6666: $cf
    ld [bc], a                                    ; $6667: $02
    ld c, a                                       ; $6668: $4f
    adc c                                         ; $6669: $89
    rst $08                                       ; $666a: $cf
    sbc $df                                       ; $666b: $de $df
    dec a                                         ; $666d: $3d
    rst $38                                       ; $666e: $ff
    db $eb                                        ; $666f: $eb
    rst $38                                       ; $6670: $ff
    dec a                                         ; $6671: $3d
    ccf                                           ; $6672: $3f
    ld [bc], a                                    ; $6673: $02
    rra                                           ; $6674: $1f
    stop                                          ; $6675: $10 $00
    adc h                                         ; $6677: $8c
    ld e, $3a                                     ; $6678: $1e $3a
    inc e                                         ; $667a: $1c
    inc h                                         ; $667b: $24
    ld a, $36                                     ; $667c: $3e $36
    ccf                                           ; $667e: $3f
    cpl                                           ; $667f: $2f
    add hl, sp                                    ; $6680: $39
    ccf                                           ; $6681: $3f
    ld [hl], $3e                                  ; $6682: $36 $3e
    ld [bc], a                                    ; $6684: $02
    ld [$2002], sp                                ; $6685: $08 $02 $20
    stop                                          ; $6688: $10 $00
    rst $38                                       ; $668a: $ff
    add hl, bc                                    ; $668b: $09
    ld [bc], a                                    ; $668c: $02
    db $f4                                        ; $668d: $f4
    dec bc                                        ; $668e: $0b
    ld a, [c]                                     ; $668f: $f2
    ld bc, $f7ec                                  ; $6690: $01 $ec $f7
    db $ec                                        ; $6693: $ec
    rst $38                                       ; $6694: $ff
    sub l                                         ; $6695: $95
    nop                                           ; $6696: $00
    ld [hl], $00                                  ; $6697: $36 $00
    ld a, c                                       ; $6699: $79
    nop                                           ; $669a: $00
    ld d, b                                       ; $669b: $50
    nop                                           ; $669c: $00
    jr nc, jr_0db_669f                            ; $669d: $30 $00

jr_0db_669f:
    ld [bc], a                                    ; $669f: $02
    nop                                           ; $66a0: $00
    ld b, b                                       ; $66a1: $40
    nop                                           ; $66a2: $00
    ld b, b                                       ; $66a3: $40
    nop                                           ; $66a4: $00
    ldh [rP1], a                                  ; $66a5: $e0 $00
    add b                                         ; $66a7: $80
    ld [$0400], sp                                ; $66a8: $08 $00 $04
    dec e                                         ; $66ab: $1d
    nop                                           ; $66ac: $00
    add l                                         ; $66ad: $85
    inc b                                         ; $66ae: $04
    nop                                           ; $66af: $00
    ld [bc], a                                    ; $66b0: $02
    nop                                           ; $66b1: $00
    ld bc, $0009                                  ; $66b2: $01 $09 $00
    rst $38                                       ; $66b5: $ff
    ld de, $f906                                  ; $66b6: $11 $06 $f9
    rlca                                          ; $66b9: $07
    ld a, [c]                                     ; $66ba: $f2
    ld bc, $f6ec                                  ; $66bb: $01 $ec $f6
    db $eb                                        ; $66be: $eb
    cp $eb                                        ; $66bf: $fe $eb
    inc bc                                        ; $66c1: $03
    ei                                            ; $66c2: $fb
    push af                                       ; $66c3: $f5
    ei                                            ; $66c4: $fb
    db $fd                                        ; $66c5: $fd
    ei                                            ; $66c6: $fb
    inc bc                                        ; $66c7: $03
    ld [bc], a                                    ; $66c8: $02
    rra                                           ; $66c9: $1f
    ld [bc], a                                    ; $66ca: $02
    inc h                                         ; $66cb: $24
    ld [bc], a                                    ; $66cc: $02
    ld b, e                                       ; $66cd: $43
    adc h                                         ; $66ce: $8c
    ld d, a                                       ; $66cf: $57
    ld d, l                                       ; $66d0: $55
    ld l, a                                       ; $66d1: $6f
    ld l, h                                       ; $66d2: $6c
    ld a, [hl]                                    ; $66d3: $7e
    ld a, d                                       ; $66d4: $7a
    rst $18                                       ; $66d5: $df
    ret nc                                        ; $66d6: $d0

    sbc a                                         ; $66d7: $9f
    sbc b                                         ; $66d8: $98
    sbc a                                         ; $66d9: $9f
    sbc c                                         ; $66da: $99
    ld [bc], a                                    ; $66db: $02
    cp $8c                                        ; $66dc: $fe $8c
    cp d                                          ; $66de: $ba
    ld a, [$7d6d]                                 ; $66df: $fa $6d $7d
    ld l, e                                       ; $66e2: $6b
    ld a, a                                       ; $66e3: $7f
    ld l, l                                       ; $66e4: $6d
    ld a, a                                       ; $66e5: $7f
    ld b, l                                       ; $66e6: $45
    ld a, a                                       ; $66e7: $7f
    ld h, a                                       ; $66e8: $67
    ld a, a                                       ; $66e9: $7f
    ld [bc], a                                    ; $66ea: $02
    rlca                                          ; $66eb: $07
    add d                                         ; $66ec: $82
    dec c                                         ; $66ed: $0d
    rrca                                          ; $66ee: $0f
    ld [bc], a                                    ; $66ef: $02
    sbc a                                         ; $66f0: $9f
    sbc d                                         ; $66f1: $9a
    ld [hl], a                                    ; $66f2: $77
    ld a, a                                       ; $66f3: $7f
    or a                                          ; $66f4: $b7
    cp a                                          ; $66f5: $bf
    sbc a                                         ; $66f6: $9f
    sbc h                                         ; $66f7: $9c
    sbc l                                         ; $66f8: $9d
    sbc a                                         ; $66f9: $9f
    rst $18                                       ; $66fa: $df
    ld e, l                                       ; $66fb: $5d
    adc a                                         ; $66fc: $8f
    adc d                                         ; $66fd: $8a
    rrca                                          ; $66fe: $0f
    inc c                                         ; $66ff: $0c

Call_0db_6700:
Jump_0db_6700:
    ccf                                           ; $6700: $3f
    ld a, $25                                     ; $6701: $3e $25
    dec a                                         ; $6703: $3d
    ld a, [de]                                    ; $6704: $1a
    ld e, $0a                                     ; $6705: $1e $0a
    rrca                                          ; $6707: $0f
    dec de                                        ; $6708: $1b
    rra                                           ; $6709: $1f
    add hl, de                                    ; $670a: $19
    rra                                           ; $670b: $1f
    ld [bc], a                                    ; $670c: $02
    inc b                                         ; $670d: $04
    add e                                         ; $670e: $83
    dec de                                        ; $670f: $1b
    rra                                           ; $6710: $1f
    ld d, $03                                     ; $6711: $16 $03
    ld e, $8e                                     ; $6713: $1e $8e
    inc e                                         ; $6715: $1c
    inc b                                         ; $6716: $04
    ld e, $1a                                     ; $6717: $1e $1a
    ld e, $0e                                     ; $6719: $1e $0e
    ld e, $0e                                     ; $671b: $1e $0e
    ld e, $12                                     ; $671d: $1e $12
    inc e                                         ; $671f: $1c
    inc c                                         ; $6720: $0c
    jr @+$0a                                      ; $6721: $18 $08

    ld [bc], a                                    ; $6723: $02
    db $10                                        ; $6724: $10
    ld [bc], a                                    ; $6725: $02
    ld [$1802], sp                                ; $6726: $08 $02 $18
    add h                                         ; $6729: $84
    ld [$0c18], sp                                ; $672a: $08 $18 $0c
    inc e                                         ; $672d: $1c
    ld [bc], a                                    ; $672e: $02
    nop                                           ; $672f: $00
    add h                                         ; $6730: $84
    ld [hl], a                                    ; $6731: $77
    ld a, h                                       ; $6732: $7c
    ld a, a                                       ; $6733: $7f
    ld a, e                                       ; $6734: $7b
    ld [bc], a                                    ; $6735: $02
    rst $38                                       ; $6736: $ff
    add h                                         ; $6737: $84
    cp e                                          ; $6738: $bb
    rst $38                                       ; $6739: $ff
    cp a                                          ; $673a: $bf
    rst $38                                       ; $673b: $ff
    ld [bc], a                                    ; $673c: $02
    ld a, h                                       ; $673d: $7c
    ld [de], a                                    ; $673e: $12
    nop                                           ; $673f: $00
    add e                                         ; $6740: $83
    ld c, $0f                                     ; $6741: $0e $0f
    adc $02                                       ; $6743: $ce $02
    ld c, a                                       ; $6745: $4f
    add a                                         ; $6746: $87
    adc $96                                       ; $6747: $ce $96
    sbc a                                         ; $6749: $9f
    ld d, a                                       ; $674a: $57
    rst $18                                       ; $674b: $df
    db $dd                                        ; $674c: $dd
    rst $18                                       ; $674d: $df
    ld [bc], a                                    ; $674e: $02
    rrca                                          ; $674f: $0f
    ld [de], a                                    ; $6750: $12
    nop                                           ; $6751: $00
    add [hl]                                      ; $6752: $86
    ld e, $32                                     ; $6753: $1e $32
    inc a                                         ; $6755: $3c
    inc c                                         ; $6756: $0c
    inc a                                         ; $6757: $3c
    inc l                                         ; $6758: $2c
    ld [bc], a                                    ; $6759: $02
    ld a, $82                                     ; $675a: $3e $82
    ld sp, $023f                                  ; $675c: $31 $3f $02
    ld a, $14                                     ; $675f: $3e $14
    nop                                           ; $6761: $00
    rst $38                                       ; $6762: $ff
    add hl, bc                                    ; $6763: $09
    ld [bc], a                                    ; $6764: $02
    db $f4                                        ; $6765: $f4
    dec bc                                        ; $6766: $0b
    ld a, [c]                                     ; $6767: $f2
    ld bc, $f7ed                                  ; $6768: $01 $ed $f7
    db $ed                                        ; $676b: $ed
    rst $38                                       ; $676c: $ff
    sub b                                         ; $676d: $90
    nop                                           ; $676e: $00
    ld [hl], $00                                  ; $676f: $36 $00
    ld a, c                                       ; $6771: $79
    nop                                           ; $6772: $00
    ld d, b                                       ; $6773: $50
    nop                                           ; $6774: $00
    jr nz, jr_0db_6777                            ; $6775: $20 $00

jr_0db_6777:
    ld [bc], a                                    ; $6777: $02
    nop                                           ; $6778: $00
    ld b, b                                       ; $6779: $40
    nop                                           ; $677a: $00
    ret nz                                        ; $677b: $c0

    nop                                           ; $677c: $00
    ret nz                                        ; $677d: $c0

    ld [bc], a                                    ; $677e: $02
    nop                                           ; $677f: $00
    add e                                         ; $6780: $83
    ld [$0400], sp                                ; $6781: $08 $00 $04
    dec e                                         ; $6784: $1d
    nop                                           ; $6785: $00
    add e                                         ; $6786: $83
    inc b                                         ; $6787: $04
    nop                                           ; $6788: $00
    inc bc                                        ; $6789: $03
    dec bc                                        ; $678a: $0b
    nop                                           ; $678b: $00
    rst $38                                       ; $678c: $ff
    ld de, $f906                                  ; $678d: $11 $06 $f9
    rlca                                          ; $6790: $07
    ld a, [c]                                     ; $6791: $f2
    ld bc, $f6ec                                  ; $6792: $01 $ec $f6
    db $eb                                        ; $6795: $eb
    cp $eb                                        ; $6796: $fe $eb
    inc bc                                        ; $6798: $03
    ei                                            ; $6799: $fb
    push af                                       ; $679a: $f5
    ei                                            ; $679b: $fb
    db $fd                                        ; $679c: $fd
    ei                                            ; $679d: $fb
    ld [bc], a                                    ; $679e: $02
    ld [bc], a                                    ; $679f: $02
    rra                                           ; $67a0: $1f
    ld [bc], a                                    ; $67a1: $02
    inc h                                         ; $67a2: $24
    ld [bc], a                                    ; $67a3: $02
    ld b, e                                       ; $67a4: $43
    adc h                                         ; $67a5: $8c
    ld d, a                                       ; $67a6: $57
    ld d, l                                       ; $67a7: $55
    ld l, a                                       ; $67a8: $6f
    ld l, h                                       ; $67a9: $6c
    ld a, [hl]                                    ; $67aa: $7e
    ld a, d                                       ; $67ab: $7a
    rst $18                                       ; $67ac: $df
    ret nc                                        ; $67ad: $d0

    sbc a                                         ; $67ae: $9f
    sbc b                                         ; $67af: $98
    sbc a                                         ; $67b0: $9f
    sbc c                                         ; $67b1: $99
    ld [bc], a                                    ; $67b2: $02
    ld a, [hl]                                    ; $67b3: $7e
    adc h                                         ; $67b4: $8c
    db $eb                                        ; $67b5: $eb
    ei                                            ; $67b6: $fb
    db $ed                                        ; $67b7: $ed
    db $fd                                        ; $67b8: $fd
    ld l, e                                       ; $67b9: $6b
    ld a, a                                       ; $67ba: $7f
    ld e, l                                       ; $67bb: $5d
    ld a, a                                       ; $67bc: $7f
    ld c, l                                       ; $67bd: $4d
    ld a, a                                       ; $67be: $7f
    ld e, a                                       ; $67bf: $5f
    ld a, a                                       ; $67c0: $7f
    ld [bc], a                                    ; $67c1: $02
    ld b, $82                                     ; $67c2: $06 $82
    dec b                                         ; $67c4: $05
    rlca                                          ; $67c5: $07
    ld [bc], a                                    ; $67c6: $02
    sbc a                                         ; $67c7: $9f
    add e                                         ; $67c8: $83
    ld d, a                                       ; $67c9: $57
    ld e, a                                       ; $67ca: $5f
    or a                                          ; $67cb: $b7
    ld [bc], a                                    ; $67cc: $02
    cp a                                          ; $67cd: $bf
    sub l                                         ; $67ce: $95
    cp [hl]                                       ; $67cf: $be
    sbc [hl]                                      ; $67d0: $9e
    sbc a                                         ; $67d1: $9f
    rst $18                                       ; $67d2: $df
    ld e, h                                       ; $67d3: $5c
    adc a                                         ; $67d4: $8f
    adc d                                         ; $67d5: $8a
    rrca                                          ; $67d6: $0f
    inc c                                         ; $67d7: $0c
    rrca                                          ; $67d8: $0f
    ld c, $15                                     ; $67d9: $0e $15
    dec e                                         ; $67db: $1d
    ld a, [hl+]                                   ; $67dc: $2a
    ld a, $1b                                     ; $67dd: $3e $1b
    rra                                           ; $67df: $1f
    ld d, $1f                                     ; $67e0: $16 $1f
    inc de                                        ; $67e2: $13
    rra                                           ; $67e3: $1f
    ld [bc], a                                    ; $67e4: $02
    ld [$1c02], sp                                ; $67e5: $08 $02 $1c
    add d                                         ; $67e8: $82
    inc de                                        ; $67e9: $13
    rra                                           ; $67ea: $1f
    ld [bc], a                                    ; $67eb: $02
    ld e, $8e                                     ; $67ec: $1e $8e
    inc e                                         ; $67ee: $1c
    inc b                                         ; $67ef: $04
    ld e, $1a                                     ; $67f0: $1e $1a
    ld e, $16                                     ; $67f2: $1e $16
    ld e, $16                                     ; $67f4: $1e $16
    ld e, $1a                                     ; $67f6: $1e $1a
    inc e                                         ; $67f8: $1c
    inc b                                         ; $67f9: $04
    jr jr_0db_6804                                ; $67fa: $18 $08

    ld [bc], a                                    ; $67fc: $02
    db $10                                        ; $67fd: $10
    ld [bc], a                                    ; $67fe: $02
    jr @+$04                                      ; $67ff: $18 $02

    ld [$1802], sp                                ; $6801: $08 $02 $18

jr_0db_6804:
    add d                                         ; $6804: $82
    ld [$0218], sp                                ; $6805: $08 $18 $02
    nop                                           ; $6808: $00
    add d                                         ; $6809: $82
    ld e, a                                       ; $680a: $5f
    ld [hl], b                                    ; $680b: $70
    ld [bc], a                                    ; $680c: $02
    ld a, a                                       ; $680d: $7f
    add [hl]                                      ; $680e: $86
    ld a, l                                       ; $680f: $7d
    ld a, a                                       ; $6810: $7f
    cp e                                          ; $6811: $bb
    rst $38                                       ; $6812: $ff
    sbc a                                         ; $6813: $9f
    rst $38                                       ; $6814: $ff
    ld [bc], a                                    ; $6815: $02
    ld a, b                                       ; $6816: $78
    ld [de], a                                    ; $6817: $12
    nop                                           ; $6818: $00
    adc b                                         ; $6819: $88
    dec c                                         ; $681a: $0d
    rrca                                          ; $681b: $0f
    adc a                                         ; $681c: $8f
    adc h                                         ; $681d: $8c
    adc a                                         ; $681e: $8f
    adc d                                         ; $681f: $8a
    dec de                                        ; $6820: $1b
    rra                                           ; $6821: $1f
    ld [bc], a                                    ; $6822: $02
    sbc a                                         ; $6823: $9f
    add d                                         ; $6824: $82
    sub [hl]                                      ; $6825: $96
    sbc a                                         ; $6826: $9f
    ld [bc], a                                    ; $6827: $02
    rrca                                          ; $6828: $0f
    ld [de], a                                    ; $6829: $12
    nop                                           ; $682a: $00
    adc h                                         ; $682b: $8c
    inc d                                         ; $682c: $14
    inc e                                         ; $682d: $1c
    ld e, $12                                     ; $682e: $1e $12
    ld d, $1e                                     ; $6830: $16 $1e
    ld c, $1e                                     ; $6832: $0e $1e
    ld a, [de]                                    ; $6834: $1a
    ld e, $0f                                     ; $6835: $1e $0f
    rra                                           ; $6837: $1f
    ld [bc], a                                    ; $6838: $02
    jr jr_0db_684d                                ; $6839: $18 $12

    nop                                           ; $683b: $00
    rst $38                                       ; $683c: $ff
    add hl, bc                                    ; $683d: $09
    ld [bc], a                                    ; $683e: $02
    db $f4                                        ; $683f: $f4
    dec bc                                        ; $6840: $0b
    ld a, [c]                                     ; $6841: $f2
    ld bc, $f7ed                                  ; $6842: $01 $ed $f7
    db $ed                                        ; $6845: $ed
    rst $38                                       ; $6846: $ff
    sub b                                         ; $6847: $90
    nop                                           ; $6848: $00
    ld [hl], $00                                  ; $6849: $36 $00
    ld a, c                                       ; $684b: $79
    nop                                           ; $684c: $00

jr_0db_684d:
    ld d, b                                       ; $684d: $50
    nop                                           ; $684e: $00
    jr nz, jr_0db_6851                            ; $684f: $20 $00

jr_0db_6851:
    ld [bc], a                                    ; $6851: $02
    nop                                           ; $6852: $00
    ld b, b                                       ; $6853: $40
    nop                                           ; $6854: $00
    ret nz                                        ; $6855: $c0

    nop                                           ; $6856: $00
    ret nz                                        ; $6857: $c0

    ld [bc], a                                    ; $6858: $02
    nop                                           ; $6859: $00
    add e                                         ; $685a: $83
    ld [$0400], sp                                ; $685b: $08 $00 $04
    dec e                                         ; $685e: $1d
    nop                                           ; $685f: $00
    add l                                         ; $6860: $85
    inc b                                         ; $6861: $04
    nop                                           ; $6862: $00
    ld [bc], a                                    ; $6863: $02
    nop                                           ; $6864: $00
    ld bc, $0009                                  ; $6865: $01 $09 $00
    rst $38                                       ; $6868: $ff
    ld de, $f906                                  ; $6869: $11 $06 $f9
    rlca                                          ; $686c: $07
    ld a, [c]                                     ; $686d: $f2
    ld bc, $f6eb                                  ; $686e: $01 $eb $f6
    ld [$eafe], a                                 ; $6871: $ea $fe $ea
    inc bc                                        ; $6874: $03
    ld a, [$faf5]                                 ; $6875: $fa $f5 $fa
    db $fd                                        ; $6878: $fd
    ld a, [$0202]                                 ; $6879: $fa $02 $02
    rra                                           ; $687c: $1f
    ld [bc], a                                    ; $687d: $02
    inc h                                         ; $687e: $24
    ld [bc], a                                    ; $687f: $02
    ld b, d                                       ; $6880: $42
    adc h                                         ; $6881: $8c
    ld d, a                                       ; $6882: $57
    ld d, l                                       ; $6883: $55
    ld h, a                                       ; $6884: $67
    ld h, h                                       ; $6885: $64
    ld a, [hl]                                    ; $6886: $7e
    ld a, d                                       ; $6887: $7a
    ld a, a                                       ; $6888: $7f
    ld [hl], b                                    ; $6889: $70
    ld e, a                                       ; $688a: $5f
    ld e, b                                       ; $688b: $58
    adc a                                         ; $688c: $8f
    adc c                                         ; $688d: $89
    ld [bc], a                                    ; $688e: $02
    cp [hl]                                       ; $688f: $be
    adc h                                         ; $6890: $8c
    ld l, d                                       ; $6891: $6a
    ld a, d                                       ; $6892: $7a
    xor l                                         ; $6893: $ad
    db $fd                                        ; $6894: $fd
    db $db                                        ; $6895: $db
    rst $38                                       ; $6896: $ff
    ld e, l                                       ; $6897: $5d
    ld a, a                                       ; $6898: $7f
    call $9dff                                    ; $6899: $cd $ff $9d
    rst $38                                       ; $689c: $ff
    ld [bc], a                                    ; $689d: $02
    ld b, $82                                     ; $689e: $06 $82
    dec b                                         ; $68a0: $05
    rlca                                          ; $68a1: $07
    ld [bc], a                                    ; $68a2: $02
    sbc a                                         ; $68a3: $9f
    add e                                         ; $68a4: $83
    ld d, a                                       ; $68a5: $57
    ld e, a                                       ; $68a6: $5f
    cp e                                          ; $68a7: $bb
    inc bc                                        ; $68a8: $03
    cp a                                          ; $68a9: $bf
    sub h                                         ; $68aa: $94
    sbc [hl]                                      ; $68ab: $9e
    sbc a                                         ; $68ac: $9f
    rst $18                                       ; $68ad: $df
    ld e, h                                       ; $68ae: $5c
    adc a                                         ; $68af: $8f
    adc d                                         ; $68b0: $8a
    rrca                                          ; $68b1: $0f
    inc c                                         ; $68b2: $0c
    rrca                                          ; $68b3: $0f
    ld c, $15                                     ; $68b4: $0e $15
    dec e                                         ; $68b6: $1d
    ld a, [hl+]                                   ; $68b7: $2a
    ld a, $2b                                     ; $68b8: $3e $2b
    ccf                                           ; $68ba: $3f
    ld d, $1f                                     ; $68bb: $16 $1f
    rla                                           ; $68bd: $17
    rra                                           ; $68be: $1f
    ld [bc], a                                    ; $68bf: $02
    ld [$1c02], sp                                ; $68c0: $08 $02 $1c
    add d                                         ; $68c3: $82
    inc de                                        ; $68c4: $13
    rra                                           ; $68c5: $1f
    ld [bc], a                                    ; $68c6: $02
    ld e, $8e                                     ; $68c7: $1e $8e
    inc e                                         ; $68c9: $1c
    inc d                                         ; $68ca: $14
    ld e, $0a                                     ; $68cb: $1e $0a
    inc e                                         ; $68cd: $1c
    inc d                                         ; $68ce: $14
    ld e, $16                                     ; $68cf: $1e $16
    ld e, $0a                                     ; $68d1: $1e $0a
    inc e                                         ; $68d3: $1c
    inc b                                         ; $68d4: $04
    jr @+$0a                                      ; $68d5: $18 $08

    inc b                                         ; $68d7: $04
    db $10                                        ; $68d8: $10
    ld [bc], a                                    ; $68d9: $02
    ld [$1802], sp                                ; $68da: $08 $02 $18
    add d                                         ; $68dd: $82
    ld [$0218], sp                                ; $68de: $08 $18 $02
    nop                                           ; $68e1: $00
    add [hl]                                      ; $68e2: $86
    ld e, [hl]                                    ; $68e3: $5e
    ld h, a                                       ; $68e4: $67
    ccf                                           ; $68e5: $3f
    dec sp                                        ; $68e6: $3b
    ld a, [hl]                                    ; $68e7: $7e
    ld a, l                                       ; $68e8: $7d
    ld [bc], a                                    ; $68e9: $02
    ld a, a                                       ; $68ea: $7f
    add h                                         ; $68eb: $84
    cp h                                          ; $68ec: $bc
    rst $38                                       ; $68ed: $ff
    ld e, a                                       ; $68ee: $5f
    ld a, a                                       ; $68ef: $7f
    ld [bc], a                                    ; $68f0: $02
    jr c, jr_0db_6903                             ; $68f1: $38 $10

    nop                                           ; $68f3: $00
    add [hl]                                      ; $68f4: $86
    add hl, bc                                    ; $68f5: $09
    rrca                                          ; $68f6: $0f
    adc a                                         ; $68f7: $8f
    adc c                                         ; $68f8: $89
    ld e, a                                       ; $68f9: $5f
    push de                                       ; $68fa: $d5
    ld [bc], a                                    ; $68fb: $02
    rst $18                                       ; $68fc: $df
    ld [bc], a                                    ; $68fd: $02
    rst $38                                       ; $68fe: $ff
    add h                                         ; $68ff: $84
    xor a                                         ; $6900: $af
    cp a                                          ; $6901: $bf
    rst $10                                       ; $6902: $d7

jr_0db_6903:
    rst $18                                       ; $6903: $df
    ld [bc], a                                    ; $6904: $02
    ld c, $10                                     ; $6905: $0e $10
    nop                                           ; $6907: $00
    adc b                                         ; $6908: $88
    inc d                                         ; $6909: $14
    inc e                                         ; $690a: $1c
    ld a, [de]                                    ; $690b: $1a
    ld e, $1a                                     ; $690c: $1e $1a
    ld b, $14                                     ; $690e: $06 $14
    inc e                                         ; $6910: $1c
    ld [bc], a                                    ; $6911: $02
    ld e, $82                                     ; $6912: $1e $82
    inc bc                                        ; $6914: $03
    rra                                           ; $6915: $1f
    ld [bc], a                                    ; $6916: $02
    ld e, $12                                     ; $6917: $1e $12
    nop                                           ; $6919: $00
    rst $38                                       ; $691a: $ff
    add hl, bc                                    ; $691b: $09
    ld [bc], a                                    ; $691c: $02
    db $f4                                        ; $691d: $f4
    dec bc                                        ; $691e: $0b
    ld a, [c]                                     ; $691f: $f2
    ld bc, $f7ec                                  ; $6920: $01 $ec $f7
    db $ec                                        ; $6923: $ec
    rst $38                                       ; $6924: $ff
    adc d                                         ; $6925: $8a
    nop                                           ; $6926: $00
    ld [hl], $00                                  ; $6927: $36 $00
    ld a, e                                       ; $6929: $7b
    nop                                           ; $692a: $00
    ld d, b                                       ; $692b: $50
    nop                                           ; $692c: $00
    jr nc, jr_0db_692f                            ; $692d: $30 $00

jr_0db_692f:
    ld [bc], a                                    ; $692f: $02
    inc bc                                        ; $6930: $03
    nop                                           ; $6931: $00
    adc b                                         ; $6932: $88
    ld b, b                                       ; $6933: $40
    nop                                           ; $6934: $00
    ldh [rP1], a                                  ; $6935: $e0 $00
    add b                                         ; $6937: $80
    ld [$0400], sp                                ; $6938: $08 $00 $04
    dec e                                         ; $693b: $1d
    nop                                           ; $693c: $00
    add l                                         ; $693d: $85
    inc b                                         ; $693e: $04
    nop                                           ; $693f: $00
    ld [bc], a                                    ; $6940: $02
    nop                                           ; $6941: $00
    ld bc, $0009                                  ; $6942: $01 $09 $00
    rst $38                                       ; $6945: $ff
    ld de, $f906                                  ; $6946: $11 $06 $f9
    rlca                                          ; $6949: $07
    ld a, [c]                                     ; $694a: $f2
    ld bc, $f6eb                                  ; $694b: $01 $eb $f6
    ld [$eafe], a                                 ; $694e: $ea $fe $ea
    inc bc                                        ; $6951: $03
    ld a, [$faf5]                                 ; $6952: $fa $f5 $fa
    db $fd                                        ; $6955: $fd
    ld a, [$0204]                                 ; $6956: $fa $04 $02
    rra                                           ; $6959: $1f
    ld [bc], a                                    ; $695a: $02
    inc h                                         ; $695b: $24
    ld [bc], a                                    ; $695c: $02
    ld b, e                                       ; $695d: $43
    adc h                                         ; $695e: $8c
    ld d, a                                       ; $695f: $57
    ld d, l                                       ; $6960: $55
    ld h, a                                       ; $6961: $67
    ld h, h                                       ; $6962: $64
    ld a, [hl]                                    ; $6963: $7e
    ld a, d                                       ; $6964: $7a
    ld e, a                                       ; $6965: $5f
    ld d, b                                       ; $6966: $50
    rst $18                                       ; $6967: $df
    ret c                                         ; $6968: $d8

    adc a                                         ; $6969: $8f
    adc c                                         ; $696a: $89
    ld [bc], a                                    ; $696b: $02
    cp [hl]                                       ; $696c: $be
    adc h                                         ; $696d: $8c
    ld [$adfa], a                                 ; $696e: $ea $fa $ad
    db $fd                                        ; $6971: $fd
    ld e, e                                       ; $6972: $5b
    ld a, a                                       ; $6973: $7f
    ld e, l                                       ; $6974: $5d
    ld a, a                                       ; $6975: $7f
    sbc l                                         ; $6976: $9d
    rst $38                                       ; $6977: $ff
    sbc l                                         ; $6978: $9d
    rst $38                                       ; $6979: $ff
    ld [bc], a                                    ; $697a: $02
    inc b                                         ; $697b: $04
    add d                                         ; $697c: $82
    dec bc                                        ; $697d: $0b
    rrca                                          ; $697e: $0f
    ld [bc], a                                    ; $697f: $02
    cp a                                          ; $6980: $bf
    add h                                         ; $6981: $84
    ld d, e                                       ; $6982: $53
    ld e, a                                       ; $6983: $5f
    sbc l                                         ; $6984: $9d
    sbc a                                         ; $6985: $9f
    ld [bc], a                                    ; $6986: $02
    cp a                                          ; $6987: $bf
    sub h                                         ; $6988: $94
    cp [hl]                                       ; $6989: $be
    cp a                                          ; $698a: $bf
    rst $18                                       ; $698b: $df
    ld e, [hl]                                    ; $698c: $5e
    adc a                                         ; $698d: $8f
    adc c                                         ; $698e: $89
    rrca                                          ; $698f: $0f
    ld c, $0f                                     ; $6990: $0e $0f
    ld c, $15                                     ; $6992: $0e $15
    dec e                                         ; $6994: $1d
    ld a, [hl+]                                   ; $6995: $2a
    ld a, $17                                     ; $6996: $3e $17
    rra                                           ; $6998: $1f
    ld h, $3f                                     ; $6999: $26 $3f
    cpl                                           ; $699b: $2f
    ccf                                           ; $699c: $3f
    ld [bc], a                                    ; $699d: $02
    db $10                                        ; $699e: $10
    ld [bc], a                                    ; $699f: $02
    inc e                                         ; $69a0: $1c
    add d                                         ; $69a1: $82
    dec de                                        ; $69a2: $1b
    rra                                           ; $69a3: $1f
    ld [bc], a                                    ; $69a4: $02
    ld e, $85                                     ; $69a5: $1e $85
    inc e                                         ; $69a7: $1c
    inc d                                         ; $69a8: $14
    ld e, $0a                                     ; $69a9: $1e $0a
    inc c                                         ; $69ab: $0c
    ld [bc], a                                    ; $69ac: $02
    inc e                                         ; $69ad: $1c
    add a                                         ; $69ae: $87
    inc c                                         ; $69af: $0c
    ld e, $0a                                     ; $69b0: $1e $0a
    inc e                                         ; $69b2: $1c
    inc b                                         ; $69b3: $04
    jr @+$0a                                      ; $69b4: $18 $08

    inc b                                         ; $69b6: $04
    db $10                                        ; $69b7: $10
    ld [bc], a                                    ; $69b8: $02
    ld [$1802], sp                                ; $69b9: $08 $02 $18
    add d                                         ; $69bc: $82
    ld [$0218], sp                                ; $69bd: $08 $18 $02
    nop                                           ; $69c0: $00
    adc h                                         ; $69c1: $8c
    cp [hl]                                       ; $69c2: $be
    rst $28                                       ; $69c3: $ef
    ld a, [hl]                                    ; $69c4: $7e
    ld [hl], a                                    ; $69c5: $77
    ld a, $3b                                     ; $69c6: $3e $3b
    ld a, l                                       ; $69c8: $7d
    ld a, a                                       ; $69c9: $7f
    cp a                                          ; $69ca: $bf
    rst $38                                       ; $69cb: $ff
    ld c, a                                       ; $69cc: $4f
    ld a, a                                       ; $69cd: $7f
    ld [bc], a                                    ; $69ce: $02
    add hl, sp                                    ; $69cf: $39
    stop                                          ; $69d0: $10 $00
    adc [hl]                                      ; $69d2: $8e
    daa                                           ; $69d3: $27
    ccf                                           ; $69d4: $3f
    cp a                                          ; $69d5: $bf
    or e                                          ; $69d6: $b3
    sbc a                                         ; $69d7: $9f
    sub l                                         ; $69d8: $95
    ld a, a                                       ; $69d9: $7f
    cp $ef                                        ; $69da: $fe $ef
    rst $38                                       ; $69dc: $ff
    ccf                                           ; $69dd: $3f
    rst $38                                       ; $69de: $ff
    rst $30                                       ; $69df: $f7
    rst $38                                       ; $69e0: $ff
    ld [bc], a                                    ; $69e1: $02
    rrca                                          ; $69e2: $0f
    stop                                          ; $69e3: $10 $00
    adc [hl]                                      ; $69e5: $8e
    ld e, b                                       ; $69e6: $58
    ld a, b                                       ; $69e7: $78
    ld e, b                                       ; $69e8: $58
    ld a, b                                       ; $69e9: $78
    ld d, b                                       ; $69ea: $50
    ld [hl], b                                    ; $69eb: $70
    ld a, b                                       ; $69ec: $78
    jr c, @+$41                                   ; $69ed: $38 $3f

    ld a, a                                       ; $69ef: $7f
    ld a, c                                       ; $69f0: $79
    ld a, a                                       ; $69f1: $7f
    halt                                          ; $69f2: $76
    ld a, [hl]                                    ; $69f3: $7e
    ld [bc], a                                    ; $69f4: $02
    jr c, jr_0db_6a07                             ; $69f5: $38 $10

    nop                                           ; $69f7: $00
    rst $38                                       ; $69f8: $ff
    add hl, bc                                    ; $69f9: $09
    ld [bc], a                                    ; $69fa: $02
    db $f4                                        ; $69fb: $f4
    dec bc                                        ; $69fc: $0b
    ld a, [c]                                     ; $69fd: $f2
    ld bc, $f7ec                                  ; $69fe: $01 $ec $f7
    db $ec                                        ; $6a01: $ec
    rst $38                                       ; $6a02: $ff
    sub l                                         ; $6a03: $95
    nop                                           ; $6a04: $00
    ld [hl], $00                                  ; $6a05: $36 $00

jr_0db_6a07:
    ld a, c                                       ; $6a07: $79
    nop                                           ; $6a08: $00
    ld d, b                                       ; $6a09: $50
    nop                                           ; $6a0a: $00
    jr nc, jr_0db_6a0d                            ; $6a0b: $30 $00

jr_0db_6a0d:
    ld [bc], a                                    ; $6a0d: $02
    nop                                           ; $6a0e: $00
    ld b, b                                       ; $6a0f: $40
    nop                                           ; $6a10: $00
    ld b, b                                       ; $6a11: $40
    nop                                           ; $6a12: $00
    ldh [rP1], a                                  ; $6a13: $e0 $00
    add b                                         ; $6a15: $80
    ld [$0400], sp                                ; $6a16: $08 $00 $04
    dec e                                         ; $6a19: $1d
    nop                                           ; $6a1a: $00
    add l                                         ; $6a1b: $85
    inc b                                         ; $6a1c: $04
    nop                                           ; $6a1d: $00
    ld [bc], a                                    ; $6a1e: $02
    nop                                           ; $6a1f: $00
    ld bc, $0009                                  ; $6a20: $01 $09 $00
    rst $38                                       ; $6a23: $ff
    ld de, $f906                                  ; $6a24: $11 $06 $f9
    rlca                                          ; $6a27: $07
    ld a, [c]                                     ; $6a28: $f2
    ld bc, $f6ec                                  ; $6a29: $01 $ec $f6
    db $eb                                        ; $6a2c: $eb
    cp $eb                                        ; $6a2d: $fe $eb
    inc bc                                        ; $6a2f: $03
    ei                                            ; $6a30: $fb
    push af                                       ; $6a31: $f5
    ei                                            ; $6a32: $fb
    db $fd                                        ; $6a33: $fd
    ei                                            ; $6a34: $fb
    inc b                                         ; $6a35: $04
    ld [bc], a                                    ; $6a36: $02
    rra                                           ; $6a37: $1f
    ld [bc], a                                    ; $6a38: $02
    inc h                                         ; $6a39: $24
    ld [bc], a                                    ; $6a3a: $02
    ld b, e                                       ; $6a3b: $43
    adc h                                         ; $6a3c: $8c
    ld d, a                                       ; $6a3d: $57
    ld d, l                                       ; $6a3e: $55
    ld l, a                                       ; $6a3f: $6f
    ld l, h                                       ; $6a40: $6c
    ld a, [hl]                                    ; $6a41: $7e
    ld a, d                                       ; $6a42: $7a
    rst $18                                       ; $6a43: $df
    ret nc                                        ; $6a44: $d0

    sbc a                                         ; $6a45: $9f
    sbc b                                         ; $6a46: $98
    sbc a                                         ; $6a47: $9f
    sbc c                                         ; $6a48: $99
    ld [bc], a                                    ; $6a49: $02
    cp $8c                                        ; $6a4a: $fe $8c
    db $eb                                        ; $6a4c: $eb
    ei                                            ; $6a4d: $fb
    ld l, l                                       ; $6a4e: $6d
    ld a, l                                       ; $6a4f: $7d
    ld e, e                                       ; $6a50: $5b
    ld a, a                                       ; $6a51: $7f
    ld e, l                                       ; $6a52: $5d
    ld a, a                                       ; $6a53: $7f
    adc l                                         ; $6a54: $8d
    rst $38                                       ; $6a55: $ff
    sbc l                                         ; $6a56: $9d
    rst $38                                       ; $6a57: $ff
    ld [bc], a                                    ; $6a58: $02
    ld b, $82                                     ; $6a59: $06 $82
    dec bc                                        ; $6a5b: $0b
    rrca                                          ; $6a5c: $0f
    ld [bc], a                                    ; $6a5d: $02
    cp a                                          ; $6a5e: $bf
    add e                                         ; $6a5f: $83
    ld d, e                                       ; $6a60: $53
    ld e, a                                       ; $6a61: $5f
    cp l                                          ; $6a62: $bd
    inc bc                                        ; $6a63: $03
    cp a                                          ; $6a64: $bf
    adc b                                         ; $6a65: $88
    sbc [hl]                                      ; $6a66: $9e
    sbc a                                         ; $6a67: $9f
    rst $18                                       ; $6a68: $df
    ld e, [hl]                                    ; $6a69: $5e
    adc a                                         ; $6a6a: $8f
    adc c                                         ; $6a6b: $89
    rlca                                          ; $6a6c: $07
    ld b, $02                                     ; $6a6d: $06 $02
    ccf                                           ; $6a6f: $3f
    adc d                                         ; $6a70: $8a
    inc h                                         ; $6a71: $24
    inc a                                         ; $6a72: $3c
    dec de                                        ; $6a73: $1b
    rra                                           ; $6a74: $1f
    ld [de], a                                    ; $6a75: $12
    rra                                           ; $6a76: $1f
    rla                                           ; $6a77: $17
    rra                                           ; $6a78: $1f
    daa                                           ; $6a79: $27
    ccf                                           ; $6a7a: $3f
    ld [bc], a                                    ; $6a7b: $02
    ld [$1f02], sp                                ; $6a7c: $08 $02 $1f
    add d                                         ; $6a7f: $82
    ld a, [de]                                    ; $6a80: $1a
    ld e, $03                                     ; $6a81: $1e $03
    inc e                                         ; $6a83: $1c
    add h                                         ; $6a84: $84
    inc d                                         ; $6a85: $14
    ld e, $0a                                     ; $6a86: $1e $0a
    inc c                                         ; $6a88: $0c
    ld [bc], a                                    ; $6a89: $02
    inc e                                         ; $6a8a: $1c
    add a                                         ; $6a8b: $87
    inc c                                         ; $6a8c: $0c
    ld e, $0a                                     ; $6a8d: $1e $0a
    inc e                                         ; $6a8f: $1c
    inc b                                         ; $6a90: $04
    jr @+$0a                                      ; $6a91: $18 $08

    ld [bc], a                                    ; $6a93: $02
    db $10                                        ; $6a94: $10
    ld [bc], a                                    ; $6a95: $02
    ld [$1802], sp                                ; $6a96: $08 $02 $18
    add h                                         ; $6a99: $84
    ld [$0818], sp                                ; $6a9a: $08 $18 $08
    jr jr_0db_6aa1                                ; $6a9d: $18 $02

    nop                                           ; $6a9f: $00
    adc d                                         ; $6aa0: $8a

jr_0db_6aa1:
    cp [hl]                                       ; $6aa1: $be
    rst $20                                       ; $6aa2: $e7
    ld a, [hl]                                    ; $6aa3: $7e
    ld a, c                                       ; $6aa4: $79
    ld a, l                                       ; $6aa5: $7d
    ld a, a                                       ; $6aa6: $7f
    cp l                                          ; $6aa7: $bd
    rst $38                                       ; $6aa8: $ff
    ld e, [hl]                                    ; $6aa9: $5e
    ld a, a                                       ; $6aaa: $7f
    ld [bc], a                                    ; $6aab: $02
    dec sp                                        ; $6aac: $3b
    ld [de], a                                    ; $6aad: $12
    nop                                           ; $6aae: $00
    adc h                                         ; $6aaf: $8c
    inc de                                        ; $6ab0: $13
    rra                                           ; $6ab1: $1f
    cp a                                          ; $6ab2: $bf
    or e                                          ; $6ab3: $b3
    sbc a                                         ; $6ab4: $9f
    sub l                                         ; $6ab5: $95
    sbc a                                         ; $6ab6: $9f
    sbc [hl]                                      ; $6ab7: $9e
    xor [hl]                                      ; $6ab8: $ae
    cp a                                          ; $6ab9: $bf
    ld l, a                                       ; $6aba: $6f
    rst $38                                       ; $6abb: $ff
    ld [bc], a                                    ; $6abc: $02
    cp $12                                        ; $6abd: $fe $12
    nop                                           ; $6abf: $00
    adc b                                         ; $6ac0: $88
    ld d, b                                       ; $6ac1: $50
    ld [hl], b                                    ; $6ac2: $70
    ld e, b                                       ; $6ac3: $58
    ld a, b                                       ; $6ac4: $78
    jr nc, jr_0db_6b37                            ; $6ac5: $30 $70

    jr c, jr_0db_6b41                             ; $6ac7: $38 $78

    ld [bc], a                                    ; $6ac9: $02
    ld a, [hl]                                    ; $6aca: $7e
    add d                                         ; $6acb: $82
    ld h, e                                       ; $6acc: $63
    ld a, a                                       ; $6acd: $7f
    ld [bc], a                                    ; $6ace: $02
    ld a, [hl]                                    ; $6acf: $7e
    ld [de], a                                    ; $6ad0: $12
    nop                                           ; $6ad1: $00
    rst $38                                       ; $6ad2: $ff
    add hl, bc                                    ; $6ad3: $09
    ld [bc], a                                    ; $6ad4: $02
    db $f4                                        ; $6ad5: $f4
    dec bc                                        ; $6ad6: $0b
    ld a, [c]                                     ; $6ad7: $f2
    ld bc, $f7ed                                  ; $6ad8: $01 $ed $f7
    db $ed                                        ; $6adb: $ed
    rst $38                                       ; $6adc: $ff
    sub b                                         ; $6add: $90
    nop                                           ; $6ade: $00
    ld [hl], $00                                  ; $6adf: $36 $00
    ld a, c                                       ; $6ae1: $79
    nop                                           ; $6ae2: $00
    ld d, b                                       ; $6ae3: $50
    nop                                           ; $6ae4: $00
    jr nz, jr_0db_6ae7                            ; $6ae5: $20 $00

jr_0db_6ae7:
    ld [bc], a                                    ; $6ae7: $02
    nop                                           ; $6ae8: $00
    ld b, b                                       ; $6ae9: $40
    nop                                           ; $6aea: $00
    ret nz                                        ; $6aeb: $c0

    nop                                           ; $6aec: $00
    ret nz                                        ; $6aed: $c0

    ld [bc], a                                    ; $6aee: $02
    nop                                           ; $6aef: $00
    add e                                         ; $6af0: $83
    ld [$0400], sp                                ; $6af1: $08 $00 $04
    dec e                                         ; $6af4: $1d
    nop                                           ; $6af5: $00
    add e                                         ; $6af6: $83
    ld b, $00                                     ; $6af7: $06 $00
    ld bc, $000b                                  ; $6af9: $01 $0b $00
    rst $38                                       ; $6afc: $ff
    ld de, $f906                                  ; $6afd: $11 $06 $f9
    rlca                                          ; $6b00: $07
    ld a, [c]                                     ; $6b01: $f2
    ld bc, $f6ec                                  ; $6b02: $01 $ec $f6
    db $eb                                        ; $6b05: $eb
    cp $eb                                        ; $6b06: $fe $eb
    inc bc                                        ; $6b08: $03
    ei                                            ; $6b09: $fb
    push af                                       ; $6b0a: $f5
    ei                                            ; $6b0b: $fb
    db $fd                                        ; $6b0c: $fd
    ei                                            ; $6b0d: $fb
    inc bc                                        ; $6b0e: $03
    ld [bc], a                                    ; $6b0f: $02
    rra                                           ; $6b10: $1f
    ld [bc], a                                    ; $6b11: $02
    inc h                                         ; $6b12: $24
    ld [bc], a                                    ; $6b13: $02
    ld b, e                                       ; $6b14: $43
    adc h                                         ; $6b15: $8c
    ld d, a                                       ; $6b16: $57
    ld d, l                                       ; $6b17: $55
    ld l, a                                       ; $6b18: $6f
    ld l, h                                       ; $6b19: $6c
    ld a, [hl]                                    ; $6b1a: $7e
    ld a, d                                       ; $6b1b: $7a
    rst $18                                       ; $6b1c: $df
    ret nc                                        ; $6b1d: $d0

    sbc a                                         ; $6b1e: $9f
    sbc b                                         ; $6b1f: $98
    sbc a                                         ; $6b20: $9f
    sbc c                                         ; $6b21: $99
    ld [bc], a                                    ; $6b22: $02
    ld a, [hl]                                    ; $6b23: $7e
    adc h                                         ; $6b24: $8c
    db $eb                                        ; $6b25: $eb
    ei                                            ; $6b26: $fb
    db $ed                                        ; $6b27: $ed
    db $fd                                        ; $6b28: $fd
    ld e, e                                       ; $6b29: $5b
    ld a, a                                       ; $6b2a: $7f
    ld e, l                                       ; $6b2b: $5d
    ld a, a                                       ; $6b2c: $7f
    ld b, l                                       ; $6b2d: $45
    ld a, a                                       ; $6b2e: $7f
    ld c, l                                       ; $6b2f: $4d
    ld a, a                                       ; $6b30: $7f
    ld [bc], a                                    ; $6b31: $02
    inc b                                         ; $6b32: $04
    add d                                         ; $6b33: $82
    dec bc                                        ; $6b34: $0b
    rrca                                          ; $6b35: $0f
    ld [bc], a                                    ; $6b36: $02

jr_0db_6b37:
    cp a                                          ; $6b37: $bf
    add h                                         ; $6b38: $84
    ld d, e                                       ; $6b39: $53
    ld e, a                                       ; $6b3a: $5f
    sbc l                                         ; $6b3b: $9d
    sbc a                                         ; $6b3c: $9f
    ld [bc], a                                    ; $6b3d: $02
    cp a                                          ; $6b3e: $bf
    sub h                                         ; $6b3f: $94
    cp [hl]                                       ; $6b40: $be

jr_0db_6b41:
    cp a                                          ; $6b41: $bf
    rst $18                                       ; $6b42: $df
    ld e, [hl]                                    ; $6b43: $5e
    adc a                                         ; $6b44: $8f
    adc c                                         ; $6b45: $89
    rlca                                          ; $6b46: $07
    ld b, $0f                                     ; $6b47: $06 $0f
    ld c, $15                                     ; $6b49: $0e $15
    dec e                                         ; $6b4b: $1d
    ld a, [hl+]                                   ; $6b4c: $2a
    ld a, $1b                                     ; $6b4d: $3e $1b
    rra                                           ; $6b4f: $1f
    ld a, [de]                                    ; $6b50: $1a
    rra                                           ; $6b51: $1f
    inc de                                        ; $6b52: $13
    rra                                           ; $6b53: $1f
    ld [bc], a                                    ; $6b54: $02
    db $10                                        ; $6b55: $10
    ld [bc], a                                    ; $6b56: $02
    inc e                                         ; $6b57: $1c
    add d                                         ; $6b58: $82
    dec de                                        ; $6b59: $1b
    rra                                           ; $6b5a: $1f
    ld [bc], a                                    ; $6b5b: $02
    ld e, $8e                                     ; $6b5c: $1e $8e
    inc e                                         ; $6b5e: $1c
    inc d                                         ; $6b5f: $14
    ld e, $0a                                     ; $6b60: $1e $0a
    inc e                                         ; $6b62: $1c
    inc d                                         ; $6b63: $14
    inc e                                         ; $6b64: $1c
    inc d                                         ; $6b65: $14
    ld e, $0a                                     ; $6b66: $1e $0a
    inc e                                         ; $6b68: $1c
    inc b                                         ; $6b69: $04
    jr jr_0db_6b74                                ; $6b6a: $18 $08

    ld [bc], a                                    ; $6b6c: $02
    db $10                                        ; $6b6d: $10
    ld [bc], a                                    ; $6b6e: $02
    jr @+$04                                      ; $6b6f: $18 $02

    ld [$1802], sp                                ; $6b71: $08 $02 $18

jr_0db_6b74:
    add d                                         ; $6b74: $82
    ld [$0218], sp                                ; $6b75: $08 $18 $02
    nop                                           ; $6b78: $00
    adc d                                         ; $6b79: $8a
    ld e, a                                       ; $6b7a: $5f
    ld [hl], b                                    ; $6b7b: $70
    ld a, [hl]                                    ; $6b7c: $7e
    ld a, e                                       ; $6b7d: $7b
    db $fd                                        ; $6b7e: $fd
    rst $38                                       ; $6b7f: $ff
    cp e                                          ; $6b80: $bb
    rst $38                                       ; $6b81: $ff
    ld e, h                                       ; $6b82: $5c
    ld a, a                                       ; $6b83: $7f
    ld [bc], a                                    ; $6b84: $02
    ccf                                           ; $6b85: $3f
    ld [de], a                                    ; $6b86: $12
    nop                                           ; $6b87: $00
    add [hl]                                      ; $6b88: $86
    add hl, bc                                    ; $6b89: $09
    rrca                                          ; $6b8a: $0f
    adc a                                         ; $6b8b: $8f
    adc h                                         ; $6b8c: $8c
    sbc a                                         ; $6b8d: $9f
    sbc d                                         ; $6b8e: $9a
    ld [bc], a                                    ; $6b8f: $02
    sbc a                                         ; $6b90: $9f
    ld [bc], a                                    ; $6b91: $02
    ccf                                           ; $6b92: $3f
    add d                                         ; $6b93: $82
    xor a                                         ; $6b94: $af
    cp a                                          ; $6b95: $bf
    ld [bc], a                                    ; $6b96: $02
    rst $18                                       ; $6b97: $df
    ld [de], a                                    ; $6b98: $12
    nop                                           ; $6b99: $00
    adc b                                         ; $6b9a: $88
    jr z, jr_0db_6bd5                             ; $6b9b: $28 $38

    jr z, @+$3a                                   ; $6b9d: $28 $38

    inc a                                         ; $6b9f: $3c
    inc h                                         ; $6ba0: $24
    jr @+$3a                                      ; $6ba1: $18 $38

    ld [bc], a                                    ; $6ba3: $02
    inc a                                         ; $6ba4: $3c
    add d                                         ; $6ba5: $82
    inc hl                                        ; $6ba6: $23
    ccf                                           ; $6ba7: $3f
    ld [bc], a                                    ; $6ba8: $02
    ld a, $12                                     ; $6ba9: $3e $12
    nop                                           ; $6bab: $00
    rst $38                                       ; $6bac: $ff
    add hl, bc                                    ; $6bad: $09
    ld [bc], a                                    ; $6bae: $02
    db $f4                                        ; $6baf: $f4
    dec bc                                        ; $6bb0: $0b
    ld a, [c]                                     ; $6bb1: $f2
    ld bc, $f7ed                                  ; $6bb2: $01 $ed $f7
    db $ed                                        ; $6bb5: $ed
    rst $38                                       ; $6bb6: $ff
    sub b                                         ; $6bb7: $90
    nop                                           ; $6bb8: $00
    ld [hl], $00                                  ; $6bb9: $36 $00
    ld a, c                                       ; $6bbb: $79
    nop                                           ; $6bbc: $00
    ld d, b                                       ; $6bbd: $50
    nop                                           ; $6bbe: $00
    jr nz, jr_0db_6bc1                            ; $6bbf: $20 $00

jr_0db_6bc1:
    ld [bc], a                                    ; $6bc1: $02
    nop                                           ; $6bc2: $00
    ld b, b                                       ; $6bc3: $40
    nop                                           ; $6bc4: $00
    ret nz                                        ; $6bc5: $c0

    nop                                           ; $6bc6: $00
    ret nz                                        ; $6bc7: $c0

    ld [bc], a                                    ; $6bc8: $02
    nop                                           ; $6bc9: $00
    add e                                         ; $6bca: $83
    ld [$0400], sp                                ; $6bcb: $08 $00 $04
    dec e                                         ; $6bce: $1d
    nop                                           ; $6bcf: $00
    add l                                         ; $6bd0: $85
    inc b                                         ; $6bd1: $04
    nop                                           ; $6bd2: $00
    ld [bc], a                                    ; $6bd3: $02
    nop                                           ; $6bd4: $00

jr_0db_6bd5:
    ld bc, $0009                                  ; $6bd5: $01 $09 $00
    rst $38                                       ; $6bd8: $ff
    ld de, $f906                                  ; $6bd9: $11 $06 $f9
    rlca                                          ; $6bdc: $07
    ld a, [c]                                     ; $6bdd: $f2
    ld bc, $f6eb                                  ; $6bde: $01 $eb $f6
    ld [$eafe], a                                 ; $6be1: $ea $fe $ea
    inc bc                                        ; $6be4: $03
    ld a, [$faf5]                                 ; $6be5: $fa $f5 $fa
    db $fd                                        ; $6be8: $fd
    ld a, [$0202]                                 ; $6be9: $fa $02 $02
    rra                                           ; $6bec: $1f
    ld [bc], a                                    ; $6bed: $02
    inc h                                         ; $6bee: $24
    ld [bc], a                                    ; $6bef: $02
    ld b, d                                       ; $6bf0: $42
    adc h                                         ; $6bf1: $8c
    ld d, a                                       ; $6bf2: $57
    ld d, l                                       ; $6bf3: $55
    ld h, a                                       ; $6bf4: $67
    ld h, h                                       ; $6bf5: $64
    ld a, [hl]                                    ; $6bf6: $7e
    ld a, d                                       ; $6bf7: $7a
    ld a, a                                       ; $6bf8: $7f
    ld [hl], b                                    ; $6bf9: $70
    ld e, a                                       ; $6bfa: $5f
    ld e, b                                       ; $6bfb: $58
    adc a                                         ; $6bfc: $8f
    adc c                                         ; $6bfd: $89
    ld [bc], a                                    ; $6bfe: $02
    cp [hl]                                       ; $6bff: $be
    ld [bc], a                                    ; $6c00: $02
    ld a, d                                       ; $6c01: $7a
    adc d                                         ; $6c02: $8a
    xor l                                         ; $6c03: $ad
    db $fd                                        ; $6c04: $fd
    db $eb                                        ; $6c05: $eb
    rst $38                                       ; $6c06: $ff
    ld l, l                                       ; $6c07: $6d
    ld a, a                                       ; $6c08: $7f
    ld b, l                                       ; $6c09: $45
    ld a, a                                       ; $6c0a: $7f
    ld c, l                                       ; $6c0b: $4d
    ld a, a                                       ; $6c0c: $7f
    ld [bc], a                                    ; $6c0d: $02
    ld b, $82                                     ; $6c0e: $06 $82
    dec b                                         ; $6c10: $05
    rlca                                          ; $6c11: $07
    ld [bc], a                                    ; $6c12: $02
    sbc a                                         ; $6c13: $9f
    add e                                         ; $6c14: $83
    ld d, a                                       ; $6c15: $57
    ld e, a                                       ; $6c16: $5f
    cp e                                          ; $6c17: $bb
    inc bc                                        ; $6c18: $03
    cp a                                          ; $6c19: $bf
    sub h                                         ; $6c1a: $94
    sbc [hl]                                      ; $6c1b: $9e
    sbc a                                         ; $6c1c: $9f
    rst $18                                       ; $6c1d: $df
    ld e, h                                       ; $6c1e: $5c
    adc a                                         ; $6c1f: $8f
    adc d                                         ; $6c20: $8a
    rrca                                          ; $6c21: $0f
    inc c                                         ; $6c22: $0c
    rrca                                          ; $6c23: $0f
    ld c, $15                                     ; $6c24: $0e $15
    dec e                                         ; $6c26: $1d
    ld a, [hl+]                                   ; $6c27: $2a
    ld a, $2b                                     ; $6c28: $3e $2b
    ccf                                           ; $6c2a: $3f
    ld a, [de]                                    ; $6c2b: $1a
    rra                                           ; $6c2c: $1f
    add hl, bc                                    ; $6c2d: $09
    rrca                                          ; $6c2e: $0f
    ld [bc], a                                    ; $6c2f: $02
    ld [$1c02], sp                                ; $6c30: $08 $02 $1c
    add d                                         ; $6c33: $82
    inc de                                        ; $6c34: $13
    rra                                           ; $6c35: $1f
    ld [bc], a                                    ; $6c36: $02
    ld e, $8e                                     ; $6c37: $1e $8e
    inc e                                         ; $6c39: $1c
    inc d                                         ; $6c3a: $14
    ld e, $0a                                     ; $6c3b: $1e $0a
    inc e                                         ; $6c3d: $1c
    inc d                                         ; $6c3e: $14
    ld e, $16                                     ; $6c3f: $1e $16
    ld e, $0a                                     ; $6c41: $1e $0a
    inc e                                         ; $6c43: $1c
    inc b                                         ; $6c44: $04
    jr @+$0a                                      ; $6c45: $18 $08

    inc b                                         ; $6c47: $04
    db $10                                        ; $6c48: $10
    ld [bc], a                                    ; $6c49: $02
    ld [$1802], sp                                ; $6c4a: $08 $02 $18
    add d                                         ; $6c4d: $82
    ld [$0218], sp                                ; $6c4e: $08 $18 $02
    nop                                           ; $6c51: $00
    adc h                                         ; $6c52: $8c
    ccf                                           ; $6c53: $3f
    jr c, jr_0db_6cd5                             ; $6c54: $38 $7f

    ld [hl], a                                    ; $6c56: $77
    ld a, l                                       ; $6c57: $7d
    ld a, a                                       ; $6c58: $7f
    ei                                            ; $6c59: $fb
    rst $38                                       ; $6c5a: $ff
    cp a                                          ; $6c5b: $bf
    rst $38                                       ; $6c5c: $ff
    ld e, l                                       ; $6c5d: $5d
    ld a, a                                       ; $6c5e: $7f
    ld [bc], a                                    ; $6c5f: $02
    ccf                                           ; $6c60: $3f
    stop                                          ; $6c61: $10 $00
    adc [hl]                                      ; $6c63: $8e
    inc c                                         ; $6c64: $0c
    rrca                                          ; $6c65: $0f
    ld c, [hl]                                    ; $6c66: $4e
    rst $08                                       ; $6c67: $cf
    ld c, a                                       ; $6c68: $4f
    call $cfce                                    ; $6c69: $cd $ce $cf
    sbc [hl]                                      ; $6c6c: $9e
    sbc a                                         ; $6c6d: $9f
    rst $10                                       ; $6c6e: $d7
    rst $18                                       ; $6c6f: $df
    inc e                                         ; $6c70: $1c
    rra                                           ; $6c71: $1f
    ld [bc], a                                    ; $6c72: $02
    adc a                                         ; $6c73: $8f
    stop                                          ; $6c74: $10 $00
    add [hl]                                      ; $6c76: $86
    ld c, $1e                                     ; $6c77: $0e $1e
    rra                                           ; $6c79: $1f
    add hl, bc                                    ; $6c7a: $09
    ld e, $06                                     ; $6c7b: $1e $06
    ld [bc], a                                    ; $6c7d: $02
    ld e, $82                                     ; $6c7e: $1e $82
    ld [de], a                                    ; $6c80: $12
    ld e, $02                                     ; $6c81: $1e $02
    inc e                                         ; $6c83: $1c
    add d                                         ; $6c84: $82
    inc c                                         ; $6c85: $0c
    inc e                                         ; $6c86: $1c
    ld [bc], a                                    ; $6c87: $02
    jr jr_0db_6c9a                                ; $6c88: $18 $10

    nop                                           ; $6c8a: $00
    rst $38                                       ; $6c8b: $ff
    add hl, bc                                    ; $6c8c: $09
    ld [bc], a                                    ; $6c8d: $02
    db $f4                                        ; $6c8e: $f4
    dec bc                                        ; $6c8f: $0b
    ld a, [c]                                     ; $6c90: $f2
    ld bc, $f7ec                                  ; $6c91: $01 $ec $f7
    db $ec                                        ; $6c94: $ec
    rst $38                                       ; $6c95: $ff
    adc d                                         ; $6c96: $8a
    nop                                           ; $6c97: $00
    ld [hl], $00                                  ; $6c98: $36 $00

jr_0db_6c9a:
    ld a, e                                       ; $6c9a: $7b
    nop                                           ; $6c9b: $00
    ld d, b                                       ; $6c9c: $50
    nop                                           ; $6c9d: $00
    jr nc, jr_0db_6ca0                            ; $6c9e: $30 $00

jr_0db_6ca0:
    ld [bc], a                                    ; $6ca0: $02
    inc bc                                        ; $6ca1: $03
    nop                                           ; $6ca2: $00
    adc b                                         ; $6ca3: $88
    ld b, b                                       ; $6ca4: $40
    nop                                           ; $6ca5: $00
    ldh [rP1], a                                  ; $6ca6: $e0 $00
    add b                                         ; $6ca8: $80
    ld [$0400], sp                                ; $6ca9: $08 $00 $04
    dec e                                         ; $6cac: $1d
    nop                                           ; $6cad: $00
    add l                                         ; $6cae: $85
    inc b                                         ; $6caf: $04
    nop                                           ; $6cb0: $00
    ld [bc], a                                    ; $6cb1: $02
    nop                                           ; $6cb2: $00
    ld bc, $0009                                  ; $6cb3: $01 $09 $00
    rst $38                                       ; $6cb6: $ff
    dec c                                         ; $6cb7: $0d
    inc b                                         ; $6cb8: $04
    ld sp, hl                                     ; $6cb9: $f9
    rlca                                          ; $6cba: $07
    ld a, [c]                                     ; $6cbb: $f2
    ld bc, $fae3                                  ; $6cbc: $01 $e3 $fa
    db $e4                                        ; $6cbf: $e4
    nop                                           ; $6cc0: $00
    di                                            ; $6cc1: $f3
    ld a, [$fff3]                                 ; $6cc2: $fa $f3 $ff
    db $dd                                        ; $6cc5: $dd
    cpl                                           ; $6cc6: $2f
    nop                                           ; $6cc7: $00
    ld [hl-], a                                   ; $6cc8: $32
    nop                                           ; $6cc9: $00
    ld h, b                                       ; $6cca: $60
    nop                                           ; $6ccb: $00
    ld h, b                                       ; $6ccc: $60
    nop                                           ; $6ccd: $00
    ld b, l                                       ; $6cce: $45
    nop                                           ; $6ccf: $00
    ld [hl+], a                                   ; $6cd0: $22
    nop                                           ; $6cd1: $00
    ld b, b                                       ; $6cd2: $40
    nop                                           ; $6cd3: $00
    ld h, b                                       ; $6cd4: $60

jr_0db_6cd5:
    nop                                           ; $6cd5: $00
    cpl                                           ; $6cd6: $2f
    nop                                           ; $6cd7: $00
    ld e, $00                                     ; $6cd8: $1e $00
    ccf                                           ; $6cda: $3f
    nop                                           ; $6cdb: $00
    ld [hl], a                                    ; $6cdc: $77
    nop                                           ; $6cdd: $00
    ld c, a                                       ; $6cde: $4f
    nop                                           ; $6cdf: $00
    ld d, a                                       ; $6ce0: $57
    nop                                           ; $6ce1: $00
    db $ed                                        ; $6ce2: $ed
    nop                                           ; $6ce3: $00
    rst $08                                       ; $6ce4: $cf
    nop                                           ; $6ce5: $00
    jr c, jr_0db_6ce8                             ; $6ce6: $38 $00

jr_0db_6ce8:
    inc b                                         ; $6ce8: $04
    nop                                           ; $6ce9: $00
    jr z, jr_0db_6cec                             ; $6cea: $28 $00

jr_0db_6cec:
    inc d                                         ; $6cec: $14
    nop                                           ; $6ced: $00
    ld [$1400], sp                                ; $6cee: $08 $00 $14
    nop                                           ; $6cf1: $00
    inc c                                         ; $6cf2: $0c
    nop                                           ; $6cf3: $00
    jr z, jr_0db_6cf6                             ; $6cf4: $28 $00

jr_0db_6cf6:
    jr nc, jr_0db_6cf8                            ; $6cf6: $30 $00

jr_0db_6cf8:
    jr c, jr_0db_6cfa                             ; $6cf8: $38 $00

jr_0db_6cfa:
    inc a                                         ; $6cfa: $3c
    nop                                           ; $6cfb: $00
    inc a                                         ; $6cfc: $3c
    nop                                           ; $6cfd: $00
    inc e                                         ; $6cfe: $1c
    nop                                           ; $6cff: $00
    ld e, $00                                     ; $6d00: $1e $00
    ld l, $00                                     ; $6d02: $2e $00
    rst $30                                       ; $6d04: $f7
    nop                                           ; $6d05: $00
    call nc, $ea00                                ; $6d06: $d4 $00 $ea
    nop                                           ; $6d09: $00
    ret nc                                        ; $6d0a: $d0

    nop                                           ; $6d0b: $00
    ld h, a                                       ; $6d0c: $67
    nop                                           ; $6d0d: $00
    ld h, e                                       ; $6d0e: $63
    nop                                           ; $6d0f: $00
    ld h, b                                       ; $6d10: $60
    nop                                           ; $6d11: $00
    ldh [rP1], a                                  ; $6d12: $e0 $00
    ldh [rP1], a                                  ; $6d14: $e0 $00
    ldh [rP1], a                                  ; $6d16: $e0 $00
    ld d, b                                       ; $6d18: $50
    nop                                           ; $6d19: $00
    jr nz, jr_0db_6d1c                            ; $6d1a: $20 $00

jr_0db_6d1c:
    ld b, b                                       ; $6d1c: $40
    nop                                           ; $6d1d: $00
    ld d, b                                       ; $6d1e: $50
    nop                                           ; $6d1f: $00
    ld b, a                                       ; $6d20: $47
    nop                                           ; $6d21: $00
    ccf                                           ; $6d22: $3f
    dec b                                         ; $6d23: $05
    nop                                           ; $6d24: $00
    sbc e                                         ; $6d25: $9b
    rla                                           ; $6d26: $17
    nop                                           ; $6d27: $00
    dec bc                                        ; $6d28: $0b
    nop                                           ; $6d29: $00
    ld d, $00                                     ; $6d2a: $16 $00
    ld b, $00                                     ; $6d2c: $06 $00
    ld d, $00                                     ; $6d2e: $16 $00
    rla                                           ; $6d30: $17
    nop                                           ; $6d31: $00
    rlca                                          ; $6d32: $07
    nop                                           ; $6d33: $00
    rla                                           ; $6d34: $17
    nop                                           ; $6d35: $00
    ld a, [bc]                                    ; $6d36: $0a
    nop                                           ; $6d37: $00
    inc c                                         ; $6d38: $0c
    nop                                           ; $6d39: $00
    ld b, $00                                     ; $6d3a: $06 $00
    ld a, [bc]                                    ; $6d3c: $0a
    nop                                           ; $6d3d: $00
    ld [de], a                                    ; $6d3e: $12
    nop                                           ; $6d3f: $00
    inc e                                         ; $6d40: $1c
    inc bc                                        ; $6d41: $03
    nop                                           ; $6d42: $00
    rst $38                                       ; $6d43: $ff
    dec c                                         ; $6d44: $0d
    inc b                                         ; $6d45: $04
    ld sp, hl                                     ; $6d46: $f9
    rlca                                          ; $6d47: $07
    ld a, [c]                                     ; $6d48: $f2
    ld bc, $fae3                                  ; $6d49: $01 $e3 $fa
    db $e3                                        ; $6d4c: $e3
    rst $38                                       ; $6d4d: $ff
    di                                            ; $6d4e: $f3
    ld a, [$fff3]                                 ; $6d4f: $fa $f3 $ff
    db $dd                                        ; $6d52: $dd
    rla                                           ; $6d53: $17
    nop                                           ; $6d54: $00
    add hl, hl                                    ; $6d55: $29
    nop                                           ; $6d56: $00
    ld h, b                                       ; $6d57: $60
    nop                                           ; $6d58: $00
    ld b, c                                       ; $6d59: $41
    nop                                           ; $6d5a: $00
    ld c, d                                       ; $6d5b: $4a
    nop                                           ; $6d5c: $00
    inc h                                         ; $6d5d: $24
    nop                                           ; $6d5e: $00
    ld b, b                                       ; $6d5f: $40
    nop                                           ; $6d60: $00
    ld h, b                                       ; $6d61: $60
    nop                                           ; $6d62: $00
    cpl                                           ; $6d63: $2f
    nop                                           ; $6d64: $00
    ld e, $00                                     ; $6d65: $1e $00
    ccf                                           ; $6d67: $3f
    nop                                           ; $6d68: $00
    ld [hl], a                                    ; $6d69: $77
    nop                                           ; $6d6a: $00
    ld c, a                                       ; $6d6b: $4f
    nop                                           ; $6d6c: $00
    ld d, a                                       ; $6d6d: $57
    nop                                           ; $6d6e: $00
    ld l, l                                       ; $6d6f: $6d
    nop                                           ; $6d70: $00
    rst $08                                       ; $6d71: $cf
    nop                                           ; $6d72: $00
    stop                                          ; $6d73: $10 $00
    ld [$0400], sp                                ; $6d75: $08 $00 $04
    nop                                           ; $6d78: $00
    ld [bc], a                                    ; $6d79: $02
    nop                                           ; $6d7a: $00
    ld a, [de]                                    ; $6d7b: $1a
    nop                                           ; $6d7c: $00
    inc b                                         ; $6d7d: $04
    nop                                           ; $6d7e: $00
    ld [bc], a                                    ; $6d7f: $02
    nop                                           ; $6d80: $00
    ld d, $00                                     ; $6d81: $16 $00
    inc e                                         ; $6d83: $1c
    nop                                           ; $6d84: $00
    jr jr_0db_6d87                                ; $6d85: $18 $00

jr_0db_6d87:
    inc e                                         ; $6d87: $1c
    nop                                           ; $6d88: $00
    ld e, $00                                     ; $6d89: $1e $00
    rra                                           ; $6d8b: $1f
    nop                                           ; $6d8c: $00
    rrca                                          ; $6d8d: $0f
    nop                                           ; $6d8e: $00
    rrca                                          ; $6d8f: $0f
    nop                                           ; $6d90: $00
    rla                                           ; $6d91: $17
    nop                                           ; $6d92: $00
    rst $10                                       ; $6d93: $d7
    nop                                           ; $6d94: $00
    xor d                                         ; $6d95: $aa
    nop                                           ; $6d96: $00
    ldh [rP1], a                                  ; $6d97: $e0 $00
    rst $20                                       ; $6d99: $e7
    nop                                           ; $6d9a: $00
    ld h, e                                       ; $6d9b: $63
    nop                                           ; $6d9c: $00
    ldh [rP1], a                                  ; $6d9d: $e0 $00
    ldh [rP1], a                                  ; $6d9f: $e0 $00
    ret nz                                        ; $6da1: $c0

    nop                                           ; $6da2: $00
    ldh [rP1], a                                  ; $6da3: $e0 $00
    ret nz                                        ; $6da5: $c0

    nop                                           ; $6da6: $00
    ld b, b                                       ; $6da7: $40
    nop                                           ; $6da8: $00
    jr nz, jr_0db_6dab                            ; $6da9: $20 $00

jr_0db_6dab:
    jr nz, jr_0db_6dad                            ; $6dab: $20 $00

jr_0db_6dad:
    ld sp, $0f00                                  ; $6dad: $31 $00 $0f
    inc bc                                        ; $6db0: $03
    nop                                           ; $6db1: $00
    sbc l                                         ; $6db2: $9d
    dec de                                        ; $6db3: $1b
    nop                                           ; $6db4: $00
    rla                                           ; $6db5: $17
    nop                                           ; $6db6: $00
    ld a, [bc]                                    ; $6db7: $0a
    nop                                           ; $6db8: $00
    ld d, $00                                     ; $6db9: $16 $00
    ld b, $00                                     ; $6dbb: $06 $00
    rla                                           ; $6dbd: $17
    nop                                           ; $6dbe: $00
    rla                                           ; $6dbf: $17
    nop                                           ; $6dc0: $00
    inc bc                                        ; $6dc1: $03
    nop                                           ; $6dc2: $00
    ld [de], a                                    ; $6dc3: $12
    nop                                           ; $6dc4: $00
    inc c                                         ; $6dc5: $0c
    nop                                           ; $6dc6: $00
    inc c                                         ; $6dc7: $0c
    nop                                           ; $6dc8: $00
    ld b, $00                                     ; $6dc9: $06 $00
    ld a, [bc]                                    ; $6dcb: $0a
    nop                                           ; $6dcc: $00
    ld [de], a                                    ; $6dcd: $12
    nop                                           ; $6dce: $00
    inc e                                         ; $6dcf: $1c
    inc bc                                        ; $6dd0: $03
    nop                                           ; $6dd1: $00
    rst $38                                       ; $6dd2: $ff
    dec c                                         ; $6dd3: $0d
    inc b                                         ; $6dd4: $04
    ld sp, hl                                     ; $6dd5: $f9
    rlca                                          ; $6dd6: $07
    ld a, [c]                                     ; $6dd7: $f2
    ld bc, $fae4                                  ; $6dd8: $01 $e4 $fa
    db $e4                                        ; $6ddb: $e4
    rst $38                                       ; $6ddc: $ff
    db $f4                                        ; $6ddd: $f4
    ld a, [$00f4]                                 ; $6dde: $fa $f4 $00
    db $db                                        ; $6de1: $db
    inc de                                        ; $6de2: $13
    nop                                           ; $6de3: $00
    inc l                                         ; $6de4: $2c
    nop                                           ; $6de5: $00
    ld h, b                                       ; $6de6: $60
    nop                                           ; $6de7: $00
    ld b, c                                       ; $6de8: $41
    nop                                           ; $6de9: $00
    ld l, $00                                     ; $6dea: $2e $00
    jr nz, jr_0db_6dee                            ; $6dec: $20 $00

jr_0db_6dee:
    ld b, b                                       ; $6dee: $40
    nop                                           ; $6def: $00
    ld h, b                                       ; $6df0: $60
    nop                                           ; $6df1: $00
    cpl                                           ; $6df2: $2f
    nop                                           ; $6df3: $00
    ld e, $00                                     ; $6df4: $1e $00
    ccf                                           ; $6df6: $3f
    nop                                           ; $6df7: $00
    ld d, a                                       ; $6df8: $57
    nop                                           ; $6df9: $00
    ld c, a                                       ; $6dfa: $4f
    nop                                           ; $6dfb: $00
    ld d, l                                       ; $6dfc: $55
    nop                                           ; $6dfd: $00
    rst $28                                       ; $6dfe: $ef
    nop                                           ; $6dff: $00
    rst $08                                       ; $6e00: $cf
    nop                                           ; $6e01: $00
    jr jr_0db_6e04                                ; $6e02: $18 $00

jr_0db_6e04:
    jr jr_0db_6e06                                ; $6e04: $18 $00

jr_0db_6e06:
    ld b, $00                                     ; $6e06: $06 $00
    ld [bc], a                                    ; $6e08: $02
    nop                                           ; $6e09: $00
    ld a, [de]                                    ; $6e0a: $1a
    nop                                           ; $6e0b: $00
    inc b                                         ; $6e0c: $04
    nop                                           ; $6e0d: $00
    ld [bc], a                                    ; $6e0e: $02
    nop                                           ; $6e0f: $00
    ld d, $00                                     ; $6e10: $16 $00
    inc e                                         ; $6e12: $1c
    nop                                           ; $6e13: $00
    jr jr_0db_6e16                                ; $6e14: $18 $00

jr_0db_6e16:
    inc e                                         ; $6e16: $1c
    nop                                           ; $6e17: $00
    ld e, $00                                     ; $6e18: $1e $00
    ld e, $00                                     ; $6e1a: $1e $00
    ld c, $00                                     ; $6e1c: $0e $00
    rla                                           ; $6e1e: $17
    nop                                           ; $6e1f: $00
    rra                                           ; $6e20: $1f
    nop                                           ; $6e21: $00
    or d                                          ; $6e22: $b2
    nop                                           ; $6e23: $00
    ldh [rP1], a                                  ; $6e24: $e0 $00
    rst $08                                       ; $6e26: $cf
    nop                                           ; $6e27: $00
    ld h, d                                       ; $6e28: $62
    nop                                           ; $6e29: $00
    ld h, b                                       ; $6e2a: $60
    nop                                           ; $6e2b: $00
    ldh [rP1], a                                  ; $6e2c: $e0 $00
    ret nz                                        ; $6e2e: $c0

    nop                                           ; $6e2f: $00
    ldh [rP1], a                                  ; $6e30: $e0 $00
    ret nz                                        ; $6e32: $c0

    nop                                           ; $6e33: $00
    ld b, b                                       ; $6e34: $40
    nop                                           ; $6e35: $00
    jr nz, jr_0db_6e38                            ; $6e36: $20 $00

jr_0db_6e38:
    jr nz, jr_0db_6e3a                            ; $6e38: $20 $00

jr_0db_6e3a:
    jr jr_0db_6e3c                                ; $6e3a: $18 $00

jr_0db_6e3c:
    rlca                                          ; $6e3c: $07
    dec b                                         ; $6e3d: $05
    nop                                           ; $6e3e: $00
    sbc e                                         ; $6e3f: $9b
    ld a, $00                                     ; $6e40: $3e $00
    dec c                                         ; $6e42: $0d
    nop                                           ; $6e43: $00
    ld [hl], $00                                  ; $6e44: $36 $00
    inc c                                         ; $6e46: $0c
    nop                                           ; $6e47: $00
    inc c                                         ; $6e48: $0c
    nop                                           ; $6e49: $00
    ld l, $00                                     ; $6e4a: $2e $00
    ld l, $00                                     ; $6e4c: $2e $00
    ld c, $00                                     ; $6e4e: $0e $00
    inc h                                         ; $6e50: $24
    nop                                           ; $6e51: $00
    jr jr_0db_6e54                                ; $6e52: $18 $00

jr_0db_6e54:
    ld [$2c00], sp                                ; $6e54: $08 $00 $2c
    nop                                           ; $6e57: $00
    inc c                                         ; $6e58: $0c
    nop                                           ; $6e59: $00
    jr nc, jr_0db_6e61                            ; $6e5a: $30 $05

    nop                                           ; $6e5c: $00
    rst $38                                       ; $6e5d: $ff
    dec c                                         ; $6e5e: $0d
    inc b                                         ; $6e5f: $04
    ld sp, hl                                     ; $6e60: $f9

jr_0db_6e61:
    rlca                                          ; $6e61: $07
    ld a, [c]                                     ; $6e62: $f2
    ld bc, $fae4                                  ; $6e63: $01 $e4 $fa
    db $e4                                        ; $6e66: $e4
    rst $38                                       ; $6e67: $ff
    db $f4                                        ; $6e68: $f4
    ld a, [$00f4]                                 ; $6e69: $fa $f4 $00
    db $db                                        ; $6e6c: $db
    rla                                           ; $6e6d: $17
    nop                                           ; $6e6e: $00
    add hl, hl                                    ; $6e6f: $29
    nop                                           ; $6e70: $00
    ld h, b                                       ; $6e71: $60
    nop                                           ; $6e72: $00
    ld b, c                                       ; $6e73: $41
    nop                                           ; $6e74: $00
    ld c, d                                       ; $6e75: $4a
    nop                                           ; $6e76: $00
    inc h                                         ; $6e77: $24
    nop                                           ; $6e78: $00
    ld b, b                                       ; $6e79: $40
    nop                                           ; $6e7a: $00
    ld h, b                                       ; $6e7b: $60
    nop                                           ; $6e7c: $00
    cpl                                           ; $6e7d: $2f
    nop                                           ; $6e7e: $00
    ld e, $00                                     ; $6e7f: $1e $00
    ccf                                           ; $6e81: $3f
    nop                                           ; $6e82: $00
    ld d, a                                       ; $6e83: $57
    nop                                           ; $6e84: $00
    ld c, a                                       ; $6e85: $4f
    nop                                           ; $6e86: $00
    ld d, l                                       ; $6e87: $55
    nop                                           ; $6e88: $00
    xor l                                         ; $6e89: $ad
    nop                                           ; $6e8a: $00
    rst $08                                       ; $6e8b: $cf
    nop                                           ; $6e8c: $00
    stop                                          ; $6e8d: $10 $00
    ld [$0400], sp                                ; $6e8f: $08 $00 $04
    nop                                           ; $6e92: $00
    ld [bc], a                                    ; $6e93: $02
    nop                                           ; $6e94: $00
    ld a, [de]                                    ; $6e95: $1a
    nop                                           ; $6e96: $00
    inc b                                         ; $6e97: $04
    nop                                           ; $6e98: $00
    ld [bc], a                                    ; $6e99: $02
    nop                                           ; $6e9a: $00
    ld d, $00                                     ; $6e9b: $16 $00
    inc e                                         ; $6e9d: $1c
    nop                                           ; $6e9e: $00
    jr jr_0db_6ea1                                ; $6e9f: $18 $00

jr_0db_6ea1:
    inc e                                         ; $6ea1: $1c
    nop                                           ; $6ea2: $00
    ld e, $00                                     ; $6ea3: $1e $00
    ld e, $00                                     ; $6ea5: $1e $00
    ld c, $00                                     ; $6ea7: $0e $00
    rla                                           ; $6ea9: $17
    nop                                           ; $6eaa: $00
    rra                                           ; $6eab: $1f
    nop                                           ; $6eac: $00
    or d                                          ; $6ead: $b2
    nop                                           ; $6eae: $00
    ldh [rP1], a                                  ; $6eaf: $e0 $00
    ld c, a                                       ; $6eb1: $4f
    nop                                           ; $6eb2: $00
    ld h, a                                       ; $6eb3: $67
    nop                                           ; $6eb4: $00
    ld h, b                                       ; $6eb5: $60
    nop                                           ; $6eb6: $00
    and b                                         ; $6eb7: $a0
    nop                                           ; $6eb8: $00
    ldh [rP1], a                                  ; $6eb9: $e0 $00
    ldh [rP1], a                                  ; $6ebb: $e0 $00
    ret nz                                        ; $6ebd: $c0

    nop                                           ; $6ebe: $00
    ld b, b                                       ; $6ebf: $40
    nop                                           ; $6ec0: $00
    jr nz, jr_0db_6ec3                            ; $6ec1: $20 $00

jr_0db_6ec3:
    jr nz, jr_0db_6ec5                            ; $6ec3: $20 $00

jr_0db_6ec5:
    jr nc, jr_0db_6ec7                            ; $6ec5: $30 $00

jr_0db_6ec7:
    rrca                                          ; $6ec7: $0f
    dec b                                         ; $6ec8: $05
    nop                                           ; $6ec9: $00
    sbc e                                         ; $6eca: $9b
    ld a, [hl-]                                   ; $6ecb: $3a
    nop                                           ; $6ecc: $00
    rrca                                          ; $6ecd: $0f
    nop                                           ; $6ece: $00
    ld a, $00                                     ; $6ecf: $3e $00
    inc c                                         ; $6ed1: $0c
    nop                                           ; $6ed2: $00
    inc c                                         ; $6ed3: $0c
    nop                                           ; $6ed4: $00
    ld a, [hl+]                                   ; $6ed5: $2a
    nop                                           ; $6ed6: $00
    ld l, $00                                     ; $6ed7: $2e $00
    ld c, $00                                     ; $6ed9: $0e $00
    ld h, $00                                     ; $6edb: $26 $00
    inc d                                         ; $6edd: $14
    nop                                           ; $6ede: $00
    jr jr_0db_6ee1                                ; $6edf: $18 $00

jr_0db_6ee1:
    ld [$0800], sp                                ; $6ee1: $08 $00 $08
    nop                                           ; $6ee4: $00
    jr nc, jr_0db_6eec                            ; $6ee5: $30 $05

    nop                                           ; $6ee7: $00
    rst $38                                       ; $6ee8: $ff
    dec c                                         ; $6ee9: $0d
    inc b                                         ; $6eea: $04
    ld sp, hl                                     ; $6eeb: $f9

jr_0db_6eec:
    rlca                                          ; $6eec: $07
    ld a, [c]                                     ; $6eed: $f2
    ld bc, $fae3                                  ; $6eee: $01 $e3 $fa
    db $e4                                        ; $6ef1: $e4
    rst $38                                       ; $6ef2: $ff
    di                                            ; $6ef3: $f3
    ld a, [$00f3]                                 ; $6ef4: $fa $f3 $00
    db $dd                                        ; $6ef7: $dd
    cpl                                           ; $6ef8: $2f
    nop                                           ; $6ef9: $00
    ld [hl-], a                                   ; $6efa: $32
    nop                                           ; $6efb: $00
    ld h, b                                       ; $6efc: $60
    nop                                           ; $6efd: $00
    ld h, b                                       ; $6efe: $60
    nop                                           ; $6eff: $00
    ld b, l                                       ; $6f00: $45
    nop                                           ; $6f01: $00
    ld [hl+], a                                   ; $6f02: $22
    nop                                           ; $6f03: $00
    ld b, b                                       ; $6f04: $40
    nop                                           ; $6f05: $00
    ld h, b                                       ; $6f06: $60
    nop                                           ; $6f07: $00
    cpl                                           ; $6f08: $2f
    nop                                           ; $6f09: $00
    ld e, $00                                     ; $6f0a: $1e $00
    ccf                                           ; $6f0c: $3f
    nop                                           ; $6f0d: $00
    ld a, a                                       ; $6f0e: $7f
    nop                                           ; $6f0f: $00
    ld d, a                                       ; $6f10: $57
    nop                                           ; $6f11: $00
    ld c, a                                       ; $6f12: $4f
    nop                                           ; $6f13: $00
    rst $20                                       ; $6f14: $e7
    nop                                           ; $6f15: $00
    call Call_000_1c00                            ; $6f16: $cd $00 $1c
    nop                                           ; $6f19: $00
    ld [bc], a                                    ; $6f1a: $02
    nop                                           ; $6f1b: $00
    inc d                                         ; $6f1c: $14
    nop                                           ; $6f1d: $00
    ld a, [bc]                                    ; $6f1e: $0a
    nop                                           ; $6f1f: $00
    inc b                                         ; $6f20: $04
    nop                                           ; $6f21: $00
    ld a, [bc]                                    ; $6f22: $0a
    nop                                           ; $6f23: $00
    ld b, $00                                     ; $6f24: $06 $00
    inc d                                         ; $6f26: $14
    nop                                           ; $6f27: $00
    jr jr_0db_6f2a                                ; $6f28: $18 $00

jr_0db_6f2a:
    inc e                                         ; $6f2a: $1c
    nop                                           ; $6f2b: $00
    ld e, $00                                     ; $6f2c: $1e $00
    ld e, $00                                     ; $6f2e: $1e $00
    ld e, $00                                     ; $6f30: $1e $00
    ld c, $00                                     ; $6f32: $0e $00
    rlca                                          ; $6f34: $07
    nop                                           ; $6f35: $00
    ei                                            ; $6f36: $fb
    nop                                           ; $6f37: $00
    ret nc                                        ; $6f38: $d0

    nop                                           ; $6f39: $00
    ld l, d                                       ; $6f3a: $6a
    nop                                           ; $6f3b: $00
    ld d, b                                       ; $6f3c: $50
    nop                                           ; $6f3d: $00
    ld l, b                                       ; $6f3e: $68
    nop                                           ; $6f3f: $00
    ld h, a                                       ; $6f40: $67
    nop                                           ; $6f41: $00
    ld h, b                                       ; $6f42: $60
    nop                                           ; $6f43: $00
    ldh [rP1], a                                  ; $6f44: $e0 $00
    ldh [rP1], a                                  ; $6f46: $e0 $00
    ret nz                                        ; $6f48: $c0

    nop                                           ; $6f49: $00
    ld b, b                                       ; $6f4a: $40
    nop                                           ; $6f4b: $00
    jr nz, jr_0db_6f4e                            ; $6f4c: $20 $00

jr_0db_6f4e:
    ld b, h                                       ; $6f4e: $44
    nop                                           ; $6f4f: $00
    ld b, b                                       ; $6f50: $40
    nop                                           ; $6f51: $00
    jr nc, jr_0db_6f54                            ; $6f52: $30 $00

jr_0db_6f54:
    rrca                                          ; $6f54: $0f
    dec b                                         ; $6f55: $05
    nop                                           ; $6f56: $00
    sbc e                                         ; $6f57: $9b
    cpl                                           ; $6f58: $2f
    nop                                           ; $6f59: $00
    ld e, $00                                     ; $6f5a: $1e $00
    inc l                                         ; $6f5c: $2c
    nop                                           ; $6f5d: $00
    inc c                                         ; $6f5e: $0c
    nop                                           ; $6f5f: $00
    inc l                                         ; $6f60: $2c
    nop                                           ; $6f61: $00
    ld l, $00                                     ; $6f62: $2e $00
    ld c, $00                                     ; $6f64: $0e $00
    ld l, $00                                     ; $6f66: $2e $00
    inc d                                         ; $6f68: $14
    nop                                           ; $6f69: $00
    jr jr_0db_6f6c                                ; $6f6a: $18 $00

jr_0db_6f6c:
    jr jr_0db_6f6e                                ; $6f6c: $18 $00

jr_0db_6f6e:
    ld [$0800], sp                                ; $6f6e: $08 $00 $08
    nop                                           ; $6f71: $00
    jr nc, jr_0db_6f77                            ; $6f72: $30 $03

    nop                                           ; $6f74: $00
    rst $38                                       ; $6f75: $ff
    dec c                                         ; $6f76: $0d

jr_0db_6f77:
    inc b                                         ; $6f77: $04
    ld sp, hl                                     ; $6f78: $f9
    rlca                                          ; $6f79: $07
    ld a, [c]                                     ; $6f7a: $f2
    ld bc, $fae3                                  ; $6f7b: $01 $e3 $fa
    db $e4                                        ; $6f7e: $e4
    rst $38                                       ; $6f7f: $ff
    di                                            ; $6f80: $f3
    ld a, [$00f3]                                 ; $6f81: $fa $f3 $00
    db $dd                                        ; $6f84: $dd
    rra                                           ; $6f85: $1f
    nop                                           ; $6f86: $00
    ld h, h                                       ; $6f87: $64
    nop                                           ; $6f88: $00
    ld b, b                                       ; $6f89: $40
    nop                                           ; $6f8a: $00
    ld h, b                                       ; $6f8b: $60
    nop                                           ; $6f8c: $00
    ld h, d                                       ; $6f8d: $62
    nop                                           ; $6f8e: $00
    ld hl, $4000                                  ; $6f8f: $21 $00 $40
    nop                                           ; $6f92: $00
    ld h, b                                       ; $6f93: $60
    nop                                           ; $6f94: $00
    ccf                                           ; $6f95: $3f
    nop                                           ; $6f96: $00
    ld e, $00                                     ; $6f97: $1e $00
    ccf                                           ; $6f99: $3f
    nop                                           ; $6f9a: $00
    ld [hl], a                                    ; $6f9b: $77
    nop                                           ; $6f9c: $00
    rst $08                                       ; $6f9d: $cf
    nop                                           ; $6f9e: $00
    rst $10                                       ; $6f9f: $d7
    nop                                           ; $6fa0: $00
    db $ed                                        ; $6fa1: $ed
    nop                                           ; $6fa2: $00
    rst $08                                       ; $6fa3: $cf
    nop                                           ; $6fa4: $00
    jr jr_0db_6fa7                                ; $6fa5: $18 $00

jr_0db_6fa7:
    ld b, $00                                     ; $6fa7: $06 $00
    inc c                                         ; $6fa9: $0c
    nop                                           ; $6faa: $00
    ld [de], a                                    ; $6fab: $12
    nop                                           ; $6fac: $00
    inc b                                         ; $6fad: $04
    nop                                           ; $6fae: $00
    ld [bc], a                                    ; $6faf: $02
    nop                                           ; $6fb0: $00
    ld b, $00                                     ; $6fb1: $06 $00
    inc d                                         ; $6fb3: $14
    nop                                           ; $6fb4: $00
    jr jr_0db_6fb7                                ; $6fb5: $18 $00

jr_0db_6fb7:
    inc e                                         ; $6fb7: $1c
    nop                                           ; $6fb8: $00
    ld e, $00                                     ; $6fb9: $1e $00
    ld e, $00                                     ; $6fbb: $1e $00
    ld c, $00                                     ; $6fbd: $0e $00
    ld c, $00                                     ; $6fbf: $0e $00
    rla                                           ; $6fc1: $17
    nop                                           ; $6fc2: $00
    ei                                            ; $6fc3: $fb
    nop                                           ; $6fc4: $00
    ret nc                                        ; $6fc5: $d0

    nop                                           ; $6fc6: $00
    ld l, d                                       ; $6fc7: $6a
    nop                                           ; $6fc8: $00
    ld d, b                                       ; $6fc9: $50
    nop                                           ; $6fca: $00
    ld h, a                                       ; $6fcb: $67
    nop                                           ; $6fcc: $00
    ld h, e                                       ; $6fcd: $63
    nop                                           ; $6fce: $00
    ldh [rP1], a                                  ; $6fcf: $e0 $00
    ldh [rP1], a                                  ; $6fd1: $e0 $00
    ret nz                                        ; $6fd3: $c0

    nop                                           ; $6fd4: $00
    ld b, b                                       ; $6fd5: $40
    nop                                           ; $6fd6: $00
    jr nz, jr_0db_6fd9                            ; $6fd7: $20 $00

jr_0db_6fd9:
    inc h                                         ; $6fd9: $24
    nop                                           ; $6fda: $00
    ld b, h                                       ; $6fdb: $44
    nop                                           ; $6fdc: $00
    ld b, b                                       ; $6fdd: $40
    nop                                           ; $6fde: $00
    ld c, h                                       ; $6fdf: $4c
    nop                                           ; $6fe0: $00
    ccf                                           ; $6fe1: $3f
    dec b                                         ; $6fe2: $05
    nop                                           ; $6fe3: $00
    sbc e                                         ; $6fe4: $9b
    dec hl                                        ; $6fe5: $2b
    nop                                           ; $6fe6: $00
    ld c, $00                                     ; $6fe7: $0e $00
    ld l, $00                                     ; $6fe9: $2e $00
    inc c                                         ; $6feb: $0c
    nop                                           ; $6fec: $00
    ld l, $00                                     ; $6fed: $2e $00
    ld l, $00                                     ; $6fef: $2e $00
    ld b, $00                                     ; $6ff1: $06 $00
    ld l, $00                                     ; $6ff3: $2e $00
    ld b, $00                                     ; $6ff5: $06 $00
    inc d                                         ; $6ff7: $14
    nop                                           ; $6ff8: $00
    ld [$0800], sp                                ; $6ff9: $08 $00 $08
    nop                                           ; $6ffc: $00
    jr jr_0db_6fff                                ; $6ffd: $18 $00

jr_0db_6fff:
    jr nz, jr_0db_7004                            ; $6fff: $20 $03

    nop                                           ; $7001: $00
    rst $38                                       ; $7002: $ff
    dec c                                         ; $7003: $0d

jr_0db_7004:
    inc b                                         ; $7004: $04
    ld sp, hl                                     ; $7005: $f9
    rlca                                          ; $7006: $07
    ld a, [c]                                     ; $7007: $f2
    ld bc, $fae4                                  ; $7008: $01 $e4 $fa
    push hl                                       ; $700b: $e5
    rst $38                                       ; $700c: $ff
    db $f4                                        ; $700d: $f4
    ld a, [$00f4]                                 ; $700e: $fa $f4 $00
    db $db                                        ; $7011: $db
    ld e, a                                       ; $7012: $5f
    nop                                           ; $7013: $00
    ld h, h                                       ; $7014: $64
    nop                                           ; $7015: $00
    ld h, b                                       ; $7016: $60
    nop                                           ; $7017: $00
    ld b, b                                       ; $7018: $40
    nop                                           ; $7019: $00
    inc hl                                        ; $701a: $23
    nop                                           ; $701b: $00
    jr nz, jr_0db_701e                            ; $701c: $20 $00

jr_0db_701e:
    ld b, b                                       ; $701e: $40
    nop                                           ; $701f: $00
    ld h, b                                       ; $7020: $60
    nop                                           ; $7021: $00
    ccf                                           ; $7022: $3f
    nop                                           ; $7023: $00
    ld e, $00                                     ; $7024: $1e $00
    ccf                                           ; $7026: $3f
    nop                                           ; $7027: $00
    ld d, a                                       ; $7028: $57
    nop                                           ; $7029: $00
    ld c, a                                       ; $702a: $4f
    nop                                           ; $702b: $00
    ld d, l                                       ; $702c: $55
    nop                                           ; $702d: $00
    rst $28                                       ; $702e: $ef
    nop                                           ; $702f: $00
    rst $08                                       ; $7030: $cf
    nop                                           ; $7031: $00
    inc e                                         ; $7032: $1c
    nop                                           ; $7033: $00
    ld [bc], a                                    ; $7034: $02
    nop                                           ; $7035: $00
    ld a, [bc]                                    ; $7036: $0a
    nop                                           ; $7037: $00
    inc d                                         ; $7038: $14
    nop                                           ; $7039: $00
    inc b                                         ; $703a: $04
    nop                                           ; $703b: $00
    ld [bc], a                                    ; $703c: $02
    nop                                           ; $703d: $00
    ld b, $00                                     ; $703e: $06 $00
    inc d                                         ; $7040: $14
    nop                                           ; $7041: $00
    jr jr_0db_7044                                ; $7042: $18 $00

jr_0db_7044:
    inc e                                         ; $7044: $1c
    nop                                           ; $7045: $00
    ld e, $00                                     ; $7046: $1e $00
    ld e, $00                                     ; $7048: $1e $00
    ld c, $00                                     ; $704a: $0e $00
    rla                                           ; $704c: $17
    nop                                           ; $704d: $00
    rra                                           ; $704e: $1f
    nop                                           ; $704f: $00
    ld e, l                                       ; $7050: $5d
    nop                                           ; $7051: $00
    ldh a, [rP1]                                  ; $7052: $f0 $00
    ld h, b                                       ; $7054: $60
    nop                                           ; $7055: $00
    ld e, a                                       ; $7056: $5f
    nop                                           ; $7057: $00
    ld h, d                                       ; $7058: $62
    nop                                           ; $7059: $00
    ld h, b                                       ; $705a: $60
    nop                                           ; $705b: $00
    ldh [rP1], a                                  ; $705c: $e0 $00
    ldh [rP1], a                                  ; $705e: $e0 $00
    ldh [rP1], a                                  ; $7060: $e0 $00
    ld b, b                                       ; $7062: $40
    nop                                           ; $7063: $00
    jr nz, jr_0db_7066                            ; $7064: $20 $00

jr_0db_7066:
    inc h                                         ; $7066: $24
    nop                                           ; $7067: $00
    ld b, d                                       ; $7068: $42
    nop                                           ; $7069: $00
    ld h, b                                       ; $706a: $60
    nop                                           ; $706b: $00
    rra                                           ; $706c: $1f
    rlca                                          ; $706d: $07
    nop                                           ; $706e: $00
    sub a                                         ; $706f: $97
    rrca                                          ; $7070: $0f
    nop                                           ; $7071: $00
    ld h, $00                                     ; $7072: $26 $00
    inc c                                         ; $7074: $0c
    nop                                           ; $7075: $00
    inc c                                         ; $7076: $0c
    nop                                           ; $7077: $00
    ld l, $00                                     ; $7078: $2e $00
    ld h, $00                                     ; $707a: $26 $00
    ld c, $00                                     ; $707c: $0e $00
    ld h, $00                                     ; $707e: $26 $00
    inc b                                         ; $7080: $04
    nop                                           ; $7081: $00
    jr jr_0db_7084                                ; $7082: $18 $00

jr_0db_7084:
    ld [$3000], sp                                ; $7084: $08 $00 $30
    rlca                                          ; $7087: $07
    nop                                           ; $7088: $00
    rst $38                                       ; $7089: $ff
    dec c                                         ; $708a: $0d
    inc b                                         ; $708b: $04
    ld sp, hl                                     ; $708c: $f9
    rlca                                          ; $708d: $07
    ld a, [c]                                     ; $708e: $f2
    ld bc, $fae4                                  ; $708f: $01 $e4 $fa
    push hl                                       ; $7092: $e5
    rst $38                                       ; $7093: $ff
    db $f4                                        ; $7094: $f4
    ld a, [$00f4]                                 ; $7095: $fa $f4 $00
    db $db                                        ; $7098: $db
    rra                                           ; $7099: $1f
    nop                                           ; $709a: $00
    ld h, h                                       ; $709b: $64
    nop                                           ; $709c: $00
    ld h, b                                       ; $709d: $60
    nop                                           ; $709e: $00
    ld h, b                                       ; $709f: $60
    nop                                           ; $70a0: $00
    ld b, d                                       ; $70a1: $42
    nop                                           ; $70a2: $00
    ld hl, $4000                                  ; $70a3: $21 $00 $40
    nop                                           ; $70a6: $00
    ld h, b                                       ; $70a7: $60
    nop                                           ; $70a8: $00
    ccf                                           ; $70a9: $3f
    nop                                           ; $70aa: $00
    ld e, $00                                     ; $70ab: $1e $00
    ccf                                           ; $70ad: $3f
    nop                                           ; $70ae: $00
    ld d, a                                       ; $70af: $57
    nop                                           ; $70b0: $00
    ld c, a                                       ; $70b1: $4f
    nop                                           ; $70b2: $00
    ld d, l                                       ; $70b3: $55
    nop                                           ; $70b4: $00
    db $ed                                        ; $70b5: $ed
    nop                                           ; $70b6: $00
    rst $08                                       ; $70b7: $cf
    nop                                           ; $70b8: $00
    jr jr_0db_70bb                                ; $70b9: $18 $00

jr_0db_70bb:
    ld b, $00                                     ; $70bb: $06 $00
    inc c                                         ; $70bd: $0c
    nop                                           ; $70be: $00
    ld [de], a                                    ; $70bf: $12
    nop                                           ; $70c0: $00
    inc b                                         ; $70c1: $04
    nop                                           ; $70c2: $00
    ld [bc], a                                    ; $70c3: $02
    nop                                           ; $70c4: $00
    ld b, $00                                     ; $70c5: $06 $00
    inc d                                         ; $70c7: $14
    nop                                           ; $70c8: $00
    jr jr_0db_70cb                                ; $70c9: $18 $00

jr_0db_70cb:
    inc e                                         ; $70cb: $1c
    nop                                           ; $70cc: $00
    ld e, $00                                     ; $70cd: $1e $00
    ld e, $00                                     ; $70cf: $1e $00
    ld c, $00                                     ; $70d1: $0e $00
    dec d                                         ; $70d3: $15
    nop                                           ; $70d4: $00
    rra                                           ; $70d5: $1f
    nop                                           ; $70d6: $00
    ld e, l                                       ; $70d7: $5d
    nop                                           ; $70d8: $00
    or b                                          ; $70d9: $b0
    nop                                           ; $70da: $00
    ldh [rP1], a                                  ; $70db: $e0 $00
    rst $38                                       ; $70dd: $ff
    nop                                           ; $70de: $00
    ld h, a                                       ; $70df: $67
    nop                                           ; $70e0: $00
    ld h, b                                       ; $70e1: $60
    nop                                           ; $70e2: $00
    and b                                         ; $70e3: $a0
    nop                                           ; $70e4: $00
    ldh [rP1], a                                  ; $70e5: $e0 $00
    ldh [rP1], a                                  ; $70e7: $e0 $00
    ret nz                                        ; $70e9: $c0

    nop                                           ; $70ea: $00
    ld b, b                                       ; $70eb: $40
    nop                                           ; $70ec: $00
    inc h                                         ; $70ed: $24
    nop                                           ; $70ee: $00
    jr nz, jr_0db_70f1                            ; $70ef: $20 $00

jr_0db_70f1:
    jr nz, jr_0db_70f3                            ; $70f1: $20 $00

jr_0db_70f3:
    rra                                           ; $70f3: $1f
    rlca                                          ; $70f4: $07
    nop                                           ; $70f5: $00
    sbc c                                         ; $70f6: $99
    rrca                                          ; $70f7: $0f
    nop                                           ; $70f8: $00
    ld h, $00                                     ; $70f9: $26 $00
    inc c                                         ; $70fb: $0c
    nop                                           ; $70fc: $00
    inc c                                         ; $70fd: $0c
    nop                                           ; $70fe: $00
    ld a, [hl+]                                   ; $70ff: $2a
    nop                                           ; $7100: $00
    ld l, $00                                     ; $7101: $2e $00
    ld c, $00                                     ; $7103: $0e $00
    ld h, $00                                     ; $7105: $26 $00
    inc b                                         ; $7107: $04
    nop                                           ; $7108: $00
    jr jr_0db_710b                                ; $7109: $18 $00

jr_0db_710b:
    ld [$1800], sp                                ; $710b: $08 $00 $18
    nop                                           ; $710e: $00
    jr nz, jr_0db_7116                            ; $710f: $20 $05

    nop                                           ; $7111: $00
    rst $38                                       ; $7112: $ff
    dec c                                         ; $7113: $0d
    inc b                                         ; $7114: $04
    ld sp, hl                                     ; $7115: $f9

jr_0db_7116:
    rlca                                          ; $7116: $07
    ld a, [c]                                     ; $7117: $f2
    ld bc, $fae3                                  ; $7118: $01 $e3 $fa
    db $e4                                        ; $711b: $e4
    rst $38                                       ; $711c: $ff
    di                                            ; $711d: $f3
    ld a, [$00f3]                                 ; $711e: $fa $f3 $00
    db $dd                                        ; $7121: $dd
    cpl                                           ; $7122: $2f
    nop                                           ; $7123: $00
    ld [hl-], a                                   ; $7124: $32
    nop                                           ; $7125: $00
    ld h, b                                       ; $7126: $60
    nop                                           ; $7127: $00
    ld h, b                                       ; $7128: $60
    nop                                           ; $7129: $00
    ld b, l                                       ; $712a: $45
    nop                                           ; $712b: $00
    ld [hl+], a                                   ; $712c: $22
    nop                                           ; $712d: $00
    ld b, b                                       ; $712e: $40
    nop                                           ; $712f: $00
    ld h, b                                       ; $7130: $60
    nop                                           ; $7131: $00
    cpl                                           ; $7132: $2f
    nop                                           ; $7133: $00
    ld e, $00                                     ; $7134: $1e $00
    ccf                                           ; $7136: $3f
    nop                                           ; $7137: $00
    ld a, a                                       ; $7138: $7f
    nop                                           ; $7139: $00
    ld d, a                                       ; $713a: $57
    nop                                           ; $713b: $00
    ld c, a                                       ; $713c: $4f
    nop                                           ; $713d: $00
    ld h, a                                       ; $713e: $67
    nop                                           ; $713f: $00
    call Call_000_1c00                            ; $7140: $cd $00 $1c
    nop                                           ; $7143: $00
    ld [bc], a                                    ; $7144: $02
    nop                                           ; $7145: $00
    inc d                                         ; $7146: $14
    nop                                           ; $7147: $00
    ld a, [bc]                                    ; $7148: $0a
    nop                                           ; $7149: $00
    inc b                                         ; $714a: $04
    nop                                           ; $714b: $00
    ld a, [bc]                                    ; $714c: $0a
    nop                                           ; $714d: $00
    ld b, $00                                     ; $714e: $06 $00
    inc d                                         ; $7150: $14
    nop                                           ; $7151: $00
    jr jr_0db_7154                                ; $7152: $18 $00

jr_0db_7154:
    inc e                                         ; $7154: $1c
    nop                                           ; $7155: $00
    ld e, $00                                     ; $7156: $1e $00
    ld e, $00                                     ; $7158: $1e $00
    ld e, $00                                     ; $715a: $1e $00
    rrca                                          ; $715c: $0f
    nop                                           ; $715d: $00
    rlca                                          ; $715e: $07
    nop                                           ; $715f: $00
    ei                                            ; $7160: $fb
    nop                                           ; $7161: $00
    ret nc                                        ; $7162: $d0

    nop                                           ; $7163: $00
    ld [$f000], a                                 ; $7164: $ea $00 $f0
    nop                                           ; $7167: $00
    add sp, $00                                   ; $7168: $e8 $00
    ld h, a                                       ; $716a: $67
    nop                                           ; $716b: $00
    ld h, b                                       ; $716c: $60
    nop                                           ; $716d: $00
    ldh [rP1], a                                  ; $716e: $e0 $00
    ldh [rP1], a                                  ; $7170: $e0 $00
    ldh [rP1], a                                  ; $7172: $e0 $00
    ld d, b                                       ; $7174: $50
    nop                                           ; $7175: $00
    jr nz, jr_0db_7178                            ; $7176: $20 $00

jr_0db_7178:
    jr nz, jr_0db_717a                            ; $7178: $20 $00

jr_0db_717a:
    jr nz, jr_0db_717c                            ; $717a: $20 $00

jr_0db_717c:
    jr nz, jr_0db_717e                            ; $717c: $20 $00

jr_0db_717e:
    rra                                           ; $717e: $1f
    dec b                                         ; $717f: $05
    nop                                           ; $7180: $00
    sbc e                                         ; $7181: $9b
    dec l                                         ; $7182: $2d
    nop                                           ; $7183: $00
    ld d, $00                                     ; $7184: $16 $00
    inc l                                         ; $7186: $2c
    nop                                           ; $7187: $00
    inc c                                         ; $7188: $0c
    nop                                           ; $7189: $00
    inc l                                         ; $718a: $2c
    nop                                           ; $718b: $00
    ld l, $00                                     ; $718c: $2e $00
    ld c, $00                                     ; $718e: $0e $00
    ld h, $00                                     ; $7190: $26 $00
    inc d                                         ; $7192: $14
    nop                                           ; $7193: $00
    ld [$0c00], sp                                ; $7194: $08 $00 $0c
    nop                                           ; $7197: $00
    inc b                                         ; $7198: $04
    nop                                           ; $7199: $00
    jr jr_0db_719c                                ; $719a: $18 $00

jr_0db_719c:
    jr nz, jr_0db_71a1                            ; $719c: $20 $03

    nop                                           ; $719e: $00
    rst $38                                       ; $719f: $ff
    dec c                                         ; $71a0: $0d

jr_0db_71a1:
    inc b                                         ; $71a1: $04
    ld sp, hl                                     ; $71a2: $f9
    rlca                                          ; $71a3: $07
    ld a, [c]                                     ; $71a4: $f2
    ld bc, $fae3                                  ; $71a5: $01 $e3 $fa
    db $e3                                        ; $71a8: $e3
    rst $38                                       ; $71a9: $ff
    di                                            ; $71aa: $f3
    ld sp, hl                                     ; $71ab: $f9
    di                                            ; $71ac: $f3
    nop                                           ; $71ad: $00
    db $dd                                        ; $71ae: $dd
    rrca                                          ; $71af: $0f
    nop                                           ; $71b0: $00
    dec de                                        ; $71b1: $1b
    nop                                           ; $71b2: $00
    dec sp                                        ; $71b3: $3b
    nop                                           ; $71b4: $00
    inc [hl]                                      ; $71b5: $34
    nop                                           ; $71b6: $00
    ld b, a                                       ; $71b7: $47
    nop                                           ; $71b8: $00
    ld d, d                                       ; $71b9: $52
    nop                                           ; $71ba: $00
    cpl                                           ; $71bb: $2f
    nop                                           ; $71bc: $00
    ld c, a                                       ; $71bd: $4f
    nop                                           ; $71be: $00
    ld a, d                                       ; $71bf: $7a
    nop                                           ; $71c0: $00
    ld c, b                                       ; $71c1: $48
    nop                                           ; $71c2: $00
    ld h, b                                       ; $71c3: $60
    nop                                           ; $71c4: $00
    ld c, d                                       ; $71c5: $4a
    nop                                           ; $71c6: $00
    ld h, d                                       ; $71c7: $62
    nop                                           ; $71c8: $00
    call $ed00                                    ; $71c9: $cd $00 $ed
    nop                                           ; $71cc: $00
    and d                                         ; $71cd: $a2
    nop                                           ; $71ce: $00
    stop                                          ; $71cf: $10 $00
    jr jr_0db_71d3                                ; $71d1: $18 $00

jr_0db_71d3:
    inc c                                         ; $71d3: $0c
    nop                                           ; $71d4: $00
    inc e                                         ; $71d5: $1c
    nop                                           ; $71d6: $00
    ld b, $00                                     ; $71d7: $06 $00
    ld a, [bc]                                    ; $71d9: $0a
    nop                                           ; $71da: $00
    inc d                                         ; $71db: $14
    nop                                           ; $71dc: $00
    ld d, $00                                     ; $71dd: $16 $00
    ld c, $00                                     ; $71df: $0e $00
    ld b, $00                                     ; $71e1: $06 $00
    ld b, $00                                     ; $71e3: $06 $00
    ld [de], a                                    ; $71e5: $12
    nop                                           ; $71e6: $00
    ld b, $00                                     ; $71e7: $06 $00
    inc de                                        ; $71e9: $13
    nop                                           ; $71ea: $00
    rla                                           ; $71eb: $17
    nop                                           ; $71ec: $00
    dec b                                         ; $71ed: $05
    nop                                           ; $71ee: $00
    ld l, [hl]                                    ; $71ef: $6e
    nop                                           ; $71f0: $00
    inc sp                                        ; $71f1: $33
    nop                                           ; $71f2: $00
    inc [hl]                                      ; $71f3: $34
    nop                                           ; $71f4: $00
    ld [hl-], a                                   ; $71f5: $32
    nop                                           ; $71f6: $00
    ld h, c                                       ; $71f7: $61
    nop                                           ; $71f8: $00
    ld [hl], d                                    ; $71f9: $72
    nop                                           ; $71fa: $00
    ld h, c                                       ; $71fb: $61
    nop                                           ; $71fc: $00
    pop af                                        ; $71fd: $f1
    nop                                           ; $71fe: $00
    ld l, a                                       ; $71ff: $6f
    nop                                           ; $7200: $00
    ld [hl+], a                                   ; $7201: $22
    nop                                           ; $7202: $00
    ld [de], a                                    ; $7203: $12
    nop                                           ; $7204: $00
    inc h                                         ; $7205: $24
    nop                                           ; $7206: $00
    ld hl, $1e00                                  ; $7207: $21 $00 $1e
    nop                                           ; $720a: $00
    inc c                                         ; $720b: $0c
    inc bc                                        ; $720c: $03
    nop                                           ; $720d: $00
    sbc l                                         ; $720e: $9d
    ld [hl], $00                                  ; $720f: $36 $00
    ld c, h                                       ; $7211: $4c
    nop                                           ; $7212: $00
    inc l                                         ; $7213: $2c
    nop                                           ; $7214: $00
    ld c, h                                       ; $7215: $4c
    nop                                           ; $7216: $00
    ld b, $00                                     ; $7217: $06 $00
    ld c, [hl]                                    ; $7219: $4e
    nop                                           ; $721a: $00
    ld b, $00                                     ; $721b: $06 $00
    rlca                                          ; $721d: $07
    nop                                           ; $721e: $00
    ld b, $00                                     ; $721f: $06 $00
    ld b, h                                       ; $7221: $44
    nop                                           ; $7222: $00
    ld c, b                                       ; $7223: $48
    nop                                           ; $7224: $00
    inc l                                         ; $7225: $2c
    nop                                           ; $7226: $00
    inc b                                         ; $7227: $04
    nop                                           ; $7228: $00
    ld a, b                                       ; $7229: $78
    nop                                           ; $722a: $00
    jr nc, jr_0db_7230                            ; $722b: $30 $03

    nop                                           ; $722d: $00
    rst $38                                       ; $722e: $ff
    dec c                                         ; $722f: $0d

jr_0db_7230:
    inc b                                         ; $7230: $04
    ld sp, hl                                     ; $7231: $f9
    rlca                                          ; $7232: $07
    ld a, [c]                                     ; $7233: $f2
    ld bc, $fae3                                  ; $7234: $01 $e3 $fa
    db $e3                                        ; $7237: $e3
    rst $38                                       ; $7238: $ff
    di                                            ; $7239: $f3
    ld a, [$fff3]                                 ; $723a: $fa $f3 $ff
    db $dd                                        ; $723d: $dd
    rrca                                          ; $723e: $0f
    nop                                           ; $723f: $00
    dec de                                        ; $7240: $1b
    nop                                           ; $7241: $00
    dec sp                                        ; $7242: $3b
    nop                                           ; $7243: $00
    inc [hl]                                      ; $7244: $34
    nop                                           ; $7245: $00
    ld b, a                                       ; $7246: $47
    nop                                           ; $7247: $00
    ld d, d                                       ; $7248: $52
    nop                                           ; $7249: $00
    cpl                                           ; $724a: $2f
    nop                                           ; $724b: $00
    ld c, a                                       ; $724c: $4f
    nop                                           ; $724d: $00
    ld [hl], d                                    ; $724e: $72
    nop                                           ; $724f: $00
    ret nc                                        ; $7250: $d0

    nop                                           ; $7251: $00
    ld h, b                                       ; $7252: $60
    nop                                           ; $7253: $00
    ld d, l                                       ; $7254: $55
    nop                                           ; $7255: $00
    ld h, h                                       ; $7256: $64
    nop                                           ; $7257: $00
    ld a, e                                       ; $7258: $7b
    nop                                           ; $7259: $00
    ei                                            ; $725a: $fb
    nop                                           ; $725b: $00
    db $e4                                        ; $725c: $e4
    nop                                           ; $725d: $00
    stop                                          ; $725e: $10 $00
    jr jr_0db_7262                                ; $7260: $18 $00

jr_0db_7262:
    inc c                                         ; $7262: $0c
    nop                                           ; $7263: $00
    inc e                                         ; $7264: $1c
    nop                                           ; $7265: $00
    ld b, $00                                     ; $7266: $06 $00
    ld a, [bc]                                    ; $7268: $0a
    nop                                           ; $7269: $00
    inc d                                         ; $726a: $14
    nop                                           ; $726b: $00
    ld e, $00                                     ; $726c: $1e $00
    ld d, $00                                     ; $726e: $16 $00
    ld b, $00                                     ; $7270: $06 $00
    ld a, [bc]                                    ; $7272: $0a
    nop                                           ; $7273: $00
    ld [bc], a                                    ; $7274: $02
    nop                                           ; $7275: $00
    rla                                           ; $7276: $17
    nop                                           ; $7277: $00
    dec bc                                        ; $7278: $0b
    nop                                           ; $7279: $00
    rrca                                          ; $727a: $0f
    nop                                           ; $727b: $00
    dec d                                         ; $727c: $15
    nop                                           ; $727d: $00
    ld a, c                                       ; $727e: $79
    nop                                           ; $727f: $00
    scf                                           ; $7280: $37
    nop                                           ; $7281: $00
    ld h, b                                       ; $7282: $60
    nop                                           ; $7283: $00
    ld h, l                                       ; $7284: $65
    nop                                           ; $7285: $00
    jp nz, $e500                                  ; $7286: $c2 $00 $e5

    nop                                           ; $7289: $00
    db $e3                                        ; $728a: $e3
    nop                                           ; $728b: $00
    ld [hl], l                                    ; $728c: $75
    nop                                           ; $728d: $00
    ld [hl], c                                    ; $728e: $71
    nop                                           ; $728f: $00
    inc h                                         ; $7290: $24
    nop                                           ; $7291: $00
    stop                                          ; $7292: $10 $00
    jr nz, jr_0db_7296                            ; $7294: $20 $00

jr_0db_7296:
    ld a, [hl-]                                   ; $7296: $3a
    nop                                           ; $7297: $00
    dec e                                         ; $7298: $1d
    nop                                           ; $7299: $00
    ld bc, $0003                                  ; $729a: $01 $03 $00
    sbc l                                         ; $729d: $9d
    ld a, [bc]                                    ; $729e: $0a
    nop                                           ; $729f: $00
    inc b                                         ; $72a0: $04
    nop                                           ; $72a1: $00
    ld d, $00                                     ; $72a2: $16 $00
    ld [bc], a                                    ; $72a4: $02
    nop                                           ; $72a5: $00
    inc bc                                        ; $72a6: $03
    nop                                           ; $72a7: $00
    inc bc                                        ; $72a8: $03
    nop                                           ; $72a9: $00
    inc bc                                        ; $72aa: $03
    nop                                           ; $72ab: $00
    rlca                                          ; $72ac: $07
    nop                                           ; $72ad: $00
    ld [bc], a                                    ; $72ae: $02
    nop                                           ; $72af: $00
    inc d                                         ; $72b0: $14
    nop                                           ; $72b1: $00
    ld a, [bc]                                    ; $72b2: $0a
    nop                                           ; $72b3: $00
    ld [bc], a                                    ; $72b4: $02
    nop                                           ; $72b5: $00
    ld a, [de]                                    ; $72b6: $1a
    nop                                           ; $72b7: $00
    inc b                                         ; $72b8: $04
    nop                                           ; $72b9: $00
    jr jr_0db_72bf                                ; $72ba: $18 $03

    nop                                           ; $72bc: $00
    rst $38                                       ; $72bd: $ff
    dec c                                         ; $72be: $0d

jr_0db_72bf:
    inc b                                         ; $72bf: $04
    ld sp, hl                                     ; $72c0: $f9
    rlca                                          ; $72c1: $07
    ld a, [c]                                     ; $72c2: $f2
    ld bc, $fae4                                  ; $72c3: $01 $e4 $fa
    db $e4                                        ; $72c6: $e4
    rst $38                                       ; $72c7: $ff
    db $f4                                        ; $72c8: $f4
    ld a, [$fff4]                                 ; $72c9: $fa $f4 $ff
    db $db                                        ; $72cc: $db
    rrca                                          ; $72cd: $0f
    nop                                           ; $72ce: $00
    dec de                                        ; $72cf: $1b
    nop                                           ; $72d0: $00
    dec sp                                        ; $72d1: $3b
    nop                                           ; $72d2: $00
    ld d, h                                       ; $72d3: $54
    nop                                           ; $72d4: $00
    ld b, a                                       ; $72d5: $47
    nop                                           ; $72d6: $00
    ld d, d                                       ; $72d7: $52
    nop                                           ; $72d8: $00
    cpl                                           ; $72d9: $2f
    nop                                           ; $72da: $00
    ld e, a                                       ; $72db: $5f
    nop                                           ; $72dc: $00
    ld h, e                                       ; $72dd: $63
    nop                                           ; $72de: $00
    jr nc, jr_0db_72e1                            ; $72df: $30 $00

jr_0db_72e1:
    ld b, b                                       ; $72e1: $40
    nop                                           ; $72e2: $00
    ld d, l                                       ; $72e3: $55
    nop                                           ; $72e4: $00
    ld h, h                                       ; $72e5: $64
    nop                                           ; $72e6: $00
    ei                                            ; $72e7: $fb
    nop                                           ; $72e8: $00
    db $db                                        ; $72e9: $db
    nop                                           ; $72ea: $00
    db $e4                                        ; $72eb: $e4
    nop                                           ; $72ec: $00
    stop                                          ; $72ed: $10 $00
    jr jr_0db_72f1                                ; $72ef: $18 $00

jr_0db_72f1:
    inc c                                         ; $72f1: $0c
    nop                                           ; $72f2: $00
    ld e, $00                                     ; $72f3: $1e $00
    ld b, $00                                     ; $72f5: $06 $00
    ld a, [bc]                                    ; $72f7: $0a
    nop                                           ; $72f8: $00
    inc d                                         ; $72f9: $14
    nop                                           ; $72fa: $00
    ld e, $00                                     ; $72fb: $1e $00
    ld d, $00                                     ; $72fd: $16 $00
    ld b, $00                                     ; $72ff: $06 $00
    ld [bc], a                                    ; $7301: $02
    nop                                           ; $7302: $00
    ld d, $00                                     ; $7303: $16 $00
    ld d, $00                                     ; $7305: $16 $00
    dec bc                                        ; $7307: $0b
    nop                                           ; $7308: $00
    rrca                                          ; $7309: $0f
    nop                                           ; $730a: $00
    dec d                                         ; $730b: $15
    nop                                           ; $730c: $00
    ei                                            ; $730d: $fb
    nop                                           ; $730e: $00
    ld h, a                                       ; $730f: $67
    nop                                           ; $7310: $00
    ld b, b                                       ; $7311: $40
    nop                                           ; $7312: $00
    ld h, a                                       ; $7313: $67
    nop                                           ; $7314: $00
    ld h, l                                       ; $7315: $65
    nop                                           ; $7316: $00
    jp nz, $e200                                  ; $7317: $c2 $00 $e2

    nop                                           ; $731a: $00
    rst $28                                       ; $731b: $ef
    nop                                           ; $731c: $00
    pop hl                                        ; $731d: $e1
    nop                                           ; $731e: $00
    ld b, h                                       ; $731f: $44
    nop                                           ; $7320: $00
    inc h                                         ; $7321: $24
    nop                                           ; $7322: $00
    stop                                          ; $7323: $10 $00
    ld e, $00                                     ; $7325: $1e $00
    ld bc, $0005                                  ; $7327: $01 $05 $00
    sbc e                                         ; $732a: $9b
    ld a, [de]                                    ; $732b: $1a
    nop                                           ; $732c: $00
    inc b                                         ; $732d: $04
    nop                                           ; $732e: $00
    ld d, $00                                     ; $732f: $16 $00
    ld [bc], a                                    ; $7331: $02
    nop                                           ; $7332: $00
    ld bc, $0300                                  ; $7333: $01 $00 $03
    nop                                           ; $7336: $00
    inc bc                                        ; $7337: $03
    nop                                           ; $7338: $00
    inc bc                                        ; $7339: $03
    nop                                           ; $733a: $00
    ld [bc], a                                    ; $733b: $02
    nop                                           ; $733c: $00
    inc d                                         ; $733d: $14
    nop                                           ; $733e: $00
    inc d                                         ; $733f: $14
    nop                                           ; $7340: $00
    ld [bc], a                                    ; $7341: $02
    nop                                           ; $7342: $00
    ld a, [de]                                    ; $7343: $1a
    nop                                           ; $7344: $00
    inc e                                         ; $7345: $1c
    dec b                                         ; $7346: $05
    nop                                           ; $7347: $00
    rst $38                                       ; $7348: $ff
    dec c                                         ; $7349: $0d
    inc b                                         ; $734a: $04
    ld sp, hl                                     ; $734b: $f9
    rlca                                          ; $734c: $07
    ld a, [c]                                     ; $734d: $f2
    ld bc, $fae4                                  ; $734e: $01 $e4 $fa
    db $e4                                        ; $7351: $e4
    rst $38                                       ; $7352: $ff
    db $f4                                        ; $7353: $f4
    ld sp, hl                                     ; $7354: $f9
    db $f4                                        ; $7355: $f4
    nop                                           ; $7356: $00
    reti                                          ; $7357: $d9


    rrca                                          ; $7358: $0f
    nop                                           ; $7359: $00
    dec de                                        ; $735a: $1b
    nop                                           ; $735b: $00
    dec sp                                        ; $735c: $3b
    nop                                           ; $735d: $00
    ld d, h                                       ; $735e: $54
    nop                                           ; $735f: $00
    ld b, a                                       ; $7360: $47
    nop                                           ; $7361: $00
    ld d, d                                       ; $7362: $52
    nop                                           ; $7363: $00
    cpl                                           ; $7364: $2f
    nop                                           ; $7365: $00
    ld c, a                                       ; $7366: $4f
    nop                                           ; $7367: $00
    ld [hl], d                                    ; $7368: $72
    nop                                           ; $7369: $00
    ret nc                                        ; $736a: $d0

    nop                                           ; $736b: $00
    ld h, b                                       ; $736c: $60
    nop                                           ; $736d: $00
    ld d, l                                       ; $736e: $55
    nop                                           ; $736f: $00
    ld h, h                                       ; $7370: $64
    nop                                           ; $7371: $00
    db $db                                        ; $7372: $db
    nop                                           ; $7373: $00
    db $db                                        ; $7374: $db
    nop                                           ; $7375: $00
    db $e4                                        ; $7376: $e4
    nop                                           ; $7377: $00
    stop                                          ; $7378: $10 $00
    jr jr_0db_737c                                ; $737a: $18 $00

jr_0db_737c:
    inc c                                         ; $737c: $0c
    nop                                           ; $737d: $00
    ld e, $00                                     ; $737e: $1e $00
    ld b, $00                                     ; $7380: $06 $00
    ld a, [bc]                                    ; $7382: $0a
    nop                                           ; $7383: $00
    inc d                                         ; $7384: $14
    nop                                           ; $7385: $00
    ld e, $00                                     ; $7386: $1e $00
    ld d, $00                                     ; $7388: $16 $00
    ld b, $00                                     ; $738a: $06 $00
    ld a, [bc]                                    ; $738c: $0a
    nop                                           ; $738d: $00
    ld [bc], a                                    ; $738e: $02
    nop                                           ; $738f: $00
    ld d, $00                                     ; $7390: $16 $00
    dec bc                                        ; $7392: $0b
    nop                                           ; $7393: $00
    rrca                                          ; $7394: $0f
    nop                                           ; $7395: $00
    dec d                                         ; $7396: $15
    nop                                           ; $7397: $00
    ld l, l                                       ; $7398: $6d
    nop                                           ; $7399: $00
    inc sp                                        ; $739a: $33
    nop                                           ; $739b: $00
    jr nc, jr_0db_739e                            ; $739c: $30 $00

jr_0db_739e:
    ld [hl-], a                                   ; $739e: $32
    nop                                           ; $739f: $00
    ld d, c                                       ; $73a0: $51
    nop                                           ; $73a1: $00
    ld h, d                                       ; $73a2: $62
    nop                                           ; $73a3: $00
    ld h, c                                       ; $73a4: $61
    nop                                           ; $73a5: $00
    pop hl                                        ; $73a6: $e1
    nop                                           ; $73a7: $00
    ld [hl], c                                    ; $73a8: $71
    nop                                           ; $73a9: $00
    ld a, [hl+]                                   ; $73aa: $2a
    nop                                           ; $73ab: $00
    stop                                          ; $73ac: $10 $00
    dec d                                         ; $73ae: $15
    nop                                           ; $73af: $00
    ld c, $07                                     ; $73b0: $0e $07
    nop                                           ; $73b2: $00
    sbc e                                         ; $73b3: $9b
    ld d, h                                       ; $73b4: $54
    nop                                           ; $73b5: $00
    ld c, b                                       ; $73b6: $48
    nop                                           ; $73b7: $00
    inc l                                         ; $73b8: $2c
    nop                                           ; $73b9: $00
    ld c, h                                       ; $73ba: $4c
    nop                                           ; $73bb: $00
    ld a, [bc]                                    ; $73bc: $0a
    nop                                           ; $73bd: $00
    ld b, [hl]                                    ; $73be: $46
    nop                                           ; $73bf: $00
    ld b, $00                                     ; $73c0: $06 $00
    rlca                                          ; $73c2: $07
    nop                                           ; $73c3: $00
    ld b, $00                                     ; $73c4: $06 $00
    ld b, h                                       ; $73c6: $44
    nop                                           ; $73c7: $00
    jr z, jr_0db_73ca                             ; $73c8: $28 $00

jr_0db_73ca:
    inc b                                         ; $73ca: $04
    nop                                           ; $73cb: $00
    ld a, b                                       ; $73cc: $78
    nop                                           ; $73cd: $00
    ld [hl], b                                    ; $73ce: $70
    dec b                                         ; $73cf: $05
    nop                                           ; $73d0: $00
    rst $38                                       ; $73d1: $ff
    dec c                                         ; $73d2: $0d
    inc b                                         ; $73d3: $04
    ld sp, hl                                     ; $73d4: $f9
    rlca                                          ; $73d5: $07
    ld a, [c]                                     ; $73d6: $f2
    ld bc, $fae3                                  ; $73d7: $01 $e3 $fa
    db $e3                                        ; $73da: $e3
    rst $38                                       ; $73db: $ff
    di                                            ; $73dc: $f3
    ld a, [$fff3]                                 ; $73dd: $fa $f3 $ff
    db $db                                        ; $73e0: $db
    rrca                                          ; $73e1: $0f
    nop                                           ; $73e2: $00
    dec de                                        ; $73e3: $1b
    nop                                           ; $73e4: $00
    dec sp                                        ; $73e5: $3b
    nop                                           ; $73e6: $00
    inc [hl]                                      ; $73e7: $34
    nop                                           ; $73e8: $00
    ld b, a                                       ; $73e9: $47
    nop                                           ; $73ea: $00
    ld d, d                                       ; $73eb: $52
    nop                                           ; $73ec: $00
    ld c, a                                       ; $73ed: $4f
    nop                                           ; $73ee: $00
    cpl                                           ; $73ef: $2f
    nop                                           ; $73f0: $00
    ld a, d                                       ; $73f1: $7a
    nop                                           ; $73f2: $00
    ld c, b                                       ; $73f3: $48
    nop                                           ; $73f4: $00
    ld h, b                                       ; $73f5: $60
    nop                                           ; $73f6: $00
    ld c, d                                       ; $73f7: $4a
    nop                                           ; $73f8: $00
    ld h, d                                       ; $73f9: $62
    nop                                           ; $73fa: $00
    call $ed00                                    ; $73fb: $cd $00 $ed
    nop                                           ; $73fe: $00
    and d                                         ; $73ff: $a2
    nop                                           ; $7400: $00
    stop                                          ; $7401: $10 $00
    jr jr_0db_7405                                ; $7403: $18 $00

jr_0db_7405:
    inc c                                         ; $7405: $0c
    nop                                           ; $7406: $00
    inc e                                         ; $7407: $1c
    nop                                           ; $7408: $00
    ld b, $00                                     ; $7409: $06 $00
    ld a, [bc]                                    ; $740b: $0a
    nop                                           ; $740c: $00
    ld [de], a                                    ; $740d: $12
    nop                                           ; $740e: $00
    inc d                                         ; $740f: $14
    nop                                           ; $7410: $00
    ld c, $00                                     ; $7411: $0e $00
    ld b, $00                                     ; $7413: $06 $00
    ld b, $00                                     ; $7415: $06 $00
    ld [de], a                                    ; $7417: $12
    nop                                           ; $7418: $00
    ld b, $00                                     ; $7419: $06 $00
    rla                                           ; $741b: $17
    nop                                           ; $741c: $00
    inc de                                        ; $741d: $13
    nop                                           ; $741e: $00
    dec b                                         ; $741f: $05
    nop                                           ; $7420: $00
    reti                                          ; $7421: $d9


    nop                                           ; $7422: $00
    ld h, a                                       ; $7423: $67
    nop                                           ; $7424: $00
    ld l, b                                       ; $7425: $68
    nop                                           ; $7426: $00
    ld h, l                                       ; $7427: $65
    nop                                           ; $7428: $00
    jp nz, $c500                                  ; $7429: $c2 $00 $c5

    nop                                           ; $742c: $00
    jp nz, $e200                                  ; $742d: $c2 $00 $e2

    nop                                           ; $7430: $00
    add $00                                       ; $7431: $c6 $00
    ld a, c                                       ; $7433: $79
    nop                                           ; $7434: $00
    ld h, c                                       ; $7435: $61
    nop                                           ; $7436: $00
    jr nz, jr_0db_7439                            ; $7437: $20 $00

jr_0db_7439:
    ld a, [hl-]                                   ; $7439: $3a
    nop                                           ; $743a: $00
    dec e                                         ; $743b: $1d
    dec b                                         ; $743c: $05
    nop                                           ; $743d: $00
    sbc l                                         ; $743e: $9d
    rra                                           ; $743f: $1f
    nop                                           ; $7440: $00
    ld b, $00                                     ; $7441: $06 $00
    ld b, $00                                     ; $7443: $06 $00
    ld b, $00                                     ; $7445: $06 $00
    inc bc                                        ; $7447: $03
    nop                                           ; $7448: $00
    rlca                                          ; $7449: $07
    nop                                           ; $744a: $00
    inc bc                                        ; $744b: $03
    nop                                           ; $744c: $00
    rlca                                          ; $744d: $07
    nop                                           ; $744e: $00
    rlca                                          ; $744f: $07
    nop                                           ; $7450: $00
    ld [bc], a                                    ; $7451: $02
    nop                                           ; $7452: $00
    inc b                                         ; $7453: $04
    nop                                           ; $7454: $00
    ld [de], a                                    ; $7455: $12
    nop                                           ; $7456: $00
    ld [bc], a                                    ; $7457: $02
    nop                                           ; $7458: $00
    inc e                                         ; $7459: $1c
    nop                                           ; $745a: $00
    jr jr_0db_7460                                ; $745b: $18 $03

    nop                                           ; $745d: $00
    rst $38                                       ; $745e: $ff
    dec c                                         ; $745f: $0d

jr_0db_7460:
    inc b                                         ; $7460: $04
    ld sp, hl                                     ; $7461: $f9
    rlca                                          ; $7462: $07
    ld a, [c]                                     ; $7463: $f2
    ld bc, $fae3                                  ; $7464: $01 $e3 $fa
    db $e3                                        ; $7467: $e3
    rst $38                                       ; $7468: $ff
    di                                            ; $7469: $f3
    ld a, [$fff3]                                 ; $746a: $fa $f3 $ff
    db $dd                                        ; $746d: $dd
    rrca                                          ; $746e: $0f
    nop                                           ; $746f: $00
    dec de                                        ; $7470: $1b
    nop                                           ; $7471: $00
    dec sp                                        ; $7472: $3b
    nop                                           ; $7473: $00
    inc [hl]                                      ; $7474: $34
    nop                                           ; $7475: $00
    ld b, a                                       ; $7476: $47
    nop                                           ; $7477: $00
    ld d, d                                       ; $7478: $52
    nop                                           ; $7479: $00
    cpl                                           ; $747a: $2f
    nop                                           ; $747b: $00
    ld c, a                                       ; $747c: $4f
    nop                                           ; $747d: $00
    ld [hl], d                                    ; $747e: $72
    nop                                           ; $747f: $00
    ld d, b                                       ; $7480: $50
    nop                                           ; $7481: $00
    ld h, b                                       ; $7482: $60
    nop                                           ; $7483: $00
    ld b, d                                       ; $7484: $42
    nop                                           ; $7485: $00
    ret                                           ; $7486: $c9


    nop                                           ; $7487: $00
    sub $00                                       ; $7488: $d6 $00
    or $00                                        ; $748a: $f6 $00
    xor c                                         ; $748c: $a9
    nop                                           ; $748d: $00
    stop                                          ; $748e: $10 $00
    jr jr_0db_7492                                ; $7490: $18 $00

jr_0db_7492:
    inc c                                         ; $7492: $0c
    nop                                           ; $7493: $00
    inc e                                         ; $7494: $1c
    nop                                           ; $7495: $00
    ld b, $00                                     ; $7496: $06 $00
    ld a, [bc]                                    ; $7498: $0a
    nop                                           ; $7499: $00
    inc d                                         ; $749a: $14
    nop                                           ; $749b: $00
    ld e, $00                                     ; $749c: $1e $00
    ld e, $00                                     ; $749e: $1e $00
    ld c, $00                                     ; $74a0: $0e $00
    ld [bc], a                                    ; $74a2: $02
    nop                                           ; $74a3: $00
    ld a, [bc]                                    ; $74a4: $0a
    nop                                           ; $74a5: $00
    ld b, $00                                     ; $74a6: $06 $00
    ld e, $00                                     ; $74a8: $1e $00
    rra                                           ; $74aa: $1f
    nop                                           ; $74ab: $00
    rlca                                          ; $74ac: $07
    nop                                           ; $74ad: $00
    call nc, $e700                                ; $74ae: $d4 $00 $e7
    nop                                           ; $74b1: $00
    ld l, b                                       ; $74b2: $68
    nop                                           ; $74b3: $00
    ld b, l                                       ; $74b4: $45
    nop                                           ; $74b5: $00
    jp nz, $c500                                  ; $74b6: $c2 $00 $c5

    nop                                           ; $74b9: $00
    jp nz, $e400                                  ; $74ba: $c2 $00 $e4

    nop                                           ; $74bd: $00
    ld h, h                                       ; $74be: $64
    nop                                           ; $74bf: $00
    ld l, c                                       ; $74c0: $69
    nop                                           ; $74c1: $00
    ld d, b                                       ; $74c2: $50
    nop                                           ; $74c3: $00
    ld b, b                                       ; $74c4: $40
    nop                                           ; $74c5: $00
    ld e, d                                       ; $74c6: $5a
    nop                                           ; $74c7: $00
    dec h                                         ; $74c8: $25
    nop                                           ; $74c9: $00
    inc e                                         ; $74ca: $1c
    inc bc                                        ; $74cb: $03
    nop                                           ; $74cc: $00
    sbc e                                         ; $74cd: $9b
    dec e                                         ; $74ce: $1d
    nop                                           ; $74cf: $00
    ld a, [bc]                                    ; $74d0: $0a
    nop                                           ; $74d1: $00
    ld b, $00                                     ; $74d2: $06 $00
    ld b, $00                                     ; $74d4: $06 $00
    inc bc                                        ; $74d6: $03
    nop                                           ; $74d7: $00
    rlca                                          ; $74d8: $07
    nop                                           ; $74d9: $00
    rlca                                          ; $74da: $07
    nop                                           ; $74db: $00
    ld c, $00                                     ; $74dc: $0e $00
    ld c, $00                                     ; $74de: $0e $00
    inc b                                         ; $74e0: $04
    nop                                           ; $74e1: $00
    ld [$0400], sp                                ; $74e2: $08 $00 $04
    nop                                           ; $74e5: $00
    inc e                                         ; $74e6: $1c
    nop                                           ; $74e7: $00
    jr jr_0db_74ef                                ; $74e8: $18 $05

    nop                                           ; $74ea: $00
    rst $38                                       ; $74eb: $ff
    dec c                                         ; $74ec: $0d
    inc b                                         ; $74ed: $04
    ld sp, hl                                     ; $74ee: $f9

jr_0db_74ef:
    rlca                                          ; $74ef: $07
    ld a, [c]                                     ; $74f0: $f2
    ld bc, $fae4                                  ; $74f1: $01 $e4 $fa
    db $e4                                        ; $74f4: $e4
    rst $38                                       ; $74f5: $ff
    db $f4                                        ; $74f6: $f4
    ld a, [$fff4]                                 ; $74f7: $fa $f4 $ff
    db $db                                        ; $74fa: $db
    rrca                                          ; $74fb: $0f
    nop                                           ; $74fc: $00
    dec de                                        ; $74fd: $1b
    nop                                           ; $74fe: $00
    dec sp                                        ; $74ff: $3b
    nop                                           ; $7500: $00
    ld d, h                                       ; $7501: $54
    nop                                           ; $7502: $00
    ld b, a                                       ; $7503: $47
    nop                                           ; $7504: $00
    ld d, d                                       ; $7505: $52
    nop                                           ; $7506: $00
    cpl                                           ; $7507: $2f
    nop                                           ; $7508: $00
    ld c, a                                       ; $7509: $4f
    nop                                           ; $750a: $00
    ld a, d                                       ; $750b: $7a
    nop                                           ; $750c: $00
    ld d, b                                       ; $750d: $50
    nop                                           ; $750e: $00
    ld b, b                                       ; $750f: $40
    nop                                           ; $7510: $00
    ld c, d                                       ; $7511: $4a
    nop                                           ; $7512: $00
    ld c, c                                       ; $7513: $49
    nop                                           ; $7514: $00
    sub $00                                       ; $7515: $d6 $00
    or $00                                        ; $7517: $f6 $00
    xor c                                         ; $7519: $a9
    nop                                           ; $751a: $00
    stop                                          ; $751b: $10 $00
    jr jr_0db_751f                                ; $751d: $18 $00

jr_0db_751f:
    inc c                                         ; $751f: $0c
    nop                                           ; $7520: $00
    ld e, $00                                     ; $7521: $1e $00
    ld b, $00                                     ; $7523: $06 $00
    ld a, [bc]                                    ; $7525: $0a
    nop                                           ; $7526: $00
    inc d                                         ; $7527: $14
    nop                                           ; $7528: $00
    ld d, $00                                     ; $7529: $16 $00
    ld c, $00                                     ; $752b: $0e $00
    ld c, $00                                     ; $752d: $0e $00
    ld [bc], a                                    ; $752f: $02
    nop                                           ; $7530: $00
    ld c, $00                                     ; $7531: $0e $00
    ld b, $00                                     ; $7533: $06 $00
    rra                                           ; $7535: $1f
    nop                                           ; $7536: $00
    dec de                                        ; $7537: $1b
    nop                                           ; $7538: $00
    rlca                                          ; $7539: $07
    nop                                           ; $753a: $00
    ld e, [hl]                                    ; $753b: $5e
    nop                                           ; $753c: $00
    rst $20                                       ; $753d: $e7
    nop                                           ; $753e: $00
    add sp, $00                                   ; $753f: $e8 $00
    ld b, a                                       ; $7541: $47
    nop                                           ; $7542: $00
    add l                                         ; $7543: $85
    nop                                           ; $7544: $00
    jp nz, $c200                                  ; $7545: $c2 $00 $c2

    nop                                           ; $7548: $00
    call nz, Call_0db_6400                        ; $7549: $c4 $00 $64
    nop                                           ; $754c: $00
    add hl, sp                                    ; $754d: $39
    nop                                           ; $754e: $00
    add hl, hl                                    ; $754f: $29
    nop                                           ; $7550: $00
    ld b, b                                       ; $7551: $40
    nop                                           ; $7552: $00
    ld e, e                                       ; $7553: $5b
    nop                                           ; $7554: $00
    inc a                                         ; $7555: $3c
    dec b                                         ; $7556: $05
    nop                                           ; $7557: $00
    sbc c                                         ; $7558: $99
    rra                                           ; $7559: $1f
    nop                                           ; $755a: $00
    ld b, $00                                     ; $755b: $06 $00
    ld [bc], a                                    ; $755d: $02
    nop                                           ; $755e: $00
    ld b, $00                                     ; $755f: $06 $00
    ld b, $00                                     ; $7561: $06 $00
    inc bc                                        ; $7563: $03
    nop                                           ; $7564: $00
    rlca                                          ; $7565: $07
    nop                                           ; $7566: $00
    rlca                                          ; $7567: $07
    nop                                           ; $7568: $00
    rlca                                          ; $7569: $07
    nop                                           ; $756a: $00
    ld [bc], a                                    ; $756b: $02
    nop                                           ; $756c: $00
    inc b                                         ; $756d: $04
    nop                                           ; $756e: $00
    ld [$1800], sp                                ; $756f: $08 $00 $18
    rlca                                          ; $7572: $07
    nop                                           ; $7573: $00
    rst $38                                       ; $7574: $ff
    dec c                                         ; $7575: $0d
    inc b                                         ; $7576: $04
    ld sp, hl                                     ; $7577: $f9
    rlca                                          ; $7578: $07
    ld a, [c]                                     ; $7579: $f2
    ld bc, $fae4                                  ; $757a: $01 $e4 $fa
    db $e4                                        ; $757d: $e4
    rst $38                                       ; $757e: $ff
    db $f4                                        ; $757f: $f4
    ld sp, hl                                     ; $7580: $f9
    db $f4                                        ; $7581: $f4
    nop                                           ; $7582: $00
    db $db                                        ; $7583: $db
    rrca                                          ; $7584: $0f
    nop                                           ; $7585: $00
    dec de                                        ; $7586: $1b
    nop                                           ; $7587: $00
    dec sp                                        ; $7588: $3b
    nop                                           ; $7589: $00
    ld d, h                                       ; $758a: $54
    nop                                           ; $758b: $00
    ld b, a                                       ; $758c: $47
    nop                                           ; $758d: $00
    ld d, d                                       ; $758e: $52
    nop                                           ; $758f: $00
    cpl                                           ; $7590: $2f
    nop                                           ; $7591: $00
    ld c, a                                       ; $7592: $4f
    nop                                           ; $7593: $00
    ld [hl], d                                    ; $7594: $72
    nop                                           ; $7595: $00
    ld d, b                                       ; $7596: $50
    nop                                           ; $7597: $00
    ld h, b                                       ; $7598: $60
    nop                                           ; $7599: $00
    ld b, d                                       ; $759a: $42
    nop                                           ; $759b: $00
    ld c, c                                       ; $759c: $49
    nop                                           ; $759d: $00
    sub $00                                       ; $759e: $d6 $00
    or $00                                        ; $75a0: $f6 $00
    xor c                                         ; $75a2: $a9
    nop                                           ; $75a3: $00
    stop                                          ; $75a4: $10 $00
    jr jr_0db_75a8                                ; $75a6: $18 $00

jr_0db_75a8:
    inc c                                         ; $75a8: $0c
    nop                                           ; $75a9: $00
    ld e, $00                                     ; $75aa: $1e $00
    ld b, $00                                     ; $75ac: $06 $00
    ld a, [bc]                                    ; $75ae: $0a
    nop                                           ; $75af: $00
    inc d                                         ; $75b0: $14
    nop                                           ; $75b1: $00
    ld e, $00                                     ; $75b2: $1e $00
    ld e, $00                                     ; $75b4: $1e $00
    inc c                                         ; $75b6: $0c
    nop                                           ; $75b7: $00
    ld [bc], a                                    ; $75b8: $02
    nop                                           ; $75b9: $00
    ld a, [bc]                                    ; $75ba: $0a
    nop                                           ; $75bb: $00
    ld b, $00                                     ; $75bc: $06 $00
    dec de                                        ; $75be: $1b
    nop                                           ; $75bf: $00
    dec de                                        ; $75c0: $1b
    nop                                           ; $75c1: $00
    rlca                                          ; $75c2: $07
    nop                                           ; $75c3: $00
    dec hl                                        ; $75c4: $2b
    nop                                           ; $75c5: $00
    inc sp                                        ; $75c6: $33
    nop                                           ; $75c7: $00
    inc [hl]                                      ; $75c8: $34
    nop                                           ; $75c9: $00
    ld [hl-], a                                   ; $75ca: $32
    nop                                           ; $75cb: $00
    ld d, c                                       ; $75cc: $51
    nop                                           ; $75cd: $00
    ld h, d                                       ; $75ce: $62
    nop                                           ; $75cf: $00
    ld h, c                                       ; $75d0: $61
    nop                                           ; $75d1: $00
    pop af                                        ; $75d2: $f1
    nop                                           ; $75d3: $00
    ld l, a                                       ; $75d4: $6f
    nop                                           ; $75d5: $00
    ld [hl+], a                                   ; $75d6: $22
    nop                                           ; $75d7: $00
    inc d                                         ; $75d8: $14
    nop                                           ; $75d9: $00
    ld hl, $1e00                                  ; $75da: $21 $00 $1e
    nop                                           ; $75dd: $00
    ld c, $05                                     ; $75de: $0e $05
    nop                                           ; $75e0: $00
    sbc c                                         ; $75e1: $99
    ld [hl], $00                                  ; $75e2: $36 $00
    ld c, h                                       ; $75e4: $4c
    nop                                           ; $75e5: $00
    inc c                                         ; $75e6: $0c
    nop                                           ; $75e7: $00
    ld c, h                                       ; $75e8: $4c
    nop                                           ; $75e9: $00
    ld a, [bc]                                    ; $75ea: $0a
    nop                                           ; $75eb: $00
    ld b, [hl]                                    ; $75ec: $46
    nop                                           ; $75ed: $00
    ld b, $00                                     ; $75ee: $06 $00
    rlca                                          ; $75f0: $07
    nop                                           ; $75f1: $00
    ld b, $00                                     ; $75f2: $06 $00
    ld b, h                                       ; $75f4: $44
    nop                                           ; $75f5: $00
    ld [$2800], sp                                ; $75f6: $08 $00 $28
    nop                                           ; $75f9: $00
    ld [hl], b                                    ; $75fa: $70
    rlca                                          ; $75fb: $07
    nop                                           ; $75fc: $00
    rst $38                                       ; $75fd: $ff
    dec c                                         ; $75fe: $0d
    inc b                                         ; $75ff: $04
    ld sp, hl                                     ; $7600: $f9
    rlca                                          ; $7601: $07
    ld a, [c]                                     ; $7602: $f2
    ld bc, $fae3                                  ; $7603: $01 $e3 $fa
    db $e3                                        ; $7606: $e3
    rst $38                                       ; $7607: $ff
    di                                            ; $7608: $f3
    ld a, [$fff3]                                 ; $7609: $fa $f3 $ff
    db $dd                                        ; $760c: $dd
    rrca                                          ; $760d: $0f
    nop                                           ; $760e: $00
    dec de                                        ; $760f: $1b
    nop                                           ; $7610: $00
    dec sp                                        ; $7611: $3b
    nop                                           ; $7612: $00
    inc [hl]                                      ; $7613: $34
    nop                                           ; $7614: $00
    ld b, a                                       ; $7615: $47
    nop                                           ; $7616: $00
    ld d, d                                       ; $7617: $52
    nop                                           ; $7618: $00
    ld c, a                                       ; $7619: $4f
    nop                                           ; $761a: $00
    cpl                                           ; $761b: $2f
    nop                                           ; $761c: $00
    ld a, d                                       ; $761d: $7a
    nop                                           ; $761e: $00
    ld c, b                                       ; $761f: $48
    nop                                           ; $7620: $00
    ld h, b                                       ; $7621: $60
    nop                                           ; $7622: $00
    ld c, d                                       ; $7623: $4a
    nop                                           ; $7624: $00
    ld h, d                                       ; $7625: $62
    nop                                           ; $7626: $00
    db $ed                                        ; $7627: $ed
    nop                                           ; $7628: $00
    call $a200                                    ; $7629: $cd $00 $a2
    nop                                           ; $762c: $00
    stop                                          ; $762d: $10 $00
    jr jr_0db_7631                                ; $762f: $18 $00

jr_0db_7631:
    inc c                                         ; $7631: $0c
    nop                                           ; $7632: $00
    inc e                                         ; $7633: $1c
    nop                                           ; $7634: $00
    ld b, $00                                     ; $7635: $06 $00
    ld a, [bc]                                    ; $7637: $0a
    nop                                           ; $7638: $00
    ld [de], a                                    ; $7639: $12
    nop                                           ; $763a: $00
    inc d                                         ; $763b: $14
    nop                                           ; $763c: $00
    ld c, $00                                     ; $763d: $0e $00
    ld b, $00                                     ; $763f: $06 $00
    ld b, $00                                     ; $7641: $06 $00
    ld [de], a                                    ; $7643: $12
    nop                                           ; $7644: $00
    ld b, $00                                     ; $7645: $06 $00
    inc de                                        ; $7647: $13
    nop                                           ; $7648: $00
    rla                                           ; $7649: $17
    nop                                           ; $764a: $00
    dec b                                         ; $764b: $05
    nop                                           ; $764c: $00
    call c, Call_0db_6700                         ; $764d: $dc $00 $67
    nop                                           ; $7650: $00
    ld h, b                                       ; $7651: $60
    nop                                           ; $7652: $00
    ld h, l                                       ; $7653: $65
    nop                                           ; $7654: $00
    jp nz, $e500                                  ; $7655: $c2 $00 $e5

    nop                                           ; $7658: $00
    jp nz, $ee00                                  ; $7659: $c2 $00 $ee

    nop                                           ; $765c: $00
    db $e3                                        ; $765d: $e3
    nop                                           ; $765e: $00
    ld b, h                                       ; $765f: $44
    nop                                           ; $7660: $00
    inc h                                         ; $7661: $24
    nop                                           ; $7662: $00
    ld c, b                                       ; $7663: $48
    nop                                           ; $7664: $00
    ld b, d                                       ; $7665: $42
    nop                                           ; $7666: $00
    dec a                                         ; $7667: $3d
    nop                                           ; $7668: $00
    jr jr_0db_766e                                ; $7669: $18 $03

    nop                                           ; $766b: $00
    sbc e                                         ; $766c: $9b
    rra                                           ; $766d: $1f

jr_0db_766e:
    nop                                           ; $766e: $00
    ld b, $00                                     ; $766f: $06 $00
    ld d, $00                                     ; $7671: $16 $00
    ld b, $00                                     ; $7673: $06 $00
    inc bc                                        ; $7675: $03
    nop                                           ; $7676: $00
    inc bc                                        ; $7677: $03
    nop                                           ; $7678: $00
    inc bc                                        ; $7679: $03
    nop                                           ; $767a: $00
    rlca                                          ; $767b: $07
    nop                                           ; $767c: $00
    inc bc                                        ; $767d: $03
    nop                                           ; $767e: $00
    ld a, [de]                                    ; $767f: $1a
    nop                                           ; $7680: $00
    inc b                                         ; $7681: $04
    nop                                           ; $7682: $00
    inc b                                         ; $7683: $04
    nop                                           ; $7684: $00
    inc e                                         ; $7685: $1c
    nop                                           ; $7686: $00
    jr jr_0db_768e                                ; $7687: $18 $05

    nop                                           ; $7689: $00
    rst $38                                       ; $768a: $ff
    ld de, $f906                                  ; $768b: $11 $06 $f9

jr_0db_768e:
    rlca                                          ; $768e: $07
    ld a, [c]                                     ; $768f: $f2
    ld bc, $f6eb                                  ; $7690: $01 $eb $f6
    ld [$eafe], a                                 ; $7693: $ea $fe $ea
    inc bc                                        ; $7696: $03
    ld a, [$faf5]                                 ; $7697: $fa $f5 $fa
    db $fd                                        ; $769a: $fd
    ld a, [$df01]                                 ; $769b: $fa $01 $df
    rra                                           ; $769e: $1f
    nop                                           ; $769f: $00
    dec sp                                        ; $76a0: $3b
    nop                                           ; $76a1: $00
    ld a, h                                       ; $76a2: $7c
    nop                                           ; $76a3: $00
    ld l, d                                       ; $76a4: $6a
    nop                                           ; $76a5: $00
    ld e, e                                       ; $76a6: $5b
    nop                                           ; $76a7: $00
    ld b, l                                       ; $76a8: $45
    nop                                           ; $76a9: $00
    ld l, a                                       ; $76aa: $6f
    nop                                           ; $76ab: $00
    and a                                         ; $76ac: $a7
    nop                                           ; $76ad: $00
    rst $30                                       ; $76ae: $f7
    nop                                           ; $76af: $00
    jp nz, $9600                                  ; $76b0: $c2 $00 $96

    nop                                           ; $76b3: $00
    db $d3                                        ; $76b4: $d3
    nop                                           ; $76b5: $00
    ld d, l                                       ; $76b6: $55
    nop                                           ; $76b7: $00
    ld h, e                                       ; $76b8: $63
    nop                                           ; $76b9: $00
    ld [hl], e                                    ; $76ba: $73
    nop                                           ; $76bb: $00
    and e                                         ; $76bc: $a3
    nop                                           ; $76bd: $00
    ld b, $00                                     ; $76be: $06 $00
    rlca                                          ; $76c0: $07
    nop                                           ; $76c1: $00
    sbc b                                         ; $76c2: $98
    nop                                           ; $76c3: $00
    ret c                                         ; $76c4: $d8

    nop                                           ; $76c5: $00
    and h                                         ; $76c6: $a4
    nop                                           ; $76c7: $00
    and c                                         ; $76c8: $a1
    nop                                           ; $76c9: $00
    sub c                                         ; $76ca: $91
    nop                                           ; $76cb: $00
    db $d3                                        ; $76cc: $d3
    nop                                           ; $76cd: $00
    adc l                                         ; $76ce: $8d
    nop                                           ; $76cf: $00
    rlca                                          ; $76d0: $07
    nop                                           ; $76d1: $00
    add hl, bc                                    ; $76d2: $09
    nop                                           ; $76d3: $00
    ld a, [de]                                    ; $76d4: $1a
    nop                                           ; $76d5: $00
    dec [hl]                                      ; $76d6: $35
    nop                                           ; $76d7: $00
    inc d                                         ; $76d8: $14
    nop                                           ; $76d9: $00
    dec c                                         ; $76da: $0d
    nop                                           ; $76db: $00
    inc e                                         ; $76dc: $1c
    nop                                           ; $76dd: $00
    ld [$1400], sp                                ; $76de: $08 $00 $14
    nop                                           ; $76e1: $00
    rrca                                          ; $76e2: $0f
    nop                                           ; $76e3: $00
    ld [bc], a                                    ; $76e4: $02
    nop                                           ; $76e5: $00
    inc c                                         ; $76e6: $0c
    nop                                           ; $76e7: $00
    ld d, $00                                     ; $76e8: $16 $00
    inc c                                         ; $76ea: $0c
    nop                                           ; $76eb: $00
    ld a, [bc]                                    ; $76ec: $0a
    nop                                           ; $76ed: $00
    ld b, $00                                     ; $76ee: $06 $00
    inc e                                         ; $76f0: $1c
    nop                                           ; $76f1: $00
    jr jr_0db_76f4                                ; $76f2: $18 $00

jr_0db_76f4:
    stop                                          ; $76f4: $10 $00
    ld [$1800], sp                                ; $76f6: $08 $00 $18
    nop                                           ; $76f9: $00
    ld [$1800], sp                                ; $76fa: $08 $00 $18
    inc bc                                        ; $76fd: $03
    nop                                           ; $76fe: $00
    adc l                                         ; $76ff: $8d
    ld l, l                                       ; $7700: $6d
    nop                                           ; $7701: $00
    ld b, e                                       ; $7702: $43
    nop                                           ; $7703: $00
    ld hl, $4200                                  ; $7704: $21 $00 $42
    nop                                           ; $7707: $00
    call nz, Call_0db_6300                        ; $7708: $c4 $00 $63
    nop                                           ; $770b: $00
    ccf                                           ; $770c: $3f
    ld de, $8f00                                  ; $770d: $11 $00 $8f
    ld c, $00                                     ; $7710: $0e $00
    adc e                                         ; $7712: $8b
    nop                                           ; $7713: $00
    sub l                                         ; $7714: $95
    nop                                           ; $7715: $00
    sub b                                         ; $7716: $90
    nop                                           ; $7717: $00
    and c                                         ; $7718: $a1
    nop                                           ; $7719: $00
    or b                                          ; $771a: $b0
    nop                                           ; $771b: $00
    sbc c                                         ; $771c: $99
    nop                                           ; $771d: $00
    rst $08                                       ; $771e: $cf
    ld de, $8f00                                  ; $771f: $11 $00 $8f
    ld b, $00                                     ; $7722: $06 $00
    ld [bc], a                                    ; $7724: $02
    nop                                           ; $7725: $00
    rlca                                          ; $7726: $07
    nop                                           ; $7727: $00
    ld a, [bc]                                    ; $7728: $0a
    nop                                           ; $7729: $00
    ld [bc], a                                    ; $772a: $02
    nop                                           ; $772b: $00
    ld [bc], a                                    ; $772c: $02
    nop                                           ; $772d: $00
    dec c                                         ; $772e: $0d
    nop                                           ; $772f: $00
    ld c, $11                                     ; $7730: $0e $11
    nop                                           ; $7732: $00
    rst $38                                       ; $7733: $ff
    ld de, $f906                                  ; $7734: $11 $06 $f9
    rlca                                          ; $7737: $07
    ld a, [c]                                     ; $7738: $f2
    ld bc, $f6eb                                  ; $7739: $01 $eb $f6
    ld [$eafe], a                                 ; $773c: $ea $fe $ea
    inc bc                                        ; $773f: $03
    ld a, [$faf5]                                 ; $7740: $fa $f5 $fa
    db $fd                                        ; $7743: $fd
    ld a, [$df03]                                 ; $7744: $fa $03 $df
    rra                                           ; $7747: $1f
    nop                                           ; $7748: $00
    dec sp                                        ; $7749: $3b
    nop                                           ; $774a: $00
    ld a, h                                       ; $774b: $7c
    nop                                           ; $774c: $00
    ld l, d                                       ; $774d: $6a
    nop                                           ; $774e: $00
    ld e, e                                       ; $774f: $5b
    nop                                           ; $7750: $00
    ld b, l                                       ; $7751: $45
    nop                                           ; $7752: $00
    ld l, a                                       ; $7753: $6f
    nop                                           ; $7754: $00
    and a                                         ; $7755: $a7
    nop                                           ; $7756: $00
    rst $30                                       ; $7757: $f7
    nop                                           ; $7758: $00
    jp nz, $8600                                  ; $7759: $c2 $00 $86

    nop                                           ; $775c: $00
    db $d3                                        ; $775d: $d3
    nop                                           ; $775e: $00
    ld d, l                                       ; $775f: $55
    nop                                           ; $7760: $00
    ld d, e                                       ; $7761: $53
    nop                                           ; $7762: $00
    ld a, e                                       ; $7763: $7b
    nop                                           ; $7764: $00
    ld e, c                                       ; $7765: $59
    nop                                           ; $7766: $00
    ld b, $00                                     ; $7767: $06 $00
    rlca                                          ; $7769: $07
    nop                                           ; $776a: $00
    sbc b                                         ; $776b: $98
    nop                                           ; $776c: $00
    ret c                                         ; $776d: $d8

    nop                                           ; $776e: $00
    xor b                                         ; $776f: $a8
    nop                                           ; $7770: $00
    and c                                         ; $7771: $a1
    nop                                           ; $7772: $00
    sub d                                         ; $7773: $92
    nop                                           ; $7774: $00
    jp nc, $8d00                                  ; $7775: $d2 $00 $8d

    nop                                           ; $7778: $00
    dec bc                                        ; $7779: $0b
    nop                                           ; $777a: $00
    add hl, bc                                    ; $777b: $09
    nop                                           ; $777c: $00
    ld a, [de]                                    ; $777d: $1a
    nop                                           ; $777e: $00
    dec [hl]                                      ; $777f: $35
    nop                                           ; $7780: $00
    inc d                                         ; $7781: $14
    nop                                           ; $7782: $00
    inc d                                         ; $7783: $14
    nop                                           ; $7784: $00
    ld d, $00                                     ; $7785: $16 $00
    ld [$1400], sp                                ; $7787: $08 $00 $14
    nop                                           ; $778a: $00
    rrca                                          ; $778b: $0f
    nop                                           ; $778c: $00
    ld [bc], a                                    ; $778d: $02
    nop                                           ; $778e: $00
    inc e                                         ; $778f: $1c
    nop                                           ; $7790: $00
    ld b, $00                                     ; $7791: $06 $00
    ld [de], a                                    ; $7793: $12
    nop                                           ; $7794: $00
    ld [de], a                                    ; $7795: $12
    nop                                           ; $7796: $00
    ld b, $00                                     ; $7797: $06 $00
    inc e                                         ; $7799: $1c
    nop                                           ; $779a: $00
    jr jr_0db_779d                                ; $779b: $18 $00

jr_0db_779d:
    stop                                          ; $779d: $10 $00
    stop                                          ; $779f: $10 $00
    jr jr_0db_77a3                                ; $77a1: $18 $00

jr_0db_77a3:
    ld a, [bc]                                    ; $77a3: $0a
    nop                                           ; $77a4: $00
    rla                                           ; $77a5: $17
    inc bc                                        ; $77a6: $03
    nop                                           ; $77a7: $00
    adc l                                         ; $77a8: $8d
    ld c, e                                       ; $77a9: $4b
    nop                                           ; $77aa: $00
    ld b, h                                       ; $77ab: $44
    nop                                           ; $77ac: $00
    ld b, h                                       ; $77ad: $44
    nop                                           ; $77ae: $00
    ret z                                         ; $77af: $c8

    nop                                           ; $77b0: $00
    ret nz                                        ; $77b1: $c0

    nop                                           ; $77b2: $00
    adc c                                         ; $77b3: $89
    nop                                           ; $77b4: $00
    ld a, [hl]                                    ; $77b5: $7e
    ld de, $8f00                                  ; $77b6: $11 $00 $8f
    add hl, bc                                    ; $77b9: $09
    nop                                           ; $77ba: $00
    ret z                                         ; $77bb: $c8

    nop                                           ; $77bc: $00
    ret z                                         ; $77bd: $c8

    nop                                           ; $77be: $00
    ld d, c                                       ; $77bf: $51
    nop                                           ; $77c0: $00
    ld a, [c]                                     ; $77c1: $f2
    nop                                           ; $77c2: $00
    db $f4                                        ; $77c3: $f4
    nop                                           ; $77c4: $00
    inc hl                                        ; $77c5: $23
    nop                                           ; $77c6: $00
    rra                                           ; $77c7: $1f
    ld de, $8f00                                  ; $77c8: $11 $00 $8f
    ld h, $00                                     ; $77cb: $26 $00
    inc a                                         ; $77cd: $3c
    nop                                           ; $77ce: $00
    ld a, [bc]                                    ; $77cf: $0a
    nop                                           ; $77d0: $00
    ld de, $0700                                  ; $77d1: $11 $00 $07
    nop                                           ; $77d4: $00
    ld a, $00                                     ; $77d5: $3e $00
    ld [$2000], sp                                ; $77d7: $08 $00 $20
    ld de, $ff00                                  ; $77da: $11 $00 $ff
    ld de, $f906                                  ; $77dd: $11 $06 $f9
    rlca                                          ; $77e0: $07
    ld a, [c]                                     ; $77e1: $f2
    ld bc, $f6ec                                  ; $77e2: $01 $ec $f6
    db $eb                                        ; $77e5: $eb
    cp $eb                                        ; $77e6: $fe $eb
    inc bc                                        ; $77e8: $03
    ei                                            ; $77e9: $fb
    push af                                       ; $77ea: $f5
    ei                                            ; $77eb: $fb
    db $fd                                        ; $77ec: $fd
    ei                                            ; $77ed: $fb
    inc bc                                        ; $77ee: $03
    rst $18                                       ; $77ef: $df
    rra                                           ; $77f0: $1f
    nop                                           ; $77f1: $00
    dec sp                                        ; $77f2: $3b
    nop                                           ; $77f3: $00
    ld a, h                                       ; $77f4: $7c
    nop                                           ; $77f5: $00
    ld l, d                                       ; $77f6: $6a
    nop                                           ; $77f7: $00
    ld d, e                                       ; $77f8: $53
    nop                                           ; $77f9: $00
    ld b, l                                       ; $77fa: $45
    nop                                           ; $77fb: $00
    xor a                                         ; $77fc: $af
    nop                                           ; $77fd: $00
    rst $20                                       ; $77fe: $e7
    nop                                           ; $77ff: $00
    rst $20                                       ; $7800: $e7
    nop                                           ; $7801: $00
    add d                                         ; $7802: $82
    nop                                           ; $7803: $00
    add $00                                       ; $7804: $c6 $00
    ld d, e                                       ; $7806: $53
    nop                                           ; $7807: $00
    ld d, l                                       ; $7808: $55
    nop                                           ; $7809: $00
    ld d, e                                       ; $780a: $53
    nop                                           ; $780b: $00
    ld a, e                                       ; $780c: $7b
    nop                                           ; $780d: $00
    ld e, c                                       ; $780e: $59
    nop                                           ; $780f: $00
    rlca                                          ; $7810: $07
    nop                                           ; $7811: $00
    ld a, [bc]                                    ; $7812: $0a
    nop                                           ; $7813: $00
    sub b                                         ; $7814: $90
    nop                                           ; $7815: $00
    add sp, $00                                   ; $7816: $e8 $00
    xor b                                         ; $7818: $a8
    nop                                           ; $7819: $00
    sub e                                         ; $781a: $93
    nop                                           ; $781b: $00
    sub d                                         ; $781c: $92
    nop                                           ; $781d: $00
    jp nc, $8d00                                  ; $781e: $d2 $00 $8d

    nop                                           ; $7821: $00
    dec bc                                        ; $7822: $0b
    nop                                           ; $7823: $00
    ld sp, $3a00                                  ; $7824: $31 $00 $3a
    nop                                           ; $7827: $00
    dec d                                         ; $7828: $15
    nop                                           ; $7829: $00
    dec c                                         ; $782a: $0d
    nop                                           ; $782b: $00
    inc d                                         ; $782c: $14
    nop                                           ; $782d: $00
    ld d, $00                                     ; $782e: $16 $00
    inc b                                         ; $7830: $04
    nop                                           ; $7831: $00
    rra                                           ; $7832: $1f
    nop                                           ; $7833: $00
    ld a, [bc]                                    ; $7834: $0a
    nop                                           ; $7835: $00
    ld [bc], a                                    ; $7836: $02
    nop                                           ; $7837: $00
    inc e                                         ; $7838: $1c
    nop                                           ; $7839: $00
    ld b, $00                                     ; $783a: $06 $00
    ld [de], a                                    ; $783c: $12
    nop                                           ; $783d: $00
    ld [de], a                                    ; $783e: $12
    nop                                           ; $783f: $00
    ld c, $00                                     ; $7840: $0e $00
    inc d                                         ; $7842: $14
    nop                                           ; $7843: $00
    jr jr_0db_7846                                ; $7844: $18 $00

jr_0db_7846:
    stop                                          ; $7846: $10 $00
    jr jr_0db_784a                                ; $7848: $18 $00

jr_0db_784a:
    ld [$1800], sp                                ; $784a: $08 $00 $18
    nop                                           ; $784d: $00
    inc d                                         ; $784e: $14
    inc bc                                        ; $784f: $03
    nop                                           ; $7850: $00
    adc e                                         ; $7851: $8b
    ld c, e                                       ; $7852: $4b
    nop                                           ; $7853: $00
    ld b, h                                       ; $7854: $44
    nop                                           ; $7855: $00
    add b                                         ; $7856: $80
    nop                                           ; $7857: $00
    call nz, $c300                                ; $7858: $c4 $00 $c3
    nop                                           ; $785b: $00
    ld a, h                                       ; $785c: $7c
    inc de                                        ; $785d: $13
    nop                                           ; $785e: $00
    adc l                                         ; $785f: $8d
    add hl, bc                                    ; $7860: $09
    nop                                           ; $7861: $00
    ret                                           ; $7862: $c9


    nop                                           ; $7863: $00
    ret                                           ; $7864: $c9


    nop                                           ; $7865: $00
    sbc c                                         ; $7866: $99
    nop                                           ; $7867: $00
    ret c                                         ; $7868: $d8

    nop                                           ; $7869: $00
    jp nc, Jump_000_0f00                          ; $786a: $d2 $00 $0f

    inc de                                        ; $786d: $13
    nop                                           ; $786e: $00
    adc e                                         ; $786f: $8b
    ld l, $00                                     ; $7870: $2e $00
    inc [hl]                                      ; $7872: $34
    nop                                           ; $7873: $00
    inc d                                         ; $7874: $14
    nop                                           ; $7875: $00
    ld [bc], a                                    ; $7876: $02
    nop                                           ; $7877: $00
    rrca                                          ; $7878: $0f
    nop                                           ; $7879: $00
    ld a, $15                                     ; $787a: $3e $15
    nop                                           ; $787c: $00
    rst $38                                       ; $787d: $ff
    ld de, $f906                                  ; $787e: $11 $06 $f9
    rlca                                          ; $7881: $07
    ld a, [c]                                     ; $7882: $f2
    ld bc, $f6ec                                  ; $7883: $01 $ec $f6
    db $eb                                        ; $7886: $eb
    cp $eb                                        ; $7887: $fe $eb
    inc bc                                        ; $7889: $03
    ei                                            ; $788a: $fb
    push af                                       ; $788b: $f5
    ei                                            ; $788c: $fb
    db $fd                                        ; $788d: $fd
    ei                                            ; $788e: $fb
    ld [bc], a                                    ; $788f: $02
    rst $18                                       ; $7890: $df
    rra                                           ; $7891: $1f
    nop                                           ; $7892: $00
    dec sp                                        ; $7893: $3b
    nop                                           ; $7894: $00
    ld a, h                                       ; $7895: $7c
    nop                                           ; $7896: $00
    ld l, d                                       ; $7897: $6a
    nop                                           ; $7898: $00
    ld d, e                                       ; $7899: $53
    nop                                           ; $789a: $00
    ld b, l                                       ; $789b: $45
    nop                                           ; $789c: $00
    xor a                                         ; $789d: $af
    nop                                           ; $789e: $00
    rst $20                                       ; $789f: $e7
    nop                                           ; $78a0: $00
    rst $20                                       ; $78a1: $e7
    nop                                           ; $78a2: $00
    ld b, d                                       ; $78a3: $42
    nop                                           ; $78a4: $00
    sub l                                         ; $78a5: $95
    nop                                           ; $78a6: $00
    sub e                                         ; $78a7: $93
    nop                                           ; $78a8: $00
    ld d, l                                       ; $78a9: $55
    nop                                           ; $78aa: $00
    ld h, e                                       ; $78ab: $63
    nop                                           ; $78ac: $00
    ld [hl], e                                    ; $78ad: $73
    nop                                           ; $78ae: $00
    ld h, c                                       ; $78af: $61
    nop                                           ; $78b0: $00
    ld b, $00                                     ; $78b1: $06 $00
    rlca                                          ; $78b3: $07
    nop                                           ; $78b4: $00
    sbc b                                         ; $78b5: $98
    nop                                           ; $78b6: $00
    ret c                                         ; $78b7: $d8

    nop                                           ; $78b8: $00
    xor b                                         ; $78b9: $a8
    nop                                           ; $78ba: $00
    and c                                         ; $78bb: $a1
    nop                                           ; $78bc: $00
    sub c                                         ; $78bd: $91
    nop                                           ; $78be: $00
    db $d3                                        ; $78bf: $d3
    nop                                           ; $78c0: $00
    adc l                                         ; $78c1: $8d
    nop                                           ; $78c2: $00
    dec bc                                        ; $78c3: $0b
    nop                                           ; $78c4: $00
    add hl, bc                                    ; $78c5: $09
    nop                                           ; $78c6: $00
    ld a, [de]                                    ; $78c7: $1a
    nop                                           ; $78c8: $00
    dec [hl]                                      ; $78c9: $35
    nop                                           ; $78ca: $00
    inc d                                         ; $78cb: $14
    nop                                           ; $78cc: $00
    add hl, de                                    ; $78cd: $19
    nop                                           ; $78ce: $00
    inc e                                         ; $78cf: $1c
    nop                                           ; $78d0: $00
    ld [$1400], sp                                ; $78d1: $08 $00 $14
    nop                                           ; $78d4: $00
    rrca                                          ; $78d5: $0f
    nop                                           ; $78d6: $00
    ld [bc], a                                    ; $78d7: $02
    nop                                           ; $78d8: $00
    inc e                                         ; $78d9: $1c
    nop                                           ; $78da: $00
    ld b, $00                                     ; $78db: $06 $00
    ld a, [bc]                                    ; $78dd: $0a
    nop                                           ; $78de: $00
    ld a, [bc]                                    ; $78df: $0a
    nop                                           ; $78e0: $00
    ld b, $00                                     ; $78e1: $06 $00
    inc e                                         ; $78e3: $1c
    nop                                           ; $78e4: $00
    jr jr_0db_78e7                                ; $78e5: $18 $00

jr_0db_78e7:
    stop                                          ; $78e7: $10 $00
    ld [$1800], sp                                ; $78e9: $08 $00 $18
    nop                                           ; $78ec: $00
    ld [$1800], sp                                ; $78ed: $08 $00 $18
    inc bc                                        ; $78f0: $03
    nop                                           ; $78f1: $00
    adc e                                         ; $78f2: $8b
    ld l, a                                       ; $78f3: $6f
    nop                                           ; $78f4: $00
    ld b, b                                       ; $78f5: $40
    nop                                           ; $78f6: $00
    ld b, e                                       ; $78f7: $43
    nop                                           ; $78f8: $00
    call nz, $e700                                ; $78f9: $c4 $00 $e7
    nop                                           ; $78fc: $00
    ld a, b                                       ; $78fd: $78
    inc de                                        ; $78fe: $13
    nop                                           ; $78ff: $00
    adc l                                         ; $7900: $8d
    ld a, [bc]                                    ; $7901: $0a
    nop                                           ; $7902: $00
    adc e                                         ; $7903: $8b
    nop                                           ; $7904: $00
    adc l                                         ; $7905: $8d
    nop                                           ; $7906: $00
    inc d                                         ; $7907: $14
    nop                                           ; $7908: $00
    sub b                                         ; $7909: $90
    nop                                           ; $790a: $00
    sbc c                                         ; $790b: $99
    nop                                           ; $790c: $00
    rrca                                          ; $790d: $0f
    inc de                                        ; $790e: $13
    nop                                           ; $790f: $00
    adc l                                         ; $7910: $8d
    inc c                                         ; $7911: $0c
    nop                                           ; $7912: $00
    ld c, $00                                     ; $7913: $0e $00
    ld a, [bc]                                    ; $7915: $0a
    nop                                           ; $7916: $00
    ld [de], a                                    ; $7917: $12
    nop                                           ; $7918: $00
    ld b, $00                                     ; $7919: $06 $00
    rla                                           ; $791b: $17
    nop                                           ; $791c: $00
    jr @+$15                                      ; $791d: $18 $13

    nop                                           ; $791f: $00
    rst $38                                       ; $7920: $ff
    ld de, $f906                                  ; $7921: $11 $06 $f9
    rlca                                          ; $7924: $07
    ld a, [c]                                     ; $7925: $f2
    ld bc, $f6eb                                  ; $7926: $01 $eb $f6
    ld [$eafe], a                                 ; $7929: $ea $fe $ea
    inc bc                                        ; $792c: $03
    ld a, [$faf5]                                 ; $792d: $fa $f5 $fa
    db $fd                                        ; $7930: $fd
    ld a, [$df02]                                 ; $7931: $fa $02 $df
    rra                                           ; $7934: $1f
    nop                                           ; $7935: $00
    dec sp                                        ; $7936: $3b
    nop                                           ; $7937: $00
    ld a, l                                       ; $7938: $7d
    nop                                           ; $7939: $00
    ld l, d                                       ; $793a: $6a
    nop                                           ; $793b: $00
    ld e, e                                       ; $793c: $5b
    nop                                           ; $793d: $00
    ld b, l                                       ; $793e: $45
    nop                                           ; $793f: $00
    ld c, a                                       ; $7940: $4f
    nop                                           ; $7941: $00
    ld h, a                                       ; $7942: $67
    nop                                           ; $7943: $00
    rst $30                                       ; $7944: $f7
    nop                                           ; $7945: $00
    jp nz, Jump_0db_5600                          ; $7946: $c2 $00 $56

    nop                                           ; $7949: $00
    db $d3                                        ; $794a: $d3
    nop                                           ; $794b: $00
    and l                                         ; $794c: $a5
    nop                                           ; $794d: $00
    ld h, e                                       ; $794e: $63
    nop                                           ; $794f: $00
    or e                                          ; $7950: $b3
    nop                                           ; $7951: $00
    db $e3                                        ; $7952: $e3
    nop                                           ; $7953: $00
    ld b, $00                                     ; $7954: $06 $00
    rlca                                          ; $7956: $07
    nop                                           ; $7957: $00
    sbc b                                         ; $7958: $98
    nop                                           ; $7959: $00
    ret c                                         ; $795a: $d8

    nop                                           ; $795b: $00
    and h                                         ; $795c: $a4
    nop                                           ; $795d: $00
    and b                                         ; $795e: $a0
    nop                                           ; $795f: $00
    sub c                                         ; $7960: $91
    nop                                           ; $7961: $00
    db $d3                                        ; $7962: $d3
    nop                                           ; $7963: $00
    adc l                                         ; $7964: $8d
    nop                                           ; $7965: $00
    dec bc                                        ; $7966: $0b
    nop                                           ; $7967: $00
    add hl, bc                                    ; $7968: $09
    nop                                           ; $7969: $00
    ld a, [de]                                    ; $796a: $1a
    nop                                           ; $796b: $00
    dec [hl]                                      ; $796c: $35
    nop                                           ; $796d: $00
    inc [hl]                                      ; $796e: $34
    nop                                           ; $796f: $00
    add hl, de                                    ; $7970: $19
    nop                                           ; $7971: $00
    jr jr_0db_7974                                ; $7972: $18 $00

jr_0db_7974:
    ld [$1400], sp                                ; $7974: $08 $00 $14
    nop                                           ; $7977: $00
    rrca                                          ; $7978: $0f
    nop                                           ; $7979: $00
    ld [bc], a                                    ; $797a: $02
    nop                                           ; $797b: $00
    inc c                                         ; $797c: $0c
    nop                                           ; $797d: $00
    ld d, $00                                     ; $797e: $16 $00
    inc c                                         ; $7980: $0c
    nop                                           ; $7981: $00
    ld a, [bc]                                    ; $7982: $0a
    nop                                           ; $7983: $00
    ld d, $00                                     ; $7984: $16 $00
    inc e                                         ; $7986: $1c
    nop                                           ; $7987: $00
    jr jr_0db_798a                                ; $7988: $18 $00

jr_0db_798a:
    stop                                          ; $798a: $10 $00
    stop                                          ; $798c: $10 $00
    jr jr_0db_7990                                ; $798e: $18 $00

jr_0db_7990:
    ld [$1800], sp                                ; $7990: $08 $00 $18
    inc bc                                        ; $7993: $03
    nop                                           ; $7994: $00
    adc l                                         ; $7995: $8d
    ld a, c                                       ; $7996: $79
    nop                                           ; $7997: $00
    inc h                                         ; $7998: $24
    nop                                           ; $7999: $00
    ld b, e                                       ; $799a: $43
    nop                                           ; $799b: $00
    ld b, b                                       ; $799c: $40
    nop                                           ; $799d: $00
    jp Jump_0db_6700                              ; $799e: $c3 $00 $67


    nop                                           ; $79a1: $00
    jr c, @+$13                                   ; $79a2: $38 $11

    nop                                           ; $79a4: $00
    adc a                                         ; $79a5: $8f
    ld c, $00                                     ; $79a6: $0e $00
    adc [hl]                                      ; $79a8: $8e
    nop                                           ; $79a9: $00
    jp c, Jump_0db_5000                           ; $79aa: $da $00 $50

    nop                                           ; $79ad: $00
    ld h, b                                       ; $79ae: $60
    nop                                           ; $79af: $00
    or b                                          ; $79b0: $b0
    nop                                           ; $79b1: $00
    reti                                          ; $79b2: $d9


    nop                                           ; $79b3: $00
    ld c, $11                                     ; $79b4: $0e $11
    nop                                           ; $79b6: $00
    adc l                                         ; $79b7: $8d
    inc c                                         ; $79b8: $0c
    nop                                           ; $79b9: $00
    ld b, $00                                     ; $79ba: $06 $00
    ld e, $00                                     ; $79bc: $1e $00
    inc c                                         ; $79be: $0c
    nop                                           ; $79bf: $00
    ld [bc], a                                    ; $79c0: $02
    nop                                           ; $79c1: $00
    dec e                                         ; $79c2: $1d
    nop                                           ; $79c3: $00
    ld e, $13                                     ; $79c4: $1e $13
    nop                                           ; $79c6: $00
    rst $38                                       ; $79c7: $ff
    ld de, $f906                                  ; $79c8: $11 $06 $f9
    rlca                                          ; $79cb: $07
    ld a, [c]                                     ; $79cc: $f2
    ld bc, $f6eb                                  ; $79cd: $01 $eb $f6
    ld [$eafe], a                                 ; $79d0: $ea $fe $ea
    inc bc                                        ; $79d3: $03
    ld a, [$faf5]                                 ; $79d4: $fa $f5 $fa
    db $fd                                        ; $79d7: $fd
    ld a, [$df04]                                 ; $79d8: $fa $04 $df
    rra                                           ; $79db: $1f
    nop                                           ; $79dc: $00
    dec sp                                        ; $79dd: $3b
    nop                                           ; $79de: $00
    ld a, h                                       ; $79df: $7c
    nop                                           ; $79e0: $00
    ld l, d                                       ; $79e1: $6a
    nop                                           ; $79e2: $00
    ld e, e                                       ; $79e3: $5b
    nop                                           ; $79e4: $00
    ld b, l                                       ; $79e5: $45
    nop                                           ; $79e6: $00
    ld l, a                                       ; $79e7: $6f
    nop                                           ; $79e8: $00
    and a                                         ; $79e9: $a7
    nop                                           ; $79ea: $00
    rst $30                                       ; $79eb: $f7
    nop                                           ; $79ec: $00
    jp nz, $9600                                  ; $79ed: $c2 $00 $96

    nop                                           ; $79f0: $00
    db $d3                                        ; $79f1: $d3
    nop                                           ; $79f2: $00
    ld h, l                                       ; $79f3: $65
    nop                                           ; $79f4: $00
    ld h, e                                       ; $79f5: $63
    nop                                           ; $79f6: $00
    db $e3                                        ; $79f7: $e3
    nop                                           ; $79f8: $00
    db $e3                                        ; $79f9: $e3
    nop                                           ; $79fa: $00
    inc b                                         ; $79fb: $04
    nop                                           ; $79fc: $00
    rrca                                          ; $79fd: $0f
    nop                                           ; $79fe: $00
    or b                                          ; $79ff: $b0
    nop                                           ; $7a00: $00
    call c, $9200                                 ; $7a01: $dc $00 $92
    nop                                           ; $7a04: $00
    and b                                         ; $7a05: $a0
    nop                                           ; $7a06: $00
    and c                                         ; $7a07: $a1
    nop                                           ; $7a08: $00
    pop de                                        ; $7a09: $d1
    nop                                           ; $7a0a: $00
    adc [hl]                                      ; $7a0b: $8e
    nop                                           ; $7a0c: $00
    add hl, bc                                    ; $7a0d: $09
    nop                                           ; $7a0e: $00
    add hl, bc                                    ; $7a0f: $09
    nop                                           ; $7a10: $00
    ld a, [de]                                    ; $7a11: $1a
    nop                                           ; $7a12: $00
    dec [hl]                                      ; $7a13: $35
    nop                                           ; $7a14: $00
    jr jr_0db_7a17                                ; $7a15: $18 $00

jr_0db_7a17:
    add hl, sp                                    ; $7a17: $39
    nop                                           ; $7a18: $00
    jr nc, jr_0db_7a1b                            ; $7a19: $30 $00

jr_0db_7a1b:
    stop                                          ; $7a1b: $10 $00
    inc c                                         ; $7a1d: $0c
    nop                                           ; $7a1e: $00
    rlca                                          ; $7a1f: $07
    nop                                           ; $7a20: $00
    ld [bc], a                                    ; $7a21: $02
    nop                                           ; $7a22: $00
    inc c                                         ; $7a23: $0c
    nop                                           ; $7a24: $00
    ld d, $00                                     ; $7a25: $16 $00
    inc d                                         ; $7a27: $14
    nop                                           ; $7a28: $00
    inc d                                         ; $7a29: $14
    nop                                           ; $7a2a: $00
    ld d, $00                                     ; $7a2b: $16 $00
    inc e                                         ; $7a2d: $1c
    nop                                           ; $7a2e: $00
    jr jr_0db_7a31                                ; $7a2f: $18 $00

jr_0db_7a31:
    stop                                          ; $7a31: $10 $00
    stop                                          ; $7a33: $10 $00
    jr jr_0db_7a37                                ; $7a35: $18 $00

jr_0db_7a37:
    ld [$1800], sp                                ; $7a37: $08 $00 $18
    inc bc                                        ; $7a3a: $03
    nop                                           ; $7a3b: $00
    adc l                                         ; $7a3c: $8d
    pop de                                        ; $7a3d: $d1
    nop                                           ; $7a3e: $00
    ld c, c                                       ; $7a3f: $49
    nop                                           ; $7a40: $00
    dec h                                         ; $7a41: $25
    nop                                           ; $7a42: $00
    ld b, d                                       ; $7a43: $42
    nop                                           ; $7a44: $00
    ret nz                                        ; $7a45: $c0

    nop                                           ; $7a46: $00
    halt                                          ; $7a47: $76
    nop                                           ; $7a48: $00
    add hl, sp                                    ; $7a49: $39
    ld de, $8f00                                  ; $7a4a: $11 $00 $8f
    jr c, jr_0db_7a4f                             ; $7a4d: $38 $00

jr_0db_7a4f:
    xor h                                         ; $7a4f: $ac
    nop                                           ; $7a50: $00
    sbc d                                         ; $7a51: $9a
    nop                                           ; $7a52: $00
    pop hl                                        ; $7a53: $e1
    nop                                           ; $7a54: $00
    ld [hl], b                                    ; $7a55: $70
    nop                                           ; $7a56: $00
    ldh a, [rP1]                                  ; $7a57: $f0 $00
    ld hl, sp+$00                                 ; $7a59: $f8 $00
    rrca                                          ; $7a5b: $0f
    ld de, $8f00                                  ; $7a5c: $11 $00 $8f
    jr z, jr_0db_7a61                             ; $7a5f: $28 $00

jr_0db_7a61:
    jr z, jr_0db_7a63                             ; $7a61: $28 $00

jr_0db_7a63:
    jr nc, jr_0db_7a65                            ; $7a63: $30 $00

jr_0db_7a65:
    ld c, b                                       ; $7a65: $48
    nop                                           ; $7a66: $00
    ld b, a                                       ; $7a67: $47
    nop                                           ; $7a68: $00
    rlca                                          ; $7a69: $07
    nop                                           ; $7a6a: $00
    ld c, [hl]                                    ; $7a6b: $4e
    nop                                           ; $7a6c: $00
    jr c, jr_0db_7a80                             ; $7a6d: $38 $11

    nop                                           ; $7a6f: $00
    rst $38                                       ; $7a70: $ff
    ld de, $f906                                  ; $7a71: $11 $06 $f9
    rlca                                          ; $7a74: $07
    ld a, [c]                                     ; $7a75: $f2
    ld bc, $f6ec                                  ; $7a76: $01 $ec $f6
    db $eb                                        ; $7a79: $eb
    cp $eb                                        ; $7a7a: $fe $eb
    inc bc                                        ; $7a7c: $03
    ei                                            ; $7a7d: $fb
    push af                                       ; $7a7e: $f5
    ei                                            ; $7a7f: $fb

jr_0db_7a80:
    db $fd                                        ; $7a80: $fd
    ei                                            ; $7a81: $fb
    inc b                                         ; $7a82: $04
    rst $18                                       ; $7a83: $df
    rra                                           ; $7a84: $1f
    nop                                           ; $7a85: $00
    dec sp                                        ; $7a86: $3b
    nop                                           ; $7a87: $00
    ld a, h                                       ; $7a88: $7c
    nop                                           ; $7a89: $00
    ld l, d                                       ; $7a8a: $6a
    nop                                           ; $7a8b: $00
    ld d, e                                       ; $7a8c: $53
    nop                                           ; $7a8d: $00
    ld b, l                                       ; $7a8e: $45
    nop                                           ; $7a8f: $00
    xor a                                         ; $7a90: $af
    nop                                           ; $7a91: $00
    rst $20                                       ; $7a92: $e7
    nop                                           ; $7a93: $00
    rst $20                                       ; $7a94: $e7
    nop                                           ; $7a95: $00
    add d                                         ; $7a96: $82
    nop                                           ; $7a97: $00
    sub l                                         ; $7a98: $95
    nop                                           ; $7a99: $00
    ld d, e                                       ; $7a9a: $53
    nop                                           ; $7a9b: $00
    ld h, l                                       ; $7a9c: $65
    nop                                           ; $7a9d: $00
    ld h, e                                       ; $7a9e: $63
    nop                                           ; $7a9f: $00
    di                                            ; $7aa0: $f3
    nop                                           ; $7aa1: $00
    db $e3                                        ; $7aa2: $e3
    nop                                           ; $7aa3: $00
    ld b, $00                                     ; $7aa4: $06 $00
    dec c                                         ; $7aa6: $0d
    nop                                           ; $7aa7: $00
    or b                                          ; $7aa8: $b0
    nop                                           ; $7aa9: $00
    call c, $a200                                 ; $7aaa: $dc $00 $a2
    nop                                           ; $7aad: $00
    and b                                         ; $7aae: $a0
    nop                                           ; $7aaf: $00
    sub c                                         ; $7ab0: $91
    nop                                           ; $7ab1: $00
    pop de                                        ; $7ab2: $d1
    nop                                           ; $7ab3: $00
    adc [hl]                                      ; $7ab4: $8e
    nop                                           ; $7ab5: $00
    dec b                                         ; $7ab6: $05
    nop                                           ; $7ab7: $00
    jr c, jr_0db_7aba                             ; $7ab8: $38 $00

jr_0db_7aba:
    dec sp                                        ; $7aba: $3b
    nop                                           ; $7abb: $00
    inc d                                         ; $7abc: $14
    nop                                           ; $7abd: $00
    dec e                                         ; $7abe: $1d
    nop                                           ; $7abf: $00
    jr jr_0db_7ac2                                ; $7ac0: $18 $00

jr_0db_7ac2:
    jr c, jr_0db_7ac4                             ; $7ac2: $38 $00

jr_0db_7ac4:
    ld [$1700], sp                                ; $7ac4: $08 $00 $17
    nop                                           ; $7ac7: $00
    ld b, $00                                     ; $7ac8: $06 $00
    inc b                                         ; $7aca: $04
    nop                                           ; $7acb: $00
    inc c                                         ; $7acc: $0c
    nop                                           ; $7acd: $00
    ld d, $00                                     ; $7ace: $16 $00
    inc d                                         ; $7ad0: $14
    nop                                           ; $7ad1: $00
    inc d                                         ; $7ad2: $14
    nop                                           ; $7ad3: $00
    ld d, $00                                     ; $7ad4: $16 $00
    inc e                                         ; $7ad6: $1c
    nop                                           ; $7ad7: $00
    jr jr_0db_7ada                                ; $7ad8: $18 $00

jr_0db_7ada:
    stop                                          ; $7ada: $10 $00
    jr jr_0db_7ade                                ; $7adc: $18 $00

jr_0db_7ade:
    ld [$1800], sp                                ; $7ade: $08 $00 $18
    nop                                           ; $7ae1: $00
    jr jr_0db_7ae7                                ; $7ae2: $18 $03

    nop                                           ; $7ae4: $00
    adc e                                         ; $7ae5: $8b
    reti                                          ; $7ae6: $d9


jr_0db_7ae7:
    nop                                           ; $7ae7: $00
    ld b, a                                       ; $7ae8: $47
    nop                                           ; $7ae9: $00
    ld b, d                                       ; $7aea: $42
    nop                                           ; $7aeb: $00
    jp nz, $6500                                  ; $7aec: $c2 $00 $65

    nop                                           ; $7aef: $00
    dec sp                                        ; $7af0: $3b
    inc de                                        ; $7af1: $13
    nop                                           ; $7af2: $00
    adc l                                         ; $7af3: $8d
    inc e                                         ; $7af4: $1c
    nop                                           ; $7af5: $00
    xor h                                         ; $7af6: $ac
    nop                                           ; $7af7: $00
    sbc d                                         ; $7af8: $9a
    nop                                           ; $7af9: $00
    sub c                                         ; $7afa: $91
    nop                                           ; $7afb: $00
    or c                                          ; $7afc: $b1
    nop                                           ; $7afd: $00
    pop af                                        ; $7afe: $f1
    nop                                           ; $7aff: $00
    cp $13                                        ; $7b00: $fe $13
    nop                                           ; $7b02: $00
    adc l                                         ; $7b03: $8d
    jr nc, jr_0db_7b06                            ; $7b04: $30 $00

jr_0db_7b06:
    jr z, jr_0db_7b08                             ; $7b06: $28 $00

jr_0db_7b08:
    ld d, b                                       ; $7b08: $50
    nop                                           ; $7b09: $00
    ld c, b                                       ; $7b0a: $48
    nop                                           ; $7b0b: $00
    ld b, $00                                     ; $7b0c: $06 $00
    dec e                                         ; $7b0e: $1d
    nop                                           ; $7b0f: $00
    ld a, [hl]                                    ; $7b10: $7e
    inc de                                        ; $7b11: $13
    nop                                           ; $7b12: $00
    rst $38                                       ; $7b13: $ff
    ld de, $f906                                  ; $7b14: $11 $06 $f9
    rlca                                          ; $7b17: $07
    ld a, [c]                                     ; $7b18: $f2
    ld bc, $f6ec                                  ; $7b19: $01 $ec $f6
    db $eb                                        ; $7b1c: $eb
    cp $eb                                        ; $7b1d: $fe $eb
    inc bc                                        ; $7b1f: $03
    ei                                            ; $7b20: $fb
    push af                                       ; $7b21: $f5
    ei                                            ; $7b22: $fb
    db $fd                                        ; $7b23: $fd
    ei                                            ; $7b24: $fb
    inc bc                                        ; $7b25: $03
    rst $18                                       ; $7b26: $df
    rra                                           ; $7b27: $1f
    nop                                           ; $7b28: $00
    dec sp                                        ; $7b29: $3b
    nop                                           ; $7b2a: $00
    ld a, h                                       ; $7b2b: $7c
    nop                                           ; $7b2c: $00
    ld l, d                                       ; $7b2d: $6a
    nop                                           ; $7b2e: $00
    ld d, e                                       ; $7b2f: $53
    nop                                           ; $7b30: $00
    ld b, l                                       ; $7b31: $45
    nop                                           ; $7b32: $00
    xor a                                         ; $7b33: $af
    nop                                           ; $7b34: $00
    rst $20                                       ; $7b35: $e7
    nop                                           ; $7b36: $00
    rst $20                                       ; $7b37: $e7
    nop                                           ; $7b38: $00
    ld b, d                                       ; $7b39: $42
    nop                                           ; $7b3a: $00
    sub l                                         ; $7b3b: $95
    nop                                           ; $7b3c: $00
    sub e                                         ; $7b3d: $93
    nop                                           ; $7b3e: $00
    ld h, l                                       ; $7b3f: $65
    nop                                           ; $7b40: $00
    ld h, e                                       ; $7b41: $63
    nop                                           ; $7b42: $00
    ld a, e                                       ; $7b43: $7b
    nop                                           ; $7b44: $00
    ld [hl], e                                    ; $7b45: $73
    nop                                           ; $7b46: $00
    inc b                                         ; $7b47: $04
    nop                                           ; $7b48: $00
    rrca                                          ; $7b49: $0f
    nop                                           ; $7b4a: $00
    or b                                          ; $7b4b: $b0
    nop                                           ; $7b4c: $00
    call c, $9200                                 ; $7b4d: $dc $00 $92
    nop                                           ; $7b50: $00
    and b                                         ; $7b51: $a0
    nop                                           ; $7b52: $00
    and c                                         ; $7b53: $a1
    nop                                           ; $7b54: $00
    pop de                                        ; $7b55: $d1
    nop                                           ; $7b56: $00
    adc [hl]                                      ; $7b57: $8e
    nop                                           ; $7b58: $00
    dec b                                         ; $7b59: $05
    nop                                           ; $7b5a: $00
    add hl, bc                                    ; $7b5b: $09
    nop                                           ; $7b5c: $00
    ld a, [de]                                    ; $7b5d: $1a
    nop                                           ; $7b5e: $00
    dec [hl]                                      ; $7b5f: $35
    nop                                           ; $7b60: $00
    inc d                                         ; $7b61: $14
    nop                                           ; $7b62: $00
    dec d                                         ; $7b63: $15
    nop                                           ; $7b64: $00
    inc e                                         ; $7b65: $1c
    nop                                           ; $7b66: $00
    stop                                          ; $7b67: $10 $00
    inc c                                         ; $7b69: $0c
    nop                                           ; $7b6a: $00
    rlca                                          ; $7b6b: $07
    nop                                           ; $7b6c: $00
    ld [bc], a                                    ; $7b6d: $02
    nop                                           ; $7b6e: $00
    inc c                                         ; $7b6f: $0c
    nop                                           ; $7b70: $00
    ld d, $00                                     ; $7b71: $16 $00
    inc c                                         ; $7b73: $0c
    nop                                           ; $7b74: $00
    inc c                                         ; $7b75: $0c
    nop                                           ; $7b76: $00
    ld d, $00                                     ; $7b77: $16 $00
    inc e                                         ; $7b79: $1c
    nop                                           ; $7b7a: $00
    jr jr_0db_7b7d                                ; $7b7b: $18 $00

jr_0db_7b7d:
    stop                                          ; $7b7d: $10 $00
    ld [$1800], sp                                ; $7b7f: $08 $00 $18
    nop                                           ; $7b82: $00
    ld [$1800], sp                                ; $7b83: $08 $00 $18
    inc bc                                        ; $7b86: $03
    nop                                           ; $7b87: $00
    adc e                                         ; $7b88: $8b
    ld l, a                                       ; $7b89: $6f
    nop                                           ; $7b8a: $00
    ld b, l                                       ; $7b8b: $45
    nop                                           ; $7b8c: $00
    add d                                         ; $7b8d: $82
    nop                                           ; $7b8e: $00
    push bc                                       ; $7b8f: $c5
    nop                                           ; $7b90: $00
    ld h, e                                       ; $7b91: $63
    nop                                           ; $7b92: $00
    ccf                                           ; $7b93: $3f
    inc de                                        ; $7b94: $13
    nop                                           ; $7b95: $00
    adc l                                         ; $7b96: $8d
    ld c, $00                                     ; $7b97: $0e $00
    adc e                                         ; $7b99: $8b
    nop                                           ; $7b9a: $00
    sub l                                         ; $7b9b: $95
    nop                                           ; $7b9c: $00
    sub b                                         ; $7b9d: $90
    nop                                           ; $7b9e: $00
    jr nz, jr_0db_7ba1                            ; $7b9f: $20 $00

jr_0db_7ba1:
    or b                                          ; $7ba1: $b0
    nop                                           ; $7ba2: $00
    rst $18                                       ; $7ba3: $df
    inc de                                        ; $7ba4: $13
    nop                                           ; $7ba5: $00
    adc l                                         ; $7ba6: $8d
    jr jr_0db_7ba9                                ; $7ba7: $18 $00

jr_0db_7ba9:
    jr jr_0db_7bab                                ; $7ba9: $18 $00

jr_0db_7bab:
    inc e                                         ; $7bab: $1c
    nop                                           ; $7bac: $00
    jr z, jr_0db_7baf                             ; $7bad: $28 $00

jr_0db_7baf:
    inc b                                         ; $7baf: $04
    nop                                           ; $7bb0: $00
    rra                                           ; $7bb1: $1f
    nop                                           ; $7bb2: $00
    ld a, $13                                     ; $7bb3: $3e $13
    nop                                           ; $7bb5: $00
    rst $38                                       ; $7bb6: $ff
    ld de, $f906                                  ; $7bb7: $11 $06 $f9
    rlca                                          ; $7bba: $07
    ld a, [c]                                     ; $7bbb: $f2
    ld bc, $f6eb                                  ; $7bbc: $01 $eb $f6
    ld [$eafe], a                                 ; $7bbf: $ea $fe $ea
    inc bc                                        ; $7bc2: $03
    ld a, [$faf5]                                 ; $7bc3: $fa $f5 $fa
    db $fd                                        ; $7bc6: $fd
    ld a, [$df02]                                 ; $7bc7: $fa $02 $df
    rra                                           ; $7bca: $1f
    nop                                           ; $7bcb: $00
    dec sp                                        ; $7bcc: $3b
    nop                                           ; $7bcd: $00
    ld a, l                                       ; $7bce: $7d
    nop                                           ; $7bcf: $00
    ld l, d                                       ; $7bd0: $6a
    nop                                           ; $7bd1: $00
    ld e, e                                       ; $7bd2: $5b
    nop                                           ; $7bd3: $00
    ld b, l                                       ; $7bd4: $45
    nop                                           ; $7bd5: $00
    ld c, a                                       ; $7bd6: $4f
    nop                                           ; $7bd7: $00
    ld h, a                                       ; $7bd8: $67
    nop                                           ; $7bd9: $00
    rst $30                                       ; $7bda: $f7
    nop                                           ; $7bdb: $00
    jp nz, Jump_0db_4600                          ; $7bdc: $c2 $00 $46

    nop                                           ; $7bdf: $00
    db $d3                                        ; $7be0: $d3
    nop                                           ; $7be1: $00
    sub l                                         ; $7be2: $95
    nop                                           ; $7be3: $00
    ld d, e                                       ; $7be4: $53
    nop                                           ; $7be5: $00
    ld a, e                                       ; $7be6: $7b
    nop                                           ; $7be7: $00
    ld [hl], e                                    ; $7be8: $73
    nop                                           ; $7be9: $00
    ld b, $00                                     ; $7bea: $06 $00
    rlca                                          ; $7bec: $07
    nop                                           ; $7bed: $00
    sbc b                                         ; $7bee: $98
    nop                                           ; $7bef: $00
    ret c                                         ; $7bf0: $d8

    nop                                           ; $7bf1: $00
    and h                                         ; $7bf2: $a4
    nop                                           ; $7bf3: $00
    and b                                         ; $7bf4: $a0
    nop                                           ; $7bf5: $00
    sub c                                         ; $7bf6: $91
    nop                                           ; $7bf7: $00
    db $d3                                        ; $7bf8: $d3
    nop                                           ; $7bf9: $00
    adc l                                         ; $7bfa: $8d
    nop                                           ; $7bfb: $00
    dec bc                                        ; $7bfc: $0b
    nop                                           ; $7bfd: $00
    add hl, bc                                    ; $7bfe: $09
    nop                                           ; $7bff: $00
    ld a, [de]                                    ; $7c00: $1a
    nop                                           ; $7c01: $00
    dec [hl]                                      ; $7c02: $35
    nop                                           ; $7c03: $00
    inc [hl]                                      ; $7c04: $34
    nop                                           ; $7c05: $00
    dec d                                         ; $7c06: $15
    nop                                           ; $7c07: $00
    ld c, $00                                     ; $7c08: $0e $00
    ld [$1400], sp                                ; $7c0a: $08 $00 $14
    nop                                           ; $7c0d: $00
    rrca                                          ; $7c0e: $0f
    nop                                           ; $7c0f: $00
    ld [bc], a                                    ; $7c10: $02
    nop                                           ; $7c11: $00
    inc c                                         ; $7c12: $0c
    nop                                           ; $7c13: $00
    ld d, $00                                     ; $7c14: $16 $00
    inc c                                         ; $7c16: $0c
    nop                                           ; $7c17: $00
    ld a, [bc]                                    ; $7c18: $0a
    nop                                           ; $7c19: $00
    ld d, $00                                     ; $7c1a: $16 $00
    inc e                                         ; $7c1c: $1c
    nop                                           ; $7c1d: $00
    jr jr_0db_7c20                                ; $7c1e: $18 $00

jr_0db_7c20:
    stop                                          ; $7c20: $10 $00
    stop                                          ; $7c22: $10 $00
    jr jr_0db_7c26                                ; $7c24: $18 $00

jr_0db_7c26:
    ld [$1800], sp                                ; $7c26: $08 $00 $18
    inc bc                                        ; $7c29: $03
    nop                                           ; $7c2a: $00
    adc l                                         ; $7c2b: $8d
    daa                                           ; $7c2c: $27
    nop                                           ; $7c2d: $00
    ld c, b                                       ; $7c2e: $48
    nop                                           ; $7c2f: $00
    ld b, d                                       ; $7c30: $42
    nop                                           ; $7c31: $00
    add h                                         ; $7c32: $84
    nop                                           ; $7c33: $00
    ret nz                                        ; $7c34: $c0

    nop                                           ; $7c35: $00
    ld h, e                                       ; $7c36: $63
    nop                                           ; $7c37: $00
    ccf                                           ; $7c38: $3f
    ld de, $8f00                                  ; $7c39: $11 $00 $8f
    dec bc                                        ; $7c3c: $0b
    nop                                           ; $7c3d: $00
    ret                                           ; $7c3e: $c9


    nop                                           ; $7c3f: $00
    jp z, Jump_0db_4900                           ; $7c40: $ca $00 $49

    nop                                           ; $7c43: $00
    sub c                                         ; $7c44: $91
    nop                                           ; $7c45: $00
    ret c                                         ; $7c46: $d8

    nop                                           ; $7c47: $00
    inc de                                        ; $7c48: $13
    nop                                           ; $7c49: $00
    adc a                                         ; $7c4a: $8f
    ld de, $8f00                                  ; $7c4b: $11 $00 $8f
    ld [de], a                                    ; $7c4e: $12
    nop                                           ; $7c4f: $00
    rla                                           ; $7c50: $17
    nop                                           ; $7c51: $00
    ld a, [de]                                    ; $7c52: $1a
    nop                                           ; $7c53: $00
    ld [bc], a                                    ; $7c54: $02
    nop                                           ; $7c55: $00
    ld c, $00                                     ; $7c56: $0e $00
    inc b                                         ; $7c58: $04
    nop                                           ; $7c59: $00
    inc d                                         ; $7c5a: $14
    nop                                           ; $7c5b: $00
    jr jr_0db_7c6f                                ; $7c5c: $18 $11

    nop                                           ; $7c5e: $00
    rst $38                                       ; $7c5f: $ff
    dec c                                         ; $7c60: $0d
    inc b                                         ; $7c61: $04
    ld sp, hl                                     ; $7c62: $f9
    rlca                                          ; $7c63: $07
    ld a, [c]                                     ; $7c64: $f2
    ld bc, $f9e5                                  ; $7c65: $01 $e5 $f9
    push hl                                       ; $7c68: $e5
    nop                                           ; $7c69: $00
    push af                                       ; $7c6a: $f5
    ld sp, hl                                     ; $7c6b: $f9
    push af                                       ; $7c6c: $f5
    nop                                           ; $7c6d: $00
    ld [bc], a                                    ; $7c6e: $02

jr_0db_7c6f:
    rst $38                                       ; $7c6f: $ff
    ld [bc], a                                    ; $7c70: $02
    ret nz                                        ; $7c71: $c0

    ld [bc], a                                    ; $7c72: $02
    cp a                                          ; $7c73: $bf
    ld [bc], a                                    ; $7c74: $02
    xor d                                         ; $7c75: $aa
    ld [bc], a                                    ; $7c76: $02
    and b                                         ; $7c77: $a0
    ld [bc], a                                    ; $7c78: $02
    xor d                                         ; $7c79: $aa
    ld [bc], a                                    ; $7c7a: $02
    and b                                         ; $7c7b: $a0
    inc b                                         ; $7c7c: $04
    and d                                         ; $7c7d: $a2
    ld [bc], a                                    ; $7c7e: $02
    xor b                                         ; $7c7f: $a8
    ld [bc], a                                    ; $7c80: $02
    and d                                         ; $7c81: $a2
    ld [bc], a                                    ; $7c82: $02
    xor b                                         ; $7c83: $a8
    ld [bc], a                                    ; $7c84: $02
    xor d                                         ; $7c85: $aa
    ld [bc], a                                    ; $7c86: $02
    cp a                                          ; $7c87: $bf
    ld [bc], a                                    ; $7c88: $02
    ret nz                                        ; $7c89: $c0

    ld [bc], a                                    ; $7c8a: $02
    rst $38                                       ; $7c8b: $ff
    ld [bc], a                                    ; $7c8c: $02
    ld a, a                                       ; $7c8d: $7f
    ld [bc], a                                    ; $7c8e: $02
    inc bc                                        ; $7c8f: $03
    ld [bc], a                                    ; $7c90: $02
    ld a, l                                       ; $7c91: $7d
    inc b                                         ; $7c92: $04
    ld d, l                                       ; $7c93: $55
    ld [bc], a                                    ; $7c94: $02
    dec d                                         ; $7c95: $15
    ld [bc], a                                    ; $7c96: $02
    ld b, l                                       ; $7c97: $45
    ld [bc], a                                    ; $7c98: $02
    ld d, l                                       ; $7c99: $55
    ld [bc], a                                    ; $7c9a: $02
    dec d                                         ; $7c9b: $15
    ld [bc], a                                    ; $7c9c: $02
    ld b, l                                       ; $7c9d: $45
    ld [bc], a                                    ; $7c9e: $02
    ld d, l                                       ; $7c9f: $55
    ld [bc], a                                    ; $7ca0: $02
    dec d                                         ; $7ca1: $15
    ld [bc], a                                    ; $7ca2: $02
    ld d, l                                       ; $7ca3: $55
    ld [bc], a                                    ; $7ca4: $02
    ld a, l                                       ; $7ca5: $7d
    ld [bc], a                                    ; $7ca6: $02
    inc bc                                        ; $7ca7: $03
    ld [bc], a                                    ; $7ca8: $02
    ld a, a                                       ; $7ca9: $7f
    ld [bc], a                                    ; $7caa: $02
    add b                                         ; $7cab: $80
    ld [bc], a                                    ; $7cac: $02
    cp a                                          ; $7cad: $bf
    ld [bc], a                                    ; $7cae: $02
    xor d                                         ; $7caf: $aa
    ld [bc], a                                    ; $7cb0: $02
    and l                                         ; $7cb1: $a5
    ld [bc], a                                    ; $7cb2: $02
    xor d                                         ; $7cb3: $aa
    ld [bc], a                                    ; $7cb4: $02
    cp a                                          ; $7cb5: $bf
    ld [bc], a                                    ; $7cb6: $02
    add b                                         ; $7cb7: $80
    ld [bc], a                                    ; $7cb8: $02
    rst $38                                       ; $7cb9: $ff
    ld [bc], a                                    ; $7cba: $02
    rra                                           ; $7cbb: $1f
    ld [bc], a                                    ; $7cbc: $02

jr_0db_7cbd:
    ccf                                           ; $7cbd: $3f
    add h                                         ; $7cbe: $84
    scf                                           ; $7cbf: $37
    ccf                                           ; $7cc0: $3f
    inc a                                         ; $7cc1: $3c
    ccf                                           ; $7cc2: $3f
    ld [bc], a                                    ; $7cc3: $02
    rra                                           ; $7cc4: $1f
    ld b, $00                                     ; $7cc5: $06 $00
    ld [bc], a                                    ; $7cc7: $02
    ld bc, $7d02                                  ; $7cc8: $01 $02 $7d
    ld [bc], a                                    ; $7ccb: $02
    ld d, l                                       ; $7ccc: $55
    ld [bc], a                                    ; $7ccd: $02
    ld e, l                                       ; $7cce: $5d
    ld [bc], a                                    ; $7ccf: $02
    ld [hl], l                                    ; $7cd0: $75
    ld [bc], a                                    ; $7cd1: $02
    ld a, l                                       ; $7cd2: $7d
    ld [bc], a                                    ; $7cd3: $02
    ld bc, $7f02                                  ; $7cd4: $01 $02 $7f
    adc b                                         ; $7cd7: $88
    ld l, b                                       ; $7cd8: $68
    ld a, b                                       ; $7cd9: $78
    ld [hl], h                                    ; $7cda: $74
    ld a, h                                       ; $7cdb: $7c
    ld l, h                                       ; $7cdc: $6c
    ld a, h                                       ; $7cdd: $7c
    inc e                                         ; $7cde: $1c
    ld a, h                                       ; $7cdf: $7c
    ld [bc], a                                    ; $7ce0: $02
    ld a, b                                       ; $7ce1: $78
    ld b, $00                                     ; $7ce2: $06 $00
    rst $38                                       ; $7ce4: $ff
    dec c                                         ; $7ce5: $0d
    inc b                                         ; $7ce6: $04
    ld sp, hl                                     ; $7ce7: $f9
    ld [$01f2], sp                                ; $7ce8: $08 $f2 $01
    and $fa                                       ; $7ceb: $e6 $fa
    and $ff                                       ; $7ced: $e6 $ff
    or $fa                                        ; $7cef: $f6 $fa
    or $ff                                        ; $7cf1: $f6 $ff
    add d                                         ; $7cf3: $82
    dec [hl]                                      ; $7cf4: $35
    ld a, a                                       ; $7cf5: $7f
    ld [bc], a                                    ; $7cf6: $02
    add b                                         ; $7cf7: $80
    sub h                                         ; $7cf8: $94
    ld a, [bc]                                    ; $7cf9: $0a
    xor d                                         ; $7cfa: $aa
    and b                                         ; $7cfb: $a0
    cp [hl]                                       ; $7cfc: $be
    ld a, [bc]                                    ; $7cfd: $0a
    xor e                                         ; $7cfe: $ab
    adc d                                         ; $7cff: $8a
    cp [hl]                                       ; $7d00: $be
    jr nz, jr_0db_7cbd                            ; $7d01: $20 $ba

    ld a, [hl+]                                   ; $7d03: $2a
    cp e                                          ; $7d04: $bb
    add b                                         ; $7d05: $80
    xor [hl]                                      ; $7d06: $ae
    adc b                                         ; $7d07: $88
    cp d                                          ; $7d08: $ba
    nop                                           ; $7d09: $00
    xor a                                         ; $7d0a: $af
    nop                                           ; $7d0b: $00
    xor d                                         ; $7d0c: $aa
    ld [bc], a                                    ; $7d0d: $02
    add b                                         ; $7d0e: $80
    add d                                         ; $7d0f: $82
    inc d                                         ; $7d10: $14
    ld a, a                                       ; $7d11: $7f
    inc bc                                        ; $7d12: $03
    nop                                           ; $7d13: $00
    add e                                         ; $7d14: $83
    rst $38                                       ; $7d15: $ff
    inc b                                         ; $7d16: $04
    ld e, $03                                     ; $7d17: $1e $03
    ld bc, $1597                                  ; $7d19: $01 $97 $15
    db $10                                        ; $7d1c: $10
    dec d                                         ; $7d1d: $15
    nop                                           ; $7d1e: $00
    dec d                                         ; $7d1f: $15
    ld bc, $001d                                  ; $7d20: $01 $1d $00
    dec d                                         ; $7d23: $15
    nop                                           ; $7d24: $00
    dec d                                         ; $7d25: $15
    nop                                           ; $7d26: $00
    dec e                                         ; $7d27: $1d
    nop                                           ; $7d28: $00
    dec d                                         ; $7d29: $15
    nop                                           ; $7d2a: $00
    dec d                                         ; $7d2b: $15
    ld bc, $0015                                  ; $7d2c: $01 $15 $00
    ld bc, $1e08                                  ; $7d2f: $01 $08 $1e
    inc bc                                        ; $7d32: $03
    nop                                           ; $7d33: $00
    adc l                                         ; $7d34: $8d
    rra                                           ; $7d35: $1f
    nop                                           ; $7d36: $00
    add b                                         ; $7d37: $80
    nop                                           ; $7d38: $00
    xor d                                         ; $7d39: $aa
    nop                                           ; $7d3a: $00
    or h                                          ; $7d3b: $b4
    nop                                           ; $7d3c: $00
    xor d                                         ; $7d3d: $aa
    nop                                           ; $7d3e: $00
    add b                                         ; $7d3f: $80
    nop                                           ; $7d40: $00
    rst $38                                       ; $7d41: $ff
    dec d                                         ; $7d42: $15
    nop                                           ; $7d43: $00
    adc e                                         ; $7d44: $8b
    ld bc, $1500                                  ; $7d45: $01 $00 $15
    nop                                           ; $7d48: $00
    ld de, $0500                                  ; $7d49: $11 $00 $05
    nop                                           ; $7d4c: $00
    ld bc, $1f00                                  ; $7d4d: $01 $00 $1f
    inc d                                         ; $7d50: $14
    nop                                           ; $7d51: $00
    rst $38                                       ; $7d52: $ff
    dec c                                         ; $7d53: $0d
    inc b                                         ; $7d54: $04
    ld sp, hl                                     ; $7d55: $f9
    rlca                                          ; $7d56: $07
    ld a, [c]                                     ; $7d57: $f2
    ld bc, $f9e5                                  ; $7d58: $01 $e5 $f9
    push hl                                       ; $7d5b: $e5
    ld bc, $f9f5                                  ; $7d5c: $01 $f5 $f9
    push af                                       ; $7d5f: $f5
    ld bc, $7f02                                  ; $7d60: $01 $02 $7f
    ld [bc], a                                    ; $7d63: $02
    ld h, b                                       ; $7d64: $60
    ld [bc], a                                    ; $7d65: $02
    ld e, a                                       ; $7d66: $5f
    ld [bc], a                                    ; $7d67: $02
    ld d, l                                       ; $7d68: $55
    ld [bc], a                                    ; $7d69: $02
    ld d, b                                       ; $7d6a: $50
    ld [bc], a                                    ; $7d6b: $02
    ld d, l                                       ; $7d6c: $55
    inc b                                         ; $7d6d: $04
    ld d, c                                       ; $7d6e: $51
    ld [bc], a                                    ; $7d6f: $02
    ld d, h                                       ; $7d70: $54
    ld [bc], a                                    ; $7d71: $02
    pop de                                        ; $7d72: $d1
    ld [bc], a                                    ; $7d73: $02
    call nc, $d502                                ; $7d74: $d4 $02 $d5
    ld [bc], a                                    ; $7d77: $02
    rst $18                                       ; $7d78: $df
    ld [bc], a                                    ; $7d79: $02
    ldh [rSC], a                                  ; $7d7a: $e0 $02
    rst $38                                       ; $7d7c: $ff
    ld [bc], a                                    ; $7d7d: $02
    ret nz                                        ; $7d7e: $c0

    ld [bc], a                                    ; $7d7f: $02
    add b                                         ; $7d80: $80
    ld [bc], a                                    ; $7d81: $02
    ld a, a                                       ; $7d82: $7f
    ld [bc], a                                    ; $7d83: $02
    add e                                         ; $7d84: $83
    ld [bc], a                                    ; $7d85: $02
    ld a, l                                       ; $7d86: $7d
    inc b                                         ; $7d87: $04
    ld d, l                                       ; $7d88: $55
    ld [bc], a                                    ; $7d89: $02
    dec d                                         ; $7d8a: $15
    ld [bc], a                                    ; $7d8b: $02
    ld d, l                                       ; $7d8c: $55
    ld [bc], a                                    ; $7d8d: $02
    dec d                                         ; $7d8e: $15
    ld [bc], a                                    ; $7d8f: $02
    ld b, l                                       ; $7d90: $45
    ld [bc], a                                    ; $7d91: $02
    ld d, l                                       ; $7d92: $55
    ld [bc], a                                    ; $7d93: $02
    dec d                                         ; $7d94: $15
    ld [bc], a                                    ; $7d95: $02
    push de                                       ; $7d96: $d5
    ld [bc], a                                    ; $7d97: $02
    ld a, l                                       ; $7d98: $7d
    ld [bc], a                                    ; $7d99: $02
    add e                                         ; $7d9a: $83
    ld [bc], a                                    ; $7d9b: $02
    ld a, a                                       ; $7d9c: $7f
    ld [bc], a                                    ; $7d9d: $02
    rst $18                                       ; $7d9e: $df
    ld [bc], a                                    ; $7d9f: $02
    jp nc, $d502                                  ; $7da0: $d2 $02 $d5

    ld [bc], a                                    ; $7da3: $02
    and d                                         ; $7da4: $a2
    ld [bc], a                                    ; $7da5: $02
    cp a                                          ; $7da6: $bf
    ld [bc], a                                    ; $7da7: $02
    add b                                         ; $7da8: $80
    ld [bc], a                                    ; $7da9: $02
    rst $38                                       ; $7daa: $ff

jr_0db_7dab:
    add d                                         ; $7dab: $82
    ld e, a                                       ; $7dac: $5f
    ld a, a                                       ; $7dad: $7f
    ld [bc], a                                    ; $7dae: $02
    ccf                                           ; $7daf: $3f
    ld b, $1f                                     ; $7db0: $06 $1f
    ld [bc], a                                    ; $7db2: $02
    rlca                                          ; $7db3: $07
    ld b, $00                                     ; $7db4: $06 $00
    ld [bc], a                                    ; $7db6: $02
    ld bc, $fd02                                  ; $7db7: $01 $02 $fd
    ld [bc], a                                    ; $7dba: $02
    dec [hl]                                      ; $7dbb: $35
    ld [bc], a                                    ; $7dbc: $02
    db $dd                                        ; $7dbd: $dd
    ld [bc], a                                    ; $7dbe: $02
    ld [$3a02], a                                 ; $7dbf: $ea $02 $3a
    ld [bc], a                                    ; $7dc2: $02
    add d                                         ; $7dc3: $82
    ld [bc], a                                    ; $7dc4: $02
    cp $88                                        ; $7dc5: $fe $88
    ret nc                                        ; $7dc7: $d0

    ldh a, [$e8]                                  ; $7dc8: $f0 $e8
    ld hl, sp-$28                                 ; $7dca: $f8 $d8
    ld hl, sp+$38                                 ; $7dcc: $f8 $38
    ld hl, sp+$02                                 ; $7dce: $f8 $02
    ldh a, [rTMA]                                 ; $7dd0: $f0 $06
    nop                                           ; $7dd2: $00
    rst $38                                       ; $7dd3: $ff
    dec c                                         ; $7dd4: $0d
    inc b                                         ; $7dd5: $04
    ld sp, hl                                     ; $7dd6: $f9
    ld [$01f2], sp                                ; $7dd7: $08 $f2 $01
    and $fb                                       ; $7dda: $e6 $fb
    rst $20                                       ; $7ddc: $e7
    nop                                           ; $7ddd: $00
    or $fa                                        ; $7dde: $f6 $fa
    or $00                                        ; $7de0: $f6 $00
    add d                                         ; $7de2: $82
    inc [hl]                                      ; $7de3: $34
    ld a, [hl]                                    ; $7de4: $7e
    ld [bc], a                                    ; $7de5: $02
    add c                                         ; $7de6: $81
    sub d                                         ; $7de7: $92
    ld a, [bc]                                    ; $7de8: $0a
    xor d                                         ; $7de9: $aa
    and b                                         ; $7dea: $a0
    cp [hl]                                       ; $7deb: $be
    ld a, [bc]                                    ; $7dec: $0a
    xor d                                         ; $7ded: $aa
    jr nz, jr_0db_7dab                            ; $7dee: $20 $bb

    ld a, [hl+]                                   ; $7df0: $2a
    cp d                                          ; $7df1: $ba
    add b                                         ; $7df2: $80
    xor a                                         ; $7df3: $af
    adc b                                         ; $7df4: $88
    cp d                                          ; $7df5: $ba
    nop                                           ; $7df6: $00
    xor [hl]                                      ; $7df7: $ae
    nop                                           ; $7df8: $00
    xor e                                         ; $7df9: $ab
    ld [bc], a                                    ; $7dfa: $02
    add b                                         ; $7dfb: $80
    adc d                                         ; $7dfc: $8a
    inc d                                         ; $7dfd: $14
    ld a, [hl]                                    ; $7dfe: $7e
    nop                                           ; $7dff: $00

Call_0db_7e00:
    ld bc, $fe00                                  ; $7e00: $01 $00 $fe
    nop                                           ; $7e03: $00
    add e                                         ; $7e04: $83
    inc b                                         ; $7e05: $04
    ld e, $03                                     ; $7e06: $1e $03
    ld bc, $1595                                  ; $7e08: $01 $95 $15
    db $10                                        ; $7e0b: $10
    dec d                                         ; $7e0c: $15
    nop                                           ; $7e0d: $00
    dec d                                         ; $7e0e: $15
    ld bc, $0015                                  ; $7e0f: $01 $15 $00
    dec d                                         ; $7e12: $15
    nop                                           ; $7e13: $00
    dec e                                         ; $7e14: $1d
    nop                                           ; $7e15: $00
    dec d                                         ; $7e16: $15
    nop                                           ; $7e17: $00
    dec d                                         ; $7e18: $15
    ld bc, $0015                                  ; $7e19: $01 $15 $00
    ld bc, $1e08                                  ; $7e1c: $01 $08 $1e
    inc bc                                        ; $7e1f: $03
    nop                                           ; $7e20: $00
    adc l                                         ; $7e21: $8d
    rra                                           ; $7e22: $1f
    nop                                           ; $7e23: $00
    add c                                         ; $7e24: $81
    nop                                           ; $7e25: $00
    ld e, b                                       ; $7e26: $58
    nop                                           ; $7e27: $00
    ld d, l                                       ; $7e28: $55
    nop                                           ; $7e29: $00
    cp d                                          ; $7e2a: $ba
    nop                                           ; $7e2b: $00
    add b                                         ; $7e2c: $80
    nop                                           ; $7e2d: $00
    rst $38                                       ; $7e2e: $ff
    add hl, de                                    ; $7e2f: $19
    nop                                           ; $7e30: $00
    adc c                                         ; $7e31: $89
    dec h                                         ; $7e32: $25
    nop                                           ; $7e33: $00
    ld de, $0a00                                  ; $7e34: $11 $00 $0a
    nop                                           ; $7e37: $00
    ld [hl+], a                                   ; $7e38: $22
    nop                                           ; $7e39: $00
    ld a, $14                                     ; $7e3a: $3e $14
    nop                                           ; $7e3c: $00
    rst $38                                       ; $7e3d: $ff
    dec c                                         ; $7e3e: $0d
    inc b                                         ; $7e3f: $04
    ld sp, hl                                     ; $7e40: $f9
    rlca                                          ; $7e41: $07
    ld a, [c]                                     ; $7e42: $f2
    ld bc, $f9e5                                  ; $7e43: $01 $e5 $f9
    and $01                                       ; $7e46: $e6 $01
    push af                                       ; $7e48: $f5
    ld sp, hl                                     ; $7e49: $f9
    push af                                       ; $7e4a: $f5
    ld bc, $7c02                                  ; $7e4b: $01 $02 $7c
    ld [bc], a                                    ; $7e4e: $02
    ld h, e                                       ; $7e4f: $63
    ld [bc], a                                    ; $7e50: $02
    ld e, h                                       ; $7e51: $5c
    ld [bc], a                                    ; $7e52: $02
    ld d, a                                       ; $7e53: $57
    ld [bc], a                                    ; $7e54: $02
    ld d, c                                       ; $7e55: $51
    ld [bc], a                                    ; $7e56: $02
    ld d, h                                       ; $7e57: $54
    ld [bc], a                                    ; $7e58: $02
    ld d, c                                       ; $7e59: $51
    ld [bc], a                                    ; $7e5a: $02
    pop de                                        ; $7e5b: $d1
    ld [bc], a                                    ; $7e5c: $02
    push de                                       ; $7e5d: $d5
    ld [bc], a                                    ; $7e5e: $02
    ret nc                                        ; $7e5f: $d0

    ld [bc], a                                    ; $7e60: $02
    push de                                       ; $7e61: $d5
    ld [bc], a                                    ; $7e62: $02
    call nc, $dd02                                ; $7e63: $d4 $02 $dd
    ld [bc], a                                    ; $7e66: $02
    db $e3                                        ; $7e67: $e3
    ld [bc], a                                    ; $7e68: $02
    db $fc                                        ; $7e69: $fc
    ld [bc], a                                    ; $7e6a: $02
    jp $e002                                      ; $7e6b: $c3 $02 $e0


    ld [bc], a                                    ; $7e6e: $02
    rra                                           ; $7e6f: $1f
    ld [bc], a                                    ; $7e70: $02
    db $e3                                        ; $7e71: $e3
    ld [bc], a                                    ; $7e72: $02
    ld e, l                                       ; $7e73: $5d
    ld [bc], a                                    ; $7e74: $02
    ld d, l                                       ; $7e75: $55
    ld [bc], a                                    ; $7e76: $02
    dec d                                         ; $7e77: $15
    ld [bc], a                                    ; $7e78: $02
    ld d, l                                       ; $7e79: $55
    ld [bc], a                                    ; $7e7a: $02
    dec d                                         ; $7e7b: $15
    ld [bc], a                                    ; $7e7c: $02
    ld d, l                                       ; $7e7d: $55
    ld [bc], a                                    ; $7e7e: $02
    ld b, l                                       ; $7e7f: $45
    ld [bc], a                                    ; $7e80: $02
    dec d                                         ; $7e81: $15
    ld [bc], a                                    ; $7e82: $02
    ld d, l                                       ; $7e83: $55
    ld [bc], a                                    ; $7e84: $02
    push af                                       ; $7e85: $f5
    ld [bc], a                                    ; $7e86: $02
    dec e                                         ; $7e87: $1d
    ld [bc], a                                    ; $7e88: $02
    db $e3                                        ; $7e89: $e3
    ld [bc], a                                    ; $7e8a: $02
    rra                                           ; $7e8b: $1f
    ld [bc], a                                    ; $7e8c: $02
    ret c                                         ; $7e8d: $d8

    ld [bc], a                                    ; $7e8e: $02
    rst $10                                       ; $7e8f: $d7
    ld [bc], a                                    ; $7e90: $02
    and d                                         ; $7e91: $a2
    ld [bc], a                                    ; $7e92: $02
    and l                                         ; $7e93: $a5
    ld [bc], a                                    ; $7e94: $02
    cp h                                          ; $7e95: $bc

jr_0db_7e96:
    ld [bc], a                                    ; $7e96: $02
    add e                                         ; $7e97: $83
    ld [bc], a                                    ; $7e98: $02
    ld hl, sp+$02                                 ; $7e99: $f8 $02
    ld a, a                                       ; $7e9b: $7f
    ld b, $1f                                     ; $7e9c: $06 $1f
    ld [bc], a                                    ; $7e9e: $02
    rrca                                          ; $7e9f: $0f
    ld [bc], a                                    ; $7ea0: $02
    inc bc                                        ; $7ea1: $03
    ld [$0200], sp                                ; $7ea2: $08 $00 $02
    pop bc                                        ; $7ea5: $c1
    ld [bc], a                                    ; $7ea6: $02
    cp l                                          ; $7ea7: $bd
    ld [bc], a                                    ; $7ea8: $02
    ld l, l                                       ; $7ea9: $6d
    ld [bc], a                                    ; $7eaa: $02
    or l                                          ; $7eab: $b5
    ld [bc], a                                    ; $7eac: $02
    ld a, [$1a02]                                 ; $7ead: $fa $02 $1a
    ld [bc], a                                    ; $7eb0: $02
    jp nz, $fe02                                  ; $7eb1: $c2 $02 $fe

    ld [bc], a                                    ; $7eb4: $02
    ldh a, [$81]                                  ; $7eb5: $f0 $81
    xor b                                         ; $7eb7: $a8
    inc bc                                        ; $7eb8: $03
    ld hl, sp+$02                                 ; $7eb9: $f8 $02
    ldh [rTMA], a                                 ; $7ebb: $e0 $06
    nop                                           ; $7ebd: $00
    rst $38                                       ; $7ebe: $ff
    dec c                                         ; $7ebf: $0d
    inc b                                         ; $7ec0: $04
    ld sp, hl                                     ; $7ec1: $f9
    ld [$01f2], sp                                ; $7ec2: $08 $f2 $01
    and $fb                                       ; $7ec5: $e6 $fb
    rst $20                                       ; $7ec7: $e7
    nop                                           ; $7ec8: $00
    or $fa                                        ; $7ec9: $f6 $fa
    or $00                                        ; $7ecb: $f6 $00
    and l                                         ; $7ecd: $a5
    jr nc, jr_0db_7f40                            ; $7ece: $30 $70

    add l                                         ; $7ed0: $85
    adc a                                         ; $7ed1: $8f
    nop                                           ; $7ed2: $00
    and b                                         ; $7ed3: $a0
    xor d                                         ; $7ed4: $aa
    cp d                                          ; $7ed5: $ba
    nop                                           ; $7ed6: $00
    xor [hl]                                      ; $7ed7: $ae
    ld a, [hl+]                                   ; $7ed8: $2a
    cp e                                          ; $7ed9: $bb
    jr nz, jr_0db_7e96                            ; $7eda: $20 $ba

    adc d                                         ; $7edc: $8a
    xor e                                         ; $7edd: $ab
    add b                                         ; $7ede: $80
    cp [hl]                                       ; $7edf: $be
    ld [$00aa], sp                                ; $7ee0: $08 $aa $00
    xor a                                         ; $7ee3: $af
    add b                                         ; $7ee4: $80
    adc d                                         ; $7ee5: $8a
    db $10                                        ; $7ee6: $10
    ld [hl], b                                    ; $7ee7: $70
    inc b                                         ; $7ee8: $04
    rrca                                          ; $7ee9: $0f
    nop                                           ; $7eea: $00
    ldh a, [rP1]                                  ; $7eeb: $f0 $00
    sbc a                                         ; $7eed: $9f
    nop                                           ; $7eee: $00
    db $10                                        ; $7eef: $10
    inc b                                         ; $7ef0: $04
    ld c, $01                                     ; $7ef1: $0e $01
    ld [bc], a                                    ; $7ef3: $02
    ld de, $15a5                                  ; $7ef4: $11 $a5 $15
    nop                                           ; $7ef7: $00
    dec d                                         ; $7ef8: $15
    nop                                           ; $7ef9: $00
    dec d                                         ; $7efa: $15
    nop                                           ; $7efb: $00
    dec d                                         ; $7efc: $15
    nop                                           ; $7efd: $00
    dec d                                         ; $7efe: $15
    nop                                           ; $7eff: $00
    dec e                                         ; $7f00: $1d
    nop                                           ; $7f01: $00
    dec d                                         ; $7f02: $15
    nop                                           ; $7f03: $00
    dec d                                         ; $7f04: $15
    ld bc, $0005                                  ; $7f05: $01 $05 $00
    ld de, $0e08                                  ; $7f08: $11 $08 $0e
    nop                                           ; $7f0b: $00
    stop                                          ; $7f0c: $10 $00
    rra                                           ; $7f0e: $1f
    nop                                           ; $7f0f: $00
    ld d, b                                       ; $7f10: $50
    nop                                           ; $7f11: $00
    cp d                                          ; $7f12: $ba
    nop                                           ; $7f13: $00
    or l                                          ; $7f14: $b5
    nop                                           ; $7f15: $00
    add [hl]                                      ; $7f16: $86
    nop                                           ; $7f17: $00
    ld hl, sp+$00                                 ; $7f18: $f8 $00
    rrca                                          ; $7f1a: $0f
    rla                                           ; $7f1b: $17
    nop                                           ; $7f1c: $00
    adc e                                         ; $7f1d: $8b
    ld hl, $0900                                  ; $7f1e: $21 $00 $09
    nop                                           ; $7f21: $00
    dec h                                         ; $7f22: $25
    nop                                           ; $7f23: $00
    ld [bc], a                                    ; $7f24: $02
    nop                                           ; $7f25: $00
    ld [hl-], a                                   ; $7f26: $32
    nop                                           ; $7f27: $00
    ld e, $12                                     ; $7f28: $1e $12
    nop                                           ; $7f2a: $00
    rst $38                                       ; $7f2b: $ff
    dec c                                         ; $7f2c: $0d
    inc b                                         ; $7f2d: $04
    ld sp, hl                                     ; $7f2e: $f9
    rlca                                          ; $7f2f: $07
    ld a, [c]                                     ; $7f30: $f2
    ld bc, $f9e7                                  ; $7f31: $01 $e7 $f9
    rst $20                                       ; $7f34: $e7
    nop                                           ; $7f35: $00
    rst $30                                       ; $7f36: $f7
    ld sp, hl                                     ; $7f37: $f9
    rst $30                                       ; $7f38: $f7
    nop                                           ; $7f39: $00
    ld [bc], a                                    ; $7f3a: $02
    rst $38                                       ; $7f3b: $ff
    ld [bc], a                                    ; $7f3c: $02
    ret nz                                        ; $7f3d: $c0

    ld [bc], a                                    ; $7f3e: $02
    cp a                                          ; $7f3f: $bf

jr_0db_7f40:
    ld [bc], a                                    ; $7f40: $02
    xor d                                         ; $7f41: $aa
    ld [bc], a                                    ; $7f42: $02
    and b                                         ; $7f43: $a0
    ld [bc], a                                    ; $7f44: $02
    xor d                                         ; $7f45: $aa
    ld [bc], a                                    ; $7f46: $02
    and b                                         ; $7f47: $a0
    inc b                                         ; $7f48: $04
    and d                                         ; $7f49: $a2
    ld [bc], a                                    ; $7f4a: $02
    xor b                                         ; $7f4b: $a8
    ld [bc], a                                    ; $7f4c: $02
    and d                                         ; $7f4d: $a2

jr_0db_7f4e:
    ld [bc], a                                    ; $7f4e: $02
    xor b                                         ; $7f4f: $a8
    ld [bc], a                                    ; $7f50: $02
    xor d                                         ; $7f51: $aa
    ld [bc], a                                    ; $7f52: $02
    cp a                                          ; $7f53: $bf
    ld [bc], a                                    ; $7f54: $02
    ret nz                                        ; $7f55: $c0

    ld [bc], a                                    ; $7f56: $02
    rst $38                                       ; $7f57: $ff
    ld [bc], a                                    ; $7f58: $02
    ld a, a                                       ; $7f59: $7f
    ld [bc], a                                    ; $7f5a: $02
    inc bc                                        ; $7f5b: $03
    ld [bc], a                                    ; $7f5c: $02
    ld a, l                                       ; $7f5d: $7d
    inc b                                         ; $7f5e: $04
    ld d, l                                       ; $7f5f: $55
    ld [bc], a                                    ; $7f60: $02
    dec d                                         ; $7f61: $15
    ld [bc], a                                    ; $7f62: $02
    ld b, l                                       ; $7f63: $45
    ld [bc], a                                    ; $7f64: $02
    ld d, l                                       ; $7f65: $55
    ld [bc], a                                    ; $7f66: $02
    dec d                                         ; $7f67: $15
    ld [bc], a                                    ; $7f68: $02
    ld b, l                                       ; $7f69: $45
    ld [bc], a                                    ; $7f6a: $02
    ld d, l                                       ; $7f6b: $55
    ld [bc], a                                    ; $7f6c: $02
    dec d                                         ; $7f6d: $15
    ld [bc], a                                    ; $7f6e: $02
    ld d, l                                       ; $7f6f: $55
    ld [bc], a                                    ; $7f70: $02
    ld a, l                                       ; $7f71: $7d
    ld [bc], a                                    ; $7f72: $02
    inc bc                                        ; $7f73: $03
    ld [bc], a                                    ; $7f74: $02
    ld a, a                                       ; $7f75: $7f
    ld [bc], a                                    ; $7f76: $02
    add b                                         ; $7f77: $80
    ld [bc], a                                    ; $7f78: $02
    cp a                                          ; $7f79: $bf
    ld [bc], a                                    ; $7f7a: $02
    xor d                                         ; $7f7b: $aa
    ld [bc], a                                    ; $7f7c: $02
    and l                                         ; $7f7d: $a5
    ld [bc], a                                    ; $7f7e: $02
    xor d                                         ; $7f7f: $aa
    ld [bc], a                                    ; $7f80: $02
    cp a                                          ; $7f81: $bf
    ld [bc], a                                    ; $7f82: $02
    add b                                         ; $7f83: $80
    ld [bc], a                                    ; $7f84: $02
    rst $38                                       ; $7f85: $ff
    inc b                                         ; $7f86: $04
    rra                                           ; $7f87: $1f
    ld [bc], a                                    ; $7f88: $02
    rlca                                          ; $7f89: $07
    ld a, [bc]                                    ; $7f8a: $0a
    nop                                           ; $7f8b: $00
    ld [bc], a                                    ; $7f8c: $02
    ld bc, $7d02                                  ; $7f8d: $01 $02 $7d
    ld [bc], a                                    ; $7f90: $02
    ld d, l                                       ; $7f91: $55
    ld [bc], a                                    ; $7f92: $02
    ld e, l                                       ; $7f93: $5d
    ld [bc], a                                    ; $7f94: $02
    ld [hl], l                                    ; $7f95: $75
    ld [bc], a                                    ; $7f96: $02
    ld a, l                                       ; $7f97: $7d
    ld [bc], a                                    ; $7f98: $02
    ld bc, $7f02                                  ; $7f99: $01 $02 $7f
    inc b                                         ; $7f9c: $04
    ld a, b                                       ; $7f9d: $78
    ld [bc], a                                    ; $7f9e: $02
    ld [hl], b                                    ; $7f9f: $70
    ld a, [bc]                                    ; $7fa0: $0a
    nop                                           ; $7fa1: $00
    rst $38                                       ; $7fa2: $ff
    dec bc                                        ; $7fa3: $0b
    inc bc                                        ; $7fa4: $03
    nop                                           ; $7fa5: $00
    rlca                                          ; $7fa6: $07
    ld sp, hl                                     ; $7fa7: $f9
    nop                                           ; $7fa8: $00
    ei                                            ; $7fa9: $fb
    rst $30                                       ; $7faa: $f7
    ei                                            ; $7fab: $fb
    rst $38                                       ; $7fac: $ff
    ei                                            ; $7fad: $fb
    rlca                                          ; $7fae: $07
    ld [bc], a                                    ; $7faf: $02
    ld d, b                                       ; $7fb0: $50
    add [hl]                                      ; $7fb1: $86
    sbc $ae                                       ; $7fb2: $de $ae
    ld l, l                                       ; $7fb4: $6d
    ld d, e                                       ; $7fb5: $53
    rst $10                                       ; $7fb6: $d7
    cp a                                          ; $7fb7: $bf
    ld [bc], a                                    ; $7fb8: $02
    ld l, b                                       ; $7fb9: $68
    ld d, $00                                     ; $7fba: $16 $00
    ld [bc], a                                    ; $7fbc: $02
    ld e, $84                                     ; $7fbd: $1e $84
    push hl                                       ; $7fbf: $e5
    rst $38                                       ; $7fc0: $ff
    cp e                                          ; $7fc1: $bb
    ei                                            ; $7fc2: $fb
    ld [bc], a                                    ; $7fc3: $02
    ret nz                                        ; $7fc4: $c0

    jr jr_0db_7fc7                                ; $7fc5: $18 $00

jr_0db_7fc7:
    ld [bc], a                                    ; $7fc7: $02
    jr jr_0db_7f4e                                ; $7fc8: $18 $84

    rst $20                                       ; $7fca: $e7
    rst $38                                       ; $7fcb: $ff
    cp l                                          ; $7fcc: $bd
    rst $38                                       ; $7fcd: $ff
    ld [bc], a                                    ; $7fce: $02
    ld b, b                                       ; $7fcf: $40
    jr jr_0db_7fd2                                ; $7fd0: $18 $00

jr_0db_7fd2:
    rst $38                                       ; $7fd2: $ff
    add hl, bc                                    ; $7fd3: $09
    ld [bc], a                                    ; $7fd4: $02
    ld hl, sp+$07                                 ; $7fd5: $f8 $07
    ld a, [c]                                     ; $7fd7: $f2
    ld bc, $fcf4                                  ; $7fd8: $01 $f4 $fc
    db $f4                                        ; $7fdb: $f4
    db $fd                                        ; $7fdc: $fd
    adc [hl]                                      ; $7fdd: $8e
    nop                                           ; $7fde: $00
    ld a, a                                       ; $7fdf: $7f
    nop                                           ; $7fe0: $00
    cp [hl]                                       ; $7fe1: $be
    nop                                           ; $7fe2: $00
    cp [hl]                                       ; $7fe3: $be
    nop                                           ; $7fe4: $00
    ld a, $00                                     ; $7fe5: $3e $00
    ld l, $00                                     ; $7fe7: $2e $00
    ld [hl], e                                    ; $7fe9: $73
    nop                                           ; $7fea: $00
    ld a, $02                                     ; $7feb: $3e $02
    ld [hl], $02                                  ; $7fed: $36 $02
    ld h, $02                                     ; $7fef: $26 $02
    daa                                           ; $7ff1: $27
    ld [bc], a                                    ; $7ff2: $02
    inc b                                         ; $7ff3: $04
    add c                                         ; $7ff4: $81
    ld [hl+], a                                   ; $7ff5: $22
    inc c                                         ; $7ff6: $0c
    nop                                           ; $7ff7: $00
    add e                                         ; $7ff8: $83
    ld bc, $0100                                  ; $7ff9: $01 $00 $01
    ld a, [de]                                    ; $7ffc: $1a
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
