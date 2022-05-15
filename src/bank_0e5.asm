; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e5", ROMX[$4000], BANK[$e5]

    push hl                                       ; $4000: $e5
    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld sp, hl                                     ; $4003: $f9
    ld [$01f2], sp                                ; $4004: $08 $f2 $01
    rst $20                                       ; $4007: $e7
    ld a, [$00e7]                                 ; $4008: $fa $e7 $00
    rst $30                                       ; $400b: $f7
    ld a, [$00f7]                                 ; $400c: $fa $f7 $00
    ld [bc], a                                    ; $400f: $02
    ld c, $02                                     ; $4010: $0e $02
    rra                                           ; $4012: $1f
    ld [$053f], sp                                ; $4013: $08 $3f $05
    rra                                           ; $4016: $1f
    add c                                         ; $4017: $81
    jr jr_0e5_401c                                ; $4018: $18 $02

    rrca                                          ; $401a: $0f
    adc h                                         ; $401b: $8c

jr_0e5_401c:
    jr nc, @+$41                                  ; $401c: $30 $3f

    ld b, b                                       ; $401e: $40

jr_0e5_401f:
    ld a, a                                       ; $401f: $7f
    ld d, b                                       ; $4020: $50
    ld a, a                                       ; $4021: $7f
    ldh a, [rIE]                                  ; $4022: $f0 $ff
    ldh a, [$9f]                                  ; $4024: $f0 $9f
    ldh a, [$9f]                                  ; $4026: $f0 $9f
    ld [bc], a                                    ; $4028: $02
    jr nc, jr_0e5_402d                            ; $4029: $30 $02

    jr c, jr_0e5_4031                             ; $402b: $38 $04

jr_0e5_402d:
    inc a                                         ; $402d: $3c
    rlca                                          ; $402e: $07
    db $38, $83                                   ; $402f: $38 $83

jr_0e5_4031:
    jr z, jr_0e5_406b                             ; $4031: $28 $38

    jr jr_0e5_4037                                ; $4033: $18 $02

    db $30, $96                                   ; $4035: $30 $96

jr_0e5_4037:
    ld [$0638], sp                                ; $4037: $08 $38 $06
    ld a, $02                                     ; $403a: $3e $02
    ld a, $0b                                     ; $403c: $3e $0b
    ccf                                           ; $403e: $3f
    rrca                                          ; $403f: $0f
    ccf                                           ; $4040: $3f
    rrca                                          ; $4041: $0f
    add hl, sp                                    ; $4042: $39
    di                                            ; $4043: $f3
    sbc a                                         ; $4044: $9f
    ldh a, [$9f]                                  ; $4045: $f0 $9f
    rst $28                                       ; $4047: $ef
    cp a                                          ; $4048: $bf
    rst $38                                       ; $4049: $ff
    sbc a                                         ; $404a: $9f
    rst $38                                       ; $404b: $ff
    sbc a                                         ; $404c: $9f
    ld [bc], a                                    ; $404d: $02
    ld a, a                                       ; $404e: $7f
    ld b, $1f                                     ; $404f: $06 $1f
    ld [bc], a                                    ; $4051: $02
    dec c                                         ; $4052: $0d
    ld [bc], a                                    ; $4053: $02
    ld bc, $000a                                  ; $4054: $01 $0a $00
    add l                                         ; $4057: $85
    cpl                                           ; $4058: $2f
    add hl, sp                                    ; $4059: $39
    rlca                                          ; $405a: $07
    dec a                                         ; $405b: $3d
    ld [hl], $02                                  ; $405c: $36 $02
    ld a, $81                                     ; $405e: $3e $81
    ld a, [hl-]                                   ; $4060: $3a
    ld [bc], a                                    ; $4061: $02
    inc a                                         ; $4062: $3c
    rlca                                          ; $4063: $07
    db $38, $81                                   ; $4064: $38 $81
    ld [$3804], sp                                ; $4066: $08 $04 $38
    ld a, [bc]                                    ; $4069: $0a
    nop                                           ; $406a: $00

jr_0e5_406b:
    rst $38                                       ; $406b: $ff
    dec c                                         ; $406c: $0d
    inc b                                         ; $406d: $04
    ld sp, hl                                     ; $406e: $f9
    ld [$01f2], sp                                ; $406f: $08 $f2 $01
    add sp, -$06                                  ; $4072: $e8 $fa
    add sp, $00                                   ; $4074: $e8 $00
    ld hl, sp-$06                                 ; $4076: $f8 $fa
    ld hl, sp+$00                                 ; $4078: $f8 $00
    ld [bc], a                                    ; $407a: $02
    ld c, $02                                     ; $407b: $0e $02
    rra                                           ; $407d: $1f
    ld [$053f], sp                                ; $407e: $08 $3f $05
    rra                                           ; $4081: $1f
    add c                                         ; $4082: $81
    jr jr_0e5_4087                                ; $4083: $18 $02

    rrca                                          ; $4085: $0f
    adc h                                         ; $4086: $8c

jr_0e5_4087:
    jr nc, jr_0e5_40c8                            ; $4087: $30 $3f

    ld b, b                                       ; $4089: $40
    ld a, a                                       ; $408a: $7f

jr_0e5_408b:
    ld d, b                                       ; $408b: $50
    ld a, a                                       ; $408c: $7f
    ldh a, [rIE]                                  ; $408d: $f0 $ff
    ldh a, [$9f]                                  ; $408f: $f0 $9f
    ldh a, [$9f]                                  ; $4091: $f0 $9f
    ld [bc], a                                    ; $4093: $02
    jr nc, jr_0e5_4098                            ; $4094: $30 $02

    jr c, jr_0e5_409c                             ; $4096: $38 $04

jr_0e5_4098:
    inc a                                         ; $4098: $3c
    rlca                                          ; $4099: $07
    jr c, jr_0e5_401f                             ; $409a: $38 $83

jr_0e5_409c:
    jr z, jr_0e5_40d6                             ; $409c: $28 $38

    jr jr_0e5_40a2                                ; $409e: $18 $02

    jr nc, @-$68                                  ; $40a0: $30 $96

jr_0e5_40a2:
    inc c                                         ; $40a2: $0c
    inc a                                         ; $40a3: $3c

jr_0e5_40a4:
    ld [bc], a                                    ; $40a4: $02
    ld a, $02                                     ; $40a5: $3e $02
    ld a, $09                                     ; $40a7: $3e $09
    ccf                                           ; $40a9: $3f
    rrca                                          ; $40aa: $0f
    ccf                                           ; $40ab: $3f
    rrca                                          ; $40ac: $0f
    add hl, sp                                    ; $40ad: $39
    di                                            ; $40ae: $f3
    sbc a                                         ; $40af: $9f
    ldh a, [$9f]                                  ; $40b0: $f0 $9f
    rst $28                                       ; $40b2: $ef
    cp a                                          ; $40b3: $bf
    rst $38                                       ; $40b4: $ff
    sbc a                                         ; $40b5: $9f
    rst $38                                       ; $40b6: $ff
    cp a                                          ; $40b7: $bf
    ld [bc], a                                    ; $40b8: $02
    ld a, a                                       ; $40b9: $7f
    ld [bc], a                                    ; $40ba: $02
    rra                                           ; $40bb: $1f
    add d                                         ; $40bc: $82
    rla                                           ; $40bd: $17
    rra                                           ; $40be: $1f
    ld [bc], a                                    ; $40bf: $02
    dec e                                         ; $40c0: $1d
    ld c, $00                                     ; $40c1: $0e $00
    adc b                                         ; $40c3: $88
    cpl                                           ; $40c4: $2f
    add hl, sp                                    ; $40c5: $39
    rlca                                          ; $40c6: $07
    dec a                                         ; $40c7: $3d

jr_0e5_40c8:
    scf                                           ; $40c8: $37
    dec a                                         ; $40c9: $3d
    ld a, $3a                                     ; $40ca: $3e $3a
    inc b                                         ; $40cc: $04
    inc a                                         ; $40cd: $3c
    add d                                         ; $40ce: $82
    jr jr_0e5_40f9                                ; $40cf: $18 $28

    ld b, $38                                     ; $40d1: $06 $38
    inc c                                         ; $40d3: $0c
    nop                                           ; $40d4: $00
    rst $38                                       ; $40d5: $ff

jr_0e5_40d6:
    dec c                                         ; $40d6: $0d
    inc b                                         ; $40d7: $04
    ld sp, hl                                     ; $40d8: $f9
    ld [$01f2], sp                                ; $40d9: $08 $f2 $01
    rst $20                                       ; $40dc: $e7
    ld a, [$00e7]                                 ; $40dd: $fa $e7 $00
    rst $30                                       ; $40e0: $f7
    ld a, [$00f7]                                 ; $40e1: $fa $f7 $00
    ld [bc], a                                    ; $40e4: $02
    rrca                                          ; $40e5: $0f
    ld [bc], a                                    ; $40e6: $02
    rra                                           ; $40e7: $1f
    ld b, $3f                                     ; $40e8: $06 $3f
    dec b                                         ; $40ea: $05
    rra                                           ; $40eb: $1f
    add e                                         ; $40ec: $83
    rla                                           ; $40ed: $17
    rra                                           ; $40ee: $1f
    jr jr_0e5_40f3                                ; $40ef: $18 $02

    rrca                                          ; $40f1: $0f
    adc h                                         ; $40f2: $8c

jr_0e5_40f3:
    jr nc, jr_0e5_4134                            ; $40f3: $30 $3f

    ld b, b                                       ; $40f5: $40
    ld a, a                                       ; $40f6: $7f
    ld b, b                                       ; $40f7: $40
    ld a, a                                       ; $40f8: $7f

jr_0e5_40f9:
    ret nc                                        ; $40f9: $d0

    rst $38                                       ; $40fa: $ff
    ldh a, [$bf]                                  ; $40fb: $f0 $bf
    db $f4                                        ; $40fd: $f4
    sbc a                                         ; $40fe: $9f
    ld [bc], a                                    ; $40ff: $02
    db $10                                        ; $4100: $10
    ld [bc], a                                    ; $4101: $02
    jr c, jr_0e5_410a                             ; $4102: $38 $06

    inc a                                         ; $4104: $3c
    dec b                                         ; $4105: $05
    jr c, jr_0e5_408b                             ; $4106: $38 $83

    jr z, jr_0e5_4142                             ; $4108: $28 $38

jr_0e5_410a:
    jr jr_0e5_410e                                ; $410a: $18 $02

    jr nc, jr_0e5_40a4                            ; $410c: $30 $96

jr_0e5_410e:
    inc c                                         ; $410e: $0c
    inc a                                         ; $410f: $3c
    ld [bc], a                                    ; $4110: $02
    ld a, $02                                     ; $4111: $3e $02
    ld a, $0b                                     ; $4113: $3e $0b
    ccf                                           ; $4115: $3f
    rrca                                          ; $4116: $0f
    dec a                                         ; $4117: $3d
    rrca                                          ; $4118: $0f
    add hl, sp                                    ; $4119: $39
    di                                            ; $411a: $f3
    sbc a                                         ; $411b: $9f
    ldh a, [$9f]                                  ; $411c: $f0 $9f
    rst $28                                       ; $411e: $ef
    cp a                                          ; $411f: $bf
    rst $38                                       ; $4120: $ff
    cp a                                          ; $4121: $bf
    ld a, a                                       ; $4122: $7f
    ld e, a                                       ; $4123: $5f
    ld [bc], a                                    ; $4124: $02
    ccf                                           ; $4125: $3f
    ld b, $1f                                     ; $4126: $06 $1f
    add d                                         ; $4128: $82
    dec de                                        ; $4129: $1b
    rla                                           ; $412a: $17
    ld [bc], a                                    ; $412b: $02
    ld e, $0a                                     ; $412c: $1e $0a
    nop                                           ; $412e: $00
    adc d                                         ; $412f: $8a
    cpl                                           ; $4130: $2f
    add hl, sp                                    ; $4131: $39
    rrca                                          ; $4132: $0f
    add hl, sp                                    ; $4133: $39

jr_0e5_4134:
    scf                                           ; $4134: $37
    dec a                                         ; $4135: $3d
    ccf                                           ; $4136: $3f
    dec a                                         ; $4137: $3d
    ld a, $3a                                     ; $4138: $3e $3a
    ld [bc], a                                    ; $413a: $02
    ld a, $04                                     ; $413b: $3e $04
    inc a                                         ; $413d: $3c
    add d                                         ; $413e: $82
    jr jr_0e5_4169                                ; $413f: $18 $28

    ld [bc], a                                    ; $4141: $02

jr_0e5_4142:
    jr c, jr_0e5_4150                             ; $4142: $38 $0c

    nop                                           ; $4144: $00
    rst $38                                       ; $4145: $ff
    dec c                                         ; $4146: $0d
    inc b                                         ; $4147: $04
    ld sp, hl                                     ; $4148: $f9
    ld [$01f2], sp                                ; $4149: $08 $f2 $01
    rst $20                                       ; $414c: $e7
    ld a, [$00e7]                                 ; $414d: $fa $e7 $00

jr_0e5_4150:
    rst $30                                       ; $4150: $f7
    ld a, [$00f7]                                 ; $4151: $fa $f7 $00
    ld [bc], a                                    ; $4154: $02
    rrca                                          ; $4155: $0f
    ld [bc], a                                    ; $4156: $02
    rra                                           ; $4157: $1f
    inc b                                         ; $4158: $04
    ccf                                           ; $4159: $3f
    rlca                                          ; $415a: $07
    rra                                           ; $415b: $1f
    add e                                         ; $415c: $83
    rla                                           ; $415d: $17
    rra                                           ; $415e: $1f
    jr jr_0e5_4163                                ; $415f: $18 $02

    rrca                                          ; $4161: $0f

jr_0e5_4162:
    adc h                                         ; $4162: $8c

jr_0e5_4163:
    db $10                                        ; $4163: $10
    rra                                           ; $4164: $1f
    ld h, b                                       ; $4165: $60
    ld a, a                                       ; $4166: $7f
    ld b, b                                       ; $4167: $40
    ld a, a                                       ; $4168: $7f

jr_0e5_4169:
    ret nc                                        ; $4169: $d0

    rst $38                                       ; $416a: $ff
    ldh a, [rIE]                                  ; $416b: $f0 $ff
    or $9f                                        ; $416d: $f6 $9f
    ld [bc], a                                    ; $416f: $02
    jr nc, jr_0e5_4174                            ; $4170: $30 $02

    jr c, jr_0e5_417c                             ; $4172: $38 $08

jr_0e5_4174:
    inc a                                         ; $4174: $3c
    dec b                                         ; $4175: $05
    jr c, jr_0e5_40f9                             ; $4176: $38 $81

    jr jr_0e5_417c                                ; $4178: $18 $02

    jr nc, @-$6d                                  ; $417a: $30 $91

jr_0e5_417c:
    inc c                                         ; $417c: $0c
    inc a                                         ; $417d: $3c
    ld [bc], a                                    ; $417e: $02
    ld a, $0a                                     ; $417f: $3e $0a
    ld a, $0f                                     ; $4181: $3e $0f
    ccf                                           ; $4183: $3f
    rrca                                          ; $4184: $0f
    add hl, sp                                    ; $4185: $39
    rrca                                          ; $4186: $0f
    add hl, sp                                    ; $4187: $39
    di                                            ; $4188: $f3
    sbc a                                         ; $4189: $9f
    ldh [$bf], a                                  ; $418a: $e0 $bf
    ld l, a                                       ; $418c: $6f
    ld [bc], a                                    ; $418d: $02
    ld a, a                                       ; $418e: $7f
    add c                                         ; $418f: $81
    ld e, a                                       ; $4190: $5f
    ld [bc], a                                    ; $4191: $02
    ccf                                           ; $4192: $3f
    rlca                                          ; $4193: $07
    rra                                           ; $4194: $1f
    add c                                         ; $4195: $81
    inc de                                        ; $4196: $13

jr_0e5_4197:
    inc b                                         ; $4197: $04
    ld e, $0a                                     ; $4198: $1e $0a
    nop                                           ; $419a: $00
    adc d                                         ; $419b: $8a
    rrca                                          ; $419c: $0f
    add hl, sp                                    ; $419d: $39
    rrca                                          ; $419e: $0f
    add hl, sp                                    ; $419f: $39
    scf                                           ; $41a0: $37
    dec a                                         ; $41a1: $3d
    ccf                                           ; $41a2: $3f
    add hl, sp                                    ; $41a3: $39
    ccf                                           ; $41a4: $3f
    add hl, sp                                    ; $41a5: $39
    ld [bc], a                                    ; $41a6: $02
    ld a, $06                                     ; $41a7: $3e $06
    jr c, jr_0e5_41ad                             ; $41a9: $38 $02

    jr nc, jr_0e5_41b9                            ; $41ab: $30 $0c

jr_0e5_41ad:
    nop                                           ; $41ad: $00
    rst $38                                       ; $41ae: $ff
    dec c                                         ; $41af: $0d
    inc b                                         ; $41b0: $04
    ld sp, hl                                     ; $41b1: $f9
    ld [$01f2], sp                                ; $41b2: $08 $f2 $01
    add sp, -$06                                  ; $41b5: $e8 $fa
    add sp, $00                                   ; $41b7: $e8 $00

jr_0e5_41b9:
    ld hl, sp-$06                                 ; $41b9: $f8 $fa
    ld hl, sp+$00                                 ; $41bb: $f8 $00
    ld [bc], a                                    ; $41bd: $02
    rrca                                          ; $41be: $0f
    ld [bc], a                                    ; $41bf: $02
    rra                                           ; $41c0: $1f
    inc b                                         ; $41c1: $04
    ccf                                           ; $41c2: $3f
    rlca                                          ; $41c3: $07
    rra                                           ; $41c4: $1f
    add e                                         ; $41c5: $83
    rla                                           ; $41c6: $17
    rra                                           ; $41c7: $1f
    jr jr_0e5_41cc                                ; $41c8: $18 $02

    rrca                                          ; $41ca: $0f
    adc h                                         ; $41cb: $8c

jr_0e5_41cc:
    jr nc, jr_0e5_420d                            ; $41cc: $30 $3f

    ld b, b                                       ; $41ce: $40
    ld a, a                                       ; $41cf: $7f
    ld b, b                                       ; $41d0: $40

jr_0e5_41d1:
    ld a, a                                       ; $41d1: $7f
    sub b                                         ; $41d2: $90
    rst $38                                       ; $41d3: $ff
    ldh a, [rIE]                                  ; $41d4: $f0 $ff
    or $9f                                        ; $41d6: $f6 $9f
    ld [bc], a                                    ; $41d8: $02
    jr nc, jr_0e5_41dd                            ; $41d9: $30 $02

    jr c, jr_0e5_41e5                             ; $41db: $38 $08

jr_0e5_41dd:
    inc a                                         ; $41dd: $3c
    dec b                                         ; $41de: $05
    jr c, jr_0e5_4162                             ; $41df: $38 $81

    jr jr_0e5_41e5                                ; $41e1: $18 $02

    jr nc, @-$6a                                  ; $41e3: $30 $94

jr_0e5_41e5:
    inc c                                         ; $41e5: $0c
    inc a                                         ; $41e6: $3c
    ld [bc], a                                    ; $41e7: $02
    ld a, $0a                                     ; $41e8: $3e $0a

jr_0e5_41ea:
    ld a, $0f                                     ; $41ea: $3e $0f
    ccf                                           ; $41ec: $3f
    rrca                                          ; $41ed: $0f
    add hl, sp                                    ; $41ee: $39
    rrca                                          ; $41ef: $0f
    add hl, sp                                    ; $41f0: $39
    di                                            ; $41f1: $f3
    sbc a                                         ; $41f2: $9f
    ldh [$bf], a                                  ; $41f3: $e0 $bf
    rst $28                                       ; $41f5: $ef
    cp a                                          ; $41f6: $bf
    ld a, a                                       ; $41f7: $7f
    ld e, a                                       ; $41f8: $5f
    inc b                                         ; $41f9: $04
    ccf                                           ; $41fa: $3f
    add d                                         ; $41fb: $82
    dec de                                        ; $41fc: $1b
    rla                                           ; $41fd: $17
    ld [bc], a                                    ; $41fe: $02
    rra                                           ; $41ff: $1f
    ld [bc], a                                    ; $4200: $02
    ld e, $02                                     ; $4201: $1e $02
    inc e                                         ; $4203: $1c
    inc c                                         ; $4204: $0c
    nop                                           ; $4205: $00
    adc d                                         ; $4206: $8a
    rrca                                          ; $4207: $0f
    add hl, sp                                    ; $4208: $39
    rrca                                          ; $4209: $0f
    add hl, sp                                    ; $420a: $39
    scf                                           ; $420b: $37
    dec a                                         ; $420c: $3d

jr_0e5_420d:
    ccf                                           ; $420d: $3f
    add hl, sp                                    ; $420e: $39
    ccf                                           ; $420f: $3f
    dec a                                         ; $4210: $3d
    ld [bc], a                                    ; $4211: $02
    ld a, $02                                     ; $4212: $3e $02
    jr c, jr_0e5_4197                             ; $4214: $38 $81

    jr z, jr_0e5_421b                             ; $4216: $28 $03

    jr c, @+$10                                   ; $4218: $38 $0e

    nop                                           ; $421a: $00

jr_0e5_421b:
    rst $38                                       ; $421b: $ff
    dec c                                         ; $421c: $0d
    inc b                                         ; $421d: $04
    ld sp, hl                                     ; $421e: $f9
    ld [$01f2], sp                                ; $421f: $08 $f2 $01
    rst $20                                       ; $4222: $e7
    ld a, [$00e7]                                 ; $4223: $fa $e7 $00
    rst $30                                       ; $4226: $f7
    ld a, [$00f7]                                 ; $4227: $fa $f7 $00
    ld [bc], a                                    ; $422a: $02
    rrca                                          ; $422b: $0f
    ld [bc], a                                    ; $422c: $02
    rra                                           ; $422d: $1f
    ld b, $3f                                     ; $422e: $06 $3f
    dec b                                         ; $4230: $05
    rra                                           ; $4231: $1f
    add e                                         ; $4232: $83
    rla                                           ; $4233: $17
    rra                                           ; $4234: $1f
    jr jr_0e5_4239                                ; $4235: $18 $02

    rrca                                          ; $4237: $0f
    adc h                                         ; $4238: $8c

jr_0e5_4239:
    jr nc, jr_0e5_427a                            ; $4239: $30 $3f

    ld b, b                                       ; $423b: $40
    ld a, a                                       ; $423c: $7f
    ld b, b                                       ; $423d: $40
    ld a, a                                       ; $423e: $7f
    ret nc                                        ; $423f: $d0

    rst $38                                       ; $4240: $ff
    ldh a, [$bf]                                  ; $4241: $f0 $bf
    db $f4                                        ; $4243: $f4
    sbc a                                         ; $4244: $9f
    ld [bc], a                                    ; $4245: $02
    db $10                                        ; $4246: $10
    ld [bc], a                                    ; $4247: $02
    jr c, jr_0e5_4250                             ; $4248: $38 $06

    inc a                                         ; $424a: $3c
    dec b                                         ; $424b: $05

jr_0e5_424c:
    jr c, jr_0e5_41d1                             ; $424c: $38 $83

    jr z, @+$3a                                   ; $424e: $28 $38

jr_0e5_4250:
    jr jr_0e5_4254                                ; $4250: $18 $02

    jr nc, jr_0e5_41ea                            ; $4252: $30 $96

jr_0e5_4254:
    inc c                                         ; $4254: $0c
    inc a                                         ; $4255: $3c
    ld [bc], a                                    ; $4256: $02
    ld a, $02                                     ; $4257: $3e $02
    ld a, $0b                                     ; $4259: $3e $0b
    ccf                                           ; $425b: $3f
    rrca                                          ; $425c: $0f
    dec a                                         ; $425d: $3d
    rrca                                          ; $425e: $0f
    add hl, sp                                    ; $425f: $39
    di                                            ; $4260: $f3
    sbc a                                         ; $4261: $9f
    ldh a, [$9f]                                  ; $4262: $f0 $9f
    rst $28                                       ; $4264: $ef

jr_0e5_4265:
    cp a                                          ; $4265: $bf
    rst $38                                       ; $4266: $ff
    cp a                                          ; $4267: $bf
    ld a, a                                       ; $4268: $7f
    ld e, a                                       ; $4269: $5f
    ld [bc], a                                    ; $426a: $02
    ld a, a                                       ; $426b: $7f
    inc b                                         ; $426c: $04
    ccf                                           ; $426d: $3f
    add d                                         ; $426e: $82
    dec de                                        ; $426f: $1b
    rla                                           ; $4270: $17
    ld [bc], a                                    ; $4271: $02
    rra                                           ; $4272: $1f
    ld [bc], a                                    ; $4273: $02
    ld bc, $000a                                  ; $4274: $01 $0a $00
    adc d                                         ; $4277: $8a
    cpl                                           ; $4278: $2f
    add hl, sp                                    ; $4279: $39

jr_0e5_427a:
    rrca                                          ; $427a: $0f
    add hl, sp                                    ; $427b: $39
    scf                                           ; $427c: $37
    dec a                                         ; $427d: $3d
    ccf                                           ; $427e: $3f
    dec a                                         ; $427f: $3d
    ld a, $3a                                     ; $4280: $3e $3a
    ld [bc], a                                    ; $4282: $02
    inc a                                         ; $4283: $3c
    ld b, $38                                     ; $4284: $06 $38
    add d                                         ; $4286: $82
    jr jr_0e5_42b1                                ; $4287: $18 $28

    ld [bc], a                                    ; $4289: $02
    jr c, @+$0c                                   ; $428a: $38 $0a

    nop                                           ; $428c: $00
    rst $38                                       ; $428d: $ff
    dec c                                         ; $428e: $0d
    inc b                                         ; $428f: $04
    ld sp, hl                                     ; $4290: $f9
    ld [$01f2], sp                                ; $4291: $08 $f2 $01
    rst $20                                       ; $4294: $e7
    ld a, [$00e7]                                 ; $4295: $fa $e7 $00
    rst $30                                       ; $4298: $f7
    ld a, [$00f7]                                 ; $4299: $fa $f7 $00
    ld [bc], a                                    ; $429c: $02
    dec bc                                        ; $429d: $0b
    ld [bc], a                                    ; $429e: $02
    rra                                           ; $429f: $1f
    inc bc                                        ; $42a0: $03
    ccf                                           ; $42a1: $3f
    sbc c                                         ; $42a2: $99
    ld a, $3f                                     ; $42a3: $3e $3f
    inc [hl]                                      ; $42a5: $34
    rra                                           ; $42a6: $1f
    ld e, $1f                                     ; $42a7: $1e $1f
    ld [de], a                                    ; $42a9: $12
    rra                                           ; $42aa: $1f
    ld de, $131f                                  ; $42ab: $11 $1f $13
    rrca                                          ; $42ae: $0f
    inc c                                         ; $42af: $0c
    scf                                           ; $42b0: $37

jr_0e5_42b1:
    ccf                                           ; $42b1: $3f
    ld b, b                                       ; $42b2: $40
    ld a, a                                       ; $42b3: $7f
    ld d, b                                       ; $42b4: $50
    ld a, a                                       ; $42b5: $7f
    ret nc                                        ; $42b6: $d0

    rst $38                                       ; $42b7: $ff
    ldh a, [$bf]                                  ; $42b8: $f0 $bf
    ldh a, [$9f]                                  ; $42ba: $f0 $9f
    ld [bc], a                                    ; $42bc: $02
    jr nc, jr_0e5_42c1                            ; $42bd: $30 $02

    jr c, @+$07                                   ; $42bf: $38 $05

jr_0e5_42c1:
    inc a                                         ; $42c1: $3c
    add c                                         ; $42c2: $81
    inc c                                         ; $42c3: $0c
    inc bc                                        ; $42c4: $03
    jr c, jr_0e5_424c                             ; $42c5: $38 $85

    ld [$0838], sp                                ; $42c7: $08 $38 $08
    jr c, jr_0e5_42d4                             ; $42ca: $38 $08

    ld [bc], a                                    ; $42cc: $02
    jr nc, jr_0e5_4265                            ; $42cd: $30 $96

    inc l                                         ; $42cf: $2c
    inc a                                         ; $42d0: $3c
    ld [bc], a                                    ; $42d1: $02
    ld a, $0a                                     ; $42d2: $3e $0a

jr_0e5_42d4:
    ld a, $0b                                     ; $42d4: $3e $0b
    ccf                                           ; $42d6: $3f
    rrca                                          ; $42d7: $0f
    dec a                                         ; $42d8: $3d
    rrca                                          ; $42d9: $0f
    add hl, sp                                    ; $42da: $39
    ldh a, [$9f]                                  ; $42db: $f0 $9f
    ldh a, [$bf]                                  ; $42dd: $f0 $bf
    ldh a, [$bf]                                  ; $42df: $f0 $bf
    rst $38                                       ; $42e1: $ff
    sbc a                                         ; $42e2: $9f
    ld a, a                                       ; $42e3: $7f

jr_0e5_42e4:
    ld e, a                                       ; $42e4: $5f
    ld [bc], a                                    ; $42e5: $02
    ccf                                           ; $42e6: $3f
    inc b                                         ; $42e7: $04
    rra                                           ; $42e8: $1f
    ld [bc], a                                    ; $42e9: $02
    dec a                                         ; $42ea: $3d
    add d                                         ; $42eb: $82
    ld [hl], h                                    ; $42ec: $74
    ld c, h                                       ; $42ed: $4c
    ld [bc], a                                    ; $42ee: $02
    ld a, h                                       ; $42ef: $7c
    ld a, [bc]                                    ; $42f0: $0a
    nop                                           ; $42f1: $00
    adc d                                         ; $42f2: $8a
    rrca                                          ; $42f3: $0f
    add hl, sp                                    ; $42f4: $39
    rrca                                          ; $42f5: $0f
    dec a                                         ; $42f6: $3d
    rrca                                          ; $42f7: $0f
    dec a                                         ; $42f8: $3d
    ccf                                           ; $42f9: $3f
    add hl, sp                                    ; $42fa: $39
    ld a, $3a                                     ; $42fb: $3e $3a
    ld [bc], a                                    ; $42fd: $02
    inc a                                         ; $42fe: $3c
    inc b                                         ; $42ff: $04
    jr c, jr_0e5_4304                             ; $4300: $38 $02

    inc a                                         ; $4302: $3c
    add d                                         ; $4303: $82

jr_0e5_4304:
    ld l, $32                                     ; $4304: $2e $32
    ld [bc], a                                    ; $4306: $02
    ld a, $0a                                     ; $4307: $3e $0a
    nop                                           ; $4309: $00
    rst $38                                       ; $430a: $ff
    dec c                                         ; $430b: $0d
    inc b                                         ; $430c: $04
    ld sp, hl                                     ; $430d: $f9
    ld [$01f2], sp                                ; $430e: $08 $f2 $01
    rst $20                                       ; $4311: $e7
    ld a, [$00e7]                                 ; $4312: $fa $e7 $00
    rst $30                                       ; $4315: $f7
    ld a, [$00f7]                                 ; $4316: $fa $f7 $00
    ld [bc], a                                    ; $4319: $02
    rla                                           ; $431a: $17
    ld [bc], a                                    ; $431b: $02
    rra                                           ; $431c: $1f
    inc bc                                        ; $431d: $03
    ccf                                           ; $431e: $3f
    sbc c                                         ; $431f: $99
    inc a                                         ; $4320: $3c
    rra                                           ; $4321: $1f
    jr jr_0e5_4343                                ; $4322: $18 $1f

    dec e                                         ; $4324: $1d
    rra                                           ; $4325: $1f
    inc d                                         ; $4326: $14
    rra                                           ; $4327: $1f
    ld [de], a                                    ; $4328: $12
    rra                                           ; $4329: $1f
    inc de                                        ; $432a: $13
    rrca                                          ; $432b: $0f
    ld [$1f17], sp                                ; $432c: $08 $17 $1f
    jr nz, @+$41                                  ; $432f: $20 $3f

    ld b, b                                       ; $4331: $40
    ld a, a                                       ; $4332: $7f
    ld d, b                                       ; $4333: $50
    ld a, a                                       ; $4334: $7f
    sub b                                         ; $4335: $90
    rst $38                                       ; $4336: $ff
    ldh a, [rIE]                                  ; $4337: $f0 $ff
    ld [bc], a                                    ; $4339: $02
    jr nc, jr_0e5_433e                            ; $433a: $30 $02

    jr c, jr_0e5_4343                             ; $433c: $38 $05

jr_0e5_433e:
    inc a                                         ; $433e: $3c
    adc c                                         ; $433f: $89
    inc e                                         ; $4340: $1c
    jr c, jr_0e5_436b                             ; $4341: $38 $28

jr_0e5_4343:
    jr c, jr_0e5_434d                             ; $4343: $38 $08

    jr c, jr_0e5_434f                             ; $4345: $38 $08

    jr c, jr_0e5_4351                             ; $4347: $38 $08

    ld [bc], a                                    ; $4349: $02
    jr c, jr_0e5_42e4                             ; $434a: $38 $98

    inc h                                         ; $434c: $24

jr_0e5_434d:
    inc a                                         ; $434d: $3c
    ld [bc], a                                    ; $434e: $02

jr_0e5_434f:
    ld a, $0a                                     ; $434f: $3e $0a

jr_0e5_4351:
    ld a, $0f                                     ; $4351: $3e $0f
    ccf                                           ; $4353: $3f
    rrca                                          ; $4354: $0f
    add hl, sp                                    ; $4355: $39
    rrca                                          ; $4356: $0f
    add hl, sp                                    ; $4357: $39
    ldh a, [$9f]                                  ; $4358: $f0 $9f
    ldh a, [$9f]                                  ; $435a: $f0 $9f
    ldh a, [$bf]                                  ; $435c: $f0 $bf

jr_0e5_435e:
    rst $38                                       ; $435e: $ff
    sbc a                                         ; $435f: $9f
    rst $38                                       ; $4360: $ff
    adc a                                         ; $4361: $8f
    ld a, a                                       ; $4362: $7f
    ld e, a                                       ; $4363: $5f
    ld [bc], a                                    ; $4364: $02
    ccf                                           ; $4365: $3f
    ld [bc], a                                    ; $4366: $02
    rra                                           ; $4367: $1f
    add d                                         ; $4368: $82
    dec de                                        ; $4369: $1b
    rla                                           ; $436a: $17

jr_0e5_436b:
    ld [bc], a                                    ; $436b: $02
    rra                                           ; $436c: $1f
    ld [bc], a                                    ; $436d: $02
    ld bc, $000a                                  ; $436e: $01 $0a $00
    add [hl]                                      ; $4371: $86
    rrca                                          ; $4372: $0f
    dec a                                         ; $4373: $3d
    rrca                                          ; $4374: $0f
    dec a                                         ; $4375: $3d
    rrca                                          ; $4376: $0f
    add hl, sp                                    ; $4377: $39
    ld [bc], a                                    ; $4378: $02
    ld a, $06                                     ; $4379: $3e $06
    jr c, jr_0e5_4380                             ; $437b: $38 $03

    inc a                                         ; $437d: $3c
    add e                                         ; $437e: $83
    inc h                                         ; $437f: $24

jr_0e5_4380:
    inc e                                         ; $4380: $1c
    inc a                                         ; $4381: $3c
    ld [bc], a                                    ; $4382: $02
    jr c, jr_0e5_438f                             ; $4383: $38 $0a

    nop                                           ; $4385: $00
    rst $38                                       ; $4386: $ff
    dec c                                         ; $4387: $0d
    inc b                                         ; $4388: $04
    ld sp, hl                                     ; $4389: $f9
    ld [$01f2], sp                                ; $438a: $08 $f2 $01
    add sp, -$06                                  ; $438d: $e8 $fa

jr_0e5_438f:
    add sp, $00                                   ; $438f: $e8 $00
    ld hl, sp-$06                                 ; $4391: $f8 $fa
    ld hl, sp+$00                                 ; $4393: $f8 $00
    ld [bc], a                                    ; $4395: $02
    rla                                           ; $4396: $17
    ld [bc], a                                    ; $4397: $02
    rra                                           ; $4398: $1f
    inc bc                                        ; $4399: $03
    ccf                                           ; $439a: $3f
    sbc c                                         ; $439b: $99
    inc a                                         ; $439c: $3c
    rra                                           ; $439d: $1f
    jr jr_0e5_43bf                                ; $439e: $18 $1f

    dec e                                         ; $43a0: $1d
    rra                                           ; $43a1: $1f
    inc d                                         ; $43a2: $14
    rra                                           ; $43a3: $1f
    ld d, $1f                                     ; $43a4: $16 $1f
    inc de                                        ; $43a6: $13
    rrca                                          ; $43a7: $0f
    ld [$3f37], sp                                ; $43a8: $08 $37 $3f
    ld h, b                                       ; $43ab: $60
    ld a, a                                       ; $43ac: $7f
    ld d, b                                       ; $43ad: $50
    ld a, a                                       ; $43ae: $7f
    sub b                                         ; $43af: $90
    rst $38                                       ; $43b0: $ff
    ldh a, [rIE]                                  ; $43b1: $f0 $ff
    ldh a, [$9f]                                  ; $43b3: $f0 $9f
    ld [bc], a                                    ; $43b5: $02
    jr nc, jr_0e5_43ba                            ; $43b6: $30 $02

    jr c, jr_0e5_43bf                             ; $43b8: $38 $05

jr_0e5_43ba:
    inc a                                         ; $43ba: $3c
    adc c                                         ; $43bb: $89
    inc e                                         ; $43bc: $1c

jr_0e5_43bd:
    jr c, @+$2a                                   ; $43bd: $38 $28

jr_0e5_43bf:
    jr c, jr_0e5_43c9                             ; $43bf: $38 $08

    jr c, jr_0e5_43cb                             ; $43c1: $38 $08

    jr c, jr_0e5_43cd                             ; $43c3: $38 $08

    ld [bc], a                                    ; $43c5: $02
    jr nc, jr_0e5_435e                            ; $43c6: $30 $96

    inc l                                         ; $43c8: $2c

jr_0e5_43c9:
    inc a                                         ; $43c9: $3c
    ld [bc], a                                    ; $43ca: $02

jr_0e5_43cb:
    ld a, $0a                                     ; $43cb: $3e $0a

jr_0e5_43cd:
    ld a, $0f                                     ; $43cd: $3e $0f
    ccf                                           ; $43cf: $3f
    rrca                                          ; $43d0: $0f
    dec a                                         ; $43d1: $3d
    rrca                                          ; $43d2: $0f
    add hl, sp                                    ; $43d3: $39
    ldh a, [$9f]                                  ; $43d4: $f0 $9f

jr_0e5_43d6:
    ldh a, [$bf]                                  ; $43d6: $f0 $bf
    ldh a, [$bf]                                  ; $43d8: $f0 $bf
    rst $38                                       ; $43da: $ff
    sbc a                                         ; $43db: $9f
    ld a, a                                       ; $43dc: $7f
    ld e, a                                       ; $43dd: $5f
    inc b                                         ; $43de: $04
    ccf                                           ; $43df: $3f
    ld [bc], a                                    ; $43e0: $02
    dec a                                         ; $43e1: $3d
    ld [bc], a                                    ; $43e2: $02
    dec e                                         ; $43e3: $1d
    ld [bc], a                                    ; $43e4: $02
    ld bc, $000c                                  ; $43e5: $01 $0c $00
    adc b                                         ; $43e8: $88
    rrca                                          ; $43e9: $0f
    dec a                                         ; $43ea: $3d
    rrca                                          ; $43eb: $0f
    dec a                                         ; $43ec: $3d
    rrca                                          ; $43ed: $0f
    dec a                                         ; $43ee: $3d
    ld a, $3a                                     ; $43ef: $3e $3a
    ld [bc], a                                    ; $43f1: $02
    inc a                                         ; $43f2: $3c
    ld [bc], a                                    ; $43f3: $02
    jr c, jr_0e5_43fa                             ; $43f4: $38 $04

    inc a                                         ; $43f6: $3c
    add d                                         ; $43f7: $82
    inc e                                         ; $43f8: $1c
    inc h                                         ; $43f9: $24

jr_0e5_43fa:
    ld [bc], a                                    ; $43fa: $02
    inc a                                         ; $43fb: $3c
    inc c                                         ; $43fc: $0c
    nop                                           ; $43fd: $00
    rst $38                                       ; $43fe: $ff
    dec c                                         ; $43ff: $0d
    inc b                                         ; $4400: $04
    ld sp, hl                                     ; $4401: $f9
    ld [$01f2], sp                                ; $4402: $08 $f2 $01
    rst $20                                       ; $4405: $e7
    ld a, [$00e7]                                 ; $4406: $fa $e7 $00
    rst $30                                       ; $4409: $f7
    ld a, [$00f7]                                 ; $440a: $fa $f7 $00
    ld [bc], a                                    ; $440d: $02
    dec bc                                        ; $440e: $0b
    ld [bc], a                                    ; $440f: $02
    rra                                           ; $4410: $1f
    inc bc                                        ; $4411: $03
    ccf                                           ; $4412: $3f
    sbc c                                         ; $4413: $99
    ld a, $3f                                     ; $4414: $3e $3f
    inc [hl]                                      ; $4416: $34
    rra                                           ; $4417: $1f
    ld e, $1f                                     ; $4418: $1e $1f
    ld [de], a                                    ; $441a: $12
    rra                                           ; $441b: $1f
    ld de, $131f                                  ; $441c: $11 $1f $13
    rrca                                          ; $441f: $0f
    inc c                                         ; $4420: $0c
    scf                                           ; $4421: $37
    ccf                                           ; $4422: $3f
    ld b, b                                       ; $4423: $40
    ld a, a                                       ; $4424: $7f
    ld d, b                                       ; $4425: $50
    ld a, a                                       ; $4426: $7f
    ret nc                                        ; $4427: $d0

    rst $38                                       ; $4428: $ff
    ldh a, [$bf]                                  ; $4429: $f0 $bf
    ldh a, [$9f]                                  ; $442b: $f0 $9f
    ld [bc], a                                    ; $442d: $02
    jr nc, jr_0e5_4432                            ; $442e: $30 $02

    jr c, @+$07                                   ; $4430: $38 $05

jr_0e5_4432:
    inc a                                         ; $4432: $3c
    add c                                         ; $4433: $81
    inc c                                         ; $4434: $0c
    inc bc                                        ; $4435: $03
    jr c, jr_0e5_43bd                             ; $4436: $38 $85

    ld [$0838], sp                                ; $4438: $08 $38 $08
    jr c, jr_0e5_4445                             ; $443b: $38 $08

    ld [bc], a                                    ; $443d: $02
    jr nc, jr_0e5_43d6                            ; $443e: $30 $96

    inc l                                         ; $4440: $2c
    inc a                                         ; $4441: $3c
    ld [bc], a                                    ; $4442: $02
    ld a, $0a                                     ; $4443: $3e $0a

jr_0e5_4445:
    ld a, $0b                                     ; $4445: $3e $0b
    ccf                                           ; $4447: $3f
    rrca                                          ; $4448: $0f
    dec a                                         ; $4449: $3d
    rrca                                          ; $444a: $0f

jr_0e5_444b:
    add hl, sp                                    ; $444b: $39
    ldh a, [$9f]                                  ; $444c: $f0 $9f
    ldh a, [$bf]                                  ; $444e: $f0 $bf
    ldh a, [$bf]                                  ; $4450: $f0 $bf
    rst $38                                       ; $4452: $ff
    sbc a                                         ; $4453: $9f
    ld a, a                                       ; $4454: $7f
    ld e, a                                       ; $4455: $5f
    ld b, $3f                                     ; $4456: $06 $3f
    ld [bc], a                                    ; $4458: $02
    dec a                                         ; $4459: $3d
    add d                                         ; $445a: $82
    dec [hl]                                      ; $445b: $35
    dec a                                         ; $445c: $3d
    ld [bc], a                                    ; $445d: $02
    jr jr_0e5_446a                                ; $445e: $18 $0a

    nop                                           ; $4460: $00
    adc d                                         ; $4461: $8a
    rrca                                          ; $4462: $0f
    add hl, sp                                    ; $4463: $39
    rrca                                          ; $4464: $0f
    dec a                                         ; $4465: $3d
    rrca                                          ; $4466: $0f
    dec a                                         ; $4467: $3d
    ccf                                           ; $4468: $3f
    add hl, sp                                    ; $4469: $39

jr_0e5_446a:
    ld a, $3a                                     ; $446a: $3e $3a
    ld [bc], a                                    ; $446c: $02

jr_0e5_446d:
    inc a                                         ; $446d: $3c
    ld [bc], a                                    ; $446e: $02
    jr c, jr_0e5_4474                             ; $446f: $38 $03

    inc a                                         ; $4471: $3c
    add c                                         ; $4472: $81
    inc h                                         ; $4473: $24

jr_0e5_4474:
    ld [bc], a                                    ; $4474: $02
    inc a                                         ; $4475: $3c
    inc c                                         ; $4476: $0c
    nop                                           ; $4477: $00
    rst $38                                       ; $4478: $ff
    dec c                                         ; $4479: $0d
    inc b                                         ; $447a: $04
    ld sp, hl                                     ; $447b: $f9
    ld [$01f2], sp                                ; $447c: $08 $f2 $01
    rst $20                                       ; $447f: $e7
    ld a, [$00e7]                                 ; $4480: $fa $e7 $00
    rst $30                                       ; $4483: $f7
    ld a, [$00f7]                                 ; $4484: $fa $f7 $00
    ld [bc], a                                    ; $4487: $02
    rlca                                          ; $4488: $07
    ld [bc], a                                    ; $4489: $02
    rra                                           ; $448a: $1f
    dec b                                         ; $448b: $05
    ccf                                           ; $448c: $3f
    sub a                                         ; $448d: $97
    ld a, [hl-]                                   ; $448e: $3a
    rra                                           ; $448f: $1f
    ld d, $1f                                     ; $4490: $16 $1f
    db $10                                        ; $4492: $10
    rra                                           ; $4493: $1f
    ld de, $131f                                  ; $4494: $11 $1f $13
    rra                                           ; $4497: $1f
    inc e                                         ; $4498: $1c
    daa                                           ; $4499: $27
    ccf                                           ; $449a: $3f
    ld b, b                                       ; $449b: $40
    ld a, a                                       ; $449c: $7f
    ld d, b                                       ; $449d: $50
    ld a, a                                       ; $449e: $7f
    ldh a, [rIE]                                  ; $449f: $f0 $ff
    ldh a, [$9f]                                  ; $44a1: $f0 $9f
    ldh a, [$9f]                                  ; $44a3: $f0 $9f
    ld [bc], a                                    ; $44a5: $02
    jr nc, jr_0e5_44aa                            ; $44a6: $30 $02

    jr c, jr_0e5_44ad                             ; $44a8: $38 $03

jr_0e5_44aa:
    inc a                                         ; $44aa: $3c
    add e                                         ; $44ab: $83
    inc e                                         ; $44ac: $1c

jr_0e5_44ad:
    jr c, jr_0e5_44b7                             ; $44ad: $38 $08

    inc bc                                        ; $44af: $03
    jr c, jr_0e5_444b                             ; $44b0: $38 $99

    jr z, @+$3a                                   ; $44b2: $28 $38

    ld [$0838], sp                                ; $44b4: $08 $38 $08

jr_0e5_44b7:
    jr nc, jr_0e5_44c9                            ; $44b7: $30 $10

    jr z, jr_0e5_44f3                             ; $44b9: $28 $38

    inc b                                         ; $44bb: $04
    inc a                                         ; $44bc: $3c
    ld [bc], a                                    ; $44bd: $02
    ld a, $0a                                     ; $44be: $3e $0a
    ld a, $09                                     ; $44c0: $3e $09
    ccf                                           ; $44c2: $3f
    rrca                                          ; $44c3: $0f
    ccf                                           ; $44c4: $3f
    ldh a, [$bf]                                  ; $44c5: $f0 $bf
    ldh a, [$bf]                                  ; $44c7: $f0 $bf

jr_0e5_44c9:
    ldh a, [$9f]                                  ; $44c9: $f0 $9f
    ld [bc], a                                    ; $44cb: $02
    ld a, a                                       ; $44cc: $7f
    ld b, $1f                                     ; $44cd: $06 $1f
    inc bc                                        ; $44cf: $03
    ccf                                           ; $44d0: $3f
    add e                                         ; $44d1: $83
    daa                                           ; $44d2: $27
    dec sp                                        ; $44d3: $3b
    ccf                                           ; $44d4: $3f
    ld [bc], a                                    ; $44d5: $02
    ld e, $0a                                     ; $44d6: $1e $0a
    nop                                           ; $44d8: $00
    adc h                                         ; $44d9: $8c
    rrca                                          ; $44da: $0f
    add hl, sp                                    ; $44db: $39
    rrca                                          ; $44dc: $0f
    add hl, sp                                    ; $44dd: $39
    rrca                                          ; $44de: $0f
    dec a                                         ; $44df: $3d
    ccf                                           ; $44e0: $3f
    add hl, sp                                    ; $44e1: $39
    ccf                                           ; $44e2: $3f
    ld sp, $3a3e                                  ; $44e3: $31 $3e $3a
    ld [bc], a                                    ; $44e6: $02
    inc a                                         ; $44e7: $3c
    ld [bc], a                                    ; $44e8: $02
    jr c, jr_0e5_446d                             ; $44e9: $38 $82

    jr jr_0e5_4515                                ; $44eb: $18 $28

    ld [bc], a                                    ; $44ed: $02
    jr c, jr_0e5_44fc                             ; $44ee: $38 $0c

    nop                                           ; $44f0: $00
    rst $38                                       ; $44f1: $ff
    dec c                                         ; $44f2: $0d

jr_0e5_44f3:
    inc b                                         ; $44f3: $04
    ld sp, hl                                     ; $44f4: $f9
    ld [$01f2], sp                                ; $44f5: $08 $f2 $01
    add sp, -$06                                  ; $44f8: $e8 $fa
    add sp, $00                                   ; $44fa: $e8 $00

jr_0e5_44fc:
    ld hl, sp-$06                                 ; $44fc: $f8 $fa
    ld hl, sp+$00                                 ; $44fe: $f8 $00
    ld [bc], a                                    ; $4500: $02
    rlca                                          ; $4501: $07
    ld [bc], a                                    ; $4502: $02
    rra                                           ; $4503: $1f
    dec b                                         ; $4504: $05
    ccf                                           ; $4505: $3f
    sub a                                         ; $4506: $97
    ld a, [hl-]                                   ; $4507: $3a
    rra                                           ; $4508: $1f
    ld d, $1f                                     ; $4509: $16 $1f
    db $10                                        ; $450b: $10
    rra                                           ; $450c: $1f
    ld de, $131f                                  ; $450d: $11 $1f $13
    rrca                                          ; $4510: $0f
    inc c                                         ; $4511: $0c
    scf                                           ; $4512: $37
    ccf                                           ; $4513: $3f
    ld b, b                                       ; $4514: $40

jr_0e5_4515:
    ld a, a                                       ; $4515: $7f
    ld d, b                                       ; $4516: $50
    ld a, a                                       ; $4517: $7f
    ldh a, [rIE]                                  ; $4518: $f0 $ff
    ldh a, [$bf]                                  ; $451a: $f0 $bf
    ldh a, [$9f]                                  ; $451c: $f0 $9f
    ld [bc], a                                    ; $451e: $02
    jr nc, jr_0e5_4523                            ; $451f: $30 $02

    jr c, jr_0e5_4526                             ; $4521: $38 $03

jr_0e5_4523:
    inc a                                         ; $4523: $3c
    add e                                         ; $4524: $83

jr_0e5_4525:
    inc e                                         ; $4525: $1c

jr_0e5_4526:
    jr c, @+$0a                                   ; $4526: $38 $08

    inc bc                                        ; $4528: $03
    jr c, @-$63                                   ; $4529: $38 $9b

    jr z, jr_0e5_4565                             ; $452b: $28 $38

    jr z, jr_0e5_4567                             ; $452d: $28 $38

    ld [$1030], sp                                ; $452f: $08 $30 $10
    inc l                                         ; $4532: $2c
    inc a                                         ; $4533: $3c
    ld b, $3e                                     ; $4534: $06 $3e
    ld a, [bc]                                    ; $4536: $0a
    ld a, $09                                     ; $4537: $3e $09
    ccf                                           ; $4539: $3f
    rrca                                          ; $453a: $0f
    ccf                                           ; $453b: $3f
    rrca                                          ; $453c: $0f
    add hl, sp                                    ; $453d: $39

jr_0e5_453e:
    ldh a, [$bf]                                  ; $453e: $f0 $bf
    ldh a, [$bf]                                  ; $4540: $f0 $bf
    ldh a, [$bf]                                  ; $4542: $f0 $bf
    ld a, a                                       ; $4544: $7f
    ld e, a                                       ; $4545: $5f
    ld [bc], a                                    ; $4546: $02
    ccf                                           ; $4547: $3f
    ld [bc], a                                    ; $4548: $02
    rra                                           ; $4549: $1f
    ld [bc], a                                    ; $454a: $02
    ccf                                           ; $454b: $3f
    ld [bc], a                                    ; $454c: $02
    ld a, $82                                     ; $454d: $3e $82
    ld a, [hl-]                                   ; $454f: $3a
    ld h, $02                                     ; $4550: $26 $02
    ld a, $0c                                     ; $4552: $3e $0c
    nop                                           ; $4554: $00
    adc d                                         ; $4555: $8a
    rrca                                          ; $4556: $0f
    add hl, sp                                    ; $4557: $39
    rrca                                          ; $4558: $0f
    dec a                                         ; $4559: $3d
    rrca                                          ; $455a: $0f
    dec a                                         ; $455b: $3d
    ccf                                           ; $455c: $3f
    add hl, sp                                    ; $455d: $39
    ld a, $3a                                     ; $455e: $3e $3a
    ld b, $3c                                     ; $4560: $06 $3c
    ld [bc], a                                    ; $4562: $02
    jr c, @+$10                                   ; $4563: $38 $0e

jr_0e5_4565:
    nop                                           ; $4565: $00
    rst $38                                       ; $4566: $ff

jr_0e5_4567:
    dec c                                         ; $4567: $0d
    inc b                                         ; $4568: $04
    ld sp, hl                                     ; $4569: $f9
    ld [$01f2], sp                                ; $456a: $08 $f2 $01
    rst $20                                       ; $456d: $e7
    ld a, [$00e7]                                 ; $456e: $fa $e7 $00
    rst $30                                       ; $4571: $f7
    ld a, [$00f7]                                 ; $4572: $fa $f7 $00
    ld [bc], a                                    ; $4575: $02
    dec bc                                        ; $4576: $0b
    ld [bc], a                                    ; $4577: $02
    rra                                           ; $4578: $1f
    inc bc                                        ; $4579: $03
    ccf                                           ; $457a: $3f
    sbc c                                         ; $457b: $99
    ld a, $3f                                     ; $457c: $3e $3f
    inc [hl]                                      ; $457e: $34
    rra                                           ; $457f: $1f
    ld e, $1f                                     ; $4580: $1e $1f
    ld [de], a                                    ; $4582: $12
    rra                                           ; $4583: $1f
    ld de, $131f                                  ; $4584: $11 $1f $13
    rrca                                          ; $4587: $0f
    inc c                                         ; $4588: $0c
    scf                                           ; $4589: $37
    ccf                                           ; $458a: $3f
    ld b, b                                       ; $458b: $40
    ld a, a                                       ; $458c: $7f
    ld d, b                                       ; $458d: $50
    ld a, a                                       ; $458e: $7f
    ret nc                                        ; $458f: $d0

    rst $38                                       ; $4590: $ff
    ldh a, [$bf]                                  ; $4591: $f0 $bf
    ldh a, [$9f]                                  ; $4593: $f0 $9f
    ld [bc], a                                    ; $4595: $02
    jr nc, jr_0e5_459a                            ; $4596: $30 $02

    jr c, @+$07                                   ; $4598: $38 $05

jr_0e5_459a:
    inc a                                         ; $459a: $3c
    add c                                         ; $459b: $81
    inc c                                         ; $459c: $0c
    inc bc                                        ; $459d: $03
    jr c, jr_0e5_4525                             ; $459e: $38 $85

    ld [$0838], sp                                ; $45a0: $08 $38 $08
    jr c, jr_0e5_45ad                             ; $45a3: $38 $08

    ld [bc], a                                    ; $45a5: $02
    jr nc, jr_0e5_453e                            ; $45a6: $30 $96

jr_0e5_45a8:
    inc l                                         ; $45a8: $2c
    inc a                                         ; $45a9: $3c
    ld [bc], a                                    ; $45aa: $02
    ld a, $0a                                     ; $45ab: $3e $0a

jr_0e5_45ad:
    ld a, $0b                                     ; $45ad: $3e $0b
    ccf                                           ; $45af: $3f
    rrca                                          ; $45b0: $0f
    dec a                                         ; $45b1: $3d
    rrca                                          ; $45b2: $0f
    add hl, sp                                    ; $45b3: $39
    ldh a, [$9f]                                  ; $45b4: $f0 $9f
    ldh a, [$bf]                                  ; $45b6: $f0 $bf
    ldh a, [$bf]                                  ; $45b8: $f0 $bf
    rst $38                                       ; $45ba: $ff
    sbc a                                         ; $45bb: $9f
    ld a, a                                       ; $45bc: $7f
    ld e, a                                       ; $45bd: $5f
    ld [bc], a                                    ; $45be: $02
    ccf                                           ; $45bf: $3f
    ld [bc], a                                    ; $45c0: $02
    rra                                           ; $45c1: $1f
    ld [bc], a                                    ; $45c2: $02
    ccf                                           ; $45c3: $3f
    add d                                         ; $45c4: $82
    ld a, $26                                     ; $45c5: $3e $26
    ld [bc], a                                    ; $45c7: $02
    ld a, $0c                                     ; $45c8: $3e $0c
    nop                                           ; $45ca: $00
    adc d                                         ; $45cb: $8a
    rrca                                          ; $45cc: $0f
    add hl, sp                                    ; $45cd: $39
    rrca                                          ; $45ce: $0f
    dec a                                         ; $45cf: $3d
    rrca                                          ; $45d0: $0f
    dec a                                         ; $45d1: $3d
    ccf                                           ; $45d2: $3f
    add hl, sp                                    ; $45d3: $39
    ld a, $3a                                     ; $45d4: $3e $3a
    ld [$823c], sp                                ; $45d6: $08 $3c $82
    inc l                                         ; $45d9: $2c
    inc a                                         ; $45da: $3c
    ld [bc], a                                    ; $45db: $02
    jr jr_0e5_45e8                                ; $45dc: $18 $0a

    nop                                           ; $45de: $00
    rst $38                                       ; $45df: $ff
    dec c                                         ; $45e0: $0d
    inc b                                         ; $45e1: $04
    ld sp, hl                                     ; $45e2: $f9
    ld [$01f2], sp                                ; $45e3: $08 $f2 $01
    rst $20                                       ; $45e6: $e7
    db $fc                                        ; $45e7: $fc

jr_0e5_45e8:
    add sp, -$02                                  ; $45e8: $e8 $fe
    rst $30                                       ; $45ea: $f7
    ei                                            ; $45eb: $fb
    rst $30                                       ; $45ec: $f7
    nop                                           ; $45ed: $00
    ld [bc], a                                    ; $45ee: $02
    rra                                           ; $45ef: $1f
    ld [bc], a                                    ; $45f0: $02
    ld a, a                                       ; $45f1: $7f
    inc bc                                        ; $45f2: $03
    rst $38                                       ; $45f3: $ff
    adc l                                         ; $45f4: $8d
    ei                                            ; $45f5: $fb
    rst $38                                       ; $45f6: $ff
    ret c                                         ; $45f7: $d8

    rst $38                                       ; $45f8: $ff
    xor $7f                                       ; $45f9: $ee $7f
    ld h, b                                       ; $45fb: $60
    ld a, a                                       ; $45fc: $7f
    ld b, b                                       ; $45fd: $40
    ccf                                           ; $45fe: $3f
    inc hl                                        ; $45ff: $23
    ccf                                           ; $4600: $3f
    ld hl, $3e02                                  ; $4601: $21 $02 $3e
    adc d                                         ; $4604: $8a
    ld d, e                                       ; $4605: $53
    ld a, a                                       ; $4606: $7f
    ld c, c                                       ; $4607: $49
    ld a, a                                       ; $4608: $7f
    ld e, c                                       ; $4609: $59
    ld a, a                                       ; $460a: $7f
    ld a, b                                       ; $460b: $78
    ld l, a                                       ; $460c: $6f
    ld a, h                                       ; $460d: $7c
    ld b, a                                       ; $460e: $47
    inc b                                         ; $460f: $04
    inc bc                                        ; $4610: $03
    ld b, $02                                     ; $4611: $06 $02
    add d                                         ; $4613: $82
    inc bc                                        ; $4614: $03
    ld bc, $0204                                  ; $4615: $01 $04 $02
    ld [$0600], sp                                ; $4618: $08 $00 $06
    ld [bc], a                                    ; $461b: $02
    add d                                         ; $461c: $82
    ld a, [c]                                     ; $461d: $f2
    sbc [hl]                                      ; $461e: $9e
    ld [bc], a                                    ; $461f: $02
    jr nz, jr_0e5_45a8                            ; $4620: $20 $86

    ccf                                           ; $4622: $3f
    ld sp, $181f                                  ; $4623: $31 $1f $18
    rra                                           ; $4626: $1f
    ld e, $02                                     ; $4627: $1e $02
    ccf                                           ; $4629: $3f
    ld [bc], a                                    ; $462a: $02
    ld a, a                                       ; $462b: $7f
    inc bc                                        ; $462c: $03
    rst $38                                       ; $462d: $ff
    add c                                         ; $462e: $81
    cp a                                          ; $462f: $bf
    ld [bc], a                                    ; $4630: $02
    ld a, l                                       ; $4631: $7d
    add d                                         ; $4632: $82
    ld l, $32                                     ; $4633: $2e $32
    ld [bc], a                                    ; $4635: $02
    ld e, $0c                                     ; $4636: $1e $0c
    nop                                           ; $4638: $00
    add c                                         ; $4639: $81
    ld [$1805], sp                                ; $463a: $08 $05 $18
    inc b                                         ; $463d: $04
    inc e                                         ; $463e: $1c
    inc bc                                        ; $463f: $03
    rra                                           ; $4640: $1f
    add e                                         ; $4641: $83
    add hl, de                                    ; $4642: $19
    ld c, $1e                                     ; $4643: $0e $1e
    ld [bc], a                                    ; $4645: $02
    db $10                                        ; $4646: $10
    inc c                                         ; $4647: $0c
    nop                                           ; $4648: $00
    rst $38                                       ; $4649: $ff
    dec c                                         ; $464a: $0d
    inc b                                         ; $464b: $04
    ld sp, hl                                     ; $464c: $f9
    ld [$01f2], sp                                ; $464d: $08 $f2 $01
    add sp, -$04                                  ; $4650: $e8 $fc
    jp hl                                         ; $4652: $e9


    cp $f8                                        ; $4653: $fe $f8
    db $fc                                        ; $4655: $fc
    ld hl, sp-$03                                 ; $4656: $f8 $fd
    ld [bc], a                                    ; $4658: $02
    rra                                           ; $4659: $1f
    ld [bc], a                                    ; $465a: $02
    ld a, a                                       ; $465b: $7f
    inc bc                                        ; $465c: $03
    rst $38                                       ; $465d: $ff
    adc l                                         ; $465e: $8d
    ei                                            ; $465f: $fb
    rst $38                                       ; $4660: $ff
    ret c                                         ; $4661: $d8

    rst $38                                       ; $4662: $ff
    xor $7f                                       ; $4663: $ee $7f
    ld h, b                                       ; $4665: $60
    ld a, a                                       ; $4666: $7f
    ld b, b                                       ; $4667: $40
    ccf                                           ; $4668: $3f
    inc hl                                        ; $4669: $23
    ccf                                           ; $466a: $3f
    ld hl, $3e02                                  ; $466b: $21 $02 $3e
    adc d                                         ; $466e: $8a
    ld d, c                                       ; $466f: $51
    ld a, a                                       ; $4670: $7f
    ld c, c                                       ; $4671: $49
    ld a, a                                       ; $4672: $7f
    ld e, b                                       ; $4673: $58
    ld a, a                                       ; $4674: $7f
    ld a, b                                       ; $4675: $78
    ld l, a                                       ; $4676: $6f
    ld a, b                                       ; $4677: $78
    ld c, a                                       ; $4678: $4f
    inc b                                         ; $4679: $04
    inc bc                                        ; $467a: $03
    ld b, $02                                     ; $467b: $06 $02
    add d                                         ; $467d: $82
    inc bc                                        ; $467e: $03
    ld bc, $0204                                  ; $467f: $01 $04 $02
    ld [$0600], sp                                ; $4682: $08 $00 $06
    ld [bc], a                                    ; $4685: $02
    add d                                         ; $4686: $82
    ld [c], a                                     ; $4687: $e2
    ld a, $02                                     ; $4688: $3e $02
    ld b, b                                       ; $468a: $40
    adc d                                         ; $468b: $8a
    ld a, h                                       ; $468c: $7c
    ld b, a                                       ; $468d: $47
    ccf                                           ; $468e: $3f
    daa                                           ; $468f: $27
    ld a, a                                       ; $4690: $7f
    ld [hl], e                                    ; $4691: $73
    rst $38                                       ; $4692: $ff
    rst $30                                       ; $4693: $f7
    rst $38                                       ; $4694: $ff
    cp a                                          ; $4695: $bf
    ld [bc], a                                    ; $4696: $02
    rst $38                                       ; $4697: $ff
    add h                                         ; $4698: $84
    ld e, a                                       ; $4699: $5f
    ld a, [hl]                                    ; $469a: $7e
    ld a, a                                       ; $469b: $7f
    ld c, a                                       ; $469c: $4f
    ld [bc], a                                    ; $469d: $02
    jr c, @+$10                                   ; $469e: $38 $0e

    nop                                           ; $46a0: $00
    ld b, $01                                     ; $46a1: $06 $01
    ld b, $00                                     ; $46a3: $06 $00
    inc b                                         ; $46a5: $04
    ld bc, $000e                                  ; $46a6: $01 $0e $00
    rst $38                                       ; $46a9: $ff
    dec bc                                        ; $46aa: $0b
    inc bc                                        ; $46ab: $03
    ld sp, hl                                     ; $46ac: $f9
    ld [$01f2], sp                                ; $46ad: $08 $f2 $01
    rst $20                                       ; $46b0: $e7
    db $fc                                        ; $46b1: $fc
    add sp, -$02                                  ; $46b2: $e8 $fe
    rst $30                                       ; $46b4: $f7
    db $fd                                        ; $46b5: $fd
    ld [bc], a                                    ; $46b6: $02
    rra                                           ; $46b7: $1f
    ld [bc], a                                    ; $46b8: $02
    ld a, a                                       ; $46b9: $7f
    inc bc                                        ; $46ba: $03
    rst $38                                       ; $46bb: $ff
    adc l                                         ; $46bc: $8d
    db $fd                                        ; $46bd: $fd
    rst $38                                       ; $46be: $ff
    db $ec                                        ; $46bf: $ec
    rst $38                                       ; $46c0: $ff
    or $7f                                        ; $46c1: $f6 $7f
    ld h, b                                       ; $46c3: $60
    ld a, a                                       ; $46c4: $7f
    ld b, b                                       ; $46c5: $40
    ccf                                           ; $46c6: $3f
    inc hl                                        ; $46c7: $23
    ccf                                           ; $46c8: $3f
    ld hl, $3e02                                  ; $46c9: $21 $02 $3e
    adc d                                         ; $46cc: $8a
    ld d, e                                       ; $46cd: $53
    ld a, a                                       ; $46ce: $7f
    ld c, c                                       ; $46cf: $49
    ld a, a                                       ; $46d0: $7f
    ld a, c                                       ; $46d1: $79
    ld a, a                                       ; $46d2: $7f
    ld a, b                                       ; $46d3: $78
    ld e, a                                       ; $46d4: $5f
    ld a, b                                       ; $46d5: $78
    ld c, a                                       ; $46d6: $4f
    ld [bc], a                                    ; $46d7: $02
    inc bc                                        ; $46d8: $03
    ld [bc], a                                    ; $46d9: $02
    ld [bc], a                                    ; $46da: $02
    ld [bc], a                                    ; $46db: $02
    inc bc                                        ; $46dc: $03
    ld [bc], a                                    ; $46dd: $02
    ld [bc], a                                    ; $46de: $02
    inc bc                                        ; $46df: $03
    inc bc                                        ; $46e0: $03
    add c                                         ; $46e1: $81
    ld bc, $0204                                  ; $46e2: $01 $04 $02
    ld a, [bc]                                    ; $46e5: $0a
    nop                                           ; $46e6: $00
    inc b                                         ; $46e7: $04
    ld [bc], a                                    ; $46e8: $02
    add d                                         ; $46e9: $82
    ld [c], a                                     ; $46ea: $e2
    ld a, $02                                     ; $46eb: $3e $02
    add b                                         ; $46ed: $80
    adc b                                         ; $46ee: $88
    pop af                                        ; $46ef: $f1
    sbc a                                         ; $46f0: $9f
    ld a, c                                       ; $46f1: $79
    ld c, a                                       ; $46f2: $4f
    ld a, [hl]                                    ; $46f3: $7e
    ld c, [hl]                                    ; $46f4: $4e
    rst $38                                       ; $46f5: $ff
    sbc a                                         ; $46f6: $9f
    inc b                                         ; $46f7: $04
    rst $38                                       ; $46f8: $ff
    add [hl]                                      ; $46f9: $86
    rst $18                                       ; $46fa: $df
    rst $38                                       ; $46fb: $ff
    or $fe                                        ; $46fc: $f6 $fe
    rst $38                                       ; $46fe: $ff
    ld sp, hl                                     ; $46ff: $f9
    ld [bc], a                                    ; $4700: $02
    ld b, $0a                                     ; $4701: $06 $0a
    nop                                           ; $4703: $00
    rst $38                                       ; $4704: $ff
    dec c                                         ; $4705: $0d
    inc b                                         ; $4706: $04
    ld sp, hl                                     ; $4707: $f9
    ld [$01f2], sp                                ; $4708: $08 $f2 $01
    rst $20                                       ; $470b: $e7
    db $fc                                        ; $470c: $fc
    add sp, -$02                                  ; $470d: $e8 $fe
    rst $30                                       ; $470f: $f7
    ei                                            ; $4710: $fb
    rst $30                                       ; $4711: $f7
    nop                                           ; $4712: $00
    ld [bc], a                                    ; $4713: $02
    rra                                           ; $4714: $1f
    ld [bc], a                                    ; $4715: $02
    ld a, a                                       ; $4716: $7f
    inc bc                                        ; $4717: $03
    rst $38                                       ; $4718: $ff
    adc l                                         ; $4719: $8d
    db $fd                                        ; $471a: $fd
    rst $38                                       ; $471b: $ff
    or $ff                                        ; $471c: $f6 $ff
    ld a, [$607f]                                 ; $471e: $fa $7f $60
    ld a, a                                       ; $4721: $7f
    ld d, b                                       ; $4722: $50
    ccf                                           ; $4723: $3f
    inc hl                                        ; $4724: $23
    ccf                                           ; $4725: $3f
    ld hl, $3e02                                  ; $4726: $21 $02 $3e
    adc d                                         ; $4729: $8a
    ld d, e                                       ; $472a: $53
    ld a, a                                       ; $472b: $7f
    ld c, c                                       ; $472c: $49
    ld a, a                                       ; $472d: $7f
    ld l, c                                       ; $472e: $69
    ld a, a                                       ; $472f: $7f
    ld a, b                                       ; $4730: $78
    ld e, a                                       ; $4731: $5f
    ld hl, sp-$61                                 ; $4732: $f8 $9f
    ld [bc], a                                    ; $4734: $02
    inc bc                                        ; $4735: $03
    ld [bc], a                                    ; $4736: $02
    ld [bc], a                                    ; $4737: $02
    ld [bc], a                                    ; $4738: $02
    inc bc                                        ; $4739: $03
    ld [bc], a                                    ; $473a: $02
    ld [bc], a                                    ; $473b: $02
    inc bc                                        ; $473c: $03
    inc bc                                        ; $473d: $03
    add c                                         ; $473e: $81
    ld bc, $0204                                  ; $473f: $01 $04 $02
    ld [$0600], sp                                ; $4742: $08 $00 $06
    ld [bc], a                                    ; $4745: $02
    adc h                                         ; $4746: $8c
    ld [c], a                                     ; $4747: $e2
    ld a, [hl]                                    ; $4748: $7e
    ld h, b                                       ; $4749: $60
    ld b, b                                       ; $474a: $40
    ld a, b                                       ; $474b: $78
    ld c, a                                       ; $474c: $4f
    ld a, b                                       ; $474d: $78
    ld c, a                                       ; $474e: $4f
    ld a, a                                       ; $474f: $7f
    ld e, a                                       ; $4750: $5f
    rst $38                                       ; $4751: $ff
    sbc a                                         ; $4752: $9f
    ld b, $7f                                     ; $4753: $06 $7f
    ld [bc], a                                    ; $4755: $02
    ccf                                           ; $4756: $3f
    add d                                         ; $4757: $82
    ld e, $1f                                     ; $4758: $1e $1f
    ld [bc], a                                    ; $475a: $02
    ld bc, $000c                                  ; $475b: $01 $0c $00
    add e                                         ; $475e: $83
    inc c                                         ; $475f: $0c
    inc e                                         ; $4760: $1c
    inc c                                         ; $4761: $0c
    ld [bc], a                                    ; $4762: $02
    inc e                                         ; $4763: $1c
    add c                                         ; $4764: $81
    inc d                                         ; $4765: $14
    inc b                                         ; $4766: $04
    jr jr_0e5_476b                                ; $4767: $18 $02

    inc e                                         ; $4769: $1c
    ld [bc], a                                    ; $476a: $02

jr_0e5_476b:
    rra                                           ; $476b: $1f
    add d                                         ; $476c: $82
    rla                                           ; $476d: $17
    add hl, de                                    ; $476e: $19
    ld [bc], a                                    ; $476f: $02
    ld e, $02                                     ; $4770: $1e $02
    db $10                                        ; $4772: $10
    ld a, [bc]                                    ; $4773: $0a
    nop                                           ; $4774: $00
    rst $38                                       ; $4775: $ff
    dec c                                         ; $4776: $0d
    inc b                                         ; $4777: $04
    ld sp, hl                                     ; $4778: $f9
    ld [$01f2], sp                                ; $4779: $08 $f2 $01
    add sp, -$04                                  ; $477c: $e8 $fc
    jp hl                                         ; $477e: $e9


    cp $f8                                        ; $477f: $fe $f8
    db $fc                                        ; $4781: $fc
    ld hl, sp-$03                                 ; $4782: $f8 $fd
    ld [bc], a                                    ; $4784: $02
    rra                                           ; $4785: $1f
    ld [bc], a                                    ; $4786: $02
    ld a, a                                       ; $4787: $7f
    inc bc                                        ; $4788: $03
    rst $38                                       ; $4789: $ff
    adc l                                         ; $478a: $8d
    db $fd                                        ; $478b: $fd
    rst $38                                       ; $478c: $ff
    or $ff                                        ; $478d: $f6 $ff
    ld a, [$607f]                                 ; $478f: $fa $7f $60
    ld a, a                                       ; $4792: $7f
    ld d, b                                       ; $4793: $50
    ccf                                           ; $4794: $3f
    inc hl                                        ; $4795: $23
    ccf                                           ; $4796: $3f
    ld hl, $3e02                                  ; $4797: $21 $02 $3e
    adc d                                         ; $479a: $8a
    ld d, c                                       ; $479b: $51
    ld a, a                                       ; $479c: $7f
    ld c, c                                       ; $479d: $49
    ld a, a                                       ; $479e: $7f
    ld a, b                                       ; $479f: $78
    ld a, a                                       ; $47a0: $7f
    ld a, b                                       ; $47a1: $78
    ld e, a                                       ; $47a2: $5f
    ld a, b                                       ; $47a3: $78
    ld c, a                                       ; $47a4: $4f
    ld [bc], a                                    ; $47a5: $02
    inc bc                                        ; $47a6: $03
    ld [bc], a                                    ; $47a7: $02
    ld [bc], a                                    ; $47a8: $02
    ld [bc], a                                    ; $47a9: $02
    inc bc                                        ; $47aa: $03
    ld [bc], a                                    ; $47ab: $02
    ld [bc], a                                    ; $47ac: $02
    inc bc                                        ; $47ad: $03
    inc bc                                        ; $47ae: $03
    add c                                         ; $47af: $81
    ld bc, $0204                                  ; $47b0: $01 $04 $02
    ld [$0600], sp                                ; $47b3: $08 $00 $06
    ld [bc], a                                    ; $47b6: $02
    add d                                         ; $47b7: $82
    ld [c], a                                     ; $47b8: $e2
    ld a, $02                                     ; $47b9: $3e $02
    ld b, b                                       ; $47bb: $40
    adc b                                         ; $47bc: $88
    ld a, b                                       ; $47bd: $78
    ld c, a                                       ; $47be: $4f
    ld a, b                                       ; $47bf: $78
    ld c, a                                       ; $47c0: $4f
    ld a, a                                       ; $47c1: $7f
    ld e, a                                       ; $47c2: $5f
    rst $38                                       ; $47c3: $ff
    sbc a                                         ; $47c4: $9f
    ld b, $7f                                     ; $47c5: $06 $7f
    add d                                         ; $47c7: $82
    dec sp                                        ; $47c8: $3b
    inc l                                         ; $47c9: $2c
    ld [bc], a                                    ; $47ca: $02
    ccf                                           ; $47cb: $3f
    ld c, $00                                     ; $47cc: $0e $00
    ld b, $01                                     ; $47ce: $06 $01
    ld [$0400], sp                                ; $47d0: $08 $00 $04
    ld bc, $000c                                  ; $47d3: $01 $0c $00
    rst $38                                       ; $47d6: $ff
    dec c                                         ; $47d7: $0d
    inc b                                         ; $47d8: $04
    ld sp, hl                                     ; $47d9: $f9
    ld [$01f2], sp                                ; $47da: $08 $f2 $01
    rst $20                                       ; $47dd: $e7
    db $fc                                        ; $47de: $fc
    add sp, -$02                                  ; $47df: $e8 $fe
    rst $30                                       ; $47e1: $f7
    db $fc                                        ; $47e2: $fc
    rst $30                                       ; $47e3: $f7
    db $fd                                        ; $47e4: $fd
    ld [bc], a                                    ; $47e5: $02
    rra                                           ; $47e6: $1f
    ld [bc], a                                    ; $47e7: $02
    ld a, a                                       ; $47e8: $7f
    inc bc                                        ; $47e9: $03
    rst $38                                       ; $47ea: $ff
    adc l                                         ; $47eb: $8d
    db $fd                                        ; $47ec: $fd
    rst $38                                       ; $47ed: $ff
    db $ec                                        ; $47ee: $ec
    rst $38                                       ; $47ef: $ff
    or $7f                                        ; $47f0: $f6 $7f
    ld h, b                                       ; $47f2: $60
    ld a, a                                       ; $47f3: $7f
    ld b, b                                       ; $47f4: $40
    ccf                                           ; $47f5: $3f
    inc hl                                        ; $47f6: $23
    ccf                                           ; $47f7: $3f
    ld hl, $3e02                                  ; $47f8: $21 $02 $3e
    adc d                                         ; $47fb: $8a
    ld d, e                                       ; $47fc: $53
    ld a, a                                       ; $47fd: $7f
    ld c, c                                       ; $47fe: $49
    ld a, a                                       ; $47ff: $7f
    ld a, c                                       ; $4800: $79
    ld a, a                                       ; $4801: $7f
    ld a, b                                       ; $4802: $78
    ld e, a                                       ; $4803: $5f
    ld a, b                                       ; $4804: $78
    ld c, a                                       ; $4805: $4f
    ld [bc], a                                    ; $4806: $02
    inc bc                                        ; $4807: $03
    ld [bc], a                                    ; $4808: $02
    ld [bc], a                                    ; $4809: $02
    ld [bc], a                                    ; $480a: $02
    inc bc                                        ; $480b: $03
    ld [bc], a                                    ; $480c: $02
    ld [bc], a                                    ; $480d: $02
    inc bc                                        ; $480e: $03
    inc bc                                        ; $480f: $03
    add c                                         ; $4810: $81
    ld bc, $0204                                  ; $4811: $01 $04 $02
    ld a, [bc]                                    ; $4814: $0a
    nop                                           ; $4815: $00
    inc b                                         ; $4816: $04
    ld [bc], a                                    ; $4817: $02
    add d                                         ; $4818: $82
    ld [c], a                                     ; $4819: $e2
    ld a, $02                                     ; $481a: $3e $02
    ld b, b                                       ; $481c: $40
    adc b                                         ; $481d: $88
    ld a, b                                       ; $481e: $78
    ld c, a                                       ; $481f: $4f
    inc a                                         ; $4820: $3c
    daa                                           ; $4821: $27
    ccf                                           ; $4822: $3f
    daa                                           ; $4823: $27
    ld a, a                                       ; $4824: $7f
    ld c, a                                       ; $4825: $4f
    ld [bc], a                                    ; $4826: $02
    ccf                                           ; $4827: $3f
    ld [bc], a                                    ; $4828: $02
    ld a, a                                       ; $4829: $7f
    inc bc                                        ; $482a: $03
    rst $38                                       ; $482b: $ff
    add e                                         ; $482c: $83
    cp a                                          ; $482d: $bf
    rst $28                                       ; $482e: $ef
    di                                            ; $482f: $f3
    ld [bc], a                                    ; $4830: $02
    ld a, $0c                                     ; $4831: $3e $0c
    nop                                           ; $4833: $00
    inc c                                         ; $4834: $0c
    ld bc, $0002                                  ; $4835: $01 $02 $00
    ld [bc], a                                    ; $4838: $02
    ld bc, $000e                                  ; $4839: $01 $0e $00
    rst $38                                       ; $483c: $ff
    dec c                                         ; $483d: $0d
    inc b                                         ; $483e: $04
    ld sp, hl                                     ; $483f: $f9
    ld [$01f2], sp                                ; $4840: $08 $f2 $01
    and $fa                                       ; $4843: $e6 $fa
    and $01                                       ; $4845: $e6 $01
    or $fb                                        ; $4847: $f6 $fb
    or $ff                                        ; $4849: $f6 $ff
    ld [bc], a                                    ; $484b: $02
    dec bc                                        ; $484c: $0b
    ld [bc], a                                    ; $484d: $02
    rra                                           ; $484e: $1f
    inc bc                                        ; $484f: $03
    ccf                                           ; $4850: $3f
    sbc c                                         ; $4851: $99
    ld a, $3f                                     ; $4852: $3e $3f
    inc [hl]                                      ; $4854: $34
    rra                                           ; $4855: $1f
    ld e, $1f                                     ; $4856: $1e $1f
    ld a, [de]                                    ; $4858: $1a
    rra                                           ; $4859: $1f
    ld de, $131f                                  ; $485a: $11 $1f $13
    rrca                                          ; $485d: $0f
    dec bc                                        ; $485e: $0b
    scf                                           ; $485f: $37
    inc a                                         ; $4860: $3c
    ld l, a                                       ; $4861: $6f
    ld a, a                                       ; $4862: $7f
    ld a, [hl]                                    ; $4863: $7e
    ld [hl], e                                    ; $4864: $73
    cp $c3                                        ; $4865: $fe $c3
    db $fc                                        ; $4867: $fc
    adc a                                         ; $4868: $8f
    ldh a, [$9f]                                  ; $4869: $f0 $9f
    ld [bc], a                                    ; $486b: $02
    ld h, b                                       ; $486c: $60
    ld [bc], a                                    ; $486d: $02
    ld [hl], b                                    ; $486e: $70
    dec b                                         ; $486f: $05
    ld a, b                                       ; $4870: $78
    add c                                         ; $4871: $81
    jr @+$05                                      ; $4872: $18 $03

    ld [hl], b                                    ; $4874: $70
    sbc c                                         ; $4875: $99
    jr nc, jr_0e5_48e8                            ; $4876: $30 $70

    db $10                                        ; $4878: $10
    ld [hl], b                                    ; $4879: $70
    db $10                                        ; $487a: $10
    ld h, b                                       ; $487b: $60
    jr nz, jr_0e5_48d6                            ; $487c: $20 $58

    ld a, b                                       ; $487e: $78
    inc e                                         ; $487f: $1c
    ld a, h                                       ; $4880: $7c
    ld a, $66                                     ; $4881: $3e $66
    ccf                                           ; $4883: $3f
    ld l, c                                       ; $4884: $69
    rra                                           ; $4885: $1f
    ld a, c                                       ; $4886: $79
    ld d, $76                                     ; $4887: $16 $76
    ldh [rIE], a                                  ; $4889: $e0 $ff
    ld b, b                                       ; $488b: $40
    ld a, a                                       ; $488c: $7f
    ld b, b                                       ; $488d: $40
    ld a, a                                       ; $488e: $7f
    ld b, $3f                                     ; $488f: $06 $3f
    ld [bc], a                                    ; $4891: $02
    ld a, a                                       ; $4892: $7f
    ld [bc], a                                    ; $4893: $02
    ld a, l                                       ; $4894: $7d
    ld [bc], a                                    ; $4895: $02
    ld a, c                                       ; $4896: $79
    ld [bc], a                                    ; $4897: $02
    dec a                                         ; $4898: $3d
    add d                                         ; $4899: $82
    ld [hl], l                                    ; $489a: $75
    ld c, l                                       ; $489b: $4d
    ld [bc], a                                    ; $489c: $02
    jr c, jr_0e5_48a7                             ; $489d: $38 $08

    nop                                           ; $489f: $00
    add l                                         ; $48a0: $85
    inc b                                         ; $48a1: $04
    inc c                                         ; $48a2: $0c
    inc b                                         ; $48a3: $04
    inc c                                         ; $48a4: $0c
    inc b                                         ; $48a5: $04
    rlca                                          ; $48a6: $07

jr_0e5_48a7:
    inc c                                         ; $48a7: $0c
    ld b, $0e                                     ; $48a8: $06 $0e
    add d                                         ; $48aa: $82
    rlca                                          ; $48ab: $07
    add hl, bc                                    ; $48ac: $09
    ld [bc], a                                    ; $48ad: $02
    rrca                                          ; $48ae: $0f
    ld a, [bc]                                    ; $48af: $0a
    nop                                           ; $48b0: $00
    rst $38                                       ; $48b1: $ff
    dec c                                         ; $48b2: $0d
    inc b                                         ; $48b3: $04
    ld sp, hl                                     ; $48b4: $f9
    ld [$01f2], sp                                ; $48b5: $08 $f2 $01
    and $f9                                       ; $48b8: $e6 $f9
    and $01                                       ; $48ba: $e6 $01
    or $fc                                        ; $48bc: $f6 $fc
    or $fe                                        ; $48be: $f6 $fe
    ld [bc], a                                    ; $48c0: $02
    dec b                                         ; $48c1: $05
    ld [bc], a                                    ; $48c2: $02
    rrca                                          ; $48c3: $0f
    ld [bc], a                                    ; $48c4: $02
    ld e, a                                       ; $48c5: $5f
    sbc d                                         ; $48c6: $9a
    rst $38                                       ; $48c7: $ff
    cp a                                          ; $48c8: $bf
    rst $38                                       ; $48c9: $ff
    sbc d                                         ; $48ca: $9a
    rst $28                                       ; $48cb: $ef
    xor a                                         ; $48cc: $af
    rst $28                                       ; $48cd: $ef
    xor l                                         ; $48ce: $ad
    rst $38                                       ; $48cf: $ff
    sbc b                                         ; $48d0: $98
    rst $38                                       ; $48d1: $ff
    sbc c                                         ; $48d2: $99
    rst $38                                       ; $48d3: $ff
    adc l                                         ; $48d4: $8d
    ld [hl], e                                    ; $48d5: $73

jr_0e5_48d6:
    ld e, [hl]                                    ; $48d6: $5e
    ld hl, $183f                                  ; $48d7: $21 $3f $18
    rra                                           ; $48da: $1f
    ld [$080f], sp                                ; $48db: $08 $0f $08
    rrca                                          ; $48de: $0f
    ld [$020f], sp                                ; $48df: $08 $0f $02
    ldh [rSC], a                                  ; $48e2: $e0 $02
    ldh a, [rSC]                                  ; $48e4: $f0 $02
    ld hl, sp-$60                                 ; $48e6: $f8 $a0

jr_0e5_48e8:
    ld a, [$ff7a]                                 ; $48e8: $fa $7a $ff
    dec e                                         ; $48eb: $1d
    rst $30                                       ; $48ec: $f7
    ld [hl], c                                    ; $48ed: $71
    rst $30                                       ; $48ee: $f7
    dec [hl]                                      ; $48ef: $35
    rst $30                                       ; $48f0: $f7
    sub l                                         ; $48f1: $95
    rst $38                                       ; $48f2: $ff
    sbc c                                         ; $48f3: $99
    rst $28                                       ; $48f4: $ef
    xor c                                         ; $48f5: $a9
    rst $18                                       ; $48f6: $df
    ld [hl], c                                    ; $48f7: $71
    adc [hl]                                      ; $48f8: $8e
    ld a, [$fc1c]                                 ; $48f9: $fa $1c $fc
    db $10                                        ; $48fc: $10
    ldh a, [rNR10]                                ; $48fd: $f0 $10
    ldh a, [rNR10]                                ; $48ff: $f0 $10
    ldh a, [$80]                                  ; $4901: $f0 $80
    rst $38                                       ; $4903: $ff
    add b                                         ; $4904: $80
    rst $38                                       ; $4905: $ff
    ldh a, [rIE]                                  ; $4906: $f0 $ff
    inc b                                         ; $4908: $04
    ld a, a                                       ; $4909: $7f
    ld [bc], a                                    ; $490a: $02
    rst $38                                       ; $490b: $ff
    ld [bc], a                                    ; $490c: $02
    ei                                            ; $490d: $fb
    ld [bc], a                                    ; $490e: $02
    di                                            ; $490f: $f3
    add [hl]                                      ; $4910: $86
    db $fd                                        ; $4911: $fd
    rst $38                                       ; $4912: $ff
    ld [hl], a                                    ; $4913: $77
    ld a, [hl]                                    ; $4914: $7e
    ld a, c                                       ; $4915: $79
    ld c, c                                       ; $4916: $49
    ld [bc], a                                    ; $4917: $02
    ld [hl], b                                    ; $4918: $70
    ld [$0800], sp                                ; $4919: $08 $00 $08
    ld [bc], a                                    ; $491c: $02
    ld [$0203], sp                                ; $491d: $08 $03 $02
    ld [bc], a                                    ; $4920: $02
    add d                                         ; $4921: $82
    inc bc                                        ; $4922: $03
    ld bc, $0302                                  ; $4923: $01 $02 $03
    ld a, [bc]                                    ; $4926: $0a
    nop                                           ; $4927: $00
    rst $38                                       ; $4928: $ff
    dec c                                         ; $4929: $0d
    inc b                                         ; $492a: $04
    ld sp, hl                                     ; $492b: $f9
    ld [$01f2], sp                                ; $492c: $08 $f2 $01
    and $fa                                       ; $492f: $e6 $fa
    and $00                                       ; $4931: $e6 $00
    or $fa                                        ; $4933: $f6 $fa
    or $02                                        ; $4935: $f6 $02
    ld [bc], a                                    ; $4937: $02
    inc bc                                        ; $4938: $03
    ld [bc], a                                    ; $4939: $02
    rrca                                          ; $493a: $0f
    inc b                                         ; $493b: $04
    rra                                           ; $493c: $1f
    sbc b                                         ; $493d: $98
    ccf                                           ; $493e: $3f
    dec sp                                        ; $493f: $3b
    ld a, a                                       ; $4940: $7f
    ld e, l                                       ; $4941: $5d
    rst $28                                       ; $4942: $ef
    xor h                                         ; $4943: $ac
    rst $38                                       ; $4944: $ff
    sbc b                                         ; $4945: $98
    ld [hl], a                                    ; $4946: $77
    ld d, h                                       ; $4947: $54
    ld [hl], a                                    ; $4948: $77
    ld d, h                                       ; $4949: $54
    ld a, a                                       ; $494a: $7f
    ld c, a                                       ; $494b: $4f
    ld a, b                                       ; $494c: $78
    ld c, a                                       ; $494d: $4f
    ld a, h                                       ; $494e: $7c
    ld b, a                                       ; $494f: $47
    ld a, h                                       ; $4950: $7c
    ld c, a                                       ; $4951: $4f
    jr c, jr_0e5_4993                             ; $4952: $38 $3f

    db $10                                        ; $4954: $10
    rra                                           ; $4955: $1f
    ld [bc], a                                    ; $4956: $02
    jr c, jr_0e5_495d                             ; $4957: $38 $04

    ld a, $9d                                     ; $4959: $3e $9d
    inc a                                         ; $495b: $3c
    inc b                                         ; $495c: $04

jr_0e5_495d:
    inc a                                         ; $495d: $3c
    inc [hl]                                      ; $495e: $34
    ld a, $02                                     ; $495f: $3e $02
    ccf                                           ; $4961: $3f
    dec b                                         ; $4962: $05
    ccf                                           ; $4963: $3f
    dec e                                         ; $4964: $1d
    ld a, $3a                                     ; $4965: $3e $3a
    ld a, $0a                                     ; $4967: $3e $0a
    ld a, $32                                     ; $4969: $3e $32
    inc e                                         ; $496b: $1c
    inc [hl]                                      ; $496c: $34
    ld [$0838], sp                                ; $496d: $08 $38 $08
    jr c, jr_0e5_497a                             ; $4970: $38 $08

    jr c, jr_0e5_497c                             ; $4972: $38 $08

    jr c, jr_0e5_4986                             ; $4974: $38 $10

    rra                                           ; $4976: $1f
    db $10                                        ; $4977: $10
    inc bc                                        ; $4978: $03
    rra                                           ; $4979: $1f

jr_0e5_497a:
    ld [bc], a                                    ; $497a: $02
    ccf                                           ; $497b: $3f

jr_0e5_497c:
    ld [bc], a                                    ; $497c: $02
    rst $38                                       ; $497d: $ff
    ld [bc], a                                    ; $497e: $02
    db $fd                                        ; $497f: $fd
    inc b                                         ; $4980: $04
    ld hl, sp-$7e                                 ; $4981: $f8 $82
    ret c                                         ; $4983: $d8

    add sp, $02                                   ; $4984: $e8 $02

jr_0e5_4986:
    ld a, b                                       ; $4986: $78
    inc c                                         ; $4987: $0c
    nop                                           ; $4988: $00
    add c                                         ; $4989: $81
    jr nz, @+$07                                  ; $498a: $20 $05

    ldh [rSC], a                                  ; $498c: $e0 $02
    ldh a, [rSC]                                  ; $498e: $f0 $02
    ld hl, sp+$02                                 ; $4990: $f8 $02
    db $fc                                        ; $4992: $fc

jr_0e5_4993:
    ld [bc], a                                    ; $4993: $02
    rst $38                                       ; $4994: $ff
    add h                                         ; $4995: $84
    ld [hl], a                                    ; $4996: $77
    ld a, c                                       ; $4997: $79
    ld e, [hl]                                    ; $4998: $5e
    ld a, [hl]                                    ; $4999: $7e
    ld [bc], a                                    ; $499a: $02
    jr nc, jr_0e5_49a9                            ; $499b: $30 $0c

    nop                                           ; $499d: $00
    rst $38                                       ; $499e: $ff
    dec c                                         ; $499f: $0d
    inc b                                         ; $49a0: $04
    ld sp, hl                                     ; $49a1: $f9
    ld [$01f2], sp                                ; $49a2: $08 $f2 $01
    add sp, -$06                                  ; $49a5: $e8 $fa
    add sp, $00                                   ; $49a7: $e8 $00

jr_0e5_49a9:
    ld hl, sp-$05                                 ; $49a9: $f8 $fb
    ld hl, sp+$00                                 ; $49ab: $f8 $00
    ld [bc], a                                    ; $49ad: $02
    inc bc                                        ; $49ae: $03
    ld [bc], a                                    ; $49af: $02
    rrca                                          ; $49b0: $0f
    dec b                                         ; $49b1: $05
    rra                                           ; $49b2: $1f
    sub a                                         ; $49b3: $97
    dec de                                        ; $49b4: $1b
    ld a, a                                       ; $49b5: $7f
    ld a, l                                       ; $49b6: $7d
    rst $38                                       ; $49b7: $ff
    sbc h                                         ; $49b8: $9c
    rst $38                                       ; $49b9: $ff
    cp b                                          ; $49ba: $b8
    rst $30                                       ; $49bb: $f7
    sub h                                         ; $49bc: $94
    ld a, a                                       ; $49bd: $7f
    ld e, h                                       ; $49be: $5c
    ld a, e                                       ; $49bf: $7b
    ld e, a                                       ; $49c0: $5f
    ld a, h                                       ; $49c1: $7c
    ld c, a                                       ; $49c2: $4f
    ld a, h                                       ; $49c3: $7c
    ld b, a                                       ; $49c4: $47
    jr c, jr_0e5_49f6                             ; $49c5: $38 $2f

    db $10                                        ; $49c7: $10
    rra                                           ; $49c8: $1f
    db $10                                        ; $49c9: $10
    rra                                           ; $49ca: $1f
    ld [bc], a                                    ; $49cb: $02
    jr c, jr_0e5_49d2                             ; $49cc: $38 $04

    ld a, $9e                                     ; $49ce: $3e $9e
    inc a                                         ; $49d0: $3c
    inc b                                         ; $49d1: $04

jr_0e5_49d2:
    inc a                                         ; $49d2: $3c
    inc [hl]                                      ; $49d3: $34
    ld a, $02                                     ; $49d4: $3e $02
    ld a, $06                                     ; $49d6: $3e $06
    ccf                                           ; $49d8: $3f
    dec e                                         ; $49d9: $1d
    ccf                                           ; $49da: $3f
    dec a                                         ; $49db: $3d
    ld a, $0a                                     ; $49dc: $3e $0a
    ld a, $32                                     ; $49de: $3e $32
    ld e, $32                                     ; $49e0: $1e $32
    inc c                                         ; $49e2: $0c
    inc a                                         ; $49e3: $3c
    ld [$0838], sp                                ; $49e4: $08 $38 $08
    jr c, jr_0e5_49f1                             ; $49e7: $38 $08

    jr c, @+$22                                   ; $49e9: $38 $20

    ccf                                           ; $49eb: $3f
    jr nz, jr_0e5_4a2d                            ; $49ec: $20 $3f

    ld b, $ff                                     ; $49ee: $06 $ff
    add h                                         ; $49f0: $84

jr_0e5_49f1:
    cp a                                          ; $49f1: $bf
    rst $38                                       ; $49f2: $ff
    ld [hl], e                                    ; $49f3: $73
    ld d, e                                       ; $49f4: $53
    ld [bc], a                                    ; $49f5: $02

jr_0e5_49f6:
    ld [hl], e                                    ; $49f6: $73
    add d                                         ; $49f7: $82
    inc bc                                        ; $49f8: $03
    ld [bc], a                                    ; $49f9: $02
    ld [bc], a                                    ; $49fa: $02
    inc bc                                        ; $49fb: $03
    inc c                                         ; $49fc: $0c
    nop                                           ; $49fd: $00
    add h                                         ; $49fe: $84
    ld [$0818], sp                                ; $49ff: $08 $18 $08
    jr jr_0e5_4a06                                ; $4a02: $18 $02

    db $10                                        ; $4a04: $10
    inc b                                         ; $4a05: $04

jr_0e5_4a06:
    jr jr_0e5_4a0c                                ; $4a06: $18 $04

    inc e                                         ; $4a08: $1c
    ld [bc], a                                    ; $4a09: $02
    ld e, $82                                     ; $4a0a: $1e $82

jr_0e5_4a0c:
    rla                                           ; $4a0c: $17
    add hl, de                                    ; $4a0d: $19
    ld [bc], a                                    ; $4a0e: $02
    rra                                           ; $4a0f: $1f
    inc c                                         ; $4a10: $0c
    nop                                           ; $4a11: $00
    rst $38                                       ; $4a12: $ff
    dec c                                         ; $4a13: $0d
    inc b                                         ; $4a14: $04
    ld sp, hl                                     ; $4a15: $f9
    ld [$01f2], sp                                ; $4a16: $08 $f2 $01
    add sp, -$05                                  ; $4a19: $e8 $fb
    add sp, $01                                   ; $4a1b: $e8 $01
    ld hl, sp-$05                                 ; $4a1d: $f8 $fb
    ld hl, sp-$02                                 ; $4a1f: $f8 $fe
    ld [bc], a                                    ; $4a21: $02
    rlca                                          ; $4a22: $07
    ld [bc], a                                    ; $4a23: $02
    rra                                           ; $4a24: $1f
    ld [bc], a                                    ; $4a25: $02
    ccf                                           ; $4a26: $3f
    sbc d                                         ; $4a27: $9a
    ld a, a                                       ; $4a28: $7f
    ld e, a                                       ; $4a29: $5f
    rst $38                                       ; $4a2a: $ff
    cp e                                          ; $4a2b: $bb
    rst $38                                       ; $4a2c: $ff

jr_0e5_4a2d:
    sbc h                                         ; $4a2d: $9c
    rst $38                                       ; $4a2e: $ff
    sbc b                                         ; $4a2f: $98
    ld a, a                                       ; $4a30: $7f
    ld d, b                                       ; $4a31: $50
    ld a, a                                       ; $4a32: $7f
    ld e, b                                       ; $4a33: $58
    ld a, a                                       ; $4a34: $7f
    ld c, b                                       ; $4a35: $48
    rst $38                                       ; $4a36: $ff
    adc a                                         ; $4a37: $8f
    ld hl, sp-$71                                 ; $4a38: $f8 $8f
    ld a, b                                       ; $4a3a: $78
    ld e, a                                       ; $4a3b: $5f
    jr nc, jr_0e5_4a7d                            ; $4a3c: $30 $3f

    jr nz, jr_0e5_4a7f                            ; $4a3e: $20 $3f

    jr nz, jr_0e5_4a81                            ; $4a40: $20 $3f

    ld [bc], a                                    ; $4a42: $02
    inc [hl]                                      ; $4a43: $34
    ld [bc], a                                    ; $4a44: $02
    jr c, jr_0e5_4a49                             ; $4a45: $38 $02

    inc a                                         ; $4a47: $3c
    sbc h                                         ; $4a48: $9c

jr_0e5_4a49:
    jr c, jr_0e5_4a53                             ; $4a49: $38 $08

    jr c, jr_0e5_4a75                             ; $4a4b: $38 $28

    inc a                                         ; $4a4d: $3c
    inc b                                         ; $4a4e: $04
    ld a, $0e                                     ; $4a4f: $3e $0e
    ccf                                           ; $4a51: $3f
    add hl, sp                                    ; $4a52: $39

jr_0e5_4a53:
    ld a, $3a                                     ; $4a53: $3e $3a
    inc a                                         ; $4a55: $3c

jr_0e5_4a56:
    inc d                                         ; $4a56: $14
    inc a                                         ; $4a57: $3c
    inc h                                         ; $4a58: $24
    jr c, jr_0e5_4a83                             ; $4a59: $38 $28

    db $10                                        ; $4a5b: $10
    jr nc, jr_0e5_4a6e                            ; $4a5c: $30 $10

    jr nc, @+$12                                  ; $4a5e: $30 $10

    jr nc, jr_0e5_4a72                            ; $4a60: $30 $10

    jr nc, jr_0e5_4a84                            ; $4a62: $30 $20

    ccf                                           ; $4a64: $3f
    inc b                                         ; $4a65: $04
    rra                                           ; $4a66: $1f
    inc b                                         ; $4a67: $04
    ccf                                           ; $4a68: $3f
    ld [bc], a                                    ; $4a69: $02
    ld a, a                                       ; $4a6a: $7f
    ld [bc], a                                    ; $4a6b: $02
    cp $84                                        ; $4a6c: $fe $84

jr_0e5_4a6e:
    cp [hl]                                       ; $4a6e: $be
    cp $76                                        ; $4a6f: $fe $76
    ld a, d                                       ; $4a71: $7a

jr_0e5_4a72:
    ld [bc], a                                    ; $4a72: $02
    ld e, $0c                                     ; $4a73: $1e $0c

jr_0e5_4a75:
    nop                                           ; $4a75: $00
    add c                                         ; $4a76: $81
    ld [bc], a                                    ; $4a77: $02
    inc bc                                        ; $4a78: $03
    ld b, $04                                     ; $4a79: $06 $04
    rlca                                          ; $4a7b: $07
    ld [bc], a                                    ; $4a7c: $02

jr_0e5_4a7d:
    ld b, $02                                     ; $4a7d: $06 $02

jr_0e5_4a7f:
    inc b                                         ; $4a7f: $04
    inc d                                         ; $4a80: $14

jr_0e5_4a81:
    nop                                           ; $4a81: $00
    rst $38                                       ; $4a82: $ff

jr_0e5_4a83:
    dec c                                         ; $4a83: $0d

jr_0e5_4a84:
    inc b                                         ; $4a84: $04
    ld sp, hl                                     ; $4a85: $f9
    ld [$01f2], sp                                ; $4a86: $08 $f2 $01
    and $fc                                       ; $4a89: $e6 $fc
    and $02                                       ; $4a8b: $e6 $02
    or $fa                                        ; $4a8d: $f6 $fa
    or $02                                        ; $4a8f: $f6 $02
    ld [bc], a                                    ; $4a91: $02
    rrca                                          ; $4a92: $0f
    ld [bc], a                                    ; $4a93: $02
    ccf                                           ; $4a94: $3f
    inc b                                         ; $4a95: $04
    ld a, a                                       ; $4a96: $7f
    sbc b                                         ; $4a97: $98
    rst $38                                       ; $4a98: $ff
    sbc e                                         ; $4a99: $9b
    rst $38                                       ; $4a9a: $ff
    cp h                                          ; $4a9b: $bc
    rst $38                                       ; $4a9c: $ff
    sub b                                         ; $4a9d: $90
    ld a, a                                       ; $4a9e: $7f
    ld e, c                                       ; $4a9f: $59
    ld a, a                                       ; $4aa0: $7f
    ld d, c                                       ; $4aa1: $51
    rst $38                                       ; $4aa2: $ff
    sub b                                         ; $4aa3: $90
    rst $38                                       ; $4aa4: $ff
    sbc a                                         ; $4aa5: $9f
    pop af                                        ; $4aa6: $f1
    sbc a                                         ; $4aa7: $9f
    pop af                                        ; $4aa8: $f1
    sbc a                                         ; $4aa9: $9f
    ld [hl], c                                    ; $4aaa: $71
    ld a, a                                       ; $4aab: $7f
    ld [hl], b                                    ; $4aac: $70
    ld a, a                                       ; $4aad: $7f
    ld b, b                                       ; $4aae: $40
    ld a, a                                       ; $4aaf: $7f
    ld [bc], a                                    ; $4ab0: $02
    jr z, jr_0e5_4ab5                             ; $4ab1: $28 $02

    jr nc, jr_0e5_4ab7                            ; $4ab3: $30 $02

jr_0e5_4ab5:
    jr c, @-$76                                   ; $4ab5: $38 $88

jr_0e5_4ab7:
    jr nc, @+$12                                  ; $4ab7: $30 $10

    jr nc, @+$12                                  ; $4ab9: $30 $10

    jr c, @+$0a                                   ; $4abb: $38 $08

    jr nc, jr_0e5_4acf                            ; $4abd: $30 $10

    ld [bc], a                                    ; $4abf: $02
    jr nc, jr_0e5_4ac4                            ; $4ac0: $30 $02

    inc h                                         ; $4ac2: $24
    adc d                                         ; $4ac3: $8a

jr_0e5_4ac4:
    ld l, $2a                                     ; $4ac4: $2e $2a
    rra                                           ; $4ac6: $1f
    add hl, de                                    ; $4ac7: $19
    ld a, $26                                     ; $4ac8: $3e $26
    jr c, jr_0e5_4ad4                             ; $4aca: $38 $08

jr_0e5_4acc:
    jr nc, jr_0e5_4ade                            ; $4acc: $30 $10

jr_0e5_4ace:
    ld [bc], a                                    ; $4ace: $02

jr_0e5_4acf:
    jr nc, jr_0e5_4ad3                            ; $4acf: $30 $02

    jr nz, jr_0e5_4a56                            ; $4ad1: $20 $83

jr_0e5_4ad3:
    db $10                                        ; $4ad3: $10

jr_0e5_4ad4:
    rra                                           ; $4ad4: $1f
    db $10                                        ; $4ad5: $10
    dec b                                         ; $4ad6: $05
    rra                                           ; $4ad7: $1f
    ld [bc], a                                    ; $4ad8: $02
    ccf                                           ; $4ad9: $3f
    ld [bc], a                                    ; $4ada: $02
    cp $02                                        ; $4adb: $fe $02
    db $fc                                        ; $4add: $fc

jr_0e5_4ade:
    add c                                         ; $4ade: $81
    cp b                                          ; $4adf: $b8
    inc bc                                        ; $4ae0: $03
    ld hl, sp-$7e                                 ; $4ae1: $f8 $82
    ld e, h                                       ; $4ae3: $5c
    ld l, h                                       ; $4ae4: $6c
    ld [bc], a                                    ; $4ae5: $02
    jr c, @+$0c                                   ; $4ae6: $38 $0a

    nop                                           ; $4ae8: $00
    add h                                         ; $4ae9: $84
    jr nz, jr_0e5_4acc                            ; $4aea: $20 $e0

    jr nz, jr_0e5_4ace                            ; $4aec: $20 $e0

    ld [bc], a                                    ; $4aee: $02
    ldh a, [rSC]                                  ; $4aef: $f0 $02
    ld hl, sp+$02                                 ; $4af1: $f8 $02
    db $fc                                        ; $4af3: $fc
    ld [bc], a                                    ; $4af4: $02
    rst $38                                       ; $4af5: $ff
    add d                                         ; $4af6: $82
    ld a, e                                       ; $4af7: $7b
    ld a, l                                       ; $4af8: $7d
    ld [bc], a                                    ; $4af9: $02
    ld a, [hl]                                    ; $4afa: $7e
    ld [bc], a                                    ; $4afb: $02
    jr nc, jr_0e5_4b0c                            ; $4afc: $30 $0e

    nop                                           ; $4afe: $00
    rst $38                                       ; $4aff: $ff
    dec c                                         ; $4b00: $0d
    inc b                                         ; $4b01: $04
    ld sp, hl                                     ; $4b02: $f9
    ld [$01f2], sp                                ; $4b03: $08 $f2 $01
    add sp, -$05                                  ; $4b06: $e8 $fb
    add sp, $02                                   ; $4b08: $e8 $02
    ld hl, sp-$05                                 ; $4b0a: $f8 $fb

jr_0e5_4b0c:
    ld hl, sp+$00                                 ; $4b0c: $f8 $00
    ld [bc], a                                    ; $4b0e: $02
    rlca                                          ; $4b0f: $07
    ld [bc], a                                    ; $4b10: $02
    rra                                           ; $4b11: $1f
    dec b                                         ; $4b12: $05
    ccf                                           ; $4b13: $3f
    sub a                                         ; $4b14: $97
    dec a                                         ; $4b15: $3d
    ccf                                           ; $4b16: $3f
    ld h, $3f                                     ; $4b17: $26 $3f
    inc h                                         ; $4b19: $24
    ccf                                           ; $4b1a: $3f
    inc l                                         ; $4b1b: $2c
    ccf                                           ; $4b1c: $3f
    jr z, jr_0e5_4b9e                             ; $4b1d: $28 $7f

    ld c, b                                       ; $4b1f: $48
    ld a, a                                       ; $4b20: $7f
    ld c, a                                       ; $4b21: $4f
    ld hl, sp-$71                                 ; $4b22: $f8 $8f
    ld a, b                                       ; $4b24: $78
    ld e, a                                       ; $4b25: $5f
    jr c, @+$41                                   ; $4b26: $38 $3f

    jr c, jr_0e5_4b69                             ; $4b28: $38 $3f

    jr nz, jr_0e5_4b6b                            ; $4b2a: $20 $3f

    ld [bc], a                                    ; $4b2c: $02
    ld l, b                                       ; $4b2d: $68
    ld [bc], a                                    ; $4b2e: $02
    ld [hl], b                                    ; $4b2f: $70
    ld [bc], a                                    ; $4b30: $02
    ld a, b                                       ; $4b31: $78
    adc b                                         ; $4b32: $88
    ld [hl], b                                    ; $4b33: $70
    ld d, b                                       ; $4b34: $50
    ld [hl], b                                    ; $4b35: $70
    ld d, b                                       ; $4b36: $50
    ld a, b                                       ; $4b37: $78
    ld [$1070], sp                                ; $4b38: $08 $70 $10
    ld [bc], a                                    ; $4b3b: $02
    ld [hl], h                                    ; $4b3c: $74
    adc d                                         ; $4b3d: $8a
    ld l, [hl]                                    ; $4b3e: $6e
    ld l, d                                       ; $4b3f: $6a
    ld a, a                                       ; $4b40: $7f
    add hl, sp                                    ; $4b41: $39
    ld a, [hl]                                    ; $4b42: $7e
    ld h, [hl]                                    ; $4b43: $66
    ld a, b                                       ; $4b44: $78
    ld c, b                                       ; $4b45: $48
    ld [hl], b                                    ; $4b46: $70
    ld d, b                                       ; $4b47: $50
    ld [bc], a                                    ; $4b48: $02
    ld [hl], b                                    ; $4b49: $70
    adc b                                         ; $4b4a: $88
    jr nz, @+$62                                  ; $4b4b: $20 $60

    jr nz, @+$62                                  ; $4b4d: $20 $60

    jr nz, jr_0e5_4b90                            ; $4b4f: $20 $3f

    jr nz, jr_0e5_4b92                            ; $4b51: $20 $3f

    ld [bc], a                                    ; $4b53: $02
    rra                                           ; $4b54: $1f
    ld [bc], a                                    ; $4b55: $02
    rst $38                                       ; $4b56: $ff
    add c                                         ; $4b57: $81
    cp a                                          ; $4b58: $bf
    inc bc                                        ; $4b59: $03
    rst $38                                       ; $4b5a: $ff
    add h                                         ; $4b5b: $84
    cp a                                          ; $4b5c: $bf
    rst $38                                       ; $4b5d: $ff
    ld [hl], e                                    ; $4b5e: $73
    ld d, e                                       ; $4b5f: $53
    ld [bc], a                                    ; $4b60: $02
    ld [hl], e                                    ; $4b61: $73
    ld c, $00                                     ; $4b62: $0e $00
    add e                                         ; $4b64: $83
    ld [$0818], sp                                ; $4b65: $08 $18 $08
    dec b                                         ; $4b68: $05

jr_0e5_4b69:
    jr jr_0e5_4b6f                                ; $4b69: $18 $04

jr_0e5_4b6b:
    inc e                                         ; $4b6b: $1c
    ld [bc], a                                    ; $4b6c: $02
    ld e, $82                                     ; $4b6d: $1e $82

jr_0e5_4b6f:
    inc de                                        ; $4b6f: $13
    dec e                                         ; $4b70: $1d
    ld [bc], a                                    ; $4b71: $02
    rra                                           ; $4b72: $1f
    ld c, $00                                     ; $4b73: $0e $00
    rst $38                                       ; $4b75: $ff
    dec c                                         ; $4b76: $0d
    inc b                                         ; $4b77: $04
    ld sp, hl                                     ; $4b78: $f9
    ld [$01f2], sp                                ; $4b79: $08 $f2 $01
    add sp, -$05                                  ; $4b7c: $e8 $fb
    add sp, $01                                   ; $4b7e: $e8 $01
    ld hl, sp-$05                                 ; $4b80: $f8 $fb
    ld hl, sp-$02                                 ; $4b82: $f8 $fe
    ld [bc], a                                    ; $4b84: $02
    rlca                                          ; $4b85: $07
    ld [bc], a                                    ; $4b86: $02
    rra                                           ; $4b87: $1f
    ld [bc], a                                    ; $4b88: $02
    ccf                                           ; $4b89: $3f
    sbc d                                         ; $4b8a: $9a
    ld a, a                                       ; $4b8b: $7f
    ld e, a                                       ; $4b8c: $5f
    rst $38                                       ; $4b8d: $ff
    cp e                                          ; $4b8e: $bb
    rst $38                                       ; $4b8f: $ff

jr_0e5_4b90:
    sbc h                                         ; $4b90: $9c
    rst $38                                       ; $4b91: $ff

jr_0e5_4b92:
    sbc b                                         ; $4b92: $98
    ld a, a                                       ; $4b93: $7f
    ld d, b                                       ; $4b94: $50
    ld a, a                                       ; $4b95: $7f
    ld e, b                                       ; $4b96: $58
    ld a, a                                       ; $4b97: $7f
    ld c, b                                       ; $4b98: $48
    rst $38                                       ; $4b99: $ff
    adc a                                         ; $4b9a: $8f
    ld hl, sp-$71                                 ; $4b9b: $f8 $8f
    ld a, b                                       ; $4b9d: $78

jr_0e5_4b9e:
    ld e, a                                       ; $4b9e: $5f
    jr nc, @+$41                                  ; $4b9f: $30 $3f

    jr nz, jr_0e5_4be2                            ; $4ba1: $20 $3f

    jr nz, jr_0e5_4be4                            ; $4ba3: $20 $3f

    ld [bc], a                                    ; $4ba5: $02
    inc [hl]                                      ; $4ba6: $34
    ld [bc], a                                    ; $4ba7: $02
    jr c, jr_0e5_4bac                             ; $4ba8: $38 $02

    inc a                                         ; $4baa: $3c
    sbc e                                         ; $4bab: $9b

jr_0e5_4bac:
    jr c, jr_0e5_4bb6                             ; $4bac: $38 $08

    jr c, @+$2a                                   ; $4bae: $38 $28

    inc a                                         ; $4bb0: $3c
    inc b                                         ; $4bb1: $04
    ld a, $0e                                     ; $4bb2: $3e $0e
    ccf                                           ; $4bb4: $3f
    add hl, sp                                    ; $4bb5: $39

jr_0e5_4bb6:
    ld a, $3a                                     ; $4bb6: $3e $3a
    inc a                                         ; $4bb8: $3c
    inc d                                         ; $4bb9: $14
    inc a                                         ; $4bba: $3c
    inc h                                         ; $4bbb: $24
    jr c, jr_0e5_4be6                             ; $4bbc: $38 $28

    db $10                                        ; $4bbe: $10
    jr nc, jr_0e5_4bd1                            ; $4bbf: $30 $10

    jr nc, jr_0e5_4bd3                            ; $4bc1: $30 $10

    jr nc, jr_0e5_4bd5                            ; $4bc3: $30 $10

    jr nc, @+$25                                  ; $4bc5: $30 $23

    inc bc                                        ; $4bc7: $03
    ccf                                           ; $4bc8: $3f
    ld [bc], a                                    ; $4bc9: $02
    rra                                           ; $4bca: $1f
    ld [bc], a                                    ; $4bcb: $02
    ccf                                           ; $4bcc: $3f
    ld [bc], a                                    ; $4bcd: $02
    ld a, a                                       ; $4bce: $7f
    add [hl]                                      ; $4bcf: $86
    rst $28                                       ; $4bd0: $ef

jr_0e5_4bd1:
    rst $38                                       ; $4bd1: $ff
    rst $30                                       ; $4bd2: $f7

jr_0e5_4bd3:
    rst $38                                       ; $4bd3: $ff
    ld a, [hl]                                    ; $4bd4: $7e

jr_0e5_4bd5:
    ld a, d                                       ; $4bd5: $7a
    ld [bc], a                                    ; $4bd6: $02
    ld e, $0e                                     ; $4bd7: $1e $0e
    nop                                           ; $4bd9: $00
    ld b, $06                                     ; $4bda: $06 $06
    inc b                                         ; $4bdc: $04
    rlca                                          ; $4bdd: $07
    ld [bc], a                                    ; $4bde: $02
    ld b, $02                                     ; $4bdf: $06 $02
    inc b                                         ; $4be1: $04

jr_0e5_4be2:
    ld [de], a                                    ; $4be2: $12
    nop                                           ; $4be3: $00

jr_0e5_4be4:
    rst $38                                       ; $4be4: $ff
    dec c                                         ; $4be5: $0d

jr_0e5_4be6:
    inc b                                         ; $4be6: $04
    ld sp, hl                                     ; $4be7: $f9
    ld [$01f2], sp                                ; $4be8: $08 $f2 $01
    rst $20                                       ; $4beb: $e7
    ld a, [$00e7]                                 ; $4bec: $fa $e7 $00
    rst $30                                       ; $4bef: $f7
    ld a, [$00f7]                                 ; $4bf0: $fa $f7 $00
    ld [bc], a                                    ; $4bf3: $02
    rrca                                          ; $4bf4: $0f
    dec bc                                        ; $4bf5: $0b
    rra                                           ; $4bf6: $1f
    add l                                         ; $4bf7: $85
    rla                                           ; $4bf8: $17
    rra                                           ; $4bf9: $1f
    inc d                                         ; $4bfa: $14
    rrca                                          ; $4bfb: $0f
    ld [$1f02], sp                                ; $4bfc: $08 $02 $1f
    inc b                                         ; $4bff: $04
    ld a, a                                       ; $4c00: $7f
    inc b                                         ; $4c01: $04
    rst $38                                       ; $4c02: $ff
    add h                                         ; $4c03: $84
    cp a                                          ; $4c04: $bf
    rst $38                                       ; $4c05: $ff
    rst $18                                       ; $4c06: $df
    cp a                                          ; $4c07: $bf
    ld [bc], a                                    ; $4c08: $02
    jr nc, @+$0d                                  ; $4c09: $30 $0b

    jr c, jr_0e5_4b92                             ; $4c0b: $38 $85

    jr z, jr_0e5_4c47                             ; $4c0d: $28 $38

    jr z, jr_0e5_4c41                             ; $4c0f: $28 $30

    db $10                                        ; $4c11: $10
    ld [bc], a                                    ; $4c12: $02
    jr c, jr_0e5_4c19                             ; $4c13: $38 $04

    ld a, $04                                     ; $4c15: $3e $04
    ccf                                           ; $4c17: $3f
    sub [hl]                                      ; $4c18: $96

jr_0e5_4c19:
    dec a                                         ; $4c19: $3d
    ccf                                           ; $4c1a: $3f
    dec sp                                        ; $4c1b: $3b
    dec a                                         ; $4c1c: $3d
    rst $18                                       ; $4c1d: $df
    cp a                                          ; $4c1e: $bf
    rst $38                                       ; $4c1f: $ff
    cp a                                          ; $4c20: $bf
    rst $38                                       ; $4c21: $ff
    cp a                                          ; $4c22: $bf
    or c                                          ; $4c23: $b1
    rst $38                                       ; $4c24: $ff
    ld h, b                                       ; $4c25: $60
    ld a, a                                       ; $4c26: $7f
    inc sp                                        ; $4c27: $33
    ccf                                           ; $4c28: $3f
    daa                                           ; $4c29: $27
    ccf                                           ; $4c2a: $3f
    inc hl                                        ; $4c2b: $23
    ccf                                           ; $4c2c: $3f
    ld d, d                                       ; $4c2d: $52
    ld a, [hl]                                    ; $4c2e: $7e
    ld [bc], a                                    ; $4c2f: $02
    ld a, h                                       ; $4c30: $7c
    ld [bc], a                                    ; $4c31: $02
    inc a                                         ; $4c32: $3c
    ld a, [bc]                                    ; $4c33: $0a
    nop                                           ; $4c34: $00
    sub c                                         ; $4c35: $91
    dec sp                                        ; $4c36: $3b
    dec a                                         ; $4c37: $3d
    ccf                                           ; $4c38: $3f
    dec a                                         ; $4c39: $3d
    ccf                                           ; $4c3a: $3f
    dec a                                         ; $4c3b: $3d
    dec c                                         ; $4c3c: $0d
    ccf                                           ; $4c3d: $3f
    ld b, $3e                                     ; $4c3e: $06 $3e
    inc c                                         ; $4c40: $0c

jr_0e5_4c41:
    inc a                                         ; $4c41: $3c
    inc h                                         ; $4c42: $24
    inc a                                         ; $4c43: $3c
    inc b                                         ; $4c44: $04
    inc a                                         ; $4c45: $3c
    ld a, [hl+]                                   ; $4c46: $2a

jr_0e5_4c47:
    inc bc                                        ; $4c47: $03
    ld a, $02                                     ; $4c48: $3e $02
    inc a                                         ; $4c4a: $3c
    ld a, [bc]                                    ; $4c4b: $0a
    nop                                           ; $4c4c: $00
    rst $38                                       ; $4c4d: $ff
    dec c                                         ; $4c4e: $0d
    inc b                                         ; $4c4f: $04
    ld sp, hl                                     ; $4c50: $f9
    ld [$01f2], sp                                ; $4c51: $08 $f2 $01
    rst $20                                       ; $4c54: $e7
    ld a, [$00e7]                                 ; $4c55: $fa $e7 $00
    rst $30                                       ; $4c58: $f7
    ld a, [$00f7]                                 ; $4c59: $fa $f7 $00
    ld [bc], a                                    ; $4c5c: $02
    rrca                                          ; $4c5d: $0f
    ld a, [bc]                                    ; $4c5e: $0a
    rra                                           ; $4c5f: $1f
    add [hl]                                      ; $4c60: $86
    rla                                           ; $4c61: $17
    rra                                           ; $4c62: $1f
    ld [de], a                                    ; $4c63: $12
    dec e                                         ; $4c64: $1d

jr_0e5_4c65:
    rrca                                          ; $4c65: $0f
    ld [$1f02], sp                                ; $4c66: $08 $02 $1f
    inc b                                         ; $4c69: $04
    ld a, a                                       ; $4c6a: $7f
    ld [bc], a                                    ; $4c6b: $02
    rst $38                                       ; $4c6c: $ff
    add [hl]                                      ; $4c6d: $86
    cp a                                          ; $4c6e: $bf
    rst $38                                       ; $4c6f: $ff
    sbc a                                         ; $4c70: $9f
    rst $38                                       ; $4c71: $ff
    rst $18                                       ; $4c72: $df
    cp a                                          ; $4c73: $bf
    ld [bc], a                                    ; $4c74: $02
    jr nc, jr_0e5_4c82                            ; $4c75: $30 $0b

    jr c, @-$79                                   ; $4c77: $38 $85

    jr z, jr_0e5_4c93                             ; $4c79: $28 $18

    jr z, jr_0e5_4c8d                             ; $4c7b: $28 $10

    jr nc, jr_0e5_4c81                            ; $4c7d: $30 $02

    jr c, jr_0e5_4c83                             ; $4c7f: $38 $02

jr_0e5_4c81:
    inc a                                         ; $4c81: $3c

jr_0e5_4c82:
    inc b                                         ; $4c82: $04

jr_0e5_4c83:
    ld a, $04                                     ; $4c83: $3e $04
    ccf                                           ; $4c85: $3f
    sub c                                         ; $4c86: $91
    dec sp                                        ; $4c87: $3b
    dec a                                         ; $4c88: $3d
    rst $18                                       ; $4c89: $df
    cp a                                          ; $4c8a: $bf
    rst $18                                       ; $4c8b: $df
    cp a                                          ; $4c8c: $bf

jr_0e5_4c8d:
    rst $38                                       ; $4c8d: $ff
    cp a                                          ; $4c8e: $bf
    pop af                                        ; $4c8f: $f1
    cp a                                          ; $4c90: $bf
    ldh a, [$9f]                                  ; $4c91: $f0 $9f

jr_0e5_4c93:
    ld [hl], e                                    ; $4c93: $73
    ld a, a                                       ; $4c94: $7f
    cpl                                           ; $4c95: $2f
    ccf                                           ; $4c96: $3f
    ld a, $03                                     ; $4c97: $3e $03
    ccf                                           ; $4c99: $3f
    ld [bc], a                                    ; $4c9a: $02
    dec e                                         ; $4c9b: $1d
    inc c                                         ; $4c9c: $0c
    nop                                           ; $4c9d: $00
    adc l                                         ; $4c9e: $8d
    dec sp                                        ; $4c9f: $3b
    dec a                                         ; $4ca0: $3d
    ccf                                           ; $4ca1: $3f
    dec a                                         ; $4ca2: $3d
    ld a, [hl-]                                   ; $4ca3: $3a
    ld a, $0e                                     ; $4ca4: $3e $0e
    ld a, $04                                     ; $4ca6: $3e $04
    inc a                                         ; $4ca8: $3c
    inc e                                         ; $4ca9: $1c
    inc a                                         ; $4caa: $3c
    inc b                                         ; $4cab: $04
    inc bc                                        ; $4cac: $03
    inc a                                         ; $4cad: $3c
    add c                                         ; $4cae: $81
    inc h                                         ; $4caf: $24
    dec b                                         ; $4cb0: $05
    inc a                                         ; $4cb1: $3c
    ld a, [bc]                                    ; $4cb2: $0a
    nop                                           ; $4cb3: $00
    rst $38                                       ; $4cb4: $ff
    dec c                                         ; $4cb5: $0d
    inc b                                         ; $4cb6: $04
    ld sp, hl                                     ; $4cb7: $f9
    ld [$01f2], sp                                ; $4cb8: $08 $f2 $01
    add sp, -$06                                  ; $4cbb: $e8 $fa
    add sp, $00                                   ; $4cbd: $e8 $00
    ld hl, sp-$06                                 ; $4cbf: $f8 $fa
    ld hl, sp+$00                                 ; $4cc1: $f8 $00
    ld [bc], a                                    ; $4cc3: $02

jr_0e5_4cc4:
    rrca                                          ; $4cc4: $0f
    ld a, [bc]                                    ; $4cc5: $0a
    rra                                           ; $4cc6: $1f
    add [hl]                                      ; $4cc7: $86
    rla                                           ; $4cc8: $17
    rra                                           ; $4cc9: $1f
    ld [de], a                                    ; $4cca: $12
    dec e                                         ; $4ccb: $1d
    rrca                                          ; $4ccc: $0f
    ld [$1f02], sp                                ; $4ccd: $08 $02 $1f
    ld [bc], a                                    ; $4cd0: $02
    ld a, a                                       ; $4cd1: $7f
    inc b                                         ; $4cd2: $04
    rst $38                                       ; $4cd3: $ff
    add [hl]                                      ; $4cd4: $86
    cp a                                          ; $4cd5: $bf
    rst $38                                       ; $4cd6: $ff
    sbc a                                         ; $4cd7: $9f
    rst $38                                       ; $4cd8: $ff
    rst $18                                       ; $4cd9: $df
    cp a                                          ; $4cda: $bf
    ld [bc], a                                    ; $4cdb: $02
    jr nc, @+$0d                                  ; $4cdc: $30 $0b

    jr c, jr_0e5_4c65                             ; $4cde: $38 $85

    jr z, jr_0e5_4cfa                             ; $4ce0: $28 $18

    jr z, jr_0e5_4cf4                             ; $4ce2: $28 $10

    jr nc, jr_0e5_4ce8                            ; $4ce4: $30 $02

    jr c, jr_0e5_4cec                             ; $4ce6: $38 $04

jr_0e5_4ce8:
    ld a, $06                                     ; $4ce8: $3e $06
    ccf                                           ; $4cea: $3f
    sub b                                         ; $4ceb: $90

jr_0e5_4cec:
    dec sp                                        ; $4cec: $3b
    dec a                                         ; $4ced: $3d
    rst $18                                       ; $4cee: $df
    cp a                                          ; $4cef: $bf
    rst $38                                       ; $4cf0: $ff
    cp a                                          ; $4cf1: $bf
    rst $38                                       ; $4cf2: $ff
    cp a                                          ; $4cf3: $bf

jr_0e5_4cf4:
    and b                                         ; $4cf4: $a0
    rst $38                                       ; $4cf5: $ff
    db $d3                                        ; $4cf6: $d3
    cp a                                          ; $4cf7: $bf
    ld h, a                                       ; $4cf8: $67
    ld a, a                                       ; $4cf9: $7f

jr_0e5_4cfa:
    cpl                                           ; $4cfa: $2f
    ccf                                           ; $4cfb: $3f
    ld [bc], a                                    ; $4cfc: $02
    ld a, $02                                     ; $4cfd: $3e $02
    inc a                                         ; $4cff: $3c
    ld c, $00                                     ; $4d00: $0e $00
    adc l                                         ; $4d02: $8d
    dec sp                                        ; $4d03: $3b
    dec a                                         ; $4d04: $3d
    ccf                                           ; $4d05: $3f
    dec a                                         ; $4d06: $3d
    add hl, sp                                    ; $4d07: $39
    ccf                                           ; $4d08: $3f
    ld c, $3e                                     ; $4d09: $0e $3e
    ld [hl], $3e                                  ; $4d0b: $36 $3e
    inc c                                         ; $4d0d: $0c
    inc a                                         ; $4d0e: $3c
    inc [hl]                                      ; $4d0f: $34
    dec b                                         ; $4d10: $05
    inc a                                         ; $4d11: $3c
    ld [bc], a                                    ; $4d12: $02
    inc e                                         ; $4d13: $1c
    inc c                                         ; $4d14: $0c
    nop                                           ; $4d15: $00
    rst $38                                       ; $4d16: $ff
    dec c                                         ; $4d17: $0d
    inc b                                         ; $4d18: $04
    ld sp, hl                                     ; $4d19: $f9
    ld [$01f2], sp                                ; $4d1a: $08 $f2 $01
    rst $20                                       ; $4d1d: $e7
    ld a, [$00e7]                                 ; $4d1e: $fa $e7 $00
    rst $30                                       ; $4d21: $f7
    ld a, [$00f7]                                 ; $4d22: $fa $f7 $00
    ld [bc], a                                    ; $4d25: $02
    rrca                                          ; $4d26: $0f
    dec bc                                        ; $4d27: $0b

jr_0e5_4d28:
    rra                                           ; $4d28: $1f
    add l                                         ; $4d29: $85
    rla                                           ; $4d2a: $17
    rra                                           ; $4d2b: $1f
    inc d                                         ; $4d2c: $14
    rrca                                          ; $4d2d: $0f
    ld [$1f02], sp                                ; $4d2e: $08 $02 $1f
    inc b                                         ; $4d31: $04
    ld a, a                                       ; $4d32: $7f
    inc b                                         ; $4d33: $04
    rst $38                                       ; $4d34: $ff
    add h                                         ; $4d35: $84
    cp a                                          ; $4d36: $bf
    rst $38                                       ; $4d37: $ff
    rst $18                                       ; $4d38: $df
    cp a                                          ; $4d39: $bf
    ld [bc], a                                    ; $4d3a: $02
    jr nc, @+$0d                                  ; $4d3b: $30 $0b

    jr c, jr_0e5_4cc4                             ; $4d3d: $38 $85

    jr z, jr_0e5_4d79                             ; $4d3f: $28 $38

    jr z, jr_0e5_4d73                             ; $4d41: $28 $30

    db $10                                        ; $4d43: $10
    ld [bc], a                                    ; $4d44: $02
    jr c, jr_0e5_4d4b                             ; $4d45: $38 $04

    ld a, $04                                     ; $4d47: $3e $04
    ccf                                           ; $4d49: $3f
    sub h                                         ; $4d4a: $94

jr_0e5_4d4b:
    dec a                                         ; $4d4b: $3d
    ccf                                           ; $4d4c: $3f
    dec sp                                        ; $4d4d: $3b
    dec a                                         ; $4d4e: $3d
    rst $18                                       ; $4d4f: $df
    cp a                                          ; $4d50: $bf
    rst $38                                       ; $4d51: $ff
    cp a                                          ; $4d52: $bf
    rst $38                                       ; $4d53: $ff
    cp a                                          ; $4d54: $bf
    or e                                          ; $4d55: $b3
    rst $38                                       ; $4d56: $ff
    ld h, b                                       ; $4d57: $60
    ld a, a                                       ; $4d58: $7f
    inc hl                                        ; $4d59: $23
    ccf                                           ; $4d5a: $3f
    daa                                           ; $4d5b: $27
    ccf                                           ; $4d5c: $3f
    inc hl                                        ; $4d5d: $23
    ccf                                           ; $4d5e: $3f
    ld [bc], a                                    ; $4d5f: $02
    inc a                                         ; $4d60: $3c
    add c                                         ; $4d61: $81
    inc h                                         ; $4d62: $24
    inc bc                                        ; $4d63: $03
    inc a                                         ; $4d64: $3c
    ld a, [bc]                                    ; $4d65: $0a
    nop                                           ; $4d66: $00
    adc l                                         ; $4d67: $8d
    dec sp                                        ; $4d68: $3b
    dec a                                         ; $4d69: $3d
    ccf                                           ; $4d6a: $3f
    dec a                                         ; $4d6b: $3d
    ccf                                           ; $4d6c: $3f
    dec a                                         ; $4d6d: $3d
    dec b                                         ; $4d6e: $05
    ccf                                           ; $4d6f: $3f
    ld b, $3e                                     ; $4d70: $06 $3e
    inc c                                         ; $4d72: $0c

jr_0e5_4d73:
    inc a                                         ; $4d73: $3c
    inc h                                         ; $4d74: $24
    rlca                                          ; $4d75: $07
    inc a                                         ; $4d76: $3c
    inc c                                         ; $4d77: $0c
    nop                                           ; $4d78: $00

jr_0e5_4d79:
    rst $38                                       ; $4d79: $ff
    dec c                                         ; $4d7a: $0d
    inc b                                         ; $4d7b: $04
    ld sp, hl                                     ; $4d7c: $f9
    ld [$01f2], sp                                ; $4d7d: $08 $f2 $01
    rst $20                                       ; $4d80: $e7
    ld a, [$00e7]                                 ; $4d81: $fa $e7 $00
    rst $30                                       ; $4d84: $f7
    ld a, [$00f7]                                 ; $4d85: $fa $f7 $00
    ld [bc], a                                    ; $4d88: $02
    rrca                                          ; $4d89: $0f
    dec bc                                        ; $4d8a: $0b
    rra                                           ; $4d8b: $1f
    add l                                         ; $4d8c: $85
    rla                                           ; $4d8d: $17

jr_0e5_4d8e:
    add hl, de                                    ; $4d8e: $19
    ld d, $0b                                     ; $4d8f: $16 $0b
    inc c                                         ; $4d91: $0c
    ld [bc], a                                    ; $4d92: $02
    rra                                           ; $4d93: $1f
    ld [bc], a                                    ; $4d94: $02
    ccf                                           ; $4d95: $3f
    inc b                                         ; $4d96: $04
    ld a, a                                       ; $4d97: $7f
    inc b                                         ; $4d98: $04
    rst $38                                       ; $4d99: $ff
    add d                                         ; $4d9a: $82
    rst $18                                       ; $4d9b: $df
    cp a                                          ; $4d9c: $bf
    ld [bc], a                                    ; $4d9d: $02
    jr nc, @+$0c                                  ; $4d9e: $30 $0a

    jr c, jr_0e5_4d28                             ; $4da0: $38 $86

    jr z, jr_0e5_4ddc                             ; $4da2: $28 $38

    ld [$3038], sp                                ; $4da4: $08 $38 $30
    db $10                                        ; $4da7: $10
    ld [bc], a                                    ; $4da8: $02
    jr c, jr_0e5_4daf                             ; $4da9: $38 $04

    ld a, $02                                     ; $4dab: $3e $02
    ccf                                           ; $4dad: $3f
    sbc b                                         ; $4dae: $98

jr_0e5_4daf:
    dec a                                         ; $4daf: $3d
    ccf                                           ; $4db0: $3f
    add hl, sp                                    ; $4db1: $39
    ccf                                           ; $4db2: $3f
    dec sp                                        ; $4db3: $3b
    dec a                                         ; $4db4: $3d
    rst $18                                       ; $4db5: $df
    cp a                                          ; $4db6: $bf
    rst $38                                       ; $4db7: $ff
    cp a                                          ; $4db8: $bf
    ld e, a                                       ; $4db9: $5f
    ld a, a                                       ; $4dba: $7f
    ld [hl], d                                    ; $4dbb: $72
    ld a, a                                       ; $4dbc: $7f
    jr nz, jr_0e5_4dfe                            ; $4dbd: $20 $3f

    dec sp                                        ; $4dbf: $3b
    ccf                                           ; $4dc0: $3f
    inc hl                                        ; $4dc1: $23
    ccf                                           ; $4dc2: $3f
    dec a                                         ; $4dc3: $3d
    ccf                                           ; $4dc4: $3f
    daa                                           ; $4dc5: $27
    ccf                                           ; $4dc6: $3f
    ld [bc], a                                    ; $4dc7: $02
    ld a, $02                                     ; $4dc8: $3e $02
    inc a                                         ; $4dca: $3c
    ld a, [bc]                                    ; $4dcb: $0a
    nop                                           ; $4dcc: $00
    adc l                                         ; $4dcd: $8d
    dec sp                                        ; $4dce: $3b
    dec a                                         ; $4dcf: $3d
    dec sp                                        ; $4dd0: $3b
    dec a                                         ; $4dd1: $3d
    ccf                                           ; $4dd2: $3f
    dec a                                         ; $4dd3: $3d
    rrca                                          ; $4dd4: $0f
    dec a                                         ; $4dd5: $3d
    rrca                                          ; $4dd6: $0f
    add hl, sp                                    ; $4dd7: $39
    ld c, $3e                                     ; $4dd8: $0e $3e
    inc [hl]                                      ; $4dda: $34
    dec b                                         ; $4ddb: $05

jr_0e5_4ddc:
    inc a                                         ; $4ddc: $3c
    ld [bc], a                                    ; $4ddd: $02
    jr c, jr_0e5_4dec                             ; $4dde: $38 $0c

    nop                                           ; $4de0: $00
    rst $38                                       ; $4de1: $ff
    dec c                                         ; $4de2: $0d
    inc b                                         ; $4de3: $04
    ld sp, hl                                     ; $4de4: $f9
    ld [$01f2], sp                                ; $4de5: $08 $f2 $01
    add sp, -$06                                  ; $4de8: $e8 $fa
    add sp, $00                                   ; $4dea: $e8 $00

jr_0e5_4dec:
    ld hl, sp-$06                                 ; $4dec: $f8 $fa
    ld hl, sp+$00                                 ; $4dee: $f8 $00
    ld [bc], a                                    ; $4df0: $02

jr_0e5_4df1:
    rrca                                          ; $4df1: $0f
    dec bc                                        ; $4df2: $0b
    rra                                           ; $4df3: $1f
    add l                                         ; $4df4: $85
    rla                                           ; $4df5: $17
    add hl, de                                    ; $4df6: $19
    ld d, $0b                                     ; $4df7: $16 $0b
    inc c                                         ; $4df9: $0c
    ld [bc], a                                    ; $4dfa: $02
    rra                                           ; $4dfb: $1f
    inc b                                         ; $4dfc: $04
    ld a, a                                       ; $4dfd: $7f

jr_0e5_4dfe:
    ld b, $ff                                     ; $4dfe: $06 $ff
    add d                                         ; $4e00: $82
    rst $18                                       ; $4e01: $df
    cp a                                          ; $4e02: $bf
    ld [bc], a                                    ; $4e03: $02
    jr nc, @+$0c                                  ; $4e04: $30 $0a

    jr c, jr_0e5_4d8e                             ; $4e06: $38 $86

    jr z, @+$3a                                   ; $4e08: $28 $38

    ld [$3038], sp                                ; $4e0a: $08 $38 $30
    db $10                                        ; $4e0d: $10
    ld [bc], a                                    ; $4e0e: $02
    jr c, jr_0e5_4e13                             ; $4e0f: $38 $02

    ld a, $04                                     ; $4e11: $3e $04

jr_0e5_4e13:
    ccf                                           ; $4e13: $3f
    sub h                                         ; $4e14: $94
    dec a                                         ; $4e15: $3d
    ccf                                           ; $4e16: $3f
    add hl, sp                                    ; $4e17: $39
    ccf                                           ; $4e18: $3f
    dec sp                                        ; $4e19: $3b
    dec a                                         ; $4e1a: $3d
    rst $18                                       ; $4e1b: $df
    cp a                                          ; $4e1c: $bf
    rst $38                                       ; $4e1d: $ff
    cp a                                          ; $4e1e: $bf
    sbc a                                         ; $4e1f: $9f
    rst $38                                       ; $4e20: $ff
    ld [hl], b                                    ; $4e21: $70
    ld a, a                                       ; $4e22: $7f
    ld l, a                                       ; $4e23: $6f
    ld a, a                                       ; $4e24: $7f
    inc sp                                        ; $4e25: $33
    ccf                                           ; $4e26: $3f
    cpl                                           ; $4e27: $2f
    ccf                                           ; $4e28: $3f
    ld [bc], a                                    ; $4e29: $02
    dec a                                         ; $4e2a: $3d
    ld [bc], a                                    ; $4e2b: $02
    inc a                                         ; $4e2c: $3c
    ld [bc], a                                    ; $4e2d: $02
    jr c, jr_0e5_4e3c                             ; $4e2e: $38 $0c

    nop                                           ; $4e30: $00
    adc l                                         ; $4e31: $8d
    dec sp                                        ; $4e32: $3b
    dec a                                         ; $4e33: $3d
    ccf                                           ; $4e34: $3f
    dec a                                         ; $4e35: $3d
    ccf                                           ; $4e36: $3f
    dec a                                         ; $4e37: $3d
    dec b                                         ; $4e38: $05
    ccf                                           ; $4e39: $3f
    dec bc                                        ; $4e3a: $0b
    dec a                                         ; $4e3b: $3d

jr_0e5_4e3c:
    ld h, $3e                                     ; $4e3c: $26 $3e
    inc [hl]                                      ; $4e3e: $34
    dec b                                         ; $4e3f: $05
    inc a                                         ; $4e40: $3c
    ld c, $00                                     ; $4e41: $0e $00
    rst $38                                       ; $4e43: $ff
    dec c                                         ; $4e44: $0d
    inc b                                         ; $4e45: $04
    ld sp, hl                                     ; $4e46: $f9
    ld [$01f2], sp                                ; $4e47: $08 $f2 $01
    rst $20                                       ; $4e4a: $e7
    ld a, [$00e7]                                 ; $4e4b: $fa $e7 $00
    rst $30                                       ; $4e4e: $f7
    ld a, [$00f7]                                 ; $4e4f: $fa $f7 $00
    ld [bc], a                                    ; $4e52: $02
    rrca                                          ; $4e53: $0f
    dec bc                                        ; $4e54: $0b
    rra                                           ; $4e55: $1f
    add l                                         ; $4e56: $85
    rla                                           ; $4e57: $17
    rra                                           ; $4e58: $1f
    inc d                                         ; $4e59: $14
    rrca                                          ; $4e5a: $0f
    ld [$1f02], sp                                ; $4e5b: $08 $02 $1f
    inc b                                         ; $4e5e: $04

jr_0e5_4e5f:
    ld a, a                                       ; $4e5f: $7f
    inc b                                         ; $4e60: $04
    rst $38                                       ; $4e61: $ff
    add h                                         ; $4e62: $84
    cp a                                          ; $4e63: $bf
    rst $38                                       ; $4e64: $ff
    rst $18                                       ; $4e65: $df
    cp a                                          ; $4e66: $bf
    ld [bc], a                                    ; $4e67: $02
    jr nc, @+$0d                                  ; $4e68: $30 $0b

    jr c, jr_0e5_4df1                             ; $4e6a: $38 $85

    jr z, jr_0e5_4ea6                             ; $4e6c: $28 $38

    jr z, jr_0e5_4ea0                             ; $4e6e: $28 $30

    db $10                                        ; $4e70: $10
    ld [bc], a                                    ; $4e71: $02
    jr c, jr_0e5_4e78                             ; $4e72: $38 $04

    ld a, $04                                     ; $4e74: $3e $04
    ccf                                           ; $4e76: $3f
    sub c                                         ; $4e77: $91

jr_0e5_4e78:
    dec a                                         ; $4e78: $3d
    ccf                                           ; $4e79: $3f
    dec sp                                        ; $4e7a: $3b
    dec a                                         ; $4e7b: $3d
    rst $18                                       ; $4e7c: $df
    cp a                                          ; $4e7d: $bf
    rst $38                                       ; $4e7e: $ff
    cp a                                          ; $4e7f: $bf
    rst $38                                       ; $4e80: $ff
    cp a                                          ; $4e81: $bf
    and e                                         ; $4e82: $a3
    rst $38                                       ; $4e83: $ff
    ld h, b                                       ; $4e84: $60
    ld a, a                                       ; $4e85: $7f
    inc sp                                        ; $4e86: $33
    ccf                                           ; $4e87: $3f
    daa                                           ; $4e88: $27
    inc bc                                        ; $4e89: $03
    ccf                                           ; $4e8a: $3f
    inc b                                         ; $4e8b: $04
    inc a                                         ; $4e8c: $3c
    inc c                                         ; $4e8d: $0c
    nop                                           ; $4e8e: $00
    adc a                                         ; $4e8f: $8f
    dec sp                                        ; $4e90: $3b
    dec a                                         ; $4e91: $3d
    ccf                                           ; $4e92: $3f
    dec a                                         ; $4e93: $3d
    ccf                                           ; $4e94: $3f
    dec a                                         ; $4e95: $3d
    dec c                                         ; $4e96: $0d
    ccf                                           ; $4e97: $3f
    ld b, $3e                                     ; $4e98: $06 $3e
    inc b                                         ; $4e9a: $04
    inc a                                         ; $4e9b: $3c
    inc h                                         ; $4e9c: $24
    inc a                                         ; $4e9d: $3c
    inc b                                         ; $4e9e: $04
    inc bc                                        ; $4e9f: $03

jr_0e5_4ea0:
    inc a                                         ; $4ea0: $3c
    add c                                         ; $4ea1: $81
    inc h                                         ; $4ea2: $24
    inc bc                                        ; $4ea3: $03
    inc a                                         ; $4ea4: $3c
    ld a, [bc]                                    ; $4ea5: $0a

jr_0e5_4ea6:
    nop                                           ; $4ea6: $00
    rst $38                                       ; $4ea7: $ff
    dec c                                         ; $4ea8: $0d
    inc b                                         ; $4ea9: $04
    ld sp, hl                                     ; $4eaa: $f9
    ld [$01f2], sp                                ; $4eab: $08 $f2 $01
    rst $20                                       ; $4eae: $e7
    ld a, [$00e7]                                 ; $4eaf: $fa $e7 $00
    rst $30                                       ; $4eb2: $f7
    ld a, [$00f7]                                 ; $4eb3: $fa $f7 $00
    ld [bc], a                                    ; $4eb6: $02
    rrca                                          ; $4eb7: $0f
    inc bc                                        ; $4eb8: $03
    rra                                           ; $4eb9: $1f
    adc a                                         ; $4eba: $8f
    dec de                                        ; $4ebb: $1b
    rra                                           ; $4ebc: $1f
    db $10                                        ; $4ebd: $10
    rra                                           ; $4ebe: $1f
    db $10                                        ; $4ebf: $10
    rra                                           ; $4ec0: $1f
    inc e                                         ; $4ec1: $1c
    rra                                           ; $4ec2: $1f
    db $10                                        ; $4ec3: $10
    rra                                           ; $4ec4: $1f
    ld de, $131f                                  ; $4ec5: $11 $1f $13
    rrca                                          ; $4ec8: $0f
    ld [$3f02], sp                                ; $4ec9: $08 $02 $3f
    inc b                                         ; $4ecc: $04
    ld a, a                                       ; $4ecd: $7f
    ld [bc], a                                    ; $4ece: $02
    rst $38                                       ; $4ecf: $ff
    add h                                         ; $4ed0: $84
    cp a                                          ; $4ed1: $bf
    rst $18                                       ; $4ed2: $df
    cp a                                          ; $4ed3: $bf
    rst $18                                       ; $4ed4: $df
    ld [bc], a                                    ; $4ed5: $02
    jr nc, @+$05                                  ; $4ed6: $30 $03

    jr c, jr_0e5_4e5f                             ; $4ed8: $38 $85

    jr jr_0e5_4f14                                ; $4eda: $18 $38

jr_0e5_4edc:
    ld [$0838], sp                                ; $4edc: $08 $38 $08
    inc bc                                        ; $4edf: $03
    jr c, @-$77                                   ; $4ee0: $38 $87

    ld [$0838], sp                                ; $4ee2: $08 $38 $08
    jr c, jr_0e5_4eef                             ; $4ee5: $38 $08

    jr nc, jr_0e5_4ef9                            ; $4ee7: $30 $10

    ld [bc], a                                    ; $4ee9: $02
    inc a                                         ; $4eea: $3c
    inc b                                         ; $4eeb: $04
    ld a, $02                                     ; $4eec: $3e $02
    ccf                                           ; $4eee: $3f

jr_0e5_4eef:
    sub a                                         ; $4eef: $97
    dec a                                         ; $4ef0: $3d
    dec sp                                        ; $4ef1: $3b
    dec a                                         ; $4ef2: $3d
    dec sp                                        ; $4ef3: $3b
    rst $18                                       ; $4ef4: $df
    cp a                                          ; $4ef5: $bf
    rst $38                                       ; $4ef6: $ff
    cp a                                          ; $4ef7: $bf
    rst $38                                       ; $4ef8: $ff

jr_0e5_4ef9:
    cp a                                          ; $4ef9: $bf
    ret nc                                        ; $4efa: $d0

    cp a                                          ; $4efb: $bf
    rst $10                                       ; $4efc: $d7
    cp a                                          ; $4efd: $bf
    ld [hl], e                                    ; $4efe: $73
    ld a, a                                       ; $4eff: $7f
    daa                                           ; $4f00: $27
    ccf                                           ; $4f01: $3f
    inc hl                                        ; $4f02: $23
    ccf                                           ; $4f03: $3f
    dec [hl]                                      ; $4f04: $35
    dec a                                         ; $4f05: $3d
    ld c, h                                       ; $4f06: $4c
    inc bc                                        ; $4f07: $03
    ld a, h                                       ; $4f08: $7c
    ld a, [bc]                                    ; $4f09: $0a
    nop                                           ; $4f0a: $00
    sub e                                         ; $4f0b: $93
    dec sp                                        ; $4f0c: $3b
    dec a                                         ; $4f0d: $3d
    ccf                                           ; $4f0e: $3f
    dec a                                         ; $4f0f: $3d
    ccf                                           ; $4f10: $3f
    dec a                                         ; $4f11: $3d
    dec bc                                        ; $4f12: $0b
    dec a                                         ; $4f13: $3d

jr_0e5_4f14:
    dec bc                                        ; $4f14: $0b
    dec a                                         ; $4f15: $3d
    ld l, $3e                                     ; $4f16: $2e $3e
    inc h                                         ; $4f18: $24
    inc a                                         ; $4f19: $3c
    inc b                                         ; $4f1a: $04
    inc a                                         ; $4f1b: $3c
    inc l                                         ; $4f1c: $2c
    inc a                                         ; $4f1d: $3c
    ld [hl-], a                                   ; $4f1e: $32
    inc bc                                        ; $4f1f: $03
    ld a, $0a                                     ; $4f20: $3e $0a
    nop                                           ; $4f22: $00
    rst $38                                       ; $4f23: $ff
    dec c                                         ; $4f24: $0d
    inc b                                         ; $4f25: $04
    ld sp, hl                                     ; $4f26: $f9
    ld [$01f2], sp                                ; $4f27: $08 $f2 $01
    rst $20                                       ; $4f2a: $e7
    ld a, [$00e7]                                 ; $4f2b: $fa $e7 $00
    rst $30                                       ; $4f2e: $f7
    ld a, [$00f7]                                 ; $4f2f: $fa $f7 $00
    ld [bc], a                                    ; $4f32: $02
    rrca                                          ; $4f33: $0f
    inc bc                                        ; $4f34: $03
    rra                                           ; $4f35: $1f
    adc a                                         ; $4f36: $8f
    ld d, $1f                                     ; $4f37: $16 $1f
    db $10                                        ; $4f39: $10
    rra                                           ; $4f3a: $1f
    db $10                                        ; $4f3b: $10
    dec de                                        ; $4f3c: $1b
    dec e                                         ; $4f3d: $1d
    rra                                           ; $4f3e: $1f
    db $10                                        ; $4f3f: $10
    rra                                           ; $4f40: $1f
    ld [de], a                                    ; $4f41: $12
    rra                                           ; $4f42: $1f
    inc de                                        ; $4f43: $13
    rrca                                          ; $4f44: $0f
    ld [$1f02], sp                                ; $4f45: $08 $02 $1f
    ld [bc], a                                    ; $4f48: $02
    ccf                                           ; $4f49: $3f
    inc b                                         ; $4f4a: $04
    ld a, a                                       ; $4f4b: $7f
    add h                                         ; $4f4c: $84
    cp a                                          ; $4f4d: $bf
    rst $38                                       ; $4f4e: $ff
    rst $18                                       ; $4f4f: $df
    cp a                                          ; $4f50: $bf
    ld [bc], a                                    ; $4f51: $02
    jr nc, @+$05                                  ; $4f52: $30 $03

    jr c, jr_0e5_4edc                             ; $4f54: $38 $86

    jr jr_0e5_4f80                                ; $4f56: $18 $28

jr_0e5_4f58:
    jr jr_0e5_4f92                                ; $4f58: $18 $38

    ld [$0228], sp                                ; $4f5a: $08 $28 $02
    jr c, @-$77                                   ; $4f5d: $38 $87

    ld [$0838], sp                                ; $4f5f: $08 $38 $08

jr_0e5_4f62:
    jr c, jr_0e5_4f6c                             ; $4f62: $38 $08

    jr nc, jr_0e5_4f76                            ; $4f64: $30 $10

    ld [bc], a                                    ; $4f66: $02
    inc a                                         ; $4f67: $3c
    inc b                                         ; $4f68: $04
    ld a, $93                                     ; $4f69: $3e $93
    dec a                                         ; $4f6b: $3d

jr_0e5_4f6c:
    ccf                                           ; $4f6c: $3f
    dec a                                         ; $4f6d: $3d
    dec sp                                        ; $4f6e: $3b
    add hl, sp                                    ; $4f6f: $39
    ccf                                           ; $4f70: $3f
    rst $18                                       ; $4f71: $df
    cp a                                          ; $4f72: $bf
    rst $18                                       ; $4f73: $df
    cp a                                          ; $4f74: $bf
    rst $38                                       ; $4f75: $ff

jr_0e5_4f76:
    cp a                                          ; $4f76: $bf
    ret nc                                        ; $4f77: $d0

    cp a                                          ; $4f78: $bf
    ld l, a                                       ; $4f79: $6f
    ld e, a                                       ; $4f7a: $5f
    ld l, e                                       ; $4f7b: $6b
    ld e, a                                       ; $4f7c: $5f
    scf                                           ; $4f7d: $37
    inc bc                                        ; $4f7e: $03
    ccf                                           ; $4f7f: $3f

jr_0e5_4f80:
    add d                                         ; $4f80: $82
    rla                                           ; $4f81: $17
    rra                                           ; $4f82: $1f
    ld [bc], a                                    ; $4f83: $02
    ld e, $0c                                     ; $4f84: $1e $0c
    nop                                           ; $4f86: $00
    sub c                                         ; $4f87: $91
    dec sp                                        ; $4f88: $3b
    dec a                                         ; $4f89: $3d
    ccf                                           ; $4f8a: $3f
    dec a                                         ; $4f8b: $3d
    ccf                                           ; $4f8c: $3f
    dec a                                         ; $4f8d: $3d
    rrca                                          ; $4f8e: $0f
    dec a                                         ; $4f8f: $3d
    ld c, $3e                                     ; $4f90: $0e $3e

jr_0e5_4f92:
    inc h                                         ; $4f92: $24
    inc a                                         ; $4f93: $3c
    inc b                                         ; $4f94: $04
    inc a                                         ; $4f95: $3c
    inc e                                         ; $4f96: $1c
    inc a                                         ; $4f97: $3c
    ld [hl-], a                                   ; $4f98: $32
    inc bc                                        ; $4f99: $03
    ld a, $02                                     ; $4f9a: $3e $02
    inc a                                         ; $4f9c: $3c
    ld a, [bc]                                    ; $4f9d: $0a
    nop                                           ; $4f9e: $00
    rst $38                                       ; $4f9f: $ff
    dec c                                         ; $4fa0: $0d
    inc b                                         ; $4fa1: $04
    ld sp, hl                                     ; $4fa2: $f9
    ld [$01f2], sp                                ; $4fa3: $08 $f2 $01
    add sp, -$06                                  ; $4fa6: $e8 $fa
    add sp, $00                                   ; $4fa8: $e8 $00
    ld hl, sp-$06                                 ; $4faa: $f8 $fa
    ld hl, sp+$00                                 ; $4fac: $f8 $00
    ld [bc], a                                    ; $4fae: $02
    rrca                                          ; $4faf: $0f
    inc bc                                        ; $4fb0: $03
    rra                                           ; $4fb1: $1f
    adc a                                         ; $4fb2: $8f
    ld d, $1f                                     ; $4fb3: $16 $1f
    db $10                                        ; $4fb5: $10
    rra                                           ; $4fb6: $1f
    db $10                                        ; $4fb7: $10
    dec de                                        ; $4fb8: $1b
    dec e                                         ; $4fb9: $1d
    rra                                           ; $4fba: $1f
    db $10                                        ; $4fbb: $10
    rra                                           ; $4fbc: $1f
    ld [de], a                                    ; $4fbd: $12
    rra                                           ; $4fbe: $1f
    inc de                                        ; $4fbf: $13
    rrca                                          ; $4fc0: $0f
    ld [$1f02], sp                                ; $4fc1: $08 $02 $1f
    ld [bc], a                                    ; $4fc4: $02
    ccf                                           ; $4fc5: $3f
    inc b                                         ; $4fc6: $04
    ld a, a                                       ; $4fc7: $7f
    add h                                         ; $4fc8: $84
    sbc a                                         ; $4fc9: $9f
    rst $38                                       ; $4fca: $ff
    rst $18                                       ; $4fcb: $df
    cp a                                          ; $4fcc: $bf
    ld [bc], a                                    ; $4fcd: $02
    jr nc, @+$05                                  ; $4fce: $30 $03

    jr c, jr_0e5_4f58                             ; $4fd0: $38 $86

jr_0e5_4fd2:
    jr jr_0e5_4ffc                                ; $4fd2: $18 $28

    jr @+$3a                                      ; $4fd4: $18 $38

    ld [$0228], sp                                ; $4fd6: $08 $28 $02
    jr c, jr_0e5_4f62                             ; $4fd9: $38 $87

    ld [$0838], sp                                ; $4fdb: $08 $38 $08
    jr c, jr_0e5_4fe8                             ; $4fde: $38 $08

    jr nc, jr_0e5_4ff2                            ; $4fe0: $30 $10

    ld [bc], a                                    ; $4fe2: $02
    inc a                                         ; $4fe3: $3c
    ld [bc], a                                    ; $4fe4: $02
    ld a, $02                                     ; $4fe5: $3e $02
    ccf                                           ; $4fe7: $3f

jr_0e5_4fe8:
    sub e                                         ; $4fe8: $93
    dec a                                         ; $4fe9: $3d
    ccf                                           ; $4fea: $3f
    dec a                                         ; $4feb: $3d
    dec sp                                        ; $4fec: $3b
    add hl, sp                                    ; $4fed: $39
    ccf                                           ; $4fee: $3f
    rst $18                                       ; $4fef: $df
    cp a                                          ; $4ff0: $bf
    rst $38                                       ; $4ff1: $ff

jr_0e5_4ff2:
    cp a                                          ; $4ff2: $bf
    rst $38                                       ; $4ff3: $ff
    cp a                                          ; $4ff4: $bf
    db $d3                                        ; $4ff5: $d3
    cp a                                          ; $4ff6: $bf
    di                                            ; $4ff7: $f3
    sbc a                                         ; $4ff8: $9f
    ld h, a                                       ; $4ff9: $67
    ld a, a                                       ; $4ffa: $7f
    scf                                           ; $4ffb: $37

jr_0e5_4ffc:
    inc bc                                        ; $4ffc: $03
    ccf                                           ; $4ffd: $3f
    ld [bc], a                                    ; $4ffe: $02
    dec e                                         ; $4fff: $1d
    ld [bc], a                                    ; $5000: $02
    ld bc, $000c                                  ; $5001: $01 $0c $00
    adc l                                         ; $5004: $8d
    dec sp                                        ; $5005: $3b
    dec a                                         ; $5006: $3d
    ccf                                           ; $5007: $3f
    dec a                                         ; $5008: $3d
    ccf                                           ; $5009: $3f
    dec a                                         ; $500a: $3d
    rrca                                          ; $500b: $0f
    dec a                                         ; $500c: $3d
    ld l, $3e                                     ; $500d: $2e $3e
    inc h                                         ; $500f: $24
    inc a                                         ; $5010: $3c
    inc b                                         ; $5011: $04
    inc bc                                        ; $5012: $03
    inc a                                         ; $5013: $3c
    add c                                         ; $5014: $81
    inc b                                         ; $5015: $04
    inc bc                                        ; $5016: $03
    inc a                                         ; $5017: $3c
    inc c                                         ; $5018: $0c
    nop                                           ; $5019: $00
    rst $38                                       ; $501a: $ff
    dec c                                         ; $501b: $0d
    inc b                                         ; $501c: $04
    ld sp, hl                                     ; $501d: $f9
    ld [$01f2], sp                                ; $501e: $08 $f2 $01
    rst $20                                       ; $5021: $e7
    ld a, [$00e7]                                 ; $5022: $fa $e7 $00
    rst $30                                       ; $5025: $f7
    ld a, [$00f7]                                 ; $5026: $fa $f7 $00
    ld [bc], a                                    ; $5029: $02
    rrca                                          ; $502a: $0f
    inc bc                                        ; $502b: $03
    rra                                           ; $502c: $1f
    adc a                                         ; $502d: $8f
    dec de                                        ; $502e: $1b
    rra                                           ; $502f: $1f
    db $10                                        ; $5030: $10
    rra                                           ; $5031: $1f
    db $10                                        ; $5032: $10
    rra                                           ; $5033: $1f
    inc e                                         ; $5034: $1c
    rra                                           ; $5035: $1f
    db $10                                        ; $5036: $10
    rra                                           ; $5037: $1f
    ld de, $131f                                  ; $5038: $11 $1f $13
    rrca                                          ; $503b: $0f
    ld [$3f02], sp                                ; $503c: $08 $02 $3f
    inc b                                         ; $503f: $04
    ld a, a                                       ; $5040: $7f
    ld [bc], a                                    ; $5041: $02
    rst $38                                       ; $5042: $ff
    add h                                         ; $5043: $84
    sbc a                                         ; $5044: $9f
    rst $38                                       ; $5045: $ff
    rst $18                                       ; $5046: $df
    cp a                                          ; $5047: $bf
    ld [bc], a                                    ; $5048: $02
    jr nc, @+$05                                  ; $5049: $30 $03

    jr c, jr_0e5_4fd2                             ; $504b: $38 $85

    jr jr_0e5_5087                                ; $504d: $18 $38

    ld [$0838], sp                                ; $504f: $08 $38 $08
    inc bc                                        ; $5052: $03
    jr c, @-$77                                   ; $5053: $38 $87

    ld [$0838], sp                                ; $5055: $08 $38 $08

jr_0e5_5058:
    jr c, jr_0e5_5062                             ; $5058: $38 $08

    jr nc, jr_0e5_506c                            ; $505a: $30 $10

    ld [bc], a                                    ; $505c: $02
    inc a                                         ; $505d: $3c
    inc b                                         ; $505e: $04
    ld a, $02                                     ; $505f: $3e $02
    ccf                                           ; $5061: $3f

jr_0e5_5062:
    sub e                                         ; $5062: $93
    add hl, sp                                    ; $5063: $39
    ccf                                           ; $5064: $3f
    dec sp                                        ; $5065: $3b
    dec a                                         ; $5066: $3d
    rst $18                                       ; $5067: $df
    cp a                                          ; $5068: $bf
    rst $38                                       ; $5069: $ff
    cp a                                          ; $506a: $bf
    rst $38                                       ; $506b: $ff

jr_0e5_506c:
    cp a                                          ; $506c: $bf
    ret nc                                        ; $506d: $d0

    cp a                                          ; $506e: $bf
    db $d3                                        ; $506f: $d3
    cp a                                          ; $5070: $bf
    ld [hl], a                                    ; $5071: $77
    ld a, a                                       ; $5072: $7f
    daa                                           ; $5073: $27
    ccf                                           ; $5074: $3f
    daa                                           ; $5075: $27
    inc bc                                        ; $5076: $03
    ccf                                           ; $5077: $3f
    add d                                         ; $5078: $82
    dec [hl]                                      ; $5079: $35
    dec a                                         ; $507a: $3d
    ld [bc], a                                    ; $507b: $02
    jr jr_0e5_5088                                ; $507c: $18 $0a

    nop                                           ; $507e: $00
    sub c                                         ; $507f: $91
    dec sp                                        ; $5080: $3b
    dec a                                         ; $5081: $3d
    ccf                                           ; $5082: $3f
    dec a                                         ; $5083: $3d
    ccf                                           ; $5084: $3f
    dec a                                         ; $5085: $3d
    dec bc                                        ; $5086: $0b

jr_0e5_5087:
    dec a                                         ; $5087: $3d

jr_0e5_5088:
    dec hl                                        ; $5088: $2b
    dec a                                         ; $5089: $3d
    ld c, $3e                                     ; $508a: $0e $3e
    inc h                                         ; $508c: $24
    inc a                                         ; $508d: $3c
    inc e                                         ; $508e: $1c
    inc a                                         ; $508f: $3c
    inc h                                         ; $5090: $24
    inc bc                                        ; $5091: $03
    inc a                                         ; $5092: $3c
    inc c                                         ; $5093: $0c
    nop                                           ; $5094: $00
    rst $38                                       ; $5095: $ff
    dec c                                         ; $5096: $0d
    inc b                                         ; $5097: $04
    ld sp, hl                                     ; $5098: $f9
    ld [$01f2], sp                                ; $5099: $08 $f2 $01
    rst $20                                       ; $509c: $e7
    ld a, [$00e7]                                 ; $509d: $fa $e7 $00
    rst $30                                       ; $50a0: $f7
    ld a, [$00f7]                                 ; $50a1: $fa $f7 $00
    ld [bc], a                                    ; $50a4: $02
    rrca                                          ; $50a5: $0f
    inc bc                                        ; $50a6: $03
    rra                                           ; $50a7: $1f
    adc a                                         ; $50a8: $8f
    add hl, de                                    ; $50a9: $19
    rla                                           ; $50aa: $17
    jr @+$21                                      ; $50ab: $18 $1f

    db $10                                        ; $50ad: $10
    rla                                           ; $50ae: $17
    ld e, $1f                                     ; $50af: $1e $1f
    db $10                                        ; $50b1: $10
    rra                                           ; $50b2: $1f
    db $10                                        ; $50b3: $10
    rra                                           ; $50b4: $1f
    inc de                                        ; $50b5: $13
    rrca                                          ; $50b6: $0f
    ld [$3f02], sp                                ; $50b7: $08 $02 $3f
    inc b                                         ; $50ba: $04
    ld a, a                                       ; $50bb: $7f
    add [hl]                                      ; $50bc: $86
    cp a                                          ; $50bd: $bf
    rst $38                                       ; $50be: $ff
    cp a                                          ; $50bf: $bf
    rst $18                                       ; $50c0: $df
    sbc a                                         ; $50c1: $9f
    rst $38                                       ; $50c2: $ff
    ld [bc], a                                    ; $50c3: $02
    jr nc, @+$05                                  ; $50c4: $30 $03

    jr c, @-$78                                   ; $50c6: $38 $86

    jr z, jr_0e5_5102                             ; $50c8: $28 $38

    ld [$0838], sp                                ; $50ca: $08 $38 $08
    jr jr_0e5_50d1                                ; $50cd: $18 $02

    jr c, jr_0e5_5058                             ; $50cf: $38 $87

jr_0e5_50d1:
    ld [$2838], sp                                ; $50d1: $08 $38 $28
    jr c, @+$0a                                   ; $50d4: $38 $08

jr_0e5_50d6:
    jr nc, jr_0e5_50e8                            ; $50d6: $30 $10

    ld [bc], a                                    ; $50d8: $02
    jr c, jr_0e5_50dd                             ; $50d9: $38 $02

    inc a                                         ; $50db: $3c
    inc b                                         ; $50dc: $04

jr_0e5_50dd:
    ld a, $96                                     ; $50dd: $3e $96
    dec a                                         ; $50df: $3d
    ccf                                           ; $50e0: $3f
    dec sp                                        ; $50e1: $3b
    dec a                                         ; $50e2: $3d
    rst $18                                       ; $50e3: $df
    cp a                                          ; $50e4: $bf
    rst $38                                       ; $50e5: $ff
    cp a                                          ; $50e6: $bf
    rst $38                                       ; $50e7: $ff

jr_0e5_50e8:
    cp a                                          ; $50e8: $bf
    ldh a, [$bf]                                  ; $50e9: $f0 $bf
    ld [hl], e                                    ; $50eb: $73
    ld a, a                                       ; $50ec: $7f
    daa                                           ; $50ed: $27
    ccf                                           ; $50ee: $3f
    inc hl                                        ; $50ef: $23
    ccf                                           ; $50f0: $3f
    dec sp                                        ; $50f1: $3b
    ccf                                           ; $50f2: $3f
    ld c, a                                       ; $50f3: $4f
    ld a, a                                       ; $50f4: $7f
    ld [bc], a                                    ; $50f5: $02
    ld a, l                                       ; $50f6: $7d
    ld [bc], a                                    ; $50f7: $02
    inc a                                         ; $50f8: $3c
    ld a, [bc]                                    ; $50f9: $0a
    nop                                           ; $50fa: $00
    adc l                                         ; $50fb: $8d
    dec sp                                        ; $50fc: $3b
    dec a                                         ; $50fd: $3d
    dec sp                                        ; $50fe: $3b
    dec a                                         ; $50ff: $3d
    ccf                                           ; $5100: $3f
    dec a                                         ; $5101: $3d

jr_0e5_5102:
    dec bc                                        ; $5102: $0b
    dec a                                         ; $5103: $3d
    ld [hl], $3a                                  ; $5104: $36 $3a
    ld d, $3a                                     ; $5106: $16 $3a
    inc l                                         ; $5108: $2c
    inc bc                                        ; $5109: $03
    inc a                                         ; $510a: $3c
    add c                                         ; $510b: $81
    jr z, jr_0e5_5111                             ; $510c: $28 $03

    jr c, jr_0e5_511c                             ; $510e: $38 $0c

    nop                                           ; $5110: $00

jr_0e5_5111:
    rst $38                                       ; $5111: $ff
    dec c                                         ; $5112: $0d
    inc b                                         ; $5113: $04
    ld sp, hl                                     ; $5114: $f9
    ld [$01f2], sp                                ; $5115: $08 $f2 $01
    add sp, -$06                                  ; $5118: $e8 $fa
    add sp, $00                                   ; $511a: $e8 $00

jr_0e5_511c:
    ld hl, sp-$06                                 ; $511c: $f8 $fa
    ld hl, sp+$00                                 ; $511e: $f8 $00
    ld [bc], a                                    ; $5120: $02
    rrca                                          ; $5121: $0f
    inc bc                                        ; $5122: $03
    rra                                           ; $5123: $1f
    adc a                                         ; $5124: $8f
    add hl, de                                    ; $5125: $19
    rla                                           ; $5126: $17
    jr jr_0e5_5148                                ; $5127: $18 $1f

    db $10                                        ; $5129: $10
    rla                                           ; $512a: $17
    ld e, $1f                                     ; $512b: $1e $1f
    db $10                                        ; $512d: $10
    rra                                           ; $512e: $1f
    db $10                                        ; $512f: $10
    rra                                           ; $5130: $1f
    inc de                                        ; $5131: $13
    rrca                                          ; $5132: $0f
    ld [$3f02], sp                                ; $5133: $08 $02 $3f
    ld [bc], a                                    ; $5136: $02
    ld a, a                                       ; $5137: $7f
    ld [bc], a                                    ; $5138: $02
    rst $38                                       ; $5139: $ff
    add [hl]                                      ; $513a: $86
    cp a                                          ; $513b: $bf
    rst $38                                       ; $513c: $ff
    cp a                                          ; $513d: $bf
    rst $18                                       ; $513e: $df
    sbc a                                         ; $513f: $9f
    rst $38                                       ; $5140: $ff
    ld [bc], a                                    ; $5141: $02

jr_0e5_5142:
    jr nc, @+$05                                  ; $5142: $30 $03

    jr c, @-$78                                   ; $5144: $38 $86

    jr z, jr_0e5_5180                             ; $5146: $28 $38

jr_0e5_5148:
    ld [$0838], sp                                ; $5148: $08 $38 $08
    jr jr_0e5_514f                                ; $514b: $18 $02

    jr c, jr_0e5_50d6                             ; $514d: $38 $87

jr_0e5_514f:
    ld [$2838], sp                                ; $514f: $08 $38 $28
    jr c, @+$0a                                   ; $5152: $38 $08

    jr nc, jr_0e5_5166                            ; $5154: $30 $10

    ld [bc], a                                    ; $5156: $02
    jr c, jr_0e5_515b                             ; $5157: $38 $02

    inc a                                         ; $5159: $3c
    inc b                                         ; $515a: $04

jr_0e5_515b:
    ld a, $91                                     ; $515b: $3e $91
    add hl, sp                                    ; $515d: $39
    ccf                                           ; $515e: $3f
    dec sp                                        ; $515f: $3b
    dec a                                         ; $5160: $3d
    rst $18                                       ; $5161: $df
    cp a                                          ; $5162: $bf
    rst $38                                       ; $5163: $ff
    cp a                                          ; $5164: $bf
    rst $38                                       ; $5165: $ff

jr_0e5_5166:
    cp a                                          ; $5166: $bf
    di                                            ; $5167: $f3
    cp a                                          ; $5168: $bf
    ld [hl], a                                    ; $5169: $77
    ld a, a                                       ; $516a: $7f
    daa                                           ; $516b: $27
    ccf                                           ; $516c: $3f
    inc hl                                        ; $516d: $23
    inc bc                                        ; $516e: $03
    ccf                                           ; $516f: $3f
    add c                                         ; $5170: $81
    ld [hl+], a                                   ; $5171: $22
    inc bc                                        ; $5172: $03
    ld a, $0c                                     ; $5173: $3e $0c
    nop                                           ; $5175: $00
    adc l                                         ; $5176: $8d
    dec sp                                        ; $5177: $3b
    dec a                                         ; $5178: $3d
    ccf                                           ; $5179: $3f
    dec a                                         ; $517a: $3d
    ccf                                           ; $517b: $3f
    dec a                                         ; $517c: $3d
    dec bc                                        ; $517d: $0b
    dec a                                         ; $517e: $3d
    rrca                                          ; $517f: $0f

jr_0e5_5180:
    add hl, sp                                    ; $5180: $39
    ld h, $3e                                     ; $5181: $26 $3e
    inc l                                         ; $5183: $2c
    inc bc                                        ; $5184: $03
    inc a                                         ; $5185: $3c
    ld [bc], a                                    ; $5186: $02
    jr c, @+$10                                   ; $5187: $38 $0e

    nop                                           ; $5189: $00
    rst $38                                       ; $518a: $ff
    dec c                                         ; $518b: $0d
    inc b                                         ; $518c: $04
    ld sp, hl                                     ; $518d: $f9
    ld [$01f2], sp                                ; $518e: $08 $f2 $01
    rst $20                                       ; $5191: $e7
    ld a, [$00e7]                                 ; $5192: $fa $e7 $00
    rst $30                                       ; $5195: $f7
    ld a, [$00f7]                                 ; $5196: $fa $f7 $00
    ld [bc], a                                    ; $5199: $02
    rrca                                          ; $519a: $0f
    inc bc                                        ; $519b: $03
    rra                                           ; $519c: $1f
    adc a                                         ; $519d: $8f
    dec de                                        ; $519e: $1b
    rra                                           ; $519f: $1f
    db $10                                        ; $51a0: $10
    rra                                           ; $51a1: $1f
    db $10                                        ; $51a2: $10
    rra                                           ; $51a3: $1f
    inc e                                         ; $51a4: $1c
    rra                                           ; $51a5: $1f
    db $10                                        ; $51a6: $10
    rra                                           ; $51a7: $1f
    ld de, $131f                                  ; $51a8: $11 $1f $13
    rrca                                          ; $51ab: $0f
    ld [$3f02], sp                                ; $51ac: $08 $02 $3f
    inc b                                         ; $51af: $04
    ld a, a                                       ; $51b0: $7f
    ld [bc], a                                    ; $51b1: $02
    rst $38                                       ; $51b2: $ff
    add h                                         ; $51b3: $84
    sbc a                                         ; $51b4: $9f
    rst $38                                       ; $51b5: $ff
    rst $18                                       ; $51b6: $df
    cp a                                          ; $51b7: $bf
    ld [bc], a                                    ; $51b8: $02
    jr nc, @+$05                                  ; $51b9: $30 $03

    jr c, jr_0e5_5142                             ; $51bb: $38 $85

    jr jr_0e5_51f7                                ; $51bd: $18 $38

    ld [$0838], sp                                ; $51bf: $08 $38 $08
    inc bc                                        ; $51c2: $03
    jr c, @-$77                                   ; $51c3: $38 $87

    ld [$0838], sp                                ; $51c5: $08 $38 $08
    jr c, jr_0e5_51d2                             ; $51c8: $38 $08

    jr nc, jr_0e5_51dc                            ; $51ca: $30 $10

    ld [bc], a                                    ; $51cc: $02
    inc a                                         ; $51cd: $3c
    inc b                                         ; $51ce: $04
    ld a, $02                                     ; $51cf: $3e $02
    ccf                                           ; $51d1: $3f

jr_0e5_51d2:
    sub [hl]                                      ; $51d2: $96
    add hl, sp                                    ; $51d3: $39
    ccf                                           ; $51d4: $3f
    dec sp                                        ; $51d5: $3b
    dec a                                         ; $51d6: $3d
    rst $18                                       ; $51d7: $df
    cp a                                          ; $51d8: $bf
    rst $38                                       ; $51d9: $ff
    cp a                                          ; $51da: $bf
    rst $38                                       ; $51db: $ff

jr_0e5_51dc:
    cp a                                          ; $51dc: $bf
    ret nc                                        ; $51dd: $d0

    cp a                                          ; $51de: $bf
    rst $10                                       ; $51df: $d7
    cp a                                          ; $51e0: $bf
    ld [hl], e                                    ; $51e1: $73
    ld a, a                                       ; $51e2: $7f
    daa                                           ; $51e3: $27
    ccf                                           ; $51e4: $3f
    dec sp                                        ; $51e5: $3b
    ccf                                           ; $51e6: $3f
    daa                                           ; $51e7: $27
    ccf                                           ; $51e8: $3f
    ld [bc], a                                    ; $51e9: $02
    ld a, $0c                                     ; $51ea: $3e $0c
    nop                                           ; $51ec: $00
    adc a                                         ; $51ed: $8f
    dec sp                                        ; $51ee: $3b
    dec a                                         ; $51ef: $3d
    ccf                                           ; $51f0: $3f
    dec a                                         ; $51f1: $3d
    ccf                                           ; $51f2: $3f
    dec a                                         ; $51f3: $3d
    dec bc                                        ; $51f4: $0b
    dec a                                         ; $51f5: $3d
    dec bc                                        ; $51f6: $0b

jr_0e5_51f7:
    dec a                                         ; $51f7: $3d
    ld l, $3e                                     ; $51f8: $2e $3e
    inc h                                         ; $51fa: $24
    inc a                                         ; $51fb: $3c
    inc h                                         ; $51fc: $24
    inc bc                                        ; $51fd: $03
    inc a                                         ; $51fe: $3c
    add d                                         ; $51ff: $82
    inc l                                         ; $5200: $2c
    inc a                                         ; $5201: $3c
    ld [bc], a                                    ; $5202: $02
    jr jr_0e5_520f                                ; $5203: $18 $0a

    nop                                           ; $5205: $00
    rst $38                                       ; $5206: $ff
    dec c                                         ; $5207: $0d
    inc b                                         ; $5208: $04
    ld sp, hl                                     ; $5209: $f9
    ld [$01f2], sp                                ; $520a: $08 $f2 $01
    rst $20                                       ; $520d: $e7
    db $fc                                        ; $520e: $fc

jr_0e5_520f:
    add sp, -$02                                  ; $520f: $e8 $fe
    rst $30                                       ; $5211: $f7
    db $fd                                        ; $5212: $fd
    rst $30                                       ; $5213: $f7
    cp $02                                        ; $5214: $fe $02
    ccf                                           ; $5216: $3f
    ld [bc], a                                    ; $5217: $02
    ld a, a                                       ; $5218: $7f
    sub b                                         ; $5219: $90
    rst $38                                       ; $521a: $ff
    ei                                            ; $521b: $fb
    rst $38                                       ; $521c: $ff
    ldh a, [rIE]                                  ; $521d: $f0 $ff
    ldh a, [$7f]                                  ; $521f: $f0 $7f
    ld h, [hl]                                    ; $5221: $66
    ld a, a                                       ; $5222: $7f
    ld d, b                                       ; $5223: $50
    ccf                                           ; $5224: $3f
    jr nz, jr_0e5_5266                            ; $5225: $20 $3f

    ld hl, $101f                                  ; $5227: $21 $1f $10
    ld [bc], a                                    ; $522a: $02
    ccf                                           ; $522b: $3f
    ld b, $7f                                     ; $522c: $06 $7f
    add h                                         ; $522e: $84
    ld e, a                                       ; $522f: $5f
    ld l, a                                       ; $5230: $6f
    ld a, a                                       ; $5231: $7f
    ld c, a                                       ; $5232: $4f
    inc b                                         ; $5233: $04
    ld [bc], a                                    ; $5234: $02
    add h                                         ; $5235: $84
    inc bc                                        ; $5236: $03
    ld bc, $0103                                  ; $5237: $01 $03 $01

jr_0e5_523a:
    ld [bc], a                                    ; $523a: $02
    ld [bc], a                                    ; $523b: $02
    add d                                         ; $523c: $82
    inc bc                                        ; $523d: $03
    ld bc, $0206                                  ; $523e: $01 $06 $02
    ld [bc], a                                    ; $5241: $02
    nop                                           ; $5242: $00
    ld b, $02                                     ; $5243: $06 $02
    inc b                                         ; $5245: $04
    inc bc                                        ; $5246: $03
    add d                                         ; $5247: $82
    ld a, a                                       ; $5248: $7f
    cp a                                          ; $5249: $bf
    ld [bc], a                                    ; $524a: $02
    add b                                         ; $524b: $80
    adc l                                         ; $524c: $8d
    cp a                                          ; $524d: $bf
    rst $18                                       ; $524e: $df
    ld a, a                                       ; $524f: $7f
    ld e, a                                       ; $5250: $5f

jr_0e5_5251:
    ld a, c                                       ; $5251: $79
    ld c, a                                       ; $5252: $4f
    add hl, sp                                    ; $5253: $39
    cpl                                           ; $5254: $2f
    ld [hl-], a                                   ; $5255: $32
    ld a, $22                                     ; $5256: $3e $22
    ld a, $43                                     ; $5258: $3e $43
    inc bc                                        ; $525a: $03
    ld a, a                                       ; $525b: $7f
    add c                                         ; $525c: $81
    ld a, c                                       ; $525d: $79
    inc bc                                        ; $525e: $03
    ld a, a                                       ; $525f: $7f
    inc c                                         ; $5260: $0c
    nop                                           ; $5261: $00
    ld [bc], a                                    ; $5262: $02
    ld bc, $001c                                  ; $5263: $01 $1c $00

jr_0e5_5266:
    rst $38                                       ; $5266: $ff
    dec c                                         ; $5267: $0d
    inc b                                         ; $5268: $04
    ld sp, hl                                     ; $5269: $f9
    ld [$01f2], sp                                ; $526a: $08 $f2 $01
    rst $20                                       ; $526d: $e7
    db $fc                                        ; $526e: $fc
    add sp, -$02                                  ; $526f: $e8 $fe
    rst $30                                       ; $5271: $f7
    ei                                            ; $5272: $fb
    rst $30                                       ; $5273: $f7
    ld bc, $3f02                                  ; $5274: $01 $02 $3f
    ld [bc], a                                    ; $5277: $02
    ld a, a                                       ; $5278: $7f
    sub b                                         ; $5279: $90
    cp $f7                                        ; $527a: $fe $f7
    rst $38                                       ; $527c: $ff
    ldh a, [rIE]                                  ; $527d: $f0 $ff
    ldh [rPCM12], a                               ; $527f: $e0 $76
    ld l, a                                       ; $5281: $6f
    rst $18                                       ; $5282: $df
    and b                                         ; $5283: $a0
    ld a, a                                       ; $5284: $7f
    ld h, b                                       ; $5285: $60
    dec a                                         ; $5286: $3d
    inc hl                                        ; $5287: $23
    rra                                           ; $5288: $1f
    db $10                                        ; $5289: $10
    inc b                                         ; $528a: $04
    ccf                                           ; $528b: $3f
    inc b                                         ; $528c: $04
    ld a, a                                       ; $528d: $7f
    add h                                         ; $528e: $84
    ld e, a                                       ; $528f: $5f
    ld l, a                                       ; $5290: $6f
    ld d, a                                       ; $5291: $57
    ld l, a                                       ; $5292: $6f
    inc b                                         ; $5293: $04
    ld [bc], a                                    ; $5294: $02
    add h                                         ; $5295: $84
    inc bc                                        ; $5296: $03
    ld bc, $0103                                  ; $5297: $01 $03 $01
    ld [bc], a                                    ; $529a: $02
    ld [bc], a                                    ; $529b: $02
    add d                                         ; $529c: $82
    ld bc, $0603                                  ; $529d: $01 $03 $06
    ld [bc], a                                    ; $52a0: $02
    inc b                                         ; $52a1: $04
    nop                                           ; $52a2: $00
    inc b                                         ; $52a3: $04
    ld [bc], a                                    ; $52a4: $02
    inc b                                         ; $52a5: $04
    inc bc                                        ; $52a6: $03
    add d                                         ; $52a7: $82
    rst $38                                       ; $52a8: $ff
    sbc a                                         ; $52a9: $9f
    ld [bc], a                                    ; $52aa: $02
    jr nz, jr_0e5_523a                            ; $52ab: $20 $8d

    rla                                           ; $52ad: $17
    dec de                                        ; $52ae: $1b
    rra                                           ; $52af: $1f
    add hl, de                                    ; $52b0: $19
    ld d, $1d                                     ; $52b1: $16 $1d
    scf                                           ; $52b3: $37
    inc a                                         ; $52b4: $3c
    ld b, e                                       ; $52b5: $43
    ld a, a                                       ; $52b6: $7f
    add e                                         ; $52b7: $83
    rst $38                                       ; $52b8: $ff
    push bc                                       ; $52b9: $c5
    inc bc                                        ; $52ba: $03
    db $fd                                        ; $52bb: $fd
    add c                                         ; $52bc: $81
    ld [hl], d                                    ; $52bd: $72
    inc bc                                        ; $52be: $03
    ld a, [hl]                                    ; $52bf: $7e
    inc c                                         ; $52c0: $0c
    nop                                           ; $52c1: $00
    ld [bc], a                                    ; $52c2: $02
    jr c, jr_0e5_52c7                             ; $52c3: $38 $02

    jr nc, jr_0e5_5251                            ; $52c5: $30 $8a

jr_0e5_52c7:
    jr z, jr_0e5_5301                             ; $52c7: $28 $38

    jr z, jr_0e5_5303                             ; $52c9: $28 $38

    inc b                                         ; $52cb: $04
    inc a                                         ; $52cc: $3c
    rrca                                          ; $52cd: $0f
    ccf                                           ; $52ce: $3f
    add hl, sp                                    ; $52cf: $39
    ccf                                           ; $52d0: $3f
    ld [bc], a                                    ; $52d1: $02
    ld a, $02                                     ; $52d2: $3e $02
    jr nz, @+$0e                                  ; $52d4: $20 $0c

    nop                                           ; $52d6: $00
    rst $38                                       ; $52d7: $ff
    dec c                                         ; $52d8: $0d
    inc b                                         ; $52d9: $04
    ld sp, hl                                     ; $52da: $f9
    ld [$01f2], sp                                ; $52db: $08 $f2 $01
    add sp, -$04                                  ; $52de: $e8 $fc
    jp hl                                         ; $52e0: $e9


    cp $f8                                        ; $52e1: $fe $f8
    db $fc                                        ; $52e3: $fc
    ld hl, sp-$01                                 ; $52e4: $f8 $ff
    ld [bc], a                                    ; $52e6: $02
    ccf                                           ; $52e7: $3f
    ld [bc], a                                    ; $52e8: $02
    ld a, a                                       ; $52e9: $7f
    sub b                                         ; $52ea: $90
    cp $f7                                        ; $52eb: $fe $f7
    rst $38                                       ; $52ed: $ff
    ldh a, [rIE]                                  ; $52ee: $f0 $ff
    ldh [rPCM12], a                               ; $52f0: $e0 $76
    ld l, a                                       ; $52f2: $6f
    rst $18                                       ; $52f3: $df
    and b                                         ; $52f4: $a0
    ld a, a                                       ; $52f5: $7f
    ld h, b                                       ; $52f6: $60
    dec a                                         ; $52f7: $3d
    inc hl                                        ; $52f8: $23
    rra                                           ; $52f9: $1f
    db $10                                        ; $52fa: $10
    ld [bc], a                                    ; $52fb: $02
    ccf                                           ; $52fc: $3f
    ld b, $7f                                     ; $52fd: $06 $7f
    add h                                         ; $52ff: $84
    ld e, a                                       ; $5300: $5f

jr_0e5_5301:
    ld l, a                                       ; $5301: $6f
    ld d, a                                       ; $5302: $57

jr_0e5_5303:
    ld l, a                                       ; $5303: $6f
    inc b                                         ; $5304: $04
    ld [bc], a                                    ; $5305: $02
    add h                                         ; $5306: $84
    inc bc                                        ; $5307: $03
    ld bc, $0103                                  ; $5308: $01 $03 $01
    ld [bc], a                                    ; $530b: $02
    ld [bc], a                                    ; $530c: $02
    add d                                         ; $530d: $82
    ld bc, $0603                                  ; $530e: $01 $03 $06
    ld [bc], a                                    ; $5311: $02
    inc b                                         ; $5312: $04
    nop                                           ; $5313: $00
    inc b                                         ; $5314: $04
    ld [bc], a                                    ; $5315: $02
    inc b                                         ; $5316: $04
    inc bc                                        ; $5317: $03
    add d                                         ; $5318: $82
    rst $38                                       ; $5319: $ff
    sbc a                                         ; $531a: $9f
    ld [bc], a                                    ; $531b: $02
    nop                                           ; $531c: $00
    adc h                                         ; $531d: $8c
    cpl                                           ; $531e: $2f
    scf                                           ; $531f: $37
    ccf                                           ; $5320: $3f
    inc sp                                        ; $5321: $33
    dec a                                         ; $5322: $3d
    dec sp                                        ; $5323: $3b
    rst $10                                       ; $5324: $d7
    ei                                            ; $5325: $fb
    adc $ff                                       ; $5326: $ce $ff
    push hl                                       ; $5328: $e5
    rst $38                                       ; $5329: $ff
    ld [bc], a                                    ; $532a: $02
    ld a, a                                       ; $532b: $7f
    add d                                         ; $532c: $82
    ld h, a                                       ; $532d: $67
    ld a, a                                       ; $532e: $7f
    ld [bc], a                                    ; $532f: $02
    inc a                                         ; $5330: $3c
    ld c, $00                                     ; $5331: $0e $00
    ld [bc], a                                    ; $5333: $02
    ld b, $02                                     ; $5334: $06 $02
    inc b                                         ; $5336: $04
    add l                                         ; $5337: $85
    ld [bc], a                                    ; $5338: $02
    ld b, $02                                     ; $5339: $06 $02
    ld b, $02                                     ; $533b: $06 $02
    inc bc                                        ; $533d: $03
    ld b, $81                                     ; $533e: $06 $81
    ld bc, $0703                                  ; $5340: $01 $03 $07
    ld c, $00                                     ; $5343: $0e $00
    rst $38                                       ; $5345: $ff
    dec c                                         ; $5346: $0d
    inc b                                         ; $5347: $04
    ld sp, hl                                     ; $5348: $f9
    ld [$01f2], sp                                ; $5349: $08 $f2 $01
    rst $20                                       ; $534c: $e7
    db $fc                                        ; $534d: $fc
    add sp, -$02                                  ; $534e: $e8 $fe
    rst $30                                       ; $5350: $f7
    db $fd                                        ; $5351: $fd
    rst $30                                       ; $5352: $f7
    cp $02                                        ; $5353: $fe $02
    ccf                                           ; $5355: $3f
    ld [bc], a                                    ; $5356: $02
    ld a, a                                       ; $5357: $7f
    sub b                                         ; $5358: $90
    rst $38                                       ; $5359: $ff
    ei                                            ; $535a: $fb
    rst $38                                       ; $535b: $ff
    ldh a, [rIE]                                  ; $535c: $f0 $ff
    ldh a, [$7f]                                  ; $535e: $f0 $7f
    ld h, [hl]                                    ; $5360: $66
    ld a, a                                       ; $5361: $7f
    ld d, b                                       ; $5362: $50
    ccf                                           ; $5363: $3f
    jr nz, @+$41                                  ; $5364: $20 $3f

    ld hl, $101f                                  ; $5366: $21 $1f $10
    ld [bc], a                                    ; $5369: $02
    ccf                                           ; $536a: $3f
    ld b, $7f                                     ; $536b: $06 $7f
    add h                                         ; $536d: $84
    ld e, a                                       ; $536e: $5f
    ld l, a                                       ; $536f: $6f
    ld a, a                                       ; $5370: $7f
    ld c, a                                       ; $5371: $4f
    inc b                                         ; $5372: $04
    ld [bc], a                                    ; $5373: $02
    add h                                         ; $5374: $84
    inc bc                                        ; $5375: $03
    ld bc, $0103                                  ; $5376: $01 $03 $01
    ld [bc], a                                    ; $5379: $02
    ld [bc], a                                    ; $537a: $02
    add d                                         ; $537b: $82
    inc bc                                        ; $537c: $03
    ld bc, $0206                                  ; $537d: $01 $06 $02
    ld [bc], a                                    ; $5380: $02
    nop                                           ; $5381: $00
    ld [$0202], sp                                ; $5382: $08 $02 $02
    inc bc                                        ; $5385: $03
    add d                                         ; $5386: $82
    ld a, a                                       ; $5387: $7f
    cp a                                          ; $5388: $bf
    ld [bc], a                                    ; $5389: $02
    add b                                         ; $538a: $80
    sub d                                         ; $538b: $92
    cp a                                          ; $538c: $bf
    rst $18                                       ; $538d: $df
    ld a, a                                       ; $538e: $7f
    ld e, a                                       ; $538f: $5f
    ld a, b                                       ; $5390: $78
    ld c, a                                       ; $5391: $4f
    ld a, b                                       ; $5392: $78
    ld c, a                                       ; $5393: $4f
    inc a                                         ; $5394: $3c
    ccf                                           ; $5395: $3f
    ld h, b                                       ; $5396: $60
    ld a, a                                       ; $5397: $7f
    ld a, e                                       ; $5398: $7b
    ld a, a                                       ; $5399: $7f
    ld [hl], a                                    ; $539a: $77
    ld a, a                                       ; $539b: $7f
    ld a, e                                       ; $539c: $7b
    ld a, a                                       ; $539d: $7f
    ld [bc], a                                    ; $539e: $02
    inc c                                         ; $539f: $0c
    inc c                                         ; $53a0: $0c
    nop                                           ; $53a1: $00
    ld [bc], a                                    ; $53a2: $02
    ld bc, $0002                                  ; $53a3: $01 $02 $00
    ld [$1201], sp                                ; $53a6: $08 $01 $12
    nop                                           ; $53a9: $00
    rst $38                                       ; $53aa: $ff
    dec c                                         ; $53ab: $0d
    inc b                                         ; $53ac: $04
    ld sp, hl                                     ; $53ad: $f9
    ld [$01f2], sp                                ; $53ae: $08 $f2 $01
    rst $20                                       ; $53b1: $e7
    db $fc                                        ; $53b2: $fc
    add sp, -$02                                  ; $53b3: $e8 $fe
    rst $30                                       ; $53b5: $f7
    ei                                            ; $53b6: $fb
    rst $30                                       ; $53b7: $f7
    ld bc, $3f02                                  ; $53b8: $01 $02 $3f
    ld [bc], a                                    ; $53bb: $02
    ld a, a                                       ; $53bc: $7f
    sub b                                         ; $53bd: $90
    rst $38                                       ; $53be: $ff
    db $fd                                        ; $53bf: $fd
    rst $38                                       ; $53c0: $ff
    ld hl, sp-$01                                 ; $53c1: $f8 $ff
    ldh a, [$fe]                                  ; $53c3: $f0 $fe
    di                                            ; $53c5: $f3
    ld l, a                                       ; $53c6: $6f
    ld d, b                                       ; $53c7: $50
    ccf                                           ; $53c8: $3f
    jr nc, jr_0e5_53fa                            ; $53c9: $30 $2f

    ld sp, $101f                                  ; $53cb: $31 $1f $10
    ld [bc], a                                    ; $53ce: $02
    ccf                                           ; $53cf: $3f
    ld b, $7f                                     ; $53d0: $06 $7f
    add h                                         ; $53d2: $84
    ld l, a                                       ; $53d3: $6f
    ld e, a                                       ; $53d4: $5f
    ld l, a                                       ; $53d5: $6f
    ld e, a                                       ; $53d6: $5f
    inc b                                         ; $53d7: $04
    ld [bc], a                                    ; $53d8: $02
    add h                                         ; $53d9: $84
    inc bc                                        ; $53da: $03
    ld bc, $0103                                  ; $53db: $01 $03 $01
    ld [bc], a                                    ; $53de: $02
    ld [bc], a                                    ; $53df: $02
    add d                                         ; $53e0: $82
    inc bc                                        ; $53e1: $03
    ld bc, $0206                                  ; $53e2: $01 $06 $02
    ld [bc], a                                    ; $53e5: $02
    nop                                           ; $53e6: $00
    ld b, $02                                     ; $53e7: $06 $02
    inc b                                         ; $53e9: $04
    inc bc                                        ; $53ea: $03
    sub h                                         ; $53eb: $94
    rst $38                                       ; $53ec: $ff
    ld a, a                                       ; $53ed: $7f
    ld b, b                                       ; $53ee: $40
    ld h, b                                       ; $53ef: $60
    ld e, a                                       ; $53f0: $5f
    ld l, a                                       ; $53f1: $6f
    ld e, a                                       ; $53f2: $5f
    ld l, a                                       ; $53f3: $6f
    ld a, $2f                                     ; $53f4: $3e $2f
    ld a, h                                       ; $53f6: $7c
    ld c, a                                       ; $53f7: $4f
    rst $10                                       ; $53f8: $d7
    rst $38                                       ; $53f9: $ff

jr_0e5_53fa:
    rst $20                                       ; $53fa: $e7
    rst $38                                       ; $53fb: $ff
    ld a, [$76fb]                                 ; $53fc: $fa $fb $76
    ld a, a                                       ; $53ff: $7f
    ld [bc], a                                    ; $5400: $02
    ccf                                           ; $5401: $3f
    ld [bc], a                                    ; $5402: $02
    ld bc, $000c                                  ; $5403: $01 $0c $00
    inc bc                                        ; $5406: $03
    inc a                                         ; $5407: $3c
    adc l                                         ; $5408: $8d
    inc [hl]                                      ; $5409: $34
    inc d                                         ; $540a: $14
    inc a                                         ; $540b: $3c
    ld [$0838], sp                                ; $540c: $08 $38 $08
    jr c, jr_0e5_5415                             ; $540f: $38 $04

    inc a                                         ; $5411: $3c
    rrca                                          ; $5412: $0f
    ccf                                           ; $5413: $3f
    add hl, sp                                    ; $5414: $39

jr_0e5_5415:
    ccf                                           ; $5415: $3f
    ld [bc], a                                    ; $5416: $02
    ld a, $02                                     ; $5417: $3e $02
    jr nz, jr_0e5_5425                            ; $5419: $20 $0a

    nop                                           ; $541b: $00
    rst $38                                       ; $541c: $ff
    dec c                                         ; $541d: $0d
    inc b                                         ; $541e: $04
    ld sp, hl                                     ; $541f: $f9
    ld [$01f2], sp                                ; $5420: $08 $f2 $01
    add sp, -$04                                  ; $5423: $e8 $fc

jr_0e5_5425:
    jp hl                                         ; $5425: $e9


    cp $f8                                        ; $5426: $fe $f8
    db $fc                                        ; $5428: $fc
    ld hl, sp-$01                                 ; $5429: $f8 $ff
    ld [bc], a                                    ; $542b: $02
    ccf                                           ; $542c: $3f
    ld [bc], a                                    ; $542d: $02
    ld a, a                                       ; $542e: $7f
    sub b                                         ; $542f: $90
    rst $38                                       ; $5430: $ff
    db $fd                                        ; $5431: $fd
    rst $38                                       ; $5432: $ff
    ld hl, sp-$01                                 ; $5433: $f8 $ff
    ldh a, [$fe]                                  ; $5435: $f0 $fe
    di                                            ; $5437: $f3
    ld l, a                                       ; $5438: $6f
    ld d, b                                       ; $5439: $50
    ccf                                           ; $543a: $3f
    jr nc, jr_0e5_546c                            ; $543b: $30 $2f

    ld sp, $101f                                  ; $543d: $31 $1f $10
    ld [bc], a                                    ; $5440: $02
    ccf                                           ; $5441: $3f
    ld b, $7f                                     ; $5442: $06 $7f
    add h                                         ; $5444: $84
    ld l, a                                       ; $5445: $6f
    ld e, a                                       ; $5446: $5f
    ld l, a                                       ; $5447: $6f
    ld e, a                                       ; $5448: $5f
    inc b                                         ; $5449: $04
    ld [bc], a                                    ; $544a: $02
    add h                                         ; $544b: $84
    inc bc                                        ; $544c: $03
    ld bc, $0103                                  ; $544d: $01 $03 $01
    ld [bc], a                                    ; $5450: $02
    ld [bc], a                                    ; $5451: $02
    add d                                         ; $5452: $82
    inc bc                                        ; $5453: $03
    ld bc, $0206                                  ; $5454: $01 $06 $02
    ld [bc], a                                    ; $5457: $02
    nop                                           ; $5458: $00
    ld b, $02                                     ; $5459: $06 $02
    inc b                                         ; $545b: $04
    inc bc                                        ; $545c: $03
    sub d                                         ; $545d: $92
    rst $38                                       ; $545e: $ff
    ld a, a                                       ; $545f: $7f
    add b                                         ; $5460: $80
    ret nz                                        ; $5461: $c0

    cp a                                          ; $5462: $bf
    rst $18                                       ; $5463: $df
    cp a                                          ; $5464: $bf
    rst $18                                       ; $5465: $df
    ld hl, sp-$21                                 ; $5466: $f8 $df
    db $fc                                        ; $5468: $fc
    sbc a                                         ; $5469: $9f
    db $f4                                        ; $546a: $f4
    rst $38                                       ; $546b: $ff

jr_0e5_546c:
    ld a, b                                       ; $546c: $78
    ld a, a                                       ; $546d: $7f
    ld c, e                                       ; $546e: $4b
    ld a, a                                       ; $546f: $7f
    ld [bc], a                                    ; $5470: $02
    ccf                                           ; $5471: $3f
    ld [bc], a                                    ; $5472: $02
    rrca                                          ; $5473: $0f
    ld c, $00                                     ; $5474: $0e $00
    ld [bc], a                                    ; $5476: $02
    ld b, $8a                                     ; $5477: $06 $8a
    dec b                                         ; $5479: $05
    rlca                                          ; $547a: $07
    dec b                                         ; $547b: $05
    rlca                                          ; $547c: $07
    ld [bc], a                                    ; $547d: $02
    ld b, $02                                     ; $547e: $06 $02
    ld b, $02                                     ; $5480: $06 $02
    ld b, $02                                     ; $5482: $06 $02
    rlca                                          ; $5484: $07
    add c                                         ; $5485: $81
    ld bc, $0703                                  ; $5486: $01 $03 $07
    inc c                                         ; $5489: $0c
    nop                                           ; $548a: $00
    rst $38                                       ; $548b: $ff
    dec c                                         ; $548c: $0d
    inc b                                         ; $548d: $04
    ld sp, hl                                     ; $548e: $f9
    ld [$01f2], sp                                ; $548f: $08 $f2 $01
    rst $20                                       ; $5492: $e7
    db $fc                                        ; $5493: $fc
    add sp, -$02                                  ; $5494: $e8 $fe
    rst $30                                       ; $5496: $f7
    db $fd                                        ; $5497: $fd
    rst $30                                       ; $5498: $f7
    cp $02                                        ; $5499: $fe $02
    ccf                                           ; $549b: $3f
    ld [bc], a                                    ; $549c: $02
    ld a, a                                       ; $549d: $7f
    sub b                                         ; $549e: $90
    rst $38                                       ; $549f: $ff
    ei                                            ; $54a0: $fb
    rst $38                                       ; $54a1: $ff
    ldh a, [rIE]                                  ; $54a2: $f0 $ff
    ldh a, [$7f]                                  ; $54a4: $f0 $7f
    ld h, [hl]                                    ; $54a6: $66
    ld a, a                                       ; $54a7: $7f
    ld d, b                                       ; $54a8: $50
    ccf                                           ; $54a9: $3f
    jr nz, @+$41                                  ; $54aa: $20 $3f

    ld hl, $101f                                  ; $54ac: $21 $1f $10
    ld [bc], a                                    ; $54af: $02
    ccf                                           ; $54b0: $3f
    ld b, $7f                                     ; $54b1: $06 $7f
    add h                                         ; $54b3: $84
    ld e, a                                       ; $54b4: $5f
    ld l, a                                       ; $54b5: $6f
    ld a, a                                       ; $54b6: $7f
    ld c, a                                       ; $54b7: $4f
    inc b                                         ; $54b8: $04
    ld [bc], a                                    ; $54b9: $02
    add h                                         ; $54ba: $84
    inc bc                                        ; $54bb: $03
    ld bc, $0103                                  ; $54bc: $01 $03 $01
    ld [bc], a                                    ; $54bf: $02
    ld [bc], a                                    ; $54c0: $02
    add d                                         ; $54c1: $82
    inc bc                                        ; $54c2: $03
    ld bc, $0206                                  ; $54c3: $01 $06 $02
    ld [bc], a                                    ; $54c6: $02
    nop                                           ; $54c7: $00
    ld [$0202], sp                                ; $54c8: $08 $02 $02
    inc bc                                        ; $54cb: $03
    add d                                         ; $54cc: $82
    ld a, a                                       ; $54cd: $7f
    cp a                                          ; $54ce: $bf
    ld [bc], a                                    ; $54cf: $02
    add b                                         ; $54d0: $80
    adc [hl]                                      ; $54d1: $8e
    cp a                                          ; $54d2: $bf
    rst $18                                       ; $54d3: $df
    ld a, a                                       ; $54d4: $7f
    ld e, a                                       ; $54d5: $5f
    ld a, [c]                                     ; $54d6: $f2
    sbc a                                         ; $54d7: $9f
    ld [hl], d                                    ; $54d8: $72
    ld e, a                                       ; $54d9: $5f
    ld [hl], d                                    ; $54da: $72
    ld a, a                                       ; $54db: $7f
    inc hl                                        ; $54dc: $23
    ccf                                           ; $54dd: $3f
    ld b, d                                       ; $54de: $42
    ld a, [hl]                                    ; $54df: $7e
    ld [bc], a                                    ; $54e0: $02
    ld a, a                                       ; $54e1: $7f
    add c                                         ; $54e2: $81
    ld a, c                                       ; $54e3: $79
    inc bc                                        ; $54e4: $03
    ld a, a                                       ; $54e5: $7f
    inc c                                         ; $54e6: $0c
    nop                                           ; $54e7: $00
    ld a, [bc]                                    ; $54e8: $0a
    ld bc, $0014                                  ; $54e9: $01 $14 $00
    rst $38                                       ; $54ec: $ff
    dec c                                         ; $54ed: $0d
    inc b                                         ; $54ee: $04
    ld sp, hl                                     ; $54ef: $f9
    ld [$01f2], sp                                ; $54f0: $08 $f2 $01
    and $f9                                       ; $54f3: $e6 $f9
    and $01                                       ; $54f5: $e6 $01
    or $fa                                        ; $54f7: $f6 $fa
    or $00                                        ; $54f9: $f6 $00
    ld [bc], a                                    ; $54fb: $02
    rlca                                          ; $54fc: $07
    inc bc                                        ; $54fd: $03
    rrca                                          ; $54fe: $0f
    adc a                                         ; $54ff: $8f
    inc c                                         ; $5500: $0c
    rrca                                          ; $5501: $0f
    ld [$0e0f], sp                                ; $5502: $08 $0f $0e
    dec bc                                        ; $5505: $0b
    inc c                                         ; $5506: $0c
    rrca                                          ; $5507: $0f
    ld [$090f], sp                                ; $5508: $08 $0f $09
    rrca                                          ; $550b: $0f
    add hl, bc                                    ; $550c: $09
    rlca                                          ; $550d: $07
    inc b                                         ; $550e: $04
    ld [bc], a                                    ; $550f: $02
    rrca                                          ; $5510: $0f
    ld [bc], a                                    ; $5511: $02
    rra                                           ; $5512: $1f

jr_0e5_5513:
    adc b                                         ; $5513: $88
    dec sp                                        ; $5514: $3b
    scf                                           ; $5515: $37
    ld a, a                                       ; $5516: $7f
    ld c, e                                       ; $5517: $4b
    rst $28                                       ; $5518: $ef

jr_0e5_5519:
    sbc a                                         ; $5519: $9f
    rst $18                                       ; $551a: $df
    cp a                                          ; $551b: $bf
    ld [bc], a                                    ; $551c: $02
    ldh [$03], a                                  ; $551d: $e0 $03
    ldh a, [$8f]                                  ; $551f: $f0 $8f
    jr nc, jr_0e5_5513                            ; $5521: $30 $f0

    db $10                                        ; $5523: $10
    ldh a, [rSVBK]                                ; $5524: $f0 $70
    ret nc                                        ; $5526: $d0

    jr nc, jr_0e5_5519                            ; $5527: $30 $f0

    sub b                                         ; $5529: $90
    ldh a, [$90]                                  ; $552a: $f0 $90
    ldh a, [$90]                                  ; $552c: $f0 $90
    ldh [rNR41], a                                ; $552e: $e0 $20
    ld [bc], a                                    ; $5530: $02
    ldh a, [rDIV]                                 ; $5531: $f0 $04
    ld hl, sp-$7a                                 ; $5533: $f8 $86
    or [hl]                                       ; $5535: $b6
    adc $ed                                       ; $5536: $ce $ed
    or e                                          ; $5538: $b3
    rst $30                                       ; $5539: $f7
    ld sp, hl                                     ; $553a: $f9
    ld [bc], a                                    ; $553b: $02
    rst $38                                       ; $553c: $ff
    inc b                                         ; $553d: $04
    ccf                                           ; $553e: $3f
    adc [hl]                                      ; $553f: $8e
    ld a, $3f                                     ; $5540: $3e $3f
    jr nz, jr_0e5_5583                            ; $5542: $20 $3f

    inc sp                                        ; $5544: $33
    ccf                                           ; $5545: $3f
    inc hl                                        ; $5546: $23
    ccf                                           ; $5547: $3f
    daa                                           ; $5548: $27
    ccf                                           ; $5549: $3f
    inc sp                                        ; $554a: $33
    ccf                                           ; $554b: $3f
    ld c, l                                       ; $554c: $4d
    ld a, l                                       ; $554d: $7d
    ld [bc], a                                    ; $554e: $02
    ld a, b                                       ; $554f: $78
    ld a, [bc]                                    ; $5550: $0a
    nop                                           ; $5551: $00
    ld [bc], a                                    ; $5552: $02
    ccf                                           ; $5553: $3f
    ld b, $3c                                     ; $5554: $06 $3c
    adc [hl]                                      ; $5556: $8e
    inc b                                         ; $5557: $04
    inc a                                         ; $5558: $3c
    inc c                                         ; $5559: $0c
    inc a                                         ; $555a: $3c
    inc h                                         ; $555b: $24
    inc a                                         ; $555c: $3c
    inc b                                         ; $555d: $04
    inc a                                         ; $555e: $3c
    inc b                                         ; $555f: $04
    inc a                                         ; $5560: $3c
    inc e                                         ; $5561: $1c
    inc a                                         ; $5562: $3c
    ld [hl-], a                                   ; $5563: $32
    ld a, $02                                     ; $5564: $3e $02
    ld e, $08                                     ; $5566: $1e $08
    nop                                           ; $5568: $00
    rst $38                                       ; $5569: $ff
    dec c                                         ; $556a: $0d
    inc b                                         ; $556b: $04
    ld sp, hl                                     ; $556c: $f9
    ld [$01f2], sp                                ; $556d: $08 $f2 $01
    and $f9                                       ; $5570: $e6 $f9
    and $01                                       ; $5572: $e6 $01
    or $fb                                        ; $5574: $f6 $fb
    or $fe                                        ; $5576: $f6 $fe
    ld [bc], a                                    ; $5578: $02
    rlca                                          ; $5579: $07
    inc bc                                        ; $557a: $03
    rrca                                          ; $557b: $0f
    sbc c                                         ; $557c: $99
    inc c                                         ; $557d: $0c
    rrca                                          ; $557e: $0f
    ld [$0e0f], sp                                ; $557f: $08 $0f $0e
    dec bc                                        ; $5582: $0b

jr_0e5_5583:
    inc c                                         ; $5583: $0c
    ld l, a                                       ; $5584: $6f
    ld l, b                                       ; $5585: $68
    rst $38                                       ; $5586: $ff
    cp c                                          ; $5587: $b9
    rst $28                                       ; $5588: $ef
    sbc c                                         ; $5589: $99
    ld d, a                                       ; $558a: $57
    ld [hl], h                                    ; $558b: $74
    ld a, a                                       ; $558c: $7f
    ld e, a                                       ; $558d: $5f
    cp a                                          ; $558e: $bf

jr_0e5_558f:
    rst $18                                       ; $558f: $df
    rst $38                                       ; $5590: $ff
    sbc a                                         ; $5591: $9f
    rst $28                                       ; $5592: $ef
    sbc a                                         ; $5593: $9f
    cp a                                          ; $5594: $bf
    rst $18                                       ; $5595: $df
    ld [bc], a                                    ; $5596: $02
    ld a, a                                       ; $5597: $7f
    ld [bc], a                                    ; $5598: $02
    ldh [$03], a                                  ; $5599: $e0 $03

jr_0e5_559b:
    ldh a, [$99]                                  ; $559b: $f0 $99
    jr nc, jr_0e5_558f                            ; $559d: $30 $f0

    db $10                                        ; $559f: $10
    ldh a, [rSVBK]                                ; $55a0: $f0 $70
    ret nc                                        ; $55a2: $d0

    jr nc, jr_0e5_559b                            ; $55a3: $30 $f6

    sub [hl]                                      ; $55a5: $96
    rst $38                                       ; $55a6: $ff
    sbc l                                         ; $55a7: $9d
    rst $30                                       ; $55a8: $f7
    sbc c                                         ; $55a9: $99
    ld [$fe2e], a                                 ; $55aa: $ea $2e $fe
    ld a, [$fbfd]                                 ; $55ad: $fa $fd $fb
    rst $38                                       ; $55b0: $ff
    ld sp, hl                                     ; $55b1: $f9
    rst $30                                       ; $55b2: $f7
    ld sp, hl                                     ; $55b3: $f9
    db $fd                                        ; $55b4: $fd
    ei                                            ; $55b5: $fb
    ld [bc], a                                    ; $55b6: $02
    cp $06                                        ; $55b7: $fe $06
    ld a, a                                       ; $55b9: $7f
    adc [hl]                                      ; $55ba: $8e
    ld e, c                                       ; $55bb: $59
    ld a, a                                       ; $55bc: $7f
    ld h, b                                       ; $55bd: $60
    ld a, a                                       ; $55be: $7f
    rst $00                                       ; $55bf: $c7
    rst $38                                       ; $55c0: $ff
    sbc a                                         ; $55c1: $9f
    rst $38                                       ; $55c2: $ff
    adc d                                         ; $55c3: $8a
    ei                                            ; $55c4: $fb
    cp $ff                                        ; $55c5: $fe $ff
    ld c, d                                       ; $55c7: $4a
    ld a, e                                       ; $55c8: $7b
    ld [bc], a                                    ; $55c9: $02
    ld [hl], e                                    ; $55ca: $73
    ld [bc], a                                    ; $55cb: $02
    ld bc, $0008                                  ; $55cc: $01 $08 $00
    ld b, $07                                     ; $55cf: $06 $07
    adc h                                         ; $55d1: $8c
    dec b                                         ; $55d2: $05
    rlca                                          ; $55d3: $07
    inc bc                                        ; $55d4: $03
    rlca                                          ; $55d5: $07
    inc bc                                        ; $55d6: $03
    rlca                                          ; $55d7: $07
    ld bc, $0107                                  ; $55d8: $01 $07 $01
    rlca                                          ; $55db: $07
    inc bc                                        ; $55dc: $03
    rlca                                          ; $55dd: $07
    ld [bc], a                                    ; $55de: $02
    ld b, $81                                     ; $55df: $06 $81
    ld bc, $0703                                  ; $55e1: $01 $03 $07
    ld [$ff00], sp                                ; $55e4: $08 $00 $ff
    dec c                                         ; $55e7: $0d
    inc b                                         ; $55e8: $04
    ld sp, hl                                     ; $55e9: $f9
    ld [$01f2], sp                                ; $55ea: $08 $f2 $01
    and $fb                                       ; $55ed: $e6 $fb
    and $03                                       ; $55ef: $e6 $03
    or $fb                                        ; $55f1: $f6 $fb
    or $03                                        ; $55f3: $f6 $03
    ld [bc], a                                    ; $55f5: $02
    rrca                                          ; $55f6: $0f
    ld [bc], a                                    ; $55f7: $02
    rra                                           ; $55f8: $1f
    sub b                                         ; $55f9: $90
    ccf                                           ; $55fa: $3f
    inc a                                         ; $55fb: $3c
    ccf                                           ; $55fc: $3f
    inc a                                         ; $55fd: $3c
    dec a                                         ; $55fe: $3d
    dec sp                                        ; $55ff: $3b
    rra                                           ; $5600: $1f
    jr jr_0e5_563a                                ; $5601: $18 $37

    jr z, @+$21                                   ; $5603: $28 $1f

jr_0e5_5605:
    jr jr_0e5_5616                                ; $5605: $18 $0f

    ld [$0407], sp                                ; $5607: $08 $07 $04
    ld [bc], a                                    ; $560a: $02
    rra                                           ; $560b: $1f
    ld [bc], a                                    ; $560c: $02
    ld a, a                                       ; $560d: $7f
    add h                                         ; $560e: $84
    ld [$fd9d], a                                 ; $560f: $ea $9d $fd
    add e                                         ; $5612: $83
    ld [bc], a                                    ; $5613: $02
    ld a, a                                       ; $5614: $7f
    ld [bc], a                                    ; $5615: $02

jr_0e5_5616:
    ccf                                           ; $5616: $3f
    ld [bc], a                                    ; $5617: $02
    ret nz                                        ; $5618: $c0

    inc bc                                        ; $5619: $03
    ldh [$82], a                                  ; $561a: $e0 $82
    jr nz, @+$52                                  ; $561c: $20 $50

    ld [bc], a                                    ; $561e: $02
    or b                                          ; $561f: $b0
    add l                                         ; $5620: $85
    ldh a, [$d0]                                  ; $5621: $f0 $d0
    jr nc, jr_0e5_5605                            ; $5623: $30 $e0

    jr nz, jr_0e5_5629                            ; $5625: $20 $02

    db $e4                                        ; $5627: $e4
    adc h                                         ; $5628: $8c

jr_0e5_5629:
    xor $ea                                       ; $5629: $ee $ea
    db $eb                                        ; $562b: $eb
    dec l                                         ; $562c: $2d
    jp nc, $fcde                                  ; $562d: $d2 $de $fc

    db $e4                                        ; $5630: $e4
    db $f4                                        ; $5631: $f4
    db $ec                                        ; $5632: $ec
    add sp, -$08                                  ; $5633: $e8 $f8
    ld [bc], a                                    ; $5635: $02
    ldh a, [rSC]                                  ; $5636: $f0 $02
    ldh [rTMA], a                                 ; $5638: $e0 $06

jr_0e5_563a:
    rra                                           ; $563a: $1f
    add d                                         ; $563b: $82
    ld a, h                                       ; $563c: $7c
    ld a, a                                       ; $563d: $7f
    ld [bc], a                                    ; $563e: $02
    rst $38                                       ; $563f: $ff
    add e                                         ; $5640: $83
    and l                                         ; $5641: $a5
    db $fd                                        ; $5642: $fd
    ret z                                         ; $5643: $c8

jr_0e5_5644:
    inc bc                                        ; $5644: $03
    ld hl, sp-$7e                                 ; $5645: $f8 $82
    ret z                                         ; $5647: $c8

    ld hl, sp+$02                                 ; $5648: $f8 $02
    ld a, b                                       ; $564a: $78
    inc c                                         ; $564b: $0c
    nop                                           ; $564c: $00
    inc b                                         ; $564d: $04
    ldh [$8c], a                                  ; $564e: $e0 $8c
    ld b, b                                       ; $5650: $40
    ret nz                                        ; $5651: $c0

    jr nc, jr_0e5_5644                            ; $5652: $30 $f0

    ld [$86f8], sp                                ; $5654: $08 $f8 $86

jr_0e5_5657:
    cp $8d                                        ; $5657: $fe $8d
    rst $38                                       ; $5659: $ff
    or e                                          ; $565a: $b3
    rst $38                                       ; $565b: $ff
    ld [bc], a                                    ; $565c: $02
    ld a, h                                       ; $565d: $7c
    ld [bc], a                                    ; $565e: $02
    ld [hl], b                                    ; $565f: $70
    inc c                                         ; $5660: $0c
    nop                                           ; $5661: $00
    rst $38                                       ; $5662: $ff
    dec c                                         ; $5663: $0d
    inc b                                         ; $5664: $04
    ld sp, hl                                     ; $5665: $f9
    ld [$01f2], sp                                ; $5666: $08 $f2 $01
    add sp, -$05                                  ; $5669: $e8 $fb
    add sp, $03                                   ; $566b: $e8 $03
    ld hl, sp-$05                                 ; $566d: $f8 $fb
    ld hl, sp+$01                                 ; $566f: $f8 $01
    ld [bc], a                                    ; $5671: $02
    rrca                                          ; $5672: $0f
    ld [bc], a                                    ; $5673: $02
    rra                                           ; $5674: $1f
    sub b                                         ; $5675: $90
    ccf                                           ; $5676: $3f
    inc a                                         ; $5677: $3c
    ccf                                           ; $5678: $3f
    inc a                                         ; $5679: $3c
    dec a                                         ; $567a: $3d
    dec sp                                        ; $567b: $3b
    rra                                           ; $567c: $1f
    jr jr_0e5_56b6                                ; $567d: $18 $37

    jr z, @+$21                                   ; $567f: $28 $1f

jr_0e5_5681:
    jr jr_0e5_5692                                ; $5681: $18 $0f

    ld [$0407], sp                                ; $5683: $08 $07 $04
    ld [bc], a                                    ; $5686: $02
    rrca                                          ; $5687: $0f
    ld [bc], a                                    ; $5688: $02
    ccf                                           ; $5689: $3f
    add [hl]                                      ; $568a: $86
    ld e, a                                       ; $568b: $5f
    ld a, a                                       ; $568c: $7f
    rst $38                                       ; $568d: $ff
    add b                                         ; $568e: $80
    ld [hl], h                                    ; $568f: $74
    ld c, a                                       ; $5690: $4f
    ld [bc], a                                    ; $5691: $02

jr_0e5_5692:
    ccf                                           ; $5692: $3f
    ld [bc], a                                    ; $5693: $02
    ret nz                                        ; $5694: $c0

    inc bc                                        ; $5695: $03
    ldh [$82], a                                  ; $5696: $e0 $82
    jr nz, jr_0e5_56ea                            ; $5698: $20 $50

    ld [bc], a                                    ; $569a: $02
    or b                                          ; $569b: $b0
    add l                                         ; $569c: $85
    ldh a, [$d0]                                  ; $569d: $f0 $d0
    jr nc, jr_0e5_5681                            ; $569f: $30 $e0

    jr nz, jr_0e5_56a7                            ; $56a1: $20 $04

    ldh [$8a], a                                  ; $56a3: $e0 $8a
    db $e4                                        ; $56a5: $e4
    inc h                                         ; $56a6: $24

jr_0e5_56a7:
    adc $ca                                       ; $56a7: $ce $ca
    ei                                            ; $56a9: $fb
    db $fd                                        ; $56aa: $fd
    ld a, [c]                                     ; $56ab: $f2
    xor $ec                                       ; $56ac: $ee $ec
    db $fc                                        ; $56ae: $fc
    ld [bc], a                                    ; $56af: $02
    ldh a, [rSC]                                  ; $56b0: $f0 $02
    ldh [rDIV], a                                 ; $56b2: $e0 $04
    rra                                           ; $56b4: $1f
    adc c                                         ; $56b5: $89

jr_0e5_56b6:
    db $fc                                        ; $56b6: $fc
    rst $38                                       ; $56b7: $ff
    xor $ff                                       ; $56b8: $ee $ff
    db $e3                                        ; $56ba: $e3
    rst $38                                       ; $56bb: $ff
    xor a                                         ; $56bc: $af
    rst $38                                       ; $56bd: $ff
    ld d, c                                       ; $56be: $51
    inc bc                                        ; $56bf: $03
    ld [hl], c                                    ; $56c0: $71
    inc b                                         ; $56c1: $04
    ld bc, $000c                                  ; $56c2: $01 $0c $00
    ld [bc], a                                    ; $56c5: $02
    jr c, jr_0e5_56ca                             ; $56c6: $38 $02

    jr nc, jr_0e5_5657                            ; $56c8: $30 $8d

jr_0e5_56ca:
    db $10                                        ; $56ca: $10
    jr nc, @+$0a                                  ; $56cb: $30 $08

    jr c, @+$0a                                   ; $56cd: $38 $08

    jr c, @+$06                                   ; $56cf: $38 $04

    inc a                                         ; $56d1: $3c
    inc b                                         ; $56d2: $04
    inc a                                         ; $56d3: $3c
    ld c, $3e                                     ; $56d4: $0e $3e
    ld sp, $3f03                                  ; $56d6: $31 $03 $3f
    inc c                                         ; $56d9: $0c
    nop                                           ; $56da: $00
    rst $38                                       ; $56db: $ff
    dec c                                         ; $56dc: $0d
    inc b                                         ; $56dd: $04
    ld sp, hl                                     ; $56de: $f9
    ld [$01f2], sp                                ; $56df: $08 $f2 $01
    rst $20                                       ; $56e2: $e7
    db $fd                                        ; $56e3: $fd
    add sp, $01                                   ; $56e4: $e8 $01
    rst $30                                       ; $56e6: $f7
    db $fc                                        ; $56e7: $fc
    rst $30                                       ; $56e8: $f7
    rst $38                                       ; $56e9: $ff

jr_0e5_56ea:
    ld [bc], a                                    ; $56ea: $02
    ccf                                           ; $56eb: $3f
    ld [bc], a                                    ; $56ec: $02
    ld a, a                                       ; $56ed: $7f
    sub b                                         ; $56ee: $90
    rst $38                                       ; $56ef: $ff
    ldh a, [$fd]                                  ; $56f0: $f0 $fd
    ld a, [c]                                     ; $56f2: $f2
    rst $38                                       ; $56f3: $ff
    or $7f                                        ; $56f4: $f6 $7f
    ld h, b                                       ; $56f6: $60
    ld a, a                                       ; $56f7: $7f
    ld d, b                                       ; $56f8: $50
    dec a                                         ; $56f9: $3d
    inc hl                                        ; $56fa: $23
    ccf                                           ; $56fb: $3f
    inc hl                                        ; $56fc: $23
    rra                                           ; $56fd: $1f
    db $10                                        ; $56fe: $10
    ld [bc], a                                    ; $56ff: $02
    ccf                                           ; $5700: $3f
    ld [bc], a                                    ; $5701: $02
    ld a, a                                       ; $5702: $7f
    adc b                                         ; $5703: $88
    ld a, [hl]                                    ; $5704: $7e
    ld a, a                                       ; $5705: $7f
    ld [hl], a                                    ; $5706: $77
    ld a, b                                       ; $5707: $78
    rst $28                                       ; $5708: $ef
    ldh a, [$fd]                                  ; $5709: $f0 $fd
    ei                                            ; $570b: $fb
    inc b                                         ; $570c: $04
    ld [$0482], sp                                ; $570d: $08 $82 $04
    inc c                                         ; $5710: $0c
    ld [bc], a                                    ; $5711: $02
    ld [$0c82], sp                                ; $5712: $08 $82 $0c
    inc b                                         ; $5715: $04
    ld [$0208], sp                                ; $5716: $08 $08 $02
    ld b, $86                                     ; $5719: $06 $86
    rrca                                          ; $571b: $0f
    add hl, bc                                    ; $571c: $09
    dec c                                         ; $571d: $0d
    inc bc                                        ; $571e: $03
    ld c, $06                                     ; $571f: $0e $06
    inc b                                         ; $5721: $04
    ld [$f802], sp                                ; $5722: $08 $02 $f8
    ld [bc], a                                    ; $5725: $02
    jr c, jr_0e5_572c                             ; $5726: $38 $04

    ccf                                           ; $5728: $3f
    adc c                                         ; $5729: $89
    db $10                                        ; $572a: $10
    rra                                           ; $572b: $1f

jr_0e5_572c:
    ld sp, $333f                                  ; $572c: $31 $3f $33
    ccf                                           ; $572f: $3f
    ld b, e                                       ; $5730: $43
    ld a, a                                       ; $5731: $7f
    add [hl]                                      ; $5732: $86
    inc bc                                        ; $5733: $03
    cp $82                                        ; $5734: $fe $82
    ld [hl], d                                    ; $5736: $72
    ld a, [hl]                                    ; $5737: $7e
    ld [bc], a                                    ; $5738: $02
    ld e, $0c                                     ; $5739: $1e $0c
    nop                                           ; $573b: $00
    inc b                                         ; $573c: $04
    ld b, $84                                     ; $573d: $06 $84
    dec b                                         ; $573f: $05
    rlca                                          ; $5740: $07
    dec b                                         ; $5741: $05
    rlca                                          ; $5742: $07
    ld [bc], a                                    ; $5743: $02
    ld b, $02                                     ; $5744: $06 $02
    inc b                                         ; $5746: $04
    ld [de], a                                    ; $5747: $12
    nop                                           ; $5748: $00
    rst $38                                       ; $5749: $ff
    dec c                                         ; $574a: $0d
    inc b                                         ; $574b: $04
    ld sp, hl                                     ; $574c: $f9
    ld [$01f2], sp                                ; $574d: $08 $f2 $01
    and $fc                                       ; $5750: $e6 $fc
    and $03                                       ; $5752: $e6 $03
    or $fb                                        ; $5754: $f6 $fb
    or $03                                        ; $5756: $f6 $03
    ld [bc], a                                    ; $5758: $02
    rra                                           ; $5759: $1f
    ld [bc], a                                    ; $575a: $02
    ccf                                           ; $575b: $3f
    sub b                                         ; $575c: $90
    ld a, a                                       ; $575d: $7f
    ld a, h                                       ; $575e: $7c
    ld a, a                                       ; $575f: $7f
    ld a, h                                       ; $5760: $7c
    ld a, a                                       ; $5761: $7f
    ld a, c                                       ; $5762: $79
    ld a, a                                       ; $5763: $7f
    ld a, b                                       ; $5764: $78
    scf                                           ; $5765: $37
    jr z, @+$21                                   ; $5766: $28 $1f

    jr jr_0e5_5780                                ; $5768: $18 $16

    add hl, de                                    ; $576a: $19
    rrca                                          ; $576b: $0f
    ld [$1f02], sp                                ; $576c: $08 $02 $1f
    add l                                         ; $576f: $85
    ld a, $3f                                     ; $5770: $3e $3f
    ld a, l                                       ; $5772: $7d
    ld a, [hl]                                    ; $5773: $7e
    cp [hl]                                       ; $5774: $be
    inc bc                                        ; $5775: $03
    rst $38                                       ; $5776: $ff
    ld [bc], a                                    ; $5777: $02
    ld a, a                                       ; $5778: $7f
    ld [bc], a                                    ; $5779: $02
    ld b, b                                       ; $577a: $40
    inc bc                                        ; $577b: $03
    ld h, b                                       ; $577c: $60
    adc c                                         ; $577d: $89
    jr nz, jr_0e5_57f0                            ; $577e: $20 $70

jr_0e5_5780:
    db $10                                        ; $5780: $10
    jr nz, jr_0e5_57e3                            ; $5781: $20 $60

    ld [hl], b                                    ; $5783: $70
    db $10                                        ; $5784: $10
    ld h, b                                       ; $5785: $60
    jr nz, jr_0e5_578a                            ; $5786: $20 $02

    ld h, [hl]                                    ; $5788: $66
    adc e                                         ; $5789: $8b

jr_0e5_578a:
    ld l, l                                       ; $578a: $6d
    ld l, e                                       ; $578b: $6b
    ld [hl], a                                    ; $578c: $77
    add hl, sp                                    ; $578d: $39
    ld e, [hl]                                    ; $578e: $5e
    ld h, [hl]                                    ; $578f: $66
    ld a, b                                       ; $5790: $78
    ld [$1070], sp                                ; $5791: $08 $70 $10
    jr nz, jr_0e5_579b                            ; $5794: $20 $05

    ld h, b                                       ; $5796: $60
    ld b, $1f                                     ; $5797: $06 $1f
    adc c                                         ; $5799: $89
    db $10                                        ; $579a: $10

jr_0e5_579b:
    rra                                           ; $579b: $1f
    ld h, e                                       ; $579c: $63
    ld a, a                                       ; $579d: $7f
    ld [c], a                                     ; $579e: $e2

jr_0e5_579f:
    cp $84                                        ; $579f: $fe $84
    db $fc                                        ; $57a1: $fc
    ret z                                         ; $57a2: $c8

    inc bc                                        ; $57a3: $03
    ld hl, sp-$7e                                 ; $57a4: $f8 $82
    ret z                                         ; $57a6: $c8

    ld hl, sp+$02                                 ; $57a7: $f8 $02

jr_0e5_57a9:
    ld a, b                                       ; $57a9: $78
    ld a, [bc]                                    ; $57aa: $0a
    nop                                           ; $57ab: $00
    inc b                                         ; $57ac: $04
    ldh [rSC], a                                  ; $57ad: $e0 $02
    ldh a, [$88]                                  ; $57af: $f0 $88
    ret z                                         ; $57b1: $c8

    ld hl, sp-$3a                                 ; $57b2: $f8 $c6
    cp $cd                                        ; $57b4: $fe $cd
    rst $38                                       ; $57b6: $ff
    or e                                          ; $57b7: $b3
    rst $38                                       ; $57b8: $ff
    ld [bc], a                                    ; $57b9: $02
    ld a, h                                       ; $57ba: $7c
    ld [bc], a                                    ; $57bb: $02
    ld [hl], b                                    ; $57bc: $70
    ld c, $00                                     ; $57bd: $0e $00
    rst $38                                       ; $57bf: $ff
    dec c                                         ; $57c0: $0d
    inc b                                         ; $57c1: $04
    ld sp, hl                                     ; $57c2: $f9
    ld [$01f2], sp                                ; $57c3: $08 $f2 $01
    add sp, -$03                                  ; $57c6: $e8 $fd
    jp hl                                         ; $57c8: $e9


    ld [bc], a                                    ; $57c9: $02
    ld hl, sp-$05                                 ; $57ca: $f8 $fb
    ld hl, sp+$01                                 ; $57cc: $f8 $01
    ld [bc], a                                    ; $57ce: $02
    ccf                                           ; $57cf: $3f
    ld [bc], a                                    ; $57d0: $02
    ld a, a                                       ; $57d1: $7f
    sub b                                         ; $57d2: $90
    rst $38                                       ; $57d3: $ff
    ld hl, sp-$01                                 ; $57d4: $f8 $ff
    ld hl, sp-$02                                 ; $57d6: $f8 $fe
    di                                            ; $57d8: $f3
    rst $38                                       ; $57d9: $ff
    ldh a, [$6f]                                  ; $57da: $f0 $6f
    ld d, b                                       ; $57dc: $50
    ccf                                           ; $57dd: $3f
    ld sp, $332d                                  ; $57de: $31 $2d $33
    rra                                           ; $57e1: $1f
    db $10                                        ; $57e2: $10

jr_0e5_57e3:
    ld [bc], a                                    ; $57e3: $02
    ccf                                           ; $57e4: $3f
    add [hl]                                      ; $57e5: $86
    ld a, l                                       ; $57e6: $7d
    ld a, [hl]                                    ; $57e7: $7e
    ld a, a                                       ; $57e8: $7f
    ld a, b                                       ; $57e9: $78
    or $f9                                        ; $57ea: $f6 $f9
    inc b                                         ; $57ec: $04
    rst $38                                       ; $57ed: $ff
    inc b                                         ; $57ee: $04
    db $10                                        ; $57ef: $10

jr_0e5_57f0:
    add d                                         ; $57f0: $82
    jr jr_0e5_57fb                                ; $57f1: $18 $08

    ld [bc], a                                    ; $57f3: $02
    db $10                                        ; $57f4: $10
    add d                                         ; $57f5: $82
    jr jr_0e5_5800                                ; $57f6: $18 $08

    ld b, $10                                     ; $57f8: $06 $10
    ld [bc], a                                    ; $57fa: $02

jr_0e5_57fb:
    ld d, $86                                     ; $57fb: $16 $86
    rra                                           ; $57fd: $1f
    add hl, de                                    ; $57fe: $19
    rra                                           ; $57ff: $1f

jr_0e5_5800:
    inc bc                                        ; $5800: $03
    inc e                                         ; $5801: $1c
    inc c                                         ; $5802: $0c
    ld b, $10                                     ; $5803: $06 $10
    ld [bc], a                                    ; $5805: $02
    ldh a, [rSC]                                  ; $5806: $f0 $02
    ld e, $02                                     ; $5808: $1e $02
    rra                                           ; $580a: $1f
    adc e                                         ; $580b: $8b
    ld [$f80f], sp                                ; $580c: $08 $0f $f8
    rst $38                                       ; $580f: $ff
    db $e4                                        ; $5810: $e4
    rst $38                                       ; $5811: $ff
    pop hl                                        ; $5812: $e1
    rst $38                                       ; $5813: $ff
    xor a                                         ; $5814: $af
    rst $38                                       ; $5815: $ff
    ld d, c                                       ; $5816: $51
    inc bc                                        ; $5817: $03
    ld [hl], c                                    ; $5818: $71
    stop                                          ; $5819: $10 $00
    ld [bc], a                                    ; $581b: $02
    jr nc, jr_0e5_579f                            ; $581c: $30 $81

    jr jr_0e5_5823                                ; $581e: $18 $03

    jr c, jr_0e5_57a9                             ; $5820: $38 $87

    inc h                                         ; $5822: $24

jr_0e5_5823:
    inc a                                         ; $5823: $3c
    inc h                                         ; $5824: $24
    inc a                                         ; $5825: $3c
    ld c, $3e                                     ; $5826: $0e $3e
    ld sp, $3f03                                  ; $5828: $31 $03 $3f
    ld c, $00                                     ; $582b: $0e $00
    rst $38                                       ; $582d: $ff
    dec c                                         ; $582e: $0d
    inc b                                         ; $582f: $04
    ld sp, hl                                     ; $5830: $f9
    ld [$01f2], sp                                ; $5831: $08 $f2 $01
    rst $20                                       ; $5834: $e7
    db $fd                                        ; $5835: $fd
    add sp, $02                                   ; $5836: $e8 $02
    rst $30                                       ; $5838: $f7
    db $fc                                        ; $5839: $fc
    rst $30                                       ; $583a: $f7
    rst $38                                       ; $583b: $ff
    ld [bc], a                                    ; $583c: $02
    ccf                                           ; $583d: $3f
    ld [bc], a                                    ; $583e: $02
    ld a, a                                       ; $583f: $7f
    sub b                                         ; $5840: $90
    rst $38                                       ; $5841: $ff
    ldh a, [$fd]                                  ; $5842: $f0 $fd
    ld a, [c]                                     ; $5844: $f2
    rst $38                                       ; $5845: $ff
    or $7f                                        ; $5846: $f6 $7f
    ld h, b                                       ; $5848: $60

jr_0e5_5849:
    ld a, a                                       ; $5849: $7f
    ld d, b                                       ; $584a: $50
    dec a                                         ; $584b: $3d
    inc hl                                        ; $584c: $23
    ccf                                           ; $584d: $3f
    inc hl                                        ; $584e: $23
    rra                                           ; $584f: $1f
    db $10                                        ; $5850: $10
    ld [bc], a                                    ; $5851: $02
    ccf                                           ; $5852: $3f
    ld [bc], a                                    ; $5853: $02
    ld a, a                                       ; $5854: $7f

jr_0e5_5855:
    add h                                         ; $5855: $84
    or e                                          ; $5856: $b3
    adc $fe                                       ; $5857: $ce $fe
    add c                                         ; $5859: $81
    inc b                                         ; $585a: $04
    rst $38                                       ; $585b: $ff
    inc b                                         ; $585c: $04
    db $10                                        ; $585d: $10
    add d                                         ; $585e: $82
    ld [$0218], sp                                ; $585f: $08 $18 $02
    db $10                                        ; $5862: $10
    add d                                         ; $5863: $82
    jr jr_0e5_586e                                ; $5864: $18 $08

    ld [$0210], sp                                ; $5866: $08 $10 $02
    inc b                                         ; $5869: $04
    add [hl]                                      ; $586a: $86
    ld e, $1a                                     ; $586b: $1e $1a
    dec c                                         ; $586d: $0d

jr_0e5_586e:
    rra                                           ; $586e: $1f
    ld d, $1e                                     ; $586f: $16 $1e
    ld [bc], a                                    ; $5871: $02
    jr jr_0e5_5876                                ; $5872: $18 $02

    db $10                                        ; $5874: $10
    ld [bc], a                                    ; $5875: $02

jr_0e5_5876:
    ldh a, [rSC]                                  ; $5876: $f0 $02
    inc a                                         ; $5878: $3c
    ld [bc], a                                    ; $5879: $02
    ccf                                           ; $587a: $3f
    adc [hl]                                      ; $587b: $8e
    inc a                                         ; $587c: $3c
    ccf                                           ; $587d: $3f
    jr jr_0e5_589f                                ; $587e: $18 $1f

    ld a, $3f                                     ; $5880: $3e $3f
    ld a, e                                       ; $5882: $7b
    ld a, a                                       ; $5883: $7f
    cp h                                          ; $5884: $bc
    rst $38                                       ; $5885: $ff
    rst $30                                       ; $5886: $f7
    rst $38                                       ; $5887: $ff
    ld a, d                                       ; $5888: $7a
    ld a, [hl]                                    ; $5889: $7e
    ld [bc], a                                    ; $588a: $02
    ld e, $0e                                     ; $588b: $1e $0e
    nop                                           ; $588d: $00
    ld [bc], a                                    ; $588e: $02
    ld b, $02                                     ; $588f: $06 $02
    inc b                                         ; $5891: $04
    adc b                                         ; $5892: $88
    ld [bc], a                                    ; $5893: $02
    ld b, $01                                     ; $5894: $06 $01
    rlca                                          ; $5896: $07
    ld bc, $0207                                  ; $5897: $01 $07 $02
    ld b, $02                                     ; $589a: $06 $02
    inc b                                         ; $589c: $04
    stop                                          ; $589d: $10 $00

jr_0e5_589f:
    rst $38                                       ; $589f: $ff
    dec c                                         ; $58a0: $0d
    inc b                                         ; $58a1: $04
    ld hl, sp+$07                                 ; $58a2: $f8 $07
    ld a, [c]                                     ; $58a4: $f2
    ld bc, $f9e7                                  ; $58a5: $01 $e7 $f9
    rst $20                                       ; $58a8: $e7
    rst $38                                       ; $58a9: $ff
    rst $30                                       ; $58aa: $f7
    ld sp, hl                                     ; $58ab: $f9
    rst $30                                       ; $58ac: $f7
    rst $38                                       ; $58ad: $ff
    ld [bc], a                                    ; $58ae: $02
    rrca                                          ; $58af: $0f
    ld [bc], a                                    ; $58b0: $02
    rra                                           ; $58b1: $1f
    ld b, $3f                                     ; $58b2: $06 $3f
    dec b                                         ; $58b4: $05
    rra                                           ; $58b5: $1f
    add e                                         ; $58b6: $83
    rla                                           ; $58b7: $17
    rra                                           ; $58b8: $1f
    jr jr_0e5_58bd                                ; $58b9: $18 $02

    rrca                                          ; $58bb: $0f
    ld [bc], a                                    ; $58bc: $02

jr_0e5_58bd:
    jr c, jr_0e5_5849                             ; $58bd: $38 $8a

    ld d, a                                       ; $58bf: $57
    ld a, a                                       ; $58c0: $7f

jr_0e5_58c1:
    ld e, b                                       ; $58c1: $58
    ld a, a                                       ; $58c2: $7f
    call c, $bfff                                 ; $58c3: $dc $ff $bf
    rst $38                                       ; $58c6: $ff
    sbc a                                         ; $58c7: $9f
    rst $38                                       ; $58c8: $ff
    ld [bc], a                                    ; $58c9: $02
    db $10                                        ; $58ca: $10
    ld [bc], a                                    ; $58cb: $02
    jr c, jr_0e5_58d4                             ; $58cc: $38 $06

    inc a                                         ; $58ce: $3c
    dec b                                         ; $58cf: $05
    jr c, jr_0e5_5855                             ; $58d0: $38 $83

    jr z, jr_0e5_590c                             ; $58d2: $28 $38

jr_0e5_58d4:
    jr jr_0e5_58d8                                ; $58d4: $18 $02

    jr nc, jr_0e5_58da                            ; $58d6: $30 $02

jr_0e5_58d8:
    inc e                                         ; $58d8: $1c
    adc a                                         ; $58d9: $8f

jr_0e5_58da:
    ld a, [hl+]                                   ; $58da: $2a
    ld a, $1a                                     ; $58db: $3e $1a
    ld a, $3b                                     ; $58dd: $3e $3b
    ccf                                           ; $58df: $3f
    dec a                                         ; $58e0: $3d

jr_0e5_58e1:
    ccf                                           ; $58e1: $3f
    add hl, sp                                    ; $58e2: $39
    ccf                                           ; $58e3: $3f
    sbc a                                         ; $58e4: $9f
    rst $38                                       ; $58e5: $ff
    sbc a                                         ; $58e6: $9f
    rst $38                                       ; $58e7: $ff
    cp a                                          ; $58e8: $bf
    ld [bc], a                                    ; $58e9: $02
    rst $38                                       ; $58ea: $ff
    add e                                         ; $58eb: $83
    cp a                                          ; $58ec: $bf
    ld a, a                                       ; $58ed: $7f
    ld e, a                                       ; $58ee: $5f
    ld [bc], a                                    ; $58ef: $02
    ccf                                           ; $58f0: $3f
    add d                                         ; $58f1: $82
    inc a                                         ; $58f2: $3c
    ccf                                           ; $58f3: $3f
    ld [bc], a                                    ; $58f4: $02
    ld a, a                                       ; $58f5: $7f
    add h                                         ; $58f6: $84
    ld e, a                                       ; $58f7: $5f
    ld a, a                                       ; $58f8: $7f
    ld h, b                                       ; $58f9: $60
    ld a, a                                       ; $58fa: $7f
    ld [bc], a                                    ; $58fb: $02
    ccf                                           ; $58fc: $3f
    ld a, [bc]                                    ; $58fd: $0a
    nop                                           ; $58fe: $00
    add l                                         ; $58ff: $85
    add hl, sp                                    ; $5900: $39
    ccf                                           ; $5901: $3f
    add hl, sp                                    ; $5902: $39
    ccf                                           ; $5903: $3f
    dec a                                         ; $5904: $3d
    ld [bc], a                                    ; $5905: $02
    ccf                                           ; $5906: $3f
    add h                                         ; $5907: $84

jr_0e5_5908:
    dec a                                         ; $5908: $3d
    ld a, $3a                                     ; $5909: $3e $3a
    inc e                                         ; $590b: $1c

jr_0e5_590c:
    inc bc                                        ; $590c: $03
    inc a                                         ; $590d: $3c
    ld [bc], a                                    ; $590e: $02
    ld a, $84                                     ; $590f: $3e $84
    ld a, [hl-]                                   ; $5911: $3a
    ld a, $06                                     ; $5912: $3e $06
    ld a, $02                                     ; $5914: $3e $02
    inc a                                         ; $5916: $3c
    ld a, [bc]                                    ; $5917: $0a
    nop                                           ; $5918: $00
    rst $38                                       ; $5919: $ff
    dec c                                         ; $591a: $0d
    inc b                                         ; $591b: $04
    ld hl, sp+$07                                 ; $591c: $f8 $07
    ld a, [c]                                     ; $591e: $f2
    ld bc, $f9e7                                  ; $591f: $01 $e7 $f9
    rst $20                                       ; $5922: $e7
    rst $38                                       ; $5923: $ff
    rst $30                                       ; $5924: $f7
    ld sp, hl                                     ; $5925: $f9
    rst $30                                       ; $5926: $f7
    rst $38                                       ; $5927: $ff
    ld [bc], a                                    ; $5928: $02
    ld c, $02                                     ; $5929: $0e $02
    rra                                           ; $592b: $1f
    ld [$053f], sp                                ; $592c: $08 $3f $05
    rra                                           ; $592f: $1f
    add c                                         ; $5930: $81
    jr jr_0e5_5935                                ; $5931: $18 $02

    rrca                                          ; $5933: $0f
    ld [bc], a                                    ; $5934: $02

jr_0e5_5935:
    jr c, jr_0e5_58c1                             ; $5935: $38 $8a

    ld d, a                                       ; $5937: $57
    ld a, a                                       ; $5938: $7f
    ld e, b                                       ; $5939: $58
    ld a, a                                       ; $593a: $7f
    sbc h                                         ; $593b: $9c
    rst $38                                       ; $593c: $ff
    cp a                                          ; $593d: $bf
    rst $38                                       ; $593e: $ff
    cp a                                          ; $593f: $bf
    rst $38                                       ; $5940: $ff
    ld [bc], a                                    ; $5941: $02
    jr nc, jr_0e5_5946                            ; $5942: $30 $02

    jr c, jr_0e5_594a                             ; $5944: $38 $04

jr_0e5_5946:
    inc a                                         ; $5946: $3c
    rlca                                          ; $5947: $07
    jr c, @-$7b                                   ; $5948: $38 $83

jr_0e5_594a:
    jr z, jr_0e5_5984                             ; $594a: $28 $38

    jr jr_0e5_5950                                ; $594c: $18 $02

    jr nc, jr_0e5_5952                            ; $594e: $30 $02

jr_0e5_5950:
    jr jr_0e5_58e1                                ; $5950: $18 $8f

jr_0e5_5952:
    ld l, $3e                                     ; $5952: $2e $3e
    ld a, [de]                                    ; $5954: $1a
    ld a, $3b                                     ; $5955: $3e $3b
    ccf                                           ; $5957: $3f
    dec sp                                        ; $5958: $3b
    ccf                                           ; $5959: $3f
    add hl, sp                                    ; $595a: $39
    ccf                                           ; $595b: $3f
    sbc a                                         ; $595c: $9f
    rst $38                                       ; $595d: $ff
    sbc a                                         ; $595e: $9f
    rst $38                                       ; $595f: $ff
    cp a                                          ; $5960: $bf
    ld [bc], a                                    ; $5961: $02
    rst $38                                       ; $5962: $ff
    add e                                         ; $5963: $83

jr_0e5_5964:
    sbc a                                         ; $5964: $9f
    rst $38                                       ; $5965: $ff
    sbc a                                         ; $5966: $9f
    ld [bc], a                                    ; $5967: $02
    ld a, a                                       ; $5968: $7f
    ld [bc], a                                    ; $5969: $02
    ccf                                           ; $596a: $3f
    add h                                         ; $596b: $84
    ld l, $3f                                     ; $596c: $2e $3f
    add hl, de                                    ; $596e: $19
    rra                                           ; $596f: $1f
    ld [bc], a                                    ; $5970: $02
    rrca                                          ; $5971: $0f
    ld [bc], a                                    ; $5972: $02
    ld bc, $000a                                  ; $5973: $01 $0a $00
    add c                                         ; $5976: $81
    add hl, sp                                    ; $5977: $39
    inc bc                                        ; $5978: $03
    ccf                                           ; $5979: $3f
    inc bc                                        ; $597a: $03
    ld a, $83                                     ; $597b: $3e $83
    ld a, [hl-]                                   ; $597d: $3a
    inc l                                         ; $597e: $2c
    inc a                                         ; $597f: $3c
    ld [bc], a                                    ; $5980: $02
    jr c, jr_0e5_5908                             ; $5981: $38 $85

    inc c                                         ; $5983: $0c

jr_0e5_5984:
    inc a                                         ; $5984: $3c
    inc [hl]                                      ; $5985: $34
    inc a                                         ; $5986: $3c
    inc c                                         ; $5987: $0c
    inc bc                                        ; $5988: $03
    inc a                                         ; $5989: $3c
    ld [bc], a                                    ; $598a: $02
    jr c, jr_0e5_5997                             ; $598b: $38 $0a

    nop                                           ; $598d: $00
    rst $38                                       ; $598e: $ff
    rlca                                          ; $598f: $07
    ld bc, $07f8                                  ; $5990: $01 $f8 $07
    ld a, [c]                                     ; $5993: $f2
    ld bc, $faf1                                  ; $5994: $01 $f1 $fa

jr_0e5_5997:
    add d                                         ; $5997: $82
    nop                                           ; $5998: $00
    rrca                                          ; $5999: $0f
    ld e, $00                                     ; $599a: $1e $00
    rst $38                                       ; $599c: $ff
    dec c                                         ; $599d: $0d
    inc b                                         ; $599e: $04
    ld hl, sp+$07                                 ; $599f: $f8 $07
    ld a, [c]                                     ; $59a1: $f2
    ld bc, $f9e8                                  ; $59a2: $01 $e8 $f9
    add sp, -$01                                  ; $59a5: $e8 $ff
    ld hl, sp-$07                                 ; $59a7: $f8 $f9
    ld hl, sp-$01                                 ; $59a9: $f8 $ff
    ld [bc], a                                    ; $59ab: $02
    ld c, $02                                     ; $59ac: $0e $02
    rra                                           ; $59ae: $1f
    ld [$053f], sp                                ; $59af: $08 $3f $05
    rra                                           ; $59b2: $1f
    add c                                         ; $59b3: $81
    jr jr_0e5_59b8                                ; $59b4: $18 $02

    inc c                                         ; $59b6: $0c
    adc h                                         ; $59b7: $8c

jr_0e5_59b8:
    jr nc, jr_0e5_59f9                            ; $59b8: $30 $3f

    ld e, b                                       ; $59ba: $58
    ld a, a                                       ; $59bb: $7f
    ld e, a                                       ; $59bc: $5f
    ld a, a                                       ; $59bd: $7f
    rst $18                                       ; $59be: $df
    rst $38                                       ; $59bf: $ff
    sbc a                                         ; $59c0: $9f
    rst $38                                       ; $59c1: $ff
    cp a                                          ; $59c2: $bf

jr_0e5_59c3:
    rst $38                                       ; $59c3: $ff
    ld [bc], a                                    ; $59c4: $02
    jr nc, jr_0e5_59c9                            ; $59c5: $30 $02

    jr c, jr_0e5_59cd                             ; $59c7: $38 $04

jr_0e5_59c9:
    inc a                                         ; $59c9: $3c
    rlca                                          ; $59ca: $07
    jr c, jr_0e5_5950                             ; $59cb: $38 $83

jr_0e5_59cd:
    jr z, jr_0e5_5a07                             ; $59cd: $28 $38

jr_0e5_59cf:
    jr jr_0e5_59d3                                ; $59cf: $18 $02

    jr nc, jr_0e5_5964                            ; $59d1: $30 $91

jr_0e5_59d3:
    inc c                                         ; $59d3: $0c
    inc a                                         ; $59d4: $3c
    ld a, [de]                                    ; $59d5: $1a
    ld a, $3a                                     ; $59d6: $3e $3a
    ld a, $3b                                     ; $59d8: $3e $3b
    ccf                                           ; $59da: $3f
    add hl, sp                                    ; $59db: $39
    ccf                                           ; $59dc: $3f
    add hl, sp                                    ; $59dd: $39
    ccf                                           ; $59de: $3f
    sbc a                                         ; $59df: $9f
    rst $38                                       ; $59e0: $ff
    sbc a                                         ; $59e1: $9f
    rst $38                                       ; $59e2: $ff
    cp a                                          ; $59e3: $bf
    ld [bc], a                                    ; $59e4: $02
    rst $38                                       ; $59e5: $ff
    add e                                         ; $59e6: $83
    sbc a                                         ; $59e7: $9f
    rst $38                                       ; $59e8: $ff
    cp a                                          ; $59e9: $bf
    ld [bc], a                                    ; $59ea: $02
    ld a, a                                       ; $59eb: $7f
    ld [bc], a                                    ; $59ec: $02
    ccf                                           ; $59ed: $3f
    add h                                         ; $59ee: $84
    daa                                           ; $59ef: $27
    ccf                                           ; $59f0: $3f
    inc e                                         ; $59f1: $1c
    rra                                           ; $59f2: $1f
    ld [bc], a                                    ; $59f3: $02
    rrca                                          ; $59f4: $0f
    inc c                                         ; $59f5: $0c
    nop                                           ; $59f6: $00
    add e                                         ; $59f7: $83
    add hl, sp                                    ; $59f8: $39

jr_0e5_59f9:
    ccf                                           ; $59f9: $3f
    dec a                                         ; $59fa: $3d
    inc bc                                        ; $59fb: $03
    ccf                                           ; $59fc: $3f
    add e                                         ; $59fd: $83
    ld a, $3a                                     ; $59fe: $3e $3a
    inc c                                         ; $5a00: $0c
    dec b                                         ; $5a01: $05
    inc a                                         ; $5a02: $3c
    add c                                         ; $5a03: $81
    inc l                                         ; $5a04: $2c
    inc bc                                        ; $5a05: $03
    inc a                                         ; $5a06: $3c

jr_0e5_5a07:
    ld [bc], a                                    ; $5a07: $02
    jr nc, jr_0e5_5a16                            ; $5a08: $30 $0c

    nop                                           ; $5a0a: $00
    rst $38                                       ; $5a0b: $ff
    rlca                                          ; $5a0c: $07
    ld bc, $07f8                                  ; $5a0d: $01 $f8 $07
    ld a, [c]                                     ; $5a10: $f2
    ld bc, $f9f1                                  ; $5a11: $01 $f1 $f9
    add d                                         ; $5a14: $82
    nop                                           ; $5a15: $00

jr_0e5_5a16:
    inc bc                                        ; $5a16: $03
    ld e, $00                                     ; $5a17: $1e $00
    rst $38                                       ; $5a19: $ff
    dec c                                         ; $5a1a: $0d
    inc b                                         ; $5a1b: $04
    ld hl, sp+$07                                 ; $5a1c: $f8 $07
    ld a, [c]                                     ; $5a1e: $f2
    ld bc, $f9e7                                  ; $5a1f: $01 $e7 $f9
    rst $20                                       ; $5a22: $e7
    rst $38                                       ; $5a23: $ff
    rst $30                                       ; $5a24: $f7
    ld sp, hl                                     ; $5a25: $f9
    rst $30                                       ; $5a26: $f7
    rst $38                                       ; $5a27: $ff
    ld [bc], a                                    ; $5a28: $02
    rrca                                          ; $5a29: $0f
    ld [bc], a                                    ; $5a2a: $02
    rra                                           ; $5a2b: $1f
    ld b, $3f                                     ; $5a2c: $06 $3f
    dec b                                         ; $5a2e: $05
    rra                                           ; $5a2f: $1f
    add e                                         ; $5a30: $83
    rla                                           ; $5a31: $17
    rra                                           ; $5a32: $1f
    jr jr_0e5_5a37                                ; $5a33: $18 $02

    rrca                                          ; $5a35: $0f
    ld [bc], a                                    ; $5a36: $02

jr_0e5_5a37:
    jr c, jr_0e5_59c3                             ; $5a37: $38 $8a

    ld d, a                                       ; $5a39: $57
    ld a, a                                       ; $5a3a: $7f
    ld e, b                                       ; $5a3b: $58
    ld a, a                                       ; $5a3c: $7f
    call c, $bfff                                 ; $5a3d: $dc $ff $bf
    rst $38                                       ; $5a40: $ff
    sbc a                                         ; $5a41: $9f
    rst $38                                       ; $5a42: $ff
    ld [bc], a                                    ; $5a43: $02
    db $10                                        ; $5a44: $10
    ld [bc], a                                    ; $5a45: $02
    jr c, jr_0e5_5a4e                             ; $5a46: $38 $06

jr_0e5_5a48:
    inc a                                         ; $5a48: $3c
    dec b                                         ; $5a49: $05
    jr c, jr_0e5_59cf                             ; $5a4a: $38 $83

    jr z, @+$3a                                   ; $5a4c: $28 $38

jr_0e5_5a4e:
    jr jr_0e5_5a52                                ; $5a4e: $18 $02

    jr nc, jr_0e5_5a54                            ; $5a50: $30 $02

jr_0e5_5a52:
    inc e                                         ; $5a52: $1c
    adc a                                         ; $5a53: $8f

jr_0e5_5a54:
    ld a, [hl+]                                   ; $5a54: $2a
    ld a, $1a                                     ; $5a55: $3e $1a
    ld a, $3b                                     ; $5a57: $3e $3b
    ccf                                           ; $5a59: $3f
    dec a                                         ; $5a5a: $3d
    ccf                                           ; $5a5b: $3f
    add hl, sp                                    ; $5a5c: $39
    ccf                                           ; $5a5d: $3f
    sbc a                                         ; $5a5e: $9f
    rst $38                                       ; $5a5f: $ff
    sbc a                                         ; $5a60: $9f
    rst $38                                       ; $5a61: $ff
    cp a                                          ; $5a62: $bf
    ld [bc], a                                    ; $5a63: $02
    rst $38                                       ; $5a64: $ff
    add e                                         ; $5a65: $83
    cp a                                          ; $5a66: $bf
    ld a, a                                       ; $5a67: $7f
    ld e, a                                       ; $5a68: $5f
    ld [bc], a                                    ; $5a69: $02
    ccf                                           ; $5a6a: $3f
    ld [bc], a                                    ; $5a6b: $02
    rra                                           ; $5a6c: $1f
    add [hl]                                      ; $5a6d: $86
    inc sp                                        ; $5a6e: $33
    ccf                                           ; $5a6f: $3f
    inc l                                         ; $5a70: $2c
    ccf                                           ; $5a71: $3f
    inc sp                                        ; $5a72: $33
    ccf                                           ; $5a73: $3f
    ld [bc], a                                    ; $5a74: $02
    rra                                           ; $5a75: $1f
    ld a, [bc]                                    ; $5a76: $0a
    nop                                           ; $5a77: $00
    add l                                         ; $5a78: $85
    add hl, sp                                    ; $5a79: $39
    ccf                                           ; $5a7a: $3f
    add hl, sp                                    ; $5a7b: $39
    ccf                                           ; $5a7c: $3f
    dec a                                         ; $5a7d: $3d
    ld [bc], a                                    ; $5a7e: $02
    ccf                                           ; $5a7f: $3f
    add e                                         ; $5a80: $83
    dec a                                         ; $5a81: $3d
    ld a, $3a                                     ; $5a82: $3e $3a
    ld [bc], a                                    ; $5a84: $02
    ld a, $02                                     ; $5a85: $3e $02
    inc a                                         ; $5a87: $3c
    add e                                         ; $5a88: $83
    inc [hl]                                      ; $5a89: $34
    inc a                                         ; $5a8a: $3c
    ld [$3803], sp                                ; $5a8b: $08 $03 $38
    inc c                                         ; $5a8e: $0c
    nop                                           ; $5a8f: $00
    rst $38                                       ; $5a90: $ff
    rlca                                          ; $5a91: $07
    ld bc, $07f8                                  ; $5a92: $01 $f8 $07
    ld a, [c]                                     ; $5a95: $f2
    ld bc, $faf1                                  ; $5a96: $01 $f1 $fa
    add d                                         ; $5a99: $82
    nop                                           ; $5a9a: $00
    rrca                                          ; $5a9b: $0f
    ld e, $00                                     ; $5a9c: $1e $00
    rst $38                                       ; $5a9e: $ff
    dec c                                         ; $5a9f: $0d
    inc b                                         ; $5aa0: $04
    ld hl, sp+$07                                 ; $5aa1: $f8 $07
    ld a, [c]                                     ; $5aa3: $f2
    ld bc, $f9e7                                  ; $5aa4: $01 $e7 $f9
    rst $20                                       ; $5aa7: $e7
    rst $38                                       ; $5aa8: $ff
    rst $30                                       ; $5aa9: $f7
    ld sp, hl                                     ; $5aaa: $f9
    rst $30                                       ; $5aab: $f7
    rst $38                                       ; $5aac: $ff
    ld [bc], a                                    ; $5aad: $02
    rrca                                          ; $5aae: $0f
    ld [bc], a                                    ; $5aaf: $02
    rra                                           ; $5ab0: $1f
    inc b                                         ; $5ab1: $04
    ccf                                           ; $5ab2: $3f
    rlca                                          ; $5ab3: $07
    rra                                           ; $5ab4: $1f
    add e                                         ; $5ab5: $83
    rla                                           ; $5ab6: $17
    rra                                           ; $5ab7: $1f
    jr jr_0e5_5abc                                ; $5ab8: $18 $02

    rrca                                          ; $5aba: $0f
    ld [bc], a                                    ; $5abb: $02

jr_0e5_5abc:
    jr jr_0e5_5a48                                ; $5abc: $18 $8a

    ld [hl], a                                    ; $5abe: $77
    ld a, a                                       ; $5abf: $7f
    ld e, b                                       ; $5ac0: $58
    ld a, a                                       ; $5ac1: $7f
    call c, $dfff                                 ; $5ac2: $dc $ff $df
    rst $38                                       ; $5ac5: $ff
    sbc a                                         ; $5ac6: $9f
    rst $38                                       ; $5ac7: $ff
    ld [bc], a                                    ; $5ac8: $02
    jr nc, jr_0e5_5acd                            ; $5ac9: $30 $02

    jr c, jr_0e5_5ad5                             ; $5acb: $38 $08

jr_0e5_5acd:
    inc a                                         ; $5acd: $3c
    dec b                                         ; $5ace: $05
    jr c, jr_0e5_5a52                             ; $5acf: $38 $81

    jr jr_0e5_5ad5                                ; $5ad1: $18 $02

jr_0e5_5ad3:
    jr nc, jr_0e5_5ad7                            ; $5ad3: $30 $02

jr_0e5_5ad5:
    inc e                                         ; $5ad5: $1c
    adc e                                         ; $5ad6: $8b

jr_0e5_5ad7:
    ld a, [hl+]                                   ; $5ad7: $2a
    ld a, $1a                                     ; $5ad8: $3e $1a
    ld a, $39                                     ; $5ada: $3e $39
    ccf                                           ; $5adc: $3f
    dec a                                         ; $5add: $3d
    ccf                                           ; $5ade: $3f
    dec a                                         ; $5adf: $3d
    ccf                                           ; $5ae0: $3f
    sbc a                                         ; $5ae1: $9f
    inc bc                                        ; $5ae2: $03
    rst $38                                       ; $5ae3: $ff
    inc bc                                        ; $5ae4: $03

jr_0e5_5ae5:
    ld a, a                                       ; $5ae5: $7f
    add e                                         ; $5ae6: $83
    ld e, a                                       ; $5ae7: $5f
    scf                                           ; $5ae8: $37
    ccf                                           ; $5ae9: $3f
    ld [bc], a                                    ; $5aea: $02
    rra                                           ; $5aeb: $1f
    add l                                         ; $5aec: $85
    inc sp                                        ; $5aed: $33
    ccf                                           ; $5aee: $3f
    dec l                                         ; $5aef: $2d
    ccf                                           ; $5af0: $3f
    ld [hl-], a                                   ; $5af1: $32
    inc bc                                        ; $5af2: $03
    ccf                                           ; $5af3: $3f
    ld [bc], a                                    ; $5af4: $02
    ld e, $0a                                     ; $5af5: $1e $0a
    nop                                           ; $5af7: $00
    add l                                         ; $5af8: $85
    add hl, sp                                    ; $5af9: $39
    ccf                                           ; $5afa: $3f
    add hl, sp                                    ; $5afb: $39
    ccf                                           ; $5afc: $3f
    dec a                                         ; $5afd: $3d
    ld [bc], a                                    ; $5afe: $02
    ccf                                           ; $5aff: $3f
    add e                                         ; $5b00: $83
    add hl, sp                                    ; $5b01: $39
    ccf                                           ; $5b02: $3f
    add hl, sp                                    ; $5b03: $39
    ld [bc], a                                    ; $5b04: $02
    ld a, $02                                     ; $5b05: $3e $02
    inc a                                         ; $5b07: $3c
    add h                                         ; $5b08: $84
    inc [hl]                                      ; $5b09: $34
    inc a                                         ; $5b0a: $3c
    jr jr_0e5_5b45                                ; $5b0b: $18 $38

    ld [bc], a                                    ; $5b0d: $02
    jr nc, jr_0e5_5b1c                            ; $5b0e: $30 $0c

    nop                                           ; $5b10: $00
    rst $38                                       ; $5b11: $ff
    rlca                                          ; $5b12: $07
    ld bc, $07f8                                  ; $5b13: $01 $f8 $07
    ld a, [c]                                     ; $5b16: $f2
    ld bc, $faf1                                  ; $5b17: $01 $f1 $fa
    add d                                         ; $5b1a: $82
    nop                                           ; $5b1b: $00

jr_0e5_5b1c:
    rrca                                          ; $5b1c: $0f
    ld e, $00                                     ; $5b1d: $1e $00
    rst $38                                       ; $5b1f: $ff
    dec c                                         ; $5b20: $0d
    inc b                                         ; $5b21: $04
    ld hl, sp+$07                                 ; $5b22: $f8 $07
    ld a, [c]                                     ; $5b24: $f2
    ld bc, $f9e8                                  ; $5b25: $01 $e8 $f9
    add sp, -$01                                  ; $5b28: $e8 $ff
    ld hl, sp-$07                                 ; $5b2a: $f8 $f9
    ld hl, sp-$01                                 ; $5b2c: $f8 $ff
    ld [bc], a                                    ; $5b2e: $02
    rrca                                          ; $5b2f: $0f
    ld [bc], a                                    ; $5b30: $02
    rra                                           ; $5b31: $1f
    inc b                                         ; $5b32: $04
    ccf                                           ; $5b33: $3f
    rlca                                          ; $5b34: $07
    rra                                           ; $5b35: $1f
    add e                                         ; $5b36: $83
    rla                                           ; $5b37: $17
    rra                                           ; $5b38: $1f
    jr jr_0e5_5b3d                                ; $5b39: $18 $02

    inc c                                         ; $5b3b: $0c
    adc h                                         ; $5b3c: $8c

jr_0e5_5b3d:
    jr nc, jr_0e5_5b7e                            ; $5b3d: $30 $3f

    ld e, b                                       ; $5b3f: $58
    ld a, a                                       ; $5b40: $7f
    ld e, a                                       ; $5b41: $5f
    ld a, a                                       ; $5b42: $7f
    rst $18                                       ; $5b43: $df
    rst $38                                       ; $5b44: $ff

jr_0e5_5b45:
    sbc a                                         ; $5b45: $9f
    rst $38                                       ; $5b46: $ff

jr_0e5_5b47:
    sbc a                                         ; $5b47: $9f
    rst $38                                       ; $5b48: $ff
    ld [bc], a                                    ; $5b49: $02
    jr nc, jr_0e5_5b4e                            ; $5b4a: $30 $02

    jr c, jr_0e5_5b56                             ; $5b4c: $38 $08

jr_0e5_5b4e:
    inc a                                         ; $5b4e: $3c
    dec b                                         ; $5b4f: $05
    jr c, jr_0e5_5ad3                             ; $5b50: $38 $81

    jr jr_0e5_5b56                                ; $5b52: $18 $02

    jr nc, jr_0e5_5ae5                            ; $5b54: $30 $8f

jr_0e5_5b56:
    inc c                                         ; $5b56: $0c
    inc a                                         ; $5b57: $3c
    ld a, [de]                                    ; $5b58: $1a
    ld a, $3a                                     ; $5b59: $3e $3a
    ld a, $3b                                     ; $5b5b: $3e $3b
    ccf                                           ; $5b5d: $3f
    add hl, sp                                    ; $5b5e: $39
    ccf                                           ; $5b5f: $3f
    dec a                                         ; $5b60: $3d
    ccf                                           ; $5b61: $3f
    sbc a                                         ; $5b62: $9f
    rst $38                                       ; $5b63: $ff
    cp a                                          ; $5b64: $bf
    inc bc                                        ; $5b65: $03
    rst $38                                       ; $5b66: $ff
    add e                                         ; $5b67: $83
    ld a, a                                       ; $5b68: $7f
    ld e, a                                       ; $5b69: $5f
    inc sp                                        ; $5b6a: $33
    dec b                                         ; $5b6b: $05
    ccf                                           ; $5b6c: $3f
    add h                                         ; $5b6d: $84
    scf                                           ; $5b6e: $37
    ccf                                           ; $5b6f: $3f
    inc a                                         ; $5b70: $3c
    ccf                                           ; $5b71: $3f
    ld [bc], a                                    ; $5b72: $02
    rrca                                          ; $5b73: $0f
    inc c                                         ; $5b74: $0c
    nop                                           ; $5b75: $00
    add l                                         ; $5b76: $85
    add hl, sp                                    ; $5b77: $39
    ccf                                           ; $5b78: $3f
    add hl, sp                                    ; $5b79: $39
    ccf                                           ; $5b7a: $3f
    dec a                                         ; $5b7b: $3d
    ld [bc], a                                    ; $5b7c: $02
    ccf                                           ; $5b7d: $3f

jr_0e5_5b7e:
    add e                                         ; $5b7e: $83
    add hl, sp                                    ; $5b7f: $39
    ccf                                           ; $5b80: $3f
    dec a                                         ; $5b81: $3d
    ld [bc], a                                    ; $5b82: $02
    ld a, $02                                     ; $5b83: $3e $02
    inc a                                         ; $5b85: $3c
    add d                                         ; $5b86: $82
    inc h                                         ; $5b87: $24
    inc a                                         ; $5b88: $3c
    ld [bc], a                                    ; $5b89: $02
    jr c, jr_0e5_5b8e                             ; $5b8a: $38 $02

    jr nz, jr_0e5_5b9a                            ; $5b8c: $20 $0c

jr_0e5_5b8e:
    nop                                           ; $5b8e: $00
    rst $38                                       ; $5b8f: $ff
    rlca                                          ; $5b90: $07
    ld bc, $07f8                                  ; $5b91: $01 $f8 $07
    ld a, [c]                                     ; $5b94: $f2
    ld bc, $f9f1                                  ; $5b95: $01 $f1 $f9
    add d                                         ; $5b98: $82
    nop                                           ; $5b99: $00

jr_0e5_5b9a:
    inc bc                                        ; $5b9a: $03
    ld e, $00                                     ; $5b9b: $1e $00
    rst $38                                       ; $5b9d: $ff
    dec c                                         ; $5b9e: $0d
    inc b                                         ; $5b9f: $04
    ld hl, sp+$07                                 ; $5ba0: $f8 $07
    ld a, [c]                                     ; $5ba2: $f2
    ld bc, $f9e7                                  ; $5ba3: $01 $e7 $f9
    rst $20                                       ; $5ba6: $e7
    rst $38                                       ; $5ba7: $ff
    rst $30                                       ; $5ba8: $f7
    ld sp, hl                                     ; $5ba9: $f9
    rst $30                                       ; $5baa: $f7
    rst $38                                       ; $5bab: $ff
    ld [bc], a                                    ; $5bac: $02
    rrca                                          ; $5bad: $0f
    ld [bc], a                                    ; $5bae: $02
    rra                                           ; $5baf: $1f
    ld b, $3f                                     ; $5bb0: $06 $3f
    dec b                                         ; $5bb2: $05
    rra                                           ; $5bb3: $1f
    add e                                         ; $5bb4: $83
    rla                                           ; $5bb5: $17
    rra                                           ; $5bb6: $1f
    jr jr_0e5_5bbb                                ; $5bb7: $18 $02

    rrca                                          ; $5bb9: $0f
    ld [bc], a                                    ; $5bba: $02

jr_0e5_5bbb:
    jr c, jr_0e5_5b47                             ; $5bbb: $38 $8a

    ld d, a                                       ; $5bbd: $57
    ld a, a                                       ; $5bbe: $7f
    ld e, b                                       ; $5bbf: $58
    ld a, a                                       ; $5bc0: $7f
    call c, $bfff                                 ; $5bc1: $dc $ff $bf
    rst $38                                       ; $5bc4: $ff
    sbc a                                         ; $5bc5: $9f
    rst $38                                       ; $5bc6: $ff
    ld [bc], a                                    ; $5bc7: $02
    db $10                                        ; $5bc8: $10
    ld [bc], a                                    ; $5bc9: $02
    jr c, jr_0e5_5bd2                             ; $5bca: $38 $06

    inc a                                         ; $5bcc: $3c
    dec b                                         ; $5bcd: $05
    jr c, @-$7b                                   ; $5bce: $38 $83

    jr z, jr_0e5_5c0a                             ; $5bd0: $28 $38

jr_0e5_5bd2:
    jr jr_0e5_5bd6                                ; $5bd2: $18 $02

    jr nc, jr_0e5_5bd8                            ; $5bd4: $30 $02

jr_0e5_5bd6:
    inc e                                         ; $5bd6: $1c
    adc a                                         ; $5bd7: $8f

jr_0e5_5bd8:
    ld a, [hl+]                                   ; $5bd8: $2a
    ld a, $1a                                     ; $5bd9: $3e $1a
    ld a, $3b                                     ; $5bdb: $3e $3b
    ccf                                           ; $5bdd: $3f
    dec a                                         ; $5bde: $3d
    ccf                                           ; $5bdf: $3f
    add hl, sp                                    ; $5be0: $39
    ccf                                           ; $5be1: $3f
    sbc a                                         ; $5be2: $9f
    rst $38                                       ; $5be3: $ff

jr_0e5_5be4:
    sbc a                                         ; $5be4: $9f
    rst $38                                       ; $5be5: $ff
    cp a                                          ; $5be6: $bf
    ld [bc], a                                    ; $5be7: $02
    rst $38                                       ; $5be8: $ff
    add e                                         ; $5be9: $83
    cp a                                          ; $5bea: $bf
    ld a, a                                       ; $5beb: $7f
    ld e, a                                       ; $5bec: $5f
    ld [bc], a                                    ; $5bed: $02
    ld a, a                                       ; $5bee: $7f
    ld [bc], a                                    ; $5bef: $02
    ccf                                           ; $5bf0: $3f
    add e                                         ; $5bf1: $83
    cpl                                           ; $5bf2: $2f
    ccf                                           ; $5bf3: $3f
    db $10                                        ; $5bf4: $10
    inc bc                                        ; $5bf5: $03
    rra                                           ; $5bf6: $1f
    ld [bc], a                                    ; $5bf7: $02
    inc bc                                        ; $5bf8: $03
    ld a, [bc]                                    ; $5bf9: $0a
    nop                                           ; $5bfa: $00
    add l                                         ; $5bfb: $85
    add hl, sp                                    ; $5bfc: $39
    ccf                                           ; $5bfd: $3f
    add hl, sp                                    ; $5bfe: $39
    ccf                                           ; $5bff: $3f
    dec a                                         ; $5c00: $3d
    ld [bc], a                                    ; $5c01: $02
    ccf                                           ; $5c02: $3f
    add e                                         ; $5c03: $83
    dec a                                         ; $5c04: $3d
    ld a, $3a                                     ; $5c05: $3e $3a
    ld [bc], a                                    ; $5c07: $02
    inc a                                         ; $5c08: $3c
    ld [bc], a                                    ; $5c09: $02

jr_0e5_5c0a:
    jr c, @-$78                                   ; $5c0a: $38 $86

    inc c                                         ; $5c0c: $0c
    inc a                                         ; $5c0d: $3c
    inc [hl]                                      ; $5c0e: $34
    inc a                                         ; $5c0f: $3c
    inc c                                         ; $5c10: $0c
    inc a                                         ; $5c11: $3c
    ld [bc], a                                    ; $5c12: $02
    jr c, jr_0e5_5c1f                             ; $5c13: $38 $0a

    nop                                           ; $5c15: $00
    rst $38                                       ; $5c16: $ff
    rlca                                          ; $5c17: $07
    ld bc, $07f8                                  ; $5c18: $01 $f8 $07
    ld a, [c]                                     ; $5c1b: $f2
    ld bc, $faf1                                  ; $5c1c: $01 $f1 $fa

jr_0e5_5c1f:
    add d                                         ; $5c1f: $82
    nop                                           ; $5c20: $00
    rrca                                          ; $5c21: $0f
    ld e, $00                                     ; $5c22: $1e $00
    rst $38                                       ; $5c24: $ff
    dec c                                         ; $5c25: $0d
    inc b                                         ; $5c26: $04
    ld hl, sp+$07                                 ; $5c27: $f8 $07
    ld a, [c]                                     ; $5c29: $f2
    ld bc, $f9e7                                  ; $5c2a: $01 $e7 $f9
    rst $20                                       ; $5c2d: $e7
    rst $38                                       ; $5c2e: $ff
    rst $30                                       ; $5c2f: $f7
    ld sp, hl                                     ; $5c30: $f9
    rst $30                                       ; $5c31: $f7
    rst $38                                       ; $5c32: $ff
    ld [bc], a                                    ; $5c33: $02
    dec bc                                        ; $5c34: $0b
    ld [bc], a                                    ; $5c35: $02
    rra                                           ; $5c36: $1f
    inc bc                                        ; $5c37: $03
    ccf                                           ; $5c38: $3f
    adc l                                         ; $5c39: $8d
    ld a, $3f                                     ; $5c3a: $3e $3f
    inc [hl]                                      ; $5c3c: $34
    rra                                           ; $5c3d: $1f
    ld e, $1f                                     ; $5c3e: $1e $1f
    ld [de], a                                    ; $5c40: $12
    rra                                           ; $5c41: $1f
    ld de, $131f                                  ; $5c42: $11 $1f $13
    rrca                                          ; $5c45: $0f
    inc c                                         ; $5c46: $0c
    ld [bc], a                                    ; $5c47: $02
    dec sp                                        ; $5c48: $3b
    adc d                                         ; $5c49: $8a
    ld e, h                                       ; $5c4a: $5c
    ld a, h                                       ; $5c4b: $7c
    ld e, e                                       ; $5c4c: $5b
    ld a, a                                       ; $5c4d: $7f
    call c, $bcff                                 ; $5c4e: $dc $ff $bc
    rst $38                                       ; $5c51: $ff
    cp l                                          ; $5c52: $bd
    rst $38                                       ; $5c53: $ff
    ld [bc], a                                    ; $5c54: $02
    jr nc, jr_0e5_5c59                            ; $5c55: $30 $02

    jr c, @+$07                                   ; $5c57: $38 $05

jr_0e5_5c59:
    inc a                                         ; $5c59: $3c
    add c                                         ; $5c5a: $81
    inc c                                         ; $5c5b: $0c
    inc bc                                        ; $5c5c: $03
    jr c, jr_0e5_5be4                             ; $5c5d: $38 $85

    ld [$0838], sp                                ; $5c5f: $08 $38 $08
    jr c, jr_0e5_5c6c                             ; $5c62: $38 $08

    ld [bc], a                                    ; $5c64: $02
    jr nc, jr_0e5_5c69                            ; $5c65: $30 $02

    inc e                                         ; $5c67: $1c
    sbc c                                         ; $5c68: $99

jr_0e5_5c69:
    ld a, [hl-]                                   ; $5c69: $3a
    ld a, $1a                                     ; $5c6a: $3e $1a

jr_0e5_5c6c:
    ld a, $3b                                     ; $5c6c: $3e $3b
    ccf                                           ; $5c6e: $3f
    dec a                                         ; $5c6f: $3d
    ccf                                           ; $5c70: $3f
    dec a                                         ; $5c71: $3d
    ccf                                           ; $5c72: $3f
    sbc l                                         ; $5c73: $9d
    rst $38                                       ; $5c74: $ff

jr_0e5_5c75:
    sbc l                                         ; $5c75: $9d
    rst $38                                       ; $5c76: $ff
    cp d                                          ; $5c77: $ba
    rst $38                                       ; $5c78: $ff
    ld a, [$7a9f]                                 ; $5c79: $fa $9f $7a
    ld e, a                                       ; $5c7c: $5f
    dec sp                                        ; $5c7d: $3b
    ccf                                           ; $5c7e: $3f
    scf                                           ; $5c7f: $37
    ccf                                           ; $5c80: $3f
    ld d, a                                       ; $5c81: $57
    inc bc                                        ; $5c82: $03
    ld a, a                                       ; $5c83: $7f
    add d                                         ; $5c84: $82
    ld c, a                                       ; $5c85: $4f
    ld a, a                                       ; $5c86: $7f
    ld [bc], a                                    ; $5c87: $02
    ld a, h                                       ; $5c88: $7c
    ld a, [bc]                                    ; $5c89: $0a
    nop                                           ; $5c8a: $00
    add l                                         ; $5c8b: $85
    add hl, sp                                    ; $5c8c: $39
    ccf                                           ; $5c8d: $3f
    add hl, sp                                    ; $5c8e: $39
    ccf                                           ; $5c8f: $3f
    dec a                                         ; $5c90: $3d
    ld [bc], a                                    ; $5c91: $02
    ccf                                           ; $5c92: $3f
    adc b                                         ; $5c93: $88
    add hl, sp                                    ; $5c94: $39
    ld a, $3a                                     ; $5c95: $3e $3a
    inc e                                         ; $5c97: $1c
    inc a                                         ; $5c98: $3c
    inc e                                         ; $5c99: $1c
    inc a                                         ; $5c9a: $3c
    ld a, [hl+]                                   ; $5c9b: $2a
    inc bc                                        ; $5c9c: $03
    ld a, $81                                     ; $5c9d: $3e $81
    ld [hl-], a                                   ; $5c9f: $32
    inc bc                                        ; $5ca0: $03
    ld a, $0a                                     ; $5ca1: $3e $0a
    nop                                           ; $5ca3: $00
    rst $38                                       ; $5ca4: $ff
    rlca                                          ; $5ca5: $07
    ld bc, $07f8                                  ; $5ca6: $01 $f8 $07
    ld a, [c]                                     ; $5ca9: $f2
    ld bc, $faf1                                  ; $5caa: $01 $f1 $fa
    add h                                         ; $5cad: $84
    nop                                           ; $5cae: $00
    add hl, bc                                    ; $5caf: $09
    nop                                           ; $5cb0: $00
    ld b, $1c                                     ; $5cb1: $06 $1c
    nop                                           ; $5cb3: $00
    rst $38                                       ; $5cb4: $ff
    dec c                                         ; $5cb5: $0d
    inc b                                         ; $5cb6: $04
    ld hl, sp+$07                                 ; $5cb7: $f8 $07
    ld a, [c]                                     ; $5cb9: $f2
    ld bc, $f9e7                                  ; $5cba: $01 $e7 $f9
    rst $20                                       ; $5cbd: $e7
    rst $38                                       ; $5cbe: $ff
    rst $30                                       ; $5cbf: $f7
    ld sp, hl                                     ; $5cc0: $f9
    rst $30                                       ; $5cc1: $f7
    rst $38                                       ; $5cc2: $ff
    ld [bc], a                                    ; $5cc3: $02
    rla                                           ; $5cc4: $17
    ld [bc], a                                    ; $5cc5: $02
    rra                                           ; $5cc6: $1f
    inc bc                                        ; $5cc7: $03
    ccf                                           ; $5cc8: $3f
    adc l                                         ; $5cc9: $8d
    inc a                                         ; $5cca: $3c
    rra                                           ; $5ccb: $1f
    jr @+$21                                      ; $5ccc: $18 $1f

    dec e                                         ; $5cce: $1d
    rra                                           ; $5ccf: $1f
    inc d                                         ; $5cd0: $14
    dec de                                        ; $5cd1: $1b
    ld d, $1f                                     ; $5cd2: $16 $1f
    inc de                                        ; $5cd4: $13
    rrca                                          ; $5cd5: $0f
    ld [$1b02], sp                                ; $5cd6: $08 $02 $1b
    ld [bc], a                                    ; $5cd9: $02
    inc a                                         ; $5cda: $3c
    adc b                                         ; $5cdb: $88
    ld e, e                                       ; $5cdc: $5b
    ld a, a                                       ; $5cdd: $7f
    ld e, h                                       ; $5cde: $5c
    ld a, a                                       ; $5cdf: $7f
    sbc [hl]                                      ; $5ce0: $9e
    rst $38                                       ; $5ce1: $ff
    cp [hl]                                       ; $5ce2: $be
    rst $38                                       ; $5ce3: $ff
    ld [bc], a                                    ; $5ce4: $02
    jr nc, jr_0e5_5ce9                            ; $5ce5: $30 $02

    jr c, jr_0e5_5cee                             ; $5ce7: $38 $05

jr_0e5_5ce9:
    inc a                                         ; $5ce9: $3c
    add d                                         ; $5cea: $82
    inc e                                         ; $5ceb: $1c
    jr z, jr_0e5_5cf0                             ; $5cec: $28 $02

jr_0e5_5cee:
    jr c, jr_0e5_5c75                             ; $5cee: $38 $85

jr_0e5_5cf0:
    ld [$0838], sp                                ; $5cf0: $08 $38 $08
    jr c, jr_0e5_5cfd                             ; $5cf3: $38 $08

    ld [bc], a                                    ; $5cf5: $02
    jr c, jr_0e5_5cfa                             ; $5cf6: $38 $02

    inc e                                         ; $5cf8: $1c
    sub a                                         ; $5cf9: $97

jr_0e5_5cfa:
    ld a, [hl-]                                   ; $5cfa: $3a
    ld a, $1a                                     ; $5cfb: $3e $1a

jr_0e5_5cfd:
    ld a, $39                                     ; $5cfd: $3e $39
    ccf                                           ; $5cff: $3f
    dec a                                         ; $5d00: $3d
    ccf                                           ; $5d01: $3f
    dec a                                         ; $5d02: $3d
    ccf                                           ; $5d03: $3f
    sbc [hl]                                      ; $5d04: $9e
    rst $38                                       ; $5d05: $ff

jr_0e5_5d06:
    adc [hl]                                      ; $5d06: $8e
    rst $38                                       ; $5d07: $ff
    sbc l                                         ; $5d08: $9d
    rst $38                                       ; $5d09: $ff
    db $fd                                        ; $5d0a: $fd
    rst $18                                       ; $5d0b: $df
    db $fd                                        ; $5d0c: $fd
    adc a                                         ; $5d0d: $8f
    ld a, l                                       ; $5d0e: $7d
    ld e, a                                       ; $5d0f: $5f
    dec a                                         ; $5d10: $3d
    inc bc                                        ; $5d11: $03
    ccf                                           ; $5d12: $3f
    add d                                         ; $5d13: $82
    inc sp                                        ; $5d14: $33
    ccf                                           ; $5d15: $3f
    ld [bc], a                                    ; $5d16: $02
    rra                                           ; $5d17: $1f
    ld [bc], a                                    ; $5d18: $02
    ld bc, $000a                                  ; $5d19: $01 $0a $00
    sub h                                         ; $5d1c: $94
    add hl, sp                                    ; $5d1d: $39
    ccf                                           ; $5d1e: $3f
    dec a                                         ; $5d1f: $3d
    ccf                                           ; $5d20: $3f
    rra                                           ; $5d21: $1f
    add hl, sp                                    ; $5d22: $39
    ld l, $3e                                     ; $5d23: $2e $3e
    jr z, jr_0e5_5d5f                             ; $5d25: $28 $38

    inc e                                         ; $5d27: $1c
    inc a                                         ; $5d28: $3c
    inc c                                         ; $5d29: $0c
    inc a                                         ; $5d2a: $3c
    inc e                                         ; $5d2b: $1c
    inc a                                         ; $5d2c: $3c
    inc h                                         ; $5d2d: $24
    inc a                                         ; $5d2e: $3c
    inc e                                         ; $5d2f: $1c
    inc a                                         ; $5d30: $3c
    ld [bc], a                                    ; $5d31: $02
    jr c, jr_0e5_5d3e                             ; $5d32: $38 $0a

    nop                                           ; $5d34: $00
    rst $38                                       ; $5d35: $ff
    rlca                                          ; $5d36: $07
    ld bc, $07f8                                  ; $5d37: $01 $f8 $07
    ld a, [c]                                     ; $5d3a: $f2
    ld bc, $faf1                                  ; $5d3b: $01 $f1 $fa

jr_0e5_5d3e:
    add h                                         ; $5d3e: $84
    nop                                           ; $5d3f: $00
    add hl, bc                                    ; $5d40: $09
    nop                                           ; $5d41: $00
    ld b, $1c                                     ; $5d42: $06 $1c
    nop                                           ; $5d44: $00
    rst $38                                       ; $5d45: $ff
    dec c                                         ; $5d46: $0d
    inc b                                         ; $5d47: $04
    ld hl, sp+$07                                 ; $5d48: $f8 $07
    ld a, [c]                                     ; $5d4a: $f2
    ld bc, $f9e8                                  ; $5d4b: $01 $e8 $f9
    add sp, -$01                                  ; $5d4e: $e8 $ff
    ld hl, sp-$07                                 ; $5d50: $f8 $f9
    ld hl, sp-$01                                 ; $5d52: $f8 $ff
    ld [bc], a                                    ; $5d54: $02
    rla                                           ; $5d55: $17
    ld [bc], a                                    ; $5d56: $02
    rra                                           ; $5d57: $1f
    inc bc                                        ; $5d58: $03
    ccf                                           ; $5d59: $3f
    adc l                                         ; $5d5a: $8d
    inc a                                         ; $5d5b: $3c
    rra                                           ; $5d5c: $1f
    jr @+$21                                      ; $5d5d: $18 $1f

jr_0e5_5d5f:
    dec e                                         ; $5d5f: $1d
    rra                                           ; $5d60: $1f
    inc d                                         ; $5d61: $14
    dec de                                        ; $5d62: $1b
    ld d, $1f                                     ; $5d63: $16 $1f
    inc de                                        ; $5d65: $13
    rrca                                          ; $5d66: $0f
    ld [$3b02], sp                                ; $5d67: $08 $02 $3b
    adc d                                         ; $5d6a: $8a
    ld e, h                                       ; $5d6b: $5c
    ld a, h                                       ; $5d6c: $7c
    ld e, e                                       ; $5d6d: $5b
    ld a, a                                       ; $5d6e: $7f
    call c, $9eff                                 ; $5d6f: $dc $ff $9e
    rst $38                                       ; $5d72: $ff
    cp [hl]                                       ; $5d73: $be
    rst $38                                       ; $5d74: $ff
    ld [bc], a                                    ; $5d75: $02
    jr nc, jr_0e5_5d7a                            ; $5d76: $30 $02

    jr c, jr_0e5_5d7f                             ; $5d78: $38 $05

jr_0e5_5d7a:
    inc a                                         ; $5d7a: $3c
    add d                                         ; $5d7b: $82
    inc e                                         ; $5d7c: $1c
    jr z, jr_0e5_5d81                             ; $5d7d: $28 $02

jr_0e5_5d7f:
    jr c, jr_0e5_5d06                             ; $5d7f: $38 $85

jr_0e5_5d81:
    ld [$0838], sp                                ; $5d81: $08 $38 $08
    jr c, jr_0e5_5d8e                             ; $5d84: $38 $08

    ld [bc], a                                    ; $5d86: $02
    jr nc, jr_0e5_5d8b                            ; $5d87: $30 $02

    inc e                                         ; $5d89: $1c
    sub a                                         ; $5d8a: $97

jr_0e5_5d8b:
    ld a, [hl-]                                   ; $5d8b: $3a
    ld a, $1a                                     ; $5d8c: $3e $1a

jr_0e5_5d8e:
    ld a, $3d                                     ; $5d8e: $3e $3d
    ccf                                           ; $5d90: $3f

jr_0e5_5d91:
    dec a                                         ; $5d91: $3d
    ccf                                           ; $5d92: $3f
    add hl, sp                                    ; $5d93: $39
    ccf                                           ; $5d94: $3f
    sbc [hl]                                      ; $5d95: $9e
    rst $38                                       ; $5d96: $ff
    sbc [hl]                                      ; $5d97: $9e
    rst $38                                       ; $5d98: $ff
    cp [hl]                                       ; $5d99: $be
    rst $38                                       ; $5d9a: $ff
    db $fd                                        ; $5d9b: $fd
    sbc a                                         ; $5d9c: $9f
    ld a, l                                       ; $5d9d: $7d
    ld e, a                                       ; $5d9e: $5f
    dec a                                         ; $5d9f: $3d
    ccf                                           ; $5da0: $3f
    dec a                                         ; $5da1: $3d
    inc bc                                        ; $5da2: $03
    ccf                                           ; $5da3: $3f
    ld [bc], a                                    ; $5da4: $02
    rra                                           ; $5da5: $1f
    ld [bc], a                                    ; $5da6: $02
    inc bc                                        ; $5da7: $03
    inc c                                         ; $5da8: $0c
    nop                                           ; $5da9: $00
    add e                                         ; $5daa: $83
    add hl, sp                                    ; $5dab: $39
    ccf                                           ; $5dac: $3f
    dec a                                         ; $5dad: $3d
    ld [bc], a                                    ; $5dae: $02
    ccf                                           ; $5daf: $3f
    adc b                                         ; $5db0: $88
    dec a                                         ; $5db1: $3d
    ld e, $3a                                     ; $5db2: $1e $3a
    inc e                                         ; $5db4: $1c
    inc a                                         ; $5db5: $3c
    inc l                                         ; $5db6: $2c
    inc a                                         ; $5db7: $3c
    inc e                                         ; $5db8: $1c
    inc bc                                        ; $5db9: $03
    inc a                                         ; $5dba: $3c
    add c                                         ; $5dbb: $81
    inc b                                         ; $5dbc: $04
    inc bc                                        ; $5dbd: $03
    inc a                                         ; $5dbe: $3c
    inc c                                         ; $5dbf: $0c
    nop                                           ; $5dc0: $00
    rst $38                                       ; $5dc1: $ff
    rlca                                          ; $5dc2: $07
    ld bc, $07f8                                  ; $5dc3: $01 $f8 $07
    ld a, [c]                                     ; $5dc6: $f2
    ld bc, $faf2                                  ; $5dc7: $01 $f2 $fa
    add h                                         ; $5dca: $84
    nop                                           ; $5dcb: $00
    add hl, bc                                    ; $5dcc: $09
    nop                                           ; $5dcd: $00
    ld b, $1c                                     ; $5dce: $06 $1c
    nop                                           ; $5dd0: $00
    rst $38                                       ; $5dd1: $ff
    dec c                                         ; $5dd2: $0d
    inc b                                         ; $5dd3: $04
    ld hl, sp+$07                                 ; $5dd4: $f8 $07
    ld a, [c]                                     ; $5dd6: $f2
    ld bc, $f9e7                                  ; $5dd7: $01 $e7 $f9
    rst $20                                       ; $5dda: $e7
    rst $38                                       ; $5ddb: $ff
    rst $30                                       ; $5ddc: $f7
    ld sp, hl                                     ; $5ddd: $f9
    rst $30                                       ; $5dde: $f7
    rst $38                                       ; $5ddf: $ff
    ld [bc], a                                    ; $5de0: $02
    dec bc                                        ; $5de1: $0b
    ld [bc], a                                    ; $5de2: $02
    rra                                           ; $5de3: $1f
    inc bc                                        ; $5de4: $03
    ccf                                           ; $5de5: $3f
    adc l                                         ; $5de6: $8d
    ld a, $3f                                     ; $5de7: $3e $3f
    inc [hl]                                      ; $5de9: $34
    rra                                           ; $5dea: $1f
    ld e, $1f                                     ; $5deb: $1e $1f
    ld [de], a                                    ; $5ded: $12
    rra                                           ; $5dee: $1f
    ld de, $131f                                  ; $5def: $11 $1f $13
    rrca                                          ; $5df2: $0f
    inc c                                         ; $5df3: $0c
    ld [bc], a                                    ; $5df4: $02
    dec sp                                        ; $5df5: $3b
    adc d                                         ; $5df6: $8a
    ld e, h                                       ; $5df7: $5c
    ld a, h                                       ; $5df8: $7c
    ld e, e                                       ; $5df9: $5b
    ld a, a                                       ; $5dfa: $7f
    call c, $bcff                                 ; $5dfb: $dc $ff $bc
    rst $38                                       ; $5dfe: $ff
    cp l                                          ; $5dff: $bd
    rst $38                                       ; $5e00: $ff
    ld [bc], a                                    ; $5e01: $02
    jr nc, jr_0e5_5e06                            ; $5e02: $30 $02

    jr c, @+$07                                   ; $5e04: $38 $05

jr_0e5_5e06:
    inc a                                         ; $5e06: $3c
    add c                                         ; $5e07: $81
    inc c                                         ; $5e08: $0c
    inc bc                                        ; $5e09: $03
    jr c, jr_0e5_5d91                             ; $5e0a: $38 $85

    ld [$0838], sp                                ; $5e0c: $08 $38 $08
    jr c, jr_0e5_5e19                             ; $5e0f: $38 $08

    ld [bc], a                                    ; $5e11: $02
    jr nc, jr_0e5_5e16                            ; $5e12: $30 $02

    inc e                                         ; $5e14: $1c
    sub a                                         ; $5e15: $97

jr_0e5_5e16:
    ld a, [hl-]                                   ; $5e16: $3a
    ld a, $1a                                     ; $5e17: $3e $1a

jr_0e5_5e19:
    ld a, $3b                                     ; $5e19: $3e $3b
    ccf                                           ; $5e1b: $3f
    dec a                                         ; $5e1c: $3d
    ccf                                           ; $5e1d: $3f
    dec a                                         ; $5e1e: $3d
    ccf                                           ; $5e1f: $3f

jr_0e5_5e20:
    sbc l                                         ; $5e20: $9d
    rst $38                                       ; $5e21: $ff
    sbc l                                         ; $5e22: $9d
    rst $38                                       ; $5e23: $ff
    cp l                                          ; $5e24: $bd
    rst $38                                       ; $5e25: $ff
    db $fd                                        ; $5e26: $fd
    sbc a                                         ; $5e27: $9f
    ld a, d                                       ; $5e28: $7a
    ld e, a                                       ; $5e29: $5f
    dec sp                                        ; $5e2a: $3b
    ccf                                           ; $5e2b: $3f
    ld a, [hl-]                                   ; $5e2c: $3a
    dec b                                         ; $5e2d: $05
    ccf                                           ; $5e2e: $3f
    add d                                         ; $5e2f: $82
    dec [hl]                                      ; $5e30: $35
    dec a                                         ; $5e31: $3d
    ld [bc], a                                    ; $5e32: $02
    jr jr_0e5_5e3f                                ; $5e33: $18 $0a

    nop                                           ; $5e35: $00
    add l                                         ; $5e36: $85
    add hl, sp                                    ; $5e37: $39
    ccf                                           ; $5e38: $3f
    add hl, sp                                    ; $5e39: $39
    ccf                                           ; $5e3a: $3f
    dec a                                         ; $5e3b: $3d
    ld [bc], a                                    ; $5e3c: $02
    ccf                                           ; $5e3d: $3f
    add e                                         ; $5e3e: $83

jr_0e5_5e3f:
    add hl, sp                                    ; $5e3f: $39
    ld a, $3a                                     ; $5e40: $3e $3a
    ld [bc], a                                    ; $5e42: $02
    inc a                                         ; $5e43: $3c
    ld [bc], a                                    ; $5e44: $02
    jr c, jr_0e5_5e49                             ; $5e45: $38 $02

    inc a                                         ; $5e47: $3c
    add c                                         ; $5e48: $81

jr_0e5_5e49:
    inc h                                         ; $5e49: $24
    inc bc                                        ; $5e4a: $03
    inc a                                         ; $5e4b: $3c
    inc c                                         ; $5e4c: $0c
    nop                                           ; $5e4d: $00
    rst $38                                       ; $5e4e: $ff
    rlca                                          ; $5e4f: $07
    ld bc, $07f8                                  ; $5e50: $01 $f8 $07
    ld a, [c]                                     ; $5e53: $f2
    ld bc, $faf1                                  ; $5e54: $01 $f1 $fa
    add h                                         ; $5e57: $84
    nop                                           ; $5e58: $00
    add hl, bc                                    ; $5e59: $09
    nop                                           ; $5e5a: $00
    ld b, $1c                                     ; $5e5b: $06 $1c
    nop                                           ; $5e5d: $00
    rst $38                                       ; $5e5e: $ff
    dec c                                         ; $5e5f: $0d
    inc b                                         ; $5e60: $04
    ld hl, sp+$07                                 ; $5e61: $f8 $07
    ld a, [c]                                     ; $5e63: $f2
    ld bc, $f9e7                                  ; $5e64: $01 $e7 $f9
    rst $20                                       ; $5e67: $e7
    rst $38                                       ; $5e68: $ff
    rst $30                                       ; $5e69: $f7
    ld sp, hl                                     ; $5e6a: $f9
    rst $30                                       ; $5e6b: $f7
    rst $38                                       ; $5e6c: $ff
    ld [bc], a                                    ; $5e6d: $02
    rlca                                          ; $5e6e: $07
    ld [bc], a                                    ; $5e6f: $02
    rra                                           ; $5e70: $1f
    dec b                                         ; $5e71: $05
    ccf                                           ; $5e72: $3f
    adc e                                         ; $5e73: $8b
    ld a, [hl-]                                   ; $5e74: $3a
    rla                                           ; $5e75: $17
    ld e, $1d                                     ; $5e76: $1e $1d
    ld [de], a                                    ; $5e78: $12
    rra                                           ; $5e79: $1f
    ld de, $131f                                  ; $5e7a: $11 $1f $13
    rra                                           ; $5e7d: $1f
    inc e                                         ; $5e7e: $1c
    ld [bc], a                                    ; $5e7f: $02
    dec sp                                        ; $5e80: $3b
    adc d                                         ; $5e81: $8a
    ld e, h                                       ; $5e82: $5c
    ld a, h                                       ; $5e83: $7c
    ld e, e                                       ; $5e84: $5b
    ld a, a                                       ; $5e85: $7f
    sbc h                                         ; $5e86: $9c
    rst $38                                       ; $5e87: $ff
    cp l                                          ; $5e88: $bd
    rst $38                                       ; $5e89: $ff
    cp l                                          ; $5e8a: $bd
    rst $38                                       ; $5e8b: $ff
    ld [bc], a                                    ; $5e8c: $02
    jr nc, jr_0e5_5e91                            ; $5e8d: $30 $02

    jr c, jr_0e5_5e94                             ; $5e8f: $38 $03

jr_0e5_5e91:
    inc a                                         ; $5e91: $3c
    add e                                         ; $5e92: $83
    inc e                                         ; $5e93: $1c

jr_0e5_5e94:
    jr c, jr_0e5_5e9e                             ; $5e94: $38 $08

    inc bc                                        ; $5e96: $03
    jr c, jr_0e5_5e20                             ; $5e97: $38 $87

    ld [$2818], sp                                ; $5e99: $08 $18 $28
    jr c, jr_0e5_5ea6                             ; $5e9c: $38 $08

jr_0e5_5e9e:
    jr nc, jr_0e5_5eb0                            ; $5e9e: $30 $10

    ld [bc], a                                    ; $5ea0: $02
    jr jr_0e5_5ea5                                ; $5ea1: $18 $02

    inc a                                         ; $5ea3: $3c
    sbc h                                         ; $5ea4: $9c

jr_0e5_5ea5:
    ld a, [de]                                    ; $5ea5: $1a

jr_0e5_5ea6:
    ld a, $3a                                     ; $5ea6: $3e $3a
    ld a, $39                                     ; $5ea8: $3e $39
    ccf                                           ; $5eaa: $3f
    dec a                                         ; $5eab: $3d
    ccf                                           ; $5eac: $3f
    sbc l                                         ; $5ead: $9d

jr_0e5_5eae:
    rst $38                                       ; $5eae: $ff
    cp l                                          ; $5eaf: $bd

jr_0e5_5eb0:
    rst $38                                       ; $5eb0: $ff
    ld a, [$769f]                                 ; $5eb1: $fa $9f $76
    ld a, a                                       ; $5eb4: $7f
    ld d, $1f                                     ; $5eb5: $16 $1f
    ld a, [hl-]                                   ; $5eb7: $3a
    ccf                                           ; $5eb8: $3f
    ld [hl-], a                                   ; $5eb9: $32
    ccf                                           ; $5eba: $3f
    dec sp                                        ; $5ebb: $3b
    ccf                                           ; $5ebc: $3f
    daa                                           ; $5ebd: $27
    ccf                                           ; $5ebe: $3f
    dec sp                                        ; $5ebf: $3b
    ccf                                           ; $5ec0: $3f
    ld [bc], a                                    ; $5ec1: $02
    ld e, $0a                                     ; $5ec2: $1e $0a
    nop                                           ; $5ec4: $00
    add l                                         ; $5ec5: $85
    add hl, sp                                    ; $5ec6: $39
    ccf                                           ; $5ec7: $3f
    ld sp, $393f                                  ; $5ec8: $31 $3f $39
    ld [bc], a                                    ; $5ecb: $02
    ccf                                           ; $5ecc: $3f
    add l                                         ; $5ecd: $85
    dec sp                                        ; $5ece: $3b
    ccf                                           ; $5ecf: $3f
    ld sp, $3a3e                                  ; $5ed0: $31 $3e $3a
    inc b                                         ; $5ed3: $04
    inc a                                         ; $5ed4: $3c
    add d                                         ; $5ed5: $82
    inc c                                         ; $5ed6: $0c
    inc a                                         ; $5ed7: $3c
    ld [bc], a                                    ; $5ed8: $02
    jr c, jr_0e5_5ee7                             ; $5ed9: $38 $0c

    nop                                           ; $5edb: $00
    rst $38                                       ; $5edc: $ff
    rlca                                          ; $5edd: $07
    ld bc, $07f8                                  ; $5ede: $01 $f8 $07
    ld a, [c]                                     ; $5ee1: $f2
    ld bc, $faf1                                  ; $5ee2: $01 $f1 $fa
    add h                                         ; $5ee5: $84
    nop                                           ; $5ee6: $00

jr_0e5_5ee7:
    add hl, bc                                    ; $5ee7: $09
    nop                                           ; $5ee8: $00
    ld b, $1c                                     ; $5ee9: $06 $1c
    nop                                           ; $5eeb: $00
    rst $38                                       ; $5eec: $ff
    dec c                                         ; $5eed: $0d
    inc b                                         ; $5eee: $04
    ld hl, sp+$07                                 ; $5eef: $f8 $07
    ld a, [c]                                     ; $5ef1: $f2
    ld bc, $f9e8                                  ; $5ef2: $01 $e8 $f9
    add sp, -$01                                  ; $5ef5: $e8 $ff
    ld hl, sp-$07                                 ; $5ef7: $f8 $f9
    ld hl, sp-$01                                 ; $5ef9: $f8 $ff
    ld [bc], a                                    ; $5efb: $02
    rlca                                          ; $5efc: $07
    ld [bc], a                                    ; $5efd: $02
    rra                                           ; $5efe: $1f
    dec b                                         ; $5eff: $05
    ccf                                           ; $5f00: $3f
    adc e                                         ; $5f01: $8b
    ld a, [hl-]                                   ; $5f02: $3a
    rla                                           ; $5f03: $17
    ld e, $1d                                     ; $5f04: $1e $1d
    ld [de], a                                    ; $5f06: $12
    rra                                           ; $5f07: $1f
    ld de, $131f                                  ; $5f08: $11 $1f $13
    rrca                                          ; $5f0b: $0f
    inc c                                         ; $5f0c: $0c
    ld [bc], a                                    ; $5f0d: $02
    dec sp                                        ; $5f0e: $3b
    adc d                                         ; $5f0f: $8a
    ld e, h                                       ; $5f10: $5c
    ld a, h                                       ; $5f11: $7c
    ld e, e                                       ; $5f12: $5b
    ld a, a                                       ; $5f13: $7f
    cp h                                          ; $5f14: $bc
    rst $38                                       ; $5f15: $ff
    cp l                                          ; $5f16: $bd
    rst $38                                       ; $5f17: $ff
    sbc l                                         ; $5f18: $9d
    rst $38                                       ; $5f19: $ff
    ld [bc], a                                    ; $5f1a: $02
    jr nc, jr_0e5_5f1f                            ; $5f1b: $30 $02

    jr c, jr_0e5_5f22                             ; $5f1d: $38 $03

jr_0e5_5f1f:
    inc a                                         ; $5f1f: $3c
    add e                                         ; $5f20: $83
    inc e                                         ; $5f21: $1c

jr_0e5_5f22:
    jr c, jr_0e5_5f2c                             ; $5f22: $38 $08

    inc bc                                        ; $5f24: $03
    jr c, jr_0e5_5eae                             ; $5f25: $38 $87

    ld [$2818], sp                                ; $5f27: $08 $18 $28
    jr c, jr_0e5_5f34                             ; $5f2a: $38 $08

jr_0e5_5f2c:
    jr nc, jr_0e5_5f3e                            ; $5f2c: $30 $10

    ld [bc], a                                    ; $5f2e: $02
    inc e                                         ; $5f2f: $1c
    sub a                                         ; $5f30: $97
    ld a, [hl-]                                   ; $5f31: $3a

jr_0e5_5f32:
    ld a, $1a                                     ; $5f32: $3e $1a

jr_0e5_5f34:
    ld a, $3b                                     ; $5f34: $3e $3b
    ccf                                           ; $5f36: $3f
    add hl, sp                                    ; $5f37: $39
    ccf                                           ; $5f38: $3f
    dec a                                         ; $5f39: $3d
    ccf                                           ; $5f3a: $3f
    sbc l                                         ; $5f3b: $9d
    rst $38                                       ; $5f3c: $ff
    cp l                                          ; $5f3d: $bd

jr_0e5_5f3e:
    rst $38                                       ; $5f3e: $ff
    db $fd                                        ; $5f3f: $fd
    cp a                                          ; $5f40: $bf
    ld a, d                                       ; $5f41: $7a
    ld e, a                                       ; $5f42: $5f
    ld a, [hl-]                                   ; $5f43: $3a
    ccf                                           ; $5f44: $3f
    ld [hl], $3f                                  ; $5f45: $36 $3f
    ld a, [hl-]                                   ; $5f47: $3a
    inc bc                                        ; $5f48: $03
    ccf                                           ; $5f49: $3f
    add c                                         ; $5f4a: $81
    inc hl                                        ; $5f4b: $23
    inc bc                                        ; $5f4c: $03
    ccf                                           ; $5f4d: $3f
    inc c                                         ; $5f4e: $0c
    nop                                           ; $5f4f: $00
    add l                                         ; $5f50: $85
    add hl, sp                                    ; $5f51: $39
    ccf                                           ; $5f52: $3f
    add hl, sp                                    ; $5f53: $39
    ccf                                           ; $5f54: $3f
    dec a                                         ; $5f55: $3d
    ld [bc], a                                    ; $5f56: $02
    ccf                                           ; $5f57: $3f
    add e                                         ; $5f58: $83
    add hl, sp                                    ; $5f59: $39
    ld a, $3a                                     ; $5f5a: $3e $3a
    ld b, $3c                                     ; $5f5c: $06 $3c
    ld [bc], a                                    ; $5f5e: $02
    jr c, jr_0e5_5f6f                             ; $5f5f: $38 $0e

    nop                                           ; $5f61: $00
    rst $38                                       ; $5f62: $ff
    rlca                                          ; $5f63: $07
    ld bc, $07f8                                  ; $5f64: $01 $f8 $07
    ld a, [c]                                     ; $5f67: $f2
    ld bc, $faf2                                  ; $5f68: $01 $f2 $fa
    add h                                         ; $5f6b: $84
    nop                                           ; $5f6c: $00
    add hl, bc                                    ; $5f6d: $09
    nop                                           ; $5f6e: $00

jr_0e5_5f6f:
    ld b, $1c                                     ; $5f6f: $06 $1c
    nop                                           ; $5f71: $00
    rst $38                                       ; $5f72: $ff
    dec c                                         ; $5f73: $0d
    inc b                                         ; $5f74: $04
    ld hl, sp+$07                                 ; $5f75: $f8 $07
    ld a, [c]                                     ; $5f77: $f2
    ld bc, $f9e7                                  ; $5f78: $01 $e7 $f9
    rst $20                                       ; $5f7b: $e7
    rst $38                                       ; $5f7c: $ff
    rst $30                                       ; $5f7d: $f7
    ld sp, hl                                     ; $5f7e: $f9
    rst $30                                       ; $5f7f: $f7
    rst $38                                       ; $5f80: $ff
    ld [bc], a                                    ; $5f81: $02
    dec bc                                        ; $5f82: $0b
    ld [bc], a                                    ; $5f83: $02
    rra                                           ; $5f84: $1f
    inc bc                                        ; $5f85: $03
    ccf                                           ; $5f86: $3f
    adc l                                         ; $5f87: $8d
    ld a, $3f                                     ; $5f88: $3e $3f
    inc [hl]                                      ; $5f8a: $34
    rra                                           ; $5f8b: $1f
    ld e, $1f                                     ; $5f8c: $1e $1f
    ld [de], a                                    ; $5f8e: $12
    rra                                           ; $5f8f: $1f
    ld de, $131f                                  ; $5f90: $11 $1f $13
    rrca                                          ; $5f93: $0f
    inc c                                         ; $5f94: $0c
    ld [bc], a                                    ; $5f95: $02
    dec sp                                        ; $5f96: $3b
    adc d                                         ; $5f97: $8a
    ld e, h                                       ; $5f98: $5c
    ld a, h                                       ; $5f99: $7c
    ld e, e                                       ; $5f9a: $5b
    ld a, a                                       ; $5f9b: $7f
    call c, $bcff                                 ; $5f9c: $dc $ff $bc
    rst $38                                       ; $5f9f: $ff
    cp [hl]                                       ; $5fa0: $be
    rst $38                                       ; $5fa1: $ff
    ld [bc], a                                    ; $5fa2: $02
    jr nc, jr_0e5_5fa7                            ; $5fa3: $30 $02

    jr c, @+$07                                   ; $5fa5: $38 $05

jr_0e5_5fa7:
    inc a                                         ; $5fa7: $3c
    add c                                         ; $5fa8: $81
    inc c                                         ; $5fa9: $0c
    inc bc                                        ; $5faa: $03
    jr c, jr_0e5_5f32                             ; $5fab: $38 $85

    ld [$0838], sp                                ; $5fad: $08 $38 $08
    jr c, jr_0e5_5fba                             ; $5fb0: $38 $08

    ld [bc], a                                    ; $5fb2: $02
    jr nc, jr_0e5_5fb7                            ; $5fb3: $30 $02

    inc e                                         ; $5fb5: $1c
    sub h                                         ; $5fb6: $94

jr_0e5_5fb7:
    ld a, [hl-]                                   ; $5fb7: $3a
    ld a, $1a                                     ; $5fb8: $3e $1a

jr_0e5_5fba:
    ld a, $3b                                     ; $5fba: $3e $3b
    ccf                                           ; $5fbc: $3f
    dec a                                         ; $5fbd: $3d
    ccf                                           ; $5fbe: $3f
    dec a                                         ; $5fbf: $3d
    ccf                                           ; $5fc0: $3f
    sbc [hl]                                      ; $5fc1: $9e
    rst $38                                       ; $5fc2: $ff
    sbc [hl]                                      ; $5fc3: $9e
    rst $38                                       ; $5fc4: $ff
    cp [hl]                                       ; $5fc5: $be
    rst $38                                       ; $5fc6: $ff
    cp $9f                                        ; $5fc7: $fe $9f
    ld a, l                                       ; $5fc9: $7d
    ld e, a                                       ; $5fca: $5f
    ld [bc], a                                    ; $5fcb: $02
    ccf                                           ; $5fcc: $3f
    add d                                         ; $5fcd: $82
    dec e                                         ; $5fce: $1d
    rra                                           ; $5fcf: $1f
    ld [bc], a                                    ; $5fd0: $02
    ccf                                           ; $5fd1: $3f
    add c                                         ; $5fd2: $81
    daa                                           ; $5fd3: $27
    inc bc                                        ; $5fd4: $03
    ccf                                           ; $5fd5: $3f
    inc c                                         ; $5fd6: $0c
    nop                                           ; $5fd7: $00
    add l                                         ; $5fd8: $85
    add hl, sp                                    ; $5fd9: $39
    ccf                                           ; $5fda: $3f
    add hl, sp                                    ; $5fdb: $39
    ccf                                           ; $5fdc: $3f
    dec a                                         ; $5fdd: $3d
    ld [bc], a                                    ; $5fde: $02
    ccf                                           ; $5fdf: $3f
    add [hl]                                      ; $5fe0: $86
    add hl, sp                                    ; $5fe1: $39
    ld e, $3a                                     ; $5fe2: $1e $3a
    inc e                                         ; $5fe4: $1c
    inc a                                         ; $5fe5: $3c
    inc e                                         ; $5fe6: $1c
    dec b                                         ; $5fe7: $05
    inc a                                         ; $5fe8: $3c
    add d                                         ; $5fe9: $82
    inc l                                         ; $5fea: $2c
    inc a                                         ; $5feb: $3c
    ld [bc], a                                    ; $5fec: $02
    jr jr_0e5_5ff9                                ; $5fed: $18 $0a

    nop                                           ; $5fef: $00
    rst $38                                       ; $5ff0: $ff
    rlca                                          ; $5ff1: $07
    ld bc, $07f8                                  ; $5ff2: $01 $f8 $07
    ld a, [c]                                     ; $5ff5: $f2
    ld bc, $faf1                                  ; $5ff6: $01 $f1 $fa

jr_0e5_5ff9:
    add h                                         ; $5ff9: $84
    nop                                           ; $5ffa: $00
    add hl, bc                                    ; $5ffb: $09
    nop                                           ; $5ffc: $00
    ld b, $1c                                     ; $5ffd: $06 $1c
    nop                                           ; $5fff: $00
    rst $38                                       ; $6000: $ff
    dec c                                         ; $6001: $0d
    inc b                                         ; $6002: $04
    ld hl, sp+$07                                 ; $6003: $f8 $07
    ld a, [c]                                     ; $6005: $f2
    ld bc, $fae7                                  ; $6006: $01 $e7 $fa
    rst $20                                       ; $6009: $e7
    db $fd                                        ; $600a: $fd
    rst $30                                       ; $600b: $f7
    ld a, [$fcf7]                                 ; $600c: $fa $f7 $fc
    ld [bc], a                                    ; $600f: $02
    rrca                                          ; $6010: $0f
    ld [bc], a                                    ; $6011: $02
    ccf                                           ; $6012: $3f
    inc bc                                        ; $6013: $03
    ld a, a                                       ; $6014: $7f
    adc l                                         ; $6015: $8d
    ld a, [hl]                                    ; $6016: $7e
    ld a, a                                       ; $6017: $7f
    halt                                          ; $6018: $76
    ld a, a                                       ; $6019: $7f
    ld a, e                                       ; $601a: $7b
    ccf                                           ; $601b: $3f
    jr nc, jr_0e5_605d                            ; $601c: $30 $3f

    jr nz, @+$21                                  ; $601e: $20 $1f

    ld de, $101f                                  ; $6020: $11 $1f $10
    ld [bc], a                                    ; $6023: $02
    dec a                                         ; $6024: $3d
    adc d                                         ; $6025: $8a
    ld l, [hl]                                    ; $6026: $6e
    ld a, [hl]                                    ; $6027: $7e
    xor l                                         ; $6028: $ad
    rst $38                                       ; $6029: $ff
    and [hl]                                      ; $602a: $a6
    rst $38                                       ; $602b: $ff
    ld l, a                                       ; $602c: $6f
    ld a, a                                       ; $602d: $7f
    cpl                                           ; $602e: $2f
    ccf                                           ; $602f: $3f
    ld [bc], a                                    ; $6030: $02
    inc b                                         ; $6031: $04
    ld [bc], a                                    ; $6032: $02
    rlca                                          ; $6033: $07
    ld [bc], a                                    ; $6034: $02
    ld b, $02                                     ; $6035: $06 $02
    rlca                                          ; $6037: $07
    adc b                                         ; $6038: $88
    ld b, $02                                     ; $6039: $06 $02
    rlca                                          ; $603b: $07
    inc bc                                        ; $603c: $03
    rlca                                          ; $603d: $07
    ld bc, $0206                                  ; $603e: $01 $06 $02
    ld [bc], a                                    ; $6041: $02
    ld b, $02                                     ; $6042: $06 $02
    inc b                                         ; $6044: $04
    ld [bc], a                                    ; $6045: $02
    nop                                           ; $6046: $00
    inc b                                         ; $6047: $04
    inc b                                         ; $6048: $04
    sbc d                                         ; $6049: $9a
    ld [bc], a                                    ; $604a: $02
    ld b, $02                                     ; $604b: $06 $02
    ld b, $02                                     ; $604d: $06 $02
    ld b, $27                                     ; $604f: $06 $27
    ccf                                           ; $6051: $3f
    daa                                           ; $6052: $27
    ccf                                           ; $6053: $3f
    inc hl                                        ; $6054: $23
    ccf                                           ; $6055: $3f
    ld a, $33                                     ; $6056: $3e $33
    ld a, $27                                     ; $6058: $3e $27
    ld a, [hl]                                    ; $605a: $7e
    ld a, a                                       ; $605b: $7f
    ld a, [hl]                                    ; $605c: $7e

jr_0e5_605d:
    ld a, a                                       ; $605d: $7f
    ld a, l                                       ; $605e: $7d
    ld a, a                                       ; $605f: $7f
    cp a                                          ; $6060: $bf
    rst $38                                       ; $6061: $ff
    adc h                                         ; $6062: $8c
    rst $38                                       ; $6063: $ff
    ld [bc], a                                    ; $6064: $02
    ld a, a                                       ; $6065: $7f
    ld a, [bc]                                    ; $6066: $0a
    nop                                           ; $6067: $00
    add [hl]                                      ; $6068: $86
    ld bc, $0103                                  ; $6069: $01 $03 $01
    inc bc                                        ; $606c: $03
    ld bc, $0803                                  ; $606d: $01 $03 $08
    ld [bc], a                                    ; $6070: $02
    inc b                                         ; $6071: $04
    nop                                           ; $6072: $00
    inc b                                         ; $6073: $04
    ld [bc], a                                    ; $6074: $02
    ld a, [bc]                                    ; $6075: $0a
    nop                                           ; $6076: $00
    rst $38                                       ; $6077: $ff
    rlca                                          ; $6078: $07
    ld bc, $07f8                                  ; $6079: $01 $f8 $07
    ld a, [c]                                     ; $607c: $f2
    ld bc, $faf1                                  ; $607d: $01 $f1 $fa
    add h                                         ; $6080: $84
    nop                                           ; $6081: $00
    ld [bc], a                                    ; $6082: $02
    nop                                           ; $6083: $00
    ld bc, $001c                                  ; $6084: $01 $1c $00
    rst $38                                       ; $6087: $ff
    dec c                                         ; $6088: $0d
    inc b                                         ; $6089: $04
    ld hl, sp+$07                                 ; $608a: $f8 $07
    ld a, [c]                                     ; $608c: $f2
    ld bc, $fae7                                  ; $608d: $01 $e7 $fa
    rst $20                                       ; $6090: $e7
    db $fd                                        ; $6091: $fd
    rst $30                                       ; $6092: $f7
    ld a, [$fff7]                                 ; $6093: $fa $f7 $ff
    ld [bc], a                                    ; $6096: $02
    rrca                                          ; $6097: $0f
    ld [bc], a                                    ; $6098: $02
    ccf                                           ; $6099: $3f
    inc bc                                        ; $609a: $03
    ld a, a                                       ; $609b: $7f
    adc l                                         ; $609c: $8d
    ld a, l                                       ; $609d: $7d
    ld a, a                                       ; $609e: $7f
    ld l, h                                       ; $609f: $6c
    ld a, e                                       ; $60a0: $7b
    ld [hl], a                                    ; $60a1: $77
    ccf                                           ; $60a2: $3f
    jr nc, jr_0e5_60e4                            ; $60a3: $30 $3f

    jr nz, @+$1f                                  ; $60a5: $20 $1d

    inc de                                        ; $60a7: $13
    rra                                           ; $60a8: $1f
    db $10                                        ; $60a9: $10
    ld [bc], a                                    ; $60aa: $02
    dec a                                         ; $60ab: $3d
    adc d                                         ; $60ac: $8a
    ld l, [hl]                                    ; $60ad: $6e
    ld a, [hl]                                    ; $60ae: $7e
    xor l                                         ; $60af: $ad
    rst $38                                       ; $60b0: $ff
    and [hl]                                      ; $60b1: $a6
    rst $38                                       ; $60b2: $ff
    ld h, a                                       ; $60b3: $67
    ld a, a                                       ; $60b4: $7f
    inc hl                                        ; $60b5: $23
    ccf                                           ; $60b6: $3f
    ld [bc], a                                    ; $60b7: $02
    inc b                                         ; $60b8: $04
    inc b                                         ; $60b9: $04
    rlca                                          ; $60ba: $07
    inc bc                                        ; $60bb: $03
    ld b, $02                                     ; $60bc: $06 $02
    ld [bc], a                                    ; $60be: $02
    add l                                         ; $60bf: $85
    ld b, $07                                     ; $60c0: $06 $07
    ld bc, $0206                                  ; $60c2: $01 $06 $02
    ld [bc], a                                    ; $60c5: $02
    ld b, $02                                     ; $60c6: $06 $02
    inc b                                         ; $60c8: $04
    ld [bc], a                                    ; $60c9: $02
    nop                                           ; $60ca: $00
    inc b                                         ; $60cb: $04
    inc b                                         ; $60cc: $04
    adc [hl]                                      ; $60cd: $8e
    ld [bc], a                                    ; $60ce: $02
    ld b, $02                                     ; $60cf: $06 $02
    ld b, $02                                     ; $60d1: $06 $02
    ld b, $33                                     ; $60d3: $06 $33
    ccf                                           ; $60d5: $3f
    ld sp, $3b3f                                  ; $60d6: $31 $3f $3b
    inc a                                         ; $60d9: $3c
    ccf                                           ; $60da: $3f
    ld a, $04                                     ; $60db: $3e $04
    ld a, a                                       ; $60dd: $7f
    adc b                                         ; $60de: $88
    cp a                                          ; $60df: $bf
    rst $38                                       ; $60e0: $ff
    cp [hl]                                       ; $60e1: $be
    rst $38                                       ; $60e2: $ff
    rst $18                                       ; $60e3: $df

jr_0e5_60e4:
    rst $38                                       ; $60e4: $ff
    ld [hl-], a                                   ; $60e5: $32
    ld a, $02                                     ; $60e6: $3e $02
    ld e, $0a                                     ; $60e8: $1e $0a
    nop                                           ; $60ea: $00
    add e                                         ; $60eb: $83
    ld [$0818], sp                                ; $60ec: $08 $18 $08
    dec b                                         ; $60ef: $05
    jr jr_0e5_60f4                                ; $60f0: $18 $02

    inc e                                         ; $60f2: $1c
    add [hl]                                      ; $60f3: $86

jr_0e5_60f4:
    inc c                                         ; $60f4: $0c
    inc e                                         ; $60f5: $1c
    rrca                                          ; $60f6: $0f
    rra                                           ; $60f7: $1f
    add hl, de                                    ; $60f8: $19
    rra                                           ; $60f9: $1f
    ld [bc], a                                    ; $60fa: $02
    ld e, $02                                     ; $60fb: $1e $02
    db $10                                        ; $60fd: $10
    inc c                                         ; $60fe: $0c
    nop                                           ; $60ff: $00
    rst $38                                       ; $6100: $ff
    rlca                                          ; $6101: $07
    ld bc, $07f8                                  ; $6102: $01 $f8 $07
    ld a, [c]                                     ; $6105: $f2
    ld bc, $faf1                                  ; $6106: $01 $f1 $fa
    add h                                         ; $6109: $84
    nop                                           ; $610a: $00
    ld [bc], a                                    ; $610b: $02
    nop                                           ; $610c: $00
    ld bc, $001c                                  ; $610d: $01 $1c $00
    rst $38                                       ; $6110: $ff
    dec c                                         ; $6111: $0d
    inc b                                         ; $6112: $04
    ld hl, sp+$07                                 ; $6113: $f8 $07
    ld a, [c]                                     ; $6115: $f2
    ld bc, $fae8                                  ; $6116: $01 $e8 $fa
    add sp, -$03                                  ; $6119: $e8 $fd
    ld hl, sp-$06                                 ; $611b: $f8 $fa
    ld hl, sp-$04                                 ; $611d: $f8 $fc
    ld [bc], a                                    ; $611f: $02
    rrca                                          ; $6120: $0f
    ld [bc], a                                    ; $6121: $02
    ccf                                           ; $6122: $3f
    inc bc                                        ; $6123: $03
    ld a, a                                       ; $6124: $7f
    sbc c                                         ; $6125: $99
    ld a, l                                       ; $6126: $7d
    ld a, a                                       ; $6127: $7f
    ld l, h                                       ; $6128: $6c
    ld a, e                                       ; $6129: $7b
    ld [hl], a                                    ; $612a: $77
    ccf                                           ; $612b: $3f
    jr nc, jr_0e5_616d                            ; $612c: $30 $3f

    jr nz, jr_0e5_614d                            ; $612e: $20 $1d

    inc de                                        ; $6130: $13
    ld a, a                                       ; $6131: $7f
    ld [hl], b                                    ; $6132: $70
    db $dd                                        ; $6133: $dd
    db $fd                                        ; $6134: $fd
    xor [hl]                                      ; $6135: $ae
    cp $6d                                        ; $6136: $fe $6d
    ld a, a                                       ; $6138: $7f
    ld h, $3f                                     ; $6139: $26 $3f
    daa                                           ; $613b: $27
    ccf                                           ; $613c: $3f
    daa                                           ; $613d: $27
    ccf                                           ; $613e: $3f
    ld [bc], a                                    ; $613f: $02
    inc b                                         ; $6140: $04
    inc b                                         ; $6141: $04
    rlca                                          ; $6142: $07
    inc bc                                        ; $6143: $03
    ld b, $02                                     ; $6144: $06 $02
    ld [bc], a                                    ; $6146: $02
    add l                                         ; $6147: $85
    ld b, $07                                     ; $6148: $06 $07
    ld bc, $0206                                  ; $614a: $01 $06 $02

jr_0e5_614d:
    ld [bc], a                                    ; $614d: $02
    ld b, $02                                     ; $614e: $06 $02
    inc b                                         ; $6150: $04
    ld [bc], a                                    ; $6151: $02
    nop                                           ; $6152: $00
    inc b                                         ; $6153: $04
    inc b                                         ; $6154: $04
    adc e                                         ; $6155: $8b
    ld [bc], a                                    ; $6156: $02
    ld b, $02                                     ; $6157: $06 $02
    ld b, $02                                     ; $6159: $06 $02
    ld b, $27                                     ; $615b: $06 $27
    ccf                                           ; $615d: $3f
    inc hl                                        ; $615e: $23
    ccf                                           ; $615f: $3f
    inc sp                                        ; $6160: $33
    ld [bc], a                                    ; $6161: $02
    ccf                                           ; $6162: $3f
    adc e                                         ; $6163: $8b
    add hl, sp                                    ; $6164: $39
    ld a, a                                       ; $6165: $7f
    ld a, e                                       ; $6166: $7b
    cp [hl]                                       ; $6167: $be
    rst $38                                       ; $6168: $ff
    cp l                                          ; $6169: $bd
    rst $38                                       ; $616a: $ff
    ld l, a                                       ; $616b: $6f
    ld a, a                                       ; $616c: $7f

jr_0e5_616d:
    daa                                           ; $616d: $27
    ccf                                           ; $616e: $3f
    ld [bc], a                                    ; $616f: $02
    inc e                                         ; $6170: $1c
    inc c                                         ; $6171: $0c
    nop                                           ; $6172: $00
    add l                                         ; $6173: $85
    ld bc, $0103                                  ; $6174: $01 $03 $01
    inc bc                                        ; $6177: $03
    ld bc, $0303                                  ; $6178: $01 $03 $03
    ld b, $02                                     ; $617b: $06 $02
    add c                                         ; $617d: $81
    ld bc, $0303                                  ; $617e: $01 $03 $03
    ld c, $00                                     ; $6181: $0e $00
    rst $38                                       ; $6183: $ff
    rlca                                          ; $6184: $07
    ld bc, $07f8                                  ; $6185: $01 $f8 $07
    ld a, [c]                                     ; $6188: $f2
    ld bc, $faf2                                  ; $6189: $01 $f2 $fa
    add h                                         ; $618c: $84
    nop                                           ; $618d: $00
    ld [bc], a                                    ; $618e: $02
    nop                                           ; $618f: $00
    ld bc, $001c                                  ; $6190: $01 $1c $00
    rst $38                                       ; $6193: $ff
    dec c                                         ; $6194: $0d
    inc b                                         ; $6195: $04
    ld hl, sp+$07                                 ; $6196: $f8 $07
    ld a, [c]                                     ; $6198: $f2
    ld bc, $fae7                                  ; $6199: $01 $e7 $fa
    rst $20                                       ; $619c: $e7
    db $fd                                        ; $619d: $fd
    rst $30                                       ; $619e: $f7
    ei                                            ; $619f: $fb
    rst $30                                       ; $61a0: $f7
    db $fc                                        ; $61a1: $fc
    ld [bc], a                                    ; $61a2: $02
    rrca                                          ; $61a3: $0f
    ld [bc], a                                    ; $61a4: $02
    ccf                                           ; $61a5: $3f
    inc bc                                        ; $61a6: $03
    ld a, a                                       ; $61a7: $7f
    adc l                                         ; $61a8: $8d
    ld a, [hl]                                    ; $61a9: $7e
    ld a, a                                       ; $61aa: $7f
    halt                                          ; $61ab: $76
    ld a, a                                       ; $61ac: $7f
    ld a, e                                       ; $61ad: $7b
    ccf                                           ; $61ae: $3f
    jr nc, jr_0e5_61f0                            ; $61af: $30 $3f

    jr nz, @+$21                                  ; $61b1: $20 $1f

    ld de, $101f                                  ; $61b3: $11 $1f $10
    ld [bc], a                                    ; $61b6: $02
    dec a                                         ; $61b7: $3d
    adc d                                         ; $61b8: $8a
    ld l, [hl]                                    ; $61b9: $6e
    ld a, [hl]                                    ; $61ba: $7e
    xor l                                         ; $61bb: $ad
    rst $38                                       ; $61bc: $ff
    and [hl]                                      ; $61bd: $a6
    rst $38                                       ; $61be: $ff
    ld l, a                                       ; $61bf: $6f
    ld a, a                                       ; $61c0: $7f
    daa                                           ; $61c1: $27
    ccf                                           ; $61c2: $3f
    ld [bc], a                                    ; $61c3: $02
    inc b                                         ; $61c4: $04
    ld [bc], a                                    ; $61c5: $02
    rlca                                          ; $61c6: $07
    ld [bc], a                                    ; $61c7: $02
    ld b, $02                                     ; $61c8: $06 $02
    rlca                                          ; $61ca: $07
    adc b                                         ; $61cb: $88
    ld b, $02                                     ; $61cc: $06 $02
    rlca                                          ; $61ce: $07
    inc bc                                        ; $61cf: $03
    rlca                                          ; $61d0: $07
    ld bc, $0206                                  ; $61d1: $01 $06 $02
    ld [bc], a                                    ; $61d4: $02
    ld b, $02                                     ; $61d5: $06 $02
    inc b                                         ; $61d7: $04
    ld [bc], a                                    ; $61d8: $02
    nop                                           ; $61d9: $00
    inc b                                         ; $61da: $04
    inc b                                         ; $61db: $04
    sbc d                                         ; $61dc: $9a
    ld [bc], a                                    ; $61dd: $02
    ld b, $02                                     ; $61de: $06 $02
    ld b, $02                                     ; $61e0: $06 $02
    ld b, $4e                                     ; $61e2: $06 $4e
    ld a, a                                       ; $61e4: $7f
    ld c, [hl]                                    ; $61e5: $4e
    ld a, a                                       ; $61e6: $7f
    ld h, $3f                                     ; $61e7: $26 $3f
    ld a, [hl]                                    ; $61e9: $7e
    ld h, a                                       ; $61ea: $67
    ld a, [hl]                                    ; $61eb: $7e
    ld c, a                                       ; $61ec: $4f
    ld a, h                                       ; $61ed: $7c
    ld a, a                                       ; $61ee: $7f
    ei                                            ; $61ef: $fb

jr_0e5_61f0:
    rst $38                                       ; $61f0: $ff
    cp [hl]                                       ; $61f1: $be
    rst $38                                       ; $61f2: $ff
    ld e, e                                       ; $61f3: $5b
    ld a, a                                       ; $61f4: $7f
    ld a, h                                       ; $61f5: $7c
    ld a, a                                       ; $61f6: $7f
    ld [bc], a                                    ; $61f7: $02
    inc bc                                        ; $61f8: $03
    ld a, [bc]                                    ; $61f9: $0a
    nop                                           ; $61fa: $00
    db $10                                        ; $61fb: $10
    ld bc, $0002                                  ; $61fc: $01 $02 $00
    ld [bc], a                                    ; $61ff: $02
    ld bc, $000c                                  ; $6200: $01 $0c $00
    rst $38                                       ; $6203: $ff
    rlca                                          ; $6204: $07
    ld bc, $07f8                                  ; $6205: $01 $f8 $07
    ld a, [c]                                     ; $6208: $f2
    ld bc, $faf1                                  ; $6209: $01 $f1 $fa
    add h                                         ; $620c: $84
    nop                                           ; $620d: $00
    ld [bc], a                                    ; $620e: $02
    nop                                           ; $620f: $00
    ld bc, $001c                                  ; $6210: $01 $1c $00
    rst $38                                       ; $6213: $ff
    dec c                                         ; $6214: $0d
    inc b                                         ; $6215: $04
    ld hl, sp+$07                                 ; $6216: $f8 $07
    ld a, [c]                                     ; $6218: $f2
    ld bc, $fae7                                  ; $6219: $01 $e7 $fa
    rst $20                                       ; $621c: $e7
    db $fd                                        ; $621d: $fd
    rst $30                                       ; $621e: $f7
    ld a, [$fff7]                                 ; $621f: $fa $f7 $ff
    ld [bc], a                                    ; $6222: $02
    rrca                                          ; $6223: $0f
    ld [bc], a                                    ; $6224: $02
    ccf                                           ; $6225: $3f
    inc bc                                        ; $6226: $03
    ld a, a                                       ; $6227: $7f
    adc l                                         ; $6228: $8d
    ld a, [hl]                                    ; $6229: $7e
    ld a, a                                       ; $622a: $7f
    ld a, e                                       ; $622b: $7b
    ld a, a                                       ; $622c: $7f
    ld a, l                                       ; $622d: $7d
    ccf                                           ; $622e: $3f
    jr nc, jr_0e5_6270                            ; $622f: $30 $3f

    jr z, jr_0e5_6252                             ; $6231: $28 $1f

    ld de, $101f                                  ; $6233: $11 $1f $10
    ld [bc], a                                    ; $6236: $02
    dec a                                         ; $6237: $3d
    adc d                                         ; $6238: $8a
    ld l, [hl]                                    ; $6239: $6e
    ld a, [hl]                                    ; $623a: $7e
    and l                                         ; $623b: $a5
    rst $38                                       ; $623c: $ff
    and [hl]                                      ; $623d: $a6
    rst $38                                       ; $623e: $ff
    ld l, a                                       ; $623f: $6f
    ld a, a                                       ; $6240: $7f
    ld c, a                                       ; $6241: $4f
    ld a, a                                       ; $6242: $7f
    ld [bc], a                                    ; $6243: $02
    inc b                                         ; $6244: $04
    ld [bc], a                                    ; $6245: $02
    rlca                                          ; $6246: $07
    ld [bc], a                                    ; $6247: $02
    ld b, $02                                     ; $6248: $06 $02
    rlca                                          ; $624a: $07
    add e                                         ; $624b: $83
    ld b, $02                                     ; $624c: $06 $02
    inc bc                                        ; $624e: $03
    ld [bc], a                                    ; $624f: $02
    rlca                                          ; $6250: $07
    add e                                         ; $6251: $83

jr_0e5_6252:
    ld bc, $0206                                  ; $6252: $01 $06 $02
    ld [bc], a                                    ; $6255: $02
    ld b, $02                                     ; $6256: $06 $02
    inc b                                         ; $6258: $04
    ld [bc], a                                    ; $6259: $02
    nop                                           ; $625a: $00
    inc b                                         ; $625b: $04
    inc b                                         ; $625c: $04
    sbc b                                         ; $625d: $98
    ld [bc], a                                    ; $625e: $02
    ld b, $02                                     ; $625f: $06 $02
    ld b, $02                                     ; $6261: $06 $02
    ld b, $4f                                     ; $6263: $06 $4f
    ld a, a                                       ; $6265: $7f
    ld c, a                                       ; $6266: $4f
    ld a, a                                       ; $6267: $7f
    ld c, a                                       ; $6268: $4f
    ld a, a                                       ; $6269: $7f
    ld a, [hl]                                    ; $626a: $7e
    ld e, a                                       ; $626b: $5f
    cp $9f                                        ; $626c: $fe $9f
    ld a, l                                       ; $626e: $7d
    ld a, a                                       ; $626f: $7f

jr_0e5_6270:
    ld a, e                                       ; $6270: $7b
    ld a, a                                       ; $6271: $7f
    ld e, e                                       ; $6272: $5b
    ld a, a                                       ; $6273: $7f
    cpl                                           ; $6274: $2f
    ccf                                           ; $6275: $3f
    ld [bc], a                                    ; $6276: $02
    rra                                           ; $6277: $1f
    ld [bc], a                                    ; $6278: $02
    ld bc, $000a                                  ; $6279: $01 $0a $00
    add l                                         ; $627c: $85
    ld [$0c18], sp                                ; $627d: $08 $18 $0c
    inc e                                         ; $6280: $1c
    inc c                                         ; $6281: $0c
    ld [bc], a                                    ; $6282: $02
    inc e                                         ; $6283: $1c
    add c                                         ; $6284: $81
    inc d                                         ; $6285: $14
    ld [bc], a                                    ; $6286: $02
    jr @-$76                                      ; $6287: $18 $88

    ld [$0418], sp                                ; $6289: $08 $18 $04
    inc e                                         ; $628c: $1c
    rrca                                          ; $628d: $0f
    rra                                           ; $628e: $1f
    ld de, $021f                                  ; $628f: $11 $1f $02
    ld e, $02                                     ; $6292: $1e $02
    db $10                                        ; $6294: $10
    ld a, [bc]                                    ; $6295: $0a
    nop                                           ; $6296: $00
    rst $38                                       ; $6297: $ff
    rlca                                          ; $6298: $07
    ld bc, $07f8                                  ; $6299: $01 $f8 $07
    ld a, [c]                                     ; $629c: $f2
    ld bc, $faf1                                  ; $629d: $01 $f1 $fa
    add h                                         ; $62a0: $84
    nop                                           ; $62a1: $00
    ld [bc], a                                    ; $62a2: $02
    nop                                           ; $62a3: $00
    ld bc, $001c                                  ; $62a4: $01 $1c $00
    rst $38                                       ; $62a7: $ff
    dec c                                         ; $62a8: $0d
    inc b                                         ; $62a9: $04
    ld hl, sp+$07                                 ; $62aa: $f8 $07
    ld a, [c]                                     ; $62ac: $f2
    ld bc, $fae8                                  ; $62ad: $01 $e8 $fa
    add sp, -$03                                  ; $62b0: $e8 $fd
    ld hl, sp-$05                                 ; $62b2: $f8 $fb
    ld hl, sp-$04                                 ; $62b4: $f8 $fc
    ld [bc], a                                    ; $62b6: $02
    rrca                                          ; $62b7: $0f
    ld [bc], a                                    ; $62b8: $02
    ccf                                           ; $62b9: $3f
    inc bc                                        ; $62ba: $03
    ld a, a                                       ; $62bb: $7f
    sbc c                                         ; $62bc: $99
    ld a, [hl]                                    ; $62bd: $7e
    ld a, a                                       ; $62be: $7f
    ld a, e                                       ; $62bf: $7b
    ld a, a                                       ; $62c0: $7f
    ld a, l                                       ; $62c1: $7d
    ccf                                           ; $62c2: $3f
    jr nc, jr_0e5_6304                            ; $62c3: $30 $3f

    jr z, @+$21                                   ; $62c5: $28 $1f

    ld de, $707f                                  ; $62c7: $11 $7f $70
    db $dd                                        ; $62ca: $dd
    db $fd                                        ; $62cb: $fd
    xor [hl]                                      ; $62cc: $ae
    cp $6d                                        ; $62cd: $fe $6d
    ld a, a                                       ; $62cf: $7f
    ld h, $3f                                     ; $62d0: $26 $3f
    cpl                                           ; $62d2: $2f
    ccf                                           ; $62d3: $3f
    daa                                           ; $62d4: $27
    ccf                                           ; $62d5: $3f
    ld [bc], a                                    ; $62d6: $02
    inc b                                         ; $62d7: $04
    ld [bc], a                                    ; $62d8: $02
    rlca                                          ; $62d9: $07
    ld [bc], a                                    ; $62da: $02
    ld b, $02                                     ; $62db: $06 $02
    rlca                                          ; $62dd: $07
    add e                                         ; $62de: $83
    ld b, $02                                     ; $62df: $06 $02
    inc bc                                        ; $62e1: $03
    ld [bc], a                                    ; $62e2: $02
    rlca                                          ; $62e3: $07
    add e                                         ; $62e4: $83
    ld bc, $0206                                  ; $62e5: $01 $06 $02
    ld [bc], a                                    ; $62e8: $02
    ld b, $02                                     ; $62e9: $06 $02
    inc b                                         ; $62eb: $04
    ld [bc], a                                    ; $62ec: $02
    nop                                           ; $62ed: $00
    inc b                                         ; $62ee: $04
    inc b                                         ; $62ef: $04
    sbc b                                         ; $62f0: $98
    ld [bc], a                                    ; $62f1: $02
    ld b, $02                                     ; $62f2: $06 $02
    ld b, $02                                     ; $62f4: $06 $02
    ld b, $4e                                     ; $62f6: $06 $4e
    ld a, a                                       ; $62f8: $7f
    ld c, [hl]                                    ; $62f9: $4e
    ld a, a                                       ; $62fa: $7f
    ld c, [hl]                                    ; $62fb: $4e
    ld a, a                                       ; $62fc: $7f
    ld a, [hl]                                    ; $62fd: $7e
    ld e, a                                       ; $62fe: $5f
    db $fd                                        ; $62ff: $fd
    sbc a                                         ; $6300: $9f
    ld a, l                                       ; $6301: $7d
    ld a, a                                       ; $6302: $7f
    ld a, e                                       ; $6303: $7b

jr_0e5_6304:
    ld a, a                                       ; $6304: $7f
    or a                                          ; $6305: $b7
    rst $38                                       ; $6306: $ff
    sbc h                                         ; $6307: $9c
    rst $38                                       ; $6308: $ff
    ld [bc], a                                    ; $6309: $02
    ld a, a                                       ; $630a: $7f
    inc c                                         ; $630b: $0c
    nop                                           ; $630c: $00
    ld [$0801], sp                                ; $630d: $08 $01 $08
    nop                                           ; $6310: $00
    inc b                                         ; $6311: $04
    ld bc, $000c                                  ; $6312: $01 $0c $00
    rst $38                                       ; $6315: $ff
    rlca                                          ; $6316: $07
    ld bc, $07f8                                  ; $6317: $01 $f8 $07
    ld a, [c]                                     ; $631a: $f2
    ld bc, $faf2                                  ; $631b: $01 $f2 $fa
    add h                                         ; $631e: $84
    nop                                           ; $631f: $00
    ld [bc], a                                    ; $6320: $02
    nop                                           ; $6321: $00
    ld bc, $001c                                  ; $6322: $01 $1c $00
    rst $38                                       ; $6325: $ff
    dec c                                         ; $6326: $0d
    inc b                                         ; $6327: $04
    ld hl, sp+$07                                 ; $6328: $f8 $07
    ld a, [c]                                     ; $632a: $f2
    ld bc, $fae7                                  ; $632b: $01 $e7 $fa
    rst $20                                       ; $632e: $e7
    db $fd                                        ; $632f: $fd
    rst $30                                       ; $6330: $f7
    ld a, [$fcf7]                                 ; $6331: $fa $f7 $fc
    ld [bc], a                                    ; $6334: $02
    rrca                                          ; $6335: $0f
    ld [bc], a                                    ; $6336: $02
    ccf                                           ; $6337: $3f
    inc bc                                        ; $6338: $03
    ld a, a                                       ; $6339: $7f
    adc l                                         ; $633a: $8d
    ld a, [hl]                                    ; $633b: $7e
    ld a, a                                       ; $633c: $7f
    halt                                          ; $633d: $76
    ld a, a                                       ; $633e: $7f
    ld a, e                                       ; $633f: $7b
    ccf                                           ; $6340: $3f
    jr nc, jr_0e5_6382                            ; $6341: $30 $3f

    jr nz, @+$21                                  ; $6343: $20 $1f

    ld de, $101f                                  ; $6345: $11 $1f $10
    ld [bc], a                                    ; $6348: $02
    dec a                                         ; $6349: $3d
    adc d                                         ; $634a: $8a
    ld l, [hl]                                    ; $634b: $6e
    ld a, [hl]                                    ; $634c: $7e
    xor l                                         ; $634d: $ad
    rst $38                                       ; $634e: $ff
    and [hl]                                      ; $634f: $a6
    rst $38                                       ; $6350: $ff
    ld l, a                                       ; $6351: $6f
    ld a, a                                       ; $6352: $7f
    cpl                                           ; $6353: $2f
    ccf                                           ; $6354: $3f
    ld [bc], a                                    ; $6355: $02
    inc b                                         ; $6356: $04
    ld [bc], a                                    ; $6357: $02
    rlca                                          ; $6358: $07
    ld [bc], a                                    ; $6359: $02
    ld b, $02                                     ; $635a: $06 $02
    rlca                                          ; $635c: $07

jr_0e5_635d:
    adc b                                         ; $635d: $88
    ld b, $02                                     ; $635e: $06 $02
    rlca                                          ; $6360: $07
    inc bc                                        ; $6361: $03
    rlca                                          ; $6362: $07
    ld bc, $0206                                  ; $6363: $01 $06 $02
    ld [bc], a                                    ; $6366: $02
    ld b, $02                                     ; $6367: $06 $02
    inc b                                         ; $6369: $04
    ld [bc], a                                    ; $636a: $02
    nop                                           ; $636b: $00
    inc b                                         ; $636c: $04
    inc b                                         ; $636d: $04
    adc e                                         ; $636e: $8b
    ld [bc], a                                    ; $636f: $02
    ld b, $02                                     ; $6370: $06 $02
    ld b, $02                                     ; $6372: $06 $02
    ld b, $27                                     ; $6374: $06 $27
    ccf                                           ; $6376: $3f
    daa                                           ; $6377: $27
    ccf                                           ; $6378: $3f
    inc hl                                        ; $6379: $23
    ld [bc], a                                    ; $637a: $02

jr_0e5_637b:
    ccf                                           ; $637b: $3f
    add e                                         ; $637c: $83
    inc sp                                        ; $637d: $33
    ccf                                           ; $637e: $3f
    daa                                           ; $637f: $27
    ld [bc], a                                    ; $6380: $02
    ld a, a                                       ; $6381: $7f

jr_0e5_6382:
    adc b                                         ; $6382: $88
    ld a, [hl]                                    ; $6383: $7e
    ld a, a                                       ; $6384: $7f
    ld a, l                                       ; $6385: $7d
    ld a, a                                       ; $6386: $7f
    cp a                                          ; $6387: $bf
    rst $38                                       ; $6388: $ff
    adc c                                         ; $6389: $89
    rst $38                                       ; $638a: $ff
    ld [bc], a                                    ; $638b: $02
    ld a, a                                       ; $638c: $7f
    ld a, [bc]                                    ; $638d: $0a
    nop                                           ; $638e: $00
    adc e                                         ; $638f: $8b
    ld bc, $0103                                  ; $6390: $01 $03 $01
    inc bc                                        ; $6393: $03
    ld bc, $0103                                  ; $6394: $01 $03 $01
    inc bc                                        ; $6397: $03
    ld bc, $0103                                  ; $6398: $01 $03 $01
    inc bc                                        ; $639b: $03
    inc bc                                        ; $639c: $03
    ld [bc], a                                    ; $639d: $02
    ld [bc], a                                    ; $639e: $02
    ld [bc], a                                    ; $639f: $02
    inc bc                                        ; $63a0: $03
    ld [bc], a                                    ; $63a1: $02
    ld [bc], a                                    ; $63a2: $02
    inc c                                         ; $63a3: $0c
    nop                                           ; $63a4: $00
    rst $38                                       ; $63a5: $ff
    rlca                                          ; $63a6: $07
    ld bc, $07f8                                  ; $63a7: $01 $f8 $07
    ld a, [c]                                     ; $63aa: $f2
    ld bc, $faf1                                  ; $63ab: $01 $f1 $fa
    add h                                         ; $63ae: $84
    nop                                           ; $63af: $00
    ld [bc], a                                    ; $63b0: $02
    nop                                           ; $63b1: $00
    ld bc, $001c                                  ; $63b2: $01 $1c $00
    rst $38                                       ; $63b5: $ff
    dec c                                         ; $63b6: $0d
    inc b                                         ; $63b7: $04
    ld hl, sp+$07                                 ; $63b8: $f8 $07
    ld a, [c]                                     ; $63ba: $f2
    ld bc, $f9e7                                  ; $63bb: $01 $e7 $f9
    rst $20                                       ; $63be: $e7
    rst $38                                       ; $63bf: $ff
    rst $30                                       ; $63c0: $f7
    ld hl, sp-$09                                 ; $63c1: $f8 $f7
    nop                                           ; $63c3: $00
    ld [bc], a                                    ; $63c4: $02
    rrca                                          ; $63c5: $0f
    dec bc                                        ; $63c6: $0b
    rra                                           ; $63c7: $1f
    add e                                         ; $63c8: $83
    rla                                           ; $63c9: $17
    rra                                           ; $63ca: $1f
    inc d                                         ; $63cb: $14
    ld [bc], a                                    ; $63cc: $02
    rrca                                          ; $63cd: $0f
    ld [bc], a                                    ; $63ce: $02
    jr jr_0e5_635d                                ; $63cf: $18 $8c

    ld [hl], a                                    ; $63d1: $77
    ld a, a                                       ; $63d2: $7f
    ld e, b                                       ; $63d3: $58
    ld a, a                                       ; $63d4: $7f
    ld e, h                                       ; $63d5: $5c
    ld a, a                                       ; $63d6: $7f
    cp a                                          ; $63d7: $bf
    rst $38                                       ; $63d8: $ff
    cp a                                          ; $63d9: $bf
    rst $38                                       ; $63da: $ff
    sbc a                                         ; $63db: $9f
    rst $38                                       ; $63dc: $ff
    ld [bc], a                                    ; $63dd: $02
    jr nc, @+$0d                                  ; $63de: $30 $0b

jr_0e5_63e0:
    jr c, @-$7b                                   ; $63e0: $38 $83

    jr z, @+$3a                                   ; $63e2: $28 $38

    jr z, jr_0e5_63e8                             ; $63e4: $28 $02

    jr nc, jr_0e5_63ea                            ; $63e6: $30 $02

jr_0e5_63e8:
    jr jr_0e5_637b                                ; $63e8: $18 $91

jr_0e5_63ea:
    ld l, $3e                                     ; $63ea: $2e $3e
    ld a, [bc]                                    ; $63ec: $0a
    ld a, $1a                                     ; $63ed: $3e $1a
    ld a, $35                                     ; $63ef: $3e $35
    ccf                                           ; $63f1: $3f
    dec a                                         ; $63f2: $3d
    ccf                                           ; $63f3: $3f
    add hl, sp                                    ; $63f4: $39
    ccf                                           ; $63f5: $3f
    ld c, a                                       ; $63f6: $4f
    ld a, a                                       ; $63f7: $7f
    adc a                                         ; $63f8: $8f
    rst $38                                       ; $63f9: $ff
    ld e, a                                       ; $63fa: $5f
    ld [bc], a                                    ; $63fb: $02
    ld a, a                                       ; $63fc: $7f
    add c                                         ; $63fd: $81
    ld e, a                                       ; $63fe: $5f
    ld [bc], a                                    ; $63ff: $02
    ccf                                           ; $6400: $3f
    ld [bc], a                                    ; $6401: $02
    rra                                           ; $6402: $1f

jr_0e5_6403:
    inc b                                         ; $6403: $04
    ccf                                           ; $6404: $3f
    add h                                         ; $6405: $84
    cpl                                           ; $6406: $2f
    ccf                                           ; $6407: $3f
    jr nc, jr_0e5_6449                            ; $6408: $30 $3f

    ld [bc], a                                    ; $640a: $02
    rra                                           ; $640b: $1f
    ld a, [bc]                                    ; $640c: $0a
    nop                                           ; $640d: $00
    add l                                         ; $640e: $85
    ld a, [c]                                     ; $640f: $f2
    cp $f1                                        ; $6410: $fe $f1
    rst $38                                       ; $6412: $ff
    ld a, [$fe02]                                 ; $6413: $fa $02 $fe
    add e                                         ; $6416: $83
    ld a, [$fcec]                                 ; $6417: $fa $ec $fc
    ld [bc], a                                    ; $641a: $02
    ld hl, sp-$78                                 ; $641b: $f8 $88
    call c, $3cfc                                 ; $641d: $dc $fc $3c
    db $fc                                        ; $6420: $fc
    db $f4                                        ; $6421: $f4
    db $fc                                        ; $6422: $fc
    inc c                                         ; $6423: $0c
    db $fc                                        ; $6424: $fc
    ld [bc], a                                    ; $6425: $02
    ld hl, sp+$0a                                 ; $6426: $f8 $0a
    nop                                           ; $6428: $00
    rst $38                                       ; $6429: $ff
    rlca                                          ; $642a: $07
    ld bc, $07f8                                  ; $642b: $01 $f8 $07
    ld a, [c]                                     ; $642e: $f2
    ld bc, $faf0                                  ; $642f: $01 $f0 $fa
    add d                                         ; $6432: $82
    nop                                           ; $6433: $00
    rrca                                          ; $6434: $0f
    ld e, $00                                     ; $6435: $1e $00
    rst $38                                       ; $6437: $ff
    dec c                                         ; $6438: $0d
    inc b                                         ; $6439: $04
    ld hl, sp+$07                                 ; $643a: $f8 $07
    ld a, [c]                                     ; $643c: $f2
    ld bc, $f9e7                                  ; $643d: $01 $e7 $f9
    rst $20                                       ; $6440: $e7
    rst $38                                       ; $6441: $ff
    rst $30                                       ; $6442: $f7
    ld hl, sp-$09                                 ; $6443: $f8 $f7
    rst $38                                       ; $6445: $ff
    ld [bc], a                                    ; $6446: $02
    rrca                                          ; $6447: $0f
    ld a, [bc]                                    ; $6448: $0a

jr_0e5_6449:
    rra                                           ; $6449: $1f
    add h                                         ; $644a: $84
    rla                                           ; $644b: $17
    rra                                           ; $644c: $1f
    ld [de], a                                    ; $644d: $12
    dec e                                         ; $644e: $1d
    ld [bc], a                                    ; $644f: $02
    rrca                                          ; $6450: $0f
    ld [bc], a                                    ; $6451: $02
    jr jr_0e5_63e0                                ; $6452: $18 $8c

    ld [hl], a                                    ; $6454: $77
    ld a, a                                       ; $6455: $7f
    ld e, b                                       ; $6456: $58
    ld a, a                                       ; $6457: $7f
    sbc h                                         ; $6458: $9c
    rst $38                                       ; $6459: $ff
    sbc a                                         ; $645a: $9f
    rst $38                                       ; $645b: $ff
    sbc a                                         ; $645c: $9f
    rst $38                                       ; $645d: $ff
    sbc a                                         ; $645e: $9f
    rst $38                                       ; $645f: $ff
    ld [bc], a                                    ; $6460: $02
    jr nc, jr_0e5_646e                            ; $6461: $30 $0b

    jr c, jr_0e5_63e8                             ; $6463: $38 $83

    jr z, jr_0e5_647f                             ; $6465: $28 $18

    jr z, jr_0e5_646b                             ; $6467: $28 $02

    jr nc, jr_0e5_646d                            ; $6469: $30 $02

jr_0e5_646b:
    jr jr_0e5_6403                                ; $646b: $18 $96

jr_0e5_646d:
    inc l                                         ; $646d: $2c

jr_0e5_646e:
    inc a                                         ; $646e: $3c
    ld a, [bc]                                    ; $646f: $0a
    ld a, $1a                                     ; $6470: $3e $1a
    ld a, $35                                     ; $6472: $3e $35
    ccf                                           ; $6474: $3f
    dec a                                         ; $6475: $3d
    ccf                                           ; $6476: $3f
    dec a                                         ; $6477: $3d
    ccf                                           ; $6478: $3f
    ld c, a                                       ; $6479: $4f
    ld a, a                                       ; $647a: $7f
    adc a                                         ; $647b: $8f
    rst $38                                       ; $647c: $ff
    adc a                                         ; $647d: $8f
    rst $38                                       ; $647e: $ff

jr_0e5_647f:
    ld a, a                                       ; $647f: $7f
    ld e, a                                       ; $6480: $5f
    ld a, a                                       ; $6481: $7f

jr_0e5_6482:
    ld c, a                                       ; $6482: $4f
    ld [bc], a                                    ; $6483: $02
    ccf                                           ; $6484: $3f
    inc b                                         ; $6485: $04
    rra                                           ; $6486: $1f
    add h                                         ; $6487: $84
    add hl, de                                    ; $6488: $19
    rra                                           ; $6489: $1f
    ld c, $0f                                     ; $648a: $0e $0f
    ld [bc], a                                    ; $648c: $02
    ld bc, $000a                                  ; $648d: $01 $0a $00
    add e                                         ; $6490: $83
    ld a, c                                       ; $6491: $79
    ld a, a                                       ; $6492: $7f
    ld a, l                                       ; $6493: $7d
    ld [bc], a                                    ; $6494: $02
    ld a, a                                       ; $6495: $7f
    add c                                         ; $6496: $81
    ld a, e                                       ; $6497: $7b
    ld [bc], a                                    ; $6498: $02
    ld a, [hl]                                    ; $6499: $7e
    ld [bc], a                                    ; $649a: $02
    ld a, h                                       ; $649b: $7c
    add e                                         ; $649c: $83
    ld [hl], h                                    ; $649d: $74
    ld a, h                                       ; $649e: $7c
    ld a, d                                       ; $649f: $7a
    inc bc                                        ; $64a0: $03
    ld a, [hl]                                    ; $64a1: $7e
    add h                                         ; $64a2: $84
    ld h, [hl]                                    ; $64a3: $66
    ld a, [hl]                                    ; $64a4: $7e
    ld a, $7e                                     ; $64a5: $3e $7e
    ld [bc], a                                    ; $64a7: $02
    ld a, h                                       ; $64a8: $7c
    ld a, [bc]                                    ; $64a9: $0a
    nop                                           ; $64aa: $00
    rst $38                                       ; $64ab: $ff
    rlca                                          ; $64ac: $07
    ld bc, $07f8                                  ; $64ad: $01 $f8 $07
    ld a, [c]                                     ; $64b0: $f2
    ld bc, $faf0                                  ; $64b1: $01 $f0 $fa
    add d                                         ; $64b4: $82
    nop                                           ; $64b5: $00
    rrca                                          ; $64b6: $0f
    ld e, $00                                     ; $64b7: $1e $00
    rst $38                                       ; $64b9: $ff
    dec c                                         ; $64ba: $0d
    inc b                                         ; $64bb: $04
    ld hl, sp+$07                                 ; $64bc: $f8 $07
    ld a, [c]                                     ; $64be: $f2
    ld bc, $f9e8                                  ; $64bf: $01 $e8 $f9
    add sp, -$01                                  ; $64c2: $e8 $ff
    ld hl, sp-$08                                 ; $64c4: $f8 $f8
    ld hl, sp-$01                                 ; $64c6: $f8 $ff
    ld [bc], a                                    ; $64c8: $02
    rrca                                          ; $64c9: $0f
    ld a, [bc]                                    ; $64ca: $0a
    rra                                           ; $64cb: $1f
    add h                                         ; $64cc: $84
    rla                                           ; $64cd: $17
    rra                                           ; $64ce: $1f
    ld [de], a                                    ; $64cf: $12
    dec e                                         ; $64d0: $1d
    ld [bc], a                                    ; $64d1: $02
    inc c                                         ; $64d2: $0c
    adc [hl]                                      ; $64d3: $8e
    db $10                                        ; $64d4: $10
    rra                                           ; $64d5: $1f
    ld a, b                                       ; $64d6: $78
    ld a, a                                       ; $64d7: $7f
    rst $18                                       ; $64d8: $df
    rst $38                                       ; $64d9: $ff
    rst $18                                       ; $64da: $df
    rst $38                                       ; $64db: $ff
    sbc a                                         ; $64dc: $9f
    rst $38                                       ; $64dd: $ff

jr_0e5_64de:
    sbc a                                         ; $64de: $9f
    rst $38                                       ; $64df: $ff
    sbc a                                         ; $64e0: $9f
    rst $38                                       ; $64e1: $ff
    ld [bc], a                                    ; $64e2: $02
    jr nc, jr_0e5_64f0                            ; $64e3: $30 $0b

    jr c, @-$7b                                   ; $64e5: $38 $83

    jr z, jr_0e5_6501                             ; $64e7: $28 $18

    jr z, jr_0e5_64ed                             ; $64e9: $28 $02

    jr nc, jr_0e5_6482                            ; $64eb: $30 $95

jr_0e5_64ed:
    ld [$1e38], sp                                ; $64ed: $08 $38 $1e

jr_0e5_64f0:
    ld a, $3a                                     ; $64f0: $3e $3a
    ld a, $39                                     ; $64f2: $3e $39
    ccf                                           ; $64f4: $3f
    dec [hl]                                      ; $64f5: $35
    ccf                                           ; $64f6: $3f
    dec a                                         ; $64f7: $3d
    ccf                                           ; $64f8: $3f
    dec a                                         ; $64f9: $3d
    ccf                                           ; $64fa: $3f
    ld c, a                                       ; $64fb: $4f

jr_0e5_64fc:
    ld a, a                                       ; $64fc: $7f
    ld e, a                                       ; $64fd: $5f
    ld a, a                                       ; $64fe: $7f
    adc a                                         ; $64ff: $8f
    rst $38                                       ; $6500: $ff

jr_0e5_6501:
    ld e, a                                       ; $6501: $5f
    ld [bc], a                                    ; $6502: $02
    ld a, a                                       ; $6503: $7f
    add c                                         ; $6504: $81
    ld c, a                                       ; $6505: $4f
    ld [bc], a                                    ; $6506: $02
    ccf                                           ; $6507: $3f
    add e                                         ; $6508: $83
    rla                                           ; $6509: $17
    rra                                           ; $650a: $1f
    inc e                                         ; $650b: $1c
    inc bc                                        ; $650c: $03
    rra                                           ; $650d: $1f
    ld c, $00                                     ; $650e: $0e $00
    add e                                         ; $6510: $83
    ld a, c                                       ; $6511: $79
    ld a, a                                       ; $6512: $7f
    ld a, l                                       ; $6513: $7d
    ld [bc], a                                    ; $6514: $02
    ld a, a                                       ; $6515: $7f
    add c                                         ; $6516: $81
    ld a, c                                       ; $6517: $79
    ld [bc], a                                    ; $6518: $02
    ld a, [hl]                                    ; $6519: $7e
    add a                                         ; $651a: $87
    ld h, [hl]                                    ; $651b: $66
    ld a, [hl]                                    ; $651c: $7e
    ld e, d                                       ; $651d: $5a
    ld a, [hl]                                    ; $651e: $7e
    halt                                          ; $651f: $76
    ld a, [hl]                                    ; $6520: $7e
    ld a, $03                                     ; $6521: $3e $03
    ld a, [hl]                                    ; $6523: $7e
    ld [bc], a                                    ; $6524: $02
    inc a                                         ; $6525: $3c
    inc c                                         ; $6526: $0c
    nop                                           ; $6527: $00
    rst $38                                       ; $6528: $ff
    rlca                                          ; $6529: $07
    ld bc, $07f8                                  ; $652a: $01 $f8 $07
    ld a, [c]                                     ; $652d: $f2
    ld bc, $f9f0                                  ; $652e: $01 $f0 $f9
    add d                                         ; $6531: $82
    nop                                           ; $6532: $00
    inc bc                                        ; $6533: $03
    ld e, $00                                     ; $6534: $1e $00
    rst $38                                       ; $6536: $ff
    dec c                                         ; $6537: $0d
    inc b                                         ; $6538: $04
    ld hl, sp+$07                                 ; $6539: $f8 $07
    ld a, [c]                                     ; $653b: $f2
    ld bc, $f9e7                                  ; $653c: $01 $e7 $f9
    rst $20                                       ; $653f: $e7
    rst $38                                       ; $6540: $ff
    rst $30                                       ; $6541: $f7
    ld hl, sp-$09                                 ; $6542: $f8 $f7
    nop                                           ; $6544: $00
    ld [bc], a                                    ; $6545: $02
    rrca                                          ; $6546: $0f
    dec bc                                        ; $6547: $0b
    rra                                           ; $6548: $1f
    add e                                         ; $6549: $83
    rla                                           ; $654a: $17
    rra                                           ; $654b: $1f
    inc d                                         ; $654c: $14
    ld [bc], a                                    ; $654d: $02
    rrca                                          ; $654e: $0f
    ld [bc], a                                    ; $654f: $02
    jr jr_0e5_64de                                ; $6550: $18 $8c

    ld [hl], a                                    ; $6552: $77
    ld a, a                                       ; $6553: $7f
    ld e, b                                       ; $6554: $58
    ld a, a                                       ; $6555: $7f
    call c, $bfff                                 ; $6556: $dc $ff $bf
    rst $38                                       ; $6559: $ff
    cp a                                          ; $655a: $bf
    rst $38                                       ; $655b: $ff

jr_0e5_655c:
    sbc a                                         ; $655c: $9f
    rst $38                                       ; $655d: $ff
    ld [bc], a                                    ; $655e: $02
    jr nc, @+$0d                                  ; $655f: $30 $0b

    jr c, @-$7b                                   ; $6561: $38 $83

    jr z, jr_0e5_659d                             ; $6563: $28 $38

jr_0e5_6565:
    jr z, jr_0e5_6569                             ; $6565: $28 $02

    jr nc, jr_0e5_656b                            ; $6567: $30 $02

jr_0e5_6569:
    jr jr_0e5_64fc                                ; $6569: $18 $91

jr_0e5_656b:
    ld l, $3e                                     ; $656b: $2e $3e
    ld a, [bc]                                    ; $656d: $0a
    ld a, $1b                                     ; $656e: $3e $1b
    ccf                                           ; $6570: $3f
    dec [hl]                                      ; $6571: $35
    ccf                                           ; $6572: $3f
    dec a                                         ; $6573: $3d
    ccf                                           ; $6574: $3f
    add hl, sp                                    ; $6575: $39
    ccf                                           ; $6576: $3f
    ld c, a                                       ; $6577: $4f
    ld a, a                                       ; $6578: $7f

jr_0e5_6579:
    adc a                                         ; $6579: $8f
    rst $38                                       ; $657a: $ff
    ld e, a                                       ; $657b: $5f
    ld [bc], a                                    ; $657c: $02
    ld a, a                                       ; $657d: $7f
    add c                                         ; $657e: $81
    ld e, a                                       ; $657f: $5f
    ld [bc], a                                    ; $6580: $02
    ccf                                           ; $6581: $3f
    inc b                                         ; $6582: $04
    rra                                           ; $6583: $1f
    ld [bc], a                                    ; $6584: $02
    ccf                                           ; $6585: $3f
    add h                                         ; $6586: $84
    ld a, $3f                                     ; $6587: $3e $3f
    inc de                                        ; $6589: $13
    rra                                           ; $658a: $1f
    ld [bc], a                                    ; $658b: $02
    ld e, $0a                                     ; $658c: $1e $0a
    nop                                           ; $658e: $00
    add l                                         ; $658f: $85
    ld a, [c]                                     ; $6590: $f2
    cp $f1                                        ; $6591: $fe $f1
    rst $38                                       ; $6593: $ff
    ld a, [$fe02]                                 ; $6594: $fa $02 $fe
    add l                                         ; $6597: $85
    ld a, [$fcec]                                 ; $6598: $fa $ec $fc
    add sp, -$08                                  ; $659b: $e8 $f8

jr_0e5_659d:
    inc b                                         ; $659d: $04
    db $fc                                        ; $659e: $fc
    add d                                         ; $659f: $82
    inc c                                         ; $65a0: $0c
    db $fc                                        ; $65a1: $fc
    ld [bc], a                                    ; $65a2: $02
    ld hl, sp+$0c                                 ; $65a3: $f8 $0c
    nop                                           ; $65a5: $00
    rst $38                                       ; $65a6: $ff
    rlca                                          ; $65a7: $07
    ld bc, $07f8                                  ; $65a8: $01 $f8 $07
    ld a, [c]                                     ; $65ab: $f2
    ld bc, $faf0                                  ; $65ac: $01 $f0 $fa
    add d                                         ; $65af: $82
    nop                                           ; $65b0: $00
    rrca                                          ; $65b1: $0f
    ld e, $00                                     ; $65b2: $1e $00
    rst $38                                       ; $65b4: $ff
    dec c                                         ; $65b5: $0d
    inc b                                         ; $65b6: $04
    ld hl, sp+$07                                 ; $65b7: $f8 $07
    ld a, [c]                                     ; $65b9: $f2
    ld bc, $f9e7                                  ; $65ba: $01 $e7 $f9
    rst $20                                       ; $65bd: $e7
    rst $38                                       ; $65be: $ff
    rst $30                                       ; $65bf: $f7
    ld sp, hl                                     ; $65c0: $f9
    rst $30                                       ; $65c1: $f7
    nop                                           ; $65c2: $00
    ld [bc], a                                    ; $65c3: $02
    rrca                                          ; $65c4: $0f
    dec bc                                        ; $65c5: $0b
    rra                                           ; $65c6: $1f
    add e                                         ; $65c7: $83
    rla                                           ; $65c8: $17
    add hl, de                                    ; $65c9: $19
    ld d, $02                                     ; $65ca: $16 $02
    rrca                                          ; $65cc: $0f
    ld [bc], a                                    ; $65cd: $02
    jr jr_0e5_655c                                ; $65ce: $18 $8c

    scf                                           ; $65d0: $37
    ccf                                           ; $65d1: $3f
    ld e, b                                       ; $65d2: $58
    ld a, a                                       ; $65d3: $7f
    ld e, h                                       ; $65d4: $5c
    ld a, a                                       ; $65d5: $7f
    cp a                                          ; $65d6: $bf
    rst $38                                       ; $65d7: $ff
    cp a                                          ; $65d8: $bf
    rst $38                                       ; $65d9: $ff
    cp a                                          ; $65da: $bf
    rst $38                                       ; $65db: $ff
    ld [bc], a                                    ; $65dc: $02
    jr nc, @+$0c                                  ; $65dd: $30 $0a

    jr c, jr_0e5_6565                             ; $65df: $38 $84

    jr z, jr_0e5_661b                             ; $65e1: $28 $38

    ld [$0238], sp                                ; $65e3: $08 $38 $02

jr_0e5_65e6:
    jr nc, jr_0e5_65ea                            ; $65e6: $30 $02

    jr jr_0e5_6579                                ; $65e8: $18 $8f

jr_0e5_65ea:
    ld l, $3e                                     ; $65ea: $2e $3e
    ld a, [bc]                                    ; $65ec: $0a
    ld a, $19                                     ; $65ed: $3e $19
    ccf                                           ; $65ef: $3f
    add hl, sp                                    ; $65f0: $39
    ccf                                           ; $65f1: $3f
    add hl, sp                                    ; $65f2: $39
    ccf                                           ; $65f3: $3f
    add hl, sp                                    ; $65f4: $39
    ccf                                           ; $65f5: $3f
    sbc a                                         ; $65f6: $9f
    rst $38                                       ; $65f7: $ff
    cp a                                          ; $65f8: $bf
    ld [bc], a                                    ; $65f9: $02

jr_0e5_65fa:
    rst $38                                       ; $65fa: $ff
    add c                                         ; $65fb: $81
    rst $18                                       ; $65fc: $df
    ld [bc], a                                    ; $65fd: $02
    ld a, a                                       ; $65fe: $7f
    ld [bc], a                                    ; $65ff: $02
    ccf                                           ; $6600: $3f
    add d                                         ; $6601: $82
    cpl                                           ; $6602: $2f
    ccf                                           ; $6603: $3f
    inc b                                         ; $6604: $04
    ld a, a                                       ; $6605: $7f
    add h                                         ; $6606: $84
    ld h, a                                       ; $6607: $67
    ld a, a                                       ; $6608: $7f
    ld a, h                                       ; $6609: $7c
    ld a, a                                       ; $660a: $7f
    ld [bc], a                                    ; $660b: $02
    ccf                                           ; $660c: $3f
    ld a, [bc]                                    ; $660d: $0a
    nop                                           ; $660e: $00
    adc d                                         ; $660f: $8a
    ld [hl], d                                    ; $6610: $72
    ld a, [hl]                                    ; $6611: $7e
    ld [hl], c                                    ; $6612: $71
    ld a, a                                       ; $6613: $7f
    ld [hl], c                                    ; $6614: $71
    ld a, a                                       ; $6615: $7f
    ld a, [hl]                                    ; $6616: $7e
    ld a, d                                       ; $6617: $7a
    ld a, [hl]                                    ; $6618: $7e
    ld [hl], d                                    ; $6619: $72
    ld [bc], a                                    ; $661a: $02

jr_0e5_661b:
    ld a, h                                       ; $661b: $7c
    ld [bc], a                                    ; $661c: $02
    ld a, b                                       ; $661d: $78
    add h                                         ; $661e: $84
    ld l, b                                       ; $661f: $68
    ld a, b                                       ; $6620: $78
    jr jr_0e5_669b                                ; $6621: $18 $78

    ld [bc], a                                    ; $6623: $02
    ld [hl], b                                    ; $6624: $70
    inc c                                         ; $6625: $0c
    nop                                           ; $6626: $00
    rst $38                                       ; $6627: $ff
    rlca                                          ; $6628: $07
    ld bc, $07f8                                  ; $6629: $01 $f8 $07
    ld a, [c]                                     ; $662c: $f2
    ld bc, $faf0                                  ; $662d: $01 $f0 $fa
    add d                                         ; $6630: $82
    nop                                           ; $6631: $00
    rrca                                          ; $6632: $0f
    ld e, $00                                     ; $6633: $1e $00
    rst $38                                       ; $6635: $ff
    dec c                                         ; $6636: $0d
    inc b                                         ; $6637: $04
    ld hl, sp+$07                                 ; $6638: $f8 $07
    ld a, [c]                                     ; $663a: $f2
    ld bc, $f9e8                                  ; $663b: $01 $e8 $f9
    add sp, -$01                                  ; $663e: $e8 $ff
    ld hl, sp-$07                                 ; $6640: $f8 $f9
    ld hl, sp+$00                                 ; $6642: $f8 $00
    ld [bc], a                                    ; $6644: $02
    rrca                                          ; $6645: $0f
    dec bc                                        ; $6646: $0b
    rra                                           ; $6647: $1f
    add e                                         ; $6648: $83
    rla                                           ; $6649: $17
    add hl, de                                    ; $664a: $19
    ld d, $02                                     ; $664b: $16 $02
    inc c                                         ; $664d: $0c
    adc [hl]                                      ; $664e: $8e
    db $10                                        ; $664f: $10
    rra                                           ; $6650: $1f
    ld a, b                                       ; $6651: $78
    ld a, a                                       ; $6652: $7f
    ld e, a                                       ; $6653: $5f
    ld a, a                                       ; $6654: $7f
    sbc a                                         ; $6655: $9f
    rst $38                                       ; $6656: $ff
    cp a                                          ; $6657: $bf
    rst $38                                       ; $6658: $ff
    cp a                                          ; $6659: $bf

jr_0e5_665a:
    rst $38                                       ; $665a: $ff
    cp a                                          ; $665b: $bf
    rst $38                                       ; $665c: $ff
    ld [bc], a                                    ; $665d: $02
    jr nc, @+$0c                                  ; $665e: $30 $0a

    jr c, jr_0e5_65e6                             ; $6660: $38 $84

jr_0e5_6662:
    jr z, jr_0e5_669c                             ; $6662: $28 $38

    ld [$0238], sp                                ; $6664: $08 $38 $02
    jr nc, jr_0e5_65fa                            ; $6667: $30 $91

    ld [$1e38], sp                                ; $6669: $08 $38 $1e
    ld a, $3b                                     ; $666c: $3e $3b
    ccf                                           ; $666e: $3f
    dec sp                                        ; $666f: $3b
    ccf                                           ; $6670: $3f
    dec a                                         ; $6671: $3d
    ccf                                           ; $6672: $3f
    add hl, sp                                    ; $6673: $39
    ccf                                           ; $6674: $3f
    add hl, sp                                    ; $6675: $39
    ccf                                           ; $6676: $3f
    sbc a                                         ; $6677: $9f

jr_0e5_6678:
    rst $38                                       ; $6678: $ff
    cp a                                          ; $6679: $bf
    ld [bc], a                                    ; $667a: $02
    rst $38                                       ; $667b: $ff
    add c                                         ; $667c: $81
    sbc a                                         ; $667d: $9f
    ld [bc], a                                    ; $667e: $02
    ld a, a                                       ; $667f: $7f
    add a                                         ; $6680: $87
    ld h, a                                       ; $6681: $67
    ld a, a                                       ; $6682: $7f
    ld a, e                                       ; $6683: $7b
    ld a, a                                       ; $6684: $7f
    ld l, a                                       ; $6685: $6f
    ld a, a                                       ; $6686: $7f
    ld a, h                                       ; $6687: $7c
    inc bc                                        ; $6688: $03
    ld a, a                                       ; $6689: $7f
    ld [bc], a                                    ; $668a: $02
    inc a                                         ; $668b: $3c
    inc c                                         ; $668c: $0c
    nop                                           ; $668d: $00
    add a                                         ; $668e: $87
    ld [hl], d                                    ; $668f: $72
    ld a, [hl]                                    ; $6690: $7e
    ld a, d                                       ; $6691: $7a
    ld a, [hl]                                    ; $6692: $7e
    ld [hl], c                                    ; $6693: $71
    ld a, a                                       ; $6694: $7f
    ld a, d                                       ; $6695: $7a
    ld [bc], a                                    ; $6696: $02
    ld a, [hl]                                    ; $6697: $7e
    add c                                         ; $6698: $81
    ld [hl], d                                    ; $6699: $72
    ld [bc], a                                    ; $669a: $02

jr_0e5_669b:
    ld a, h                                       ; $669b: $7c

jr_0e5_669c:
    add e                                         ; $669c: $83
    ld l, b                                       ; $669d: $68
    ld a, b                                       ; $669e: $78
    jr c, jr_0e5_66a4                             ; $669f: $38 $03

    ld a, b                                       ; $66a1: $78
    ld c, $00                                     ; $66a2: $0e $00

jr_0e5_66a4:
    rst $38                                       ; $66a4: $ff
    rlca                                          ; $66a5: $07
    ld bc, $07f8                                  ; $66a6: $01 $f8 $07
    ld a, [c]                                     ; $66a9: $f2
    ld bc, $f9f0                                  ; $66aa: $01 $f0 $f9
    add d                                         ; $66ad: $82
    nop                                           ; $66ae: $00
    inc bc                                        ; $66af: $03
    ld e, $00                                     ; $66b0: $1e $00
    rst $38                                       ; $66b2: $ff
    dec c                                         ; $66b3: $0d
    inc b                                         ; $66b4: $04
    ld hl, sp+$07                                 ; $66b5: $f8 $07
    ld a, [c]                                     ; $66b7: $f2
    ld bc, $f9e7                                  ; $66b8: $01 $e7 $f9
    rst $20                                       ; $66bb: $e7
    rst $38                                       ; $66bc: $ff
    rst $30                                       ; $66bd: $f7
    ld hl, sp-$09                                 ; $66be: $f8 $f7
    nop                                           ; $66c0: $00
    ld [bc], a                                    ; $66c1: $02
    rrca                                          ; $66c2: $0f
    dec bc                                        ; $66c3: $0b
    rra                                           ; $66c4: $1f
    add e                                         ; $66c5: $83
    rla                                           ; $66c6: $17
    rra                                           ; $66c7: $1f
    inc d                                         ; $66c8: $14
    ld [bc], a                                    ; $66c9: $02
    rrca                                          ; $66ca: $0f
    ld [bc], a                                    ; $66cb: $02
    jr jr_0e5_665a                                ; $66cc: $18 $8c

    ld [hl], a                                    ; $66ce: $77
    ld a, a                                       ; $66cf: $7f
    ld e, b                                       ; $66d0: $58
    ld a, a                                       ; $66d1: $7f
    call c, $bfff                                 ; $66d2: $dc $ff $bf
    rst $38                                       ; $66d5: $ff
    cp a                                          ; $66d6: $bf
    rst $38                                       ; $66d7: $ff
    sbc a                                         ; $66d8: $9f
    rst $38                                       ; $66d9: $ff
    ld [bc], a                                    ; $66da: $02
    jr nc, @+$0d                                  ; $66db: $30 $0b

    jr c, jr_0e5_6662                             ; $66dd: $38 $83

    jr z, jr_0e5_6719                             ; $66df: $28 $38

    jr z, jr_0e5_66e5                             ; $66e1: $28 $02

    jr nc, jr_0e5_66e7                            ; $66e3: $30 $02

jr_0e5_66e5:
    jr jr_0e5_6678                                ; $66e5: $18 $91

jr_0e5_66e7:
    ld l, $3e                                     ; $66e7: $2e $3e

jr_0e5_66e9:
    ld a, [bc]                                    ; $66e9: $0a
    ld a, $1b                                     ; $66ea: $3e $1b
    ccf                                           ; $66ec: $3f
    dec [hl]                                      ; $66ed: $35
    ccf                                           ; $66ee: $3f
    dec a                                         ; $66ef: $3d
    ccf                                           ; $66f0: $3f
    add hl, sp                                    ; $66f1: $39
    ccf                                           ; $66f2: $3f

jr_0e5_66f3:
    ld c, a                                       ; $66f3: $4f
    ld a, a                                       ; $66f4: $7f
    adc a                                         ; $66f5: $8f
    rst $38                                       ; $66f6: $ff
    ld e, a                                       ; $66f7: $5f
    ld [bc], a                                    ; $66f8: $02
    ld a, a                                       ; $66f9: $7f
    add c                                         ; $66fa: $81
    ld e, a                                       ; $66fb: $5f
    ld [bc], a                                    ; $66fc: $02
    ccf                                           ; $66fd: $3f
    ld [bc], a                                    ; $66fe: $02
    rra                                           ; $66ff: $1f
    inc b                                         ; $6700: $04
    ccf                                           ; $6701: $3f
    add d                                         ; $6702: $82
    jr nc, jr_0e5_6744                            ; $6703: $30 $3f

    ld [bc], a                                    ; $6705: $02
    rra                                           ; $6706: $1f
    inc c                                         ; $6707: $0c
    nop                                           ; $6708: $00
    adc b                                         ; $6709: $88
    ld a, [c]                                     ; $670a: $f2
    cp $f2                                        ; $670b: $fe $f2
    cp $f9                                        ; $670d: $fe $f9
    rst $38                                       ; $670f: $ff
    cp $fa                                        ; $6710: $fe $fa
    ld [bc], a                                    ; $6712: $02
    db $fc                                        ; $6713: $fc
    inc b                                         ; $6714: $04
    ld hl, sp+$02                                 ; $6715: $f8 $02
    db $fc                                        ; $6717: $fc
    add h                                         ; $6718: $84

jr_0e5_6719:
    ld a, h                                       ; $6719: $7c
    db $fc                                        ; $671a: $fc
    ret z                                         ; $671b: $c8

    ld hl, sp+$02                                 ; $671c: $f8 $02
    ld a, b                                       ; $671e: $78
    ld a, [bc]                                    ; $671f: $0a
    nop                                           ; $6720: $00
    rst $38                                       ; $6721: $ff
    rlca                                          ; $6722: $07
    ld bc, $07f8                                  ; $6723: $01 $f8 $07
    ld a, [c]                                     ; $6726: $f2
    ld bc, $faf0                                  ; $6727: $01 $f0 $fa
    add d                                         ; $672a: $82
    nop                                           ; $672b: $00
    rrca                                          ; $672c: $0f
    ld e, $00                                     ; $672d: $1e $00
    rst $38                                       ; $672f: $ff
    dec c                                         ; $6730: $0d
    inc b                                         ; $6731: $04
    ld hl, sp+$07                                 ; $6732: $f8 $07
    ld a, [c]                                     ; $6734: $f2
    ld bc, $f9e7                                  ; $6735: $01 $e7 $f9
    rst $20                                       ; $6738: $e7
    rst $38                                       ; $6739: $ff
    rst $30                                       ; $673a: $f7
    ld hl, sp-$09                                 ; $673b: $f8 $f7
    nop                                           ; $673d: $00
    ld [bc], a                                    ; $673e: $02
    rrca                                          ; $673f: $0f
    inc bc                                        ; $6740: $03
    rra                                           ; $6741: $1f
    adc a                                         ; $6742: $8f
    dec de                                        ; $6743: $1b

jr_0e5_6744:
    rra                                           ; $6744: $1f
    db $10                                        ; $6745: $10
    rra                                           ; $6746: $1f
    db $10                                        ; $6747: $10
    rra                                           ; $6748: $1f
    inc e                                         ; $6749: $1c
    rra                                           ; $674a: $1f
    db $10                                        ; $674b: $10
    rra                                           ; $674c: $1f
    ld de, $131f                                  ; $674d: $11 $1f $13
    rrca                                          ; $6750: $0f
    ld [$3b02], sp                                ; $6751: $08 $02 $3b
    adc d                                         ; $6754: $8a
    ld e, h                                       ; $6755: $5c
    ld a, h                                       ; $6756: $7c
    ld e, e                                       ; $6757: $5b
    ld a, a                                       ; $6758: $7f
    ld e, h                                       ; $6759: $5c
    ld a, a                                       ; $675a: $7f
    cp h                                          ; $675b: $bc
    rst $38                                       ; $675c: $ff
    cp [hl]                                       ; $675d: $be
    rst $38                                       ; $675e: $ff
    ld [bc], a                                    ; $675f: $02
    jr nc, @+$05                                  ; $6760: $30 $03

    jr c, jr_0e5_66e9                             ; $6762: $38 $85

    jr jr_0e5_679e                                ; $6764: $18 $38

    ld [$0838], sp                                ; $6766: $08 $38 $08
    inc bc                                        ; $6769: $03
    jr c, jr_0e5_66f3                             ; $676a: $38 $87

    ld [$0838], sp                                ; $676c: $08 $38 $08
    jr c, jr_0e5_6779                             ; $676f: $38 $08

    jr nc, jr_0e5_6783                            ; $6771: $30 $10

    ld [bc], a                                    ; $6773: $02
    inc e                                         ; $6774: $1c
    sbc c                                         ; $6775: $99
    ld a, [hl-]                                   ; $6776: $3a
    ld a, $1a                                     ; $6777: $3e $1a

jr_0e5_6779:
    ld a, $3a                                     ; $6779: $3e $3a
    ld a, $3d                                     ; $677b: $3e $3d
    ccf                                           ; $677d: $3f
    dec a                                         ; $677e: $3d
    ccf                                           ; $677f: $3f
    ld c, a                                       ; $6780: $4f
    ld a, a                                       ; $6781: $7f
    adc a                                         ; $6782: $8f

jr_0e5_6783:
    rst $38                                       ; $6783: $ff
    sbc [hl]                                      ; $6784: $9e
    rst $38                                       ; $6785: $ff

jr_0e5_6786:
    ld a, [hl]                                    ; $6786: $7e
    ld c, a                                       ; $6787: $4f
    ld a, [hl]                                    ; $6788: $7e
    ld e, a                                       ; $6789: $5f
    dec a                                         ; $678a: $3d
    ccf                                           ; $678b: $3f
    dec e                                         ; $678c: $1d
    rra                                           ; $678d: $1f
    dec hl                                        ; $678e: $2b
    inc bc                                        ; $678f: $03
    ccf                                           ; $6790: $3f
    add d                                         ; $6791: $82
    daa                                           ; $6792: $27
    ccf                                           ; $6793: $3f
    ld [bc], a                                    ; $6794: $02
    ld a, $0a                                     ; $6795: $3e $0a
    nop                                           ; $6797: $00
    adc a                                         ; $6798: $8f
    ld [hl], d                                    ; $6799: $72
    cp $71                                        ; $679a: $fe $71
    rst $38                                       ; $679c: $ff
    cp c                                          ; $679d: $b9

jr_0e5_679e:
    rst $38                                       ; $679e: $ff
    cp [hl]                                       ; $679f: $be
    ld a, [c]                                     ; $67a0: $f2
    cp [hl]                                       ; $67a1: $be
    ld a, [$fcbc]                                 ; $67a2: $fa $bc $fc
    ret c                                         ; $67a5: $d8

    ld hl, sp-$2c                                 ; $67a6: $f8 $d4
    inc bc                                        ; $67a8: $03
    db $fc                                        ; $67a9: $fc
    add d                                         ; $67aa: $82
    db $e4                                        ; $67ab: $e4
    db $fc                                        ; $67ac: $fc
    ld [bc], a                                    ; $67ad: $02
    ld a, h                                       ; $67ae: $7c
    ld a, [bc]                                    ; $67af: $0a
    nop                                           ; $67b0: $00
    rst $38                                       ; $67b1: $ff
    rlca                                          ; $67b2: $07
    ld bc, $07f8                                  ; $67b3: $01 $f8 $07
    ld a, [c]                                     ; $67b6: $f2
    ld bc, $faf1                                  ; $67b7: $01 $f1 $fa
    add h                                         ; $67ba: $84
    nop                                           ; $67bb: $00
    add hl, bc                                    ; $67bc: $09
    nop                                           ; $67bd: $00
    ld b, $1c                                     ; $67be: $06 $1c
    nop                                           ; $67c0: $00
    rst $38                                       ; $67c1: $ff
    dec c                                         ; $67c2: $0d
    inc b                                         ; $67c3: $04
    ld hl, sp+$07                                 ; $67c4: $f8 $07
    ld a, [c]                                     ; $67c6: $f2
    ld bc, $f9e7                                  ; $67c7: $01 $e7 $f9
    rst $20                                       ; $67ca: $e7
    rst $38                                       ; $67cb: $ff
    rst $30                                       ; $67cc: $f7
    ld hl, sp-$09                                 ; $67cd: $f8 $f7
    nop                                           ; $67cf: $00
    ld [bc], a                                    ; $67d0: $02
    rrca                                          ; $67d1: $0f
    inc bc                                        ; $67d2: $03
    rra                                           ; $67d3: $1f
    adc a                                         ; $67d4: $8f
    ld d, $1f                                     ; $67d5: $16 $1f
    db $10                                        ; $67d7: $10
    rra                                           ; $67d8: $1f
    db $10                                        ; $67d9: $10
    dec de                                        ; $67da: $1b
    dec e                                         ; $67db: $1d
    rra                                           ; $67dc: $1f
    db $10                                        ; $67dd: $10
    rra                                           ; $67de: $1f
    ld [de], a                                    ; $67df: $12
    rra                                           ; $67e0: $1f
    inc de                                        ; $67e1: $13
    rrca                                          ; $67e2: $0f
    ld [$1b02], sp                                ; $67e3: $08 $02 $1b
    ld [bc], a                                    ; $67e6: $02
    inc a                                         ; $67e7: $3c
    adc b                                         ; $67e8: $88
    ld e, e                                       ; $67e9: $5b
    ld a, a                                       ; $67ea: $7f
    ld e, h                                       ; $67eb: $5c
    ld a, a                                       ; $67ec: $7f
    sbc [hl]                                      ; $67ed: $9e
    rst $38                                       ; $67ee: $ff
    cp [hl]                                       ; $67ef: $be
    rst $38                                       ; $67f0: $ff
    ld [bc], a                                    ; $67f1: $02
    jr nc, @+$05                                  ; $67f2: $30 $03

    jr c, @-$78                                   ; $67f4: $38 $86

    jr @+$2a                                      ; $67f6: $18 $28

    jr jr_0e5_6832                                ; $67f8: $18 $38

    ld [$0228], sp                                ; $67fa: $08 $28 $02
    jr c, jr_0e5_6786                             ; $67fd: $38 $87

    ld [$0838], sp                                ; $67ff: $08 $38 $08
    jr c, jr_0e5_680c                             ; $6802: $38 $08

    jr nc, jr_0e5_6816                            ; $6804: $30 $10

    ld [bc], a                                    ; $6806: $02
    inc e                                         ; $6807: $1c
    sub a                                         ; $6808: $97
    ld a, [hl-]                                   ; $6809: $3a
    ld a, $1a                                     ; $680a: $3e $1a

jr_0e5_680c:
    ld a, $3d                                     ; $680c: $3e $3d
    ccf                                           ; $680e: $3f
    add hl, sp                                    ; $680f: $39
    ccf                                           ; $6810: $3f
    add hl, sp                                    ; $6811: $39
    ccf                                           ; $6812: $3f
    ld e, a                                       ; $6813: $5f
    ld a, a                                       ; $6814: $7f
    ld c, a                                       ; $6815: $4f

jr_0e5_6816:
    ld a, a                                       ; $6816: $7f

jr_0e5_6817:
    ld b, [hl]                                    ; $6817: $46
    ld a, a                                       ; $6818: $7f
    adc [hl]                                      ; $6819: $8e
    rst $38                                       ; $681a: $ff
    ld a, [hl]                                    ; $681b: $7e
    ld h, a                                       ; $681c: $67
    ld a, $2f                                     ; $681d: $3e $2f
    ld e, $03                                     ; $681f: $1e $03
    rra                                           ; $6821: $1f
    add d                                         ; $6822: $82
    dec de                                        ; $6823: $1b
    rra                                           ; $6824: $1f
    ld [bc], a                                    ; $6825: $02
    rrca                                          ; $6826: $0f
    inc c                                         ; $6827: $0c
    nop                                           ; $6828: $00
    sub d                                         ; $6829: $92
    ld [hl], c                                    ; $682a: $71
    rst $38                                       ; $682b: $ff
    ld a, c                                       ; $682c: $79
    rst $38                                       ; $682d: $ff
    cp [hl]                                       ; $682e: $be
    ld a, [$fabe]                                 ; $682f: $fa $be $fa

jr_0e5_6832:
    call c, $e8fc                                 ; $6832: $dc $fc $e8
    ld hl, sp-$68                                 ; $6835: $f8 $98
    ld hl, sp-$44                                 ; $6837: $f8 $bc
    db $fc                                        ; $6839: $fc
    db $e4                                        ; $683a: $e4
    db $fc                                        ; $683b: $fc
    ld [bc], a                                    ; $683c: $02
    ld a, h                                       ; $683d: $7c
    ld [bc], a                                    ; $683e: $02
    ld a, b                                       ; $683f: $78
    ld a, [bc]                                    ; $6840: $0a
    nop                                           ; $6841: $00
    rst $38                                       ; $6842: $ff
    rlca                                          ; $6843: $07
    ld bc, $07f8                                  ; $6844: $01 $f8 $07
    ld a, [c]                                     ; $6847: $f2
    ld bc, $faf1                                  ; $6848: $01 $f1 $fa
    add h                                         ; $684b: $84
    nop                                           ; $684c: $00
    add hl, bc                                    ; $684d: $09
    nop                                           ; $684e: $00
    ld b, $1c                                     ; $684f: $06 $1c
    nop                                           ; $6851: $00
    rst $38                                       ; $6852: $ff
    dec c                                         ; $6853: $0d
    inc b                                         ; $6854: $04
    ld hl, sp+$07                                 ; $6855: $f8 $07
    ld a, [c]                                     ; $6857: $f2
    ld bc, $f9e8                                  ; $6858: $01 $e8 $f9
    add sp, -$01                                  ; $685b: $e8 $ff
    ld hl, sp-$08                                 ; $685d: $f8 $f8
    ld hl, sp+$00                                 ; $685f: $f8 $00
    ld [bc], a                                    ; $6861: $02
    rrca                                          ; $6862: $0f
    inc bc                                        ; $6863: $03
    rra                                           ; $6864: $1f
    adc a                                         ; $6865: $8f
    ld d, $1f                                     ; $6866: $16 $1f
    db $10                                        ; $6868: $10
    rra                                           ; $6869: $1f
    db $10                                        ; $686a: $10
    dec de                                        ; $686b: $1b
    dec e                                         ; $686c: $1d
    rra                                           ; $686d: $1f
    db $10                                        ; $686e: $10
    rra                                           ; $686f: $1f
    ld [de], a                                    ; $6870: $12
    rra                                           ; $6871: $1f
    inc de                                        ; $6872: $13
    rrca                                          ; $6873: $0f
    ld [$1b02], sp                                ; $6874: $08 $02 $1b
    ld [bc], a                                    ; $6877: $02
    inc a                                         ; $6878: $3c
    adc b                                         ; $6879: $88
    ld e, e                                       ; $687a: $5b
    ld a, a                                       ; $687b: $7f
    ld e, h                                       ; $687c: $5c
    ld a, a                                       ; $687d: $7f
    sbc $ff                                       ; $687e: $de $ff
    cp [hl]                                       ; $6880: $be
    rst $38                                       ; $6881: $ff
    ld [bc], a                                    ; $6882: $02
    jr nc, @+$05                                  ; $6883: $30 $03

    jr c, @-$78                                   ; $6885: $38 $86

    jr jr_0e5_68b1                                ; $6887: $18 $28

    jr jr_0e5_68c3                                ; $6889: $18 $38

    ld [$0228], sp                                ; $688b: $08 $28 $02
    jr c, jr_0e5_6817                             ; $688e: $38 $87

    ld [$0838], sp                                ; $6890: $08 $38 $08
    jr c, jr_0e5_689d                             ; $6893: $38 $08

    jr nc, jr_0e5_68a7                            ; $6895: $30 $10

    ld [bc], a                                    ; $6897: $02

jr_0e5_6898:
    inc e                                         ; $6898: $1c
    sub a                                         ; $6899: $97
    ld a, [hl-]                                   ; $689a: $3a
    ld a, $1b                                     ; $689b: $3e $1b

jr_0e5_689d:
    ccf                                           ; $689d: $3f
    add hl, sp                                    ; $689e: $39
    ccf                                           ; $689f: $3f
    dec a                                         ; $68a0: $3d
    ccf                                           ; $68a1: $3f

jr_0e5_68a2:
    add hl, sp                                    ; $68a2: $39
    ccf                                           ; $68a3: $3f
    ld e, a                                       ; $68a4: $5f
    ld a, a                                       ; $68a5: $7f
    ld c, [hl]                                    ; $68a6: $4e

jr_0e5_68a7:
    ld a, a                                       ; $68a7: $7f
    ld c, [hl]                                    ; $68a8: $4e
    ld a, a                                       ; $68a9: $7f
    cp [hl]                                       ; $68aa: $be
    rst $18                                       ; $68ab: $df
    ld a, [hl]                                    ; $68ac: $7e
    ld c, a                                       ; $68ad: $4f
    ld a, $3f                                     ; $68ae: $3e $3f
    dec e                                         ; $68b0: $1d

jr_0e5_68b1:
    inc bc                                        ; $68b1: $03
    rra                                           ; $68b2: $1f
    ld [bc], a                                    ; $68b3: $02
    ld c, $0e                                     ; $68b4: $0e $0e
    nop                                           ; $68b6: $00
    adc l                                         ; $68b7: $8d
    ld [hl], c                                    ; $68b8: $71
    rst $38                                       ; $68b9: $ff
    ld a, d                                       ; $68ba: $7a
    cp $be                                        ; $68bb: $fe $be
    ld a, [$fabe]                                 ; $68bd: $fa $be $fa
    call c, $e8fc                                 ; $68c0: $dc $fc $e8

jr_0e5_68c3:
    ld hl, sp-$54                                 ; $68c3: $f8 $ac
    inc bc                                        ; $68c5: $03
    db $fc                                        ; $68c6: $fc
    add d                                         ; $68c7: $82
    adc h                                         ; $68c8: $8c
    db $fc                                        ; $68c9: $fc
    ld [bc], a                                    ; $68ca: $02
    ld hl, sp+$0c                                 ; $68cb: $f8 $0c
    nop                                           ; $68cd: $00
    rst $38                                       ; $68ce: $ff
    rlca                                          ; $68cf: $07
    ld bc, $07f8                                  ; $68d0: $01 $f8 $07
    ld a, [c]                                     ; $68d3: $f2
    ld bc, $faf2                                  ; $68d4: $01 $f2 $fa
    add h                                         ; $68d7: $84
    nop                                           ; $68d8: $00
    add hl, bc                                    ; $68d9: $09
    nop                                           ; $68da: $00
    ld b, $1c                                     ; $68db: $06 $1c
    nop                                           ; $68dd: $00
    rst $38                                       ; $68de: $ff
    dec c                                         ; $68df: $0d
    inc b                                         ; $68e0: $04
    ld hl, sp+$07                                 ; $68e1: $f8 $07
    ld a, [c]                                     ; $68e3: $f2
    ld bc, $f9e7                                  ; $68e4: $01 $e7 $f9
    rst $20                                       ; $68e7: $e7
    rst $38                                       ; $68e8: $ff
    rst $30                                       ; $68e9: $f7
    ld hl, sp-$09                                 ; $68ea: $f8 $f7
    nop                                           ; $68ec: $00
    ld [bc], a                                    ; $68ed: $02
    rrca                                          ; $68ee: $0f
    inc bc                                        ; $68ef: $03
    rra                                           ; $68f0: $1f
    adc a                                         ; $68f1: $8f
    dec de                                        ; $68f2: $1b
    rra                                           ; $68f3: $1f
    db $10                                        ; $68f4: $10
    rra                                           ; $68f5: $1f
    db $10                                        ; $68f6: $10
    rra                                           ; $68f7: $1f
    inc e                                         ; $68f8: $1c
    rra                                           ; $68f9: $1f
    db $10                                        ; $68fa: $10
    rra                                           ; $68fb: $1f
    ld de, $131f                                  ; $68fc: $11 $1f $13
    rrca                                          ; $68ff: $0f
    ld [$3b02], sp                                ; $6900: $08 $02 $3b
    adc d                                         ; $6903: $8a
    ld e, h                                       ; $6904: $5c
    ld a, h                                       ; $6905: $7c
    ld e, e                                       ; $6906: $5b
    ld a, a                                       ; $6907: $7f
    call c, $bcff                                 ; $6908: $dc $ff $bc
    rst $38                                       ; $690b: $ff
    cp [hl]                                       ; $690c: $be
    rst $38                                       ; $690d: $ff
    ld [bc], a                                    ; $690e: $02
    jr nc, @+$05                                  ; $690f: $30 $03

    jr c, jr_0e5_6898                             ; $6911: $38 $85

    jr jr_0e5_694d                                ; $6913: $18 $38

    ld [$0838], sp                                ; $6915: $08 $38 $08
    inc bc                                        ; $6918: $03
    jr c, jr_0e5_68a2                             ; $6919: $38 $87

    ld [$0838], sp                                ; $691b: $08 $38 $08
    jr c, jr_0e5_6928                             ; $691e: $38 $08

    jr nc, jr_0e5_6932                            ; $6920: $30 $10

    ld [bc], a                                    ; $6922: $02
    inc e                                         ; $6923: $1c
    sub a                                         ; $6924: $97
    ld a, [hl-]                                   ; $6925: $3a
    ld a, $1a                                     ; $6926: $3e $1a

jr_0e5_6928:
    ld a, $3b                                     ; $6928: $3e $3b
    ccf                                           ; $692a: $3f
    dec a                                         ; $692b: $3d
    ccf                                           ; $692c: $3f
    dec a                                         ; $692d: $3d
    ccf                                           ; $692e: $3f
    ld c, a                                       ; $692f: $4f
    ld a, a                                       ; $6930: $7f
    adc a                                         ; $6931: $8f

jr_0e5_6932:
    rst $38                                       ; $6932: $ff
    sbc a                                         ; $6933: $9f
    rst $38                                       ; $6934: $ff
    ld a, [hl]                                    ; $6935: $7e
    ld c, a                                       ; $6936: $4f
    ld a, l                                       ; $6937: $7d
    ld e, a                                       ; $6938: $5f
    dec sp                                        ; $6939: $3b
    ccf                                           ; $693a: $3f
    dec de                                        ; $693b: $1b
    dec b                                         ; $693c: $05
    rra                                           ; $693d: $1f
    add d                                         ; $693e: $82
    ld a, [de]                                    ; $693f: $1a
    ld e, $02                                     ; $6940: $1e $02
    inc c                                         ; $6942: $0c
    ld a, [bc]                                    ; $6943: $0a
    nop                                           ; $6944: $00
    adc [hl]                                      ; $6945: $8e
    ld [hl], d                                    ; $6946: $72
    cp $71                                        ; $6947: $fe $71
    rst $38                                       ; $6949: $ff
    ld a, c                                       ; $694a: $79
    rst $38                                       ; $694b: $ff
    cp [hl]                                       ; $694c: $be

jr_0e5_694d:
    ld a, [c]                                     ; $694d: $f2
    cp [hl]                                       ; $694e: $be
    ld a, [$fcbc]                                 ; $694f: $fa $bc $fc
    ret c                                         ; $6952: $d8

    ld hl, sp+$02                                 ; $6953: $f8 $02
    db $fc                                        ; $6955: $fc
    add d                                         ; $6956: $82
    call z, Call_000_02fc                         ; $6957: $cc $fc $02
    ld hl, sp+$0c                                 ; $695a: $f8 $0c
    nop                                           ; $695c: $00
    rst $38                                       ; $695d: $ff
    rlca                                          ; $695e: $07
    ld bc, $07f8                                  ; $695f: $01 $f8 $07
    ld a, [c]                                     ; $6962: $f2
    ld bc, $faf1                                  ; $6963: $01 $f1 $fa
    add h                                         ; $6966: $84
    nop                                           ; $6967: $00
    add hl, bc                                    ; $6968: $09
    nop                                           ; $6969: $00
    ld b, $1c                                     ; $696a: $06 $1c
    nop                                           ; $696c: $00
    rst $38                                       ; $696d: $ff
    dec c                                         ; $696e: $0d
    inc b                                         ; $696f: $04
    ld hl, sp+$07                                 ; $6970: $f8 $07
    ld a, [c]                                     ; $6972: $f2
    ld bc, $f9e7                                  ; $6973: $01 $e7 $f9
    rst $20                                       ; $6976: $e7
    rst $38                                       ; $6977: $ff
    rst $30                                       ; $6978: $f7
    ld hl, sp-$09                                 ; $6979: $f8 $f7
    nop                                           ; $697b: $00
    ld [bc], a                                    ; $697c: $02
    rrca                                          ; $697d: $0f
    inc bc                                        ; $697e: $03
    rra                                           ; $697f: $1f
    adc a                                         ; $6980: $8f
    add hl, de                                    ; $6981: $19
    rla                                           ; $6982: $17
    jr jr_0e5_69a4                                ; $6983: $18 $1f

    db $10                                        ; $6985: $10
    rla                                           ; $6986: $17
    ld e, $1f                                     ; $6987: $1e $1f
    db $10                                        ; $6989: $10
    rra                                           ; $698a: $1f
    db $10                                        ; $698b: $10
    rra                                           ; $698c: $1f
    inc de                                        ; $698d: $13
    rrca                                          ; $698e: $0f
    ld [$3b02], sp                                ; $698f: $08 $02 $3b
    adc d                                         ; $6992: $8a
    ld e, h                                       ; $6993: $5c
    ld a, h                                       ; $6994: $7c
    ld e, e                                       ; $6995: $5b
    ld a, a                                       ; $6996: $7f
    cp h                                          ; $6997: $bc
    rst $38                                       ; $6998: $ff
    sbc l                                         ; $6999: $9d
    rst $38                                       ; $699a: $ff
    sbc l                                         ; $699b: $9d
    rst $38                                       ; $699c: $ff
    ld [bc], a                                    ; $699d: $02
    jr nc, @+$05                                  ; $699e: $30 $03

    jr c, jr_0e5_6928                             ; $69a0: $38 $86

    jr z, @+$3a                                   ; $69a2: $28 $38

jr_0e5_69a4:
    ld [$0838], sp                                ; $69a4: $08 $38 $08
    jr jr_0e5_69ab                                ; $69a7: $18 $02

    jr c, jr_0e5_6932                             ; $69a9: $38 $87

jr_0e5_69ab:
    ld [$2838], sp                                ; $69ab: $08 $38 $28
    jr c, jr_0e5_69b8                             ; $69ae: $38 $08

    jr nc, jr_0e5_69c2                            ; $69b0: $30 $10

    ld [bc], a                                    ; $69b2: $02
    jr jr_0e5_69b7                                ; $69b3: $18 $02

    inc a                                         ; $69b5: $3c
    sbc d                                         ; $69b6: $9a

jr_0e5_69b7:
    ld a, [de]                                    ; $69b7: $1a

jr_0e5_69b8:
    ld a, $3a                                     ; $69b8: $3e $3a
    ld a, $39                                     ; $69ba: $3e $39
    ccf                                           ; $69bc: $3f
    dec a                                         ; $69bd: $3d
    ccf                                           ; $69be: $3f
    adc [hl]                                      ; $69bf: $8e
    rst $38                                       ; $69c0: $ff
    sbc [hl]                                      ; $69c1: $9e

jr_0e5_69c2:
    rst $38                                       ; $69c2: $ff

jr_0e5_69c3:
    ld a, l                                       ; $69c3: $7d
    ld e, a                                       ; $69c4: $5f
    ld a, l                                       ; $69c5: $7d
    ld e, a                                       ; $69c6: $5f
    dec sp                                        ; $69c7: $3b
    ccf                                           ; $69c8: $3f
    rla                                           ; $69c9: $17
    rra                                           ; $69ca: $1f
    add hl, de                                    ; $69cb: $19
    rra                                           ; $69cc: $1f
    dec a                                         ; $69cd: $3d
    ccf                                           ; $69ce: $3f
    daa                                           ; $69cf: $27
    ccf                                           ; $69d0: $3f
    ld [bc], a                                    ; $69d1: $02
    ld a, $02                                     ; $69d2: $3e $02
    ld e, $0a                                     ; $69d4: $1e $0a
    nop                                           ; $69d6: $00
    adc l                                         ; $69d7: $8d
    ld a, [$f2fe]                                 ; $69d8: $fa $fe $f2
    cp $62                                        ; $69db: $fe $62
    cp $71                                        ; $69dd: $fe $71
    rst $38                                       ; $69df: $ff
    ld a, [hl]                                    ; $69e0: $7e
    and $7c                                       ; $69e1: $e6 $7c
    db $f4                                        ; $69e3: $f4
    ld a, b                                       ; $69e4: $78
    inc bc                                        ; $69e5: $03
    ld hl, sp-$7e                                 ; $69e6: $f8 $82
    ret c                                         ; $69e8: $d8

    ld hl, sp+$02                                 ; $69e9: $f8 $02
    ldh a, [$0c]                                  ; $69eb: $f0 $0c
    nop                                           ; $69ed: $00
    rst $38                                       ; $69ee: $ff
    rlca                                          ; $69ef: $07
    ld bc, $07f8                                  ; $69f0: $01 $f8 $07
    ld a, [c]                                     ; $69f3: $f2
    ld bc, $faf1                                  ; $69f4: $01 $f1 $fa
    add h                                         ; $69f7: $84
    nop                                           ; $69f8: $00
    add hl, bc                                    ; $69f9: $09
    nop                                           ; $69fa: $00
    ld b, $1c                                     ; $69fb: $06 $1c
    nop                                           ; $69fd: $00
    rst $38                                       ; $69fe: $ff
    dec c                                         ; $69ff: $0d
    inc b                                         ; $6a00: $04
    ld hl, sp+$07                                 ; $6a01: $f8 $07
    ld a, [c]                                     ; $6a03: $f2
    ld bc, $f9e8                                  ; $6a04: $01 $e8 $f9
    add sp, -$01                                  ; $6a07: $e8 $ff
    ld hl, sp-$08                                 ; $6a09: $f8 $f8
    ld hl, sp+$00                                 ; $6a0b: $f8 $00
    ld [bc], a                                    ; $6a0d: $02
    rrca                                          ; $6a0e: $0f
    inc bc                                        ; $6a0f: $03
    rra                                           ; $6a10: $1f
    adc a                                         ; $6a11: $8f
    add hl, de                                    ; $6a12: $19
    rla                                           ; $6a13: $17
    jr jr_0e5_6a35                                ; $6a14: $18 $1f

    db $10                                        ; $6a16: $10
    rla                                           ; $6a17: $17
    ld e, $1f                                     ; $6a18: $1e $1f
    db $10                                        ; $6a1a: $10
    rra                                           ; $6a1b: $1f
    db $10                                        ; $6a1c: $10
    rra                                           ; $6a1d: $1f
    inc de                                        ; $6a1e: $13
    rrca                                          ; $6a1f: $0f
    ld [$3b02], sp                                ; $6a20: $08 $02 $3b
    adc d                                         ; $6a23: $8a
    ld e, h                                       ; $6a24: $5c
    ld a, h                                       ; $6a25: $7c
    db $db                                        ; $6a26: $db
    rst $38                                       ; $6a27: $ff
    sbc h                                         ; $6a28: $9c
    rst $38                                       ; $6a29: $ff
    cp l                                          ; $6a2a: $bd
    rst $38                                       ; $6a2b: $ff
    sbc l                                         ; $6a2c: $9d
    rst $38                                       ; $6a2d: $ff
    ld [bc], a                                    ; $6a2e: $02
    jr nc, @+$05                                  ; $6a2f: $30 $03

    jr c, @-$78                                   ; $6a31: $38 $86

    jr z, @+$3a                                   ; $6a33: $28 $38

jr_0e5_6a35:
    ld [$0838], sp                                ; $6a35: $08 $38 $08
    jr jr_0e5_6a3c                                ; $6a38: $18 $02

    jr c, jr_0e5_69c3                             ; $6a3a: $38 $87

jr_0e5_6a3c:
    ld [$2838], sp                                ; $6a3c: $08 $38 $28
    jr c, jr_0e5_6a49                             ; $6a3f: $38 $08

    jr nc, jr_0e5_6a53                            ; $6a41: $30 $10

    ld [bc], a                                    ; $6a43: $02

jr_0e5_6a44:
    jr jr_0e5_6a48                                ; $6a44: $18 $02

    inc a                                         ; $6a46: $3c
    sub l                                         ; $6a47: $95

jr_0e5_6a48:
    ld a, [de]                                    ; $6a48: $1a

jr_0e5_6a49:
    ld a, $3a                                     ; $6a49: $3e $3a
    ld a, $3b                                     ; $6a4b: $3e $3b
    ccf                                           ; $6a4d: $3f

jr_0e5_6a4e:
    dec a                                         ; $6a4e: $3d
    ccf                                           ; $6a4f: $3f
    adc [hl]                                      ; $6a50: $8e
    rst $38                                       ; $6a51: $ff
    ld e, [hl]                                    ; $6a52: $5e

jr_0e5_6a53:
    ld a, a                                       ; $6a53: $7f
    ld a, l                                       ; $6a54: $7d
    ld e, a                                       ; $6a55: $5f
    ld a, l                                       ; $6a56: $7d
    ld e, a                                       ; $6a57: $5f
    dec sp                                        ; $6a58: $3b
    ccf                                           ; $6a59: $3f
    rla                                           ; $6a5a: $17
    rra                                           ; $6a5b: $1f
    dec [hl]                                      ; $6a5c: $35
    inc bc                                        ; $6a5d: $03
    ccf                                           ; $6a5e: $3f
    add d                                         ; $6a5f: $82
    ld sp, $023f                                  ; $6a60: $31 $3f $02
    rra                                           ; $6a63: $1f
    inc c                                         ; $6a64: $0c
    nop                                           ; $6a65: $00
    adc l                                         ; $6a66: $8d
    ld a, [$72fe]                                 ; $6a67: $fa $fe $72
    cp $72                                        ; $6a6a: $fe $72
    cp $7d                                        ; $6a6c: $fe $7d
    ei                                            ; $6a6e: $fb
    ld a, [hl]                                    ; $6a6f: $7e
    ld a, [c]                                     ; $6a70: $f2
    ld a, h                                       ; $6a71: $7c
    db $fc                                        ; $6a72: $fc
    cp b                                          ; $6a73: $b8
    inc bc                                        ; $6a74: $03
    ld hl, sp+$02                                 ; $6a75: $f8 $02
    ld [hl], b                                    ; $6a77: $70
    ld c, $00                                     ; $6a78: $0e $00
    rst $38                                       ; $6a7a: $ff
    rlca                                          ; $6a7b: $07
    ld bc, $07f8                                  ; $6a7c: $01 $f8 $07
    ld a, [c]                                     ; $6a7f: $f2
    ld bc, $faf2                                  ; $6a80: $01 $f2 $fa
    add h                                         ; $6a83: $84
    nop                                           ; $6a84: $00
    add hl, bc                                    ; $6a85: $09
    nop                                           ; $6a86: $00
    ld b, $1c                                     ; $6a87: $06 $1c
    nop                                           ; $6a89: $00
    rst $38                                       ; $6a8a: $ff
    dec c                                         ; $6a8b: $0d
    inc b                                         ; $6a8c: $04
    ld hl, sp+$07                                 ; $6a8d: $f8 $07
    ld a, [c]                                     ; $6a8f: $f2
    ld bc, $f9e7                                  ; $6a90: $01 $e7 $f9
    rst $20                                       ; $6a93: $e7
    rst $38                                       ; $6a94: $ff
    rst $30                                       ; $6a95: $f7
    ld hl, sp-$09                                 ; $6a96: $f8 $f7
    nop                                           ; $6a98: $00
    ld [bc], a                                    ; $6a99: $02
    rrca                                          ; $6a9a: $0f
    inc bc                                        ; $6a9b: $03
    rra                                           ; $6a9c: $1f
    adc a                                         ; $6a9d: $8f
    dec de                                        ; $6a9e: $1b
    rra                                           ; $6a9f: $1f
    db $10                                        ; $6aa0: $10
    rra                                           ; $6aa1: $1f
    db $10                                        ; $6aa2: $10
    rra                                           ; $6aa3: $1f
    inc e                                         ; $6aa4: $1c
    rra                                           ; $6aa5: $1f
    db $10                                        ; $6aa6: $10
    rra                                           ; $6aa7: $1f
    ld de, $131f                                  ; $6aa8: $11 $1f $13
    rrca                                          ; $6aab: $0f
    ld [$3b02], sp                                ; $6aac: $08 $02 $3b
    adc d                                         ; $6aaf: $8a
    ld e, h                                       ; $6ab0: $5c
    ld a, h                                       ; $6ab1: $7c
    ld e, e                                       ; $6ab2: $5b
    ld a, a                                       ; $6ab3: $7f
    call c, $bcff                                 ; $6ab4: $dc $ff $bc
    rst $38                                       ; $6ab7: $ff
    cp l                                          ; $6ab8: $bd
    rst $38                                       ; $6ab9: $ff
    ld [bc], a                                    ; $6aba: $02
    jr nc, @+$05                                  ; $6abb: $30 $03

    jr c, jr_0e5_6a44                             ; $6abd: $38 $85

    jr jr_0e5_6af9                                ; $6abf: $18 $38

    ld [$0838], sp                                ; $6ac1: $08 $38 $08
    inc bc                                        ; $6ac4: $03
    jr c, jr_0e5_6a4e                             ; $6ac5: $38 $87

    ld [$0838], sp                                ; $6ac7: $08 $38 $08
    jr c, jr_0e5_6ad4                             ; $6aca: $38 $08

    jr nc, jr_0e5_6ade                            ; $6acc: $30 $10

    ld [bc], a                                    ; $6ace: $02
    inc e                                         ; $6acf: $1c
    sbc b                                         ; $6ad0: $98
    ld a, [hl-]                                   ; $6ad1: $3a
    ld a, $1a                                     ; $6ad2: $3e $1a

jr_0e5_6ad4:
    ld a, $3b                                     ; $6ad4: $3e $3b
    ccf                                           ; $6ad6: $3f
    dec a                                         ; $6ad7: $3d
    ccf                                           ; $6ad8: $3f
    dec a                                         ; $6ad9: $3d
    ccf                                           ; $6ada: $3f
    ld c, [hl]                                    ; $6adb: $4e
    ld a, a                                       ; $6adc: $7f
    adc [hl]                                      ; $6add: $8e

jr_0e5_6ade:
    rst $38                                       ; $6ade: $ff
    sbc [hl]                                      ; $6adf: $9e
    rst $38                                       ; $6ae0: $ff
    ld a, l                                       ; $6ae1: $7d
    ld c, a                                       ; $6ae2: $4f
    ld a, l                                       ; $6ae3: $7d
    ld e, a                                       ; $6ae4: $5f
    dec a                                         ; $6ae5: $3d
    ccf                                           ; $6ae6: $3f
    dec de                                        ; $6ae7: $1b

jr_0e5_6ae8:
    rra                                           ; $6ae8: $1f
    ld [bc], a                                    ; $6ae9: $02
    ccf                                           ; $6aea: $3f
    add d                                         ; $6aeb: $82
    inc sp                                        ; $6aec: $33
    ccf                                           ; $6aed: $3f
    ld [bc], a                                    ; $6aee: $02
    rra                                           ; $6aef: $1f
    inc c                                         ; $6af0: $0c
    nop                                           ; $6af1: $00
    adc l                                         ; $6af2: $8d
    ld a, [c]                                     ; $6af3: $f2
    cp $f1                                        ; $6af4: $fe $f1
    rst $38                                       ; $6af6: $ff
    ld sp, hl                                     ; $6af7: $f9
    rst $38                                       ; $6af8: $ff

jr_0e5_6af9:
    ld a, [hl]                                    ; $6af9: $7e
    ld a, [c]                                     ; $6afa: $f2
    cp [hl]                                       ; $6afb: $be
    ld a, [$fcdc]                                 ; $6afc: $fa $dc $fc
    ret c                                         ; $6aff: $d8

    dec b                                         ; $6b00: $05
    ld hl, sp-$7e                                 ; $6b01: $f8 $82
    ld e, b                                       ; $6b03: $58
    ld a, b                                       ; $6b04: $78
    ld [bc], a                                    ; $6b05: $02
    jr nc, jr_0e5_6b12                            ; $6b06: $30 $0a

    nop                                           ; $6b08: $00
    rst $38                                       ; $6b09: $ff
    rlca                                          ; $6b0a: $07
    ld bc, $07f8                                  ; $6b0b: $01 $f8 $07
    ld a, [c]                                     ; $6b0e: $f2
    ld bc, $faf1                                  ; $6b0f: $01 $f1 $fa

jr_0e5_6b12:
    add h                                         ; $6b12: $84
    nop                                           ; $6b13: $00
    add hl, bc                                    ; $6b14: $09
    nop                                           ; $6b15: $00
    ld b, $1c                                     ; $6b16: $06 $1c
    nop                                           ; $6b18: $00
    rst $38                                       ; $6b19: $ff
    dec c                                         ; $6b1a: $0d
    inc b                                         ; $6b1b: $04
    ld hl, sp+$07                                 ; $6b1c: $f8 $07
    ld a, [c]                                     ; $6b1e: $f2
    ld bc, $fbe7                                  ; $6b1f: $01 $e7 $fb
    add sp, -$03                                  ; $6b22: $e8 $fd
    rst $30                                       ; $6b24: $f7
    ld a, [$fdf7]                                 ; $6b25: $fa $f7 $fd
    ld [bc], a                                    ; $6b28: $02
    ccf                                           ; $6b29: $3f
    ld [bc], a                                    ; $6b2a: $02
    ld a, a                                       ; $6b2b: $7f
    sbc h                                         ; $6b2c: $9c
    rst $38                                       ; $6b2d: $ff
    ei                                            ; $6b2e: $fb
    rst $38                                       ; $6b2f: $ff
    ldh a, [rIE]                                  ; $6b30: $f0 $ff
    ldh a, [$7f]                                  ; $6b32: $f0 $7f
    ld h, [hl]                                    ; $6b34: $66
    ld a, a                                       ; $6b35: $7f
    ld d, b                                       ; $6b36: $50
    ccf                                           ; $6b37: $3f
    jr nz, jr_0e5_6b79                            ; $6b38: $20 $3f

    ld hl, $303f                                  ; $6b3a: $21 $3f $30
    ld e, c                                       ; $6b3d: $59
    ld a, c                                       ; $6b3e: $79
    xor [hl]                                      ; $6b3f: $ae
    cp $cd                                        ; $6b40: $fe $cd
    rst $38                                       ; $6b42: $ff
    sbc $ff                                       ; $6b43: $de $ff
    ld e, a                                       ; $6b45: $5f
    ld a, a                                       ; $6b46: $7f
    ld c, a                                       ; $6b47: $4f
    ld a, a                                       ; $6b48: $7f
    inc b                                         ; $6b49: $04
    ld [bc], a                                    ; $6b4a: $02
    add h                                         ; $6b4b: $84
    inc bc                                        ; $6b4c: $03
    ld bc, $0103                                  ; $6b4d: $01 $03 $01
    ld [bc], a                                    ; $6b50: $02
    ld [bc], a                                    ; $6b51: $02
    add d                                         ; $6b52: $82
    inc bc                                        ; $6b53: $03
    ld bc, $0206                                  ; $6b54: $01 $06 $02
    ld [bc], a                                    ; $6b57: $02
    nop                                           ; $6b58: $00
    ld b, $02                                     ; $6b59: $06 $02
    add [hl]                                      ; $6b5b: $86
    ld bc, $0103                                  ; $6b5c: $01 $03 $01
    inc bc                                        ; $6b5f: $03
    dec a                                         ; $6b60: $3d
    rst $38                                       ; $6b61: $ff
    ld [bc], a                                    ; $6b62: $02
    jr nz, jr_0e5_6ae8                            ; $6b63: $20 $83

    inc hl                                        ; $6b65: $23
    ccf                                           ; $6b66: $3f
    daa                                           ; $6b67: $27
    ld [bc], a                                    ; $6b68: $02
    ccf                                           ; $6b69: $3f
    add e                                         ; $6b6a: $83
    inc sp                                        ; $6b6b: $33
    ccf                                           ; $6b6c: $3f
    dec sp                                        ; $6b6d: $3b
    ld [bc], a                                    ; $6b6e: $02
    ld a, a                                       ; $6b6f: $7f
    adc b                                         ; $6b70: $88
    ld a, [hl]                                    ; $6b71: $7e
    ld a, a                                       ; $6b72: $7f
    db $fd                                        ; $6b73: $fd
    rst $38                                       ; $6b74: $ff
    cp a                                          ; $6b75: $bf

jr_0e5_6b76:
    rst $38                                       ; $6b76: $ff
    ld c, [hl]                                    ; $6b77: $4e
    ld a, a                                       ; $6b78: $7f

jr_0e5_6b79:
    ld [bc], a                                    ; $6b79: $02
    ccf                                           ; $6b7a: $3f
    inc c                                         ; $6b7b: $0c
    nop                                           ; $6b7c: $00
    adc d                                         ; $6b7d: $8a
    dec b                                         ; $6b7e: $05
    rlca                                          ; $6b7f: $07
    dec b                                         ; $6b80: $05
    rlca                                          ; $6b81: $07
    ld [bc], a                                    ; $6b82: $02
    ld b, $02                                     ; $6b83: $06 $02
    ld b, $02                                     ; $6b85: $06 $02
    ld b, $02                                     ; $6b87: $06 $02
    inc b                                         ; $6b89: $04
    inc b                                         ; $6b8a: $04

jr_0e5_6b8b:
    ld b, $81                                     ; $6b8b: $06 $81
    ld [bc], a                                    ; $6b8d: $02
    inc bc                                        ; $6b8e: $03
    ld b, $0a                                     ; $6b8f: $06 $0a
    nop                                           ; $6b91: $00
    rst $38                                       ; $6b92: $ff
    rlca                                          ; $6b93: $07
    ld bc, $07f8                                  ; $6b94: $01 $f8 $07
    ld a, [c]                                     ; $6b97: $f2
    ld bc, $fbf1                                  ; $6b98: $01 $f1 $fb
    add h                                         ; $6b9b: $84
    nop                                           ; $6b9c: $00
    ld b, $00                                     ; $6b9d: $06 $00
    ld bc, $001c                                  ; $6b9f: $01 $1c $00
    rst $38                                       ; $6ba2: $ff
    dec c                                         ; $6ba3: $0d
    inc b                                         ; $6ba4: $04
    ld hl, sp+$07                                 ; $6ba5: $f8 $07
    ld a, [c]                                     ; $6ba7: $f2
    ld bc, $fbe7                                  ; $6ba8: $01 $e7 $fb
    add sp, -$03                                  ; $6bab: $e8 $fd
    rst $30                                       ; $6bad: $f7
    ld a, [$00f7]                                 ; $6bae: $fa $f7 $00
    ld [bc], a                                    ; $6bb1: $02
    ccf                                           ; $6bb2: $3f
    ld [bc], a                                    ; $6bb3: $02
    ld a, a                                       ; $6bb4: $7f
    sbc h                                         ; $6bb5: $9c
    cp $f7                                        ; $6bb6: $fe $f7
    rst $38                                       ; $6bb8: $ff
    ldh a, [rIE]                                  ; $6bb9: $f0 $ff
    ldh [rPCM12], a                               ; $6bbb: $e0 $76
    ld l, a                                       ; $6bbd: $6f
    rst $18                                       ; $6bbe: $df
    and b                                         ; $6bbf: $a0
    ld a, a                                       ; $6bc0: $7f
    ld h, b                                       ; $6bc1: $60
    dec a                                         ; $6bc2: $3d
    inc hl                                        ; $6bc3: $23
    ccf                                           ; $6bc4: $3f
    jr nc, jr_0e5_6c20                            ; $6bc5: $30 $59

    ld a, c                                       ; $6bc7: $79
    xor [hl]                                      ; $6bc8: $ae
    cp $ed                                        ; $6bc9: $fe $ed
    rst $38                                       ; $6bcb: $ff
    xor $ff                                       ; $6bcc: $ee $ff
    ld c, a                                       ; $6bce: $4f
    ld a, a                                       ; $6bcf: $7f
    ld b, a                                       ; $6bd0: $47
    ld a, a                                       ; $6bd1: $7f
    inc b                                         ; $6bd2: $04
    ld [bc], a                                    ; $6bd3: $02
    add h                                         ; $6bd4: $84
    inc bc                                        ; $6bd5: $03
    ld bc, $0103                                  ; $6bd6: $01 $03 $01
    ld [bc], a                                    ; $6bd9: $02
    ld [bc], a                                    ; $6bda: $02
    add d                                         ; $6bdb: $82
    ld bc, $0603                                  ; $6bdc: $01 $03 $06
    ld [bc], a                                    ; $6bdf: $02
    ld [bc], a                                    ; $6be0: $02
    nop                                           ; $6be1: $00
    ld b, $02                                     ; $6be2: $06 $02
    add [hl]                                      ; $6be4: $86
    ld bc, $0103                                  ; $6be5: $01 $03 $01
    inc bc                                        ; $6be8: $03
    sbc l                                         ; $6be9: $9d
    rst $38                                       ; $6bea: $ff
    ld [bc], a                                    ; $6beb: $02
    jr nz, jr_0e5_6b76                            ; $6bec: $20 $88

    inc sp                                        ; $6bee: $33
    ccf                                           ; $6bef: $3f
    ld sp, $7f3f                                  ; $6bf0: $31 $3f $7f
    ld a, h                                       ; $6bf3: $7c
    ld a, a                                       ; $6bf4: $7f
    ld a, h                                       ; $6bf5: $7c
    ld [bc], a                                    ; $6bf6: $02
    ld a, a                                       ; $6bf7: $7f
    adc b                                         ; $6bf8: $88
    cp $ff                                        ; $6bf9: $fe $ff
    cp $ff                                        ; $6bfb: $fe $ff
    cp l                                          ; $6bfd: $bd
    rst $38                                       ; $6bfe: $ff

jr_0e5_6bff:
    sub e                                         ; $6bff: $93
    rst $38                                       ; $6c00: $ff
    ld [bc], a                                    ; $6c01: $02
    ld a, [hl]                                    ; $6c02: $7e
    inc c                                         ; $6c03: $0c
    nop                                           ; $6c04: $00
    add c                                         ; $6c05: $81
    jr z, @+$05                                   ; $6c06: $28 $03

    jr c, jr_0e5_6b8b                             ; $6c08: $38 $81

    jr z, jr_0e5_6c0f                             ; $6c0a: $28 $03

    jr c, @-$7c                                   ; $6c0c: $38 $82

    inc e                                         ; $6c0e: $1c

jr_0e5_6c0f:
    inc a                                         ; $6c0f: $3c
    ld [bc], a                                    ; $6c10: $02
    ccf                                           ; $6c11: $3f
    add d                                         ; $6c12: $82
    add hl, sp                                    ; $6c13: $39
    ccf                                           ; $6c14: $3f
    ld [bc], a                                    ; $6c15: $02
    ld a, $02                                     ; $6c16: $3e $02
    jr nz, jr_0e5_6c26                            ; $6c18: $20 $0c

    nop                                           ; $6c1a: $00
    rst $38                                       ; $6c1b: $ff
    rlca                                          ; $6c1c: $07
    ld bc, $07f8                                  ; $6c1d: $01 $f8 $07

jr_0e5_6c20:
    ld a, [c]                                     ; $6c20: $f2
    ld bc, $fbf1                                  ; $6c21: $01 $f1 $fb
    add h                                         ; $6c24: $84
    nop                                           ; $6c25: $00

jr_0e5_6c26:
    ld b, $00                                     ; $6c26: $06 $00
    ld bc, $001c                                  ; $6c28: $01 $1c $00
    rst $38                                       ; $6c2b: $ff
    dec c                                         ; $6c2c: $0d
    inc b                                         ; $6c2d: $04
    ld hl, sp+$07                                 ; $6c2e: $f8 $07
    ld a, [c]                                     ; $6c30: $f2
    ld bc, $fbe8                                  ; $6c31: $01 $e8 $fb
    jp hl                                         ; $6c34: $e9


    db $fd                                        ; $6c35: $fd
    ld hl, sp-$06                                 ; $6c36: $f8 $fa
    ld hl, sp-$02                                 ; $6c38: $f8 $fe
    ld [bc], a                                    ; $6c3a: $02
    ccf                                           ; $6c3b: $3f
    ld [bc], a                                    ; $6c3c: $02
    ld a, a                                       ; $6c3d: $7f
    sbc h                                         ; $6c3e: $9c
    cp $f7                                        ; $6c3f: $fe $f7
    rst $38                                       ; $6c41: $ff
    ldh a, [rIE]                                  ; $6c42: $f0 $ff
    ldh [rPCM12], a                               ; $6c44: $e0 $76
    ld l, a                                       ; $6c46: $6f
    rst $18                                       ; $6c47: $df
    and b                                         ; $6c48: $a0
    ld a, a                                       ; $6c49: $7f
    ld h, b                                       ; $6c4a: $60
    dec a                                         ; $6c4b: $3d
    inc hl                                        ; $6c4c: $23
    rst $38                                       ; $6c4d: $ff
    ldh a, [$99]                                  ; $6c4e: $f0 $99
    ld sp, hl                                     ; $6c50: $f9
    xor $fe                                       ; $6c51: $ee $fe
    ld l, l                                       ; $6c53: $6d
    ld a, a                                       ; $6c54: $7f
    ld l, [hl]                                    ; $6c55: $6e
    ld a, a                                       ; $6c56: $7f
    ld c, a                                       ; $6c57: $4f
    ld a, a                                       ; $6c58: $7f
    ld b, a                                       ; $6c59: $47
    ld a, a                                       ; $6c5a: $7f
    inc b                                         ; $6c5b: $04
    ld [bc], a                                    ; $6c5c: $02
    add h                                         ; $6c5d: $84
    inc bc                                        ; $6c5e: $03
    ld bc, $0103                                  ; $6c5f: $01 $03 $01
    ld [bc], a                                    ; $6c62: $02
    ld [bc], a                                    ; $6c63: $02
    add d                                         ; $6c64: $82
    ld bc, $0603                                  ; $6c65: $01 $03 $06
    ld [bc], a                                    ; $6c68: $02
    ld [bc], a                                    ; $6c69: $02
    nop                                           ; $6c6a: $00
    ld b, $02                                     ; $6c6b: $06 $02
    add [hl]                                      ; $6c6d: $86
    ld bc, $0103                                  ; $6c6e: $01 $03 $01
    inc bc                                        ; $6c71: $03
    sbc l                                         ; $6c72: $9d
    rst $38                                       ; $6c73: $ff
    ld [bc], a                                    ; $6c74: $02
    jr nz, jr_0e5_6bff                            ; $6c75: $20 $88

    inc sp                                        ; $6c77: $33
    ccf                                           ; $6c78: $3f
    add hl, sp                                    ; $6c79: $39
    ccf                                           ; $6c7a: $3f
    ld a, a                                       ; $6c7b: $7f
    ld a, h                                       ; $6c7c: $7c

jr_0e5_6c7d:
    ld a, a                                       ; $6c7d: $7f
    ld a, c                                       ; $6c7e: $79
    ld [bc], a                                    ; $6c7f: $02
    rst $38                                       ; $6c80: $ff
    add [hl]                                      ; $6c81: $86
    cp a                                          ; $6c82: $bf
    rst $38                                       ; $6c83: $ff
    cp a                                          ; $6c84: $bf
    rst $38                                       ; $6c85: $ff
    db $d3                                        ; $6c86: $d3
    rst $38                                       ; $6c87: $ff
    ld [bc], a                                    ; $6c88: $02
    ld a, $0e                                     ; $6c89: $3e $0e
    nop                                           ; $6c8b: $00
    add c                                         ; $6c8c: $81
    ld a, [bc]                                    ; $6c8d: $0a
    inc bc                                        ; $6c8e: $03
    ld c, $81                                     ; $6c8f: $0e $81
    ld a, [bc]                                    ; $6c91: $0a
    inc bc                                        ; $6c92: $03
    ld c, $81                                     ; $6c93: $0e $81
    ld b, $03                                     ; $6c95: $06 $03
    ld c, $81                                     ; $6c97: $0e $81
    add hl, bc                                    ; $6c99: $09
    inc bc                                        ; $6c9a: $03
    rrca                                          ; $6c9b: $0f
    ld c, $00                                     ; $6c9c: $0e $00
    rst $38                                       ; $6c9e: $ff
    rlca                                          ; $6c9f: $07
    ld bc, $07f8                                  ; $6ca0: $01 $f8 $07
    ld a, [c]                                     ; $6ca3: $f2
    ld bc, $fbf2                                  ; $6ca4: $01 $f2 $fb
    add h                                         ; $6ca7: $84
    nop                                           ; $6ca8: $00
    ld b, $00                                     ; $6ca9: $06 $00
    ld bc, $001c                                  ; $6cab: $01 $1c $00
    rst $38                                       ; $6cae: $ff
    dec c                                         ; $6caf: $0d
    inc b                                         ; $6cb0: $04
    ld hl, sp+$07                                 ; $6cb1: $f8 $07
    ld a, [c]                                     ; $6cb3: $f2
    ld bc, $fbe7                                  ; $6cb4: $01 $e7 $fb
    add sp, -$03                                  ; $6cb7: $e8 $fd
    rst $30                                       ; $6cb9: $f7
    ld a, [$fdf7]                                 ; $6cba: $fa $f7 $fd
    ld [bc], a                                    ; $6cbd: $02
    ccf                                           ; $6cbe: $3f
    ld [bc], a                                    ; $6cbf: $02
    ld a, a                                       ; $6cc0: $7f
    sbc h                                         ; $6cc1: $9c
    rst $38                                       ; $6cc2: $ff
    ei                                            ; $6cc3: $fb
    rst $38                                       ; $6cc4: $ff
    ldh a, [rIE]                                  ; $6cc5: $f0 $ff
    ldh a, [$7f]                                  ; $6cc7: $f0 $7f
    ld h, [hl]                                    ; $6cc9: $66
    ld a, a                                       ; $6cca: $7f
    ld d, b                                       ; $6ccb: $50
    ccf                                           ; $6ccc: $3f
    jr nz, jr_0e5_6d0e                            ; $6ccd: $20 $3f

    ld hl, $303f                                  ; $6ccf: $21 $3f $30
    ld e, c                                       ; $6cd2: $59
    ld a, c                                       ; $6cd3: $79
    xor [hl]                                      ; $6cd4: $ae
    cp $cd                                        ; $6cd5: $fe $cd
    rst $38                                       ; $6cd7: $ff
    sbc $ff                                       ; $6cd8: $de $ff
    ld e, a                                       ; $6cda: $5f
    ld a, a                                       ; $6cdb: $7f
    ld c, a                                       ; $6cdc: $4f
    ld a, a                                       ; $6cdd: $7f
    inc b                                         ; $6cde: $04
    ld [bc], a                                    ; $6cdf: $02
    add h                                         ; $6ce0: $84
    inc bc                                        ; $6ce1: $03
    ld bc, $0103                                  ; $6ce2: $01 $03 $01
    ld [bc], a                                    ; $6ce5: $02
    ld [bc], a                                    ; $6ce6: $02
    add d                                         ; $6ce7: $82
    inc bc                                        ; $6ce8: $03
    ld bc, $0206                                  ; $6ce9: $01 $06 $02
    ld [bc], a                                    ; $6cec: $02
    nop                                           ; $6ced: $00
    ld b, $02                                     ; $6cee: $06 $02
    add [hl]                                      ; $6cf0: $86
    ld bc, $0103                                  ; $6cf1: $01 $03 $01
    inc bc                                        ; $6cf4: $03
    dec a                                         ; $6cf5: $3d
    rst $38                                       ; $6cf6: $ff
    ld [bc], a                                    ; $6cf7: $02
    jr nz, jr_0e5_6c7d                            ; $6cf8: $20 $83

    inc hl                                        ; $6cfa: $23
    ccf                                           ; $6cfb: $3f
    daa                                           ; $6cfc: $27
    ld [bc], a                                    ; $6cfd: $02
    ccf                                           ; $6cfe: $3f
    adc l                                         ; $6cff: $8d
    inc sp                                        ; $6d00: $33
    ld a, a                                       ; $6d01: $7f
    ld a, e                                       ; $6d02: $7b
    ld a, [hl]                                    ; $6d03: $7e
    ld a, a                                       ; $6d04: $7f
    ld a, [hl]                                    ; $6d05: $7e
    ld a, a                                       ; $6d06: $7f
    cp a                                          ; $6d07: $bf
    rst $38                                       ; $6d08: $ff
    sbc l                                         ; $6d09: $9d
    rst $38                                       ; $6d0a: $ff
    ld a, [hl]                                    ; $6d0b: $7e
    ld a, a                                       ; $6d0c: $7f
    ld [bc], a                                    ; $6d0d: $02

jr_0e5_6d0e:
    inc bc                                        ; $6d0e: $03
    inc c                                         ; $6d0f: $0c
    nop                                           ; $6d10: $00
    add a                                         ; $6d11: $87
    dec b                                         ; $6d12: $05
    rlca                                          ; $6d13: $07
    dec b                                         ; $6d14: $05
    rlca                                          ; $6d15: $07
    dec b                                         ; $6d16: $05
    rlca                                          ; $6d17: $07
    inc bc                                        ; $6d18: $03
    inc bc                                        ; $6d19: $03
    rlca                                          ; $6d1a: $07
    add d                                         ; $6d1b: $82
    dec b                                         ; $6d1c: $05
    rlca                                          ; $6d1d: $07
    ld b, $06                                     ; $6d1e: $06 $06

jr_0e5_6d20:
    inc c                                         ; $6d20: $0c
    nop                                           ; $6d21: $00
    rst $38                                       ; $6d22: $ff
    rlca                                          ; $6d23: $07
    ld bc, $07f8                                  ; $6d24: $01 $f8 $07
    ld a, [c]                                     ; $6d27: $f2
    ld bc, $fbf1                                  ; $6d28: $01 $f1 $fb
    add h                                         ; $6d2b: $84
    nop                                           ; $6d2c: $00
    ld b, $00                                     ; $6d2d: $06 $00
    ld bc, $001c                                  ; $6d2f: $01 $1c $00
    rst $38                                       ; $6d32: $ff
    dec c                                         ; $6d33: $0d
    inc b                                         ; $6d34: $04
    ld hl, sp+$07                                 ; $6d35: $f8 $07
    ld a, [c]                                     ; $6d37: $f2
    ld bc, $fbe7                                  ; $6d38: $01 $e7 $fb
    add sp, -$03                                  ; $6d3b: $e8 $fd
    rst $30                                       ; $6d3d: $f7
    ld a, [$00f7]                                 ; $6d3e: $fa $f7 $00
    ld [bc], a                                    ; $6d41: $02
    ccf                                           ; $6d42: $3f
    ld [bc], a                                    ; $6d43: $02
    ld a, a                                       ; $6d44: $7f
    sbc h                                         ; $6d45: $9c
    rst $38                                       ; $6d46: $ff
    db $fd                                        ; $6d47: $fd
    rst $38                                       ; $6d48: $ff
    ld hl, sp-$01                                 ; $6d49: $f8 $ff
    ldh a, [$fe]                                  ; $6d4b: $f0 $fe
    di                                            ; $6d4d: $f3
    ld l, a                                       ; $6d4e: $6f
    ld d, b                                       ; $6d4f: $50
    ccf                                           ; $6d50: $3f
    jr nc, jr_0e5_6d82                            ; $6d51: $30 $2f

    ld sp, $303f                                  ; $6d53: $31 $3f $30
    ld e, c                                       ; $6d56: $59
    ld a, c                                       ; $6d57: $79
    xor [hl]                                      ; $6d58: $ae
    cp $dd                                        ; $6d59: $fe $dd
    rst $38                                       ; $6d5b: $ff
    sbc $ff                                       ; $6d5c: $de $ff
    ld c, a                                       ; $6d5e: $4f
    ld a, a                                       ; $6d5f: $7f
    ld c, a                                       ; $6d60: $4f
    ld a, a                                       ; $6d61: $7f
    inc b                                         ; $6d62: $04
    ld [bc], a                                    ; $6d63: $02
    add h                                         ; $6d64: $84
    inc bc                                        ; $6d65: $03
    ld bc, $0103                                  ; $6d66: $01 $03 $01
    ld [bc], a                                    ; $6d69: $02
    ld [bc], a                                    ; $6d6a: $02
    add d                                         ; $6d6b: $82
    inc bc                                        ; $6d6c: $03
    ld bc, $0206                                  ; $6d6d: $01 $06 $02
    ld [bc], a                                    ; $6d70: $02
    nop                                           ; $6d71: $00
    ld b, $02                                     ; $6d72: $06 $02
    sub d                                         ; $6d74: $92
    ld bc, $0103                                  ; $6d75: $01 $03 $01
    inc bc                                        ; $6d78: $03
    dec a                                         ; $6d79: $3d
    rst $38                                       ; $6d7a: $ff
    ld b, b                                       ; $6d7b: $40
    ld h, b                                       ; $6d7c: $60
    ld c, a                                       ; $6d7d: $4f
    ld a, a                                       ; $6d7e: $7f
    ld c, a                                       ; $6d7f: $4f
    ld a, a                                       ; $6d80: $7f
    ccf                                           ; $6d81: $3f

jr_0e5_6d82:
    cpl                                           ; $6d82: $2f
    ld a, [hl]                                    ; $6d83: $7e
    ld c, a                                       ; $6d84: $4f
    ld a, $3f                                     ; $6d85: $3e $3f
    inc b                                         ; $6d87: $04
    ld a, a                                       ; $6d88: $7f
    add h                                         ; $6d89: $84
    cp e                                          ; $6d8a: $bb
    rst $38                                       ; $6d8b: $ff
    ld h, a                                       ; $6d8c: $67
    ld a, a                                       ; $6d8d: $7f
    ld [bc], a                                    ; $6d8e: $02
    rra                                           ; $6d8f: $1f
    inc c                                         ; $6d90: $0c
    nop                                           ; $6d91: $00
    add [hl]                                      ; $6d92: $86
    inc l                                         ; $6d93: $2c
    inc a                                         ; $6d94: $3c
    inc e                                         ; $6d95: $1c
    inc [hl]                                      ; $6d96: $34
    inc e                                         ; $6d97: $1c
    inc [hl]                                      ; $6d98: $34
    ld [bc], a                                    ; $6d99: $02
    jr c, jr_0e5_6d20                             ; $6d9a: $38 $84

    jr z, jr_0e5_6dd6                             ; $6d9c: $28 $38

    inc h                                         ; $6d9e: $24
    inc a                                         ; $6d9f: $3c
    ld [bc], a                                    ; $6da0: $02
    ccf                                           ; $6da1: $3f
    add d                                         ; $6da2: $82
    add hl, sp                                    ; $6da3: $39
    ccf                                           ; $6da4: $3f
    ld [bc], a                                    ; $6da5: $02
    ld a, $02                                     ; $6da6: $3e $02
    jr nz, jr_0e5_6db4                            ; $6da8: $20 $0a

    nop                                           ; $6daa: $00
    rst $38                                       ; $6dab: $ff
    rlca                                          ; $6dac: $07
    ld bc, $07f8                                  ; $6dad: $01 $f8 $07
    ld a, [c]                                     ; $6db0: $f2
    ld bc, $fbf1                                  ; $6db1: $01 $f1 $fb

jr_0e5_6db4:
    add h                                         ; $6db4: $84
    nop                                           ; $6db5: $00
    ld b, $00                                     ; $6db6: $06 $00
    ld bc, $001c                                  ; $6db8: $01 $1c $00
    rst $38                                       ; $6dbb: $ff
    dec c                                         ; $6dbc: $0d
    inc b                                         ; $6dbd: $04
    ld hl, sp+$07                                 ; $6dbe: $f8 $07
    ld a, [c]                                     ; $6dc0: $f2
    ld bc, $fbe8                                  ; $6dc1: $01 $e8 $fb
    jp hl                                         ; $6dc4: $e9


    db $fd                                        ; $6dc5: $fd
    ld hl, sp-$06                                 ; $6dc6: $f8 $fa
    ld hl, sp-$02                                 ; $6dc8: $f8 $fe
    ld [bc], a                                    ; $6dca: $02
    ccf                                           ; $6dcb: $3f
    ld [bc], a                                    ; $6dcc: $02
    ld a, a                                       ; $6dcd: $7f
    sbc h                                         ; $6dce: $9c
    rst $38                                       ; $6dcf: $ff
    db $fd                                        ; $6dd0: $fd
    rst $38                                       ; $6dd1: $ff
    ld hl, sp-$01                                 ; $6dd2: $f8 $ff
    ldh a, [$fe]                                  ; $6dd4: $f0 $fe

jr_0e5_6dd6:
    di                                            ; $6dd6: $f3
    ld l, a                                       ; $6dd7: $6f
    ld d, b                                       ; $6dd8: $50
    ccf                                           ; $6dd9: $3f
    jr nc, jr_0e5_6e0b                            ; $6dda: $30 $2f

    ld sp, $f0ff                                  ; $6ddc: $31 $ff $f0
    sbc c                                         ; $6ddf: $99
    ld sp, hl                                     ; $6de0: $f9
    xor $fe                                       ; $6de1: $ee $fe
    ld e, l                                       ; $6de3: $5d
    ld a, a                                       ; $6de4: $7f
    ld e, [hl]                                    ; $6de5: $5e
    ld a, a                                       ; $6de6: $7f
    ld c, a                                       ; $6de7: $4f
    ld a, a                                       ; $6de8: $7f
    ld c, a                                       ; $6de9: $4f
    ld a, a                                       ; $6dea: $7f
    inc b                                         ; $6deb: $04
    ld [bc], a                                    ; $6dec: $02
    add h                                         ; $6ded: $84
    inc bc                                        ; $6dee: $03
    ld bc, $0103                                  ; $6def: $01 $03 $01
    ld [bc], a                                    ; $6df2: $02
    ld [bc], a                                    ; $6df3: $02
    add d                                         ; $6df4: $82
    inc bc                                        ; $6df5: $03
    ld bc, $0206                                  ; $6df6: $01 $06 $02
    ld [bc], a                                    ; $6df9: $02
    nop                                           ; $6dfa: $00
    ld b, $02                                     ; $6dfb: $06 $02
    sbc b                                         ; $6dfd: $98
    ld bc, $0103                                  ; $6dfe: $01 $03 $01
    inc bc                                        ; $6e01: $03
    ld a, l                                       ; $6e02: $7d
    rst $38                                       ; $6e03: $ff
    ld b, b                                       ; $6e04: $40
    ld h, b                                       ; $6e05: $60
    ld c, a                                       ; $6e06: $4f
    ld a, a                                       ; $6e07: $7f
    ld c, a                                       ; $6e08: $4f
    ld a, a                                       ; $6e09: $7f
    ccf                                           ; $6e0a: $3f

jr_0e5_6e0b:
    cpl                                           ; $6e0b: $2f
    ld a, a                                       ; $6e0c: $7f
    ld c, a                                       ; $6e0d: $4f
    ld a, [hl]                                    ; $6e0e: $7e
    ld a, a                                       ; $6e0f: $7f
    ld a, [hl]                                    ; $6e10: $7e
    ld a, a                                       ; $6e11: $7f
    cp l                                          ; $6e12: $bd

jr_0e5_6e13:
    rst $38                                       ; $6e13: $ff
    adc e                                         ; $6e14: $8b
    rst $38                                       ; $6e15: $ff
    ld [bc], a                                    ; $6e16: $02
    ld a, a                                       ; $6e17: $7f
    ld c, $00                                     ; $6e18: $0e $00
    adc h                                         ; $6e1a: $8c
    ld a, [bc]                                    ; $6e1b: $0a
    ld c, $09                                     ; $6e1c: $0e $09
    rrca                                          ; $6e1e: $0f
    rlca                                          ; $6e1f: $07
    dec c                                         ; $6e20: $0d
    ld b, $0e                                     ; $6e21: $06 $0e
    ld a, [bc]                                    ; $6e23: $0a
    ld c, $0a                                     ; $6e24: $0e $0a
    ld c, $02                                     ; $6e26: $0e $02
    rrca                                          ; $6e28: $0f
    add c                                         ; $6e29: $81
    add hl, bc                                    ; $6e2a: $09
    inc bc                                        ; $6e2b: $03
    rrca                                          ; $6e2c: $0f
    inc c                                         ; $6e2d: $0c
    nop                                           ; $6e2e: $00
    rst $38                                       ; $6e2f: $ff
    rlca                                          ; $6e30: $07
    ld bc, $07f8                                  ; $6e31: $01 $f8 $07
    ld a, [c]                                     ; $6e34: $f2
    ld bc, $fbf2                                  ; $6e35: $01 $f2 $fb
    add h                                         ; $6e38: $84
    nop                                           ; $6e39: $00
    ld b, $00                                     ; $6e3a: $06 $00
    ld bc, $001c                                  ; $6e3c: $01 $1c $00
    rst $38                                       ; $6e3f: $ff
    dec c                                         ; $6e40: $0d
    inc b                                         ; $6e41: $04
    ld hl, sp+$07                                 ; $6e42: $f8 $07
    ld a, [c]                                     ; $6e44: $f2
    ld bc, $fbe7                                  ; $6e45: $01 $e7 $fb
    add sp, -$03                                  ; $6e48: $e8 $fd
    rst $30                                       ; $6e4a: $f7
    ld a, [$fdf7]                                 ; $6e4b: $fa $f7 $fd
    ld [bc], a                                    ; $6e4e: $02
    ccf                                           ; $6e4f: $3f
    ld [bc], a                                    ; $6e50: $02
    ld a, a                                       ; $6e51: $7f
    sbc h                                         ; $6e52: $9c
    rst $38                                       ; $6e53: $ff
    ei                                            ; $6e54: $fb
    rst $38                                       ; $6e55: $ff
    ldh a, [rIE]                                  ; $6e56: $f0 $ff
    ldh a, [$7f]                                  ; $6e58: $f0 $7f
    ld h, [hl]                                    ; $6e5a: $66
    ld a, a                                       ; $6e5b: $7f
    ld d, b                                       ; $6e5c: $50
    ccf                                           ; $6e5d: $3f
    jr nz, jr_0e5_6e9f                            ; $6e5e: $20 $3f

    ld hl, $303f                                  ; $6e60: $21 $3f $30
    ld e, c                                       ; $6e63: $59
    ld a, c                                       ; $6e64: $79
    xor [hl]                                      ; $6e65: $ae
    cp $ed                                        ; $6e66: $fe $ed
    rst $38                                       ; $6e68: $ff
    xor $ff                                       ; $6e69: $ee $ff
    ld c, a                                       ; $6e6b: $4f
    ld a, a                                       ; $6e6c: $7f
    ld c, a                                       ; $6e6d: $4f
    ld a, a                                       ; $6e6e: $7f
    inc b                                         ; $6e6f: $04
    ld [bc], a                                    ; $6e70: $02
    add h                                         ; $6e71: $84
    inc bc                                        ; $6e72: $03
    ld bc, $0103                                  ; $6e73: $01 $03 $01
    ld [bc], a                                    ; $6e76: $02
    ld [bc], a                                    ; $6e77: $02
    add d                                         ; $6e78: $82
    inc bc                                        ; $6e79: $03
    ld bc, $0206                                  ; $6e7a: $01 $06 $02
    ld [bc], a                                    ; $6e7d: $02
    nop                                           ; $6e7e: $00
    ld b, $02                                     ; $6e7f: $06 $02
    add [hl]                                      ; $6e81: $86
    ld bc, $0103                                  ; $6e82: $01 $03 $01
    inc bc                                        ; $6e85: $03
    dec a                                         ; $6e86: $3d
    rst $38                                       ; $6e87: $ff
    ld [bc], a                                    ; $6e88: $02
    jr nz, jr_0e5_6e13                            ; $6e89: $20 $88

    inc hl                                        ; $6e8b: $23
    ccf                                           ; $6e8c: $3f
    rla                                           ; $6e8d: $17
    rra                                           ; $6e8e: $1f
    ccf                                           ; $6e8f: $3f
    daa                                           ; $6e90: $27
    ccf                                           ; $6e91: $3f
    scf                                           ; $6e92: $37
    ld [bc], a                                    ; $6e93: $02
    ccf                                           ; $6e94: $3f
    ld [bc], a                                    ; $6e95: $02
    ld a, a                                       ; $6e96: $7f
    add [hl]                                      ; $6e97: $86
    ld a, [hl]                                    ; $6e98: $7e
    ld a, a                                       ; $6e99: $7f
    cp a                                          ; $6e9a: $bf
    rst $38                                       ; $6e9b: $ff
    sub [hl]                                      ; $6e9c: $96
    rst $38                                       ; $6e9d: $ff
    ld [bc], a                                    ; $6e9e: $02

jr_0e5_6e9f:
    ld a, a                                       ; $6e9f: $7f
    inc c                                         ; $6ea0: $0c
    nop                                           ; $6ea1: $00
    adc h                                         ; $6ea2: $8c
    dec b                                         ; $6ea3: $05
    rlca                                          ; $6ea4: $07
    dec b                                         ; $6ea5: $05
    rlca                                          ; $6ea6: $07
    dec b                                         ; $6ea7: $05
    rlca                                          ; $6ea8: $07
    dec b                                         ; $6ea9: $05
    rlca                                          ; $6eaa: $07
    inc bc                                        ; $6eab: $03
    rlca                                          ; $6eac: $07
    ld [bc], a                                    ; $6ead: $02
    ld b, $02                                     ; $6eae: $06 $02
    inc b                                         ; $6eb0: $04
    ld [bc], a                                    ; $6eb1: $02
    ld b, $81                                     ; $6eb2: $06 $81
    ld [bc], a                                    ; $6eb4: $02
    inc bc                                        ; $6eb5: $03
    ld b, $0a                                     ; $6eb6: $06 $0a
    nop                                           ; $6eb8: $00
    rst $38                                       ; $6eb9: $ff
    rlca                                          ; $6eba: $07
    ld bc, $07f8                                  ; $6ebb: $01 $f8 $07
    ld a, [c]                                     ; $6ebe: $f2
    ld bc, $fbf1                                  ; $6ebf: $01 $f1 $fb
    add h                                         ; $6ec2: $84
    nop                                           ; $6ec3: $00
    ld b, $00                                     ; $6ec4: $06 $00
    ld bc, $001c                                  ; $6ec6: $01 $1c $00
    rst $38                                       ; $6ec9: $ff
    dec c                                         ; $6eca: $0d
    inc b                                         ; $6ecb: $04
    ei                                            ; $6ecc: $fb
    dec b                                         ; $6ecd: $05
    push af                                       ; $6ece: $f5
    cp $e8                                        ; $6ecf: $fe $e8
    ei                                            ; $6ed1: $fb
    jp hl                                         ; $6ed2: $e9


    rst $38                                       ; $6ed3: $ff
    ld hl, sp-$06                                 ; $6ed4: $f8 $fa
    ld hl, sp-$01                                 ; $6ed6: $f8 $ff
    ld [bc], a                                    ; $6ed8: $02
    ld e, $82                                     ; $6ed9: $1e $82
    add hl, sp                                    ; $6edb: $39
    ld hl, $4102                                  ; $6edc: $21 $02 $41
    add h                                         ; $6edf: $84
    or d                                          ; $6ee0: $b2
    and d                                         ; $6ee1: $a2
    ld b, c                                       ; $6ee2: $41
    ld b, b                                       ; $6ee3: $40
    ld [bc], a                                    ; $6ee4: $02
    ld d, b                                       ; $6ee5: $50
    ld [bc], a                                    ; $6ee6: $02
    ld l, d                                       ; $6ee7: $6a
    ld [bc], a                                    ; $6ee8: $02
    dec [hl]                                      ; $6ee9: $35
    add h                                         ; $6eea: $84
    ccf                                           ; $6eeb: $3f
    ld l, $1f                                     ; $6eec: $2e $1f
    ld de, $3102                                  ; $6eee: $11 $02 $31
    adc d                                         ; $6ef1: $8a
    ld l, [hl]                                    ; $6ef2: $6e
    ld a, a                                       ; $6ef3: $7f
    or c                                          ; $6ef4: $b1
    rst $38                                       ; $6ef5: $ff
    cp e                                          ; $6ef6: $bb
    rst $38                                       ; $6ef7: $ff
    cp a                                          ; $6ef8: $bf
    rst $38                                       ; $6ef9: $ff
    cp a                                          ; $6efa: $bf
    rst $38                                       ; $6efb: $ff
    ld [bc], a                                    ; $6efc: $02
    ld [$0402], sp                                ; $6efd: $08 $02 $04
    add c                                         ; $6f00: $81
    ld c, $03                                     ; $6f01: $0e $03
    ld b, $02                                     ; $6f03: $06 $02
    inc b                                         ; $6f05: $04
    ld [bc], a                                    ; $6f06: $02
    inc c                                         ; $6f07: $0c
    inc b                                         ; $6f08: $04
    ld [$0002], sp                                ; $6f09: $08 $02 $00
    ld [bc], a                                    ; $6f0c: $02
    ld [$0c02], sp                                ; $6f0d: $08 $02 $0c
    sub b                                         ; $6f10: $90
    ld a, [bc]                                    ; $6f11: $0a
    ld c, $0a                                     ; $6f12: $0e $0a
    ld c, $0a                                     ; $6f14: $0e $0a
    ld c, $0a                                     ; $6f16: $0e $0a
    ld c, $f9                                     ; $6f18: $0e $f9
    rst $38                                       ; $6f1a: $ff
    sbc b                                         ; $6f1b: $98
    ld hl, sp-$21                                 ; $6f1c: $f8 $df
    rst $38                                       ; $6f1e: $ff
    ld a, a                                       ; $6f1f: $7f
    ld e, a                                       ; $6f20: $5f
    ld [bc], a                                    ; $6f21: $02
    ccf                                           ; $6f22: $3f
    ld [bc], a                                    ; $6f23: $02
    rra                                           ; $6f24: $1f
    inc b                                         ; $6f25: $04
    ccf                                           ; $6f26: $3f
    add h                                         ; $6f27: $84
    cpl                                           ; $6f28: $2f
    ccf                                           ; $6f29: $3f
    jr nc, jr_0e5_6f6b                            ; $6f2a: $30 $3f

    ld [bc], a                                    ; $6f2c: $02
    rra                                           ; $6f2d: $1f
    ld c, $00                                     ; $6f2e: $0e $00
    add h                                         ; $6f30: $84
    dec de                                        ; $6f31: $1b
    rra                                           ; $6f32: $1f
    ld e, $1a                                     ; $6f33: $1e $1a
    ld [bc], a                                    ; $6f35: $02
    inc e                                         ; $6f36: $1c
    ld [bc], a                                    ; $6f37: $02
    jr jr_0e5_6f3e                                ; $6f38: $18 $04

    inc e                                         ; $6f3a: $1c
    add h                                         ; $6f3b: $84
    inc d                                         ; $6f3c: $14
    inc e                                         ; $6f3d: $1c

jr_0e5_6f3e:
    inc c                                         ; $6f3e: $0c
    inc e                                         ; $6f3f: $1c
    ld [bc], a                                    ; $6f40: $02
    jr jr_0e5_6f4f                                ; $6f41: $18 $0c

    nop                                           ; $6f43: $00
    rst $38                                       ; $6f44: $ff
    rlca                                          ; $6f45: $07
    ld bc, $08f9                                  ; $6f46: $01 $f9 $08
    ld a, [c]                                     ; $6f49: $f2
    ld bc, $fce9                                  ; $6f4a: $01 $e9 $fc
    ld [bc], a                                    ; $6f4d: $02
    inc c                                         ; $6f4e: $0c

jr_0e5_6f4f:
    ld [bc], a                                    ; $6f4f: $02
    ld a, l                                       ; $6f50: $7d
    ld [bc], a                                    ; $6f51: $02
    sbc d                                         ; $6f52: $9a
    ld [bc], a                                    ; $6f53: $02
    ld a, l                                       ; $6f54: $7d
    ld [bc], a                                    ; $6f55: $02
    ld e, a                                       ; $6f56: $5f
    ld [bc], a                                    ; $6f57: $02
    ld a, [hl+]                                   ; $6f58: $2a
    ld [bc], a                                    ; $6f59: $02
    inc d                                         ; $6f5a: $14
    inc b                                         ; $6f5b: $04
    nop                                           ; $6f5c: $00
    add c                                         ; $6f5d: $81
    inc e                                         ; $6f5e: $1c
    dec c                                         ; $6f5f: $0d
    nop                                           ; $6f60: $00
    rst $38                                       ; $6f61: $ff
    dec c                                         ; $6f62: $0d
    inc b                                         ; $6f63: $04
    ei                                            ; $6f64: $fb
    dec b                                         ; $6f65: $05
    push af                                       ; $6f66: $f5
    cp $e8                                        ; $6f67: $fe $e8
    ei                                            ; $6f69: $fb
    jp hl                                         ; $6f6a: $e9


jr_0e5_6f6b:
    rst $38                                       ; $6f6b: $ff
    ld hl, sp-$05                                 ; $6f6c: $f8 $fb
    ld hl, sp-$02                                 ; $6f6e: $f8 $fe
    ld [bc], a                                    ; $6f70: $02
    ld e, $86                                     ; $6f71: $1e $86
    dec h                                         ; $6f73: $25
    ld hl, $424a                                  ; $6f74: $21 $4a $42
    db $e3                                        ; $6f77: $e3
    ld [c], a                                     ; $6f78: $e2
    ld [bc], a                                    ; $6f79: $02
    ld b, b                                       ; $6f7a: $40
    ld [bc], a                                    ; $6f7b: $02
    ld h, b                                       ; $6f7c: $60
    ld [bc], a                                    ; $6f7d: $02
    ld d, l                                       ; $6f7e: $55
    ld [bc], a                                    ; $6f7f: $02
    dec hl                                        ; $6f80: $2b
    add h                                         ; $6f81: $84
    ccf                                           ; $6f82: $3f
    ld a, $1f                                     ; $6f83: $3e $1f
    ld de, $1302                                  ; $6f85: $11 $02 $13
    adc d                                         ; $6f88: $8a
    ld l, [hl]                                    ; $6f89: $6e
    ld a, a                                       ; $6f8a: $7f
    ld [hl], c                                    ; $6f8b: $71
    ld a, a                                       ; $6f8c: $7f
    cp e                                          ; $6f8d: $bb
    rst $38                                       ; $6f8e: $ff
    cp a                                          ; $6f8f: $bf
    rst $38                                       ; $6f90: $ff
    cp a                                          ; $6f91: $bf
    rst $38                                       ; $6f92: $ff
    ld [bc], a                                    ; $6f93: $02
    ld [$0c82], sp                                ; $6f94: $08 $82 $0c
    inc b                                         ; $6f97: $04
    inc b                                         ; $6f98: $04
    ld b, $02                                     ; $6f99: $06 $02
    inc b                                         ; $6f9b: $04
    ld [bc], a                                    ; $6f9c: $02
    inc c                                         ; $6f9d: $0c
    inc b                                         ; $6f9e: $04
    ld [$0002], sp                                ; $6f9f: $08 $02 $00
    ld [bc], a                                    ; $6fa2: $02
    ld [$0c02], sp                                ; $6fa3: $08 $02 $0c
    adc l                                         ; $6fa6: $8d
    ld a, [bc]                                    ; $6fa7: $0a
    ld c, $0a                                     ; $6fa8: $0e $0a
    ld c, $0a                                     ; $6faa: $0e $0a
    ld c, $09                                     ; $6fac: $0e $09
    rrca                                          ; $6fae: $0f
    ei                                            ; $6faf: $fb
    rst $38                                       ; $6fb0: $ff
    sub b                                         ; $6fb1: $90
    ldh a, [$9f]                                  ; $6fb2: $f0 $9f
    ld [bc], a                                    ; $6fb4: $02
    rst $38                                       ; $6fb5: $ff
    add e                                         ; $6fb6: $83
    cp a                                          ; $6fb7: $bf
    rst $38                                       ; $6fb8: $ff
    sbc a                                         ; $6fb9: $9f
    ld b, $7f                                     ; $6fba: $06 $7f
    add h                                         ; $6fbc: $84
    ld e, a                                       ; $6fbd: $5f
    ld a, a                                       ; $6fbe: $7f
    jr nc, @+$41                                  ; $6fbf: $30 $3f

    ld [bc], a                                    ; $6fc1: $02
    rrca                                          ; $6fc2: $0f
    ld c, $00                                     ; $6fc3: $0e $00
    ld [bc], a                                    ; $6fc5: $02
    rlca                                          ; $6fc6: $07
    ld [bc], a                                    ; $6fc7: $02
    ld b, $04                                     ; $6fc8: $06 $04
    inc b                                         ; $6fca: $04
    inc b                                         ; $6fcb: $04
    ld b, $84                                     ; $6fcc: $06 $84
    ld [bc], a                                    ; $6fce: $02
    ld b, $02                                     ; $6fcf: $06 $02
    ld b, $02                                     ; $6fd1: $06 $02
    inc b                                         ; $6fd3: $04
    inc c                                         ; $6fd4: $0c
    nop                                           ; $6fd5: $00
    rst $38                                       ; $6fd6: $ff
    rlca                                          ; $6fd7: $07
    ld bc, $08f9                                  ; $6fd8: $01 $f9 $08
    ld a, [c]                                     ; $6fdb: $f2
    ld bc, $fce9                                  ; $6fdc: $01 $e9 $fc
    ld [bc], a                                    ; $6fdf: $02
    inc [hl]                                      ; $6fe0: $34
    ld [bc], a                                    ; $6fe1: $02
    ld l, d                                       ; $6fe2: $6a
    ld [bc], a                                    ; $6fe3: $02
    add hl, sp                                    ; $6fe4: $39
    ld [bc], a                                    ; $6fe5: $02
    ld a, a                                       ; $6fe6: $7f
    ld [bc], a                                    ; $6fe7: $02
    ccf                                           ; $6fe8: $3f
    ld [bc], a                                    ; $6fe9: $02
    ld d, h                                       ; $6fea: $54
    ld [bc], a                                    ; $6feb: $02
    jr z, jr_0e5_6ff2                             ; $6fec: $28 $04

    nop                                           ; $6fee: $00
    add c                                         ; $6fef: $81
    jr jr_0e5_6fff                                ; $6ff0: $18 $0d

jr_0e5_6ff2:
    nop                                           ; $6ff2: $00
    rst $38                                       ; $6ff3: $ff
    dec c                                         ; $6ff4: $0d
    inc b                                         ; $6ff5: $04
    ei                                            ; $6ff6: $fb
    dec b                                         ; $6ff7: $05
    push af                                       ; $6ff8: $f5
    cp $e9                                        ; $6ff9: $fe $e9
    ei                                            ; $6ffb: $fb
    ld [$f9ff], a                                 ; $6ffc: $ea $ff $f9

jr_0e5_6fff:
    ld a, [$fef9]                                 ; $6fff: $fa $f9 $fe
    ld [bc], a                                    ; $7002: $02
    ld e, $86                                     ; $7003: $1e $86
    dec h                                         ; $7005: $25
    ld hl, $424a                                  ; $7006: $21 $4a $42
    db $e3                                        ; $7009: $e3
    ld [c], a                                     ; $700a: $e2
    ld [bc], a                                    ; $700b: $02
    ld b, b                                       ; $700c: $40
    ld [bc], a                                    ; $700d: $02
    ld h, b                                       ; $700e: $60
    ld [bc], a                                    ; $700f: $02
    ld d, l                                       ; $7010: $55
    ld [bc], a                                    ; $7011: $02
    dec hl                                        ; $7012: $2b
    add d                                         ; $7013: $82
    ccf                                           ; $7014: $3f
    ld a, $02                                     ; $7015: $3e $02
    rra                                           ; $7017: $1f
    add e                                         ; $7018: $83
    jr nz, jr_0e5_705a                            ; $7019: $20 $3f

    ld [hl], e                                    ; $701b: $73
    inc bc                                        ; $701c: $03
    ld a, a                                       ; $701d: $7f
    add [hl]                                      ; $701e: $86
    cp a                                          ; $701f: $bf
    rst $38                                       ; $7020: $ff
    cp a                                          ; $7021: $bf
    rst $38                                       ; $7022: $ff
    cp a                                          ; $7023: $bf
    rst $38                                       ; $7024: $ff
    ld [bc], a                                    ; $7025: $02
    ld [$0c82], sp                                ; $7026: $08 $82 $0c
    inc b                                         ; $7029: $04
    inc b                                         ; $702a: $04
    ld b, $02                                     ; $702b: $06 $02
    inc b                                         ; $702d: $04
    ld [bc], a                                    ; $702e: $02
    inc c                                         ; $702f: $0c
    inc b                                         ; $7030: $04
    ld [$0002], sp                                ; $7031: $08 $02 $00
    inc b                                         ; $7034: $04
    inc c                                         ; $7035: $0c
    sub b                                         ; $7036: $90
    ld a, [bc]                                    ; $7037: $0a
    ld c, $0a                                     ; $7038: $0e $0a
    ld c, $0a                                     ; $703a: $0e $0a
    ld c, $0a                                     ; $703c: $0e $0a
    ld c, $fb                                     ; $703e: $0e $fb
    rst $38                                       ; $7040: $ff
    ld c, b                                       ; $7041: $48
    ld a, b                                       ; $7042: $78
    sbc a                                         ; $7043: $9f
    rst $38                                       ; $7044: $ff
    ld a, a                                       ; $7045: $7f
    ld c, a                                       ; $7046: $4f
    ld b, $3f                                     ; $7047: $06 $3f
    add c                                         ; $7049: $81
    inc h                                         ; $704a: $24
    inc bc                                        ; $704b: $03
    ccf                                           ; $704c: $3f
    ld [bc], a                                    ; $704d: $02
    inc bc                                        ; $704e: $03
    stop                                          ; $704f: $10 $00
    ld [bc], a                                    ; $7051: $02
    rrca                                          ; $7052: $0f
    ld [bc], a                                    ; $7053: $02
    ld c, $81                                     ; $7054: $0e $81
    ld b, $03                                     ; $7056: $06 $03
    ld c, $81                                     ; $7058: $0e $81

jr_0e5_705a:
    ld [bc], a                                    ; $705a: $02
    inc bc                                        ; $705b: $03
    ld c, $82                                     ; $705c: $0e $82
    ld [bc], a                                    ; $705e: $02
    ld c, $02                                     ; $705f: $0e $02
    inc c                                         ; $7061: $0c
    ld c, $00                                     ; $7062: $0e $00
    rst $38                                       ; $7064: $ff
    rlca                                          ; $7065: $07
    ld bc, $08f9                                  ; $7066: $01 $f9 $08
    ld a, [c]                                     ; $7069: $f2
    ld bc, $fcea                                  ; $706a: $01 $ea $fc
    ld [bc], a                                    ; $706d: $02
    inc [hl]                                      ; $706e: $34
    ld [bc], a                                    ; $706f: $02
    ld l, d                                       ; $7070: $6a
    ld [bc], a                                    ; $7071: $02
    add hl, sp                                    ; $7072: $39
    ld [bc], a                                    ; $7073: $02
    ld a, a                                       ; $7074: $7f
    ld [bc], a                                    ; $7075: $02
    ccf                                           ; $7076: $3f
    ld [bc], a                                    ; $7077: $02
    ld d, h                                       ; $7078: $54
    ld [bc], a                                    ; $7079: $02
    jr z, @+$14                                   ; $707a: $28 $12

    nop                                           ; $707c: $00
    rst $38                                       ; $707d: $ff
    dec c                                         ; $707e: $0d
    inc b                                         ; $707f: $04
    ei                                            ; $7080: $fb
    dec b                                         ; $7081: $05
    push af                                       ; $7082: $f5
    cp $e8                                        ; $7083: $fe $e8
    ei                                            ; $7085: $fb
    jp hl                                         ; $7086: $e9


    cp $f8                                        ; $7087: $fe $f8
    ld a, [$fef8]                                 ; $7089: $fa $f8 $fe
    ld [bc], a                                    ; $708c: $02
    ld e, $82                                     ; $708d: $1e $82
    add hl, sp                                    ; $708f: $39
    ld hl, $4102                                  ; $7090: $21 $02 $41
    add h                                         ; $7093: $84
    or d                                          ; $7094: $b2
    and d                                         ; $7095: $a2
    ld b, c                                       ; $7096: $41
    ld b, b                                       ; $7097: $40
    ld [bc], a                                    ; $7098: $02
    ld d, b                                       ; $7099: $50
    ld [bc], a                                    ; $709a: $02
    ld l, d                                       ; $709b: $6a
    ld [bc], a                                    ; $709c: $02
    dec [hl]                                      ; $709d: $35
    add h                                         ; $709e: $84
    ccf                                           ; $709f: $3f
    ld l, $1f                                     ; $70a0: $2e $1f
    ld de, $3102                                  ; $70a2: $11 $02 $31
    adc d                                         ; $70a5: $8a
    ld l, [hl]                                    ; $70a6: $6e
    ld a, a                                       ; $70a7: $7f
    or c                                          ; $70a8: $b1
    rst $38                                       ; $70a9: $ff
    cp e                                          ; $70aa: $bb
    rst $38                                       ; $70ab: $ff
    cp a                                          ; $70ac: $bf
    rst $38                                       ; $70ad: $ff
    cp a                                          ; $70ae: $bf
    rst $38                                       ; $70af: $ff
    ld [bc], a                                    ; $70b0: $02
    inc b                                         ; $70b1: $04
    ld [bc], a                                    ; $70b2: $02
    ld [bc], a                                    ; $70b3: $02
    add c                                         ; $70b4: $81
    rlca                                          ; $70b5: $07
    inc bc                                        ; $70b6: $03
    inc bc                                        ; $70b7: $03
    ld [bc], a                                    ; $70b8: $02
    ld [bc], a                                    ; $70b9: $02
    ld [bc], a                                    ; $70ba: $02
    ld b, $04                                     ; $70bb: $06 $04
    inc b                                         ; $70bd: $04
    ld [bc], a                                    ; $70be: $02
    nop                                           ; $70bf: $00
    ld [bc], a                                    ; $70c0: $02
    inc b                                         ; $70c1: $04
    ld [bc], a                                    ; $70c2: $02
    ld b, $90                                     ; $70c3: $06 $90
    dec b                                         ; $70c5: $05
    rlca                                          ; $70c6: $07
    dec b                                         ; $70c7: $05
    rlca                                          ; $70c8: $07
    dec b                                         ; $70c9: $05
    rlca                                          ; $70ca: $07
    dec b                                         ; $70cb: $05
    rlca                                          ; $70cc: $07
    db $fd                                        ; $70cd: $fd
    rst $38                                       ; $70ce: $ff
    sub b                                         ; $70cf: $90
    ldh a, [$df]                                  ; $70d0: $f0 $df
    rst $38                                       ; $70d2: $ff
    ld a, a                                       ; $70d3: $7f
    ld e, a                                       ; $70d4: $5f
    ld [bc], a                                    ; $70d5: $02
    ccf                                           ; $70d6: $3f
    inc b                                         ; $70d7: $04
    rra                                           ; $70d8: $1f
    add c                                         ; $70d9: $81
    ld a, $03                                     ; $70da: $3e $03
    ccf                                           ; $70dc: $3f
    add d                                         ; $70dd: $82
    ld hl, $023f                                  ; $70de: $21 $3f $02
    rra                                           ; $70e1: $1f
    ld c, $00                                     ; $70e2: $0e $00
    add c                                         ; $70e4: $81
    dec c                                         ; $70e5: $0d
    ld [bc], a                                    ; $70e6: $02
    rrca                                          ; $70e7: $0f
    add c                                         ; $70e8: $81
    dec c                                         ; $70e9: $0d
    ld b, $0e                                     ; $70ea: $06 $0e
    add c                                         ; $70ec: $81
    ld b, $03                                     ; $70ed: $06 $03
    ld c, $02                                     ; $70ef: $0e $02
    inc c                                         ; $70f1: $0c
    ld [bc], a                                    ; $70f2: $02
    ld [$000c], sp                                ; $70f3: $08 $0c $00
    rst $38                                       ; $70f6: $ff
    rlca                                          ; $70f7: $07
    ld bc, $08f9                                  ; $70f8: $01 $f9 $08
    ld a, [c]                                     ; $70fb: $f2
    ld bc, $fce9                                  ; $70fc: $01 $e9 $fc
    ld [bc], a                                    ; $70ff: $02
    inc c                                         ; $7100: $0c
    ld [bc], a                                    ; $7101: $02
    ld a, l                                       ; $7102: $7d
    ld [bc], a                                    ; $7103: $02
    sbc d                                         ; $7104: $9a
    ld [bc], a                                    ; $7105: $02
    ld a, l                                       ; $7106: $7d
    ld [bc], a                                    ; $7107: $02
    ld e, a                                       ; $7108: $5f
    ld [bc], a                                    ; $7109: $02
    ld a, [hl+]                                   ; $710a: $2a
    ld [bc], a                                    ; $710b: $02
    inc d                                         ; $710c: $14
    inc b                                         ; $710d: $04
    nop                                           ; $710e: $00
    add c                                         ; $710f: $81
    inc e                                         ; $7110: $1c
    dec c                                         ; $7111: $0d
    nop                                           ; $7112: $00
    rst $38                                       ; $7113: $ff
    dec c                                         ; $7114: $0d
    inc b                                         ; $7115: $04
    ei                                            ; $7116: $fb
    dec b                                         ; $7117: $05
    push af                                       ; $7118: $f5
    cp $e8                                        ; $7119: $fe $e8
    ld a, [$fee9]                                 ; $711b: $fa $e9 $fe
    ld hl, sp-$06                                 ; $711e: $f8 $fa
    ld hl, sp-$02                                 ; $7120: $f8 $fe
    ld [bc], a                                    ; $7122: $02
    rrca                                          ; $7123: $0f
    add [hl]                                      ; $7124: $86
    inc d                                         ; $7125: $14
    db $10                                        ; $7126: $10
    jr z, @+$22                                   ; $7127: $28 $20

    ld d, h                                       ; $7129: $54
    ld d, b                                       ; $712a: $50
    ld [bc], a                                    ; $712b: $02
    jr nz, jr_0e5_7130                            ; $712c: $20 $02

    inc [hl]                                      ; $712e: $34
    ld [bc], a                                    ; $712f: $02

jr_0e5_7130:
    ld a, [hl-]                                   ; $7130: $3a
    ld [bc], a                                    ; $7131: $02
    dec e                                         ; $7132: $1d
    add h                                         ; $7133: $84
    rra                                           ; $7134: $1f
    rla                                           ; $7135: $17
    rrca                                          ; $7136: $0f
    ld [$1c02], sp                                ; $7137: $08 $02 $1c
    adc d                                         ; $713a: $8a
    scf                                           ; $713b: $37
    ccf                                           ; $713c: $3f
    ld e, b                                       ; $713d: $58
    ld a, a                                       ; $713e: $7f
    ld e, l                                       ; $713f: $5d
    ld a, a                                       ; $7140: $7f
    ld e, a                                       ; $7141: $5f
    ld a, a                                       ; $7142: $7f
    sbc a                                         ; $7143: $9f
    rst $38                                       ; $7144: $ff
    ld [bc], a                                    ; $7145: $02
    inc c                                         ; $7146: $0c
    add d                                         ; $7147: $82
    ld c, $0a                                     ; $7148: $0e $0a
    ld [bc], a                                    ; $714a: $02
    dec bc                                        ; $714b: $0b
    ld [bc], a                                    ; $714c: $02
    inc bc                                        ; $714d: $03
    ld [bc], a                                    ; $714e: $02
    ld b, $02                                     ; $714f: $06 $02
    ld c, $02                                     ; $7151: $0e $02
    inc b                                         ; $7153: $04
    ld [bc], a                                    ; $7154: $02
    inc c                                         ; $7155: $0c
    inc b                                         ; $7156: $04
    ld [$0681], sp                                ; $7157: $08 $81 $06
    inc bc                                        ; $715a: $03
    ld c, $8a                                     ; $715b: $0e $8a
    dec c                                         ; $715d: $0d
    rrca                                          ; $715e: $0f
    dec c                                         ; $715f: $0d
    rrca                                          ; $7160: $0f
    dec c                                         ; $7161: $0d
    rrca                                          ; $7162: $0f
    ld sp, hl                                     ; $7163: $f9
    rst $38                                       ; $7164: $ff
    ret nc                                        ; $7165: $d0

    ldh a, [rSC]                                  ; $7166: $f0 $02
    ld a, a                                       ; $7168: $7f
    ld [bc], a                                    ; $7169: $02
    ccf                                           ; $716a: $3f
    inc b                                         ; $716b: $04
    rra                                           ; $716c: $1f
    inc b                                         ; $716d: $04
    ccf                                           ; $716e: $3f
    add h                                         ; $716f: $84
    cpl                                           ; $7170: $2f
    ccf                                           ; $7171: $3f
    jr nz, @+$41                                  ; $7172: $20 $3f

    ld [bc], a                                    ; $7174: $02
    rra                                           ; $7175: $1f
    ld c, $00                                     ; $7176: $0e $00
    add c                                         ; $7178: $81
    add hl, bc                                    ; $7179: $09
    ld [bc], a                                    ; $717a: $02
    rrca                                          ; $717b: $0f
    add e                                         ; $717c: $83
    dec c                                         ; $717d: $0d
    rrca                                          ; $717e: $0f
    add hl, bc                                    ; $717f: $09
    ld b, $0e                                     ; $7180: $06 $0e
    add d                                         ; $7182: $82
    ld a, [bc]                                    ; $7183: $0a
    ld c, $02                                     ; $7184: $0e $02
    inc c                                         ; $7186: $0c
    ld c, $00                                     ; $7187: $0e $00
    rst $38                                       ; $7189: $ff
    rlca                                          ; $718a: $07
    ld bc, $08f9                                  ; $718b: $01 $f9 $08
    ld a, [c]                                     ; $718e: $f2
    ld bc, $fce9                                  ; $718f: $01 $e9 $fc
    ld [bc], a                                    ; $7192: $02
    inc l                                         ; $7193: $2c
    ld [bc], a                                    ; $7194: $02
    ld e, h                                       ; $7195: $5c
    ld [bc], a                                    ; $7196: $02
    xor l                                         ; $7197: $ad
    ld [bc], a                                    ; $7198: $02
    ld a, a                                       ; $7199: $7f
    ld [bc], a                                    ; $719a: $02
    ld l, $02                                     ; $719b: $2e $02
    inc d                                         ; $719d: $14
    ld [bc], a                                    ; $719e: $02
    ld a, [bc]                                    ; $719f: $0a
    inc b                                         ; $71a0: $04
    nop                                           ; $71a1: $00
    add c                                         ; $71a2: $81
    inc c                                         ; $71a3: $0c
    dec c                                         ; $71a4: $0d
    nop                                           ; $71a5: $00
    rst $38                                       ; $71a6: $ff
    dec c                                         ; $71a7: $0d
    inc b                                         ; $71a8: $04
    ei                                            ; $71a9: $fb
    dec b                                         ; $71aa: $05
    push af                                       ; $71ab: $f5
    cp $e9                                        ; $71ac: $fe $e9
    ei                                            ; $71ae: $fb
    ld [$f9fe], a                                 ; $71af: $ea $fe $f9
    ld a, [$fff9]                                 ; $71b2: $fa $f9 $ff
    ld [bc], a                                    ; $71b5: $02
    ld e, $86                                     ; $71b6: $1e $86
    add hl, hl                                    ; $71b8: $29
    ld hl, $4151                                  ; $71b9: $21 $51 $41
    xor c                                         ; $71bc: $a9
    and c                                         ; $71bd: $a1
    ld [bc], a                                    ; $71be: $02
    ld b, b                                       ; $71bf: $40
    ld [bc], a                                    ; $71c0: $02
    ld l, b                                       ; $71c1: $68
    ld [bc], a                                    ; $71c2: $02
    ld [hl], l                                    ; $71c3: $75
    ld [bc], a                                    ; $71c4: $02
    ld a, [hl-]                                   ; $71c5: $3a
    add d                                         ; $71c6: $82
    ccf                                           ; $71c7: $3f
    cpl                                           ; $71c8: $2f
    ld [bc], a                                    ; $71c9: $02
    rra                                           ; $71ca: $1f
    adc h                                         ; $71cb: $8c
    ld h, b                                       ; $71cc: $60
    ld a, a                                       ; $71cd: $7f
    ld a, c                                       ; $71ce: $79
    ld a, a                                       ; $71cf: $7f
    cp a                                          ; $71d0: $bf
    rst $38                                       ; $71d1: $ff
    cp a                                          ; $71d2: $bf
    rst $38                                       ; $71d3: $ff
    cp a                                          ; $71d4: $bf
    rst $38                                       ; $71d5: $ff
    cp a                                          ; $71d6: $bf
    rst $38                                       ; $71d7: $ff
    ld [bc], a                                    ; $71d8: $02
    inc b                                         ; $71d9: $04
    add d                                         ; $71da: $82
    ld b, $02                                     ; $71db: $06 $02
    inc b                                         ; $71dd: $04
    inc bc                                        ; $71de: $03
    inc b                                         ; $71df: $04
    ld b, $04                                     ; $71e0: $06 $04
    inc b                                         ; $71e2: $04
    ld [bc], a                                    ; $71e3: $02
    nop                                           ; $71e4: $00
    ld [bc], a                                    ; $71e5: $02
    inc b                                         ; $71e6: $04
    inc b                                         ; $71e7: $04
    ld b, $8a                                     ; $71e8: $06 $8a
    dec b                                         ; $71ea: $05
    rlca                                          ; $71eb: $07
    dec b                                         ; $71ec: $05
    rlca                                          ; $71ed: $07
    dec b                                         ; $71ee: $05
    rlca                                          ; $71ef: $07
    ld sp, hl                                     ; $71f0: $f9
    rst $38                                       ; $71f1: $ff
    ret nc                                        ; $71f2: $d0

    ldh a, [rSC]                                  ; $71f3: $f0 $02
    ld a, a                                       ; $71f5: $7f
    ld [bc], a                                    ; $71f6: $02
    ccf                                           ; $71f7: $3f
    add c                                         ; $71f8: $81
    scf                                           ; $71f9: $37
    inc bc                                        ; $71fa: $03
    ccf                                           ; $71fb: $3f
    add [hl]                                      ; $71fc: $86
    daa                                           ; $71fd: $27
    ccf                                           ; $71fe: $3f
    add hl, sp                                    ; $71ff: $39
    ccf                                           ; $7200: $3f
    daa                                           ; $7201: $27
    ccf                                           ; $7202: $3f
    ld [bc], a                                    ; $7203: $02
    ld e, $10                                     ; $7204: $1e $10
    nop                                           ; $7206: $00
    add h                                         ; $7207: $84
    add hl, de                                    ; $7208: $19
    rra                                           ; $7209: $1f
    ld e, $12                                     ; $720a: $1e $12
    ld b, $1c                                     ; $720c: $06 $1c
    add c                                         ; $720e: $81
    inc b                                         ; $720f: $04
    inc bc                                        ; $7210: $03
    inc e                                         ; $7211: $1c
    stop                                          ; $7212: $10 $00
    rst $38                                       ; $7214: $ff
    rlca                                          ; $7215: $07
    ld bc, $08f9                                  ; $7216: $01 $f9 $08
    ld a, [c]                                     ; $7219: $f2
    ld bc, $fcea                                  ; $721a: $01 $ea $fc
    ld [bc], a                                    ; $721d: $02
    inc l                                         ; $721e: $2c
    ld [bc], a                                    ; $721f: $02
    ld e, h                                       ; $7220: $5c
    ld [bc], a                                    ; $7221: $02
    xor l                                         ; $7222: $ad
    ld [bc], a                                    ; $7223: $02
    ld a, a                                       ; $7224: $7f
    ld [bc], a                                    ; $7225: $02
    ld l, $02                                     ; $7226: $2e $02
    inc d                                         ; $7228: $14
    ld [bc], a                                    ; $7229: $02
    ld a, [bc]                                    ; $722a: $0a
    ld [de], a                                    ; $722b: $12
    nop                                           ; $722c: $00
    rst $38                                       ; $722d: $ff
    dec c                                         ; $722e: $0d
    inc b                                         ; $722f: $04
    ei                                            ; $7230: $fb
    dec b                                         ; $7231: $05
    push af                                       ; $7232: $f5
    cp $e8                                        ; $7233: $fe $e8
    ei                                            ; $7235: $fb
    jp hl                                         ; $7236: $e9


    rst $38                                       ; $7237: $ff
    ld hl, sp-$05                                 ; $7238: $f8 $fb
    ld hl, sp-$01                                 ; $723a: $f8 $ff
    ld [bc], a                                    ; $723c: $02
    ld e, $82                                     ; $723d: $1e $82
    add hl, sp                                    ; $723f: $39
    ld hl, $4102                                  ; $7240: $21 $02 $41
    add h                                         ; $7243: $84
    or d                                          ; $7244: $b2
    and d                                         ; $7245: $a2
    ld b, c                                       ; $7246: $41
    ld b, b                                       ; $7247: $40
    ld [bc], a                                    ; $7248: $02
    ld d, b                                       ; $7249: $50
    ld [bc], a                                    ; $724a: $02
    ld l, d                                       ; $724b: $6a
    ld [bc], a                                    ; $724c: $02
    dec [hl]                                      ; $724d: $35
    add h                                         ; $724e: $84
    ccf                                           ; $724f: $3f
    ld l, $1f                                     ; $7250: $2e $1f
    ld de, $3102                                  ; $7252: $11 $02 $31
    adc d                                         ; $7255: $8a
    ld l, [hl]                                    ; $7256: $6e
    ld a, a                                       ; $7257: $7f
    or c                                          ; $7258: $b1
    rst $38                                       ; $7259: $ff
    cp e                                          ; $725a: $bb
    rst $38                                       ; $725b: $ff
    cp a                                          ; $725c: $bf
    rst $38                                       ; $725d: $ff
    cp a                                          ; $725e: $bf
    rst $38                                       ; $725f: $ff
    ld [bc], a                                    ; $7260: $02
    ld [$0402], sp                                ; $7261: $08 $02 $04
    add c                                         ; $7264: $81
    ld c, $03                                     ; $7265: $0e $03
    ld b, $02                                     ; $7267: $06 $02
    inc b                                         ; $7269: $04
    ld [bc], a                                    ; $726a: $02
    inc c                                         ; $726b: $0c
    inc b                                         ; $726c: $04
    ld [$0002], sp                                ; $726d: $08 $02 $00
    ld [bc], a                                    ; $7270: $02
    ld [$0c02], sp                                ; $7271: $08 $02 $0c
    adc l                                         ; $7274: $8d
    ld a, [bc]                                    ; $7275: $0a
    ld c, $0a                                     ; $7276: $0e $0a
    ld c, $0a                                     ; $7278: $0e $0a
    ld c, $0a                                     ; $727a: $0e $0a
    ld c, $f9                                     ; $727c: $0e $f9
    rst $38                                       ; $727e: $ff
    or b                                          ; $727f: $b0
    ldh a, [$bf]                                  ; $7280: $f0 $bf
    ld [bc], a                                    ; $7282: $02
    rst $38                                       ; $7283: $ff
    add c                                         ; $7284: $81
    cp a                                          ; $7285: $bf
    ld b, $7f                                     ; $7286: $06 $7f
    add c                                         ; $7288: $81
    ld h, a                                       ; $7289: $67
    inc bc                                        ; $728a: $03
    ld a, a                                       ; $728b: $7f
    add d                                         ; $728c: $82
    jr c, @+$41                                   ; $728d: $38 $3f

    ld [bc], a                                    ; $728f: $02
    rra                                           ; $7290: $1f
    ld c, $00                                     ; $7291: $0e $00
    add h                                         ; $7293: $84
    dec bc                                        ; $7294: $0b
    rrca                                          ; $7295: $0f
    ld c, $0a                                     ; $7296: $0e $0a
    ld [bc], a                                    ; $7298: $02
    inc c                                         ; $7299: $0c
    inc b                                         ; $729a: $04
    ld [$0c04], sp                                ; $729b: $08 $04 $0c
    add d                                         ; $729e: $82
    inc b                                         ; $729f: $04
    inc c                                         ; $72a0: $0c
    ld [bc], a                                    ; $72a1: $02
    ld [$000c], sp                                ; $72a2: $08 $0c $00
    rst $38                                       ; $72a5: $ff
    rlca                                          ; $72a6: $07
    ld bc, $08f9                                  ; $72a7: $01 $f9 $08
    ld a, [c]                                     ; $72aa: $f2
    ld bc, $fce9                                  ; $72ab: $01 $e9 $fc
    ld [bc], a                                    ; $72ae: $02
    inc c                                         ; $72af: $0c
    ld [bc], a                                    ; $72b0: $02
    ld a, l                                       ; $72b1: $7d
    ld [bc], a                                    ; $72b2: $02
    sbc d                                         ; $72b3: $9a
    ld [bc], a                                    ; $72b4: $02
    ld a, l                                       ; $72b5: $7d
    ld [bc], a                                    ; $72b6: $02
    ld e, a                                       ; $72b7: $5f
    ld [bc], a                                    ; $72b8: $02
    ld a, [hl+]                                   ; $72b9: $2a
    ld [bc], a                                    ; $72ba: $02
    inc d                                         ; $72bb: $14
    inc b                                         ; $72bc: $04
    nop                                           ; $72bd: $00
    add c                                         ; $72be: $81
    inc e                                         ; $72bf: $1c
    dec c                                         ; $72c0: $0d
    nop                                           ; $72c1: $00
    rst $38                                       ; $72c2: $ff
    dec c                                         ; $72c3: $0d
    inc b                                         ; $72c4: $04
    ei                                            ; $72c5: $fb
    dec b                                         ; $72c6: $05
    push af                                       ; $72c7: $f5
    cp $e8                                        ; $72c8: $fe $e8
    ei                                            ; $72ca: $fb
    jp hl                                         ; $72cb: $e9


    rst $38                                       ; $72cc: $ff
    ld hl, sp-$06                                 ; $72cd: $f8 $fa
    ld hl, sp-$02                                 ; $72cf: $f8 $fe
    ld [bc], a                                    ; $72d1: $02
    rrca                                          ; $72d2: $0f
    sub d                                         ; $72d3: $92
    ld sp, $5230                                  ; $72d4: $31 $30 $52
    ld d, b                                       ; $72d7: $50
    ld sp, hl                                     ; $72d8: $f9
    xor c                                         ; $72d9: $a9
    cp $e6                                        ; $72da: $fe $e6
    ld a, a                                       ; $72dc: $7f
    ld a, e                                       ; $72dd: $7b
    ld a, a                                       ; $72de: $7f
    ld l, b                                       ; $72df: $68
    ccf                                           ; $72e0: $3f
    inc l                                         ; $72e1: $2c
    ccf                                           ; $72e2: $3f
    ld a, [hl+]                                   ; $72e3: $2a
    rra                                           ; $72e4: $1f
    dec d                                         ; $72e5: $15
    ld [bc], a                                    ; $72e6: $02
    ccf                                           ; $72e7: $3f
    adc d                                         ; $72e8: $8a
    ld d, l                                       ; $72e9: $55
    ld [hl], l                                    ; $72ea: $75
    ld e, e                                       ; $72eb: $5b
    ld a, e                                       ; $72ec: $7b
    or l                                          ; $72ed: $b5
    rst $38                                       ; $72ee: $ff
    cp e                                          ; $72ef: $bb
    rst $38                                       ; $72f0: $ff
    cp e                                          ; $72f1: $bb
    rst $38                                       ; $72f2: $ff
    ld [bc], a                                    ; $72f3: $02
    ld [$0402], sp                                ; $72f4: $08 $02 $04
    ld [bc], a                                    ; $72f7: $02
    ld [bc], a                                    ; $72f8: $02
    ld b, $0c                                     ; $72f9: $06 $0c
    inc b                                         ; $72fb: $04
    ld [$0002], sp                                ; $72fc: $08 $02 $00
    ld [bc], a                                    ; $72ff: $02
    ld [$0499], sp                                ; $7300: $08 $99 $04
    inc c                                         ; $7303: $0c
    inc b                                         ; $7304: $04
    inc c                                         ; $7305: $0c
    ld a, [bc]                                    ; $7306: $0a
    ld c, $0a                                     ; $7307: $0e $0a
    ld c, $0a                                     ; $7309: $0e $0a
    ld c, $b9                                     ; $730b: $0e $b9
    rst $38                                       ; $730d: $ff
    sbc b                                         ; $730e: $98
    ld hl, sp+$6d                                 ; $730f: $f8 $6d
    ld a, a                                       ; $7311: $7f
    ld a, l                                       ; $7312: $7d
    ld e, a                                       ; $7313: $5f
    ld a, [hl-]                                   ; $7314: $3a
    cpl                                           ; $7315: $2f
    ld a, [de]                                    ; $7316: $1a
    rra                                           ; $7317: $1f
    ld a, [hl-]                                   ; $7318: $3a
    ccf                                           ; $7319: $3f
    scf                                           ; $731a: $37
    inc bc                                        ; $731b: $03
    ccf                                           ; $731c: $3f
    add d                                         ; $731d: $82
    dec h                                         ; $731e: $25
    dec a                                         ; $731f: $3d
    ld [bc], a                                    ; $7320: $02
    jr jr_0e5_7331                                ; $7321: $18 $0e

    nop                                           ; $7323: $00
    add c                                         ; $7324: $81
    dec bc                                        ; $7325: $0b
    ld [bc], a                                    ; $7326: $02
    rrca                                          ; $7327: $0f
    add c                                         ; $7328: $81
    dec c                                         ; $7329: $0d
    ld [bc], a                                    ; $732a: $02
    ld c, $02                                     ; $732b: $0e $02
    inc c                                         ; $732d: $0c
    ld [bc], a                                    ; $732e: $02
    ld c, $81                                     ; $732f: $0e $81

jr_0e5_7331:
    ld b, $03                                     ; $7331: $06 $03
    ld c, $82                                     ; $7333: $0e $82
    ld [bc], a                                    ; $7335: $02
    ld c, $02                                     ; $7336: $0e $02
    inc c                                         ; $7338: $0c
    inc c                                         ; $7339: $0c
    nop                                           ; $733a: $00
    rst $38                                       ; $733b: $ff
    rlca                                          ; $733c: $07
    ld bc, $08f9                                  ; $733d: $01 $f9 $08
    ld a, [c]                                     ; $7340: $f2
    ld bc, $fde9                                  ; $7341: $01 $e9 $fd
    ld [bc], a                                    ; $7344: $02
    jr c, jr_0e5_7349                             ; $7345: $38 $02

    or [hl]                                       ; $7347: $b6
    ld [bc], a                                    ; $7348: $02

jr_0e5_7349:
    dec de                                        ; $7349: $1b
    ld [bc], a                                    ; $734a: $02
    inc b                                         ; $734b: $04
    inc c                                         ; $734c: $0c
    nop                                           ; $734d: $00
    add e                                         ; $734e: $83
    jr z, jr_0e5_7351                             ; $734f: $28 $00

jr_0e5_7351:
    db $10                                        ; $7351: $10
    add hl, bc                                    ; $7352: $09
    nop                                           ; $7353: $00
    rst $38                                       ; $7354: $ff
    dec c                                         ; $7355: $0d
    inc b                                         ; $7356: $04
    ei                                            ; $7357: $fb
    dec b                                         ; $7358: $05
    push af                                       ; $7359: $f5
    cp $e8                                        ; $735a: $fe $e8
    ei                                            ; $735c: $fb
    jp hl                                         ; $735d: $e9


    rst $38                                       ; $735e: $ff
    ld hl, sp-$05                                 ; $735f: $f8 $fb
    ld hl, sp-$02                                 ; $7361: $f8 $fe
    ld [bc], a                                    ; $7363: $02
    rrca                                          ; $7364: $0f
    add h                                         ; $7365: $84
    inc [hl]                                      ; $7366: $34
    jr nc, jr_0e5_73bd                            ; $7367: $30 $54

    ld d, b                                       ; $7369: $50
    ld [bc], a                                    ; $736a: $02
    cp e                                          ; $736b: $bb
    adc h                                         ; $736c: $8c
    db $fc                                        ; $736d: $fc
    db $e4                                        ; $736e: $e4
    ld [hl], a                                    ; $736f: $77
    ld [hl], e                                    ; $7370: $73
    ld a, a                                       ; $7371: $7f
    ld [hl], b                                    ; $7372: $70
    dec sp                                        ; $7373: $3b
    jr z, jr_0e5_73b3                             ; $7374: $28 $3d

    jr z, @+$21                                   ; $7376: $28 $1f

    dec d                                         ; $7378: $15
    ld [bc], a                                    ; $7379: $02
    rra                                           ; $737a: $1f
    ld [bc], a                                    ; $737b: $02
    dec [hl]                                      ; $737c: $35
    adc b                                         ; $737d: $88
    ld e, e                                       ; $737e: $5b
    ld a, e                                       ; $737f: $7b
    ld d, l                                       ; $7380: $55
    ld a, a                                       ; $7381: $7f
    cp e                                          ; $7382: $bb
    rst $38                                       ; $7383: $ff
    sbc e                                         ; $7384: $9b
    rst $38                                       ; $7385: $ff
    ld [bc], a                                    ; $7386: $02
    ld [$0402], sp                                ; $7387: $08 $02 $04
    ld [bc], a                                    ; $738a: $02
    ld b, $06                                     ; $738b: $06 $06
    inc c                                         ; $738d: $0c
    inc b                                         ; $738e: $04
    ld [$0002], sp                                ; $738f: $08 $02 $00
    inc b                                         ; $7392: $04
    inc c                                         ; $7393: $0c
    sub [hl]                                      ; $7394: $96
    ld a, [bc]                                    ; $7395: $0a
    ld c, $0a                                     ; $7396: $0e $0a
    ld c, $09                                     ; $7398: $0e $09
    rrca                                          ; $739a: $0f
    add hl, bc                                    ; $739b: $09
    rrca                                          ; $739c: $0f
    cp d                                          ; $739d: $ba
    cp $90                                        ; $739e: $fe $90
    ldh a, [$89]                                  ; $73a0: $f0 $89
    rst $38                                       ; $73a2: $ff
    ld a, l                                       ; $73a3: $7d
    ld c, a                                       ; $73a4: $4f
    ld a, [hl]                                    ; $73a5: $7e
    ld c, e                                       ; $73a6: $4b
    scf                                           ; $73a7: $37
    ccf                                           ; $73a8: $3f
    scf                                           ; $73a9: $37
    ccf                                           ; $73aa: $3f
    ld [bc], a                                    ; $73ab: $02
    ld a, a                                       ; $73ac: $7f
    add d                                         ; $73ad: $82
    ld l, [hl]                                    ; $73ae: $6e
    ld a, a                                       ; $73af: $7f
    ld [bc], a                                    ; $73b0: $02
    dec sp                                        ; $73b1: $3b
    ld [bc], a                                    ; $73b2: $02

jr_0e5_73b3:
    inc bc                                        ; $73b3: $03
    ld c, $00                                     ; $73b4: $0e $00
    add d                                         ; $73b6: $82
    rlca                                          ; $73b7: $07
    dec b                                         ; $73b8: $05
    inc b                                         ; $73b9: $04
    ld b, $81                                     ; $73ba: $06 $81
    ld [bc], a                                    ; $73bc: $02

jr_0e5_73bd:
    dec b                                         ; $73bd: $05
    ld b, $81                                     ; $73be: $06 $81
    ld [bc], a                                    ; $73c0: $02
    inc bc                                        ; $73c1: $03
    ld b, $02                                     ; $73c2: $06 $02
    inc b                                         ; $73c4: $04
    inc c                                         ; $73c5: $0c
    nop                                           ; $73c6: $00
    rst $38                                       ; $73c7: $ff
    rlca                                          ; $73c8: $07
    ld bc, $08f9                                  ; $73c9: $01 $f9 $08
    ld a, [c]                                     ; $73cc: $f2
    ld bc, $fce9                                  ; $73cd: $01 $e9 $fc
    ld [bc], a                                    ; $73d0: $02
    ld d, $02                                     ; $73d1: $16 $02
    ld d, a                                       ; $73d3: $57
    ld [bc], a                                    ; $73d4: $02
    adc c                                         ; $73d5: $89
    ld [bc], a                                    ; $73d6: $02
    ld b, $02                                     ; $73d7: $06 $02
    db $10                                        ; $73d9: $10
    ld [bc], a                                    ; $73da: $02
    nop                                           ; $73db: $00
    ld [bc], a                                    ; $73dc: $02
    ld [$0402], sp                                ; $73dd: $08 $02 $04
    inc b                                         ; $73e0: $04
    nop                                           ; $73e1: $00
    add e                                         ; $73e2: $83
    inc d                                         ; $73e3: $14
    nop                                           ; $73e4: $00
    ld [$0009], sp                                ; $73e5: $08 $09 $00
    rst $38                                       ; $73e8: $ff
    dec c                                         ; $73e9: $0d
    inc b                                         ; $73ea: $04
    ei                                            ; $73eb: $fb
    dec b                                         ; $73ec: $05
    push af                                       ; $73ed: $f5
    cp $e9                                        ; $73ee: $fe $e9
    ei                                            ; $73f0: $fb
    ld [$f9ff], a                                 ; $73f1: $ea $ff $f9
    ei                                            ; $73f4: $fb
    ld sp, hl                                     ; $73f5: $f9
    cp $02                                        ; $73f6: $fe $02
    rrca                                          ; $73f8: $0f
    add h                                         ; $73f9: $84
    inc [hl]                                      ; $73fa: $34
    jr nc, @+$56                                  ; $73fb: $30 $54

    ld d, b                                       ; $73fd: $50
    ld [bc], a                                    ; $73fe: $02
    or e                                          ; $73ff: $b3
    adc h                                         ; $7400: $8c
    db $fc                                        ; $7401: $fc
    db $ec                                        ; $7402: $ec
    ld [hl], a                                    ; $7403: $77
    ld [hl], e                                    ; $7404: $73
    ld a, a                                       ; $7405: $7f
    ld [hl], b                                    ; $7406: $70
    dec sp                                        ; $7407: $3b
    jr z, @+$41                                   ; $7408: $28 $3f

    ld a, [hl+]                                   ; $740a: $2a
    rra                                           ; $740b: $1f
    dec d                                         ; $740c: $15
    ld [bc], a                                    ; $740d: $02
    rra                                           ; $740e: $1f
    ld [bc], a                                    ; $740f: $02
    ld [hl], l                                    ; $7410: $75
    adc b                                         ; $7411: $88
    ld e, e                                       ; $7412: $5b
    ld a, e                                       ; $7413: $7b
    ld d, l                                       ; $7414: $55
    ld a, a                                       ; $7415: $7f
    cp e                                          ; $7416: $bb
    rst $38                                       ; $7417: $ff
    cp e                                          ; $7418: $bb
    rst $38                                       ; $7419: $ff
    ld [bc], a                                    ; $741a: $02
    ld [$0402], sp                                ; $741b: $08 $02 $04
    ld [bc], a                                    ; $741e: $02
    ld b, $06                                     ; $741f: $06 $06
    inc c                                         ; $7421: $0c
    inc b                                         ; $7422: $04
    ld [$0002], sp                                ; $7423: $08 $02 $00
    ld [bc], a                                    ; $7426: $02
    ld [$0c02], sp                                ; $7427: $08 $02 $0c
    sub [hl]                                      ; $742a: $96
    inc b                                         ; $742b: $04
    inc c                                         ; $742c: $0c
    ld a, [bc]                                    ; $742d: $0a
    ld c, $0a                                     ; $742e: $0e $0a
    ld c, $09                                     ; $7430: $0e $09
    rrca                                          ; $7432: $0f
    cp d                                          ; $7433: $ba
    cp $90                                        ; $7434: $fe $90
    ldh a, [$9b]                                  ; $7436: $f0 $9b
    rst $38                                       ; $7438: $ff
    db $fd                                        ; $7439: $fd
    sbc a                                         ; $743a: $9f
    cp $af                                        ; $743b: $fe $af
    halt                                          ; $743d: $76
    ld a, a                                       ; $743e: $7f
    ld [hl], a                                    ; $743f: $77
    ld a, a                                       ; $7440: $7f
    ld [bc], a                                    ; $7441: $02
    ccf                                           ; $7442: $3f
    add d                                         ; $7443: $82
    ld a, [de]                                    ; $7444: $1a
    dec de                                        ; $7445: $1b
    ld [bc], a                                    ; $7446: $02
    inc bc                                        ; $7447: $03
    stop                                          ; $7448: $10 $00
    add h                                         ; $744a: $84
    rlca                                          ; $744b: $07
    dec b                                         ; $744c: $05
    rlca                                          ; $744d: $07
    dec b                                         ; $744e: $05
    ld [bc], a                                    ; $744f: $02
    ld b, $02                                     ; $7450: $06 $02
    inc b                                         ; $7452: $04
    inc b                                         ; $7453: $04
    ld b, $81                                     ; $7454: $06 $81
    ld [bc], a                                    ; $7456: $02
    inc bc                                        ; $7457: $03
    ld b, $0e                                     ; $7458: $06 $0e
    nop                                           ; $745a: $00
    rst $38                                       ; $745b: $ff
    rlca                                          ; $745c: $07
    ld bc, $08f9                                  ; $745d: $01 $f9 $08
    ld a, [c]                                     ; $7460: $f2
    ld bc, $fcea                                  ; $7461: $01 $ea $fc
    ld [bc], a                                    ; $7464: $02
    ld d, $02                                     ; $7465: $16 $02
    ld d, a                                       ; $7467: $57
    ld [bc], a                                    ; $7468: $02
    sbc c                                         ; $7469: $99
    ld [bc], a                                    ; $746a: $02
    ld b, $02                                     ; $746b: $06 $02
    db $10                                        ; $746d: $10
    ld [bc], a                                    ; $746e: $02
    nop                                           ; $746f: $00
    ld [bc], a                                    ; $7470: $02
    ld [$0006], sp                                ; $7471: $08 $06 $00
    add e                                         ; $7474: $83
    inc d                                         ; $7475: $14
    nop                                           ; $7476: $00
    ld [$0009], sp                                ; $7477: $08 $09 $00
    rst $38                                       ; $747a: $ff
    dec c                                         ; $747b: $0d
    inc b                                         ; $747c: $04
    ei                                            ; $747d: $fb
    dec b                                         ; $747e: $05
    push af                                       ; $747f: $f5
    cp $e8                                        ; $7480: $fe $e8
    ei                                            ; $7482: $fb
    jp hl                                         ; $7483: $e9


    cp $f8                                        ; $7484: $fe $f8
    ld a, [$fff8]                                 ; $7486: $fa $f8 $ff
    ld [bc], a                                    ; $7489: $02
    rrca                                          ; $748a: $0f
    sub d                                         ; $748b: $92
    ld sp, $5230                                  ; $748c: $31 $30 $52
    ld d, b                                       ; $748f: $50
    ld sp, hl                                     ; $7490: $f9
    xor c                                         ; $7491: $a9
    cp $e6                                        ; $7492: $fe $e6
    ld a, a                                       ; $7494: $7f
    ld a, e                                       ; $7495: $7b
    ld a, a                                       ; $7496: $7f
    ld l, b                                       ; $7497: $68
    ccf                                           ; $7498: $3f
    inc l                                         ; $7499: $2c
    ccf                                           ; $749a: $3f
    ld a, [hl+]                                   ; $749b: $2a
    rra                                           ; $749c: $1f
    dec d                                         ; $749d: $15
    ld [bc], a                                    ; $749e: $02
    ccf                                           ; $749f: $3f
    ld [bc], a                                    ; $74a0: $02
    ld [hl], l                                    ; $74a1: $75
    adc b                                         ; $74a2: $88
    ld e, e                                       ; $74a3: $5b
    ld a, e                                       ; $74a4: $7b
    or l                                          ; $74a5: $b5
    rst $38                                       ; $74a6: $ff
    cp e                                          ; $74a7: $bb
    rst $38                                       ; $74a8: $ff
    cp e                                          ; $74a9: $bb
    rst $38                                       ; $74aa: $ff
    ld [bc], a                                    ; $74ab: $02
    inc b                                         ; $74ac: $04
    ld [bc], a                                    ; $74ad: $02
    ld [bc], a                                    ; $74ae: $02
    ld [bc], a                                    ; $74af: $02
    ld bc, $0606                                  ; $74b0: $01 $06 $06
    inc b                                         ; $74b3: $04
    inc b                                         ; $74b4: $04
    ld [bc], a                                    ; $74b5: $02
    nop                                           ; $74b6: $00
    ld [bc], a                                    ; $74b7: $02
    inc b                                         ; $74b8: $04
    sbc c                                         ; $74b9: $99
    ld [bc], a                                    ; $74ba: $02
    ld b, $02                                     ; $74bb: $06 $02
    ld b, $05                                     ; $74bd: $06 $05
    rlca                                          ; $74bf: $07
    dec b                                         ; $74c0: $05
    rlca                                          ; $74c1: $07
    dec b                                         ; $74c2: $05
    rlca                                          ; $74c3: $07
    db $dd                                        ; $74c4: $dd
    rst $38                                       ; $74c5: $ff
    sub b                                         ; $74c6: $90
    ldh a, [$9d]                                  ; $74c7: $f0 $9d
    rst $38                                       ; $74c9: $ff
    ld a, l                                       ; $74ca: $7d
    ld e, a                                       ; $74cb: $5f
    ld a, d                                       ; $74cc: $7a
    ld e, a                                       ; $74cd: $5f
    ld a, [hl-]                                   ; $74ce: $3a
    ccf                                           ; $74cf: $3f
    dec sp                                        ; $74d0: $3b
    ccf                                           ; $74d1: $3f
    scf                                           ; $74d2: $37
    inc bc                                        ; $74d3: $03
    ccf                                           ; $74d4: $3f
    ld [bc], a                                    ; $74d5: $02
    add hl, de                                    ; $74d6: $19
    stop                                          ; $74d7: $10 $00
    add e                                         ; $74d9: $83
    add hl, de                                    ; $74da: $19
    rra                                           ; $74db: $1f
    ld a, [de]                                    ; $74dc: $1a
    ld [bc], a                                    ; $74dd: $02
    ld e, $81                                     ; $74de: $1e $81
    ld [de], a                                    ; $74e0: $12
    ld [bc], a                                    ; $74e1: $02
    inc e                                         ; $74e2: $1c
    add c                                         ; $74e3: $81
    inc c                                         ; $74e4: $0c
    inc bc                                        ; $74e5: $03
    inc e                                         ; $74e6: $1c
    add c                                         ; $74e7: $81
    inc b                                         ; $74e8: $04
    inc bc                                        ; $74e9: $03
    inc e                                         ; $74ea: $1c
    ld c, $00                                     ; $74eb: $0e $00
    rst $38                                       ; $74ed: $ff
    rlca                                          ; $74ee: $07
    ld bc, $08f9                                  ; $74ef: $01 $f9 $08
    ld a, [c]                                     ; $74f2: $f2
    ld bc, $fde9                                  ; $74f3: $01 $e9 $fd
    ld [bc], a                                    ; $74f6: $02
    jr c, jr_0e5_74fb                             ; $74f7: $38 $02

    or [hl]                                       ; $74f9: $b6
    ld [bc], a                                    ; $74fa: $02

jr_0e5_74fb:
    dec de                                        ; $74fb: $1b
    ld [bc], a                                    ; $74fc: $02
    inc b                                         ; $74fd: $04
    inc c                                         ; $74fe: $0c
    nop                                           ; $74ff: $00
    add e                                         ; $7500: $83
    jr z, jr_0e5_7503                             ; $7501: $28 $00

jr_0e5_7503:
    db $10                                        ; $7503: $10
    add hl, bc                                    ; $7504: $09
    nop                                           ; $7505: $00
    rst $38                                       ; $7506: $ff
    dec c                                         ; $7507: $0d
    inc b                                         ; $7508: $04
    ei                                            ; $7509: $fb
    dec b                                         ; $750a: $05
    push af                                       ; $750b: $f5
    cp $e8                                        ; $750c: $fe $e8
    ld a, [$fee8]                                 ; $750e: $fa $e8 $fe
    ld hl, sp-$05                                 ; $7511: $f8 $fb
    ld hl, sp-$02                                 ; $7513: $f8 $fe
    ld [bc], a                                    ; $7515: $02
    rlca                                          ; $7516: $07
    add d                                         ; $7517: $82
    add hl, de                                    ; $7518: $19
    jr jr_0e5_751d                                ; $7519: $18 $02

    inc l                                         ; $751b: $2c
    adc [hl]                                      ; $751c: $8e

jr_0e5_751d:
    ld l, [hl]                                    ; $751d: $6e
    ld c, d                                       ; $751e: $4a
    ld a, a                                       ; $751f: $7f
    ld [hl], c                                    ; $7520: $71
    dec a                                         ; $7521: $3d
    inc a                                         ; $7522: $3c
    ccf                                           ; $7523: $3f
    ld [hl-], a                                   ; $7524: $32
    dec e                                         ; $7525: $1d
    ld de, $111b                                  ; $7526: $11 $1b $11
    rrca                                          ; $7529: $0f
    ld a, [bc]                                    ; $752a: $0a
    ld [bc], a                                    ; $752b: $02
    ccf                                           ; $752c: $3f
    ld [bc], a                                    ; $752d: $02
    ld a, [hl-]                                   ; $752e: $3a
    adc b                                         ; $752f: $88
    ld e, l                                       ; $7530: $5d
    ld a, l                                       ; $7531: $7d
    ld e, d                                       ; $7532: $5a
    ld a, a                                       ; $7533: $7f
    sbc l                                         ; $7534: $9d
    rst $38                                       ; $7535: $ff
    sbc l                                         ; $7536: $9d
    rst $38                                       ; $7537: $ff
    ld [bc], a                                    ; $7538: $02
    ld [$0402], sp                                ; $7539: $08 $02 $04
    add d                                         ; $753c: $82
    ld a, [bc]                                    ; $753d: $0a
    ld [bc], a                                    ; $753e: $02
    ld [bc], a                                    ; $753f: $02
    dec b                                         ; $7540: $05
    ld [bc], a                                    ; $7541: $02
    ld [bc], a                                    ; $7542: $02
    inc bc                                        ; $7543: $03
    ld c, $85                                     ; $7544: $0e $85
    ld b, $0c                                     ; $7546: $06 $0c
    inc b                                         ; $7548: $04
    inc c                                         ; $7549: $0c
    inc b                                         ; $754a: $04
    inc b                                         ; $754b: $04
    ld [$0c02], sp                                ; $754c: $08 $02 $0c
    sub e                                         ; $754f: $93
    ld a, [bc]                                    ; $7550: $0a
    ld c, $0a                                     ; $7551: $0e $0a
    ld c, $0d                                     ; $7553: $0e $0d
    rrca                                          ; $7555: $0f
    add hl, bc                                    ; $7556: $09
    rrca                                          ; $7557: $0f
    cp e                                          ; $7558: $bb
    rst $38                                       ; $7559: $ff
    ld a, [c]                                     ; $755a: $f2
    cp a                                          ; $755b: $bf
    ld [hl], a                                    ; $755c: $77
    ld a, [hl]                                    ; $755d: $7e
    ld l, l                                       ; $755e: $6d
    ld a, [hl]                                    ; $755f: $7e
    ld e, l                                       ; $7560: $5d
    ld a, a                                       ; $7561: $7f
    ld a, l                                       ; $7562: $7d
    inc bc                                        ; $7563: $03
    ld a, a                                       ; $7564: $7f
    add d                                         ; $7565: $82
    ld c, [hl]                                    ; $7566: $4e
    ld a, a                                       ; $7567: $7f
    ld [bc], a                                    ; $7568: $02
    ld a, e                                       ; $7569: $7b
    ld [bc], a                                    ; $756a: $02
    jr c, jr_0e5_7579                             ; $756b: $38 $0c

    nop                                           ; $756d: $00
    adc b                                         ; $756e: $88
    ld bc, $0107                                  ; $756f: $01 $07 $01
    rlca                                          ; $7572: $07
    ld b, $02                                     ; $7573: $06 $02
    ld b, $02                                     ; $7575: $06 $02
    inc b                                         ; $7577: $04
    inc b                                         ; $7578: $04

jr_0e5_7579:
    inc b                                         ; $7579: $04
    ld b, $02                                     ; $757a: $06 $02
    inc b                                         ; $757c: $04
    ld c, $00                                     ; $757d: $0e $00
    rst $38                                       ; $757f: $ff
    rlca                                          ; $7580: $07
    ld bc, $08f9                                  ; $7581: $01 $f9 $08
    ld a, [c]                                     ; $7584: $f2
    ld bc, $fde9                                  ; $7585: $01 $e9 $fd
    ld [bc], a                                    ; $7588: $02
    inc [hl]                                      ; $7589: $34
    ld [bc], a                                    ; $758a: $02
    sbc d                                         ; $758b: $9a
    ld [bc], a                                    ; $758c: $02
    adc l                                         ; $758d: $8d
    ld [bc], a                                    ; $758e: $02
    ld b, $02                                     ; $758f: $06 $02
    db $10                                        ; $7591: $10
    ld [bc], a                                    ; $7592: $02
    nop                                           ; $7593: $00
    ld [bc], a                                    ; $7594: $02
    db $10                                        ; $7595: $10
    ld [bc], a                                    ; $7596: $02
    jr nz, jr_0e5_759d                            ; $7597: $20 $04

    nop                                           ; $7599: $00
    add e                                         ; $759a: $83
    jr z, jr_0e5_759d                             ; $759b: $28 $00

jr_0e5_759d:
    db $10                                        ; $759d: $10
    add hl, bc                                    ; $759e: $09
    nop                                           ; $759f: $00
    rst $38                                       ; $75a0: $ff
    dec c                                         ; $75a1: $0d
    inc b                                         ; $75a2: $04
    ei                                            ; $75a3: $fb
    dec b                                         ; $75a4: $05
    push af                                       ; $75a5: $f5
    cp $e9                                        ; $75a6: $fe $e9
    ld a, [$fee9]                                 ; $75a8: $fa $e9 $fe
    ld sp, hl                                     ; $75ab: $f9
    ei                                            ; $75ac: $fb
    ld sp, hl                                     ; $75ad: $f9
    cp $02                                        ; $75ae: $fe $02
    rlca                                          ; $75b0: $07
    add d                                         ; $75b1: $82
    add hl, de                                    ; $75b2: $19
    jr jr_0e5_75b7                                ; $75b3: $18 $02

    inc l                                         ; $75b5: $2c
    adc [hl]                                      ; $75b6: $8e

jr_0e5_75b7:
    ld l, [hl]                                    ; $75b7: $6e
    ld c, d                                       ; $75b8: $4a
    ld a, a                                       ; $75b9: $7f
    ld [hl], c                                    ; $75ba: $71
    dec a                                         ; $75bb: $3d
    inc a                                         ; $75bc: $3c
    ccf                                           ; $75bd: $3f
    ld [hl-], a                                   ; $75be: $32
    dec e                                         ; $75bf: $1d
    ld de, $151f                                  ; $75c0: $11 $1f $15
    rrca                                          ; $75c3: $0f
    ld a, [bc]                                    ; $75c4: $0a
    ld [bc], a                                    ; $75c5: $02
    rra                                           ; $75c6: $1f
    ld [bc], a                                    ; $75c7: $02
    ld a, [hl-]                                   ; $75c8: $3a
    adc b                                         ; $75c9: $88
    dec l                                         ; $75ca: $2d
    dec a                                         ; $75cb: $3d
    ld e, d                                       ; $75cc: $5a
    ld a, a                                       ; $75cd: $7f
    ld e, l                                       ; $75ce: $5d
    ld a, a                                       ; $75cf: $7f
    sbc l                                         ; $75d0: $9d
    rst $38                                       ; $75d1: $ff
    ld [bc], a                                    ; $75d2: $02
    ld [$0402], sp                                ; $75d3: $08 $02 $04
    add d                                         ; $75d6: $82
    ld a, [bc]                                    ; $75d7: $0a
    ld [bc], a                                    ; $75d8: $02
    ld [bc], a                                    ; $75d9: $02
    dec b                                         ; $75da: $05
    ld [bc], a                                    ; $75db: $02
    ld [bc], a                                    ; $75dc: $02
    inc bc                                        ; $75dd: $03
    ld c, $85                                     ; $75de: $0e $85
    ld b, $0c                                     ; $75e0: $06 $0c
    inc b                                         ; $75e2: $04
    inc c                                         ; $75e3: $0c
    inc b                                         ; $75e4: $04
    inc b                                         ; $75e5: $04
    ld [$0e02], sp                                ; $75e6: $08 $02 $0e
    sub e                                         ; $75e9: $93
    ld a, [bc]                                    ; $75ea: $0a
    ld c, $0a                                     ; $75eb: $0e $0a
    ld c, $0d                                     ; $75ed: $0e $0d
    rrca                                          ; $75ef: $0f
    dec c                                         ; $75f0: $0d
    rrca                                          ; $75f1: $0f
    cp e                                          ; $75f2: $bb
    rst $38                                       ; $75f3: $ff
    ei                                            ; $75f4: $fb
    cp a                                          ; $75f5: $bf
    rst $30                                       ; $75f6: $f7
    cp a                                          ; $75f7: $bf
    ld l, a                                       ; $75f8: $6f
    ld a, a                                       ; $75f9: $7f
    dec l                                         ; $75fa: $2d
    ccf                                           ; $75fb: $3f
    ld a, l                                       ; $75fc: $7d
    inc bc                                        ; $75fd: $03
    ld a, a                                       ; $75fe: $7f
    add d                                         ; $75ff: $82
    ld c, e                                       ; $7600: $4b
    ld a, e                                       ; $7601: $7b
    ld [bc], a                                    ; $7602: $02
    ld a, b                                       ; $7603: $78
    ld c, $00                                     ; $7604: $0e $00
    add e                                         ; $7606: $83
    ld bc, $0107                                  ; $7607: $01 $07 $01
    ld [bc], a                                    ; $760a: $02
    rlca                                          ; $760b: $07
    add e                                         ; $760c: $83
    ld bc, $0507                                  ; $760d: $01 $07 $05
    inc b                                         ; $7610: $04
    ld b, $02                                     ; $7611: $06 $02
    inc b                                         ; $7613: $04
    ld [de], a                                    ; $7614: $12
    nop                                           ; $7615: $00
    rst $38                                       ; $7616: $ff
    rlca                                          ; $7617: $07
    ld bc, $08f9                                  ; $7618: $01 $f9 $08
    ld a, [c]                                     ; $761b: $f2
    ld bc, $fdea                                  ; $761c: $01 $ea $fd
    ld [bc], a                                    ; $761f: $02
    inc [hl]                                      ; $7620: $34
    ld [bc], a                                    ; $7621: $02
    sbc d                                         ; $7622: $9a
    ld [bc], a                                    ; $7623: $02
    adc l                                         ; $7624: $8d
    ld [bc], a                                    ; $7625: $02
    ld b, $02                                     ; $7626: $06 $02
    db $10                                        ; $7628: $10
    ld [bc], a                                    ; $7629: $02
    nop                                           ; $762a: $00
    ld [bc], a                                    ; $762b: $02
    db $10                                        ; $762c: $10
    ld b, $00                                     ; $762d: $06 $00
    add e                                         ; $762f: $83
    jr z, jr_0e5_7632                             ; $7630: $28 $00

jr_0e5_7632:
    db $10                                        ; $7632: $10
    add hl, bc                                    ; $7633: $09
    nop                                           ; $7634: $00
    rst $38                                       ; $7635: $ff
    dec c                                         ; $7636: $0d
    inc b                                         ; $7637: $04
    ei                                            ; $7638: $fb
    dec b                                         ; $7639: $05
    push af                                       ; $763a: $f5
    cp $e8                                        ; $763b: $fe $e8
    ei                                            ; $763d: $fb
    jp hl                                         ; $763e: $e9


    rst $38                                       ; $763f: $ff
    ld hl, sp-$06                                 ; $7640: $f8 $fa
    ld hl, sp-$01                                 ; $7642: $f8 $ff
    ld [bc], a                                    ; $7644: $02
    rrca                                          ; $7645: $0f
    sub d                                         ; $7646: $92
    ld sp, $5230                                  ; $7647: $31 $30 $52
    ld d, b                                       ; $764a: $50
    ld sp, hl                                     ; $764b: $f9
    xor c                                         ; $764c: $a9
    cp $e6                                        ; $764d: $fe $e6
    ld a, a                                       ; $764f: $7f
    ld a, e                                       ; $7650: $7b
    ld a, a                                       ; $7651: $7f
    ld l, b                                       ; $7652: $68
    ccf                                           ; $7653: $3f
    inc l                                         ; $7654: $2c
    ccf                                           ; $7655: $3f
    ld a, [hl+]                                   ; $7656: $2a
    rra                                           ; $7657: $1f
    dec d                                         ; $7658: $15
    ld [bc], a                                    ; $7659: $02
    ccf                                           ; $765a: $3f
    adc d                                         ; $765b: $8a
    ld d, l                                       ; $765c: $55
    ld [hl], l                                    ; $765d: $75
    ld e, e                                       ; $765e: $5b
    ld a, e                                       ; $765f: $7b
    or l                                          ; $7660: $b5
    rst $38                                       ; $7661: $ff
    cp e                                          ; $7662: $bb
    rst $38                                       ; $7663: $ff
    cp e                                          ; $7664: $bb
    rst $38                                       ; $7665: $ff
    ld [bc], a                                    ; $7666: $02
    ld [$0402], sp                                ; $7667: $08 $02 $04
    ld [bc], a                                    ; $766a: $02
    ld [bc], a                                    ; $766b: $02
    ld b, $0c                                     ; $766c: $06 $0c
    inc b                                         ; $766e: $04
    ld [$0002], sp                                ; $766f: $08 $02 $00
    ld [bc], a                                    ; $7672: $02
    ld [$0c02], sp                                ; $7673: $08 $02 $0c
    sub l                                         ; $7676: $95
    inc b                                         ; $7677: $04
    inc c                                         ; $7678: $0c
    ld a, [bc]                                    ; $7679: $0a
    ld c, $0a                                     ; $767a: $0e $0a
    ld c, $0a                                     ; $767c: $0e $0a
    ld c, $b9                                     ; $767e: $0e $b9
    rst $38                                       ; $7680: $ff
    ld e, b                                       ; $7681: $58
    ld a, b                                       ; $7682: $78
    sbc l                                         ; $7683: $9d
    rst $38                                       ; $7684: $ff
    ld e, l                                       ; $7685: $5d
    ld a, a                                       ; $7686: $7f

jr_0e5_7687:
    ld a, d                                       ; $7687: $7a
    ld c, a                                       ; $7688: $4f
    ld a, [hl-]                                   ; $7689: $3a
    scf                                           ; $768a: $37
    ld [hl], $03                                  ; $768b: $36 $03
    ccf                                           ; $768d: $3f
    add d                                         ; $768e: $82
    daa                                           ; $768f: $27
    ccf                                           ; $7690: $3f
    ld [bc], a                                    ; $7691: $02
    inc a                                         ; $7692: $3c
    stop                                          ; $7693: $10 $00
    add h                                         ; $7695: $84
    add hl, de                                    ; $7696: $19
    rra                                           ; $7697: $1f
    ld e, $1a                                     ; $7698: $1e $1a
    ld b, $1c                                     ; $769a: $06 $1c
    add c                                         ; $769c: $81
    inc c                                         ; $769d: $0c
    inc bc                                        ; $769e: $03
    inc e                                         ; $769f: $1c
    ld [bc], a                                    ; $76a0: $02
    jr jr_0e5_76b1                                ; $76a1: $18 $0e

    nop                                           ; $76a3: $00
    rst $38                                       ; $76a4: $ff
    rlca                                          ; $76a5: $07
    ld bc, $08f9                                  ; $76a6: $01 $f9 $08
    ld a, [c]                                     ; $76a9: $f2
    ld bc, $fde9                                  ; $76aa: $01 $e9 $fd
    ld [bc], a                                    ; $76ad: $02
    jr c, jr_0e5_76b2                             ; $76ae: $38 $02

    or [hl]                                       ; $76b0: $b6

jr_0e5_76b1:
    ld [bc], a                                    ; $76b1: $02

jr_0e5_76b2:
    dec de                                        ; $76b2: $1b
    ld [bc], a                                    ; $76b3: $02
    inc b                                         ; $76b4: $04
    inc c                                         ; $76b5: $0c
    nop                                           ; $76b6: $00
    add e                                         ; $76b7: $83
    jr z, jr_0e5_76ba                             ; $76b8: $28 $00

jr_0e5_76ba:
    db $10                                        ; $76ba: $10
    add hl, bc                                    ; $76bb: $09
    nop                                           ; $76bc: $00
    rst $38                                       ; $76bd: $ff
    dec c                                         ; $76be: $0d
    inc b                                         ; $76bf: $04
    ei                                            ; $76c0: $fb
    dec b                                         ; $76c1: $05
    push af                                       ; $76c2: $f5
    cp $e8                                        ; $76c3: $fe $e8
    db $fc                                        ; $76c5: $fc
    jp hl                                         ; $76c6: $e9


    rst $38                                       ; $76c7: $ff
    ld hl, sp-$04                                 ; $76c8: $f8 $fc
    ld hl, sp-$03                                 ; $76ca: $f8 $fd
    ld [bc], a                                    ; $76cc: $02
    rra                                           ; $76cd: $1f
    add d                                         ; $76ce: $82
    inc [hl]                                      ; $76cf: $34
    jr nc, jr_0e5_76d4                            ; $76d0: $30 $02

    ld e, l                                       ; $76d2: $5d
    adc [hl]                                      ; $76d3: $8e

jr_0e5_76d4:
    xor $ca                                       ; $76d4: $ee $ca
    rst $08                                       ; $76d6: $cf
    adc c                                         ; $76d7: $89
    rst $38                                       ; $76d8: $ff
    or $ff                                        ; $76d9: $f6 $ff
    ret nc                                        ; $76db: $d0

    ld a, a                                       ; $76dc: $7f
    ld [hl], b                                    ; $76dd: $70
    ccf                                           ; $76de: $3f
    ld [hl-], a                                   ; $76df: $32
    rra                                           ; $76e0: $1f
    add hl, de                                    ; $76e1: $19
    ld [bc], a                                    ; $76e2: $02
    ccf                                           ; $76e3: $3f
    ld [bc], a                                    ; $76e4: $02
    ld a, d                                       ; $76e5: $7a
    adc b                                         ; $76e6: $88
    xor l                                         ; $76e7: $ad
    db $fd                                        ; $76e8: $fd
    xor e                                         ; $76e9: $ab
    rst $38                                       ; $76ea: $ff
    ld h, l                                       ; $76eb: $65
    ld a, a                                       ; $76ec: $7f
    dec l                                         ; $76ed: $2d
    ccf                                           ; $76ee: $3f
    ld [bc], a                                    ; $76ef: $02
    inc b                                         ; $76f0: $04
    ld [bc], a                                    ; $76f1: $02
    ld [bc], a                                    ; $76f2: $02
    ld [bc], a                                    ; $76f3: $02
    dec b                                         ; $76f4: $05
    ld [bc], a                                    ; $76f5: $02
    ld b, $02                                     ; $76f6: $06 $02
    inc b                                         ; $76f8: $04
    add d                                         ; $76f9: $82
    ld b, $02                                     ; $76fa: $06 $02
    ld b, $04                                     ; $76fc: $06 $04
    inc c                                         ; $76fe: $0c
    nop                                           ; $76ff: $00
    add d                                         ; $7700: $82
    jr z, @-$06                                   ; $7701: $28 $f8

    ld [bc], a                                    ; $7703: $02
    jr nz, jr_0e5_7687                            ; $7704: $20 $81

    dec l                                         ; $7706: $2d

jr_0e5_7707:
    ld [bc], a                                    ; $7707: $02
    ccf                                           ; $7708: $3f
    adc l                                         ; $7709: $8d
    daa                                           ; $770a: $27
    ld a, a                                       ; $770b: $7f
    ld [hl], h                                    ; $770c: $74
    ld a, l                                       ; $770d: $7d
    ld a, a                                       ; $770e: $7f
    ld a, l                                       ; $770f: $7d
    ld a, a                                       ; $7710: $7f
    ei                                            ; $7711: $fb
    rst $38                                       ; $7712: $ff
    cp a                                          ; $7713: $bf
    rst $38                                       ; $7714: $ff
    sbc h                                         ; $7715: $9c
    rst $38                                       ; $7716: $ff
    ld [bc], a                                    ; $7717: $02
    ld a, a                                       ; $7718: $7f
    ld [de], a                                    ; $7719: $12
    nop                                           ; $771a: $00
    ld [bc], a                                    ; $771b: $02
    ld bc, $0008                                  ; $771c: $01 $08 $00
    inc b                                         ; $771f: $04
    ld bc, $000c                                  ; $7720: $01 $0c $00
    rst $38                                       ; $7723: $ff
    rlca                                          ; $7724: $07
    ld bc, $08f9                                  ; $7725: $01 $f9 $08
    ld a, [c]                                     ; $7728: $f2
    ld bc, $fee9                                  ; $7729: $01 $e9 $fe
    ld [bc], a                                    ; $772c: $02
    inc l                                         ; $772d: $2c
    ld [bc], a                                    ; $772e: $02
    adc d                                         ; $772f: $8a
    ld [bc], a                                    ; $7730: $02
    ld b, l                                       ; $7731: $45
    ld [bc], a                                    ; $7732: $02
    ret nz                                        ; $7733: $c0

    inc c                                         ; $7734: $0c
    nop                                           ; $7735: $00
    add e                                         ; $7736: $83
    stop                                          ; $7737: $10 $00
    ld [$0009], sp                                ; $7739: $08 $09 $00
    rst $38                                       ; $773c: $ff
    dec c                                         ; $773d: $0d
    inc b                                         ; $773e: $04
    ei                                            ; $773f: $fb
    dec b                                         ; $7740: $05
    push af                                       ; $7741: $f5
    cp $e8                                        ; $7742: $fe $e8
    db $fc                                        ; $7744: $fc
    jp hl                                         ; $7745: $e9


    rst $38                                       ; $7746: $ff
    ld hl, sp-$05                                 ; $7747: $f8 $fb
    ld hl, sp+$01                                 ; $7749: $f8 $01
    ld [bc], a                                    ; $774b: $02
    rra                                           ; $774c: $1f
    add d                                         ; $774d: $82
    inc l                                         ; $774e: $2c
    jr nz, jr_0e5_7753                            ; $774f: $20 $02

    ld e, h                                       ; $7751: $5c
    add h                                         ; $7752: $84

jr_0e5_7753:
    adc $8a                                       ; $7753: $ce $8a
    rst $18                                       ; $7755: $df
    sub c                                         ; $7756: $91
    ld [bc], a                                    ; $7757: $02
    or $88                                        ; $7758: $f6 $88
    ld a, a                                       ; $775a: $7f
    ld d, b                                       ; $775b: $50
    ld a, a                                       ; $775c: $7f
    ld [hl], b                                    ; $775d: $70
    ccf                                           ; $775e: $3f
    ld [hl-], a                                   ; $775f: $32
    rra                                           ; $7760: $1f
    add hl, de                                    ; $7761: $19
    ld [bc], a                                    ; $7762: $02
    ccf                                           ; $7763: $3f
    ld [bc], a                                    ; $7764: $02
    ld a, d                                       ; $7765: $7a
    adc b                                         ; $7766: $88
    xor l                                         ; $7767: $ad
    db $fd                                        ; $7768: $fd
    xor e                                         ; $7769: $ab
    rst $38                                       ; $776a: $ff
    ld h, l                                       ; $776b: $65
    ld a, a                                       ; $776c: $7f
    dec [hl]                                      ; $776d: $35
    ccf                                           ; $776e: $3f
    ld [bc], a                                    ; $776f: $02
    inc b                                         ; $7770: $04
    ld [bc], a                                    ; $7771: $02
    ld [bc], a                                    ; $7772: $02
    ld [bc], a                                    ; $7773: $02
    dec b                                         ; $7774: $05
    ld [bc], a                                    ; $7775: $02
    ld b, $02                                     ; $7776: $06 $02
    inc b                                         ; $7778: $04
    add d                                         ; $7779: $82
    ld b, $02                                     ; $777a: $06 $02
    ld b, $04                                     ; $777c: $06 $04
    inc c                                         ; $777e: $0c
    nop                                           ; $777f: $00
    add d                                         ; $7780: $82
    sbc e                                         ; $7781: $9b
    ei                                            ; $7782: $fb
    ld [bc], a                                    ; $7783: $02
    jr nc, jr_0e5_7707                            ; $7784: $30 $81

    inc a                                         ; $7786: $3c
    ld [bc], a                                    ; $7787: $02
    ccf                                           ; $7788: $3f
    add c                                         ; $7789: $81
    ld a, $02                                     ; $778a: $3e $02
    ccf                                           ; $778c: $3f
    adc d                                         ; $778d: $8a
    ld a, [hl]                                    ; $778e: $7e
    ld a, a                                       ; $778f: $7f
    ld a, [hl]                                    ; $7790: $7e
    ld a, a                                       ; $7791: $7f
    cp h                                          ; $7792: $bc
    rst $38                                       ; $7793: $ff
    rst $18                                       ; $7794: $df
    rst $38                                       ; $7795: $ff
    ld h, [hl]                                    ; $7796: $66
    ld a, [hl]                                    ; $7797: $7e
    ld [bc], a                                    ; $7798: $02
    inc a                                         ; $7799: $3c
    ld c, $00                                     ; $779a: $0e $00
    add [hl]                                      ; $779c: $86
    ld a, $32                                     ; $779d: $3e $32
    inc a                                         ; $779f: $3c
    inc c                                         ; $77a0: $0c
    jr nc, @+$12                                  ; $77a1: $30 $10

    ld [bc], a                                    ; $77a3: $02
    jr c, jr_0e5_77a8                             ; $77a4: $38 $02

    ld a, $84                                     ; $77a6: $3e $84

jr_0e5_77a8:
    add hl, sp                                    ; $77a8: $39
    ccf                                           ; $77a9: $3f
    ld [hl], $3e                                  ; $77aa: $36 $3e
    ld [bc], a                                    ; $77ac: $02
    jr c, jr_0e5_77bd                             ; $77ad: $38 $0e

    nop                                           ; $77af: $00
    rst $38                                       ; $77b0: $ff
    rlca                                          ; $77b1: $07
    ld bc, $08f9                                  ; $77b2: $01 $f9 $08
    ld a, [c]                                     ; $77b5: $f2
    ld bc, $fee9                                  ; $77b6: $01 $e9 $fe
    ld [bc], a                                    ; $77b9: $02
    ld c, h                                       ; $77ba: $4c
    ld [bc], a                                    ; $77bb: $02
    adc [hl]                                      ; $77bc: $8e

jr_0e5_77bd:
    ld [bc], a                                    ; $77bd: $02
    push bc                                       ; $77be: $c5
    ld [bc], a                                    ; $77bf: $02
    add b                                         ; $77c0: $80
    ld [bc], a                                    ; $77c1: $02
    inc h                                         ; $77c2: $24
    ld a, [bc]                                    ; $77c3: $0a
    nop                                           ; $77c4: $00
    add e                                         ; $77c5: $83
    stop                                          ; $77c6: $10 $00
    ld [$0009], sp                                ; $77c8: $08 $09 $00
    rst $38                                       ; $77cb: $ff
    dec c                                         ; $77cc: $0d
    inc b                                         ; $77cd: $04
    ei                                            ; $77ce: $fb
    dec b                                         ; $77cf: $05
    push af                                       ; $77d0: $f5
    cp $e9                                        ; $77d1: $fe $e9
    db $fc                                        ; $77d3: $fc
    ld [$f9ff], a                                 ; $77d4: $ea $ff $f9
    ei                                            ; $77d7: $fb
    ld sp, hl                                     ; $77d8: $f9
    rst $38                                       ; $77d9: $ff
    ld [bc], a                                    ; $77da: $02
    rra                                           ; $77db: $1f
    add d                                         ; $77dc: $82
    inc l                                         ; $77dd: $2c
    jr nz, jr_0e5_77e2                            ; $77de: $20 $02

    ld e, h                                       ; $77e0: $5c
    add h                                         ; $77e1: $84

jr_0e5_77e2:
    adc $8a                                       ; $77e2: $ce $8a
    rst $18                                       ; $77e4: $df
    sub c                                         ; $77e5: $91
    ld [bc], a                                    ; $77e6: $02
    or $94                                        ; $77e7: $f6 $94
    ld a, a                                       ; $77e9: $7f
    ld d, b                                       ; $77ea: $50
    ld a, a                                       ; $77eb: $7f
    ld [hl], b                                    ; $77ec: $70
    ccf                                           ; $77ed: $3f
    ld [hl-], a                                   ; $77ee: $32
    ccf                                           ; $77ef: $3f
    add hl, sp                                    ; $77f0: $39
    rst $18                                       ; $77f1: $df
    rst $38                                       ; $77f2: $ff
    cp d                                          ; $77f3: $ba
    ld a, [$7d6d]                                 ; $77f4: $fa $6d $7d
    dec hl                                        ; $77f7: $2b
    ccf                                           ; $77f8: $3f
    dec l                                         ; $77f9: $2d
    ccf                                           ; $77fa: $3f
    dec h                                         ; $77fb: $25
    ccf                                           ; $77fc: $3f
    ld [bc], a                                    ; $77fd: $02
    inc b                                         ; $77fe: $04
    ld [bc], a                                    ; $77ff: $02
    ld [bc], a                                    ; $7800: $02
    ld [bc], a                                    ; $7801: $02
    dec b                                         ; $7802: $05
    ld [bc], a                                    ; $7803: $02
    ld b, $02                                     ; $7804: $06 $02
    inc b                                         ; $7806: $04
    add d                                         ; $7807: $82
    ld b, $02                                     ; $7808: $06 $02
    ld b, $04                                     ; $780a: $06 $04
    inc c                                         ; $780c: $0c
    nop                                           ; $780d: $00
    add d                                         ; $780e: $82
    sbc b                                         ; $780f: $98
    ld hl, sp+$02                                 ; $7810: $f8 $02
    db $10                                        ; $7812: $10
    add h                                         ; $7813: $84
    ccf                                           ; $7814: $3f
    inc a                                         ; $7815: $3c
    ccf                                           ; $7816: $3f
    ld a, $02                                     ; $7817: $3e $02
    ld a, a                                       ; $7819: $7f
    adc b                                         ; $781a: $88
    cp [hl]                                       ; $781b: $be
    rst $38                                       ; $781c: $ff
    db $fd                                        ; $781d: $fd
    rst $38                                       ; $781e: $ff
    ld e, e                                       ; $781f: $5b
    ld a, a                                       ; $7820: $7f
    ld l, a                                       ; $7821: $6f
    ld a, a                                       ; $7822: $7f
    ld [bc], a                                    ; $7823: $02
    jr nc, jr_0e5_7836                            ; $7824: $30 $10

    nop                                           ; $7826: $00
    ld [bc], a                                    ; $7827: $02
    ld c, $82                                     ; $7828: $0e $82

jr_0e5_782a:
    rrca                                          ; $782a: $0f
    add hl, bc                                    ; $782b: $09
    ld [bc], a                                    ; $782c: $02
    ld c, $02                                     ; $782d: $0e $02
    inc c                                         ; $782f: $0c
    ld [bc], a                                    ; $7830: $02
    ld c, $81                                     ; $7831: $0e $81
    dec c                                         ; $7833: $0d
    inc bc                                        ; $7834: $03
    rrca                                          ; $7835: $0f

jr_0e5_7836:
    stop                                          ; $7836: $10 $00
    rst $38                                       ; $7838: $ff
    rlca                                          ; $7839: $07
    ld bc, $08f9                                  ; $783a: $01 $f9 $08
    ld a, [c]                                     ; $783d: $f2
    ld bc, $feea                                  ; $783e: $01 $ea $fe
    ld [bc], a                                    ; $7841: $02
    ld c, h                                       ; $7842: $4c
    ld [bc], a                                    ; $7843: $02
    adc [hl]                                      ; $7844: $8e
    ld [bc], a                                    ; $7845: $02
    push bc                                       ; $7846: $c5
    ld [bc], a                                    ; $7847: $02
    add b                                         ; $7848: $80
    ld [bc], a                                    ; $7849: $02
    inc h                                         ; $784a: $24
    ld a, [bc]                                    ; $784b: $0a
    nop                                           ; $784c: $00
    add e                                         ; $784d: $83
    stop                                          ; $784e: $10 $00
    ld [$0009], sp                                ; $7850: $08 $09 $00
    rst $38                                       ; $7853: $ff
    dec c                                         ; $7854: $0d
    inc b                                         ; $7855: $04
    ei                                            ; $7856: $fb
    dec b                                         ; $7857: $05
    push af                                       ; $7858: $f5
    cp $e8                                        ; $7859: $fe $e8
    db $fc                                        ; $785b: $fc
    jp hl                                         ; $785c: $e9


    rst $38                                       ; $785d: $ff
    ld hl, sp-$04                                 ; $785e: $f8 $fc
    ld hl, sp-$03                                 ; $7860: $f8 $fd
    ld [bc], a                                    ; $7862: $02
    rra                                           ; $7863: $1f
    add d                                         ; $7864: $82
    inc [hl]                                      ; $7865: $34
    jr nc, jr_0e5_786a                            ; $7866: $30 $02

    ld e, l                                       ; $7868: $5d
    adc [hl]                                      ; $7869: $8e

jr_0e5_786a:
    xor $ca                                       ; $786a: $ee $ca
    rst $18                                       ; $786c: $df
    sbc c                                         ; $786d: $99
    rst $38                                       ; $786e: $ff
    or $ff                                        ; $786f: $f6 $ff
    ret nc                                        ; $7871: $d0

    ld a, a                                       ; $7872: $7f
    ld [hl], b                                    ; $7873: $70
    ccf                                           ; $7874: $3f
    ld [hl-], a                                   ; $7875: $32
    rra                                           ; $7876: $1f
    add hl, de                                    ; $7877: $19
    ld [bc], a                                    ; $7878: $02
    ccf                                           ; $7879: $3f
    ld [bc], a                                    ; $787a: $02
    ld a, d                                       ; $787b: $7a
    adc b                                         ; $787c: $88
    xor l                                         ; $787d: $ad
    db $fd                                        ; $787e: $fd
    xor e                                         ; $787f: $ab
    rst $38                                       ; $7880: $ff
    ld l, l                                       ; $7881: $6d
    ld a, a                                       ; $7882: $7f
    dec h                                         ; $7883: $25
    ccf                                           ; $7884: $3f
    ld [bc], a                                    ; $7885: $02
    inc b                                         ; $7886: $04
    ld [bc], a                                    ; $7887: $02
    ld [bc], a                                    ; $7888: $02
    ld [bc], a                                    ; $7889: $02
    dec b                                         ; $788a: $05
    ld [bc], a                                    ; $788b: $02
    ld b, $02                                     ; $788c: $06 $02
    inc b                                         ; $788e: $04
    add d                                         ; $788f: $82
    ld b, $02                                     ; $7890: $06 $02
    ld b, $04                                     ; $7892: $06 $04
    inc c                                         ; $7894: $0c
    nop                                           ; $7895: $00
    add d                                         ; $7896: $82
    jr z, @-$06                                   ; $7897: $28 $f8

    ld [bc], a                                    ; $7899: $02
    jr nz, jr_0e5_782a                            ; $789a: $20 $8e

    dec l                                         ; $789c: $2d
    ccf                                           ; $789d: $3f
    ld a, l                                       ; $789e: $7d
    ld h, a                                       ; $789f: $67
    ld a, a                                       ; $78a0: $7f
    ld [hl], a                                    ; $78a1: $77
    ld a, a                                       ; $78a2: $7f
    ld a, h                                       ; $78a3: $7c
    cp e                                          ; $78a4: $bb
    rst $38                                       ; $78a5: $ff
    cp [hl]                                       ; $78a6: $be
    cp $f9                                        ; $78a7: $fe $f9
    rst $38                                       ; $78a9: $ff
    ld [bc], a                                    ; $78aa: $02
    ccf                                           ; $78ab: $3f
    inc d                                         ; $78ac: $14
    nop                                           ; $78ad: $00
    inc b                                         ; $78ae: $04
    ld bc, $0016                                  ; $78af: $01 $16 $00
    rst $38                                       ; $78b2: $ff
    rlca                                          ; $78b3: $07
    ld bc, $08f9                                  ; $78b4: $01 $f9 $08
    ld a, [c]                                     ; $78b7: $f2
    ld bc, $fee9                                  ; $78b8: $01 $e9 $fe
    ld [bc], a                                    ; $78bb: $02
    inc l                                         ; $78bc: $2c
    ld [bc], a                                    ; $78bd: $02
    adc d                                         ; $78be: $8a
    ld [bc], a                                    ; $78bf: $02
    ld b, l                                       ; $78c0: $45
    ld [bc], a                                    ; $78c1: $02
    add b                                         ; $78c2: $80
    inc c                                         ; $78c3: $0c
    nop                                           ; $78c4: $00
    add e                                         ; $78c5: $83
    stop                                          ; $78c6: $10 $00
    ld [$0009], sp                                ; $78c8: $08 $09 $00
    rst $38                                       ; $78cb: $ff
    dec c                                         ; $78cc: $0d
    inc b                                         ; $78cd: $04
    ei                                            ; $78ce: $fb
    dec b                                         ; $78cf: $05
    push af                                       ; $78d0: $f5
    cp $e8                                        ; $78d1: $fe $e8
    db $fc                                        ; $78d3: $fc
    jp hl                                         ; $78d4: $e9


    rst $38                                       ; $78d5: $ff
    ld hl, sp-$05                                 ; $78d6: $f8 $fb
    ld hl, sp+$01                                 ; $78d8: $f8 $01
    ld [bc], a                                    ; $78da: $02
    rra                                           ; $78db: $1f
    add d                                         ; $78dc: $82
    ld [hl], $30                                  ; $78dd: $36 $30
    ld [bc], a                                    ; $78df: $02
    ld c, [hl]                                    ; $78e0: $4e
    adc [hl]                                      ; $78e1: $8e
    rst $10                                       ; $78e2: $d7
    push bc                                       ; $78e3: $c5
    rst $08                                       ; $78e4: $cf
    adc b                                         ; $78e5: $88
    rst $38                                       ; $78e6: $ff
    ei                                            ; $78e7: $fb
    rst $18                                       ; $78e8: $df
    ret nz                                        ; $78e9: $c0

    ld a, a                                       ; $78ea: $7f
    ld [hl], b                                    ; $78eb: $70
    ccf                                           ; $78ec: $3f
    add hl, sp                                    ; $78ed: $39
    rra                                           ; $78ee: $1f
    add hl, de                                    ; $78ef: $19
    ld [bc], a                                    ; $78f0: $02
    ccf                                           ; $78f1: $3f
    ld [bc], a                                    ; $78f2: $02
    ld a, d                                       ; $78f3: $7a
    adc b                                         ; $78f4: $88
    xor l                                         ; $78f5: $ad
    db $fd                                        ; $78f6: $fd
    xor e                                         ; $78f7: $ab
    rst $38                                       ; $78f8: $ff
    ld l, l                                       ; $78f9: $6d
    ld a, a                                       ; $78fa: $7f
    ld e, l                                       ; $78fb: $5d
    ld a, a                                       ; $78fc: $7f
    ld [bc], a                                    ; $78fd: $02
    inc b                                         ; $78fe: $04
    ld [bc], a                                    ; $78ff: $02
    ld [bc], a                                    ; $7900: $02
    ld [bc], a                                    ; $7901: $02
    dec b                                         ; $7902: $05
    ld [bc], a                                    ; $7903: $02
    ld b, $02                                     ; $7904: $06 $02
    inc b                                         ; $7906: $04
    add d                                         ; $7907: $82
    ld b, $02                                     ; $7908: $06 $02
    ld b, $04                                     ; $790a: $06 $04
    inc c                                         ; $790c: $0c
    nop                                           ; $790d: $00
    sub d                                         ; $790e: $92
    ld l, h                                       ; $790f: $6c
    db $fc                                        ; $7910: $fc
    jr nz, jr_0e5_7943                            ; $7911: $20 $30

    ld h, $3f                                     ; $7913: $26 $3f
    dec a                                         ; $7915: $3d
    cpl                                           ; $7916: $2f
    dec a                                         ; $7917: $3d
    cpl                                           ; $7918: $2f
    ld a, l                                       ; $7919: $7d
    ld [hl], a                                    ; $791a: $77
    rst $38                                       ; $791b: $ff
    ei                                            ; $791c: $fb
    cp a                                          ; $791d: $bf
    rst $38                                       ; $791e: $ff
    rst $08                                       ; $791f: $cf
    rst $38                                       ; $7920: $ff
    ld [bc], a                                    ; $7921: $02
    ccf                                           ; $7922: $3f
    stop                                          ; $7923: $10 $00
    add d                                         ; $7925: $82
    jr c, @+$2a                                   ; $7926: $38 $28

    ld [bc], a                                    ; $7928: $02
    jr c, jr_0e5_792d                             ; $7929: $38 $02

    jr nc, @-$76                                  ; $792b: $30 $88

jr_0e5_792d:
    db $10                                        ; $792d: $10
    jr nc, jr_0e5_794e                            ; $792e: $30 $1e

    ld a, $31                                     ; $7930: $3e $31
    ccf                                           ; $7932: $3f
    ld e, $3e                                     ; $7933: $1e $3e
    ld [bc], a                                    ; $7935: $02
    jr nc, @+$10                                  ; $7936: $30 $0e

    nop                                           ; $7938: $00
    rst $38                                       ; $7939: $ff
    rlca                                          ; $793a: $07
    ld bc, $08f9                                  ; $793b: $01 $f9 $08
    ld a, [c]                                     ; $793e: $f2
    ld bc, $fee9                                  ; $793f: $01 $e9 $fe
    ld [bc], a                                    ; $7942: $02

jr_0e5_7943:
    inc h                                         ; $7943: $24
    ld [bc], a                                    ; $7944: $02
    add $02                                       ; $7945: $c6 $02
    and c                                         ; $7947: $a1
    ld [bc], a                                    ; $7948: $02
    ret nz                                        ; $7949: $c0

    ld [bc], a                                    ; $794a: $02
    nop                                           ; $794b: $00
    ld [bc], a                                    ; $794c: $02
    add b                                         ; $794d: $80

jr_0e5_794e:
    ld [$8300], sp                                ; $794e: $08 $00 $83
    stop                                          ; $7951: $10 $00
    ld [$0009], sp                                ; $7953: $08 $09 $00
    rst $38                                       ; $7956: $ff
    dec c                                         ; $7957: $0d
    inc b                                         ; $7958: $04
    ei                                            ; $7959: $fb
    dec b                                         ; $795a: $05
    push af                                       ; $795b: $f5
    cp $e9                                        ; $795c: $fe $e9
    db $fc                                        ; $795e: $fc
    ld [$f9ff], a                                 ; $795f: $ea $ff $f9
    ei                                            ; $7962: $fb
    ld sp, hl                                     ; $7963: $f9
    rst $38                                       ; $7964: $ff
    ld [bc], a                                    ; $7965: $02
    rra                                           ; $7966: $1f
    add d                                         ; $7967: $82
    ld [hl], $30                                  ; $7968: $36 $30
    ld [bc], a                                    ; $796a: $02
    ld c, [hl]                                    ; $796b: $4e
    sbc d                                         ; $796c: $9a
    rst $10                                       ; $796d: $d7
    push bc                                       ; $796e: $c5
    rst $08                                       ; $796f: $cf
    adc b                                         ; $7970: $88
    rst $38                                       ; $7971: $ff
    ei                                            ; $7972: $fb
    rst $38                                       ; $7973: $ff
    ldh [$7f], a                                  ; $7974: $e0 $7f
    ld [hl], b                                    ; $7976: $70
    ccf                                           ; $7977: $3f
    add hl, sp                                    ; $7978: $39
    ccf                                           ; $7979: $3f
    add hl, sp                                    ; $797a: $39
    rst $18                                       ; $797b: $df
    rst $38                                       ; $797c: $ff
    cp d                                          ; $797d: $ba
    ld a, [$7d6d]                                 ; $797e: $fa $6d $7d
    ld c, e                                       ; $7981: $4b
    ld a, a                                       ; $7982: $7f
    ld e, l                                       ; $7983: $5d
    ld a, a                                       ; $7984: $7f
    ld e, l                                       ; $7985: $5d
    ld a, a                                       ; $7986: $7f
    ld [bc], a                                    ; $7987: $02
    inc b                                         ; $7988: $04
    ld [bc], a                                    ; $7989: $02
    ld [bc], a                                    ; $798a: $02
    ld [bc], a                                    ; $798b: $02
    dec b                                         ; $798c: $05
    ld [bc], a                                    ; $798d: $02
    ld b, $02                                     ; $798e: $06 $02
    inc b                                         ; $7990: $04
    add d                                         ; $7991: $82
    ld b, $02                                     ; $7992: $06 $02
    ld b, $04                                     ; $7994: $06 $04
    inc c                                         ; $7996: $0c
    nop                                           ; $7997: $00
    sub d                                         ; $7998: $92
    ld l, b                                       ; $7999: $68
    ld hl, sp+$20                                 ; $799a: $f8 $20
    jr nc, jr_0e5_79cc                            ; $799c: $30 $2e

    ccf                                           ; $799e: $3f
    ld a, [hl]                                    ; $799f: $7e
    ld h, a                                       ; $79a0: $67

jr_0e5_79a1:
    ld a, l                                       ; $79a1: $7d
    ld [hl], a                                    ; $79a2: $77
    rst $38                                       ; $79a3: $ff
    db $fc                                        ; $79a4: $fc
    cp e                                          ; $79a5: $bb
    rst $38                                       ; $79a6: $ff
    rst $18                                       ; $79a7: $df
    rst $38                                       ; $79a8: $ff
    ld l, l                                       ; $79a9: $6d
    ld a, a                                       ; $79aa: $7f
    ld [bc], a                                    ; $79ab: $02
    rra                                           ; $79ac: $1f
    stop                                          ; $79ad: $10 $00
    inc b                                         ; $79af: $04
    inc c                                         ; $79b0: $0c
    inc b                                         ; $79b1: $04
    ld [$0482], sp                                ; $79b2: $08 $82 $04
    inc c                                         ; $79b5: $0c
    ld [bc], a                                    ; $79b6: $02
    ld c, $81                                     ; $79b7: $0e $81
    ld bc, $0f03                                  ; $79b9: $01 $03 $0f
    ld c, $00                                     ; $79bc: $0e $00
    rst $38                                       ; $79be: $ff
    rlca                                          ; $79bf: $07
    ld bc, $08f9                                  ; $79c0: $01 $f9 $08
    ld a, [c]                                     ; $79c3: $f2
    ld bc, $feea                                  ; $79c4: $01 $ea $fe
    ld [bc], a                                    ; $79c7: $02
    inc h                                         ; $79c8: $24
    ld [bc], a                                    ; $79c9: $02
    add $02                                       ; $79ca: $c6 $02

jr_0e5_79cc:
    and c                                         ; $79cc: $a1
    ld [bc], a                                    ; $79cd: $02
    ret nz                                        ; $79ce: $c0

    inc c                                         ; $79cf: $0c
    nop                                           ; $79d0: $00
    add e                                         ; $79d1: $83
    stop                                          ; $79d2: $10 $00
    ld [$0009], sp                                ; $79d4: $08 $09 $00
    rst $38                                       ; $79d7: $ff
    dec c                                         ; $79d8: $0d
    inc b                                         ; $79d9: $04
    ei                                            ; $79da: $fb
    dec b                                         ; $79db: $05
    push af                                       ; $79dc: $f5
    cp $e8                                        ; $79dd: $fe $e8
    db $fc                                        ; $79df: $fc
    jp hl                                         ; $79e0: $e9


    rst $38                                       ; $79e1: $ff
    ld hl, sp-$04                                 ; $79e2: $f8 $fc
    ld hl, sp-$03                                 ; $79e4: $f8 $fd
    ld [bc], a                                    ; $79e6: $02
    rra                                           ; $79e7: $1f
    add d                                         ; $79e8: $82
    inc [hl]                                      ; $79e9: $34
    jr nc, jr_0e5_79ee                            ; $79ea: $30 $02

    ld e, l                                       ; $79ec: $5d
    adc [hl]                                      ; $79ed: $8e

jr_0e5_79ee:
    xor $ca                                       ; $79ee: $ee $ca
    rst $08                                       ; $79f0: $cf
    adc c                                         ; $79f1: $89
    rst $38                                       ; $79f2: $ff
    or $ef                                        ; $79f3: $f6 $ef
    ret nz                                        ; $79f5: $c0

    ld a, a                                       ; $79f6: $7f
    ld [hl], b                                    ; $79f7: $70
    ccf                                           ; $79f8: $3f
    ld [hl-], a                                   ; $79f9: $32
    rra                                           ; $79fa: $1f
    add hl, de                                    ; $79fb: $19
    ld [bc], a                                    ; $79fc: $02
    ccf                                           ; $79fd: $3f
    ld [bc], a                                    ; $79fe: $02
    ld a, d                                       ; $79ff: $7a
    adc b                                         ; $7a00: $88
    xor l                                         ; $7a01: $ad
    db $fd                                        ; $7a02: $fd
    xor e                                         ; $7a03: $ab
    rst $38                                       ; $7a04: $ff
    ld h, l                                       ; $7a05: $65
    ld a, a                                       ; $7a06: $7f
    dec l                                         ; $7a07: $2d
    ccf                                           ; $7a08: $3f
    ld [bc], a                                    ; $7a09: $02
    inc b                                         ; $7a0a: $04
    ld [bc], a                                    ; $7a0b: $02
    ld [bc], a                                    ; $7a0c: $02
    ld [bc], a                                    ; $7a0d: $02
    dec b                                         ; $7a0e: $05
    ld [bc], a                                    ; $7a0f: $02
    ld b, $02                                     ; $7a10: $06 $02
    inc b                                         ; $7a12: $04
    add d                                         ; $7a13: $82
    ld b, $02                                     ; $7a14: $06 $02
    ld b, $04                                     ; $7a16: $06 $04
    inc c                                         ; $7a18: $0c
    nop                                           ; $7a19: $00
    add d                                         ; $7a1a: $82
    jr z, @-$06                                   ; $7a1b: $28 $f8

    ld [bc], a                                    ; $7a1d: $02
    jr nz, jr_0e5_79a1                            ; $7a1e: $20 $81

    dec l                                         ; $7a20: $2d
    ld [bc], a                                    ; $7a21: $02
    ccf                                           ; $7a22: $3f
    adc l                                         ; $7a23: $8d
    daa                                           ; $7a24: $27
    ld a, a                                       ; $7a25: $7f
    ld [hl], h                                    ; $7a26: $74
    ld a, l                                       ; $7a27: $7d
    ld a, a                                       ; $7a28: $7f
    ld a, l                                       ; $7a29: $7d
    ld a, a                                       ; $7a2a: $7f
    ei                                            ; $7a2b: $fb
    rst $38                                       ; $7a2c: $ff
    cp a                                          ; $7a2d: $bf
    rst $38                                       ; $7a2e: $ff
    sbc h                                         ; $7a2f: $9c
    rst $38                                       ; $7a30: $ff
    ld [bc], a                                    ; $7a31: $02
    ld a, a                                       ; $7a32: $7f
    ld c, $00                                     ; $7a33: $0e $00
    ld [$0601], sp                                ; $7a35: $08 $01 $06
    nop                                           ; $7a38: $00
    inc b                                         ; $7a39: $04
    ld bc, $000c                                  ; $7a3a: $01 $0c $00
    rst $38                                       ; $7a3d: $ff
    rlca                                          ; $7a3e: $07
    ld bc, $08f9                                  ; $7a3f: $01 $f9 $08
    ld a, [c]                                     ; $7a42: $f2
    ld bc, $fee9                                  ; $7a43: $01 $e9 $fe
    ld [bc], a                                    ; $7a46: $02
    inc l                                         ; $7a47: $2c
    ld [bc], a                                    ; $7a48: $02
    adc d                                         ; $7a49: $8a
    ld [bc], a                                    ; $7a4a: $02
    ld b, l                                       ; $7a4b: $45
    ld [bc], a                                    ; $7a4c: $02
    ret nz                                        ; $7a4d: $c0

    ld [bc], a                                    ; $7a4e: $02
    nop                                           ; $7a4f: $00
    ld [bc], a                                    ; $7a50: $02
    ld b, b                                       ; $7a51: $40
    ld [$8300], sp                                ; $7a52: $08 $00 $83
    stop                                          ; $7a55: $10 $00
    ld [$0009], sp                                ; $7a57: $08 $09 $00
    rst $38                                       ; $7a5a: $ff
    dec c                                         ; $7a5b: $0d
    inc b                                         ; $7a5c: $04
    ei                                            ; $7a5d: $fb
    dec b                                         ; $7a5e: $05
    push af                                       ; $7a5f: $f5
    cp $e8                                        ; $7a60: $fe $e8
    ei                                            ; $7a62: $fb
    jp hl                                         ; $7a63: $e9


    rst $38                                       ; $7a64: $ff
    ld hl, sp-$06                                 ; $7a65: $f8 $fa
    ld hl, sp-$01                                 ; $7a67: $f8 $ff
    ld [bc], a                                    ; $7a69: $02
    ld e, $86                                     ; $7a6a: $1e $86
    add hl, hl                                    ; $7a6c: $29
    ld hl, $4151                                  ; $7a6d: $21 $51 $41
    or d                                          ; $7a70: $b2
    and d                                         ; $7a71: $a2
    ld [bc], a                                    ; $7a72: $02
    ld b, b                                       ; $7a73: $40
    ld [bc], a                                    ; $7a74: $02
    ld d, b                                       ; $7a75: $50
    ld [bc], a                                    ; $7a76: $02
    ld l, d                                       ; $7a77: $6a
    ld [bc], a                                    ; $7a78: $02
    dec [hl]                                      ; $7a79: $35
    add h                                         ; $7a7a: $84
    ccf                                           ; $7a7b: $3f
    ld l, $1f                                     ; $7a7c: $2e $1f
    ld de, $3102                                  ; $7a7e: $11 $02 $31
    adc d                                         ; $7a81: $8a
    ld l, [hl]                                    ; $7a82: $6e
    ld a, a                                       ; $7a83: $7f
    or c                                          ; $7a84: $b1
    rst $38                                       ; $7a85: $ff
    cp e                                          ; $7a86: $bb
    rst $38                                       ; $7a87: $ff
    cp a                                          ; $7a88: $bf
    rst $38                                       ; $7a89: $ff
    cp a                                          ; $7a8a: $bf
    rst $38                                       ; $7a8b: $ff
    ld [bc], a                                    ; $7a8c: $02
    ld [$0c83], sp                                ; $7a8d: $08 $83 $0c
    inc b                                         ; $7a90: $04
    ld c, $03                                     ; $7a91: $0e $03
    ld b, $02                                     ; $7a93: $06 $02
    inc b                                         ; $7a95: $04
    ld [bc], a                                    ; $7a96: $02
    inc c                                         ; $7a97: $0c
    inc b                                         ; $7a98: $04
    ld [$0002], sp                                ; $7a99: $08 $02 $00
    ld [bc], a                                    ; $7a9c: $02
    ld [$0c02], sp                                ; $7a9d: $08 $02 $0c
    sub b                                         ; $7aa0: $90
    ld a, [bc]                                    ; $7aa1: $0a
    ld c, $0a                                     ; $7aa2: $0e $0a
    ld c, $0a                                     ; $7aa4: $0e $0a
    ld c, $0a                                     ; $7aa6: $0e $0a
    ld c, $f9                                     ; $7aa8: $0e $f9
    rst $38                                       ; $7aaa: $ff
    sbc b                                         ; $7aab: $98
    ld hl, sp-$21                                 ; $7aac: $f8 $df
    rst $38                                       ; $7aae: $ff
    ld a, a                                       ; $7aaf: $7f
    ld e, a                                       ; $7ab0: $5f
    ld [bc], a                                    ; $7ab1: $02
    ccf                                           ; $7ab2: $3f
    ld [bc], a                                    ; $7ab3: $02
    rra                                           ; $7ab4: $1f
    inc b                                         ; $7ab5: $04
    ccf                                           ; $7ab6: $3f
    add h                                         ; $7ab7: $84
    cpl                                           ; $7ab8: $2f
    ccf                                           ; $7ab9: $3f
    jr nc, jr_0e5_7afb                            ; $7aba: $30 $3f

    ld [bc], a                                    ; $7abc: $02
    rra                                           ; $7abd: $1f
    ld c, $00                                     ; $7abe: $0e $00
    add h                                         ; $7ac0: $84
    dec de                                        ; $7ac1: $1b
    rra                                           ; $7ac2: $1f
    ld e, $1a                                     ; $7ac3: $1e $1a
    ld [bc], a                                    ; $7ac5: $02
    inc e                                         ; $7ac6: $1c
    ld [bc], a                                    ; $7ac7: $02
    jr jr_0e5_7ace                                ; $7ac8: $18 $04

    inc e                                         ; $7aca: $1c
    add h                                         ; $7acb: $84
    inc d                                         ; $7acc: $14
    inc e                                         ; $7acd: $1c

jr_0e5_7ace:
    inc c                                         ; $7ace: $0c
    inc e                                         ; $7acf: $1c
    ld [bc], a                                    ; $7ad0: $02
    jr jr_0e5_7adf                                ; $7ad1: $18 $0c

    nop                                           ; $7ad3: $00
    rst $38                                       ; $7ad4: $ff
    rlca                                          ; $7ad5: $07
    ld bc, $08f9                                  ; $7ad6: $01 $f9 $08
    ld a, [c]                                     ; $7ad9: $f2
    ld bc, $fce9                                  ; $7ada: $01 $e9 $fc
    ld [bc], a                                    ; $7add: $02
    inc l                                         ; $7ade: $2c

jr_0e5_7adf:
    ld [bc], a                                    ; $7adf: $02
    ld e, h                                       ; $7ae0: $5c
    ld [bc], a                                    ; $7ae1: $02
    sbc d                                         ; $7ae2: $9a
    ld [bc], a                                    ; $7ae3: $02
    ld a, a                                       ; $7ae4: $7f
    ld [bc], a                                    ; $7ae5: $02
    ld e, a                                       ; $7ae6: $5f
    ld [bc], a                                    ; $7ae7: $02
    ld a, [hl+]                                   ; $7ae8: $2a
    ld [bc], a                                    ; $7ae9: $02
    inc d                                         ; $7aea: $14
    inc b                                         ; $7aeb: $04
    nop                                           ; $7aec: $00
    add c                                         ; $7aed: $81
    inc e                                         ; $7aee: $1c
    dec c                                         ; $7aef: $0d
    nop                                           ; $7af0: $00
    rst $38                                       ; $7af1: $ff
    dec c                                         ; $7af2: $0d
    inc b                                         ; $7af3: $04
    ei                                            ; $7af4: $fb
    dec b                                         ; $7af5: $05
    push af                                       ; $7af6: $f5
    cp $e8                                        ; $7af7: $fe $e8
    ei                                            ; $7af9: $fb
    jp hl                                         ; $7afa: $e9


jr_0e5_7afb:
    rst $38                                       ; $7afb: $ff
    ld hl, sp-$05                                 ; $7afc: $f8 $fb
    ld hl, sp-$02                                 ; $7afe: $f8 $fe
    ld [bc], a                                    ; $7b00: $02
    ld e, $86                                     ; $7b01: $1e $86
    dec h                                         ; $7b03: $25
    ld hl, $424a                                  ; $7b04: $21 $4a $42
    db $e3                                        ; $7b07: $e3
    ld [c], a                                     ; $7b08: $e2
    ld [bc], a                                    ; $7b09: $02
    ld b, b                                       ; $7b0a: $40
    ld [bc], a                                    ; $7b0b: $02
    ld h, b                                       ; $7b0c: $60
    ld [bc], a                                    ; $7b0d: $02
    ld d, l                                       ; $7b0e: $55
    ld [bc], a                                    ; $7b0f: $02
    dec hl                                        ; $7b10: $2b
    add h                                         ; $7b11: $84
    ccf                                           ; $7b12: $3f
    ld a, $1f                                     ; $7b13: $3e $1f
    ld de, $1302                                  ; $7b15: $11 $02 $13
    adc d                                         ; $7b18: $8a
    ld l, [hl]                                    ; $7b19: $6e
    ld a, a                                       ; $7b1a: $7f
    ld [hl], c                                    ; $7b1b: $71
    ld a, a                                       ; $7b1c: $7f
    cp e                                          ; $7b1d: $bb
    rst $38                                       ; $7b1e: $ff
    cp a                                          ; $7b1f: $bf
    rst $38                                       ; $7b20: $ff
    cp a                                          ; $7b21: $bf
    rst $38                                       ; $7b22: $ff
    ld [bc], a                                    ; $7b23: $02
    ld [$0c82], sp                                ; $7b24: $08 $82 $0c
    inc b                                         ; $7b27: $04
    inc b                                         ; $7b28: $04
    ld b, $02                                     ; $7b29: $06 $02
    inc b                                         ; $7b2b: $04
    ld [bc], a                                    ; $7b2c: $02
    inc c                                         ; $7b2d: $0c
    inc b                                         ; $7b2e: $04
    ld [$0002], sp                                ; $7b2f: $08 $02 $00
    ld [bc], a                                    ; $7b32: $02
    ld [$0c02], sp                                ; $7b33: $08 $02 $0c
    adc l                                         ; $7b36: $8d
    ld a, [bc]                                    ; $7b37: $0a
    ld c, $0a                                     ; $7b38: $0e $0a
    ld c, $0a                                     ; $7b3a: $0e $0a
    ld c, $09                                     ; $7b3c: $0e $09
    rrca                                          ; $7b3e: $0f
    ei                                            ; $7b3f: $fb
    rst $38                                       ; $7b40: $ff
    sub b                                         ; $7b41: $90
    ldh a, [$9f]                                  ; $7b42: $f0 $9f
    ld [bc], a                                    ; $7b44: $02
    rst $38                                       ; $7b45: $ff
    add e                                         ; $7b46: $83
    cp a                                          ; $7b47: $bf
    rst $38                                       ; $7b48: $ff
    sbc a                                         ; $7b49: $9f
    ld b, $7f                                     ; $7b4a: $06 $7f
    add h                                         ; $7b4c: $84
    ld e, a                                       ; $7b4d: $5f
    ld a, a                                       ; $7b4e: $7f
    jr nc, @+$41                                  ; $7b4f: $30 $3f

    ld [bc], a                                    ; $7b51: $02
    rrca                                          ; $7b52: $0f
    ld c, $00                                     ; $7b53: $0e $00
    ld [bc], a                                    ; $7b55: $02
    rlca                                          ; $7b56: $07
    ld [bc], a                                    ; $7b57: $02
    ld b, $04                                     ; $7b58: $06 $04
    inc b                                         ; $7b5a: $04
    inc b                                         ; $7b5b: $04
    ld b, $84                                     ; $7b5c: $06 $84
    ld [bc], a                                    ; $7b5e: $02
    ld b, $02                                     ; $7b5f: $06 $02
    ld b, $02                                     ; $7b61: $06 $02
    inc b                                         ; $7b63: $04
    inc c                                         ; $7b64: $0c
    nop                                           ; $7b65: $00
    rst $38                                       ; $7b66: $ff
    rlca                                          ; $7b67: $07
    ld bc, $08f9                                  ; $7b68: $01 $f9 $08
    ld a, [c]                                     ; $7b6b: $f2
    ld bc, $fce9                                  ; $7b6c: $01 $e9 $fc
    ld [bc], a                                    ; $7b6f: $02
    inc [hl]                                      ; $7b70: $34
    ld [bc], a                                    ; $7b71: $02
    ld l, d                                       ; $7b72: $6a
    ld [bc], a                                    ; $7b73: $02
    add hl, sp                                    ; $7b74: $39
    ld [bc], a                                    ; $7b75: $02
    ld a, a                                       ; $7b76: $7f
    ld [bc], a                                    ; $7b77: $02
    ccf                                           ; $7b78: $3f
    ld [bc], a                                    ; $7b79: $02
    ld d, h                                       ; $7b7a: $54
    ld [bc], a                                    ; $7b7b: $02
    jr z, jr_0e5_7b82                             ; $7b7c: $28 $04

    nop                                           ; $7b7e: $00
    add c                                         ; $7b7f: $81
    jr jr_0e5_7b8f                                ; $7b80: $18 $0d

jr_0e5_7b82:
    nop                                           ; $7b82: $00
    rst $38                                       ; $7b83: $ff
    dec c                                         ; $7b84: $0d
    inc b                                         ; $7b85: $04
    ei                                            ; $7b86: $fb
    dec b                                         ; $7b87: $05
    push af                                       ; $7b88: $f5
    cp $e9                                        ; $7b89: $fe $e9
    ei                                            ; $7b8b: $fb
    ld [$f9ff], a                                 ; $7b8c: $ea $ff $f9

jr_0e5_7b8f:
    ld a, [$fef9]                                 ; $7b8f: $fa $f9 $fe
    ld [bc], a                                    ; $7b92: $02
    ld e, $86                                     ; $7b93: $1e $86
    dec h                                         ; $7b95: $25
    ld hl, $424a                                  ; $7b96: $21 $4a $42
    db $e3                                        ; $7b99: $e3
    ld [c], a                                     ; $7b9a: $e2
    ld [bc], a                                    ; $7b9b: $02
    ld b, b                                       ; $7b9c: $40
    ld [bc], a                                    ; $7b9d: $02
    ld h, b                                       ; $7b9e: $60
    ld [bc], a                                    ; $7b9f: $02
    ld d, l                                       ; $7ba0: $55
    ld [bc], a                                    ; $7ba1: $02
    dec hl                                        ; $7ba2: $2b
    add d                                         ; $7ba3: $82
    ccf                                           ; $7ba4: $3f
    ld a, $02                                     ; $7ba5: $3e $02
    rra                                           ; $7ba7: $1f
    add e                                         ; $7ba8: $83
    jr nz, jr_0e5_7bea                            ; $7ba9: $20 $3f

    ld [hl], e                                    ; $7bab: $73
    inc bc                                        ; $7bac: $03
    ld a, a                                       ; $7bad: $7f
    add [hl]                                      ; $7bae: $86
    cp a                                          ; $7baf: $bf
    rst $38                                       ; $7bb0: $ff
    cp a                                          ; $7bb1: $bf
    rst $38                                       ; $7bb2: $ff
    cp a                                          ; $7bb3: $bf
    rst $38                                       ; $7bb4: $ff
    ld [bc], a                                    ; $7bb5: $02
    ld [$0c82], sp                                ; $7bb6: $08 $82 $0c
    inc b                                         ; $7bb9: $04
    inc b                                         ; $7bba: $04
    ld b, $02                                     ; $7bbb: $06 $02
    inc b                                         ; $7bbd: $04
    ld [bc], a                                    ; $7bbe: $02
    inc c                                         ; $7bbf: $0c
    inc b                                         ; $7bc0: $04
    ld [$0002], sp                                ; $7bc1: $08 $02 $00
    inc b                                         ; $7bc4: $04
    inc c                                         ; $7bc5: $0c
    sub b                                         ; $7bc6: $90
    ld a, [bc]                                    ; $7bc7: $0a
    ld c, $0a                                     ; $7bc8: $0e $0a
    ld c, $0a                                     ; $7bca: $0e $0a
    ld c, $0a                                     ; $7bcc: $0e $0a
    ld c, $fb                                     ; $7bce: $0e $fb
    rst $38                                       ; $7bd0: $ff
    ld c, b                                       ; $7bd1: $48
    ld a, b                                       ; $7bd2: $78
    sbc a                                         ; $7bd3: $9f
    rst $38                                       ; $7bd4: $ff
    ld a, a                                       ; $7bd5: $7f
    ld c, a                                       ; $7bd6: $4f
    ld b, $3f                                     ; $7bd7: $06 $3f
    add c                                         ; $7bd9: $81
    inc h                                         ; $7bda: $24
    inc bc                                        ; $7bdb: $03
    ccf                                           ; $7bdc: $3f
    ld [bc], a                                    ; $7bdd: $02
    inc bc                                        ; $7bde: $03
    stop                                          ; $7bdf: $10 $00
    ld [bc], a                                    ; $7be1: $02
    rrca                                          ; $7be2: $0f
    ld [bc], a                                    ; $7be3: $02
    ld c, $81                                     ; $7be4: $0e $81
    ld b, $03                                     ; $7be6: $06 $03
    ld c, $81                                     ; $7be8: $0e $81

jr_0e5_7bea:
    ld [bc], a                                    ; $7bea: $02
    inc bc                                        ; $7beb: $03
    ld c, $82                                     ; $7bec: $0e $82
    ld [bc], a                                    ; $7bee: $02
    ld c, $02                                     ; $7bef: $0e $02
    inc c                                         ; $7bf1: $0c
    ld c, $00                                     ; $7bf2: $0e $00
    rst $38                                       ; $7bf4: $ff
    rlca                                          ; $7bf5: $07
    ld bc, $08f9                                  ; $7bf6: $01 $f9 $08
    ld a, [c]                                     ; $7bf9: $f2
    ld bc, $fcea                                  ; $7bfa: $01 $ea $fc
    ld [bc], a                                    ; $7bfd: $02
    inc [hl]                                      ; $7bfe: $34
    ld [bc], a                                    ; $7bff: $02
    ld l, d                                       ; $7c00: $6a
    ld [bc], a                                    ; $7c01: $02
    add hl, sp                                    ; $7c02: $39
    ld [bc], a                                    ; $7c03: $02
    ld a, a                                       ; $7c04: $7f
    ld [bc], a                                    ; $7c05: $02
    ccf                                           ; $7c06: $3f
    ld [bc], a                                    ; $7c07: $02
    ld d, h                                       ; $7c08: $54
    ld [bc], a                                    ; $7c09: $02
    jr z, @+$14                                   ; $7c0a: $28 $12

    nop                                           ; $7c0c: $00
    rst $38                                       ; $7c0d: $ff
    dec c                                         ; $7c0e: $0d
    inc b                                         ; $7c0f: $04
    ei                                            ; $7c10: $fb
    dec b                                         ; $7c11: $05
    push af                                       ; $7c12: $f5
    cp $e8                                        ; $7c13: $fe $e8
    ei                                            ; $7c15: $fb
    jp hl                                         ; $7c16: $e9


    cp $f8                                        ; $7c17: $fe $f8
    ld a, [$fef8]                                 ; $7c19: $fa $f8 $fe
    ld [bc], a                                    ; $7c1c: $02
    ld e, $86                                     ; $7c1d: $1e $86
    add hl, hl                                    ; $7c1f: $29
    ld hl, $4151                                  ; $7c20: $21 $51 $41
    or d                                          ; $7c23: $b2
    and d                                         ; $7c24: $a2
    ld [bc], a                                    ; $7c25: $02
    ld b, b                                       ; $7c26: $40
    ld [bc], a                                    ; $7c27: $02
    ld d, b                                       ; $7c28: $50
    ld [bc], a                                    ; $7c29: $02
    ld l, d                                       ; $7c2a: $6a
    ld [bc], a                                    ; $7c2b: $02
    dec [hl]                                      ; $7c2c: $35
    add h                                         ; $7c2d: $84
    ccf                                           ; $7c2e: $3f
    ld l, $1f                                     ; $7c2f: $2e $1f
    ld de, $3102                                  ; $7c31: $11 $02 $31
    adc d                                         ; $7c34: $8a
    ld l, [hl]                                    ; $7c35: $6e
    ld a, a                                       ; $7c36: $7f
    or c                                          ; $7c37: $b1
    rst $38                                       ; $7c38: $ff
    cp e                                          ; $7c39: $bb
    rst $38                                       ; $7c3a: $ff
    cp a                                          ; $7c3b: $bf
    rst $38                                       ; $7c3c: $ff
    cp a                                          ; $7c3d: $bf
    rst $38                                       ; $7c3e: $ff
    ld [bc], a                                    ; $7c3f: $02
    inc b                                         ; $7c40: $04
    add e                                         ; $7c41: $83
    ld b, $02                                     ; $7c42: $06 $02
    rlca                                          ; $7c44: $07
    inc bc                                        ; $7c45: $03
    inc bc                                        ; $7c46: $03
    ld [bc], a                                    ; $7c47: $02
    ld [bc], a                                    ; $7c48: $02
    ld [bc], a                                    ; $7c49: $02
    ld b, $04                                     ; $7c4a: $06 $04
    inc b                                         ; $7c4c: $04
    ld [bc], a                                    ; $7c4d: $02
    nop                                           ; $7c4e: $00
    ld [bc], a                                    ; $7c4f: $02
    inc b                                         ; $7c50: $04
    ld [bc], a                                    ; $7c51: $02
    ld b, $90                                     ; $7c52: $06 $90
    dec b                                         ; $7c54: $05
    rlca                                          ; $7c55: $07
    dec b                                         ; $7c56: $05
    rlca                                          ; $7c57: $07
    dec b                                         ; $7c58: $05
    rlca                                          ; $7c59: $07
    dec b                                         ; $7c5a: $05
    rlca                                          ; $7c5b: $07
    db $fd                                        ; $7c5c: $fd
    rst $38                                       ; $7c5d: $ff
    sub b                                         ; $7c5e: $90
    ldh a, [$df]                                  ; $7c5f: $f0 $df
    rst $38                                       ; $7c61: $ff
    ld a, a                                       ; $7c62: $7f
    ld e, a                                       ; $7c63: $5f
    ld [bc], a                                    ; $7c64: $02
    ccf                                           ; $7c65: $3f
    inc b                                         ; $7c66: $04
    rra                                           ; $7c67: $1f
    add c                                         ; $7c68: $81
    ld a, $03                                     ; $7c69: $3e $03
    ccf                                           ; $7c6b: $3f
    add d                                         ; $7c6c: $82
    ld hl, $023f                                  ; $7c6d: $21 $3f $02
    rra                                           ; $7c70: $1f
    ld c, $00                                     ; $7c71: $0e $00
    add c                                         ; $7c73: $81
    dec c                                         ; $7c74: $0d
    ld [bc], a                                    ; $7c75: $02
    rrca                                          ; $7c76: $0f
    add c                                         ; $7c77: $81
    dec c                                         ; $7c78: $0d
    ld b, $0e                                     ; $7c79: $06 $0e
    add c                                         ; $7c7b: $81
    ld b, $03                                     ; $7c7c: $06 $03
    ld c, $02                                     ; $7c7e: $0e $02
    inc c                                         ; $7c80: $0c
    ld [bc], a                                    ; $7c81: $02
    ld [$000c], sp                                ; $7c82: $08 $0c $00
    rst $38                                       ; $7c85: $ff
    rlca                                          ; $7c86: $07
    ld bc, $08f9                                  ; $7c87: $01 $f9 $08
    ld a, [c]                                     ; $7c8a: $f2
    ld bc, $fce9                                  ; $7c8b: $01 $e9 $fc
    ld [bc], a                                    ; $7c8e: $02
    inc l                                         ; $7c8f: $2c
    ld [bc], a                                    ; $7c90: $02
    ld e, h                                       ; $7c91: $5c
    ld [bc], a                                    ; $7c92: $02
    sbc d                                         ; $7c93: $9a
    ld [bc], a                                    ; $7c94: $02
    ld a, a                                       ; $7c95: $7f
    ld [bc], a                                    ; $7c96: $02
    ld e, a                                       ; $7c97: $5f
    ld [bc], a                                    ; $7c98: $02
    ld a, [hl+]                                   ; $7c99: $2a
    ld [bc], a                                    ; $7c9a: $02
    inc d                                         ; $7c9b: $14
    inc b                                         ; $7c9c: $04
    nop                                           ; $7c9d: $00
    add c                                         ; $7c9e: $81
    inc e                                         ; $7c9f: $1c
    dec c                                         ; $7ca0: $0d
    nop                                           ; $7ca1: $00
    rst $38                                       ; $7ca2: $ff
    dec c                                         ; $7ca3: $0d
    inc b                                         ; $7ca4: $04
    ei                                            ; $7ca5: $fb
    dec b                                         ; $7ca6: $05
    push af                                       ; $7ca7: $f5
    cp $e8                                        ; $7ca8: $fe $e8
    ld a, [$fee9]                                 ; $7caa: $fa $e9 $fe
    ld hl, sp-$06                                 ; $7cad: $f8 $fa
    ld hl, sp-$02                                 ; $7caf: $f8 $fe
    ld [bc], a                                    ; $7cb1: $02
    rrca                                          ; $7cb2: $0f
    add [hl]                                      ; $7cb3: $86
    inc d                                         ; $7cb4: $14
    db $10                                        ; $7cb5: $10
    jr z, @+$22                                   ; $7cb6: $28 $20

    ld d, h                                       ; $7cb8: $54
    ld d, b                                       ; $7cb9: $50
    ld [bc], a                                    ; $7cba: $02
    jr nz, jr_0e5_7cbf                            ; $7cbb: $20 $02

    inc [hl]                                      ; $7cbd: $34
    ld [bc], a                                    ; $7cbe: $02

jr_0e5_7cbf:
    ld a, [hl-]                                   ; $7cbf: $3a
    ld [bc], a                                    ; $7cc0: $02
    dec e                                         ; $7cc1: $1d
    add h                                         ; $7cc2: $84
    rra                                           ; $7cc3: $1f
    rla                                           ; $7cc4: $17
    rrca                                          ; $7cc5: $0f
    ld [$1c02], sp                                ; $7cc6: $08 $02 $1c
    adc d                                         ; $7cc9: $8a
    scf                                           ; $7cca: $37
    ccf                                           ; $7ccb: $3f
    ld e, b                                       ; $7ccc: $58
    ld a, a                                       ; $7ccd: $7f
    ld e, l                                       ; $7cce: $5d
    ld a, a                                       ; $7ccf: $7f
    ld e, a                                       ; $7cd0: $5f
    ld a, a                                       ; $7cd1: $7f
    sbc a                                         ; $7cd2: $9f
    rst $38                                       ; $7cd3: $ff
    ld [bc], a                                    ; $7cd4: $02
    inc c                                         ; $7cd5: $0c
    add d                                         ; $7cd6: $82
    ld c, $0a                                     ; $7cd7: $0e $0a
    ld [bc], a                                    ; $7cd9: $02
    dec bc                                        ; $7cda: $0b
    ld [bc], a                                    ; $7cdb: $02
    inc bc                                        ; $7cdc: $03
    ld [bc], a                                    ; $7cdd: $02
    ld b, $02                                     ; $7cde: $06 $02
    ld c, $02                                     ; $7ce0: $0e $02
    inc b                                         ; $7ce2: $04
    ld [bc], a                                    ; $7ce3: $02
    inc c                                         ; $7ce4: $0c
    inc b                                         ; $7ce5: $04
    ld [$0681], sp                                ; $7ce6: $08 $81 $06
    inc bc                                        ; $7ce9: $03
    ld c, $8a                                     ; $7cea: $0e $8a
    dec c                                         ; $7cec: $0d
    rrca                                          ; $7ced: $0f
    dec c                                         ; $7cee: $0d
    rrca                                          ; $7cef: $0f
    dec c                                         ; $7cf0: $0d
    rrca                                          ; $7cf1: $0f
    ld sp, hl                                     ; $7cf2: $f9
    rst $38                                       ; $7cf3: $ff
    ret nc                                        ; $7cf4: $d0

    ldh a, [rSC]                                  ; $7cf5: $f0 $02
    ld a, a                                       ; $7cf7: $7f
    ld [bc], a                                    ; $7cf8: $02
    ccf                                           ; $7cf9: $3f
    inc b                                         ; $7cfa: $04
    rra                                           ; $7cfb: $1f
    inc b                                         ; $7cfc: $04
    ccf                                           ; $7cfd: $3f
    add h                                         ; $7cfe: $84
    cpl                                           ; $7cff: $2f
    ccf                                           ; $7d00: $3f
    jr nz, @+$41                                  ; $7d01: $20 $3f

    ld [bc], a                                    ; $7d03: $02
    rra                                           ; $7d04: $1f
    ld c, $00                                     ; $7d05: $0e $00
    add c                                         ; $7d07: $81
    add hl, bc                                    ; $7d08: $09
    ld [bc], a                                    ; $7d09: $02
    rrca                                          ; $7d0a: $0f
    add e                                         ; $7d0b: $83
    dec c                                         ; $7d0c: $0d
    rrca                                          ; $7d0d: $0f
    add hl, bc                                    ; $7d0e: $09
    ld b, $0e                                     ; $7d0f: $06 $0e
    add d                                         ; $7d11: $82
    ld a, [bc]                                    ; $7d12: $0a
    ld c, $02                                     ; $7d13: $0e $02
    inc c                                         ; $7d15: $0c
    ld c, $00                                     ; $7d16: $0e $00
    rst $38                                       ; $7d18: $ff
    rlca                                          ; $7d19: $07
    ld bc, $08f9                                  ; $7d1a: $01 $f9 $08
    ld a, [c]                                     ; $7d1d: $f2
    ld bc, $fce9                                  ; $7d1e: $01 $e9 $fc
    ld [bc], a                                    ; $7d21: $02
    inc l                                         ; $7d22: $2c
    ld [bc], a                                    ; $7d23: $02
    ld e, h                                       ; $7d24: $5c
    ld [bc], a                                    ; $7d25: $02
    xor l                                         ; $7d26: $ad
    ld [bc], a                                    ; $7d27: $02
    ld a, a                                       ; $7d28: $7f
    ld [bc], a                                    ; $7d29: $02
    ld l, $02                                     ; $7d2a: $2e $02
    inc d                                         ; $7d2c: $14
    ld [bc], a                                    ; $7d2d: $02
    ld a, [bc]                                    ; $7d2e: $0a
    inc b                                         ; $7d2f: $04
    nop                                           ; $7d30: $00
    add c                                         ; $7d31: $81
    inc c                                         ; $7d32: $0c
    dec c                                         ; $7d33: $0d
    nop                                           ; $7d34: $00
    rst $38                                       ; $7d35: $ff
    dec c                                         ; $7d36: $0d
    inc b                                         ; $7d37: $04
    ei                                            ; $7d38: $fb
    dec b                                         ; $7d39: $05
    push af                                       ; $7d3a: $f5
    cp $e9                                        ; $7d3b: $fe $e9
    ei                                            ; $7d3d: $fb
    ld [$f9fe], a                                 ; $7d3e: $ea $fe $f9
    ld a, [$fff9]                                 ; $7d41: $fa $f9 $ff
    ld [bc], a                                    ; $7d44: $02
    ld e, $86                                     ; $7d45: $1e $86
    add hl, hl                                    ; $7d47: $29
    ld hl, $4151                                  ; $7d48: $21 $51 $41
    xor c                                         ; $7d4b: $a9
    and c                                         ; $7d4c: $a1
    ld [bc], a                                    ; $7d4d: $02
    ld b, b                                       ; $7d4e: $40
    ld [bc], a                                    ; $7d4f: $02
    ld l, b                                       ; $7d50: $68
    ld [bc], a                                    ; $7d51: $02
    ld [hl], l                                    ; $7d52: $75
    ld [bc], a                                    ; $7d53: $02
    ld a, [hl-]                                   ; $7d54: $3a
    add d                                         ; $7d55: $82
    ccf                                           ; $7d56: $3f
    cpl                                           ; $7d57: $2f
    ld [bc], a                                    ; $7d58: $02
    rra                                           ; $7d59: $1f
    adc h                                         ; $7d5a: $8c
    ld h, b                                       ; $7d5b: $60
    ld a, a                                       ; $7d5c: $7f
    ld a, c                                       ; $7d5d: $79
    ld a, a                                       ; $7d5e: $7f
    cp a                                          ; $7d5f: $bf
    rst $38                                       ; $7d60: $ff
    cp a                                          ; $7d61: $bf
    rst $38                                       ; $7d62: $ff
    cp a                                          ; $7d63: $bf
    rst $38                                       ; $7d64: $ff
    cp a                                          ; $7d65: $bf
    rst $38                                       ; $7d66: $ff
    ld [bc], a                                    ; $7d67: $02
    inc b                                         ; $7d68: $04
    add d                                         ; $7d69: $82
    ld b, $02                                     ; $7d6a: $06 $02
    inc b                                         ; $7d6c: $04
    inc bc                                        ; $7d6d: $03
    inc b                                         ; $7d6e: $04
    ld b, $04                                     ; $7d6f: $06 $04
    inc b                                         ; $7d71: $04
    ld [bc], a                                    ; $7d72: $02
    nop                                           ; $7d73: $00
    ld [bc], a                                    ; $7d74: $02
    inc b                                         ; $7d75: $04
    inc b                                         ; $7d76: $04
    ld b, $8a                                     ; $7d77: $06 $8a
    dec b                                         ; $7d79: $05
    rlca                                          ; $7d7a: $07
    dec b                                         ; $7d7b: $05
    rlca                                          ; $7d7c: $07
    dec b                                         ; $7d7d: $05
    rlca                                          ; $7d7e: $07
    ld sp, hl                                     ; $7d7f: $f9
    rst $38                                       ; $7d80: $ff
    ret nc                                        ; $7d81: $d0

    ldh a, [rSC]                                  ; $7d82: $f0 $02
    ld a, a                                       ; $7d84: $7f
    ld [bc], a                                    ; $7d85: $02
    ccf                                           ; $7d86: $3f
    add c                                         ; $7d87: $81
    scf                                           ; $7d88: $37
    inc bc                                        ; $7d89: $03
    ccf                                           ; $7d8a: $3f
    add [hl]                                      ; $7d8b: $86
    daa                                           ; $7d8c: $27
    ccf                                           ; $7d8d: $3f
    add hl, sp                                    ; $7d8e: $39
    ccf                                           ; $7d8f: $3f
    daa                                           ; $7d90: $27
    ccf                                           ; $7d91: $3f
    ld [bc], a                                    ; $7d92: $02
    ld e, $10                                     ; $7d93: $1e $10
    nop                                           ; $7d95: $00
    add h                                         ; $7d96: $84
    add hl, de                                    ; $7d97: $19
    rra                                           ; $7d98: $1f
    ld e, $12                                     ; $7d99: $1e $12
    ld b, $1c                                     ; $7d9b: $06 $1c
    add c                                         ; $7d9d: $81
    inc b                                         ; $7d9e: $04
    inc bc                                        ; $7d9f: $03
    inc e                                         ; $7da0: $1c
    stop                                          ; $7da1: $10 $00
    rst $38                                       ; $7da3: $ff
    rlca                                          ; $7da4: $07
    ld bc, $08f9                                  ; $7da5: $01 $f9 $08
    ld a, [c]                                     ; $7da8: $f2
    ld bc, $fcea                                  ; $7da9: $01 $ea $fc
    ld [bc], a                                    ; $7dac: $02
    inc l                                         ; $7dad: $2c
    ld [bc], a                                    ; $7dae: $02
    ld e, h                                       ; $7daf: $5c
    ld [bc], a                                    ; $7db0: $02
    xor l                                         ; $7db1: $ad
    ld [bc], a                                    ; $7db2: $02
    ld a, a                                       ; $7db3: $7f
    ld [bc], a                                    ; $7db4: $02
    ld l, $02                                     ; $7db5: $2e $02
    inc d                                         ; $7db7: $14
    ld [bc], a                                    ; $7db8: $02
    ld a, [bc]                                    ; $7db9: $0a
    ld [de], a                                    ; $7dba: $12
    nop                                           ; $7dbb: $00
    rst $38                                       ; $7dbc: $ff
    dec c                                         ; $7dbd: $0d
    inc b                                         ; $7dbe: $04
    ei                                            ; $7dbf: $fb
    dec b                                         ; $7dc0: $05
    push af                                       ; $7dc1: $f5
    cp $e8                                        ; $7dc2: $fe $e8
    ei                                            ; $7dc4: $fb
    jp hl                                         ; $7dc5: $e9


    rst $38                                       ; $7dc6: $ff
    ld hl, sp-$05                                 ; $7dc7: $f8 $fb
    ld hl, sp-$01                                 ; $7dc9: $f8 $ff
    ld [bc], a                                    ; $7dcb: $02
    ld e, $86                                     ; $7dcc: $1e $86
    add hl, hl                                    ; $7dce: $29
    ld hl, $4151                                  ; $7dcf: $21 $51 $41
    or d                                          ; $7dd2: $b2
    and d                                         ; $7dd3: $a2
    ld [bc], a                                    ; $7dd4: $02
    ld b, b                                       ; $7dd5: $40
    ld [bc], a                                    ; $7dd6: $02
    ld d, b                                       ; $7dd7: $50
    ld [bc], a                                    ; $7dd8: $02
    ld l, d                                       ; $7dd9: $6a
    ld [bc], a                                    ; $7dda: $02
    dec [hl]                                      ; $7ddb: $35
    add h                                         ; $7ddc: $84
    ccf                                           ; $7ddd: $3f
    ld l, $1f                                     ; $7dde: $2e $1f
    ld de, $3102                                  ; $7de0: $11 $02 $31
    adc d                                         ; $7de3: $8a
    ld l, [hl]                                    ; $7de4: $6e
    ld a, a                                       ; $7de5: $7f
    or c                                          ; $7de6: $b1
    rst $38                                       ; $7de7: $ff
    cp e                                          ; $7de8: $bb
    rst $38                                       ; $7de9: $ff
    cp a                                          ; $7dea: $bf
    rst $38                                       ; $7deb: $ff
    cp a                                          ; $7dec: $bf
    rst $38                                       ; $7ded: $ff
    ld [bc], a                                    ; $7dee: $02
    ld [$0c83], sp                                ; $7def: $08 $83 $0c
    inc b                                         ; $7df2: $04
    ld c, $03                                     ; $7df3: $0e $03
    ld b, $02                                     ; $7df5: $06 $02
    inc b                                         ; $7df7: $04
    ld [bc], a                                    ; $7df8: $02
    inc c                                         ; $7df9: $0c
    inc b                                         ; $7dfa: $04
    ld [$0002], sp                                ; $7dfb: $08 $02 $00
    ld [bc], a                                    ; $7dfe: $02
    ld [$0c02], sp                                ; $7dff: $08 $02 $0c
    adc l                                         ; $7e02: $8d
    ld a, [bc]                                    ; $7e03: $0a
    ld c, $0a                                     ; $7e04: $0e $0a
    ld c, $0a                                     ; $7e06: $0e $0a
    ld c, $0a                                     ; $7e08: $0e $0a
    ld c, $f9                                     ; $7e0a: $0e $f9
    rst $38                                       ; $7e0c: $ff
    or b                                          ; $7e0d: $b0
    ldh a, [$bf]                                  ; $7e0e: $f0 $bf
    ld [bc], a                                    ; $7e10: $02
    rst $38                                       ; $7e11: $ff
    add c                                         ; $7e12: $81
    cp a                                          ; $7e13: $bf
    ld b, $7f                                     ; $7e14: $06 $7f
    add c                                         ; $7e16: $81
    ld h, a                                       ; $7e17: $67
    inc bc                                        ; $7e18: $03
    ld a, a                                       ; $7e19: $7f
    add d                                         ; $7e1a: $82
    jr c, @+$41                                   ; $7e1b: $38 $3f

    ld [bc], a                                    ; $7e1d: $02
    rra                                           ; $7e1e: $1f
    ld c, $00                                     ; $7e1f: $0e $00
    add h                                         ; $7e21: $84
    dec bc                                        ; $7e22: $0b
    rrca                                          ; $7e23: $0f
    ld c, $0a                                     ; $7e24: $0e $0a
    ld [bc], a                                    ; $7e26: $02
    inc c                                         ; $7e27: $0c
    inc b                                         ; $7e28: $04
    ld [$0c04], sp                                ; $7e29: $08 $04 $0c
    add d                                         ; $7e2c: $82
    inc b                                         ; $7e2d: $04
    inc c                                         ; $7e2e: $0c
    ld [bc], a                                    ; $7e2f: $02
    ld [$000c], sp                                ; $7e30: $08 $0c $00
    rst $38                                       ; $7e33: $ff
    rlca                                          ; $7e34: $07
    ld bc, $08f9                                  ; $7e35: $01 $f9 $08
    ld a, [c]                                     ; $7e38: $f2
    ld bc, $fce9                                  ; $7e39: $01 $e9 $fc
    ld [bc], a                                    ; $7e3c: $02
    inc l                                         ; $7e3d: $2c
    ld [bc], a                                    ; $7e3e: $02
    ld e, h                                       ; $7e3f: $5c
    ld [bc], a                                    ; $7e40: $02
    sbc d                                         ; $7e41: $9a
    ld [bc], a                                    ; $7e42: $02
    ld a, a                                       ; $7e43: $7f
    ld [bc], a                                    ; $7e44: $02
    ld e, a                                       ; $7e45: $5f
    ld [bc], a                                    ; $7e46: $02
    ld a, [hl+]                                   ; $7e47: $2a
    ld [bc], a                                    ; $7e48: $02
    inc d                                         ; $7e49: $14
    inc b                                         ; $7e4a: $04
    nop                                           ; $7e4b: $00
    add c                                         ; $7e4c: $81
    inc e                                         ; $7e4d: $1c
    dec c                                         ; $7e4e: $0d
    nop                                           ; $7e4f: $00
    rst $38                                       ; $7e50: $ff
    dec c                                         ; $7e51: $0d
    inc b                                         ; $7e52: $04
    ei                                            ; $7e53: $fb
    dec b                                         ; $7e54: $05
    push af                                       ; $7e55: $f5
    cp $e8                                        ; $7e56: $fe $e8
    ei                                            ; $7e58: $fb
    jp hl                                         ; $7e59: $e9


    rst $38                                       ; $7e5a: $ff
    ld hl, sp-$06                                 ; $7e5b: $f8 $fa
    ld hl, sp-$02                                 ; $7e5d: $f8 $fe
    ld [bc], a                                    ; $7e5f: $02
    rrca                                          ; $7e60: $0f
    sub d                                         ; $7e61: $92
    inc [hl]                                      ; $7e62: $34
    jr nc, jr_0e5_7eb7                            ; $7e63: $30 $52

    ld d, b                                       ; $7e65: $50
    ld sp, hl                                     ; $7e66: $f9
    xor c                                         ; $7e67: $a9
    cp [hl]                                       ; $7e68: $be
    and [hl]                                      ; $7e69: $a6
    ld a, a                                       ; $7e6a: $7f
    ld a, e                                       ; $7e6b: $7b
    ld a, a                                       ; $7e6c: $7f
    ld l, b                                       ; $7e6d: $68
    ccf                                           ; $7e6e: $3f
    inc h                                         ; $7e6f: $24
    ccf                                           ; $7e70: $3f
    ld l, $1f                                     ; $7e71: $2e $1f
    ld de, $3f02                                  ; $7e73: $11 $02 $3f
    adc d                                         ; $7e76: $8a
    ld d, l                                       ; $7e77: $55
    ld [hl], l                                    ; $7e78: $75
    ld e, e                                       ; $7e79: $5b
    ld a, e                                       ; $7e7a: $7b
    or l                                          ; $7e7b: $b5
    rst $38                                       ; $7e7c: $ff
    cp e                                          ; $7e7d: $bb
    rst $38                                       ; $7e7e: $ff
    cp e                                          ; $7e7f: $bb
    rst $38                                       ; $7e80: $ff
    ld [bc], a                                    ; $7e81: $02
    ld [$0402], sp                                ; $7e82: $08 $02 $04
    ld [bc], a                                    ; $7e85: $02
    ld b, $06                                     ; $7e86: $06 $06
    inc c                                         ; $7e88: $0c
    inc b                                         ; $7e89: $04
    ld [$0002], sp                                ; $7e8a: $08 $02 $00
    ld [bc], a                                    ; $7e8d: $02
    ld [$0499], sp                                ; $7e8e: $08 $99 $04
    inc c                                         ; $7e91: $0c
    inc b                                         ; $7e92: $04
    inc c                                         ; $7e93: $0c
    ld a, [bc]                                    ; $7e94: $0a
    ld c, $0a                                     ; $7e95: $0e $0a
    ld c, $0a                                     ; $7e97: $0e $0a
    ld c, $b9                                     ; $7e99: $0e $b9
    rst $38                                       ; $7e9b: $ff
    sbc b                                         ; $7e9c: $98
    ld hl, sp+$6d                                 ; $7e9d: $f8 $6d
    ld a, a                                       ; $7e9f: $7f
    ld a, l                                       ; $7ea0: $7d
    ld e, a                                       ; $7ea1: $5f
    ld a, [hl-]                                   ; $7ea2: $3a
    cpl                                           ; $7ea3: $2f
    ld a, [de]                                    ; $7ea4: $1a
    rra                                           ; $7ea5: $1f
    ld a, [hl-]                                   ; $7ea6: $3a
    ccf                                           ; $7ea7: $3f
    scf                                           ; $7ea8: $37
    inc bc                                        ; $7ea9: $03
    ccf                                           ; $7eaa: $3f
    add d                                         ; $7eab: $82
    dec h                                         ; $7eac: $25
    dec a                                         ; $7ead: $3d
    ld [bc], a                                    ; $7eae: $02
    jr jr_0e5_7ebf                                ; $7eaf: $18 $0e

    nop                                           ; $7eb1: $00
    add c                                         ; $7eb2: $81
    dec bc                                        ; $7eb3: $0b
    ld [bc], a                                    ; $7eb4: $02
    rrca                                          ; $7eb5: $0f
    add c                                         ; $7eb6: $81

jr_0e5_7eb7:
    dec c                                         ; $7eb7: $0d
    ld [bc], a                                    ; $7eb8: $02
    ld c, $02                                     ; $7eb9: $0e $02
    inc c                                         ; $7ebb: $0c
    ld [bc], a                                    ; $7ebc: $02
    ld c, $81                                     ; $7ebd: $0e $81

jr_0e5_7ebf:
    ld b, $03                                     ; $7ebf: $06 $03
    ld c, $82                                     ; $7ec1: $0e $82
    ld [bc], a                                    ; $7ec3: $02
    ld c, $02                                     ; $7ec4: $0e $02
    inc c                                         ; $7ec6: $0c
    inc c                                         ; $7ec7: $0c
    nop                                           ; $7ec8: $00
    rst $38                                       ; $7ec9: $ff
    rlca                                          ; $7eca: $07
    ld bc, $08f9                                  ; $7ecb: $01 $f9 $08
    ld a, [c]                                     ; $7ece: $f2
    ld bc, $fce9                                  ; $7ecf: $01 $e9 $fc
    ld [bc], a                                    ; $7ed2: $02
    ld d, $02                                     ; $7ed3: $16 $02
    ld e, e                                       ; $7ed5: $5b
    ld [bc], a                                    ; $7ed6: $02
    dec c                                         ; $7ed7: $0d
    ld [bc], a                                    ; $7ed8: $02
    add d                                         ; $7ed9: $82
    inc c                                         ; $7eda: $0c
    nop                                           ; $7edb: $00
    add e                                         ; $7edc: $83
    inc d                                         ; $7edd: $14
    nop                                           ; $7ede: $00
    ld [$0009], sp                                ; $7edf: $08 $09 $00
    rst $38                                       ; $7ee2: $ff
    dec c                                         ; $7ee3: $0d
    inc b                                         ; $7ee4: $04
    ei                                            ; $7ee5: $fb
    dec b                                         ; $7ee6: $05
    push af                                       ; $7ee7: $f5
    cp $e8                                        ; $7ee8: $fe $e8
    ei                                            ; $7eea: $fb
    jp hl                                         ; $7eeb: $e9


    rst $38                                       ; $7eec: $ff
    ld hl, sp-$05                                 ; $7eed: $f8 $fb
    ld hl, sp-$02                                 ; $7eef: $f8 $fe
    ld [bc], a                                    ; $7ef1: $02
    rrca                                          ; $7ef2: $0f
    add h                                         ; $7ef3: $84
    inc [hl]                                      ; $7ef4: $34
    jr nc, jr_0e5_7f4b                            ; $7ef5: $30 $54

    ld d, b                                       ; $7ef7: $50
    ld [bc], a                                    ; $7ef8: $02
    cp e                                          ; $7ef9: $bb
    adc h                                         ; $7efa: $8c
    cp h                                          ; $7efb: $bc
    and h                                         ; $7efc: $a4
    ld [hl], a                                    ; $7efd: $77
    ld [hl], e                                    ; $7efe: $73
    ld a, a                                       ; $7eff: $7f
    ld [hl], b                                    ; $7f00: $70
    ccf                                           ; $7f01: $3f
    jr z, jr_0e5_7f41                             ; $7f02: $28 $3d

    inc l                                         ; $7f04: $2c
    rra                                           ; $7f05: $1f
    ld de, $1f02                                  ; $7f06: $11 $02 $1f
    ld [bc], a                                    ; $7f09: $02
    dec [hl]                                      ; $7f0a: $35
    adc b                                         ; $7f0b: $88
    ld e, e                                       ; $7f0c: $5b
    ld a, e                                       ; $7f0d: $7b
    ld d, l                                       ; $7f0e: $55
    ld a, a                                       ; $7f0f: $7f
    cp e                                          ; $7f10: $bb
    rst $38                                       ; $7f11: $ff
    sbc e                                         ; $7f12: $9b
    rst $38                                       ; $7f13: $ff
    ld [bc], a                                    ; $7f14: $02
    ld [$0402], sp                                ; $7f15: $08 $02 $04
    ld [bc], a                                    ; $7f18: $02
    ld b, $06                                     ; $7f19: $06 $06
    inc c                                         ; $7f1b: $0c
    inc b                                         ; $7f1c: $04
    ld [$0002], sp                                ; $7f1d: $08 $02 $00
    inc b                                         ; $7f20: $04
    inc c                                         ; $7f21: $0c
    sub [hl]                                      ; $7f22: $96
    ld a, [bc]                                    ; $7f23: $0a
    ld c, $0a                                     ; $7f24: $0e $0a
    ld c, $09                                     ; $7f26: $0e $09
    rrca                                          ; $7f28: $0f
    add hl, bc                                    ; $7f29: $09
    rrca                                          ; $7f2a: $0f
    cp d                                          ; $7f2b: $ba
    cp $90                                        ; $7f2c: $fe $90
    ldh a, [$89]                                  ; $7f2e: $f0 $89
    rst $38                                       ; $7f30: $ff
    ld a, l                                       ; $7f31: $7d
    ld c, a                                       ; $7f32: $4f
    ld a, [hl]                                    ; $7f33: $7e
    ld c, e                                       ; $7f34: $4b
    scf                                           ; $7f35: $37
    ccf                                           ; $7f36: $3f
    scf                                           ; $7f37: $37
    ccf                                           ; $7f38: $3f
    ld [bc], a                                    ; $7f39: $02
    ld a, a                                       ; $7f3a: $7f
    add d                                         ; $7f3b: $82
    ld l, [hl]                                    ; $7f3c: $6e
    ld a, a                                       ; $7f3d: $7f
    ld [bc], a                                    ; $7f3e: $02
    dec sp                                        ; $7f3f: $3b
    ld [bc], a                                    ; $7f40: $02

jr_0e5_7f41:
    inc bc                                        ; $7f41: $03
    ld c, $00                                     ; $7f42: $0e $00
    add d                                         ; $7f44: $82
    rlca                                          ; $7f45: $07
    dec b                                         ; $7f46: $05
    inc b                                         ; $7f47: $04
    ld b, $81                                     ; $7f48: $06 $81
    ld [bc], a                                    ; $7f4a: $02

jr_0e5_7f4b:
    dec b                                         ; $7f4b: $05
    ld b, $81                                     ; $7f4c: $06 $81
    ld [bc], a                                    ; $7f4e: $02
    inc bc                                        ; $7f4f: $03
    ld b, $02                                     ; $7f50: $06 $02
    inc b                                         ; $7f52: $04
    inc c                                         ; $7f53: $0c
    nop                                           ; $7f54: $00
    rst $38                                       ; $7f55: $ff
    rlca                                          ; $7f56: $07
    ld bc, $08f9                                  ; $7f57: $01 $f9 $08
    ld a, [c]                                     ; $7f5a: $f2
    ld bc, $fce9                                  ; $7f5b: $01 $e9 $fc
    ld [bc], a                                    ; $7f5e: $02
    ld d, $02                                     ; $7f5f: $16 $02
    ld d, a                                       ; $7f61: $57
    ld [bc], a                                    ; $7f62: $02
    adc c                                         ; $7f63: $89
    ld [bc], a                                    ; $7f64: $02
    add [hl]                                      ; $7f65: $86
    ld [bc], a                                    ; $7f66: $02
    db $10                                        ; $7f67: $10
    inc b                                         ; $7f68: $04
    nop                                           ; $7f69: $00
    ld [bc], a                                    ; $7f6a: $02
    inc b                                         ; $7f6b: $04
    inc b                                         ; $7f6c: $04
    nop                                           ; $7f6d: $00
    add e                                         ; $7f6e: $83
    inc d                                         ; $7f6f: $14
    nop                                           ; $7f70: $00
    ld [$0009], sp                                ; $7f71: $08 $09 $00
    rst $38                                       ; $7f74: $ff
    dec c                                         ; $7f75: $0d
    inc b                                         ; $7f76: $04
    ei                                            ; $7f77: $fb
    dec b                                         ; $7f78: $05
    push af                                       ; $7f79: $f5
    cp $e9                                        ; $7f7a: $fe $e9
    ei                                            ; $7f7c: $fb
    ld [$f9ff], a                                 ; $7f7d: $ea $ff $f9
    ei                                            ; $7f80: $fb
    ld sp, hl                                     ; $7f81: $f9
    cp $02                                        ; $7f82: $fe $02
    rrca                                          ; $7f84: $0f
    add h                                         ; $7f85: $84
    inc [hl]                                      ; $7f86: $34
    jr nc, @+$56                                  ; $7f87: $30 $54

    ld d, b                                       ; $7f89: $50
    ld [bc], a                                    ; $7f8a: $02
    or e                                          ; $7f8b: $b3
    adc h                                         ; $7f8c: $8c
    db $fc                                        ; $7f8d: $fc
    db $ec                                        ; $7f8e: $ec
    ld [hl], a                                    ; $7f8f: $77
    ld [hl], e                                    ; $7f90: $73
    ld a, a                                       ; $7f91: $7f
    ld [hl], b                                    ; $7f92: $70
    ccf                                           ; $7f93: $3f
    jr z, @+$41                                   ; $7f94: $28 $3f

    ld l, $1f                                     ; $7f96: $2e $1f
    ld de, $1f02                                  ; $7f98: $11 $02 $1f
    ld [bc], a                                    ; $7f9b: $02
    ld [hl], l                                    ; $7f9c: $75
    adc b                                         ; $7f9d: $88
    ld e, e                                       ; $7f9e: $5b
    ld a, e                                       ; $7f9f: $7b
    ld d, l                                       ; $7fa0: $55
    ld a, a                                       ; $7fa1: $7f
    cp e                                          ; $7fa2: $bb
    rst $38                                       ; $7fa3: $ff
    cp e                                          ; $7fa4: $bb
    rst $38                                       ; $7fa5: $ff
    ld [bc], a                                    ; $7fa6: $02
    ld [$0402], sp                                ; $7fa7: $08 $02 $04
    ld [bc], a                                    ; $7faa: $02
    ld b, $06                                     ; $7fab: $06 $06
    inc c                                         ; $7fad: $0c
    inc b                                         ; $7fae: $04
    ld [$0002], sp                                ; $7faf: $08 $02 $00
    ld [bc], a                                    ; $7fb2: $02
    ld [$0c02], sp                                ; $7fb3: $08 $02 $0c
    sub [hl]                                      ; $7fb6: $96
    inc b                                         ; $7fb7: $04
    inc c                                         ; $7fb8: $0c
    ld a, [bc]                                    ; $7fb9: $0a
    ld c, $0a                                     ; $7fba: $0e $0a
    ld c, $09                                     ; $7fbc: $0e $09
    rrca                                          ; $7fbe: $0f
    cp d                                          ; $7fbf: $ba
    cp $90                                        ; $7fc0: $fe $90
    ldh a, [$9b]                                  ; $7fc2: $f0 $9b
    rst $38                                       ; $7fc4: $ff
    db $fd                                        ; $7fc5: $fd
    sbc a                                         ; $7fc6: $9f
    cp $af                                        ; $7fc7: $fe $af
    halt                                          ; $7fc9: $76
    ld a, a                                       ; $7fca: $7f
    ld [hl], a                                    ; $7fcb: $77
    ld a, a                                       ; $7fcc: $7f
    ld [bc], a                                    ; $7fcd: $02
    ccf                                           ; $7fce: $3f
    add d                                         ; $7fcf: $82
    ld a, [de]                                    ; $7fd0: $1a
    dec de                                        ; $7fd1: $1b
    ld [bc], a                                    ; $7fd2: $02
    inc bc                                        ; $7fd3: $03
    stop                                          ; $7fd4: $10 $00
    add h                                         ; $7fd6: $84
    rlca                                          ; $7fd7: $07
    dec b                                         ; $7fd8: $05
    rlca                                          ; $7fd9: $07
    dec b                                         ; $7fda: $05
    ld [bc], a                                    ; $7fdb: $02
    ld b, $02                                     ; $7fdc: $06 $02
    inc b                                         ; $7fde: $04
    inc b                                         ; $7fdf: $04
    ld b, $81                                     ; $7fe0: $06 $81
    ld [bc], a                                    ; $7fe2: $02
    inc bc                                        ; $7fe3: $03
    ld b, $0e                                     ; $7fe4: $06 $0e
    nop                                           ; $7fe6: $00
    rst $38                                       ; $7fe7: $ff
    rlca                                          ; $7fe8: $07
    ld bc, $0cf5                                  ; $7fe9: $01 $f5 $0c
    rst $30                                       ; $7fec: $f7
    ld b, $fc                                     ; $7fed: $06 $fc
    ei                                            ; $7fef: $fb
    ld [bc], a                                    ; $7ff0: $02
    add hl, bc                                    ; $7ff1: $09
    ld e, $00                                     ; $7ff2: $1e $00
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
