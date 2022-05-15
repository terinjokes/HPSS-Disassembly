; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0af", ROMX[$4000], BANK[$af]

    db $af

    db $10                                        ; $4001: $10
    inc bc                                        ; $4002: $03
    sub d                                         ; $4003: $92
    ld [bc], a                                    ; $4004: $02
    ld d, b                                       ; $4005: $50
    nop                                           ; $4006: $00
    ld bc, $fee0                                  ; $4007: $01 $e0 $fe
    ld [bc], a                                    ; $400a: $02
    stop                                          ; $400b: $10 $00
    ldh [$1f], a                                  ; $400d: $e0 $1f
    jp $a000                                      ; $400f: $c3 $00 $a0


    sbc [hl]                                      ; $4012: $9e
    jp nz, Jump_000_04dc                          ; $4013: $c2 $dc $04

    ld a, [bc]                                    ; $4016: $0a
    ld h, c                                       ; $4017: $61
    ldh [rP1], a                                  ; $4018: $e0 $00
    ld hl, sp-$0f                                 ; $401a: $f8 $f1
    add a                                         ; $401c: $87
    ld a, d                                       ; $401d: $7a
    add $b5                                       ; $401e: $c6 $b5
    sub d                                         ; $4020: $92
    ld h, c                                       ; $4021: $61
    nop                                           ; $4022: $00
    sub h                                         ; $4023: $94
    db $f4                                        ; $4024: $f4
    db $fc                                        ; $4025: $fc
    sbc e                                         ; $4026: $9b
    sbc d                                         ; $4027: $9a
    db $fc                                        ; $4028: $fc
    dec c                                         ; $4029: $0d
    db $ec                                        ; $402a: $ec
    nop                                           ; $402b: $00
    ld a, [hl+]                                   ; $402c: $2a
    ret                                           ; $402d: $c9


    add a                                         ; $402e: $87
    jp Jump_000_0285                              ; $402f: $c3 $85 $02


    sub b                                         ; $4032: $90
    ld [$6000], sp                                ; $4033: $08 $00 $60
    db $fc                                        ; $4036: $fc
    ld l, l                                       ; $4037: $6d
    ld d, [hl]                                    ; $4038: $56
    ld h, e                                       ; $4039: $63
    ld [hl], l                                    ; $403a: $75
    add b                                         ; $403b: $80
    sbc a                                         ; $403c: $9f
    nop                                           ; $403d: $00
    ret nz                                        ; $403e: $c0

    sbc a                                         ; $403f: $9f
    add b                                         ; $4040: $80
    add a                                         ; $4041: $87
    jr @+$0b                                      ; $4042: $18 $09

    ld [hl-], a                                   ; $4044: $32
    ld c, h                                       ; $4045: $4c
    ld [bc], a                                    ; $4046: $02
    ld d, d                                       ; $4047: $52
    ld c, h                                       ; $4048: $4c
    inc a                                         ; $4049: $3c
    adc h                                         ; $404a: $8c
    ret nz                                        ; $404b: $c0

    ldh [$5f], a                                  ; $404c: $e0 $5f
    ldh a, [rP1]                                  ; $404e: $f0 $00
    nop                                           ; $4050: $00
    ld bc, $0200                                  ; $4051: $01 $00 $02
    inc bc                                        ; $4054: $03
    ld c, $07                                     ; $4055: $0e $07
    inc e                                         ; $4057: $1c
    ld c, $00                                     ; $4058: $0e $00
    jr c, jr_0af_4095                             ; $405a: $38 $39

    inc [hl]                                      ; $405c: $34
    ld sp, $e01c                                  ; $405d: $31 $1c $e0
    ld h, b                                       ; $4060: $60
    ld h, e                                       ; $4061: $63
    nop                                           ; $4062: $00
    ldh [rIF], a                                  ; $4063: $e0 $0f
    ret nz                                        ; $4065: $c0

    ld e, [hl]                                    ; $4066: $5e
    jr c, jr_0af_407a                             ; $4067: $38 $11

    jr c, jr_0af_407d                             ; $4069: $38 $12

    nop                                           ; $406b: $00
    jp nz, $82f1                                  ; $406c: $c2 $f1 $82

    pop af                                        ; $406f: $f1
    sbc b                                         ; $4070: $98
    inc bc                                        ; $4071: $03
    db $ec                                        ; $4072: $ec
    ld hl, $d800                                  ; $4073: $21 $00 $d8
    jp Jump_000_1413                              ; $4076: $c3 $13 $14


    add [hl]                                      ; $4079: $86

jr_0af_407a:
    ld bc, $408c                                  ; $407a: $01 $8c $40

jr_0af_407d:
    nop                                           ; $407d: $00
    ld e, c                                       ; $407e: $59
    ld b, l                                       ; $407f: $45
    sub b                                         ; $4080: $90
    rst $08                                       ; $4081: $cf
    sub e                                         ; $4082: $93
    ret nc                                        ; $4083: $d0

    add e                                         ; $4084: $83
    inc bc                                        ; $4085: $03
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    ret nz                                        ; $4088: $c0

    ld hl, sp-$10                                 ; $4089: $f8 $f0
    jr nc, jr_0af_4105                            ; $408b: $30 $78

    db $10                                        ; $408d: $10
    jr nc, jr_0af_4090                            ; $408e: $30 $00

jr_0af_4090:
    sub [hl]                                      ; $4090: $96
    jr nc, jr_0af_40c3                            ; $4091: $30 $30

    adc [hl]                                      ; $4093: $8e
    sbc [hl]                                      ; $4094: $9e

jr_0af_4095:
    inc c                                         ; $4095: $0c
    daa                                           ; $4096: $27
    rst $00                                       ; $4097: $c7
    nop                                           ; $4098: $00
    inc de                                        ; $4099: $13
    ld l, e                                       ; $409a: $6b
    dec a                                         ; $409b: $3d
    ld bc, $4539                                  ; $409c: $01 $39 $45
    ld [hl], b                                    ; $409f: $70
    ld [$6602], sp                                ; $40a0: $08 $02 $66
    sub [hl]                                      ; $40a3: $96
    pop hl                                        ; $40a4: $e1
    ld l, $c0                                     ; $40a5: $2e $c0
    rst $00                                       ; $40a7: $c7
    ret nc                                        ; $40a8: $d0

    ld d, b                                       ; $40a9: $50
    add b                                         ; $40aa: $80
    nop                                           ; $40ab: $00
    ret nz                                        ; $40ac: $c0

    nop                                           ; $40ad: $00
    inc bc                                        ; $40ae: $03
    cp $0c                                        ; $40af: $fe $0c
    rlca                                          ; $40b1: $07
    db $10                                        ; $40b2: $10
    rra                                           ; $40b3: $1f
    nop                                           ; $40b4: $00
    inc hl                                        ; $40b5: $23
    ccf                                           ; $40b6: $3f
    adc $7e                                       ; $40b7: $ce $7e
    ld hl, sp+$61                                 ; $40b9: $f8 $61
    ldh [rSCX], a                                 ; $40bb: $e0 $43
    nop                                           ; $40bd: $00
    ret nc                                        ; $40be: $d0

    ld e, $1c                                     ; $40bf: $1e $1c
    ld hl, sp-$10                                 ; $40c1: $f8 $f0

jr_0af_40c3:
    pop bc                                        ; $40c3: $c1
    ret nz                                        ; $40c4: $c0

    add d                                         ; $40c5: $82
    nop                                           ; $40c6: $00
    jr z, jr_0af_4104                             ; $40c7: $28 $3b

    db $fc                                        ; $40c9: $fc
    add c                                         ; $40ca: $81
    cp h                                          ; $40cb: $bc
    ld a, [hl]                                    ; $40cc: $7e
    ld a, h                                       ; $40cd: $7c
    or $00                                        ; $40ce: $f6 $00
    ld [hl], h                                    ; $40d0: $74
    ld h, b                                       ; $40d1: $60
    sub b                                         ; $40d2: $90
    add e                                         ; $40d3: $83
    ld [$d878], sp                                ; $40d4: $08 $78 $d8
    ld a, [hl]                                    ; $40d7: $7e
    nop                                           ; $40d8: $00
    ret nc                                        ; $40d9: $d0

    xor b                                         ; $40da: $a8
    add b                                         ; $40db: $80
    ld b, b                                       ; $40dc: $40
    inc b                                         ; $40dd: $04
    ld [bc], a                                    ; $40de: $02
    push bc                                       ; $40df: $c5
    jp nz, $c600                                  ; $40e0: $c2 $00 $c6

    inc d                                         ; $40e3: $14
    inc bc                                        ; $40e4: $03
    dec hl                                        ; $40e5: $2b
    ld a, a                                       ; $40e6: $7f
    nop                                           ; $40e7: $00
    ld a, a                                       ; $40e8: $7f
    sbc a                                         ; $40e9: $9f
    nop                                           ; $40ea: $00

jr_0af_40eb:
    rra                                           ; $40eb: $1f
    ccf                                           ; $40ec: $3f
    ccf                                           ; $40ed: $3f
    ld e, a                                       ; $40ee: $5f
    ccf                                           ; $40ef: $3f
    ld e, a                                       ; $40f0: $5f
    ld a, $1f                                     ; $40f1: $3e $1f
    nop                                           ; $40f3: $00
    ld e, $4f                                     ; $40f4: $1e $4f
    or d                                          ; $40f6: $b2
    sbc d                                         ; $40f7: $9a
    or $20                                        ; $40f8: $f6 $20
    ld a, [$00fe]                                 ; $40fa: $fa $fe $00
    add $fc                                       ; $40fd: $c6 $fc
    cp $fc                                        ; $40ff: $fe $fc
    dec c                                         ; $4101: $0d
    db $fc                                        ; $4102: $fc
    ld l, c                                       ; $4103: $69

jr_0af_4104:
    ld a, [de]                                    ; $4104: $1a

jr_0af_4105:
    nop                                           ; $4105: $00
    inc de                                        ; $4106: $13
    sub e                                         ; $4107: $93
    ld bc, $0cd1                                  ; $4108: $01 $d1 $0c
    db $10                                        ; $410b: $10
    inc c                                         ; $410c: $0c

Jump_0af_410d:
    ld b, $00                                     ; $410d: $06 $00
    call z, Call_000_0d06                         ; $410f: $cc $06 $0d
    ld bc, $800c                                  ; $4112: $01 $0c $80
    ld h, b                                       ; $4115: $60
    ld l, h                                       ; $4116: $6c
    nop                                           ; $4117: $00
    or b                                          ; $4118: $b0
    ld de, $80e0                                  ; $4119: $11 $e0 $80
    ld h, b                                       ; $411c: $60
    ld hl, sp+$70                                 ; $411d: $f8 $70
    inc c                                         ; $411f: $0c
    nop                                           ; $4120: $00
    inc d                                         ; $4121: $14
    ld c, $ed                                     ; $4122: $0e $ed
    ld [c], a                                     ; $4124: $e2
    push af                                       ; $4125: $f5
    ld a, [c]                                     ; $4126: $f2
    inc [hl]                                      ; $4127: $34
    inc sp                                        ; $4128: $33
    nop                                           ; $4129: $00
    call nc, $8413                                ; $412a: $d4 $13 $84
    inc a                                         ; $412d: $3c
    ret nz                                        ; $412e: $c0

    ld b, c                                       ; $412f: $41
    ldh a, [$7d]                                  ; $4130: $f0 $7d
    nop                                           ; $4132: $00
    ld hl, sp-$7e                                 ; $4133: $f8 $82
    ldh a, [$c7]                                  ; $4135: $f0 $c7
    add hl, sp                                    ; $4137: $39
    inc bc                                        ; $4138: $03
    dec sp                                        ; $4139: $3b

Jump_0af_413a:
    inc bc                                        ; $413a: $03
    nop                                           ; $413b: $00
    ld hl, $e41d                                  ; $413c: $21 $1d $e4
    ld b, c                                       ; $413f: $41
    ld c, c                                       ; $4140: $49
    add l                                         ; $4141: $85
    adc b                                         ; $4142: $88
    inc b                                         ; $4143: $04
    nop                                           ; $4144: $00
    inc l                                         ; $4145: $2c
    ld b, $4e                                     ; $4146: $06 $4e
    ld h, [hl]                                    ; $4148: $66
    sub h                                         ; $4149: $94
    ld e, d                                       ; $414a: $5a
    db $dd                                        ; $414b: $dd
    ld b, e                                       ; $414c: $43
    nop                                           ; $414d: $00
    inc bc                                        ; $414e: $03
    adc a                                         ; $414f: $8f
    ret z                                         ; $4150: $c8

    jr jr_0af_40eb                                ; $4151: $18 $98

    call nz, $928c                                ; $4153: $c4 $8c $92
    nop                                           ; $4156: $00
    ld a, [bc]                                    ; $4157: $0a
    adc [hl]                                      ; $4158: $8e
    dec bc                                        ; $4159: $0b
    add hl, hl                                    ; $415a: $29
    inc h                                         ; $415b: $24
    add hl, hl                                    ; $415c: $29
    halt                                          ; $415d: $76
    ld d, b                                       ; $415e: $50
    nop                                           ; $415f: $00
    ld [hl], d                                    ; $4160: $72
    ld b, $4f                                     ; $4161: $06 $4f
    sub [hl]                                      ; $4163: $96
    ld h, e                                       ; $4164: $63
    rst $00                                       ; $4165: $c7
    ld a, b                                       ; $4166: $78
    pop af                                        ; $4167: $f1
    nop                                           ; $4168: $00
    ld a, h                                       ; $4169: $7c
    cp $7c                                        ; $416a: $fe $7c
    ccf                                           ; $416c: $3f
    ccf                                           ; $416d: $3f
    sbc a                                         ; $416e: $9f
    ret nc                                        ; $416f: $d0

    ld c, a                                       ; $4170: $4f
    nop                                           ; $4171: $00
    ret c                                         ; $4172: $d8

    rlca                                          ; $4173: $07
    dec l                                         ; $4174: $2d
    ret nz                                        ; $4175: $c0

    db $ec                                        ; $4176: $ec
    add $e4                                       ; $4177: $c6 $e4
    di                                            ; $4179: $f3
    nop                                           ; $417a: $00
    ld a, [bc]                                    ; $417b: $0a
    db $10                                        ; $417c: $10
    ret                                           ; $417d: $c9


    rra                                           ; $417e: $1f
    db $d3                                        ; $417f: $d3
    rlca                                          ; $4180: $07
    adc $cf                                       ; $4181: $ce $cf
    nop                                           ; $4183: $00
    ld e, $8f                                     ; $4184: $1e $8f
    ldh a, [rNR42]                                ; $4186: $f0 $21
    ldh a, [$c4]                                  ; $4188: $f0 $c4
    push de                                       ; $418a: $d5
    inc h                                         ; $418b: $24
    nop                                           ; $418c: $00
    inc de                                        ; $418d: $13
    ldh [$ae], a                                  ; $418e: $e0 $ae
    ldh [$9a], a                                  ; $4190: $e0 $9a
    ret nz                                        ; $4192: $c0

    sub b                                         ; $4193: $90
    or d                                          ; $4194: $b2
    nop                                           ; $4195: $00
    inc b                                         ; $4196: $04

jr_0af_4197:
    ld h, d                                       ; $4197: $62
    jp nz, $e206                                  ; $4198: $c2 $06 $e2

    ld c, $61                                     ; $419b: $0e $61
    rrca                                          ; $419d: $0f
    ld [$0f43], sp                                ; $419e: $08 $43 $0f
    ret nc                                        ; $41a1: $d0

    inc e                                         ; $41a2: $1c
    ld [bc], a                                    ; $41a3: $02
    nop                                           ; $41a4: $00
    jr jr_0af_4197                                ; $41a5: $18 $f0

    jr jr_0af_41a9                                ; $41a7: $18 $00

jr_0af_41a9:
    jr nz, jr_0af_41c9                            ; $41a9: $20 $1e

    db $10                                        ; $41ab: $10
    rrca                                          ; $41ac: $0f
    ld [$fc0d], sp                                ; $41ad: $08 $0d $fc
    ld a, [c]                                     ; $41b0: $f2
    add b                                         ; $41b1: $80
    ld [bc], a                                    ; $41b2: $02
    nop                                           ; $41b3: $00
    ld a, [$fbfc]                                 ; $41b4: $fa $fc $fb
    ld b, $03                                     ; $41b7: $06 $03
    ld h, c                                       ; $41b9: $61
    rrca                                          ; $41ba: $0f
    nop                                           ; $41bb: $00
    ldh a, [$87]                                  ; $41bc: $f0 $87
    ldh a, [$c7]                                  ; $41be: $f0 $c7
    rlca                                          ; $41c0: $07
    rst $30                                       ; $41c1: $f7
    add a                                         ; $41c2: $87
    ld [hl], a                                    ; $41c3: $77
    nop                                           ; $41c4: $00
    jp Jump_0af_6337                              ; $41c5: $c3 $37 $63


    rla                                           ; $41c8: $17

jr_0af_41c9:
    ld [hl], e                                    ; $41c9: $73
    rlca                                          ; $41ca: $07
    inc sp                                        ; $41cb: $33
    rlca                                          ; $41cc: $07
    nop                                           ; $41cd: $00
    or e                                          ; $41ce: $b3
    inc d                                         ; $41cf: $14
    ld sp, $91b6                                  ; $41d0: $31 $b6 $91
    add $44                                       ; $41d3: $c6 $44
    jp nz, $e200                                  ; $41d5: $c2 $00 $e2

    ld [$1af9], sp                                ; $41d8: $08 $f9 $1a
    jr nc, @-$1e                                  ; $41db: $30 $e0

    ld l, $4e                                     ; $41dd: $2e $4e
    nop                                           ; $41df: $00
    ld bc, $6f61                                  ; $41e0: $01 $61 $6f
    ld d, b                                       ; $41e3: $50
    rra                                           ; $41e4: $1f
    db $10                                        ; $41e5: $10
    rlca                                          ; $41e6: $07
    rlca                                          ; $41e7: $07
    nop                                           ; $41e8: $00
    daa                                           ; $41e9: $27
    rrca                                          ; $41ea: $0f
    ld b, a                                       ; $41eb: $47
    scf                                           ; $41ec: $37
    add [hl]                                      ; $41ed: $86
    halt                                          ; $41ee: $76
    nop                                           ; $41ef: $00
    ld c, $00                                     ; $41f0: $0e $00
    ld b, c                                       ; $41f2: $41
    add c                                         ; $41f3: $81
    ld a, [bc]                                    ; $41f4: $0a
    ld sp, hl                                     ; $41f5: $f9
    inc b                                         ; $41f6: $04
    rst $38                                       ; $41f7: $ff
    inc bc                                        ; $41f8: $03
    add c                                         ; $41f9: $81
    nop                                           ; $41fa: $00
    ld b, $01                                     ; $41fb: $06 $01
    ld sp, $7978                                  ; $41fd: $31 $78 $79
    ld a, [$c00e]                                 ; $4200: $fa $0e $c0
    nop                                           ; $4203: $00
    ld a, [de]                                    ; $4204: $1a
    add [hl]                                      ; $4205: $86
    or b                                          ; $4206: $b0
    adc h                                         ; $4207: $8c
    ld h, h                                       ; $4208: $64
    jr jr_0af_424b                                ; $4209: $18 $40

    add hl, sp                                    ; $420b: $39
    nop                                           ; $420c: $00
    ld c, b                                       ; $420d: $48
    ld a, [hl-]                                   ; $420e: $3a

jr_0af_420f:
    ld [hl-], a                                   ; $420f: $32
    inc hl                                        ; $4210: $23
    ldh [rLCDC], a                                ; $4211: $e0 $40
    rra                                           ; $4213: $1f
    rlca                                          ; $4214: $07
    nop                                           ; $4215: $00
    rrca                                          ; $4216: $0f
    ld b, a                                       ; $4217: $47
    jr z, @+$29                                   ; $4218: $28 $27

    jr nz, jr_0af_424b                            ; $421a: $20 $2f

    rrca                                          ; $421c: $0f
    xor a                                         ; $421d: $af
    nop                                           ; $421e: $00
    rra                                           ; $421f: $1f
    ld c, a                                       ; $4220: $4f
    and b                                         ; $4221: $a0
    sbc a                                         ; $4222: $9f
    jr nz, jr_0af_4244                            ; $4223: $20 $1f

    ld [bc], a                                    ; $4225: $02
    ld bc, $0306                                  ; $4226: $01 $06 $03
    inc bc                                        ; $4229: $03
    ld bc, $0102                                  ; $422a: $01 $02 $01
    or a                                          ; $422d: $b7
    ld bc, $0804                                  ; $422e: $01 $04 $08
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    ld [hl], e                                    ; $4234: $73
    rlca                                          ; $4235: $07
    or e                                          ; $4236: $b3
    add a                                         ; $4237: $87
    or e                                          ; $4238: $b3
    add a                                         ; $4239: $87
    dec sp                                        ; $423a: $3b
    nop                                           ; $423b: $00
    add e                                         ; $423c: $83
    dec sp                                        ; $423d: $3b
    add e                                         ; $423e: $83
    sbc b                                         ; $423f: $98
    jp $c1dc                                      ; $4240: $c3 $dc $c1


    ret nz                                        ; $4243: $c0

jr_0af_4244:
    nop                                           ; $4244: $00
    sbc h                                         ; $4245: $9c
    ld [hl], $e0                                  ; $4246: $36 $e0
    add hl, hl                                    ; $4248: $29

Jump_0af_4249:
    and $20                                       ; $4249: $e6 $20

jr_0af_424b:
    rst $28                                       ; $424b: $ef
    adc a                                         ; $424c: $8f
    nop                                           ; $424d: $00
    ld l, a                                       ; $424e: $6f
    sbc a                                         ; $424f: $9f
    ld c, a                                       ; $4250: $4f
    sub b                                         ; $4251: $90
    ld e, a                                       ; $4252: $5f
    ret nc                                        ; $4253: $d0

    ld e, [hl]                                    ; $4254: $5e
    ret nc                                        ; $4255: $d0

    nop                                           ; $4256: $00
    ld c, $66                                     ; $4257: $0e $66
    ld [hl], b                                    ; $4259: $70
    ld b, b                                       ; $425a: $40
    ld [hl], b                                    ; $425b: $70
    xor d                                         ; $425c: $aa
    adc [hl]                                      ; $425d: $8e
    add b                                         ; $425e: $80
    nop                                           ; $425f: $00
    cp a                                          ; $4260: $bf
    ld sp, $007e                                  ; $4261: $31 $7e $00
    ld c, h                                       ; $4264: $4c
    ld h, h                                       ; $4265: $64
    call z, Call_000_0066                         ; $4266: $cc $66 $00
    call z, $fa79                                 ; $4269: $cc $79 $fa
    add hl, sp                                    ; $426c: $39
    ld a, [$7833]                                 ; $426d: $fa $33 $78
    rlca                                          ; $4270: $07
    nop                                           ; $4271: $00
    or b                                          ; $4272: $b0
    inc c                                         ; $4273: $0c
    rst $08                                       ; $4274: $cf

Call_0af_4275:
    xor b                                         ; $4275: $a8
    ld c, a                                       ; $4276: $4f
    ld l, a                                       ; $4277: $6f
    rst $00                                       ; $4278: $c7
    ld l, a                                       ; $4279: $6f
    nop                                           ; $427a: $00
    rst $20                                       ; $427b: $e7
    jr nz, jr_0af_420f                            ; $427c: $20 $91

    dec l                                         ; $427e: $2d
    sub [hl]                                      ; $427f: $96
    ld d, [hl]                                    ; $4280: $56
    ret z                                         ; $4281: $c8

    inc h                                         ; $4282: $24
    nop                                           ; $4283: $00
    ret z                                         ; $4284: $c8

    dec h                                         ; $4285: $25
    db $ec                                        ; $4286: $ec
    dec h                                         ; $4287: $25
    db $ec                                        ; $4288: $ec
    db $ec                                        ; $4289: $ec
    ret                                           ; $428a: $c9


    db $ec                                        ; $428b: $ec
    nop                                           ; $428c: $00
    ret                                           ; $428d: $c9


    ld h, b                                       ; $428e: $60
    ld a, a                                       ; $428f: $7f
    ld b, b                                       ; $4290: $40
    ccf                                           ; $4291: $3f
    ld b, b                                       ; $4292: $40
    ld a, a                                       ; $4293: $7f
    add b                                         ; $4294: $80
    jr c, jr_0af_4316                             ; $4295: $38 $7f

    add b                                         ; $4297: $80
    cp [hl]                                       ; $4298: $be
    ld bc, $0004                                  ; $4299: $01 $04 $00
    sbc a                                         ; $429c: $9f
    ld [hl], d                                    ; $429d: $72
    ldh [$ce], a                                  ; $429e: $e0 $ce
    ldh [rP1], a                                  ; $42a0: $e0 $00
    ld l, a                                       ; $42a2: $6f
    ld h, b                                       ; $42a3: $60
    cpl                                           ; $42a4: $2f
    ld [hl], b                                    ; $42a5: $70
    rla                                           ; $42a6: $17
    ld [hl], b                                    ; $42a7: $70
    nop                                           ; $42a8: $00
    ld a, b                                       ; $42a9: $78
    nop                                           ; $42aa: $00
    rra                                           ; $42ab: $1f
    ld a, $07                                     ; $42ac: $3e $07
    add hl, sp                                    ; $42ae: $39
    rlca                                          ; $42af: $07
    ldh [$8e], a                                  ; $42b0: $e0 $8e
    ld b, $04                                     ; $42b2: $06 $04
    ld l, $87                                     ; $42b4: $2e $87
    rlca                                          ; $42b6: $07
    jp $ed07                                      ; $42b7: $c3 $07 $ed


    ld bc, $f070                                  ; $42ba: $01 $70 $f0
    nop                                           ; $42bd: $00
    rst $28                                       ; $42be: $ef
    rra                                           ; $42bf: $1f
    ld hl, sp-$78                                 ; $42c0: $f8 $88
    xor $c8                                       ; $42c2: $ee $c8
    inc e                                         ; $42c4: $1c
    ld e, l                                       ; $42c5: $5d

jr_0af_42c6:
    nop                                           ; $42c6: $00
    ld [hl], d                                    ; $42c7: $72
    ccf                                           ; $42c8: $3f
    ld [hl], b                                    ; $42c9: $70
    ld b, c                                       ; $42ca: $41
    ld a, $b2                                     ; $42cb: $3e $b2
    adc h                                         ; $42cd: $8c
    ret nz                                        ; $42ce: $c0

    nop                                           ; $42cf: $00
    pop bc                                        ; $42d0: $c1
    rst $38                                       ; $42d1: $ff
    pop bc                                        ; $42d2: $c1

jr_0af_42d3:
    adc b                                         ; $42d3: $88
    ld l, a                                       ; $42d4: $6f
    jr z, jr_0af_42c6                             ; $42d5: $28 $ef

    stop                                          ; $42d7: $10 $00
    rst $18                                       ; $42d9: $df
    ld d, c                                       ; $42da: $51
    adc [hl]                                      ; $42db: $8e
    add b                                         ; $42dc: $80
    nop                                           ; $42dd: $00
    ld [hl], b                                    ; $42de: $70
    ld c, a                                       ; $42df: $4f
    inc a                                         ; $42e0: $3c
    nop                                           ; $42e1: $00
    dec sp                                        ; $42e2: $3b
    inc a                                         ; $42e3: $3c
    dec sp                                        ; $42e4: $3b
    reti                                          ; $42e5: $d9


    adc e                                         ; $42e6: $8b
    sub $17                                       ; $42e7: $d6 $17
    or b                                          ; $42e9: $b0
    nop                                           ; $42ea: $00
    ld b, $8a                                     ; $42eb: $06 $8a
    ld c, $06                                     ; $42ed: $0e $06
    ld [$f06e], sp                                ; $42ef: $08 $6e $f0
    inc a                                         ; $42f2: $3c
    ret nz                                        ; $42f3: $c0

    ld [bc], a                                    ; $42f4: $02
    nop                                           ; $42f5: $00
    nop                                           ; $42f6: $00
    ld l, e                                       ; $42f7: $6b
    db $10                                        ; $42f8: $10
    inc bc                                        ; $42f9: $03
    ld h, a                                       ; $42fa: $67
    ld [bc], a                                    ; $42fb: $02
    ld h, b                                       ; $42fc: $60
    nop                                           ; $42fd: $00
    ld bc, $23f8                                  ; $42fe: $01 $f8 $23
    ld [$01fe], sp                                ; $4301: $08 $fe $01
    adc h                                         ; $4304: $8c
    nop                                           ; $4305: $00
    jr nz, jr_0af_4308                            ; $4306: $20 $00

jr_0af_4308:
    rlca                                          ; $4308: $07
    inc d                                         ; $4309: $14
    inc bc                                        ; $430a: $03
    ld a, [bc]                                    ; $430b: $0a
    nop                                           ; $430c: $00
    rst $20                                       ; $430d: $e7
    jr jr_0af_42d3                                ; $430e: $18 $c3

    nop                                           ; $4310: $00
    or c                                          ; $4311: $b1
    add c                                         ; $4312: $81
    ld h, b                                       ; $4313: $60
    inc b                                         ; $4314: $04
    ret nz                                        ; $4315: $c0

jr_0af_4316:
    call nz, Call_000_0004                        ; $4316: $c4 $04 $00
    ld [$c52c], sp                                ; $4319: $08 $2c $c5
    ld b, b                                       ; $431c: $40
    add b                                         ; $431d: $80
    ld b, b                                       ; $431e: $40
    ld [$00ff], sp                                ; $431f: $08 $ff $00
    ld a, a                                       ; $4322: $7f
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    cp a                                          ; $4325: $bf
    ccf                                           ; $4326: $3f
    ld de, $8013                                  ; $4327: $11 $13 $80
    adc h                                         ; $432a: $8c
    ldh [rSVBK], a                                ; $432b: $e0 $70
    ret c                                         ; $432d: $d8

    ld d, b                                       ; $432e: $50
    ld hl, sp+$58                                 ; $432f: $f8 $58
    ld e, b                                       ; $4331: $58
    inc bc                                        ; $4332: $03
    ld [$00fc], sp                                ; $4333: $08 $fc $00
    ld bc, $0003                                  ; $4336: $01 $03 $00
    inc bc                                        ; $4339: $03
    ld b, l                                       ; $433a: $45
    jr c, jr_0af_4385                             ; $433b: $38 $48

    inc c                                         ; $433d: $0c
    ld a, [bc]                                    ; $433e: $0a
    add e                                         ; $433f: $83
    add b                                         ; $4340: $80
    nop                                           ; $4341: $00
    ld hl, $402d                                  ; $4342: $21 $2d $40
    ld b, h                                       ; $4345: $44
    jp Jump_0af_76c0                              ; $4346: $c3 $c0 $76


    pop af                                        ; $4349: $f1
    nop                                           ; $434a: $00
    db $ec                                        ; $434b: $ec
    inc bc                                        ; $434c: $03
    ld l, [hl]                                    ; $434d: $6e
    adc h                                         ; $434e: $8c
    inc c                                         ; $434f: $0c
    ld l, [hl]                                    ; $4350: $6e
    inc c                                         ; $4351: $0c
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    rst $08                                       ; $4354: $cf
    ret nz                                        ; $4355: $c0

    nop                                           ; $4356: $00
    rra                                           ; $4357: $1f
    or a                                          ; $4358: $b7
    dec e                                         ; $4359: $1d
    and d                                         ; $435a: $a2
    adc l                                         ; $435b: $8d
    nop                                           ; $435c: $00
    add a                                         ; $435d: $87
    cpl                                           ; $435e: $2f
    ld b, $27                                     ; $435f: $06 $27
    ld c, $02                                     ; $4361: $0e $02
    inc c                                         ; $4363: $0c
    ldh [rP1], a                                  ; $4364: $e0 $00
    db $10                                        ; $4366: $10
    ld d, [hl]                                    ; $4367: $56
    ld [bc], a                                    ; $4368: $02
    add h                                         ; $4369: $84
    ld [hl], e                                    ; $436a: $73
    jr c, jr_0af_43dd                             ; $436b: $38 $70

    dec a                                         ; $436d: $3d
    nop                                           ; $436e: $00
    ld a, c                                       ; $436f: $79
    inc a                                         ; $4370: $3c
    jr nz, jr_0af_43af                            ; $4371: $20 $3c

    inc e                                         ; $4373: $1c
    adc h                                         ; $4374: $8c
    inc c                                         ; $4375: $0c
    call c, Call_0af_7c80                         ; $4376: $dc $80 $7c
    ld [$3f00], sp                                ; $4379: $08 $00 $3f
    add b                                         ; $437c: $80
    rrca                                          ; $437d: $0f
    ret nz                                        ; $437e: $c0

    nop                                           ; $437f: $00
    inc c                                         ; $4380: $0c
    ld b, $fc                                     ; $4381: $06 $fc
    jr nc, @+$4a                                  ; $4383: $30 $48

jr_0af_4385:
    pop bc                                        ; $4385: $c1
    ld h, c                                       ; $4386: $61
    ret nc                                        ; $4387: $d0

    ld c, b                                       ; $4388: $48
    sbc b                                         ; $4389: $98
    ld [$0001], sp                                ; $438a: $08 $01 $00
    db $fc                                        ; $438d: $fc
    inc bc                                        ; $438e: $03
    ldh a, [$0e]                                  ; $438f: $f0 $0e
    ldh [rNR23], a                                ; $4391: $e0 $18
    nop                                           ; $4393: $00
    inc [hl]                                      ; $4394: $34
    nop                                           ; $4395: $00
    dec b                                         ; $4396: $05
    add hl, bc                                    ; $4397: $09
    ld l, b                                       ; $4398: $68
    ld [bc], a                                    ; $4399: $02
    ld h, b                                       ; $439a: $60
    add c                                         ; $439b: $81
    and b                                         ; $439c: $a0
    add b                                         ; $439d: $80
    nop                                           ; $439e: $00
    or c                                          ; $439f: $b1
    db $10                                        ; $43a0: $10
    ld h, b                                       ; $43a1: $60
    ld c, h                                       ; $43a2: $4c
    ld [hl], b                                    ; $43a3: $70
    db $fc                                        ; $43a4: $fc
    ld c, $f0                                     ; $43a5: $0e $f0
    nop                                           ; $43a7: $00
    ld a, [de]                                    ; $43a8: $1a
    ld e, $d8                                     ; $43a9: $1e $d8
    ld a, b                                       ; $43ab: $78
    ld [$06c6], sp                                ; $43ac: $08 $c6 $06

jr_0af_43af:
    ld c, l                                       ; $43af: $4d
    nop                                           ; $43b0: $00
    pop bc                                        ; $43b1: $c1
    ld h, c                                       ; $43b2: $61
    inc b                                         ; $43b3: $04
    ld hl, $5020                                  ; $43b4: $21 $20 $50
    nop                                           ; $43b7: $00
    ret nc                                        ; $43b8: $d0

    nop                                           ; $43b9: $00
    ld de, $41c4                                  ; $43ba: $11 $c4 $41
    call z, Call_0af_4441                         ; $43bd: $cc $41 $44
    ld a, h                                       ; $43c0: $7c
    jr z, jr_0af_43c3                             ; $43c1: $28 $00

jr_0af_43c3:
    ldh [rNR10], a                                ; $43c3: $e0 $10
    rst $00                                       ; $43c5: $c7
    add a                                         ; $43c6: $87
    and d                                         ; $43c7: $a2
    ld [bc], a                                    ; $43c8: $02
    ld a, [bc]                                    ; $43c9: $0a
    ld sp, hl                                     ; $43ca: $f9
    nop                                           ; $43cb: $00
    add $00                                       ; $43cc: $c6 $00
    ld [bc], a                                    ; $43ce: $02
    ld [hl-], a                                   ; $43cf: $32
    ld c, d                                       ; $43d0: $4a
    ld [bc], a                                    ; $43d1: $02
    ld c, b                                       ; $43d2: $48
    ret c                                         ; $43d3: $d8

    nop                                           ; $43d4: $00
    db $d3                                        ; $43d5: $d3
    ld e, b                                       ; $43d6: $58
    ld b, d                                       ; $43d7: $42
    jr @-$76                                      ; $43d8: $18 $88

    or b                                          ; $43da: $b0
    add b                                         ; $43db: $80
    nop                                           ; $43dc: $00

jr_0af_43dd:
    nop                                           ; $43dd: $00
    ld h, b                                       ; $43de: $60
    ld c, $06                                     ; $43df: $0e $06
    ldh [rSTAT], a                                ; $43e1: $e0 $41
    inc hl                                        ; $43e3: $23
    ld c, $05                                     ; $43e4: $0e $05
    nop                                           ; $43e6: $00
    add hl, bc                                    ; $43e7: $09
    inc e                                         ; $43e8: $1c

jr_0af_43e9:
    ld h, $62                                     ; $43e9: $26 $62
    ld e, h                                       ; $43eb: $5c
    ld h, b                                       ; $43ec: $60
    ld e, [hl]                                    ; $43ed: $5e
    cp a                                          ; $43ee: $bf
    nop                                           ; $43ef: $00
    and c                                         ; $43f0: $a1
    inc bc                                        ; $43f1: $03
    jp nz, $90c0                                  ; $43f2: $c2 $c0 $90

    add [hl]                                      ; $43f5: $86
    ld c, $80                                     ; $43f6: $0e $80
    nop                                           ; $43f8: $00
    ccf                                           ; $43f9: $3f
    ret nz                                        ; $43fa: $c0

    rrca                                          ; $43fb: $0f
    ld [hl], a                                    ; $43fc: $77
    rlca                                          ; $43fd: $07
    dec de                                        ; $43fe: $1b
    add e                                         ; $43ff: $83
    inc c                                         ; $4400: $0c
    nop                                           ; $4401: $00
    ld h, b                                       ; $4402: $60
    ld b, $70                                     ; $4403: $06 $70
    ld b, $30                                     ; $4405: $06 $30
    dec b                                         ; $4407: $05
    ld de, $0087                                  ; $4408: $11 $87 $00
    and b                                         ; $440b: $a0
    ld c, $12                                     ; $440c: $0e $12
    inc bc                                        ; $440e: $03
    inc sp                                        ; $440f: $33
    ld bc, $0f60                                  ; $4410: $01 $60 $0f
    nop                                           ; $4413: $00
    inc bc                                        ; $4414: $03
    ld c, $07                                     ; $4415: $0e $07
    inc b                                         ; $4417: $04
    inc bc                                        ; $4418: $03
    ld [c], a                                     ; $4419: $e2
    jp hl                                         ; $441a: $e9


    cp h                                          ; $441b: $bc
    nop                                           ; $441c: $00
    cp a                                          ; $441d: $bf
    inc e                                         ; $441e: $1c
    inc de                                        ; $441f: $13
    ld h, c                                       ; $4420: $61
    ld e, [hl]                                    ; $4421: $5e
    ld a, h                                       ; $4422: $7c
    jr c, jr_0af_43e9                             ; $4423: $38 $c4

    nop                                           ; $4425: $00
    ld a, h                                       ; $4426: $7c
    ld b, $fa                                     ; $4427: $06 $fa
    inc e                                         ; $4429: $1c
    db $e4                                        ; $442a: $e4
    inc e                                         ; $442b: $1c
    db $e4                                        ; $442c: $e4
    ld a, [hl-]                                   ; $442d: $3a
    nop                                           ; $442e: $00
    jr c, @-$7a                                   ; $442f: $38 $84

    ld b, $c0                                     ; $4431: $06 $c0
    ld b, $06                                     ; $4433: $06 $06
    or h                                          ; $4435: $b4
    ld b, $00                                     ; $4436: $06 $00
    add h                                         ; $4438: $84
    ld c, h                                       ; $4439: $4c
    inc b                                         ; $443a: $04
    jr c, jr_0af_4498                             ; $443b: $38 $5b

    add d                                         ; $443d: $82
    add b                                         ; $443e: $80
    add h                                         ; $443f: $84
    nop                                           ; $4440: $00

Call_0af_4441:
    add d                                         ; $4441: $82
    pop bc                                        ; $4442: $c1
    ld a, a                                       ; $4443: $7f
    ld a, h                                       ; $4444: $7c
    ld sp, hl                                     ; $4445: $f9
    ld [hl], a                                    ; $4446: $77
    ld hl, sp+$78                                 ; $4447: $f8 $78
    nop                                           ; $4449: $00
    cp a                                          ; $444a: $bf
    ccf                                           ; $444b: $3f
    ld e, a                                       ; $444c: $5f
    jr nc, @+$31                                  ; $444d: $30 $2f

    adc $c8                                       ; $444f: $ce $c8
    rlca                                          ; $4451: $07
    nop                                           ; $4452: $00
    inc b                                         ; $4453: $04
    ld [$e460], sp                                ; $4454: $08 $60 $e4
    ld l, h                                       ; $4457: $6c
    ld h, [hl]                                    ; $4458: $66
    ld b, [hl]                                    ; $4459: $46
    inc d                                         ; $445a: $14
    nop                                           ; $445b: $00
    add $12                                       ; $445c: $c6 $12
    add d                                         ; $445e: $82
    dec c                                         ; $445f: $0d
    ld bc, $2109                                  ; $4460: $01 $09 $21
    inc bc                                        ; $4463: $03
    nop                                           ; $4464: $00
    ld bc, $f000                                  ; $4465: $01 $00 $f0
    sbc b                                         ; $4468: $98
    ldh [rSC], a                                  ; $4469: $e0 $02
    db $fc                                        ; $446b: $fc
    adc [hl]                                      ; $446c: $8e
    nop                                           ; $446d: $00
    cp $f8                                        ; $446e: $fe $f8
    rlca                                          ; $4470: $07
    adc $b2                                       ; $4471: $ce $b2
    ld b, e                                       ; $4473: $43
    inc a                                         ; $4474: $3c
    add c                                         ; $4475: $81
    nop                                           ; $4476: $00
    dec b                                         ; $4477: $05
    ld h, c                                       ; $4478: $61
    dec b                                         ; $4479: $05
    jr c, jr_0af_4487                             ; $447a: $38 $0b

    inc c                                         ; $447c: $0c
    ld bc, $00e2                                  ; $447d: $01 $e2 $00
    inc b                                         ; $4480: $04
    add hl, sp                                    ; $4481: $39
    pop bc                                        ; $4482: $c1
    ldh [$87], a                                  ; $4483: $e0 $87
    ldh [$c7], a                                  ; $4485: $e0 $c7

jr_0af_4487:
    pop hl                                        ; $4487: $e1
    nop                                           ; $4488: $00
    db $ec                                        ; $4489: $ec
    inc b                                         ; $448a: $04
    ldh a, [rDIV]                                 ; $448b: $f0 $04
    ldh a, [rTMA]                                 ; $448d: $f0 $06
    ldh a, [rSC]                                  ; $448f: $f0 $02
    nop                                           ; $4491: $00
    ld hl, sp+$02                                 ; $4492: $f8 $02
    ld hl, sp+$03                                 ; $4494: $f8 $03
    ld hl, sp+$01                                 ; $4496: $f8 $01

jr_0af_4498:
    db $fc                                        ; $4498: $fc
    ld a, b                                       ; $4499: $78
    nop                                           ; $449a: $00
    sbc b                                         ; $449b: $98
    ldh [$dc], a                                  ; $449c: $e0 $dc
    ld b, b                                       ; $449e: $40
    jr c, jr_0af_451f                             ; $449f: $38 $7e

    ld a, [hl]                                    ; $44a1: $7e
    cp h                                          ; $44a2: $bc
    nop                                           ; $44a3: $00
    dec a                                         ; $44a4: $3d
    add c                                         ; $44a5: $81
    inc bc                                        ; $44a6: $03
    ld b, h                                       ; $44a7: $44
    ld b, $40                                     ; $44a8: $06 $40
    inc b                                         ; $44aa: $04
    ld b, $00                                     ; $44ab: $06 $00
    ld h, e                                       ; $44ad: $63
    ld h, c                                       ; $44ae: $61
    dec h                                         ; $44af: $25
    ld h, b                                       ; $44b0: $60
    ld b, $a1                                     ; $44b1: $06 $a1
    inc bc                                        ; $44b3: $03

jr_0af_44b4:
    and c                                         ; $44b4: $a1
    nop                                           ; $44b5: $00
    ld bc, $3407                                  ; $44b6: $01 $07 $34
    rlca                                          ; $44b9: $07
    rla                                           ; $44ba: $17
    ld bc, $b111                                  ; $44bb: $01 $11 $b1

jr_0af_44be:
    nop                                           ; $44be: $00
    ld d, c                                       ; $44bf: $51
    adc h                                         ; $44c0: $8c
    ld [hl], e                                    ; $44c1: $73
    ld a, a                                       ; $44c2: $7f
    sbc a                                         ; $44c3: $9f
    ld a, $4f                                     ; $44c4: $3e $4f
    ld a, $00                                     ; $44c6: $3e $00
    sbc [hl]                                      ; $44c8: $9e
    nop                                           ; $44c9: $00
    pop af                                        ; $44ca: $f1
    ld hl, sp+$18                                 ; $44cb: $f8 $18
    db $fc                                        ; $44cd: $fc
    rla                                           ; $44ce: $17
    inc bc                                        ; $44cf: $03
    nop                                           ; $44d0: $00
    db $10                                        ; $44d1: $10
    inc de                                        ; $44d2: $13
    jr @-$72                                      ; $44d3: $18 $8c

jr_0af_44d5:
    add l                                         ; $44d5: $85
    xor h                                         ; $44d6: $ac
    and c                                         ; $44d7: $a1
    ld c, h                                       ; $44d8: $4c
    nop                                           ; $44d9: $00
    ld b, b                                       ; $44da: $40
    ld b, $89                                     ; $44db: $06 $89
    inc c                                         ; $44dd: $0c
    add l                                         ; $44de: $85
    call c, Call_0af_7f04                         ; $44df: $dc $04 $7f
    nop                                           ; $44e2: $00
    ccf                                           ; $44e3: $3f
    ld a, $1f                                     ; $44e4: $3e $1f
    ccf                                           ; $44e6: $3f
    jp nz, Jump_0af_720e                          ; $44e7: $c2 $0e $72

    db $fc                                        ; $44ea: $fc
    inc b                                         ; $44eb: $04
    pop af                                        ; $44ec: $f1
    ld a, h                                       ; $44ed: $7c
    ld a, l                                       ; $44ee: $7d
    ld [bc], a                                    ; $44ef: $02
    add b                                         ; $44f0: $80
    db $e3                                        ; $44f1: $e3
    nop                                           ; $44f2: $00
    ld d, b                                       ; $44f3: $50
    and b                                         ; $44f4: $a0
    nop                                           ; $44f5: $00
    jr nz, jr_0af_4498                            ; $44f6: $20 $a0

    adc a                                         ; $44f8: $8f
    ld h, b                                       ; $44f9: $60
    rrca                                          ; $44fa: $0f
    ld b, b                                       ; $44fb: $40
    rra                                           ; $44fc: $1f
    ld b, b                                       ; $44fd: $40
    nop                                           ; $44fe: $00
    rra                                           ; $44ff: $1f

Call_0af_4500:
    ret nz                                        ; $4500: $c0

    rra                                           ; $4501: $1f
    add b                                         ; $4502: $80
    ccf                                           ; $4503: $3f
    ld bc, $01fc                                  ; $4504: $01 $fc $01
    ld a, [bc]                                    ; $4507: $0a
    db $fc                                        ; $4508: $fc
    nop                                           ; $4509: $00
    cp $fe                                        ; $450a: $fe $fe
    cp c                                          ; $450c: $b9
    ld bc, $f8fe                                  ; $450d: $01 $fe $f8
    ld bc, $0000                                  ; $4510: $01 $00 $00
    nop                                           ; $4513: $00
    ld c, b                                       ; $4514: $48
    ld [$b280], sp                                ; $4515: $08 $80 $b2
    and b                                         ; $4518: $a0
    add [hl]                                      ; $4519: $86
    add c                                         ; $451a: $81
    nop                                           ; $451b: $00
    dec c                                         ; $451c: $0d
    and c                                         ; $451d: $a1
    dec e                                         ; $451e: $1d

jr_0af_451f:
    ret c                                         ; $451f: $d8

    ld a, [de]                                    ; $4520: $1a
    ld e, b                                       ; $4521: $58
    ld a, [de]                                    ; $4522: $1a
    ld b, d                                       ; $4523: $42
    nop                                           ; $4524: $00
    ld e, b                                       ; $4525: $58
    inc bc                                        ; $4526: $03
    ld d, b                                       ; $4527: $50
    ld c, b                                       ; $4528: $48
    dec bc                                        ; $4529: $0b
    jr jr_0af_44b4                                ; $452a: $18 $88

    ld c, b                                       ; $452c: $48
    nop                                           ; $452d: $00
    ld e, d                                       ; $452e: $5a
    add hl, de                                    ; $452f: $19
    ld c, c                                       ; $4530: $49
    ld [$0d10], sp                                ; $4531: $08 $10 $0d
    ld de, $001c                                  ; $4534: $11 $1c $00
    ld de, $7080                                  ; $4537: $11 $80 $70
    ld c, $05                                     ; $453a: $0e $05
    jr jr_0af_44be                                ; $453c: $18 $80

    cpl                                           ; $453e: $2f
    nop                                           ; $453f: $00
    and b                                         ; $4540: $a0
    sbc a                                         ; $4541: $9f
    ret nz                                        ; $4542: $c0

    jr jr_0af_44d5                                ; $4543: $18 $90

    ld c, $0e                                     ; $4545: $0e $0e
    ldh a, [rP1]                                  ; $4547: $f0 $00
    pop hl                                        ; $4549: $e1
    adc c                                         ; $454a: $89
    add hl, de                                    ; $454b: $19
    jr nz, jr_0af_455e                            ; $454c: $20 $10

    add b                                         ; $454e: $80
    or d                                          ; $454f: $b2
    add e                                         ; $4550: $83
    nop                                           ; $4551: $00
    inc sp                                        ; $4552: $33
    ld [hl-], a                                   ; $4553: $32
    add c                                         ; $4554: $81
    or b                                          ; $4555: $b0
    add b                                         ; $4556: $80
    adc h                                         ; $4557: $8c
    inc a                                         ; $4558: $3c
    inc c                                         ; $4559: $0c
    nop                                           ; $455a: $00
    inc a                                         ; $455b: $3c
    jr nz, @+$44                                  ; $455c: $20 $42

jr_0af_455e:
    ld hl, $c889                                  ; $455e: $21 $89 $c8
    pop bc                                        ; $4561: $c1
    ld l, h                                       ; $4562: $6c
    nop                                           ; $4563: $00
    ld h, c                                       ; $4564: $61
    inc a                                         ; $4565: $3c
    ld sp, $3338                                  ; $4566: $31 $38 $33
    ld a, [de]                                    ; $4569: $1a
    sbc b                                         ; $456a: $98
    ld a, [de]                                    ; $456b: $1a
    inc bc                                        ; $456c: $03
    ret c                                         ; $456d: $d8

    add b                                         ; $456e: $80
    ccf                                           ; $456f: $3f
    add b                                         ; $4570: $80
    ccf                                           ; $4571: $3f
    ld a, a                                       ; $4572: $7f
    ld d, b                                       ; $4573: $50
    ld [bc], a                                    ; $4574: $02
    inc b                                         ; $4575: $04
    ld [$9c80], sp                                ; $4576: $08 $80 $9c
    adc d                                         ; $4579: $8a
    ld h, d                                       ; $457a: $62
    ld l, b                                       ; $457b: $68
    ld a, [bc]                                    ; $457c: $0a
    jr z, jr_0af_4589                             ; $457d: $28 $0a

    jr z, jr_0af_45b3                             ; $457f: $28 $32

    nop                                           ; $4581: $00
    add d                                         ; $4582: $82
    db $10                                        ; $4583: $10
    ret nz                                        ; $4584: $c0

    rra                                           ; $4585: $1f
    ret nz                                        ; $4586: $c0

    nop                                           ; $4587: $00
    ret nz                                        ; $4588: $c0

jr_0af_4589:
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    nop                                           ; $458b: $00
    inc e                                         ; $458c: $1c
    ld de, $011c                                  ; $458d: $11 $1c $01
    dec e                                         ; $4590: $1d
    ld bc, $c0e4                                  ; $4591: $01 $e4 $c0
    ld a, b                                       ; $4594: $78
    ld [bc], a                                    ; $4595: $02
    adc [hl]                                      ; $4596: $8e
    ld [$0000], sp                                ; $4597: $08 $00 $00
    ld hl, sp+$41                                 ; $459a: $f8 $41
    ld a, [c]                                     ; $459c: $f2
    inc bc                                        ; $459d: $03
    ld [$0181], sp                                ; $459e: $08 $81 $01
    inc sp                                        ; $45a1: $33
    inc c                                         ; $45a2: $0c
    db $10                                        ; $45a3: $10
    jr @+$01                                      ; $45a4: $18 $ff

    nop                                           ; $45a6: $00
    jr nc, jr_0af_45aa                            ; $45a7: $30 $01

    inc e                                         ; $45a9: $1c

jr_0af_45aa:
    sbc b                                         ; $45aa: $98
    call nc, $bfa7                                ; $45ab: $d4 $a7 $bf
    di                                            ; $45ae: $f3
    ccf                                           ; $45af: $3f
    db $10                                        ; $45b0: $10
    jr z, jr_0af_45b3                             ; $45b1: $28 $00

jr_0af_45b3:
    ld b, [hl]                                    ; $45b3: $46
    ld d, $44                                     ; $45b4: $16 $44
    ld d, h                                       ; $45b6: $54
    ld b, l                                       ; $45b7: $45
    ld de, HeaderComplementCheck                  ; $45b8: $11 $4d $01
    ld b, $08                                     ; $45bb: $06 $08
    inc bc                                        ; $45bd: $03
    ld hl, sp+$03                                 ; $45be: $f8 $03
    inc bc                                        ; $45c0: $03
    inc [hl]                                      ; $45c1: $34
    jr nz, jr_0af_45c8                            ; $45c2: $20 $04

    ld c, e                                       ; $45c4: $4b
    db $10                                        ; $45c5: $10
    inc bc                                        ; $45c6: $03
    adc e                                         ; $45c7: $8b

jr_0af_45c8:
    ld [bc], a                                    ; $45c8: $02
    ld d, b                                       ; $45c9: $50
    nop                                           ; $45ca: $00
    ld bc, $0190                                  ; $45cb: $01 $90 $01
    ld [bc], a                                    ; $45ce: $02
    db $10                                        ; $45cf: $10
    rlca                                          ; $45d0: $07
    nop                                           ; $45d1: $00
    ld [bc], a                                    ; $45d2: $02
    inc bc                                        ; $45d3: $03
    nop                                           ; $45d4: $00
    ld a, b                                       ; $45d5: $78
    ld b, a                                       ; $45d6: $47
    rrca                                          ; $45d7: $0f
    ld l, b                                       ; $45d8: $68
    rrca                                          ; $45d9: $0f
    ld c, b                                       ; $45da: $48
    rrca                                          ; $45db: $0f
    pop de                                        ; $45dc: $d1
    nop                                           ; $45dd: $00
    nop                                           ; $45de: $00
    ret z                                         ; $45df: $c8

    db $10                                        ; $45e0: $10
    ld d, $70                                     ; $45e1: $16 $70
    sub h                                         ; $45e3: $94
    ret nz                                        ; $45e4: $c0

    or b                                          ; $45e5: $b0
    nop                                           ; $45e6: $00
    ld hl, sp+$38                                 ; $45e7: $f8 $38
    inc e                                         ; $45e9: $1c
    db $e4                                        ; $45ea: $e4
    db $fc                                        ; $45eb: $fc
    inc a                                         ; $45ec: $3c
    ld [bc], a                                    ; $45ed: $02
    add hl, bc                                    ; $45ee: $09
    ld [bc], a                                    ; $45ef: $02
    bit 3, c                                      ; $45f0: $cb $59
    jp $c118                                      ; $45f2: $c3 $18 $c1


    jp nc, $283e                                  ; $45f5: $d2 $3e $28

    ld b, b                                       ; $45f8: $40
    nop                                           ; $45f9: $00
    add b                                         ; $45fa: $80
    ccf                                           ; $45fb: $3f
    rra                                           ; $45fc: $1f
    ccf                                           ; $45fd: $3f
    ld c, a                                       ; $45fe: $4f
    dec sp                                        ; $45ff: $3b

Call_0af_4600:
    ld b, a                                       ; $4600: $47
    dec b                                         ; $4601: $05
    ld h, b                                       ; $4602: $60
    dec sp                                        ; $4603: $3b
    ld d, b                                       ; $4604: $50
    sbc b                                         ; $4605: $98
    ld h, [hl]                                    ; $4606: $66
    adc b                                         ; $4607: $88
    rst $38                                       ; $4608: $ff
    nop                                           ; $4609: $00
    cp $00                                        ; $460a: $fe $00
    ld bc, $fd00                                  ; $460c: $01 $00 $fd
    ld [bc], a                                    ; $460f: $02
    ld bc, $fa02                                  ; $4610: $01 $02 $fa
    ld bc, $e0f0                                  ; $4613: $01 $f0 $e0
    nop                                           ; $4616: $00
    xor $81                                       ; $4617: $ee $81
    sbc b                                         ; $4619: $98
    ld h, a                                       ; $461a: $67
    ld h, h                                       ; $461b: $64
    jp nz, Jump_000_03c5                          ; $461c: $c2 $c5 $03

    nop                                           ; $461f: $00
    add c                                         ; $4620: $81
    add b                                         ; $4621: $80
    nop                                           ; $4622: $00
    rra                                           ; $4623: $1f
    inc hl                                        ; $4624: $23
    nop                                           ; $4625: $00
    ret nz                                        ; $4626: $c0

    ld h, $00                                     ; $4627: $26 $00
    ld [$e46c], sp                                ; $4629: $08 $6c $e4
    ld e, c                                       ; $462c: $59
    ld a, [bc]                                    ; $462d: $0a
    ld [de], a                                    ; $462e: $12
    sub l                                         ; $462f: $95
    inc c                                         ; $4630: $0c
    nop                                           ; $4631: $00
    add h                                         ; $4632: $84
    rlca                                          ; $4633: $07
    ld [$e3f1], sp                                ; $4634: $08 $f1 $e3
    jr jr_0af_4651                                ; $4637: $18 $18

    rrca                                          ; $4639: $0f
    nop                                           ; $463a: $00
    ld b, [hl]                                    ; $463b: $46
    pop bc                                        ; $463c: $c1
    jp nz, $84b4                                  ; $463d: $c2 $b4 $84

    ld a, [$4186]                                 ; $4640: $fa $86 $41
    nop                                           ; $4643: $00
    ld b, b                                       ; $4644: $40
    ret nz                                        ; $4645: $c0

    ld b, a                                       ; $4646: $47
    ld hl, sp-$47                                 ; $4647: $f8 $b9
    ldh a, [$8e]                                  ; $4649: $f0 $8e
    ccf                                           ; $464b: $3f
    nop                                           ; $464c: $00
    jr nz, jr_0af_468f                            ; $464d: $20 $40

    ret nz                                        ; $464f: $c0

    add c                                         ; $4650: $81

jr_0af_4651:
    ld a, [hl]                                    ; $4651: $7e
    db $10                                        ; $4652: $10
    jr c, jr_0af_4695                             ; $4653: $38 $40

    add b                                         ; $4655: $80
    cp a                                          ; $4656: $bf
    nop                                           ; $4657: $00
    add b                                         ; $4658: $80
    ld b, b                                       ; $4659: $40
    nop                                           ; $465a: $00
    ld h, b                                       ; $465b: $60
    sbc [hl]                                      ; $465c: $9e
    add d                                         ; $465d: $82
    ld [hl], b                                    ; $465e: $70

jr_0af_465f:
    ld bc, $8020                                  ; $465f: $01 $20 $80
    ld b, h                                       ; $4662: $44
    ld a, $fe                                     ; $4663: $3e $fe
    db $fd                                        ; $4665: $fd
    db $fc                                        ; $4666: $fc
    ret nc                                        ; $4667: $d0

    ld d, b                                       ; $4668: $50
    nop                                           ; $4669: $00
    add b                                         ; $466a: $80
    ret nz                                        ; $466b: $c0

    ld b, b                                       ; $466c: $40
    inc bc                                        ; $466d: $03
    ld a, [$e212]                                 ; $466e: $fa $12 $e2
    inc h                                         ; $4671: $24
    nop                                           ; $4672: $00
    call nz, $0b60                                ; $4673: $c4 $60 $0b
    ldh [rWX], a                                  ; $4676: $e0 $4b
    dec hl                                        ; $4678: $2b
    sla a                                         ; $4679: $cb $27
    nop                                           ; $467b: $00
    rst $00                                       ; $467c: $c7
    jr nz, jr_0af_465f                            ; $467d: $20 $e0

    nop                                           ; $467f: $00
    ld bc, $f9f8                                  ; $4680: $01 $f8 $f9
    db $fd                                        ; $4683: $fd
    nop                                           ; $4684: $00
    db $fc                                        ; $4685: $fc
    ld bc, $0101                                  ; $4686: $01 $01 $01
    ld [bc], a                                    ; $4689: $02
    di                                            ; $468a: $f3
    db $f4                                        ; $468b: $f4
    db $f4                                        ; $468c: $f4
    nop                                           ; $468d: $00
    push af                                       ; $468e: $f5

jr_0af_468f:
    db $fc                                        ; $468f: $fc
    ld bc, $d25a                                  ; $4690: $01 $5a $d2
    adc h                                         ; $4693: $8c
    ld a, [bc]                                    ; $4694: $0a

jr_0af_4695:
    and [hl]                                      ; $4695: $a6
    nop                                           ; $4696: $00
    add hl, hl                                    ; $4697: $29
    daa                                           ; $4698: $27
    xor b                                         ; $4699: $a8
    jr nz, jr_0af_470c                            ; $469a: $20 $70

    rst $38                                       ; $469c: $ff
    ldh a, [$d5]                                  ; $469d: $f0 $d5
    nop                                           ; $469f: $00
    res 2, e                                      ; $46a0: $cb $93
    sbc [hl]                                      ; $46a2: $9e
    ld h, c                                       ; $46a3: $61
    push hl                                       ; $46a4: $e5

jr_0af_46a5:
    ld l, h                                       ; $46a5: $6c
    sub c                                         ; $46a6: $91
    ld l, [hl]                                    ; $46a7: $6e
    nop                                           ; $46a8: $00
    sbc [hl]                                      ; $46a9: $9e
    inc b                                         ; $46aa: $04
    ld [bc], a                                    ; $46ab: $02
    db $fd                                        ; $46ac: $fd
    inc e                                         ; $46ad: $1c
    adc l                                         ; $46ae: $8d
    sbc a                                         ; $46af: $9f
    ldh [rP1], a                                  ; $46b0: $e0 $00
    rlca                                          ; $46b2: $07
    ld l, e                                       ; $46b3: $6b
    ld [de], a                                    ; $46b4: $12
    ld h, b                                       ; $46b5: $60
    ld l, a                                       ; $46b6: $6f
    jr nz, @-$2f                                  ; $46b7: $20 $cf

    sbc a                                         ; $46b9: $9f
    nop                                           ; $46ba: $00
    ld e, a                                       ; $46bb: $5f
    ld a, [de]                                    ; $46bc: $1a
    ld e, a                                       ; $46bd: $5f
    add c                                         ; $46be: $81
    add c                                         ; $46bf: $81
    ld a, a                                       ; $46c0: $7f
    or b                                          ; $46c1: $b0
    cp $00                                        ; $46c2: $fe $00
    dec hl                                        ; $46c4: $2b
    ld [hl], c                                    ; $46c5: $71
    ld l, h                                       ; $46c6: $6c
    ld sp, hl                                     ; $46c7: $f9
    ld hl, sp-$10                                 ; $46c8: $f8 $f0
    or $07                                        ; $46ca: $f6 $07
    nop                                           ; $46cc: $00
    rrca                                          ; $46cd: $0f
    rra                                           ; $46ce: $1f
    cpl                                           ; $46cf: $2f
    nop                                           ; $46d0: $00
    ld a, a                                       ; $46d1: $7f
    and $19                                       ; $46d2: $e6 $19
    ld l, l                                       ; $46d4: $6d
    nop                                           ; $46d5: $00
    rst $38                                       ; $46d6: $ff
    add b                                         ; $46d7: $80
    ccf                                           ; $46d8: $3f
    ld b, b                                       ; $46d9: $40
    and b                                         ; $46da: $a0
    jr c, jr_0af_46a5                             ; $46db: $38 $c8

    scf                                           ; $46dd: $37
    nop                                           ; $46de: $00
    ld c, e                                       ; $46df: $4b
    sbc c                                         ; $46e0: $99
    rlca                                          ; $46e1: $07
    db $e4                                        ; $46e2: $e4
    rlca                                          ; $46e3: $07
    db $f4                                        ; $46e4: $f4
    rlca                                          ; $46e5: $07
    db $f4                                        ; $46e6: $f4
    nop                                           ; $46e7: $00
    inc bc                                        ; $46e8: $03
    db $f4                                        ; $46e9: $f4
    rlca                                          ; $46ea: $07
    jr z, jr_0af_474d                             ; $46eb: $28 $60

    scf                                           ; $46ed: $37
    ld b, a                                       ; $46ee: $47
    scf                                           ; $46ef: $37
    inc b                                         ; $46f0: $04
    ld b, a                                       ; $46f1: $47
    rlca                                          ; $46f2: $07
    jr nc, jr_0af_4700                            ; $46f3: $30 $0b

    jr c, @+$04                                   ; $46f5: $38 $02

    nop                                           ; $46f7: $00
    jr @-$0c                                      ; $46f8: $18 $f2

    ld b, b                                       ; $46fa: $40
    add sp, $6a                                   ; $46fb: $e8 $6a
    nop                                           ; $46fd: $00
    ld sp, hl                                     ; $46fe: $f9
    inc bc                                        ; $46ff: $03

jr_0af_4700:
    jp nz, $ac14                                  ; $4700: $c2 $14 $ac

    ld bc, $2300                                  ; $4703: $01 $00 $23
    ld a, e                                       ; $4706: $7b
    ld a, b                                       ; $4707: $78
    ld b, h                                       ; $4708: $44
    ld a, h                                       ; $4709: $7c
    ld [c], a                                     ; $470a: $e2
    sbc h                                         ; $470b: $9c

jr_0af_470c:
    ld h, a                                       ; $470c: $67
    nop                                           ; $470d: $00
    add hl, bc                                    ; $470e: $09
    jr nz, jr_0af_4743                            ; $470f: $20 $32

    ret nz                                        ; $4711: $c0

    db $10                                        ; $4712: $10
    dec d                                         ; $4713: $15
    ld [hl], c                                    ; $4714: $71
    and b                                         ; $4715: $a0
    nop                                           ; $4716: $00
    jr nc, jr_0af_4743                            ; $4717: $30 $2a

    ld b, d                                       ; $4719: $42
    dec bc                                        ; $471a: $0b
    jp Jump_000_110d                              ; $471b: $c3 $0d $11


    add hl, bc                                    ; $471e: $09
    nop                                           ; $471f: $00
    di                                            ; $4720: $f3
    adc c                                         ; $4721: $89
    ld [hl], h                                    ; $4722: $74
    adc b                                         ; $4723: $88
    ld [hl], l                                    ; $4724: $75
    call nz, Call_0af_50b6                        ; $4725: $c4 $b6 $50
    nop                                           ; $4728: $00
    and [hl]                                      ; $4729: $a6
    ld e, [hl]                                    ; $472a: $5e
    jr z, jr_0af_4787                             ; $472b: $28 $5a

    ld h, $b4                                     ; $472d: $26 $b4
    jr c, jr_0af_4798                             ; $472f: $38 $67

    nop                                           ; $4731: $00

jr_0af_4732:
    inc e                                         ; $4732: $1c
    ld b, e                                       ; $4733: $43
    ld b, $11                                     ; $4734: $06 $11
    and d                                         ; $4736: $a2
    inc b                                         ; $4737: $04
    dec l                                         ; $4738: $2d
    ld bc, $5800                                  ; $4739: $01 $00 $58
    ld b, [hl]                                    ; $473c: $46

jr_0af_473d:
    adc $6a                                       ; $473d: $ce $6a
    ld b, h                                       ; $473f: $44
    jr nz, jr_0af_4762                            ; $4740: $20 $20

    ld [hl], b                                    ; $4742: $70

jr_0af_4743:
    nop                                           ; $4743: $00
    rla                                           ; $4744: $17
    inc c                                         ; $4745: $0c
    jp hl                                         ; $4746: $e9


    rlca                                          ; $4747: $07
    halt                                          ; $4748: $76
    pop bc                                        ; $4749: $c1
    add hl, sp                                    ; $474a: $39
    sbc $00                                       ; $474b: $de $00

jr_0af_474d:
    cp a                                          ; $474d: $bf
    and $d6                                       ; $474e: $e6 $d6
    jr jr_0af_473d                                ; $4750: $18 $eb

    inc c                                         ; $4752: $0c
    rst $20                                       ; $4753: $e7
    ld b, $00                                     ; $4754: $06 $00
    ld a, [c]                                     ; $4756: $f2

jr_0af_4757:
    ld c, $ea                                     ; $4757: $0e $ea
    ld l, [hl]                                    ; $4759: $6e
    ld [$882c], sp                                ; $475a: $08 $2c $88
    db $e4                                        ; $475d: $e4
    nop                                           ; $475e: $00
    inc a                                         ; $475f: $3c
    ld hl, sp+$0c                                 ; $4760: $f8 $0c

jr_0af_4762:
    ret nz                                        ; $4762: $c0

    ld [hl], b                                    ; $4763: $70
    xor b                                         ; $4764: $a8
    jr c, jr_0af_4757                             ; $4765: $38 $f0

    nop                                           ; $4767: $00
    db $ec                                        ; $4768: $ec
    inc e                                         ; $4769: $1c
    dec b                                         ; $476a: $05
    inc c                                         ; $476b: $0c
    dec b                                         ; $476c: $05
    inc c                                         ; $476d: $0c
    ld b, $0c                                     ; $476e: $06 $0c
    nop                                           ; $4770: $00
    ld b, $04                                     ; $4771: $06 $04
    ld [bc], a                                    ; $4773: $02
    dec b                                         ; $4774: $05
    inc bc                                        ; $4775: $03
    ld b, $03                                     ; $4776: $06 $03
    pop bc                                        ; $4778: $c1
    nop                                           ; $4779: $00
    ld a, $7f                                     ; $477a: $3e $7f
    ld a, [hl-]                                   ; $477c: $3a
    add e                                         ; $477d: $83
    ld a, a                                       ; $477e: $7f
    rrca                                          ; $477f: $0f
    ldh a, [rNR31]                                ; $4780: $f0 $1b
    nop                                           ; $4782: $00
    inc e                                         ; $4783: $1c
    db $e3                                        ; $4784: $e3
    inc bc                                        ; $4785: $03
    inc c                                         ; $4786: $0c

jr_0af_4787:
    ld [hl], b                                    ; $4787: $70
    ld [hl], c                                    ; $4788: $71
    rrca                                          ; $4789: $0f
    dec b                                         ; $478a: $05
    nop                                           ; $478b: $00
    ld sp, $8280                                  ; $478c: $31 $80 $82
    call z, $1cc0                                 ; $478f: $cc $c0 $1c
    call nc, RST_20                               ; $4792: $d4 $20 $00
    pop hl                                        ; $4795: $e1
    db $ec                                        ; $4796: $ec
    add hl, hl                                    ; $4797: $29

jr_0af_4798:
    add sp, $6c                                   ; $4798: $e8 $6c
    inc h                                         ; $479a: $24
    inc h                                         ; $479b: $24
    adc c                                         ; $479c: $89
    nop                                           ; $479d: $00
    sub c                                         ; $479e: $91
    db $d3                                        ; $479f: $d3
    jp Jump_000_12d5                              ; $47a0: $c3 $d5 $12


    ld b, c                                       ; $47a3: $41
    ld c, $7f                                     ; $47a4: $0e $7f
    nop                                           ; $47a6: $00
    ld b, b                                       ; $47a7: $40
    ccf                                           ; $47a8: $3f
    cp a                                          ; $47a9: $bf
    ld b, b                                       ; $47aa: $40
    ccf                                           ; $47ab: $3f
    ld a, a                                       ; $47ac: $7f
    dec e                                         ; $47ad: $1d
    ld b, $00                                     ; $47ae: $06 $00
    jr z, jr_0af_4732                             ; $47b0: $28 $80

    add [hl]                                      ; $47b2: $86
    ret nz                                        ; $47b3: $c0

    pop bc                                        ; $47b4: $c1
    jp z, Jump_000_1251                           ; $47b5: $ca $51 $12

    nop                                           ; $47b8: $00

jr_0af_47b9:
    add hl, de                                    ; $47b9: $19
    ld b, b                                       ; $47ba: $40
    ret nc                                        ; $47bb: $d0

    add b                                         ; $47bc: $80
    ld h, c                                       ; $47bd: $61
    ld h, b                                       ; $47be: $60
    or c                                          ; $47bf: $b1
    db $f4                                        ; $47c0: $f4
    nop                                           ; $47c1: $00
    ld a, [c]                                     ; $47c2: $f2
    rst $38                                       ; $47c3: $ff
    db $fc                                        ; $47c4: $fc
    ld a, [hl]                                    ; $47c5: $7e
    inc bc                                        ; $47c6: $03
    ld b, $01                                     ; $47c7: $06 $01
    sbc b                                         ; $47c9: $98
    nop                                           ; $47ca: $00
    ld a, e                                       ; $47cb: $7b
    sbc b                                         ; $47cc: $98
    dec de                                        ; $47cd: $1b
    xor d                                         ; $47ce: $aa
    ld [hl-], a                                   ; $47cf: $32
    inc c                                         ; $47d0: $0c
    inc a                                         ; $47d1: $3c
    sbc b                                         ; $47d2: $98
    nop                                           ; $47d3: $00
    and b                                         ; $47d4: $a0
    adc h                                         ; $47d5: $8c
    or b                                          ; $47d6: $b0
    add h                                         ; $47d7: $84
    or b                                          ; $47d8: $b0
    add $72                                       ; $47d9: $c6 $72
    jp nz, $9d01                                  ; $47db: $c2 $01 $9d

    ld b, d                                       ; $47de: $42
    ld e, a                                       ; $47df: $5f
    jr nz, @-$3e                                  ; $47e0: $20 $c0

    ld h, b                                       ; $47e2: $60
    ret nz                                        ; $47e3: $c0

    or b                                          ; $47e4: $b0
    ld bc, $0130                                  ; $47e5: $01 $30 $01
    inc bc                                        ; $47e8: $03
    rra                                           ; $47e9: $1f
    ld [bc], a                                    ; $47ea: $02
    ld [hl+], a                                   ; $47eb: $22
    ld a, [de]                                    ; $47ec: $1a
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    ld a, h                                       ; $47ef: $7c
    inc bc                                        ; $47f0: $03
    nop                                           ; $47f1: $00
    sub b                                         ; $47f2: $90
    rra                                           ; $47f3: $1f
    add h                                         ; $47f4: $84
    rlca                                          ; $47f5: $07
    adc b                                         ; $47f6: $88
    sub l                                         ; $47f7: $95
    ld a, $b8                                     ; $47f8: $3e $b8
    nop                                           ; $47fa: $00
    rra                                           ; $47fb: $1f
    ret nz                                        ; $47fc: $c0

    rlca                                          ; $47fd: $07
    call nz, Call_000_18d8                        ; $47fe: $c4 $d8 $18

jr_0af_4801:
    add b                                         ; $4801: $80
    ld b, b                                       ; $4802: $40
    nop                                           ; $4803: $00
    dec d                                         ; $4804: $15
    db $f4                                        ; $4805: $f4
    ret                                           ; $4806: $c9


    add hl, sp                                    ; $4807: $39
    ldh [$e4], a                                  ; $4808: $e0 $e4
    ld l, b                                       ; $480a: $68
    ldh [rP1], a                                  ; $480b: $e0 $00
    ldh a, [$90]                                  ; $480d: $f0 $90
    db $10                                        ; $480f: $10
    ldh [$e0], a                                  ; $4810: $e0 $e0
    ld [hl], b                                    ; $4812: $70
    ccf                                           ; $4813: $3f
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    ret nz                                        ; $4816: $c0

    rst $18                                       ; $4817: $df
    nop                                           ; $4818: $00
    add b                                         ; $4819: $80
    ld l, c                                       ; $481a: $69
    sbc a                                         ; $481b: $9f
    sub c                                         ; $481c: $91
    rst $08                                       ; $481d: $cf
    nop                                           ; $481e: $00
    add hl, de                                    ; $481f: $19
    rlca                                          ; $4820: $07
    cpl                                           ; $4821: $2f
    ld h, b                                       ; $4822: $60
    rrca                                          ; $4823: $0f
    nop                                           ; $4824: $00
    inc c                                         ; $4825: $0c
    ret z                                         ; $4826: $c8

    nop                                           ; $4827: $00
    dec c                                         ; $4828: $0d
    inc c                                         ; $4829: $0c
    ld de, $a410                                  ; $482a: $11 $10 $a4
    inc a                                         ; $482d: $3c
    adc b                                         ; $482e: $88
    call c, $8200                                 ; $482f: $dc $00 $82
    inc bc                                        ; $4832: $03
    sub e                                         ; $4833: $93
    jr nc, jr_0af_47b9                            ; $4834: $30 $83

    nop                                           ; $4836: $00
    sub [hl]                                      ; $4837: $96
    ldh [rP1], a                                  ; $4838: $e0 $00
    jr z, jr_0af_4801                             ; $483a: $28 $c5

    ld b, h                                       ; $483c: $44
    adc l                                         ; $483d: $8d
    xor b                                         ; $483e: $a8
    sbc c                                         ; $483f: $99
    ld [hl], c                                    ; $4840: $71
    ldh a, [rP1]                                  ; $4841: $f0 $00
    inc bc                                        ; $4843: $03
    nop                                           ; $4844: $00
    inc hl                                        ; $4845: $23
    jr nz, jr_0af_488b                            ; $4846: $20 $43

    ld [hl], b                                    ; $4848: $70
    ret nz                                        ; $4849: $c0

    add b                                         ; $484a: $80
    inc b                                         ; $484b: $04
    ld b, b                                       ; $484c: $40
    add b                                         ; $484d: $80
    ld b, b                                       ; $484e: $40
    ret nz                                        ; $484f: $c0

    add b                                         ; $4850: $80
    rst $10                                       ; $4851: $d7
    ld bc, $0080                                  ; $4852: $01 $80 $00
    ret nz                                        ; $4855: $c0

    ld b, $00                                     ; $4856: $06 $00
    sbc a                                         ; $4858: $9f
    ld [hl], d                                    ; $4859: $72
    ld [c], a                                     ; $485a: $e2
    ld c, $0f                                     ; $485b: $0e $0f
    pop hl                                        ; $485d: $e1
    rrca                                          ; $485e: $0f
    ld h, c                                       ; $485f: $61
    nop                                           ; $4860: $00
    add a                                         ; $4861: $87
    pop af                                        ; $4862: $f1
    add b                                         ; $4863: $80
    ldh a, [rNR42]                                ; $4864: $f0 $21
    ld e, $38                                     ; $4866: $1e $38
    daa                                           ; $4868: $27
    nop                                           ; $4869: $00
    rrca                                          ; $486a: $0f
    inc sp                                        ; $486b: $33
    jr nz, jr_0af_48de                            ; $486c: $20 $70

    jr nz, jr_0af_4877                            ; $486e: $20 $07

    ld b, b                                       ; $4870: $40
    ld c, a                                       ; $4871: $4f
    nop                                           ; $4872: $00
    ld e, c                                       ; $4873: $59
    rlca                                          ; $4874: $07
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00

jr_0af_4877:
    db $e3                                        ; $4877: $e3

Jump_0af_4878:
    inc hl                                        ; $4878: $23
    ld sp, $00c1                                  ; $4879: $31 $c1 $00
    rrca                                          ; $487c: $0f
    pop af                                        ; $487d: $f1
    rla                                           ; $487e: $17
    jr c, jr_0af_4898                             ; $487f: $38 $17

    ld [hl], b                                    ; $4881: $70
    adc c                                         ; $4882: $89
    add [hl]                                      ; $4883: $86
    nop                                           ; $4884: $00
    cp [hl]                                       ; $4885: $be
    xor b                                         ; $4886: $a8
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    pop hl                                        ; $4889: $e1
    ld a, a                                       ; $488a: $7f

jr_0af_488b:
    ldh a, [$cf]                                  ; $488b: $f0 $cf
    nop                                           ; $488d: $00
    inc e                                         ; $488e: $1c
    inc de                                        ; $488f: $13
    rlca                                          ; $4890: $07
    inc b                                         ; $4891: $04
    ld b, a                                       ; $4892: $47
    ld h, h                                       ; $4893: $64
    rlca                                          ; $4894: $07
    scf                                           ; $4895: $37
    nop                                           ; $4896: $00
    ld c, a                                       ; $4897: $4f

jr_0af_4898:
    adc h                                         ; $4898: $8c
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    ld a, [hl]                                    ; $489b: $7e
    db $d3                                        ; $489c: $d3
    add e                                         ; $489d: $83
    ld b, h                                       ; $489e: $44
    nop                                           ; $489f: $00
    rst $00                                       ; $48a0: $c7
    jp hl                                         ; $48a1: $e9


    ld b, a                                       ; $48a2: $47
    ld [hl], h                                    ; $48a3: $74
    ld b, a                                       ; $48a4: $47
    ld [hl], b                                    ; $48a5: $70
    ld b, [hl]                                    ; $48a6: $46
    ld [hl], b                                    ; $48a7: $70
    nop                                           ; $48a8: $00
    ld c, h                                       ; $48a9: $4c
    ld h, d                                       ; $48aa: $62
    inc bc                                        ; $48ab: $03
    dec c                                         ; $48ac: $0d
    rst $20                                       ; $48ad: $e7
    dec de                                        ; $48ae: $1b
    inc c                                         ; $48af: $0c
    ldh a, [rNR41]                                ; $48b0: $f0 $20
    inc e                                         ; $48b2: $1c
    db $e4                                        ; $48b3: $e4
    nop                                           ; $48b4: $00
    ld l, e                                       ; $48b5: $6b
    db $10                                        ; $48b6: $10
    inc bc                                        ; $48b7: $03
    add a                                         ; $48b8: $87
    ld [bc], a                                    ; $48b9: $02
    ld b, b                                       ; $48ba: $40
    nop                                           ; $48bb: $00
    ld bc, $fe70                                  ; $48bc: $01 $70 $fe
    nop                                           ; $48bf: $00
    ld hl, sp+$00                                 ; $48c0: $f8 $00
    ld a, [c]                                     ; $48c2: $f2
    pop af                                        ; $48c3: $f1
    nop                                           ; $48c4: $00
    db $f4                                        ; $48c5: $f4
    di                                            ; $48c6: $f3
    rlca                                          ; $48c7: $07
    rst $30                                       ; $48c8: $f7
    ld b, $e4                                     ; $48c9: $06 $e4
    ld [$00e4], a                                 ; $48cb: $ea $e4 $00
    ld c, $08                                     ; $48ce: $0e $08
    jr nz, jr_0af_48f2                            ; $48d0: $20 $20

    ld l, b                                       ; $48d2: $68
    ld e, b                                       ; $48d3: $58
    sub b                                         ; $48d4: $90
    xor c                                         ; $48d5: $a9
    nop                                           ; $48d6: $00
    ret nz                                        ; $48d7: $c0

    add hl, sp                                    ; $48d8: $39
    sub d                                         ; $48d9: $92
    ld [hl], d                                    ; $48da: $72
    jr c, jr_0af_4905                             ; $48db: $38 $28

    nop                                           ; $48dd: $00

jr_0af_48de:
    stop                                          ; $48de: $10 $00
    ld bc, $c401                                  ; $48e0: $01 $01 $c4
    cp b                                          ; $48e3: $b8
    call c, $b043                                 ; $48e4: $dc $43 $b0
    adc l                                         ; $48e7: $8d
    nop                                           ; $48e8: $00
    ld b, $7e                                     ; $48e9: $06 $7e
    rlca                                          ; $48eb: $07
    jp z, $0403                                   ; $48ec: $ca $03 $04

    ld [hl], e                                    ; $48ef: $73
    ld [hl], h                                    ; $48f0: $74
    nop                                           ; $48f1: $00

jr_0af_48f2:
    rst $38                                       ; $48f2: $ff
    nop                                           ; $48f3: $00
    ld a, a                                       ; $48f4: $7f
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    ccf                                           ; $48f7: $3f
    add b                                         ; $48f8: $80
    rra                                           ; $48f9: $1f
    nop                                           ; $48fa: $00
    rst $08                                       ; $48fb: $cf
    rrca                                          ; $48fc: $0f
    ld c, a                                       ; $48fd: $4f
    xor a                                         ; $48fe: $af
    ld b, a                                       ; $48ff: $47
    daa                                           ; $4900: $27
    add e                                         ; $4901: $83
    inc hl                                        ; $4902: $23
    ret nz                                        ; $4903: $c0

    ld d, b                                       ; $4904: $50

jr_0af_4905:
    ld a, b                                       ; $4905: $78
    ld [de], a                                    ; $4906: $12
    adc b                                         ; $4907: $88

jr_0af_4908:
    ldh [$e0], a                                  ; $4908: $e0 $e0
    jp z, $80c4                                   ; $490a: $ca $c4 $80

    sbc b                                         ; $490d: $98
    nop                                           ; $490e: $00
    or e                                          ; $490f: $b3
    add e                                         ; $4910: $83
    or [hl]                                       ; $4911: $b6
    add [hl]                                      ; $4912: $86
    ld [$0ee6], a                                 ; $4913: $ea $e6 $0e
    ld [c], a                                     ; $4916: $e2
    nop                                           ; $4917: $00
    inc c                                         ; $4918: $0c
    ldh [$0d], a                                  ; $4919: $e0 $0d
    pop hl                                        ; $491b: $e1
    dec c                                         ; $491c: $0d
    pop hl                                        ; $491d: $e1
    inc c                                         ; $491e: $0c
    nop                                           ; $491f: $00
    nop                                           ; $4920: $00
    inc c                                         ; $4921: $0c
    jr z, jr_0af_4908                             ; $4922: $28 $e4

    add sp, $33                                   ; $4924: $e8 $33
    rra                                           ; $4926: $1f
    rrca                                          ; $4927: $0f
    ld sp, $0700                                  ; $4928: $31 $00 $07
    ld c, $12                                     ; $492b: $0e $12
    dec e                                         ; $492d: $1d
    ld b, $2d                                     ; $492e: $06 $2d
    rlca                                          ; $4930: $07
    sbc d                                         ; $4931: $9a
    nop                                           ; $4932: $00
    rlca                                          ; $4933: $07
    sbc c                                         ; $4934: $99
    dec bc                                        ; $4935: $0b
    add l                                         ; $4936: $85
    ld hl, sp-$1d                                 ; $4937: $f8 $e3
    sbc d                                         ; $4939: $9a
    sbc e                                         ; $493a: $9b
    nop                                           ; $493b: $00
    add hl, bc                                    ; $493c: $09
    add a                                         ; $493d: $87
    add hl, hl                                    ; $493e: $29
    ld [hl], h                                    ; $493f: $74
    inc e                                         ; $4940: $1c
    scf                                           ; $4941: $37
    ld a, h                                       ; $4942: $7c
    jp z, $fa00                                   ; $4943: $ca $00 $fa

    db $fc                                        ; $4946: $fc
    ld a, [$84fc]                                 ; $4947: $fa $fc $84
    inc [hl]                                      ; $494a: $34
    add [hl]                                      ; $494b: $86
    ld d, [hl]                                    ; $494c: $56
    nop                                           ; $494d: $00
    add e                                         ; $494e: $83
    ld d, e                                       ; $494f: $53
    nop                                           ; $4950: $00
    ldh [rSCX], a                                 ; $4951: $e0 $43
    ld hl, sp-$77                                 ; $4953: $f8 $89
    adc b                                         ; $4955: $88
    ld [$848e], sp                                ; $4956: $08 $8e $84
    db $ec                                        ; $4959: $ec
    pop hl                                        ; $495a: $e1
    add b                                         ; $495b: $80
    ld [$3f80], sp                                ; $495c: $08 $80 $3f
    ret nz                                        ; $495f: $c0

    nop                                           ; $4960: $00
    rrca                                          ; $4961: $0f
    rlca                                          ; $4962: $07
    ld [hl], a                                    ; $4963: $77
    add e                                         ; $4964: $83
    dec de                                        ; $4965: $1b
    ld h, b                                       ; $4966: $60
    ld l, h                                       ; $4967: $6c
    db $10                                        ; $4968: $10
    ld h, b                                       ; $4969: $60
    rlca                                          ; $496a: $07
    ret nc                                        ; $496b: $d0

    ld c, b                                       ; $496c: $48
    sbc h                                         ; $496d: $9c
    ld [$85b4], sp                                ; $496e: $08 $b4 $85
    jr nc, jr_0af_497e                            ; $4971: $30 $0b

    ld bc, $0d00                                  ; $4973: $01 $00 $0d
    jr nc, jr_0af_49a8                            ; $4976: $30 $30

    rlca                                          ; $4978: $07
    ld [hl], b                                    ; $4979: $70
    ld c, a                                       ; $497a: $4f
    ldh [rVBK], a                                 ; $497b: $e0 $4f
    nop                                           ; $497d: $00

jr_0af_497e:
    ret nz                                        ; $497e: $c0

    adc [hl]                                      ; $497f: $8e
    ret nz                                        ; $4980: $c0

    inc b                                         ; $4981: $04
    ld [bc], a                                    ; $4982: $02
    ld h, b                                       ; $4983: $60
    ld h, b                                       ; $4984: $60
    sbc e                                         ; $4985: $9b
    nop                                           ; $4986: $00
    rla                                           ; $4987: $17
    ld d, d                                       ; $4988: $52
    ld c, $03                                     ; $4989: $0e $03
    ld [bc], a                                    ; $498b: $02
    ldh a, [rP1]                                  ; $498c: $f0 $00
    pop bc                                        ; $498e: $c1
    nop                                           ; $498f: $00
    dec b                                         ; $4990: $05
    jr jr_0af_499c                                ; $4991: $18 $09

    rlca                                          ; $4993: $07
    adc a                                         ; $4994: $8f
    ld b, $c1                                     ; $4995: $06 $c1
    ld bc, $ff00                                  ; $4997: $01 $00 $ff
    di                                            ; $499a: $f3
    rst $08                                       ; $499b: $cf

jr_0af_499c:
    dec bc                                        ; $499c: $0b
    ld [hl-], a                                   ; $499d: $32
    inc b                                         ; $499e: $04
    ld [bc], a                                    ; $499f: $02
    ret nc                                        ; $49a0: $d0

    nop                                           ; $49a1: $00
    ld b, b                                       ; $49a2: $40
    inc [hl]                                      ; $49a3: $34
    cp h                                          ; $49a4: $bc
    db $fc                                        ; $49a5: $fc
    ld hl, sp+$7c                                 ; $49a6: $f8 $7c

jr_0af_49a8:
    cp d                                          ; $49a8: $ba
    or $00                                        ; $49a9: $f6 $00
    call Call_000_0d0e                            ; $49ab: $cd $0e $0d

jr_0af_49ae:
    ld hl, $1c21                                  ; $49ae: $21 $21 $1c
    ldh [rSCY], a                                 ; $49b1: $e0 $42
    nop                                           ; $49b3: $00
    and h                                         ; $49b4: $a4
    dec de                                        ; $49b5: $1b
    jr z, @+$7b                                   ; $49b6: $28 $79

    ld l, h                                       ; $49b8: $6c
    inc c                                         ; $49b9: $0c
    ld [de], a                                    ; $49ba: $12
    ld c, $00                                     ; $49bb: $0e $00
    ld b, d                                       ; $49bd: $42
    inc bc                                        ; $49be: $03
    ld hl, $1a09                                  ; $49bf: $21 $09 $1a
    ret z                                         ; $49c2: $c8

    jp nz, $00f8                                  ; $49c3: $c2 $f8 $00

    ldh a, [rP1]                                  ; $49c6: $f0 $00
    ldh a, [rOBP0]                                ; $49c8: $f0 $48
    add c                                         ; $49ca: $81
    add [hl]                                      ; $49cb: $86
    ldh [rSCX], a                                 ; $49cc: $e0 $43
    nop                                           ; $49ce: $00
    ld [hl], b                                    ; $49cf: $70
    add hl, bc                                    ; $49d0: $09
    jr c, jr_0af_49df                             ; $49d1: $38 $0c

    sub h                                         ; $49d3: $94
    add [hl]                                      ; $49d4: $86
    ld c, d                                       ; $49d5: $4a
    dec sp                                        ; $49d6: $3b
    db $10                                        ; $49d7: $10
    inc h                                         ; $49d8: $24
    dec bc                                        ; $49d9: $0b
    inc c                                         ; $49da: $0c
    ld a, h                                       ; $49db: $7c
    ld [$7770], sp                                ; $49dc: $08 $70 $77

jr_0af_49df:
    sbc b                                         ; $49df: $98
    dec de                                        ; $49e0: $1b
    nop                                           ; $49e1: $00
    ldh [$0c], a                                  ; $49e2: $e0 $0c
    ld [hl], b                                    ; $49e4: $70
    ld b, $70                                     ; $49e5: $06 $70
    ld b, $31                                     ; $49e7: $06 $31
    dec b                                         ; $49e9: $05
    nop                                           ; $49ea: $00
    ld c, $40                                     ; $49eb: $0e $40
    ld b, h                                       ; $49ed: $44
    ld d, b                                       ; $49ee: $50
    dec b                                         ; $49ef: $05
    ld de, $d0c4                                  ; $49f0: $11 $c4 $d0
    nop                                           ; $49f3: $00
    ret nz                                        ; $49f4: $c0

    ret c                                         ; $49f5: $d8

    add hl, bc                                    ; $49f6: $09
    pop hl                                        ; $49f7: $e1
    ld [$0ae0], sp                                ; $49f8: $08 $e0 $0a
    ld [c], a                                     ; $49fb: $e2
    nop                                           ; $49fc: $00
    ld d, c                                       ; $49fd: $51
    ld [hl], b                                    ; $49fe: $70
    add b                                         ; $49ff: $80
    ld hl, sp+$3c                                 ; $4a00: $f8 $3c
    ld b, d                                       ; $4a02: $42
    db $fd                                        ; $4a03: $fd
    ld a, [hl-]                                   ; $4a04: $3a
    nop                                           ; $4a05: $00
    add e                                         ; $4a06: $83
    add d                                         ; $4a07: $82
    jr jr_0af_49ae                                ; $4a08: $18 $a4

    inc e                                         ; $4a0a: $1c
    ld [$9f9c], a                                 ; $4a0b: $ea $9c $9f
    nop                                           ; $4a0e: $00
    ld e, c                                       ; $4a0f: $59
    ld [$4080], sp                                ; $4a10: $08 $80 $40
    sub $48                                       ; $4a13: $d6 $48
    inc e                                         ; $4a15: $1c
    ld l, $00                                     ; $4a16: $2e $00
    dec bc                                        ; $4a18: $0b
    inc [hl]                                      ; $4a19: $34
    cp h                                          ; $4a1a: $bc
    cp e                                          ; $4a1b: $bb
    rrca                                          ; $4a1c: $0f
    ld [$8502], sp                                ; $4a1d: $08 $02 $85
    nop                                           ; $4a20: $00
    ld bc, $0c81                                  ; $4a21: $01 $81 $0c
    ldh a, [rSVBK]                                ; $4a24: $f0 $70
    ld c, a                                       ; $4a26: $4f
    ld a, $73                                     ; $4a27: $3e $73
    nop                                           ; $4a29: $00
    xor [hl]                                      ; $4a2a: $ae
    ld c, [hl]                                    ; $4a2b: $4e
    add b                                         ; $4a2c: $80
    nop                                           ; $4a2d: $00
    add b                                         ; $4a2e: $80
    adc l                                         ; $4a2f: $8d
    jr nz, jr_0af_4a87                            ; $4a30: $20 $55

    nop                                           ; $4a32: $00
    add hl, bc                                    ; $4a33: $09
    sub c                                         ; $4a34: $91
    dec h                                         ; $4a35: $25
    ld l, b                                       ; $4a36: $68
    dec b                                         ; $4a37: $05
    inc b                                         ; $4a38: $04
    and c                                         ; $4a39: $a1
    ld de, $4500                                  ; $4a3a: $11 $00 $45
    and d                                         ; $4a3d: $a2
    rst $20                                       ; $4a3e: $e7
    ld h, b                                       ; $4a3f: $60
    di                                            ; $4a40: $f3
    jr nz, @+$13                                  ; $4a41: $20 $11

    ret nz                                        ; $4a43: $c0

    nop                                           ; $4a44: $00
    inc b                                         ; $4a45: $04
    add a                                         ; $4a46: $87
    and d                                         ; $4a47: $a2
    ld h, b                                       ; $4a48: $60
    jp c, $9930                                   ; $4a49: $da $30 $99

    ld h, c                                       ; $4a4c: $61
    nop                                           ; $4a4d: $00
    db $fc                                        ; $4a4e: $fc
    ldh a, [$f4]                                  ; $4a4f: $f0 $f4
    ld a, b                                       ; $4a51: $78
    jp Jump_000_303b                              ; $4a52: $c3 $3b $30


    ret z                                         ; $4a55: $c8

    nop                                           ; $4a56: $00
    or b                                          ; $4a57: $b0
    add h                                         ; $4a58: $84
    and b                                         ; $4a59: $a0
    adc h                                         ; $4a5a: $8c
    adc b                                         ; $4a5b: $88
    add e                                         ; $4a5c: $83
    ld [$2003], sp                                ; $4a5d: $08 $03 $20
    jr jr_0af_4a65                                ; $4a60: $18 $03

    db $ec                                        ; $4a62: $ec
    nop                                           ; $4a63: $00
    rlca                                          ; $4a64: $07

jr_0af_4a65:
    or b                                          ; $4a65: $b0
    daa                                           ; $4a66: $27
    ld [bc], a                                    ; $4a67: $02
    ld [c], a                                     ; $4a68: $e2
    nop                                           ; $4a69: $00
    push af                                       ; $4a6a: $f5
    rlca                                          ; $4a6b: $07
    db $f4                                        ; $4a6c: $f4
    rlca                                          ; $4a6d: $07
    di                                            ; $4a6e: $f3
    rlca                                          ; $4a6f: $07
    ei                                            ; $4a70: $fb
    inc bc                                        ; $4a71: $03
    nop                                           ; $4a72: $00
    ld sp, hl                                     ; $4a73: $f9
    inc bc                                        ; $4a74: $03
    ld sp, hl                                     ; $4a75: $f9
    ld bc, $f9fc                                  ; $4a76: $01 $fc $f9
    sbc e                                         ; $4a79: $9b
    sbc h                                         ; $4a7a: $9c
    nop                                           ; $4a7b: $00
    db $fc                                        ; $4a7c: $fc
    jp Jump_0af_4878                              ; $4a7d: $c3 $78 $48


    ld bc, $0362                                  ; $4a80: $01 $62 $03
    ld h, a                                       ; $4a83: $67
    nop                                           ; $4a84: $00
    jp hl                                         ; $4a85: $e9


    and a                                         ; $4a86: $a7

jr_0af_4a87:
    db $fc                                        ; $4a87: $fc
    sub b                                         ; $4a88: $90
    call nz, $c8bc                                ; $4a89: $c4 $bc $c8
    ret nc                                        ; $4a8c: $d0

    nop                                           ; $4a8d: $00
    add a                                         ; $4a8e: $87
    ld h, [hl]                                    ; $4a8f: $66
    scf                                           ; $4a90: $37
    rla                                           ; $4a91: $17
    inc hl                                        ; $4a92: $23
    db $d3                                        ; $4a93: $d3
    db $e4                                        ; $4a94: $e4
    inc e                                         ; $4a95: $1c
    nop                                           ; $4a96: $00
    ld b, $0a                                     ; $4a97: $06 $0a
    ld [bc], a                                    ; $4a99: $02
    ld c, $38                                     ; $4a9a: $0e $38
    ld e, h                                       ; $4a9c: $5c
    and c                                         ; $4a9d: $a1
    ld b, c                                       ; $4a9e: $41
    nop                                           ; $4a9f: $00
    ld de, $e4e1                                  ; $4aa0: $11 $e1 $e4
    ld h, [hl]                                    ; $4aa3: $66
    jr nc, jr_0af_4aaa                            ; $4aa4: $30 $04

    ld l, b                                       ; $4aa6: $68
    ld [hl], b                                    ; $4aa7: $70
    nop                                           ; $4aa8: $00
    ld a, b                                       ; $4aa9: $78

jr_0af_4aaa:
    jr c, jr_0af_4ade                             ; $4aaa: $38 $32

    ld [hl], b                                    ; $4aac: $70
    inc b                                         ; $4aad: $04
    ld [bc], a                                    ; $4aae: $02
    ld hl, $00e0                                  ; $4aaf: $21 $e0 $00
    inc hl                                        ; $4ab2: $23
    ldh [$c3], a                                  ; $4ab3: $e0 $c3
    rlca                                          ; $4ab5: $07
    add a                                         ; $4ab6: $87
    ld c, a                                       ; $4ab7: $4f
    ld c, $96                                     ; $4ab8: $0e $96
    nop                                           ; $4aba: $00
    ld e, $3c                                     ; $4abb: $1e $3c
    inc a                                         ; $4abd: $3c
    ld a, h                                       ; $4abe: $7c
    ld a, h                                       ; $4abf: $7c
    ld hl, sp-$0a                                 ; $4ac0: $f8 $f6
    ld b, $00                                     ; $4ac2: $06 $00
    call z, $830b                                 ; $4ac4: $cc $0b $83
    adc h                                         ; $4ac7: $8c
    ld [bc], a                                    ; $4ac8: $02
    ld sp, $2552                                  ; $4ac9: $31 $52 $25
    nop                                           ; $4acc: $00
    ret nc                                        ; $4acd: $d0

    sbc d                                         ; $4ace: $9a
    ld d, d                                       ; $4acf: $52
    sbc d                                         ; $4ad0: $9a
    and [hl]                                      ; $4ad1: $a6
    ld l, d                                       ; $4ad2: $6a
    ld [hl], b                                    ; $4ad3: $70
    ld h, a                                       ; $4ad4: $67
    nop                                           ; $4ad5: $00
    ld h, b                                       ; $4ad6: $60
    cpl                                           ; $4ad7: $2f
    cpl                                           ; $4ad8: $2f
    and b                                         ; $4ad9: $a0
    rrca                                          ; $4ada: $0f
    nop                                           ; $4adb: $00
    ld b, b                                       ; $4adc: $40
    rra                                           ; $4add: $1f

jr_0af_4ade:
    nop                                           ; $4ade: $00
    ld b, b                                       ; $4adf: $40
    rra                                           ; $4ae0: $1f
    ret nz                                        ; $4ae1: $c0

    rra                                           ; $4ae2: $1f
    add b                                         ; $4ae3: $80
    ccf                                           ; $4ae4: $3f
    ld hl, sp-$05                                 ; $4ae5: $f8 $fb
    nop                                           ; $4ae7: $00
    ld hl, sp-$05                                 ; $4ae8: $f8 $fb
    db $fc                                        ; $4aea: $fc
    ld sp, hl                                     ; $4aeb: $f9
    db $fc                                        ; $4aec: $fc
    db $fd                                        ; $4aed: $fd
    cp $fc                                        ; $4aee: $fe $fc
    ld b, b                                       ; $4af0: $40
    cp $60                                        ; $4af1: $fe $60
    ld bc, $0000                                  ; $4af3: $01 $00 $00
    jp c, $29a1                                   ; $4af6: $da $a1 $29

    xor $00                                       ; $4af9: $ee $00
    inc c                                         ; $4afb: $0c
    rst $28                                       ; $4afc: $ef
    inc bc                                        ; $4afd: $03
    push hl                                       ; $4afe: $e5
    rlca                                          ; $4aff: $07

jr_0af_4b00:
    ld h, d                                       ; $4b00: $62
    ld b, $2e                                     ; $4b01: $06 $2e
    nop                                           ; $4b03: $00
    ld b, h                                       ; $4b04: $44
    ld c, $44                                     ; $4b05: $0e $44
    ld c, $f0                                     ; $4b07: $0e $f0
    ret z                                         ; $4b09: $c8

    ld hl, sp+$79                                 ; $4b0a: $f8 $79
    nop                                           ; $4b0c: $00
    pop af                                        ; $4b0d: $f1
    ld a, [c]                                     ; $4b0e: $f2
    rla                                           ; $4b0f: $17
    pop de                                        ; $4b10: $d1
    dec h                                         ; $4b11: $25
    db $eb                                        ; $4b12: $eb
    inc c                                         ; $4b13: $0c
    ret z                                         ; $4b14: $c8

    nop                                           ; $4b15: $00
    ld [$080c], sp                                ; $4b16: $08 $0c $08
    call c, $f0f1                                 ; $4b19: $dc $f1 $f0
    ld l, d                                       ; $4b1c: $6a
    ld sp, hl                                     ; $4b1d: $f9
    nop                                           ; $4b1e: $00
    rlca                                          ; $4b1f: $07
    add h                                         ; $4b20: $84
    rrca                                          ; $4b21: $0f
    ld [$4f50], sp                                ; $4b22: $08 $50 $4f
    add b                                         ; $4b25: $80
    sbc a                                         ; $4b26: $9f
    nop                                           ; $4b27: $00
    add c                                         ; $4b28: $81
    cp [hl]                                       ; $4b29: $be
    add e                                         ; $4b2a: $83
    cp h                                          ; $4b2b: $bc
    ei                                            ; $4b2c: $fb
    inc bc                                        ; $4b2d: $03
    di                                            ; $4b2e: $f3
    add hl, bc                                    ; $4b2f: $09
    nop                                           ; $4b30: $00
    ld [bc], a                                    ; $4b31: $02
    ldh a, [rNR13]                                ; $4b32: $f0 $13
    ldh a, [$83]                                  ; $4b34: $f0 $83
    ldh [$03], a                                  ; $4b36: $e0 $03
    pop bc                                        ; $4b38: $c1
    nop                                           ; $4b39: $00
    inc bc                                        ; $4b3a: $03
    add d                                         ; $4b3b: $82
    ld hl, $ce00                                  ; $4b3c: $21 $00 $ce
    adc d                                         ; $4b3f: $8a
    ld h, h                                       ; $4b40: $64
    ld hl, $2100                                  ; $4b41: $21 $00 $21
    ld b, c                                       ; $4b44: $41
    ld hl, $f451                                  ; $4b45: $21 $51 $f4
    push bc                                       ; $4b48: $c5
    ldh a, [$e3]                                  ; $4b49: $f0 $e3
    nop                                           ; $4b4b: $00
    ld [de], a                                    ; $4b4c: $12
    ld a, [bc]                                    ; $4b4d: $0a
    ld a, [bc]                                    ; $4b4e: $0a
    sbc d                                         ; $4b4f: $9a
    add b                                         ; $4b50: $80
    ccf                                           ; $4b51: $3f
    add b                                         ; $4b52: $80
    ccf                                           ; $4b53: $3f
    ld [hl], b                                    ; $4b54: $70
    ld a, a                                       ; $4b55: $7f
    ld d, h                                       ; $4b56: $54
    ld [bc], a                                    ; $4b57: $02
    inc b                                         ; $4b58: $04
    ld [$8a4c], sp                                ; $4b59: $08 $4c $8a
    ld h, h                                       ; $4b5c: $64
    ld b, $a0                                     ; $4b5d: $06 $a0
    add [hl]                                      ; $4b5f: $86
    nop                                           ; $4b60: $00
    and b                                         ; $4b61: $a0
    add a                                         ; $4b62: $87
    or b                                          ; $4b63: $b0
    add c                                         ; $4b64: $81
    ret nc                                        ; $4b65: $d0

    ret nz                                        ; $4b66: $c0

    rra                                           ; $4b67: $1f
    ret nz                                        ; $4b68: $c0

    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    ret nz                                        ; $4b6b: $c0

    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    ld [$4c54], sp                                ; $4b6e: $08 $54 $4c
    cp h                                          ; $4b71: $bc
    inc c                                         ; $4b72: $0c
    and h                                         ; $4b73: $a4
    sub d                                         ; $4b74: $92
    and b                                         ; $4b75: $a0
    rst $10                                       ; $4b76: $d7
    xor $09                                       ; $4b77: $ee $09
    call z, Call_000_3e0a                         ; $4b79: $cc $0a $3e
    cp b                                          ; $4b7c: $b8
    ld [bc], a                                    ; $4b7d: $02
    jr c, jr_0af_4b00                             ; $4b7e: $38 $80

    add c                                         ; $4b80: $81
    ld hl, $0282                                  ; $4b81: $21 $82 $02
    db $10                                        ; $4b84: $10
    jr @+$01                                      ; $4b85: $18 $ff

    dec b                                         ; $4b87: $05
    nop                                           ; $4b88: $00
    ld sp, $3060                                  ; $4b89: $31 $60 $30
    ld d, c                                       ; $4b8c: $51
    ld [bc], a                                    ; $4b8d: $02
    nop                                           ; $4b8e: $00
    sub c                                         ; $4b8f: $91
    db $10                                        ; $4b90: $10
    jr z, jr_0af_4b93                             ; $4b91: $28 $00

jr_0af_4b93:
    add [hl]                                      ; $4b93: $86
    ld [hl], $84                                  ; $4b94: $36 $84
    ld [hl], h                                    ; $4b96: $74
    ret nz                                        ; $4b97: $c0

    ld b, h                                       ; $4b98: $44
    ret nz                                        ; $4b99: $c0

    inc c                                         ; $4b9a: $0c
    ld b, $08                                     ; $4b9b: $06 $08
    inc bc                                        ; $4b9d: $03
    ld hl, sp+$03                                 ; $4b9e: $f8 $03
    inc bc                                        ; $4ba0: $03
    inc [hl]                                      ; $4ba1: $34
    jr nz, @+$06                                  ; $4ba2: $20 $04

    ld c, e                                       ; $4ba4: $4b

    db $10, $03, $ab, $01, $60, $00, $01, $f8, $23, $08, $fe, $01, $fc, $03, $f8, $00
    db $06, $e0, $c1, $dc, $00, $e7, $18, $c3, $0c, $3c, $81, $66, $00, $06, $00, $3b
    db $30, $ff, $00, $00, $7f, $00, $80, $3f, $c0, $1f, $07, $67, $38, $83, $3b, $50
    db $f8, $58, $58, $5c, $20, $f0, $0e, $e0, $00, $c1, $d8, $07, $30, $0f, $e0, $83
    db $b0, $06, $0f, $60, $1f, $c0, $3f, $54, $00, $5b, $18, $1b, $60, $84, $60, $08
    db $04, $28, $41, $c6, $c1, $0d, $f0, $0c, $06, $f8, $fb, $fc, $14, $40, $7c, $10
    db $0f, $07, $01, $77, $83, $1b, $e0, $ec, $f0, $07, $d0, $48, $c0, $98, $08, $5c
    db $40, $6f, $0f, $62, $8f, $a0, $1f, $20, $80, $7f, $5c, $20, $ff, $00, $27, $08
    db $ff, $00, $77, $06, $fa, $f9, $09, $f0, $13, $c1, $00, $c7, $cb, $87, $8b, $0c
    db $8f, $08, $87, $01, $8f, $1c, $1c, $81, $7e, $61, $a1, $74, $18, $00, $08, $cd
    db $fb, $00, $3f, $5f, $0f, $17, $00, $44, $c3, $22, $c1, $e1, $f0, $f0, $f1, $01
    db $08, $f8, $08, $f0, $f8, $f9, $fe, $9c, $18, $01, $ff, $80, $00, $51, $d1, $ff
    db $7f, $7c, $30, $00, $0c, $f0, $06, $f0, $06, $f1, $05, $8f, $00, $a0, $87, $b0
    db $c7, $d0, $c7, $d0, $c3, $12, $d8, $e3, $e8, $02, $08, $00, $be, $be, $20, $41
    db $80, $d2, $08, $b7, $48, $97, $8f, $97, $18, $c7, $04, $08, $24, $e7, $0c, $f3
    db $e2, $08, $55, $aa, $c0, $01, $09, $44, $19, $ee, $1e, $c5, $c2, $e1, $e7, $00
    db $f8, $f0, $f0, $f8, $01, $f1, $11, $f0, $00, $c2, $41, $09, $0e, $3c, $1f, $e0
    db $1f, $00, $c0, $40, $40, $c0, $00, $80, $80, $00, $20, $80, $0c, $b2, $10, $00
    db $f1, $05, $e1, $0d, $00, $e3, $0b, $e3, $0b, $c3, $1b, $c7, $17, $80, $02, $08
    db $e1, $ec, $f1, $f4, $f1, $f4, $06, $00, $f0, $02, $f8, $02, $f8, $03, $f8, $01
    db $09, $fc, $00, $00, $06, $d3, $01, $fb, $04, $97, $09, $24, $7f, $25, $99, $01
    db $00, $01, $e3, $01, $eb, $14, $80, $46, $11, $ba, $c1, $3e, $f3, $e1, $f1, $fb
    db $00, $03, $f0, $03, $f2, $06, $ed, $08, $f7, $01, $83, $7c, $83, $02, $ff, $00
    db $20, $c0, $01, $45, $0c, $70, $11, $29, $d6, $be, $ae, $00, $84, $d0, $01, $40
    db $09, $80, $11, $a0, $fe, $fe, $00, $87, $37, $00, $8f, $2f, $2f, $8f, $6f, $0f
    db $40, $1f, $00, $40, $1f, $c0, $1f, $80, $3f, $01, $fc, $f0, $64, $00, $18, $00
    db $02, $08, $a4, $09, $7f, $00, $91, $3f, $14, $80, $3f, $bf, $04, $00, $df, $22
    db $00, $5f, $1f, $12, $00, $00, $02, $ae, $21, $e4, $1b, $1a, $0a, $83, $01, $81
    db $02, $81, $83, $81, $3e, $c1, $d0, $01, $6a, $9f, $c8, $39, $d4, $11, $fc, $e4
    db $09, $fe, $5a, $02, $fd, $aa, $54, $00, $fd, $60, $02, $fa, $c4, $00, $80, $4e
    db $00, $7f, $e0, $50, $02, $04, $08, $9c, $8a, $60, $0f, $a0, $8f, $a0, $00, $8f
    db $b0, $87, $d0, $c0, $1f, $c0, $00, $68, $c0, $a5, $09, $2a, $02, $05, $22, $2a
    db $00, $00, $42, $85, $d1, $02, $4d, $b2, $de, $de, $36, $2a, $40, $a0, $0a, $10
    db $50, $00, $f3, $46, $2a, $06, $f0, $05, $f1, $00, $05, $f1, $0d, $e1, $08, $03
    db $f8, $03, $60, $03, $66, $2a, $05, $43

    nop                                           ; $4dcd: $00
    jr nz, jr_0af_4dd0                            ; $4dce: $20 $00

jr_0af_4dd0:
    jr nz, jr_0af_4dd2                            ; $4dd0: $20 $00

jr_0af_4dd2:
    jr nz, @+$47                                  ; $4dd2: $20 $45

    nop                                           ; $4dd4: $00
    nop                                           ; $4dd5: $00
    jr nz, jr_0af_4dd8                            ; $4dd6: $20 $00

jr_0af_4dd8:
    jr nz, jr_0af_4dda                            ; $4dd8: $20 $00

jr_0af_4dda:
    jr nz, jr_0af_4e21                            ; $4dda: $20 $45

    nop                                           ; $4ddc: $00
    nop                                           ; $4ddd: $00
    jr nz, jr_0af_4de0                            ; $4dde: $20 $00

jr_0af_4de0:
    jr nz, jr_0af_4de2                            ; $4de0: $20 $00

jr_0af_4de2:
    jr nz, @+$47                                  ; $4de2: $20 $45

    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    nop                                           ; $4de6: $00
    rst $38                                       ; $4de7: $ff
    ld a, a                                       ; $4de8: $7f
    nop                                           ; $4de9: $00
    jr nz, jr_0af_4dec                            ; $4dea: $20 $00

jr_0af_4dec:
    jr nz, jr_0af_4dee                            ; $4dec: $20 $00

jr_0af_4dee:
    jr nz, @+$01                                  ; $4dee: $20 $ff

    ld a, a                                       ; $4df0: $7f
    nop                                           ; $4df1: $00
    jr nz, jr_0af_4df4                            ; $4df2: $20 $00

jr_0af_4df4:
    jr nz, jr_0af_4df6                            ; $4df4: $20 $00

jr_0af_4df6:
    jr nz, @+$01                                  ; $4df6: $20 $ff

    ld a, a                                       ; $4df8: $7f
    nop                                           ; $4df9: $00
    jr nz, jr_0af_4dfc                            ; $4dfa: $20 $00

jr_0af_4dfc:
    jr nz, jr_0af_4dfe                            ; $4dfc: $20 $00

jr_0af_4dfe:
    jr nz, @+$01                                  ; $4dfe: $20 $ff

    ld a, a                                       ; $4e00: $7f
    nop                                           ; $4e01: $00
    jr nz, jr_0af_4e04                            ; $4e02: $20 $00

jr_0af_4e04:
    jr nz, jr_0af_4e06                            ; $4e04: $20 $00

jr_0af_4e06:
    jr nz, jr_0af_4e08                            ; $4e06: $20 $00

jr_0af_4e08:
    jr nz, jr_0af_4e0a                            ; $4e08: $20 $00

jr_0af_4e0a:
    jr nz, jr_0af_4e51                            ; $4e0a: $20 $45

    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    jr nz, jr_0af_4e10                            ; $4e0e: $20 $00

jr_0af_4e10:
    jr nz, jr_0af_4e12                            ; $4e10: $20 $00

jr_0af_4e12:
    jr nz, jr_0af_4e59                            ; $4e12: $20 $45

    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    jr nz, jr_0af_4e18                            ; $4e16: $20 $00

jr_0af_4e18:
    jr nz, jr_0af_4e1a                            ; $4e18: $20 $00

jr_0af_4e1a:
    jr nz, jr_0af_4e61                            ; $4e1a: $20 $45

    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    rst $38                                       ; $4e1f: $ff
    ld a, a                                       ; $4e20: $7f

jr_0af_4e21:
    nop                                           ; $4e21: $00
    jr nz, jr_0af_4e24                            ; $4e22: $20 $00

jr_0af_4e24:
    jr nz, jr_0af_4e26                            ; $4e24: $20 $00

jr_0af_4e26:
    nop                                           ; $4e26: $00
    nop                                           ; $4e27: $00
    jr nz, jr_0af_4e2a                            ; $4e28: $20 $00

jr_0af_4e2a:
    jr nz, jr_0af_4e2c                            ; $4e2a: $20 $00

jr_0af_4e2c:
    jr nz, jr_0af_4e2e                            ; $4e2c: $20 $00

jr_0af_4e2e:
    jr nz, jr_0af_4e30                            ; $4e2e: $20 $00

jr_0af_4e30:
    jr nz, jr_0af_4e32                            ; $4e30: $20 $00

jr_0af_4e32:
    jr nz, jr_0af_4e34                            ; $4e32: $20 $00

jr_0af_4e34:
    jr nz, jr_0af_4e36                            ; $4e34: $20 $00

jr_0af_4e36:
    jr nz, jr_0af_4e38                            ; $4e36: $20 $00

jr_0af_4e38:
    jr nz, jr_0af_4e3a                            ; $4e38: $20 $00

jr_0af_4e3a:
    jr nz, jr_0af_4e3c                            ; $4e3a: $20 $00

jr_0af_4e3c:
    jr nz, jr_0af_4e3e                            ; $4e3c: $20 $00

jr_0af_4e3e:
    jr nz, jr_0af_4e40                            ; $4e3e: $20 $00

jr_0af_4e40:
    jr nz, jr_0af_4e42                            ; $4e40: $20 $00

jr_0af_4e42:
    jr nz, jr_0af_4e89                            ; $4e42: $20 $45

    nop                                           ; $4e44: $00
    nop                                           ; $4e45: $00
    jr nz, jr_0af_4e48                            ; $4e46: $20 $00

jr_0af_4e48:
    jr nz, jr_0af_4e4a                            ; $4e48: $20 $00

jr_0af_4e4a:
    jr nz, jr_0af_4e91                            ; $4e4a: $20 $45

jr_0af_4e4c:
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    nop                                           ; $4e4e: $00
    rst $38                                       ; $4e4f: $ff
    ld a, a                                       ; $4e50: $7f

jr_0af_4e51:
    nop                                           ; $4e51: $00
    jr nz, jr_0af_4e99                            ; $4e52: $20 $45

jr_0af_4e54:
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    nop                                           ; $4e56: $00
    adc [hl]                                      ; $4e57: $8e
    ld [hl], b                                    ; $4e58: $70

jr_0af_4e59:
    rst $38                                       ; $4e59: $ff
    ld a, a                                       ; $4e5a: $7f
    add sp, $00                                   ; $4e5b: $e8 $00
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    rst $38                                       ; $4e5f: $ff
    ld a, a                                       ; $4e60: $7f

jr_0af_4e61:
    nop                                           ; $4e61: $00
    jr nz, jr_0af_4e4c                            ; $4e62: $20 $e8

    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    jr nz, @+$01                                  ; $4e66: $20 $ff

    ld a, a                                       ; $4e68: $7f
    nop                                           ; $4e69: $00
    jr nz, jr_0af_4e54                            ; $4e6a: $20 $e8

    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    jr nz, @+$01                                  ; $4e6e: $20 $ff

    ld a, a                                       ; $4e70: $7f
    nop                                           ; $4e71: $00
    jr nz, @-$16                                  ; $4e72: $20 $e8

    nop                                           ; $4e74: $00
    nop                                           ; $4e75: $00
    jr nz, @+$01                                  ; $4e76: $20 $ff

    ld a, a                                       ; $4e78: $7f
    nop                                           ; $4e79: $00
    jr nz, jr_0af_4ec1                            ; $4e7a: $20 $45

    nop                                           ; $4e7c: $00

jr_0af_4e7d:
    nop                                           ; $4e7d: $00
    jr nz, @+$01                                  ; $4e7e: $20 $ff

    ld a, a                                       ; $4e80: $7f
    nop                                           ; $4e81: $00
    jr nz, jr_0af_4ec9                            ; $4e82: $20 $45

    nop                                           ; $4e84: $00

jr_0af_4e85:
    nop                                           ; $4e85: $00
    nop                                           ; $4e86: $00
    rst $38                                       ; $4e87: $ff
    ld a, a                                       ; $4e88: $7f

jr_0af_4e89:
    nop                                           ; $4e89: $00
    jr nz, jr_0af_4ed1                            ; $4e8a: $20 $45

    nop                                           ; $4e8c: $00
    adc [hl]                                      ; $4e8d: $8e
    ld [hl], b                                    ; $4e8e: $70
    add sp, $00                                   ; $4e8f: $e8 $00

jr_0af_4e91:
    ld e, c                                       ; $4e91: $59
    ld b, a                                       ; $4e92: $47
    rst $28                                       ; $4e93: $ef
    dec e                                         ; $4e94: $1d
    nop                                           ; $4e95: $00
    nop                                           ; $4e96: $00
    rst $38                                       ; $4e97: $ff
    ld a, a                                       ; $4e98: $7f

jr_0af_4e99:
    adc [hl]                                      ; $4e99: $8e
    ld [hl], b                                    ; $4e9a: $70
    nop                                           ; $4e9b: $00
    jr nz, jr_0af_4e9e                            ; $4e9c: $20 $00

jr_0af_4e9e:
    jr nz, @+$01                                  ; $4e9e: $20 $ff

    ld a, a                                       ; $4ea0: $7f
    adc [hl]                                      ; $4ea1: $8e
    ld [hl], b                                    ; $4ea2: $70
    nop                                           ; $4ea3: $00
    jr nz, jr_0af_4ea6                            ; $4ea4: $20 $00

jr_0af_4ea6:
    jr nz, @+$01                                  ; $4ea6: $20 $ff

    ld a, a                                       ; $4ea8: $7f
    adc [hl]                                      ; $4ea9: $8e
    ld [hl], b                                    ; $4eaa: $70
    nop                                           ; $4eab: $00
    jr nz, jr_0af_4eae                            ; $4eac: $20 $00

jr_0af_4eae:
    jr nz, jr_0af_4e7d                            ; $4eae: $20 $cd

    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    jr nz, jr_0af_4ef9                            ; $4eb2: $20 $45

    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    jr nz, jr_0af_4e85                            ; $4eb6: $20 $cd

    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    jr nz, jr_0af_4f01                            ; $4eba: $20 $45

    nop                                           ; $4ebc: $00
    ld [bc], a                                    ; $4ebd: $02
    db $10                                        ; $4ebe: $10
    adc [hl]                                      ; $4ebf: $8e
    ld [hl], b                                    ; $4ec0: $70

jr_0af_4ec1:
    rst $38                                       ; $4ec1: $ff
    ld a, a                                       ; $4ec2: $7f
    sub h                                         ; $4ec3: $94
    ld d, d                                       ; $4ec4: $52
    add sp, $00                                   ; $4ec5: $e8 $00
    push de                                       ; $4ec7: $d5
    ld a, [hl-]                                   ; $4ec8: $3a

jr_0af_4ec9:
    adc [hl]                                      ; $4ec9: $8e
    ld [hl], b                                    ; $4eca: $70
    sbc h                                         ; $4ecb: $9c
    ld c, a                                       ; $4ecc: $4f
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    adc [hl]                                      ; $4ecf: $8e
    ld [hl], b                                    ; $4ed0: $70

jr_0af_4ed1:
    ld a, c                                       ; $4ed1: $79
    ld c, [hl]                                    ; $4ed2: $4e
    inc b                                         ; $4ed3: $04
    stop                                          ; $4ed4: $10 $00
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    jr nz, @+$7b                                  ; $4ed8: $20 $79

    ld c, [hl]                                    ; $4eda: $4e
    inc b                                         ; $4edb: $04
    stop                                          ; $4edc: $10 $00
    jr nz, jr_0af_4ee0                            ; $4ede: $20 $00

jr_0af_4ee0:
    jr nz, @+$7b                                  ; $4ee0: $20 $79

    ld c, [hl]                                    ; $4ee2: $4e
    inc b                                         ; $4ee3: $04
    stop                                          ; $4ee4: $10 $00
    jr nz, jr_0af_4f23                            ; $4ee6: $20 $3b

    ccf                                           ; $4ee8: $3f
    call $de00                                    ; $4ee9: $cd $00 $de
    ld [hl+], a                                   ; $4eec: $22
    nop                                           ; $4eed: $00
    jr jr_0af_4f0b                                ; $4eee: $18 $1b

    scf                                           ; $4ef0: $37
    call $ff00                                    ; $4ef1: $cd $00 $ff
    ld a, a                                       ; $4ef4: $7f
    dec b                                         ; $4ef5: $05
    inc c                                         ; $4ef6: $0c
    adc [hl]                                      ; $4ef7: $8e
    ld [hl], b                                    ; $4ef8: $70

jr_0af_4ef9:
    rst $38                                       ; $4ef9: $ff
    ld a, a                                       ; $4efa: $7f
    dec sp                                        ; $4efb: $3b
    ld b, [hl]                                    ; $4efc: $46
    xor b                                         ; $4efd: $a8
    ld [$3693], sp                                ; $4efe: $08 $93 $36

jr_0af_4f01:
    adc [hl]                                      ; $4f01: $8e
    ld [hl], b                                    ; $4f02: $70
    jr c, jr_0af_4f4c                             ; $4f03: $38 $47

    ld h, $0c                                     ; $4f05: $26 $0c
    adc [hl]                                      ; $4f07: $8e
    ld [hl], b                                    ; $4f08: $70
    ld e, e                                       ; $4f09: $5b
    ld c, d                                       ; $4f0a: $4a

jr_0af_4f0b:
    ld [hl], c                                    ; $4f0b: $71
    dec l                                         ; $4f0c: $2d
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    ld d, d                                       ; $4f0f: $52
    ld c, d                                       ; $4f10: $4a
    nop                                           ; $4f11: $00
    jr nz, jr_0af_4f1a                            ; $4f12: $20 $06

    stop                                          ; $4f14: $10 $00
    jr nz, jr_0af_4f6a                            ; $4f16: $20 $52

jr_0af_4f18:
    ld c, d                                       ; $4f18: $4a
    nop                                           ; $4f19: $00

jr_0af_4f1a:
    jr nz, jr_0af_4f22                            ; $4f1a: $20 $06

    stop                                          ; $4f1c: $10 $00
    jr nz, jr_0af_4f7e                            ; $4f1e: $20 $5e

    ld d, $cd                                     ; $4f20: $16 $cd

jr_0af_4f22:
    nop                                           ; $4f22: $00

jr_0af_4f23:
    rra                                           ; $4f23: $1f
    rra                                           ; $4f24: $1f
    nop                                           ; $4f25: $00
    ld [$269d], sp                                ; $4f26: $08 $9d $26
    rst $38                                       ; $4f29: $ff
    ld a, a                                       ; $4f2a: $7f
    call Call_000_0400                            ; $4f2b: $cd $00 $04
    ld [$708e], sp                                ; $4f2e: $08 $8e $70
    sub h                                         ; $4f31: $94
    ld sp, $463b                                  ; $4f32: $31 $3b $46
    dec h                                         ; $4f35: $25
    inc c                                         ; $4f36: $0c
    ld sp, $5c2e                                  ; $4f37: $31 $2e $5c
    ld c, d                                       ; $4f3a: $4a
    add hl, hl                                    ; $4f3b: $29
    ld de, $1026                                  ; $4f3c: $11 $26 $10
    or h                                          ; $4f3f: $b4
    dec [hl]                                      ; $4f40: $35
    cpl                                           ; $4f41: $2f
    dec h                                         ; $4f42: $25
    ld e, h                                       ; $4f43: $5c
    ld c, d                                       ; $4f44: $4a
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    rst $38                                       ; $4f47: $ff
    ld a, a                                       ; $4f48: $7f
    nop                                           ; $4f49: $00
    jr nz, jr_0af_4f52                            ; $4f4a: $20 $06

jr_0af_4f4c:
    stop                                          ; $4f4c: $10 $00
    jr nz, @+$01                                  ; $4f4e: $20 $ff

    ld a, a                                       ; $4f50: $7f
    nop                                           ; $4f51: $00

jr_0af_4f52:
    jr nz, @+$08                                  ; $4f52: $20 $06

    stop                                          ; $4f54: $10 $00
    jr nz, jr_0af_4fcd                            ; $4f56: $20 $75

    add hl, bc                                    ; $4f58: $09
    call $df00                                    ; $4f59: $cd $00 $df
    ld a, [de]                                    ; $4f5c: $1a
    xor e                                         ; $4f5d: $ab
    nop                                           ; $4f5e: $00
    adc [hl]                                      ; $4f5f: $8e
    ld [hl], b                                    ; $4f60: $70
    cp l                                          ; $4f61: $bd
    ld a, [hl+]                                   ; $4f62: $2a
    rst $38                                       ; $4f63: $ff
    ld a, a                                       ; $4f64: $7f
    ld b, [hl]                                    ; $4f65: $46
    db $10                                        ; $4f66: $10
    adc [hl]                                      ; $4f67: $8e
    ld [hl], b                                    ; $4f68: $70
    sub e                                         ; $4f69: $93

jr_0af_4f6a:
    ld sp, $463a                                  ; $4f6a: $31 $3a $46
    add h                                         ; $4f6d: $84
    nop                                           ; $4f6e: $00
    ld e, h                                       ; $4f6f: $5c
    ld c, d                                       ; $4f70: $4a
    jr z, @+$13                                   ; $4f71: $28 $11

    ld b, $10                                     ; $4f73: $06 $10
    ld b, $10                                     ; $4f75: $06 $10
    ld d, c                                       ; $4f77: $51
    add hl, hl                                    ; $4f78: $29
    sub $39                                       ; $4f79: $d6 $39
    jp z, Jump_000_001c                           ; $4f7b: $ca $1c $00

jr_0af_4f7e:
    nop                                           ; $4f7e: $00
    rst $38                                       ; $4f7f: $ff
    ld a, a                                       ; $4f80: $7f
    adc [hl]                                      ; $4f81: $8e
    ld [hl], b                                    ; $4f82: $70
    ld b, $10                                     ; $4f83: $06 $10
    nop                                           ; $4f85: $00
    nop                                           ; $4f86: $00
    nop                                           ; $4f87: $00
    jr nz, jr_0af_4f18                            ; $4f88: $20 $8e

    ld [hl], b                                    ; $4f8a: $70
    ld b, $10                                     ; $4f8b: $06 $10
    nop                                           ; $4f8d: $00
    jr nz, jr_0af_4faf                            ; $4f8e: $20 $1f

    rra                                           ; $4f90: $1f
    ld h, [hl]                                    ; $4f91: $66
    inc b                                         ; $4f92: $04
    call z, Call_0af_4500                         ; $4f93: $cc $00 $45
    ld [$708e], sp                                ; $4f96: $08 $8e $70
    dec sp                                        ; $4f99: $3b
    ccf                                           ; $4f9a: $3f
    adc $00                                       ; $4f9b: $ce $00
    ld b, a                                       ; $4f9d: $47
    inc d                                         ; $4f9e: $14
    adc [hl]                                      ; $4f9f: $8e
    ld [hl], b                                    ; $4fa0: $70
    ld d, c                                       ; $4fa1: $51
    add hl, hl                                    ; $4fa2: $29
    sub h                                         ; $4fa3: $94
    ld sp, $0064                                  ; $4fa4: $31 $64 $00
    ld a, [hl-]                                   ; $4fa7: $3a
    ld b, [hl]                                    ; $4fa8: $46
    ret                                           ; $4fa9: $c9


    jr jr_0af_4fb2                                ; $4faa: $18 $06

    db $10                                        ; $4fac: $10
    dec b                                         ; $4fad: $05
    inc c                                         ; $4fae: $0c

jr_0af_4faf:
    ld [hl], c                                    ; $4faf: $71
    add hl, hl                                    ; $4fb0: $29
    xor b                                         ; $4fb1: $a8

jr_0af_4fb2:
    jr jr_0af_4fbf                                ; $4fb2: $18 $0b

    nop                                           ; $4fb4: $00
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    adc [hl]                                      ; $4fb7: $8e
    ld [hl], b                                    ; $4fb8: $70
    rst $38                                       ; $4fb9: $ff
    ld a, a                                       ; $4fba: $7f
    dec bc                                        ; $4fbb: $0b
    nop                                           ; $4fbc: $00
    nop                                           ; $4fbd: $00
    nop                                           ; $4fbe: $00

jr_0af_4fbf:
    rst $38                                       ; $4fbf: $ff
    ld a, a                                       ; $4fc0: $7f
    nop                                           ; $4fc1: $00
    jr nz, jr_0af_4fcf                            ; $4fc2: $20 $0b

    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    inc e                                         ; $4fc6: $1c
    xor $00                                       ; $4fc7: $ee $00
    ld hl, sp+$0d                                 ; $4fc9: $f8 $0d
    rst $18                                       ; $4fcb: $df
    ld a, [de]                                    ; $4fcc: $1a

jr_0af_4fcd:
    inc bc                                        ; $4fcd: $03
    inc d                                         ; $4fce: $14

jr_0af_4fcf:
    adc [hl]                                      ; $4fcf: $8e
    ld [hl], b                                    ; $4fd0: $70
    call $9200                                    ; $4fd1: $cd $00 $92
    ld de, $0807                                  ; $4fd4: $11 $07 $08
    adc [hl]                                      ; $4fd7: $8e
    ld [hl], b                                    ; $4fd8: $70
    ld [hl], c                                    ; $4fd9: $71
    dec l                                         ; $4fda: $2d
    xor b                                         ; $4fdb: $a8
    jr @+$07                                      ; $4fdc: $18 $05

    ld [$3193], sp                                ; $4fde: $08 $93 $31
    xor c                                         ; $4fe1: $a9
    jr @+$3e                                      ; $4fe2: $18 $3c

    ld e, $25                                     ; $4fe4: $1e $25
    inc b                                         ; $4fe6: $04
    ld hl, sp+$21                                 ; $4fe7: $f8 $21
    db $fd                                        ; $4fe9: $fd
    ld a, $a8                                     ; $4fea: $3e $a8
    jr @+$2d                                      ; $4fec: $18 $2b

    inc b                                         ; $4fee: $04
    adc [hl]                                      ; $4fef: $8e
    ld [hl], b                                    ; $4ff0: $70
    call nc, $fa00                                ; $4ff1: $d4 $00 $fa
    dec d                                         ; $4ff4: $15
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    rst $38                                       ; $4ff7: $ff
    ld a, a                                       ; $4ff8: $7f
    adc [hl]                                      ; $4ff9: $8e
    ld [hl], b                                    ; $4ffa: $70
    nop                                           ; $4ffb: $00
    jr nz, jr_0af_4ffe                            ; $4ffc: $20 $00

jr_0af_4ffe:
    inc c                                         ; $4ffe: $0c
    ld e, h                                       ; $4fff: $5c
    ld d, $ff                                     ; $5000: $16 $ff
    ld a, a                                       ; $5002: $7f
    call $cd00                                    ; $5003: $cd $00 $cd
    nop                                           ; $5006: $00
    adc [hl]                                      ; $5007: $8e
    ld [hl], b                                    ; $5008: $70
    rst $38                                       ; $5009: $ff
    ld a, a                                       ; $500a: $7f
    call Call_0af_4600                            ; $500b: $cd $00 $46
    db $10                                        ; $500e: $10
    adc [hl]                                      ; $500f: $8e
    ld [hl], b                                    ; $5010: $70
    ld e, h                                       ; $5011: $5c
    ld [hl+], a                                   ; $5012: $22
    ld c, l                                       ; $5013: $4d
    nop                                           ; $5014: $00
    dec bc                                        ; $5015: $0b
    nop                                           ; $5016: $00
    inc a                                         ; $5017: $3c
    ld e, $aa                                     ; $5018: $1e $aa
    inc e                                         ; $501a: $1c
    db $fd                                        ; $501b: $fd
    ld b, d                                       ; $501c: $42
    ld b, a                                       ; $501d: $47
    ld [$1e3b], sp                                ; $501e: $08 $3b $1e
    ld [de], a                                    ; $5021: $12
    ld bc, $535f                                  ; $5022: $01 $5f $53
    dec bc                                        ; $5025: $0b
    nop                                           ; $5026: $00
    adc [hl]                                      ; $5027: $8e
    ld [hl], b                                    ; $5028: $70
    ld e, a                                       ; $5029: $5f
    ld d, e                                       ; $502a: $53
    db $d3                                        ; $502b: $d3
    inc b                                         ; $502c: $04
    nop                                           ; $502d: $00
    nop                                           ; $502e: $00
    adc [hl]                                      ; $502f: $8e
    ld [hl], b                                    ; $5030: $70
    rst $38                                       ; $5031: $ff
    ld a, a                                       ; $5032: $7f
    nop                                           ; $5033: $00
    jr nz, jr_0af_509d                            ; $5034: $20 $67

    nop                                           ; $5036: $00
    db $fd                                        ; $5037: $fd
    ld h, $8e                                     ; $5038: $26 $8e
    ld [hl], b                                    ; $503a: $70
    rst $38                                       ; $503b: $ff
    ld a, a                                       ; $503c: $7f
    ld h, a                                       ; $503d: $67
    inc c                                         ; $503e: $0c
    adc [hl]                                      ; $503f: $8e
    ld [hl], b                                    ; $5040: $70
    dec sp                                        ; $5041: $3b
    ccf                                           ; $5042: $3f
    xor h                                         ; $5043: $ac
    nop                                           ; $5044: $00
    dec hl                                        ; $5045: $2b
    nop                                           ; $5046: $00
    inc a                                         ; $5047: $3c
    ld e, $f4                                     ; $5048: $1e $f4
    nop                                           ; $504a: $00
    cp $46                                        ; $504b: $fe $46
    adc a                                         ; $504d: $8f
    nop                                           ; $504e: $00
    ld a, $4b                                     ; $504f: $3e $4b
    sub a                                         ; $5051: $97
    add hl, de                                    ; $5052: $19
    rst $38                                       ; $5053: $ff
    ld a, a                                       ; $5054: $7f
    ld c, h                                       ; $5055: $4c
    nop                                           ; $5056: $00
    sub l                                         ; $5057: $95
    ld de, $4b1e                                  ; $5058: $11 $1e $4b
    ld a, [hl-]                                   ; $505b: $3a
    ld [hl+], a                                   ; $505c: $22
    dec bc                                        ; $505d: $0b
    nop                                           ; $505e: $00
    adc [hl]                                      ; $505f: $8e
    ld [hl], b                                    ; $5060: $70
    ld a, [$d319]                                 ; $5061: $fa $19 $d3
    inc b                                         ; $5064: $04
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    adc [hl]                                      ; $5067: $8e
    ld [hl], b                                    ; $5068: $70
    rst $38                                       ; $5069: $ff
    ld a, a                                       ; $506a: $7f
    nop                                           ; $506b: $00
    jr nz, jr_0af_506e                            ; $506c: $20 $00

jr_0af_506e:
    ld [$708e], sp                                ; $506e: $08 $8e $70
    rst $38                                       ; $5071: $ff
    ld a, a                                       ; $5072: $7f
    xor $00                                       ; $5073: $ee $00
    add hl, hl                                    ; $5075: $29
    inc b                                         ; $5076: $04
    adc [hl]                                      ; $5077: $8e
    ld [hl], b                                    ; $5078: $70
    inc e                                         ; $5079: $1c
    dec hl                                        ; $507a: $2b
    db $ed                                        ; $507b: $ed
    inc b                                         ; $507c: $04
    dec bc                                        ; $507d: $0b
    nop                                           ; $507e: $00
    sub e                                         ; $507f: $93
    dec e                                         ; $5080: $1d
    ld [de], a                                    ; $5081: $12
    ld bc, $2e59                                  ; $5082: $01 $59 $2e
    ld b, h                                       ; $5085: $44
    inc b                                         ; $5086: $04
    ld e, $4f                                     ; $5087: $1e $4f
    cp c                                          ; $5089: $b9

jr_0af_508a:
    dec c                                         ; $508a: $0d
    rst $18                                       ; $508b: $df
    ld a, e                                       ; $508c: $7b
    ld c, e                                       ; $508d: $4b
    nop                                           ; $508e: $00
    db $fd                                        ; $508f: $fd
    ld b, [hl]                                    ; $5090: $46
    ld a, c                                       ; $5091: $79
    ld a, e                                       ; $5092: $7b
    pop de                                        ; $5093: $d1
    nop                                           ; $5094: $00
    sub b                                         ; $5095: $90
    nop                                           ; $5096: $00
    adc [hl]                                      ; $5097: $8e
    ld [hl], b                                    ; $5098: $70
    dec de                                        ; $5099: $1b
    ld a, [de]                                    ; $509a: $1a
    cp $46                                        ; $509b: $fe $46

jr_0af_509d:
    nop                                           ; $509d: $00
    nop                                           ; $509e: $00
    adc [hl]                                      ; $509f: $8e
    ld [hl], b                                    ; $50a0: $70
    rst $38                                       ; $50a1: $ff
    ld a, a                                       ; $50a2: $7f
    nop                                           ; $50a3: $00
    jr nz, jr_0af_50a6                            ; $50a4: $20 $00

jr_0af_50a6:
    nop                                           ; $50a6: $00
    adc [hl]                                      ; $50a7: $8e
    ld [hl], b                                    ; $50a8: $70
    rst $38                                       ; $50a9: $ff
    ld a, a                                       ; $50aa: $7f
    nop                                           ; $50ab: $00
    jr nz, jr_0af_50d7                            ; $50ac: $20 $29

    inc b                                         ; $50ae: $04
    adc [hl]                                      ; $50af: $8e
    ld [hl], b                                    ; $50b0: $70
    ld hl, sp+$19                                 ; $50b1: $f8 $19
    call Call_0af_6300                            ; $50b3: $cd $00 $63

Call_0af_50b6:
    nop                                           ; $50b6: $00
    ld a, c                                       ; $50b7: $79
    ld a, e                                       ; $50b8: $7b
    ld c, l                                       ; $50b9: $4d
    nop                                           ; $50ba: $00
    and e                                         ; $50bb: $a3
    inc l                                         ; $50bc: $2c
    xor e                                         ; $50bd: $ab
    nop                                           ; $50be: $00
    ld a, c                                       ; $50bf: $79
    ld [hl], $fe                                  ; $50c0: $36 $fe
    ld b, [hl]                                    ; $50c2: $46
    dec d                                         ; $50c3: $15
    nop                                           ; $50c4: $00

jr_0af_50c5:
    ld h, a                                       ; $50c5: $67
    nop                                           ; $50c6: $00
    inc de                                        ; $50c7: $13
    ld bc, $2ca3                                  ; $50c8: $01 $a3 $2c
    add hl, sp                                    ; $50cb: $39
    ld h, $6c                                     ; $50cc: $26 $6c
    nop                                           ; $50ce: $00
    adc [hl]                                      ; $50cf: $8e
    ld [hl], b                                    ; $50d0: $70
    ld e, a                                       ; $50d1: $5f
    ld d, e                                       ; $50d2: $53
    inc a                                         ; $50d3: $3c
    ld e, $00                                     ; $50d4: $1e $00
    nop                                           ; $50d6: $00

jr_0af_50d7:
    adc [hl]                                      ; $50d7: $8e
    ld [hl], b                                    ; $50d8: $70
    rst $38                                       ; $50d9: $ff
    ld a, a                                       ; $50da: $7f
    nop                                           ; $50db: $00
    jr nz, jr_0af_50de                            ; $50dc: $20 $00

jr_0af_50de:
    nop                                           ; $50de: $00
    adc [hl]                                      ; $50df: $8e
    ld [hl], b                                    ; $50e0: $70
    rst $38                                       ; $50e1: $ff
    ld a, a                                       ; $50e2: $7f
    nop                                           ; $50e3: $00
    jr nz, jr_0af_508a                            ; $50e4: $20 $a4

    nop                                           ; $50e6: $00
    adc [hl]                                      ; $50e7: $8e
    ld [hl], b                                    ; $50e8: $70
    sub [hl]                                      ; $50e9: $96
    dec c                                         ; $50ea: $0d
    call $0700                                    ; $50eb: $cd $00 $07
    add hl, bc                                    ; $50ee: $09
    or e                                          ; $50ef: $b3
    ld a, [hl-]                                   ; $50f0: $3a
    inc a                                         ; $50f1: $3c
    ld e, $0b                                     ; $50f2: $1e $0b
    nop                                           ; $50f4: $00
    ld l, e                                       ; $50f5: $6b
    nop                                           ; $50f6: $00
    rst $30                                       ; $50f7: $f7
    dec l                                         ; $50f8: $2d
    ld e, $4b                                     ; $50f9: $1e $4b
    dec d                                         ; $50fb: $15
    nop                                           ; $50fc: $00

jr_0af_50fd:
    ld l, [hl]                                    ; $50fd: $6e
    nop                                           ; $50fe: $00
    ld [hl], $47                                  ; $50ff: $36 $47
    add hl, hl                                    ; $5101: $29
    ld de, $1e3c                                  ; $5102: $11 $3c $1e
    and l                                         ; $5105: $a5
    nop                                           ; $5106: $00
    adc [hl]                                      ; $5107: $8e
    ld [hl], b                                    ; $5108: $70
    jr nc, jr_0af_5135                            ; $5109: $30 $2a

    dec bc                                        ; $510b: $0b
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    nop                                           ; $510e: $00
    adc [hl]                                      ; $510f: $8e
    ld [hl], b                                    ; $5110: $70
    rst $38                                       ; $5111: $ff
    ld a, a                                       ; $5112: $7f
    nop                                           ; $5113: $00
    jr nz, jr_0af_5116                            ; $5114: $20 $00

jr_0af_5116:
    nop                                           ; $5116: $00
    adc [hl]                                      ; $5117: $8e
    ld [hl], b                                    ; $5118: $70
    rst $38                                       ; $5119: $ff
    ld a, a                                       ; $511a: $7f
    nop                                           ; $511b: $00
    jr nz, jr_0af_50c5                            ; $511c: $20 $a7

    nop                                           ; $511e: $00
    adc [hl]                                      ; $511f: $8e
    ld [hl], b                                    ; $5120: $70
    push de                                       ; $5121: $d5
    add hl, de                                    ; $5122: $19
    ld d, $47                                     ; $5123: $16 $47
    dec bc                                        ; $5125: $0b
    nop                                           ; $5126: $00
    jr nc, jr_0af_5153                            ; $5127: $30 $2a

    inc a                                         ; $5129: $3c
    ld e, $d5                                     ; $512a: $1e $d5
    ld a, $06                                     ; $512c: $3e $06
    db $10                                        ; $512e: $10
    db $10                                        ; $512f: $10
    add hl, hl                                    ; $5130: $29
    ld [hl], $32                                  ; $5131: $36 $32
    xor e                                         ; $5133: $ab
    nop                                           ; $5134: $00

jr_0af_5135:
    jr z, @+$06                                   ; $5135: $28 $04

    ld [hl], d                                    ; $5137: $72
    ld [hl], $f1                                  ; $5138: $36 $f1
    jr @+$38                                      ; $513a: $18 $36

    ld b, a                                       ; $513c: $47
    and l                                         ; $513d: $a5
    nop                                           ; $513e: $00
    adc [hl]                                      ; $513f: $8e
    ld [hl], b                                    ; $5140: $70
    or h                                          ; $5141: $b4
    ld [hl], $36                                  ; $5142: $36 $36
    ld c, e                                       ; $5144: $4b
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    adc [hl]                                      ; $5147: $8e
    ld [hl], b                                    ; $5148: $70
    rst $38                                       ; $5149: $ff
    ld a, a                                       ; $514a: $7f
    nop                                           ; $514b: $00
    jr nz, jr_0af_514e                            ; $514c: $20 $00

jr_0af_514e:
    nop                                           ; $514e: $00
    rst $38                                       ; $514f: $ff
    ld a, a                                       ; $5150: $7f
    inc l                                         ; $5151: $2c
    ld h, c                                       ; $5152: $61

jr_0af_5153:
    nop                                           ; $5153: $00
    jr nz, jr_0af_50fd                            ; $5154: $20 $a7

    inc b                                         ; $5156: $04
    ld d, b                                       ; $5157: $50
    ld b, [hl]                                    ; $5158: $46
    or a                                          ; $5159: $b7
    ld de, $7b13                                  ; $515a: $11 $13 $7b
    adc b                                         ; $515d: $88
    nop                                           ; $515e: $00
    ld [hl], e                                    ; $515f: $73
    ld [hl-], a                                   ; $5160: $32
    ld l, e                                       ; $5161: $6b
    add hl, de                                    ; $5162: $19
    scf                                           ; $5163: $37
    ld c, e                                       ; $5164: $4b
    ld b, a                                       ; $5165: $47
    ld [$3257], sp                                ; $5166: $08 $57 $32
    db $10                                        ; $5169: $10
    add hl, hl                                    ; $516a: $29
    ld e, $4b                                     ; $516b: $1e $4b
    ld h, a                                       ; $516d: $67
    inc b                                         ; $516e: $04
    jr nc, jr_0af_519b                            ; $516f: $30 $2a

    or $42                                        ; $5171: $f6 $42
    dec l                                         ; $5173: $2d
    dec e                                         ; $5174: $1d
    push bc                                       ; $5175: $c5
    inc b                                         ; $5176: $04
    inc de                                        ; $5177: $13
    ld a, e                                       ; $5178: $7b
    adc $21                                       ; $5179: $ce $21
    ld d, $43                                     ; $517b: $16 $43
    nop                                           ; $517d: $00
    nop                                           ; $517e: $00
    inc de                                        ; $517f: $13
    ld a, e                                       ; $5180: $7b
    nop                                           ; $5181: $00
    jr nz, @+$01                                  ; $5182: $20 $ff

    ld a, a                                       ; $5184: $7f
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    rst $38                                       ; $5187: $ff
    ld a, a                                       ; $5188: $7f
    ld b, a                                       ; $5189: $47
    ld sp, $2000                                  ; $518a: $31 $00 $20
    ld h, a                                       ; $518d: $67
    nop                                           ; $518e: $00
    xor d                                         ; $518f: $aa
    dec [hl]                                      ; $5190: $35
    jp c, $b411                                   ; $5191: $da $11 $b4

    ld a, [hl-]                                   ; $5194: $3a
    ld h, e                                       ; $5195: $63
    nop                                           ; $5196: $00
    db $10                                        ; $5197: $10
    ld a, [hl+]                                   ; $5198: $2a
    ld l, e                                       ; $5199: $6b
    add hl, de                                    ; $519a: $19

jr_0af_519b:
    push af                                       ; $519b: $f5
    ld b, d                                       ; $519c: $42
    ld b, [hl]                                    ; $519d: $46
    ld [$3655], sp                                ; $519e: $08 $55 $36
    db $10                                        ; $51a1: $10
    add hl, hl                                    ; $51a2: $29
    ld a, [hl-]                                   ; $51a3: $3a
    ld c, e                                       ; $51a4: $4b
    add h                                         ; $51a5: $84
    nop                                           ; $51a6: $00

jr_0af_51a7:
    ld d, c                                       ; $51a7: $51
    ld l, $f5                                     ; $51a8: $2e $f5
    ld b, d                                       ; $51aa: $42
    ld c, d                                       ; $51ab: $4a
    dec d                                         ; $51ac: $15
    and h                                         ; $51ad: $a4
    inc b                                         ; $51ae: $04
    ret                                           ; $51af: $c9


    ld c, l                                       ; $51b0: $4d
    adc a                                         ; $51b1: $8f
    ld l, d                                       ; $51b2: $6a
    ld a, [c]                                     ; $51b3: $f2
    halt                                          ; $51b4: $76

jr_0af_51b5:
    nop                                           ; $51b5: $00
    nop                                           ; $51b6: $00
    rst $38                                       ; $51b7: $ff
    ld a, a                                       ; $51b8: $7f
    ld b, a                                       ; $51b9: $47
    add hl, sp                                    ; $51ba: $39
    nop                                           ; $51bb: $00
    jr nz, jr_0af_51be                            ; $51bc: $20 $00

jr_0af_51be:
    nop                                           ; $51be: $00
    rst $38                                       ; $51bf: $ff
    ld a, a                                       ; $51c0: $7f
    nop                                           ; $51c1: $00
    jr nz, jr_0af_51e5                            ; $51c2: $20 $21

    inc b                                         ; $51c4: $04
    adc b                                         ; $51c5: $88
    nop                                           ; $51c6: $00
    adc a                                         ; $51c7: $8f
    add hl, hl                                    ; $51c8: $29
    jp c, $b411                                   ; $51c9: $da $11 $b4

    ld a, [hl-]                                   ; $51cc: $3a
    ld h, e                                       ; $51cd: $63
    nop                                           ; $51ce: $00
    adc h                                         ; $51cf: $8c
    dec e                                         ; $51d0: $1d
    sub e                                         ; $51d1: $93
    ld [hl], $ab                                  ; $51d2: $36 $ab
    nop                                           ; $51d4: $00
    ld h, l                                       ; $51d5: $65
    inc b                                         ; $51d6: $04
    inc d                                         ; $51d7: $14
    ld d, a                                       ; $51d8: $57
    rst $38                                       ; $51d9: $ff
    ld a, a                                       ; $51da: $7f
    daa                                           ; $51db: $27
    ld sp, $0ce7                                  ; $51dc: $31 $e7 $0c
    or h                                          ; $51df: $b4
    ld [hl], $eb                                  ; $51e0: $36 $eb
    ld d, c                                       ; $51e2: $51
    pop de                                        ; $51e3: $d1
    ld [hl], d                                    ; $51e4: $72

jr_0af_51e5:
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    rlca                                          ; $51e7: $07
    dec l                                         ; $51e8: $2d
    ld l, c                                       ; $51e9: $69
    ld b, c                                       ; $51ea: $41
    jp z, $004d                                   ; $51eb: $ca $4d $00

    nop                                           ; $51ee: $00

jr_0af_51ef:
    rst $38                                       ; $51ef: $ff
    ld a, a                                       ; $51f0: $7f
    nop                                           ; $51f1: $00
    jr nz, jr_0af_51be                            ; $51f2: $20 $ca

    ld c, l                                       ; $51f4: $4d
    ld hl, $ff00                                  ; $51f5: $21 $00 $ff
    ld a, a                                       ; $51f8: $7f
    ld [hl], c                                    ; $51f9: $71
    dec l                                         ; $51fa: $2d
    nop                                           ; $51fb: $00
    jr nz, jr_0af_51a7                            ; $51fc: $20 $a9

    nop                                           ; $51fe: $00
    call nc, $1a21                                ; $51ff: $d4 $21 $1a
    ld b, e                                       ; $5202: $43
    xor l                                         ; $5203: $ad
    dec h                                         ; $5204: $25
    and a                                         ; $5205: $a7
    nop                                           ; $5206: $00
    reti                                          ; $5207: $d9


    ld a, $13                                     ; $5208: $3e $13
    ld a, e                                       ; $520a: $7b
    xor l                                         ; $520b: $ad
    ld hl, $2906                                  ; $520c: $21 $06 $29
    ld d, d                                       ; $520f: $52
    ld c, d                                       ; $5210: $4a
    rst $38                                       ; $5211: $ff
    ld a, a                                       ; $5212: $7f
    inc de                                        ; $5213: $13
    ld [hl], a                                    ; $5214: $77
    ld hl, $a900                                  ; $5215: $21 $00 $a9
    ld b, l                                       ; $5218: $45
    pop de                                        ; $5219: $d1
    ld [hl], d                                    ; $521a: $72
    daa                                           ; $521b: $27
    dec h                                         ; $521c: $25
    nop                                           ; $521d: $00
    nop                                           ; $521e: $00
    daa                                           ; $521f: $27
    ld sp, $0027                                  ; $5220: $31 $27 $00
    rrca                                          ; $5223: $0f
    ld hl, $0000                                  ; $5224: $21 $00 $00
    rst $38                                       ; $5227: $ff
    ld a, a                                       ; $5228: $7f
    nop                                           ; $5229: $00
    jr nz, jr_0af_523b                            ; $522a: $20 $0f

    ld hl, $0000                                  ; $522c: $21 $00 $00

jr_0af_522f:
    nop                                           ; $522f: $00
    jr nz, jr_0af_51b5                            ; $5230: $20 $83

    nop                                           ; $5232: $00
    xor l                                         ; $5233: $ad
    ld hl, $00ab                                  ; $5234: $21 $ab $00
    ld [hl], l                                    ; $5237: $75
    ld [hl], $3d                                  ; $5238: $36 $3d
    ld c, e                                       ; $523a: $4b

jr_0af_523b:
    call $a725                                    ; $523b: $cd $25 $a7
    inc b                                         ; $523e: $04
    ld [$1951], a                                 ; $523f: $ea $51 $19
    ld h, e                                       ; $5242: $63
    ld d, d                                       ; $5243: $52
    ld l, $00                                     ; $5244: $2e $00
    nop                                           ; $5246: $00
    db $ec                                        ; $5247: $ec
    ld c, l                                       ; $5248: $4d
    dec h                                         ; $5249: $25
    add hl, hl                                    ; $524a: $29
    inc de                                        ; $524b: $13
    ld a, e                                       ; $524c: $7b
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    rlca                                          ; $524f: $07
    dec l                                         ; $5250: $2d
    db $10                                        ; $5251: $10
    ld hl, $0027                                  ; $5252: $21 $27 $00
    dec h                                         ; $5255: $25
    nop                                           ; $5256: $00
    sub e                                         ; $5257: $93
    ld sp, $7fff                                  ; $5258: $31 $ff $7f
    adc e                                         ; $525b: $8b
    stop                                          ; $525c: $10 $00
    nop                                           ; $525e: $00
    rst $38                                       ; $525f: $ff
    ld a, a                                       ; $5260: $7f
    nop                                           ; $5261: $00
    jr nz, jr_0af_51ef                            ; $5262: $20 $8b

    stop                                          ; $5264: $10 $00
    nop                                           ; $5266: $00

jr_0af_5267:
    nop                                           ; $5267: $00

jr_0af_5268:
    jr nz, @-$7b                                  ; $5268: $20 $83

    nop                                           ; $526a: $00
    ld d, d                                       ; $526b: $52
    ld l, $89                                     ; $526c: $2e $89
    nop                                           ; $526e: $00
    ld [hl], $32                                  ; $526f: $36 $32
    xor l                                         ; $5271: $ad
    dec h                                         ; $5272: $25
    ld e, e                                       ; $5273: $5b
    ld c, a                                       ; $5274: $4f
    ld b, h                                       ; $5275: $44
    nop                                           ; $5276: $00
    ld d, c                                       ; $5277: $51
    ld [hl-], a                                   ; $5278: $32
    jp z, $fd08                                   ; $5279: $ca $08 $fd

    ld b, d                                       ; $527c: $42
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    daa                                           ; $527f: $27
    ld sp, $51ea                                  ; $5280: $31 $ea $51
    daa                                           ; $5283: $27
    nop                                           ; $5284: $00
    daa                                           ; $5285: $27
    nop                                           ; $5286: $00
    xor $1c                                       ; $5287: $ee $1c
    or l                                          ; $5289: $b5
    dec [hl]                                      ; $528a: $35
    adc e                                         ; $528b: $8b
    db $10                                        ; $528c: $10
    inc b                                         ; $528d: $04
    nop                                           ; $528e: $00
    rst $38                                       ; $528f: $ff
    ld a, a                                       ; $5290: $7f
    call $9318                                    ; $5291: $cd $18 $93
    ld sp, $0000                                  ; $5294: $31 $00 $00
    nop                                           ; $5297: $00
    jr nz, jr_0af_5267                            ; $5298: $20 $cd

    jr jr_0af_522f                                ; $529a: $18 $93

    ld sp, $2000                                  ; $529c: $31 $00 $20

jr_0af_529f:
    add e                                         ; $529f: $83
    nop                                           ; $52a0: $00
    jp z, $fd08                                   ; $52a1: $ca $08 $fd

    ld b, d                                       ; $52a4: $42
    ld b, h                                       ; $52a5: $44
    ld [$25ad], sp                                ; $52a6: $08 $ad $25
    ld d, a                                       ; $52a9: $57
    ld c, a                                       ; $52aa: $4f
    xor e                                         ; $52ab: $ab
    nop                                           ; $52ac: $00
    ld h, l                                       ; $52ad: $65
    inc b                                         ; $52ae: $04
    xor l                                         ; $52af: $ad
    dec h                                         ; $52b0: $25
    xor $1c                                       ; $52b1: $ee $1c
    ld [hl], d                                    ; $52b3: $72
    ld [hl-], a                                   ; $52b4: $32
    daa                                           ; $52b5: $27
    nop                                           ; $52b6: $00
    daa                                           ; $52b7: $27
    ld sp, $18cd                                  ; $52b8: $31 $cd $18
    adc d                                         ; $52bb: $8a
    inc c                                         ; $52bc: $0c

jr_0af_52bd:
    daa                                           ; $52bd: $27
    nop                                           ; $52be: $00
    ld [hl], d                                    ; $52bf: $72
    dec l                                         ; $52c0: $2d
    call z, $1914                                 ; $52c1: $cc $14 $19
    ld b, d                                       ; $52c4: $42
    inc b                                         ; $52c5: $04
    nop                                           ; $52c6: $00
    rst $38                                       ; $52c7: $ff
    ld a, a                                       ; $52c8: $7f
    call $9418                                    ; $52c9: $cd $18 $94
    ld sp, $0000                                  ; $52cc: $31 $00 $00
    nop                                           ; $52cf: $00
    jr nz, jr_0af_529f                            ; $52d0: $20 $cd

    jr jr_0af_5268                                ; $52d2: $18 $94

    ld sp, $2000                                  ; $52d4: $31 $00 $20
    add e                                         ; $52d7: $83
    nop                                           ; $52d8: $00
    xor $1c                                       ; $52d9: $ee $1c
    ld [hl], d                                    ; $52db: $72
    ld [hl-], a                                   ; $52dc: $32
    ld b, h                                       ; $52dd: $44
    ld [$4f57], sp                                ; $52de: $08 $57 $4f
    xor l                                         ; $52e1: $ad
    dec h                                         ; $52e2: $25
    rst $38                                       ; $52e3: $ff
    ld a, a                                       ; $52e4: $7f
    ld b, l                                       ; $52e5: $45
    nop                                           ; $52e6: $00
    xor l                                         ; $52e7: $ad
    ld hl, $4a92                                  ; $52e8: $21 $92 $4a
    xor $1c                                       ; $52eb: $ee $1c
    daa                                           ; $52ed: $27
    nop                                           ; $52ee: $00
    xor e                                         ; $52ef: $ab
    db $10                                        ; $52f0: $10
    sub e                                         ; $52f1: $93
    ld sp, $18cd                                  ; $52f2: $31 $cd $18
    jr z, jr_0af_52fb                             ; $52f5: $28 $04

    ld [hl], d                                    ; $52f7: $72
    dec l                                         ; $52f8: $2d
    ld e, e                                       ; $52f9: $5b
    ld c, d                                       ; $52fa: $4a

jr_0af_52fb:
    call $0318                                    ; $52fb: $cd $18 $03
    nop                                           ; $52fe: $00

jr_0af_52ff:
    rst $30                                       ; $52ff: $f7
    dec a                                         ; $5300: $3d
    rst $38                                       ; $5301: $ff
    ld a, a                                       ; $5302: $7f
    call z, Call_000_0014                         ; $5303: $cc $14 $00
    jr nz, jr_0af_52ff                            ; $5306: $20 $f7

    dec a                                         ; $5308: $3d
    rst $38                                       ; $5309: $ff
    ld a, a                                       ; $530a: $7f
    call z, Call_000_0014                         ; $530b: $cc $14 $00
    jr nz, jr_0af_52bd                            ; $530e: $20 $ad

    ld hl, $4a92                                  ; $5310: $21 $92 $4a
    xor $1c                                       ; $5313: $ee $1c
    add e                                         ; $5315: $83

jr_0af_5316:
    nop                                           ; $5316: $00
    xor l                                         ; $5317: $ad
    dec h                                         ; $5318: $25
    jr c, jr_0af_5366                             ; $5319: $38 $4b

    ld b, l                                       ; $531b: $45
    ld [$0445], sp                                ; $531c: $08 $45 $04
    ld c, l                                       ; $531f: $4d
    ld hl, $3ab4                                  ; $5320: $21 $b4 $3a
    jr z, jr_0af_5332                             ; $5323: $28 $0d

    daa                                           ; $5325: $27
    nop                                           ; $5326: $00
    sub h                                         ; $5327: $94
    ld sp, $18cd                                  ; $5328: $31 $cd $18
    ld a, l                                       ; $532b: $7d
    ld c, [hl]                                    ; $532c: $4e

jr_0af_532d:
    daa                                           ; $532d: $27
    nop                                           ; $532e: $00
    sub e                                         ; $532f: $93
    dec l                                         ; $5330: $2d
    ld e, h                                       ; $5331: $5c

jr_0af_5332:
    ld c, d                                       ; $5332: $4a
    call $0318                                    ; $5333: $cd $18 $03
    inc b                                         ; $5336: $04
    sub $39                                       ; $5337: $d6 $39
    rst $38                                       ; $5339: $ff
    ld a, a                                       ; $533a: $7f
    xor $1c                                       ; $533b: $ee $1c
    nop                                           ; $533d: $00
    jr nz, jr_0af_5316                            ; $533e: $20 $d6

    add hl, sp                                    ; $5340: $39
    rst $38                                       ; $5341: $ff
    ld a, a                                       ; $5342: $7f
    xor $1c                                       ; $5343: $ee $1c
    nop                                           ; $5345: $00
    jr nz, jr_0af_5395                            ; $5346: $20 $4d

    ld hl, $3ab4                                  ; $5348: $21 $b4 $3a
    jr z, @+$0f                                   ; $534b: $28 $0d

    ld b, h                                       ; $534d: $44
    inc b                                         ; $534e: $04
    xor l                                         ; $534f: $ad
    dec h                                         ; $5350: $25
    add hl, sp                                    ; $5351: $39
    ld b, a                                       ; $5352: $47
    nop                                           ; $5353: $00
    jr nz, @+$47                                  ; $5354: $20 $45

    nop                                           ; $5356: $00
    xor l                                         ; $5357: $ad
    dec h                                         ; $5358: $25
    xor $1c                                       ; $5359: $ee $1c
    sub h                                         ; $535b: $94
    ld a, [hl-]                                   ; $535c: $3a
    ld c, b                                       ; $535d: $48
    inc b                                         ; $535e: $04
    or h                                          ; $535f: $b4
    dec [hl]                                      ; $5360: $35
    ld a, l                                       ; $5361: $7d
    ld c, [hl]                                    ; $5362: $4e
    call $2718                                    ; $5363: $cd $18 $27

jr_0af_5366:
    nop                                           ; $5366: $00
    ld [hl], d                                    ; $5367: $72
    dec l                                         ; $5368: $2d
    ld a, [hl]                                    ; $5369: $7e
    ld c, [hl]                                    ; $536a: $4e
    call $0218                                    ; $536b: $cd $18 $02
    nop                                           ; $536e: $00
    rst $38                                       ; $536f: $ff
    ld a, a                                       ; $5370: $7f
    ld sp, $0025                                  ; $5371: $31 $25 $00
    jr nz, jr_0af_5376                            ; $5374: $20 $00

jr_0af_5376:
    jr nz, @+$01                                  ; $5376: $20 $ff

    ld a, a                                       ; $5378: $7f
    ld sp, $0025                                  ; $5379: $31 $25 $00
    jr nz, jr_0af_537e                            ; $537c: $20 $00

jr_0af_537e:
    jr nz, jr_0af_532d                            ; $537e: $20 $ad

    dec h                                         ; $5380: $25
    xor $1c                                       ; $5381: $ee $1c
    sub h                                         ; $5383: $94
    ld a, [hl-]                                   ; $5384: $3a
    ld bc, $9c00                                  ; $5385: $01 $00 $9c
    ld h, e                                       ; $5388: $63
    xor l                                         ; $5389: $ad
    dec h                                         ; $538a: $25
    nop                                           ; $538b: $00
    jr nz, jr_0af_538e                            ; $538c: $20 $00

jr_0af_538e:
    nop                                           ; $538e: $00
    ld c, l                                       ; $538f: $4d
    ld hl, $3ab4                                  ; $5390: $21 $b4 $3a
    ld b, l                                       ; $5393: $45
    nop                                           ; $5394: $00

jr_0af_5395:
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    rst $38                                       ; $5397: $ff
    ld a, a                                       ; $5398: $7f
    ld sp, $0025                                  ; $5399: $31 $25 $00
    jr nz, jr_0af_539e                            ; $539c: $20 $00

jr_0af_539e:
    nop                                           ; $539e: $00
    rst $38                                       ; $539f: $ff
    ld a, a                                       ; $53a0: $7f
    ld sp, $0025                                  ; $53a1: $31 $25 $00
    jr nz, jr_0af_53a6                            ; $53a4: $20 $00

jr_0af_53a6:
    nop                                           ; $53a6: $00
    rst $38                                       ; $53a7: $ff
    ld a, a                                       ; $53a8: $7f
    nop                                           ; $53a9: $00
    jr nz, jr_0af_53ac                            ; $53aa: $20 $00

jr_0af_53ac:
    jr nz, jr_0af_53ae                            ; $53ac: $20 $00

jr_0af_53ae:
    jr nz, @+$01                                  ; $53ae: $20 $ff

    ld a, a                                       ; $53b0: $7f
    nop                                           ; $53b1: $00
    jr nz, jr_0af_53b4                            ; $53b2: $20 $00

jr_0af_53b4:
    jr nz, jr_0af_53b6                            ; $53b4: $20 $00

jr_0af_53b6:
    jr nz, jr_0af_5405                            ; $53b6: $20 $4d

    ld hl, $3ab4                                  ; $53b8: $21 $b4 $3a
    ld b, l                                       ; $53bb: $45
    nop                                           ; $53bc: $00

jr_0af_53bd:
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    rst $38                                       ; $53bf: $ff
    ld a, a                                       ; $53c0: $7f
    nop                                           ; $53c1: $00
    jr nz, jr_0af_5409                            ; $53c2: $20 $45

    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    rst $38                                       ; $53c7: $ff
    ld a, a                                       ; $53c8: $7f
    nop                                           ; $53c9: $00
    jr nz, jr_0af_5411                            ; $53ca: $20 $45

    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    jr nz, jr_0af_53d2                            ; $53d0: $20 $00

jr_0af_53d2:
    jr nz, jr_0af_53d4                            ; $53d2: $20 $00

jr_0af_53d4:
    jr nz, jr_0af_53d6                            ; $53d4: $20 $00

jr_0af_53d6:
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    jr nz, jr_0af_53da                            ; $53d8: $20 $00

jr_0af_53da:
    jr nz, jr_0af_53dc                            ; $53da: $20 $00

jr_0af_53dc:
    jr nz, jr_0af_53de                            ; $53dc: $20 $00

jr_0af_53de:
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    jr nz, jr_0af_53e2                            ; $53e0: $20 $00

jr_0af_53e2:
    jr nz, jr_0af_53e4                            ; $53e2: $20 $00

jr_0af_53e4:
    jr nz, jr_0af_53e6                            ; $53e4: $20 $00

jr_0af_53e6:
    jr nz, jr_0af_53e8                            ; $53e6: $20 $00

jr_0af_53e8:
    jr nz, jr_0af_53ea                            ; $53e8: $20 $00

jr_0af_53ea:
    jr nz, jr_0af_53ec                            ; $53ea: $20 $00

jr_0af_53ec:
    jr nz, jr_0af_53ee                            ; $53ec: $20 $00

jr_0af_53ee:
    jr nz, jr_0af_53f0                            ; $53ee: $20 $00

jr_0af_53f0:
    jr nz, @+$01                                  ; $53f0: $20 $ff

    ld l, a                                       ; $53f2: $6f
    cp [hl]                                       ; $53f3: $be
    dec hl                                        ; $53f4: $2b
    nop                                           ; $53f5: $00

jr_0af_53f6:
    jr nz, jr_0af_53f8                            ; $53f6: $20 $00

jr_0af_53f8:
    jr nz, @+$01                                  ; $53f8: $20 $ff

    ld l, a                                       ; $53fa: $6f
    cp [hl]                                       ; $53fb: $be
    dec hl                                        ; $53fc: $2b
    nop                                           ; $53fd: $00

jr_0af_53fe:
    jr nz, jr_0af_5400                            ; $53fe: $20 $00

jr_0af_5400:
    jr nz, @+$01                                  ; $5400: $20 $ff

    ld l, a                                       ; $5402: $6f
    cp [hl]                                       ; $5403: $be
    dec hl                                        ; $5404: $2b

jr_0af_5405:
    nop                                           ; $5405: $00

jr_0af_5406:
    jr nz, @-$61                                  ; $5406: $20 $9d

    inc bc                                        ; $5408: $03

jr_0af_5409:
    rst $18                                       ; $5409: $df
    ld c, e                                       ; $540a: $4b
    rst $38                                       ; $540b: $ff
    ld l, e                                       ; $540c: $6b
    nop                                           ; $540d: $00

jr_0af_540e:
    jr nz, @-$61                                  ; $540e: $20 $9d

    inc bc                                        ; $5410: $03

jr_0af_5411:
    rst $18                                       ; $5411: $df
    ld c, e                                       ; $5412: $4b
    rst $38                                       ; $5413: $ff
    ld l, e                                       ; $5414: $6b
    nop                                           ; $5415: $00
    jr nz, @-$61                                  ; $5416: $20 $9d

    inc bc                                        ; $5418: $03
    rst $18                                       ; $5419: $df
    ld c, e                                       ; $541a: $4b
    rst $38                                       ; $541b: $ff
    ld l, e                                       ; $541c: $6b
    nop                                           ; $541d: $00

jr_0af_541e:
    jr nz, jr_0af_53bd                            ; $541e: $20 $9d

    inc bc                                        ; $5420: $03
    rst $18                                       ; $5421: $df
    ld c, e                                       ; $5422: $4b
    rst $38                                       ; $5423: $ff
    ld l, e                                       ; $5424: $6b
    nop                                           ; $5425: $00

jr_0af_5426:
    jr nz, jr_0af_5428                            ; $5426: $20 $00

jr_0af_5428:
    jr nz, @+$01                                  ; $5428: $20 $ff

    ld l, a                                       ; $542a: $6f
    cp [hl]                                       ; $542b: $be
    dec hl                                        ; $542c: $2b
    nop                                           ; $542d: $00
    jr nz, jr_0af_5430                            ; $542e: $20 $00

jr_0af_5430:
    jr nz, @+$01                                  ; $5430: $20 $ff

    ld l, a                                       ; $5432: $6f
    cp [hl]                                       ; $5433: $be
    dec hl                                        ; $5434: $2b
    nop                                           ; $5435: $00
    jr nz, jr_0af_53f6                            ; $5436: $20 $be

    rra                                           ; $5438: $1f
    rst $38                                       ; $5439: $ff
    ld l, a                                       ; $543a: $6f
    cp [hl]                                       ; $543b: $be
    dec hl                                        ; $543c: $2b
    inc b                                         ; $543d: $04
    jr jr_0af_53de                                ; $543e: $18 $9e

    rrca                                          ; $5440: $0f
    rst $18                                       ; $5441: $df
    ld c, a                                       ; $5442: $4f
    rst $38                                       ; $5443: $ff
    ld l, a                                       ; $5444: $6f
    nop                                           ; $5445: $00
    jr nz, jr_0af_53fe                            ; $5446: $20 $b6

    ld a, [bc]                                    ; $5448: $0a
    cp [hl]                                       ; $5449: $be
    rra                                           ; $544a: $1f
    rst $38                                       ; $544b: $ff
    ld l, a                                       ; $544c: $6f
    nop                                           ; $544d: $00
    jr nz, jr_0af_5406                            ; $544e: $20 $b6

    ld a, [bc]                                    ; $5450: $0a
    cp [hl]                                       ; $5451: $be
    rra                                           ; $5452: $1f
    rst $38                                       ; $5453: $ff
    ld l, a                                       ; $5454: $6f
    nop                                           ; $5455: $00
    jr nz, jr_0af_540e                            ; $5456: $20 $b6

    ld a, [bc]                                    ; $5458: $0a
    cp [hl]                                       ; $5459: $be
    rra                                           ; $545a: $1f
    rst $38                                       ; $545b: $ff
    ld l, a                                       ; $545c: $6f
    nop                                           ; $545d: $00
    jr nz, jr_0af_541e                            ; $545e: $20 $be

    rra                                           ; $5460: $1f
    rst $38                                       ; $5461: $ff
    ld l, a                                       ; $5462: $6f
    cp [hl]                                       ; $5463: $be
    dec hl                                        ; $5464: $2b
    nop                                           ; $5465: $00
    jr nz, jr_0af_5426                            ; $5466: $20 $be

    rra                                           ; $5468: $1f
    rst $38                                       ; $5469: $ff
    ld l, a                                       ; $546a: $6f
    cp [hl]                                       ; $546b: $be

jr_0af_546c:
    dec hl                                        ; $546c: $2b
    nop                                           ; $546d: $00
    jr nz, @-$2f                                  ; $546e: $20 $cf

jr_0af_5470:
    dec d                                         ; $5470: $15
    add hl, de                                    ; $5471: $19
    inc bc                                        ; $5472: $03
    cp [hl]                                       ; $5473: $be

jr_0af_5474:
    inc sp                                        ; $5474: $33

jr_0af_5475:
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    sbc d                                         ; $5477: $9a

jr_0af_5478:
    ld a, d                                       ; $5478: $7a
    ld d, e                                       ; $5479: $53
    ld c, $06                                     ; $547a: $0e $06
    jr nz, jr_0af_547e                            ; $547c: $20 $00

jr_0af_547e:
    jr nz, jr_0af_5470                            ; $547e: $20 $f0

jr_0af_5480:
    ld de, $0ab6                                  ; $5480: $11 $b6 $0a
    ld sp, hl                                     ; $5483: $f9
    ld b, $00                                     ; $5484: $06 $00
    jr nz, jr_0af_5478                            ; $5486: $20 $f0

    ld de, $0ab6                                  ; $5488: $11 $b6 $0a
    ld sp, hl                                     ; $548b: $f9
    ld b, $00                                     ; $548c: $06 $00
    jr nz, jr_0af_5480                            ; $548e: $20 $f0

    ld de, $0ab6                                  ; $5490: $11 $b6 $0a
    ld sp, hl                                     ; $5493: $f9
    ld b, $00                                     ; $5494: $06 $00
    jr nz, @-$2f                                  ; $5496: $20 $cf

    dec d                                         ; $5498: $15
    add hl, de                                    ; $5499: $19
    inc bc                                        ; $549a: $03
    cp [hl]                                       ; $549b: $be
    inc sp                                        ; $549c: $33

jr_0af_549d:
    nop                                           ; $549d: $00
    jr nz, @-$2f                                  ; $549e: $20 $cf

    dec d                                         ; $54a0: $15
    add hl, de                                    ; $54a1: $19
    inc bc                                        ; $54a2: $03
    cp [hl]                                       ; $54a3: $be
    inc sp                                        ; $54a4: $33
    ld bc, $f020                                  ; $54a5: $01 $20 $f0
    ld de, $7edb                                  ; $54a8: $11 $db $7e
    ld [hl], h                                    ; $54ab: $74
    ld a, [bc]                                    ; $54ac: $0a
    inc b                                         ; $54ad: $04
    inc d                                         ; $54ae: $14
    inc de                                        ; $54af: $13
    ld d, c                                       ; $54b0: $51
    jr c, jr_0af_5521                             ; $54b1: $38 $6e

    db $db                                        ; $54b3: $db
    ld a, [hl]                                    ; $54b4: $7e

jr_0af_54b5:
    ld bc, $ac10                                  ; $54b5: $01 $10 $ac
    ld l, [hl]                                    ; $54b8: $6e
    ld [hl], h                                    ; $54b9: $74
    ld a, [bc]                                    ; $54ba: $0a
    ld a, [hl-]                                   ; $54bb: $3a
    inc bc                                        ; $54bc: $03
    nop                                           ; $54bd: $00
    jr nz, jr_0af_546c                            ; $54be: $20 $ac

jr_0af_54c0:
    ld l, [hl]                                    ; $54c0: $6e
    ld [hl], h                                    ; $54c1: $74
    ld a, [bc]                                    ; $54c2: $0a
    ld a, [hl-]                                   ; $54c3: $3a
    inc bc                                        ; $54c4: $03
    nop                                           ; $54c5: $00
    jr nz, jr_0af_5474                            ; $54c6: $20 $ac

    ld l, [hl]                                    ; $54c8: $6e
    ld [hl], h                                    ; $54c9: $74
    ld a, [bc]                                    ; $54ca: $0a
    ld a, [hl-]                                   ; $54cb: $3a
    inc bc                                        ; $54cc: $03
    nop                                           ; $54cd: $00
    jr nz, jr_0af_54c0                            ; $54ce: $20 $f0

    ld de, $7edb                                  ; $54d0: $11 $db $7e
    ld [hl], h                                    ; $54d3: $74
    ld a, [bc]                                    ; $54d4: $0a
    nop                                           ; $54d5: $00
    inc e                                         ; $54d6: $1c
    nop                                           ; $54d7: $00
    jr nz, jr_0af_54b5                            ; $54d8: $20 $db

    ld a, [hl]                                    ; $54da: $7e
    ld [hl], h                                    ; $54db: $74
    ld a, [bc]                                    ; $54dc: $0a
    inc bc                                        ; $54dd: $03
    jr jr_0af_5475                                ; $54de: $18 $95

    ld a, [bc]                                    ; $54e0: $0a
    sbc d                                         ; $54e1: $9a
    ld a, d                                       ; $54e2: $7a
    ld e, e                                       ; $54e3: $5b
    inc bc                                        ; $54e4: $03
    jr z, @+$2a                                   ; $54e5: $28 $28

    ld a, c                                       ; $54e7: $79
    halt                                          ; $54e8: $76
    xor [hl]                                      ; $54e9: $ae
    ld b, b                                       ; $54ea: $40
    inc de                                        ; $54eb: $13
    ld d, c                                       ; $54ec: $51
    ld bc, $ac08                                  ; $54ed: $01 $08 $ac
    ld l, [hl]                                    ; $54f0: $6e
    sbc l                                         ; $54f1: $9d
    dec de                                        ; $54f2: $1b
    db $db                                        ; $54f3: $db
    ld a, [hl]                                    ; $54f4: $7e
    nop                                           ; $54f5: $00
    inc e                                         ; $54f6: $1c
    inc de                                        ; $54f7: $13
    ld d, c                                       ; $54f8: $51
    ld b, $20                                     ; $54f9: $06 $20
    nop                                           ; $54fb: $00
    jr nz, jr_0af_54fe                            ; $54fc: $20 $00

jr_0af_54fe:
    jr nz, jr_0af_5513                            ; $54fe: $20 $13

    ld d, c                                       ; $5500: $51
    ld b, $20                                     ; $5501: $06 $20
    nop                                           ; $5503: $00
    jr nz, jr_0af_5506                            ; $5504: $20 $00

jr_0af_5506:
    jr nz, jr_0af_549d                            ; $5506: $20 $95

    ld a, [bc]                                    ; $5508: $0a
    sbc d                                         ; $5509: $9a
    ld a, d                                       ; $550a: $7a
    ld e, e                                       ; $550b: $5b
    inc bc                                        ; $550c: $03
    nop                                           ; $550d: $00
    jr nz, jr_0af_5529                            ; $550e: $20 $19

    rlca                                          ; $5510: $07
    db $db                                        ; $5511: $db
    ld a, [hl]                                    ; $5512: $7e

jr_0af_5513:
    ld b, $20                                     ; $5513: $06 $20
    inc bc                                        ; $5515: $03
    db $10                                        ; $5516: $10
    ld d, l                                       ; $5517: $55
    ld l, [hl]                                    ; $5518: $6e
    sbc l                                         ; $5519: $9d
    rrca                                          ; $551a: $0f
    inc c                                         ; $551b: $0c
    inc a                                         ; $551c: $3c
    ld b, $20                                     ; $551d: $06 $20
    db $db                                        ; $551f: $db
    ld a, [hl]                                    ; $5520: $7e

jr_0af_5521:
    xor [hl]                                      ; $5521: $ae
    ld b, b                                       ; $5522: $40
    ld c, d                                       ; $5523: $4a
    jr nc, jr_0af_5528                            ; $5524: $30 $02

    inc c                                         ; $5526: $0c
    xor h                                         ; $5527: $ac

jr_0af_5528:
    ld l, [hl]                                    ; $5528: $6e

jr_0af_5529:
    ld a, c                                       ; $5529: $79
    halt                                          ; $552a: $76
    inc de                                        ; $552b: $13
    ld d, c                                       ; $552c: $51
    nop                                           ; $552d: $00
    inc e                                         ; $552e: $1c
    ld a, [de]                                    ; $552f: $1a
    rlca                                          ; $5530: $07
    xor [hl]                                      ; $5531: $ae
    ld b, b                                       ; $5532: $40
    ld b, $20                                     ; $5533: $06 $20
    nop                                           ; $5535: $00
    jr nz, jr_0af_5552                            ; $5536: $20 $1a

    rlca                                          ; $5538: $07
    xor [hl]                                      ; $5539: $ae
    ld b, b                                       ; $553a: $40
    ld b, $20                                     ; $553b: $06 $20
    nop                                           ; $553d: $00
    jr nz, jr_0af_5595                            ; $553e: $20 $55

jr_0af_5540:
    ld l, [hl]                                    ; $5540: $6e
    sbc l                                         ; $5541: $9d
    rrca                                          ; $5542: $0f
    inc c                                         ; $5543: $0c
    inc a                                         ; $5544: $3c
    nop                                           ; $5545: $00
    jr jr_0af_5540                                ; $5546: $18 $f8

    ld b, $13                                     ; $5548: $06 $13
    ld d, c                                       ; $554a: $51
    cp [hl]                                       ; $554b: $be
    dec sp                                        ; $554c: $3b
    dec b                                         ; $554d: $05
    jr jr_0af_5563                                ; $554e: $18 $13

    ld d, c                                       ; $5550: $51
    sbc d                                         ; $5551: $9a

jr_0af_5552:
    ld a, [hl]                                    ; $5552: $7e
    ld c, [hl]                                    ; $5553: $4e
    nop                                           ; $5554: $00
    inc b                                         ; $5555: $04
    jr jr_0af_5597                                ; $5556: $18 $3f

    ld [bc], a                                    ; $5558: $02
    ld c, [hl]                                    ; $5559: $4e
    nop                                           ; $555a: $00
    ld e, a                                       ; $555b: $5f
    ld c, a                                       ; $555c: $4f
    jr nz, jr_0af_555f                            ; $555d: $20 $00

jr_0af_555f:
    inc de                                        ; $555f: $13
    ld d, c                                       ; $5560: $51
    ld a, c                                       ; $5561: $79
    halt                                          ; $5562: $76

jr_0af_5563:
    ld b, $20                                     ; $5563: $06 $20
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    ld e, h                                       ; $5567: $5c
    rlca                                          ; $5568: $07
    rst $18                                       ; $5569: $df
    ld b, e                                       ; $556a: $43
    inc bc                                        ; $556b: $03
    jr nz, jr_0af_556e                            ; $556c: $20 $00

jr_0af_556e:
    jr nz, jr_0af_55cc                            ; $556e: $20 $5c

    rlca                                          ; $5570: $07
    rst $18                                       ; $5571: $df
    ld b, e                                       ; $5572: $43
    inc bc                                        ; $5573: $03
    jr nz, jr_0af_5576                            ; $5574: $20 $00

jr_0af_5576:
    jr nz, jr_0af_55cb                            ; $5576: $20 $53

    ld c, $9a                                     ; $5578: $0e $9a
    ld a, [hl]                                    ; $557a: $7e
    ld c, [hl]                                    ; $557b: $4e
    nop                                           ; $557c: $00
    jr nz, @+$06                                  ; $557d: $20 $04

    adc e                                         ; $557f: $8b
    ld l, d                                       ; $5580: $6a
    ld [hl-], a                                   ; $5581: $32
    ld c, $3b                                     ; $5582: $0e $3b
    rlca                                          ; $5584: $07
    add hl, hl                                    ; $5585: $29
    ld [$023f], sp                                ; $5586: $08 $3f $02
    rst $08                                       ; $5589: $cf
    ld e, l                                       ; $558a: $5d
    dec e                                         ; $558b: $1d
    ld e, a                                       ; $558c: $5f
    ld c, [hl]                                    ; $558d: $4e
    nop                                           ; $558e: $00
    ld a, $5b                                     ; $558f: $3e $5b
    ld a, [$3f0c]                                 ; $5591: $fa $0c $3f
    ld [bc], a                                    ; $5594: $02

jr_0af_5595:
    rlca                                          ; $5595: $07
    inc h                                         ; $5596: $24

jr_0af_5597:
    inc de                                        ; $5597: $13

jr_0af_5598:
    ld d, c                                       ; $5598: $51
    jr c, jr_0af_5609                             ; $5599: $38 $6e

    db $db                                        ; $559b: $db
    ld a, [hl]                                    ; $559c: $7e
    ld bc, $6b04                                  ; $559d: $01 $04 $6b
    ld l, d                                       ; $55a0: $6a
    ld sp, hl                                     ; $55a1: $f9
    ld b, $be                                     ; $55a2: $06 $be
    ccf                                           ; $55a4: $3f
    nop                                           ; $55a5: $00

jr_0af_55a6:
    jr nz, jr_0af_5598                            ; $55a6: $20 $f0

    dec d                                         ; $55a8: $15
    sub [hl]                                      ; $55a9: $96
    ld c, $d8                                     ; $55aa: $0e $d8
    ld a, [bc]                                    ; $55ac: $0a
    nop                                           ; $55ad: $00
    jr nz, jr_0af_5603                            ; $55ae: $20 $53

    ld c, $c1                                     ; $55b0: $0e $c1
    nop                                           ; $55b2: $00
    add hl, de                                    ; $55b3: $19
    inc bc                                        ; $55b4: $03
    and b                                         ; $55b5: $a0
    nop                                           ; $55b6: $00
    ld l, d                                       ; $55b7: $6a
    ld l, d                                       ; $55b8: $6a
    di                                            ; $55b9: $f3
    ld b, e                                       ; $55ba: $43
    inc h                                         ; $55bb: $24
    ld de, $044a                                  ; $55bc: $11 $4a $04
    ld l, d                                       ; $55bf: $6a
    ld h, [hl]                                    ; $55c0: $66
    ld a, [$3f0c]                                 ; $55c1: $fa $0c $3f
    ld c, a                                       ; $55c4: $4f
    ld [$ff60], sp                                ; $55c5: $08 $60 $ff
    ld a, a                                       ; $55c8: $7f
    sbc h                                         ; $55c9: $9c
    dec b                                         ; $55ca: $05

jr_0af_55cb:
    ld c, h                                       ; $55cb: $4c

jr_0af_55cc:
    nop                                           ; $55cc: $00
    inc b                                         ; $55cd: $04
    jr jr_0af_560f                                ; $55ce: $18 $3f

    ld [bc], a                                    ; $55d0: $02
    ld l, h                                       ; $55d1: $6c
    nop                                           ; $55d2: $00
    ccf                                           ; $55d3: $3f
    ld c, a                                       ; $55d4: $4f
    ld bc, $4a00                                  ; $55d5: $01 $00 $4a
    ld h, [hl]                                    ; $55d8: $66
    ld a, [$5c0c]                                 ; $55d9: $fa $0c $5c
    inc bc                                        ; $55dc: $03
    nop                                           ; $55dd: $00
    jr nz, jr_0af_55f1                            ; $55de: $20 $11

    ld [de], a                                    ; $55e0: $12
    ld a, [hl-]                                   ; $55e1: $3a
    inc bc                                        ; $55e2: $03
    sub [hl]                                      ; $55e3: $96
    ld c, $00                                     ; $55e4: $0e $00
    jr nz, jr_0af_55a6                            ; $55e6: $20 $be

    dec hl                                        ; $55e8: $2b
    ld a, [$245b]                                 ; $55e9: $fa $5b $24
    ld de, $08c2                                  ; $55ec: $11 $c2 $08
    ld c, d                                       ; $55ef: $4a
    ld h, [hl]                                    ; $55f0: $66

jr_0af_55f1:
    or b                                          ; $55f1: $b0
    scf                                           ; $55f2: $37
    push af                                       ; $55f3: $f5
    ld c, a                                       ; $55f4: $4f
    adc l                                         ; $55f5: $8d
    inc b                                         ; $55f6: $04
    ld c, d                                       ; $55f7: $4a
    ld h, [hl]                                    ; $55f8: $66
    ld [$5f60], sp                                ; $55f9: $08 $60 $5f
    ld e, e                                       ; $55fc: $5b
    ld [$3f60], sp                                ; $55fd: $08 $60 $3f
    ld c, a                                       ; $5600: $4f
    adc b                                         ; $5601: $88
    nop                                           ; $5602: $00

jr_0af_5603:
    or d                                          ; $5603: $b2
    dec e                                         ; $5604: $1d
    ld [bc], a                                    ; $5605: $02
    ld [$05bd], sp                                ; $5606: $08 $bd $05

jr_0af_5609:
    ccf                                           ; $5609: $3f
    ld c, a                                       ; $560a: $4f
    adc e                                         ; $560b: $8b
    nop                                           ; $560c: $00
    ld h, $00                                     ; $560d: $26 $00

jr_0af_560f:
    add hl, hl                                    ; $560f: $29
    ld h, d                                       ; $5610: $62
    ld e, e                                       ; $5611: $5b
    add hl, bc                                    ; $5612: $09
    ld e, a                                       ; $5613: $5f
    ld c, a                                       ; $5614: $4f
    nop                                           ; $5615: $00
    inc e                                         ; $5616: $1c
    ld c, $2e                                     ; $5617: $0e $2e
    ld e, h                                       ; $5619: $5c
    inc de                                        ; $561a: $13
    rst $38                                       ; $561b: $ff
    ld h, e                                       ; $561c: $63
    db $e3                                        ; $561d: $e3
    db $10                                        ; $561e: $10
    ld a, h                                       ; $561f: $7c
    dec de                                        ; $5620: $1b
    di                                            ; $5621: $f3
    ld b, e                                       ; $5622: $43
    rst $18                                       ; $5623: $df
    ld e, a                                       ; $5624: $5f
    and c                                         ; $5625: $a1
    nop                                           ; $5626: $00
    adc d                                         ; $5627: $8a
    ld b, [hl]                                    ; $5628: $46
    push af                                       ; $5629: $f5
    ld c, a                                       ; $562a: $4f
    ld c, b                                       ; $562b: $48
    ld e, $20                                     ; $562c: $1e $20
    nop                                           ; $562e: $00
    ccf                                           ; $562f: $3f
    ld c, a                                       ; $5630: $4f
    ld d, [hl]                                    ; $5631: $56
    dec d                                         ; $5632: $15
    adc d                                         ; $5633: $8a
    nop                                           ; $5634: $00
    ld h, [hl]                                    ; $5635: $66
    nop                                           ; $5636: $00
    ld e, b                                       ; $5637: $58
    ld [hl-], a                                   ; $5638: $32
    or d                                          ; $5639: $b2
    dec e                                         ; $563a: $1d
    ccf                                           ; $563b: $3f
    ld c, a                                       ; $563c: $4f
    jr nz, jr_0af_563f                            ; $563d: $20 $00

jr_0af_563f:
    ccf                                           ; $563f: $3f
    ld c, a                                       ; $5640: $4f
    jr jr_0af_5650                                ; $5641: $18 $0d

    ld l, h                                       ; $5643: $6c
    nop                                           ; $5644: $00
    jr nz, jr_0af_5647                            ; $5645: $20 $00

jr_0af_5647:
    add hl, bc                                    ; $5647: $09
    ld e, [hl]                                    ; $5648: $5e
    ld c, [hl]                                    ; $5649: $4e
    nop                                           ; $564a: $00
    ld l, h                                       ; $564b: $6c
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    inc e                                         ; $564e: $1c
    add hl, bc                                    ; $564f: $09

jr_0af_5650:
    ld e, [hl]                                    ; $5650: $5e
    sbc l                                         ; $5651: $9d
    daa                                           ; $5652: $27
    rst $38                                       ; $5653: $ff
    ld a, e                                       ; $5654: $7b
    inc h                                         ; $5655: $24
    ld de, $037d                                  ; $5656: $11 $7d $03
    jp nc, $de43                                  ; $5659: $d2 $43 $de

    ld c, a                                       ; $565c: $4f
    and c                                         ; $565d: $a1
    nop                                           ; $565e: $00
    add sp, $59                                   ; $565f: $e8 $59
    push af                                       ; $5661: $f5
    ld c, a                                       ; $5662: $4f
    adc e                                         ; $5663: $8b
    nop                                           ; $5664: $00
    add hl, bc                                    ; $5665: $09
    ld e, [hl]                                    ; $5666: $5e
    ccf                                           ; $5667: $3f
    ld [bc], a                                    ; $5668: $02
    xor h                                         ; $5669: $ac
    inc b                                         ; $566a: $04
    ccf                                           ; $566b: $3f
    ld c, a                                       ; $566c: $4f
    ld b, l                                       ; $566d: $45
    nop                                           ; $566e: $00
    ld e, $47                                     ; $566f: $1e $47
    or d                                          ; $5671: $b2
    dec e                                         ; $5672: $1d
    ld c, [hl]                                    ; $5673: $4e
    nop                                           ; $5674: $00
    ld l, h                                       ; $5675: $6c
    nop                                           ; $5676: $00
    jr jr_0af_568a                                ; $5677: $18 $11

    ld e, a                                       ; $5679: $5f
    ld c, a                                       ; $567a: $4f
    ccf                                           ; $567b: $3f
    ld [bc], a                                    ; $567c: $02
    jr nz, jr_0af_567f                            ; $567d: $20 $00

jr_0af_567f:
    add sp, $59                                   ; $567f: $e8 $59
    ld c, a                                       ; $5681: $4f
    nop                                           ; $5682: $00
    ld a, [$000c]                                 ; $5683: $fa $0c $00
    inc e                                         ; $5686: $1c
    add sp, $59                                   ; $5687: $e8 $59
    ld a, h                                       ; $5689: $7c

jr_0af_568a:
    inc bc                                        ; $568a: $03
    rst $18                                       ; $568b: $df
    ld c, e                                       ; $568c: $4b
    add l                                         ; $568d: $85
    nop                                           ; $568e: $00
    sbc b                                         ; $568f: $98
    scf                                           ; $5690: $37
    rst $38                                       ; $5691: $ff
    ld [hl], a                                    ; $5692: $77
    ld l, b                                       ; $5693: $68
    ld [hl+], a                                   ; $5694: $22
    adc b                                         ; $5695: $88
    nop                                           ; $5696: $00
    ccf                                           ; $5697: $3f
    ld c, a                                       ; $5698: $4f
    ret z                                         ; $5699: $c8

    ld d, l                                       ; $569a: $55
    or d                                          ; $569b: $b2
    dec e                                         ; $569c: $1d
    inc hl                                        ; $569d: $23
    nop                                           ; $569e: $00
    scf                                           ; $569f: $37
    ld de, $4f3f                                  ; $56a0: $11 $3f $4f
    xor d                                         ; $56a3: $aa
    nop                                           ; $56a4: $00
    ld c, [hl]                                    ; $56a5: $4e
    nop                                           ; $56a6: $00
    or d                                          ; $56a7: $b2
    dec e                                         ; $56a8: $1d
    ccf                                           ; $56a9: $3f
    ld c, a                                       ; $56aa: $4f
    ld a, [de]                                    ; $56ab: $1a
    add hl, bc                                    ; $56ac: $09
    jr nz, jr_0af_56af                            ; $56ad: $20 $00

jr_0af_56af:
    dec sp                                        ; $56af: $3b
    add hl, bc                                    ; $56b0: $09
    ld e, a                                       ; $56b1: $5f
    ld c, a                                       ; $56b2: $4f
    ld l, e                                       ; $56b3: $6b
    nop                                           ; $56b4: $00
    jr nz, jr_0af_56b7                            ; $56b5: $20 $00

jr_0af_56b7:
    rst $00                                       ; $56b7: $c7
    ld d, l                                       ; $56b8: $55
    ld a, [$c80c]                                 ; $56b9: $fa $0c $c8
    ld d, l                                       ; $56bc: $55
    nop                                           ; $56bd: $00
    inc e                                         ; $56be: $1c
    rst $00                                       ; $56bf: $c7
    ld d, l                                       ; $56c0: $55
    sub l                                         ; $56c1: $95
    ld a, [bc]                                    ; $56c2: $0a
    cp [hl]                                       ; $56c3: $be
    daa                                           ; $56c4: $27
    ld h, b                                       ; $56c5: $60
    db $10                                        ; $56c6: $10
    sbc [hl]                                      ; $56c7: $9e
    inc de                                        ; $56c8: $13
    ld e, a                                       ; $56c9: $5f
    ld e, e                                       ; $56ca: $5b
    rlc h                                         ; $56cb: $cb $04
    xor d                                         ; $56cd: $aa
    nop                                           ; $56ce: $00
    and a                                         ; $56cf: $a7
    ld d, l                                       ; $56d0: $55
    ccf                                           ; $56d1: $3f
    ld c, a                                       ; $56d2: $4f
    or d                                          ; $56d3: $b2
    dec e                                         ; $56d4: $1d
    ld c, [hl]                                    ; $56d5: $4e
    nop                                           ; $56d6: $00
    and a                                         ; $56d7: $a7
    ld d, l                                       ; $56d8: $55
    ld e, a                                       ; $56d9: $5f
    ld c, a                                       ; $56da: $4f
    ld a, [$650c]                                 ; $56db: $fa $0c $65
    nop                                           ; $56de: $00
    ccf                                           ; $56df: $3f
    ld c, a                                       ; $56e0: $4f
    dec de                                        ; $56e1: $1b
    add hl, bc                                    ; $56e2: $09
    ld c, [hl]                                    ; $56e3: $4e
    nop                                           ; $56e4: $00
    jr nz, jr_0af_56e7                            ; $56e5: $20 $00

jr_0af_56e7:
    and a                                         ; $56e7: $a7
    ld d, c                                       ; $56e8: $51
    add a                                         ; $56e9: $87
    nop                                           ; $56ea: $00
    ld c, [hl]                                    ; $56eb: $4e
    nop                                           ; $56ec: $00
    jr nz, jr_0af_56ef                            ; $56ed: $20 $00

jr_0af_56ef:
    and a                                         ; $56ef: $a7
    ld d, c                                       ; $56f0: $51
    ld c, [hl]                                    ; $56f1: $4e
    nop                                           ; $56f2: $00
    and a                                         ; $56f3: $a7
    ld d, l                                       ; $56f4: $55
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    and a                                         ; $56f7: $a7
    ld d, c                                       ; $56f8: $51
    ld [hl-], a                                   ; $56f9: $32
    ld c, $00                                     ; $56fa: $0e $00
    jr nz, jr_0af_56fe                            ; $56fc: $20 $00

jr_0af_56fe:
    jr @+$14                                      ; $56fe: $18 $12

    ld [de], a                                    ; $5700: $12
    ld e, [hl]                                    ; $5701: $5e
    dec hl                                        ; $5702: $2b
    xor d                                         ; $5703: $aa
    nop                                           ; $5704: $00
    xor d                                         ; $5705: $aa
    nop                                           ; $5706: $00
    add [hl]                                      ; $5707: $86
    ld d, c                                       ; $5708: $51
    ccf                                           ; $5709: $3f
    ld c, a                                       ; $570a: $4f
    jr nc, jr_0af_5715                            ; $570b: $30 $08

    add [hl]                                      ; $570d: $86
    ld d, c                                       ; $570e: $51
    ld c, [hl]                                    ; $570f: $4e
    nop                                           ; $5710: $00
    ld a, [$3f0c]                                 ; $5711: $fa $0c $3f
    ld [bc], a                                    ; $5714: $02

jr_0af_5715:
    jr nz, jr_0af_5717                            ; $5715: $20 $00

jr_0af_5717:
    ccf                                           ; $5717: $3f
    ld c, a                                       ; $5718: $4f
    ld d, [hl]                                    ; $5719: $56
    dec d                                         ; $571a: $15
    adc e                                         ; $571b: $8b
    nop                                           ; $571c: $00
    jr nz, jr_0af_571f                            ; $571d: $20 $00

jr_0af_571f:
    add [hl]                                      ; $571f: $86
    ld c, l                                       ; $5720: $4d
    add [hl]                                      ; $5721: $86
    ld d, c                                       ; $5722: $51
    adc e                                         ; $5723: $8b
    nop                                           ; $5724: $00
    add [hl]                                      ; $5725: $86
    ld c, l                                       ; $5726: $4d
    add [hl]                                      ; $5727: $86
    ld d, c                                       ; $5728: $51
    and [hl]                                      ; $5729: $a6
    ld d, c                                       ; $572a: $51
    adc e                                         ; $572b: $8b
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    inc e                                         ; $572e: $1c
    ld d, e                                       ; $572f: $53
    ld c, $86                                     ; $5730: $0e $86
    ld c, l                                       ; $5732: $4d
    ld a, h                                       ; $5733: $7c
    inc bc                                        ; $5734: $03
    inc hl                                        ; $5735: $23
    nop                                           ; $5736: $00
    ld [de], a                                    ; $5737: $12
    ld [de], a                                    ; $5738: $12
    ccf                                           ; $5739: $3f
    ld c, a                                       ; $573a: $4f
    nop                                           ; $573b: $00
    jr nz, jr_0af_576e                            ; $573c: $20 $30

    ld [$463d], sp                                ; $573e: $08 $3d $46
    ccf                                           ; $5741: $3f
    ld h, a                                       ; $5742: $67
    or d                                          ; $5743: $b2
    dec e                                         ; $5744: $1d
    ld h, [hl]                                    ; $5745: $66
    ld c, l                                       ; $5746: $4d
    ld l, $00                                     ; $5747: $2e $00
    ld a, [$3f0c]                                 ; $5749: $fa $0c $3f
    ld [bc], a                                    ; $574c: $02
    ld bc, $3f04                                  ; $574d: $01 $04 $3f
    ld c, a                                       ; $5750: $4f
    adc e                                         ; $5751: $8b
    dec [hl]                                      ; $5752: $35
    adc d                                         ; $5753: $8a
    nop                                           ; $5754: $00
    jr nz, jr_0af_5757                            ; $5755: $20 $00

jr_0af_5757:
    ld h, l                                       ; $5757: $65
    ld c, l                                       ; $5758: $4d
    db $db                                        ; $5759: $db
    ld a, [hl]                                    ; $575a: $7e
    ld b, $20                                     ; $575b: $06 $20
    jr nz, jr_0af_575f                            ; $575d: $20 $00

jr_0af_575f:
    ld h, l                                       ; $575f: $65
    ld c, l                                       ; $5760: $4d
    push af                                       ; $5761: $f5
    ld c, a                                       ; $5762: $4f
    ld h, [hl]                                    ; $5763: $66
    ld c, l                                       ; $5764: $4d
    nop                                           ; $5765: $00
    inc e                                         ; $5766: $1c
    ld d, e                                       ; $5767: $53
    ld c, $65                                     ; $5768: $0e $65
    ld c, l                                       ; $576a: $4d
    ld e, h                                       ; $576b: $5c
    inc bc                                        ; $576c: $03
    nop                                           ; $576d: $00

jr_0af_576e:
    nop                                           ; $576e: $00
    ld [hl], h                                    ; $576f: $74
    ld a, [bc]                                    ; $5770: $0a
    jr nc, jr_0af_577b                            ; $5771: $30 $08

    nop                                           ; $5773: $00
    jr nz, @+$08                                  ; $5774: $20 $06

    nop                                           ; $5776: $00
    db $fc                                        ; $5777: $fc
    inc e                                         ; $5778: $1c
    db $fc                                        ; $5779: $fc
    dec a                                         ; $577a: $3d

jr_0af_577b:
    jr nc, @+$0a                                  ; $577b: $30 $08

    ld [bc], a                                    ; $577d: $02
    nop                                           ; $577e: $00
    ld h, l                                       ; $577f: $65
    ld c, c                                       ; $5780: $49
    ld l, $00                                     ; $5781: $2e $00
    ld a, [$030c]                                 ; $5783: $fa $0c $03
    db $10                                        ; $5786: $10
    cp e                                          ; $5787: $bb
    ld e, [hl]                                    ; $5788: $5e
    adc l                                         ; $5789: $8d
    add hl, hl                                    ; $578a: $29
    xor d                                         ; $578b: $aa
    nop                                           ; $578c: $00
    jr nz, jr_0af_578f                            ; $578d: $20 $00

jr_0af_578f:
    sbc d                                         ; $578f: $9a
    halt                                          ; $5790: $76
    ld b, l                                       ; $5791: $45
    ld c, c                                       ; $5792: $49
    ld b, $20                                     ; $5793: $06 $20
    jr nz, jr_0af_5797                            ; $5795: $20 $00

jr_0af_5797:
    ld b, l                                       ; $5797: $45

jr_0af_5798:
    ld c, c                                       ; $5798: $49
    or c                                          ; $5799: $b1
    ld b, e                                       ; $579a: $43
    ld c, b                                       ; $579b: $48
    ld e, $00                                     ; $579c: $1e $00
    inc e                                         ; $579e: $1c
    rst $10                                       ; $579f: $d7
    ld b, $45                                     ; $57a0: $06 $45
    ld c, c                                       ; $57a2: $49
    cp [hl]                                       ; $57a3: $be
    inc hl                                        ; $57a4: $23
    nop                                           ; $57a5: $00
    jr jr_0af_5798                                ; $57a6: $18 $f0

    ld de, $0830                                  ; $57a8: $11 $30 $08
    ld sp, hl                                     ; $57ab: $f9
    ld [bc], a                                    ; $57ac: $02
    ld b, $00                                     ; $57ad: $06 $00
    ld [hl], l                                    ; $57af: $75
    db $10                                        ; $57b0: $10
    ld sp, $bc08                                  ; $57b1: $31 $08 $bc
    inc d                                         ; $57b4: $14
    ld bc, $4400                                  ; $57b5: $01 $00 $44
    ld b, l                                       ; $57b8: $45
    jr c, jr_0af_5829                             ; $57b9: $38 $6e

    ld b, $20                                     ; $57bb: $06 $20
    ld b, $18                                     ; $57bd: $06 $18
    ld a, c                                       ; $57bf: $79
    halt                                          ; $57c0: $76
    call $3f30                                    ; $57c1: $cd $30 $3f
    ld c, a                                       ; $57c4: $4f
    ld [bc], a                                    ; $57c5: $02
    inc c                                         ; $57c6: $0c
    inc de                                        ; $57c7: $13
    ld d, c                                       ; $57c8: $51
    dec b                                         ; $57c9: $05
    ld b, c                                       ; $57ca: $41
    cp d                                          ; $57cb: $ba
    ld a, d                                       ; $57cc: $7a
    ld b, b                                       ; $57cd: $40
    nop                                           ; $57ce: $00
    ld b, h                                       ; $57cf: $44
    ld b, l                                       ; $57d0: $45
    sub c                                         ; $57d1: $91
    ld b, e                                       ; $57d2: $43
    jr z, jr_0af_57f3                             ; $57d3: $28 $1e

    nop                                           ; $57d5: $00
    inc e                                         ; $57d6: $1c
    ld a, [hl-]                                   ; $57d7: $3a
    rlca                                          ; $57d8: $07
    rst $18                                       ; $57d9: $df
    ld c, e                                       ; $57da: $4b
    ld b, h                                       ; $57db: $44
    ld c, c                                       ; $57dc: $49
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00
    ld [hl-], a                                   ; $57df: $32
    ld c, $7c                                     ; $57e0: $0e $7c
    inc bc                                        ; $57e2: $03
    nop                                           ; $57e3: $00
    jr nz, jr_0af_57e6                            ; $57e4: $20 $00

jr_0af_57e6:
    nop                                           ; $57e6: $00
    ld sp, $7508                                  ; $57e7: $31 $08 $75
    db $10                                        ; $57ea: $10
    ld b, $00                                     ; $57eb: $06 $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    inc de                                        ; $57ef: $13
    ld d, c                                       ; $57f0: $51
    sbc d                                         ; $57f1: $9a
    ld l, d                                       ; $57f2: $6a

jr_0af_57f3:
    ld b, [hl]                                    ; $57f3: $46
    inc h                                         ; $57f4: $24
    ld b, $20                                     ; $57f5: $06 $20
    inc de                                        ; $57f7: $13
    ld d, c                                       ; $57f8: $51
    cp d                                          ; $57f9: $ba
    ld a, d                                       ; $57fa: $7a
    ccf                                           ; $57fb: $3f
    ld c, a                                       ; $57fc: $4f
    ld [hl+], a                                   ; $57fd: $22
    nop                                           ; $57fe: $00
    ld d, h                                       ; $57ff: $54
    ld d, l                                       ; $5800: $55
    cp d                                          ; $5801: $ba
    ld a, d                                       ; $5802: $7a
    rlca                                          ; $5803: $07
    inc h                                         ; $5804: $24
    jr nz, jr_0af_5807                            ; $5805: $20 $00

jr_0af_5807:
    ld c, b                                       ; $5807: $48
    ld e, $b2                                     ; $5808: $1e $b2
    ld b, e                                       ; $580a: $43
    inc h                                         ; $580b: $24
    ld de, $0000                                  ; $580c: $11 $00 $00
    add hl, de                                    ; $580f: $19
    inc bc                                        ; $5810: $03
    cp [hl]                                       ; $5811: $be
    inc hl                                        ; $5812: $23
    nop                                           ; $5813: $00

jr_0af_5814:
    jr nz, jr_0af_5816                            ; $5814: $20 $00

jr_0af_5816:
    nop                                           ; $5816: $00
    ldh a, [rNR11]                                ; $5817: $f0 $11
    add hl, de                                    ; $5819: $19
    rlca                                          ; $581a: $07
    nop                                           ; $581b: $00
    jr nz, @+$06                                  ; $581c: $20 $04

    nop                                           ; $581e: $00

jr_0af_581f:
    add hl, de                                    ; $581f: $19
    ld h, e                                       ; $5820: $63
    ld sp, $bd08                                  ; $5821: $31 $08 $bd
    ld [hl], a                                    ; $5824: $77
    ld b, $20                                     ; $5825: $06 $20
    sub $65                                       ; $5827: $d6 $65

jr_0af_5829:
    ccf                                           ; $5829: $3f
    ld c, a                                       ; $582a: $4f
    ld c, h                                       ; $582b: $4c
    ld hl, $2006                                  ; $582c: $21 $06 $20
    inc de                                        ; $582f: $13
    ld d, c                                       ; $5830: $51
    sbc d                                         ; $5831: $9a
    halt                                          ; $5832: $76
    ccf                                           ; $5833: $3f
    ld c, a                                       ; $5834: $4f
    jr nz, jr_0af_5837                            ; $5835: $20 $00

jr_0af_5837:
    inc sp                                        ; $5837: $33
    ld d, c                                       ; $5838: $51
    jp hl                                         ; $5839: $e9


    db $10                                        ; $583a: $10
    db $dd                                        ; $583b: $dd
    ld b, [hl]                                    ; $583c: $46
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    push af                                       ; $583f: $f5
    ld c, a                                       ; $5840: $4f
    ld c, b                                       ; $5841: $48
    ld e, $24                                     ; $5842: $1e $24
    ld de, $2000                                  ; $5844: $11 $00 $20
    or [hl]                                       ; $5847: $b6
    ld a, [bc]                                    ; $5848: $0a
    cp [hl]                                       ; $5849: $be
    cpl                                           ; $584a: $2f
    ld e, e                                       ; $584b: $5b
    inc bc                                        ; $584c: $03
    nop                                           ; $584d: $00
    jr nz, jr_0af_581f                            ; $584e: $20 $cf

    dec d                                         ; $5850: $15
    ld hl, sp+$06                                 ; $5851: $f8 $06
    ld d, e                                       ; $5853: $53
    ld [de], a                                    ; $5854: $12

jr_0af_5855:
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00

jr_0af_5857:
    ld e, e                                       ; $5857: $5b
    ld l, a                                       ; $5858: $6f
    inc b                                         ; $5859: $04
    ld b, c                                       ; $585a: $41
    add hl, hl                                    ; $585b: $29
    dec h                                         ; $585c: $25
    dec h                                         ; $585d: $25
    db $10                                        ; $585e: $10
    rla                                           ; $585f: $17
    ld l, d                                       ; $5860: $6a
    or d                                          ; $5861: $b2
    dec e                                         ; $5862: $1d
    ld e, h                                       ; $5863: $5c
    ld h, e                                       ; $5864: $63
    dec b                                         ; $5865: $05
    inc e                                         ; $5866: $1c
    ld a, [c]                                     ; $5867: $f2
    ld c, h                                       ; $5868: $4c
    ld a, c                                       ; $5869: $79
    ld [hl], d                                    ; $586a: $72
    ld l, h                                       ; $586b: $6c
    jr c, jr_0af_5814                             ; $586c: $38 $a6

    dec d                                         ; $586e: $15
    ld e, h                                       ; $586f: $5c
    ld c, a                                       ; $5870: $4f
    inc de                                        ; $5871: $13
    ld d, c                                       ; $5872: $51
    xor d                                         ; $5873: $aa
    nop                                           ; $5874: $00
    jp nz, $f508                                  ; $5875: $c2 $08 $f5

    ld c, a                                       ; $5878: $4f
    ld c, b                                       ; $5879: $48
    ld e, $be                                     ; $587a: $1e $be
    inc de                                        ; $587c: $13
    nop                                           ; $587d: $00
    jr nz, jr_0af_58b2                            ; $587e: $20 $32

    ld [de], a                                    ; $5880: $12
    ld e, e                                       ; $5881: $5b
    inc bc                                        ; $5882: $03

jr_0af_5883:
    or a                                          ; $5883: $b7
    ld a, [bc]                                    ; $5884: $0a
    nop                                           ; $5885: $00
    jr nz, jr_0af_5857                            ; $5886: $20 $cf

    dec d                                         ; $5888: $15
    sub l                                         ; $5889: $95
    ld c, $32                                     ; $588a: $0e $32
    ld [de], a                                    ; $588c: $12
    ld [bc], a                                    ; $588d: $02
    db $10                                        ; $588e: $10
    ret c                                         ; $588f: $d8

    ld b, $ba                                     ; $5890: $06 $ba
    ld [hl], d                                    ; $5892: $72
    dec b                                         ; $5893: $05
    add hl, sp                                    ; $5894: $39
    ld [bc], a                                    ; $5895: $02
    db $10                                        ; $5896: $10
    or [hl]                                       ; $5897: $b6
    ld h, c                                       ; $5898: $61
    rst $38                                       ; $5899: $ff
    ld a, a                                       ; $589a: $7f
    jp hl                                         ; $589b: $e9


    db $10                                        ; $589c: $10
    ld b, $20                                     ; $589d: $06 $20
    inc sp                                        ; $589f: $33
    ld d, l                                       ; $58a0: $55
    db $db                                        ; $58a1: $db
    ld a, [hl]                                    ; $58a2: $7e
    xor a                                         ; $58a3: $af
    ld b, h                                       ; $58a4: $44
    and [hl]                                      ; $58a5: $a6
    ld [$5113], sp                                ; $58a6: $08 $13 $51
    adc $1d                                       ; $58a9: $ce $1d
    rra                                           ; $58ab: $1f
    ld c, e                                       ; $58ac: $4b
    add [hl]                                      ; $58ad: $86
    nop                                           ; $58ae: $00
    push af                                       ; $58af: $f5
    ld c, a                                       ; $58b0: $4f
    ld c, b                                       ; $58b1: $48

jr_0af_58b2:
    ld e, $5c                                     ; $58b2: $1e $5c
    inc bc                                        ; $58b4: $03
    nop                                           ; $58b5: $00

jr_0af_58b6:
    jr nz, jr_0af_58c8                            ; $58b6: $20 $10

    ld d, $96                                     ; $58b8: $16 $96
    ld c, $5c                                     ; $58ba: $0e $5c
    inc bc                                        ; $58bc: $03
    nop                                           ; $58bd: $00
    jr nz, jr_0af_5855                            ; $58be: $20 $95

    ld c, $7c                                     ; $58c0: $0e $7c
    inc bc                                        ; $58c2: $03
    jp hl                                         ; $58c3: $e9


    db $10                                        ; $58c4: $10
    ld [bc], a                                    ; $58c5: $02
    db $10                                        ; $58c6: $10
    sbc c                                         ; $58c7: $99

jr_0af_58c8:
    ld l, d                                       ; $58c8: $6a
    inc b                                         ; $58c9: $04
    ld b, c                                       ; $58ca: $41
    ldh a, [rNR11]                                ; $58cb: $f0 $11
    ld [bc], a                                    ; $58cd: $02
    db $10                                        ; $58ce: $10
    inc [hl]                                      ; $58cf: $34
    ld e, c                                       ; $58d0: $59
    ld b, $20                                     ; $58d1: $06 $20
    add hl, hl                                    ; $58d3: $29
    dec h                                         ; $58d4: $25
    ld b, $20                                     ; $58d5: $06 $20
    inc de                                        ; $58d7: $13
    ld d, c                                       ; $58d8: $51
    sbc d                                         ; $58d9: $9a
    ld a, d                                       ; $58da: $7a
    ld c, d                                       ; $58db: $4a
    jr nc, jr_0af_5883                            ; $58dc: $30 $a5

    inc b                                         ; $58de: $04
    ld c, b                                       ; $58df: $48
    ld e, $13                                     ; $58e0: $1e $13
    ld d, c                                       ; $58e2: $51
    push af                                       ; $58e3: $f5
    ld c, a                                       ; $58e4: $4f
    inc h                                         ; $58e5: $24

jr_0af_58e6:
    ld de, $4f7b                                  ; $58e6: $11 $7b $4f
    ret nc                                        ; $58e9: $d0

    add hl, de                                    ; $58ea: $19
    xor d                                         ; $58eb: $aa
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    jr nz, jr_0af_5901                            ; $58ee: $20 $11

    ld [de], a                                    ; $58f0: $12
    ld a, [de]                                    ; $58f1: $1a
    inc bc                                        ; $58f2: $03
    xor d                                         ; $58f3: $aa
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00

jr_0af_58f6:
    jr nz, jr_0af_58b6                            ; $58f6: $20 $be

    dec hl                                        ; $58f8: $2b
    rst $38                                       ; $58f9: $ff
    ld e, a                                       ; $58fa: $5f
    add hl, hl                                    ; $58fb: $29
    dec h                                         ; $58fc: $25
    ld [bc], a                                    ; $58fd: $02
    db $10                                        ; $58fe: $10
    ld d, h                                       ; $58ff: $54
    ld e, c                                       ; $5900: $59

jr_0af_5901:
    rst $10                                       ; $5901: $d7
    ld c, $87                                     ; $5902: $0e $87
    inc a                                         ; $5904: $3c
    ld bc, $de08                                  ; $5905: $01 $08 $de
    ld a, e                                       ; $5908: $7b
    ld a, [c]                                     ; $5909: $f2
    ld c, h                                       ; $590a: $4c
    dec b                                         ; $590b: $05
    inc e                                         ; $590c: $1c
    jr nz, jr_0af_590f                            ; $590d: $20 $00

jr_0af_590f:
    ld a, [c]                                     ; $590f: $f2
    ld c, h                                       ; $5910: $4c
    jr z, jr_0af_593b                             ; $5911: $28 $28

    rst $30                                       ; $5913: $f7
    ld l, c                                       ; $5914: $69
    jr nz, jr_0af_5917                            ; $5915: $20 $00

jr_0af_5917:
    push af                                       ; $5917: $f5
    ld c, a                                       ; $5918: $4f
    ld c, b                                       ; $5919: $48
    ld e, $24                                     ; $591a: $1e $24
    ld de, $00aa                                  ; $591c: $11 $aa $00
    ld e, e                                       ; $591f: $5b
    dec bc                                        ; $5920: $0b
    ccf                                           ; $5921: $3f
    ld c, a                                       ; $5922: $4f
    or d                                          ; $5923: $b2
    dec e                                         ; $5924: $1d
    nop                                           ; $5925: $00
    jr nz, jr_0af_58e6                            ; $5926: $20 $be

    inc de                                        ; $5928: $13
    ccf                                           ; $5929: $3f
    ld c, a                                       ; $592a: $4f
    or d                                          ; $592b: $b2
    dec e                                         ; $592c: $1d
    nop                                           ; $592d: $00
    jr nz, @-$20                                  ; $592e: $20 $de

    ld a, e                                       ; $5930: $7b
    ld a, [c]                                     ; $5931: $f2
    ld c, h                                       ; $5932: $4c
    dec b                                         ; $5933: $05
    inc e                                         ; $5934: $1c
    inc b                                         ; $5935: $04
    jr jr_0af_58f6                                ; $5936: $18 $be

    inc de                                        ; $5938: $13
    inc de                                        ; $5939: $13
    ld d, c                                       ; $593a: $51

jr_0af_593b:
    rst $18                                       ; $593b: $df
    ld h, e                                       ; $593c: $63
    inc b                                         ; $593d: $04
    jr @+$15                                      ; $593e: $18 $13

    ld d, c                                       ; $5940: $51
    rst $38                                       ; $5941: $ff
    ld a, a                                       ; $5942: $7f
    add hl, hl                                    ; $5943: $29
    inc l                                         ; $5944: $2c
    jr nz, jr_0af_5947                            ; $5945: $20 $00

jr_0af_5947:
    ld [de], a                                    ; $5947: $12
    ld d, c                                       ; $5948: $51
    ld b, $20                                     ; $5949: $06 $20
    ld c, d                                       ; $594b: $4a
    jr nc, jr_0af_5972                            ; $594c: $30 $24

    ld de, $4ff5                                  ; $594e: $11 $f5 $4f
    ld c, b                                       ; $5951: $48
    ld e, $aa                                     ; $5952: $1e $aa
    nop                                           ; $5954: $00
    xor d                                         ; $5955: $aa
    nop                                           ; $5956: $00
    cp [hl]                                       ; $5957: $be
    inc de                                        ; $5958: $13
    ld a, a                                       ; $5959: $7f
    ld d, e                                       ; $595a: $53
    or d                                          ; $595b: $b2
    dec e                                         ; $595c: $1d
    nop                                           ; $595d: $00
    jr nz, @-$40                                  ; $595e: $20 $be

    inc de                                        ; $5960: $13
    ld a, a                                       ; $5961: $7f
    ld d, e                                       ; $5962: $53
    or d                                          ; $5963: $b2
    dec e                                         ; $5964: $1d
    nop                                           ; $5965: $00
    jr nz, jr_0af_597b                            ; $5966: $20 $13

    ld d, c                                       ; $5968: $51
    rst $38                                       ; $5969: $ff
    ld a, a                                       ; $596a: $7f
    add hl, hl                                    ; $596b: $29
    inc l                                         ; $596c: $2c
    ld [bc], a                                    ; $596d: $02
    db $10                                        ; $596e: $10
    cp [hl]                                       ; $596f: $be
    scf                                           ; $5970: $37
    xor [hl]                                      ; $5971: $ae

jr_0af_5972:
    ld b, b                                       ; $5972: $40
    rst $38                                       ; $5973: $ff
    ld l, e                                       ; $5974: $6b
    ld [bc], a                                    ; $5975: $02
    db $10                                        ; $5976: $10
    inc de                                        ; $5977: $13
    ld d, c                                       ; $5978: $51
    ld b, $20                                     ; $5979: $06 $20

jr_0af_597b:
    add hl, bc                                    ; $597b: $09
    jr nc, jr_0af_599e                            ; $597c: $30 $20

    nop                                           ; $597e: $00
    inc de                                        ; $597f: $13
    ld d, c                                       ; $5980: $51
    ld b, $20                                     ; $5981: $06 $20
    ld c, d                                       ; $5983: $4a
    jr nc, jr_0af_59a6                            ; $5984: $30 $20

    nop                                           ; $5986: $00
    push af                                       ; $5987: $f5
    ld c, a                                       ; $5988: $4f
    ld b, h                                       ; $5989: $44
    ld de, $00aa                                  ; $598a: $11 $aa $00
    nop                                           ; $598d: $00
    jr nz, jr_0af_5a0e                            ; $598e: $20 $7e

    dec sp                                        ; $5990: $3b
    rlc b                                         ; $5991: $cb $00
    rst $38                                       ; $5993: $ff
    ld l, a                                       ; $5994: $6f
    nop                                           ; $5995: $00
    jr nz, jr_0af_5a16                            ; $5996: $20 $7e

    dec sp                                        ; $5998: $3b
    rlc b                                         ; $5999: $cb $00
    rst $38                                       ; $599b: $ff
    ld l, a                                       ; $599c: $6f
    nop                                           ; $599d: $00

jr_0af_599e:
    jr nz, @+$15                                  ; $599e: $20 $13

    ld d, c                                       ; $59a0: $51
    ld b, $20                                     ; $59a1: $06 $20
    add hl, bc                                    ; $59a3: $09
    jr nc, jr_0af_59a6                            ; $59a4: $30 $00

jr_0af_59a6:
    ld [$0f5b], sp                                ; $59a6: $08 $5b $0f
    rst $38                                       ; $59a9: $ff
    ld h, e                                       ; $59aa: $63
    ld c, d                                       ; $59ab: $4a
    jr nc, jr_0af_59ae                            ; $59ac: $30 $00

jr_0af_59ae:
    nop                                           ; $59ae: $00
    dec bc                                        ; $59af: $0b
    jr c, jr_0af_59b6                             ; $59b0: $38 $04

    jr jr_0af_59c7                                ; $59b2: $18 $13

    ld d, c                                       ; $59b4: $51
    nop                                           ; $59b5: $00

jr_0af_59b6:
    nop                                           ; $59b6: $00
    ld de, $5312                                  ; $59b7: $11 $12 $53
    ld c, $74                                     ; $59ba: $0e $74
    ld c, $00                                     ; $59bc: $0e $00
    nop                                           ; $59be: $00
    ld de, $5c12                                  ; $59bf: $11 $12 $5c
    inc bc                                        ; $59c2: $03
    cp [hl]                                       ; $59c3: $be
    dec hl                                        ; $59c4: $2b
    nop                                           ; $59c5: $00
    inc c                                         ; $59c6: $0c

jr_0af_59c7:
    ld de, $df0e                                  ; $59c7: $11 $0e $df
    ld d, a                                       ; $59ca: $57
    ld a, h                                       ; $59cb: $7c
    dec bc                                        ; $59cc: $0b
    nop                                           ; $59cd: $00
    jr nz, jr_0af_59e1                            ; $59ce: $20 $11

    ld c, $df                                     ; $59d0: $0e $df

jr_0af_59d2:
    ld d, a                                       ; $59d2: $57
    ld a, h                                       ; $59d3: $7c
    dec bc                                        ; $59d4: $0b
    nop                                           ; $59d5: $00
    jr nz, jr_0af_59e3                            ; $59d6: $20 $0b

    jr c, jr_0af_59de                             ; $59d8: $38 $04

jr_0af_59da:
    jr @+$15                                      ; $59da: $18 $13

    ld d, c                                       ; $59dc: $51
    nop                                           ; $59dd: $00

jr_0af_59de:
    jr nz, jr_0af_5a33                            ; $59de: $20 $53

    ld [de], a                                    ; $59e0: $12

jr_0af_59e1:
    sbc $57                                       ; $59e1: $de $57

jr_0af_59e3:
    ld a, l                                       ; $59e3: $7d
    rlca                                          ; $59e4: $07
    ld de, $be12                                  ; $59e5: $11 $12 $be
    ld b, a                                       ; $59e8: $47
    ld a, h                                       ; $59e9: $7c
    dec bc                                        ; $59ea: $0b
    rst $38                                       ; $59eb: $ff
    ld l, a                                       ; $59ec: $6f
    ld de, $7412                                  ; $59ed: $11 $12 $74
    ld c, $b6                                     ; $59f0: $0e $b6
    ld a, [bc]                                    ; $59f2: $0a
    ld [hl-], a                                   ; $59f3: $32
    ld [de], a                                    ; $59f4: $12
    rst $10                                       ; $59f5: $d7
    ld b, $be                                     ; $59f6: $06 $be
    dec sp                                        ; $59f8: $3b
    rst $38                                       ; $59f9: $ff
    ld l, a                                       ; $59fa: $6f
    ld a, l                                       ; $59fb: $7d
    dec bc                                        ; $59fc: $0b
    nop                                           ; $59fd: $00
    jr nz, jr_0af_5a74                            ; $59fe: $20 $74

    ld a, [bc]                                    ; $5a00: $0a
    sbc $53                                       ; $5a01: $de $53
    sbc l                                         ; $5a03: $9d
    dec bc                                        ; $5a04: $0b
    nop                                           ; $5a05: $00
    jr nz, jr_0af_5a7c                            ; $5a06: $20 $74

    ld a, [bc]                                    ; $5a08: $0a
    sbc $53                                       ; $5a09: $de $53
    sbc l                                         ; $5a0b: $9d
    dec bc                                        ; $5a0c: $0b
    nop                                           ; $5a0d: $00

jr_0af_5a0e:
    jr nz, jr_0af_5a10                            ; $5a0e: $20 $00

jr_0af_5a10:
    jr nz, jr_0af_5a12                            ; $5a10: $20 $00

jr_0af_5a12:
    jr nz, jr_0af_59d2                            ; $5a12: $20 $be

    ld h, a                                       ; $5a14: $67
    nop                                           ; $5a15: $00

jr_0af_5a16:
    jr nz, jr_0af_5a18                            ; $5a16: $20 $00

jr_0af_5a18:
    jr nz, jr_0af_5a1a                            ; $5a18: $20 $00

jr_0af_5a1a:
    jr nz, jr_0af_59da                            ; $5a1a: $20 $be

    ld h, a                                       ; $5a1c: $67
    nop                                           ; $5a1d: $00
    inc b                                         ; $5a1e: $04
    halt                                          ; $5a1f: $76
    ld b, $00                                     ; $5a20: $06 $00
    jr nz, @-$40                                  ; $5a22: $20 $be

    ld h, a                                       ; $5a24: $67
    nop                                           ; $5a25: $00
    inc b                                         ; $5a26: $04
    pop af                                        ; $5a27: $f1
    ld bc, $077f                                  ; $5a28: $01 $7f $07
    nop                                           ; $5a2b: $00
    jr nz, jr_0af_5a2e                            ; $5a2c: $20 $00

jr_0af_5a2e:
    jr nz, @-$0d                                  ; $5a2e: $20 $f1

    ld bc, $077f                                  ; $5a30: $01 $7f $07

jr_0af_5a33:
    nop                                           ; $5a33: $00
    jr nz, jr_0af_5a36                            ; $5a34: $20 $00

jr_0af_5a36:
    jr nz, @-$0d                                  ; $5a36: $20 $f1

    ld bc, $077f                                  ; $5a38: $01 $7f $07
    nop                                           ; $5a3b: $00
    jr nz, jr_0af_5a3e                            ; $5a3c: $20 $00

jr_0af_5a3e:
    jr nz, @-$0d                                  ; $5a3e: $20 $f1

    ld bc, $077f                                  ; $5a40: $01 $7f $07
    nop                                           ; $5a43: $00
    jr nz, jr_0af_5a46                            ; $5a44: $20 $00

jr_0af_5a46:
    jr nz, jr_0af_5abe                            ; $5a46: $20 $76

    ld b, $00                                     ; $5a48: $06 $00
    jr nz, @-$40                                  ; $5a4a: $20 $be

    ld h, a                                       ; $5a4c: $67
    nop                                           ; $5a4d: $00
    jr nz, jr_0af_5ac6                            ; $5a4e: $20 $76

    ld b, $00                                     ; $5a50: $06 $00
    jr nz, jr_0af_5a12                            ; $5a52: $20 $be

    ld h, a                                       ; $5a54: $67
    nop                                           ; $5a55: $00
    inc b                                         ; $5a56: $04
    ld l, l                                       ; $5a57: $6d
    ld bc, $2000                                  ; $5a58: $01 $00 $20
    cp [hl]                                       ; $5a5b: $be
    ld h, a                                       ; $5a5c: $67
    nop                                           ; $5a5d: $00
    inc b                                         ; $5a5e: $04
    push af                                       ; $5a5f: $f5
    inc b                                         ; $5a60: $04
    rst $38                                       ; $5a61: $ff
    ld a, a                                       ; $5a62: $7f
    cp [hl]                                       ; $5a63: $be
    dec b                                         ; $5a64: $05
    nop                                           ; $5a65: $00
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    jr nz, @+$01                                  ; $5a68: $20 $ff

    ld a, a                                       ; $5a6a: $7f
    cp [hl]                                       ; $5a6b: $be
    dec b                                         ; $5a6c: $05
    nop                                           ; $5a6d: $00
    jr nz, jr_0af_5a70                            ; $5a6e: $20 $00

jr_0af_5a70:
    jr nz, @+$01                                  ; $5a70: $20 $ff

    ld a, a                                       ; $5a72: $7f
    cp [hl]                                       ; $5a73: $be

jr_0af_5a74:
    dec b                                         ; $5a74: $05
    nop                                           ; $5a75: $00
    jr nz, jr_0af_5a78                            ; $5a76: $20 $00

jr_0af_5a78:
    jr nz, @+$01                                  ; $5a78: $20 $ff

    ld a, a                                       ; $5a7a: $7f
    cp [hl]                                       ; $5a7b: $be

jr_0af_5a7c:
    dec b                                         ; $5a7c: $05
    nop                                           ; $5a7d: $00
    jr nz, @+$6f                                  ; $5a7e: $20 $6d

    ld bc, $2000                                  ; $5a80: $01 $00 $20
    cp [hl]                                       ; $5a83: $be
    ld h, a                                       ; $5a84: $67
    nop                                           ; $5a85: $00
    jr nz, jr_0af_5af5                            ; $5a86: $20 $6d

    ld bc, $2000                                  ; $5a88: $01 $00 $20
    cp [hl]                                       ; $5a8b: $be
    ld h, a                                       ; $5a8c: $67
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    jr nz, jr_0af_5a92                            ; $5a90: $20 $00

jr_0af_5a92:
    inc b                                         ; $5a92: $04
    cp [hl]                                       ; $5a93: $be
    ld h, a                                       ; $5a94: $67
    nop                                           ; $5a95: $00
    nop                                           ; $5a96: $00
    ld a, a                                       ; $5a97: $7f
    ld [hl+], a                                   ; $5a98: $22
    ld [hl-], a                                   ; $5a99: $32
    dec c                                         ; $5a9a: $0d
    rst $38                                       ; $5a9b: $ff
    ld a, a                                       ; $5a9c: $7f
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    rst $38                                       ; $5a9f: $ff
    ld a, a                                       ; $5aa0: $7f
    nop                                           ; $5aa1: $00
    jr nz, @+$01                                  ; $5aa2: $20 $ff

    ld a, a                                       ; $5aa4: $7f
    nop                                           ; $5aa5: $00
    jr nz, @+$01                                  ; $5aa6: $20 $ff

    ld a, a                                       ; $5aa8: $7f

jr_0af_5aa9:
    nop                                           ; $5aa9: $00
    jr nz, @+$01                                  ; $5aaa: $20 $ff

    ld a, a                                       ; $5aac: $7f
    nop                                           ; $5aad: $00
    jr nz, @+$01                                  ; $5aae: $20 $ff

    ld a, a                                       ; $5ab0: $7f
    nop                                           ; $5ab1: $00
    jr nz, @+$01                                  ; $5ab2: $20 $ff

    ld a, a                                       ; $5ab4: $7f
    nop                                           ; $5ab5: $00
    jr nz, jr_0af_5ab8                            ; $5ab6: $20 $00

jr_0af_5ab8:
    jr nz, jr_0af_5aba                            ; $5ab8: $20 $00

jr_0af_5aba:
    inc b                                         ; $5aba: $04
    cp [hl]                                       ; $5abb: $be
    ld h, a                                       ; $5abc: $67
    nop                                           ; $5abd: $00

jr_0af_5abe:
    inc b                                         ; $5abe: $04
    nop                                           ; $5abf: $00
    jr nz, jr_0af_5aa9                            ; $5ac0: $20 $e7

    nop                                           ; $5ac2: $00
    ld hl, $0008                                  ; $5ac3: $21 $08 $00

jr_0af_5ac6:
    nop                                           ; $5ac6: $00
    sub d                                         ; $5ac7: $92
    dec e                                         ; $5ac8: $1d
    cp h                                          ; $5ac9: $bc
    ld a, [hl-]                                   ; $5aca: $3a
    nop                                           ; $5acb: $00
    inc e                                         ; $5acc: $1c
    nop                                           ; $5acd: $00
    inc b                                         ; $5ace: $04
    cp d                                          ; $5acf: $ba
    ld a, c                                       ; $5ad0: $79
    ld a, [de]                                    ; $5ad1: $1a
    ld h, $cd                                     ; $5ad2: $26 $cd
    ld [$0000], sp                                ; $5ad4: $08 $00 $00
    ld [hl], c                                    ; $5ad7: $71
    ld bc, $79ba                                  ; $5ad8: $01 $ba $79
    rst $38                                       ; $5adb: $ff
    ld b, $00                                     ; $5adc: $06 $00
    jr nz, jr_0af_5b51                            ; $5ade: $20 $71

    ld bc, $79ba                                  ; $5ae0: $01 $ba $79
    rst $38                                       ; $5ae3: $ff
    ld b, $00                                     ; $5ae4: $06 $00
    jr nz, jr_0af_5b59                            ; $5ae6: $20 $71

    ld bc, $79ba                                  ; $5ae8: $01 $ba $79
    rst $38                                       ; $5aeb: $ff
    ld b, $00                                     ; $5aec: $06 $00
    jr nz, @-$6c                                  ; $5aee: $20 $92

    dec e                                         ; $5af0: $1d
    cp h                                          ; $5af1: $bc
    ld a, [hl-]                                   ; $5af2: $3a
    nop                                           ; $5af3: $00
    inc e                                         ; $5af4: $1c

jr_0af_5af5:
    nop                                           ; $5af5: $00
    inc d                                         ; $5af6: $14
    cp b                                          ; $5af7: $b8
    ld b, $6d                                     ; $5af8: $06 $6d
    ld bc, $07ff                                  ; $5afa: $01 $ff $07
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    ld hl, sp+$21                                 ; $5aff: $f8 $21
    rst $38                                       ; $5b01: $ff
    ld a, a                                       ; $5b02: $7f
    ld a, e                                       ; $5b03: $7b
    ld [hl-], a                                   ; $5b04: $32
    nop                                           ; $5b05: $00
    inc b                                         ; $5b06: $04
    halt                                          ; $5b07: $76
    dec b                                         ; $5b08: $05
    db $ed                                        ; $5b09: $ed

jr_0af_5b0a:
    inc c                                         ; $5b0a: $0c
    sbc a                                         ; $5b0b: $9f
    ld l, $01                                     ; $5b0c: $2e $01
    nop                                           ; $5b0e: $00
    cp d                                          ; $5b0f: $ba
    ld a, c                                       ; $5b10: $79
    ldh a, [rSB]                                  ; $5b11: $f0 $01
    sbc $06                                       ; $5b13: $de $06
    nop                                           ; $5b15: $00
    inc b                                         ; $5b16: $04
    nop                                           ; $5b17: $00
    jr nz, jr_0af_5b0a                            ; $5b18: $20 $f0

    ld bc, $06de                                  ; $5b1a: $01 $de $06
    nop                                           ; $5b1d: $00
    jr nz, jr_0af_5b20                            ; $5b1e: $20 $00

jr_0af_5b20:
    jr nz, @-$0e                                  ; $5b20: $20 $f0

    ld bc, $06de                                  ; $5b22: $01 $de $06
    nop                                           ; $5b25: $00
    jr nz, jr_0af_5b20                            ; $5b26: $20 $f8

    ld hl, $7fff                                  ; $5b28: $21 $ff $7f
    ld a, e                                       ; $5b2b: $7b
    ld [hl-], a                                   ; $5b2c: $32
    ld bc, $1c00                                  ; $5b2d: $01 $00 $1c
    dec b                                         ; $5b30: $05

jr_0af_5b31:
    nop                                           ; $5b31: $00
    jr nz, jr_0af_5b52                            ; $5b32: $20 $1e

    ld b, $00                                     ; $5b34: $06 $00
    nop                                           ; $5b36: $00
    ccf                                           ; $5b37: $3f
    ld b, e                                       ; $5b38: $43
    ld [hl], l                                    ; $5b39: $75
    dec d                                         ; $5b3a: $15
    rst $38                                       ; $5b3b: $ff
    ld a, a                                       ; $5b3c: $7f
    nop                                           ; $5b3d: $00
    inc b                                         ; $5b3e: $04
    ld [hl-], a                                   ; $5b3f: $32
    add hl, bc                                    ; $5b40: $09
    ld a, [de]                                    ; $5b41: $1a
    ld h, $eb                                     ; $5b42: $26 $eb
    stop                                          ; $5b44: $10 $00
    inc b                                         ; $5b46: $04
    cp c                                          ; $5b47: $b9
    ld a, c                                       ; $5b48: $79
    ld a, $06                                     ; $5b49: $3e $06
    adc $00                                       ; $5b4b: $ce $00
    nop                                           ; $5b4d: $00
    nop                                           ; $5b4e: $00
    rst $38                                       ; $5b4f: $ff
    ld a, a                                       ; $5b50: $7f

jr_0af_5b51:
    nop                                           ; $5b51: $00

jr_0af_5b52:
    jr nz, jr_0af_5b54                            ; $5b52: $20 $00

jr_0af_5b54:
    inc b                                         ; $5b54: $04
    nop                                           ; $5b55: $00
    jr nz, @+$01                                  ; $5b56: $20 $ff

    ld a, a                                       ; $5b58: $7f

jr_0af_5b59:
    nop                                           ; $5b59: $00
    jr nz, jr_0af_5b5c                            ; $5b5a: $20 $00

jr_0af_5b5c:
    inc b                                         ; $5b5c: $04
    nop                                           ; $5b5d: $00
    jr nz, jr_0af_5b9f                            ; $5b5e: $20 $3f

    ld b, e                                       ; $5b60: $43
    ld [hl], l                                    ; $5b61: $75
    dec d                                         ; $5b62: $15
    rst $38                                       ; $5b63: $ff
    ld a, a                                       ; $5b64: $7f
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    ld e, a                                       ; $5b67: $5f
    dec b                                         ; $5b68: $05
    adc e                                         ; $5b69: $8b
    nop                                           ; $5b6a: $00
    nop                                           ; $5b6b: $00
    jr nz, jr_0af_5b6e                            ; $5b6c: $20 $00

jr_0af_5b6e:
    nop                                           ; $5b6e: $00
    sbc c                                         ; $5b6f: $99
    ld [hl], l                                    ; $5b70: $75
    ld de, $5b05                                  ; $5b71: $11 $05 $5b
    ld a, [hl+]                                   ; $5b74: $2a
    ld [bc], a                                    ; $5b75: $02
    inc b                                         ; $5b76: $04
    db $ed                                        ; $5b77: $ed
    inc c                                         ; $5b78: $0c
    inc a                                         ; $5b79: $3c
    ld [hl+], a                                   ; $5b7a: $22
    ld d, h                                       ; $5b7b: $54
    dec c                                         ; $5b7c: $0d
    nop                                           ; $5b7d: $00
    inc b                                         ; $5b7e: $04
    sbc c                                         ; $5b7f: $99
    ld [hl], l                                    ; $5b80: $75
    ld e, l                                       ; $5b81: $5d
    dec b                                         ; $5b82: $05
    inc hl                                        ; $5b83: $23
    stop                                          ; $5b84: $10 $00
    nop                                           ; $5b86: $00
    sbc c                                         ; $5b87: $99
    ld [hl], l                                    ; $5b88: $75
    rst $38                                       ; $5b89: $ff
    ld a, a                                       ; $5b8a: $7f
    nop                                           ; $5b8b: $00
    jr nz, jr_0af_5b8e                            ; $5b8c: $20 $00

jr_0af_5b8e:
    jr nz, @-$65                                  ; $5b8e: $20 $99

    ld [hl], l                                    ; $5b90: $75
    rst $38                                       ; $5b91: $ff
    ld a, a                                       ; $5b92: $7f
    nop                                           ; $5b93: $00
    jr nz, jr_0af_5b96                            ; $5b94: $20 $00

jr_0af_5b96:
    jr nz, jr_0af_5b31                            ; $5b96: $20 $99

    ld [hl], l                                    ; $5b98: $75
    ld de, $5b05                                  ; $5b99: $11 $05 $5b
    ld a, [hl+]                                   ; $5b9c: $2a
    nop                                           ; $5b9d: $00
    nop                                           ; $5b9e: $00

jr_0af_5b9f:
    sbc b                                         ; $5b9f: $98
    ld [hl], c                                    ; $5ba0: $71
    rst $38                                       ; $5ba1: $ff
    ld a, a                                       ; $5ba2: $7f
    nop                                           ; $5ba3: $00
    jr nz, jr_0af_5ba6                            ; $5ba4: $20 $00

jr_0af_5ba6:
    ld [$61cb], sp                                ; $5ba6: $08 $cb $61
    ld d, a                                       ; $5ba9: $57
    ld a, a                                       ; $5baa: $7f
    rst $38                                       ; $5bab: $ff
    ld a, [hl-]                                   ; $5bac: $3a
    nop                                           ; $5bad: $00
    ld [$6168], sp                                ; $5bae: $08 $68 $61
    ld d, $7f                                     ; $5bb1: $16 $7f
    ld h, d                                       ; $5bb3: $62
    jr c, jr_0af_5bb6                             ; $5bb4: $38 $00

jr_0af_5bb6:
    inc b                                         ; $5bb6: $04
    ld a, b                                       ; $5bb7: $78
    ld [hl], c                                    ; $5bb8: $71
    sbc b                                         ; $5bb9: $98
    ld [hl], c                                    ; $5bba: $71
    ld h, d                                       ; $5bbb: $62
    jr c, jr_0af_5bbe                             ; $5bbc: $38 $00

jr_0af_5bbe:
    nop                                           ; $5bbe: $00
    ld a, b                                       ; $5bbf: $78
    ld [hl], c                                    ; $5bc0: $71
    rst $38                                       ; $5bc1: $ff
    ld a, a                                       ; $5bc2: $7f
    sbc b                                         ; $5bc3: $98
    ld [hl], c                                    ; $5bc4: $71
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    jr nz, @+$01                                  ; $5bc8: $20 $ff

    ld a, a                                       ; $5bca: $7f
    sbc b                                         ; $5bcb: $98
    ld [hl], c                                    ; $5bcc: $71
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    rst $38                                       ; $5bcf: $ff
    ld a, a                                       ; $5bd0: $7f
    nop                                           ; $5bd1: $00
    jr nz, @+$01                                  ; $5bd2: $20 $ff

    ld a, [hl-]                                   ; $5bd4: $3a
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    ld a, b                                       ; $5bd7: $78
    ld l, l                                       ; $5bd8: $6d
    rst $38                                       ; $5bd9: $ff
    ld a, a                                       ; $5bda: $7f
    ld a, b                                       ; $5bdb: $78
    ld [hl], c                                    ; $5bdc: $71
    nop                                           ; $5bdd: $00
    ld [$2a18], sp                                ; $5bde: $08 $18 $2a
    add d                                         ; $5be1: $82
    ld b, b                                       ; $5be2: $40
    ccf                                           ; $5be3: $3f
    ld c, e                                       ; $5be4: $4b
    nop                                           ; $5be5: $00
    inc c                                         ; $5be6: $0c
    ld e, b                                       ; $5be7: $58
    ld [hl-], a                                   ; $5be8: $32
    inc l                                         ; $5be9: $2c
    dec c                                         ; $5bea: $0d
    ccf                                           ; $5beb: $3f
    ld b, a                                       ; $5bec: $47
    nop                                           ; $5bed: $00
    inc b                                         ; $5bee: $04
    ld [hl], a                                    ; $5bef: $77
    ld l, l                                       ; $5bf0: $6d
    nop                                           ; $5bf1: $00
    ld b, b                                       ; $5bf2: $40
    nop                                           ; $5bf3: $00
    jr jr_0af_5bf6                                ; $5bf4: $18 $00

jr_0af_5bf6:
    nop                                           ; $5bf6: $00
    ld [hl], a                                    ; $5bf7: $77
    ld l, l                                       ; $5bf8: $6d
    rst $38                                       ; $5bf9: $ff
    ld a, a                                       ; $5bfa: $7f
    ld a, b                                       ; $5bfb: $78
    ld l, l                                       ; $5bfc: $6d
    nop                                           ; $5bfd: $00
    nop                                           ; $5bfe: $00
    rst $38                                       ; $5bff: $ff
    ld a, a                                       ; $5c00: $7f
    nop                                           ; $5c01: $00
    jr nz, jr_0af_5c7c                            ; $5c02: $20 $78

    ld l, l                                       ; $5c04: $6d
    nop                                           ; $5c05: $00
    nop                                           ; $5c06: $00
    rst $38                                       ; $5c07: $ff
    ld a, a                                       ; $5c08: $7f
    nop                                           ; $5c09: $00
    jr nz, jr_0af_5c4b                            ; $5c0a: $20 $3f

    ld c, e                                       ; $5c0c: $4b
    ld hl, $5704                                  ; $5c0d: $21 $04 $57
    ld l, l                                       ; $5c10: $6d
    jp nc, $de29                                  ; $5c11: $d2 $29 $de

    ld b, d                                       ; $5c14: $42
    ld [hl], b                                    ; $5c15: $70
    dec e                                         ; $5c16: $1d
    sbc h                                         ; $5c17: $9c
    ld a, [hl-]                                   ; $5c18: $3a
    sbc a                                         ; $5c19: $9f
    ld d, a                                       ; $5c1a: $57
    sub $21                                       ; $5c1b: $d6 $21
    ld c, $11                                     ; $5c1d: $0e $11
    add hl, sp                                    ; $5c1f: $39
    ld l, $b6                                     ; $5c20: $2e $b6
    dec d                                         ; $5c22: $15
    rst $38                                       ; $5c23: $ff
    ld a, [hl-]                                   ; $5c24: $3a
    ld [hl+], a                                   ; $5c25: $22
    nop                                           ; $5c26: $00
    ld d, [hl]                                    ; $5c27: $56
    ld l, c                                       ; $5c28: $69
    or l                                          ; $5c29: $b5
    dec e                                         ; $5c2a: $1d
    xor c                                         ; $5c2b: $a9
    inc b                                         ; $5c2c: $04
    ld d, [hl]                                    ; $5c2d: $56
    ld l, c                                       ; $5c2e: $69
    ld d, a                                       ; $5c2f: $57
    ld l, l                                       ; $5c30: $6d
    or l                                          ; $5c31: $b5
    dec e                                         ; $5c32: $1d
    xor c                                         ; $5c33: $a9
    inc b                                         ; $5c34: $04
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    ld d, [hl]                                    ; $5c37: $56
    ld l, c                                       ; $5c38: $69
    rst $38                                       ; $5c39: $ff
    ld a, a                                       ; $5c3a: $7f
    nop                                           ; $5c3b: $00
    jr nz, jr_0af_5c3e                            ; $5c3c: $20 $00

jr_0af_5c3e:
    nop                                           ; $5c3e: $00
    ld d, [hl]                                    ; $5c3f: $56
    ld l, c                                       ; $5c40: $69
    rst $38                                       ; $5c41: $ff
    ld a, a                                       ; $5c42: $7f
    nop                                           ; $5c43: $00
    jr nz, jr_0af_5c46                            ; $5c44: $20 $00

jr_0af_5c46:
    nop                                           ; $5c46: $00
    ld d, [hl]                                    ; $5c47: $56
    ld l, c                                       ; $5c48: $69
    ld c, [hl]                                    ; $5c49: $4e
    add hl, de                                    ; $5c4a: $19

jr_0af_5c4b:
    ld a, $4b                                     ; $5c4b: $3e $4b
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00
    xor $04                                       ; $5c4f: $ee $04
    ld a, [$7619]                                 ; $5c51: $fa $19 $76
    add hl, bc                                    ; $5c54: $09
    nop                                           ; $5c55: $00
    nop                                           ; $5c56: $00
    ld de, $db05                                  ; $5c57: $11 $05 $db
    dec b                                         ; $5c5a: $05
    ld a, [hl]                                    ; $5c5b: $7e
    ld a, [hl+]                                   ; $5c5c: $2a
    ld b, h                                       ; $5c5d: $44
    nop                                           ; $5c5e: $00
    dec [hl]                                      ; $5c5f: $35
    ld h, l                                       ; $5c60: $65
    sub $21                                       ; $5c61: $d6 $21
    rrca                                          ; $5c63: $0f
    dec b                                         ; $5c64: $05
    dec [hl]                                      ; $5c65: $35
    ld h, l                                       ; $5c66: $65
    ld d, [hl]                                    ; $5c67: $56
    ld l, c                                       ; $5c68: $69
    sub $21                                       ; $5c69: $d6 $21
    rrca                                          ; $5c6b: $0f
    dec b                                         ; $5c6c: $05
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    dec [hl]                                      ; $5c6f: $35
    ld h, l                                       ; $5c70: $65
    rst $38                                       ; $5c71: $ff
    ld a, a                                       ; $5c72: $7f
    nop                                           ; $5c73: $00
    jr nz, jr_0af_5c76                            ; $5c74: $20 $00

jr_0af_5c76:
    nop                                           ; $5c76: $00
    dec [hl]                                      ; $5c77: $35
    ld h, l                                       ; $5c78: $65
    rst $38                                       ; $5c79: $ff
    ld a, a                                       ; $5c7a: $7f
    halt                                          ; $5c7b: $76

jr_0af_5c7c:
    add hl, bc                                    ; $5c7c: $09
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    dec [hl]                                      ; $5c7f: $35
    ld h, l                                       ; $5c80: $65
    inc c                                         ; $5c81: $0c
    add hl, de                                    ; $5c82: $19
    sub [hl]                                      ; $5c83: $96
    ld c, [hl]                                    ; $5c84: $4e
    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    ld l, l                                       ; $5c87: $6d
    dec l                                         ; $5c88: $2d
    sub $5e                                       ; $5c89: $d6 $5e
    ret c                                         ; $5c8b: $d8

    dec l                                         ; $5c8c: $2d
    nop                                           ; $5c8d: $00
    nop                                           ; $5c8e: $00
    adc e                                         ; $5c8f: $8b
    ld sp, $5ed6                                  ; $5c90: $31 $d6 $5e
    nop                                           ; $5c93: $00
    jr nz, jr_0af_5cda                            ; $5c94: $20 $44

    inc b                                         ; $5c96: $04
    ld sp, $3509                                  ; $5c97: $31 $09 $35
    ld h, l                                       ; $5c9a: $65
    inc e                                         ; $5c9b: $1c
    ld a, [de]                                    ; $5c9c: $1a
    inc d                                         ; $5c9d: $14
    ld h, c                                       ; $5c9e: $61
    dec [hl]                                      ; $5c9f: $35
    ld h, l                                       ; $5ca0: $65
    dec [hl]                                      ; $5ca1: $35
    ld h, c                                       ; $5ca2: $61
    dec d                                         ; $5ca3: $15
    ld h, c                                       ; $5ca4: $61
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    inc d                                         ; $5ca7: $14
    ld h, c                                       ; $5ca8: $61
    rst $38                                       ; $5ca9: $ff
    ld a, a                                       ; $5caa: $7f
    nop                                           ; $5cab: $00
    jr nz, jr_0af_5cae                            ; $5cac: $20 $00

jr_0af_5cae:
    nop                                           ; $5cae: $00
    inc d                                         ; $5caf: $14
    ld h, c                                       ; $5cb0: $61
    rst $38                                       ; $5cb1: $ff
    ld a, a                                       ; $5cb2: $7f
    nop                                           ; $5cb3: $00
    jr nz, jr_0af_5cb6                            ; $5cb4: $20 $00

jr_0af_5cb6:
    nop                                           ; $5cb6: $00
    inc d                                         ; $5cb7: $14
    ld h, c                                       ; $5cb8: $61
    inc c                                         ; $5cb9: $0c
    ld de, $0465                                  ; $5cba: $11 $65 $04
    inc hl                                        ; $5cbd: $23
    inc b                                         ; $5cbe: $04
    ret nc                                        ; $5cbf: $d0

    ld d, c                                       ; $5cc0: $51
    cp a                                          ; $5cc1: $bf
    ld [hl], e                                    ; $5cc2: $73
    ld h, c                                       ; $5cc3: $61
    ld d, b                                       ; $5cc4: $50
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    xor $65                                       ; $5cc7: $ee $65
    and $40                                       ; $5cc9: $e6 $40
    rst $38                                       ; $5ccb: $ff
    ld a, a                                       ; $5ccc: $7f

jr_0af_5ccd:
    nop                                           ; $5ccd: $00
    nop                                           ; $5cce: $00
    ld c, $15                                     ; $5ccf: $0e $15
    or e                                          ; $5cd1: $b3
    dec h                                         ; $5cd2: $25
    ld a, [de]                                    ; $5cd3: $1a
    ld h, $44                                     ; $5cd4: $26 $44
    inc b                                         ; $5cd6: $04
    inc d                                         ; $5cd7: $14
    ld e, l                                       ; $5cd8: $5d
    inc d                                         ; $5cd9: $14

jr_0af_5cda:
    ld h, c                                       ; $5cda: $61
    ld a, [de]                                    ; $5cdb: $1a
    ld h, $00                                     ; $5cdc: $26 $00
    nop                                           ; $5cde: $00
    inc d                                         ; $5cdf: $14
    ld e, l                                       ; $5ce0: $5d
    rst $38                                       ; $5ce1: $ff
    ld a, a                                       ; $5ce2: $7f
    nop                                           ; $5ce3: $00
    jr nz, jr_0af_5ce6                            ; $5ce4: $20 $00

jr_0af_5ce6:
    nop                                           ; $5ce6: $00
    di                                            ; $5ce7: $f3
    ld e, h                                       ; $5ce8: $5c
    rst $38                                       ; $5ce9: $ff
    ld a, a                                       ; $5cea: $7f
    nop                                           ; $5ceb: $00
    jr nz, jr_0af_5cee                            ; $5cec: $20 $00

jr_0af_5cee:
    nop                                           ; $5cee: $00
    di                                            ; $5cef: $f3
    ld e, h                                       ; $5cf0: $5c
    add [hl]                                      ; $5cf1: $86
    ld [$5d14], sp                                ; $5cf2: $08 $14 $5d
    add a                                         ; $5cf5: $87
    ld [$2594], sp                                ; $5cf6: $08 $94 $25
    cp c                                          ; $5cf9: $b9
    ld e, d                                       ; $5cfa: $5a
    ld h, c                                       ; $5cfb: $61
    ld d, b                                       ; $5cfc: $50
    sub l                                         ; $5cfd: $95
    ld hl, $4efe                                  ; $5cfe: $21 $fe $4e
    cp $56                                        ; $5d01: $fe $56
    rst $38                                       ; $5d03: $ff
    ld c, [hl]                                    ; $5d04: $4e
    ld bc, $f704                                  ; $5d05: $01 $04 $f7
    dec l                                         ; $5d08: $2d
    ret                                           ; $5d09: $c9


    inc c                                         ; $5d0a: $0c
    sbc h                                         ; $5d0b: $9c
    ld b, [hl]                                    ; $5d0c: $46
    ld b, h                                       ; $5d0d: $44
    inc b                                         ; $5d0e: $04
    di                                            ; $5d0f: $f3
    ld e, b                                       ; $5d10: $58
    xor c                                         ; $5d11: $a9
    nop                                           ; $5d12: $00
    rrc b                                         ; $5d13: $cb $08
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    di                                            ; $5d17: $f3
    ld e, b                                       ; $5d18: $58
    rst $38                                       ; $5d19: $ff
    ld a, a                                       ; $5d1a: $7f
    nop                                           ; $5d1b: $00
    jr nz, jr_0af_5d1e                            ; $5d1c: $20 $00

jr_0af_5d1e:
    nop                                           ; $5d1e: $00
    ld a, [c]                                     ; $5d1f: $f2
    ld e, b                                       ; $5d20: $58
    rst $38                                       ; $5d21: $ff
    ld a, a                                       ; $5d22: $7f
    nop                                           ; $5d23: $00
    jr nz, jr_0af_5ccd                            ; $5d24: $20 $a7

    inc c                                         ; $5d26: $0c
    ld a, [c]                                     ; $5d27: $f2
    ld e, b                                       ; $5d28: $58
    di                                            ; $5d29: $f3
    ld e, b                                       ; $5d2a: $58
    nop                                           ; $5d2b: $00
    jr nz, jr_0af_5d2e                            ; $5d2c: $20 $00

jr_0af_5d2e:
    nop                                           ; $5d2e: $00
    db $dd                                        ; $5d2f: $dd
    ld d, d                                       ; $5d30: $52
    dec hl                                        ; $5d31: $2b
    ld hl, $2db2                                  ; $5d32: $21 $b2 $2d
    add hl, de                                    ; $5d35: $19
    ld l, $fe                                     ; $5d36: $2e $fe
    ld d, [hl]                                    ; $5d38: $56
    rra                                           ; $5d39: $1f
    ld d, e                                       ; $5d3a: $53
    nop                                           ; $5d3b: $00
    jr nz, jr_0af_5d3e                            ; $5d3c: $20 $00

jr_0af_5d3e:
    nop                                           ; $5d3e: $00
    rst $30                                       ; $5d3f: $f7
    add hl, hl                                    ; $5d40: $29
    dec c                                         ; $5d41: $0d
    dec d                                         ; $5d42: $15
    sbc l                                         ; $5d43: $9d
    ld b, d                                       ; $5d44: $42
    inc hl                                        ; $5d45: $23
    inc b                                         ; $5d46: $04
    jp nc, Jump_0af_7f54                          ; $5d47: $d2 $54 $7f

    ld a, [hl+]                                   ; $5d4a: $2a
    xor d                                         ; $5d4b: $aa
    inc b                                         ; $5d4c: $04
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    jp nc, $ff54                                  ; $5d4f: $d2 $54 $ff

    ld a, a                                       ; $5d52: $7f
    nop                                           ; $5d53: $00
    jr nz, jr_0af_5d56                            ; $5d54: $20 $00

jr_0af_5d56:
    nop                                           ; $5d56: $00
    jp nc, $ff54                                  ; $5d57: $d2 $54 $ff

    ld a, a                                       ; $5d5a: $7f
    nop                                           ; $5d5b: $00
    jr nz, jr_0af_5d5e                            ; $5d5c: $20 $00

jr_0af_5d5e:
    nop                                           ; $5d5e: $00
    jp nc, $d654                                  ; $5d5f: $d2 $54 $d6

    ld e, [hl]                                    ; $5d62: $5e
    ld [bc], a                                    ; $5d63: $02
    ld [$0000], sp                                ; $5d64: $08 $00 $00
    jr nc, jr_0af_5daf                            ; $5d67: $30 $46

    sub $5e                                       ; $5d69: $d6 $5e
    sub h                                         ; $5d6b: $94
    dec h                                         ; $5d6c: $25
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    jr nc, @+$48                                  ; $5d6f: $30 $46

    db $db                                        ; $5d71: $db
    ld d, [hl]                                    ; $5d72: $56
    or [hl]                                       ; $5d73: $b6
    ld hl, $0001                                  ; $5d74: $21 $01 $00
    pop de                                        ; $5d77: $d1
    ld d, b                                       ; $5d78: $50
    sub $5e                                       ; $5d79: $d6 $5e
    sub l                                         ; $5d7b: $95
    ld hl, $0401                                  ; $5d7c: $21 $01 $04
    pop de                                        ; $5d7f: $d1
    ld d, h                                       ; $5d80: $54
    ld a, a                                       ; $5d81: $7f
    ld a, [hl+]                                   ; $5d82: $2a
    xor d                                         ; $5d83: $aa
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    pop de                                        ; $5d87: $d1
    ld d, h                                       ; $5d88: $54
    rst $38                                       ; $5d89: $ff
    ld a, a                                       ; $5d8a: $7f
    nop                                           ; $5d8b: $00
    jr nz, jr_0af_5d8e                            ; $5d8c: $20 $00

jr_0af_5d8e:
    nop                                           ; $5d8e: $00
    rst $38                                       ; $5d8f: $ff
    ld a, a                                       ; $5d90: $7f
    or c                                          ; $5d91: $b1
    ld d, b                                       ; $5d92: $50
    nop                                           ; $5d93: $00
    jr nz, jr_0af_5d96                            ; $5d94: $20 $00

jr_0af_5d96:
    nop                                           ; $5d96: $00
    or c                                          ; $5d97: $b1
    ld d, b                                       ; $5d98: $50
    jr nc, jr_0af_5de1                            ; $5d99: $30 $46

    sub $5e                                       ; $5d9b: $d6 $5e
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    adc e                                         ; $5d9f: $8b
    ld sp, $4630                                  ; $5da0: $31 $30 $46
    sub $5e                                       ; $5da3: $d6 $5e
    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    sub l                                         ; $5da7: $95
    ld hl, $5ed6                                  ; $5da8: $21 $d6 $5e
    cpl                                           ; $5dab: $2f
    ld l, d                                       ; $5dac: $6a
    nop                                           ; $5dad: $00
    nop                                           ; $5dae: $00

jr_0af_5daf:
    or b                                          ; $5daf: $b0
    ld d, b                                       ; $5db0: $50
    or c                                          ; $5db1: $b1
    ld d, b                                       ; $5db2: $50
    cpl                                           ; $5db3: $2f
    ld l, d                                       ; $5db4: $6a
    nop                                           ; $5db5: $00
    ld [$50b0], sp                                ; $5db6: $08 $b0 $50
    ld a, a                                       ; $5db9: $7f
    ld a, [hl+]                                   ; $5dba: $2a
    xor d                                         ; $5dbb: $aa
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    nop                                           ; $5dbe: $00
    rst $38                                       ; $5dbf: $ff
    ld a, a                                       ; $5dc0: $7f
    or b                                          ; $5dc1: $b0
    ld d, b                                       ; $5dc2: $50
    nop                                           ; $5dc3: $00
    jr nz, jr_0af_5dc6                            ; $5dc4: $20 $00

jr_0af_5dc6:
    nop                                           ; $5dc6: $00
    rst $38                                       ; $5dc7: $ff
    ld a, a                                       ; $5dc8: $7f
    or b                                          ; $5dc9: $b0
    ld c, h                                       ; $5dca: $4c
    nop                                           ; $5dcb: $00
    jr nz, jr_0af_5dce                            ; $5dcc: $20 $00

jr_0af_5dce:
    nop                                           ; $5dce: $00
    or b                                          ; $5dcf: $b0
    ld c, h                                       ; $5dd0: $4c
    ld d, b                                       ; $5dd1: $50
    ld a, [hl]                                    ; $5dd2: $7e
    or b                                          ; $5dd3: $b0
    ld d, b                                       ; $5dd4: $50

jr_0af_5dd5:
    jr nz, @+$0a                                  ; $5dd5: $20 $08

    or h                                          ; $5dd7: $b4
    add hl, hl                                    ; $5dd8: $29
    ld h, b                                       ; $5dd9: $60
    ld l, h                                       ; $5dda: $6c
    cp $56                                        ; $5ddb: $fe $56
    ld bc, $5300                                  ; $5ddd: $01 $00 $53
    add hl, de                                    ; $5de0: $19

jr_0af_5de1:
    rrca                                          ; $5de1: $0f
    ld l, d                                       ; $5de2: $6a
    add hl, de                                    ; $5de3: $19
    ld l, $00                                     ; $5de4: $2e $00
    nop                                           ; $5de6: $00
    sub b                                         ; $5de7: $90
    ld c, h                                       ; $5de8: $4c
    or h                                          ; $5de9: $b4
    ld [hl], d                                    ; $5dea: $72
    xor d                                         ; $5deb: $aa
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    ld [$4c8f], sp                                ; $5dee: $08 $8f $4c
    ld a, a                                       ; $5df1: $7f
    ld a, [hl+]                                   ; $5df2: $2a
    xor d                                         ; $5df3: $aa
    nop                                           ; $5df4: $00
    nop                                           ; $5df5: $00
    nop                                           ; $5df6: $00
    rst $38                                       ; $5df7: $ff
    ld a, a                                       ; $5df8: $7f
    or b                                          ; $5df9: $b0
    ld c, h                                       ; $5dfa: $4c
    nop                                           ; $5dfb: $00
    jr nz, jr_0af_5dfe                            ; $5dfc: $20 $00

jr_0af_5dfe:
    nop                                           ; $5dfe: $00
    rst $38                                       ; $5dff: $ff
    ld a, a                                       ; $5e00: $7f
    nop                                           ; $5e01: $00

jr_0af_5e02:
    jr nz, jr_0af_5e02                            ; $5e02: $20 $fe

    ld d, [hl]                                    ; $5e04: $56
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    ld [hl], d                                    ; $5e07: $72
    ld [hl], d                                    ; $5e08: $72
    ld b, c                                       ; $5e09: $41
    ld e, h                                       ; $5e0a: $5c
    adc a                                         ; $5e0b: $8f
    ld c, b                                       ; $5e0c: $48
    ld hl, $cf04                                  ; $5e0d: $21 $04 $cf
    add hl, sp                                    ; $5e10: $39
    jr nz, @+$5a                                  ; $5e11: $20 $58

    sbc c                                         ; $5e13: $99
    ld b, d                                       ; $5e14: $42
    ld bc, $2800                                  ; $5e15: $01 $00 $28
    ld e, l                                       ; $5e18: $5d
    ld [hl], e                                    ; $5e19: $73
    dec e                                         ; $5e1a: $1d
    jr nz, jr_0af_5e45                            ; $5e1b: $20 $28

    ld b, h                                       ; $5e1d: $44
    nop                                           ; $5e1e: $00
    adc a                                         ; $5e1f: $8f
    ld c, b                                       ; $5e20: $48
    ld a, a                                       ; $5e21: $7f
    ld a, [hl+]                                   ; $5e22: $2a
    ld d, c                                       ; $5e23: $51
    ld l, [hl]                                    ; $5e24: $6e
    nop                                           ; $5e25: $00
    ld [$488f], sp                                ; $5e26: $08 $8f $48
    ld a, a                                       ; $5e29: $7f
    ld a, [hl+]                                   ; $5e2a: $2a
    ld d, c                                       ; $5e2b: $51
    ld l, [hl]                                    ; $5e2c: $6e
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    rst $38                                       ; $5e2f: $ff
    ld a, a                                       ; $5e30: $7f
    nop                                           ; $5e31: $00
    jr nz, jr_0af_5e85                            ; $5e32: $20 $51

    ld l, [hl]                                    ; $5e34: $6e
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    rst $38                                       ; $5e37: $ff
    ld a, a                                       ; $5e38: $7f
    nop                                           ; $5e39: $00
    jr nz, jr_0af_5dd5                            ; $5e3a: $20 $99

    ld b, d                                       ; $5e3c: $42
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    add d                                         ; $5e3f: $82
    ld h, h                                       ; $5e40: $64
    push de                                       ; $5e41: $d5
    halt                                          ; $5e42: $76
    adc a                                         ; $5e43: $8f
    ld c, b                                       ; $5e44: $48

jr_0af_5e45:
    ld h, [hl]                                    ; $5e45: $66
    ld [$3e12], sp                                ; $5e46: $08 $12 $3e
    ld a, e                                       ; $5e49: $7b
    ld l, a                                       ; $5e4a: $6f
    ld c, e                                       ; $5e4b: $4b
    dec e                                         ; $5e4c: $1d
    ld bc, $c500                                  ; $5e4d: $01 $00 $c5
    ld e, b                                       ; $5e50: $58
    db $10                                        ; $5e51: $10
    dec d                                         ; $5e52: $15
    jr nz, jr_0af_5e7d                            ; $5e53: $20 $28

    ld b, h                                       ; $5e55: $44
    nop                                           ; $5e56: $00
    ld l, [hl]                                    ; $5e57: $6e
    ld b, h                                       ; $5e58: $44
    ld a, a                                       ; $5e59: $7f
    ld a, [hl+]                                   ; $5e5a: $2a
    cpl                                           ; $5e5b: $2f
    ld l, d                                       ; $5e5c: $6a
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    ld l, [hl]                                    ; $5e5f: $6e
    ld b, h                                       ; $5e60: $44
    ld a, a                                       ; $5e61: $7f

jr_0af_5e62:
    ld a, [hl+]                                   ; $5e62: $2a
    cpl                                           ; $5e63: $2f
    ld l, d                                       ; $5e64: $6a
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00

jr_0af_5e67:
    rst $38                                       ; $5e67: $ff
    ld a, a                                       ; $5e68: $7f
    nop                                           ; $5e69: $00
    jr nz, jr_0af_5e9b                            ; $5e6a: $20 $2f

    ld l, d                                       ; $5e6c: $6a
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    rst $38                                       ; $5e6f: $ff
    ld a, a                                       ; $5e70: $7f
    nop                                           ; $5e71: $00
    jr nz, jr_0af_5ebf                            ; $5e72: $20 $4b

    dec e                                         ; $5e74: $1d
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    add d                                         ; $5e77: $82
    ld h, h                                       ; $5e78: $64
    rrca                                          ; $5e79: $0f
    ld l, [hl]                                    ; $5e7a: $6e
    jr nz, jr_0af_5eb1                            ; $5e7b: $20 $34

jr_0af_5e7d:
    ld hl, $f004                                  ; $5e7d: $21 $04 $f0
    add hl, sp                                    ; $5e80: $39
    inc c                                         ; $5e81: $0c
    add hl, de                                    ; $5e82: $19
    or [hl]                                       ; $5e83: $b6
    ld d, d                                       ; $5e84: $52

jr_0af_5e85:
    inc hl                                        ; $5e85: $23
    nop                                           ; $5e86: $00
    and e                                         ; $5e87: $a3
    ld d, h                                       ; $5e88: $54
    jr nz, jr_0af_5eb3                            ; $5e89: $20 $28

    adc d                                         ; $5e8b: $8a
    ld h, l                                       ; $5e8c: $65
    ld b, h                                       ; $5e8d: $44
    nop                                           ; $5e8e: $00
    ld c, l                                       ; $5e8f: $4d
    ld b, b                                       ; $5e90: $40
    ld a, a                                       ; $5e91: $7f
    ld a, [hl+]                                   ; $5e92: $2a
    xor $65                                       ; $5e93: $ee $65
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    rst $38                                       ; $5e97: $ff
    ld a, a                                       ; $5e98: $7f
    ld c, l                                       ; $5e99: $4d
    ld b, b                                       ; $5e9a: $40

jr_0af_5e9b:
    ld l, l                                       ; $5e9b: $6d
    ld b, b                                       ; $5e9c: $40
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    rst $38                                       ; $5e9f: $ff
    ld a, a                                       ; $5ea0: $7f
    nop                                           ; $5ea1: $00
    jr nz, @+$6f                                  ; $5ea2: $20 $6d

    ld b, b                                       ; $5ea4: $40
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    rst $38                                       ; $5ea7: $ff
    ld a, a                                       ; $5ea8: $7f
    nop                                           ; $5ea9: $00
    jr nz, jr_0af_5e62                            ; $5eaa: $20 $b6

    ld d, d                                       ; $5eac: $52
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    add d                                         ; $5eaf: $82
    ld l, b                                       ; $5eb0: $68

jr_0af_5eb1:
    ld e, c                                       ; $5eb1: $59
    ld [hl], a                                    ; $5eb2: $77

jr_0af_5eb3:
    xor $65                                       ; $5eb3: $ee $65
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    ret nc                                        ; $5eb7: $d0

    dec [hl]                                      ; $5eb8: $35
    add l                                         ; $5eb9: $85
    jr nc, @-$06                                  ; $5eba: $30 $f8

    ld e, d                                       ; $5ebc: $5a
    ld b, l                                       ; $5ebd: $45
    nop                                           ; $5ebe: $00

jr_0af_5ebf:
    and e                                         ; $5ebf: $a3
    ld d, h                                       ; $5ec0: $54
    xor $65                                       ; $5ec1: $ee $65
    jr nz, jr_0af_5eed                            ; $5ec3: $20 $28

    ld [hl+], a                                   ; $5ec5: $22
    nop                                           ; $5ec6: $00
    sub e                                         ; $5ec7: $93
    ld [hl], d                                    ; $5ec8: $72
    ld c, h                                       ; $5ec9: $4c
    inc a                                         ; $5eca: $3c
    ld a, a                                       ; $5ecb: $7f
    ld a, [hl+]                                   ; $5ecc: $2a
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    rst $38                                       ; $5ecf: $ff
    ld a, a                                       ; $5ed0: $7f
    ld c, h                                       ; $5ed1: $4c
    inc a                                         ; $5ed2: $3c
    ld c, l                                       ; $5ed3: $4d
    inc a                                         ; $5ed4: $3c
    nop                                           ; $5ed5: $00
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    jr nz, jr_0af_5f26                            ; $5ed8: $20 $4c

    inc a                                         ; $5eda: $3c
    ld c, l                                       ; $5edb: $4d

jr_0af_5edc:
    inc a                                         ; $5edc: $3c
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    jr nz, jr_0af_5e67                            ; $5ee0: $20 $85

    jr nc, jr_0af_5edc                            ; $5ee2: $30 $f8

    ld e, d                                       ; $5ee4: $5a
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    ld d, c                                       ; $5ee7: $51
    ld l, d                                       ; $5ee8: $6a
    push bc                                       ; $5ee9: $c5
    ld d, h                                       ; $5eea: $54
    rst $38                                       ; $5eeb: $ff
    ld a, a                                       ; $5eec: $7f

jr_0af_5eed:
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    ld d, h                                       ; $5eef: $54
    ld b, d                                       ; $5ef0: $42
    ld h, c                                       ; $5ef1: $61
    ld h, h                                       ; $5ef2: $64

jr_0af_5ef3:
    ld h, d                                       ; $5ef3: $62
    inc h                                         ; $5ef4: $24
    ld h, l                                       ; $5ef5: $65
    inc b                                         ; $5ef6: $04
    xor $65                                       ; $5ef7: $ee $65
    and e                                         ; $5ef9: $a3
    ld d, h                                       ; $5efa: $54
    ld a, a                                       ; $5efb: $7f

jr_0af_5efc:
    ld a, [hl+]                                   ; $5efc: $2a
    nop                                           ; $5efd: $00
    inc b                                         ; $5efe: $04
    jr z, jr_0af_5f5a                             ; $5eff: $28 $59

    ld h, l                                       ; $5f01: $65
    ld b, b                                       ; $5f02: $40
    or h                                          ; $5f03: $b4
    ld [hl], d                                    ; $5f04: $72
    nop                                           ; $5f05: $00
    nop                                           ; $5f06: $00
    rst $38                                       ; $5f07: $ff
    ld a, a                                       ; $5f08: $7f
    inc l                                         ; $5f09: $2c
    jr c, @+$2e                                   ; $5f0a: $38 $2c

    inc a                                         ; $5f0c: $3c
    nop                                           ; $5f0d: $00
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    jr nz, jr_0af_5f3e                            ; $5f10: $20 $2c

    jr c, jr_0af_5f40                             ; $5f12: $38 $2c

    inc a                                         ; $5f14: $3c
    nop                                           ; $5f15: $00
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    jr nz, jr_0af_5f7b                            ; $5f18: $20 $61

    ld h, h                                       ; $5f1a: $64
    ld h, d                                       ; $5f1b: $62
    inc h                                         ; $5f1c: $24
    nop                                           ; $5f1d: $00
    ld [$65ee], sp                                ; $5f1e: $08 $ee $65

jr_0af_5f21:
    push bc                                       ; $5f21: $c5
    ld d, b                                       ; $5f22: $50
    rst $38                                       ; $5f23: $ff
    ld a, a                                       ; $5f24: $7f
    nop                                           ; $5f25: $00

jr_0af_5f26:
    nop                                           ; $5f26: $00
    and e                                         ; $5f27: $a3
    ld c, h                                       ; $5f28: $4c
    inc sp                                        ; $5f29: $33
    ld b, [hl]                                    ; $5f2a: $46
    ld [$2311], sp                                ; $5f2b: $08 $11 $23
    inc b                                         ; $5f2e: $04
    rrca                                          ; $5f2f: $0f
    halt                                          ; $5f30: $76
    ld a, a                                       ; $5f31: $7f
    ld a, [hl+]                                   ; $5f32: $2a
    ld h, d                                       ; $5f33: $62
    jr nc, jr_0af_5f36                            ; $5f34: $30 $00

jr_0af_5f36:
    nop                                           ; $5f36: $00
    xor $65                                       ; $5f37: $ee $65
    ld b, c                                       ; $5f39: $41
    ld b, b                                       ; $5f3a: $40
    or h                                          ; $5f3b: $b4
    ld [hl], d                                    ; $5f3c: $72
    nop                                           ; $5f3d: $00

jr_0af_5f3e:
    nop                                           ; $5f3e: $00
    or h                                          ; $5f3f: $b4

jr_0af_5f40:
    ld [hl], d                                    ; $5f40: $72
    rst $38                                       ; $5f41: $ff
    ld a, a                                       ; $5f42: $7f
    or h                                          ; $5f43: $b4
    ld [hl], d                                    ; $5f44: $72
    nop                                           ; $5f45: $00
    jr nz, jr_0af_5efc                            ; $5f46: $20 $b4

    ld [hl], d                                    ; $5f48: $72
    rst $38                                       ; $5f49: $ff
    ld a, a                                       ; $5f4a: $7f
    or h                                          ; $5f4b: $b4
    ld [hl], d                                    ; $5f4c: $72
    nop                                           ; $5f4d: $00
    jr nz, jr_0af_5ef3                            ; $5f4e: $20 $a3

    ld c, h                                       ; $5f50: $4c
    inc sp                                        ; $5f51: $33
    ld b, [hl]                                    ; $5f52: $46
    ld [$0011], sp                                ; $5f53: $08 $11 $00
    nop                                           ; $5f56: $00
    rst $38                                       ; $5f57: $ff
    ld a, a                                       ; $5f58: $7f
    nop                                           ; $5f59: $00

jr_0af_5f5a:
    jr c, jr_0af_5f21                             ; $5f5a: $38 $c5

    ld c, b                                       ; $5f5c: $48
    ld [hl+], a                                   ; $5f5d: $22
    inc b                                         ; $5f5e: $04
    nop                                           ; $5f5f: $00
    inc [hl]                                      ; $5f60: $34
    nop                                           ; $5f61: $00
    ld d, b                                       ; $5f62: $50
    and $44                                       ; $5f63: $e6 $44
    ld h, [hl]                                    ; $5f65: $66
    inc b                                         ; $5f66: $04
    ld e, e                                       ; $5f67: $5b
    ld a, [hl-]                                   ; $5f68: $3a
    ld b, b                                       ; $5f69: $40
    ld b, b                                       ; $5f6a: $40
    ld e, a                                       ; $5f6b: $5f
    ld e, e                                       ; $5f6c: $5b
    nop                                           ; $5f6d: $00
    inc b                                         ; $5f6e: $04
    ld b, b                                       ; $5f6f: $40
    ld c, b                                       ; $5f70: $48
    xor $65                                       ; $5f71: $ee $65
    push bc                                       ; $5f73: $c5
    ld e, b                                       ; $5f74: $58
    nop                                           ; $5f75: $00
    inc b                                         ; $5f76: $04
    rrca                                          ; $5f77: $0f
    ld h, [hl]                                    ; $5f78: $66
    rst $38                                       ; $5f79: $ff
    ld a, a                                       ; $5f7a: $7f

jr_0af_5f7b:
    push bc                                       ; $5f7b: $c5
    ld e, b                                       ; $5f7c: $58
    nop                                           ; $5f7d: $00
    jr nz, jr_0af_5f8f                            ; $5f7e: $20 $0f

    ld h, [hl]                                    ; $5f80: $66
    rst $38                                       ; $5f81: $ff
    ld a, a                                       ; $5f82: $7f
    push bc                                       ; $5f83: $c5
    ld e, b                                       ; $5f84: $58
    nop                                           ; $5f85: $00
    jr nz, jr_0af_5f88                            ; $5f86: $20 $00

jr_0af_5f88:
    inc [hl]                                      ; $5f88: $34
    nop                                           ; $5f89: $00
    ld d, b                                       ; $5f8a: $50
    and $44                                       ; $5f8b: $e6 $44
    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00

jr_0af_5f8f:
    rst $38                                       ; $5f8f: $ff
    ld a, a                                       ; $5f90: $7f
    nop                                           ; $5f91: $00
    jr nz, jr_0af_5f94                            ; $5f92: $20 $00

jr_0af_5f94:
    inc a                                         ; $5f94: $3c
    inc hl                                        ; $5f95: $23
    inc b                                         ; $5f96: $04
    sbc e                                         ; $5f97: $9b
    ld b, d                                       ; $5f98: $42
    sbc a                                         ; $5f99: $9f
    ld h, e                                       ; $5f9a: $63
    nop                                           ; $5f9b: $00
    inc l                                         ; $5f9c: $2c
    ld [hl+], a                                   ; $5f9d: $22
    nop                                           ; $5f9e: $00
    ld [hl], l                                    ; $5f9f: $75
    ld hl, $2df9                                  ; $5fa0: $21 $f9 $2d
    nop                                           ; $5fa3: $00
    jr nz, jr_0af_5fa6                            ; $5fa4: $20 $00

jr_0af_5fa6:
    ld [$4841], sp                                ; $5fa6: $08 $41 $48
    jr nz, jr_0af_5fd3                            ; $5fa9: $20 $28

    ld h, c                                       ; $5fab: $61
    ld d, b                                       ; $5fac: $50
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    rst $38                                       ; $5faf: $ff
    ld a, a                                       ; $5fb0: $7f
    add e                                         ; $5fb1: $83
    ld d, b                                       ; $5fb2: $50
    nop                                           ; $5fb3: $00
    jr nz, jr_0af_5fb6                            ; $5fb4: $20 $00

jr_0af_5fb6:
    jr nz, @+$01                                  ; $5fb6: $20 $ff

    ld a, a                                       ; $5fb8: $7f
    add e                                         ; $5fb9: $83
    ld d, b                                       ; $5fba: $50
    nop                                           ; $5fbb: $00
    jr nz, jr_0af_5fbe                            ; $5fbc: $20 $00

jr_0af_5fbe:
    jr nz, @-$63                                  ; $5fbe: $20 $9b

    ld b, d                                       ; $5fc0: $42
    sbc a                                         ; $5fc1: $9f

jr_0af_5fc2:
    ld h, e                                       ; $5fc2: $63
    nop                                           ; $5fc3: $00
    inc l                                         ; $5fc4: $2c
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    rst $38                                       ; $5fc7: $ff
    ld a, a                                       ; $5fc8: $7f
    nop                                           ; $5fc9: $00

jr_0af_5fca:
    jr nz, @+$23                                  ; $5fca: $20 $21

    jr nc, jr_0af_5fce                            ; $5fcc: $30 $00

jr_0af_5fce:
    nop                                           ; $5fce: $00
    jr @+$3c                                      ; $5fcf: $18 $3a

    db $dd                                        ; $5fd1: $dd
    ld d, d                                       ; $5fd2: $52

jr_0af_5fd3:
    cp [hl]                                       ; $5fd3: $be
    ld h, a                                       ; $5fd4: $67
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    rst $38                                       ; $5fd7: $ff
    ld a, a                                       ; $5fd8: $7f
    add e                                         ; $5fd9: $83
    ld d, b                                       ; $5fda: $50
    nop                                           ; $5fdb: $00

jr_0af_5fdc:
    jr nz, jr_0af_5fde                            ; $5fdc: $20 $00

jr_0af_5fde:
    nop                                           ; $5fde: $00
    rst $38                                       ; $5fdf: $ff
    ld a, a                                       ; $5fe0: $7f
    add e                                         ; $5fe1: $83
    ld d, b                                       ; $5fe2: $50
    nop                                           ; $5fe3: $00

jr_0af_5fe4:
    jr nz, jr_0af_5fe6                            ; $5fe4: $20 $00

jr_0af_5fe6:
    nop                                           ; $5fe6: $00
    rst $38                                       ; $5fe7: $ff
    ld a, a                                       ; $5fe8: $7f
    nop                                           ; $5fe9: $00
    jr nz, jr_0af_5fec                            ; $5fea: $20 $00

jr_0af_5fec:
    jr nz, jr_0af_5fee                            ; $5fec: $20 $00

jr_0af_5fee:
    jr nz, @+$01                                  ; $5fee: $20 $ff

    ld a, a                                       ; $5ff0: $7f
    nop                                           ; $5ff1: $00
    jr nz, jr_0af_5ff4                            ; $5ff2: $20 $00

jr_0af_5ff4:
    jr nz, jr_0af_5ff6                            ; $5ff4: $20 $00

jr_0af_5ff6:
    jr nz, jr_0af_6010                            ; $5ff6: $20 $18

    ld a, [hl-]                                   ; $5ff8: $3a
    db $dd                                        ; $5ff9: $dd
    ld d, d                                       ; $5ffa: $52
    cp [hl]                                       ; $5ffb: $be
    ld h, a                                       ; $5ffc: $67
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    rst $38                                       ; $5fff: $ff
    ld a, a                                       ; $6000: $7f
    nop                                           ; $6001: $00
    jr nz, jr_0af_5fc2                            ; $6002: $20 $be

    ld h, a                                       ; $6004: $67
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    rst $38                                       ; $6007: $ff
    ld a, a                                       ; $6008: $7f
    nop                                           ; $6009: $00
    jr nz, jr_0af_5fca                            ; $600a: $20 $be

    ld h, a                                       ; $600c: $67
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00

jr_0af_6010:
    jr nz, jr_0af_6012                            ; $6010: $20 $00

jr_0af_6012:
    jr nz, jr_0af_6014                            ; $6012: $20 $00

jr_0af_6014:
    jr nz, jr_0af_6016                            ; $6014: $20 $00

jr_0af_6016:
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    jr nz, jr_0af_601a                            ; $6018: $20 $00

jr_0af_601a:
    jr nz, jr_0af_601c                            ; $601a: $20 $00

jr_0af_601c:
    jr nz, jr_0af_601e                            ; $601c: $20 $00

jr_0af_601e:
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    jr nz, jr_0af_6022                            ; $6020: $20 $00

jr_0af_6022:
    jr nz, jr_0af_6024                            ; $6022: $20 $00

jr_0af_6024:
    jr nz, jr_0af_6026                            ; $6024: $20 $00

jr_0af_6026:
    jr nz, jr_0af_6028                            ; $6026: $20 $00

jr_0af_6028:
    jr nz, jr_0af_602a                            ; $6028: $20 $00

jr_0af_602a:
    jr nz, jr_0af_602c                            ; $602a: $20 $00

jr_0af_602c:
    jr nz, jr_0af_602e                            ; $602c: $20 $00

jr_0af_602e:
    jr nz, jr_0af_6030                            ; $602e: $20 $00

jr_0af_6030:
    jr nz, jr_0af_6032                            ; $6030: $20 $00

jr_0af_6032:
    jr nz, jr_0af_605c                            ; $6032: $20 $28

    inc h                                         ; $6034: $24
    nop                                           ; $6035: $00
    jr nz, jr_0af_6038                            ; $6036: $20 $00

jr_0af_6038:
    jr nz, jr_0af_603a                            ; $6038: $20 $00

jr_0af_603a:
    jr nz, jr_0af_6064                            ; $603a: $20 $28

    inc h                                         ; $603c: $24
    nop                                           ; $603d: $00

jr_0af_603e:
    jr nz, jr_0af_6040                            ; $603e: $20 $00

jr_0af_6040:
    jr nz, jr_0af_6042                            ; $6040: $20 $00

jr_0af_6042:
    jr nz, jr_0af_606c                            ; $6042: $20 $28

    inc h                                         ; $6044: $24
    nop                                           ; $6045: $00

jr_0af_6046:
    jr nz, jr_0af_60aa                            ; $6046: $20 $62

    db $10                                        ; $6048: $10
    push bc                                       ; $6049: $c5
    inc e                                         ; $604a: $1c
    add e                                         ; $604b: $83
    inc d                                         ; $604c: $14
    nop                                           ; $604d: $00
    inc e                                         ; $604e: $1c
    add h                                         ; $604f: $84
    inc e                                         ; $6050: $1c
    ld hl, $0014                                  ; $6051: $21 $14 $00
    jr nz, jr_0af_6056                            ; $6054: $20 $00

jr_0af_6056:
    jr nz, jr_0af_5fdc                            ; $6056: $20 $84

    inc e                                         ; $6058: $1c
    ld hl, $0014                                  ; $6059: $21 $14 $00

jr_0af_605c:
    jr nz, jr_0af_605e                            ; $605c: $20 $00

jr_0af_605e:
    jr nz, jr_0af_5fe4                            ; $605e: $20 $84

    inc e                                         ; $6060: $1c
    ld hl, $0014                                  ; $6061: $21 $14 $00

jr_0af_6064:
    jr nz, jr_0af_6066                            ; $6064: $20 $00

jr_0af_6066:
    jr nz, jr_0af_6068                            ; $6066: $20 $00

jr_0af_6068:
    jr nz, jr_0af_606a                            ; $6068: $20 $00

jr_0af_606a:
    jr nz, jr_0af_6094                            ; $606a: $20 $28

jr_0af_606c:
    inc h                                         ; $606c: $24
    nop                                           ; $606d: $00
    jr nz, jr_0af_6070                            ; $606e: $20 $00

jr_0af_6070:
    jr nz, jr_0af_6072                            ; $6070: $20 $00

jr_0af_6072:
    jr nz, jr_0af_609c                            ; $6072: $20 $28

    inc h                                         ; $6074: $24
    ld bc, $6908                                  ; $6075: $01 $08 $69
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    jr nz, jr_0af_60c6                            ; $607a: $20 $4a

    add hl, hl                                    ; $607c: $29
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    db $ed                                        ; $607f: $ed
    ld [$19b6], sp                                ; $6080: $08 $b6 $19
    jr z, jr_0af_6085                             ; $6083: $28 $00

jr_0af_6085:
    nop                                           ; $6085: $00
    inc e                                         ; $6086: $1c
    xor [hl]                                      ; $6087: $ae
    ld sp, $1084                                  ; $6088: $31 $84 $10
    or l                                          ; $608b: $b5
    ld d, [hl]                                    ; $608c: $56
    nop                                           ; $608d: $00
    jr nz, jr_0af_603e                            ; $608e: $20 $ae

    ld sp, $1084                                  ; $6090: $31 $84 $10
    or l                                          ; $6093: $b5

jr_0af_6094:
    ld d, [hl]                                    ; $6094: $56
    nop                                           ; $6095: $00
    jr nz, jr_0af_6046                            ; $6096: $20 $ae

    ld sp, $1084                                  ; $6098: $31 $84 $10
    or l                                          ; $609b: $b5

jr_0af_609c:
    ld d, [hl]                                    ; $609c: $56
    nop                                           ; $609d: $00
    jr nz, jr_0af_6109                            ; $609e: $20 $69

    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    jr nz, jr_0af_60ee                            ; $60a2: $20 $4a

    add hl, hl                                    ; $60a4: $29
    nop                                           ; $60a5: $00
    jr nz, jr_0af_6111                            ; $60a6: $20 $69

    nop                                           ; $60a8: $00
    nop                                           ; $60a9: $00

jr_0af_60aa:
    jr nz, jr_0af_60f6                            ; $60aa: $20 $4a

    add hl, hl                                    ; $60ac: $29
    nop                                           ; $60ad: $00
    inc e                                         ; $60ae: $1c
    ld d, e                                       ; $60af: $53
    ld b, d                                       ; $60b0: $42
    cp e                                          ; $60b1: $bb
    ld [hl], a                                    ; $60b2: $77
    xor e                                         ; $60b3: $ab
    inc c                                         ; $60b4: $0c
    xor d                                         ; $60b5: $aa
    dec a                                         ; $60b6: $3d
    sub c                                         ; $60b7: $91
    ld e, d                                       ; $60b8: $5a
    ld l, a                                       ; $60b9: $6f
    ld hl, $46dc                                  ; $60ba: $21 $dc $46
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    ld l, c                                       ; $60bf: $69
    nop                                           ; $60c0: $00
    ld c, c                                       ; $60c1: $49
    dec l                                         ; $60c2: $2d
    nop                                           ; $60c3: $00
    jr nz, jr_0af_60c6                            ; $60c4: $20 $00

jr_0af_60c6:
    jr nz, jr_0af_6131                            ; $60c6: $20 $69

    nop                                           ; $60c8: $00
    ld c, c                                       ; $60c9: $49
    dec l                                         ; $60ca: $2d
    nop                                           ; $60cb: $00
    jr nz, jr_0af_60ce                            ; $60cc: $20 $00

jr_0af_60ce:
    jr nz, @+$6b                                  ; $60ce: $20 $69

    nop                                           ; $60d0: $00
    ld c, c                                       ; $60d1: $49
    dec l                                         ; $60d2: $2d
    nop                                           ; $60d3: $00
    jr nz, jr_0af_60d6                            ; $60d4: $20 $00

jr_0af_60d6:
    jr nz, @+$55                                  ; $60d6: $20 $53

    ld b, d                                       ; $60d8: $42
    cp e                                          ; $60d9: $bb
    ld [hl], a                                    ; $60da: $77
    xor e                                         ; $60db: $ab
    inc c                                         ; $60dc: $0c
    nop                                           ; $60dd: $00
    jr nz, jr_0af_6133                            ; $60de: $20 $53

    ld b, d                                       ; $60e0: $42
    cp e                                          ; $60e1: $bb
    ld [hl], a                                    ; $60e2: $77
    xor e                                         ; $60e3: $ab

jr_0af_60e4:
    inc c                                         ; $60e4: $0c
    nop                                           ; $60e5: $00
    jr nz, @+$17                                  ; $60e6: $20 $15

    ld [hl-], a                                   ; $60e8: $32
    ld a, a                                       ; $60e9: $7f

jr_0af_60ea:
    ld e, e                                       ; $60ea: $5b
    inc b                                         ; $60eb: $04

jr_0af_60ec:
    nop                                           ; $60ec: $00
    inc c                                         ; $60ed: $0c

jr_0af_60ee:
    ld de, $63bf                                  ; $60ee: $11 $bf $63
    sub e                                         ; $60f1: $93

jr_0af_60f2:
    add hl, de                                    ; $60f2: $19
    ret c                                         ; $60f3: $d8

    dec e                                         ; $60f4: $1d
    nop                                           ; $60f5: $00

jr_0af_60f6:
    nop                                           ; $60f6: $00
    ld c, c                                       ; $60f7: $49
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00

jr_0af_60fa:
    jr nz, jr_0af_60ea                            ; $60fa: $20 $ee

    ld [$2000], sp                                ; $60fc: $08 $00 $20
    ld c, c                                       ; $60ff: $49
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    jr nz, jr_0af_60f2                            ; $6102: $20 $ee

    ld [$2000], sp                                ; $6104: $08 $00 $20
    ld c, c                                       ; $6107: $49
    nop                                           ; $6108: $00

jr_0af_6109:
    nop                                           ; $6109: $00
    jr nz, jr_0af_60fa                            ; $610a: $20 $ee

    ld [$2000], sp                                ; $610c: $08 $00 $20
    dec d                                         ; $610f: $15
    ld [hl-], a                                   ; $6110: $32

jr_0af_6111:
    ld a, a                                       ; $6111: $7f
    ld e, e                                       ; $6112: $5b
    inc b                                         ; $6113: $04
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    jr nz, jr_0af_612d                            ; $6116: $20 $15

    ld [hl-], a                                   ; $6118: $32
    ld a, a                                       ; $6119: $7f
    ld e, e                                       ; $611a: $5b
    inc b                                         ; $611b: $04
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    inc c                                         ; $611e: $0c
    or d                                          ; $611f: $b2
    dec h                                         ; $6120: $25
    sbc $3a                                       ; $6121: $de $3a
    adc e                                         ; $6123: $8b
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    inc b                                         ; $6126: $04
    cp [hl]                                       ; $6127: $be
    ld h, a                                       ; $6128: $67
    or h                                          ; $6129: $b4
    ld hl, $08c9                                  ; $612a: $21 $c9 $08

jr_0af_612d:
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    cp l                                          ; $612f: $bd
    ld [hl], a                                    ; $6130: $77

jr_0af_6131:
    xor d                                         ; $6131: $aa
    nop                                           ; $6132: $00

jr_0af_6133:
    nop                                           ; $6133: $00
    jr nz, jr_0af_6136                            ; $6134: $20 $00

jr_0af_6136:
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    jr nz, jr_0af_60e4                            ; $6138: $20 $aa

    nop                                           ; $613a: $00
    nop                                           ; $613b: $00
    jr nz, jr_0af_613e                            ; $613c: $20 $00

jr_0af_613e:
    jr nz, jr_0af_6140                            ; $613e: $20 $00

jr_0af_6140:
    jr nz, jr_0af_60ec                            ; $6140: $20 $aa

    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    jr nz, jr_0af_6146                            ; $6144: $20 $00

jr_0af_6146:
    jr nz, jr_0af_60fa                            ; $6146: $20 $b2

    dec h                                         ; $6148: $25
    sbc $3a                                       ; $6149: $de $3a
    adc e                                         ; $614b: $8b
    nop                                           ; $614c: $00
    nop                                           ; $614d: $00
    nop                                           ; $614e: $00
    rst $38                                       ; $614f: $ff
    ld a, a                                       ; $6150: $7f
    nop                                           ; $6151: $00

Call_0af_6152:
jr_0af_6152:
    jr nz, @-$73                                  ; $6152: $20 $8b

    nop                                           ; $6154: $00
    inc h                                         ; $6155: $24
    nop                                           ; $6156: $00
    ld e, a                                       ; $6157: $5f
    ld d, e                                       ; $6158: $53
    sub d                                         ; $6159: $92
    ld hl, $7fff                                  ; $615a: $21 $ff $7f
    nop                                           ; $615d: $00
    inc b                                         ; $615e: $04
    rst $10                                       ; $615f: $d7
    dec e                                         ; $6160: $1d
    sbc a                                         ; $6161: $9f
    ld e, e                                       ; $6162: $5b
    jp z, $010c                                   ; $6163: $ca $0c $01

    nop                                           ; $6166: $00
    sbc $7b                                       ; $6167: $de $7b
    jp z, $d60c                                   ; $6169: $ca $0c $d6

    ld hl, $0000                                  ; $616c: $21 $00 $00

jr_0af_616f:
    rst $38                                       ; $616f: $ff
    ld a, a                                       ; $6170: $7f
    nop                                           ; $6171: $00
    jr nz, @-$28                                  ; $6172: $20 $d6

    ld hl, $2000                                  ; $6174: $21 $00 $20
    rst $38                                       ; $6177: $ff
    ld a, a                                       ; $6178: $7f
    nop                                           ; $6179: $00
    jr nz, jr_0af_6152                            ; $617a: $20 $d6

    ld hl, $2000                                  ; $617c: $21 $00 $20
    ld e, a                                       ; $617f: $5f
    ld d, e                                       ; $6180: $53
    sub d                                         ; $6181: $92
    ld hl, $7fff                                  ; $6182: $21 $ff $7f
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    rst $38                                       ; $6187: $ff
    ld a, a                                       ; $6188: $7f
    nop                                           ; $6189: $00
    jr nz, @+$01                                  ; $618a: $20 $ff

    ld a, a                                       ; $618c: $7f
    nop                                           ; $618d: $00
    nop                                           ; $618e: $00
    db $10                                        ; $618f: $10
    ld a, $78                                     ; $6190: $3e $78
    ld d, a                                       ; $6192: $57
    xor d                                         ; $6193: $aa
    ld [$090e], sp                                ; $6194: $08 $0e $09
    ld l, d                                       ; $6197: $6a
    ld sp, $5250                                  ; $6198: $31 $50 $52
    sub h                                         ; $619b: $94
    dec d                                         ; $619c: $15
    inc h                                         ; $619d: $24
    nop                                           ; $619e: $00
    ld [hl], l                                    ; $619f: $75
    ld c, e                                       ; $61a0: $4b
    add $14                                       ; $61a1: $c6 $14
    dec b                                         ; $61a3: $05
    dec l                                         ; $61a4: $2d
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    ld [hl], l                                    ; $61a7: $75
    ld c, a                                       ; $61a8: $4f
    rst $38                                       ; $61a9: $ff
    ld a, a                                       ; $61aa: $7f
    nop                                           ; $61ab: $00
    jr nz, jr_0af_61ae                            ; $61ac: $20 $00

jr_0af_61ae:
    jr nz, jr_0af_6225                            ; $61ae: $20 $75

    ld c, a                                       ; $61b0: $4f
    rst $38                                       ; $61b1: $ff
    ld a, a                                       ; $61b2: $7f
    nop                                           ; $61b3: $00
    jr nz, jr_0af_61b6                            ; $61b4: $20 $00

jr_0af_61b6:
    jr nz, jr_0af_61c8                            ; $61b6: $20 $10

    ld a, $78                                     ; $61b8: $3e $78
    ld d, a                                       ; $61ba: $57
    xor d                                         ; $61bb: $aa
    ld [$0000], sp                                ; $61bc: $08 $00 $00
    ld d, h                                       ; $61bf: $54
    ld c, e                                       ; $61c0: $4b
    rst $38                                       ; $61c1: $ff
    ld a, a                                       ; $61c2: $7f
    nop                                           ; $61c3: $00
    jr nz, jr_0af_616f                            ; $61c4: $20 $a9

    inc c                                         ; $61c6: $0c
    dec d                                         ; $61c7: $15

jr_0af_61c8:
    ld [hl-], a                                   ; $61c8: $32
    ld d, h                                       ; $61c9: $54
    ld c, a                                       ; $61ca: $4f
    sbc $6f                                       ; $61cb: $de $6f
    rrca                                          ; $61cd: $0f
    dec c                                         ; $61ce: $0d
    sub $1d                                       ; $61cf: $d6 $1d
    ld c, d                                       ; $61d1: $4a

jr_0af_61d2:
    dec l                                         ; $61d2: $2d
    sbc d                                         ; $61d3: $9a
    ld b, d                                       ; $61d4: $42
    nop                                           ; $61d5: $00
    nop                                           ; $61d6: $00
    ld d, h                                       ; $61d7: $54
    ld c, e                                       ; $61d8: $4b
    adc e                                         ; $61d9: $8b
    nop                                           ; $61da: $00
    ld c, a                                       ; $61db: $4f
    dec d                                         ; $61dc: $15
    nop                                           ; $61dd: $00

jr_0af_61de:
    nop                                           ; $61de: $00
    ld d, e                                       ; $61df: $53
    ld c, e                                       ; $61e0: $4b
    rst $38                                       ; $61e1: $ff
    ld a, a                                       ; $61e2: $7f
    ld d, h                                       ; $61e3: $54
    ld c, e                                       ; $61e4: $4b
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    jr nz, @+$01                                  ; $61e8: $20 $ff

    ld a, a                                       ; $61ea: $7f
    ld d, h                                       ; $61eb: $54
    ld c, e                                       ; $61ec: $4b
    nop                                           ; $61ed: $00
    nop                                           ; $61ee: $00
    rst $38                                       ; $61ef: $ff
    ld a, a                                       ; $61f0: $7f
    nop                                           ; $61f1: $00
    jr nz, jr_0af_61d2                            ; $61f2: $20 $de

    ld l, a                                       ; $61f4: $6f
    nop                                           ; $61f5: $00
    nop                                           ; $61f6: $00
    inc sp                                        ; $61f7: $33
    ld b, a                                       ; $61f8: $47
    rst $38                                       ; $61f9: $ff
    ld a, a                                       ; $61fa: $7f
    ld d, e                                       ; $61fb: $53
    ld c, e                                       ; $61fc: $4b
    ld l, c                                       ; $61fd: $69
    nop                                           ; $61fe: $00
    inc sp                                        ; $61ff: $33
    ld b, a                                       ; $6200: $47
    ld a, [hl]                                    ; $6201: $7e
    ld d, a                                       ; $6202: $57
    or d                                          ; $6203: $b2
    dec h                                         ; $6204: $25
    xor $04                                       ; $6205: $ee $04
    or [hl]                                       ; $6207: $b6
    dec e                                         ; $6208: $1d
    inc d                                         ; $6209: $14
    ld [hl], $71                                  ; $620a: $36 $71
    add hl, de                                    ; $620c: $19
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    sub e                                         ; $620f: $93

Call_0af_6210:
    dec e                                         ; $6210: $1d
    adc d                                         ; $6211: $8a
    nop                                           ; $6212: $00
    inc sp                                        ; $6213: $33
    ld b, a                                       ; $6214: $47
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    ld [hl-], a                                   ; $6217: $32
    ld b, e                                       ; $6218: $43
    rst $38                                       ; $6219: $ff
    ld a, a                                       ; $621a: $7f
    inc sp                                        ; $621b: $33
    ld b, a                                       ; $621c: $47
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    rst $38                                       ; $621f: $ff
    ld a, a                                       ; $6220: $7f
    nop                                           ; $6221: $00
    jr nz, jr_0af_6257                            ; $6222: $20 $33

    ld b, a                                       ; $6224: $47

jr_0af_6225:
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    rst $38                                       ; $6227: $ff
    ld a, a                                       ; $6228: $7f
    nop                                           ; $6229: $00
    jr nz, jr_0af_61de                            ; $622a: $20 $b2

    dec h                                         ; $622c: $25
    nop                                           ; $622d: $00
    nop                                           ; $622e: $00
    ld de, $3243                                  ; $622f: $11 $43 $32
    ld b, e                                       ; $6232: $43
    ld [hl-], a                                   ; $6233: $32
    ld b, a                                       ; $6234: $47
    ld l, c                                       ; $6235: $69
    nop                                           ; $6236: $00
    ld e, a                                       ; $6237: $5f
    ld d, a                                       ; $6238: $57
    jp nc, Jump_000_1131                          ; $6239: $d2 $31 $11

    ld b, e                                       ; $623c: $43
    xor d                                         ; $623d: $aa
    ld [$1174], sp                                ; $623e: $08 $74 $11
    rst $10                                       ; $6241: $d7
    add hl, de                                    ; $6242: $19
    or h                                          ; $6243: $b4
    ld hl, $0045                                  ; $6244: $21 $45 $00
    sub e                                         ; $6247: $93
    dec d                                         ; $6248: $15
    and h                                         ; $6249: $a4
    inc e                                         ; $624a: $1c
    adc e                                         ; $624b: $8b
    nop                                           ; $624c: $00
    db $10                                        ; $624d: $10
    ccf                                           ; $624e: $3f

jr_0af_624f:
    ld de, $a443                                  ; $624f: $11 $43 $a4
    inc e                                         ; $6252: $1c
    adc e                                         ; $6253: $8b
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00

jr_0af_6256:
    nop                                           ; $6256: $00

jr_0af_6257:
    db $10                                        ; $6257: $10
    ccf                                           ; $6258: $3f
    rst $38                                       ; $6259: $ff
    ld a, a                                       ; $625a: $7f
    nop                                           ; $625b: $00
    jr nz, jr_0af_625e                            ; $625c: $20 $00

jr_0af_625e:
    nop                                           ; $625e: $00
    ldh a, [$3e]                                  ; $625f: $f0 $3e
    rst $38                                       ; $6261: $ff
    ld a, a                                       ; $6262: $7f
    nop                                           ; $6263: $00
    jr nz, jr_0af_6256                            ; $6264: $20 $f0

    ld a, $10                                     ; $6266: $3e $10
    ccf                                           ; $6268: $3f
    rst $38                                       ; $6269: $ff
    ld a, a                                       ; $626a: $7f
    nop                                           ; $626b: $00
    jr nz, jr_0af_628f                            ; $626c: $20 $21

    inc b                                         ; $626e: $04
    ld [hl], d                                    ; $626f: $72
    ld a, $7c                                     ; $6270: $3e $7c
    ld l, a                                       ; $6272: $6f
    adc e                                         ; $6273: $8b
    dec l                                         ; $6274: $2d
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    srl l                                         ; $6277: $cb $3d
    sub e                                         ; $6279: $93
    ld e, d                                       ; $627a: $5a
    and a                                         ; $627b: $a7
    ld [$0000], sp                                ; $627c: $08 $00 $00
    ld sp, $071e                                  ; $627f: $31 $1e $07
    add hl, bc                                    ; $6282: $09
    rst $38                                       ; $6283: $ff

jr_0af_6284:
    rlca                                          ; $6284: $07
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    rst $28                                       ; $6287: $ef
    ld a, [hl-]                                   ; $6288: $3a
    ret                                           ; $6289: $c9


    nop                                           ; $628a: $00
    ldh a, [$3e]                                  ; $628b: $f0 $3e
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00

jr_0af_628f:
    rst $28                                       ; $628f: $ef
    ld a, [hl-]                                   ; $6290: $3a
    rst $38                                       ; $6291: $ff
    ld a, a                                       ; $6292: $7f
    nop                                           ; $6293: $00
    jr nz, jr_0af_6296                            ; $6294: $20 $00

jr_0af_6296:
    nop                                           ; $6296: $00
    adc $36                                       ; $6297: $ce $36
    rst $38                                       ; $6299: $ff
    ld a, a                                       ; $629a: $7f
    rst $08                                       ; $629b: $cf
    ld a, [hl-]                                   ; $629c: $3a
    ld h, [hl]                                    ; $629d: $66
    ld [$36ce], sp                                ; $629e: $08 $ce $36
    sbc a                                         ; $62a1: $9f
    ld a, [hl+]                                   ; $62a2: $2a
    rst $28                                       ; $62a3: $ef
    ld a, [hl-]                                   ; $62a4: $3a
    ld hl, $ef00                                  ; $62a5: $21 $00 $ef
    ld a, [hl-]                                   ; $62a8: $3a
    ld l, e                                       ; $62a9: $6b
    dec h                                         ; $62aa: $25
    rst $38                                       ; $62ab: $ff
    ld e, e                                       ; $62ac: $5b
    push bc                                       ; $62ad: $c5
    jr jr_0af_624f                                ; $62ae: $18 $9f

    ld a, $8d                                     ; $62b0: $3e $8d
    dec e                                         ; $62b2: $1d
    rst $38                                       ; $62b3: $ff
    inc de                                        ; $62b4: $13
    ld hl, $0f00                                  ; $62b5: $21 $00 $0f
    ld [bc], a                                    ; $62b8: $02
    ld e, a                                       ; $62b9: $5f
    ld d, e                                       ; $62ba: $53
    sub b                                         ; $62bb: $90
    add hl, de                                    ; $62bc: $19
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    xor l                                         ; $62bf: $ad
    ld [hl], $19                                  ; $62c0: $36 $19
    ld [hl+], a                                   ; $62c2: $22
    xor b                                         ; $62c3: $a8
    inc c                                         ; $62c4: $0c
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    xor l                                         ; $62c7: $ad
    ld [hl], $ff                                  ; $62c8: $36 $ff
    ld a, a                                       ; $62ca: $7f
    nop                                           ; $62cb: $00
    jr nz, jr_0af_62ce                            ; $62cc: $20 $00

jr_0af_62ce:
    nop                                           ; $62ce: $00
    xor h                                         ; $62cf: $ac
    ld [hl-], a                                   ; $62d0: $32
    rst $38                                       ; $62d1: $ff
    ld a, a                                       ; $62d2: $7f
    nop                                           ; $62d3: $00
    jr nz, @+$08                                  ; $62d4: $20 $06

    jr jr_0af_6284                                ; $62d6: $18 $ac

    ld [hl-], a                                   ; $62d8: $32
    ld h, [hl]                                    ; $62d9: $66
    ld [$36ad], sp                                ; $62da: $08 $ad $36
    ld h, h                                       ; $62dd: $64
    nop                                           ; $62de: $00
    push de                                       ; $62df: $d5
    ld b, $b1                                     ; $62e0: $06 $b1
    ld c, c                                       ; $62e2: $49
    rst $38                                       ; $62e3: $ff
    ld e, e                                       ; $62e4: $5b
    ld h, a                                       ; $62e5: $67
    ld [$2ddb], sp                                ; $62e6: $08 $db $2d
    sbc a                                         ; $62e9: $9f
    ld e, e                                       ; $62ea: $5b
    db $dd                                        ; $62eb: $dd
    rrca                                          ; $62ec: $0f
    adc b                                         ; $62ed: $88
    inc b                                         ; $62ee: $04

jr_0af_62ef:
    rst $38                                       ; $62ef: $ff
    dec bc                                        ; $62f0: $0b
    ld d, h                                       ; $62f1: $54
    ld b, $ff                                     ; $62f2: $06 $ff
    ld e, e                                       ; $62f4: $5b
    inc bc                                        ; $62f5: $03
    db $10                                        ; $62f6: $10
    adc e                                         ; $62f7: $8b
    ld l, $66                                     ; $62f8: $2e $66
    ld [$00c9], sp                                ; $62fa: $08 $c9 $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    adc e                                         ; $62ff: $8b

Call_0af_6300:
    ld l, $ff                                     ; $6300: $2e $ff
    ld a, a                                       ; $6302: $7f
    nop                                           ; $6303: $00
    jr nz, jr_0af_6306                            ; $6304: $20 $00

jr_0af_6306:
    nop                                           ; $6306: $00
    rst $38                                       ; $6307: $ff
    ld a, a                                       ; $6308: $7f
    ld l, d                                       ; $6309: $6a
    ld a, [hl+]                                   ; $630a: $2a
    nop                                           ; $630b: $00
    jr nz, jr_0af_6314                            ; $630c: $20 $06

    jr jr_0af_62ef                                ; $630e: $18 $df

    ld a, [hl]                                    ; $6310: $7e
    ld l, d                                       ; $6311: $6a
    ld a, [hl+]                                   ; $6312: $2a
    adc e                                         ; $6313: $8b

jr_0af_6314:
    ld l, $c7                                     ; $6314: $2e $c7
    nop                                           ; $6316: $00
    ld a, h                                       ; $6317: $7c
    inc de                                        ; $6318: $13
    ld [de], a                                    ; $6319: $12
    ld d, c                                       ; $631a: $51
    cp $6e                                        ; $631b: $fe $6e
    ld a, [hl+]                                   ; $631d: $2a
    nop                                           ; $631e: $00
    jr c, jr_0af_6328                             ; $631f: $38 $07

    rst $18                                       ; $6321: $df
    ld b, [hl]                                    ; $6322: $46
    db $d3                                        ; $6323: $d3
    inc d                                         ; $6324: $14
    adc b                                         ; $6325: $88
    nop                                           ; $6326: $00
    ld a, a                                       ; $6327: $7f

jr_0af_6328:
    ld c, a                                       ; $6328: $4f
    adc l                                         ; $6329: $8d
    add hl, bc                                    ; $632a: $09
    or l                                          ; $632b: $b5
    ld c, $45                                     ; $632c: $0e $45
    ld [$2649], sp                                ; $632e: $08 $49 $26
    ld c, $4c                                     ; $6331: $0e $4c
    ld c, a                                       ; $6333: $4f
    ld [bc], a                                    ; $6334: $02
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00

Jump_0af_6337:
    ld c, c                                       ; $6337: $49
    ld h, $ff                                     ; $6338: $26 $ff
    ld a, a                                       ; $633a: $7f
    nop                                           ; $633b: $00
    jr nz, jr_0af_633e                            ; $633c: $20 $00

jr_0af_633e:
    nop                                           ; $633e: $00
    rst $38                                       ; $633f: $ff
    ld a, a                                       ; $6340: $7f
    daa                                           ; $6341: $27
    ld [hl+], a                                   ; $6342: $22
    nop                                           ; $6343: $00
    jr nz, jr_0af_634c                            ; $6344: $20 $06

    jr jr_0af_63c6                                ; $6346: $18 $7e

    ld a, [hl]                                    ; $6348: $7e
    daa                                           ; $6349: $27
    ld [hl+], a                                   ; $634a: $22
    rst $18                                       ; $634b: $df

jr_0af_634c:
    ld a, [hl]                                    ; $634c: $7e
    and a                                         ; $634d: $a7
    nop                                           ; $634e: $00
    cp h                                          ; $634f: $bc
    ld a, c                                       ; $6350: $79
    ei                                            ; $6351: $fb
    inc bc                                        ; $6352: $03
    rst $38                                       ; $6353: $ff
    ld e, e                                       ; $6354: $5b
    add hl, bc                                    ; $6355: $09
    ld bc, $78d8                                  ; $6356: $01 $d8 $78
    rla                                           ; $6359: $17
    ld a, [de]                                    ; $635a: $1a
    sbc a                                         ; $635b: $9f
    ld a, $65                                     ; $635c: $3e $65
    ld [$21d7], sp                                ; $635e: $08 $d7 $21
    cp l                                          ; $6361: $bd
    rrca                                          ; $6362: $0f
    ld e, a                                       ; $6363: $5f
    ld d, e                                       ; $6364: $53
    ld b, h                                       ; $6365: $44
    ld [$1e26], sp                                ; $6366: $08 $26 $1e
    inc c                                         ; $6369: $0c
    inc a                                         ; $636a: $3c
    rrca                                          ; $636b: $0f
    ld [bc], a                                    ; $636c: $02
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    rst $38                                       ; $636f: $ff
    ld a, a                                       ; $6370: $7f
    ld h, $1e                                     ; $6371: $26 $1e
    nop                                           ; $6373: $00
    jr nz, jr_0af_6376                            ; $6374: $20 $00

jr_0af_6376:
    nop                                           ; $6376: $00
    rst $38                                       ; $6377: $ff
    ld a, a                                       ; $6378: $7f
    dec b                                         ; $6379: $05

jr_0af_637a:
    ld a, [de]                                    ; $637a: $1a
    nop                                           ; $637b: $00
    jr nz, @+$08                                  ; $637c: $20 $06

    jr jr_0af_63de                                ; $637e: $18 $5e

    ld a, [hl]                                    ; $6380: $7e
    dec b                                         ; $6381: $05
    ld a, [de]                                    ; $6382: $1a
    ld c, $39                                     ; $6383: $0e $39
    and a                                         ; $6385: $a7
    nop                                           ; $6386: $00
    or $68                                        ; $6387: $f6 $68
    sbc a                                         ; $6389: $9f
    ld [hl], d                                    ; $638a: $72
    cpl                                           ; $638b: $2f
    ld [bc], a                                    ; $638c: $02
    ld bc, $6d10                                  ; $638d: $01 $10 $6d
    jr c, @+$3c                                   ; $6390: $38 $3a

    ld [hl], l                                    ; $6392: $75
    and [hl]                                      ; $6393: $a6
    nop                                           ; $6394: $00
    ld [hl+], a                                   ; $6395: $22
    inc b                                         ; $6396: $04
    db $fd                                        ; $6397: $fd
    dec bc                                        ; $6398: $0b
    cp d                                          ; $6399: $ba
    ld e, d                                       ; $639a: $5a
    ld c, e                                       ; $639b: $4b

jr_0af_639c:
    jr nc, @+$67                                  ; $639c: $30 $65

    inc b                                         ; $639e: $04
    db $e4                                        ; $639f: $e4

jr_0af_63a0:
    add hl, de                                    ; $63a0: $19
    dec bc                                        ; $63a1: $0b
    inc [hl]                                      ; $63a2: $34
    dec [hl]                                      ; $63a3: $35
    inc bc                                        ; $63a4: $03
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    rst $38                                       ; $63a7: $ff
    ld a, a                                       ; $63a8: $7f
    db $e4                                        ; $63a9: $e4
    add hl, de                                    ; $63aa: $19
    nop                                           ; $63ab: $00
    jr nz, jr_0af_63ae                            ; $63ac: $20 $00

jr_0af_63ae:
    nop                                           ; $63ae: $00
    rst $38                                       ; $63af: $ff
    ld a, a                                       ; $63b0: $7f
    call nz, Call_000_0015                        ; $63b1: $c4 $15 $00
    jr nz, jr_0af_637a                            ; $63b4: $20 $c4

    dec d                                         ; $63b6: $15
    ld e, l                                       ; $63b7: $5d
    ld a, d                                       ; $63b8: $7a
    ld b, $18                                     ; $63b9: $06 $18
    call $c734                                    ; $63bb: $cd $34 $c7
    ld [$5974], sp                                ; $63be: $08 $74 $59
    rst $28                                       ; $63c1: $ef
    ld b, b                                       ; $63c2: $40
    ld e, $7e                                     ; $63c3: $1e $7e
    nop                                           ; $63c5: $00

jr_0af_63c6:
    nop                                           ; $63c6: $00
    db $d3                                        ; $63c7: $d3
    ld d, b                                       ; $63c8: $50
    ld a, [hl+]                                   ; $63c9: $2a
    inc l                                         ; $63ca: $2c
    call c, Call_0af_4275                         ; $63cb: $dc $75 $42
    nop                                           ; $63ce: $00
    or e                                          ; $63cf: $b3
    ld d, b                                       ; $63d0: $50
    or b                                          ; $63d1: $b0
    ld [bc], a                                    ; $63d2: $02
    ld c, b                                       ; $63d3: $48
    inc h                                         ; $63d4: $24
    inc b                                         ; $63d5: $04
    inc d                                         ; $63d6: $14
    dec bc                                        ; $63d7: $0b
    inc [hl]                                      ; $63d8: $34
    and e                                         ; $63d9: $a3
    dec d                                         ; $63da: $15
    and [hl]                                      ; $63db: $a6
    nop                                           ; $63dc: $00
    nop                                           ; $63dd: $00

jr_0af_63de:
    nop                                           ; $63de: $00
    rst $38                                       ; $63df: $ff
    ld a, a                                       ; $63e0: $7f
    and e                                         ; $63e1: $a3
    dec d                                         ; $63e2: $15
    nop                                           ; $63e3: $00
    jr nz, jr_0af_63e6                            ; $63e4: $20 $00

jr_0af_63e6:
    nop                                           ; $63e6: $00
    rst $38                                       ; $63e7: $ff
    ld a, a                                       ; $63e8: $7f
    add h                                         ; $63e9: $84
    dec d                                         ; $63ea: $15
    nop                                           ; $63eb: $00
    jr nz, @-$7a                                  ; $63ec: $20 $84

    dec d                                         ; $63ee: $15
    cp a                                          ; $63ef: $bf
    ld a, [hl]                                    ; $63f0: $7e
    ld b, $18                                     ; $63f1: $06 $18
    call $2534                                    ; $63f3: $cd $34 $25
    inc d                                         ; $63f6: $14
    sub [hl]                                      ; $63f7: $96
    ld e, l                                       ; $63f8: $5d
    sbc [hl]                                      ; $63f9: $9e
    ld a, d                                       ; $63fa: $7a
    adc $3c                                       ; $63fb: $ce $3c
    nop                                           ; $63fd: $00
    nop                                           ; $63fe: $00
    jp nc, Jump_000_0750                          ; $63ff: $d2 $50 $07

    jr nz, jr_0af_639c                            ; $6402: $20 $98

    ld h, l                                       ; $6404: $65
    ld bc, $5200                                  ; $6405: $01 $00 $52
    ld c, h                                       ; $6408: $4c
    sbc e                                         ; $6409: $9b
    ld [hl], l                                    ; $640a: $75
    ld b, a                                       ; $640b: $47

jr_0af_640c:
    inc e                                         ; $640c: $1c
    dec b                                         ; $640d: $05
    inc d                                         ; $640e: $14
    inc c                                         ; $640f: $0c
    inc [hl]                                      ; $6410: $34
    add h                                         ; $6411: $84
    dec d                                         ; $6412: $15
    sub l                                         ; $6413: $95
    ld e, b                                       ; $6414: $58
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    rst $38                                       ; $6417: $ff
    ld a, a                                       ; $6418: $7f
    nop                                           ; $6419: $00
    jr nz, jr_0af_63a0                            ; $641a: $20 $84

    dec d                                         ; $641c: $15
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00

jr_0af_641f:
    rst $38                                       ; $641f: $ff
    ld a, a                                       ; $6420: $7f
    nop                                           ; $6421: $00
    jr nz, @-$30                                  ; $6422: $20 $ce

    inc a                                         ; $6424: $3c
    ld h, h                                       ; $6425: $64
    dec d                                         ; $6426: $15
    dec a                                         ; $6427: $3d
    halt                                          ; $6428: $76
    ld b, $18                                     ; $6429: $06 $18
    ld c, $39                                     ; $642b: $0e $39
    ld c, c                                       ; $642d: $49
    jr z, @-$27                                   ; $642e: $28 $d7

    ld h, c                                       ; $6430: $61
    pop af                                        ; $6431: $f1
    ld c, b                                       ; $6432: $48
    ld a, l                                       ; $6433: $7d
    halt                                          ; $6434: $76
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    dec bc                                        ; $6437: $0b
    jr nc, jr_0af_640c                            ; $6438: $30 $d2

    ld c, h                                       ; $643a: $4c
    ld b, $1c                                     ; $643b: $06 $1c
    ld [bc], a                                    ; $643d: $02
    ld [$340b], sp                                ; $643e: $08 $0b $34
    ld a, h                                       ; $6441: $7c
    ld [hl], l                                    ; $6442: $75
    ld [hl], d                                    ; $6443: $72
    ld d, b                                       ; $6444: $50
    inc b                                         ; $6445: $04
    db $10                                        ; $6446: $10
    ld a, [bc]                                    ; $6447: $0a
    inc l                                         ; $6448: $2c
    ld b, l                                       ; $6449: $45
    add hl, de                                    ; $644a: $19
    ld sp, $004c                                  ; $644b: $31 $4c $00
    nop                                           ; $644e: $00
    rst $38                                       ; $644f: $ff
    ld a, a                                       ; $6450: $7f
    nop                                           ; $6451: $00
    jr nz, jr_0af_6485                            ; $6452: $20 $31

    ld c, h                                       ; $6454: $4c
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    rst $38                                       ; $6457: $ff
    ld a, a                                       ; $6458: $7f
    nop                                           ; $6459: $00
    jr nz, jr_0af_64d9                            ; $645a: $20 $7d

    halt                                          ; $645c: $76
    inc b                                         ; $645d: $04
    db $10                                        ; $645e: $10
    ld e, [hl]                                    ; $645f: $5e
    ld a, [hl]                                    ; $6460: $7e
    ld c, $39                                     ; $6461: $0e $39
    dec h                                         ; $6463: $25
    add hl, de                                    ; $6464: $19
    jr z, jr_0af_6487                             ; $6465: $28 $20

    inc sp                                        ; $6467: $33
    ld d, c                                       ; $6468: $51
    xor [hl]                                      ; $6469: $ae
    inc a                                         ; $646a: $3c
    dec a                                         ; $646b: $3d
    halt                                          ; $646c: $76
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    ld c, d                                       ; $646f: $4a
    inc l                                         ; $6470: $2c
    and e                                         ; $6471: $a3
    db $10                                        ; $6472: $10
    adc l                                         ; $6473: $8d
    jr c, jr_0af_6496                             ; $6474: $38 $20

    nop                                           ; $6476: $00
    db $ec                                        ; $6477: $ec
    jr c, jr_0af_641f                             ; $6478: $38 $a5

    inc d                                         ; $647a: $14
    sub d                                         ; $647b: $92
    ld c, h                                       ; $647c: $4c
    ld [bc], a                                    ; $647d: $02
    ld [$31ed], sp                                ; $647e: $08 $ed $31
    dec c                                         ; $6481: $0d
    jr c, @+$28                                   ; $6482: $38 $26

    dec e                                         ; $6484: $1d

jr_0af_6485:
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00

jr_0af_6487:
    rst $38                                       ; $6487: $ff
    ld a, a                                       ; $6488: $7f
    nop                                           ; $6489: $00
    jr nz, @+$28                                  ; $648a: $20 $26

    dec e                                         ; $648c: $1d
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    rst $38                                       ; $648f: $ff
    ld a, a                                       ; $6490: $7f
    nop                                           ; $6491: $00
    jr nz, jr_0af_64d1                            ; $6492: $20 $3d

    halt                                          ; $6494: $76
    nop                                           ; $6495: $00

jr_0af_6496:
    nop                                           ; $6496: $00
    ld e, [hl]                                    ; $6497: $5e
    ld a, [hl]                                    ; $6498: $7e
    ld c, $39                                     ; $6499: $0e $39
    ld b, [hl]                                    ; $649b: $46
    jr jr_0af_64a4                                ; $649c: $18 $06

    inc e                                         ; $649e: $1c
    inc [hl]                                      ; $649f: $34
    ld d, c                                       ; $64a0: $51
    ld l, h                                       ; $64a1: $6c
    inc [hl]                                      ; $64a2: $34
    cp c                                          ; $64a3: $b9

jr_0af_64a4:
    ld l, c                                       ; $64a4: $69
    inc hl                                        ; $64a5: $23
    nop                                           ; $64a6: $00
    xor [hl]                                      ; $64a7: $ae
    ld sp, $04ce                                  ; $64a8: $31 $ce $04
    di                                            ; $64ab: $f3
    ld d, [hl]                                    ; $64ac: $56
    inc h                                         ; $64ad: $24
    nop                                           ; $64ae: $00
    adc $08                                       ; $64af: $ce $08
    jr nc, jr_0af_64c4                            ; $64b1: $30 $11

    ld d, c                                       ; $64b3: $51
    ld de, $0022                                  ; $64b4: $11 $22 $00
    ld [hl], b                                    ; $64b7: $70
    ld d, [hl]                                    ; $64b8: $56
    ld b, $21                                     ; $64b9: $06 $21
    xor e                                         ; $64bb: $ab
    inc b                                         ; $64bc: $04
    nop                                           ; $64bd: $00
    nop                                           ; $64be: $00
    rst $38                                       ; $64bf: $ff
    ld a, a                                       ; $64c0: $7f
    nop                                           ; $64c1: $00
    jr nz, jr_0af_64e5                            ; $64c2: $20 $21

jr_0af_64c4:
    inc b                                         ; $64c4: $04
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    rst $38                                       ; $64c7: $ff
    ld a, a                                       ; $64c8: $7f
    nop                                           ; $64c9: $00
    jr nz, jr_0af_6485                            ; $64ca: $20 $b9

    ld l, c                                       ; $64cc: $69
    inc bc                                        ; $64cd: $03
    inc c                                         ; $64ce: $0c
    ld a, [hl]                                    ; $64cf: $7e
    ld a, [hl]                                    ; $64d0: $7e

jr_0af_64d1:
    ld c, $39                                     ; $64d1: $0e $39
    rst $38                                       ; $64d3: $ff
    ld a, a                                       ; $64d4: $7f
    rlca                                          ; $64d5: $07
    jr nz, jr_0af_652c                            ; $64d6: $20 $54

    ld d, l                                       ; $64d8: $55

jr_0af_64d9:
    db $fc                                        ; $64d9: $fc
    ld [hl], l                                    ; $64da: $75
    ld l, l                                       ; $64db: $6d
    jr c, jr_0af_64de                             ; $64dc: $38 $00

jr_0af_64de:
    nop                                           ; $64de: $00
    db $ed                                        ; $64df: $ed
    dec a                                         ; $64e0: $3d
    sbc b                                         ; $64e1: $98
    ld a, $49                                     ; $64e2: $3e $49
    add hl, hl                                    ; $64e4: $29

jr_0af_64e5:
    ld bc, $4e00                                  ; $64e5: $01 $00 $4e
    add hl, de                                    ; $64e8: $19
    db $ed                                        ; $64e9: $ed
    ld b, l                                       ; $64ea: $45
    and e                                         ; $64eb: $a3

jr_0af_64ec:
    inc e                                         ; $64ec: $1c
    ld b, [hl]                                    ; $64ed: $46
    nop                                           ; $64ee: $00
    ld l, c                                       ; $64ef: $69
    dec [hl]                                      ; $64f0: $35
    ld c, a                                       ; $64f1: $4f
    ld d, d                                       ; $64f2: $52
    and e                                         ; $64f3: $a3
    jr jr_0af_64f6                                ; $64f4: $18 $00

jr_0af_64f6:
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    jr nz, jr_0af_653c                            ; $64f8: $20 $42

    ld [$0c62], sp                                ; $64fa: $08 $62 $0c
    nop                                           ; $64fd: $00

jr_0af_64fe:
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    jr nz, jr_0af_64fe                            ; $6500: $20 $fc

    ld [hl], l                                    ; $6502: $75
    ld l, l                                       ; $6503: $6d
    jr c, jr_0af_6509                             ; $6504: $38 $03

    inc c                                         ; $6506: $0c
    ld e, [hl]                                    ; $6507: $5e
    ld a, [hl]                                    ; $6508: $7e

jr_0af_6509:
    rst $28                                       ; $6509: $ef
    ld b, b                                       ; $650a: $40
    rst $38                                       ; $650b: $ff
    ld a, a                                       ; $650c: $7f
    rlca                                          ; $650d: $07
    jr nz, jr_0af_654e                            ; $650e: $20 $3e

    ld a, [hl]                                    ; $6510: $7e
    inc sp                                        ; $6511: $33
    ld c, l                                       ; $6512: $4d
    ld c, e                                       ; $6513: $4b
    jr nc, jr_0af_6516                            ; $6514: $30 $00

jr_0af_6516:
    nop                                           ; $6516: $00
    ld a, b                                       ; $6517: $78
    ld a, $72                                     ; $6518: $3e $72
    dec e                                         ; $651a: $1d
    ld a, a                                       ; $651b: $7f
    ld d, a                                       ; $651c: $57
    ld l, $15                                     ; $651d: $2e $15
    xor l                                         ; $651f: $ad
    dec [hl]                                      ; $6520: $35
    or a                                          ; $6521: $b7
    add hl, de                                    ; $6522: $19
    ld [hl], b                                    ; $6523: $70
    ld d, [hl]                                    ; $6524: $56
    inc bc                                        ; $6525: $03
    nop                                           ; $6526: $00
    xor l                                         ; $6527: $ad
    nop                                           ; $6528: $00
    ld b, a                                       ; $6529: $47
    nop                                           ; $652a: $00
    add l                                         ; $652b: $85

jr_0af_652c:
    inc c                                         ; $652c: $0c
    ld hl, $4f04                                  ; $652d: $21 $04 $4f
    dec d                                         ; $6530: $15
    nop                                           ; $6531: $00
    jr nz, jr_0af_64ec                            ; $6532: $20 $b8

    dec d                                         ; $6534: $15
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    jr nz, @+$35                                  ; $6538: $20 $33

    ld c, l                                       ; $653a: $4d
    ld c, e                                       ; $653b: $4b

jr_0af_653c:
    jr nc, jr_0af_653f                            ; $653c: $30 $01

    inc b                                         ; $653e: $04

jr_0af_653f:
    dec e                                         ; $653f: $1d
    ld a, d                                       ; $6540: $7a
    adc $38                                       ; $6541: $ce $38
    rst $38                                       ; $6543: $ff
    ld a, a                                       ; $6544: $7f
    jr z, jr_0af_656b                             ; $6545: $28 $24

    inc de                                        ; $6547: $13
    ld d, l                                       ; $6548: $55
    dec e                                         ; $6549: $1d
    ld a, d                                       ; $654a: $7a
    ld l, l                                       ; $654b: $6d
    jr c, jr_0af_6570                             ; $654c: $38 $22

jr_0af_654e:
    ld [$5bbf], sp                                ; $654e: $08 $bf $5b
    ld sp, $1315                                  ; $6551: $31 $15 $13
    ld [hl-], a                                   ; $6554: $32
    jr nc, jr_0af_656c                            ; $6555: $30 $15

    or [hl]                                       ; $6557: $b6
    add hl, de                                    ; $6558: $19
    ld a, [de]                                    ; $6559: $1a
    ld [hl+], a                                   ; $655a: $22
    rst $10                                       ; $655b: $d7
    dec e                                         ; $655c: $1d
    ld [hl+], a                                   ; $655d: $22
    nop                                           ; $655e: $00
    dec c                                         ; $655f: $0d
    ld b, [hl]                                    ; $6560: $46
    ld l, e                                       ; $6561: $6b
    nop                                           ; $6562: $00

jr_0af_6563:
    add e                                         ; $6563: $83
    db $10                                        ; $6564: $10
    ld hl, $0710                                  ; $6565: $21 $10 $07
    ld hl, $154f                                  ; $6568: $21 $4f $15

jr_0af_656b:
    nop                                           ; $656b: $00

jr_0af_656c:
    jr nz, jr_0af_656e                            ; $656c: $20 $00

jr_0af_656e:
    jr nz, jr_0af_6583                            ; $656e: $20 $13

jr_0af_6570:
    ld d, l                                       ; $6570: $55
    dec e                                         ; $6571: $1d
    ld a, d                                       ; $6572: $7a
    ld l, l                                       ; $6573: $6d

jr_0af_6574:
    jr c, jr_0af_6576                             ; $6574: $38 $00

jr_0af_6576:
    nop                                           ; $6576: $00
    ld a, $7e                                     ; $6577: $3e $7e
    rst $28                                       ; $6579: $ef
    ld b, b                                       ; $657a: $40
    rst $38                                       ; $657b: $ff
    ld a, a                                       ; $657c: $7f
    add hl, hl                                    ; $657d: $29
    jr z, jr_0af_6574                             ; $657e: $28 $f4

    ld d, h                                       ; $6580: $54
    db $db                                        ; $6581: $db
    ld [hl], c                                    ; $6582: $71

jr_0af_6583:
    adc a                                         ; $6583: $8f
    ld b, b                                       ; $6584: $40
    ld [bc], a                                    ; $6585: $02
    ld [$2509], sp                                ; $6586: $08 $09 $25
    ld [hl], b                                    ; $6589: $70
    ld c, [hl]                                    ; $658a: $4e
    xor e                                         ; $658b: $ab
    dec [hl]                                      ; $658c: $35
    ld h, b                                       ; $658d: $60
    inc d                                         ; $658e: $14
    cpl                                           ; $658f: $2f
    ld de, $24e5                                  ; $6590: $11 $e5 $24
    or [hl]                                       ; $6593: $b6
    add hl, de                                    ; $6594: $19
    ld [hl+], a                                   ; $6595: $22
    inc b                                         ; $6596: $04
    jp $861c                                      ; $6597: $c3 $1c $86


    inc b                                         ; $659a: $04
    and $1c                                       ; $659b: $e6 $1c
    nop                                           ; $659d: $00
    jr nz, jr_0af_6563                            ; $659e: $20 $c3

    inc e                                         ; $65a0: $1c
    add [hl]                                      ; $65a1: $86
    inc b                                         ; $65a2: $04
    and $1c                                       ; $65a3: $e6 $1c
    nop                                           ; $65a5: $00
    jr nz, @-$0a                                  ; $65a6: $20 $f4

    ld d, h                                       ; $65a8: $54
    db $db                                        ; $65a9: $db
    ld [hl], c                                    ; $65aa: $71
    adc a                                         ; $65ab: $8f
    ld b, b                                       ; $65ac: $40
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00
    ld a, $7e                                     ; $65af: $3e $7e
    rst $38                                       ; $65b1: $ff
    ld a, a                                       ; $65b2: $7f
    nop                                           ; $65b3: $00
    jr nz, jr_0af_65de                            ; $65b4: $20 $28

    inc h                                         ; $65b6: $24
    ld a, [c]                                     ; $65b7: $f2
    ld d, b                                       ; $65b8: $50
    db $db                                        ; $65b9: $db
    ld [hl], c                                    ; $65ba: $71
    ld c, a                                       ; $65bb: $4f
    ld b, b                                       ; $65bc: $40
    ld hl, $1504                                  ; $65bd: $21 $04 $15
    ld [hl], $7e                                  ; $65c0: $36 $7e
    ld d, e                                       ; $65c2: $53
    ld l, d                                       ; $65c3: $6a
    inc h                                         ; $65c4: $24
    add h                                         ; $65c5: $84
    inc c                                         ; $65c6: $0c
    ret c                                         ; $65c7: $d8

    dec e                                         ; $65c8: $1d
    dec c                                         ; $65c9: $0d
    dec d                                         ; $65ca: $15
    rst $00                                       ; $65cb: $c7
    stop                                          ; $65cc: $10 $00
    jr jr_0af_6615                                ; $65ce: $18 $45

    nop                                           ; $65d0: $00
    xor h                                         ; $65d1: $ac

jr_0af_65d2:
    nop                                           ; $65d2: $00
    ld h, a                                       ; $65d3: $67
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    jr nz, jr_0af_661d                            ; $65d6: $20 $45

    nop                                           ; $65d8: $00
    xor h                                         ; $65d9: $ac
    nop                                           ; $65da: $00
    ld h, a                                       ; $65db: $67
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00

jr_0af_65de:
    jr nz, jr_0af_65d2                            ; $65de: $20 $f2

    ld d, b                                       ; $65e0: $50
    db $db                                        ; $65e1: $db
    ld [hl], c                                    ; $65e2: $71
    ld c, a                                       ; $65e3: $4f
    ld b, b                                       ; $65e4: $40
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    db $fc                                        ; $65e7: $fc
    ld [hl], l                                    ; $65e8: $75
    rst $38                                       ; $65e9: $ff

jr_0af_65ea:
    ld a, a                                       ; $65ea: $7f
    nop                                           ; $65eb: $00
    jr nz, jr_0af_65ee                            ; $65ec: $20 $00

jr_0af_65ee:
    nop                                           ; $65ee: $00
    jp nc, $1c4c                                  ; $65ef: $d2 $4c $1c

    halt                                          ; $65f2: $76
    jr z, jr_0af_6619                             ; $65f3: $28 $24

    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    rst $38                                       ; $65f7: $ff
    ld a, a                                       ; $65f8: $7f
    xor h                                         ; $65f9: $ac
    nop                                           ; $65fa: $00
    ld h, a                                       ; $65fb: $67
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    nop                                           ; $65fe: $00
    rst $38                                       ; $65ff: $ff
    ld a, a                                       ; $6600: $7f
    xor h                                         ; $6601: $ac
    nop                                           ; $6602: $00
    ld h, a                                       ; $6603: $67
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    rst $38                                       ; $6607: $ff
    ld a, a                                       ; $6608: $7f
    nop                                           ; $6609: $00
    jr nz, jr_0af_6673                            ; $660a: $20 $67

    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    jr nz, @+$01                                  ; $660e: $20 $ff

    ld a, a                                       ; $6610: $7f
    nop                                           ; $6611: $00
    jr nz, jr_0af_667b                            ; $6612: $20 $67

    nop                                           ; $6614: $00

jr_0af_6615:
    nop                                           ; $6615: $00
    jr nz, jr_0af_65ea                            ; $6616: $20 $d2

    ld c, h                                       ; $6618: $4c

jr_0af_6619:
    inc e                                         ; $6619: $1c
    halt                                          ; $661a: $76
    jr z, @+$26                                   ; $661b: $28 $24

jr_0af_661d:
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    rst $38                                       ; $661f: $ff

jr_0af_6620:
    ld a, a                                       ; $6620: $7f
    nop                                           ; $6621: $00
    jr nz, jr_0af_664c                            ; $6622: $20 $28

    inc h                                         ; $6624: $24
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    rst $38                                       ; $6627: $ff
    ld a, a                                       ; $6628: $7f
    nop                                           ; $6629: $00
    jr nz, jr_0af_6654                            ; $662a: $20 $28

    inc h                                         ; $662c: $24
    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    jr nz, jr_0af_6632                            ; $6630: $20 $00

jr_0af_6632:
    jr nz, jr_0af_669b                            ; $6632: $20 $67

    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    jr nz, jr_0af_663a                            ; $6638: $20 $00

jr_0af_663a:
    jr nz, jr_0af_66a3                            ; $663a: $20 $67

    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00
    jr nz, jr_0af_6642                            ; $6640: $20 $00

jr_0af_6642:
    jr nz, jr_0af_66ab                            ; $6642: $20 $67

    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    jr nz, jr_0af_6648                            ; $6646: $20 $00

jr_0af_6648:
    jr nz, jr_0af_664a                            ; $6648: $20 $00

jr_0af_664a:
    jr nz, jr_0af_66b3                            ; $664a: $20 $67

jr_0af_664c:
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    jr nz, jr_0af_6650                            ; $664e: $20 $00

jr_0af_6650:
    jr nz, @+$1a                                  ; $6650: $20 $18

    ld [hl], a                                    ; $6652: $77
    ld c, b                                       ; $6653: $48

jr_0af_6654:
    ld b, l                                       ; $6654: $45

jr_0af_6655:
    nop                                           ; $6655: $00
    jr nz, jr_0af_6658                            ; $6656: $20 $00

jr_0af_6658:
    jr nz, @+$1a                                  ; $6658: $20 $18

    ld [hl], a                                    ; $665a: $77
    ld c, b                                       ; $665b: $48
    ld b, l                                       ; $665c: $45
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    ld e, h                                       ; $665f: $5c
    ld a, h                                       ; $6660: $7c
    nop                                           ; $6661: $00
    jr nz, jr_0af_66ac                            ; $6662: $20 $48

    ld b, l                                       ; $6664: $45
    nop                                           ; $6665: $00
    inc c                                         ; $6666: $0c
    inc sp                                        ; $6667: $33
    ld d, h                                       ; $6668: $54
    sbc $7e                                       ; $6669: $de $7e
    dec sp                                        ; $666b: $3b
    ld a, h                                       ; $666c: $7c
    nop                                           ; $666d: $00
    jr nz, jr_0af_66a3                            ; $666e: $20 $33

    ld d, h                                       ; $6670: $54
    sbc $7e                                       ; $6671: $de $7e

jr_0af_6673:
    dec sp                                        ; $6673: $3b
    ld a, h                                       ; $6674: $7c
    nop                                           ; $6675: $00
    jr nz, jr_0af_66ab                            ; $6676: $20 $33

    ld d, h                                       ; $6678: $54
    sbc $7e                                       ; $6679: $de $7e

jr_0af_667b:
    dec sp                                        ; $667b: $3b
    ld a, h                                       ; $667c: $7c
    nop                                           ; $667d: $00
    jr nz, jr_0af_66b3                            ; $667e: $20 $33

    ld d, h                                       ; $6680: $54
    sbc $7e                                       ; $6681: $de $7e
    dec sp                                        ; $6683: $3b
    ld a, h                                       ; $6684: $7c
    nop                                           ; $6685: $00
    jr nz, jr_0af_66e4                            ; $6686: $20 $5c

    ld a, h                                       ; $6688: $7c
    nop                                           ; $6689: $00
    jr nz, @+$4a                                  ; $668a: $20 $48

    ld b, l                                       ; $668c: $45
    nop                                           ; $668d: $00
    jr nz, jr_0af_6620                            ; $668e: $20 $90

    ld l, [hl]                                    ; $6690: $6e
    sub l                                         ; $6691: $95
    ld a, a                                       ; $6692: $7f
    sub a                                         ; $6693: $97
    ld a, a                                       ; $6694: $7f
    nop                                           ; $6695: $00
    inc d                                         ; $6696: $14
    jr c, jr_0af_6711                             ; $6697: $38 $78

    ld a, [hl]                                    ; $6699: $7e
    ld a, [hl]                                    ; $669a: $7e

jr_0af_669b:
    dec bc                                        ; $669b: $0b
    ld b, b                                       ; $669c: $40
    inc sp                                        ; $669d: $33
    ld h, b                                       ; $669e: $60
    ld e, [hl]                                    ; $669f: $5e
    ld a, [hl]                                    ; $66a0: $7e
    dec [hl]                                      ; $66a1: $35
    ld [hl], h                                    ; $66a2: $74

jr_0af_66a3:
    ld e, [hl]                                    ; $66a3: $5e
    ld a, a                                       ; $66a4: $7f
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    jr nc, @+$4a                                  ; $66a7: $30 $48

    scf                                           ; $66a9: $37
    ld l, b                                       ; $66aa: $68

jr_0af_66ab:
    nop                                           ; $66ab: $00

jr_0af_66ac:
    jr nz, jr_0af_66ae                            ; $66ac: $20 $00

jr_0af_66ae:
    nop                                           ; $66ae: $00
    ld e, [hl]                                    ; $66af: $5e
    ld a, [hl]                                    ; $66b0: $7e
    cp $7e                                        ; $66b1: $fe $7e

jr_0af_66b3:
    ld a, a                                       ; $66b3: $7f
    ld a, a                                       ; $66b4: $7f
    nop                                           ; $66b5: $00
    nop                                           ; $66b6: $00
    inc [hl]                                      ; $66b7: $34
    ld l, h                                       ; $66b8: $6c
    nop                                           ; $66b9: $00
    jr nz, jr_0af_673b                            ; $66ba: $20 $7f

    ld a, a                                       ; $66bc: $7f
    nop                                           ; $66bd: $00
    jr nz, jr_0af_6655                            ; $66be: $20 $95

    ld a, a                                       ; $66c0: $7f
    ld b, $31                                     ; $66c1: $06 $31
    dec bc                                        ; $66c3: $0b
    ld b, b                                       ; $66c4: $40
    nop                                           ; $66c5: $00
    jr nz, jr_0af_6658                            ; $66c6: $20 $90

    ld l, [hl]                                    ; $66c8: $6e
    cp b                                          ; $66c9: $b8
    ld a, e                                       ; $66ca: $7b
    ld b, $31                                     ; $66cb: $06 $31
    nop                                           ; $66cd: $00
    inc d                                         ; $66ce: $14
    jr nc, jr_0af_6729                            ; $66cf: $30 $58

    add hl, bc                                    ; $66d1: $09
    inc [hl]                                      ; $66d2: $34
    jr c, jr_0af_674d                             ; $66d3: $38 $78

    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    sbc $7e                                       ; $66d7: $de $7e
    ld de, $0960                                  ; $66d9: $11 $60 $09
    jr nc, jr_0af_66de                            ; $66dc: $30 $00

jr_0af_66de:
    nop                                           ; $66de: $00
    ld [de], a                                    ; $66df: $12
    ld h, h                                       ; $66e0: $64
    dec sp                                        ; $66e1: $3b
    ld a, h                                       ; $66e2: $7c
    inc bc                                        ; $66e3: $03

jr_0af_66e4:
    stop                                          ; $66e4: $10 $00
    nop                                           ; $66e6: $00
    dec c                                         ; $66e7: $0d
    ld c, h                                       ; $66e8: $4c
    jr c, jr_0af_6763                             ; $66e9: $38 $78

    ld [$2030], sp                                ; $66eb: $08 $30 $20
    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
    jr nz, jr_0af_66fb                            ; $66f0: $20 $09

    inc [hl]                                      ; $66f2: $34
    ret nz                                        ; $66f3: $c0

    inc b                                         ; $66f4: $04
    nop                                           ; $66f5: $00
    inc e                                         ; $66f6: $1c
    sub b                                         ; $66f7: $90
    ld l, [hl]                                    ; $66f8: $6e
    or a                                          ; $66f9: $b7
    ld a, e                                       ; $66fa: $7b

jr_0af_66fb:
    ld b, $31                                     ; $66fb: $06 $31
    nop                                           ; $66fd: $00
    inc e                                         ; $66fe: $1c
    sub b                                         ; $66ff: $90
    ld l, [hl]                                    ; $6700: $6e
    ld b, $31                                     ; $6701: $06 $31
    sub [hl]                                      ; $6703: $96
    ld a, a                                       ; $6704: $7f
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    add hl, bc                                    ; $6707: $09
    jr nc, jr_0af_673c                            ; $6708: $30 $32

    ld h, h                                       ; $670a: $64
    nop                                           ; $670b: $00
    jr nz, jr_0af_670e                            ; $670c: $20 $00

jr_0af_670e:
    nop                                           ; $670e: $00
    inc de                                        ; $670f: $13
    ld l, h                                       ; $6710: $6c

jr_0af_6711:
    adc d                                         ; $6711: $8a
    inc h                                         ; $6712: $24
    or e                                          ; $6713: $b3
    dec l                                         ; $6714: $2d
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    ld c, d                                       ; $6717: $4a
    add hl, hl                                    ; $6718: $29
    and [hl]                                      ; $6719: $a6
    nop                                           ; $671a: $00
    or e                                          ; $671b: $b3
    dec l                                         ; $671c: $2d
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    dec d                                         ; $671f: $15
    ld [hl], b                                    ; $6720: $70
    ld [bc], a                                    ; $6721: $02
    inc e                                         ; $6722: $1c
    ld [$0030], sp                                ; $6723: $08 $30 $00
    inc e                                         ; $6726: $1c
    db $e3                                        ; $6727: $e3
    add hl, bc                                    ; $6728: $09

jr_0af_6729:
    xor [hl]                                      ; $6729: $ae
    cpl                                           ; $672a: $2f
    ret nz                                        ; $672b: $c0

    inc b                                         ; $672c: $04
    nop                                           ; $672d: $00
    inc e                                         ; $672e: $1c
    sub b                                         ; $672f: $90
    ld l, [hl]                                    ; $6730: $6e
    or a                                          ; $6731: $b7
    ld a, e                                       ; $6732: $7b
    ld b, $31                                     ; $6733: $06 $31
    nop                                           ; $6735: $00
    inc e                                         ; $6736: $1c
    xor c                                         ; $6737: $a9
    ld b, l                                       ; $6738: $45
    ld b, $31                                     ; $6739: $06 $31

jr_0af_673b:
    sub b                                         ; $673b: $90

jr_0af_673c:
    ld l, [hl]                                    ; $673c: $6e
    ld [bc], a                                    ; $673d: $02
    inc d                                         ; $673e: $14
    cpl                                           ; $673f: $2f
    ld d, [hl]                                    ; $6740: $56
    dec d                                         ; $6741: $15
    ld [hl], h                                    ; $6742: $74
    dec bc                                        ; $6743: $0b
    inc a                                         ; $6744: $3c
    ld b, c                                       ; $6745: $41
    inc b                                         ; $6746: $04
    db $f4                                        ; $6747: $f4
    ld sp, $03e3                                  ; $6748: $31 $e3 $03
    rst $38                                       ; $674b: $ff
    ld a, a                                       ; $674c: $7f

jr_0af_674d:
    ld hl, $3b08                                  ; $674d: $21 $08 $3b
    ld h, e                                       ; $6750: $63
    and e                                         ; $6751: $a3
    inc bc                                        ; $6752: $03
    sub c                                         ; $6753: $91
    add hl, de                                    ; $6754: $19
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    ld [$2c30], sp                                ; $6757: $08 $30 $2c
    add hl, bc                                    ; $675a: $09
    nop                                           ; $675b: $00
    inc e                                         ; $675c: $1c
    nop                                           ; $675d: $00
    inc e                                         ; $675e: $1c
    ld [hl+], a                                   ; $675f: $22
    ld [bc], a                                    ; $6760: $02
    ld l, c                                       ; $6761: $69
    dec a                                         ; $6762: $3d

jr_0af_6763:
    ld l, h                                       ; $6763: $6c
    dec hl                                        ; $6764: $2b
    nop                                           ; $6765: $00
    inc e                                         ; $6766: $1c
    sub b                                         ; $6767: $90
    ld l, [hl]                                    ; $6768: $6e
    ld b, $31                                     ; $6769: $06 $31
    inc [hl]                                      ; $676b: $34
    ld a, a                                       ; $676c: $7f
    ld bc, $9318                                  ; $676d: $01 $18 $93
    ld e, [hl]                                    ; $6770: $5e
    ld sp, hl                                     ; $6771: $f9
    ld a, a                                       ; $6772: $7f
    and h                                         ; $6773: $a4
    inc h                                         ; $6774: $24
    ld [bc], a                                    ; $6775: $02
    inc c                                         ; $6776: $0c
    inc de                                        ; $6777: $13
    ld h, h                                       ; $6778: $64
    ld a, [$4a6a]                                 ; $6779: $fa $6a $4a
    add hl, hl                                    ; $677c: $29
    and e                                         ; $677d: $a3
    nop                                           ; $677e: $00
    db $db                                        ; $677f: $db
    ld d, d                                       ; $6780: $52
    dec hl                                        ; $6781: $2b
    ld hl, $2db3                                  ; $6782: $21 $b3 $2d
    ret                                           ; $6785: $c9


    ld [$4655], sp                                ; $6786: $08 $55 $46
    db $d3                                        ; $6789: $d3
    dec e                                         ; $678a: $1d
    inc e                                         ; $678b: $1c
    ld b, e                                       ; $678c: $43
    nop                                           ; $678d: $00
    jr nz, @-$0b                                  ; $678e: $20 $f3

    dec d                                         ; $6790: $15
    db $fd                                        ; $6791: $fd
    ld c, d                                       ; $6792: $4a
    ld h, l                                       ; $6793: $65
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    inc e                                         ; $6796: $1c
    ld h, d                                       ; $6797: $62
    ld b, $ff                                     ; $6798: $06 $ff
    ld d, d                                       ; $679a: $52
    and e                                         ; $679b: $a3
    inc b                                         ; $679c: $04
    nop                                           ; $679d: $00
    inc e                                         ; $679e: $1c
    dec l                                         ; $679f: $2d
    ld e, [hl]                                    ; $67a0: $5e
    daa                                           ; $67a1: $27
    dec [hl]                                      ; $67a2: $35
    sub b                                         ; $67a3: $90
    ld l, [hl]                                    ; $67a4: $6e
    ld bc, $9114                                  ; $67a5: $01 $14 $91
    ld e, c                                       ; $67a8: $59
    sbc l                                         ; $67a9: $9d
    ld a, l                                       ; $67aa: $7d
    ld c, b                                       ; $67ab: $48
    add hl, sp                                    ; $67ac: $39
    ld b, d                                       ; $67ad: $42
    inc c                                         ; $67ae: $0c
    rrca                                          ; $67af: $0f
    ld d, h                                       ; $67b0: $54
    ld c, d                                       ; $67b1: $4a
    add hl, hl                                    ; $67b2: $29
    or l                                          ; $67b3: $b5
    ld d, [hl]                                    ; $67b4: $56
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    ld a, e                                       ; $67b7: $7b
    ld c, d                                       ; $67b8: $4a
    ld sp, $2e08                                  ; $67b9: $31 $08 $2e
    dec h                                         ; $67bc: $25
    ld [hl+], a                                   ; $67bd: $22
    nop                                           ; $67be: $00
    ld c, h                                       ; $67bf: $4c
    dec e                                         ; $67c0: $1d
    cp e                                          ; $67c1: $bb
    ld c, [hl]                                    ; $67c2: $4e
    sub [hl]                                      ; $67c3: $96
    ld de, $0086                                  ; $67c4: $11 $86 $00
    dec d                                         ; $67c7: $15
    ld [de], a                                    ; $67c8: $12
    inc e                                         ; $67c9: $1c
    ld b, e                                       ; $67ca: $43
    sub $39                                       ; $67cb: $d6 $39
    ld h, h                                       ; $67cd: $64
    nop                                           ; $67ce: $00
    ld [de], a                                    ; $67cf: $12
    ld a, a                                       ; $67d0: $7f
    nop                                           ; $67d1: $00
    jr nz, jr_0af_682e                            ; $67d2: $20 $5a

    ld b, [hl]                                    ; $67d4: $46
    nop                                           ; $67d5: $00
    inc e                                         ; $67d6: $1c
    dec c                                         ; $67d7: $0d
    ld e, d                                       ; $67d8: $5a
    ld c, b                                       ; $67d9: $48
    add hl, sp                                    ; $67da: $39
    sub l                                         ; $67db: $95
    ld a, a                                       ; $67dc: $7f
    inc hl                                        ; $67dd: $23
    inc c                                         ; $67de: $0c
    cp b                                          ; $67df: $b8
    ld a, e                                       ; $67e0: $7b
    inc sp                                        ; $67e1: $33
    ld l, b                                       ; $67e2: $68
    dec bc                                        ; $67e3: $0b
    dec h                                         ; $67e4: $25
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    reti                                          ; $67e7: $d9


    ld b, d                                       ; $67e8: $42
    cp b                                          ; $67e9: $b8
    add hl, bc                                    ; $67ea: $09
    rst $08                                       ; $67eb: $cf
    inc b                                         ; $67ec: $04
    ld hl, $5700                                  ; $67ed: $21 $00 $57
    dec h                                         ; $67f0: $25
    cp h                                          ; $67f1: $bc
    ld c, d                                       ; $67f2: $4a
    dec bc                                        ; $67f3: $0b
    add hl, de                                    ; $67f4: $19
    ld [hl+], a                                   ; $67f5: $22
    nop                                           ; $67f6: $00
    ld [hl], $2a                                  ; $67f7: $36 $2a
    inc c                                         ; $67f9: $0c
    dec c                                         ; $67fa: $0d
    rst $38                                       ; $67fb: $ff
    ld d, d                                       ; $67fc: $52
    ld b, h                                       ; $67fd: $44
    nop                                           ; $67fe: $00
    dec d                                         ; $67ff: $15
    ld [de], a                                    ; $6800: $12
    dec e                                         ; $6801: $1d
    ld b, a                                       ; $6802: $47
    ld h, e                                       ; $6803: $63
    dec b                                         ; $6804: $05
    nop                                           ; $6805: $00
    inc e                                         ; $6806: $1c
    sub $39                                       ; $6807: $d6 $39
    ld h, e                                       ; $6809: $63
    ld [$52ff], sp                                ; $680a: $08 $ff $52
    nop                                           ; $680d: $00
    inc e                                         ; $680e: $1c
    sub b                                         ; $680f: $90
    ld l, [hl]                                    ; $6810: $6e
    ld c, b                                       ; $6811: $48
    add hl, sp                                    ; $6812: $39
    sub l                                         ; $6813: $95
    ld a, a                                       ; $6814: $7f
    add d                                         ; $6815: $82
    inc e                                         ; $6816: $1c
    ld a, [c]                                     ; $6817: $f2
    ld [hl], d                                    ; $6818: $72
    pop de                                        ; $6819: $d1
    nop                                           ; $681a: $00
    ld a, [hl]                                    ; $681b: $7e
    ld e, a                                       ; $681c: $5f
    adc $00                                       ; $681d: $ce $00
    inc a                                         ; $681f: $3c
    ld b, e                                       ; $6820: $43
    sub [hl]                                      ; $6821: $96
    add hl, bc                                    ; $6822: $09
    ld a, [hl]                                    ; $6823: $7e
    ld bc, $0044                                  ; $6824: $01 $44 $00
    db $d3                                        ; $6827: $d3
    dec e                                         ; $6828: $1d
    ld a, [bc]                                    ; $6829: $0a
    add hl, de                                    ; $682a: $19
    db $fc                                        ; $682b: $fc
    ld b, d                                       ; $682c: $42
    nop                                           ; $682d: $00

jr_0af_682e:
    nop                                           ; $682e: $00
    ld c, l                                       ; $682f: $4d
    add hl, de                                    ; $6830: $19
    ld d, [hl]                                    ; $6831: $56
    ld e, $86                                     ; $6832: $1e $86
    nop                                           ; $6834: $00
    ld h, c                                       ; $6835: $61
    ld bc, $52ff                                  ; $6836: $01 $ff $52
    ld h, l                                       ; $6839: $65
    nop                                           ; $683a: $00
    and b                                         ; $683b: $a0
    ld [bc], a                                    ; $683c: $02
    nop                                           ; $683d: $00
    inc e                                         ; $683e: $1c
    sub c                                         ; $683f: $91
    ld h, [hl]                                    ; $6840: $66
    ld b, l                                       ; $6841: $45
    inc c                                         ; $6842: $0c
    sub l                                         ; $6843: $95
    ld a, a                                       ; $6844: $7f
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    sub h                                         ; $6847: $94
    ld l, [hl]                                    ; $6848: $6e
    cp c                                          ; $6849: $b9
    ld a, e                                       ; $684a: $7b
    jr nz, jr_0af_6869                            ; $684b: $20 $1c

    ld b, b                                       ; $684d: $40
    inc d                                         ; $684e: $14
    sub b                                         ; $684f: $90
    ld l, [hl]                                    ; $6850: $6e
    db $fd                                        ; $6851: $fd
    ld [hl], a                                    ; $6852: $77
    pop de                                        ; $6853: $d1
    nop                                           ; $6854: $00
    ld h, h                                       ; $6855: $64
    inc b                                         ; $6856: $04
    sbc a                                         ; $6857: $9f
    ld bc, $575f                                  ; $6858: $01 $5f $57
    pop de                                        ; $685b: $d1
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    db $d3                                        ; $685f: $d3
    add hl, de                                    ; $6860: $19
    ld a, [de]                                    ; $6861: $1a
    scf                                           ; $6862: $37
    ld h, [hl]                                    ; $6863: $66
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    dec d                                         ; $6867: $15
    ld [de], a                                    ; $6868: $12

jr_0af_6869:
    ld sp, hl                                     ; $6869: $f9
    ld [hl-], a                                   ; $686a: $32
    ret                                           ; $686b: $c9


    ld [$00a3], sp                                ; $686c: $08 $a3 $00
    db $e3                                        ; $686f: $e3
    inc bc                                        ; $6870: $03
    or d                                          ; $6871: $b2
    ld hl, $3b1a                                  ; $6872: $21 $1a $3b
    nop                                           ; $6875: $00
    jr nz, jr_0af_68a6                            ; $6876: $20 $2e

    ld e, [hl]                                    ; $6878: $5e
    ld [hl], l                                    ; $6879: $75
    ld a, a                                       ; $687a: $7f
    ld h, [hl]                                    ; $687b: $66
    ld [$2000], sp                                ; $687c: $08 $00 $20
    ld d, b                                       ; $687f: $50
    ld l, d                                       ; $6880: $6a
    ld [hl], a                                    ; $6881: $77
    ld a, e                                       ; $6882: $7b
    cp $7b                                        ; $6883: $fe $7b
    ld h, b                                       ; $6885: $60
    inc e                                         ; $6886: $1c
    sub b                                         ; $6887: $90
    ld l, [hl]                                    ; $6888: $6e
    cp b                                          ; $6889: $b8
    ld a, e                                       ; $688a: $7b
    ld b, a                                       ; $688b: $47
    dec [hl]                                      ; $688c: $35
    ld b, h                                       ; $688d: $44
    inc b                                         ; $688e: $04
    sub b                                         ; $688f: $90
    ld l, [hl]                                    ; $6890: $6e
    ld d, c                                       ; $6891: $51
    add hl, de                                    ; $6892: $19
    sbc $4e                                       ; $6893: $de $4e
    ld [hl+], a                                   ; $6895: $22
    nop                                           ; $6896: $00
    or [hl]                                       ; $6897: $b6
    add hl, bc                                    ; $6898: $09
    jp c, $d136                                   ; $6899: $da $36 $d1

    nop                                           ; $689c: $00
    ret z                                         ; $689d: $c8

    inc b                                         ; $689e: $04
    sub [hl]                                      ; $689f: $96
    ld a, [hl+]                                   ; $68a0: $2a
    di                                            ; $68a1: $f3
    dec c                                         ; $68a2: $0d
    ld a, [de]                                    ; $68a3: $1a
    dec sp                                        ; $68a4: $3b
    inc b                                         ; $68a5: $04

jr_0af_68a6:
    ld bc, $4afb                                  ; $68a6: $01 $fb $4a
    add e                                         ; $68a9: $83
    inc bc                                        ; $68aa: $03
    sub c                                         ; $68ab: $91
    add hl, hl                                    ; $68ac: $29
    nop                                           ; $68ad: $00
    inc e                                         ; $68ae: $1c
    dec c                                         ; $68af: $0d
    ld e, d                                       ; $68b0: $5a
    ld h, [hl]                                    ; $68b1: $66
    inc c                                         ; $68b2: $0c
    ld d, h                                       ; $68b3: $54
    ld a, a                                       ; $68b4: $7f
    jr nz, jr_0af_68c3                            ; $68b5: $20 $0c

    sub d                                         ; $68b7: $92
    ld l, [hl]                                    ; $68b8: $6e
    sbc c                                         ; $68b9: $99

jr_0af_68ba:
    ld a, e                                       ; $68ba: $7b
    ld b, a                                       ; $68bb: $47
    dec [hl]                                      ; $68bc: $35
    ld h, e                                       ; $68bd: $63
    inc b                                         ; $68be: $04
    sub b                                         ; $68bf: $90
    ld l, [hl]                                    ; $68c0: $6e
    sub l                                         ; $68c1: $95
    ld a, a                                       ; $68c2: $7f

jr_0af_68c3:
    ld b, a                                       ; $68c3: $47
    dec [hl]                                      ; $68c4: $35
    ld h, l                                       ; $68c5: $65
    nop                                           ; $68c6: $00
    dec e                                         ; $68c7: $1d
    ld b, a                                       ; $68c8: $47
    ld b, a                                       ; $68c9: $47
    dec [hl]                                      ; $68ca: $35
    sub c                                         ; $68cb: $91
    add hl, hl                                    ; $68cc: $29
    ld [hl+], a                                   ; $68cd: $22
    nop                                           ; $68ce: $00
    sub $15                                       ; $68cf: $d6 $15
    dec de                                        ; $68d1: $1b
    dec sp                                        ; $68d2: $3b
    sub d                                         ; $68d3: $92
    nop                                           ; $68d4: $00
    ld b, c                                       ; $68d5: $41
    ld bc, $1a35                                  ; $68d6: $01 $35 $1a
    ld a, [$ea36]                                 ; $68d9: $fa $36 $ea
    nop                                           ; $68dc: $00
    push hl                                       ; $68dd: $e5
    nop                                           ; $68de: $00
    jp nc, $a225                                  ; $68df: $d2 $25 $a2

    inc bc                                        ; $68e2: $03
    inc a                                         ; $68e3: $3c
    ld d, a                                       ; $68e4: $57
    nop                                           ; $68e5: $00
    inc e                                         ; $68e6: $1c
    sub b                                         ; $68e7: $90
    ld l, [hl]                                    ; $68e8: $6e
    add [hl]                                      ; $68e9: $86
    inc d                                         ; $68ea: $14
    sub [hl]                                      ; $68eb: $96
    ld a, a                                       ; $68ec: $7f
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    ld d, b                                       ; $68ef: $50
    ld l, d                                       ; $68f0: $6a
    jr jr_0af_696a                                ; $68f1: $18 $77

    ld b, b                                       ; $68f3: $40
    inc e                                         ; $68f4: $1c
    ret                                           ; $68f5: $c9


    db $10                                        ; $68f6: $10
    scf                                           ; $68f7: $37
    ld [hl-], a                                   ; $68f8: $32
    adc a                                         ; $68f9: $8f
    ld l, [hl]                                    ; $68fa: $6e
    ld a, e                                       ; $68fb: $7b
    ld l, a                                       ; $68fc: $6f
    ld h, l                                       ; $68fd: $65
    nop                                           ; $68fe: $00
    dec d                                         ; $68ff: $15
    ld [de], a                                    ; $6900: $12
    db $fd                                        ; $6901: $fd
    ld c, d                                       ; $6902: $4a

jr_0af_6903:
    call nc, $a62d                                ; $6903: $d4 $2d $a6
    inc b                                         ; $6906: $04
    sbc b                                         ; $6907: $98
    ld [hl-], a                                   ; $6908: $32
    dec d                                         ; $6909: $15
    nop                                           ; $690a: $00
    jp nc, Jump_0af_410d                          ; $690b: $d2 $0d $41

    ld bc, $1635                                  ; $690e: $01 $35 $16
    ld a, [$c936]                                 ; $6911: $fa $36 $c9
    nop                                           ; $6914: $00
    add $00                                       ; $6915: $c6 $00
    ld e, b                                       ; $6917: $58
    ld b, a                                       ; $6918: $47
    add l                                         ; $6919: $85
    rlca                                          ; $691a: $07
    sub b                                         ; $691b: $90
    dec e                                         ; $691c: $1d
    nop                                           ; $691d: $00
    inc e                                         ; $691e: $1c
    ld l, a                                       ; $691f: $6f

jr_0af_6920:
    ld l, d                                       ; $6920: $6a
    ld h, l                                       ; $6921: $65
    jr jr_0af_68ba                                ; $6922: $18 $96

    ld a, a                                       ; $6924: $7f
    nop                                           ; $6925: $00
    db $10                                        ; $6926: $10
    ld l, $66                                     ; $6927: $2e $66
    ld e, b                                       ; $6929: $58
    ld [hl], a                                    ; $692a: $77
    ld b, $3d                                     ; $692b: $06 $3d
    ld h, l                                       ; $692d: $65
    ld [$6e8f], sp                                ; $692e: $08 $8f $6e
    ld d, d                                       ; $6931: $52
    ld de, $7bb8                                  ; $6932: $11 $b8 $7b
    ld h, [hl]                                    ; $6935: $66
    nop                                           ; $6936: $00
    push af                                       ; $6937: $f5
    dec l                                         ; $6938: $2d
    sbc $4e                                       ; $6939: $de $4e
    ld e, a                                       ; $693b: $5f
    ld e, a                                       ; $693c: $5f
    ld c, c                                       ; $693d: $49
    nop                                           ; $693e: $00
    db $f4                                        ; $693f: $f4
    dec l                                         ; $6940: $2d
    add hl, de                                    ; $6941: $19
    nop                                           ; $6942: $00
    jp c, Jump_0af_413a                           ; $6943: $da $3a $41

    ld bc, $1215                                  ; $6946: $01 $15 $12
    ld a, [de]                                    ; $6949: $1a
    scf                                           ; $694a: $37
    ret z                                         ; $694b: $c8

    nop                                           ; $694c: $00
    and a                                         ; $694d: $a7
    inc c                                         ; $694e: $0c
    db $e3                                        ; $694f: $e3
    inc bc                                        ; $6950: $03
    or c                                          ; $6951: $b1
    dec c                                         ; $6952: $0d
    rst $30                                       ; $6953: $f7
    ld e, a                                       ; $6954: $5f
    nop                                           ; $6955: $00
    inc e                                         ; $6956: $1c
    ld b, a                                       ; $6957: $47
    dec [hl]                                      ; $6958: $35
    sub b                                         ; $6959: $90
    ld l, [hl]                                    ; $695a: $6e
    ld b, l                                       ; $695b: $45
    stop                                          ; $695c: $10 $00
    inc d                                         ; $695e: $14
    ld l, b                                       ; $695f: $68
    ld b, l                                       ; $6960: $45
    ld [hl], b                                    ; $6961: $70
    ld h, [hl]                                    ; $6962: $66
    sub a                                         ; $6963: $97
    ld a, a                                       ; $6964: $7f
    ld h, [hl]                                    ; $6965: $66
    nop                                           ; $6966: $00
    sub b                                         ; $6967: $90
    ld l, [hl]                                    ; $6968: $6e
    add c                                         ; $6969: $81

jr_0af_696a:
    jr nz, jr_0af_6903                            ; $696a: $20 $97

    ld a, a                                       ; $696c: $7f
    ld h, l                                       ; $696d: $65
    nop                                           ; $696e: $00
    push af                                       ; $696f: $f5
    dec l                                         ; $6970: $2d
    ld d, c                                       ; $6971: $51
    dec d                                         ; $6972: $15
    call c, $2a4a                                 ; $6973: $dc $4a $2a
    nop                                           ; $6976: $00
    dec d                                         ; $6977: $15
    ld d, $1c                                     ; $6978: $16 $1c
    nop                                           ; $697a: $00
    cp a                                          ; $697b: $bf
    ld d, [hl]                                    ; $697c: $56
    pop bc                                        ; $697d: $c1
    ld bc, $11d3                                  ; $697e: $01 $d3 $11
    ld l, d                                       ; $6981: $6a
    nop                                           ; $6982: $00
    ld a, [de]                                    ; $6983: $1a
    dec sp                                        ; $6984: $3b
    ld h, [hl]                                    ; $6985: $66
    ld [$03a2], sp                                ; $6986: $08 $a2 $03
    or b                                          ; $6989: $b0
    ld l, d                                       ; $698a: $6a
    jp nc, Jump_000_000d                          ; $698b: $d2 $0d $00

    jr nz, jr_0af_6920                            ; $698e: $20 $90

    ld l, [hl]                                    ; $6990: $6e
    ld h, l                                       ; $6991: $65
    inc d                                         ; $6992: $14
    cp c                                          ; $6993: $b9
    ld a, e                                       ; $6994: $7b
    nop                                           ; $6995: $00
    inc d                                         ; $6996: $14
    ld c, b                                       ; $6997: $48
    ld b, c                                       ; $6998: $41
    ld d, b                                       ; $6999: $50
    ld e, [hl]                                    ; $699a: $5e
    sub a                                         ; $699b: $97
    ld a, a                                       ; $699c: $7f
    add l                                         ; $699d: $85
    ld [$4e0e], sp                                ; $699e: $08 $0e $4e
    ld d, l                                       ; $69a1: $55
    ld a, a                                       ; $69a2: $7f
    adc a                                         ; $69a3: $8f
    ld [hl], d                                    ; $69a4: $72
    ld h, [hl]                                    ; $69a5: $66
    nop                                           ; $69a6: $00
    scf                                           ; $69a7: $37
    ld [hl-], a                                   ; $69a8: $32
    ld d, d                                       ; $69a9: $52
    ld de, $5f5f                                  ; $69aa: $11 $5f $5f
    ret z                                         ; $69ad: $c8

    nop                                           ; $69ae: $00
    db $d3                                        ; $69af: $d3
    dec c                                         ; $69b0: $0d
    sbc a                                         ; $69b1: $9f
    ld sp, $000e                                  ; $69b2: $31 $0e $00
    add $00                                       ; $69b5: $c6 $00
    ld [c], a                                     ; $69b7: $e2
    inc bc                                        ; $69b8: $03
    inc [hl]                                      ; $69b9: $34
    ld [hl+], a                                   ; $69ba: $22
    sbc h                                         ; $69bb: $9c
    inc b                                         ; $69bc: $04
    add c                                         ; $69bd: $81
    inc d                                         ; $69be: $14
    ld l, a                                       ; $69bf: $6f
    ld h, [hl]                                    ; $69c0: $66
    ld [bc], a                                    ; $69c1: $02
    inc bc                                        ; $69c2: $03
    ld d, h                                       ; $69c3: $54
    ld a, a                                       ; $69c4: $7f
    nop                                           ; $69c5: $00
    inc e                                         ; $69c6: $1c
    dec c                                         ; $69c7: $0d
    ld e, d                                       ; $69c8: $5a
    sbc b                                         ; $69c9: $98
    ld a, e                                       ; $69ca: $7b
    sub b                                         ; $69cb: $90
    ld [hl], d                                    ; $69cc: $72
    nop                                           ; $69cd: $00
    jr jr_0af_6a1f                                ; $69ce: $18 $4f

    ld h, d                                       ; $69d0: $62
    daa                                           ; $69d1: $27
    ld b, c                                       ; $69d2: $41
    sbc d                                         ; $69d3: $9a
    ld [hl], e                                    ; $69d4: $73
    ld h, d                                       ; $69d5: $62
    inc d                                         ; $69d6: $14
    ld c, [hl]                                    ; $69d7: $4e
    ld l, d                                       ; $69d8: $6a
    cp b                                          ; $69d9: $b8
    ld a, e                                       ; $69da: $7b
    ld b, a                                       ; $69db: $47
    dec [hl]                                      ; $69dc: $35
    ld h, h                                       ; $69dd: $64
    nop                                           ; $69de: $00
    sub b                                         ; $69df: $90
    ld l, [hl]                                    ; $69e0: $6e
    xor $08                                       ; $69e1: $ee $08
    ld e, a                                       ; $69e3: $5f
    ld e, a                                       ; $69e4: $5f
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    add hl, hl                                    ; $69e7: $29
    dec h                                         ; $69e8: $25
    cp a                                          ; $69e9: $bf
    ld d, [hl]                                    ; $69ea: $56
    ld de, $a000                                  ; $69eb: $11 $00 $a0
    nop                                           ; $69ee: $00
    rra                                           ; $69ef: $1f
    nop                                           ; $69f0: $00
    ld hl, $a903                                  ; $69f1: $21 $03 $a9
    db $10                                        ; $69f4: $10
    ld h, h                                       ; $69f5: $64
    inc c                                         ; $69f6: $0c
    sub l                                         ; $69f7: $95
    ld [hl], a                                    ; $69f8: $77
    inc bc                                        ; $69f9: $03
    rlca                                          ; $69fa: $07
    jr z, jr_0af_6a32                             ; $69fb: $28 $35

    nop                                           ; $69fd: $00
    inc e                                         ; $69fe: $1c
    ld c, [hl]                                    ; $69ff: $4e
    ld h, d                                       ; $6a00: $62
    sub a                                         ; $6a01: $97

jr_0af_6a02:
    ld a, e                                       ; $6a02: $7b
    ld h, l                                       ; $6a03: $65
    inc d                                         ; $6a04: $14
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    xor e                                         ; $6a07: $ab
    ld c, l                                       ; $6a08: $4d
    db $f4                                        ; $6a09: $f4
    ld l, [hl]                                    ; $6a0a: $6e
    nop                                           ; $6a0b: $00
    jr nz, jr_0af_6a0e                            ; $6a0c: $20 $00

jr_0af_6a0e:
    nop                                           ; $6a0e: $00
    sub b                                         ; $6a0f: $90
    ld l, [hl]                                    ; $6a10: $6e
    jr z, jr_0af_6a3c                             ; $6a11: $28 $29

    ld h, b                                       ; $6a13: $60
    inc e                                         ; $6a14: $1c
    ld b, h                                       ; $6a15: $44
    nop                                           ; $6a16: $00
    scf                                           ; $6a17: $37
    ld [hl-], a                                   ; $6a18: $32
    dec bc                                        ; $6a19: $0b
    dec d                                         ; $6a1a: $15
    ld e, a                                       ; $6a1b: $5f
    ld e, a                                       ; $6a1c: $5f
    dec bc                                        ; $6a1d: $0b
    nop                                           ; $6a1e: $00

jr_0af_6a1f:
    db $fd                                        ; $6a1f: $fd
    ld [hl], a                                    ; $6a20: $77
    ld l, e                                       ; $6a21: $6b
    dec l                                         ; $6a22: $2d
    jr jr_0af_6a25                                ; $6a23: $18 $00

jr_0af_6a25:
    ld b, [hl]                                    ; $6a25: $46
    dec d                                         ; $6a26: $15
    ld a, [$586b]                                 ; $6a27: $fa $6b $58
    ld [$0303], sp                                ; $6a2a: $08 $03 $03
    push hl                                       ; $6a2d: $e5
    jr jr_0af_6a9f                                ; $6a2e: $18 $6f

    ld l, d                                       ; $6a30: $6a
    db $e3                                        ; $6a31: $e3

jr_0af_6a32:
    inc bc                                        ; $6a32: $03
    db $fd                                        ; $6a33: $fd
    ld [hl], a                                    ; $6a34: $77
    nop                                           ; $6a35: $00
    inc e                                         ; $6a36: $1c
    ld l, a                                       ; $6a37: $6f
    ld h, [hl]                                    ; $6a38: $66
    sub a                                         ; $6a39: $97
    ld a, e                                       ; $6a3a: $7b
    ld b, a                                       ; $6a3b: $47

jr_0af_6a3c:
    dec [hl]                                      ; $6a3c: $35
    nop                                           ; $6a3d: $00
    inc d                                         ; $6a3e: $14
    adc d                                         ; $6a3f: $8a
    ld c, c                                       ; $6a40: $49
    sbc h                                         ; $6a41: $9c
    ld [hl], a                                    ; $6a42: $77
    ld [hl], d                                    ; $6a43: $72
    ld e, d                                       ; $6a44: $5a
    ld hl, $fd04                                  ; $6a45: $21 $04 $fd
    ld [hl], a                                    ; $6a48: $77
    add hl, hl                                    ; $6a49: $29
    dec h                                         ; $6a4a: $25
    ld l, e                                       ; $6a4b: $6b
    dec l                                         ; $6a4c: $2d
    ld h, h                                       ; $6a4d: $64
    inc b                                         ; $6a4e: $04
    scf                                           ; $6a4f: $37
    ld [hl-], a                                   ; $6a50: $32
    db $dd                                        ; $6a51: $dd
    ld l, a                                       ; $6a52: $6f
    ld c, $0d                                     ; $6a53: $0e $0d
    ld b, h                                       ; $6a55: $44
    db $10                                        ; $6a56: $10
    scf                                           ; $6a57: $37
    ld [hl-], a                                   ; $6a58: $32
    stop                                          ; $6a59: $10 $00
    ld e, a                                       ; $6a5b: $5f
    ld e, a                                       ; $6a5c: $5f
    ld c, $04                                     ; $6a5d: $0e $04
    call c, Call_0af_6152                         ; $6a5f: $dc $52 $61
    ld bc, $0382                                  ; $6a62: $01 $82 $03
    jp $d308                                      ; $6a65: $c3 $08 $d3


    ld l, d                                       ; $6a68: $6a
    db $e3                                        ; $6a69: $e3
    inc bc                                        ; $6a6a: $03
    ld b, a                                       ; $6a6b: $47
    add hl, sp                                    ; $6a6c: $39
    nop                                           ; $6a6d: $00
    jr nz, jr_0af_6ad9                            ; $6a6e: $20 $69

    add hl, sp                                    ; $6a70: $39
    or b                                          ; $6a71: $b0
    ld [hl], d                                    ; $6a72: $72
    ld b, l                                       ; $6a73: $45
    stop                                          ; $6a74: $10 $00
    nop                                           ; $6a76: $00
    add hl, hl                                    ; $6a77: $29
    dec h                                         ; $6a78: $25
    ld d, e                                       ; $6a79: $53
    ld b, [hl]                                    ; $6a7a: $46
    nop                                           ; $6a7b: $00
    jr nz, jr_0af_6a02                            ; $6a7c: $20 $84

    db $10                                        ; $6a7e: $10
    db $fd                                        ; $6a7f: $fd
    ld [hl], a                                    ; $6a80: $77
    or c                                          ; $6a81: $b1
    ld [hl], h                                    ; $6a82: $74
    ld c, d                                       ; $6a83: $4a
    add hl, hl                                    ; $6a84: $29
    adc b                                         ; $6a85: $88
    inc b                                         ; $6a86: $04
    or c                                          ; $6a87: $b1
    ld [hl], h                                    ; $6a88: $74
    ld d, d                                       ; $6a89: $52
    ld de, $1ca6                                  ; $6a8a: $11 $a6 $1c
    ld a, [hl+]                                   ; $6a8d: $2a
    nop                                           ; $6a8e: $00
    ld [hl], e                                    ; $6a8f: $73
    ld [hl], h                                    ; $6a90: $74
    ld e, h                                       ; $6a91: $5c
    ld e, a                                       ; $6a92: $5f
    call nc, Call_000_0508                        ; $6a93: $d4 $08 $05
    ld bc, $5c0d                                  ; $6a96: $01 $0d $5c
    ld [c], a                                     ; $6a99: $e2
    inc bc                                        ; $6a9a: $03
    dec sp                                        ; $6a9b: $3b
    ld e, e                                       ; $6a9c: $5b
    ld h, $21                                     ; $6a9d: $26 $21

jr_0af_6a9f:
    dec [hl]                                      ; $6a9f: $35
    ld a, b                                       ; $6aa0: $78
    ei                                            ; $6aa1: $fb
    ld l, a                                       ; $6aa2: $6f
    db $e3                                        ; $6aa3: $e3
    inc bc                                        ; $6aa4: $03
    nop                                           ; $6aa5: $00
    jr nz, @-$0f                                  ; $6aa6: $20 $ef

    ld b, c                                       ; $6aa8: $41
    add hl, sp                                    ; $6aa9: $39
    ld h, a                                       ; $6aaa: $67
    ld [hl], e                                    ; $6aab: $73
    ld c, [hl]                                    ; $6aac: $4e
    nop                                           ; $6aad: $00
    nop                                           ; $6aae: $00
    ld d, e                                       ; $6aaf: $53
    ld b, d                                       ; $6ab0: $42
    add hl, hl                                    ; $6ab1: $29
    dec h                                         ; $6ab2: $25
    nop                                           ; $6ab3: $00
    jr nz, jr_0af_6acf                            ; $6ab4: $20 $19

    ld a, h                                       ; $6ab6: $7c
    adc h                                         ; $6ab7: $8c
    dec l                                         ; $6ab8: $2d
    db $fd                                        ; $6ab9: $fd
    ld [hl], a                                    ; $6aba: $77
    ld [hl], e                                    ; $6abb: $73
    ld c, [hl]                                    ; $6abc: $4e
    ld h, [hl]                                    ; $6abd: $66
    nop                                           ; $6abe: $00
    rla                                           ; $6abf: $17
    ld a, h                                       ; $6ac0: $7c
    db $fd                                        ; $6ac1: $fd
    ld [hl], a                                    ; $6ac2: $77
    dec e                                         ; $6ac3: $1d
    ld a, h                                       ; $6ac4: $7c
    ld c, l                                       ; $6ac5: $4d
    nop                                           ; $6ac6: $00
    dec e                                         ; $6ac7: $1d
    ld a, h                                       ; $6ac8: $7c
    db $dd                                        ; $6ac9: $dd
    ld [hl], e                                    ; $6aca: $73
    or h                                          ; $6acb: $b4
    ld hl, $00c5                                  ; $6acc: $21 $c5 $00

jr_0af_6acf:
    jp c, $fc58                                   ; $6acf: $da $58 $fc

    ld [hl], e                                    ; $6ad2: $73
    ld [c], a                                     ; $6ad3: $e2
    inc bc                                        ; $6ad4: $03
    ld b, c                                       ; $6ad5: $41
    ld bc, $73fc                                  ; $6ad6: $01 $fc $73

jr_0af_6ad9:
    ld [hl], d                                    ; $6ad9: $72
    ld c, d                                       ; $6ada: $4a
    ld c, b                                       ; $6adb: $48
    dec [hl]                                      ; $6adc: $35
    ld bc, $3004                                  ; $6add: $01 $04 $30
    ld c, d                                       ; $6ae0: $4a
    sub l                                         ; $6ae1: $95
    ld a, a                                       ; $6ae2: $7f
    nop                                           ; $6ae3: $00
    jr nz, jr_0af_6ae6                            ; $6ae4: $20 $00

jr_0af_6ae6:
    nop                                           ; $6ae6: $00
    ld c, b                                       ; $6ae7: $48
    ld b, c                                       ; $6ae8: $41
    nop                                           ; $6ae9: $00
    jr nz, jr_0af_6b15                            ; $6aea: $20 $29

    dec h                                         ; $6aec: $25
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    ld d, e                                       ; $6aef: $53
    ld c, d                                       ; $6af0: $4a
    db $fd                                        ; $6af1: $fd
    ld [hl], a                                    ; $6af2: $77
    add hl, hl                                    ; $6af3: $29
    dec h                                         ; $6af4: $25
    ld [hl], e                                    ; $6af5: $73
    ld c, [hl]                                    ; $6af6: $4e
    db $fd                                        ; $6af7: $fd
    ld [hl], a                                    ; $6af8: $77
    db $fd                                        ; $6af9: $fd
    ld [hl], a                                    ; $6afa: $77
    add hl, hl                                    ; $6afb: $29
    dec h                                         ; $6afc: $25
    add hl, hl                                    ; $6afd: $29
    dec h                                         ; $6afe: $25
    ld [hl], e                                    ; $6aff: $73
    ld c, [hl]                                    ; $6b00: $4e
    add hl, hl                                    ; $6b01: $29
    add hl, hl                                    ; $6b02: $29
    ld a, [hl+]                                   ; $6b03: $2a
    dec h                                         ; $6b04: $25
    add hl, hl                                    ; $6b05: $29
    dec h                                         ; $6b06: $25
    ld [hl], e                                    ; $6b07: $73
    ld c, [hl]                                    ; $6b08: $4e
    add hl, hl                                    ; $6b09: $29
    add hl, hl                                    ; $6b0a: $29
    ld a, [hl+]                                   ; $6b0b: $2a
    dec h                                         ; $6b0c: $25
    ld h, l                                       ; $6b0d: $65
    db $10                                        ; $6b0e: $10
    ld d, d                                       ; $6b0f: $52
    ld b, [hl]                                    ; $6b10: $46
    db $fd                                        ; $6b11: $fd
    ld [hl], a                                    ; $6b12: $77
    ld l, [hl]                                    ; $6b13: $6e
    ld l, [hl]                                    ; $6b14: $6e

jr_0af_6b15:
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    inc de                                        ; $6b17: $13
    ld a, a                                       ; $6b18: $7f
    nop                                           ; $6b19: $00
    jr nz, jr_0af_6b61                            ; $6b1a: $20 $45

    stop                                          ; $6b1c: $10 $00
    jr nz, jr_0af_6b26                            ; $6b1e: $20 $06

    ld b, c                                       ; $6b20: $41
    ld h, $41                                     ; $6b21: $26 $41
    add hl, hl                                    ; $6b23: $29
    dec h                                         ; $6b24: $25
    nop                                           ; $6b25: $00

jr_0af_6b26:
    nop                                           ; $6b26: $00
    adc d                                         ; $6b27: $8a
    ld c, c                                       ; $6b28: $49
    sub l                                         ; $6b29: $95
    ld a, a                                       ; $6b2a: $7f
    ld h, h                                       ; $6b2b: $64
    inc b                                         ; $6b2c: $04
    ld b, e                                       ; $6b2d: $43

jr_0af_6b2e:
    inc b                                         ; $6b2e: $04

jr_0af_6b2f:
    sub b                                         ; $6b2f: $90
    ld l, [hl]                                    ; $6b30: $6e
    add hl, hl                                    ; $6b31: $29
    dec h                                         ; $6b32: $25
    sub l                                         ; $6b33: $95
    ld a, a                                       ; $6b34: $7f
    nop                                           ; $6b35: $00
    nop                                           ; $6b36: $00
    ld h, e                                       ; $6b37: $63
    inc c                                         ; $6b38: $0c
    add h                                         ; $6b39: $84
    db $10                                        ; $6b3a: $10
    ld h, h                                       ; $6b3b: $64
    inc c                                         ; $6b3c: $0c
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    ld h, e                                       ; $6b3f: $63
    inc c                                         ; $6b40: $0c
    add e                                         ; $6b41: $83
    inc c                                         ; $6b42: $0c
    ld h, h                                       ; $6b43: $64
    inc c                                         ; $6b44: $0c
    nop                                           ; $6b45: $00
    nop                                           ; $6b46: $00
    db $ed                                        ; $6b47: $ed
    ld d, c                                       ; $6b48: $51
    sub b                                         ; $6b49: $90
    ld [hl], d                                    ; $6b4a: $72
    ld b, h                                       ; $6b4b: $44
    ld [$2000], sp                                ; $6b4c: $08 $00 $20
    push hl                                       ; $6b4f: $e5
    inc a                                         ; $6b50: $3c
    ld c, b                                       ; $6b51: $48
    ld b, l                                       ; $6b52: $45
    ld b, h                                       ; $6b53: $44
    ld [$2000], sp                                ; $6b54: $08 $00 $20
    xor $5d                                       ; $6b57: $ee $5d
    add hl, hl                                    ; $6b59: $29
    dec h                                         ; $6b5a: $25
    sub l                                         ; $6b5b: $95
    ld a, a                                       ; $6b5c: $7f

jr_0af_6b5d:
    ld [hl+], a                                   ; $6b5d: $22
    nop                                           ; $6b5e: $00
    ld l, $66                                     ; $6b5f: $2e $66

jr_0af_6b61:
    ld b, $2d                                     ; $6b61: $06 $2d
    sub l                                         ; $6b63: $95
    ld a, a                                       ; $6b64: $7f
    nop                                           ; $6b65: $00
    nop                                           ; $6b66: $00
    rst $20                                       ; $6b67: $e7
    inc e                                         ; $6b68: $1c
    ld l, c                                       ; $6b69: $69
    dec a                                         ; $6b6a: $3d
    ld b, l                                       ; $6b6b: $45
    stop                                          ; $6b6c: $10 $00
    nop                                           ; $6b6e: $00
    ld [hl], e                                    ; $6b6f: $73
    ld c, [hl]                                    ; $6b70: $4e
    cp e                                          ; $6b71: $bb
    ld l, a                                       ; $6b72: $6f
    rst $20                                       ; $6b73: $e7
    inc e                                         ; $6b74: $1c
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00

jr_0af_6b77:
    ld [hl], e                                    ; $6b77: $73
    ld c, [hl]                                    ; $6b78: $4e
    ld b, l                                       ; $6b79: $45
    db $10                                        ; $6b7a: $10
    rst $20                                       ; $6b7b: $e7
    inc e                                         ; $6b7c: $1c
    ld [hl+], a                                   ; $6b7d: $22
    ld [$664f], sp                                ; $6b7e: $08 $4f $66
    daa                                           ; $6b81: $27
    add hl, sp                                    ; $6b82: $39
    cp c                                          ; $6b83: $b9
    ld a, e                                       ; $6b84: $7b
    nop                                           ; $6b85: $00
    jr nz, @-$19                                  ; $6b86: $20 $e5

    inc a                                         ; $6b88: $3c
    daa                                           ; $6b89: $27
    add hl, sp                                    ; $6b8a: $39
    cp c                                          ; $6b8b: $b9
    ld a, e                                       ; $6b8c: $7b
    nop                                           ; $6b8d: $00
    jr nz, jr_0af_6b77                            ; $6b8e: $20 $e7

    inc e                                         ; $6b90: $1c
    ld l, c                                       ; $6b91: $69
    dec a                                         ; $6b92: $3d
    ld b, l                                       ; $6b93: $45
    db $10                                        ; $6b94: $10
    ld b, d                                       ; $6b95: $42
    inc b                                         ; $6b96: $04
    xor h                                         ; $6b97: $ac
    ld d, l                                       ; $6b98: $55
    rst $20                                       ; $6b99: $e7
    jr nz, jr_0af_6b2f                            ; $6b9a: $20 $93

    ld l, [hl]                                    ; $6b9c: $6e
    ld b, l                                       ; $6b9d: $45
    db $10                                        ; $6b9e: $10
    sub l                                         ; $6b9f: $95
    ld a, a                                       ; $6ba0: $7f
    rst $20                                       ; $6ba1: $e7
    jr nz, jr_0af_6b2e                            ; $6ba2: $20 $8a

    ld b, c                                       ; $6ba4: $41
    nop                                           ; $6ba5: $00
    nop                                           ; $6ba6: $00
    sub h                                         ; $6ba7: $94
    ld d, d                                       ; $6ba8: $52
    rst $20                                       ; $6ba9: $e7
    inc e                                         ; $6baa: $1c
    db $fd                                        ; $6bab: $fd
    ld [hl], a                                    ; $6bac: $77
    ld [hl+], a                                   ; $6bad: $22
    inc b                                         ; $6bae: $04
    ld [hl], e                                    ; $6baf: $73
    ld c, [hl]                                    ; $6bb0: $4e
    rst $20                                       ; $6bb1: $e7

jr_0af_6bb2:
    inc e                                         ; $6bb2: $1c
    sub l                                         ; $6bb3: $95
    ld a, a                                       ; $6bb4: $7f
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    ld d, b                                       ; $6bb7: $50
    ld h, [hl]                                    ; $6bb8: $66
    jp c, $2677                                   ; $6bb9: $da $77 $26

    dec [hl]                                      ; $6bbc: $35
    nop                                           ; $6bbd: $00
    jr nz, jr_0af_6c10                            ; $6bbe: $20 $50

    ld h, [hl]                                    ; $6bc0: $66
    jp c, $2677                                   ; $6bc1: $da $77 $26

    dec [hl]                                      ; $6bc4: $35
    nop                                           ; $6bc5: $00
    jr nz, jr_0af_6b5d                            ; $6bc6: $20 $95

    ld a, a                                       ; $6bc8: $7f
    rst $20                                       ; $6bc9: $e7
    jr nz, @-$74                                  ; $6bca: $20 $8a

    ld b, c                                       ; $6bcc: $41
    ld [hl+], a                                   ; $6bcd: $22
    ld [$72f7], sp                                ; $6bce: $08 $f7 $72
    rst $20                                       ; $6bd1: $e7
    inc e                                         ; $6bd2: $1c

jr_0af_6bd3:
    rst $38                                       ; $6bd3: $ff
    ld a, a                                       ; $6bd4: $7f
    ld b, h                                       ; $6bd5: $44
    db $10                                        ; $6bd6: $10
    ld l, a                                       ; $6bd7: $6f
    ld h, [hl]                                    ; $6bd8: $66
    cp c                                          ; $6bd9: $b9
    ld a, e                                       ; $6bda: $7b
    ld b, $25                                     ; $6bdb: $06 $25
    ld b, l                                       ; $6bdd: $45
    db $10                                        ; $6bde: $10
    bit 1, c                                      ; $6bdf: $cb $49
    rst $20                                       ; $6be1: $e7
    inc e                                         ; $6be2: $1c
    ld h, $35                                     ; $6be3: $26 $35
    ld b, h                                       ; $6be5: $44
    db $10                                        ; $6be6: $10
    ld l, a                                       ; $6be7: $6f
    ld l, d                                       ; $6be8: $6a
    or a                                          ; $6be9: $b7
    ld a, e                                       ; $6bea: $7b
    rst $20                                       ; $6beb: $e7
    inc e                                         ; $6bec: $1c
    jr nz, jr_0af_6c03                            ; $6bed: $20 $14

    ld [hl], c                                    ; $6bef: $71
    ld l, d                                       ; $6bf0: $6a
    ld a, e                                       ; $6bf1: $7b
    ld [hl], a                                    ; $6bf2: $77
    ld b, a                                       ; $6bf3: $47
    dec [hl]                                      ; $6bf4: $35
    nop                                           ; $6bf5: $00
    jr nz, jr_0af_6c69                            ; $6bf6: $20 $71

    ld l, d                                       ; $6bf8: $6a
    ld a, e                                       ; $6bf9: $7b
    ld [hl], a                                    ; $6bfa: $77
    ld b, a                                       ; $6bfb: $47
    dec [hl]                                      ; $6bfc: $35
    nop                                           ; $6bfd: $00
    jr nz, @+$71                                  ; $6bfe: $20 $6f

    ld h, [hl]                                    ; $6c00: $66
    cp c                                          ; $6c01: $b9
    ld a, e                                       ; $6c02: $7b

jr_0af_6c03:
    ld b, $25                                     ; $6c03: $06 $25
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    sbc h                                         ; $6c07: $9c
    ld [hl], a                                    ; $6c08: $77
    nop                                           ; $6c09: $00
    jr nz, jr_0af_6bb2                            ; $6c0a: $20 $a6

    jr jr_0af_6c0e                                ; $6c0c: $18 $00

jr_0af_6c0e:
    nop                                           ; $6c0e: $00
    dec l                                         ; $6c0f: $2d

jr_0af_6c10:
    ld e, [hl]                                    ; $6c10: $5e
    ld h, b                                       ; $6c11: $60
    inc e                                         ; $6c12: $1c
    sub b                                         ; $6c13: $90
    ld l, [hl]                                    ; $6c14: $6e
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    rrca                                          ; $6c17: $0f
    ld h, d                                       ; $6c18: $62
    sbc h                                         ; $6c19: $9c
    ld a, e                                       ; $6c1a: $7b
    or l                                          ; $6c1b: $b5
    ld l, [hl]                                    ; $6c1c: $6e
    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00
    push hl                                       ; $6c1f: $e5
    inc a                                         ; $6c20: $3c
    rrca                                          ; $6c21: $0f
    ld e, d                                       ; $6c22: $5a
    ld c, c                                       ; $6c23: $49
    ld c, c                                       ; $6c24: $49
    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00

jr_0af_6c27:
    rst $30                                       ; $6c27: $f7
    ld [hl], d                                    ; $6c28: $72
    sbc $7b                                       ; $6c29: $de $7b
    nop                                           ; $6c2b: $00
    jr nz, jr_0af_6c2e                            ; $6c2c: $20 $00

jr_0af_6c2e:
    jr nz, jr_0af_6c27                            ; $6c2e: $20 $f7

    ld [hl], d                                    ; $6c30: $72
    sbc $7b                                       ; $6c31: $de $7b
    nop                                           ; $6c33: $00
    jr nz, jr_0af_6c36                            ; $6c34: $20 $00

jr_0af_6c36:
    jr nz, jr_0af_6c65                            ; $6c36: $20 $2d

    ld e, [hl]                                    ; $6c38: $5e
    ld h, b                                       ; $6c39: $60
    inc e                                         ; $6c3a: $1c
    sub b                                         ; $6c3b: $90
    ld l, [hl]                                    ; $6c3c: $6e
    nop                                           ; $6c3d: $00
    jr nz, jr_0af_6bd3                            ; $6c3e: $20 $93

    ld h, d                                       ; $6c40: $62
    sbc h                                         ; $6c41: $9c
    ld [hl], a                                    ; $6c42: $77
    ld l, c                                       ; $6c43: $69
    ld b, l                                       ; $6c44: $45
    push hl                                       ; $6c45: $e5
    inc a                                         ; $6c46: $3c
    ld sp, $f766                                  ; $6c47: $31 $66 $f7
    ld [hl], d                                    ; $6c4a: $72
    ld c, c                                       ; $6c4b: $49
    ld c, l                                       ; $6c4c: $4d
    daa                                           ; $6c4d: $27
    ld b, l                                       ; $6c4e: $45
    sub l                                         ; $6c4f: $95
    ld [hl], d                                    ; $6c50: $72
    sbc h                                         ; $6c51: $9c
    ld a, e                                       ; $6c52: $7b
    adc $5d                                       ; $6c53: $ce $5d
    ld l, d                                       ; $6c55: $6a
    ld c, l                                       ; $6c56: $4d
    sub h                                         ; $6c57: $94
    ld l, [hl]                                    ; $6c58: $6e
    jr nc, jr_0af_6cb9                            ; $6c59: $30 $5e

    ld e, d                                       ; $6c5b: $5a
    ld [hl], e                                    ; $6c5c: $73
    nop                                           ; $6c5d: $00
    jr nz, jr_0af_6cd3                            ; $6c5e: $20 $73

    ld e, [hl]                                    ; $6c60: $5e
    cp h                                          ; $6c61: $bc
    ld a, e                                       ; $6c62: $7b
    push hl                                       ; $6c63: $e5
    inc a                                         ; $6c64: $3c

jr_0af_6c65:
    nop                                           ; $6c65: $00
    jr nz, jr_0af_6cdb                            ; $6c66: $20 $73

    ld e, [hl]                                    ; $6c68: $5e

jr_0af_6c69:
    cp h                                          ; $6c69: $bc
    ld a, e                                       ; $6c6a: $7b
    push hl                                       ; $6c6b: $e5
    inc a                                         ; $6c6c: $3c
    nop                                           ; $6c6d: $00
    jr nz, jr_0af_6c70                            ; $6c6e: $20 $00

jr_0af_6c70:
    jr nz, jr_0af_6c72                            ; $6c70: $20 $00

jr_0af_6c72:
    jr nz, jr_0af_6c74                            ; $6c72: $20 $00

jr_0af_6c74:
    jr nz, jr_0af_6c76                            ; $6c74: $20 $00

jr_0af_6c76:
    ld [$2000], sp                                ; $6c76: $08 $00 $20
    nop                                           ; $6c79: $00
    inc d                                         ; $6c7a: $14
    nop                                           ; $6c7b: $00
    jr nz, jr_0af_6c7e                            ; $6c7c: $20 $00

jr_0af_6c7e:
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00

jr_0af_6c80:
    jr nz, jr_0af_6c82                            ; $6c80: $20 $00

jr_0af_6c82:
    inc d                                         ; $6c82: $14
    nop                                           ; $6c83: $00
    jr nz, jr_0af_6c86                            ; $6c84: $20 $00

jr_0af_6c86:
    nop                                           ; $6c86: $00
    rst $38                                       ; $6c87: $ff

jr_0af_6c88:
    ld a, a                                       ; $6c88: $7f
    nop                                           ; $6c89: $00
    jr nz, @-$12                                  ; $6c8a: $20 $ec

    inc l                                         ; $6c8c: $2c
    nop                                           ; $6c8d: $00
    jr nz, @+$01                                  ; $6c8e: $20 $ff

jr_0af_6c90:
    ld a, a                                       ; $6c90: $7f
    nop                                           ; $6c91: $00
    jr nz, jr_0af_6c80                            ; $6c92: $20 $ec

    inc l                                         ; $6c94: $2c
    nop                                           ; $6c95: $00
    jr jr_0af_6c98                                ; $6c96: $18 $00

jr_0af_6c98:
    jr nz, jr_0af_6c9a                            ; $6c98: $20 $00

jr_0af_6c9a:
    jr nz, jr_0af_6c88                            ; $6c9a: $20 $ec

    inc l                                         ; $6c9c: $2c
    nop                                           ; $6c9d: $00
    jr nz, jr_0af_6ca0                            ; $6c9e: $20 $00

jr_0af_6ca0:
    jr nz, jr_0af_6ca2                            ; $6ca0: $20 $00

jr_0af_6ca2:
    jr nz, jr_0af_6c90                            ; $6ca2: $20 $ec

    inc l                                         ; $6ca4: $2c
    nop                                           ; $6ca5: $00
    jr nz, jr_0af_6ca8                            ; $6ca6: $20 $00

jr_0af_6ca8:
    jr nz, jr_0af_6caa                            ; $6ca8: $20 $00

jr_0af_6caa:
    inc d                                         ; $6caa: $14
    nop                                           ; $6cab: $00
    jr nz, jr_0af_6ccf                            ; $6cac: $20 $21

    inc b                                         ; $6cae: $04
    ret                                           ; $6caf: $c9


    jr z, @-$49                                   ; $6cb0: $28 $b5

    ld d, c                                       ; $6cb2: $51
    nop                                           ; $6cb3: $00
    jr nz, jr_0af_6cb6                            ; $6cb4: $20 $00

jr_0af_6cb6:
    inc e                                         ; $6cb6: $1c
    inc c                                         ; $6cb7: $0c
    dec l                                         ; $6cb8: $2d

jr_0af_6cb9:
    ld b, d                                       ; $6cb9: $42
    nop                                           ; $6cba: $00
    sub d                                         ; $6cbb: $92
    ld c, c                                       ; $6cbc: $49
    nop                                           ; $6cbd: $00
    nop                                           ; $6cbe: $00
    rst $38                                       ; $6cbf: $ff
    ld a, a                                       ; $6cc0: $7f
    nop                                           ; $6cc1: $00
    jr nz, jr_0af_6d06                            ; $6cc2: $20 $42

    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    inc b                                         ; $6cc6: $04
    or e                                          ; $6cc7: $b3
    ld c, l                                       ; $6cc8: $4d
    nop                                           ; $6cc9: $00
    jr jr_0af_6ccc                                ; $6cca: $18 $00

jr_0af_6ccc:
    jr nz, jr_0af_6cce                            ; $6ccc: $20 $00

jr_0af_6cce:
    inc e                                         ; $6cce: $1c

jr_0af_6ccf:
    rst $30                                       ; $6ccf: $f7
    ld e, c                                       ; $6cd0: $59
    add a                                         ; $6cd1: $87
    inc e                                         ; $6cd2: $1c

jr_0af_6cd3:
    db $eb                                        ; $6cd3: $eb
    inc l                                         ; $6cd4: $2c
    nop                                           ; $6cd5: $00
    jr nz, jr_0af_6ccf                            ; $6cd6: $20 $f7

    ld e, c                                       ; $6cd8: $59
    add a                                         ; $6cd9: $87
    inc e                                         ; $6cda: $1c

jr_0af_6cdb:
    db $eb                                        ; $6cdb: $eb
    inc l                                         ; $6cdc: $2c
    nop                                           ; $6cdd: $00
    jr nz, jr_0af_6cec                            ; $6cde: $20 $0c

    dec l                                         ; $6ce0: $2d
    ld b, d                                       ; $6ce1: $42
    nop                                           ; $6ce2: $00
    sub d                                         ; $6ce3: $92
    ld c, c                                       ; $6ce4: $49
    nop                                           ; $6ce5: $00
    jr nz, jr_0af_6d58                            ; $6ce6: $20 $70

    dec a                                         ; $6ce8: $3d
    ld a, l                                       ; $6ce9: $7d
    halt                                          ; $6cea: $76
    ld b, d                                       ; $6ceb: $42

jr_0af_6cec:
    nop                                           ; $6cec: $00
    ld hl, $bf00                                  ; $6ced: $21 $00 $bf
    ld a, d                                       ; $6cf0: $7a
    ld c, $35                                     ; $6cf1: $0e $35
    nop                                           ; $6cf3: $00
    inc e                                         ; $6cf4: $1c
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    ld c, d                                       ; $6cf7: $4a
    ld c, d                                       ; $6cf8: $4a
    ld e, l                                       ; $6cf9: $5d
    ld [hl], a                                    ; $6cfa: $77
    jp z, RST_28                                  ; $6cfb: $ca $28 $00

    inc d                                         ; $6cfe: $14
    ld a, d                                       ; $6cff: $7a
    ld h, [hl]                                    ; $6d00: $66
    ld l, h                                       ; $6d01: $6c
    ld sp, $7bde                                  ; $6d02: $31 $de $7b
    nop                                           ; $6d05: $00

jr_0af_6d06:
    inc e                                         ; $6d06: $1c
    rst $38                                       ; $6d07: $ff
    ld a, [hl]                                    ; $6d08: $7e
    ld b, c                                       ; $6d09: $41
    inc c                                         ; $6d0a: $0c
    add a                                         ; $6d0b: $87
    jr nz, jr_0af_6d0e                            ; $6d0c: $20 $00

jr_0af_6d0e:
    jr nz, @+$01                                  ; $6d0e: $20 $ff

    ld a, [hl]                                    ; $6d10: $7e
    ld b, c                                       ; $6d11: $41
    inc c                                         ; $6d12: $0c
    add a                                         ; $6d13: $87
    jr nz, jr_0af_6d16                            ; $6d14: $20 $00

jr_0af_6d16:
    inc d                                         ; $6d16: $14
    nop                                           ; $6d17: $00
    jr nz, jr_0af_6d28                            ; $6d18: $20 $0e

    dec [hl]                                      ; $6d1a: $35
    nop                                           ; $6d1b: $00
    inc e                                         ; $6d1c: $1c
    nop                                           ; $6d1d: $00
    inc c                                         ; $6d1e: $0c
    or l                                          ; $6d1f: $b5
    ld d, l                                       ; $6d20: $55
    ld a, [bc]                                    ; $6d21: $0a
    add hl, hl                                    ; $6d22: $29

jr_0af_6d23:
    ld a, l                                       ; $6d23: $7d
    ld [hl], d                                    ; $6d24: $72
    ld hl, $d308                                  ; $6d25: $21 $08 $d3

jr_0af_6d28:
    ld c, c                                       ; $6d28: $49
    inc l                                         ; $6d29: $2c
    ld sp, $767d                                  ; $6d2a: $31 $7d $76
    ld b, d                                       ; $6d2d: $42
    nop                                           ; $6d2e: $00
    adc c                                         ; $6d2f: $89
    ld c, [hl]                                    ; $6d30: $4e
    ld sp, $8719                                  ; $6d31: $31 $19 $87
    jr nz, jr_0af_6d36                            ; $6d34: $20 $00

jr_0af_6d36:
    inc b                                         ; $6d36: $04

jr_0af_6d37:
    cpl                                           ; $6d37: $2f
    ld c, d                                       ; $6d38: $4a
    db $fd                                        ; $6d39: $fd
    halt                                          ; $6d3a: $76
    ld a, [bc]                                    ; $6d3b: $0a
    add hl, hl                                    ; $6d3c: $29
    nop                                           ; $6d3d: $00
    jr jr_0af_6db2                                ; $6d3e: $18 $72

    ld b, l                                       ; $6d40: $45
    cp a                                          ; $6d41: $bf
    ld a, d                                       ; $6d42: $7a
    db $ec                                        ; $6d43: $ec
    inc l                                         ; $6d44: $2c
    nop                                           ; $6d45: $00
    jr nz, jr_0af_6dba                            ; $6d46: $20 $72

    ld b, l                                       ; $6d48: $45
    cp a                                          ; $6d49: $bf
    ld a, d                                       ; $6d4a: $7a
    db $ec                                        ; $6d4b: $ec
    inc l                                         ; $6d4c: $2c
    nop                                           ; $6d4d: $00
    jr nz, jr_0af_6d23                            ; $6d4e: $20 $d3

    ld c, c                                       ; $6d50: $49
    inc l                                         ; $6d51: $2c
    ld sp, $767d                                  ; $6d52: $31 $7d $76

jr_0af_6d55:
    nop                                           ; $6d55: $00
    inc c                                         ; $6d56: $0c
    sub c                                         ; $6d57: $91

jr_0af_6d58:
    ld b, l                                       ; $6d58: $45
    ld e, h                                       ; $6d59: $5c
    ld [hl], d                                    ; $6d5a: $72
    inc l                                         ; $6d5b: $2c
    dec l                                         ; $6d5c: $2d
    ld b, d                                       ; $6d5d: $42
    inc b                                         ; $6d5e: $04
    xor a                                         ; $6d5f: $af
    dec a                                         ; $6d60: $3d
    add hl, bc                                    ; $6d61: $09
    dec h                                         ; $6d62: $25
    ld e, e                                       ; $6d63: $5b
    ld l, d                                       ; $6d64: $6a
    adc c                                         ; $6d65: $89
    ld c, [hl]                                    ; $6d66: $4e
    add hl, de                                    ; $6d67: $19
    ld [hl], $31                                  ; $6d68: $36 $31
    add hl, de                                    ; $6d6a: $19
    db $dd                                        ; $6d6b: $dd
    ld c, [hl]                                    ; $6d6c: $4e
    ld b, d                                       ; $6d6d: $42
    inc c                                         ; $6d6e: $0c
    jp nc, $df45                                  ; $6d6f: $d2 $45 $df

    ld a, [hl]                                    ; $6d72: $7e
    ld sp, $0019                                  ; $6d73: $31 $19 $00
    db $10                                        ; $6d76: $10
    push de                                       ; $6d77: $d5
    ld d, c                                       ; $6d78: $51
    ld c, e                                       ; $6d79: $4b
    dec l                                         ; $6d7a: $2d
    sbc l                                         ; $6d7b: $9d
    ld [hl], d                                    ; $6d7c: $72
    nop                                           ; $6d7d: $00
    jr nz, jr_0af_6d55                            ; $6d7e: $20 $d5

    ld d, c                                       ; $6d80: $51
    ld c, e                                       ; $6d81: $4b
    dec l                                         ; $6d82: $2d
    sbc l                                         ; $6d83: $9d
    ld [hl], d                                    ; $6d84: $72
    nop                                           ; $6d85: $00
    jr nz, jr_0af_6d37                            ; $6d86: $20 $af

    dec a                                         ; $6d88: $3d
    add hl, bc                                    ; $6d89: $09

jr_0af_6d8a:
    dec h                                         ; $6d8a: $25
    ld e, e                                       ; $6d8b: $5b
    ld l, d                                       ; $6d8c: $6a
    nop                                           ; $6d8d: $00
    inc c                                         ; $6d8e: $0c
    pop de                                        ; $6d8f: $d1
    ld b, l                                       ; $6d90: $45
    ld c, h                                       ; $6d91: $4c
    ld sp, $6e5c                                  ; $6d92: $31 $5c $6e
    ld b, c                                       ; $6d95: $41
    inc b                                         ; $6d96: $04
    sub b                                         ; $6d97: $90
    dec a                                         ; $6d98: $3d
    push af                                       ; $6d99: $f5
    ld d, c                                       ; $6d9a: $51
    ld [$4221], sp                                ; $6d9b: $08 $21 $42
    nop                                           ; $6d9e: $00
    add hl, de                                    ; $6d9f: $19
    ld [hl], $fe                                  ; $6da0: $36 $fe
    ld d, d                                       ; $6da2: $52
    ld sp, $5219                                  ; $6da3: $31 $19 $52
    dec e                                         ; $6da6: $1d
    cp h                                          ; $6da7: $bc
    ld c, d                                       ; $6da8: $4a
    add hl, de                                    ; $6da9: $19
    ld [hl], $1f                                  ; $6daa: $36 $1f
    ld d, a                                       ; $6dac: $57
    ld b, e                                       ; $6dad: $43
    jr jr_0af_6e1d                                ; $6dae: $18 $6d

    add hl, sp                                    ; $6db0: $39
    ld a, h                                       ; $6db1: $7c

jr_0af_6db2:
    ld d, d                                       ; $6db2: $52
    ld d, d                                       ; $6db3: $52
    dec e                                         ; $6db4: $1d
    nop                                           ; $6db5: $00
    ld [$2000], sp                                ; $6db6: $08 $00 $20
    nop                                           ; $6db9: $00

jr_0af_6dba:
    inc c                                         ; $6dba: $0c
    nop                                           ; $6dbb: $00
    stop                                          ; $6dbc: $10 $00
    nop                                           ; $6dbe: $00
    nop                                           ; $6dbf: $00
    inc d                                         ; $6dc0: $14
    nop                                           ; $6dc1: $00
    jr nz, jr_0af_6dcc                            ; $6dc2: $20 $08

    ld hl, $0c21                                  ; $6dc4: $21 $21 $0c
    adc a                                         ; $6dc7: $8f
    dec a                                         ; $6dc8: $3d
    inc a                                         ; $6dc9: $3c
    ld l, [hl]                                    ; $6dca: $6e
    push de                                       ; $6dcb: $d5

jr_0af_6dcc:
    ld d, c                                       ; $6dcc: $51
    xor a                                         ; $6dcd: $af
    dec a                                         ; $6dce: $3d
    push af                                       ; $6dcf: $f5
    ld d, l                                       ; $6dd0: $55
    ld e, h                                       ; $6dd1: $5c
    ld l, [hl]                                    ; $6dd2: $6e
    rst $30                                       ; $6dd3: $f7
    ld e, c                                       ; $6dd4: $59
    ld b, d                                       ; $6dd5: $42
    nop                                           ; $6dd6: $00
    ld [hl], e                                    ; $6dd7: $73
    ld d, c                                       ; $6dd8: $51
    db $dd                                        ; $6dd9: $dd
    ld d, d                                       ; $6dda: $52
    add hl, de                                    ; $6ddb: $19
    ld [hl], $43                                  ; $6ddc: $36 $43
    ld [$571f], sp                                ; $6dde: $08 $1f $57
    db $dd                                        ; $6de1: $dd
    ld d, d                                       ; $6de2: $52
    add hl, de                                    ; $6de3: $19
    ld [hl], $00                                  ; $6de4: $36 $00
    inc d                                         ; $6de6: $14
    or $3d                                        ; $6de7: $f6 $3d
    ld d, b                                       ; $6de9: $50
    ld hl, $5abd                                  ; $6dea: $21 $bd $5a
    nop                                           ; $6ded: $00
    inc b                                         ; $6dee: $04
    nop                                           ; $6def: $00
    jr nz, jr_0af_6e42                            ; $6df0: $20 $50

    ld hl, $5abd                                  ; $6df2: $21 $bd $5a
    nop                                           ; $6df5: $00
    jr nz, jr_0af_6d8a                            ; $6df6: $20 $92

    ld b, l                                       ; $6df8: $45
    ret z                                         ; $6df9: $c8

    inc e                                         ; $6dfa: $1c
    rst $30                                       ; $6dfb: $f7
    ld e, c                                       ; $6dfc: $59
    ld hl, $b000                                  ; $6dfd: $21 $00 $b0
    ld b, c                                       ; $6e00: $41
    ld a, [de]                                    ; $6e01: $1a
    ld h, [hl]                                    ; $6e02: $66
    ld a, [hl+]                                   ; $6e03: $2a
    add hl, hl                                    ; $6e04: $29
    add hl, bc                                    ; $6e05: $09
    dec h                                         ; $6e06: $25
    db $d3                                        ; $6e07: $d3
    ld c, c                                       ; $6e08: $49
    ld l, [hl]                                    ; $6e09: $6e
    add hl, sp                                    ; $6e0a: $39
    or $55                                        ; $6e0b: $f6 $55
    ld b, d                                       ; $6e0d: $42
    inc b                                         ; $6e0e: $04
    adc h                                         ; $6e0f: $8c
    ld sp, $3619                                  ; $6e10: $31 $19 $36
    call nc, $4455                                ; $6e13: $d4 $55 $44
    inc b                                         ; $6e16: $04
    sub e                                         ; $6e17: $93
    dec a                                         ; $6e18: $3d
    add hl, de                                    ; $6e19: $19
    ld h, [hl]                                    ; $6e1a: $66
    cp h                                          ; $6e1b: $bc
    ld c, d                                       ; $6e1c: $4a

jr_0af_6e1d:
    ld b, h                                       ; $6e1d: $44

jr_0af_6e1e:
    ld [$427b], sp                                ; $6e1e: $08 $7b $42
    call z, Call_000_3c24                         ; $6e21: $cc $24 $3c
    ld l, [hl]                                    ; $6e24: $6e
    nop                                           ; $6e25: $00
    jr nz, jr_0af_6e1e                            ; $6e26: $20 $f6

    ld d, l                                       ; $6e28: $55
    ld [hl+], a                                   ; $6e29: $22
    inc b                                         ; $6e2a: $04
    add a                                         ; $6e2b: $87
    inc e                                         ; $6e2c: $1c
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    jr nz, jr_0af_6e74                            ; $6e30: $20 $42

    nop                                           ; $6e32: $00
    or $55                                        ; $6e33: $f6 $55
    jr nz, jr_0af_6e37                            ; $6e35: $20 $00

jr_0af_6e37:
    adc a                                         ; $6e37: $8f
    dec a                                         ; $6e38: $3d
    ld hl, sp+$5d                                 ; $6e39: $f8 $5d
    jp hl                                         ; $6e3b: $e9


    inc h                                         ; $6e3c: $24
    ld h, e                                       ; $6e3d: $63
    db $10                                        ; $6e3e: $10
    db $f4                                        ; $6e3f: $f4
    ld d, c                                       ; $6e40: $51
    ld c, h                                       ; $6e41: $4c

jr_0af_6e42:
    ld sp, $6a3b                                  ; $6e42: $31 $3b $6a
    ld b, h                                       ; $6e45: $44
    inc c                                         ; $6e46: $0c
    xor a                                         ; $6e47: $af
    ld b, c                                       ; $6e48: $41
    jr jr_0af_6eb1                                ; $6e49: $18 $66

    add hl, de                                    ; $6e4b: $19
    ld [hl], $44                                  ; $6e4c: $36 $44
    ld [$316e], sp                                ; $6e4e: $08 $6e $31
    pop de                                        ; $6e51: $d1
    ld b, c                                       ; $6e52: $41
    db $f4                                        ; $6e53: $f4
    ld d, c                                       ; $6e54: $51
    ld b, e                                       ; $6e55: $43
    ld [$294f], sp                                ; $6e56: $08 $4f $29
    inc a                                         ; $6e59: $3c
    halt                                          ; $6e5a: $76
    or d                                          ; $6e5b: $b2
    ld c, c                                       ; $6e5c: $49
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    rst $38                                       ; $6e5f: $ff
    ld a, a                                       ; $6e60: $7f
    nop                                           ; $6e61: $00
    jr nz, jr_0af_6ea6                            ; $6e62: $20 $42

    nop                                           ; $6e64: $00
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    rst $38                                       ; $6e67: $ff
    ld a, a                                       ; $6e68: $7f
    nop                                           ; $6e69: $00
    jr nz, @+$3d                                  ; $6e6a: $20 $3b

    ld l, d                                       ; $6e6c: $6a
    ld hl, $d000                                  ; $6e6d: $21 $00 $d0
    ld b, l                                       ; $6e70: $45
    dec sp                                        ; $6e71: $3b
    ld l, d                                       ; $6e72: $6a
    add hl, hl                                    ; $6e73: $29

jr_0af_6e74:
    dec h                                         ; $6e74: $25
    ld b, h                                       ; $6e75: $44
    inc c                                         ; $6e76: $0c
    pop de                                        ; $6e77: $d1
    ld b, c                                       ; $6e78: $41
    sbc [hl]                                      ; $6e79: $9e
    ld h, d                                       ; $6e7a: $62
    ld [$4428], a                                 ; $6e7b: $ea $28 $44
    inc c                                         ; $6e7e: $0c
    push de                                       ; $6e7f: $d5
    ld c, c                                       ; $6e80: $49
    rra                                           ; $6e81: $1f
    ld d, a                                       ; $6e82: $57
    dec c                                         ; $6e83: $0d
    dec e                                         ; $6e84: $1d
    ld [hl+], a                                   ; $6e85: $22
    inc b                                         ; $6e86: $04
    ld l, [hl]                                    ; $6e87: $6e
    add hl, sp                                    ; $6e88: $39
    ld a, b                                       ; $6e89: $78
    ld b, d                                       ; $6e8a: $42
    call z, Call_000_2210                         ; $6e8b: $cc $10 $22
    inc b                                         ; $6e8e: $04
    adc c                                         ; $6e8f: $89
    ld c, d                                       ; $6e90: $4a
    ld d, b                                       ; $6e91: $50
    dec h                                         ; $6e92: $25
    ld d, a                                       ; $6e93: $57
    ld a, $00                                     ; $6e94: $3e $00
    nop                                           ; $6e96: $00
    rst $38                                       ; $6e97: $ff
    ld a, a                                       ; $6e98: $7f
    adc c                                         ; $6e99: $89

jr_0af_6e9a:
    ld c, d                                       ; $6e9a: $4a
    nop                                           ; $6e9b: $00
    jr nz, jr_0af_6e9e                            ; $6e9c: $20 $00

jr_0af_6e9e:
    nop                                           ; $6e9e: $00
    dec hl                                        ; $6e9f: $2b
    ld b, [hl]                                    ; $6ea0: $46
    rst $38                                       ; $6ea1: $ff
    ld a, a                                       ; $6ea2: $7f
    nop                                           ; $6ea3: $00
    jr nz, jr_0af_6ee9                            ; $6ea4: $20 $43

jr_0af_6ea6:
    ld [$396f], sp                                ; $6ea6: $08 $6f $39
    ld e, l                                       ; $6ea9: $5d
    ld [hl], d                                    ; $6eaa: $72
    or e                                          ; $6eab: $b3
    ld c, c                                       ; $6eac: $49
    ld b, l                                       ; $6ead: $45
    ld [$39b3], sp                                ; $6eae: $08 $b3 $39

jr_0af_6eb1:
    cp [hl]                                       ; $6eb1: $be
    ld h, [hl]                                    ; $6eb2: $66
    ld a, [hl+]                                   ; $6eb3: $2a
    add hl, hl                                    ; $6eb4: $29
    ld b, h                                       ; $6eb5: $44
    ld [$45b5], sp                                ; $6eb6: $08 $b5 $45
    rra                                           ; $6eb9: $1f
    ld d, a                                       ; $6eba: $57
    db $eb                                        ; $6ebb: $eb
    inc d                                         ; $6ebc: $14
    call z, Call_000_3f10                         ; $6ebd: $cc $10 $3f
    ld e, e                                       ; $6ec0: $5b
    adc $59                                       ; $6ec1: $ce $59
    rst $38                                       ; $6ec3: $ff
    ld a, a                                       ; $6ec4: $7f
    ld b, d                                       ; $6ec5: $42
    inc b                                         ; $6ec6: $04
    inc l                                         ; $6ec7: $2c
    ld b, [hl]                                    ; $6ec8: $46
    rst $38                                       ; $6ec9: $ff
    ld a, a                                       ; $6eca: $7f
    rrca                                          ; $6ecb: $0f
    dec d                                         ; $6ecc: $15
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    adc c                                         ; $6ecf: $89
    ld b, [hl]                                    ; $6ed0: $46
    rst $38                                       ; $6ed1: $ff
    ld a, a                                       ; $6ed2: $7f
    nop                                           ; $6ed3: $00
    jr nz, jr_0af_6ed6                            ; $6ed4: $20 $00

jr_0af_6ed6:
    nop                                           ; $6ed6: $00
    rst $38                                       ; $6ed7: $ff
    ld a, a                                       ; $6ed8: $7f
    adc c                                         ; $6ed9: $89
    ld b, [hl]                                    ; $6eda: $46
    ld a, [hl+]                                   ; $6edb: $2a
    add hl, hl                                    ; $6edc: $29
    add h                                         ; $6edd: $84
    db $10                                        ; $6ede: $10
    adc c                                         ; $6edf: $89
    ld b, [hl]                                    ; $6ee0: $46
    add hl, de                                    ; $6ee1: $19
    ld h, [hl]                                    ; $6ee2: $66
    ld [hl], b                                    ; $6ee3: $70
    ld b, c                                       ; $6ee4: $41
    ld h, l                                       ; $6ee5: $65
    inc d                                         ; $6ee6: $14
    or b                                          ; $6ee7: $b0
    ld b, c                                       ; $6ee8: $41

jr_0af_6ee9:
    rra                                           ; $6ee9: $1f
    ld d, a                                       ; $6eea: $57
    rst $30                                       ; $6eeb: $f7
    dec l                                         ; $6eec: $2d
    ld b, l                                       ; $6eed: $45
    ld [$2dd7], sp                                ; $6eee: $08 $d7 $2d
    ld hl, sp+$6d                                 ; $6ef1: $f8 $6d
    rra                                           ; $6ef3: $1f
    ld d, a                                       ; $6ef4: $57
    and h                                         ; $6ef5: $a4
    jr z, @+$61                                   ; $6ef6: $28 $5f

    ld h, e                                       ; $6ef8: $63
    adc $59                                       ; $6ef9: $ce $59
    call z, Call_0af_6210                         ; $6efb: $cc $10 $62
    inc c                                         ; $6efe: $0c
    ld c, d                                       ; $6eff: $4a
    ld c, d                                       ; $6f00: $4a
    sbc a                                         ; $6f01: $9f
    ld l, a                                       ; $6f02: $6f
    db $ed                                        ; $6f03: $ed
    inc d                                         ; $6f04: $14
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    adc c                                         ; $6f07: $89
    ld b, [hl]                                    ; $6f08: $46
    rst $38                                       ; $6f09: $ff
    ld a, a                                       ; $6f0a: $7f
    nop                                           ; $6f0b: $00
    jr nz, jr_0af_6f0e                            ; $6f0c: $20 $00

jr_0af_6f0e:
    nop                                           ; $6f0e: $00
    adc c                                         ; $6f0f: $89
    ld b, [hl]                                    ; $6f10: $46
    rst $38                                       ; $6f11: $ff
    ld a, a                                       ; $6f12: $7f
    nop                                           ; $6f13: $00
    jr nz, jr_0af_6e9a                            ; $6f14: $20 $84

    inc c                                         ; $6f16: $0c
    adc c                                         ; $6f17: $89
    ld b, [hl]                                    ; $6f18: $46
    rst $30                                       ; $6f19: $f7
    ld e, c                                       ; $6f1a: $59
    adc [hl]                                      ; $6f1b: $8e
    add hl, sp                                    ; $6f1c: $39
    ld b, e                                       ; $6f1d: $43
    inc c                                         ; $6f1e: $0c
    adc [hl]                                      ; $6f1f: $8e
    add hl, sp                                    ; $6f20: $39
    cp l                                          ; $6f21: $bd
    ld e, d                                       ; $6f22: $5a
    jp nc, Jump_0af_4249                          ; $6f23: $d2 $49 $42

    nop                                           ; $6f26: $00
    rst $30                                       ; $6f27: $f7
    ld sp, $55d5                                  ; $6f28: $31 $d5 $55
    ld h, a                                       ; $6f2b: $67
    inc c                                         ; $6f2c: $0c

jr_0af_6f2d:
    rrca                                          ; $6f2d: $0f
    dec d                                         ; $6f2e: $15
    cp h                                          ; $6f2f: $bc
    ld c, d                                       ; $6f30: $4a
    rra                                           ; $6f31: $1f
    ld d, a                                       ; $6f32: $57
    ld sp, $4219                                  ; $6f33: $31 $19 $42
    nop                                           ; $6f36: $00
    cp $52                                        ; $6f37: $fe $52
    ld c, d                                       ; $6f39: $4a
    ld a, $ee                                     ; $6f3a: $3e $ee
    inc d                                         ; $6f3c: $14
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    adc c                                         ; $6f3f: $89
    ld b, d                                       ; $6f40: $42
    rst $38                                       ; $6f41: $ff
    ld a, a                                       ; $6f42: $7f
    nop                                           ; $6f43: $00
    jr nz, jr_0af_6f46                            ; $6f44: $20 $00

jr_0af_6f46:
    nop                                           ; $6f46: $00
    adc c                                         ; $6f47: $89
    ld b, d                                       ; $6f48: $42
    rst $38                                       ; $6f49: $ff
    ld a, a                                       ; $6f4a: $7f
    nop                                           ; $6f4b: $00
    jr nz, jr_0af_6fb2                            ; $6f4c: $20 $64

    db $10                                        ; $6f4e: $10
    adc c                                         ; $6f4f: $89
    ld b, d                                       ; $6f50: $42
    ld e, [hl]                                    ; $6f51: $5e
    halt                                          ; $6f52: $76
    or c                                          ; $6f53: $b1
    ld b, l                                       ; $6f54: $45
    ld h, [hl]                                    ; $6f55: $66
    jr jr_0af_6f2d                                ; $6f56: $18 $d5

    ld d, l                                       ; $6f58: $55
    adc [hl]                                      ; $6f59: $8e
    add hl, sp                                    ; $6f5a: $39
    dec a                                         ; $6f5b: $3d
    ld [hl], d                                    ; $6f5c: $72
    ld b, l                                       ; $6f5d: $45
    nop                                           ; $6f5e: $00
    ld c, [hl]                                    ; $6f5f: $4e
    add hl, sp                                    ; $6f60: $39
    add hl, de                                    ; $6f61: $19
    ld [hl], $86                                  ; $6f62: $36 $86
    jr jr_0af_6f66                                ; $6f64: $18 $00

jr_0af_6f66:
    nop                                           ; $6f66: $00
    rst $10                                       ; $6f67: $d7
    add hl, hl                                    ; $6f68: $29
    cp $52                                        ; $6f69: $fe $52
    adc c                                         ; $6f6b: $89
    inc c                                         ; $6f6c: $0c
    xor e                                         ; $6f6d: $ab
    db $10                                        ; $6f6e: $10
    adc c                                         ; $6f6f: $89
    ld b, d                                       ; $6f70: $42
    rla                                           ; $6f71: $17
    ld [hl], $fd                                  ; $6f72: $36 $fd
    ld d, [hl]                                    ; $6f74: $56
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    adc c                                         ; $6f77: $89
    ld b, d                                       ; $6f78: $42
    rst $38                                       ; $6f79: $ff
    ld a, a                                       ; $6f7a: $7f
    nop                                           ; $6f7b: $00
    jr nz, jr_0af_6f7e                            ; $6f7c: $20 $00

jr_0af_6f7e:
    nop                                           ; $6f7e: $00
    adc c                                         ; $6f7f: $89
    ld b, d                                       ; $6f80: $42
    rst $38                                       ; $6f81: $ff
    ld a, a                                       ; $6f82: $7f
    nop                                           ; $6f83: $00
    jr nz, jr_0af_6fea                            ; $6f84: $20 $64

    inc c                                         ; $6f86: $0c
    db $f4                                        ; $6f87: $f4
    ld d, c                                       ; $6f88: $51
    xor l                                         ; $6f89: $ad
    add hl, sp                                    ; $6f8a: $39
    ld a, [hl]                                    ; $6f8b: $7e
    halt                                          ; $6f8c: $76
    ld h, h                                       ; $6f8d: $64
    inc c                                         ; $6f8e: $0c
    or b                                          ; $6f8f: $b0
    ld b, c                                       ; $6f90: $41
    rst $30                                       ; $6f91: $f7
    ld e, l                                       ; $6f92: $5d
    ld e, [hl]                                    ; $6f93: $5e
    ld [hl], d                                    ; $6f94: $72
    ld b, h                                       ; $6f95: $44
    inc c                                         ; $6f96: $0c
    add hl, de                                    ; $6f97: $19
    ld [hl], $30                                  ; $6f98: $36 $30
    dec e                                         ; $6f9a: $1d
    cp $52                                        ; $6f9b: $fe $52
    ld l, b                                       ; $6f9d: $68
    ld [$4abc], sp                                ; $6f9e: $08 $bc $4a
    or [hl]                                       ; $6fa1: $b6
    dec h                                         ; $6fa2: $25
    rra                                           ; $6fa3: $1f
    ld d, a                                       ; $6fa4: $57
    adc c                                         ; $6fa5: $89
    ld b, d                                       ; $6fa6: $42
    sbc e                                         ; $6fa7: $9b
    ld c, d                                       ; $6fa8: $4a
    db $10                                        ; $6fa9: $10
    add hl, de                                    ; $6faa: $19
    rra                                           ; $6fab: $1f
    ld d, a                                       ; $6fac: $57
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    adc c                                         ; $6faf: $89
    ld b, d                                       ; $6fb0: $42
    rst $38                                       ; $6fb1: $ff

jr_0af_6fb2:
    ld a, a                                       ; $6fb2: $7f
    nop                                           ; $6fb3: $00
    jr nz, jr_0af_6fb6                            ; $6fb4: $20 $00

jr_0af_6fb6:
    nop                                           ; $6fb6: $00
    adc c                                         ; $6fb7: $89
    ld a, $ff                                     ; $6fb8: $3e $ff
    ld a, a                                       ; $6fba: $7f
    nop                                           ; $6fbb: $00
    jr nz, jr_0af_7000                            ; $6fbc: $20 $42

    nop                                           ; $6fbe: $00
    ld a, [hl+]                                   ; $6fbf: $2a
    add hl, hl                                    ; $6fc0: $29
    adc c                                         ; $6fc1: $89
    ld a, $e7                                     ; $6fc2: $3e $e7
    inc e                                         ; $6fc4: $1c
    add h                                         ; $6fc5: $84
    db $10                                        ; $6fc6: $10
    ld [hl], b                                    ; $6fc7: $70
    ld b, c                                       ; $6fc8: $41
    ld a, e                                       ; $6fc9: $7b
    ld l, [hl]                                    ; $6fca: $6e
    push de                                       ; $6fcb: $d5
    ld d, l                                       ; $6fcc: $55
    ld h, l                                       ; $6fcd: $65
    db $10                                        ; $6fce: $10
    sub h                                         ; $6fcf: $94
    ld d, c                                       ; $6fd0: $51
    rrca                                          ; $6fd1: $0f
    dec e                                         ; $6fd2: $1d
    ld e, d                                       ; $6fd3: $5a
    ld a, $ce                                     ; $6fd4: $3e $ce
    ld e, c                                       ; $6fd6: $59
    rra                                           ; $6fd7: $1f
    ld d, a                                       ; $6fd8: $57
    rst $38                                       ; $6fd9: $ff
    ld a, a                                       ; $6fda: $7f
    ld [hl], e                                    ; $6fdb: $73
    ld hl, $0c88                                  ; $6fdc: $21 $88 $0c
    ld e, a                                       ; $6fdf: $5f
    ld h, e                                       ; $6fe0: $63
    ld l, c                                       ; $6fe1: $69
    ld b, d                                       ; $6fe2: $42
    ld d, d                                       ; $6fe3: $52
    dec e                                         ; $6fe4: $1d
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    adc c                                         ; $6fe7: $89
    ld a, $ff                                     ; $6fe8: $3e $ff

jr_0af_6fea:
    ld a, a                                       ; $6fea: $7f
    nop                                           ; $6feb: $00
    jr nz, jr_0af_6fee                            ; $6fec: $20 $00

jr_0af_6fee:
    nop                                           ; $6fee: $00
    adc c                                         ; $6fef: $89
    ld a, $ff                                     ; $6ff0: $3e $ff
    ld a, a                                       ; $6ff2: $7f
    nop                                           ; $6ff3: $00
    jr nz, @+$45                                  ; $6ff4: $20 $43

    inc c                                         ; $6ff6: $0c
    ld l, c                                       ; $6ff7: $69
    ld a, $aa                                     ; $6ff8: $3e $aa
    jr nz, @-$75                                  ; $6ffa: $20 $89

    ld a, $00                                     ; $6ffc: $3e $00
    nop                                           ; $6ffe: $00
    ld e, h                                       ; $6fff: $5c

jr_0af_7000:
    ld [hl], d                                    ; $7000: $72
    ld c, l                                       ; $7001: $4d
    dec [hl]                                      ; $7002: $35
    rst $00                                       ; $7003: $c7
    jr jr_0af_7049                                ; $7004: $18 $43

    inc b                                         ; $7006: $04
    ld l, c                                       ; $7007: $69
    ld a, $31                                     ; $7008: $3e $31
    add hl, de                                    ; $700a: $19
    rst $10                                       ; $700b: $d7
    add hl, sp                                    ; $700c: $39
    adc b                                         ; $700d: $88
    inc c                                         ; $700e: $0c
    ld a, e                                       ; $700f: $7b
    ld b, d                                       ; $7010: $42
    ld [hl], e                                    ; $7011: $73
    ld hl, $571f                                  ; $7012: $21 $1f $57
    adc b                                         ; $7015: $88
    inc c                                         ; $7016: $0c
    rra                                           ; $7017: $1f
    ld d, a                                       ; $7018: $57
    ld l, c                                       ; $7019: $69
    ld a, $52                                     ; $701a: $3e $52
    dec e                                         ; $701c: $1d
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    adc c                                         ; $701f: $89
    ld a, $ff                                     ; $7020: $3e $ff
    ld a, a                                       ; $7022: $7f
    nop                                           ; $7023: $00
    jr nz, jr_0af_7026                            ; $7024: $20 $00

jr_0af_7026:
    nop                                           ; $7026: $00
    ld l, c                                       ; $7027: $69
    ld a, $ff                                     ; $7028: $3e $ff
    ld a, a                                       ; $702a: $7f
    nop                                           ; $702b: $00
    jr nz, jr_0af_7070                            ; $702c: $20 $42

    inc b                                         ; $702e: $04
    ld l, c                                       ; $702f: $69
    ld a, [hl-]                                   ; $7030: $3a
    add hl, de                                    ; $7031: $19
    ld h, d                                       ; $7032: $62
    xor c                                         ; $7033: $a9
    inc e                                         ; $7034: $1c
    ld b, d                                       ; $7035: $42
    nop                                           ; $7036: $00
    ld l, c                                       ; $7037: $69
    ld a, $1a                                     ; $7038: $3e $1a
    ld h, [hl]                                    ; $703a: $66
    ld c, l                                       ; $703b: $4d
    dec [hl]                                      ; $703c: $35
    ld b, l                                       ; $703d: $45
    ld [$3a69], sp                                ; $703e: $08 $69 $3a
    ld sp, $1919                                  ; $7041: $31 $19 $19
    ld [hl], $31                                  ; $7044: $36 $31
    add hl, de                                    ; $7046: $19
    cp h                                          ; $7047: $bc
    ld c, d                                       ; $7048: $4a

jr_0af_7049:
    add hl, de                                    ; $7049: $19
    ld [hl], $1f                                  ; $704a: $36 $1f
    ld d, a                                       ; $704c: $57
    ld l, c                                       ; $704d: $69
    ld a, [hl-]                                   ; $704e: $3a
    cp h                                          ; $704f: $bc
    ld c, d                                       ; $7050: $4a

jr_0af_7051:
    ld sp, $1f19                                  ; $7051: $31 $19 $1f
    ld d, a                                       ; $7054: $57
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    rst $38                                       ; $7057: $ff
    ld a, a                                       ; $7058: $7f

jr_0af_7059:
    ld l, c                                       ; $7059: $69
    ld a, [hl-]                                   ; $705a: $3a
    nop                                           ; $705b: $00
    jr nz, jr_0af_705e                            ; $705c: $20 $00

jr_0af_705e:
    nop                                           ; $705e: $00
    rst $38                                       ; $705f: $ff
    ld a, a                                       ; $7060: $7f

jr_0af_7061:
    nop                                           ; $7061: $00
    jr nz, jr_0af_70b1                            ; $7062: $20 $4d

    dec [hl]                                      ; $7064: $35
    ld l, c                                       ; $7065: $69
    ld a, [hl-]                                   ; $7066: $3a
    rst $38                                       ; $7067: $ff
    ld a, a                                       ; $7068: $7f
    nop                                           ; $7069: $00
    jr nz, @+$4f                                  ; $706a: $20 $4d

    dec [hl]                                      ; $706c: $35
    ld b, d                                       ; $706d: $42
    nop                                           ; $706e: $00
    ld l, c                                       ; $706f: $69

jr_0af_7070:
    ld a, [hl-]                                   ; $7070: $3a
    cpl                                           ; $7071: $2f
    add hl, sp                                    ; $7072: $39
    or l                                          ; $7073: $b5
    ld d, l                                       ; $7074: $55
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    ld l, c                                       ; $7077: $69
    ld a, [hl-]                                   ; $7078: $3a
    add hl, de                                    ; $7079: $19
    ld [hl], $50                                  ; $707a: $36 $50
    add hl, de                                    ; $707c: $19
    ld h, l                                       ; $707d: $65
    inc c                                         ; $707e: $0c
    add hl, de                                    ; $707f: $19
    ld [hl], $fe                                  ; $7080: $36 $fe
    ld d, d                                       ; $7082: $52
    ld sp, $6519                                  ; $7083: $31 $19 $65
    inc c                                         ; $7086: $0c
    cp l                                          ; $7087: $bd
    ld c, d                                       ; $7088: $4a

jr_0af_7089:
    ld l, c                                       ; $7089: $69
    ld a, [hl-]                                   ; $708a: $3a
    ld [hl], e                                    ; $708b: $73
    dec e                                         ; $708c: $1d
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    rst $38                                       ; $708f: $ff
    ld a, a                                       ; $7090: $7f
    nop                                           ; $7091: $00
    jr nz, jr_0af_7107                            ; $7092: $20 $73

    dec e                                         ; $7094: $1d
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    rst $38                                       ; $7097: $ff
    ld a, a                                       ; $7098: $7f
    nop                                           ; $7099: $00
    jr nz, jr_0af_7051                            ; $709a: $20 $b5

    ld d, l                                       ; $709c: $55
    nop                                           ; $709d: $00
    nop                                           ; $709e: $00
    ld l, c                                       ; $709f: $69
    ld a, [hl-]                                   ; $70a0: $3a
    nop                                           ; $70a1: $00
    jr nz, jr_0af_7059                            ; $70a2: $20 $b5

    ld d, l                                       ; $70a4: $55
    ld b, d                                       ; $70a5: $42
    nop                                           ; $70a6: $00
    ld l, c                                       ; $70a7: $69
    ld a, [hl-]                                   ; $70a8: $3a
    nop                                           ; $70a9: $00
    jr nz, jr_0af_7061                            ; $70aa: $20 $b5

    ld d, l                                       ; $70ac: $55
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    dec a                                         ; $70af: $3d
    inc de                                        ; $70b0: $13

jr_0af_70b1:
    ld e, c                                       ; $70b1: $59
    ld l, a                                       ; $70b2: $6f
    ld a, [hl+]                                   ; $70b3: $2a
    dec e                                         ; $70b4: $1d
    ld h, l                                       ; $70b5: $65
    inc c                                         ; $70b6: $0c
    add hl, de                                    ; $70b7: $19
    ld [hl], $31                                  ; $70b8: $36 $31
    add hl, de                                    ; $70ba: $19
    ld a, [hl+]                                   ; $70bb: $2a
    dec e                                         ; $70bc: $1d
    inc hl                                        ; $70bd: $23
    inc b                                         ; $70be: $04
    ld l, c                                       ; $70bf: $69
    ld [hl], $10                                  ; $70c0: $36 $10
    dec d                                         ; $70c2: $15
    rst $10                                       ; $70c3: $d7
    add hl, hl                                    ; $70c4: $29
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    rst $38                                       ; $70c7: $ff
    ld a, a                                       ; $70c8: $7f
    nop                                           ; $70c9: $00
    jr nz, @-$27                                  ; $70ca: $20 $d7

    add hl, hl                                    ; $70cc: $29
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    rst $38                                       ; $70cf: $ff
    ld a, a                                       ; $70d0: $7f
    nop                                           ; $70d1: $00
    jr nz, jr_0af_7089                            ; $70d2: $20 $b5

    ld d, l                                       ; $70d4: $55
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    ld l, c                                       ; $70d7: $69
    ld [hl], $69                                  ; $70d8: $36 $69
    ld a, [hl-]                                   ; $70da: $3a
    or l                                          ; $70db: $b5
    ld d, l                                       ; $70dc: $55
    ld l, c                                       ; $70dd: $69
    ld [hl], $69                                  ; $70de: $36 $69
    ld [hl], $69                                  ; $70e0: $36 $69
    ld a, [hl-]                                   ; $70e2: $3a
    or l                                          ; $70e3: $b5
    ld d, l                                       ; $70e4: $55
    ld [hl+], a                                   ; $70e5: $22
    inc b                                         ; $70e6: $04
    jp nc, $ff52                                  ; $70e7: $d2 $52 $ff

    inc bc                                        ; $70ea: $03
    ld a, e                                       ; $70eb: $7b
    ld h, $21                                     ; $70ec: $26 $21
    inc b                                         ; $70ee: $04
    ld l, c                                       ; $70ef: $69
    ld [hl], $31                                  ; $70f0: $36 $31
    add hl, de                                    ; $70f2: $19
    add hl, de                                    ; $70f3: $19
    ld [hl], $00                                  ; $70f4: $36 $00
    nop                                           ; $70f6: $00
    ld l, c                                       ; $70f7: $69
    ld [hl], $ff                                  ; $70f8: $36 $ff
    ld a, a                                       ; $70fa: $7f
    ld h, l                                       ; $70fb: $65
    inc c                                         ; $70fc: $0c
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00

jr_0af_70ff:
    rst $38                                       ; $70ff: $ff
    ld a, a                                       ; $7100: $7f
    nop                                           ; $7101: $00
    jr nz, jr_0af_7169                            ; $7102: $20 $65

    inc c                                         ; $7104: $0c
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00

jr_0af_7107:
    rst $38                                       ; $7107: $ff
    ld a, a                                       ; $7108: $7f
    nop                                           ; $7109: $00
    jr nz, @-$49                                  ; $710a: $20 $b5

    ld d, l                                       ; $710c: $55
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    rst $38                                       ; $710f: $ff
    ld a, a                                       ; $7110: $7f
    ld l, c                                       ; $7111: $69
    ld [hl], $b5                                  ; $7112: $36 $b5
    ld d, l                                       ; $7114: $55
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    sub $5a                                       ; $7117: $d6 $5a
    cp l                                          ; $7119: $bd
    ld [hl], a                                    ; $711a: $77
    rst $38                                       ; $711b: $ff
    ld a, a                                       ; $711c: $7f
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    ld d, l                                       ; $711f: $55
    ld a, [hl-]                                   ; $7120: $3a
    sbc $7f                                       ; $7121: $de $7f
    add hl, hl                                    ; $7123: $29
    dec h                                         ; $7124: $25
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    sbc h                                         ; $7127: $9c
    ld [hl], a                                    ; $7128: $77
    ld l, c                                       ; $7129: $69
    ld [hl], $de                                  ; $712a: $36 $de
    ld a, e                                       ; $712c: $7b
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    rst $38                                       ; $712f: $ff
    ld a, a                                       ; $7130: $7f
    ld l, c                                       ; $7131: $69
    ld [hl], $de                                  ; $7132: $36 $de
    ld a, e                                       ; $7134: $7b
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    jr nz, jr_0af_71a3                            ; $7138: $20 $69

    ld [hl], $de                                  ; $713a: $36 $de
    ld a, e                                       ; $713c: $7b
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    jr nz, jr_0af_70ff                            ; $7140: $20 $bd

    ld [hl], a                                    ; $7142: $77
    rst $38                                       ; $7143: $ff
    ld a, a                                       ; $7144: $7f
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    rst $38                                       ; $7147: $ff
    ld a, a                                       ; $7148: $7f
    ld l, c                                       ; $7149: $69
    ld [hl], $ff                                  ; $714a: $36 $ff
    ld a, a                                       ; $714c: $7f
    adc h                                         ; $714d: $8c
    ld sp, $673a                                  ; $714e: $31 $3a $67
    ld d, d                                       ; $7151: $52
    ld c, d                                       ; $7152: $4a
    sbc $7b                                       ; $7153: $de $7b
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    ld hl, sp+$5e                                 ; $7157: $f8 $5e
    xor l                                         ; $7159: $ad
    dec [hl]                                      ; $715a: $35
    sbc $7b                                       ; $715b: $de $7b
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    ld c, h                                       ; $715f: $4c
    ld a, [hl-]                                   ; $7160: $3a
    cp l                                          ; $7161: $bd
    ld a, e                                       ; $7162: $7b
    ld c, d                                       ; $7163: $4a
    add hl, hl                                    ; $7164: $29
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    rst $38                                       ; $7167: $ff
    ld a, a                                       ; $7168: $7f

jr_0af_7169:
    ld l, c                                       ; $7169: $69
    ld [hl], $4a                                  ; $716a: $36 $4a
    add hl, hl                                    ; $716c: $29
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    jr nz, @+$6b                                  ; $7170: $20 $69

    ld [hl], $4a                                  ; $7172: $36 $4a
    add hl, hl                                    ; $7174: $29
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    jr nz, jr_0af_71cc                            ; $7178: $20 $52

    ld c, d                                       ; $717a: $4a
    sbc $7b                                       ; $717b: $de $7b
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    ld hl, sp+$5e                                 ; $717f: $f8 $5e
    sbc $7b                                       ; $7181: $de $7b
    ld a, e                                       ; $7183: $7b
    ld l, a                                       ; $7184: $6f
    rst $28                                       ; $7185: $ef
    dec a                                         ; $7186: $3d
    rst $38                                       ; $7187: $ff
    ld a, a                                       ; $7188: $7f
    or l                                          ; $7189: $b5
    ld d, [hl]                                    ; $718a: $56
    db $10                                        ; $718b: $10
    ld b, d                                       ; $718c: $42
    add hl, hl                                    ; $718d: $29
    dec h                                         ; $718e: $25
    cp l                                          ; $718f: $bd
    ld [hl], a                                    ; $7190: $77
    rst $28                                       ; $7191: $ef
    dec a                                         ; $7192: $3d
    or l                                          ; $7193: $b5
    ld d, [hl]                                    ; $7194: $56
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    ld [hl], e                                    ; $7197: $73
    ld c, [hl]                                    ; $7198: $4e
    sbc l                                         ; $7199: $9d
    ld [hl], a                                    ; $719a: $77
    rst $38                                       ; $719b: $ff
    ld a, a                                       ; $719c: $7f
    nop                                           ; $719d: $00
    nop                                           ; $719e: $00
    ld l, c                                       ; $719f: $69
    ld [hl], $ff                                  ; $71a0: $36 $ff
    ld a, a                                       ; $71a2: $7f

jr_0af_71a3:
    rst $38                                       ; $71a3: $ff
    ld a, a                                       ; $71a4: $7f
    nop                                           ; $71a5: $00
    jr nz, jr_0af_7211                            ; $71a6: $20 $69

    ld [hl], $ff                                  ; $71a8: $36 $ff
    ld a, a                                       ; $71aa: $7f
    rst $38                                       ; $71ab: $ff
    ld a, a                                       ; $71ac: $7f
    nop                                           ; $71ad: $00
    jr nz, @+$01                                  ; $71ae: $20 $ff

    ld a, a                                       ; $71b0: $7f
    or l                                          ; $71b1: $b5
    ld d, [hl]                                    ; $71b2: $56
    db $10                                        ; $71b3: $10
    ld b, d                                       ; $71b4: $42
    nop                                           ; $71b5: $00
    nop                                           ; $71b6: $00
    db $10                                        ; $71b7: $10
    ld b, d                                       ; $71b8: $42
    ld e, d                                       ; $71b9: $5a
    ld l, e                                       ; $71ba: $6b
    rst $38                                       ; $71bb: $ff
    ld a, a                                       ; $71bc: $7f
    db $10                                        ; $71bd: $10
    ld b, d                                       ; $71be: $42
    sub h                                         ; $71bf: $94
    ld d, d                                       ; $71c0: $52
    add hl, de                                    ; $71c1: $19
    ld h, e                                       ; $71c2: $63
    rst $38                                       ; $71c3: $ff
    ld a, a                                       ; $71c4: $7f
    and l                                         ; $71c5: $a5
    inc d                                         ; $71c6: $14
    adc l                                         ; $71c7: $8d
    ld sp, $4210                                  ; $71c8: $31 $10 $42
    ld d, d                                       ; $71cb: $52

jr_0af_71cc:
    ld c, d                                       ; $71cc: $4a
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    sub $5e                                       ; $71cf: $d6 $5e
    cp l                                          ; $71d1: $bd
    ld a, e                                       ; $71d2: $7b
    add sp, $18                                   ; $71d3: $e8 $18
    nop                                           ; $71d5: $00
    inc b                                         ; $71d6: $04
    rst $38                                       ; $71d7: $ff
    ld a, a                                       ; $71d8: $7f
    dec hl                                        ; $71d9: $2b
    ld l, $a8                                     ; $71da: $2e $a8
    inc b                                         ; $71dc: $04
    nop                                           ; $71dd: $00
    jr nz, @+$01                                  ; $71de: $20 $ff

    ld a, a                                       ; $71e0: $7f
    dec hl                                        ; $71e1: $2b
    ld l, $a8                                     ; $71e2: $2e $a8
    inc b                                         ; $71e4: $04
    nop                                           ; $71e5: $00
    jr nz, @-$6a                                  ; $71e6: $20 $94

    ld d, d                                       ; $71e8: $52
    add hl, de                                    ; $71e9: $19
    ld h, e                                       ; $71ea: $63
    rst $38                                       ; $71eb: $ff
    ld a, a                                       ; $71ec: $7f
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    db $10                                        ; $71ef: $10
    ld b, d                                       ; $71f0: $42
    rst $38                                       ; $71f1: $ff
    ld a, a                                       ; $71f2: $7f
    nop                                           ; $71f3: $00
    jr nz, jr_0af_7206                            ; $71f4: $20 $10

    ld b, d                                       ; $71f6: $42
    db $10                                        ; $71f7: $10
    ld b, d                                       ; $71f8: $42
    rst $38                                       ; $71f9: $ff
    ld a, a                                       ; $71fa: $7f
    nop                                           ; $71fb: $00
    jr nz, jr_0af_71fe                            ; $71fc: $20 $00

jr_0af_71fe:
    nop                                           ; $71fe: $00
    ld l, h                                       ; $71ff: $6c
    dec l                                         ; $7200: $2d
    add $18                                       ; $7201: $c6 $18
    db $10                                        ; $7203: $10
    ld b, d                                       ; $7204: $42
    ret z                                         ; $7205: $c8

jr_0af_7206:
    inc d                                         ; $7206: $14
    ld [hl-], a                                   ; $7207: $32
    ld b, [hl]                                    ; $7208: $46
    rst $38                                       ; $7209: $ff
    inc bc                                        ; $720a: $03
    add hl, sp                                    ; $720b: $39
    ld l, e                                       ; $720c: $6b
    nop                                           ; $720d: $00

Jump_0af_720e:
    nop                                           ; $720e: $00
    ld [hl], e                                    ; $720f: $73
    ld c, [hl]                                    ; $7210: $4e

jr_0af_7211:
    rst $38                                       ; $7211: $ff
    ld a, a                                       ; $7212: $7f
    nop                                           ; $7213: $00
    jr nz, jr_0af_7216                            ; $7214: $20 $00

jr_0af_7216:
    jr nz, @+$75                                  ; $7216: $20 $73

    ld c, [hl]                                    ; $7218: $4e
    rst $38                                       ; $7219: $ff
    ld a, a                                       ; $721a: $7f
    nop                                           ; $721b: $00
    jr nz, jr_0af_721e                            ; $721c: $20 $00

jr_0af_721e:
    jr nz, jr_0af_7230                            ; $721e: $20 $10

    ld b, d                                       ; $7220: $42
    rst $38                                       ; $7221: $ff
    ld a, a                                       ; $7222: $7f
    nop                                           ; $7223: $00
    jr nz, jr_0af_7226                            ; $7224: $20 $00

jr_0af_7226:
    nop                                           ; $7226: $00
    db $10                                        ; $7227: $10
    ld b, d                                       ; $7228: $42
    rst $38                                       ; $7229: $ff
    ld a, a                                       ; $722a: $7f
    nop                                           ; $722b: $00
    jr nz, jr_0af_722e                            ; $722c: $20 $00

jr_0af_722e:
    nop                                           ; $722e: $00
    db $10                                        ; $722f: $10

jr_0af_7230:
    ld b, d                                       ; $7230: $42
    rst $38                                       ; $7231: $ff
    ld a, a                                       ; $7232: $7f
    nop                                           ; $7233: $00
    jr nz, jr_0af_7236                            ; $7234: $20 $00

jr_0af_7236:
    nop                                           ; $7236: $00
    rst $38                                       ; $7237: $ff
    ld a, a                                       ; $7238: $7f
    rst $38                                       ; $7239: $ff
    ld a, a                                       ; $723a: $7f
    nop                                           ; $723b: $00
    jr nz, jr_0af_723e                            ; $723c: $20 $00

jr_0af_723e:
    nop                                           ; $723e: $00
    rst $38                                       ; $723f: $ff
    ld a, a                                       ; $7240: $7f
    rst $38                                       ; $7241: $ff
    ld a, a                                       ; $7242: $7f
    nop                                           ; $7243: $00
    jr nz, jr_0af_7246                            ; $7244: $20 $00

jr_0af_7246:
    nop                                           ; $7246: $00
    rst $38                                       ; $7247: $ff
    ld a, a                                       ; $7248: $7f
    nop                                           ; $7249: $00
    jr nz, jr_0af_724c                            ; $724a: $20 $00

jr_0af_724c:
    jr nz, jr_0af_724e                            ; $724c: $20 $00

jr_0af_724e:
    jr nz, @+$01                                  ; $724e: $20 $ff

    ld a, a                                       ; $7250: $7f
    nop                                           ; $7251: $00
    jr nz, jr_0af_7254                            ; $7252: $20 $00

jr_0af_7254:
    jr nz, jr_0af_7256                            ; $7254: $20 $00

jr_0af_7256:
    jr nz, jr_0af_7268                            ; $7256: $20 $10

    ld b, d                                       ; $7258: $42
    rst $38                                       ; $7259: $ff
    ld a, a                                       ; $725a: $7f
    nop                                           ; $725b: $00
    jr nz, jr_0af_725e                            ; $725c: $20 $00

jr_0af_725e:
    nop                                           ; $725e: $00
    rst $38                                       ; $725f: $ff
    ld a, a                                       ; $7260: $7f
    nop                                           ; $7261: $00
    jr nz, jr_0af_7264                            ; $7262: $20 $00

jr_0af_7264:
    jr nz, jr_0af_7266                            ; $7264: $20 $00

jr_0af_7266:
    nop                                           ; $7266: $00
    rst $38                                       ; $7267: $ff

jr_0af_7268:
    ld a, a                                       ; $7268: $7f
    nop                                           ; $7269: $00
    jr nz, jr_0af_726c                            ; $726a: $20 $00

jr_0af_726c:
    jr nz, jr_0af_726e                            ; $726c: $20 $00

jr_0af_726e:
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    jr nz, jr_0af_7272                            ; $7270: $20 $00

jr_0af_7272:
    jr nz, jr_0af_7274                            ; $7272: $20 $00

jr_0af_7274:
    jr nz, jr_0af_7276                            ; $7274: $20 $00

jr_0af_7276:
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    jr nz, jr_0af_727a                            ; $7278: $20 $00

jr_0af_727a:
    jr nz, jr_0af_727c                            ; $727a: $20 $00

jr_0af_727c:
    jr nz, jr_0af_727e                            ; $727c: $20 $00

jr_0af_727e:
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    jr nz, jr_0af_7282                            ; $7280: $20 $00

jr_0af_7282:
    jr nz, jr_0af_7284                            ; $7282: $20 $00

jr_0af_7284:
    jr nz, jr_0af_7286                            ; $7284: $20 $00

jr_0af_7286:
    jr nz, jr_0af_7288                            ; $7286: $20 $00

jr_0af_7288:
    jr nz, jr_0af_728a                            ; $7288: $20 $00

jr_0af_728a:
    jr nz, jr_0af_728c                            ; $728a: $20 $00

jr_0af_728c:
    jr nz, jr_0af_728e                            ; $728c: $20 $00

jr_0af_728e:
    jr nz, jr_0af_7290                            ; $728e: $20 $00

jr_0af_7290:
    jr nz, jr_0af_72fe                            ; $7290: $20 $6c

    ld bc, $2000                                  ; $7292: $01 $00 $20
    nop                                           ; $7295: $00
    jr nz, jr_0af_7298                            ; $7296: $20 $00

jr_0af_7298:
    jr nz, jr_0af_7306                            ; $7298: $20 $6c

    ld bc, $2000                                  ; $729a: $01 $00 $20
    nop                                           ; $729d: $00
    jr nz, jr_0af_72a0                            ; $729e: $20 $00

jr_0af_72a0:
    jr nz, jr_0af_730e                            ; $72a0: $20 $6c

    ld bc, $2000                                  ; $72a2: $01 $00 $20
    nop                                           ; $72a5: $00
    nop                                           ; $72a6: $00
    rst $38                                       ; $72a7: $ff
    ld a, a                                       ; $72a8: $7f
    nop                                           ; $72a9: $00
    jr nz, jr_0af_731f                            ; $72aa: $20 $73

    ld [de], a                                    ; $72ac: $12
    nop                                           ; $72ad: $00
    jr nz, @+$01                                  ; $72ae: $20 $ff

    ld a, a                                       ; $72b0: $7f
    nop                                           ; $72b1: $00
    jr nz, @+$75                                  ; $72b2: $20 $73

    ld [de], a                                    ; $72b4: $12
    nop                                           ; $72b5: $00
    jr nz, @+$01                                  ; $72b6: $20 $ff

    ld a, a                                       ; $72b8: $7f
    nop                                           ; $72b9: $00
    jr nz, @+$75                                  ; $72ba: $20 $73

    ld [de], a                                    ; $72bc: $12
    nop                                           ; $72bd: $00
    jr nz, @+$01                                  ; $72be: $20 $ff

    ld a, a                                       ; $72c0: $7f
    nop                                           ; $72c1: $00
    jr nz, jr_0af_7337                            ; $72c2: $20 $73

    ld [de], a                                    ; $72c4: $12

jr_0af_72c5:
    nop                                           ; $72c5: $00
    jr nz, @+$01                                  ; $72c6: $20 $ff

    ld a, a                                       ; $72c8: $7f
    ld l, h                                       ; $72c9: $6c
    ld bc, $2000                                  ; $72ca: $01 $00 $20
    nop                                           ; $72cd: $00
    jr nz, @+$01                                  ; $72ce: $20 $ff

    ld a, a                                       ; $72d0: $7f
    ld l, h                                       ; $72d1: $6c
    ld bc, $2000                                  ; $72d2: $01 $00 $20
    nop                                           ; $72d5: $00
    jr nz, jr_0af_7301                            ; $72d6: $20 $29

    dec h                                         ; $72d8: $25
    ld l, h                                       ; $72d9: $6c
    ld bc, $2000                                  ; $72da: $01 $00 $20
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    or l                                          ; $72df: $b5
    ld d, [hl]                                    ; $72e0: $56
    rst $38                                       ; $72e1: $ff
    ld a, a                                       ; $72e2: $7f
    nop                                           ; $72e3: $00
    jr nz, jr_0af_72e6                            ; $72e4: $20 $00

jr_0af_72e6:
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    jr nz, jr_0af_72f0                            ; $72e8: $20 $06

    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    jr nz, jr_0af_72ee                            ; $72ec: $20 $00

jr_0af_72ee:
    jr nz, @+$81                                  ; $72ee: $20 $7f

jr_0af_72f0:
    ld [de], a                                    ; $72f0: $12
    ld b, $00                                     ; $72f1: $06 $00
    nop                                           ; $72f3: $00
    jr nz, jr_0af_72f6                            ; $72f4: $20 $00

jr_0af_72f6:
    jr nz, @+$81                                  ; $72f6: $20 $7f

    ld [de], a                                    ; $72f8: $12
    ld b, $00                                     ; $72f9: $06 $00
    nop                                           ; $72fb: $00
    jr nz, jr_0af_72fe                            ; $72fc: $20 $00

jr_0af_72fe:
    inc e                                         ; $72fe: $1c
    rst $38                                       ; $72ff: $ff
    ld a, a                                       ; $7300: $7f

jr_0af_7301:
    add hl, hl                                    ; $7301: $29
    dec h                                         ; $7302: $25
    adc $39                                       ; $7303: $ce $39
    nop                                           ; $7305: $00

jr_0af_7306:
    jr nz, @+$01                                  ; $7306: $20 $ff

    ld a, a                                       ; $7308: $7f
    add hl, hl                                    ; $7309: $29
    dec h                                         ; $730a: $25
    adc $39                                       ; $730b: $ce $39
    nop                                           ; $730d: $00

jr_0af_730e:
    jr nz, jr_0af_72c5                            ; $730e: $20 $b5

    ld d, [hl]                                    ; $7310: $56
    add $18                                       ; $7311: $c6 $18
    adc $39                                       ; $7313: $ce $39
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    or l                                          ; $7317: $b5
    ld d, [hl]                                    ; $7318: $56
    ld c, d                                       ; $7319: $4a
    add hl, hl                                    ; $731a: $29
    rst $38                                       ; $731b: $ff
    ld a, a                                       ; $731c: $7f
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00

jr_0af_731f:
    rst $38                                       ; $731f: $ff
    ld a, a                                       ; $7320: $7f
    nop                                           ; $7321: $00
    jr nz, @+$01                                  ; $7322: $20 $ff

    ld a, a                                       ; $7324: $7f
    nop                                           ; $7325: $00
    jr nz, jr_0af_735a                            ; $7326: $20 $32

    add hl, bc                                    ; $7328: $09
    ld [$7c00], sp                                ; $7329: $08 $00 $7c
    ld [de], a                                    ; $732c: $12
    nop                                           ; $732d: $00
    jr nz, jr_0af_7362                            ; $732e: $20 $32

    add hl, bc                                    ; $7330: $09
    ld [$7c00], sp                                ; $7331: $08 $00 $7c
    ld [de], a                                    ; $7334: $12
    nop                                           ; $7335: $00
    inc d                                         ; $7336: $14

jr_0af_7337:
    rst $28                                       ; $7337: $ef
    dec a                                         ; $7338: $3d
    add hl, hl                                    ; $7339: $29
    dec h                                         ; $733a: $25
    rst $38                                       ; $733b: $ff
    ld a, a                                       ; $733c: $7f
    nop                                           ; $733d: $00
    jr nz, @-$0f                                  ; $733e: $20 $ef

    dec a                                         ; $7340: $3d
    add hl, hl                                    ; $7341: $29
    dec h                                         ; $7342: $25
    rst $38                                       ; $7343: $ff
    ld a, a                                       ; $7344: $7f
    ld hl, $ad04                                  ; $7345: $21 $04 $ad
    dec [hl]                                      ; $7348: $35
    rst $38                                       ; $7349: $ff
    ld a, a                                       ; $734a: $7f
    nop                                           ; $734b: $00
    jr nz, jr_0af_734e                            ; $734c: $20 $00

jr_0af_734e:
    nop                                           ; $734e: $00
    ld c, l                                       ; $734f: $4d
    ld a, [hl]                                    ; $7350: $7e
    ld [$5221], sp                                ; $7351: $08 $21 $52
    ld c, d                                       ; $7354: $4a
    nop                                           ; $7355: $00
    inc c                                         ; $7356: $0c
    ld c, l                                       ; $7357: $4d
    ld a, [hl]                                    ; $7358: $7e
    rst $38                                       ; $7359: $ff

jr_0af_735a:
    ld a, a                                       ; $735a: $7f
    sub $1e                                       ; $735b: $d6 $1e
    rlca                                          ; $735d: $07
    nop                                           ; $735e: $00
    ld [hl-], a                                   ; $735f: $32
    add hl, bc                                    ; $7360: $09
    ccf                                           ; $7361: $3f

jr_0af_7362:
    ld b, $73                                     ; $7362: $06 $73
    ld [de], a                                    ; $7364: $12
    nop                                           ; $7365: $00
    jr nz, jr_0af_73c7                            ; $7366: $20 $5f

    ld bc, $127f                                  ; $7368: $01 $7f $12
    ld [hl], e                                    ; $736b: $73
    ld [de], a                                    ; $736c: $12
    ld hl, $7310                                  ; $736d: $21 $10 $73
    ld c, [hl]                                    ; $7370: $4e
    adc h                                         ; $7371: $8c
    ld sp, $7fff                                  ; $7372: $31 $ff $7f
    nop                                           ; $7375: $00
    jr nz, jr_0af_73db                            ; $7376: $20 $63

    inc c                                         ; $7378: $0c
    and l                                         ; $7379: $a5
    inc d                                         ; $737a: $14
    rst $38                                       ; $737b: $ff
    ld a, a                                       ; $737c: $7f
    ld hl, $ff04                                  ; $737d: $21 $04 $ff
    ld a, a                                       ; $7380: $7f
    adc h                                         ; $7381: $8c
    dec l                                         ; $7382: $2d
    nop                                           ; $7383: $00

jr_0af_7384:
    jr nz, jr_0af_73c8                            ; $7384: $20 $42

    ld [$03ff], sp                                ; $7386: $08 $ff $03
    adc $39                                       ; $7389: $ce $39
    cp l                                          ; $738b: $bd
    ld [hl], a                                    ; $738c: $77
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    ld c, l                                       ; $738f: $4d
    ld a, [hl]                                    ; $7390: $7e
    sub $1e                                       ; $7391: $d6 $1e
    rst $38                                       ; $7393: $ff
    ld a, a                                       ; $7394: $7f
    add h                                         ; $7395: $84
    nop                                           ; $7396: $00
    ld d, c                                       ; $7397: $51
    ld a, [bc]                                    ; $7398: $0a
    rra                                           ; $7399: $1f
    ld [bc], a                                    ; $739a: $02
    ld [hl], e                                    ; $739b: $73
    add hl, de                                    ; $739c: $19
    nop                                           ; $739d: $00
    jr nz, jr_0af_73d2                            ; $739e: $20 $32

    add hl, bc                                    ; $73a0: $09
    ld c, e                                       ; $73a1: $4b
    nop                                           ; $73a2: $00
    cp a                                          ; $73a3: $bf
    ld bc, $1000                                  ; $73a4: $01 $00 $10
    db $10                                        ; $73a7: $10
    ld b, d                                       ; $73a8: $42
    rst $38                                       ; $73a9: $ff
    ld a, a                                       ; $73aa: $7f
    add $18                                       ; $73ab: $c6 $18
    ld b, d                                       ; $73ad: $42
    ld [$318c], sp                                ; $73ae: $08 $8c $31
    sub h                                         ; $73b1: $94
    ld d, d                                       ; $73b2: $52
    nop                                           ; $73b3: $00
    jr nz, jr_0af_73b6                            ; $73b4: $20 $00

jr_0af_73b6:
    nop                                           ; $73b6: $00
    rst $38                                       ; $73b7: $ff
    inc bc                                        ; $73b8: $03
    rst $38                                       ; $73b9: $ff
    ld a, a                                       ; $73ba: $7f
    add h                                         ; $73bb: $84
    db $10                                        ; $73bc: $10
    ld h, e                                       ; $73bd: $63
    inc c                                         ; $73be: $0c
    ld sp, $ff46                                  ; $73bf: $31 $46 $ff
    ld a, a                                       ; $73c2: $7f
    rst $38                                       ; $73c3: $ff
    inc bc                                        ; $73c4: $03
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00

jr_0af_73c7:
    ld c, l                                       ; $73c7: $4d

jr_0af_73c8:
    ld a, [hl]                                    ; $73c8: $7e
    rst $38                                       ; $73c9: $ff
    ld a, a                                       ; $73ca: $7f
    rst $38                                       ; $73cb: $ff
    inc bc                                        ; $73cc: $03
    push bc                                       ; $73cd: $c5
    nop                                           ; $73ce: $00

jr_0af_73cf:
    ld c, l                                       ; $73cf: $4d
    ld a, [hl]                                    ; $73d0: $7e
    inc sp                                        ; $73d1: $33

jr_0af_73d2:
    ld a, [de]                                    ; $73d2: $1a
    sbc a                                         ; $73d3: $9f
    ld h, a                                       ; $73d4: $67
    nop                                           ; $73d5: $00
    jr nz, jr_0af_740a                            ; $73d6: $20 $32

    add hl, bc                                    ; $73d8: $09
    add hl, hl                                    ; $73d9: $29
    nop                                           ; $73da: $00

jr_0af_73db:
    ld e, a                                       ; $73db: $5f
    ld a, [bc]                                    ; $73dc: $0a
    ld hl, $9414                                  ; $73dd: $21 $14 $94
    ld d, d                                       ; $73e0: $52
    adc h                                         ; $73e1: $8c
    ld sp, $7fff                                  ; $73e2: $31 $ff $7f
    and l                                         ; $73e5: $a5
    inc d                                         ; $73e6: $14
    xor l                                         ; $73e7: $ad
    dec [hl]                                      ; $73e8: $35
    sub h                                         ; $73e9: $94
    ld d, d                                       ; $73ea: $52
    db $10                                        ; $73eb: $10
    ld b, d                                       ; $73ec: $42
    rst $20                                       ; $73ed: $e7
    jr nz, jr_0af_7384                            ; $73ee: $20 $94

    ld d, d                                       ; $73f0: $52
    sbc $05                                       ; $73f1: $de $05
    rst $38                                       ; $73f3: $ff
    inc bc                                        ; $73f4: $03
    add h                                         ; $73f5: $84
    db $10                                        ; $73f6: $10
    ld sp, $2a46                                  ; $73f7: $31 $46 $2a
    dec h                                         ; $73fa: $25
    or l                                          ; $73fb: $b5
    ld d, [hl]                                    ; $73fc: $56
    ld hl, $4d04                                  ; $73fd: $21 $04 $4d
    ld a, [hl]                                    ; $7400: $7e
    or l                                          ; $7401: $b5
    ld d, [hl]                                    ; $7402: $56
    or l                                          ; $7403: $b5
    ld d, [hl]                                    ; $7404: $56
    ld h, h                                       ; $7405: $64
    inc c                                         ; $7406: $0c
    ld c, l                                       ; $7407: $4d
    ld a, [hl]                                    ; $7408: $7e
    rst $38                                       ; $7409: $ff

jr_0af_740a:
    ld b, [hl]                                    ; $740a: $46
    or h                                          ; $740b: $b4
    add hl, hl                                    ; $740c: $29
    nop                                           ; $740d: $00
    jr nz, jr_0af_73cf                            ; $740e: $20 $bf

    ld bc, $46bb                                  ; $7410: $01 $bb $46
    ld b, $00                                     ; $7413: $06 $00
    nop                                           ; $7415: $00
    inc d                                         ; $7416: $14
    db $10                                        ; $7417: $10
    ld b, d                                       ; $7418: $42
    rst $38                                       ; $7419: $ff
    ld a, a                                       ; $741a: $7f
    rst $20                                       ; $741b: $e7
    inc e                                         ; $741c: $1c
    and l                                         ; $741d: $a5
    inc d                                         ; $741e: $14
    adc $39                                       ; $741f: $ce $39
    sub h                                         ; $7421: $94
    ld d, d                                       ; $7422: $52
    ld c, d                                       ; $7423: $4a
    add hl, hl                                    ; $7424: $29
    ld hl, $5204                                  ; $7425: $21 $04 $52
    ld c, d                                       ; $7428: $4a
    sbc [hl]                                      ; $7429: $9e
    ld bc, $14c7                                  ; $742a: $01 $c7 $14
    ld h, e                                       ; $742d: $63
    inc c                                         ; $742e: $0c
    rst $28                                       ; $742f: $ef
    dec a                                         ; $7430: $3d
    or l                                          ; $7431: $b5
    ld d, [hl]                                    ; $7432: $56
    rst $20                                       ; $7433: $e7
    inc e                                         ; $7434: $1c
    ld hl, $4d04                                  ; $7435: $21 $04 $4d
    ld a, [hl]                                    ; $7438: $7e
    or l                                          ; $7439: $b5
    ld d, [hl]                                    ; $743a: $56
    rst $20                                       ; $743b: $e7
    inc e                                         ; $743c: $1c
    xor c                                         ; $743d: $a9
    nop                                           ; $743e: $00
    ld c, l                                       ; $743f: $4d
    ld a, [hl]                                    ; $7440: $7e
    rst $38                                       ; $7441: $ff
    ld b, [hl]                                    ; $7442: $46
    or h                                          ; $7443: $b4
    add hl, hl                                    ; $7444: $29
    nop                                           ; $7445: $00
    jr nz, @+$2e                                  ; $7446: $20 $2c

    dec b                                         ; $7448: $05
    ld b, h                                       ; $7449: $44
    nop                                           ; $744a: $00
    jr c, jr_0af_744e                             ; $744b: $38 $01

    nop                                           ; $744d: $00

jr_0af_744e:
    inc d                                         ; $744e: $14
    sub h                                         ; $744f: $94
    ld d, d                                       ; $7450: $52
    xor l                                         ; $7451: $ad
    dec [hl]                                      ; $7452: $35
    rst $38                                       ; $7453: $ff
    ld a, a                                       ; $7454: $7f
    and l                                         ; $7455: $a5
    inc d                                         ; $7456: $14
    xor l                                         ; $7457: $ad
    dec [hl]                                      ; $7458: $35
    ld [hl], e                                    ; $7459: $73
    ld c, [hl]                                    ; $745a: $4e
    ld l, e                                       ; $745b: $6b
    dec l                                         ; $745c: $2d
    add h                                         ; $745d: $84
    db $10                                        ; $745e: $10
    rst $28                                       ; $745f: $ef
    dec a                                         ; $7460: $3d
    ld l, e                                       ; $7461: $6b
    ld sp, $5294                                  ; $7462: $31 $94 $52
    and l                                         ; $7465: $a5
    inc d                                         ; $7466: $14
    rst $28                                       ; $7467: $ef
    dec a                                         ; $7468: $3d
    or l                                          ; $7469: $b5
    ld d, [hl]                                    ; $746a: $56
    ld [$2121], sp                                ; $746b: $08 $21 $21
    inc b                                         ; $746e: $04
    ld c, l                                       ; $746f: $4d
    ld a, [hl]                                    ; $7470: $7e
    add hl, hl                                    ; $7471: $29
    dec h                                         ; $7472: $25
    ld [$cc21], sp                                ; $7473: $08 $21 $cc
    inc b                                         ; $7476: $04
    ld c, l                                       ; $7477: $4d
    ld a, [hl]                                    ; $7478: $7e
    rst $38                                       ; $7479: $ff
    ld b, [hl]                                    ; $747a: $46
    or h                                          ; $747b: $b4
    add hl, hl                                    ; $747c: $29
    nop                                           ; $747d: $00
    jr nz, @-$32                                  ; $747e: $20 $cc

    inc b                                         ; $7480: $04
    ld d, [hl]                                    ; $7481: $56
    dec c                                         ; $7482: $0d
    ld b, $00                                     ; $7483: $06 $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    rst $38                                       ; $7487: $ff
    ld a, a                                       ; $7488: $7f
    adc h                                         ; $7489: $8c
    ld sp, $1c00                                  ; $748a: $31 $00 $1c
    and l                                         ; $748d: $a5
    inc d                                         ; $748e: $14
    xor l                                         ; $748f: $ad
    dec [hl]                                      ; $7490: $35
    ld l, e                                       ; $7491: $6b
    dec l                                         ; $7492: $2d
    sub h                                         ; $7493: $94
    ld d, d                                       ; $7494: $52
    ld hl, $1004                                  ; $7495: $21 $04 $10
    ld b, d                                       ; $7498: $42
    add $18                                       ; $7499: $c6 $18
    sub h                                         ; $749b: $94
    ld d, d                                       ; $749c: $52
    add h                                         ; $749d: $84
    db $10                                        ; $749e: $10
    rst $28                                       ; $749f: $ef
    dec a                                         ; $74a0: $3d
    or l                                          ; $74a1: $b5
    ld d, [hl]                                    ; $74a2: $56
    ld c, d                                       ; $74a3: $4a
    add hl, hl                                    ; $74a4: $29
    ld hl, $4d04                                  ; $74a5: $21 $04 $4d
    ld a, [hl]                                    ; $74a8: $7e
    ld [$4a21], sp                                ; $74a9: $08 $21 $4a
    add hl, hl                                    ; $74ac: $29
    call z, $4d04                                 ; $74ad: $cc $04 $4d
    ld a, [hl]                                    ; $74b0: $7e
    rst $38                                       ; $74b1: $ff
    ld b, [hl]                                    ; $74b2: $46
    or h                                          ; $74b3: $b4
    add hl, hl                                    ; $74b4: $29
    nop                                           ; $74b5: $00
    inc e                                         ; $74b6: $1c
    dec bc                                        ; $74b7: $0b
    dec c                                         ; $74b8: $0d
    rst $18                                       ; $74b9: $df
    inc hl                                        ; $74ba: $23
    halt                                          ; $74bb: $76
    dec d                                         ; $74bc: $15
    nop                                           ; $74bd: $00
    nop                                           ; $74be: $00
    sub h                                         ; $74bf: $94
    ld d, d                                       ; $74c0: $52
    rst $38                                       ; $74c1: $ff
    ld a, a                                       ; $74c2: $7f
    ld hl, $a51c                                  ; $74c3: $21 $1c $a5
    inc d                                         ; $74c6: $14
    rst $28                                       ; $74c7: $ef
    dec a                                         ; $74c8: $3d
    ld l, e                                       ; $74c9: $6b
    dec l                                         ; $74ca: $2d
    sub h                                         ; $74cb: $94
    ld d, d                                       ; $74cc: $52
    ld hl, $6b04                                  ; $74cd: $21 $04 $6b
    dec l                                         ; $74d0: $2d
    ld c, l                                       ; $74d1: $4d
    ld a, [hl]                                    ; $74d2: $7e
    rst $28                                       ; $74d3: $ef
    dec a                                         ; $74d4: $3d
    add h                                         ; $74d5: $84
    db $10                                        ; $74d6: $10
    adc $39                                       ; $74d7: $ce $39
    ld d, d                                       ; $74d9: $52
    ld c, d                                       ; $74da: $4a
    ld c, d                                       ; $74db: $4a
    add hl, hl                                    ; $74dc: $29
    ld hl, $4d04                                  ; $74dd: $21 $04 $4d
    ld a, [hl]                                    ; $74e0: $7e
    rst $28                                       ; $74e1: $ef
    dec a                                         ; $74e2: $3d
    ld c, d                                       ; $74e3: $4a
    add hl, hl                                    ; $74e4: $29
    dec hl                                        ; $74e5: $2b
    dec c                                         ; $74e6: $0d
    ld c, l                                       ; $74e7: $4d
    ld a, [hl]                                    ; $74e8: $7e
    rst $18                                       ; $74e9: $df
    inc hl                                        ; $74ea: $23
    or h                                          ; $74eb: $b4
    add hl, hl                                    ; $74ec: $29
    nop                                           ; $74ed: $00
    inc e                                         ; $74ee: $1c
    rst $18                                       ; $74ef: $df
    inc hl                                        ; $74f0: $23
    ld l, $0d                                     ; $74f1: $2e $0d
    ld a, d                                       ; $74f3: $7a
    ld a, a                                       ; $74f4: $7f
    nop                                           ; $74f5: $00
    nop                                           ; $74f6: $00
    ld c, l                                       ; $74f7: $4d
    ld a, [hl]                                    ; $74f8: $7e
    rst $38                                       ; $74f9: $ff
    ld a, a                                       ; $74fa: $7f
    ld hl, $0004                                  ; $74fb: $21 $04 $00
    nop                                           ; $74fe: $00
    ld c, l                                       ; $74ff: $4d
    ld a, [hl]                                    ; $7500: $7e
    rst $20                                       ; $7501: $e7
    inc e                                         ; $7502: $1c
    ld hl, $2104                                  ; $7503: $21 $04 $21
    inc b                                         ; $7506: $04
    ld c, l                                       ; $7507: $4d
    ld a, [hl]                                    ; $7508: $7e
    db $10                                        ; $7509: $10
    ld b, d                                       ; $750a: $42
    ld c, d                                       ; $750b: $4a
    add hl, hl                                    ; $750c: $29
    rst $20                                       ; $750d: $e7
    inc e                                         ; $750e: $1c
    xor l                                         ; $750f: $ad
    dec [hl]                                      ; $7510: $35
    ld l, e                                       ; $7511: $6b
    dec l                                         ; $7512: $2d
    rrca                                          ; $7513: $0f
    ld b, d                                       ; $7514: $42
    ld hl, $4d04                                  ; $7515: $21 $04 $4d
    ld a, [hl]                                    ; $7518: $7e
    rrca                                          ; $7519: $0f
    ld b, d                                       ; $751a: $42
    rrca                                          ; $751b: $0f
    ld b, d                                       ; $751c: $42
    dec hl                                        ; $751d: $2b
    nop                                           ; $751e: $00
    ld c, l                                       ; $751f: $4d
    ld a, [hl]                                    ; $7520: $7e
    inc a                                         ; $7521: $3c
    ld a, [hl+]                                   ; $7522: $2a
    rst $18                                       ; $7523: $df
    inc hl                                        ; $7524: $23
    nop                                           ; $7525: $00
    inc e                                         ; $7526: $1c
    ld [hl-], a                                   ; $7527: $32
    ld h, d                                       ; $7528: $62
    ld c, d                                       ; $7529: $4a
    inc b                                         ; $752a: $04
    rst $38                                       ; $752b: $ff
    ld a, a                                       ; $752c: $7f
    nop                                           ; $752d: $00
    ld [$7e4d], sp                                ; $752e: $08 $4d $7e
    rst $38                                       ; $7531: $ff
    ld a, a                                       ; $7532: $7f
    ld c, $00                                     ; $7533: $0e $00
    ld c, l                                       ; $7535: $4d
    ld a, [hl]                                    ; $7536: $7e
    ld c, l                                       ; $7537: $4d
    ld a, [hl]                                    ; $7538: $7e
    rst $38                                       ; $7539: $ff
    ld a, a                                       ; $753a: $7f
    ld c, $00                                     ; $753b: $0e $00
    ld b, e                                       ; $753d: $43
    inc c                                         ; $753e: $0c
    ld c, l                                       ; $753f: $4d
    ld a, [hl]                                    ; $7540: $7e
    ld l, e                                       ; $7541: $6b
    ld sp, $4a2f                                  ; $7542: $31 $2f $4a
    rlca                                          ; $7545: $07
    nop                                           ; $7546: $00
    dec c                                         ; $7547: $0d
    ld c, [hl]                                    ; $7548: $4e
    sbc b                                         ; $7549: $98
    dec b                                         ; $754a: $05
    push hl                                       ; $754b: $e5
    jr nz, @-$5a                                  ; $754c: $20 $a4

    inc d                                         ; $754e: $14
    ld c, l                                       ; $754f: $4d
    ld a, [hl]                                    ; $7550: $7e
    inc a                                         ; $7551: $3c
    ld a, [hl+]                                   ; $7552: $2a
    inc c                                         ; $7553: $0c
    nop                                           ; $7554: $00
    inc c                                         ; $7555: $0c
    nop                                           ; $7556: $00
    inc a                                         ; $7557: $3c
    ld a, [hl+]                                   ; $7558: $2a
    inc [hl]                                      ; $7559: $34
    ld bc, $000c                                  ; $755a: $01 $0c $00
    inc h                                         ; $755d: $24
    nop                                           ; $755e: $00
    cp b                                          ; $755f: $b8
    dec d                                         ; $7560: $15
    rst $38                                       ; $7561: $ff
    ld a, a                                       ; $7562: $7f
    nop                                           ; $7563: $00
    jr nz, jr_0af_7566                            ; $7564: $20 $00

jr_0af_7566:
    inc c                                         ; $7566: $0c
    rst $38                                       ; $7567: $ff
    ld a, a                                       ; $7568: $7f
    stop                                          ; $7569: $10 $00
    rra                                           ; $756b: $1f
    nop                                           ; $756c: $00
    ld c, l                                       ; $756d: $4d
    ld a, [hl]                                    ; $756e: $7e
    ld [de], a                                    ; $756f: $12
    nop                                           ; $7570: $00
    inc de                                        ; $7571: $13
    nop                                           ; $7572: $00
    rra                                           ; $7573: $1f
    nop                                           ; $7574: $00
    inc b                                         ; $7575: $04
    nop                                           ; $7576: $00
    ld c, l                                       ; $7577: $4d
    ld a, [hl]                                    ; $7578: $7e
    dec e                                         ; $7579: $1d
    ld c, $b0                                     ; $757a: $0e $b0
    inc b                                         ; $757c: $04
    ld b, a                                       ; $757d: $47
    nop                                           ; $757e: $00
    ld a, [de]                                    ; $757f: $1a
    ld h, $10                                     ; $7580: $26 $10
    add hl, bc                                    ; $7582: $09
    ld a, $12                                     ; $7583: $3e $12
    rst $08                                       ; $7585: $cf
    nop                                           ; $7586: $00
    inc a                                         ; $7587: $3c
    ld a, [hl+]                                   ; $7588: $2a
    inc [hl]                                      ; $7589: $34
    ld bc, $123e                                  ; $758a: $01 $3e $12
    rst $08                                       ; $758d: $cf
    nop                                           ; $758e: $00
    inc [hl]                                      ; $758f: $34
    ld bc, HeaderTitle                            ; $7590: $01 $34 $01
    ld a, $12                                     ; $7593: $3e $12
    nop                                           ; $7595: $00
    inc e                                         ; $7596: $1c
    halt                                          ; $7597: $76
    dec c                                         ; $7598: $0d
    rst $38                                       ; $7599: $ff
    ld a, a                                       ; $759a: $7f
    ld l, l                                       ; $759b: $6d
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    rst $38                                       ; $759f: $ff
    ld a, a                                       ; $75a0: $7f
    rla                                           ; $75a1: $17
    nop                                           ; $75a2: $00
    nop                                           ; $75a3: $00
    jr nz, jr_0af_75a9                            ; $75a4: $20 $03

    nop                                           ; $75a6: $00
    ld c, l                                       ; $75a7: $4d
    ld a, [hl]                                    ; $75a8: $7e

jr_0af_75a9:
    rst $38                                       ; $75a9: $ff
    ld b, [hl]                                    ; $75aa: $46
    adc b                                         ; $75ab: $88
    inc b                                         ; $75ac: $04
    rlca                                          ; $75ad: $07
    nop                                           ; $75ae: $00
    ld d, a                                       ; $75af: $57
    ld bc, $0012                                  ; $75b0: $01 $12 $00
    dec a                                         ; $75b3: $3d
    ld d, $05                                     ; $75b4: $16 $05
    nop                                           ; $75b6: $00
    ld d, $01                                     ; $75b7: $16 $01
    rlca                                          ; $75b9: $07
    ld hl, $0159                                  ; $75ba: $21 $59 $01
    inc b                                         ; $75bd: $04
    nop                                           ; $75be: $00
    xor h                                         ; $75bf: $ac
    dec [hl]                                      ; $75c0: $35
    ld c, l                                       ; $75c1: $4d
    ld a, [hl]                                    ; $75c2: $7e
    sub h                                         ; $75c3: $94
    ld d, d                                       ; $75c4: $52
    dec b                                         ; $75c5: $05
    nop                                           ; $75c6: $00
    rst $08                                       ; $75c7: $cf
    nop                                           ; $75c8: $00
    ld c, l                                       ; $75c9: $4d
    ld a, [hl]                                    ; $75ca: $7e
    sub h                                         ; $75cb: $94
    ld d, d                                       ; $75cc: $52
    nop                                           ; $75cd: $00
    inc e                                         ; $75ce: $1c
    pop af                                        ; $75cf: $f1
    nop                                           ; $75d0: $00
    rst $38                                       ; $75d1: $ff
    ld a, a                                       ; $75d2: $7f
    inc a                                         ; $75d3: $3c
    ld a, [hl+]                                   ; $75d4: $2a
    nop                                           ; $75d5: $00

jr_0af_75d6:
    nop                                           ; $75d6: $00
    ld l, $7a                                     ; $75d7: $2e $7a
    rst $38                                       ; $75d9: $ff
    ld a, a                                       ; $75da: $7f
    nop                                           ; $75db: $00
    jr nz, jr_0af_7566                            ; $75dc: $20 $88

    inc b                                         ; $75de: $04
    ld l, $7a                                     ; $75df: $2e $7a
    rst $38                                       ; $75e1: $ff
    ld b, [hl]                                    ; $75e2: $46
    ld [hl], b                                    ; $75e3: $70
    ld hl, $0004                                  ; $75e4: $21 $04 $00
    inc l                                         ; $75e7: $2c
    add hl, bc                                    ; $75e8: $09
    ld [de], a                                    ; $75e9: $12
    nop                                           ; $75ea: $00
    add hl, bc                                    ; $75eb: $09
    nop                                           ; $75ec: $00
    ld h, e                                       ; $75ed: $63
    inc c                                         ; $75ee: $0c
    inc [hl]                                      ; $75ef: $34
    ld b, $0f                                     ; $75f0: $06 $0f
    ld b, [hl]                                    ; $75f2: $46
    dec hl                                        ; $75f3: $2b
    ld bc, $1084                                  ; $75f4: $01 $84 $10
    ld sp, $2e46                                  ; $75f7: $31 $46 $2e
    ld a, d                                       ; $75fa: $7a
    inc c                                         ; $75fb: $0c
    nop                                           ; $75fc: $00
    dec b                                         ; $75fd: $05
    nop                                           ; $75fe: $00
    rst $08                                       ; $75ff: $cf
    nop                                           ; $7600: $00
    inc [hl]                                      ; $7601: $34
    ld bc, $000c                                  ; $7602: $01 $0c $00
    ld [bc], a                                    ; $7605: $02
    nop                                           ; $7606: $00
    ld d, l                                       ; $7607: $55
    add hl, bc                                    ; $7608: $09
    rst $38                                       ; $7609: $ff
    ld a, a                                       ; $760a: $7f
    nop                                           ; $760b: $00
    jr nz, jr_0af_760e                            ; $760c: $20 $00

jr_0af_760e:
    nop                                           ; $760e: $00
    xor $75                                       ; $760f: $ee $75
    rst $38                                       ; $7611: $ff
    ld a, a                                       ; $7612: $7f
    nop                                           ; $7613: $00
    jr nz, @+$6a                                  ; $7614: $20 $68

    nop                                           ; $7616: $00
    xor $75                                       ; $7617: $ee $75
    rst $38                                       ; $7619: $ff
    ld b, [hl]                                    ; $761a: $46
    ld [hl], b                                    ; $761b: $70
    ld hl, $00a6                                  ; $761c: $21 $a6 $00
    ld c, $76                                     ; $761f: $0e $76
    pop de                                        ; $7621: $d1
    ld bc, $1b1b                                  ; $7622: $01 $1b $1b
    ld b, d                                       ; $7625: $42
    ld [$01f2], sp                                ; $7626: $08 $f2 $01
    sub e                                         ; $7629: $93
    ld d, d                                       ; $762a: $52
    dec de                                        ; $762b: $1b
    dec de                                        ; $762c: $1b
    ld b, $00                                     ; $762d: $06 $00
    ld [hl], e                                    ; $762f: $73
    ld c, [hl]                                    ; $7630: $4e
    ld c, $76                                     ; $7631: $0e $76
    rst $20                                       ; $7633: $e7
    inc e                                         ; $7634: $1c
    dec b                                         ; $7635: $05
    nop                                           ; $7636: $00
    rst $08                                       ; $7637: $cf
    nop                                           ; $7638: $00
    inc de                                        ; $7639: $13
    ld bc, HeaderTitle                            ; $763a: $01 $34 $01
    ld [bc], a                                    ; $763d: $02
    nop                                           ; $763e: $00
    rst $38                                       ; $763f: $ff
    ld a, a                                       ; $7640: $7f
    inc [hl]                                      ; $7641: $34
    ld bc, $2000                                  ; $7642: $01 $00 $20
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    rst $08                                       ; $7647: $cf
    ld [hl], c                                    ; $7648: $71
    rst $38                                       ; $7649: $ff
    ld a, a                                       ; $764a: $7f
    nop                                           ; $764b: $00
    jr nz, jr_0af_75d6                            ; $764c: $20 $88

    inc b                                         ; $764e: $04
    rst $08                                       ; $764f: $cf
    ld [hl], c                                    ; $7650: $71
    ld [hl], b                                    ; $7651: $70
    ld hl, $75ee                                  ; $7652: $21 $ee $75
    ld h, h                                       ; $7655: $64
    nop                                           ; $7656: $00
    adc $71                                       ; $7657: $ce $71
    pop de                                        ; $7659: $d1
    ld bc, $1b1b                                  ; $765a: $01 $1b $1b
    add l                                         ; $765d: $85
    db $10                                        ; $765e: $10
    ld a, [c]                                     ; $765f: $f2
    ld bc, $5293                                  ; $7660: $01 $93 $52
    dec de                                        ; $7663: $1b
    dec de                                        ; $7664: $1b
    add h                                         ; $7665: $84
    db $10                                        ; $7666: $10
    adc $71                                       ; $7667: $ce $71
    ld l, l                                       ; $7669: $6d
    nop                                           ; $766a: $00
    ld [hl], e                                    ; $766b: $73
    ld d, d                                       ; $766c: $52
    dec b                                         ; $766d: $05
    nop                                           ; $766e: $00
    rst $08                                       ; $766f: $cf
    nop                                           ; $7670: $00
    inc a                                         ; $7671: $3c
    ld a, [hl+]                                   ; $7672: $2a
    inc [hl]                                      ; $7673: $34
    ld bc, $0003                                  ; $7674: $01 $03 $00
    rst $38                                       ; $7677: $ff
    ld a, a                                       ; $7678: $7f
    nop                                           ; $7679: $00
    jr nz, jr_0af_76b0                            ; $767a: $20 $34

    ld bc, $0000                                  ; $767c: $01 $00 $00
    rst $38                                       ; $767f: $ff
    ld a, a                                       ; $7680: $7f
    nop                                           ; $7681: $00
    jr nz, jr_0af_769f                            ; $7682: $20 $1b

    dec de                                        ; $7684: $1b
    xor a                                         ; $7685: $af
    ld l, l                                       ; $7686: $6d
    xor a                                         ; $7687: $af
    ld [hl], c                                    ; $7688: $71
    rst $08                                       ; $7689: $cf
    ld [hl], c                                    ; $768a: $71
    dec de                                        ; $768b: $1b
    dec de                                        ; $768c: $1b
    add l                                         ; $768d: $85
    nop                                           ; $768e: $00
    xor a                                         ; $768f: $af
    ld [hl], c                                    ; $7690: $71
    pop de                                        ; $7691: $d1
    ld bc, $1b1b                                  ; $7692: $01 $1b $1b
    ld h, h                                       ; $7695: $64
    ld [$01b0], sp                                ; $7696: $08 $b0 $01
    dec de                                        ; $7699: $1b
    dec de                                        ; $769a: $1b
    ld a, [c]                                     ; $769b: $f2
    ld bc, $0842                                  ; $769c: $01 $42 $08

jr_0af_769f:
    xor a                                         ; $769f: $af
    ld l, l                                       ; $76a0: $6d
    inc a                                         ; $76a1: $3c
    ld a, [hl+]                                   ; $76a2: $2a
    inc c                                         ; $76a3: $0c
    nop                                           ; $76a4: $00
    dec b                                         ; $76a5: $05
    nop                                           ; $76a6: $00
    rst $08                                       ; $76a7: $cf
    nop                                           ; $76a8: $00
    inc a                                         ; $76a9: $3c
    ld a, [hl+]                                   ; $76aa: $2a
    inc [hl]                                      ; $76ab: $34
    ld bc, $0000                                  ; $76ac: $01 $00 $00
    rst $38                                       ; $76af: $ff

jr_0af_76b0:
    ld a, a                                       ; $76b0: $7f
    nop                                           ; $76b1: $00
    jr nz, jr_0af_76b9                            ; $76b2: $20 $05

    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    rst $38                                       ; $76b7: $ff
    ld a, a                                       ; $76b8: $7f

jr_0af_76b9:
    nop                                           ; $76b9: $00
    jr nz, jr_0af_76d7                            ; $76ba: $20 $1b

    dec de                                        ; $76bc: $1b
    nop                                           ; $76bd: $00
    nop                                           ; $76be: $00
    adc a                                         ; $76bf: $8f

Jump_0af_76c0:
    ld l, l                                       ; $76c0: $6d
    xor a                                         ; $76c1: $af
    ld l, l                                       ; $76c2: $6d
    dec de                                        ; $76c3: $1b
    dec de                                        ; $76c4: $1b
    ld hl, $f200                                  ; $76c5: $21 $00 $f2
    ld bc, $1b1b                                  ; $76c8: $01 $1b $1b
    add sp, $00                                   ; $76cb: $e8 $00
    ld [hl+], a                                   ; $76cd: $22
    inc b                                         ; $76ce: $04
    pop de                                        ; $76cf: $d1
    ld bc, $1b1b                                  ; $76d0: $01 $1b $1b
    add sp, $00                                   ; $76d3: $e8 $00
    add hl, hl                                    ; $76d5: $29
    nop                                           ; $76d6: $00

jr_0af_76d7:
    adc a                                         ; $76d7: $8f
    ld l, l                                       ; $76d8: $6d
    inc a                                         ; $76d9: $3c
    ld a, [hl+]                                   ; $76da: $2a
    inc [hl]                                      ; $76db: $34

jr_0af_76dc:
    ld bc, $0000                                  ; $76dc: $01 $00 $00
    rst $08                                       ; $76df: $cf
    nop                                           ; $76e0: $00
    inc d                                         ; $76e1: $14
    ld bc, $0005                                  ; $76e2: $01 $05 $00
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    rst $38                                       ; $76e7: $ff
    ld a, a                                       ; $76e8: $7f
    nop                                           ; $76e9: $00
    jr nz, jr_0af_76f1                            ; $76ea: $20 $05

    nop                                           ; $76ec: $00
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    rst $38                                       ; $76ef: $ff
    ld a, a                                       ; $76f0: $7f

jr_0af_76f1:
    nop                                           ; $76f1: $00
    jr nz, jr_0af_76dc                            ; $76f2: $20 $e8

    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    nop                                           ; $76f6: $00
    ld l, a                                       ; $76f7: $6f
    ld l, c                                       ; $76f8: $69
    ld h, h                                       ; $76f9: $64
    ld [$6d8f], sp                                ; $76fa: $08 $8f $6d
    add h                                         ; $76fd: $84
    nop                                           ; $76fe: $00
    ld [hl], b                                    ; $76ff: $70
    ld l, c                                       ; $7700: $69
    ld a, [c]                                     ; $7701: $f2
    ld bc, $1b1b                                  ; $7702: $01 $1b $1b
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    pop de                                        ; $7707: $d1
    ld bc, $1b1b                                  ; $7708: $01 $1b $1b
    add sp, $00                                   ; $770b: $e8 $00
    add l                                         ; $770d: $85
    inc b                                         ; $770e: $04
    inc [hl]                                      ; $770f: $34
    ld bc, $221b                                  ; $7710: $01 $1b $22
    ld c, d                                       ; $7713: $4a
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    rst $38                                       ; $7717: $ff
    ld a, a                                       ; $7718: $7f
    inc [hl]                                      ; $7719: $34
    ld bc, $0005                                  ; $771a: $01 $05 $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    rst $38                                       ; $771f: $ff
    ld a, a                                       ; $7720: $7f
    nop                                           ; $7721: $00
    jr nz, jr_0af_7729                            ; $7722: $20 $05

    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    rst $38                                       ; $7727: $ff
    ld a, a                                       ; $7728: $7f

jr_0af_7729:
    nop                                           ; $7729: $00
    jr nz, jr_0af_7747                            ; $772a: $20 $1b

    dec de                                        ; $772c: $1b
    ld [hl+], a                                   ; $772d: $22
    inc b                                         ; $772e: $04
    ld [hl], b                                    ; $772f: $70
    ld l, c                                       ; $7730: $69
    rst $38                                       ; $7731: $ff
    ld a, a                                       ; $7732: $7f
    dec hl                                        ; $7733: $2b
    ld bc, $0084                                  ; $7734: $01 $84 $00
    ld l, a                                       ; $7737: $6f
    ld l, c                                       ; $7738: $69
    dec de                                        ; $7739: $1b
    dec de                                        ; $773a: $1b
    ld a, [c]                                     ; $773b: $f2
    ld bc, $0000                                  ; $773c: $01 $00 $00
    ld [hl], b                                    ; $773f: $70
    ld l, c                                       ; $7740: $69
    pop de                                        ; $7741: $d1
    ld bc, $00e8                                  ; $7742: $01 $e8 $00
    rlca                                          ; $7745: $07
    nop                                           ; $7746: $00

jr_0af_7747:
    inc [hl]                                      ; $7747: $34
    ld bc, $1b1b                                  ; $7748: $01 $1b $1b
    ret z                                         ; $774b: $c8

    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    rst $38                                       ; $774f: $ff
    ld a, a                                       ; $7750: $7f
    inc [hl]                                      ; $7751: $34
    ld bc, $0005                                  ; $7752: $01 $05 $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    jr nz, jr_0af_778e                            ; $7758: $20 $34

    ld bc, $0005                                  ; $775a: $01 $05 $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    jr nz, jr_0af_777d                            ; $7760: $20 $1b

    dec de                                        ; $7762: $1b
    ld a, [c]                                     ; $7763: $f2
    ld bc, $0005                                  ; $7764: $01 $05 $00
    ld d, b                                       ; $7767: $50
    ld h, l                                       ; $7768: $65
    rst $38                                       ; $7769: $ff
    ld a, a                                       ; $776a: $7f
    jr nc, jr_0af_776f                            ; $776b: $30 $02

    nop                                           ; $776d: $00
    nop                                           ; $776e: $00

jr_0af_776f:
    ld d, b                                       ; $776f: $50
    ld h, l                                       ; $7770: $65
    inc sp                                        ; $7771: $33
    ld b, $e8                                     ; $7772: $06 $e8
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    ld d, b                                       ; $7777: $50
    ld h, l                                       ; $7778: $65
    pop de                                        ; $7779: $d1
    ld bc, $00e8                                  ; $777a: $01 $e8 $00

jr_0af_777d:
    dec b                                         ; $777d: $05
    nop                                           ; $777e: $00
    ld a, [c]                                     ; $777f: $f2
    ld bc, $00c8                                  ; $7780: $01 $c8 $00
    inc [hl]                                      ; $7783: $34
    ld bc, $0000                                  ; $7784: $01 $00 $00
    rst $38                                       ; $7787: $ff
    ld a, a                                       ; $7788: $7f
    inc [hl]                                      ; $7789: $34
    ld bc, $0005                                  ; $778a: $01 $05 $00
    nop                                           ; $778d: $00

jr_0af_778e:
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    jr nz, jr_0af_77c6                            ; $7790: $20 $34

    ld bc, $0005                                  ; $7792: $01 $05 $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    jr nz, jr_0af_77cd                            ; $7798: $20 $33

    ld b, $e8                                     ; $779a: $06 $e8
    nop                                           ; $779c: $00
    inc bc                                        ; $779d: $03
    nop                                           ; $779e: $00
    jr nc, @+$67                                  ; $779f: $30 $65

    rst $38                                       ; $77a1: $ff
    ld a, a                                       ; $77a2: $7f
    inc sp                                        ; $77a3: $33
    nop                                           ; $77a4: $00
    ld [hl+], a                                   ; $77a5: $22
    nop                                           ; $77a6: $00
    jr nc, @+$67                                  ; $77a7: $30 $65

    sub d                                         ; $77a9: $92
    ld [bc], a                                    ; $77aa: $02
    xor c                                         ; $77ab: $a9
    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    jr nc, jr_0af_7816                            ; $77af: $30 $65

    or b                                          ; $77b1: $b0
    ld bc, $00e8                                  ; $77b2: $01 $e8 $00
    dec b                                         ; $77b5: $05
    nop                                           ; $77b6: $00
    ld a, [c]                                     ; $77b7: $f2
    ld bc, $0135                                  ; $77b8: $01 $35 $01
    ret z                                         ; $77bb: $c8

    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    rst $38                                       ; $77bf: $ff
    ld a, a                                       ; $77c0: $7f
    inc [hl]                                      ; $77c1: $34
    ld bc, $0005                                  ; $77c2: $01 $05 $00
    nop                                           ; $77c5: $00

jr_0af_77c6:
    jr nz, @+$01                                  ; $77c6: $20 $ff

    ld a, a                                       ; $77c8: $7f
    inc [hl]                                      ; $77c9: $34
    ld bc, $0005                                  ; $77ca: $01 $05 $00

jr_0af_77cd:
    nop                                           ; $77cd: $00
    jr nz, jr_0af_7800                            ; $77ce: $20 $30

    ld h, l                                       ; $77d0: $65
    sub d                                         ; $77d1: $92
    ld [bc], a                                    ; $77d2: $02
    xor c                                         ; $77d3: $a9
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    nop                                           ; $77d6: $00
    ld [hl], $67                                  ; $77d7: $36 $67
    cpl                                           ; $77d9: $2f
    inc b                                         ; $77da: $04
    rst $38                                       ; $77db: $ff
    ld a, a                                       ; $77dc: $7f
    ld b, l                                       ; $77dd: $45
    nop                                           ; $77de: $00
    jr nc, @+$63                                  ; $77df: $30 $61

    inc d                                         ; $77e1: $14
    nop                                           ; $77e2: $00
    adc c                                         ; $77e3: $89
    ld bc, $0000                                  ; $77e4: $01 $00 $00
    jr nc, @+$63                                  ; $77e7: $30 $61

    add sp, $00                                   ; $77e9: $e8 $00
    or b                                          ; $77eb: $b0
    ld bc, $0005                                  ; $77ec: $01 $05 $00
    ret nc                                        ; $77ef: $d0

    ld bc, $00c8                                  ; $77f0: $01 $c8 $00
    dec [hl]                                      ; $77f3: $35
    ld bc, $0400                                  ; $77f4: $01 $00 $04
    rst $38                                       ; $77f7: $ff
    ld a, a                                       ; $77f8: $7f
    inc d                                         ; $77f9: $14
    ld bc, $0005                                  ; $77fa: $01 $05 $00
    nop                                           ; $77fd: $00
    jr nz, @+$01                                  ; $77fe: $20 $ff

jr_0af_7800:
    ld a, a                                       ; $7800: $7f
    inc d                                         ; $7801: $14
    ld bc, $0005                                  ; $7802: $01 $05 $00
    jr nz, jr_0af_7807                            ; $7805: $20 $00

jr_0af_7807:
    nop                                           ; $7807: $00

jr_0af_7808:
    jr nz, @+$0d                                  ; $7808: $20 $0b

    nop                                           ; $780a: $00
    adc c                                         ; $780b: $89
    ld bc, $0027                                  ; $780c: $01 $27 $00
    ld d, $63                                     ; $780f: $16 $63
    ld d, [hl]                                    ; $7811: $56
    nop                                           ; $7812: $00
    inc c                                         ; $7813: $0c
    ld c, $04                                     ; $7814: $0e $04

jr_0af_7816:
    nop                                           ; $7816: $00
    jr nc, jr_0af_787a                            ; $7817: $30 $61

    ld c, $00                                     ; $7819: $0e $00
    inc d                                         ; $781b: $14
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    jr nc, jr_0af_7882                            ; $781f: $30 $61

    add sp, $00                                   ; $7821: $e8 $00
    dec b                                         ; $7823: $05
    nop                                           ; $7824: $00
    dec b                                         ; $7825: $05
    nop                                           ; $7826: $00
    add sp, $00                                   ; $7827: $e8 $00
    add sp, $00                                   ; $7829: $e8 $00
    dec b                                         ; $782b: $05
    nop                                           ; $782c: $00
    inc bc                                        ; $782d: $03
    nop                                           ; $782e: $00
    rst $38                                       ; $782f: $ff
    ld a, a                                       ; $7830: $7f
    dec [hl]                                      ; $7831: $35
    ld bc, $2000                                  ; $7832: $01 $00 $20
    nop                                           ; $7835: $00
    jr nz, @+$01                                  ; $7836: $20 $ff

    ld a, a                                       ; $7838: $7f
    dec [hl]                                      ; $7839: $35
    ld bc, $2000                                  ; $783a: $01 $00 $20
    nop                                           ; $783d: $00
    jr nz, jr_0af_7808                            ; $783e: $20 $c8

    dec c                                         ; $7840: $0d
    jr nz, jr_0af_7843                            ; $7841: $20 $00

jr_0af_7843:
    db $10                                        ; $7843: $10
    ld b, $22                                     ; $7844: $06 $22
    nop                                           ; $7846: $00
    ld l, e                                       ; $7847: $6b
    ld bc, $005a                                  ; $7848: $01 $5a $00
    rrca                                          ; $784b: $0f
    ld b, $00                                     ; $784c: $06 $00
    nop                                           ; $784e: $00
    jr nc, jr_0af_78b2                            ; $784f: $30 $61

    cpl                                           ; $7851: $2f
    ld a, [bc]                                    ; $7852: $0a
    ld b, $00                                     ; $7853: $06 $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    rst $38                                       ; $7857: $ff
    ld a, a                                       ; $7858: $7f
    dec [hl]                                      ; $7859: $35
    ld bc, $2000                                  ; $785a: $01 $00 $20
    nop                                           ; $785d: $00
    nop                                           ; $785e: $00

jr_0af_785f:
    rst $38                                       ; $785f: $ff
    ld a, a                                       ; $7860: $7f
    dec [hl]                                      ; $7861: $35
    ld bc, $2000                                  ; $7862: $01 $00 $20
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    rst $38                                       ; $7867: $ff
    ld a, a                                       ; $7868: $7f
    nop                                           ; $7869: $00
    jr nz, jr_0af_786c                            ; $786a: $20 $00

jr_0af_786c:
    jr nz, jr_0af_786e                            ; $786c: $20 $00

jr_0af_786e:
    jr nz, @+$01                                  ; $786e: $20 $ff

    ld a, a                                       ; $7870: $7f
    nop                                           ; $7871: $00
    jr nz, jr_0af_7874                            ; $7872: $20 $00

jr_0af_7874:
    jr nz, jr_0af_7876                            ; $7874: $20 $00

jr_0af_7876:
    jr nz, jr_0af_7898                            ; $7876: $20 $20

    nop                                           ; $7878: $00
    cpl                                           ; $7879: $2f

jr_0af_787a:
    ld a, [bc]                                    ; $787a: $0a
    ld b, $00                                     ; $787b: $06 $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    rst $38                                       ; $787f: $ff
    ld a, a                                       ; $7880: $7f
    ld l, h                                       ; $7881: $6c

jr_0af_7882:
    ld bc, $2000                                  ; $7882: $01 $00 $20
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    rst $38                                       ; $7887: $ff
    ld a, a                                       ; $7888: $7f
    ld l, h                                       ; $7889: $6c
    ld bc, $2000                                  ; $788a: $01 $00 $20
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    jr nz, jr_0af_7892                            ; $7890: $20 $00

jr_0af_7892:
    jr nz, jr_0af_7894                            ; $7892: $20 $00

jr_0af_7894:
    jr nz, jr_0af_7896                            ; $7894: $20 $00

jr_0af_7896:
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00

jr_0af_7898:
    jr nz, jr_0af_789a                            ; $7898: $20 $00

jr_0af_789a:
    jr nz, jr_0af_789c                            ; $789a: $20 $00

jr_0af_789c:
    jr nz, jr_0af_789e                            ; $789c: $20 $00

jr_0af_789e:
    nop                                           ; $789e: $00
    nop                                           ; $789f: $00
    jr nz, jr_0af_78a2                            ; $78a0: $20 $00

jr_0af_78a2:
    jr nz, jr_0af_78a4                            ; $78a2: $20 $00

jr_0af_78a4:
    jr nz, jr_0af_78a6                            ; $78a4: $20 $00

jr_0af_78a6:
    jr nz, jr_0af_78a8                            ; $78a6: $20 $00

jr_0af_78a8:
    jr nz, jr_0af_78aa                            ; $78a8: $20 $00

jr_0af_78aa:
    jr nz, jr_0af_78ac                            ; $78aa: $20 $00

jr_0af_78ac:
    jr nz, jr_0af_78ae                            ; $78ac: $20 $00

jr_0af_78ae:
    jr nz, jr_0af_78b0                            ; $78ae: $20 $00

jr_0af_78b0:
    jr nz, jr_0af_78ca                            ; $78b0: $20 $18

jr_0af_78b2:
    ld [hl], a                                    ; $78b2: $77
    ld c, b                                       ; $78b3: $48
    ld b, l                                       ; $78b4: $45

jr_0af_78b5:
    nop                                           ; $78b5: $00
    jr nz, jr_0af_78b8                            ; $78b6: $20 $00

jr_0af_78b8:
    jr nz, jr_0af_78d2                            ; $78b8: $20 $18

    ld [hl], a                                    ; $78ba: $77
    ld c, b                                       ; $78bb: $48
    ld b, l                                       ; $78bc: $45
    nop                                           ; $78bd: $00
    jr nz, jr_0af_7929                            ; $78be: $20 $69

    inc c                                         ; $78c0: $0c
    jr jr_0af_793a                                ; $78c1: $18 $77

    ld c, b                                       ; $78c3: $48
    ld b, l                                       ; $78c4: $45
    ld bc, $1d14                                  ; $78c5: $01 $14 $1d
    ld b, e                                       ; $78c8: $43
    adc a                                         ; $78c9: $8f

jr_0af_78ca:
    dec e                                         ; $78ca: $1d
    cp l                                          ; $78cb: $bd
    ld a, e                                       ; $78cc: $7b
    nop                                           ; $78cd: $00
    jr nz, jr_0af_785f                            ; $78ce: $20 $8f

    dec e                                         ; $78d0: $1d
    dec e                                         ; $78d1: $1d

jr_0af_78d2:
    ld b, e                                       ; $78d2: $43
    ld b, e                                       ; $78d3: $43
    inc b                                         ; $78d4: $04
    nop                                           ; $78d5: $00
    jr nz, jr_0af_791b                            ; $78d6: $20 $43

    inc b                                         ; $78d8: $04
    dec e                                         ; $78d9: $1d
    ld b, e                                       ; $78da: $43
    ld b, e                                       ; $78db: $43
    inc b                                         ; $78dc: $04

jr_0af_78dd:
    nop                                           ; $78dd: $00
    jr nz, @+$45                                  ; $78de: $20 $43

    inc b                                         ; $78e0: $04
    dec e                                         ; $78e1: $1d
    ld b, e                                       ; $78e2: $43
    ld b, e                                       ; $78e3: $43
    inc b                                         ; $78e4: $04
    nop                                           ; $78e5: $00
    jr nz, jr_0af_7951                            ; $78e6: $20 $69

    inc c                                         ; $78e8: $0c
    jr jr_0af_7962                                ; $78e9: $18 $77

    ld c, b                                       ; $78eb: $48
    ld b, l                                       ; $78ec: $45
    nop                                           ; $78ed: $00
    jr nz, jr_0af_790f                            ; $78ee: $20 $1f

    nop                                           ; $78f0: $00
    ld l, c                                       ; $78f1: $69
    inc c                                         ; $78f2: $0c
    ld c, b                                       ; $78f3: $48
    ld b, l                                       ; $78f4: $45
    nop                                           ; $78f5: $00
    jr nz, jr_0af_78b5                            ; $78f6: $20 $bd

    dec [hl]                                      ; $78f8: $35
    ld c, b                                       ; $78f9: $48
    ld [$0015], sp                                ; $78fa: $08 $15 $00
    ld b, a                                       ; $78fd: $47
    ld [$72b5], sp                                ; $78fe: $08 $b5 $72
    rst $18                                       ; $7901: $df
    jr nz, @-$6f                                  ; $7902: $20 $8f

    dec e                                         ; $7904: $1d
    ld b, l                                       ; $7905: $45
    ld [$431d], sp                                ; $7906: $08 $1d $43
    ld e, a                                       ; $7909: $5f
    inc c                                         ; $790a: $0c
    adc a                                         ; $790b: $8f
    dec e                                         ; $790c: $1d
    ld b, e                                       ; $790d: $43
    inc b                                         ; $790e: $04

jr_0af_790f:
    dec e                                         ; $790f: $1d
    ld b, e                                       ; $7910: $43
    dec hl                                        ; $7911: $2b
    dec d                                         ; $7912: $15
    ld e, a                                       ; $7913: $5f
    dec sp                                        ; $7914: $3b
    nop                                           ; $7915: $00

jr_0af_7916:
    jr nz, jr_0af_7935                            ; $7916: $20 $1d

    ld b, e                                       ; $7918: $43
    dec hl                                        ; $7919: $2b
    dec d                                         ; $791a: $15

jr_0af_791b:
    ld e, a                                       ; $791b: $5f
    dec sp                                        ; $791c: $3b
    nop                                           ; $791d: $00
    jr nz, jr_0af_78dd                            ; $791e: $20 $bd

    dec [hl]                                      ; $7920: $35
    ld c, b                                       ; $7921: $48
    ld [$0015], sp                                ; $7922: $08 $15 $00
    nop                                           ; $7925: $00
    inc e                                         ; $7926: $1c
    dec d                                         ; $7927: $15
    nop                                           ; $7928: $00

jr_0af_7929:
    ld l, c                                       ; $7929: $69
    inc c                                         ; $792a: $0c
    rra                                           ; $792b: $1f
    nop                                           ; $792c: $00
    add hl, hl                                    ; $792d: $29
    inc b                                         ; $792e: $04
    cp [hl]                                       ; $792f: $be
    dec [hl]                                      ; $7930: $35
    ld d, h                                       ; $7931: $54
    ld [$001c], sp                                ; $7932: $08 $1c $00

jr_0af_7935:
    inc bc                                        ; $7935: $03
    nop                                           ; $7936: $00
    inc e                                         ; $7937: $1c
    inc b                                         ; $7938: $04
    dec e                                         ; $7939: $1d

jr_0af_793a:
    ld b, e                                       ; $793a: $43
    ld l, $04                                     ; $793b: $2e $04
    ld h, h                                       ; $793d: $64
    nop                                           ; $793e: $00
    ld [de], a                                    ; $793f: $12
    ld a, [hl+]                                   ; $7940: $2a
    or h                                          ; $7941: $b4
    db $10                                        ; $7942: $10
    dec e                                         ; $7943: $1d
    ccf                                           ; $7944: $3f
    nop                                           ; $7945: $00
    jr nz, @-$6f                                  ; $7946: $20 $8f

    dec e                                         ; $7948: $1d
    ld b, d                                       ; $7949: $42
    inc b                                         ; $794a: $04
    ld b, e                                       ; $794b: $43
    inc b                                         ; $794c: $04
    nop                                           ; $794d: $00
    jr nz, @-$6f                                  ; $794e: $20 $8f

    dec e                                         ; $7950: $1d

jr_0af_7951:
    ld b, d                                       ; $7951: $42
    inc b                                         ; $7952: $04
    ld b, e                                       ; $7953: $43
    inc b                                         ; $7954: $04
    nop                                           ; $7955: $00
    jr nz, jr_0af_7916                            ; $7956: $20 $be

    dec [hl]                                      ; $7958: $35
    ld d, h                                       ; $7959: $54
    ld [$001c], sp                                ; $795a: $08 $1c $00
    nop                                           ; $795d: $00
    jr nz, @+$3a                                  ; $795e: $20 $38

    ld b, [hl]                                    ; $7960: $46
    ld e, a                                       ; $7961: $5f

jr_0af_7962:
    ld [$0c69], sp                                ; $7962: $08 $69 $0c
    dec h                                         ; $7965: $25
    inc b                                         ; $7966: $04
    ld [hl], d                                    ; $7967: $72
    inc c                                         ; $7968: $0c
    jr jr_0af_79ad                                ; $7969: $18 $42

    dec e                                         ; $796b: $1d
    nop                                           ; $796c: $00
    ld [hl+], a                                   ; $796d: $22
    nop                                           ; $796e: $00
    inc e                                         ; $796f: $1c
    ld [hl-], a                                   ; $7970: $32
    ld c, h                                       ; $7971: $4c
    add hl, de                                    ; $7972: $19
    dec e                                         ; $7973: $1d
    ld b, e                                       ; $7974: $43
    ld b, d                                       ; $7975: $42
    inc b                                         ; $7976: $04
    cp h                                          ; $7977: $bc
    rra                                           ; $7978: $1f
    add hl, bc                                    ; $7979: $09
    ld de, $158e                                  ; $797a: $11 $8e $15
    nop                                           ; $797d: $00
    jr nz, jr_0af_790f                            ; $797e: $20 $8f

    dec e                                         ; $7980: $1d
    ld b, e                                       ; $7981: $43
    inc b                                         ; $7982: $04
    adc [hl]                                      ; $7983: $8e
    dec d                                         ; $7984: $15
    nop                                           ; $7985: $00
    jr nz, @-$6f                                  ; $7986: $20 $8f

    dec e                                         ; $7988: $1d
    ld b, e                                       ; $7989: $43
    inc b                                         ; $798a: $04
    adc [hl]                                      ; $798b: $8e
    dec d                                         ; $798c: $15
    nop                                           ; $798d: $00
    jr nz, jr_0af_7a02                            ; $798e: $20 $72

    inc c                                         ; $7990: $0c
    jr jr_0af_79d5                                ; $7991: $18 $42

    dec e                                         ; $7993: $1d
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    inc e                                         ; $7996: $1c
    jr jr_0af_7999                                ; $7997: $18 $00

jr_0af_7999:
    ld c, b                                       ; $7999: $48
    ld [$001f], sp                                ; $799a: $08 $1f $00
    ld l, c                                       ; $799d: $69
    inc c                                         ; $799e: $0c
    db $fc                                        ; $799f: $fc
    ld a, [hl-]                                   ; $79a0: $3a
    dec d                                         ; $79a1: $15
    nop                                           ; $79a2: $00
    ld e, $00                                     ; $79a3: $1e $00
    add e                                         ; $79a5: $83
    ld [hl], l                                    ; $79a6: $75
    inc e                                         ; $79a7: $1c
    ld [hl-], a                                   ; $79a8: $32
    db $eb                                        ; $79a9: $eb
    inc c                                         ; $79aa: $0c
    sbc l                                         ; $79ab: $9d
    ld l, e                                       ; $79ac: $6b

jr_0af_79ad:
    ret z                                         ; $79ad: $c8

    ld [$1eb9], sp                                ; $79ae: $08 $b9 $1e
    sbc e                                         ; $79b1: $9b
    ld l, e                                       ; $79b2: $6b
    add e                                         ; $79b3: $83
    ld [hl], l                                    ; $79b4: $75
    nop                                           ; $79b5: $00
    jr nz, @-$07                                  ; $79b6: $20 $f7

    ld l, d                                       ; $79b8: $6a
    sbc $7f                                       ; $79b9: $de $7f
    add e                                         ; $79bb: $83
    ld [hl], l                                    ; $79bc: $75
    nop                                           ; $79bd: $00
    jr nz, @-$07                                  ; $79be: $20 $f7

    ld l, d                                       ; $79c0: $6a
    sbc $7f                                       ; $79c1: $de $7f
    add e                                         ; $79c3: $83

jr_0af_79c4:
    ld [hl], l                                    ; $79c4: $75
    nop                                           ; $79c5: $00

jr_0af_79c6:
    jr nz, jr_0af_79c4                            ; $79c6: $20 $fc

    ld a, [hl-]                                   ; $79c8: $3a
    dec d                                         ; $79c9: $15
    nop                                           ; $79ca: $00
    ld e, $00                                     ; $79cb: $1e $00
    nop                                           ; $79cd: $00

jr_0af_79ce:
    jr nz, @+$1f                                  ; $79ce: $20 $1d

    ld b, e                                       ; $79d0: $43
    ld b, e                                       ; $79d1: $43
    inc b                                         ; $79d2: $04
    ld l, c                                       ; $79d3: $69
    inc c                                         ; $79d4: $0c

jr_0af_79d5:
    add h                                         ; $79d5: $84
    inc b                                         ; $79d6: $04
    ld a, c                                       ; $79d7: $79
    rlca                                          ; $79d8: $07
    dec de                                        ; $79d9: $1b
    dec sp                                        ; $79da: $3b
    rst $38                                       ; $79db: $ff
    ld h, e                                       ; $79dc: $63
    ld c, d                                       ; $79dd: $4a
    inc b                                         ; $79de: $04
    rst $30                                       ; $79df: $f7
    ld b, l                                       ; $79e0: $45
    ld a, $57                                     ; $79e1: $3e $57
    jr nc, jr_0af_7a02                            ; $79e3: $30 $1d

    push bc                                       ; $79e5: $c5
    nop                                           ; $79e6: $00
    rst $38                                       ; $79e7: $ff
    inc bc                                        ; $79e8: $03
    ld a, h                                       ; $79e9: $7c
    ld e, e                                       ; $79ea: $5b
    sub b                                         ; $79eb: $90
    stop                                          ; $79ec: $10 $00
    jr nz, jr_0af_79c6                            ; $79ee: $20 $d6

    ld h, [hl]                                    ; $79f0: $66
    sbc $7b                                       ; $79f1: $de $7b
    ld e, d                                       ; $79f3: $5a
    ld [hl], e                                    ; $79f4: $73
    nop                                           ; $79f5: $00
    jr nz, jr_0af_79ce                            ; $79f6: $20 $d6

    ld h, [hl]                                    ; $79f8: $66
    sbc $7b                                       ; $79f9: $de $7b
    ld e, d                                       ; $79fb: $5a
    ld [hl], e                                    ; $79fc: $73
    nop                                           ; $79fd: $00
    jr nz, jr_0af_7a79                            ; $79fe: $20 $79

    rlca                                          ; $7a00: $07
    dec de                                        ; $7a01: $1b

jr_0af_7a02:
    dec sp                                        ; $7a02: $3b
    rst $38                                       ; $7a03: $ff
    ld h, e                                       ; $7a04: $63
    nop                                           ; $7a05: $00
    jr nz, @+$70                                  ; $7a06: $20 $6e

    add hl, de                                    ; $7a08: $19
    dec e                                         ; $7a09: $1d
    ld b, e                                       ; $7a0a: $43
    ld b, e                                       ; $7a0b: $43
    inc b                                         ; $7a0c: $04
    ld hl, $bc04                                  ; $7a0d: $21 $04 $bc
    inc de                                        ; $7a10: $13
    xor [hl]                                      ; $7a11: $ae
    dec d                                         ; $7a12: $15
    sbc $3f                                       ; $7a13: $de $3f
    dec b                                         ; $7a15: $05
    nop                                           ; $7a16: $00
    rst $38                                       ; $7a17: $ff
    ld d, d                                       ; $7a18: $52
    ld sp, $9a11                                  ; $7a19: $31 $11 $9a
    inc e                                         ; $7a1c: $1c
    ret                                           ; $7a1d: $c9


    inc b                                         ; $7a1e: $04
    ld [hl], l                                    ; $7a1f: $75
    dec [hl]                                      ; $7a20: $35
    sub [hl]                                      ; $7a21: $96
    daa                                           ; $7a22: $27
    sbc a                                         ; $7a23: $9f
    ld e, a                                       ; $7a24: $5f
    nop                                           ; $7a25: $00
    db $10                                        ; $7a26: $10
    ld [hl], c                                    ; $7a27: $71
    ccf                                           ; $7a28: $3f
    sbc $7b                                       ; $7a29: $de $7b
    sub $66                                       ; $7a2b: $d6 $66
    nop                                           ; $7a2d: $00
    jr nz, jr_0af_7aa1                            ; $7a2e: $20 $71

    ccf                                           ; $7a30: $3f
    sbc $7b                                       ; $7a31: $de $7b
    sub $66                                       ; $7a33: $d6 $66
    nop                                           ; $7a35: $00
    jr nz, jr_0af_7a80                            ; $7a36: $20 $48

    ld b, l                                       ; $7a38: $45
    xor [hl]                                      ; $7a39: $ae
    dec d                                         ; $7a3a: $15
    sbc $3f                                       ; $7a3b: $de $3f
    inc h                                         ; $7a3d: $24
    ld [$4548], sp                                ; $7a3e: $08 $48 $45
    rst $18                                       ; $7a41: $df
    add hl, sp                                    ; $7a42: $39
    ld d, c                                       ; $7a43: $51
    ld e, d                                       ; $7a44: $5a
    add h                                         ; $7a45: $84
    nop                                           ; $7a46: $00
    ld [hl], c                                    ; $7a47: $71
    dec sp                                        ; $7a48: $3b
    rst $38                                       ; $7a49: $ff
    inc hl                                        ; $7a4a: $23
    sbc $63                                       ; $7a4b: $de $63
    ld b, h                                       ; $7a4d: $44
    inc b                                         ; $7a4e: $04
    ld d, $03                                     ; $7a4f: $16 $03
    or [hl]                                       ; $7a51: $b6
    db $10                                        ; $7a52: $10
    sbc $4a                                       ; $7a53: $de $4a

jr_0af_7a55:
    rla                                           ; $7a55: $17
    inc d                                         ; $7a56: $14
    cp h                                          ; $7a57: $bc
    rlca                                          ; $7a58: $07
    adc h                                         ; $7a59: $8c
    dec b                                         ; $7a5a: $05
    cp c                                          ; $7a5b: $b9
    scf                                           ; $7a5c: $37
    ld h, e                                       ; $7a5d: $63
    nop                                           ; $7a5e: $00
    ld [hl], e                                    ; $7a5f: $73
    ld e, [hl]                                    ; $7a60: $5e
    sbc $7b                                       ; $7a61: $de $7b
    ld [hl], c                                    ; $7a63: $71
    dec sp                                        ; $7a64: $3b
    nop                                           ; $7a65: $00
    jr nz, jr_0af_7a55                            ; $7a66: $20 $ed

    ld d, c                                       ; $7a68: $51
    or h                                          ; $7a69: $b4
    ld h, d                                       ; $7a6a: $62
    rst $30                                       ; $7a6b: $f7
    ld l, d                                       ; $7a6c: $6a
    nop                                           ; $7a6d: $00
    jr nz, jr_0af_7a55                            ; $7a6e: $20 $e5

    inc a                                         ; $7a70: $3c
    adc e                                         ; $7a71: $8b
    ld c, c                                       ; $7a72: $49
    daa                                           ; $7a73: $27
    ld b, c                                       ; $7a74: $41
    ld [$5100], sp                                ; $7a75: $08 $00 $51
    ld e, d                                       ; $7a78: $5a

jr_0af_7a79:
    dec e                                         ; $7a79: $1d
    nop                                           ; $7a7a: $00
    ccf                                           ; $7a7b: $3f
    dec h                                         ; $7a7c: $25
    ld h, e                                       ; $7a7d: $63
    nop                                           ; $7a7e: $00
    ret c                                         ; $7a7f: $d8

jr_0af_7a80:
    db $10                                        ; $7a80: $10
    inc de                                        ; $7a81: $13
    daa                                           ; $7a82: $27
    ccf                                           ; $7a83: $3f
    ld e, e                                       ; $7a84: $5b
    adc b                                         ; $7a85: $88
    inc b                                         ; $7a86: $04
    ld d, a                                       ; $7a87: $57
    inc bc                                        ; $7a88: $03
    cp $52                                        ; $7a89: $fe $52
    ld d, e                                       ; $7a8b: $53
    add hl, de                                    ; $7a8c: $19
    nop                                           ; $7a8d: $00
    inc b                                         ; $7a8e: $04
    sbc $4e                                       ; $7a8f: $de $4e
    rst $00                                       ; $7a91: $c7
    nop                                           ; $7a92: $00
    adc a                                         ; $7a93: $8f
    add hl, bc                                    ; $7a94: $09
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    ld d, b                                       ; $7a97: $50
    scf                                           ; $7a98: $37
    ld e, d                                       ; $7a99: $5a
    ld [hl], e                                    ; $7a9a: $73
    ld [hl], b                                    ; $7a9b: $70
    scf                                           ; $7a9c: $37
    nop                                           ; $7a9d: $00
    jr nz, jr_0af_7ae9                            ; $7a9e: $20 $49

    ld c, c                                       ; $7aa0: $49

jr_0af_7aa1:
    ld [hl], d                                    ; $7aa1: $72
    ld e, [hl]                                    ; $7aa2: $5e
    dec b                                         ; $7aa3: $05
    dec a                                         ; $7aa4: $3d
    nop                                           ; $7aa5: $00
    inc d                                         ; $7aa6: $14
    ld c, $5a                                     ; $7aa7: $0e $5a
    daa                                           ; $7aa9: $27
    ld b, c                                       ; $7aaa: $41
    sub h                                         ; $7aab: $94
    ld l, [hl]                                    ; $7aac: $6e
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    stop                                          ; $7aaf: $10 $00
    ld e, $00                                     ; $7ab1: $1e $00
    rlca                                          ; $7ab3: $07
    nop                                           ; $7ab4: $00
    jr nz, jr_0af_7abb                            ; $7ab5: $20 $04

    ccf                                           ; $7ab7: $3f
    ld e, e                                       ; $7ab8: $5b
    ld [hl-], a                                   ; $7ab9: $32
    dec d                                         ; $7aba: $15

jr_0af_7abb:
    dec a                                         ; $7abb: $3d
    inc b                                         ; $7abc: $04
    ld h, $04                                     ; $7abd: $26 $04
    cp l                                          ; $7abf: $bd
    ld c, d                                       ; $7ac0: $4a
    rra                                           ; $7ac1: $1f
    nop                                           ; $7ac2: $00
    xor [hl]                                      ; $7ac3: $ae
    ld b, b                                       ; $7ac4: $40
    ld b, c                                       ; $7ac5: $41
    inc c                                         ; $7ac6: $0c
    ld [hl], $6d                                  ; $7ac7: $36 $6d
    db $dd                                        ; $7ac9: $dd
    ld c, d                                       ; $7aca: $4a
    sub d                                         ; $7acb: $92
    inc c                                         ; $7acc: $0c
    nop                                           ; $7acd: $00
    nop                                           ; $7ace: $00
    ld c, a                                       ; $7acf: $4f
    inc sp                                        ; $7ad0: $33
    ld l, c                                       ; $7ad1: $69
    inc c                                         ; $7ad2: $0c
    ld d, b                                       ; $7ad3: $50
    scf                                           ; $7ad4: $37
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    ld c, b                                       ; $7ad7: $48
    ld b, l                                       ; $7ad8: $45
    ld sp, $0062                                  ; $7ad9: $31 $62 $00
    jr nz, jr_0af_7ade                            ; $7adc: $20 $00

jr_0af_7ade:
    ld [$7318], sp                                ; $7ade: $08 $18 $73
    rst $18                                       ; $7ae1: $df
    jr @+$4b                                      ; $7ae2: $18 $49

    ld c, l                                       ; $7ae4: $4d
    nop                                           ; $7ae5: $00
    nop                                           ; $7ae6: $00
    rst $10                                       ; $7ae7: $d7
    db $10                                        ; $7ae8: $10

jr_0af_7ae9:
    sbc h                                         ; $7ae9: $9c
    dec l                                         ; $7aea: $2d
    sbc $4e                                       ; $7aeb: $de $4e
    inc b                                         ; $7aed: $04
    inc b                                         ; $7aee: $04
    ld d, e                                       ; $7aef: $53
    dec d                                         ; $7af0: $15
    cp l                                          ; $7af1: $bd
    ld c, d                                       ; $7af2: $4a
    rra                                           ; $7af3: $1f
    nop                                           ; $7af4: $00
    dec b                                         ; $7af5: $05
    inc b                                         ; $7af6: $04
    ld [hl], $21                                  ; $7af7: $36 $21
    ld a, [hl-]                                   ; $7af9: $3a
    ld l, c                                       ; $7afa: $69
    rra                                           ; $7afb: $1f
    nop                                           ; $7afc: $00
    ld b, d                                       ; $7afd: $42
    ld [$193a], sp                                ; $7afe: $08 $3a $19
    ei                                            ; $7b01: $fb
    ld e, c                                       ; $7b02: $59
    rst $08                                       ; $7b03: $cf
    inc d                                         ; $7b04: $14
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    ld c, a                                       ; $7b07: $4f
    inc sp                                        ; $7b08: $33
    ei                                            ; $7b09: $fb
    dec a                                         ; $7b0a: $3d
    ld l, c                                       ; $7b0b: $69
    inc c                                         ; $7b0c: $0c
    nop                                           ; $7b0d: $00
    inc e                                         ; $7b0e: $1c
    rst $08                                       ; $7b0f: $cf
    ld b, d                                       ; $7b10: $42
    adc h                                         ; $7b11: $8c
    db $10                                        ; $7b12: $10
    ld e, d                                       ; $7b13: $5a
    ld a, e                                       ; $7b14: $7b
    ld bc, $9400                                  ; $7b15: $01 $00 $94
    ld l, [hl]                                    ; $7b18: $6e
    ld e, l                                       ; $7b19: $5d
    ld [$7bbd], sp                                ; $7b1a: $08 $bd $7b
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    sbc d                                         ; $7b1f: $9a
    dec h                                         ; $7b20: $25
    sub d                                         ; $7b21: $92
    inc c                                         ; $7b22: $0c
    ccf                                           ; $7b23: $3f
    ld e, e                                       ; $7b24: $5b
    nop                                           ; $7b25: $00
    inc b                                         ; $7b26: $04
    sub d                                         ; $7b27: $92
    ld [$68da], sp                                ; $7b28: $08 $da $68
    rlca                                          ; $7b2b: $07
    ld [$0821], sp                                ; $7b2c: $08 $21 $08
    ld a, l                                       ; $7b2f: $7d
    ld [hl], c                                    ; $7b30: $71
    inc c                                         ; $7b31: $0c
    nop                                           ; $7b32: $00
    ld e, a                                       ; $7b33: $5f
    ld a, [hl]                                    ; $7b34: $7e
    add d                                         ; $7b35: $82
    inc c                                         ; $7b36: $0c
    sbc d                                         ; $7b37: $9a
    ld b, l                                       ; $7b38: $45
    dec a                                         ; $7b39: $3d
    ld a, d                                       ; $7b3a: $7a
    ld de, $0100                                  ; $7b3b: $11 $00 $01
    nop                                           ; $7b3e: $00
    ld l, $2f                                     ; $7b3f: $2e $2f
    dec hl                                        ; $7b41: $2b
    inc b                                         ; $7b42: $04
    ld e, h                                       ; $7b43: $5c
    add hl, hl                                    ; $7b44: $29
    dec h                                         ; $7b45: $25
    inc b                                         ; $7b46: $04
    db $d3                                        ; $7b47: $d3
    ld e, [hl]                                    ; $7b48: $5e
    rra                                           ; $7b49: $1f
    ld b, d                                       ; $7b4a: $42
    nop                                           ; $7b4b: $00
    jr nz, jr_0af_7b4e                            ; $7b4c: $20 $00

jr_0af_7b4e:
    inc b                                         ; $7b4e: $04
    db $10                                        ; $7b4f: $10
    ld h, [hl]                                    ; $7b50: $66
    scf                                           ; $7b51: $37
    inc b                                         ; $7b52: $04
    add hl, de                                    ; $7b53: $19
    ld l, a                                       ; $7b54: $6f
    ld [bc], a                                    ; $7b55: $02
    nop                                           ; $7b56: $00
    ret c                                         ; $7b57: $d8

    dec h                                         ; $7b58: $25
    ld a, c                                       ; $7b59: $79
    ld [$5b3f], sp                                ; $7b5a: $08 $3f $5b
    ld [bc], a                                    ; $7b5d: $02
    inc b                                         ; $7b5e: $04
    ld [hl], e                                    ; $7b5f: $73
    ld c, h                                       ; $7b60: $4c
    ld a, [bc]                                    ; $7b61: $0a
    inc e                                         ; $7b62: $1c
    ld a, [hl]                                    ; $7b63: $7e
    ld [hl], l                                    ; $7b64: $75
    ld bc, $dd01                                  ; $7b65: $01 $01 $dd
    ld [hl], l                                    ; $7b68: $75
    dec bc                                        ; $7b69: $0b
    inc l                                         ; $7b6a: $2c
    xor a                                         ; $7b6b: $af
    inc a                                         ; $7b6c: $3c
    ld [bc], a                                    ; $7b6d: $02
    add hl, bc                                    ; $7b6e: $09
    db $fd                                        ; $7b6f: $fd
    ld [hl], l                                    ; $7b70: $75
    ld c, $00                                     ; $7b71: $0e $00
    rra                                           ; $7b73: $1f
    nop                                           ; $7b74: $00
    nop                                           ; $7b75: $00
    nop                                           ; $7b76: $00
    dec a                                         ; $7b77: $3d
    inc b                                         ; $7b78: $04
    ld c, b                                       ; $7b79: $48
    ld [$18dd], sp                                ; $7b7a: $08 $dd $18
    dec h                                         ; $7b7d: $25
    inc b                                         ; $7b7e: $04
    cp [hl]                                       ; $7b7f: $be
    inc d                                         ; $7b80: $14
    nop                                           ; $7b81: $00
    jr nz, @+$41                                  ; $7b82: $20 $3f

    ld b, [hl]                                    ; $7b84: $46
    nop                                           ; $7b85: $00
    ld [$4d8a], sp                                ; $7b86: $08 $8a $4d
    ld d, [hl]                                    ; $7b89: $56
    inc b                                         ; $7b8a: $04
    rst $30                                       ; $7b8b: $f7
    ld [hl], d                                    ; $7b8c: $72
    ld b, d                                       ; $7b8d: $42
    inc c                                         ; $7b8e: $0c
    ld a, a                                       ; $7b8f: $7f
    dec l                                         ; $7b90: $2d
    cp $52                                        ; $7b91: $fe $52
    ld l, c                                       ; $7b93: $69
    inc c                                         ; $7b94: $0c
    ld [bc], a                                    ; $7b95: $02
    inc b                                         ; $7b96: $04
    rla                                           ; $7b97: $17
    nop                                           ; $7b98: $00
    dec bc                                        ; $7b99: $0b
    inc l                                         ; $7b9a: $2c
    or h                                          ; $7b9b: $b4
    ld d, b                                       ; $7b9c: $50
    inc hl                                        ; $7b9d: $23
    inc c                                         ; $7b9e: $0c
    ld d, d                                       ; $7b9f: $52
    ld b, h                                       ; $7ba0: $44
    db $fc                                        ; $7ba1: $fc
    ld l, h                                       ; $7ba2: $6c
    add h                                         ; $7ba3: $84
    dec c                                         ; $7ba4: $0d
    and d                                         ; $7ba5: $a2
    inc b                                         ; $7ba6: $04
    ld a, b                                       ; $7ba7: $78
    ld e, h                                       ; $7ba8: $5c
    inc l                                         ; $7ba9: $2c
    inc h                                         ; $7baa: $24
    sbc l                                         ; $7bab: $9d
    ld b, d                                       ; $7bac: $42
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    dec [hl]                                      ; $7baf: $35
    inc b                                         ; $7bb0: $04
    ld a, [hl]                                    ; $7bb1: $7e
    inc c                                         ; $7bb2: $0c
    ld a, [hl+]                                   ; $7bb3: $2a
    inc b                                         ; $7bb4: $04
    nop                                           ; $7bb5: $00
    nop                                           ; $7bb6: $00
    ld c, d                                       ; $7bb7: $4a
    ld [$1df6], sp                                ; $7bb8: $08 $f6 $1d
    nop                                           ; $7bbb: $00
    jr nz, jr_0af_7be0                            ; $7bbc: $20 $22

    inc b                                         ; $7bbe: $04
    ld c, b                                       ; $7bbf: $48
    ld b, l                                       ; $7bc0: $45
    nop                                           ; $7bc1: $00
    jr nz, jr_0af_7c15                            ; $7bc2: $20 $51

    ld e, d                                       ; $7bc4: $5a
    nop                                           ; $7bc5: $00
    nop                                           ; $7bc6: $00
    dec de                                        ; $7bc7: $1b
    inc b                                         ; $7bc8: $04
    dec [hl]                                      ; $7bc9: $35
    dec e                                         ; $7bca: $1d
    ld l, c                                       ; $7bcb: $69
    inc c                                         ; $7bcc: $0c
    nop                                           ; $7bcd: $00
    nop                                           ; $7bce: $00
    cp h                                          ; $7bcf: $bc
    inc d                                         ; $7bd0: $14
    rlca                                          ; $7bd1: $07
    inc e                                         ; $7bd2: $1c
    ld l, d                                       ; $7bd3: $6a
    inc c                                         ; $7bd4: $0c
    nop                                           ; $7bd5: $00
    nop                                           ; $7bd6: $00
    ld a, [bc]                                    ; $7bd7: $0a
    jr z, @-$7c                                   ; $7bd8: $28 $82

    dec b                                         ; $7bda: $05
    inc b                                         ; $7bdb: $04
    db $10                                        ; $7bdc: $10
    ld b, d                                       ; $7bdd: $42
    inc c                                         ; $7bde: $0c
    inc l                                         ; $7bdf: $2c

jr_0af_7be0:
    inc hl                                        ; $7be0: $23
    ld l, l                                       ; $7be1: $6d
    dec d                                         ; $7be2: $15
    ccf                                           ; $7be3: $3f
    ld e, e                                       ; $7be4: $5b
    ld bc, $9d00                                  ; $7be5: $01 $00 $9d
    ld b, d                                       ; $7be8: $42
    ld de, $6700                                  ; $7be9: $11 $00 $67
    nop                                           ; $7bec: $00
    ld hl, $0c00                                  ; $7bed: $21 $00 $0c
    ld b, [hl]                                    ; $7bf0: $46
    ld e, d                                       ; $7bf1: $5a
    ld [hl], e                                    ; $7bf2: $73
    nop                                           ; $7bf3: $00
    jr nz, jr_0af_7bf8                            ; $7bf4: $20 $02

    db $10                                        ; $7bf6: $10

jr_0af_7bf7:
    ld d, c                                       ; $7bf7: $51

jr_0af_7bf8:
    ld e, d                                       ; $7bf8: $5a
    ld c, b                                       ; $7bf9: $48
    ld b, l                                       ; $7bfa: $45
    cp a                                          ; $7bfb: $bf

jr_0af_7bfc:
    inc d                                         ; $7bfc: $14
    ld b, h                                       ; $7bfd: $44
    inc c                                         ; $7bfe: $0c
    dec sp                                        ; $7bff: $3b
    add hl, de                                    ; $7c00: $19
    cp $52                                        ; $7c01: $fe $52
    ld [de], a                                    ; $7c03: $12
    nop                                           ; $7c04: $00
    inc h                                         ; $7c05: $24
    ld [$230c], sp                                ; $7c06: $08 $0c $23
    ld l, $28                                     ; $7c09: $2e $28
    cp a                                          ; $7c0b: $bf
    ld sp, $1903                                  ; $7c0c: $31 $03 $19
    ld [hl], e                                    ; $7c0f: $73
    ld c, h                                       ; $7c10: $4c
    dec e                                         ; $7c11: $1d
    ld [hl], l                                    ; $7c12: $75
    cp b                                          ; $7c13: $b8
    ld h, b                                       ; $7c14: $60

jr_0af_7c15:
    ld b, h                                       ; $7c15: $44
    nop                                           ; $7c16: $00
    ccf                                           ; $7c17: $3f
    ld e, e                                       ; $7c18: $5b
    adc h                                         ; $7c19: $8c
    dec c                                         ; $7c1a: $0d
    ld h, d                                       ; $7c1b: $62
    jr z, jr_0af_7c62                             ; $7c1c: $28 $44

    nop                                           ; $7c1e: $00
    ld a, [hl-]                                   ; $7c1f: $3a
    dec bc                                        ; $7c20: $0b
    ld a, [hl]                                    ; $7c21: $7e
    ld c, e                                       ; $7c22: $4b
    rst $28                                       ; $7c23: $ef
    add hl, bc                                    ; $7c24: $09
    nop                                           ; $7c25: $00
    jr nz, jr_0af_7bf7                            ; $7c26: $20 $cf

    dec c                                         ; $7c28: $0d
    and l                                         ; $7c29: $a5
    nop                                           ; $7c2a: $00
    ld a, [hl-]                                   ; $7c2b: $3a
    dec bc                                        ; $7c2c: $0b
    nop                                           ; $7c2d: $00
    jr jr_0af_7c4b                                ; $7c2e: $18 $1b

    nop                                           ; $7c30: $00
    daa                                           ; $7c31: $27
    ld b, c                                       ; $7c32: $41
    add hl, hl                                    ; $7c33: $29
    inc b                                         ; $7c34: $04
    jr nz, jr_0af_7c47                            ; $7c35: $20 $10

    sub d                                         ; $7c37: $92
    dec h                                         ; $7c38: $25
    ccf                                           ; $7c39: $3f
    ld e, e                                       ; $7c3a: $5b
    sbc a                                         ; $7c3b: $9f
    stop                                          ; $7c3c: $10 $00
    nop                                           ; $7c3e: $00
    dec bc                                        ; $7c3f: $0b
    rra                                           ; $7c40: $1f
    ld b, $18                                     ; $7c41: $06 $18
    dec bc                                        ; $7c43: $0b
    inc l                                         ; $7c44: $2c
    ld h, d                                       ; $7c45: $62
    inc e                                         ; $7c46: $1c

jr_0af_7c47:
    ld e, h                                       ; $7c47: $5c
    ld l, l                                       ; $7c48: $6d
    ld a, d                                       ; $7c49: $7a
    ld a, e                                       ; $7c4a: $7b

jr_0af_7c4b:
    ld [hl], d                                    ; $7c4b: $72
    ld c, b                                       ; $7c4c: $48
    ld h, c                                       ; $7c4d: $61
    inc l                                         ; $7c4e: $2c
    sbc $4e                                       ; $7c4f: $de $4e
    cp l                                          ; $7c51: $bd
    ld a, e                                       ; $7c52: $7b
    ld [hl-], a                                   ; $7c53: $32
    dec d                                         ; $7c54: $15
    ld h, h                                       ; $7c55: $64
    nop                                           ; $7c56: $00
    sub b                                         ; $7c57: $90
    add hl, bc                                    ; $7c58: $09
    sbc l                                         ; $7c59: $9d
    ld b, d                                       ; $7c5a: $42
    rst $38                                       ; $7c5b: $ff
    inc bc                                        ; $7c5c: $03
    nop                                           ; $7c5d: $00
    jr nz, jr_0af_7bfc                            ; $7c5e: $20 $9c

    rlca                                          ; $7c60: $07
    rst $18                                       ; $7c61: $df

jr_0af_7c62:
    ld b, e                                       ; $7c62: $43

jr_0af_7c63:
    add h                                         ; $7c63: $84
    nop                                           ; $7c64: $00
    nop                                           ; $7c65: $00
    jr @+$3f                                      ; $7c66: $18 $3d

    inc b                                         ; $7c68: $04
    ld c, d                                       ; $7c69: $4a
    ld [$4d69], sp                                ; $7c6a: $08 $69 $4d
    ld bc, $5a00                                  ; $7c6d: $01 $00 $5a
    ld l, e                                       ; $7c70: $6b
    ld h, c                                       ; $7c71: $61
    inc l                                         ; $7c72: $2c
    ld [hl-], a                                   ; $7c73: $32
    inc b                                         ; $7c74: $04
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    dec bc                                        ; $7c77: $0b
    rra                                           ; $7c78: $1f
    dec bc                                        ; $7c79: $0b
    jr z, jr_0af_7c9f                             ; $7c7a: $28 $23

    jr nz, jr_0af_7cdf                            ; $7c7c: $20 $61

    inc l                                         ; $7c7e: $2c
    ld a, l                                       ; $7c7f: $7d

Call_0af_7c80:
    ld [hl], c                                    ; $7c80: $71
    cp $7f                                        ; $7c81: $fe $7f
    ld [hl], b                                    ; $7c83: $70
    inc a                                         ; $7c84: $3c
    inc hl                                        ; $7c85: $23
    inc c                                         ; $7c86: $0c
    sub d                                         ; $7c87: $92
    ld [hl], d                                    ; $7c88: $72
    ld [hl-], a                                   ; $7c89: $32
    dec d                                         ; $7c8a: $15
    ld a, d                                       ; $7c8b: $7a
    ld [hl], e                                    ; $7c8c: $73
    inc hl                                        ; $7c8d: $23
    nop                                           ; $7c8e: $00
    ld [hl], l                                    ; $7c8f: $75
    ld [bc], a                                    ; $7c90: $02
    rst $38                                       ; $7c91: $ff
    cpl                                           ; $7c92: $2f
    ld e, e                                       ; $7c93: $5b
    inc bc                                        ; $7c94: $03
    nop                                           ; $7c95: $00
    inc e                                         ; $7c96: $1c
    ld a, h                                       ; $7c97: $7c
    dec bc                                        ; $7c98: $0b
    add sp, $00                                   ; $7c99: $e8 $00
    rst $38                                       ; $7c9b: $ff
    inc sp                                        ; $7c9c: $33
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00

jr_0af_7c9f:
    ld e, $00                                     ; $7c9f: $1e $00
    dec hl                                        ; $7ca1: $2b
    inc b                                         ; $7ca2: $04
    nop                                           ; $7ca3: $00
    jr nz, @+$04                                  ; $7ca4: $20 $02

    ld [$7fbc], sp                                ; $7ca6: $08 $bc $7f
    ld l, c                                       ; $7ca9: $69
    ld b, c                                       ; $7caa: $41
    rrca                                          ; $7cab: $0f
    nop                                           ; $7cac: $00
    inc bc                                        ; $7cad: $03
    jr jr_0af_7c63                                ; $7cae: $18 $b3

    ld c, b                                       ; $7cb0: $48
    ld [$1e1a], a                                 ; $7cb1: $ea $1a $1e
    ld a, d                                       ; $7cb4: $7a
    ld hl, $b310                                  ; $7cb5: $21 $10 $b3
    ld c, h                                       ; $7cb8: $4c
    ld a, [bc]                                    ; $7cb9: $0a

jr_0af_7cba:
    jr z, jr_0af_7cba                             ; $7cba: $28 $fe

    ld [hl], l                                    ; $7cbc: $75
    ld h, c                                       ; $7cbd: $61
    jr jr_0af_7cd1                                ; $7cbe: $18 $11

    ld [bc], a                                    ; $7cc0: $02
    scf                                           ; $7cc1: $37
    ld a, a                                       ; $7cc2: $7f
    sbc $03                                       ; $7cc3: $de $03
    ld h, e                                       ; $7cc5: $63
    inc b                                         ; $7cc6: $04
    rst $38                                       ; $7cc7: $ff
    ld d, e                                       ; $7cc8: $53
    ld de, $9516                                  ; $7cc9: $11 $16 $95
    ld b, $00                                     ; $7ccc: $06 $00
    jr nz, jr_0af_7d01                            ; $7cce: $20 $31

    ld [bc], a                                    ; $7cd0: $02

jr_0af_7cd1:
    cp l                                          ; $7cd1: $bd
    dec bc                                        ; $7cd2: $0b
    add h                                         ; $7cd3: $84
    nop                                           ; $7cd4: $00
    nop                                           ; $7cd5: $00
    nop                                           ; $7cd6: $00
    inc e                                         ; $7cd7: $1c
    nop                                           ; $7cd8: $00
    nop                                           ; $7cd9: $00
    jr nz, jr_0af_7d45                            ; $7cda: $20 $69

    inc c                                         ; $7cdc: $0c
    add e                                         ; $7cdd: $83
    inc d                                         ; $7cde: $14

jr_0af_7cdf:
    db $dd                                        ; $7cdf: $dd
    ld a, e                                       ; $7ce0: $7b
    jr c, @+$06                                   ; $7ce1: $38 $04

    adc d                                         ; $7ce3: $8a
    add hl, sp                                    ; $7ce4: $39
    inc bc                                        ; $7ce5: $03
    ld [$40d1], sp                                ; $7ce6: $08 $d1 $40
    cp d                                          ; $7ce9: $ba
    ld h, l                                       ; $7cea: $65
    ld l, b                                       ; $7ceb: $68
    jr z, @-$7d                                   ; $7cec: $28 $81

    ld [$65b9], sp                                ; $7cee: $08 $b9 $65
    rst $28                                       ; $7cf1: $ef
    inc a                                         ; $7cf2: $3c
    ld a, $7a                                     ; $7cf3: $3e $7a
    add h                                         ; $7cf5: $84
    nop                                           ; $7cf6: $00
    ld d, d                                       ; $7cf7: $52
    ld [bc], a                                    ; $7cf8: $02
    cp [hl]                                       ; $7cf9: $be
    inc bc                                        ; $7cfa: $03
    jp z, $c709                                   ; $7cfb: $ca $09 $c7

    nop                                           ; $7cfe: $00
    ld hl, sp+$02                                 ; $7cff: $f8 $02

jr_0af_7d01:
    sbc $03                                       ; $7d01: $de $03
    ld c, d                                       ; $7d03: $4a
    ld bc, $2000                                  ; $7d04: $01 $00 $20
    sub h                                         ; $7d07: $94
    ld [bc], a                                    ; $7d08: $02
    add $00                                       ; $7d09: $c6 $00
    rst $18                                       ; $7d0b: $df
    inc bc                                        ; $7d0c: $03

jr_0af_7d0d:
    nop                                           ; $7d0d: $00
    nop                                           ; $7d0e: $00
    adc e                                         ; $7d0f: $8b
    ld c, c                                       ; $7d10: $49
    nop                                           ; $7d11: $00
    jr nz, jr_0af_7d1e                            ; $7d12: $20 $0a

    nop                                           ; $7d14: $00
    rlca                                          ; $7d15: $07
    inc b                                         ; $7d16: $04
    jr nc, jr_0af_7d73                            ; $7d17: $30 $5a

    and d                                         ; $7d19: $a2
    inc [hl]                                      ; $7d1a: $34
    db $db                                        ; $7d1b: $db
    ld a, a                                       ; $7d1c: $7f
    dec b                                         ; $7d1d: $05

jr_0af_7d1e:
    inc d                                         ; $7d1e: $14
    inc d                                         ; $7d1f: $14
    ld d, c                                       ; $7d20: $51
    dec e                                         ; $7d21: $1d
    halt                                          ; $7d22: $76
    inc l                                         ; $7d23: $2c
    jr nc, @+$5e                                  ; $7d24: $30 $5c

    ld l, l                                       ; $7d26: $6d
    dec e                                         ; $7d27: $1d
    ld [hl], d                                    ; $7d28: $72
    ld e, a                                       ; $7d29: $5f
    ld a, [hl]                                    ; $7d2a: $7e
    cp h                                          ; $7d2b: $bc
    ld [hl], c                                    ; $7d2c: $71
    ld b, c                                       ; $7d2d: $41
    inc c                                         ; $7d2e: $0c
    ld e, [hl]                                    ; $7d2f: $5e
    ld a, d                                       ; $7d30: $7a
    rst $00                                       ; $7d31: $c7
    nop                                           ; $7d32: $00
    ld b, d                                       ; $7d33: $42
    nop                                           ; $7d34: $00
    ld b, d                                       ; $7d35: $42
    nop                                           ; $7d36: $00
    adc l                                         ; $7d37: $8d
    ld bc, $00c7                                  ; $7d38: $01 $c7 $00
    ldh a, [rSB]                                  ; $7d3b: $f0 $01
    nop                                           ; $7d3d: $00
    ld [$2000], sp                                ; $7d3e: $08 $00 $20
    add $00                                       ; $7d41: $c6 $00
    ld b, d                                       ; $7d43: $42
    nop                                           ; $7d44: $00

jr_0af_7d45:
    nop                                           ; $7d45: $00
    inc d                                         ; $7d46: $14
    ld a, [hl]                                    ; $7d47: $7e
    inc c                                         ; $7d48: $0c
    rst $38                                       ; $7d49: $ff
    ld e, [hl]                                    ; $7d4a: $5e
    stop                                          ; $7d4b: $10 $00
    ld b, c                                       ; $7d4d: $41
    db $10                                        ; $7d4e: $10
    sbc e                                         ; $7d4f: $9b
    ld [$66f4], sp                                ; $7d50: $08 $f4 $66
    ld b, a                                       ; $7d53: $47
    ld e, $0a                                     ; $7d54: $1e $0a
    jr z, jr_0af_7d0d                             ; $7d56: $28 $b5

    ld d, b                                       ; $7d58: $50
    ld e, h                                       ; $7d59: $5c
    ld l, l                                       ; $7d5a: $6d
    cp c                                          ; $7d5b: $b9
    ld h, h                                       ; $7d5c: $64
    cp d                                          ; $7d5d: $ba
    ld h, h                                       ; $7d5e: $64
    dec de                                        ; $7d5f: $1b
    ld l, l                                       ; $7d60: $6d
    sbc h                                         ; $7d61: $9c
    ld [hl], c                                    ; $7d62: $71
    db $db                                        ; $7d63: $db
    ld l, b                                       ; $7d64: $68

jr_0af_7d65:
    ld b, c                                       ; $7d65: $41
    inc c                                         ; $7d66: $0c
    ld [hl], d                                    ; $7d67: $72
    ld c, c                                       ; $7d68: $49
    dec a                                         ; $7d69: $3d
    halt                                          ; $7d6a: $76
    adc b                                         ; $7d6b: $88
    ld d, $00                                     ; $7d6c: $16 $00
    nop                                           ; $7d6e: $00
    ld l, b                                       ; $7d6f: $68
    ld d, $b4                                     ; $7d70: $16 $b4
    ld h, d                                       ; $7d72: $62

jr_0af_7d73:
    ld b, d                                       ; $7d73: $42
    nop                                           ; $7d74: $00
    nop                                           ; $7d75: $00
    jr nz, jr_0af_7d65                            ; $7d76: $20 $ed

    ld d, c                                       ; $7d78: $51
    ld b, d                                       ; $7d79: $42
    nop                                           ; $7d7a: $00
    ld b, d                                       ; $7d7b: $42
    nop                                           ; $7d7c: $00
    nop                                           ; $7d7d: $00
    nop                                           ; $7d7e: $00
    ld e, b                                       ; $7d7f: $58
    ld [$39df], sp                                ; $7d80: $08 $df $39
    ld bc, $041c                                  ; $7d83: $01 $1c $04
    nop                                           ; $7d86: $00
    rra                                           ; $7d87: $1f
    nop                                           ; $7d88: $00
    ld h, a                                       ; $7d89: $67
    ld [de], a                                    ; $7d8a: $12
    rra                                           ; $7d8b: $1f
    ld b, d                                       ; $7d8c: $42
    add hl, bc                                    ; $7d8d: $09
    jr nz, @+$74                                  ; $7d8e: $20 $72

    ld b, h                                       ; $7d90: $44
    sub a                                         ; $7d91: $97
    ld e, b                                       ; $7d92: $58
    ld l, $34                                     ; $7d93: $2e $34

jr_0af_7d95:
    ld h, e                                       ; $7d95: $63
    inc c                                         ; $7d96: $0c
    or a                                          ; $7d97: $b7
    ld e, b                                       ; $7d98: $58
    inc e                                         ; $7d99: $1c
    ld [hl], d                                    ; $7d9a: $72
    ld d, b                                       ; $7d9b: $50
    ld b, b                                       ; $7d9c: $40
    cp c                                          ; $7d9d: $b9
    ld h, l                                       ; $7d9e: $65
    dec e                                         ; $7d9f: $1d
    ld [hl], d                                    ; $7da0: $72
    sbc a                                         ; $7da1: $9f
    ld a, [hl]                                    ; $7da2: $7e
    dec sp                                        ; $7da3: $3b
    ld l, l                                       ; $7da4: $6d
    nop                                           ; $7da5: $00
    nop                                           ; $7da6: $00
    ld b, a                                       ; $7da7: $47
    ld [de], a                                    ; $7da8: $12
    ld l, c                                       ; $7da9: $69
    ld b, l                                       ; $7daa: $45
    cpl                                           ; $7dab: $2f
    ld d, [hl]                                    ; $7dac: $56
    nop                                           ; $7dad: $00
    jr nz, jr_0af_7d95                            ; $7dae: $20 $e5

    inc a                                         ; $7db0: $3c
    ld c, b                                       ; $7db1: $48
    ld b, l                                       ; $7db2: $45
    cpl                                           ; $7db3: $2f
    ld d, [hl]                                    ; $7db4: $56
    nop                                           ; $7db5: $00
    nop                                           ; $7db6: $00
    dec sp                                        ; $7db7: $3b
    inc b                                         ; $7db8: $04
    add hl, bc                                    ; $7db9: $09
    nop                                           ; $7dba: $00
    nop                                           ; $7dbb: $00
    jr nz, jr_0af_7dbe                            ; $7dbc: $20 $00

jr_0af_7dbe:
    nop                                           ; $7dbe: $00
    ld b, a                                       ; $7dbf: $47
    ld [de], a                                    ; $7dc0: $12
    dec d                                         ; $7dc1: $15
    nop                                           ; $7dc2: $00
    ccf                                           ; $7dc3: $3f
    inc b                                         ; $7dc4: $04
    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    add hl, bc                                    ; $7dc7: $09
    jr nz, jr_0af_7df6                            ; $7dc8: $20 $2c

    jr nc, @+$08                                  ; $7dca: $30 $06

    inc d                                         ; $7dcc: $14

jr_0af_7dcd:
    nop                                           ; $7dcd: $00
    nop                                           ; $7dce: $00
    ld a, c                                       ; $7dcf: $79
    ld h, l                                       ; $7dd0: $65
    ld [$4c20], sp                                ; $7dd1: $08 $20 $4c
    inc l                                         ; $7dd4: $2c
    nop                                           ; $7dd5: $00
    nop                                           ; $7dd6: $00
    jp c, $dd68                                   ; $7dd7: $da $68 $dd

    ld [hl], l                                    ; $7dda: $75
    or b                                          ; $7ddb: $b0
    ld b, b                                       ; $7ddc: $40
    nop                                           ; $7ddd: $00
    nop                                           ; $7dde: $00
    push hl                                       ; $7ddf: $e5
    inc a                                         ; $7de0: $3c
    ld h, $12                                     ; $7de1: $26 $12
    adc e                                         ; $7de3: $8b
    ld c, l                                       ; $7de4: $4d
    nop                                           ; $7de5: $00
    jr nz, jr_0af_7dcd                            ; $7de6: $20 $e5

    inc a                                         ; $7de8: $3c
    ld h, $12                                     ; $7de9: $26 $12
    adc e                                         ; $7deb: $8b
    ld c, l                                       ; $7dec: $4d
    ld bc, $0900                                  ; $7ded: $01 $00 $09
    nop                                           ; $7df0: $00
    nop                                           ; $7df1: $00
    jr nz, jr_0af_7e07                            ; $7df2: $20 $13

    nop                                           ; $7df4: $00
    nop                                           ; $7df5: $00

jr_0af_7df6:
    nop                                           ; $7df6: $00
    xor h                                         ; $7df7: $ac
    ld d, l                                       ; $7df8: $55
    ld h, $12                                     ; $7df9: $26 $12
    or l                                          ; $7dfb: $b5
    ld [hl], d                                    ; $7dfc: $72
    nop                                           ; $7dfd: $00
    nop                                           ; $7dfe: $00
    rlca                                          ; $7dff: $07
    inc e                                         ; $7e00: $1c
    ld h, $12                                     ; $7e01: $26 $12
    add hl, bc                                    ; $7e03: $09
    inc h                                         ; $7e04: $24
    nop                                           ; $7e05: $00
    nop                                           ; $7e06: $00

jr_0af_7e07:
    rla                                           ; $7e07: $17
    ld e, c                                       ; $7e08: $59
    add hl, bc                                    ; $7e09: $09
    inc h                                         ; $7e0a: $24
    ld c, $38                                     ; $7e0b: $0e $38
    dec h                                         ; $7e0d: $25
    jr jr_0af_7e4e                                ; $7e0e: $18 $3e

    ld a, c                                       ; $7e10: $79
    or c                                          ; $7e11: $b1
    ld b, h                                       ; $7e12: $44
    cp $75                                        ; $7e13: $fe $75
    nop                                           ; $7e15: $00
    inc b                                         ; $7e16: $04
    adc a                                         ; $7e17: $8f
    ld d, l                                       ; $7e18: $55
    ld [hl], $6e                                  ; $7e19: $36 $6e
    push hl                                       ; $7e1b: $e5
    inc a                                         ; $7e1c: $3c
    nop                                           ; $7e1d: $00
    jr nz, @-$6f                                  ; $7e1e: $20 $8f

    ld d, l                                       ; $7e20: $55
    ld [hl], $6e                                  ; $7e21: $36 $6e
    push hl                                       ; $7e23: $e5
    inc a                                         ; $7e24: $3c
    nop                                           ; $7e25: $00
    nop                                           ; $7e26: $00
    nop                                           ; $7e27: $00
    jr nz, jr_0af_7e50                            ; $7e28: $20 $26

    ld [de], a                                    ; $7e2a: $12
    add hl, bc                                    ; $7e2b: $09
    inc h                                         ; $7e2c: $24

jr_0af_7e2d:
    nop                                           ; $7e2d: $00
    ld [$72f7], sp                                ; $7e2e: $08 $f7 $72
    ld b, $0e                                     ; $7e31: $06 $0e

jr_0af_7e33:
    rst $38                                       ; $7e33: $ff
    ld a, a                                       ; $7e34: $7f
    nop                                           ; $7e35: $00
    nop                                           ; $7e36: $00
    ld b, $0e                                     ; $7e37: $06 $0e
    rlca                                          ; $7e39: $07
    inc e                                         ; $7e3a: $1c
    ld [$001c], sp                                ; $7e3b: $08 $1c $00
    inc b                                         ; $7e3e: $04
    sbc e                                         ; $7e3f: $9b
    ld b, d                                       ; $7e40: $42
    dec bc                                        ; $7e41: $0b
    jr nc, @-$19                                  ; $7e42: $30 $e5

    dec c                                         ; $7e44: $0d
    ld b, e                                       ; $7e45: $43
    inc b                                         ; $7e46: $04
    rst $10                                       ; $7e47: $d7
    ld b, c                                       ; $7e48: $41
    jr nc, @+$46                                  ; $7e49: $30 $44

    ld e, a                                       ; $7e4b: $5f
    ld [hl], d                                    ; $7e4c: $72
    nop                                           ; $7e4d: $00

jr_0af_7e4e:
    db $10                                        ; $7e4e: $10
    push de                                       ; $7e4f: $d5

jr_0af_7e50:
    ld d, h                                       ; $7e50: $54
    jp c, $4c76                                   ; $7e51: $da $76 $4c

    jr nc, jr_0af_7e56                            ; $7e54: $30 $00

jr_0af_7e56:
    jr nz, jr_0af_7e2d                            ; $7e56: $20 $d5

    ld d, h                                       ; $7e58: $54
    jp c, $4c76                                   ; $7e59: $da $76 $4c

    jr nc, jr_0af_7e5e                            ; $7e5c: $30 $00

jr_0af_7e5e:
    jr nz, jr_0af_7e66                            ; $7e5e: $20 $06

    ld c, $07                                     ; $7e60: $0e $07
    inc e                                         ; $7e62: $1c
    ld [$001c], sp                                ; $7e63: $08 $1c $00

jr_0af_7e66:
    nop                                           ; $7e66: $00
    sbc h                                         ; $7e67: $9c
    ld [hl], a                                    ; $7e68: $77
    push hl                                       ; $7e69: $e5
    dec c                                         ; $7e6a: $0d
    nop                                           ; $7e6b: $00
    jr nz, jr_0af_7e6e                            ; $7e6c: $20 $00

jr_0af_7e6e:
    nop                                           ; $7e6e: $00
    push hl                                       ; $7e6f: $e5
    dec c                                         ; $7e70: $0d
    push hl                                       ; $7e71: $e5
    dec c                                         ; $7e72: $0d
    nop                                           ; $7e73: $00
    jr nz, jr_0af_7e76                            ; $7e74: $20 $00

jr_0af_7e76:
    nop                                           ; $7e76: $00
    rrca                                          ; $7e77: $0f
    ld h, d                                       ; $7e78: $62
    sbc h                                         ; $7e79: $9c
    ld a, e                                       ; $7e7a: $7b
    or l                                          ; $7e7b: $b5
    ld l, [hl]                                    ; $7e7c: $6e

jr_0af_7e7d:
    nop                                           ; $7e7d: $00
    nop                                           ; $7e7e: $00
    push hl                                       ; $7e7f: $e5
    inc a                                         ; $7e80: $3c
    rrca                                          ; $7e81: $0f
    ld e, d                                       ; $7e82: $5a
    ld c, c                                       ; $7e83: $49
    ld c, c                                       ; $7e84: $49
    nop                                           ; $7e85: $00
    nop                                           ; $7e86: $00

jr_0af_7e87:
    rst $30                                       ; $7e87: $f7
    ld [hl], d                                    ; $7e88: $72
    sbc $7b                                       ; $7e89: $de $7b
    nop                                           ; $7e8b: $00
    jr nz, jr_0af_7e8e                            ; $7e8c: $20 $00

jr_0af_7e8e:
    jr nz, jr_0af_7e87                            ; $7e8e: $20 $f7

    ld [hl], d                                    ; $7e90: $72
    sbc $7b                                       ; $7e91: $de $7b
    nop                                           ; $7e93: $00
    jr nz, jr_0af_7e96                            ; $7e94: $20 $00

jr_0af_7e96:
    jr nz, jr_0af_7e7d                            ; $7e96: $20 $e5

    dec c                                         ; $7e98: $0d
    push hl                                       ; $7e99: $e5
    dec c                                         ; $7e9a: $0d
    nop                                           ; $7e9b: $00
    jr nz, jr_0af_7e9e                            ; $7e9c: $20 $00

jr_0af_7e9e:
    jr nz, jr_0af_7e33                            ; $7e9e: $20 $93

    ld h, d                                       ; $7ea0: $62
    sbc h                                         ; $7ea1: $9c
    ld [hl], a                                    ; $7ea2: $77
    ld l, c                                       ; $7ea3: $69
    ld b, l                                       ; $7ea4: $45
    push hl                                       ; $7ea5: $e5
    inc a                                         ; $7ea6: $3c
    ld sp, $f766                                  ; $7ea7: $31 $66 $f7
    ld [hl], d                                    ; $7eaa: $72
    ld c, c                                       ; $7eab: $49

jr_0af_7eac:
    ld c, l                                       ; $7eac: $4d
    daa                                           ; $7ead: $27
    ld b, l                                       ; $7eae: $45
    sub l                                         ; $7eaf: $95
    ld [hl], d                                    ; $7eb0: $72
    sbc h                                         ; $7eb1: $9c
    ld a, e                                       ; $7eb2: $7b
    adc $5d                                       ; $7eb3: $ce $5d
    ld l, d                                       ; $7eb5: $6a
    ld c, l                                       ; $7eb6: $4d
    sub h                                         ; $7eb7: $94
    ld l, [hl]                                    ; $7eb8: $6e
    jr nc, jr_0af_7f19                            ; $7eb9: $30 $5e

    ld e, d                                       ; $7ebb: $5a
    ld [hl], e                                    ; $7ebc: $73
    nop                                           ; $7ebd: $00
    jr nz, jr_0af_7f33                            ; $7ebe: $20 $73

    ld e, [hl]                                    ; $7ec0: $5e
    cp h                                          ; $7ec1: $bc
    ld a, e                                       ; $7ec2: $7b
    push hl                                       ; $7ec3: $e5
    inc a                                         ; $7ec4: $3c
    nop                                           ; $7ec5: $00
    jr nz, @+$75                                  ; $7ec6: $20 $73

    ld e, [hl]                                    ; $7ec8: $5e
    cp h                                          ; $7ec9: $bc
    ld a, e                                       ; $7eca: $7b
    push hl                                       ; $7ecb: $e5
    inc a                                         ; $7ecc: $3c
    ldh a, [rP1]                                  ; $7ecd: $f0 $00
    add [hl]                                      ; $7ecf: $86
    nop                                           ; $7ed0: $00
    ld d, b                                       ; $7ed1: $50
    nop                                           ; $7ed2: $00
    ld bc, $8080                                  ; $7ed3: $01 $80 $80

jr_0af_7ed6:
    ld [bc], a                                    ; $7ed6: $02
    ld [$c040], sp                                ; $7ed7: $08 $40 $c0
    nop                                           ; $7eda: $00
    ret nz                                        ; $7edb: $c0

    db $10                                        ; $7edc: $10
    ld hl, $8061                                  ; $7edd: $21 $61 $80

jr_0af_7ee0:
    jr nz, jr_0af_7eea                            ; $7ee0: $20 $08

    ld h, b                                       ; $7ee2: $60
    db $10                                        ; $7ee3: $10
    ld h, b                                       ; $7ee4: $60
    nop                                           ; $7ee5: $00
    nop                                           ; $7ee6: $00
    ld h, b                                       ; $7ee7: $60
    add b                                         ; $7ee8: $80
    and b                                         ; $7ee9: $a0

jr_0af_7eea:
    ld d, c                                       ; $7eea: $51
    and b                                         ; $7eeb: $a0
    db $10                                        ; $7eec: $10
    db $10                                        ; $7eed: $10
    and b                                         ; $7eee: $a0
    add b                                         ; $7eef: $80
    jr nc, @+$22                                  ; $7ef0: $30 $20

    inc b                                         ; $7ef2: $04
    inc b                                         ; $7ef3: $04
    nop                                           ; $7ef4: $00
    db $fc                                        ; $7ef5: $fc
    ld bc, $0440                                  ; $7ef6: $01 $40 $04
    jr nz, @+$42                                  ; $7ef9: $20 $40

    db $10                                        ; $7efb: $10
    ld b, b                                       ; $7efc: $40
    jr c, jr_0af_7ee0                             ; $7efd: $38 $e1

    ld [de], a                                    ; $7eff: $12
    ld [hl], b                                    ; $7f00: $70
    add hl, bc                                    ; $7f01: $09
    ld e, b                                       ; $7f02: $58
    ld b, c                                       ; $7f03: $41

Call_0af_7f04:
    inc h                                         ; $7f04: $24
    ld d, b                                       ; $7f05: $50
    jr c, jr_0af_7ed6                             ; $7f06: $38 $ce

    ld sp, $0a84                                  ; $7f08: $31 $84 $0a
    add h                                         ; $7f0b: $84
    ld e, a                                       ; $7f0c: $5f
    ld b, b                                       ; $7f0d: $40
    ld [$4830], sp                                ; $7f0e: $08 $30 $48
    stop                                          ; $7f11: $10 $00
    cpl                                           ; $7f13: $2f
    jr jr_0af_7f1d                                ; $7f14: $18 $07

    ld [$0003], sp                                ; $7f16: $08 $03 $00

jr_0af_7f19:
    inc b                                         ; $7f19: $04
    dec b                                         ; $7f1a: $05
    ld [bc], a                                    ; $7f1b: $02
    inc b                                         ; $7f1c: $04

jr_0af_7f1d:
    ld bc, $0804                                  ; $7f1d: $01 $04 $08
    inc b                                         ; $7f20: $04
    ld b, b                                       ; $7f21: $40
    ld [$0003], sp                                ; $7f22: $08 $03 $00
    inc b                                         ; $7f25: $04
    ld [$0800], sp                                ; $7f26: $08 $00 $08
    db $10                                        ; $7f29: $10
    jr jr_0af_7eac                                ; $7f2a: $18 $80

    ld a, [hl-]                                   ; $7f2c: $3a
    jr nz, @+$73                                  ; $7f2d: $20 $71

    ld [bc], a                                    ; $7f2f: $02
    ld [hl-], a                                   ; $7f30: $32
    add hl, bc                                    ; $7f31: $09
    ld a, [de]                                    ; $7f32: $1a

jr_0af_7f33:
    inc h                                         ; $7f33: $24
    inc e                                         ; $7f34: $1c
    nop                                           ; $7f35: $00
    ld [bc], a                                    ; $7f36: $02
    inc c                                         ; $7f37: $0c
    db $10                                        ; $7f38: $10
    ld [$0004], sp                                ; $7f39: $08 $04 $00
    ld [$1000], sp                                ; $7f3c: $08 $00 $10
    nop                                           ; $7f3f: $00
    db $10                                        ; $7f40: $10
    jr nz, @+$38                                  ; $7f41: $20 $36

    ld [$0010], sp                                ; $7f43: $08 $10 $00
    jr jr_0af_7f69                                ; $7f46: $18 $21

    add b                                         ; $7f48: $80
    xor d                                         ; $7f49: $aa
    jr @+$52                                      ; $7f4a: $18 $50

    jr nz, @+$72                                  ; $7f4c: $20 $70

    nop                                           ; $7f4e: $00
    ld b, b                                       ; $7f4f: $40
    db $10                                        ; $7f50: $10
    ld b, b                                       ; $7f51: $40
    stop                                          ; $7f52: $10 $00

Jump_0af_7f54:
    ld hl, sp+$05                                 ; $7f54: $f8 $05
    cp d                                          ; $7f56: $ba
    jr @+$4e                                      ; $7f57: $18 $4c

    ld [de], a                                    ; $7f59: $12
    ld b, [hl]                                    ; $7f5a: $46
    add hl, bc                                    ; $7f5b: $09
    dec b                                         ; $7f5c: $05
    ld b, e                                       ; $7f5d: $43
    inc b                                         ; $7f5e: $04
    ld b, c                                       ; $7f5f: $41
    add d                                         ; $7f60: $82
    ret nz                                        ; $7f61: $c0

    jr nz, @+$22                                  ; $7f62: $20 $20

jr_0af_7f64:
    add h                                         ; $7f64: $84
    ld [bc], a                                    ; $7f65: $02
    ld [$0207], sp                                ; $7f66: $08 $07 $02

jr_0af_7f69:
    add [hl]                                      ; $7f69: $86
    ld bc, $0483                                  ; $7f6a: $01 $83 $04
    rst $00                                       ; $7f6d: $c7
    nop                                           ; $7f6e: $00
    db $dd                                        ; $7f6f: $dd
    nop                                           ; $7f70: $00
    ld a, $10                                     ; $7f71: $3e $10
    inc b                                         ; $7f73: $04
    jr nz, @+$22                                  ; $7f74: $20 $20

    ld d, b                                       ; $7f76: $50
    ret nz                                        ; $7f77: $c0

    jr nz, jr_0af_7f64                            ; $7f78: $20 $ea

    db $18                                        ; $7f7a: $18

    db $14, $00, $12, $00, $22, $00, $55, $85, $01, $80, $84, $01, $80, $83, $01, $80
    db $82, $01, $80, $7f, $81, $01, $80, $64, $f8, $64, $f8, $64, $f8, $c8, $f8, $c8
    db $f8, $c8, $f8, $dd, $2c, $f9, $2c, $99, $03, $01, $f8, $23, $f8, $45, $40, $02
    db $01, $f8, $dd, $23, $f8, $45, $e0, $01, $01, $f8, $23, $f8, $45, $e0, $00, $01
    db $f8, $c0, $23, $f8, $45, $40, $04, $00, $04, $00, $80, $81, $82, $83, $84, $85
    db $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $04, $05, $06, $07, $04, $05
    db $06, $07, $04, $05, $06, $07, $04, $05, $06, $07

    xor [hl]                                      ; $7fe5: $ae
    ld sp, $6893                                  ; $7fe6: $31 $93 $68
    rst $38                                       ; $7fe9: $ff
    nop                                           ; $7fea: $00
    nop                                           ; $7feb: $00
    nop                                           ; $7fec: $00
    dec bc                                        ; $7fed: $0b
    ld d, b                                       ; $7fee: $50
    ccf                                           ; $7fef: $3f
    rrca                                          ; $7ff0: $0f
    dec de                                        ; $7ff1: $1b
    ld bc, $0000                                  ; $7ff2: $01 $00 $00
    ld l, d                                       ; $7ff5: $6a
    dec h                                         ; $7ff6: $25
    sbc d                                         ; $7ff7: $9a
    inc bc                                        ; $7ff8: $03
    rrca                                          ; $7ff9: $0f
    inc h                                         ; $7ffa: $24
    nop                                           ; $7ffb: $00
    nop                                           ; $7ffc: $00
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
