; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b3", ROMX[$4000], BANK[$b3]

    db $b3

    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    ld a, a                                       ; $4003: $7f
    dec l                                         ; $4004: $2d
    nop                                           ; $4005: $00
    db $20, $be                                   ; $4006: $20 $be
    dec sp                                        ; $4008: $3b
    nop                                           ; $4009: $00

jr_0b3_400a:
    nop                                           ; $400a: $00
    sbc a                                         ; $400b: $9f
    ld d, d                                       ; $400c: $52
    nop                                           ; $400d: $00
    jr nz, @+$61                                  ; $400e: $20 $5f

    ld l, e                                       ; $4010: $6b

jr_0b3_4011:
    nop                                           ; $4011: $00
    db $20, $9f                                   ; $4012: $20 $9f
    ld d, d                                       ; $4014: $52
    nop                                           ; $4015: $00
    jr nz, @+$61                                  ; $4016: $20 $5f

    ld l, e                                       ; $4018: $6b
    nop                                           ; $4019: $00
    db $20, $9d                                   ; $401a: $20 $9d
    rrca                                          ; $401c: $0f
    rst $18                                       ; $401d: $df
    ld c, e                                       ; $401e: $4b
    rst $38                                       ; $401f: $ff
    ld l, a                                       ; $4020: $6f
    nop                                           ; $4021: $00
    db $18, $d8                                   ; $4022: $18 $d8
    jr jr_0b3_40a5                                ; $4024: $18 $7f

    ld c, [hl]                                    ; $4026: $4e
    ld d, c                                       ; $4027: $51
    ld [$1400], sp                                ; $4028: $08 $00 $14
    add hl, sp                                    ; $402b: $39
    inc b                                         ; $402c: $04
    dec c                                         ; $402d: $0d
    nop                                           ; $402e: $00
    cp l                                          ; $402f: $bd
    dec [hl]                                      ; $4030: $35
    nop                                           ; $4031: $00
    jr nz, jr_0b3_406d                            ; $4032: $20 $39

    inc b                                         ; $4034: $04
    dec c                                         ; $4035: $0d
    nop                                           ; $4036: $00
    cp l                                          ; $4037: $bd
    dec [hl]                                      ; $4038: $35
    nop                                           ; $4039: $00
    nop                                           ; $403a: $00
    cpl                                           ; $403b: $2f
    inc b                                         ; $403c: $04
    ld e, c                                       ; $403d: $59
    ld [$2000], sp                                ; $403e: $08 $00 $20
    nop                                           ; $4041: $00
    jr jr_0b3_407b                                ; $4042: $18 $37

    dec h                                         ; $4044: $25
    ld e, l                                       ; $4045: $5d
    ld c, d                                       ; $4046: $4a
    ld a, a                                       ; $4047: $7f
    ld l, a                                       ; $4048: $6f
    nop                                           ; $4049: $00
    jr nz, jr_0b3_400a                            ; $404a: $20 $be

    rra                                           ; $404c: $1f
    cp [hl]                                       ; $404d: $be
    inc sp                                        ; $404e: $33
    ld a, a                                       ; $404f: $7f
    ld l, a                                       ; $4050: $6f
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    ld [hl], h                                    ; $4053: $74
    ld c, $9e                                     ; $4054: $0e $9e
    rlca                                          ; $4056: $07
    cp [hl]                                       ; $4057: $be
    rla                                           ; $4058: $17
    nop                                           ; $4059: $00
    inc b                                         ; $405a: $04
    db $fc                                        ; $405b: $fc
    inc e                                         ; $405c: $1c
    ld sp, $ff04                                  ; $405d: $31 $04 $ff
    ld b, [hl]                                    ; $4060: $46
    ld bc, $2a00                                  ; $4061: $01 $00 $2a
    inc b                                         ; $4064: $04
    nop                                           ; $4065: $00
    jr nz, jr_0b3_4099                            ; $4066: $20 $31

    inc b                                         ; $4068: $04
    nop                                           ; $4069: $00
    jr nz, @+$2c                                  ; $406a: $20 $2a

    inc b                                         ; $406c: $04

jr_0b3_406d:
    nop                                           ; $406d: $00
    jr nz, jr_0b3_40a1                            ; $406e: $20 $31

    inc b                                         ; $4070: $04
    ld bc, $2e00                                  ; $4071: $01 $00 $2e
    inc b                                         ; $4074: $04
    nop                                           ; $4075: $00
    jr nz, jr_0b3_4011                            ; $4076: $20 $99

    db $10                                        ; $4078: $10
    ld [bc], a                                    ; $4079: $02
    nop                                           ; $407a: $00

jr_0b3_407b:
    sbc c                                         ; $407b: $99
    db $10                                        ; $407c: $10
    sbc e                                         ; $407d: $9b
    ld sp, $5adf                                  ; $407e: $31 $df $5a
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    ldh a, [rNR11]                                ; $4083: $f0 $11
    ld a, [hl-]                                   ; $4085: $3a
    inc bc                                        ; $4086: $03
    nop                                           ; $4087: $00
    jr nz, jr_0b3_408a                            ; $4088: $20 $00

jr_0b3_408a:
    nop                                           ; $408a: $00
    ld [hl-], a                                   ; $408b: $32
    ld a, d                                       ; $408c: $7a
    inc l                                         ; $408d: $2c
    inc b                                         ; $408e: $04
    ld d, l                                       ; $408f: $55
    ld [$0000], sp                                ; $4090: $08 $00 $00
    ld d, a                                       ; $4093: $57
    ld [$0a74], sp                                ; $4094: $08 $74 $0a
    dec c                                         ; $4097: $0d
    nop                                           ; $4098: $00

jr_0b3_4099:
    ld [bc], a                                    ; $4099: $02
    nop                                           ; $409a: $00
    ld d, h                                       ; $409b: $54
    ld [$2000], sp                                ; $409c: $08 $00 $20
    or a                                          ; $409f: $b7
    inc d                                         ; $40a0: $14

jr_0b3_40a1:
    nop                                           ; $40a1: $00
    jr nz, @-$3f                                  ; $40a2: $20 $bf

    ld h, a                                       ; $40a4: $67

jr_0b3_40a5:
    inc bc                                        ; $40a5: $03
    nop                                           ; $40a6: $00
    ret z                                         ; $40a7: $c8

    jr jr_0b3_40ab                                ; $40a8: $18 $01

    nop                                           ; $40aa: $00

jr_0b3_40ab:
    halt                                          ; $40ab: $76
    inc c                                         ; $40ac: $0c
    nop                                           ; $40ad: $00
    jr nz, @+$0a                                  ; $40ae: $20 $08

    nop                                           ; $40b0: $00
    ld bc, $bd00                                  ; $40b1: $01 $00 $bd
    dec [hl]                                      ; $40b4: $35
    ld d, l                                       ; $40b5: $55
    ld [$673f], sp                                ; $40b6: $08 $3f $67
    nop                                           ; $40b9: $00

jr_0b3_40ba:
    nop                                           ; $40ba: $00
    ld d, $42                                     ; $40bb: $16 $42
    rst $18                                       ; $40bd: $df
    ld a, e                                       ; $40be: $7b
    sbc a                                         ; $40bf: $9f
    ld d, d                                       ; $40c0: $52
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    ld [hl-], a                                   ; $40c3: $32
    ld a, d                                       ; $40c4: $7a
    rst $38                                       ; $40c5: $ff
    ld a, a                                       ; $40c6: $7f
    ld [$0100], sp                                ; $40c7: $08 $00 $01
    nop                                           ; $40ca: $00
    ld [hl-], a                                   ; $40cb: $32
    ld a, d                                       ; $40cc: $7a
    ld a, [hl-]                                   ; $40cd: $3a
    rlca                                          ; $40ce: $07
    ld c, $00                                     ; $40cf: $0e $00
    nop                                           ; $40d1: $00

jr_0b3_40d2:
    nop                                           ; $40d2: $00
    ld d, b                                       ; $40d3: $50
    ld [$1cfb], sp                                ; $40d4: $08 $fb $1c
    nop                                           ; $40d7: $00
    jr nz, jr_0b3_40da                            ; $40d8: $20 $00

jr_0b3_40da:
    jr nz, @-$6b                                  ; $40da: $20 $93

    dec e                                         ; $40dc: $1d
    ld a, l                                       ; $40dd: $7d
    ld h, e                                       ; $40de: $63
    inc bc                                        ; $40df: $03
    nop                                           ; $40e0: $00
    nop                                           ; $40e1: $00
    nop                                           ; $40e2: $00
    inc l                                         ; $40e3: $2c
    inc b                                         ; $40e4: $04
    halt                                          ; $40e5: $76
    inc c                                         ; $40e6: $0c
    nop                                           ; $40e7: $00
    jr nz, jr_0b3_40ea                            ; $40e8: $20 $00

jr_0b3_40ea:
    nop                                           ; $40ea: $00
    cpl                                           ; $40eb: $2f
    inc b                                         ; $40ec: $04
    ld a, b                                       ; $40ed: $78
    inc c                                         ; $40ee: $0c
    add hl, bc                                    ; $40ef: $09
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    cp l                                          ; $40f3: $bd
    ld [hl], a                                    ; $40f4: $77
    ld c, a                                       ; $40f5: $4f
    ld c, d                                       ; $40f6: $4a
    add hl, de                                    ; $40f7: $19
    ld hl, $0000                                  ; $40f8: $21 $00 $00
    ld [hl-], a                                   ; $40fb: $32
    ld a, d                                       ; $40fc: $7a
    sbc h                                         ; $40fd: $9c
    ld [hl], e                                    ; $40fe: $73
    rst $38                                       ; $40ff: $ff
    ld a, a                                       ; $4100: $7f
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    ld [hl-], a                                   ; $4103: $32
    ld a, d                                       ; $4104: $7a
    stop                                          ; $4105: $10 $00
    sbc $43                                       ; $4107: $de $43
    nop                                           ; $4109: $00
    inc d                                         ; $410a: $14
    rst $10                                       ; $410b: $d7
    jr jr_0b3_40ba                                ; $410c: $18 $ac

    inc d                                         ; $410e: $14
    rst $18                                       ; $410f: $df
    add hl, sp                                    ; $4110: $39
    nop                                           ; $4111: $00
    jr nz, jr_0b3_40d2                            ; $4112: $20 $be

    ld a, $03                                     ; $4114: $3e $03
    nop                                           ; $4116: $00
    rst $18                                       ; $4117: $df
    ld l, e                                       ; $4118: $6b
    inc bc                                        ; $4119: $03
    nop                                           ; $411a: $00
    cpl                                           ; $411b: $2f
    inc b                                         ; $411c: $04
    nop                                           ; $411d: $00
    jr nz, jr_0b3_4196                            ; $411e: $20 $76

    inc c                                         ; $4120: $0c
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    ld sp, $7704                                  ; $4123: $31 $04 $77
    inc c                                         ; $4126: $0c
    ld b, $00                                     ; $4127: $06 $00
    inc b                                         ; $4129: $04
    nop                                           ; $412a: $00
    ld l, $46                                     ; $412b: $2e $46
    add hl, sp                                    ; $412d: $39
    ld h, a                                       ; $412e: $67
    sbc h                                         ; $412f: $9c
    ld [hl], e                                    ; $4130: $73
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    ld [de], a                                    ; $4133: $12
    ld a, d                                       ; $4134: $7a
    cp l                                          ; $4135: $bd
    ld [hl], a                                    ; $4136: $77
    sub h                                         ; $4137: $94
    ld d, d                                       ; $4138: $52
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    ld [de], a                                    ; $413b: $12
    ld a, d                                       ; $413c: $7a
    dec bc                                        ; $413d: $0b
    nop                                           ; $413e: $00
    jr nc, jr_0b3_4145                            ; $413f: $30 $04

    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    ld e, $42                                     ; $4143: $1e $42

jr_0b3_4145:
    ld a, [de]                                    ; $4145: $1a
    inc bc                                        ; $4146: $03
    nop                                           ; $4147: $00
    jr nz, jr_0b3_414a                            ; $4148: $20 $00

jr_0b3_414a:
    jr nz, jr_0b3_4188                            ; $414a: $20 $3c

    ld d, a                                       ; $414c: $57
    inc bc                                        ; $414d: $03
    nop                                           ; $414e: $00
    jp hl                                         ; $414f: $e9


    jr jr_0b3_4152                                ; $4150: $18 $00

jr_0b3_4152:
    nop                                           ; $4152: $00
    ld a, b                                       ; $4153: $78
    inc c                                         ; $4154: $0c
    nop                                           ; $4155: $00
    jr nz, jr_0b3_4161                            ; $4156: $20 $09

    nop                                           ; $4158: $00
    ld bc, $0f00                                  ; $4159: $01 $00 $0f
    nop                                           ; $415c: $00
    ld d, e                                       ; $415d: $53
    ld c, $00                                     ; $415e: $0e $00
    inc e                                         ; $4160: $1c

jr_0b3_4161:
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    ld d, e                                       ; $4163: $53
    ld c, d                                       ; $4164: $4a
    add hl, sp                                    ; $4165: $39
    ld h, a                                       ; $4166: $67
    adc e                                         ; $4167: $8b
    ld sp, $0000                                  ; $4168: $31 $00 $00
    ld a, h                                       ; $416b: $7c
    ld l, a                                       ; $416c: $6f
    sbc $7b                                       ; $416d: $de $7b
    sbc e                                         ; $416f: $9b
    ld [hl], e                                    ; $4170: $73
    ld bc, $1f00                                  ; $4171: $01 $00 $1f
    ld hl, $0853                                  ; $4174: $21 $53 $08
    rst $18                                       ; $4177: $df
    ld e, d                                       ; $4178: $5a
    ld bc, $5c00                                  ; $4179: $01 $00 $5c
    inc bc                                        ; $417c: $03
    sbc a                                         ; $417d: $9f
    ld d, a                                       ; $417e: $57
    rra                                           ; $417f: $1f
    ld hl, $2000                                  ; $4180: $21 $00 $20
    add hl, sp                                    ; $4183: $39
    ld [hl-], a                                   ; $4184: $32
    inc h                                         ; $4185: $24
    nop                                           ; $4186: $00
    rst $18                                       ; $4187: $df

jr_0b3_4188:
    ld l, e                                       ; $4188: $6b
    ld [bc], a                                    ; $4189: $02
    nop                                           ; $418a: $00
    ld [hl], a                                    ; $418b: $77
    inc c                                         ; $418c: $0c
    sub l                                         ; $418d: $95
    ld c, $00                                     ; $418e: $0e $00
    jr nz, jr_0b3_4192                            ; $4190: $20 $00

jr_0b3_4192:
    nop                                           ; $4192: $00
    ld de, $3b12                                  ; $4193: $11 $12 $3b

jr_0b3_4196:
    rlca                                          ; $4196: $07
    dec bc                                        ; $4197: $0b
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    ld d, d                                       ; $419b: $52
    ld c, d                                       ; $419c: $4a
    add hl, hl                                    ; $419d: $29
    dec h                                         ; $419e: $25
    ld e, e                                       ; $419f: $5b
    ld l, e                                       ; $41a0: $6b
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    sub d                                         ; $41a3: $92
    db $10                                        ; $41a4: $10
    sbc h                                         ; $41a5: $9c
    ld sp, $0847                                  ; $41a6: $31 $47 $08
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    dec hl                                        ; $41ab: $2b
    inc b                                         ; $41ac: $04
    ld [hl], e                                    ; $41ad: $73
    inc c                                         ; $41ae: $0c
    ld b, $00                                     ; $41af: $06 $00
    ld bc, $3f00                                  ; $41b1: $01 $00 $3f
    ld d, e                                       ; $41b4: $53
    rst $38                                       ; $41b5: $ff
    ld a, a                                       ; $41b6: $7f
    ld b, l                                       ; $41b7: $45
    inc b                                         ; $41b8: $04
    nop                                           ; $41b9: $00
    jr nz, jr_0b3_41cf                            ; $41ba: $20 $13

    ld a, [hl-]                                   ; $41bc: $3a
    dec h                                         ; $41bd: $25
    inc b                                         ; $41be: $04
    dec a                                         ; $41bf: $3d
    ld d, e                                       ; $41c0: $53
    ld bc, $5000                                  ; $41c1: $01 $00 $50
    ld [$2000], sp                                ; $41c4: $08 $00 $20
    sbc a                                         ; $41c7: $9f
    stop                                          ; $41c8: $10 $00
    nop                                           ; $41ca: $00
    sub l                                         ; $41cb: $95
    ld c, $9f                                     ; $41cc: $0e $9f
    ld d, d                                       ; $41ce: $52

jr_0b3_41cf:
    ld hl, $2104                                  ; $41cf: $21 $04 $21
    inc b                                         ; $41d2: $04
    halt                                          ; $41d3: $76
    dec l                                         ; $41d4: $2d
    add hl, hl                                    ; $41d5: $29
    dec h                                         ; $41d6: $25
    ccf                                           ; $41d7: $3f
    ld b, [hl]                                    ; $41d8: $46
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    ld a, [bc]                                    ; $41db: $0a
    nop                                           ; $41dc: $00
    ld c, l                                       ; $41dd: $4d
    dec e                                         ; $41de: $1d
    ld h, l                                       ; $41df: $65
    nop                                           ; $41e0: $00
    ld bc, $2b00                                  ; $41e1: $01 $00 $2b
    inc b                                         ; $41e4: $04
    ld sp, $0704                                  ; $41e5: $31 $04 $07
    nop                                           ; $41e8: $00
    ld [bc], a                                    ; $41e9: $02
    nop                                           ; $41ea: $00
    pop af                                        ; $41eb: $f1
    ld [hl], l                                    ; $41ec: $75
    ld a, a                                       ; $41ed: $7f
    ld h, e                                       ; $41ee: $63
    ld d, a                                       ; $41ef: $57
    ld b, d                                       ; $41f0: $42
    nop                                           ; $41f1: $00
    jr nz, @-$25                                  ; $41f2: $20 $d9

    ld l, $3e                                     ; $41f4: $2e $3e
    ld d, a                                       ; $41f6: $57
    ld b, h                                       ; $41f7: $44
    ld [$1001], sp                                ; $41f8: $08 $01 $10
    sbc l                                         ; $41fb: $9d
    ld a, [hl+]                                   ; $41fc: $2a
    ld d, h                                       ; $41fd: $54
    ld [$6bdf], sp                                ; $41fe: $08 $df $6b
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    sub $18                                       ; $4203: $d6 $18
    sbc a                                         ; $4205: $9f
    ld d, d                                       ; $4206: $52
    inc e                                         ; $4207: $1c
    ld hl, $0000                                  ; $4208: $21 $00 $00
    cp a                                          ; $420b: $bf
    ld d, [hl]                                    ; $420c: $56
    inc c                                         ; $420d: $0c
    nop                                           ; $420e: $00
    call $0118                                    ; $420f: $cd $18 $01
    nop                                           ; $4212: $00
    cp [hl]                                       ; $4213: $be
    ld a, $0c                                     ; $4214: $3e $0c
    dec d                                         ; $4216: $15
    add h                                         ; $4217: $84
    db $10                                        ; $4218: $10
    ld bc, $d000                                  ; $4219: $01 $00 $d0
    ld [hl], c                                    ; $421c: $71
    dec c                                         ; $421d: $0d
    inc b                                         ; $421e: $04
    ld d, e                                       ; $421f: $53
    ld [$0424], sp                                ; $4220: $08 $24 $04
    ret nc                                        ; $4223: $d0

    ld [hl], c                                    ; $4224: $71
    ld e, a                                       ; $4225: $5f
    ld d, a                                       ; $4226: $57
    halt                                          ; $4227: $76
    ld b, [hl]                                    ; $4228: $46
    nop                                           ; $4229: $00
    inc e                                         ; $422a: $1c
    dec sp                                        ; $422b: $3b
    cpl                                           ; $422c: $2f
    rst $18                                       ; $422d: $df
    ld l, e                                       ; $422e: $6b
    adc h                                         ; $422f: $8c
    ld sp, $0003                                  ; $4230: $31 $03 $00
    sbc l                                         ; $4233: $9d
    rra                                           ; $4234: $1f
    rst $38                                       ; $4235: $ff
    ld a, e                                       ; $4236: $7b
    stop                                          ; $4237: $10 $00
    ld bc, $af00                                  ; $4239: $01 $00 $af
    ld l, l                                       ; $423c: $6d
    cpl                                           ; $423d: $2f
    inc b                                         ; $423e: $04
    ld a, d                                       ; $423f: $7a
    inc c                                         ; $4240: $0c
    ld [bc], a                                    ; $4241: $02
    nop                                           ; $4242: $00
    db $fd                                        ; $4243: $fd
    inc e                                         ; $4244: $1c
    ld c, [hl]                                    ; $4245: $4e
    ld [$427d], sp                                ; $4246: $08 $7d $42
    jr nz, jr_0b3_424f                            ; $4249: $20 $04

    ld a, e                                       ; $424b: $7b
    ld a, [hl-]                                   ; $424c: $3a
    sbc a                                         ; $424d: $9f
    ld h, e                                       ; $424e: $63

jr_0b3_424f:
    inc c                                         ; $424f: $0c
    dec d                                         ; $4250: $15
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    rst $08                                       ; $4253: $cf
    ld [hl], c                                    ; $4254: $71
    push de                                       ; $4255: $d5
    add hl, hl                                    ; $4256: $29
    ld [hl-], a                                   ; $4257: $32
    inc b                                         ; $4258: $04
    inc hl                                        ; $4259: $23
    nop                                           ; $425a: $00
    rst $08                                       ; $425b: $cf
    ld [hl], c                                    ; $425c: $71
    ld a, a                                       ; $425d: $7f
    ld e, e                                       ; $425e: $5b
    sub $29                                       ; $425f: $d6 $29
    nop                                           ; $4261: $00
    inc e                                         ; $4262: $1c
    or a                                          ; $4263: $b7
    ld a, [de]                                    ; $4264: $1a
    ld e, l                                       ; $4265: $5d
    ld d, a                                       ; $4266: $57
    ld [$0218], a                                 ; $4267: $ea $18 $02
    nop                                           ; $426a: $00
    sbc [hl]                                      ; $426b: $9e
    rlca                                          ; $426c: $07
    sbc e                                         ; $426d: $9b
    db $10                                        ; $426e: $10
    rst $18                                       ; $426f: $df
    ld d, a                                       ; $4270: $57
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    xor a                                         ; $4273: $af
    ld l, l                                       ; $4274: $6d
    ld [hl], l                                    ; $4275: $75
    inc c                                         ; $4276: $0c
    sbc d                                         ; $4277: $9a
    stop                                          ; $4278: $10 $00
    nop                                           ; $427a: $00
    adc $59                                       ; $427b: $ce $59
    rst $38                                       ; $427d: $ff
    ld a, a                                       ; $427e: $7f
    dec bc                                        ; $427f: $0b
    nop                                           ; $4280: $00
    ld [hl+], a                                   ; $4281: $22
    nop                                           ; $4282: $00
    ld [hl-], a                                   ; $4283: $32
    ld a, d                                       ; $4284: $7a
    ld [hl], b                                    ; $4285: $70
    dec e                                         ; $4286: $1d
    db $dd                                        ; $4287: $dd
    ld b, [hl]                                    ; $4288: $46
    nop                                           ; $4289: $00
    nop                                           ; $428a: $00
    xor a                                         ; $428b: $af
    ld l, l                                       ; $428c: $6d
    ld d, l                                       ; $428d: $55
    ld [$0858], sp                                ; $428e: $08 $58 $08
    ld b, h                                       ; $4291: $44
    inc b                                         ; $4292: $04
    xor a                                         ; $4293: $af
    ld l, l                                       ; $4294: $6d
    ld a, [hl-]                                   ; $4295: $3a
    ld [hl-], a                                   ; $4296: $32
    ld e, a                                       ; $4297: $5f
    ld d, e                                       ; $4298: $53
    nop                                           ; $4299: $00
    inc e                                         ; $429a: $1c
    xor a                                         ; $429b: $af
    ld l, l                                       ; $429c: $6d
    ld e, e                                       ; $429d: $5b
    rrca                                          ; $429e: $0f
    ld e, [hl]                                    ; $429f: $5e
    ld c, e                                       ; $42a0: $4b
    nop                                           ; $42a1: $00
    ld [$6dae], sp                                ; $42a2: $08 $ae $6d
    ld e, e                                       ; $42a5: $5b
    rra                                           ; $42a6: $1f
    rst $38                                       ; $42a7: $ff
    ld a, a                                       ; $42a8: $7f
    nop                                           ; $42a9: $00
    nop                                           ; $42aa: $00
    xor [hl]                                      ; $42ab: $ae
    ld l, l                                       ; $42ac: $6d
    dec c                                         ; $42ad: $0d
    nop                                           ; $42ae: $00
    ld a, c                                       ; $42af: $79
    ld [$0000], sp                                ; $42b0: $08 $00 $00
    sbc $42                                       ; $42b3: $de $42
    rst $38                                       ; $42b5: $ff
    ld a, a                                       ; $42b6: $7f
    rst $00                                       ; $42b7: $c7
    db $10                                        ; $42b8: $10
    inc hl                                        ; $42b9: $23
    nop                                           ; $42ba: $00
    ld a, h                                       ; $42bb: $7c
    ld [hl], $50                                  ; $42bc: $36 $50
    dec e                                         ; $42be: $1d
    ld e, a                                       ; $42bf: $5f
    ld e, e                                       ; $42c0: $5b
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    adc [hl]                                      ; $42c3: $8e
    ld l, c                                       ; $42c4: $69
    adc [hl]                                      ; $42c5: $8e
    ld l, l                                       ; $42c6: $6d
    xor a                                         ; $42c7: $af
    ld l, l                                       ; $42c8: $6d
    ld h, [hl]                                    ; $42c9: $66
    ld [$6d8e], sp                                ; $42ca: $08 $8e $6d
    jr c, jr_0b3_4301                             ; $42cd: $38 $32

    ld e, a                                       ; $42cf: $5f
    ld d, e                                       ; $42d0: $53
    nop                                           ; $42d1: $00
    inc e                                         ; $42d2: $1c
    sub [hl]                                      ; $42d3: $96
    ld d, $ae                                     ; $42d4: $16 $ae
    ld l, c                                       ; $42d6: $69
    sbc a                                         ; $42d7: $9f
    ld e, a                                       ; $42d8: $5f
    nop                                           ; $42d9: $00
    db $10                                        ; $42da: $10
    ld d, e                                       ; $42db: $53
    ld c, $8e                                     ; $42dc: $0e $8e
    ld l, c                                       ; $42de: $69
    sbc [hl]                                      ; $42df: $9e
    dec bc                                        ; $42e0: $0b
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    adc [hl]                                      ; $42e3: $8e
    ld l, c                                       ; $42e4: $69
    stop                                          ; $42e5: $10 $00
    ld e, c                                       ; $42e7: $59
    ld [$0021], sp                                ; $42e8: $08 $21 $00
    rst $30                                       ; $42eb: $f7
    dec l                                         ; $42ec: $2d
    inc c                                         ; $42ed: $0c
    add hl, de                                    ; $42ee: $19
    ccf                                           ; $42ef: $3f
    ld d, e                                       ; $42f0: $53
    nop                                           ; $42f1: $00
    inc b                                         ; $42f2: $04
    ccf                                           ; $42f3: $3f
    ld d, a                                       ; $42f4: $57
    or d                                          ; $42f5: $b2
    add hl, hl                                    ; $42f6: $29
    sbc $77                                       ; $42f7: $de $77
    adc [hl]                                      ; $42f9: $8e
    ld l, c                                       ; $42fa: $69
    ccf                                           ; $42fb: $3f
    ld d, a                                       ; $42fc: $57
    or d                                          ; $42fd: $b2
    add hl, hl                                    ; $42fe: $29
    sbc $77                                       ; $42ff: $de $77

jr_0b3_4301:
    inc hl                                        ; $4301: $23
    nop                                           ; $4302: $00

Jump_0b3_4303:
    adc [hl]                                      ; $4303: $8e
    ld h, c                                       ; $4304: $61
    rra                                           ; $4305: $1f
    ld c, a                                       ; $4306: $4f
    ld l, a                                       ; $4307: $6f
    ld hl, $1c00                                  ; $4308: $21 $00 $1c
    ld [hl], h                                    ; $430b: $74
    ld a, [bc]                                    ; $430c: $0a
    adc [hl]                                      ; $430d: $8e
    ld l, c                                       ; $430e: $69
    rst $18                                       ; $430f: $df
    ld h, a                                       ; $4310: $67
    nop                                           ; $4311: $00
    inc d                                         ; $4312: $14
    adc l                                         ; $4313: $8d
    ld l, c                                       ; $4314: $69
    ld [hl-], a                                   ; $4315: $32
    ld c, $9e                                     ; $4316: $0e $9e
    rlca                                          ; $4318: $07
    nop                                           ; $4319: $00
    nop                                           ; $431a: $00
    adc l                                         ; $431b: $8d
    ld l, c                                       ; $431c: $69
    ld e, h                                       ; $431d: $5c
    ld [$0009], sp                                ; $431e: $08 $09 $00
    ld bc, $9200                                  ; $4321: $01 $00 $92
    dec h                                         ; $4324: $25
    sbc $46                                       ; $4325: $de $46
    add hl, bc                                    ; $4327: $09
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    inc b                                         ; $432a: $04
    push de                                       ; $432b: $d5
    add hl, hl                                    ; $432c: $29
    ccf                                           ; $432d: $3f
    ld e, e                                       ; $432e: $5b
    sbc c                                         ; $432f: $99
    ld b, d                                       ; $4330: $42
    ld l, l                                       ; $4331: $6d
    ld h, l                                       ; $4332: $65
    adc l                                         ; $4333: $8d
    ld l, c                                       ; $4334: $69
    ld l, l                                       ; $4335: $6d
    ld l, c                                       ; $4336: $69
    sbc c                                         ; $4337: $99
    ld b, d                                       ; $4338: $42
    inc bc                                        ; $4339: $03
    nop                                           ; $433a: $00
    rst $38                                       ; $433b: $ff
    ld c, d                                       ; $433c: $4a
    ld l, l                                       ; $433d: $6d
    ld h, l                                       ; $433e: $65
    ld a, a                                       ; $433f: $7f
    ld e, e                                       ; $4340: $5b
    nop                                           ; $4341: $00
    inc e                                         ; $4342: $1c
    or [hl]                                       ; $4343: $b6
    ld a, [bc]                                    ; $4344: $0a
    ld l, l                                       ; $4345: $6d
    ld l, c                                       ; $4346: $69
    ld a, a                                       ; $4347: $7f
    ld e, a                                       ; $4348: $5f
    nop                                           ; $4349: $00
    nop                                           ; $434a: $00
    ld l, l                                       ; $434b: $6d
    ld h, l                                       ; $434c: $65
    ld [hl-], a                                   ; $434d: $32
    ld c, $00                                     ; $434e: $0e $00
    jr nz, jr_0b3_4353                            ; $4350: $20 $01

    nop                                           ; $4352: $00

jr_0b3_4353:
    dec l                                         ; $4353: $2d
    inc b                                         ; $4354: $04
    ld l, l                                       ; $4355: $6d
    ld h, l                                       ; $4356: $65
    ld d, h                                       ; $4357: $54
    ld [$0000], sp                                ; $4358: $08 $00 $00
    ld l, l                                       ; $435b: $6d
    ld h, l                                       ; $435c: $65
    ld l, $04                                     ; $435d: $2e $04
    inc hl                                        ; $435f: $23
    inc b                                         ; $4360: $04
    inc hl                                        ; $4361: $23
    inc b                                         ; $4362: $04
    call nc, $ff3d                                ; $4363: $d4 $3d $ff
    ld b, [hl]                                    ; $4366: $46
    rst $38                                       ; $4367: $ff
    ld a, a                                       ; $4368: $7f
    nop                                           ; $4369: $00
    nop                                           ; $436a: $00
    ld l, l                                       ; $436b: $6d
    ld h, l                                       ; $436c: $65
    ld a, [hl]                                    ; $436d: $7e
    ld h, a                                       ; $436e: $67
    rst $38                                       ; $436f: $ff
    ld a, a                                       ; $4370: $7f
    inc bc                                        ; $4371: $03
    nop                                           ; $4372: $00
    ld [hl], $3e                                  ; $4373: $36 $3e
    ld l, h                                       ; $4375: $6c

jr_0b3_4376:
    ld h, l                                       ; $4376: $65
    ccf                                           ; $4377: $3f
    ld c, a                                       ; $4378: $4f
    nop                                           ; $4379: $00
    inc e                                         ; $437a: $1c
    ld [hl-], a                                   ; $437b: $32
    ld c, $6d                                     ; $437c: $0e $6d
    ld h, l                                       ; $437e: $65
    ld e, h                                       ; $437f: $5c
    rrca                                          ; $4380: $0f
    nop                                           ; $4381: $00
    ld [$1211], sp                                ; $4382: $08 $11 $12
    ld a, [de]                                    ; $4385: $1a
    inc bc                                        ; $4386: $03
    db $fc                                        ; $4387: $fc
    dec a                                         ; $4388: $3d
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    jr nc, jr_0b3_4391                            ; $438b: $30 $04

    ld e, c                                       ; $438d: $59
    ld [$0008], sp                                ; $438e: $08 $08 $00

jr_0b3_4391:
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    ld c, h                                       ; $4393: $4c
    ld h, l                                       ; $4394: $65
    ld l, h                                       ; $4395: $6c
    ld h, l                                       ; $4396: $65
    ld l, l                                       ; $4397: $6d
    ld h, l                                       ; $4398: $65
    ld [hl+], a                                   ; $4399: $22
    nop                                           ; $439a: $00
    ld c, h                                       ; $439b: $4c
    ld h, l                                       ; $439c: $65
    call c, $ff46                                 ; $439d: $dc $46 $ff
    ld [hl], a                                    ; $43a0: $77
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    ld c, h                                       ; $43a3: $4c
    ld h, c                                       ; $43a4: $61
    ld l, h                                       ; $43a5: $6c
    ld h, l                                       ; $43a6: $65
    ld c, h                                       ; $43a7: $4c
    ld h, l                                       ; $43a8: $65
    inc bc                                        ; $43a9: $03
    nop                                           ; $43aa: $00
    db $dd                                        ; $43ab: $dd
    ld b, [hl]                                    ; $43ac: $46
    ld c, h                                       ; $43ad: $4c
    ld h, l                                       ; $43ae: $65
    sbc a                                         ; $43af: $9f
    ld e, a                                       ; $43b0: $5f
    ld bc, $b600                                  ; $43b1: $01 $00 $b6
    ld b, $00                                     ; $43b4: $06 $00
    jr nz, jr_0b3_4376                            ; $43b6: $20 $be

    rla                                           ; $43b8: $17
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    ld a, e                                       ; $43bb: $7b
    inc c                                         ; $43bc: $0c
    jp nc, $fc19                                  ; $43bd: $d2 $19 $fc

    dec a                                         ; $43c0: $3d
    nop                                           ; $43c1: $00
    nop                                           ; $43c2: $00
    ld c, h                                       ; $43c3: $4c
    ld h, c                                       ; $43c4: $61
    ld d, l                                       ; $43c5: $55
    ld [$0005], sp                                ; $43c6: $08 $05 $00
    ld h, $04                                     ; $43c9: $26 $04
    ld c, h                                       ; $43cb: $4c
    ld h, c                                       ; $43cc: $61
    ld c, h                                       ; $43cd: $4c
    ld h, l                                       ; $43ce: $65
    dec b                                         ; $43cf: $05
    nop                                           ; $43d0: $00
    ld b, [hl]                                    ; $43d1: $46
    inc b                                         ; $43d2: $04
    rst $30                                       ; $43d3: $f7
    ld b, l                                       ; $43d4: $45
    cp a                                          ; $43d5: $bf
    inc d                                         ; $43d6: $14
    ld [hl], e                                    ; $43d7: $73
    inc c                                         ; $43d8: $0c
    ld c, e                                       ; $43d9: $4b
    ld h, c                                       ; $43da: $61
    ld c, h                                       ; $43db: $4c
    ld h, c                                       ; $43dc: $61
    cp a                                          ; $43dd: $bf
    inc d                                         ; $43de: $14
    ld [hl], e                                    ; $43df: $73
    inc c                                         ; $43e0: $0c
    ld b, [hl]                                    ; $43e1: $46
    ld [$533f], sp                                ; $43e2: $08 $3f $53
    ld c, e                                       ; $43e5: $4b
    ld h, c                                       ; $43e6: $61
    rst $38                                       ; $43e7: $ff
    ld [hl], a                                    ; $43e8: $77
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    add hl, de                                    ; $43eb: $19
    rlca                                          ; $43ec: $07
    cp [hl]                                       ; $43ed: $be
    ccf                                           ; $43ee: $3f
    nop                                           ; $43ef: $00
    jr nz, jr_0b3_43f2                            ; $43f0: $20 $00

jr_0b3_43f2:
    nop                                           ; $43f2: $00
    halt                                          ; $43f3: $76
    inc c                                         ; $43f4: $0c
    ld [hl], h                                    ; $43f5: $74
    dec l                                         ; $43f6: $2d
    ld a, $25                                     ; $43f7: $3e $25
    nop                                           ; $43f9: $00
    nop                                           ; $43fa: $00
    dec hl                                        ; $43fb: $2b
    ld h, c                                       ; $43fc: $61
    ld c, e                                       ; $43fd: $4b
    ld h, c                                       ; $43fe: $61
    ld bc, $0200                                  ; $43ff: $01 $00 $02
    nop                                           ; $4402: $00
    adc l                                         ; $4403: $8d
    ld e, l                                       ; $4404: $5d
    cp a                                          ; $4405: $bf
    inc d                                         ; $4406: $14
    ld [hl], d                                    ; $4407: $72
    inc c                                         ; $4408: $0c
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    ld e, h                                       ; $440b: $5c
    ld a, $8c                                     ; $440c: $3e $8c
    inc c                                         ; $440e: $0c
    ld b, $00                                     ; $440f: $06 $00
    nop                                           ; $4411: $00

jr_0b3_4412:
    nop                                           ; $4412: $00
    dec hl                                        ; $4413: $2b
    ld e, l                                       ; $4414: $5d
    jr jr_0b3_447a                                ; $4415: $18 $63

    ld h, $04                                     ; $4417: $26 $04
    inc bc                                        ; $4419: $03
    nop                                           ; $441a: $00
    ld e, $53                                     ; $441b: $1e $53
    dec hl                                        ; $441d: $2b
    ld e, l                                       ; $441e: $5d
    push de                                       ; $441f: $d5
    add hl, hl                                    ; $4420: $29
    ld bc, $f800                                  ; $4421: $01 $00 $f8
    ld a, [bc]                                    ; $4424: $0a
    sbc a                                         ; $4425: $9f
    ld h, a                                       ; $4426: $67
    nop                                           ; $4427: $00
    jr nz, jr_0b3_442a                            ; $4428: $20 $00

jr_0b3_442a:
    nop                                           ; $442a: $00
    ld sp, $3a04                                  ; $442b: $31 $04 $3a
    inc bc                                        ; $442e: $03
    inc b                                         ; $442f: $04
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    ld a, [hl+]                                   ; $4433: $2a
    ld e, l                                       ; $4434: $5d
    dec hl                                        ; $4435: $2b
    ld e, l                                       ; $4436: $5d
    dec hl                                        ; $4437: $2b
    ld h, c                                       ; $4438: $61
    ld bc, $f700                                  ; $4439: $01 $00 $f7
    ld e, [hl]                                    ; $443c: $5e
    inc [hl]                                      ; $443d: $34
    inc b                                         ; $443e: $04
    rst $38                                       ; $443f: $ff
    ld a, a                                       ; $4440: $7f
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    inc a                                         ; $4443: $3c
    dec h                                         ; $4444: $25
    adc d                                         ; $4445: $8a
    inc c                                         ; $4446: $0c
    ld a, h                                       ; $4447: $7c
    ld a, [hl-]                                   ; $4448: $3a
    ld [bc], a                                    ; $4449: $02
    nop                                           ; $444a: $00
    adc l                                         ; $444b: $8d
    ld c, l                                       ; $444c: $4d
    rst $38                                       ; $444d: $ff
    ld a, a                                       ; $444e: $7f
    dec a                                         ; $444f: $3d
    ld b, [hl]                                    ; $4450: $46
    ld h, $04                                     ; $4451: $26 $04
    or h                                          ; $4453: $b4
    ld hl, $429d                                  ; $4454: $21 $9d $42
    ld e, $57                                     ; $4457: $1e $57
    nop                                           ; $4459: $00
    jr nz, jr_0b3_4412                            ; $445a: $20 $b6

    ld a, [bc]                                    ; $445c: $0a
    rst $38                                       ; $445d: $ff
    ld [hl], a                                    ; $445e: $77
    inc bc                                        ; $445f: $03
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    ld de, $0012                                  ; $4463: $11 $12 $00
    inc e                                         ; $4466: $1c
    or a                                          ; $4467: $b7
    ld a, [bc]                                    ; $4468: $0a
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00

jr_0b3_446b:
    ld a, [bc]                                    ; $446b: $0a
    ld e, l                                       ; $446c: $5d
    ld a, [de]                                    ; $446d: $1a
    inc bc                                        ; $446e: $03
    ld h, $04                                     ; $446f: $26 $04
    inc bc                                        ; $4471: $03
    nop                                           ; $4472: $00
    ld sp, $7a46                                  ; $4473: $31 $46 $7a
    inc c                                         ; $4476: $0c
    rst $38                                       ; $4477: $ff
    ld a, a                                       ; $4478: $7f
    nop                                           ; $4479: $00

jr_0b3_447a:
    nop                                           ; $447a: $00
    ld d, d                                       ; $447b: $52
    ld c, d                                       ; $447c: $4a
    rst $38                                       ; $447d: $ff
    ld a, a                                       ; $447e: $7f
    and $1c                                       ; $447f: $e6 $1c
    ld [bc], a                                    ; $4481: $02
    nop                                           ; $4482: $00
    or l                                          ; $4483: $b5
    ld d, [hl]                                    ; $4484: $56
    ld [hl], e                                    ; $4485: $73
    inc c                                         ; $4486: $0c
    inc e                                         ; $4487: $1c
    ld b, d                                       ; $4488: $42
    inc b                                         ; $4489: $04
    nop                                           ; $448a: $00
    jr jr_0b3_44bb                                ; $448b: $18 $2e

    cp $4e                                        ; $448d: $fe $4e
    ld l, $08                                     ; $448f: $2e $08
    nop                                           ; $4491: $00
    jr nz, @+$01                                  ; $4492: $20 $ff

    ld a, e                                       ; $4494: $7b
    inc bc                                        ; $4495: $03
    nop                                           ; $4496: $00
    ld l, $08                                     ; $4497: $2e $08
    nop                                           ; $4499: $00
    jr nz, jr_0b3_446b                            ; $449a: $20 $cf

    dec d                                         ; $449c: $15
    sub l                                         ; $449d: $95
    ld c, $ff                                     ; $449e: $0e $ff
    ld a, a                                       ; $44a0: $7f
    dec h                                         ; $44a1: $25
    inc b                                         ; $44a2: $04
    jp hl                                         ; $44a3: $e9


    ld e, b                                       ; $44a4: $58
    inc sp                                        ; $44a5: $33
    ld [de], a                                    ; $44a6: $12
    cp a                                          ; $44a7: $bf
    dec [hl]                                      ; $44a8: $35
    ld [hl+], a                                   ; $44a9: $22
    inc b                                         ; $44aa: $04
    sub h                                         ; $44ab: $94
    ld d, d                                       ; $44ac: $52
    ld sp, $ff04                                  ; $44ad: $31 $04 $ff
    ld a, a                                       ; $44b0: $7f
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    ld e, c                                       ; $44b3: $59
    ld l, e                                       ; $44b4: $6b
    rlca                                          ; $44b5: $07
    ld hl, $7fff                                  ; $44b6: $21 $ff $7f
    ld [bc], a                                    ; $44b9: $02
    nop                                           ; $44ba: $00

jr_0b3_44bb:
    ld d, c                                       ; $44bb: $51
    ld c, d                                       ; $44bc: $4a
    rst $38                                       ; $44bd: $ff
    ld a, a                                       ; $44be: $7f
    rra                                           ; $44bf: $1f
    ld b, d                                       ; $44c0: $42
    inc b                                         ; $44c1: $04
    nop                                           ; $44c2: $00
    rla                                           ; $44c3: $17
    ld l, $fe                                     ; $44c4: $2e $fe
    ld d, d                                       ; $44c6: $52
    rrca                                          ; $44c7: $0f
    nop                                           ; $44c8: $00
    nop                                           ; $44c9: $00
    jr nz, @+$01                                  ; $44ca: $20 $ff

    ld a, e                                       ; $44cc: $7b
    inc bc                                        ; $44cd: $03
    nop                                           ; $44ce: $00
    rrca                                          ; $44cf: $0f
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    jr nz, jr_0b3_4550                            ; $44d2: $20 $7c

    inc bc                                        ; $44d4: $03
    cp [hl]                                       ; $44d5: $be
    dec hl                                        ; $44d6: $2b
    rst $38                                       ; $44d7: $ff
    ld a, a                                       ; $44d8: $7f
    inc bc                                        ; $44d9: $03
    nop                                           ; $44da: $00
    jp hl                                         ; $44db: $e9


    ld e, b                                       ; $44dc: $58
    or [hl]                                       ; $44dd: $b6
    ld de, $3dfb                                  ; $44de: $11 $fb $3d
    ld [bc], a                                    ; $44e1: $02
    nop                                           ; $44e2: $00

jr_0b3_44e3:
    ld [hl], $46                                  ; $44e3: $36 $46
    cp a                                          ; $44e5: $bf
    ld [hl], a                                    ; $44e6: $77
    adc [hl]                                      ; $44e7: $8e
    stop                                          ; $44e8: $10 $00
    nop                                           ; $44ea: $00
    adc $39                                       ; $44eb: $ce $39
    rst $38                                       ; $44ed: $ff
    ld a, a                                       ; $44ee: $7f
    ld b, $21                                     ; $44ef: $06 $21
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    rst $38                                       ; $44f3: $ff
    ld a, a                                       ; $44f4: $7f
    add hl, sp                                    ; $44f5: $39
    dec h                                         ; $44f6: $25
    dec b                                         ; $44f7: $05
    nop                                           ; $44f8: $00
    inc b                                         ; $44f9: $04
    nop                                           ; $44fa: $00
    or $2d                                        ; $44fb: $f6 $2d
    cp $52                                        ; $44fd: $fe $52
    rrca                                          ; $44ff: $0f
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    jr nz, jr_0b3_44e3                            ; $4502: $20 $df

Call_0b3_4504:
    ld l, a                                       ; $4504: $6f
    inc bc                                        ; $4505: $03
    nop                                           ; $4506: $00
    rst $38                                       ; $4507: $ff
    ld [hl], a                                    ; $4508: $77
    nop                                           ; $4509: $00
    jr nz, @+$01                                  ; $450a: $20 $ff

    ld e, a                                       ; $450c: $5f
    cp a                                          ; $450d: $bf
    ld [hl], a                                    ; $450e: $77
    adc [hl]                                      ; $450f: $8e
    db $10                                        ; $4510: $10
    ld h, $04                                     ; $4511: $26 $04
    db $dd                                        ; $4513: $dd
    add hl, sp                                    ; $4514: $39
    ld a, h                                       ; $4515: $7c
    rrca                                          ; $4516: $0f
    rst $38                                       ; $4517: $ff
    ld e, a                                       ; $4518: $5f
    ld bc, $5e00                                  ; $4519: $01 $00 $5e
    ld c, d                                       ; $451c: $4a
    cp $7f                                        ; $451d: $fe $7f
    rrca                                          ; $451f: $0f
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    ld sp, $fe46                                  ; $4523: $31 $46 $fe
    ld a, a                                       ; $4526: $7f
    ld l, e                                       ; $4527: $6b
    dec l                                         ; $4528: $2d
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    rst $10                                       ; $452b: $d7
    jr @-$29                                      ; $452c: $18 $d5

    ld e, d                                       ; $452e: $5a
    dec b                                         ; $452f: $05
    nop                                           ; $4530: $00
    inc b                                         ; $4531: $04

jr_0b3_4532:
    nop                                           ; $4532: $00
    add hl, sp                                    ; $4533: $39
    ld [hl-], a                                   ; $4534: $32
    cp $4e                                        ; $4535: $fe $4e
    inc c                                         ; $4537: $0c
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    jr nz, jr_0b3_45ba                            ; $453a: $20 $7e

    ld h, e                                       ; $453c: $63
    inc bc                                        ; $453d: $03
    nop                                           ; $453e: $00
    sbc a                                         ; $453f: $9f
    ld h, e                                       ; $4540: $63
    nop                                           ; $4541: $00
    jr nz, jr_0b3_45a2                            ; $4542: $20 $5e

    ld c, d                                       ; $4544: $4a
    cp $7f                                        ; $4545: $fe $7f
    rrca                                          ; $4547: $0f

jr_0b3_4548:
    nop                                           ; $4548: $00
    ld b, l                                       ; $4549: $45
    ld [$221e], sp                                ; $454a: $08 $1e $22
    ld e, $4b                                     ; $454d: $1e $4b
    rst $38                                       ; $454f: $ff

jr_0b3_4550:
    ld h, a                                       ; $4550: $67
    ld bc, $b600                                  ; $4551: $01 $00 $b6
    ld d, [hl]                                    ; $4554: $56
    ld sp, $dd04                                  ; $4555: $31 $04 $dd
    add hl, sp                                    ; $4558: $39
    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    xor $3d                                       ; $455b: $ee $3d
    rst $38                                       ; $455d: $ff
    ld a, a                                       ; $455e: $7f
    jr nc, jr_0b3_45a7                            ; $455f: $30 $46

    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    rst $38                                       ; $4563: $ff
    ld a, a                                       ; $4564: $7f
    dec sp                                        ; $4565: $3b
    dec h                                         ; $4566: $25
    ld h, $04                                     ; $4567: $26 $04
    inc b                                         ; $4569: $04
    nop                                           ; $456a: $00
    add hl, sp                                    ; $456b: $39
    ld [hl], $7f                                  ; $456c: $36 $7f
    ld e, e                                       ; $456e: $5b
    adc [hl]                                      ; $456f: $8e
    stop                                          ; $4570: $10 $00
    jr nz, jr_0b3_4577                            ; $4572: $20 $03

    nop                                           ; $4574: $00
    ld a, a                                       ; $4575: $7f
    ld e, e                                       ; $4576: $5b

jr_0b3_4577:
    adc [hl]                                      ; $4577: $8e
    stop                                          ; $4578: $10 $00
    jr nz, jr_0b3_4532                            ; $457a: $20 $b6

    ld d, [hl]                                    ; $457c: $56
    ld sp, $dd04                                  ; $457d: $31 $04 $dd
    add hl, sp                                    ; $4580: $39
    nop                                           ; $4581: $00
    db $10                                        ; $4582: $10
    db $fc                                        ; $4583: $fc
    add hl, de                                    ; $4584: $19
    ld a, [hl]                                    ; $4585: $7e
    ld c, a                                       ; $4586: $4f
    rst $28                                       ; $4587: $ef
    inc e                                         ; $4588: $1c
    ld [bc], a                                    ; $4589: $02
    nop                                           ; $458a: $00
    sub h                                         ; $458b: $94
    ld sp, $7fff                                  ; $458c: $31 $ff $7f
    rst $38                                       ; $458f: $ff
    dec a                                         ; $4590: $3d
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    ld d, d                                       ; $4593: $52
    ld c, d                                       ; $4594: $4a
    rst $38                                       ; $4595: $ff
    ld a, a                                       ; $4596: $7f
    ld c, b                                       ; $4597: $48
    add hl, hl                                    ; $4598: $29
    ld bc, $9300                                  ; $4599: $01 $00 $93
    ld d, d                                       ; $459c: $52
    sbc $7b                                       ; $459d: $de $7b
    rst $38                                       ; $459f: $ff
    dec a                                         ; $45a0: $3d
    nop                                           ; $45a1: $00

jr_0b3_45a2:
    nop                                           ; $45a2: $00
    cp l                                          ; $45a3: $bd
    ld a, $e7                                     ; $45a4: $3e $e7
    inc e                                         ; $45a6: $1c

jr_0b3_45a7:
    inc bc                                        ; $45a7: $03
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    jr nz, jr_0b3_45af                            ; $45aa: $20 $03

    nop                                           ; $45ac: $00
    rst $20                                       ; $45ad: $e7
    inc e                                         ; $45ae: $1c

jr_0b3_45af:
    inc bc                                        ; $45af: $03
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    jr nz, jr_0b3_4548                            ; $45b2: $20 $94

    ld sp, $7fff                                  ; $45b4: $31 $ff $7f
    rst $38                                       ; $45b7: $ff
    dec a                                         ; $45b8: $3d
    nop                                           ; $45b9: $00

jr_0b3_45ba:
    ld [$0e74], sp                                ; $45ba: $08 $74 $0e
    rst $38                                       ; $45bd: $ff
    ld [hl], e                                    ; $45be: $73
    ld a, l                                       ; $45bf: $7d
    rrca                                          ; $45c0: $0f
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    ld de, $5c12                                  ; $45c3: $11 $12 $5c
    inc bc                                        ; $45c6: $03
    cp [hl]                                       ; $45c7: $be
    ccf                                           ; $45c8: $3f
    ld de, $5312                                  ; $45c9: $11 $12 $53
    ld c, $b6                                     ; $45cc: $0e $b6
    ld a, [bc]                                    ; $45ce: $0a
    ld [hl-], a                                   ; $45cf: $32
    ld [de], a                                    ; $45d0: $12
    ld [hl-], a                                   ; $45d1: $32
    ld c, $be                                     ; $45d2: $0e $be
    inc sp                                        ; $45d4: $33
    ld e, h                                       ; $45d5: $5c
    rlca                                          ; $45d6: $07
    rst $38                                       ; $45d7: $ff
    ld l, a                                       ; $45d8: $6f
    nop                                           ; $45d9: $00
    jr nz, jr_0b3_4650                            ; $45da: $20 $74

    ld a, [bc]                                    ; $45dc: $0a
    sbc $5b                                       ; $45dd: $de $5b
    ld a, l                                       ; $45df: $7d
    rlca                                          ; $45e0: $07
    nop                                           ; $45e1: $00
    jr nz, jr_0b3_4658                            ; $45e2: $20 $74

    ld a, [bc]                                    ; $45e4: $0a
    sbc $5b                                       ; $45e5: $de $5b
    ld a, l                                       ; $45e7: $7d
    rlca                                          ; $45e8: $07
    nop                                           ; $45e9: $00

jr_0b3_45ea:
    jr nz, jr_0b3_45fd                            ; $45ea: $20 $11

    ld [de], a                                    ; $45ec: $12
    ld e, h                                       ; $45ed: $5c
    inc bc                                        ; $45ee: $03

jr_0b3_45ef:
    cp [hl]                                       ; $45ef: $be
    ccf                                           ; $45f0: $3f
    nop                                           ; $45f1: $00
    jr nz, @+$55                                  ; $45f2: $20 $53

    ld d, $9d                                     ; $45f4: $16 $9d
    dec bc                                        ; $45f6: $0b
    sbc $3f                                       ; $45f7: $de $3f
    dec sp                                        ; $45f9: $3b
    inc bc                                        ; $45fa: $03
    rst $38                                       ; $45fb: $ff
    ld l, a                                       ; $45fc: $6f

jr_0b3_45fd:
    cp [hl]                                       ; $45fd: $be
    dec de                                        ; $45fe: $1b
    cp [hl]                                       ; $45ff: $be
    dec sp                                        ; $4600: $3b
    nop                                           ; $4601: $00
    jr nz, jr_0b3_4615                            ; $4602: $20 $11

    ld [de], a                                    ; $4604: $12
    ld [hl], h                                    ; $4605: $74
    ld c, $b6                                     ; $4606: $0e $b6
    ld a, [bc]                                    ; $4608: $0a
    nop                                           ; $4609: $00
    jr nz, @+$3d                                  ; $460a: $20 $3b

    rlca                                          ; $460c: $07
    cp [hl]                                       ; $460d: $be
    dec sp                                        ; $460e: $3b
    rst $38                                       ; $460f: $ff
    ld l, a                                       ; $4610: $6f
    nop                                           ; $4611: $00
    jr nz, @+$55                                  ; $4612: $20 $53

    ld a, [bc]                                    ; $4614: $0a

jr_0b3_4615:
    sbc $53                                       ; $4615: $de $53
    ld a, h                                       ; $4617: $7c
    dec bc                                        ; $4618: $0b
    nop                                           ; $4619: $00
    jr nz, @+$55                                  ; $461a: $20 $53

    ld a, [bc]                                    ; $461c: $0a
    sbc $53                                       ; $461d: $de $53
    ld a, h                                       ; $461f: $7c
    dec bc                                        ; $4620: $0b

jr_0b3_4621:
    nop                                           ; $4621: $00
    jr nz, jr_0b3_45ea                            ; $4622: $20 $c6

    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    jr nz, @-$5b                                  ; $4626: $20 $a3

    ld bc, $2000                                  ; $4628: $01 $00 $20
    add $00                                       ; $462b: $c6 $00
    nop                                           ; $462d: $00
    jr nz, @-$5b                                  ; $462e: $20 $a3

    ld bc, $2000                                  ; $4630: $01 $00 $20
    add $00                                       ; $4633: $c6 $00
    nop                                           ; $4635: $00
    jr nz, @-$5b                                  ; $4636: $20 $a3

    ld bc, $0000                                  ; $4638: $01 $00 $00
    rst $38                                       ; $463b: $ff
    ld a, a                                       ; $463c: $7f
    nop                                           ; $463d: $00
    jr nz, jr_0b3_4680                            ; $463e: $20 $40

    stop                                          ; $4640: $10 $00
    jr nz, @+$01                                  ; $4642: $20 $ff

    ld a, a                                       ; $4644: $7f
    nop                                           ; $4645: $00
    jr nz, jr_0b3_4688                            ; $4646: $20 $40

    stop                                          ; $4648: $10 $00
    jr nz, jr_0b3_466c                            ; $464a: $20 $20

    jr nz, jr_0b3_466e                            ; $464c: $20 $20

    inc h                                         ; $464e: $24
    ld b, b                                       ; $464f: $40

jr_0b3_4650:
    stop                                          ; $4650: $10 $00
    jr nz, jr_0b3_4694                            ; $4652: $20 $40

    inc l                                         ; $4654: $2c
    jr nz, jr_0b3_467b                            ; $4655: $20 $24

    ld b, b                                       ; $4657: $40

jr_0b3_4658:
    stop                                          ; $4658: $10 $00
    jr nz, jr_0b3_45ef                            ; $465a: $20 $93

    ld a, [de]                                    ; $465c: $1a
    sbc $4f                                       ; $465d: $de $4f
    add $00                                       ; $465f: $c6 $00

jr_0b3_4661:
    nop                                           ; $4661: $00
    jr jr_0b3_4621                                ; $4662: $18 $bd

    ld e, e                                       ; $4664: $5b
    db $10                                        ; $4665: $10
    ld d, $c6                                     ; $4666: $16 $c6
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    jr nz, @-$38                                  ; $466a: $20 $c6

jr_0b3_466c:
    nop                                           ; $466c: $00
    db $10                                        ; $466d: $10

jr_0b3_466e:
    ld d, $c6                                     ; $466e: $16 $c6
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    rst $38                                       ; $4673: $ff
    ld a, a                                       ; $4674: $7f
    nop                                           ; $4675: $00

jr_0b3_4676:
    jr nz, jr_0b3_46b8                            ; $4676: $20 $40

    stop                                          ; $4678: $10 $00
    nop                                           ; $467a: $00

jr_0b3_467b:
    nop                                           ; $467b: $00
    jr nz, jr_0b3_467e                            ; $467c: $20 $00

jr_0b3_467e:
    jr nz, jr_0b3_46c0                            ; $467e: $20 $40

jr_0b3_4680:
    stop                                          ; $4680: $10 $00
    jr nz, jr_0b3_46e4                            ; $4682: $20 $60

    inc l                                         ; $4684: $2c
    ld [c], a                                     ; $4685: $e2
    inc a                                         ; $4686: $3c
    ld b, b                                       ; $4687: $40

jr_0b3_4688:
    jr z, jr_0b3_468a                             ; $4688: $28 $00

jr_0b3_468a:
    inc e                                         ; $468a: $1c
    ld hl, $a341                                  ; $468b: $21 $41 $a3
    ld d, c                                       ; $468e: $51
    ld b, e                                       ; $468f: $43
    ld c, c                                       ; $4690: $49
    nop                                           ; $4691: $00
    jr nz, jr_0b3_46ac                            ; $4692: $20 $18

jr_0b3_4694:
    inc sp                                        ; $4694: $33
    rlca                                          ; $4695: $07
    dec b                                         ; $4696: $05
    rst $38                                       ; $4697: $ff
    ld d, a                                       ; $4698: $57
    nop                                           ; $4699: $00
    ld [$37bd], sp                                ; $469a: $08 $bd $37
    sbc $57                                       ; $469d: $de $57
    rst $38                                       ; $469f: $ff
    ld h, a                                       ; $46a0: $67
    nop                                           ; $46a1: $00
    jr jr_0b3_4661                                ; $46a2: $18 $bd

    ld b, e                                       ; $46a4: $43
    rst $38                                       ; $46a5: $ff
    ld l, e                                       ; $46a6: $6b
    add $00                                       ; $46a7: $c6 $00
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    rst $38                                       ; $46ab: $ff

jr_0b3_46ac:
    ld a, a                                       ; $46ac: $7f
    ld d, $00                                     ; $46ad: $16 $00
    ld b, e                                       ; $46af: $43
    ld c, c                                       ; $46b0: $49
    nop                                           ; $46b1: $00
    nop                                           ; $46b2: $00
    rst $38                                       ; $46b3: $ff
    ld a, a                                       ; $46b4: $7f
    nop                                           ; $46b5: $00
    jr nz, @-$7c                                  ; $46b6: $20 $82

jr_0b3_46b8:
    jr nc, jr_0b3_46ba                            ; $46b8: $30 $00

jr_0b3_46ba:
    jr nz, jr_0b3_46bd                            ; $46ba: $20 $01

    dec a                                         ; $46bc: $3d

jr_0b3_46bd:
    ld h, a                                       ; $46bd: $67
    ld l, [hl]                                    ; $46be: $6e
    ld b, h                                       ; $46bf: $44

jr_0b3_46c0:
    ld b, l                                       ; $46c0: $45
    nop                                           ; $46c1: $00
    inc e                                         ; $46c2: $1c
    adc b                                         ; $46c3: $88
    ld l, [hl]                                    ; $46c4: $6e
    jp z, Jump_000_0076                           ; $46c5: $ca $76 $00

    jr nz, jr_0b3_46ca                            ; $46c8: $20 $00

jr_0b3_46ca:
    jr nz, @-$49                                  ; $46ca: $20 $b5

    ld e, $9c                                     ; $46cc: $1e $9c
    dec hl                                        ; $46ce: $2b
    add $00                                       ; $46cf: $c6 $00
    add $00                                       ; $46d1: $c6 $00
    rst $30                                       ; $46d3: $f7
    ld e, $9c                                     ; $46d4: $1e $9c
    inc sp                                        ; $46d6: $33
    adc $0d                                       ; $46d7: $ce $0d
    add hl, hl                                    ; $46d9: $29
    add hl, bc                                    ; $46da: $09
    sub $36                                       ; $46db: $d6 $36
    rst $38                                       ; $46dd: $ff
    ld b, e                                       ; $46de: $43
    sbc $5b                                       ; $46df: $de $5b
    db $e4                                        ; $46e1: $e4
    nop                                           ; $46e2: $00
    cp h                                          ; $46e3: $bc

jr_0b3_46e4:
    ld b, e                                       ; $46e4: $43
    ld d, $00                                     ; $46e5: $16 $00
    ld h, l                                       ; $46e7: $65
    ld b, $00                                     ; $46e8: $06 $00
    ld [$7fff], sp                                ; $46ea: $08 $ff $7f
    add l                                         ; $46ed: $85
    ld c, l                                       ; $46ee: $4d
    ld c, c                                       ; $46ef: $49
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    jr nz, jr_0b3_4676                            ; $46f2: $20 $82

    ld d, l                                       ; $46f4: $55
    xor c                                         ; $46f5: $a9
    halt                                          ; $46f6: $76
    ld [c], a                                     ; $46f7: $e2
    jr nc, jr_0b3_46fa                            ; $46f8: $30 $00

jr_0b3_46fa:
    inc d                                         ; $46fa: $14
    ld bc, $0039                                  ; $46fb: $01 $39 $00
    jr nz, jr_0b3_4740                            ; $46fe: $20 $40

    stop                                          ; $4700: $10 $00
    jr nz, jr_0b3_46b8                            ; $4702: $20 $b4

    ld a, [de]                                    ; $4704: $1a
    sbc h                                         ; $4705: $9c
    daa                                           ; $4706: $27
    add $00                                       ; $4707: $c6 $00
    add $00                                       ; $4709: $c6 $00
    or l                                          ; $470b: $b5
    ld a, [de]                                    ; $470c: $1a
    sbc h                                         ; $470d: $9c
    inc sp                                        ; $470e: $33
    xor l                                         ; $470f: $ad
    dec c                                         ; $4710: $0d
    add $00                                       ; $4711: $c6 $00
    sbc h                                         ; $4713: $9c
    dec hl                                        ; $4714: $2b
    rst $28                                       ; $4715: $ef
    ld de, $53bc                                  ; $4716: $11 $bc $53
    jr z, jr_0b3_4724                             ; $4719: $28 $09

    push de                                       ; $471b: $d5
    ld a, [de]                                    ; $471c: $1a
    ld [c], a                                     ; $471d: $e2
    ld [bc], a                                    ; $471e: $02
    sbc [hl]                                      ; $471f: $9e
    ld b, a                                       ; $4720: $47
    jp nz, $ff00                                  ; $4721: $c2 $00 $ff

jr_0b3_4724:
    ld a, a                                       ; $4724: $7f
    ld d, $00                                     ; $4725: $16 $00
    ld bc, $0039                                  ; $4727: $01 $39 $00
    jr jr_0b3_478d                                ; $472a: $18 $61

    ld c, l                                       ; $472c: $4d
    db $ec                                        ; $472d: $ec
    halt                                          ; $472e: $76
    dec b                                         ; $472f: $05
    ld l, d                                       ; $4730: $6a
    nop                                           ; $4731: $00
    jr jr_0b3_4755                                ; $4732: $18 $21

    dec a                                         ; $4734: $3d
    add d                                         ; $4735: $82
    inc l                                         ; $4736: $2c
    nop                                           ; $4737: $00
    jr nz, jr_0b3_473a                            ; $4738: $20 $00

jr_0b3_473a:
    jr nz, jr_0b3_478d                            ; $473a: $20 $51

    ld d, $29                                     ; $473c: $16 $29
    dec c                                         ; $473e: $0d
    ld e, d                                       ; $473f: $5a

jr_0b3_4740:
    inc hl                                        ; $4740: $23
    sbc $2b                                       ; $4741: $de $2b
    sbc $3f                                       ; $4743: $de $3f
    cp $4f                                        ; $4745: $fe $4f
    sbc $33                                       ; $4747: $de $33
    sub h                                         ; $4749: $94
    ld a, [de]                                    ; $474a: $1a
    sbc h                                         ; $474b: $9c
    inc hl                                        ; $474c: $23
    rst $38                                       ; $474d: $ff
    dec hl                                        ; $474e: $2b
    jr jr_0b3_4780                                ; $474f: $18 $2f

    add e                                         ; $4751: $83
    inc c                                         ; $4752: $0c
    dec d                                         ; $4753: $15
    ld a, [de]                                    ; $4754: $1a

jr_0b3_4755:
    inc h                                         ; $4755: $24
    ld a, [bc]                                    ; $4756: $0a
    ld e, h                                       ; $4757: $5c
    scf                                           ; $4758: $37
    ld b, d                                       ; $4759: $42
    inc b                                         ; $475a: $04
    rst $38                                       ; $475b: $ff
    ld a, a                                       ; $475c: $7f
    dec d                                         ; $475d: $15
    nop                                           ; $475e: $00
    ld b, e                                       ; $475f: $43
    ld [bc], a                                    ; $4760: $02
    ld b, b                                       ; $4761: $40
    inc e                                         ; $4762: $1c
    inc b                                         ; $4763: $04
    ld l, [hl]                                    ; $4764: $6e
    ld h, c                                       ; $4765: $61
    ld c, l                                       ; $4766: $4d
    db $eb                                        ; $4767: $eb

jr_0b3_4768:
    ld a, d                                       ; $4768: $7a
    nop                                           ; $4769: $00
    inc e                                         ; $476a: $1c
    ld [hl+], a                                   ; $476b: $22
    ld b, l                                       ; $476c: $45
    add hl, bc                                    ; $476d: $09
    ld e, [hl]                                    ; $476e: $5e
    pop bc                                        ; $476f: $c1
    inc [hl]                                      ; $4770: $34
    add $00                                       ; $4771: $c6 $00
    xor l                                         ; $4773: $ad
    dec c                                         ; $4774: $0d
    rla                                           ; $4775: $17
    rra                                           ; $4776: $1f
    ld sp, $2912                                  ; $4777: $31 $12 $29
    dec b                                         ; $477a: $05
    rst $30                                       ; $477b: $f7
    ld e, $52                                     ; $477c: $1e $52
    ld d, $7b                                     ; $477e: $16 $7b

jr_0b3_4780:
    inc hl                                        ; $4780: $23
    add $00                                       ; $4781: $c6 $00
    db $10                                        ; $4783: $10
    ld [de], a                                    ; $4784: $12
    halt                                          ; $4785: $76
    ld e, $32                                     ; $4786: $1e $32
    ld d, $03                                     ; $4788: $16 $03
    inc bc                                        ; $478a: $03
    and $00                                       ; $478b: $e6 $00

jr_0b3_478d:
    ld h, e                                       ; $478d: $63
    inc bc                                        ; $478e: $03
    and e                                         ; $478f: $a3
    inc bc                                        ; $4790: $03
    inc b                                         ; $4791: $04
    ld bc, $0035                                  ; $4792: $01 $35 $00
    ld b, h                                       ; $4795: $44
    ld [bc], a                                    ; $4796: $02
    ret z                                         ; $4797: $c8

    nop                                           ; $4798: $00
    ld h, b                                       ; $4799: $60
    inc e                                         ; $479a: $1c
    ld h, a                                       ; $479b: $67
    ld [hl], d                                    ; $479c: $72
    ld sp, $0b00                                  ; $479d: $31 $00 $0b
    ld a, a                                       ; $47a0: $7f
    nop                                           ; $47a1: $00
    inc e                                         ; $47a2: $1c
    ld h, d                                       ; $47a3: $62
    ld c, c                                       ; $47a4: $49
    ld c, d                                       ; $47a5: $4a
    ld h, d                                       ; $47a6: $62
    add $7a                                       ; $47a7: $c6 $7a
    nop                                           ; $47a9: $00
    jr nz, jr_0b3_47f5                            ; $47aa: $20 $49

    dec b                                         ; $47ac: $05
    and l                                         ; $47ad: $a5
    nop                                           ; $47ae: $00
    rst $28                                       ; $47af: $ef
    dec c                                         ; $47b0: $0d
    inc hl                                        ; $47b1: $23
    inc bc                                        ; $47b2: $03
    and $00                                       ; $47b3: $e6 $00
    xor l                                         ; $47b5: $ad
    add hl, bc                                    ; $47b6: $09
    jp $e403                                      ; $47b7: $c3 $03 $e4


    nop                                           ; $47ba: $00
    jp $a403                                      ; $47bb: $c3 $03 $a4


    ld [bc], a                                    ; $47be: $02
    inc h                                         ; $47bf: $24
    ld [bc], a                                    ; $47c0: $02
    db $e4                                        ; $47c1: $e4
    nop                                           ; $47c2: $00
    reti                                          ; $47c3: $d9


    dec l                                         ; $47c4: $2d
    ld e, h                                       ; $47c5: $5c
    ld a, $bd                                     ; $47c6: $3e $bd
    ld c, [hl]                                    ; $47c8: $4e
    inc h                                         ; $47c9: $24
    ld bc, $0303                                  ; $47ca: $01 $03 $03
    halt                                          ; $47cd: $76
    dec e                                         ; $47ce: $1d
    ld b, a                                       ; $47cf: $47
    nop                                           ; $47d0: $00
    ld b, b                                       ; $47d1: $40
    inc c                                         ; $47d2: $0c
    and [hl]                                      ; $47d3: $a6
    ld a, d                                       ; $47d4: $7a
    add hl, de                                    ; $47d5: $19
    dec b                                         ; $47d6: $05
    ld b, e                                       ; $47d7: $43
    dec a                                         ; $47d8: $3d
    nop                                           ; $47d9: $00
    inc e                                         ; $47da: $1c
    and d                                         ; $47db: $a2
    ld e, c                                       ; $47dc: $59
    add l                                         ; $47dd: $85
    ld a, [hl]                                    ; $47de: $7e
    ld c, d                                       ; $47df: $4a
    ld h, [hl]                                    ; $47e0: $66
    nop                                           ; $47e1: $00
    jr nz, jr_0b3_4768                            ; $47e2: $20 $84

    inc c                                         ; $47e4: $0c
    ld h, $01                                     ; $47e5: $26 $01
    push bc                                       ; $47e7: $c5
    nop                                           ; $47e8: $00
    inc b                                         ; $47e9: $04
    ld bc, $02a6                                  ; $47ea: $01 $a6 $02
    di                                            ; $47ed: $f3
    db $10                                        ; $47ee: $10
    jp $a403                                      ; $47ef: $c3 $03 $a4


    nop                                           ; $47f2: $00
    reti                                          ; $47f3: $d9


    add hl, hl                                    ; $47f4: $29

jr_0b3_47f5:
    rst $38                                       ; $47f5: $ff
    ld d, [hl]                                    ; $47f6: $56
    di                                            ; $47f7: $f3
    db $10                                        ; $47f8: $10
    and e                                         ; $47f9: $a3
    inc h                                         ; $47fa: $24
    rst $18                                       ; $47fb: $df
    ld d, d                                       ; $47fc: $52
    rst $20                                       ; $47fd: $e7
    inc e                                         ; $47fe: $1c
    rra                                           ; $47ff: $1f
    ld e, e                                       ; $4800: $5b
    and e                                         ; $4801: $a3
    ld [$19db], sp                                ; $4802: $08 $db $19
    sub e                                         ; $4805: $93
    inc b                                         ; $4806: $04
    cp l                                          ; $4807: $bd
    ld c, d                                       ; $4808: $4a
    and c                                         ; $4809: $a1
    inc h                                         ; $480a: $24
    add e                                         ; $480b: $83
    ld d, c                                       ; $480c: $51

jr_0b3_480d:
    rra                                           ; $480d: $1f
    ld c, $22                                     ; $480e: $0e $22
    halt                                          ; $4810: $76
    nop                                           ; $4811: $00
    ld [$4d61], sp                                ; $4812: $08 $61 $4d
    ld h, d                                       ; $4815: $62
    ld a, [hl]                                    ; $4816: $7e
    nop                                           ; $4817: $00
    jr nz, jr_0b3_487c                            ; $4818: $20 $62

    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    ld a, a                                       ; $481c: $7f
    ld b, e                                       ; $481d: $43
    inc bc                                        ; $481e: $03
    nop                                           ; $481f: $00
    jr nz, jr_0b3_4885                            ; $4820: $20 $63

    nop                                           ; $4822: $00
    ld [hl], a                                    ; $4823: $77
    ld hl, $1511                                  ; $4824: $21 $11 $15
    ld a, h                                       ; $4827: $7c
    ld b, [hl]                                    ; $4828: $46
    nop                                           ; $4829: $00
    inc b                                         ; $482a: $04
    rra                                           ; $482b: $1f
    ld e, e                                       ; $482c: $5b
    rst $20                                       ; $482d: $e7
    inc h                                         ; $482e: $24
    ld l, e                                       ; $482f: $6b
    dec l                                         ; $4830: $2d
    push bc                                       ; $4831: $c5
    jr nz, jr_0b3_480d                            ; $4832: $20 $d9

    add hl, hl                                    ; $4834: $29
    sbc $4e                                       ; $4835: $de $4e
    ld [$8329], sp                                ; $4837: $08 $29 $83
    inc d                                         ; $483a: $14
    ld [hl], h                                    ; $483b: $74
    nop                                           ; $483c: $00
    add hl, hl                                    ; $483d: $29
    dec l                                         ; $483e: $2d
    ld l, e                                       ; $483f: $6b
    ld sp, $1c80                                  ; $4840: $31 $80 $1c
    ld hl, $7449                                  ; $4843: $21 $49 $74
    nop                                           ; $4846: $00
    ld [hl+], a                                   ; $4847: $22
    halt                                          ; $4848: $76
    nop                                           ; $4849: $00
    inc e                                         ; $484a: $1c
    rst $38                                       ; $484b: $ff
    ld a, a                                       ; $484c: $7f
    and e                                         ; $484d: $a3
    ld h, l                                       ; $484e: $65
    jp $0003                                      ; $484f: $c3 $03 $00


    nop                                           ; $4852: $00
    rst $38                                       ; $4853: $ff
    ld a, a                                       ; $4854: $7f
    ld b, e                                       ; $4855: $43
    ld bc, $2000                                  ; $4856: $01 $00 $20
    ret nz                                        ; $4859: $c0

    nop                                           ; $485a: $00
    sbc $52                                       ; $485b: $de $52
    pop af                                        ; $485d: $f1
    inc d                                         ; $485e: $14
    rst $00                                       ; $485f: $c7
    db $10                                        ; $4860: $10
    ld h, d                                       ; $4861: $62
    inc d                                         ; $4862: $14
    reti                                          ; $4863: $d9


    add hl, hl                                    ; $4864: $29
    ld l, d                                       ; $4865: $6a
    dec l                                         ; $4866: $2d
    push bc                                       ; $4867: $c5
    inc e                                         ; $4868: $1c
    rst $20                                       ; $4869: $e7
    inc d                                         ; $486a: $14
    ld e, h                                       ; $486b: $5c
    ld b, d                                       ; $486c: $42
    or a                                          ; $486d: $b7
    dec h                                         ; $486e: $25
    rst $38                                       ; $486f: $ff
    ld d, [hl]                                    ; $4870: $56
    and [hl]                                      ; $4871: $a6
    db $10                                        ; $4872: $10
    reti                                          ; $4873: $d9


    add hl, hl                                    ; $4874: $29
    ld [hl], h                                    ; $4875: $74
    nop                                           ; $4876: $00
    cp l                                          ; $4877: $bd
    ld c, [hl]                                    ; $4878: $4e
    ld b, d                                       ; $4879: $42
    db $10                                        ; $487a: $10
    add c                                         ; $487b: $81

jr_0b3_487c:
    ld d, l                                       ; $487c: $55
    sub e                                         ; $487d: $93
    nop                                           ; $487e: $00
    ld b, d                                       ; $487f: $42
    ld a, [hl]                                    ; $4880: $7e
    ld b, e                                       ; $4881: $43
    nop                                           ; $4882: $00
    rst $38                                       ; $4883: $ff
    ld a, a                                       ; $4884: $7f

jr_0b3_4885:
    jp $0003                                      ; $4885: $c3 $03 $00


    jr nz, jr_0b3_488a                            ; $4888: $20 $00

jr_0b3_488a:
    nop                                           ; $488a: $00
    rst $38                                       ; $488b: $ff
    ld a, a                                       ; $488c: $7f
    sub e                                         ; $488d: $93
    nop                                           ; $488e: $00
    db $e4                                        ; $488f: $e4
    nop                                           ; $4890: $00
    ld b, c                                       ; $4891: $41
    nop                                           ; $4892: $00
    ret c                                         ; $4893: $d8

    dec l                                         ; $4894: $2d
    rst $38                                       ; $4895: $ff
    ld d, [hl]                                    ; $4896: $56
    jp hl                                         ; $4897: $e9


    db $10                                        ; $4898: $10
    ld hl, $1a51                                  ; $4899: $21 $51 $1a
    ld [hl-], a                                   ; $489c: $32
    sub a                                         ; $489d: $97
    ld a, a                                       ; $489e: $7f
    ld b, l                                       ; $489f: $45
    nop                                           ; $48a0: $00
    ld b, h                                       ; $48a1: $44
    inc c                                         ; $48a2: $0c
    and c                                         ; $48a3: $a1
    ld a, [hl]                                    ; $48a4: $7e
    reti                                          ; $48a5: $d9


    add hl, hl                                    ; $48a6: $29
    ld e, a                                       ; $48a7: $5f
    ld h, a                                       ; $48a8: $67
    ret nz                                        ; $48a9: $c0

    ld d, b                                       ; $48aa: $50
    db $fd                                        ; $48ab: $fd
    ld e, d                                       ; $48ac: $5a
    call nc, Call_0b3_4504                        ; $48ad: $d4 $04 $45
    nop                                           ; $48b0: $00
    ret nz                                        ; $48b1: $c0

    inc [hl]                                      ; $48b2: $34
    sub e                                         ; $48b3: $93
    nop                                           ; $48b4: $00
    ld bc, $dd6e                                  ; $48b5: $01 $6e $dd
    add hl, bc                                    ; $48b8: $09
    jr nz, jr_0b3_48bb                            ; $48b9: $20 $00

jr_0b3_48bb:
    rst $38                                       ; $48bb: $ff
    ld a, a                                       ; $48bc: $7f
    ld [hl], d                                    ; $48bd: $72
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    jr nz, jr_0b3_48c2                            ; $48c0: $20 $00

jr_0b3_48c2:
    nop                                           ; $48c2: $00
    rst $38                                       ; $48c3: $ff
    ld a, a                                       ; $48c4: $7f
    sub e                                         ; $48c5: $93
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    jr nz, @-$78                                  ; $48c8: $20 $86

    inc c                                         ; $48ca: $0c
    cp l                                          ; $48cb: $bd
    ld c, d                                       ; $48cc: $4a
    di                                            ; $48cd: $f3
    db $10                                        ; $48ce: $10
    ld a, [bc]                                    ; $48cf: $0a
    ld hl, $5100                                  ; $48d0: $21 $00 $51
    cp e                                          ; $48d3: $bb
    ld c, [hl]                                    ; $48d4: $4e
    ld b, e                                       ; $48d5: $43
    inc c                                         ; $48d6: $0c
    rst $38                                       ; $48d7: $ff
    ld a, a                                       ; $48d8: $7f
    ld h, d                                       ; $48d9: $62
    inc d                                         ; $48da: $14
    ld a, [$6031]                                 ; $48db: $fa $31 $60
    ld h, c                                       ; $48de: $61
    rra                                           ; $48df: $1f
    ld e, e                                       ; $48e0: $5b
    ld b, h                                       ; $48e1: $44
    inc b                                         ; $48e2: $04
    rst $38                                       ; $48e3: $ff
    ld a, a                                       ; $48e4: $7f
    or e                                          ; $48e5: $b3
    inc b                                         ; $48e6: $04
    dec b                                         ; $48e7: $05
    dec a                                         ; $48e8: $3d
    ld [hl+], a                                   ; $48e9: $22
    db $10                                        ; $48ea: $10
    and e                                         ; $48eb: $a3
    ld d, l                                       ; $48ec: $55
    sub d                                         ; $48ed: $92
    inc b                                         ; $48ee: $04
    ld h, c                                       ; $48ef: $61
    ld a, d                                       ; $48f0: $7a
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    rst $38                                       ; $48f3: $ff
    ld a, a                                       ; $48f4: $7f
    sub e                                         ; $48f5: $93
    nop                                           ; $48f6: $00
    nop                                           ; $48f7: $00
    jr nz, jr_0b3_48fb                            ; $48f8: $20 $01

    nop                                           ; $48fa: $00

jr_0b3_48fb:
    rst $38                                       ; $48fb: $ff
    ld a, a                                       ; $48fc: $7f
    sub e                                         ; $48fd: $93
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    jr nz, jr_0b3_4965                            ; $4900: $20 $63

    ld [$56b5], sp                                ; $4902: $08 $b5 $56
    ld l, e                                       ; $4905: $6b
    dec l                                         ; $4906: $2d
    ld [de], a                                    ; $4907: $12
    dec d                                         ; $4908: $15
    ld h, e                                       ; $4909: $63
    db $10                                        ; $490a: $10
    jr jr_0b3_4943                                ; $490b: $18 $36

    rst $38                                       ; $490d: $ff
    ld d, [hl]                                    ; $490e: $56
    ld [hl-], a                                   ; $490f: $32
    add hl, de                                    ; $4910: $19
    ld b, h                                       ; $4911: $44
    inc c                                         ; $4912: $0c
    or $31                                        ; $4913: $f6 $31
    rra                                           ; $4915: $1f
    ld e, e                                       ; $4916: $5b
    ld l, e                                       ; $4917: $6b
    ld sp, $0842                                  ; $4918: $31 $42 $08
    ld [hl], e                                    ; $491b: $73
    ld c, [hl]                                    ; $491c: $4e
    add hl, hl                                    ; $491d: $29
    dec h                                         ; $491e: $25
    sub e                                         ; $491f: $93
    nop                                           ; $4920: $00
    add b                                         ; $4921: $80
    inc e                                         ; $4922: $1c
    pop bc                                        ; $4923: $c1
    ld e, l                                       ; $4924: $5d
    sub d                                         ; $4925: $92
    nop                                           ; $4926: $00
    ld h, c                                       ; $4927: $61
    ld a, d                                       ; $4928: $7a
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    rst $38                                       ; $492b: $ff
    ld a, a                                       ; $492c: $7f
    sub e                                         ; $492d: $93
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    jr nz, jr_0b3_4933                            ; $4930: $20 $01

    inc c                                         ; $4932: $0c

jr_0b3_4933:
    or [hl]                                       ; $4933: $b6
    ld d, [hl]                                    ; $4934: $56
    rrca                                          ; $4935: $0f
    dec d                                         ; $4936: $15
    rst $38                                       ; $4937: $ff
    ld a, a                                       ; $4938: $7f
    and l                                         ; $4939: $a5
    db $10                                        ; $493a: $10
    or [hl]                                       ; $493b: $b6
    ld d, [hl]                                    ; $493c: $56
    ld l, e                                       ; $493d: $6b
    dec l                                         ; $493e: $2d
    xor l                                         ; $493f: $ad
    dec [hl]                                      ; $4940: $35
    ld h, e                                       ; $4941: $63
    db $10                                        ; $4942: $10

jr_0b3_4943:
    sub l                                         ; $4943: $95
    ld d, [hl]                                    ; $4944: $56
    add hl, hl                                    ; $4945: $29
    add hl, hl                                    ; $4946: $29
    add l                                         ; $4947: $85
    inc c                                         ; $4948: $0c

jr_0b3_4949:
    add l                                         ; $4949: $85
    inc d                                         ; $494a: $14
    sub h                                         ; $494b: $94
    ld d, d                                       ; $494c: $52
    adc l                                         ; $494d: $8d
    ld sp, $29d9                                  ; $494e: $31 $d9 $29
    ld b, c                                       ; $4951: $41
    inc b                                         ; $4952: $04
    ld [hl], h                                    ; $4953: $74
    ld c, [hl]                                    ; $4954: $4e
    ld b, e                                       ; $4955: $43
    inc bc                                        ; $4956: $03
    rst $20                                       ; $4957: $e7
    jr nz, jr_0b3_49bb                            ; $4958: $20 $61

    halt                                          ; $495a: $76
    db $e4                                        ; $495b: $e4
    nop                                           ; $495c: $00
    or e                                          ; $495d: $b3
    nop                                           ; $495e: $00
    inc hl                                        ; $495f: $23
    inc bc                                        ; $4960: $03
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    rst $38                                       ; $4963: $ff
    ld a, a                                       ; $4964: $7f

jr_0b3_4965:
    or e                                          ; $4965: $b3
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    jr nz, jr_0b3_498a                            ; $4968: $20 $20

    nop                                           ; $496a: $00
    or [hl]                                       ; $496b: $b6
    ld d, [hl]                                    ; $496c: $56
    nop                                           ; $496d: $00
    jr nz, @+$01                                  ; $496e: $20 $ff

    ld a, a                                       ; $4970: $7f
    ld b, d                                       ; $4971: $42
    ld [$294a], sp                                ; $4972: $08 $4a $29
    ld d, d                                       ; $4975: $52
    ld c, d                                       ; $4976: $4a
    and l                                         ; $4977: $a5
    inc d                                         ; $4978: $14
    ld h, h                                       ; $4979: $64
    db $10                                        ; $497a: $10
    ld c, d                                       ; $497b: $4a
    add hl, hl                                    ; $497c: $29
    ld d, d                                       ; $497d: $52
    ld c, d                                       ; $497e: $4a
    adc $39                                       ; $497f: $ce $39
    add h                                         ; $4981: $84
    db $10                                        ; $4982: $10
    ld d, e                                       ; $4983: $53
    ld c, d                                       ; $4984: $4a
    rra                                           ; $4985: $1f
    ld e, e                                       ; $4986: $5b
    ld c, e                                       ; $4987: $4b
    dec h                                         ; $4988: $25
    ld b, c                                       ; $4989: $41

jr_0b3_498a:
    ld [$4631], sp                                ; $498a: $08 $31 $46
    db $e4                                        ; $498d: $e4
    ld bc, $1cc7                                  ; $498e: $01 $c7 $1c
    inc hl                                        ; $4991: $23
    ld bc, $00b2                                  ; $4992: $01 $b2 $00
    ld b, e                                       ; $4995: $43
    inc bc                                        ; $4996: $03
    db $e4                                        ; $4997: $e4
    ld bc, $0000                                  ; $4998: $01 $00 $00
    rst $38                                       ; $499b: $ff
    ld a, a                                       ; $499c: $7f
    or d                                          ; $499d: $b2
    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    jr nz, jr_0b3_49a2                            ; $49a0: $20 $00

jr_0b3_49a2:
    nop                                           ; $49a2: $00
    rst $38                                       ; $49a3: $ff
    ld a, a                                       ; $49a4: $7f
    nop                                           ; $49a5: $00
    jr nz, jr_0b3_4949                            ; $49a6: $20 $a1

    nop                                           ; $49a8: $00
    ld h, c                                       ; $49a9: $61
    nop                                           ; $49aa: $00
    ld c, d                                       ; $49ab: $4a
    add hl, hl                                    ; $49ac: $29
    or [hl]                                       ; $49ad: $b6
    ld d, [hl]                                    ; $49ae: $56
    and l                                         ; $49af: $a5
    inc d                                         ; $49b0: $14
    ld h, h                                       ; $49b1: $64
    inc c                                         ; $49b2: $0c
    db $10                                        ; $49b3: $10
    ld b, d                                       ; $49b4: $42
    ld c, d                                       ; $49b5: $4a
    add hl, hl                                    ; $49b6: $29
    or [hl]                                       ; $49b7: $b6
    ld d, [hl]                                    ; $49b8: $56
    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00

jr_0b3_49bb:
    ld l, e                                       ; $49bb: $6b
    dec l                                         ; $49bc: $2d
    add l                                         ; $49bd: $85
    db $10                                        ; $49be: $10
    sub h                                         ; $49bf: $94
    ld d, d                                       ; $49c0: $52
    ld h, c                                       ; $49c1: $61
    inc b                                         ; $49c2: $04
    ld l, e                                       ; $49c3: $6b
    dec l                                         ; $49c4: $2d
    sub h                                         ; $49c5: $94
    ld d, d                                       ; $49c6: $52
    and e                                         ; $49c7: $a3
    ld bc, $0123                                  ; $49c8: $01 $23 $01
    and e                                         ; $49cb: $a3
    inc bc                                        ; $49cc: $03
    jp $a401                                      ; $49cd: $c3 $01 $a4


    ld [bc], a                                    ; $49d0: $02
    jr nz, jr_0b3_49d3                            ; $49d1: $20 $00

jr_0b3_49d3:
    rst $38                                       ; $49d3: $ff
    ld a, a                                       ; $49d4: $7f
    nop                                           ; $49d5: $00
    jr nz, jr_0b3_498a                            ; $49d6: $20 $b2

    inc b                                         ; $49d8: $04
    nop                                           ; $49d9: $00
    nop                                           ; $49da: $00
    rst $38                                       ; $49db: $ff
    ld a, a                                       ; $49dc: $7f
    and e                                         ; $49dd: $a3
    ld bc, $2000                                  ; $49de: $01 $00 $20
    nop                                           ; $49e1: $00
    nop                                           ; $49e2: $00
    ld h, d                                       ; $49e3: $62
    ld bc, $2d6b                                  ; $49e4: $01 $6b $2d
    and c                                         ; $49e7: $a1
    nop                                           ; $49e8: $00
    ld b, e                                       ; $49e9: $43
    ld [$56b6], sp                                ; $49ea: $08 $b6 $56
    ld c, d                                       ; $49ed: $4a
    add hl, hl                                    ; $49ee: $29
    adc $39                                       ; $49ef: $ce $39
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    add hl, bc                                    ; $49f3: $09
    ld hl, $4e73                                  ; $49f4: $21 $73 $4e
    add h                                         ; $49f7: $84
    stop                                          ; $49f8: $10 $00
    nop                                           ; $49fa: $00
    ld h, e                                       ; $49fb: $63
    ld bc, $00c1                                  ; $49fc: $01 $c1 $00
    xor h                                         ; $49ff: $ac
    add hl, bc                                    ; $4a00: $09
    add d                                         ; $4a01: $82
    ld bc, $03c3                                  ; $4a02: $01 $c3 $03
    daa                                           ; $4a05: $27
    nop                                           ; $4a06: $00
    db $e3                                        ; $4a07: $e3
    ld bc, $0000                                  ; $4a08: $01 $00 $00
    rst $38                                       ; $4a0b: $ff
    ld a, a                                       ; $4a0c: $7f
    and e                                         ; $4a0d: $a3
    inc bc                                        ; $4a0e: $03
    nop                                           ; $4a0f: $00
    jr nz, jr_0b3_4a12                            ; $4a10: $20 $00

jr_0b3_4a12:
    nop                                           ; $4a12: $00
    rst $38                                       ; $4a13: $ff
    ld a, a                                       ; $4a14: $7f
    nop                                           ; $4a15: $00
    jr nz, @-$30                                  ; $4a16: $20 $ce

    add hl, sp                                    ; $4a18: $39
    and c                                         ; $4a19: $a1
    nop                                           ; $4a1a: $00
    and e                                         ; $4a1b: $a3
    ld bc, $0142                                  ; $4a1c: $01 $42 $01
    inc h                                         ; $4a1f: $24
    ld [bc], a                                    ; $4a20: $02
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    call $ce09                                    ; $4a23: $cd $09 $ce
    dec a                                         ; $4a26: $3d
    ld h, c                                       ; $4a27: $61
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    add h                                         ; $4a2b: $84
    inc c                                         ; $4a2c: $0c
    rst $20                                       ; $4a2d: $e7
    inc e                                         ; $4a2e: $1c
    ld b, d                                       ; $4a2f: $42
    ld [$0020], sp                                ; $4a30: $08 $20 $00
    call Call_000_1809                            ; $4a33: $cd $09 $18
    rra                                           ; $4a36: $1f
    ld [c], a                                     ; $4a37: $e2
    nop                                           ; $4a38: $00
    ld [c], a                                     ; $4a39: $e2
    nop                                           ; $4a3a: $00
    jp $8303                                      ; $4a3b: $c3 $03 $83


    ld bc, $0142                                  ; $4a3e: $01 $42 $01
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00

jr_0b3_4a43:
    rst $38                                       ; $4a43: $ff
    ld a, a                                       ; $4a44: $7f
    nop                                           ; $4a45: $00
    jr nz, jr_0b3_4a8a                            ; $4a46: $20 $42

    ld bc, $0000                                  ; $4a48: $01 $00 $00
    rst $38                                       ; $4a4b: $ff
    ld a, a                                       ; $4a4c: $7f
    nop                                           ; $4a4d: $00
    jr nz, @+$63                                  ; $4a4e: $20 $61

    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    ld h, e                                       ; $4a53: $63
    ld bc, $0204                                  ; $4a54: $01 $04 $02
    pop bc                                        ; $4a57: $c1
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    call $a109                                    ; $4a5b: $cd $09 $a1
    nop                                           ; $4a5e: $00
    db $10                                        ; $4a5f: $10
    ld c, $00                                     ; $4a60: $0e $00
    nop                                           ; $4a62: $00
    xor h                                         ; $4a63: $ac
    add hl, bc                                    ; $4a64: $09
    or l                                          ; $4a65: $b5
    ld a, [de]                                    ; $4a66: $1a
    add $08                                       ; $4a67: $c6 $08
    add d                                         ; $4a69: $82
    nop                                           ; $4a6a: $00
    ld [hl], e                                    ; $4a6b: $73
    ld d, $4a                                     ; $4a6c: $16 $4a
    add hl, bc                                    ; $4a6e: $09
    sbc h                                         ; $4a6f: $9c
    daa                                           ; $4a70: $27
    ld h, b                                       ; $4a71: $60
    nop                                           ; $4a72: $00
    jp $6202                                      ; $4a73: $c3 $02 $62


    ld bc, $03c3                                  ; $4a76: $01 $c3 $03
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    rst $38                                       ; $4a7b: $ff
    ld a, a                                       ; $4a7c: $7f
    nop                                           ; $4a7d: $00
    jr nz, jr_0b3_4a43                            ; $4a7e: $20 $c3

    inc bc                                        ; $4a80: $03

jr_0b3_4a81:
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    rst $38                                       ; $4a83: $ff
    ld a, a                                       ; $4a84: $7f
    nop                                           ; $4a85: $00
    jr nz, jr_0b3_4a98                            ; $4a86: $20 $10

    ld c, $00                                     ; $4a88: $0e $00

jr_0b3_4a8a:
    nop                                           ; $4a8a: $00
    jp $8203                                      ; $4a8b: $c3 $03 $82


    ld bc, $00c1                                  ; $4a8e: $01 $c1 $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    call $d609                                    ; $4a93: $cd $09 $d6
    ld a, [de]                                    ; $4a96: $1a
    pop bc                                        ; $4a97: $c1

jr_0b3_4a98:
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    nop                                           ; $4a9a: $00
    sub h                                         ; $4a9b: $94
    ld a, [de]                                    ; $4a9c: $1a
    adc h                                         ; $4a9d: $8c
    add hl, bc                                    ; $4a9e: $09
    ld a, d                                       ; $4a9f: $7a
    daa                                           ; $4aa0: $27
    ld h, d                                       ; $4aa1: $62
    nop                                           ; $4aa2: $00
    ld d, d                                       ; $4aa3: $52
    ld d, $ad                                     ; $4aa4: $16 $ad
    add hl, bc                                    ; $4aa6: $09
    ld a, e                                       ; $4aa7: $7b
    daa                                           ; $4aa8: $27
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    jp $ff03                                      ; $4aab: $c3 $03 $ff


    ld a, a                                       ; $4aae: $7f
    ld bc, $0001                                  ; $4aaf: $01 $01 $00
    nop                                           ; $4ab2: $00
    rst $38                                       ; $4ab3: $ff
    ld a, a                                       ; $4ab4: $7f
    nop                                           ; $4ab5: $00
    jr nz, @+$03                                  ; $4ab6: $20 $01

    ld bc, $0000                                  ; $4ab8: $01 $00 $00
    rst $38                                       ; $4abb: $ff
    ld a, a                                       ; $4abc: $7f
    nop                                           ; $4abd: $00
    jr nz, jr_0b3_4a81                            ; $4abe: $20 $c1

    nop                                           ; $4ac0: $00
    ld h, b                                       ; $4ac1: $60
    nop                                           ; $4ac2: $00
    rst $38                                       ; $4ac3: $ff
    ld a, a                                       ; $4ac4: $7f
    jp $c303                                      ; $4ac5: $c3 $03 $c3


    ld bc, $0040                                  ; $4ac8: $01 $40 $00
    call $f709                                    ; $4acb: $cd $09 $f7
    ld e, $02                                     ; $4ace: $1e $02
    ld bc, $04a9                                  ; $4ad0: $01 $a9 $04
    or [hl]                                       ; $4ad3: $b6
    ld a, [de]                                    ; $4ad4: $1a
    rst $28                                       ; $4ad5: $ef
    dec c                                         ; $4ad6: $0d
    add hl, sp                                    ; $4ad7: $39
    inc hl                                        ; $4ad8: $23
    ld b, c                                       ; $4ad9: $41
    nop                                           ; $4ada: $00
    jr nc, jr_0b3_4aef                            ; $4adb: $30 $12

    cp l                                          ; $4add: $bd
    dec hl                                        ; $4ade: $2b
    xor c                                         ; $4adf: $a9
    nop                                           ; $4ae0: $00
    ld h, c                                       ; $4ae1: $61
    nop                                           ; $4ae2: $00
    rst $38                                       ; $4ae3: $ff
    ld a, a                                       ; $4ae4: $7f
    jp Jump_0b3_4303                              ; $4ae5: $c3 $03 $43


    ld bc, $0000                                  ; $4ae8: $01 $00 $00
    nop                                           ; $4aeb: $00
    jr nz, @-$3b                                  ; $4aec: $20 $c3

    inc bc                                        ; $4aee: $03

jr_0b3_4aef:
    ld b, e                                       ; $4aef: $43
    ld bc, $0000                                  ; $4af0: $01 $00 $00
    nop                                           ; $4af3: $00
    jr nz, @-$07                                  ; $4af4: $20 $f7

    ld e, $02                                     ; $4af6: $1e $02
    ld bc, $0002                                  ; $4af8: $01 $02 $00
    rst $38                                       ; $4afb: $ff
    ld a, a                                       ; $4afc: $7f
    jp $c201                                      ; $4afd: $c3 $01 $c2


    nop                                           ; $4b00: $00
    jr nz, jr_0b3_4b03                            ; $4b01: $20 $00

jr_0b3_4b03:
    rst $28                                       ; $4b03: $ef
    dec c                                         ; $4b04: $0d
    ld b, d                                       ; $4b05: $42
    ld bc, $00c1                                  ; $4b06: $01 $c1 $00
    ld [$b509], sp                                ; $4b09: $08 $09 $b5
    ld a, [de]                                    ; $4b0c: $1a
    ld a, e                                       ; $4b0d: $7b
    daa                                           ; $4b0e: $27
    db $10                                        ; $4b0f: $10
    ld [de], a                                    ; $4b10: $12
    ld hl, $9400                                  ; $4b11: $21 $00 $94
    ld a, [de]                                    ; $4b14: $1a
    xor l                                         ; $4b15: $ad
    add hl, bc                                    ; $4b16: $09
    cp l                                          ; $4b17: $bd
    dec hl                                        ; $4b18: $2b
    add c                                         ; $4b19: $81
    nop                                           ; $4b1a: $00
    rst $38                                       ; $4b1b: $ff
    ld a, a                                       ; $4b1c: $7f
    ld h, e                                       ; $4b1d: $63
    inc bc                                        ; $4b1e: $03

jr_0b3_4b1f:
    ld b, d                                       ; $4b1f: $42
    ld bc, $0000                                  ; $4b20: $01 $00 $00
    nop                                           ; $4b23: $00
    jr nz, jr_0b3_4b89                            ; $4b24: $20 $63

    inc bc                                        ; $4b26: $03
    ld b, d                                       ; $4b27: $42
    ld bc, $0000                                  ; $4b28: $01 $00 $00
    nop                                           ; $4b2b: $00
    jr nz, @+$44                                  ; $4b2c: $20 $42

    ld bc, $00c1                                  ; $4b2e: $01 $c1 $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    rst $38                                       ; $4b33: $ff
    ld a, a                                       ; $4b34: $7f
    jp $c101                                      ; $4b35: $c3 $01 $c1


    nop                                           ; $4b38: $00
    jr nz, jr_0b3_4b3b                            ; $4b39: $20 $00

jr_0b3_4b3b:
    add e                                         ; $4b3b: $83
    ld bc, $09cd                                  ; $4b3c: $01 $cd $09
    pop hl                                        ; $4b3f: $e1
    nop                                           ; $4b40: $00
    add hl, hl                                    ; $4b41: $29
    add hl, bc                                    ; $4b42: $09
    rst $30                                       ; $4b43: $f7
    ld e, $ef                                     ; $4b44: $1e $ef
    dec c                                         ; $4b46: $0d
    sbc h                                         ; $4b47: $9c
    daa                                           ; $4b48: $27
    ld hl, $b500                                  ; $4b49: $21 $00 $b5
    ld a, [de]                                    ; $4b4c: $1a
    xor l                                         ; $4b4d: $ad
    add hl, bc                                    ; $4b4e: $09
    sbc h                                         ; $4b4f: $9c
    dec hl                                        ; $4b50: $2b
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    rst $38                                       ; $4b53: $ff
    ld a, a                                       ; $4b54: $7f
    ld h, e                                       ; $4b55: $63
    inc bc                                        ; $4b56: $03

jr_0b3_4b57:
    pop hl                                        ; $4b57: $e1
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    jr nz, @+$01                                  ; $4b5a: $20 $ff

    ld a, a                                       ; $4b5c: $7f
    ld h, e                                       ; $4b5d: $63
    inc bc                                        ; $4b5e: $03
    pop hl                                        ; $4b5f: $e1
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    jr nz, @-$7b                                  ; $4b62: $20 $83

    ld bc, $09cd                                  ; $4b64: $01 $cd $09
    pop hl                                        ; $4b67: $e1
    nop                                           ; $4b68: $00
    ld h, b                                       ; $4b69: $60
    nop                                           ; $4b6a: $00
    rst $38                                       ; $4b6b: $ff
    ld a, a                                       ; $4b6c: $7f
    db $e3                                        ; $4b6d: $e3
    ld bc, $03c3                                  ; $4b6e: $01 $c3 $03
    ld h, c                                       ; $4b71: $61
    nop                                           ; $4b72: $00
    add e                                         ; $4b73: $83
    ld bc, $00e2                                  ; $4b74: $01 $e2 $00
    db $e3                                        ; $4b77: $e3
    ld bc, $0000                                  ; $4b78: $01 $00 $00
    or l                                          ; $4b7b: $b5
    ld a, [de]                                    ; $4b7c: $1a
    adc e                                         ; $4b7d: $8b
    dec c                                         ; $4b7e: $0d
    ld a, e                                       ; $4b7f: $7b
    daa                                           ; $4b80: $27
    ld b, d                                       ; $4b81: $42
    nop                                           ; $4b82: $00
    add hl, sp                                    ; $4b83: $39
    inc hl                                        ; $4b84: $23
    adc e                                         ; $4b85: $8b
    add hl, bc                                    ; $4b86: $09
    sbc $2b                                       ; $4b87: $de $2b

jr_0b3_4b89:
    ld b, b                                       ; $4b89: $40
    nop                                           ; $4b8a: $00
    rst $38                                       ; $4b8b: $ff
    ld a, a                                       ; $4b8c: $7f
    call nz, Call_000_1103                        ; $4b8d: $c4 $03 $11
    dec b                                         ; $4b90: $05
    nop                                           ; $4b91: $00
    jr nz, @+$01                                  ; $4b92: $20 $ff

    ld a, a                                       ; $4b94: $7f
    call nz, Call_000_1103                        ; $4b95: $c4 $03 $11
    dec b                                         ; $4b98: $05
    nop                                           ; $4b99: $00
    jr nz, jr_0b3_4b1f                            ; $4b9a: $20 $83

    ld bc, $00e2                                  ; $4b9c: $01 $e2 $00
    db $e3                                        ; $4b9f: $e3
    ld bc, $0800                                  ; $4ba0: $01 $00 $08
    rst $38                                       ; $4ba3: $ff
    ld a, a                                       ; $4ba4: $7f
    jp $e103                                      ; $4ba5: $c3 $03 $e1


    nop                                           ; $4ba8: $00
    add c                                         ; $4ba9: $81
    nop                                           ; $4baa: $00
    add e                                         ; $4bab: $83
    ld bc, $01c4                                  ; $4bac: $01 $c4 $01
    pop bc                                        ; $4baf: $c1
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    or l                                          ; $4bb3: $b5
    ld a, [de]                                    ; $4bb4: $1a
    call $9c09                                    ; $4bb5: $cd $09 $9c
    daa                                           ; $4bb8: $27
    ld [hl+], a                                   ; $4bb9: $22
    nop                                           ; $4bba: $00

jr_0b3_4bbb:
    or l                                          ; $4bbb: $b5
    ld a, [de]                                    ; $4bbc: $1a
    ld l, e                                       ; $4bbd: $6b
    add hl, bc                                    ; $4bbe: $09
    sbc h                                         ; $4bbf: $9c
    daa                                           ; $4bc0: $27
    ld b, b                                       ; $4bc1: $40
    nop                                           ; $4bc2: $00

jr_0b3_4bc3:
    rst $38                                       ; $4bc3: $ff
    ld a, a                                       ; $4bc4: $7f
    ld de, $0005                                  ; $4bc5: $11 $05 $00
    jr nz, jr_0b3_4bca                            ; $4bc8: $20 $00

jr_0b3_4bca:
    jr nz, @+$01                                  ; $4bca: $20 $ff

    ld a, a                                       ; $4bcc: $7f

jr_0b3_4bcd:
    ld de, $0005                                  ; $4bcd: $11 $05 $00
    jr nz, jr_0b3_4bd2                            ; $4bd0: $20 $00

jr_0b3_4bd2:
    jr nz, jr_0b3_4b57                            ; $4bd2: $20 $83

    ld bc, $01c4                                  ; $4bd4: $01 $c4 $01
    pop bc                                        ; $4bd7: $c1
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    rst $38                                       ; $4bdb: $ff
    ld a, a                                       ; $4bdc: $7f
    jp $0003                                      ; $4bdd: $c3 $03 $00


    jr nz, jr_0b3_4be2                            ; $4be0: $20 $00

jr_0b3_4be2:
    nop                                           ; $4be2: $00
    pop bc                                        ; $4be3: $c1
    nop                                           ; $4be4: $00
    ld b, e                                       ; $4be5: $43
    ld bc, $01a3                                  ; $4be6: $01 $a3 $01
    nop                                           ; $4be9: $00

jr_0b3_4bea:
    nop                                           ; $4bea: $00
    rst $38                                       ; $4beb: $ff
    ld a, a                                       ; $4bec: $7f
    add h                                         ; $4bed: $84
    inc b                                         ; $4bee: $04
    nop                                           ; $4bef: $00

jr_0b3_4bf0:
    jr nz, jr_0b3_4bf2                            ; $4bf0: $20 $00

jr_0b3_4bf2:
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff
    ld a, a                                       ; $4bf4: $7f
    add h                                         ; $4bf5: $84
    inc b                                         ; $4bf6: $04
    nop                                           ; $4bf7: $00
    jr nz, jr_0b3_4bfa                            ; $4bf8: $20 $00

jr_0b3_4bfa:
    nop                                           ; $4bfa: $00
    rst $38                                       ; $4bfb: $ff
    ld a, a                                       ; $4bfc: $7f
    nop                                           ; $4bfd: $00
    jr nz, jr_0b3_4c00                            ; $4bfe: $20 $00

jr_0b3_4c00:
    jr nz, jr_0b3_4c02                            ; $4c00: $20 $00

jr_0b3_4c02:
    jr nz, @+$01                                  ; $4c02: $20 $ff

    ld a, a                                       ; $4c04: $7f
    nop                                           ; $4c05: $00
    jr nz, jr_0b3_4c08                            ; $4c06: $20 $00

jr_0b3_4c08:
    jr nz, jr_0b3_4c0a                            ; $4c08: $20 $00

jr_0b3_4c0a:
    jr nz, jr_0b3_4bcd                            ; $4c0a: $20 $c1

    nop                                           ; $4c0c: $00
    ld b, e                                       ; $4c0d: $43
    ld bc, $01a3                                  ; $4c0e: $01 $a3 $01
    nop                                           ; $4c11: $00

jr_0b3_4c12:
    nop                                           ; $4c12: $00
    rst $38                                       ; $4c13: $ff
    ld a, a                                       ; $4c14: $7f
    nop                                           ; $4c15: $00
    jr nz, jr_0b3_4bbb                            ; $4c16: $20 $a3

    ld bc, $0000                                  ; $4c18: $01 $00 $00

jr_0b3_4c1b:
    rst $38                                       ; $4c1b: $ff
    ld a, a                                       ; $4c1c: $7f
    nop                                           ; $4c1d: $00
    jr nz, jr_0b3_4bc3                            ; $4c1e: $20 $a3

    ld bc, $0000                                  ; $4c20: $01 $00 $00

jr_0b3_4c23:
    nop                                           ; $4c23: $00
    jr nz, jr_0b3_4c26                            ; $4c24: $20 $00

jr_0b3_4c26:
    jr nz, jr_0b3_4c28                            ; $4c26: $20 $00

jr_0b3_4c28:
    jr nz, jr_0b3_4c2a                            ; $4c28: $20 $00

jr_0b3_4c2a:
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    jr nz, jr_0b3_4c2e                            ; $4c2c: $20 $00

jr_0b3_4c2e:
    jr nz, jr_0b3_4c30                            ; $4c2e: $20 $00

jr_0b3_4c30:
    jr nz, jr_0b3_4c32                            ; $4c30: $20 $00

jr_0b3_4c32:
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    jr nz, jr_0b3_4c36                            ; $4c34: $20 $00

jr_0b3_4c36:
    jr nz, jr_0b3_4c38                            ; $4c36: $20 $00

jr_0b3_4c38:
    jr nz, jr_0b3_4c3a                            ; $4c38: $20 $00

jr_0b3_4c3a:
    jr nz, jr_0b3_4c3c                            ; $4c3a: $20 $00

jr_0b3_4c3c:
    jr nz, jr_0b3_4c3e                            ; $4c3c: $20 $00

jr_0b3_4c3e:
    jr nz, jr_0b3_4c40                            ; $4c3e: $20 $00

jr_0b3_4c40:
    jr nz, jr_0b3_4c42                            ; $4c40: $20 $00

jr_0b3_4c42:
    jr nz, jr_0b3_4c44                            ; $4c42: $20 $00

jr_0b3_4c44:
    jr nz, jr_0b3_4c5e                            ; $4c44: $20 $18

    ld [hl], a                                    ; $4c46: $77
    ld c, b                                       ; $4c47: $48
    ld b, l                                       ; $4c48: $45
    nop                                           ; $4c49: $00
    jr nz, jr_0b3_4be2                            ; $4c4a: $20 $96

    ld l, $de                                     ; $4c4c: $2e $de
    inc bc                                        ; $4c4e: $03
    ld c, b                                       ; $4c4f: $48
    ld b, l                                       ; $4c50: $45

jr_0b3_4c51:
    nop                                           ; $4c51: $00
    jr nz, jr_0b3_4bea                            ; $4c52: $20 $96

    ld l, $de                                     ; $4c54: $2e $de
    inc bc                                        ; $4c56: $03
    ld c, b                                       ; $4c57: $48
    ld b, l                                       ; $4c58: $45
    nop                                           ; $4c59: $00
    jr nz, jr_0b3_4c1b                            ; $4c5a: $20 $bf

    inc sp                                        ; $4c5c: $33
    sub h                                         ; $4c5d: $94

jr_0b3_4c5e:
    ld [hl], d                                    ; $4c5e: $72
    cp l                                          ; $4c5f: $bd
    ld a, e                                       ; $4c60: $7b
    nop                                           ; $4c61: $00
    jr nz, jr_0b3_4c23                            ; $4c62: $20 $bf

    inc sp                                        ; $4c64: $33
    sub h                                         ; $4c65: $94
    ld [hl], d                                    ; $4c66: $72
    cp l                                          ; $4c67: $bd
    ld a, e                                       ; $4c68: $7b
    nop                                           ; $4c69: $00
    jr nz, jr_0b3_4bf0                            ; $4c6a: $20 $84

    inc e                                         ; $4c6c: $1c
    sub h                                         ; $4c6d: $94
    ld [hl], d                                    ; $4c6e: $72

jr_0b3_4c6f:
    cp l                                          ; $4c6f: $bd
    ld a, e                                       ; $4c70: $7b
    nop                                           ; $4c71: $00
    jr nz, @-$2f                                  ; $4c72: $20 $cf

    add hl, hl                                    ; $4c74: $29
    sub h                                         ; $4c75: $94
    ld [hl], d                                    ; $4c76: $72
    cp l                                          ; $4c77: $bd
    ld a, e                                       ; $4c78: $7b
    nop                                           ; $4c79: $00
    jr nz, jr_0b3_4c12                            ; $4c7a: $20 $96

    ld l, $de                                     ; $4c7c: $2e $de
    inc bc                                        ; $4c7e: $03
    ld c, b                                       ; $4c7f: $48
    ld b, l                                       ; $4c80: $45
    ld bc, $9d1c                                  ; $4c81: $01 $1c $9d
    ld [bc], a                                    ; $4c84: $02
    inc sp                                        ; $4c85: $33
    ld a, [hl+]                                   ; $4c86: $2a
    cp a                                          ; $4c87: $bf
    inc sp                                        ; $4c88: $33
    nop                                           ; $4c89: $00
    jr nz, @-$61                                  ; $4c8a: $20 $9d

    ld [bc], a                                    ; $4c8c: $02
    inc sp                                        ; $4c8d: $33
    ld a, [hl+]                                   ; $4c8e: $2a
    cp a                                          ; $4c8f: $bf
    inc sp                                        ; $4c90: $33
    adc e                                         ; $4c91: $8b
    ld d, c                                       ; $4c92: $51
    rra                                           ; $4c93: $1f

jr_0b3_4c94:
    rlca                                          ; $4c94: $07
    sub h                                         ; $4c95: $94
    ld [hl], d                                    ; $4c96: $72
    rst $18                                       ; $4c97: $df
    inc bc                                        ; $4c98: $03
    nop                                           ; $4c99: $00
    jr nz, jr_0b3_4ca2                            ; $4c9a: $20 $06

    dec a                                         ; $4c9c: $3d
    call $df59                                    ; $4c9d: $cd $59 $df
    inc bc                                        ; $4ca0: $03
    nop                                           ; $4ca1: $00

jr_0b3_4ca2:
    jr nz, jr_0b3_4c94                            ; $4ca2: $20 $f0

    add hl, de                                    ; $4ca4: $19
    cp a                                          ; $4ca5: $bf
    inc sp                                        ; $4ca6: $33
    rst $00                                       ; $4ca7: $c7
    jr jr_0b3_4caa                                ; $4ca8: $18 $00

jr_0b3_4caa:
    jr nz, jr_0b3_4c42                            ; $4caa: $20 $96

    ld l, $e8                                     ; $4cac: $2e $e8
    jr nz, jr_0b3_4c6f                            ; $4cae: $20 $bf

    inc sp                                        ; $4cb0: $33
    nop                                           ; $4cb1: $00
    jr nz, jr_0b3_4c51                            ; $4cb2: $20 $9d

    ld [bc], a                                    ; $4cb4: $02
    inc sp                                        ; $4cb5: $33
    ld a, [hl+]                                   ; $4cb6: $2a
    cp a                                          ; $4cb7: $bf
    inc sp                                        ; $4cb8: $33
    nop                                           ; $4cb9: $00
    jr nz, @-$2f                                  ; $4cba: $20 $cf

    db $10                                        ; $4cbc: $10
    ld a, [hl]                                    ; $4cbd: $7e
    ld bc, $03de                                  ; $4cbe: $01 $de $03
    nop                                           ; $4cc1: $00
    jr nz, @-$19                                  ; $4cc2: $20 $e5

    inc a                                         ; $4cc4: $3c
    rst $28                                       ; $4cc5: $ef
    ld h, c                                       ; $4cc6: $61
    ld h, e                                       ; $4cc7: $63
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    ld d, d                                       ; $4ccb: $52
    dec de                                        ; $4ccc: $1b
    ld b, $3d                                     ; $4ccd: $06 $3d
    rra                                           ; $4ccf: $1f
    ld b, $00                                     ; $4cd0: $06 $00
    jr nz, jr_0b3_4cdb                            ; $4cd2: $20 $07

    dec [hl]                                      ; $4cd4: $35
    call z, $9345                                 ; $4cd5: $cc $45 $93
    ld e, [hl]                                    ; $4cd8: $5e
    nop                                           ; $4cd9: $00
    inc e                                         ; $4cda: $1c

jr_0b3_4cdb:
    inc sp                                        ; $4cdb: $33
    ld [de], a                                    ; $4cdc: $12
    dec a                                         ; $4cdd: $3d
    dec bc                                        ; $4cde: $0b
    dec a                                         ; $4cdf: $3d
    add hl, bc                                    ; $4ce0: $09
    nop                                           ; $4ce1: $00
    jr nz, @+$13                                  ; $4ce2: $20 $11

    ld [hl+], a                                   ; $4ce4: $22
    sbc a                                         ; $4ce5: $9f
    rra                                           ; $4ce6: $1f
    add l                                         ; $4ce7: $85
    inc e                                         ; $4ce8: $1c
    nop                                           ; $4ce9: $00
    jr nz, @-$19                                  ; $4cea: $20 $e5

    inc a                                         ; $4cec: $3c
    rst $28                                       ; $4ced: $ef
    ld h, c                                       ; $4cee: $61
    ld h, e                                       ; $4cef: $63
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    jr nz, jr_0b3_4d4c                            ; $4cf2: $20 $58

    ld de, $47be                                  ; $4cf4: $11 $be $47
    ld h, h                                       ; $4cf7: $64
    nop                                           ; $4cf8: $00
    ld b, d                                       ; $4cf9: $42
    nop                                           ; $4cfa: $00
    ld l, c                                       ; $4cfb: $69
    ld b, l                                       ; $4cfc: $45

jr_0b3_4cfd:
    ld [hl], d                                    ; $4cfd: $72
    ld e, d                                       ; $4cfe: $5a
    add hl, bc                                    ; $4cff: $09
    dec b                                         ; $4d00: $05
    ld h, e                                       ; $4d01: $63

jr_0b3_4d02:
    nop                                           ; $4d02: $00
    inc a                                         ; $4d03: $3c
    dec c                                         ; $4d04: $0d
    sbc e                                         ; $4d05: $9b
    ld b, e                                       ; $4d06: $43
    add sp, $06                                   ; $4d07: $e8 $06
    nop                                           ; $4d09: $00
    ld [$331a], sp                                ; $4d0a: $08 $1a $33
    push de                                       ; $4d0d: $d5
    ld h, [hl]                                    ; $4d0e: $66
    add hl, hl                                    ; $4d0f: $29
    ld a, [bc]                                    ; $4d10: $0a
    nop                                           ; $4d11: $00
    inc e                                         ; $4d12: $1c
    cp [hl]                                       ; $4d13: $be
    nop                                           ; $4d14: $00
    ld a, [hl]                                    ; $4d15: $7e
    ld a, [bc]                                    ; $4d16: $0a
    sbc a                                         ; $4d17: $9f
    dec bc                                        ; $4d18: $0b
    nop                                           ; $4d19: $00
    jr nz, jr_0b3_4d99                            ; $4d1a: $20 $7d

    dec c                                         ; $4d1c: $0d
    ld a, a                                       ; $4d1d: $7f
    dec bc                                        ; $4d1e: $0b
    ld a, l                                       ; $4d1f: $7d
    scf                                           ; $4d20: $37
    nop                                           ; $4d21: $00
    jr nz, jr_0b3_4d8d                            ; $4d22: $20 $69

    ld b, l                                       ; $4d24: $45
    ld [hl], d                                    ; $4d25: $72
    ld e, d                                       ; $4d26: $5a
    add hl, bc                                    ; $4d27: $09
    dec b                                         ; $4d28: $05
    nop                                           ; $4d29: $00
    jr nz, jr_0b3_4cfd                            ; $4d2a: $20 $d1

    add hl, de                                    ; $4d2c: $19
    ld e, e                                       ; $4d2d: $5b
    ccf                                           ; $4d2e: $3f
    add l                                         ; $4d2f: $85
    nop                                           ; $4d30: $00
    add l                                         ; $4d31: $85
    nop                                           ; $4d32: $00
    push af                                       ; $4d33: $f5
    dec c                                         ; $4d34: $0d
    rst $20                                       ; $4d35: $e7
    ld [bc], a                                    ; $4d36: $02
    cp a                                          ; $4d37: $bf
    ld d, $63                                     ; $4d38: $16 $63
    nop                                           ; $4d3a: $00
    sbc l                                         ; $4d3b: $9d
    ld b, e                                       ; $4d3c: $43
    rst $20                                       ; $4d3d: $e7
    ld [bc], a                                    ; $4d3e: $02
    pop af                                        ; $4d3f: $f1
    ld hl, $0421                                  ; $4d40: $21 $21 $04
    sbc a                                         ; $4d43: $9f
    dec bc                                        ; $4d44: $0b
    rst $20                                       ; $4d45: $e7
    ld [bc], a                                    ; $4d46: $02
    sbc e                                         ; $4d47: $9b
    ld [hl], a                                    ; $4d48: $77
    ld h, e                                       ; $4d49: $63
    inc e                                         ; $4d4a: $1c
    cp [hl]                                       ; $4d4b: $be

jr_0b3_4d4c:
    dec b                                         ; $4d4c: $05
    sbc a                                         ; $4d4d: $9f
    ld h, a                                       ; $4d4e: $67
    ld a, a                                       ; $4d4f: $7f
    dec bc                                        ; $4d50: $0b

jr_0b3_4d51:
    nop                                           ; $4d51: $00
    jr nz, jr_0b3_4d02                            ; $4d52: $20 $ae

    add hl, hl                                    ; $4d54: $29
    ld e, a                                       ; $4d55: $5f
    ld c, a                                       ; $4d56: $4f
    sbc l                                         ; $4d57: $9d
    add hl, bc                                    ; $4d58: $09
    nop                                           ; $4d59: $00
    jr nz, jr_0b3_4d51                            ; $4d5a: $20 $f5

    dec c                                         ; $4d5c: $0d
    rst $20                                       ; $4d5d: $e7
    ld [bc], a                                    ; $4d5e: $02
    cp a                                          ; $4d5f: $bf
    ld d, $21                                     ; $4d60: $16 $21
    inc d                                         ; $4d62: $14
    dec [hl]                                      ; $4d63: $35
    ld [hl+], a                                   ; $4d64: $22
    ld c, l                                       ; $4d65: $4d
    dec c                                         ; $4d66: $0d
    cp [hl]                                       ; $4d67: $be
    ld b, a                                       ; $4d68: $47
    ld h, e                                       ; $4d69: $63
    nop                                           ; $4d6a: $00
    add hl, sp                                    ; $4d6b: $39
    ld [de], a                                    ; $4d6c: $12
    sbc [hl]                                      ; $4d6d: $9e
    ld d, $0a                                     ; $4d6e: $16 $0a
    dec b                                         ; $4d70: $05
    add l                                         ; $4d71: $85
    nop                                           ; $4d72: $00
    ld [hl-], a                                   ; $4d73: $32
    ld h, $c7                                     ; $4d74: $26 $c7
    ld [bc], a                                    ; $4d76: $02
    ld a, h                                       ; $4d77: $7c
    ccf                                           ; $4d78: $3f
    ld b, e                                       ; $4d79: $43
    jr jr_0b3_4db8                                ; $4d7a: $18 $3c

    add hl, bc                                    ; $4d7c: $09
    rst $00                                       ; $4d7d: $c7
    ld [bc], a                                    ; $4d7e: $02
    sbc a                                         ; $4d7f: $9f
    rla                                           ; $4d80: $17
    rst $08                                       ; $4d81: $cf
    ld de, $7bdf                                  ; $4d82: $11 $df $7b
    ld a, a                                       ; $4d85: $7f
    dec bc                                        ; $4d86: $0b
    sbc l                                         ; $4d87: $9d
    dec c                                         ; $4d88: $0d
    nop                                           ; $4d89: $00
    jr nz, jr_0b3_4daa                            ; $4d8a: $20 $1e

    ld a, [bc]                                    ; $4d8c: $0a

jr_0b3_4d8d:
    dec sp                                        ; $4d8d: $3b
    cpl                                           ; $4d8e: $2f
    ld e, $5b                                     ; $4d8f: $1e $5b
    nop                                           ; $4d91: $00
    jr nz, jr_0b3_4dcd                            ; $4d92: $20 $39

    ld [de], a                                    ; $4d94: $12
    sbc [hl]                                      ; $4d95: $9e
    ld d, $0a                                     ; $4d96: $16 $0a
    dec b                                         ; $4d98: $05

jr_0b3_4d99:
    nop                                           ; $4d99: $00
    jr nz, jr_0b3_4dce                            ; $4d9a: $20 $32

    ld [hl], $3a                                  ; $4d9c: $36 $3a
    dec sp                                        ; $4d9e: $3b
    ld h, e                                       ; $4d9f: $63
    nop                                           ; $4da0: $00
    or $0d                                        ; $4da1: $f6 $0d
    cp a                                          ; $4da3: $bf
    ld d, $3a                                     ; $4da4: $16 $3a
    ld [de], a                                    ; $4da6: $12
    rla                                           ; $4da7: $17
    ld [de], a                                    ; $4da8: $12
    add h                                         ; $4da9: $84

jr_0b3_4daa:
    inc b                                         ; $4daa: $04
    ldh a, [rNR42]                                ; $4dab: $f0 $21
    add $06                                       ; $4dad: $c6 $06
    dec sp                                        ; $4daf: $3b
    dec sp                                        ; $4db0: $3b
    ld h, h                                       ; $4db1: $64
    inc d                                         ; $4db2: $14
    ld a, [$a811]                                 ; $4db3: $fa $11 $a8
    ld a, [bc]                                    ; $4db6: $0a
    ld a, [hl]                                    ; $4db7: $7e

jr_0b3_4db8:
    inc hl                                        ; $4db8: $23
    db $dd                                        ; $4db9: $dd
    add hl, bc                                    ; $4dba: $09
    ld e, $47                                     ; $4dbb: $1e $47
    ld a, [hl]                                    ; $4dbd: $7e
    rrca                                          ; $4dbe: $0f
    rst $38                                       ; $4dbf: $ff
    ld a, a                                       ; $4dc0: $7f
    nop                                           ; $4dc1: $00
    jr nz, jr_0b3_4e21                            ; $4dc2: $20 $5d

    add hl, bc                                    ; $4dc4: $09
    cp [hl]                                       ; $4dc5: $be
    ld e, e                                       ; $4dc6: $5b
    sbc a                                         ; $4dc7: $9f
    inc de                                        ; $4dc8: $13
    nop                                           ; $4dc9: $00
    jr nz, jr_0b3_4e14                            ; $4dca: $20 $48

    ld b, l                                       ; $4dcc: $45

jr_0b3_4dcd:
    ld a, [hl-]                                   ; $4dcd: $3a

jr_0b3_4dce:
    ld [de], a                                    ; $4dce: $12
    rla                                           ; $4dcf: $17
    ld [de], a                                    ; $4dd0: $12
    ld h, e                                       ; $4dd1: $63
    inc b                                         ; $4dd2: $04
    db $ed                                        ; $4dd3: $ed
    ld d, c                                       ; $4dd4: $51
    add hl, sp                                    ; $4dd5: $39
    ld b, a                                       ; $4dd6: $47
    ld [hl-], a                                   ; $4dd7: $32
    ld h, $c9                                     ; $4dd8: $26 $c9
    inc b                                         ; $4dda: $04
    or e                                          ; $4ddb: $b3
    dec c                                         ; $4ddc: $0d
    ld [hl], b                                    ; $4ddd: $70
    add hl, bc                                    ; $4dde: $09
    rla                                           ; $4ddf: $17
    ld c, $85                                     ; $4de0: $0e $85
    nop                                           ; $4de2: $00
    ld [hl], l                                    ; $4de3: $75
    ld a, [hl+]                                   ; $4de4: $2a
    and [hl]                                      ; $4de5: $a6
    ld b, $bf                                     ; $4de6: $06 $bf
    ld d, $64                                     ; $4de8: $16 $64
    db $10                                        ; $4dea: $10
    ld a, l                                       ; $4deb: $7d
    dec c                                         ; $4dec: $0d
    and [hl]                                      ; $4ded: $a6
    ld b, $f7                                     ; $4dee: $06 $f7
    ld h, $7e                                     ; $4df0: $26 $7e
    nop                                           ; $4df2: $00
    sbc a                                         ; $4df3: $9f
    dec bc                                        ; $4df4: $0b
    cp a                                          ; $4df5: $bf
    ld l, e                                       ; $4df6: $6b
    cp [hl]                                       ; $4df7: $be
    add hl, bc                                    ; $4df8: $09
    nop                                           ; $4df9: $00
    inc e                                         ; $4dfa: $1c
    ld d, a                                       ; $4dfb: $57
    ld de, $5bbe                                  ; $4dfc: $11 $be $5b
    ccf                                           ; $4dff: $3f
    dec bc                                        ; $4e00: $0b
    nop                                           ; $4e01: $00
    jr nz, @-$19                                  ; $4e02: $20 $e5

    inc a                                         ; $4e04: $3c
    adc e                                         ; $4e05: $8b
    ld c, c                                       ; $4e06: $49
    daa                                           ; $4e07: $27
    ld b, c                                       ; $4e08: $41
    ld b, e                                       ; $4e09: $43
    nop                                           ; $4e0a: $00
    inc sp                                        ; $4e0b: $33
    ld h, $7c                                     ; $4e0c: $26 $7c
    ld d, e                                       ; $4e0e: $53
    ld d, c                                       ; $4e0f: $51
    ld e, d                                       ; $4e10: $5a
    ld h, e                                       ; $4e11: $63
    nop                                           ; $4e12: $00
    dec l                                         ; $4e13: $2d

jr_0b3_4e14:
    dec b                                         ; $4e14: $05
    call nc, $c90d                                ; $4e15: $d4 $0d $c9
    nop                                           ; $4e18: $00
    rst $00                                       ; $4e19: $c7
    nop                                           ; $4e1a: $00
    inc d                                         ; $4e1b: $14
    ld a, [de]                                    ; $4e1c: $1a
    cp $26                                        ; $4e1d: $fe $26
    add l                                         ; $4e1f: $85
    ld a, [bc]                                    ; $4e20: $0a

jr_0b3_4e21:
    ld h, e                                       ; $4e21: $63
    inc c                                         ; $4e22: $0c
    ld [hl], h                                    ; $4e23: $74
    dec h                                         ; $4e24: $25
    add hl, de                                    ; $4e25: $19
    daa                                           ; $4e26: $27
    ld h, h                                       ; $4e27: $64
    ld c, $03                                     ; $4e28: $0e $03
    jr nc, jr_0b3_4e87                            ; $4e2a: $30 $5b

    dec d                                         ; $4e2c: $15
    ld a, a                                       ; $4e2d: $7f
    rrca                                          ; $4e2e: $0f
    ld a, [hl]                                    ; $4e2f: $7e
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    jr nz, jr_0b3_4e49                            ; $4e32: $20 $15

    dec d                                         ; $4e34: $15
    sbc a                                         ; $4e35: $9f
    dec bc                                        ; $4e36: $0b
    dec a                                         ; $4e37: $3d
    ld l, a                                       ; $4e38: $6f
    nop                                           ; $4e39: $00
    jr @-$11                                      ; $4e3a: $18 $ed

    ld d, l                                       ; $4e3c: $55
    daa                                           ; $4e3d: $27
    ld b, c                                       ; $4e3e: $41
    sub h                                         ; $4e3f: $94
    ld l, [hl]                                    ; $4e40: $6e
    add h                                         ; $4e41: $84
    nop                                           ; $4e42: $00
    inc d                                         ; $4e43: $14
    ld e, $85                                     ; $4e44: $1e $85
    ld a, [bc]                                    ; $4e46: $0a
    cp [hl]                                       ; $4e47: $be
    ld b, a                                       ; $4e48: $47

jr_0b3_4e49:
    ld h, e                                       ; $4e49: $63
    nop                                           ; $4e4a: $00
    dec l                                         ; $4e4b: $2d
    dec b                                         ; $4e4c: $05
    ldh a, [rNR42]                                ; $4e4d: $f0 $21
    sub [hl]                                      ; $4e4f: $96
    ld e, $63                                     ; $4e50: $1e $63
    nop                                           ; $4e52: $00
    ld d, l                                       ; $4e53: $55
    ld h, $0c                                     ; $4e54: $26 $0c
    ld bc, $16bf                                  ; $4e56: $01 $bf $16
    ld b, h                                       ; $4e59: $44
    inc e                                         ; $4e5a: $1c

jr_0b3_4e5b:
    dec d                                         ; $4e5b: $15
    dec [hl]                                      ; $4e5c: $35
    rlca                                          ; $4e5d: $07
    ld c, $3a                                     ; $4e5e: $0e $3a
    dec sp                                        ; $4e60: $3b
    inc hl                                        ; $4e61: $23
    jr nc, jr_0b3_4e81                            ; $4e62: $30 $1d

    add hl, bc                                    ; $4e64: $09
    pop de                                        ; $4e65: $d1

jr_0b3_4e66:
    jr nc, jr_0b3_4e66                            ; $4e66: $30 $fe

    ld c, $00                                     ; $4e68: $0e $00
    inc e                                         ; $4e6a: $1c
    ld a, [c]                                     ; $4e6b: $f2
    inc [hl]                                      ; $4e6c: $34
    sbc a                                         ; $4e6d: $9f
    dec bc                                        ; $4e6e: $0b
    db $dd                                        ; $4e6f: $dd
    inc b                                         ; $4e70: $04
    nop                                           ; $4e71: $00
    ld [$6a31], sp                                ; $4e72: $08 $31 $6a
    dec h                                         ; $4e75: $25
    ld a, [de]                                    ; $4e76: $1a
    ld e, e                                       ; $4e77: $5b
    ld [hl], a                                    ; $4e78: $77
    ld h, e                                       ; $4e79: $63
    nop                                           ; $4e7a: $00
    sbc c                                         ; $4e7b: $99
    ld a, [bc]                                    ; $4e7c: $0a
    ld h, l                                       ; $4e7d: $65
    ld a, [bc]                                    ; $4e7e: $0a
    inc l                                         ; $4e7f: $2c
    dec b                                         ; $4e80: $05

jr_0b3_4e81:
    inc l                                         ; $4e81: $2c
    ld bc, $7fff                                  ; $4e82: $01 $ff $7f
    sbc a                                         ; $4e85: $9f
    dec bc                                        ; $4e86: $0b

jr_0b3_4e87:
    ld d, [hl]                                    ; $4e87: $56
    ld b, $63                                     ; $4e88: $06 $63
    nop                                           ; $4e8a: $00
    ld a, [hl]                                    ; $4e8b: $7e
    rlca                                          ; $4e8c: $07
    rst $18                                       ; $4e8d: $df
    ld l, a                                       ; $4e8e: $6f
    inc l                                         ; $4e8f: $2c
    ld bc, $2044                                  ; $4e90: $01 $44 $20
    rst $10                                       ; $4e93: $d7
    ld b, h                                       ; $4e94: $44
    ld h, h                                       ; $4e95: $64
    ld c, $19                                     ; $4e96: $0e $19
    ccf                                           ; $4e98: $3f
    ld b, $34                                     ; $4e99: $06 $34
    ret c                                         ; $4e9b: $d8

    ld b, h                                       ; $4e9c: $44
    sbc a                                         ; $4e9d: $9f
    dec bc                                        ; $4e9e: $0b
    sub a                                         ; $4e9f: $97
    dec h                                         ; $4ea0: $25
    nop                                           ; $4ea1: $00
    inc e                                         ; $4ea2: $1c
    inc d                                         ; $4ea3: $14
    ld c, l                                       ; $4ea4: $4d
    ld a, e                                       ; $4ea5: $7b
    ld a, e                                       ; $4ea6: $7b
    sbc $05                                       ; $4ea7: $de $05
    inc hl                                        ; $4ea9: $23
    nop                                           ; $4eaa: $00
    sub h                                         ; $4eab: $94
    ld l, [hl]                                    ; $4eac: $6e
    ld h, h                                       ; $4ead: $64
    ld c, $bd                                     ; $4eae: $0e $bd
    ld a, e                                       ; $4eb0: $7b
    ld l, b                                       ; $4eb1: $68
    nop                                           ; $4eb2: $00
    rla                                           ; $4eb3: $17
    ld [de], a                                    ; $4eb4: $12
    ld l, l                                       ; $4eb5: $6d
    dec c                                         ; $4eb6: $0d
    sbc a                                         ; $4eb7: $9f
    dec bc                                        ; $4eb8: $0b
    add b                                         ; $4eb9: $80
    jr nz, jr_0b3_4e5b                            ; $4eba: $20 $9f

    rlca                                          ; $4ebc: $07
    ld l, e                                       ; $4ebd: $6b
    nop                                           ; $4ebe: $00
    adc h                                         ; $4ebf: $8c
    nop                                           ; $4ec0: $00
    call z, Call_0b3_5d00                         ; $4ec1: $cc $00 $5d
    rlca                                          ; $4ec4: $07
    rst $38                                       ; $4ec5: $ff
    ld a, e                                       ; $4ec6: $7b
    or h                                          ; $4ec7: $b4
    dec d                                         ; $4ec8: $15
    push bc                                       ; $4ec9: $c5
    nop                                           ; $4eca: $00
    ld [bc], a                                    ; $4ecb: $02
    inc l                                         ; $4ecc: $2c
    ld b, h                                       ; $4ecd: $44
    ld c, $71                                     ; $4ece: $0e $71
    ld c, b                                       ; $4ed0: $48
    ld [hl], c                                    ; $4ed1: $71
    ld b, h                                       ; $4ed2: $44
    jp c, $9931                                   ; $4ed3: $da $31 $99

    ld d, h                                       ; $4ed6: $54
    cp $0a                                        ; $4ed7: $fe $0a
    nop                                           ; $4ed9: $00
    inc e                                         ; $4eda: $1c
    xor e                                         ; $4edb: $ab
    ld c, b                                       ; $4edc: $48
    sub h                                         ; $4edd: $94
    ld l, [hl]                                    ; $4ede: $6e
    jr c, jr_0b3_4f41                             ; $4edf: $38 $60

    inc h                                         ; $4ee1: $24
    inc b                                         ; $4ee2: $04
    db $10                                        ; $4ee3: $10
    ld h, [hl]                                    ; $4ee4: $66
    ld b, $0e                                     ; $4ee5: $06 $0e
    add hl, de                                    ; $4ee7: $19
    ld l, a                                       ; $4ee8: $6f
    jp $3d24                                      ; $4ee9: $c3 $24 $3d


    ld e, a                                       ; $4eec: $5f
    sub b                                         ; $4eed: $90
    add hl, hl                                    ; $4eee: $29
    adc e                                         ; $4eef: $8b
    nop                                           ; $4ef0: $00
    pop hl                                        ; $4ef1: $e1
    inc l                                         ; $4ef2: $2c
    bit 5, d                                      ; $4ef3: $cb $6a
    ld [hl], e                                    ; $4ef5: $73
    dec e                                         ; $4ef6: $1d
    db $fd                                        ; $4ef7: $fd
    ld d, [hl]                                    ; $4ef8: $56
    ld l, e                                       ; $4ef9: $6b
    nop                                           ; $4efa: $00
    ld a, [hl-]                                   ; $4efb: $3a
    ld h, e                                       ; $4efc: $63
    add hl, hl                                    ; $4efd: $29
    dec h                                         ; $4efe: $25
    ld [hl], e                                    ; $4eff: $73
    dec e                                         ; $4f00: $1d
    ld h, h                                       ; $4f01: $64
    jr z, jr_0b3_4f39                             ; $4f02: $28 $35

    ld e, h                                       ; $4f04: $5c
    ld b, h                                       ; $4f05: $44
    ld c, $3f                                     ; $4f06: $0e $3f
    ld e, e                                       ; $4f08: $5b
    ld a, [hl+]                                   ; $4f09: $2a
    inc l                                         ; $4f0a: $2c
    cpl                                           ; $4f0b: $2f
    ld c, h                                       ; $4f0c: $4c
    db $fd                                        ; $4f0d: $fd
    add hl, bc                                    ; $4f0e: $09
    ld e, d                                       ; $4f0f: $5a
    ld h, b                                       ; $4f10: $60
    nop                                           ; $4f11: $00
    inc e                                         ; $4f12: $1c
    ld c, d                                       ; $4f13: $4a
    ld b, b                                       ; $4f14: $40
    dec de                                        ; $4f15: $1b
    ld l, h                                       ; $4f16: $6c
    adc $59                                       ; $4f17: $ce $59
    inc hl                                        ; $4f19: $23
    ld [$55ac], sp                                ; $4f1a: $08 $ac $55
    and h                                         ; $4f1d: $a4
    ld hl, $6af9                                  ; $4f1e: $21 $f9 $6a
    ld bc, $aa35                                  ; $4f21: $01 $35 $aa
    ld h, [hl]                                    ; $4f24: $66
    dec l                                         ; $4f25: $2d
    dec e                                         ; $4f26: $1d
    cp $52                                        ; $4f27: $fe $52
    ld b, c                                       ; $4f29: $41
    db $10                                        ; $4f2a: $10
    xor d                                         ; $4f2b: $aa
    ld h, [hl]                                    ; $4f2c: $66
    sbc a                                         ; $4f2d: $9f
    ld l, a                                       ; $4f2e: $6f
    inc hl                                        ; $4f2f: $23
    dec [hl]                                      ; $4f30: $35
    add h                                         ; $4f31: $84
    db $10                                        ; $4f32: $10
    ld a, [c]                                     ; $4f33: $f2
    add hl, sp                                    ; $4f34: $39
    ld a, [hl-]                                   ; $4f35: $3a
    ld h, e                                       ; $4f36: $63
    ld l, e                                       ; $4f37: $6b
    nop                                           ; $4f38: $00

jr_0b3_4f39:
    ld b, d                                       ; $4f39: $42
    inc c                                         ; $4f3a: $0c
    add hl, de                                    ; $4f3b: $19
    ld l, b                                       ; $4f3c: $68
    add hl, bc                                    ; $4f3d: $09
    add hl, bc                                    ; $4f3e: $09
    ccf                                           ; $4f3f: $3f
    ld e, e                                       ; $4f40: $5b

jr_0b3_4f41:
    ld [$1740], sp                                ; $4f41: $08 $40 $17
    ld h, h                                       ; $4f44: $64
    ld [hl-], a                                   ; $4f45: $32
    inc d                                         ; $4f46: $14
    db $fd                                        ; $4f47: $fd
    inc b                                         ; $4f48: $04
    nop                                           ; $4f49: $00
    inc e                                         ; $4f4a: $1c
    inc hl                                        ; $4f4b: $23
    ld [de], a                                    ; $4f4c: $12
    ret z                                         ; $4f4d: $c8

    ld b, b                                       ; $4f4e: $40

jr_0b3_4f4f:
    cpl                                           ; $4f4f: $2f
    ld d, [hl]                                    ; $4f50: $56
    ld b, d                                       ; $4f51: $42
    inc b                                         ; $4f52: $04
    ld l, c                                       ; $4f53: $69
    ld b, c                                       ; $4f54: $41
    nop                                           ; $4f55: $00
    jr nz, jr_0b3_4fa9                            ; $4f56: $20 $51

    ld e, d                                       ; $4f58: $5a
    ret nz                                        ; $4f59: $c0

    inc l                                         ; $4f5a: $2c
    ld e, [hl]                                    ; $4f5b: $5e
    ld h, a                                       ; $4f5c: $67
    jp z, $b114                                   ; $4f5d: $ca $14 $b1

    ld sp, $0866                                  ; $4f60: $31 $66 $08
    ld l, b                                       ; $4f63: $68
    ld e, [hl]                                    ; $4f64: $5e
    ld a, a                                       ; $4f65: $7f
    ld h, a                                       ; $4f66: $67
    nop                                           ; $4f67: $00
    add hl, sp                                    ; $4f68: $39
    ld b, l                                       ; $4f69: $45
    inc b                                         ; $4f6a: $04
    ld e, c                                       ; $4f6b: $59
    ld a, $52                                     ; $4f6c: $3e $52
    add hl, de                                    ; $4f6e: $19
    rra                                           ; $4f6f: $1f
    ld d, a                                       ; $4f70: $57
    ld bc, $392c                                  ; $4f71: $01 $2c $39
    ld [de], a                                    ; $4f74: $12
    rrca                                          ; $4f75: $0f
    ld d, h                                       ; $4f76: $54
    add hl, bc                                    ; $4f77: $09
    ld de, $3404                                  ; $4f78: $11 $04 $34
    add hl, de                                    ; $4f7b: $19
    ld l, h                                       ; $4f7c: $6c
    ld a, [hl]                                    ; $4f7d: $7e
    nop                                           ; $4f7e: $00
    db $fc                                        ; $4f7f: $fc
    ld d, h                                       ; $4f80: $54
    nop                                           ; $4f81: $00
    inc e                                         ; $4f82: $1c
    rrca                                          ; $4f83: $0f
    ld e, d                                       ; $4f84: $5a
    db $e4                                        ; $4f85: $e4

jr_0b3_4f86:
    dec e                                         ; $4f86: $1d
    ld e, d                                       ; $4f87: $5a
    ld [hl], e                                    ; $4f88: $73
    nop                                           ; $4f89: $00
    nop                                           ; $4f8a: $00
    ld l, c                                       ; $4f8b: $69
    ld b, c                                       ; $4f8c: $41
    ld sp, $004e                                  ; $4f8d: $31 $4e $00
    jr nz, jr_0b3_4f39                            ; $4f90: $20 $a7

    db $10                                        ; $4f92: $10
    xor d                                         ; $4f93: $aa
    ld h, [hl]                                    ; $4f94: $66
    ld [hl], e                                    ; $4f95: $73
    dec e                                         ; $4f96: $1d
    ld [de], a                                    ; $4f97: $12
    ld a, $45                                     ; $4f98: $3e $45
    inc b                                         ; $4f9a: $04
    xor d                                         ; $4f9b: $aa
    ld h, [hl]                                    ; $4f9c: $66
    ld h, e                                       ; $4f9d: $63
    ld b, c                                       ; $4f9e: $41
    sbc a                                         ; $4f9f: $9f
    ld l, e                                       ; $4fa0: $6b
    ld b, d                                       ; $4fa1: $42
    ld [$29b3], sp                                ; $4fa2: $08 $b3 $29
    ccf                                           ; $4fa5: $3f
    ld e, e                                       ; $4fa6: $5b
    ld l, e                                       ; $4fa7: $6b
    nop                                           ; $4fa8: $00

jr_0b3_4fa9:
    ld [bc], a                                    ; $4fa9: $02
    jr z, @+$72                                   ; $4faa: $28 $70

    dec c                                         ; $4fac: $0d
    rla                                           ; $4fad: $17
    ld [de], a                                    ; $4fae: $12
    add hl, bc                                    ; $4faf: $09
    ld b, b                                       ; $4fb0: $40
    ld b, h                                       ; $4fb1: $44
    inc e                                         ; $4fb2: $1c
    dec c                                         ; $4fb3: $0d
    ld c, h                                       ; $4fb4: $4c
    sbc l                                         ; $4fb5: $9d
    ld d, $18                                     ; $4fb6: $16 $18
    ld l, b                                       ; $4fb8: $68
    ld hl, $b500                                  ; $4fb9: $21 $00 $b5
    ld h, d                                       ; $4fbc: $62
    ld [bc], a                                    ; $4fbd: $02

jr_0b3_4fbe:
    ld d, $00                                     ; $4fbe: $16 $00
    jr nz, jr_0b3_4fc2                            ; $4fc0: $20 $00

jr_0b3_4fc2:
    jr jr_0b3_4f4f                                ; $4fc2: $18 $8b

    dec a                                         ; $4fc4: $3d
    cpl                                           ; $4fc5: $2f
    ld d, [hl]                                    ; $4fc6: $56
    jr c, jr_0b3_5038                             ; $4fc7: $38 $6f

    add e                                         ; $4fc9: $83
    inc d                                         ; $4fca: $14
    xor l                                         ; $4fcb: $ad
    dec [hl]                                      ; $4fcc: $35
    ld l, e                                       ; $4fcd: $6b
    nop                                           ; $4fce: $00
    ld [$a021], sp                                ; $4fcf: $08 $21 $a0
    inc h                                         ; $4fd2: $24
    ccf                                           ; $4fd3: $3f
    ld e, e                                       ; $4fd4: $5b
    jp hl                                         ; $4fd5: $e9


    jr jr_0b3_504b                                ; $4fd6: $18 $73

    dec e                                         ; $4fd8: $1d
    add h                                         ; $4fd9: $84
    db $10                                        ; $4fda: $10
    ld sp, $3f46                                  ; $4fdb: $31 $46 $3f
    ld e, e                                       ; $4fde: $5b
    ld l, e                                       ; $4fdf: $6b
    nop                                           ; $4fe0: $00
    ld c, $4c                                     ; $4fe1: $0e $4c
    rst $00                                       ; $4fe3: $c7
    inc b                                         ; $4fe4: $04
    ld l, a                                       ; $4fe5: $6f
    add hl, de                                    ; $4fe6: $19
    rla                                           ; $4fe7: $17
    ld [de], a                                    ; $4fe8: $12
    inc b                                         ; $4fe9: $04
    jr nc, jr_0b3_5068                            ; $4fea: $30 $7c

    ld [de], a                                    ; $4fec: $12
    ld [de], a                                    ; $4fed: $12
    ld e, b                                       ; $4fee: $58
    ld a, [bc]                                    ; $4fef: $0a
    ld bc, $0043                                  ; $4ff0: $01 $43 $00
    ld [hl], l                                    ; $4ff3: $75
    ld b, d                                       ; $4ff4: $42
    ld a, e                                       ; $4ff5: $7b
    ld [hl], a                                    ; $4ff6: $77
    nop                                           ; $4ff7: $00
    jr nz, jr_0b3_4ffa                            ; $4ff8: $20 $00

jr_0b3_4ffa:
    nop                                           ; $4ffa: $00

jr_0b3_4ffb:
    xor h                                         ; $4ffb: $ac
    ld b, c                                       ; $4ffc: $41
    sub $66                                       ; $4ffd: $d6 $66
    nop                                           ; $4fff: $00
    jr nz, jr_0b3_4f86                            ; $5000: $20 $84

    db $10                                        ; $5002: $10
    xor l                                         ; $5003: $ad
    dec [hl]                                      ; $5004: $35
    or l                                          ; $5005: $b5
    ld d, [hl]                                    ; $5006: $56
    rst $20                                       ; $5007: $e7
    inc e                                         ; $5008: $1c
    ld l, e                                       ; $5009: $6b
    nop                                           ; $500a: $00
    sub $5a                                       ; $500b: $d6 $5a
    ld [hl], e                                    ; $500d: $73
    dec e                                         ; $500e: $1d
    add hl, de                                    ; $500f: $19
    ld h, e                                       ; $5010: $63
    add h                                         ; $5011: $84
    db $10                                        ; $5012: $10
    ld sp, $1846                                  ; $5013: $31 $46 $18
    ld h, e                                       ; $5016: $63
    ld l, e                                       ; $5017: $6b
    nop                                           ; $5018: $00
    ld c, $01                                     ; $5019: $0e $01
    ld d, $5c                                     ; $501b: $16 $5c
    ld b, l                                       ; $501d: $45
    inc e                                         ; $501e: $1c
    ld [de], a                                    ; $501f: $12

Jump_0b3_5020:
    ld a, $03                                     ; $5020: $3e $03
    inc [hl]                                      ; $5022: $34
    push de                                       ; $5023: $d5
    dec c                                         ; $5024: $0d
    adc d                                         ; $5025: $8a
    nop                                           ; $5026: $00
    ld e, c                                       ; $5027: $59
    ld a, [hl-]                                   ; $5028: $3a
    nop                                           ; $5029: $00
    inc e                                         ; $502a: $1c
    sbc l                                         ; $502b: $9d
    ld d, $b4                                     ; $502c: $16 $b4
    ld h, d                                       ; $502e: $62

jr_0b3_502f:
    cp l                                          ; $502f: $bd
    ld [hl], a                                    ; $5030: $77
    nop                                           ; $5031: $00
    jr jr_0b3_4fbe                                ; $5032: $18 $8a

    ld c, c                                       ; $5034: $49
    ld a, d                                       ; $5035: $7a
    ld [hl], e                                    ; $5036: $73
    ld [hl], d                                    ; $5037: $72

jr_0b3_5038:
    ld e, d                                       ; $5038: $5a
    add h                                         ; $5039: $84
    db $10                                        ; $503a: $10
    ld c, d                                       ; $503b: $4a
    add hl, hl                                    ; $503c: $29
    sub h                                         ; $503d: $94
    ld d, d                                       ; $503e: $52
    xor l                                         ; $503f: $ad
    dec [hl]                                      ; $5040: $35
    and h                                         ; $5041: $a4
    jr jr_0b3_4ffb                                ; $5042: $18 $b7

    ld d, [hl]                                    ; $5044: $56
    adc l                                         ; $5045: $8d

jr_0b3_5046:
    ld sp, $739f                                  ; $5046: $31 $9f $73
    add h                                         ; $5049: $84
    db $10                                        ; $504a: $10

jr_0b3_504b:
    rst $28                                       ; $504b: $ef
    dec a                                         ; $504c: $3d
    ld c, c                                       ; $504d: $49
    dec h                                         ; $504e: $25
    sub $5a                                       ; $504f: $d6 $5a
    ld b, $38                                     ; $5051: $06 $38
    rla                                           ; $5053: $17
    ld h, b                                       ; $5054: $60
    inc d                                         ; $5055: $14
    ld a, $ea                                     ; $5056: $3e $ea
    inc d                                         ; $5058: $14
    ld [$fd4c], sp                                ; $5059: $08 $4c $fd
    ld c, [hl]                                    ; $505c: $4e
    or h                                          ; $505d: $b4
    dec d                                         ; $505e: $15
    rlc b                                         ; $505f: $cb $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    rla                                           ; $5063: $17
    ld l, e                                       ; $5064: $6b
    nop                                           ; $5065: $00
    jr nz, jr_0b3_5046                            ; $5066: $20 $de

jr_0b3_5068:
    ld a, a                                       ; $5068: $7f
    nop                                           ; $5069: $00
    inc e                                         ; $506a: $1c
    xor h                                         ; $506b: $ac
    ld c, l                                       ; $506c: $4d
    or h                                          ; $506d: $b4
    ld h, d                                       ; $506e: $62
    sbc e                                         ; $506f: $9b
    ld [hl], a                                    ; $5070: $77
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    xor l                                         ; $5073: $ad
    dec [hl]                                      ; $5074: $35
    ld [hl], e                                    ; $5075: $73
    ld c, [hl]                                    ; $5076: $4e
    rst $20                                       ; $5077: $e7
    inc e                                         ; $5078: $1c
    ld h, d                                       ; $5079: $62
    inc c                                         ; $507a: $0c
    adc $39                                       ; $507b: $ce $39
    inc a                                         ; $507d: $3c
    ld b, [hl]                                    ; $507e: $46
    and $1c                                       ; $507f: $e6 $1c
    add h                                         ; $5081: $84
    db $10                                        ; $5082: $10
    ld l, e                                       ; $5083: $6b
    dec l                                         ; $5084: $2d
    rst $20                                       ; $5085: $e7
    inc e                                         ; $5086: $1c
    xor l                                         ; $5087: $ad
    dec [hl]                                      ; $5088: $35
    ld l, e                                       ; $5089: $6b
    nop                                           ; $508a: $00
    inc [hl]                                      ; $508b: $34
    ld a, [hl-]                                   ; $508c: $3a
    adc h                                         ; $508d: $8c
    jr nc, jr_0b3_50ae                            ; $508e: $30 $1e

    ld d, a                                       ; $5090: $57
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    or $31                                        ; $5093: $f6 $31
    db $ed                                        ; $5095: $ed
    ld [$4edc], sp                                ; $5096: $08 $dc $4e
    nop                                           ; $5099: $00
    jr nz, jr_0b3_502f                            ; $509a: $20 $93

    ld e, [hl]                                    ; $509c: $5e
    db $dd                                        ; $509d: $dd
    ld a, e                                       ; $509e: $7b
    jr jr_0b3_510c                                ; $509f: $18 $6b

    nop                                           ; $50a1: $00
    jr nz, jr_0b3_502f                            ; $50a2: $20 $8b

    ld c, c                                       ; $50a4: $49
    push de                                       ; $50a5: $d5
    ld h, [hl]                                    ; $50a6: $66
    cpl                                           ; $50a7: $2f
    ld d, [hl]                                    ; $50a8: $56
    ld hl, $ad04                                  ; $50a9: $21 $04 $ad
    dec [hl]                                      ; $50ac: $35
    add hl, hl                                    ; $50ad: $29

jr_0b3_50ae:
    dec h                                         ; $50ae: $25
    sub h                                         ; $50af: $94
    ld d, d                                       ; $50b0: $52
    and l                                         ; $50b1: $a5
    inc d                                         ; $50b2: $14
    adc h                                         ; $50b3: $8c
    ld sp, $2529                                  ; $50b4: $31 $29 $25
    adc $39                                       ; $50b7: $ce $39
    ld b, a                                       ; $50b9: $47
    nop                                           ; $50ba: $00
    ld c, d                                       ; $50bb: $4a
    add hl, hl                                    ; $50bc: $29
    add $18                                       ; $50bd: $c6 $18
    adc h                                         ; $50bf: $8c
    ld sp, $0048                                  ; $50c0: $31 $48 $00
    sbc d                                         ; $50c3: $9a
    ld b, [hl]                                    ; $50c4: $46
    ld l, a                                       ; $50c5: $6f
    dec h                                         ; $50c6: $25
    ld e, $57                                     ; $50c7: $1e $57
    ld c, b                                       ; $50c9: $48
    nop                                           ; $50ca: $00
    sub h                                         ; $50cb: $94
    add hl, de                                    ; $50cc: $19
    sbc e                                         ; $50cd: $9b
    ld b, [hl]                                    ; $50ce: $46
    sbc $7f                                       ; $50cf: $de $7f
    nop                                           ; $50d1: $00
    jr nz, jr_0b3_5125                            ; $50d2: $20 $51

    ld e, d                                       ; $50d4: $5a
    rst $30                                       ; $50d5: $f7
    ld l, d                                       ; $50d6: $6a
    sbc h                                         ; $50d7: $9c
    ld [hl], a                                    ; $50d8: $77
    nop                                           ; $50d9: $00
    jr nz, jr_0b3_5124                            ; $50da: $20 $48

    ld b, c                                       ; $50dc: $41
    cpl                                           ; $50dd: $2f
    ld d, [hl]                                    ; $50de: $56
    adc e                                         ; $50df: $8b
    ld c, c                                       ; $50e0: $49
    ld b, d                                       ; $50e1: $42
    ld [$4e31], sp                                ; $50e2: $08 $31 $4e
    add hl, hl                                    ; $50e5: $29
    dec h                                         ; $50e6: $25
    rst $30                                       ; $50e7: $f7
    ld h, [hl]                                    ; $50e8: $66
    add h                                         ; $50e9: $84
    db $10                                        ; $50ea: $10
    ld l, e                                       ; $50eb: $6b
    dec l                                         ; $50ec: $2d
    ld l, a                                       ; $50ed: $6f
    dec d                                         ; $50ee: $15
    ld b, a                                       ; $50ef: $47
    nop                                           ; $50f0: $00
    ld h, a                                       ; $50f1: $67
    inc b                                         ; $50f2: $04
    ld a, [c]                                     ; $50f3: $f2
    ld hl, $254b                                  ; $50f4: $21 $4b $25
    ld sp, hl                                     ; $50f7: $f9
    ld [hl], $6b                                  ; $50f8: $36 $6b
    nop                                           ; $50fa: $00
    push de                                       ; $50fb: $d5
    dec l                                         ; $50fc: $2d
    db $fd                                        ; $50fd: $fd
    ld d, d                                       ; $50fe: $52
    ld c, $15                                     ; $50ff: $0e $15
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    or h                                          ; $5103: $b4
    dec h                                         ; $5104: $25
    reti                                          ; $5105: $d9


    ld e, d                                       ; $5106: $5a
    adc d                                         ; $5107: $8a
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    jr nz, @-$11                                  ; $510a: $20 $ed

jr_0b3_510c:
    ld d, c                                       ; $510c: $51
    ld [hl], d                                    ; $510d: $72
    ld e, [hl]                                    ; $510e: $5e
    cpl                                           ; $510f: $2f
    ld d, [hl]                                    ; $5110: $56
    nop                                           ; $5111: $00
    jr nz, jr_0b3_511a                            ; $5112: $20 $06

    ld b, c                                       ; $5114: $41
    ld h, $41                                     ; $5115: $26 $41
    ld b, a                                       ; $5117: $47
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00

jr_0b3_511a:
    nop                                           ; $511a: $00
    add hl, hl                                    ; $511b: $29
    ld hl, $498a                                  ; $511c: $21 $8a $49
    ld h, l                                       ; $511f: $65
    ld [$0047], sp                                ; $5120: $08 $47 $00
    dec de                                        ; $5123: $1b

jr_0b3_5124:
    scf                                           ; $5124: $37

jr_0b3_5125:
    dec l                                         ; $5125: $2d
    ld de, $21f2                                  ; $5126: $11 $f2 $21

jr_0b3_5129:
    ld b, [hl]                                    ; $5129: $46
    nop                                           ; $512a: $00
    dec [hl]                                      ; $512b: $35
    ld h, $3d                                     ; $512c: $26 $3d
    ccf                                           ; $512e: $3f
    db $ec                                        ; $512f: $ec
    inc c                                         ; $5130: $0c
    ld l, e                                       ; $5131: $6b
    nop                                           ; $5132: $00
    ld [hl], d                                    ; $5133: $72
    dec e                                         ; $5134: $1d
    ccf                                           ; $5135: $3f
    ld b, e                                       ; $5136: $43
    xor $0c                                       ; $5137: $ee $0c
    ld b, [hl]                                    ; $5139: $46

jr_0b3_513a:
    nop                                           ; $513a: $00
    cpl                                           ; $513b: $2f
    ld d, [hl]                                    ; $513c: $56
    ld c, a                                       ; $513d: $4f
    ld hl, $3f1e                                  ; $513e: $21 $1e $3f
    nop                                           ; $5141: $00
    jr nz, jr_0b3_5129                            ; $5142: $20 $e5

    inc a                                         ; $5144: $3c
    ld c, b                                       ; $5145: $48
    ld b, l                                       ; $5146: $45
    ld e, $3f                                     ; $5147: $1e $3f
    nop                                           ; $5149: $00
    jr nz, jr_0b3_513a                            ; $514a: $20 $ee

    ld e, l                                       ; $514c: $5d
    dec l                                         ; $514d: $2d
    ld de, $21f2                                  ; $514e: $11 $f2 $21
    ld b, l                                       ; $5151: $45
    nop                                           ; $5152: $00
    adc d                                         ; $5153: $8a
    ld c, l                                       ; $5154: $4d
    inc [hl]                                      ; $5155: $34
    ld h, $e5                                     ; $5156: $26 $e5
    inc a                                         ; $5158: $3c
    ld a, [c]                                     ; $5159: $f2
    ld hl, $3f5e                                  ; $515a: $21 $5e $3f
    reti                                          ; $515d: $d9


    ld [hl-], a                                   ; $515e: $32
    sbc a                                         ; $515f: $9f
    ld b, e                                       ; $5160: $43

jr_0b3_5161:
    ld b, a                                       ; $5161: $47
    nop                                           ; $5162: $00
    sub a                                         ; $5163: $97
    ld l, $6f                                     ; $5164: $2e $6f
    add hl, de                                    ; $5166: $19
    ccf                                           ; $5167: $3f
    ccf                                           ; $5168: $3f
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    cp e                                          ; $516b: $bb
    ld [hl-], a                                   ; $516c: $32
    ld de, $5158                                  ; $516d: $11 $58 $51
    dec d                                         ; $5170: $15
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    ld e, $3f                                     ; $5173: $1e $3f
    ld c, b                                       ; $5175: $48
    ld b, l                                       ; $5176: $45
    ld de, $0058                                  ; $5177: $11 $58 $00
    jr nz, jr_0b3_5161                            ; $517a: $20 $e5

    inc a                                         ; $517c: $3c
    ld c, b                                       ; $517d: $48
    ld b, l                                       ; $517e: $45
    ld de, $0058                                  ; $517f: $11 $58 $00
    jr nz, jr_0b3_51e2                            ; $5182: $20 $5e

    ccf                                           ; $5184: $3f
    reti                                          ; $5185: $d9


    ld [hl-], a                                   ; $5186: $32

jr_0b3_5187:
    sbc a                                         ; $5187: $9f
    ld b, e                                       ; $5188: $43
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    xor [hl]                                      ; $518b: $ae
    ld b, c                                       ; $518c: $41
    ld e, [hl]                                    ; $518d: $5e
    ccf                                           ; $518e: $3f
    sub h                                         ; $518f: $94
    ld l, [hl]                                    ; $5190: $6e
    jp c, $1e36                                   ; $5191: $da $36 $1e

    ccf                                           ; $5194: $3f
    ld a, [hl]                                    ; $5195: $7e
    ccf                                           ; $5196: $3f
    db $fc                                        ; $5197: $fc
    ld a, [hl-]                                   ; $5198: $3a
    adc c                                         ; $5199: $89
    inc b                                         ; $519a: $04
    halt                                          ; $519b: $76
    ld a, [hl+]                                   ; $519c: $2a
    or b                                          ; $519d: $b0
    add hl, de                                    ; $519e: $19
    dec a                                         ; $519f: $3d
    ccf                                           ; $51a0: $3f
    ld h, a                                       ; $51a1: $67
    nop                                           ; $51a2: $00
    ld e, c                                       ; $51a3: $59
    ld a, [hl+]                                   ; $51a4: $2a
    ld c, $4c                                     ; $51a5: $0e $4c
    ccf                                           ; $51a7: $3f
    ccf                                           ; $51a8: $3f
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    ld e, b                                       ; $51ab: $58
    ld a, [hl+]                                   ; $51ac: $2a
    db $10                                        ; $51ad: $10
    ld h, d                                       ; $51ae: $62
    dec hl                                        ; $51af: $2b
    ld c, b                                       ; $51b0: $48
    nop                                           ; $51b1: $00
    jr nz, jr_0b3_520c                            ; $51b2: $20 $58

    ld a, [hl+]                                   ; $51b4: $2a
    db $10                                        ; $51b5: $10
    ld h, d                                       ; $51b6: $62
    dec hl                                        ; $51b7: $2b
    ld c, b                                       ; $51b8: $48
    nop                                           ; $51b9: $00
    jr nz, jr_0b3_51da                            ; $51ba: $20 $1e

    ccf                                           ; $51bc: $3f
    ld a, [hl]                                    ; $51bd: $7e
    ccf                                           ; $51be: $3f
    db $fc                                        ; $51bf: $fc
    ld a, [hl-]                                   ; $51c0: $3a
    nop                                           ; $51c1: $00
    ld [$3b1d], sp                                ; $51c2: $08 $1d $3b
    rst $30                                       ; $51c5: $f7
    ld [hl], d                                    ; $51c6: $72

jr_0b3_51c7:
    rst $38                                       ; $51c7: $ff
    ld a, a                                       ; $51c8: $7f
    cp c                                          ; $51c9: $b9
    ld [hl-], a                                   ; $51ca: $32
    db $fc                                        ; $51cb: $fc
    ld a, [hl-]                                   ; $51cc: $3a
    ld a, $3f                                     ; $51cd: $3e $3f
    jp c, $8836                                   ; $51cf: $da $36 $88

    inc b                                         ; $51d2: $04
    sub a                                         ; $51d3: $97
    ld a, [hl+]                                   ; $51d4: $2a
    adc a                                         ; $51d5: $8f
    add hl, de                                    ; $51d6: $19
    ld e, l                                       ; $51d7: $5d
    dec sp                                        ; $51d8: $3b
    ld a, [bc]                                    ; $51d9: $0a

jr_0b3_51da:
    ld b, b                                       ; $51da: $40
    ld a, b                                       ; $51db: $78
    ld l, $3f                                     ; $51dc: $2e $3f
    ccf                                           ; $51de: $3f
    db $db                                        ; $51df: $db
    ld [hl], $01                                  ; $51e0: $36 $01

jr_0b3_51e2:
    inc c                                         ; $51e2: $0c
    sbc e                                         ; $51e3: $9b
    ld [hl-], a                                   ; $51e4: $32
    sub h                                         ; $51e5: $94
    ld [hl], d                                    ; $51e6: $72
    ld a, e                                       ; $51e7: $7b
    ld [hl], a                                    ; $51e8: $77
    nop                                           ; $51e9: $00
    jr nz, jr_0b3_5187                            ; $51ea: $20 $9b

    ld [hl-], a                                   ; $51ec: $32
    sub h                                         ; $51ed: $94
    ld [hl], d                                    ; $51ee: $72
    ld a, e                                       ; $51ef: $7b

jr_0b3_51f0:
    ld [hl], a                                    ; $51f0: $77
    nop                                           ; $51f1: $00
    jr nz, jr_0b3_51f0                            ; $51f2: $20 $fc

    ld a, [hl-]                                   ; $51f4: $3a
    ld a, $3f                                     ; $51f5: $3e $3f
    jp c, $0036                                   ; $51f7: $da $36 $00

    nop                                           ; $51fa: $00
    sbc c                                         ; $51fb: $99
    ld [hl-], a                                   ; $51fc: $32
    sbc h                                         ; $51fd: $9c
    ld [hl], a                                    ; $51fe: $77
    nop                                           ; $51ff: $00
    jr nz, jr_0b3_5202                            ; $5200: $20 $00

jr_0b3_5202:
    nop                                           ; $5202: $00
    sbc b                                         ; $5203: $98
    ld [hl-], a                                   ; $5204: $32
    db $fc                                        ; $5205: $fc
    ld [hl], $3e                                  ; $5206: $36 $3e
    ccf                                           ; $5208: $3f
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    rrca                                          ; $520b: $0f

jr_0b3_520c:
    ld h, d                                       ; $520c: $62
    sbc h                                         ; $520d: $9c
    ld a, e                                       ; $520e: $7b
    or l                                          ; $520f: $b5
    ld l, [hl]                                    ; $5210: $6e
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    push hl                                       ; $5213: $e5
    inc a                                         ; $5214: $3c
    rrca                                          ; $5215: $0f
    ld e, d                                       ; $5216: $5a
    ld c, c                                       ; $5217: $49
    ld c, c                                       ; $5218: $49
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00

jr_0b3_521b:
    rst $30                                       ; $521b: $f7
    ld [hl], d                                    ; $521c: $72
    sbc $7b                                       ; $521d: $de $7b
    nop                                           ; $521f: $00
    jr nz, jr_0b3_5222                            ; $5220: $20 $00

jr_0b3_5222:
    jr nz, jr_0b3_521b                            ; $5222: $20 $f7

    ld [hl], d                                    ; $5224: $72
    sbc $7b                                       ; $5225: $de $7b
    nop                                           ; $5227: $00
    jr nz, jr_0b3_522a                            ; $5228: $20 $00

jr_0b3_522a:
    jr nz, @-$66                                  ; $522a: $20 $98

    ld [hl-], a                                   ; $522c: $32
    db $fc                                        ; $522d: $fc
    ld [hl], $3e                                  ; $522e: $36 $3e
    ccf                                           ; $5230: $3f
    nop                                           ; $5231: $00
    jr nz, jr_0b3_51c7                            ; $5232: $20 $93

    ld h, d                                       ; $5234: $62
    sbc h                                         ; $5235: $9c
    ld [hl], a                                    ; $5236: $77
    ld l, c                                       ; $5237: $69
    ld b, l                                       ; $5238: $45
    push hl                                       ; $5239: $e5
    inc a                                         ; $523a: $3c

jr_0b3_523b:
    ld sp, $f766                                  ; $523b: $31 $66 $f7
    ld [hl], d                                    ; $523e: $72
    ld c, c                                       ; $523f: $49
    ld c, l                                       ; $5240: $4d
    daa                                           ; $5241: $27
    ld b, l                                       ; $5242: $45

jr_0b3_5243:
    sub l                                         ; $5243: $95
    ld [hl], d                                    ; $5244: $72
    sbc h                                         ; $5245: $9c
    ld a, e                                       ; $5246: $7b
    adc $5d                                       ; $5247: $ce $5d
    ld l, d                                       ; $5249: $6a
    ld c, l                                       ; $524a: $4d

jr_0b3_524b:
    sub h                                         ; $524b: $94
    ld l, [hl]                                    ; $524c: $6e
    jr nc, @+$60                                  ; $524d: $30 $5e

    ld e, d                                       ; $524f: $5a
    ld [hl], e                                    ; $5250: $73
    nop                                           ; $5251: $00
    jr nz, jr_0b3_52c7                            ; $5252: $20 $73

    ld e, [hl]                                    ; $5254: $5e
    cp h                                          ; $5255: $bc
    ld a, e                                       ; $5256: $7b
    push hl                                       ; $5257: $e5
    inc a                                         ; $5258: $3c
    nop                                           ; $5259: $00
    jr nz, jr_0b3_52cf                            ; $525a: $20 $73

    ld e, [hl]                                    ; $525c: $5e
    cp h                                          ; $525d: $bc
    ld a, e                                       ; $525e: $7b
    push hl                                       ; $525f: $e5
    inc a                                         ; $5260: $3c
    nop                                           ; $5261: $00
    jr nz, jr_0b3_5264                            ; $5262: $20 $00

jr_0b3_5264:
    jr nz, jr_0b3_5266                            ; $5264: $20 $00

jr_0b3_5266:
    jr nz, jr_0b3_523b                            ; $5266: $20 $d3

    ld e, l                                       ; $5268: $5d
    nop                                           ; $5269: $00
    jr nz, jr_0b3_526c                            ; $526a: $20 $00

jr_0b3_526c:
    jr nz, jr_0b3_526e                            ; $526c: $20 $00

jr_0b3_526e:
    jr nz, jr_0b3_5243                            ; $526e: $20 $d3

    ld e, l                                       ; $5270: $5d
    nop                                           ; $5271: $00
    jr nz, jr_0b3_5274                            ; $5272: $20 $00

jr_0b3_5274:
    jr nz, jr_0b3_5276                            ; $5274: $20 $00

jr_0b3_5276:
    jr nz, jr_0b3_524b                            ; $5276: $20 $d3

    ld e, l                                       ; $5278: $5d
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00

jr_0b3_527b:
    ld [hl-], a                                   ; $527b: $32
    ld [hl+], a                                   ; $527c: $22
    cp l                                          ; $527d: $bd
    ld b, e                                       ; $527e: $43
    nop                                           ; $527f: $00
    jr nz, jr_0b3_5282                            ; $5280: $20 $00

jr_0b3_5282:
    jr nz, jr_0b3_52b6                            ; $5282: $20 $32

    ld [hl+], a                                   ; $5284: $22
    cp l                                          ; $5285: $bd
    ld b, e                                       ; $5286: $43
    nop                                           ; $5287: $00
    jr nz, jr_0b3_528a                            ; $5288: $20 $00

jr_0b3_528a:
    jr nz, jr_0b3_52be                            ; $528a: $20 $32

    ld [hl+], a                                   ; $528c: $22
    cp l                                          ; $528d: $bd
    ld b, e                                       ; $528e: $43
    nop                                           ; $528f: $00
    jr nz, jr_0b3_5292                            ; $5290: $20 $00

jr_0b3_5292:
    jr nz, jr_0b3_52c6                            ; $5292: $20 $32

    ld [hl+], a                                   ; $5294: $22
    cp l                                          ; $5295: $bd
    ld b, e                                       ; $5296: $43
    nop                                           ; $5297: $00
    jr nz, jr_0b3_529a                            ; $5298: $20 $00

jr_0b3_529a:
    jr nz, jr_0b3_529c                            ; $529a: $20 $00

jr_0b3_529c:
    jr nz, jr_0b3_529e                            ; $529c: $20 $00

jr_0b3_529e:
    jr nz, @-$2b                                  ; $529e: $20 $d3

    ld e, l                                       ; $52a0: $5d
    nop                                           ; $52a1: $00
    jr nz, jr_0b3_52a4                            ; $52a2: $20 $00

jr_0b3_52a4:
    jr nz, jr_0b3_52a6                            ; $52a4: $20 $00

jr_0b3_52a6:
    jr nz, jr_0b3_527b                            ; $52a6: $20 $d3

    ld e, l                                       ; $52a8: $5d
    nop                                           ; $52a9: $00
    jr nz, jr_0b3_52ac                            ; $52aa: $20 $00

jr_0b3_52ac:
    jr nz, jr_0b3_52ae                            ; $52ac: $20 $00

jr_0b3_52ae:
    jr nz, @-$2b                                  ; $52ae: $20 $d3

    ld e, l                                       ; $52b0: $5d
    nop                                           ; $52b1: $00
    inc b                                         ; $52b2: $04

jr_0b3_52b3:
    ld a, [hl-]                                   ; $52b3: $3a
    dec bc                                        ; $52b4: $0b

jr_0b3_52b5:
    rst $38                                       ; $52b5: $ff

jr_0b3_52b6:
    ld l, a                                       ; $52b6: $6f
    rst $20                                       ; $52b7: $e7
    inc c                                         ; $52b8: $0c
    nop                                           ; $52b9: $00
    nop                                           ; $52ba: $00

jr_0b3_52bb:
    nop                                           ; $52bb: $00
    jr nz, @+$01                                  ; $52bc: $20 $ff

jr_0b3_52be:
    ld l, a                                       ; $52be: $6f
    rst $20                                       ; $52bf: $e7
    inc c                                         ; $52c0: $0c
    nop                                           ; $52c1: $00
    jr nz, jr_0b3_52c4                            ; $52c2: $20 $00

jr_0b3_52c4:
    jr nz, @+$01                                  ; $52c4: $20 $ff

jr_0b3_52c6:
    ld l, a                                       ; $52c6: $6f

jr_0b3_52c7:
    rst $20                                       ; $52c7: $e7
    inc c                                         ; $52c8: $0c
    nop                                           ; $52c9: $00
    jr nz, jr_0b3_52cc                            ; $52ca: $20 $00

jr_0b3_52cc:
    jr nz, @+$01                                  ; $52cc: $20 $ff

    ld l, a                                       ; $52ce: $6f

jr_0b3_52cf:
    rst $20                                       ; $52cf: $e7
    inc c                                         ; $52d0: $0c
    nop                                           ; $52d1: $00
    jr nz, jr_0b3_52d4                            ; $52d2: $20 $00

jr_0b3_52d4:
    jr nz, jr_0b3_52d6                            ; $52d4: $20 $00

jr_0b3_52d6:
    jr nz, @-$2b                                  ; $52d6: $20 $d3

    ld e, l                                       ; $52d8: $5d
    nop                                           ; $52d9: $00
    jr nz, jr_0b3_52dc                            ; $52da: $20 $00

jr_0b3_52dc:
    jr nz, jr_0b3_52de                            ; $52dc: $20 $00

jr_0b3_52de:
    jr nz, jr_0b3_52b3                            ; $52de: $20 $d3

    ld e, l                                       ; $52e0: $5d
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00

jr_0b3_52e3:
    rst $38                                       ; $52e3: $ff
    ld a, a                                       ; $52e4: $7f
    nop                                           ; $52e5: $00
    jr nz, jr_0b3_52bb                            ; $52e6: $20 $d3

    ld e, l                                       ; $52e8: $5d
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00

jr_0b3_52eb:
    add hl, sp                                    ; $52eb: $39
    inc de                                        ; $52ec: $13
    cp l                                          ; $52ed: $bd
    ld l, a                                       ; $52ee: $6f
    xor l                                         ; $52ef: $ad
    ld bc, $0000                                  ; $52f0: $01 $00 $00

jr_0b3_52f3:
    rst $38                                       ; $52f3: $ff
    ld a, a                                       ; $52f4: $7f
    nop                                           ; $52f5: $00
    jr nz, @-$51                                  ; $52f6: $20 $ad

    ld bc, $2000                                  ; $52f8: $01 $00 $20
    rst $38                                       ; $52fb: $ff
    ld a, a                                       ; $52fc: $7f
    nop                                           ; $52fd: $00
    jr nz, @-$51                                  ; $52fe: $20 $ad

    ld bc, $2000                                  ; $5300: $01 $00 $20
    rst $38                                       ; $5303: $ff
    ld a, a                                       ; $5304: $7f
    nop                                           ; $5305: $00
    jr nz, jr_0b3_52b5                            ; $5306: $20 $ad

    ld bc, $2000                                  ; $5308: $01 $00 $20
    rst $38                                       ; $530b: $ff
    ld a, a                                       ; $530c: $7f
    nop                                           ; $530d: $00
    jr nz, jr_0b3_52e3                            ; $530e: $20 $d3

    ld e, l                                       ; $5310: $5d
    nop                                           ; $5311: $00
    jr nz, @+$01                                  ; $5312: $20 $ff

    ld a, a                                       ; $5314: $7f
    nop                                           ; $5315: $00
    jr nz, jr_0b3_52eb                            ; $5316: $20 $d3

    ld e, l                                       ; $5318: $5d
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00

jr_0b3_531b:
    rst $38                                       ; $531b: $ff
    ld a, a                                       ; $531c: $7f
    nop                                           ; $531d: $00
    jr nz, jr_0b3_52f3                            ; $531e: $20 $d3

    ld e, l                                       ; $5320: $5d
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00

jr_0b3_5323:
    scf                                           ; $5323: $37
    ld [hl], d                                    ; $5324: $72
    add sp, $1c                                   ; $5325: $e8 $1c
    ld e, l                                       ; $5327: $5d
    ld a, e                                       ; $5328: $7b
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    ld a, [hl]                                    ; $532b: $7e
    ld a, a                                       ; $532c: $7f
    nop                                           ; $532d: $00
    jr nz, @+$01                                  ; $532e: $20 $ff

    ld a, a                                       ; $5330: $7f
    nop                                           ; $5331: $00
    jr nz, jr_0b3_53b2                            ; $5332: $20 $7e

    ld a, a                                       ; $5334: $7f
    nop                                           ; $5335: $00
    jr nz, @+$01                                  ; $5336: $20 $ff

    ld a, a                                       ; $5338: $7f
    nop                                           ; $5339: $00
    jr nz, jr_0b3_53ba                            ; $533a: $20 $7e

    ld a, a                                       ; $533c: $7f
    nop                                           ; $533d: $00
    jr nz, @+$01                                  ; $533e: $20 $ff

    ld a, a                                       ; $5340: $7f
    nop                                           ; $5341: $00
    jr nz, @+$01                                  ; $5342: $20 $ff

    ld a, a                                       ; $5344: $7f
    nop                                           ; $5345: $00
    jr nz, jr_0b3_531b                            ; $5346: $20 $d3

    ld e, l                                       ; $5348: $5d
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    jr nz, jr_0b3_534e                            ; $534c: $20 $00

jr_0b3_534e:
    jr nz, jr_0b3_5323                            ; $534e: $20 $d3

    ld e, l                                       ; $5350: $5d
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    rst $38                                       ; $5353: $ff
    ld a, a                                       ; $5354: $7f

jr_0b3_5355:
    adc [hl]                                      ; $5355: $8e
    ld l, $00                                     ; $5356: $2e $00
    jr nz, jr_0b3_539f                            ; $5358: $20 $45

    jr nz, jr_0b3_53cd                            ; $535a: $20 $71

    ld e, c                                       ; $535c: $59
    dec [hl]                                      ; $535d: $35
    ld h, [hl]                                    ; $535e: $66
    db $ed                                        ; $535f: $ed
    ld b, b                                       ; $5360: $40
    nop                                           ; $5361: $00
    inc b                                         ; $5362: $04
    adc [hl]                                      ; $5363: $8e
    ld l, $df                                     ; $5364: $2e $df
    ld a, a                                       ; $5366: $7f
    sub a                                         ; $5367: $97
    ld h, [hl]                                    ; $5368: $66
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    jr nz, @-$1f                                  ; $536c: $20 $df

    ld a, a                                       ; $536e: $7f
    sub a                                         ; $536f: $97
    ld h, [hl]                                    ; $5370: $66
    nop                                           ; $5371: $00
    jr nz, jr_0b3_5374                            ; $5372: $20 $00

jr_0b3_5374:
    jr nz, jr_0b3_5355                            ; $5374: $20 $df

    ld a, a                                       ; $5376: $7f
    sub a                                         ; $5377: $97
    ld h, [hl]                                    ; $5378: $66
    nop                                           ; $5379: $00
    jr nz, @+$01                                  ; $537a: $20 $ff

    ld a, a                                       ; $537c: $7f
    adc [hl]                                      ; $537d: $8e
    ld l, $00                                     ; $537e: $2e $00
    jr nz, jr_0b3_5382                            ; $5380: $20 $00

jr_0b3_5382:
    nop                                           ; $5382: $00
    ld a, l                                       ; $5383: $7d
    inc de                                        ; $5384: $13
    nop                                           ; $5385: $00
    jr nz, jr_0b3_534e                            ; $5386: $20 $c6

    inc b                                         ; $5388: $04
    ld hl, $6d04                                  ; $5389: $21 $04 $6d
    ld a, [hl+]                                   ; $538c: $2a
    rst $38                                       ; $538d: $ff
    ld a, a                                       ; $538e: $7f
    ld e, e                                       ; $538f: $5b
    inc de                                        ; $5390: $13
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    call z, $b350                                 ; $5393: $cc $50 $b3
    ld h, c                                       ; $5396: $61
    ld l, b                                       ; $5397: $68
    jr c, jr_0b3_539a                             ; $5398: $38 $00

jr_0b3_539a:
    nop                                           ; $539a: $00
    ld l, l                                       ; $539b: $6d
    ld a, [hl+]                                   ; $539c: $2a
    sbc [hl]                                      ; $539d: $9e
    ld a, a                                       ; $539e: $7f

jr_0b3_539f:
    dec d                                         ; $539f: $15
    ld l, d                                       ; $53a0: $6a
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    rst $38                                       ; $53a3: $ff
    ld a, a                                       ; $53a4: $7f
    nop                                           ; $53a5: $00
    jr nz, jr_0b3_53bd                            ; $53a6: $20 $15

    ld l, d                                       ; $53a8: $6a
    nop                                           ; $53a9: $00
    jr nz, @+$01                                  ; $53aa: $20 $ff

    ld a, a                                       ; $53ac: $7f
    nop                                           ; $53ad: $00

jr_0b3_53ae:
    jr nz, jr_0b3_53c5                            ; $53ae: $20 $15

    ld l, d                                       ; $53b0: $6a
    nop                                           ; $53b1: $00

jr_0b3_53b2:
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    inc e                                         ; $53b4: $1c
    nop                                           ; $53b5: $00
    jr nz, jr_0b3_5413                            ; $53b6: $20 $5b

    inc de                                        ; $53b8: $13
    nop                                           ; $53b9: $00

jr_0b3_53ba:
    nop                                           ; $53ba: $00
    sbc $15                                       ; $53bb: $de $15

jr_0b3_53bd:
    sbc [hl]                                      ; $53bd: $9e
    inc de                                        ; $53be: $13
    nop                                           ; $53bf: $00
    jr nz, jr_0b3_53c2                            ; $53c0: $20 $00

jr_0b3_53c2:
    nop                                           ; $53c2: $00

jr_0b3_53c3:
    ld l, l                                       ; $53c3: $6d
    ld a, [hl+]                                   ; $53c4: $2a

jr_0b3_53c5:
    ld a, [hl]                                    ; $53c5: $7e
    ld d, $be                                     ; $53c6: $16 $be
    rla                                           ; $53c8: $17
    nop                                           ; $53c9: $00
    ld [$0256], sp                                ; $53ca: $08 $56 $02

jr_0b3_53cd:
    sbc $0f                                       ; $53cd: $de $0f
    ld e, a                                       ; $53cf: $5f
    ld d, $00                                     ; $53d0: $16 $00
    nop                                           ; $53d2: $00
    sub h                                         ; $53d3: $94
    ld c, $ff                                     ; $53d4: $0e $ff
    inc de                                        ; $53d6: $13
    cp [hl]                                       ; $53d7: $be
    ld [de], a                                    ; $53d8: $12
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    rst $18                                       ; $53db: $df
    ld a, [de]                                    ; $53dc: $1a
    rst $18                                       ; $53dd: $df
    rla                                           ; $53de: $17
    nop                                           ; $53df: $00
    jr nz, jr_0b3_53e2                            ; $53e0: $20 $00

jr_0b3_53e2:
    jr nz, jr_0b3_53c3                            ; $53e2: $20 $df

    ld a, [de]                                    ; $53e4: $1a
    rst $18                                       ; $53e5: $df
    rla                                           ; $53e6: $17
    nop                                           ; $53e7: $00
    jr nz, jr_0b3_53ea                            ; $53e8: $20 $00

jr_0b3_53ea:
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    inc e                                         ; $53ec: $1c
    nop                                           ; $53ed: $00
    jr nz, jr_0b3_53ae                            ; $53ee: $20 $be

    rla                                           ; $53f0: $17
    nop                                           ; $53f1: $00
    ld [$0d1e], sp                                ; $53f2: $08 $1e $0d
    cp d                                          ; $53f5: $ba
    ld [de], a                                    ; $53f6: $12
    rst $38                                       ; $53f7: $ff
    rla                                           ; $53f8: $17
    nop                                           ; $53f9: $00
    nop                                           ; $53fa: $00
    sbc [hl]                                      ; $53fb: $9e

jr_0b3_53fc:
    ld de, $139e                                  ; $53fc: $11 $9e $13
    ld a, d                                       ; $53ff: $7a
    ld [de], a                                    ; $5400: $12
    ld bc, $f300                                  ; $5401: $01 $00 $f3
    add hl, bc                                    ; $5404: $09
    sbc $17                                       ; $5405: $de $17
    cp a                                          ; $5407: $bf
    dec d                                         ; $5408: $15
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    db $dd                                        ; $540b: $dd
    ld de, $1b9f                                  ; $540c: $11 $9f $1b
    rst $28                                       ; $540f: $ef

jr_0b3_5410:
    inc c                                         ; $5410: $0c
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00

jr_0b3_5413:
    db $fc                                        ; $5413: $fc
    ld d, $de                                     ; $5414: $16 $de
    ld a, e                                       ; $5416: $7b
    or d                                          ; $5417: $b2
    ld [$0000], sp                                ; $5418: $08 $00 $00
    nop                                           ; $541b: $00
    jr nz, jr_0b3_53fc                            ; $541c: $20 $de

    ld a, e                                       ; $541e: $7b
    or d                                          ; $541f: $b2
    ld [$0000], sp                                ; $5420: $08 $00 $00
    rst $38                                       ; $5423: $ff
    ld a, a                                       ; $5424: $7f
    nop                                           ; $5425: $00
    jr nz, jr_0b3_5410                            ; $5426: $20 $e8

    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    ld e, a                                       ; $542b: $5f
    ld de, $139e                                  ; $542c: $11 $9e $13
    rrca                                          ; $542f: $0f
    nop                                           ; $5430: $00
    ld [hl+], a                                   ; $5431: $22
    nop                                           ; $5432: $00
    dec a                                         ; $5433: $3d
    ld de, $1a7e                                  ; $5434: $11 $7e $1a
    sbc l                                         ; $5437: $9d
    inc de                                        ; $5438: $13
    inc hl                                        ; $5439: $23
    nop                                           ; $543a: $00
    sbc [hl]                                      ; $543b: $9e
    ld [$2dd7], sp                                ; $543c: $08 $d7 $2d
    ld e, a                                       ; $543f: $5f
    ld [de], a                                    ; $5440: $12
    ld [bc], a                                    ; $5441: $02
    nop                                           ; $5442: $00
    sbc $0c                                       ; $5443: $de $0c
    ld e, $1f                                     ; $5445: $1e $1f
    or b                                          ; $5447: $b0
    inc c                                         ; $5448: $0c
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    dec hl                                        ; $544b: $2b
    ld [hl+], a                                   ; $544c: $22
    rst $38                                       ; $544d: $ff
    scf                                           ; $544e: $37
    db $fc                                        ; $544f: $fc
    inc c                                         ; $5450: $0c
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    rst $38                                       ; $5453: $ff

jr_0b3_5454:
    ld a, a                                       ; $5454: $7f
    nop                                           ; $5455: $00
    jr nz, jr_0b3_5454                            ; $5456: $20 $fc

    inc c                                         ; $5458: $0c
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    sbc e                                         ; $545b: $9b
    ld [de], a                                    ; $545c: $12
    rst $38                                       ; $545d: $ff
    ld a, a                                       ; $545e: $7f
    nop                                           ; $545f: $00
    jr nz, jr_0b3_5462                            ; $5460: $20 $00

jr_0b3_5462:
    nop                                           ; $5462: $00
    ld a, h                                       ; $5463: $7c
    dec c                                         ; $5464: $0d
    rst $38                                       ; $5465: $ff
    rla                                           ; $5466: $17
    ld c, a                                       ; $5467: $4f
    inc b                                         ; $5468: $04
    ld hl, $f000                                  ; $5469: $21 $00 $f0
    ld de, $087f                                  ; $546c: $11 $7f $08
    call c, Call_000_2111                         ; $546f: $dc $11 $21
    nop                                           ; $5472: $00
    sub $2d                                       ; $5473: $d6 $2d
    ld e, a                                       ; $5475: $5f
    ld h, e                                       ; $5476: $63
    rst $18                                       ; $5477: $df
    rla                                           ; $5478: $17
    ld bc, $3d00                                  ; $5479: $01 $00 $3d
    ld de, $5b5f                                  ; $547c: $11 $5f $5b
    cp a                                          ; $547f: $bf
    dec de                                        ; $5480: $1b
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    cp [hl]                                       ; $5483: $be
    ld de, $19ab                                  ; $5484: $11 $ab $19
    rst $38                                       ; $5487: $ff
    rla                                           ; $5488: $17
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    rst $38                                       ; $548b: $ff
    ld a, a                                       ; $548c: $7f
    ld a, [bc]                                    ; $548d: $0a
    ld e, $00                                     ; $548e: $1e $00
    jr nz, jr_0b3_5492                            ; $5490: $20 $00

jr_0b3_5492:
    nop                                           ; $5492: $00
    ld e, a                                       ; $5493: $5f
    dec de                                        ; $5494: $1b
    rst $38                                       ; $5495: $ff
    ld a, a                                       ; $5496: $7f
    ld [$281d], a                                 ; $5497: $ea $1d $28
    nop                                           ; $549a: $00
    ld a, $11                                     ; $549b: $3e $11
    sbc [hl]                                      ; $549d: $9e
    inc de                                        ; $549e: $13
    ld [$051d], a                                 ; $549f: $ea $1d $05
    nop                                           ; $54a2: $00
    adc c                                         ; $54a3: $89
    add hl, de                                    ; $54a4: $19
    ld d, $0d                                     ; $54a5: $16 $0d
    add hl, sp                                    ; $54a7: $39
    ld l, $00                                     ; $54a8: $2e $00
    nop                                           ; $54aa: $00
    sub e                                         ; $54ab: $93
    dec c                                         ; $54ac: $0d
    ld e, b                                       ; $54ad: $58
    ld b, d                                       ; $54ae: $42
    rst $38                                       ; $54af: $ff
    ld [hl], e                                    ; $54b0: $73
    ld bc, $1b00                                  ; $54b1: $01 $00 $1b
    ld de, $5b3c                                  ; $54b4: $11 $3c $5b
    cp a                                          ; $54b7: $bf
    dec de                                        ; $54b8: $1b
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    sbc a                                         ; $54bb: $9f
    dec d                                         ; $54bc: $15
    ld l, h                                       ; $54bd: $6c
    dec d                                         ; $54be: $15
    db $dd                                        ; $54bf: $dd
    ld [de], a                                    ; $54c0: $12
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    rst $38                                       ; $54c3: $ff
    ld a, a                                       ; $54c4: $7f
    ld [$001d], a                                 ; $54c5: $ea $1d $00
    jr nz, jr_0b3_54cb                            ; $54c8: $20 $01

    nop                                           ; $54ca: $00

jr_0b3_54cb:
    jp c, Jump_0b3_5c10                           ; $54cb: $da $10 $5c

    rla                                           ; $54ce: $17
    adc l                                         ; $54cf: $8d
    add hl, bc                                    ; $54d0: $09
    ld [bc], a                                    ; $54d1: $02
    nop                                           ; $54d2: $00
    rra                                           ; $54d3: $1f
    dec c                                         ; $54d4: $0d
    cp $16                                        ; $54d5: $fe $16
    ret                                           ; $54d7: $c9


    add hl, de                                    ; $54d8: $19
    ld bc, $ff00                                  ; $54d9: $01 $00 $ff
    ld [hl], e                                    ; $54dc: $73
    ret                                           ; $54dd: $c9


    dec d                                         ; $54de: $15
    ld d, h                                       ; $54df: $54
    dec c                                         ; $54e0: $0d
    ld hl, $4704                                  ; $54e1: $21 $04 $47
    ld l, c                                       ; $54e4: $69
    sbc a                                         ; $54e5: $9f
    ld l, e                                       ; $54e6: $6b
    push af                                       ; $54e7: $f5
    dec [hl]                                      ; $54e8: $35
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    ld e, c                                       ; $54eb: $59
    ld c, $47                                     ; $54ec: $0e $47
    ld l, c                                       ; $54ee: $69
    rst $38                                       ; $54ef: $ff
    ld a, a                                       ; $54f0: $7f
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    ccf                                           ; $54f3: $3f
    ld d, $c9                                     ; $54f4: $16 $c9
    add hl, de                                    ; $54f6: $19
    ld [hl], b                                    ; $54f7: $70
    ld [$0000], sp                                ; $54f8: $08 $00 $00
    rst $38                                       ; $54fb: $ff
    ld a, a                                       ; $54fc: $7f
    ret                                           ; $54fd: $c9


    add hl, de                                    ; $54fe: $19
    nop                                           ; $54ff: $00
    jr nz, jr_0b3_5502                            ; $5500: $20 $00

jr_0b3_5502:
    ld [$133d], sp                                ; $5502: $08 $3d $13
    rst $38                                       ; $5505: $ff
    ld a, a                                       ; $5506: $7f
    ld [$0600], sp                                ; $5507: $08 $00 $06
    nop                                           ; $550a: $00
    sbc l                                         ; $550b: $9d
    ld [$19c9], sp                                ; $550c: $08 $c9 $19
    cp a                                          ; $550f: $bf
    dec d                                         ; $5510: $15
    jr nz, jr_0b3_5513                            ; $5511: $20 $00

jr_0b3_5513:
    rst $38                                       ; $5513: $ff
    ld d, e                                       ; $5514: $53
    adc d                                         ; $5515: $8a
    dec d                                         ; $5516: $15
    ld d, d                                       ; $5517: $52
    ld [bc], a                                    ; $5518: $02
    ld [hl+], a                                   ; $5519: $22
    nop                                           ; $551a: $00
    push af                                       ; $551b: $f5
    ld sp, $637f                                  ; $551c: $31 $7f $63
    cp [hl]                                       ; $551f: $be
    ld b, [hl]                                    ; $5520: $46
    ld hl, $d700                                  ; $5521: $21 $00 $d7
    ld a, [bc]                                    ; $5524: $0a
    ccf                                           ; $5525: $3f
    ccf                                           ; $5526: $3f
    rst $38                                       ; $5527: $ff
    db $10                                        ; $5528: $10
    ld hl, $7f04                                  ; $5529: $21 $04 $7f
    ld de, $15a8                                  ; $552c: $11 $a8 $15
    ccf                                           ; $552f: $3f
    rla                                           ; $5530: $17
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    rst $38                                       ; $5533: $ff
    ld a, a                                       ; $5534: $7f
    ld l, d                                       ; $5535: $6a
    dec d                                         ; $5536: $15
    nop                                           ; $5537: $00
    jr nz, jr_0b3_553a                            ; $5538: $20 $00

jr_0b3_553a:
    nop                                           ; $553a: $00
    ld e, $12                                     ; $553b: $1e $12
    rst $38                                       ; $553d: $ff
    ld a, a                                       ; $553e: $7f
    nop                                           ; $553f: $00
    jr nz, jr_0b3_5542                            ; $5540: $20 $00

jr_0b3_5542:
    nop                                           ; $5542: $00
    ld a, a                                       ; $5543: $7f
    ld [$15a8], sp                                ; $5544: $08 $a8 $15
    ld a, [hl]                                    ; $5547: $7e
    ld de, $0000                                  ; $5548: $11 $00 $00
    cp $16                                        ; $554b: $fe $16
    xor b                                         ; $554d: $a8
    dec d                                         ; $554e: $15
    inc d                                         ; $554f: $14
    nop                                           ; $5550: $00
    ld b, h                                       ; $5551: $44
    inc b                                         ; $5552: $04
    cp a                                          ; $5553: $bf
    ld b, [hl]                                    ; $5554: $46
    or b                                          ; $5555: $b0
    inc c                                         ; $5556: $0c
    cp c                                          ; $5557: $b9
    inc c                                         ; $5558: $0c
    nop                                           ; $5559: $00
    nop                                           ; $555a: $00
    sbc a                                         ; $555b: $9f
    inc c                                         ; $555c: $0c
    xor b                                         ; $555d: $a8

jr_0b3_555e:
    dec d                                         ; $555e: $15
    cp a                                          ; $555f: $bf
    ld a, [hl-]                                   ; $5560: $3a
    ld b, e                                       ; $5561: $43
    inc b                                         ; $5562: $04
    ld [hl], d                                    ; $5563: $72
    dec c                                         ; $5564: $0d
    sbc a                                         ; $5565: $9f
    ld d, $7e                                     ; $5566: $16 $7e
    ld de, $1c00                                  ; $5568: $11 $00 $1c
    ld e, h                                       ; $556b: $5c
    ld d, $10                                     ; $556c: $16 $10
    inc b                                         ; $556e: $04
    rst $38                                       ; $556f: $ff
    ld a, a                                       ; $5570: $7f
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00

jr_0b3_5573:
    ld a, a                                       ; $5573: $7f
    ld de, $7fff                                  ; $5574: $11 $ff $7f
    nop                                           ; $5577: $00
    jr nz, jr_0b3_557b                            ; $5578: $20 $01

    nop                                           ; $557a: $00

jr_0b3_557b:
    ld a, b                                       ; $557b: $78
    ld [$1187], sp                                ; $557c: $08 $87 $11
    ld a, [hl]                                    ; $557f: $7e
    ld [$0c01], sp                                ; $5580: $08 $01 $0c
    ld a, d                                       ; $5583: $7a
    add hl, bc                                    ; $5584: $09
    add a                                         ; $5585: $87
    ld de, $1b5f                                  ; $5586: $11 $5f $1b
    ld bc, $4e00                                  ; $5589: $01 $00 $4e
    ld hl, $429e                                  ; $558c: $21 $9e $42
    ld [hl], l                                    ; $558f: $75
    ld hl, $0021                                  ; $5590: $21 $21 $00
    sbc [hl]                                      ; $5593: $9e
    ld [$131a], sp                                ; $5594: $08 $1a $13
    add a                                         ; $5597: $87
    ld de, $0000                                  ; $5598: $11 $00 $00
    cp [hl]                                       ; $559b: $be
    inc c                                         ; $559c: $0c
    cp $15                                        ; $559d: $fe $15
    ld e, [hl]                                    ; $559f: $5e
    rla                                           ; $55a0: $17
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    rst $38                                       ; $55a3: $ff
    ld a, a                                       ; $55a4: $7f
    nop                                           ; $55a5: $00
    jr nz, jr_0b3_5573                            ; $55a6: $20 $cb

    ld [$0000], sp                                ; $55a8: $08 $00 $00
    ld a, [hl]                                    ; $55ab: $7e
    ld [$7fff], sp                                ; $55ac: $08 $ff $7f
    nop                                           ; $55af: $00
    jr nz, jr_0b3_55b2                            ; $55b0: $20 $00

jr_0b3_55b2:
    nop                                           ; $55b2: $00
    ld d, c                                       ; $55b3: $51
    inc b                                         ; $55b4: $04
    ld h, [hl]                                    ; $55b5: $66
    ld de, $087f                                  ; $55b6: $11 $7f $08
    nop                                           ; $55b9: $00
    inc b                                         ; $55ba: $04
    rst $18                                       ; $55bb: $df
    dec d                                         ; $55bc: $15
    adc b                                         ; $55bd: $88
    jr nz, jr_0b3_555e                            ; $55be: $20 $9e

    inc hl                                        ; $55c0: $23
    ld bc, $b700                                  ; $55c1: $01 $00 $b7
    dec h                                         ; $55c4: $25
    db $fd                                        ; $55c5: $fd
    ld d, d                                       ; $55c6: $52
    inc c                                         ; $55c7: $0c
    dec c                                         ; $55c8: $0d
    and e                                         ; $55c9: $a3
    ld [$1259], sp                                ; $55ca: $08 $59 $12
    ld [hl], $04                                  ; $55cd: $36 $04
    rst $18                                       ; $55cf: $df
    daa                                           ; $55d0: $27
    ld h, d                                       ; $55d1: $62
    inc b                                         ; $55d2: $04
    cp l                                          ; $55d3: $bd

jr_0b3_55d4:
    inc c                                         ; $55d4: $0c
    ld e, e                                       ; $55d5: $5b
    ld [de], a                                    ; $55d6: $12
    rst $18                                       ; $55d7: $df
    dec de                                        ; $55d8: $1b
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    ld h, [hl]                                    ; $55db: $66
    ld de, $2000                                  ; $55dc: $11 $00 $20
    ld l, a                                       ; $55df: $6f
    add hl, bc                                    ; $55e0: $09
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    rst $38                                       ; $55e3: $ff
    ld a, a                                       ; $55e4: $7f
    ld a, [hl]                                    ; $55e5: $7e
    ld [$2000], sp                                ; $55e6: $08 $00 $20
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    cp a                                          ; $55eb: $bf
    inc c                                         ; $55ec: $0c
    ld a, [hl-]                                   ; $55ed: $3a
    rrca                                          ; $55ee: $0f
    ld b, [hl]                                    ; $55ef: $46
    dec c                                         ; $55f0: $0d
    ld h, h                                       ; $55f1: $64
    inc c                                         ; $55f2: $0c
    rst $10                                       ; $55f3: $d7
    dec c                                         ; $55f4: $0d
    sbc h                                         ; $55f5: $9c
    rra                                           ; $55f6: $1f
    xor d                                         ; $55f7: $aa
    ld bc, $0000                                  ; $55f8: $01 $00 $00
    ld d, d                                       ; $55fb: $52

jr_0b3_55fc:
    ld l, l                                       ; $55fc: $6d
    db $dd                                        ; $55fd: $dd
    ld l, $c9                                     ; $55fe: $2e $c9
    inc c                                         ; $5600: $0c
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    ld a, l                                       ; $5603: $7d
    inc de                                        ; $5604: $13
    dec c                                         ; $5605: $0d
    add hl, bc                                    ; $5606: $09
    rst $38                                       ; $5607: $ff
    ld c, a                                       ; $5608: $4f
    nop                                           ; $5609: $00
    nop                                           ; $560a: $00
    ld a, l                                       ; $560b: $7d
    ld [$169f], sp                                ; $560c: $08 $9f $16
    ld b, l                                       ; $560f: $45
    dec c                                         ; $5610: $0d
    nop                                           ; $5611: $00
    inc e                                         ; $5612: $1c
    ld sp, $5d04                                  ; $5613: $31 $04 $5d
    ld de, $1adf                                  ; $5616: $11 $df $1a
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    rst $38                                       ; $561b: $ff
    ld a, a                                       ; $561c: $7f
    nop                                           ; $561d: $00
    jr nz, jr_0b3_5665                            ; $561e: $20 $45

    add hl, bc                                    ; $5620: $09
    ld hl, $5300                                  ; $5621: $21 $00 $53
    ld c, $de                                     ; $5624: $0e $de
    rla                                           ; $5626: $17
    dec h                                         ; $5627: $25
    dec b                                         ; $5628: $05
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00

jr_0b3_562b:
    cp [hl]                                       ; $562b: $be
    inc de                                        ; $562c: $13
    ld b, l                                       ; $562d: $45
    jr nc, jr_0b3_55d4                            ; $562e: $30 $a4

    nop                                           ; $5630: $00
    ld bc, $aa00                                  ; $5631: $01 $00 $aa
    inc a                                         ; $5634: $3c
    ld d, e                                       ; $5635: $53
    ld l, c                                       ; $5636: $69
    ld h, [hl]                                    ; $5637: $66
    inc e                                         ; $5638: $1c
    ld b, d                                       ; $5639: $42
    nop                                           ; $563a: $00
    db $10                                        ; $563b: $10
    ld b, $24                                     ; $563c: $06 $24
    jr z, @+$01                                   ; $563e: $28 $ff

    rrca                                          ; $5640: $0f
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    rst $38                                       ; $5643: $ff
    ld b, a                                       ; $5644: $47
    dec h                                         ; $5645: $25
    add hl, bc                                    ; $5646: $09
    db $eb                                        ; $5647: $eb
    dec c                                         ; $5648: $0d
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    rst $38                                       ; $564b: $ff
    ld a, a                                       ; $564c: $7f
    nop                                           ; $564d: $00
    jr nz, jr_0b3_5671                            ; $564e: $20 $21

    inc b                                         ; $5650: $04
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    rst $38                                       ; $5653: $ff
    ld a, a                                       ; $5654: $7f
    nop                                           ; $5655: $00
    jr nz, jr_0b3_55fc                            ; $5656: $20 $a4

    nop                                           ; $5658: $00
    ld hl, $9c04                                  ; $5659: $21 $04 $9c
    ccf                                           ; $565c: $3f
    ld a, l                                       ; $565d: $7d
    ld [hl], a                                    ; $565e: $77
    ld c, c                                       ; $565f: $49
    dec c                                         ; $5660: $0d
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    ldh a, [$58]                                  ; $5663: $f0 $58

jr_0b3_5665:
    jr jr_0b3_5676                                ; $5665: $18 $0f

    add sp, $14                                   ; $5667: $e8 $14
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    or [hl]                                       ; $566b: $b6
    ld b, $4b                                     ; $566c: $06 $4b
    ld de, $5bff                                  ; $566e: $11 $ff $5b

jr_0b3_5671:
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    sub l                                         ; $5673: $95
    ld [hl], c                                    ; $5674: $71
    dec hl                                        ; $5675: $2b

jr_0b3_5676:
    ld de, $1b18                                  ; $5676: $11 $18 $1b
    ld b, d                                       ; $5679: $42
    inc b                                         ; $567a: $04
    cpl                                           ; $567b: $2f
    ld d, l                                       ; $567c: $55
    cp l                                          ; $567d: $bd
    ld b, a                                       ; $567e: $47
    ld a, l                                       ; $567f: $7d
    ld [hl], a                                    ; $5680: $77
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    jr nz, jr_0b3_562b                            ; $5684: $20 $a5

    db $10                                        ; $5686: $10
    ld [$000d], sp                                ; $5687: $08 $0d $00
    nop                                           ; $568a: $00
    rst $38                                       ; $568b: $ff
    ld b, e                                       ; $568c: $43
    nop                                           ; $568d: $00
    jr nz, @+$01                                  ; $568e: $20 $ff

    ld a, a                                       ; $5690: $7f
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    ld a, e                                       ; $5693: $7b
    scf                                           ; $5694: $37
    sbc h                                         ; $5695: $9c
    ld l, e                                       ; $5696: $6b
    ld a, [bc]                                    ; $5697: $0a
    dec d                                         ; $5698: $15
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    jr jr_0b3_56ac                                ; $569b: $18 $0f

    ld d, $6e                                     ; $569d: $16 $6e
    adc c                                         ; $569f: $89
    jr c, @+$23                                   ; $56a0: $38 $21

    nop                                           ; $56a2: $00
    ld a, e                                       ; $56a3: $7b
    inc de                                        ; $56a4: $13
    rst $38                                       ; $56a5: $ff
    ld l, e                                       ; $56a6: $6b
    ld h, a                                       ; $56a7: $67
    inc l                                         ; $56a8: $2c
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    rst $10                                       ; $56ab: $d7

jr_0b3_56ac:
    ld c, $ff                                     ; $56ac: $0e $ff
    ld a, e                                       ; $56ae: $7b
    ld b, [hl]                                    ; $56af: $46
    jr c, jr_0b3_56b2                             ; $56b0: $38 $00

jr_0b3_56b2:
    ld [$69f6], sp                                ; $56b2: $08 $f6 $69
    sbc $1f                                       ; $56b5: $de $1f
    ld c, c                                       ; $56b7: $49
    ld bc, $0000                                  ; $56b8: $01 $00 $00
    cp l                                          ; $56bb: $bd
    ccf                                           ; $56bc: $3f
    nop                                           ; $56bd: $00
    jr nz, @+$6d                                  ; $56be: $20 $6b

    add hl, de                                    ; $56c0: $19
    nop                                           ; $56c1: $00
    jr nz, jr_0b3_571e                            ; $56c2: $20 $5a

    dec sp                                        ; $56c4: $3b
    rst $38                                       ; $56c5: $ff
    ld d, e                                       ; $56c6: $53
    ld hl, $0004                                  ; $56c7: $21 $04 $00
    nop                                           ; $56ca: $00
    ld e, d                                       ; $56cb: $5a
    daa                                           ; $56cc: $27
    ret                                           ; $56cd: $c9


    inc l                                         ; $56ce: $2c
    cp d                                          ; $56cf: $ba
    ld a, d                                       ; $56d0: $7a
    ld hl, $7b08                                  ; $56d1: $21 $08 $7b
    dec bc                                        ; $56d4: $0b
    ld a, b                                       ; $56d5: $78
    ld a, d                                       ; $56d6: $7a
    adc $11                                       ; $56d7: $ce $11
    nop                                           ; $56d9: $00
    inc b                                         ; $56da: $04
    ld sp, $3506                                  ; $56db: $31 $06 $35
    ld l, d                                       ; $56de: $6a
    rst $38                                       ; $56df: $ff
    dec bc                                        ; $56e0: $0b
    ld hl, $ae00                                  ; $56e1: $21 $00 $ae
    ld bc, $7edb                                  ; $56e4: $01 $db $7e
    ld l, h                                       ; $56e7: $6c
    ld sp, $0c21                                  ; $56e8: $31 $21 $0c
    ld a, b                                       ; $56eb: $78
    ld [hl], d                                    ; $56ec: $72
    adc h                                         ; $56ed: $8c
    ld de, $075b                                  ; $56ee: $11 $5b $07
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    ld hl, sp+$3a                                 ; $56f3: $f8 $3a
    rst $38                                       ; $56f5: $ff
    ld h, a                                       ; $56f6: $67
    nop                                           ; $56f7: $00
    jr nz, jr_0b3_56fa                            ; $56f8: $20 $00

jr_0b3_56fa:
    jr nz, @+$3b                                  ; $56fa: $20 $39

    ld b, a                                       ; $56fc: $47
    rst $38                                       ; $56fd: $ff
    ld a, a                                       ; $56fe: $7f
    ld hl, $0004                                  ; $56ff: $21 $04 $00
    nop                                           ; $5702: $00
    rla                                           ; $5703: $17
    ld a, d                                       ; $5704: $7a
    rst $38                                       ; $5705: $ff
    ld h, a                                       ; $5706: $67
    ld h, a                                       ; $5707: $67
    jr c, jr_0b3_570a                             ; $5708: $38 $00

jr_0b3_570a:
    nop                                           ; $570a: $00
    ld [hl], e                                    ; $570b: $73
    ld [bc], a                                    ; $570c: $02
    db $d3                                        ; $570d: $d3
    ld e, l                                       ; $570e: $5d
    ret z                                         ; $570f: $c8

    inc d                                         ; $5710: $14
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    ld d, [hl]                                    ; $5713: $56
    ld h, [hl]                                    ; $5714: $66
    adc h                                         ; $5715: $8c
    dec b                                         ; $5716: $05
    add l                                         ; $5717: $85
    inc h                                         ; $5718: $24
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00

jr_0b3_571b:
    di                                            ; $571b: $f3
    ld e, c                                       ; $571c: $59
    ld d, [hl]                                    ; $571d: $56

jr_0b3_571e:
    ld h, [hl]                                    ; $571e: $66
    ld [hl], a                                    ; $571f: $77
    ld l, d                                       ; $5720: $6a
    nop                                           ; $5721: $00
    inc b                                         ; $5722: $04
    rla                                           ; $5723: $17
    rra                                           ; $5724: $1f
    sbc l                                         ; $5725: $9d
    ld h, e                                       ; $5726: $63
    inc c                                         ; $5727: $0c
    ld b, l                                       ; $5728: $45
    nop                                           ; $5729: $00
    jr nz, @+$55                                  ; $572a: $20 $53

    ld h, $bd                                     ; $572c: $26 $bd
    ld e, a                                       ; $572e: $5f
    ld hl, $0004                                  ; $572f: $21 $04 $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    jr nz, jr_0b3_5757                            ; $5734: $20 $21

    inc b                                         ; $5736: $04
    ret z                                         ; $5737: $c8

    inc d                                         ; $5738: $14
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    ld d, e                                       ; $573b: $53
    ld h, $ff                                     ; $573c: $26 $ff
    ld b, a                                       ; $573e: $47
    sbc l                                         ; $573f: $9d
    rrca                                          ; $5740: $0f
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    or c                                          ; $5743: $b1
    ld d, c                                       ; $5744: $51
    xor l                                         ; $5745: $ad
    ld bc, $6656                                  ; $5746: $01 $56 $66
    ld h, e                                       ; $5749: $63
    nop                                           ; $574a: $00
    dec [hl]                                      ; $574b: $35
    ld h, [hl]                                    ; $574c: $66
    ld e, d                                       ; $574d: $5a
    inc bc                                        ; $574e: $03

jr_0b3_574f:
    ld [hl-], a                                   ; $574f: $32
    ld [bc], a                                    ; $5750: $02
    ld hl, $9004                                  ; $5751: $21 $04 $90
    ld c, l                                       ; $5754: $4d
    ld [hl], $66                                  ; $5755: $36 $66

jr_0b3_5757:
    jp nc, $2155                                  ; $5757: $d2 $55 $21

    nop                                           ; $575a: $00
    cp [hl]                                       ; $575b: $be
    dec bc                                        ; $575c: $0b
    rst $38                                       ; $575d: $ff
    ld a, a                                       ; $575e: $7f
    sbc h                                         ; $575f: $9c
    ccf                                           ; $5760: $3f
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    jr nz, jr_0b3_5787                            ; $5764: $20 $21

    inc b                                         ; $5766: $04
    sbc h                                         ; $5767: $9c
    ccf                                           ; $5768: $3f
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    jr nz, jr_0b3_571b                            ; $576c: $20 $ad

    ld bc, $6656                                  ; $576e: $01 $56 $66
    nop                                           ; $5771: $00

jr_0b3_5772:
    nop                                           ; $5772: $00
    or h                                          ; $5773: $b4
    ld l, c                                       ; $5774: $69
    ld l, [hl]                                    ; $5775: $6e
    add hl, hl                                    ; $5776: $29
    rst $38                                       ; $5777: $ff
    ld a, a                                       ; $5778: $7f
    ld hl, $ec04                                  ; $5779: $21 $04 $ec
    inc a                                         ; $577c: $3c
    call $d201                                    ; $577d: $cd $01 $d2
    ld d, l                                       ; $5780: $55
    ld h, h                                       ; $5781: $64
    inc c                                         ; $5782: $0c
    dec l                                         ; $5783: $2d
    dec a                                         ; $5784: $3d
    or $22                                        ; $5785: $f6 $22

jr_0b3_5787:
    or c                                          ; $5787: $b1
    ld d, l                                       ; $5788: $55
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    db $eb                                        ; $578b: $eb
    inc a                                         ; $578c: $3c
    jp nc, $6f55                                  ; $578d: $d2 $55 $6f

jr_0b3_5790:
    ld c, c                                       ; $5790: $49
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    or e                                          ; $5793: $b3
    ld h, c                                       ; $5794: $61
    rst $38                                       ; $5795: $ff
    ld a, a                                       ; $5796: $7f
    ld h, a                                       ; $5797: $67
    inc h                                         ; $5798: $24
    nop                                           ; $5799: $00
    jr nz, jr_0b3_574f                            ; $579a: $20 $b3

    ld h, c                                       ; $579c: $61
    rst $38                                       ; $579d: $ff
    ld a, a                                       ; $579e: $7f
    ld h, a                                       ; $579f: $67
    inc h                                         ; $57a0: $24
    nop                                           ; $57a1: $00
    jr nz, jr_0b3_5790                            ; $57a2: $20 $ec

    inc a                                         ; $57a4: $3c
    call $d201                                    ; $57a5: $cd $01 $d2
    ld d, l                                       ; $57a8: $55
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    sub d                                         ; $57ab: $92
    ld e, c                                       ; $57ac: $59
    rst $38                                       ; $57ad: $ff
    ld a, a                                       ; $57ae: $7f
    ret                                           ; $57af: $c9


    jr nc, jr_0b3_57b2                            ; $57b0: $30 $00

jr_0b3_57b2:
    nop                                           ; $57b2: $00
    rrca                                          ; $57b3: $0f
    ld d, c                                       ; $57b4: $51
    xor c                                         ; $57b5: $a9
    inc [hl]                                      ; $57b6: $34
    or e                                          ; $57b7: $b3
    ld h, l                                       ; $57b8: $65
    ld b, d                                       ; $57b9: $42
    nop                                           ; $57ba: $00
    jr jr_0b3_57c8                                ; $57bb: $18 $0b

    adc c                                         ; $57bd: $89
    jr nc, @+$4d                                  ; $57be: $30 $4b

    dec d                                         ; $57c0: $15
    nop                                           ; $57c1: $00
    inc b                                         ; $57c2: $04
    add a                                         ; $57c3: $87
    jr z, @+$47                                   ; $57c4: $28 $45

    jr jr_0b3_5772                                ; $57c6: $18 $aa

jr_0b3_57c8:
    jr c, jr_0b3_57ca                             ; $57c8: $38 $00

jr_0b3_57ca:
    inc b                                         ; $57ca: $04
    ld d, b                                       ; $57cb: $50
    ld d, c                                       ; $57cc: $51
    rst $38                                       ; $57cd: $ff
    ld a, a                                       ; $57ce: $7f
    ld h, a                                       ; $57cf: $67
    jr z, jr_0b3_57d2                             ; $57d0: $28 $00

jr_0b3_57d2:
    jr nz, jr_0b3_5824                            ; $57d2: $20 $50

    ld d, c                                       ; $57d4: $51
    rst $38                                       ; $57d5: $ff
    ld a, a                                       ; $57d6: $7f
    ld h, a                                       ; $57d7: $67
    jr z, jr_0b3_57da                             ; $57d8: $28 $00

jr_0b3_57da:
    jr nz, @+$11                                  ; $57da: $20 $0f

    ld d, c                                       ; $57dc: $51
    xor c                                         ; $57dd: $a9
    inc [hl]                                      ; $57de: $34
    or e                                          ; $57df: $b3
    ld h, l                                       ; $57e0: $65
    ld bc, $0d0c                                  ; $57e1: $01 $0c $0d
    ld b, l                                       ; $57e4: $45
    rst $38                                       ; $57e5: $ff
    ld a, a                                       ; $57e6: $7f
    or e                                          ; $57e7: $b3
    ld e, l                                       ; $57e8: $5d
    ld hl, $cc04                                  ; $57e9: $21 $04 $cc
    ld b, b                                       ; $57ec: $40
    or e                                          ; $57ed: $b3
    ld e, l                                       ; $57ee: $5d
    ld b, h                                       ; $57ef: $44
    jr jr_0b3_5834                                ; $57f0: $18 $42

    ld [$098c], sp                                ; $57f2: $08 $8c $09
    ld b, [hl]                                    ; $57f5: $46
    jr nz, jr_0b3_5810                            ; $57f6: $20 $18

    rlca                                          ; $57f8: $07
    ld hl, $4304                                  ; $57f9: $21 $04 $43
    inc d                                         ; $57fc: $14
    ld [hl+], a                                   ; $57fd: $22
    inc c                                         ; $57fe: $0c
    ld h, [hl]                                    ; $57ff: $66
    jr nz, jr_0b3_5802                            ; $5800: $20 $00

jr_0b3_5802:
    nop                                           ; $5802: $00
    rst $38                                       ; $5803: $ff
    ld a, a                                       ; $5804: $7f
    dec c                                         ; $5805: $0d
    ld b, l                                       ; $5806: $45
    ld b, e                                       ; $5807: $43
    jr nz, jr_0b3_580a                            ; $5808: $20 $00

jr_0b3_580a:
    jr nz, @+$01                                  ; $580a: $20 $ff

    ld a, a                                       ; $580c: $7f
    dec c                                         ; $580d: $0d
    ld b, l                                       ; $580e: $45
    ld b, e                                       ; $580f: $43

jr_0b3_5810:
    jr nz, jr_0b3_5812                            ; $5810: $20 $00

jr_0b3_5812:
    inc e                                         ; $5812: $1c
    nop                                           ; $5813: $00
    jr nz, @-$4b                                  ; $5814: $20 $b3

    ld e, l                                       ; $5816: $5d
    ld b, h                                       ; $5817: $44
    jr jr_0b3_581a                                ; $5818: $18 $00

jr_0b3_581a:
    nop                                           ; $581a: $00
    rst $38                                       ; $581b: $ff
    ld a, a                                       ; $581c: $7f
    ld c, [hl]                                    ; $581d: $4e
    ld c, c                                       ; $581e: $49
    ld hl, $0020                                  ; $581f: $21 $20 $00
    nop                                           ; $5822: $00
    db $ec                                        ; $5823: $ec

jr_0b3_5824:
    inc a                                         ; $5824: $3c
    ld b, h                                       ; $5825: $44
    db $10                                        ; $5826: $10
    db $d3                                        ; $5827: $d3
    ld e, l                                       ; $5828: $5d
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00

jr_0b3_582b:
    rst $38                                       ; $582b: $ff
    ld a, a                                       ; $582c: $7f
    dec c                                         ; $582d: $0d
    ld b, l                                       ; $582e: $45
    ld b, e                                       ; $582f: $43

jr_0b3_5830:
    jr nz, jr_0b3_5832                            ; $5830: $20 $00

jr_0b3_5832:
    nop                                           ; $5832: $00

jr_0b3_5833:
    rst $38                                       ; $5833: $ff

jr_0b3_5834:
    ld a, a                                       ; $5834: $7f
    dec c                                         ; $5835: $0d
    ld b, l                                       ; $5836: $45
    ld b, e                                       ; $5837: $43

jr_0b3_5838:
    jr nz, jr_0b3_583a                            ; $5838: $20 $00

jr_0b3_583a:
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    ld a, a                                       ; $583c: $7f
    nop                                           ; $583d: $00
    jr nz, @+$45                                  ; $583e: $20 $43

jr_0b3_5840:
    jr nz, jr_0b3_5842                            ; $5840: $20 $00

jr_0b3_5842:
    jr nz, @+$01                                  ; $5842: $20 $ff

    ld a, a                                       ; $5844: $7f
    nop                                           ; $5845: $00
    jr nz, @+$45                                  ; $5846: $20 $43

    jr nz, jr_0b3_584a                            ; $5848: $20 $00

jr_0b3_584a:
    jr nz, jr_0b3_5838                            ; $584a: $20 $ec

    inc a                                         ; $584c: $3c
    ld b, h                                       ; $584d: $44
    db $10                                        ; $584e: $10
    db $d3                                        ; $584f: $d3
    ld e, l                                       ; $5850: $5d
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    rst $38                                       ; $5853: $ff
    ld a, a                                       ; $5854: $7f
    nop                                           ; $5855: $00
    jr nz, jr_0b3_582b                            ; $5856: $20 $d3

    ld e, l                                       ; $5858: $5d
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    rst $38                                       ; $585b: $ff
    ld a, a                                       ; $585c: $7f
    nop                                           ; $585d: $00
    jr nz, jr_0b3_5833                            ; $585e: $20 $d3

    ld e, l                                       ; $5860: $5d
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    jr nz, jr_0b3_5866                            ; $5864: $20 $00

jr_0b3_5866:
    jr nz, jr_0b3_58ab                            ; $5866: $20 $43

    jr nz, jr_0b3_586a                            ; $5868: $20 $00

jr_0b3_586a:
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    jr nz, jr_0b3_586e                            ; $586c: $20 $00

jr_0b3_586e:
    jr nz, @+$45                                  ; $586e: $20 $43

    jr nz, jr_0b3_5872                            ; $5870: $20 $00

jr_0b3_5872:
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    jr nz, jr_0b3_5876                            ; $5874: $20 $00

jr_0b3_5876:
    jr nz, @+$45                                  ; $5876: $20 $43

    jr nz, jr_0b3_587a                            ; $5878: $20 $00

jr_0b3_587a:
    jr nz, jr_0b3_587c                            ; $587a: $20 $00

jr_0b3_587c:
    jr nz, jr_0b3_587e                            ; $587c: $20 $00

jr_0b3_587e:
    jr nz, @+$45                                  ; $587e: $20 $43

    jr nz, jr_0b3_5882                            ; $5880: $20 $00

jr_0b3_5882:
    jr nz, jr_0b3_5884                            ; $5882: $20 $00

jr_0b3_5884:
    jr nz, jr_0b3_589e                            ; $5884: $20 $18

    ld [hl], a                                    ; $5886: $77
    ld c, b                                       ; $5887: $48
    ld b, l                                       ; $5888: $45
    nop                                           ; $5889: $00
    jr nz, jr_0b3_588c                            ; $588a: $20 $00

jr_0b3_588c:
    jr nz, jr_0b3_58a6                            ; $588c: $20 $18

    ld [hl], a                                    ; $588e: $77
    ld c, b                                       ; $588f: $48
    ld b, l                                       ; $5890: $45
    nop                                           ; $5891: $00
    jr nz, jr_0b3_5894                            ; $5892: $20 $00

jr_0b3_5894:
    jr nz, jr_0b3_58ae                            ; $5894: $20 $18

    ld [hl], a                                    ; $5896: $77
    ld c, b                                       ; $5897: $48
    ld b, l                                       ; $5898: $45
    nop                                           ; $5899: $00
    jr nz, jr_0b3_5830                            ; $589a: $20 $94

    ld [hl], d                                    ; $589c: $72
    sbc h                                         ; $589d: $9c

jr_0b3_589e:
    ld a, e                                       ; $589e: $7b
    cp l                                          ; $589f: $bd
    ld a, e                                       ; $58a0: $7b
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    rst $18                                       ; $58a3: $df
    add hl, sp                                    ; $58a4: $39
    nop                                           ; $58a5: $00

jr_0b3_58a6:
    jr nz, jr_0b3_58cc                            ; $58a6: $20 $24

    inc b                                         ; $58a8: $04
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00

jr_0b3_58ab:
    ccf                                           ; $58ab: $3f
    ld b, [hl]                                    ; $58ac: $46
    nop                                           ; $58ad: $00

jr_0b3_58ae:
    jr nz, jr_0b3_5838                            ; $58ae: $20 $88

    stop                                          ; $58b0: $10 $00
    jr nz, @+$41                                  ; $58b2: $20 $3f

    ld b, [hl]                                    ; $58b4: $46
    nop                                           ; $58b5: $00
    jr nz, jr_0b3_5840                            ; $58b6: $20 $88

    stop                                          ; $58b8: $10 $00
    jr nz, jr_0b3_58bc                            ; $58ba: $20 $00

jr_0b3_58bc:
    jr nz, jr_0b3_58d6                            ; $58bc: $20 $18

    ld [hl], a                                    ; $58be: $77
    ld c, b                                       ; $58bf: $48
    ld b, l                                       ; $58c0: $45
    nop                                           ; $58c1: $00
    jr nz, jr_0b3_58c4                            ; $58c2: $20 $00

jr_0b3_58c4:
    jr nz, jr_0b3_58de                            ; $58c4: $20 $18

    ld [hl], a                                    ; $58c6: $77
    ld c, b                                       ; $58c7: $48
    ld b, l                                       ; $58c8: $45
    nop                                           ; $58c9: $00
    jr nz, jr_0b3_58cc                            ; $58ca: $20 $00

jr_0b3_58cc:
    jr nz, jr_0b3_58e6                            ; $58cc: $20 $18

    ld [hl], a                                    ; $58ce: $77
    ld c, b                                       ; $58cf: $48
    ld b, l                                       ; $58d0: $45
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    adc e                                         ; $58d3: $8b
    ld d, c                                       ; $58d4: $51
    sub h                                         ; $58d5: $94

jr_0b3_58d6:
    ld [hl], d                                    ; $58d6: $72
    ld a, a                                       ; $58d7: $7f

jr_0b3_58d8:
    ld c, [hl]                                    ; $58d8: $4e
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    ld a, c                                       ; $58db: $79
    inc c                                         ; $58dc: $0c
    ld e, a                                       ; $58dd: $5f

jr_0b3_58de:
    ld c, d                                       ; $58de: $4a
    dec c                                         ; $58df: $0d
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    ld [$2dec], sp                                ; $58e2: $08 $ec $2d
    rst $38                                       ; $58e5: $ff

jr_0b3_58e6:
    ld a, a                                       ; $58e6: $7f
    cp b                                          ; $58e7: $b8
    inc d                                         ; $58e8: $14

jr_0b3_58e9:
    nop                                           ; $58e9: $00
    jr nz, jr_0b3_58d8                            ; $58ea: $20 $ec

    dec l                                         ; $58ec: $2d
    rst $38                                       ; $58ed: $ff
    ld a, a                                       ; $58ee: $7f
    cp b                                          ; $58ef: $b8
    inc d                                         ; $58f0: $14
    nop                                           ; $58f1: $00
    jr nz, jr_0b3_58f4                            ; $58f2: $20 $00

jr_0b3_58f4:
    jr nz, jr_0b3_590e                            ; $58f4: $20 $18

    ld [hl], a                                    ; $58f6: $77
    ld c, b                                       ; $58f7: $48
    ld b, l                                       ; $58f8: $45
    nop                                           ; $58f9: $00
    jr nz, jr_0b3_58fc                            ; $58fa: $20 $00

jr_0b3_58fc:
    jr nz, @+$1a                                  ; $58fc: $20 $18

    ld [hl], a                                    ; $58fe: $77
    ld c, b                                       ; $58ff: $48
    ld b, l                                       ; $5900: $45
    nop                                           ; $5901: $00
    jr nz, jr_0b3_58e9                            ; $5902: $20 $e5

    inc a                                         ; $5904: $3c
    rst $28                                       ; $5905: $ef
    ld h, c                                       ; $5906: $61
    dec b                                         ; $5907: $05
    dec a                                         ; $5908: $3d
    ld bc, $0600                                  ; $5909: $01 $00 $06
    dec a                                         ; $590c: $3d
    cp c                                          ; $590d: $b9

jr_0b3_590e:
    inc d                                         ; $590e: $14
    ld [$0024], sp                                ; $590f: $08 $24 $00
    nop                                           ; $5912: $00
    ld a, [bc]                                    ; $5913: $0a
    nop                                           ; $5914: $00
    ld [hl], $04                                  ; $5915: $36 $04
    rrca                                          ; $5917: $0f
    nop                                           ; $5918: $00

jr_0b3_5919:
    nop                                           ; $5919: $00
    inc b                                         ; $591a: $04
    dec a                                         ; $591b: $3d
    ld [de], a                                    ; $591c: $12
    rst $38                                       ; $591d: $ff
    ld c, a                                       ; $591e: $4f
    ld l, e                                       ; $591f: $6b
    add hl, de                                    ; $5920: $19
    nop                                           ; $5921: $00
    jr nz, jr_0b3_5961                            ; $5922: $20 $3d

    ld [de], a                                    ; $5924: $12
    rst $38                                       ; $5925: $ff
    ld c, a                                       ; $5926: $4f
    ld l, e                                       ; $5927: $6b
    add hl, de                                    ; $5928: $19
    nop                                           ; $5929: $00
    jr nz, @-$19                                  ; $592a: $20 $e5

    inc a                                         ; $592c: $3c
    rst $28                                       ; $592d: $ef
    ld h, c                                       ; $592e: $61
    dec b                                         ; $592f: $05
    dec a                                         ; $5930: $3d
    nop                                           ; $5931: $00
    jr nz, jr_0b3_5919                            ; $5932: $20 $e5

    inc a                                         ; $5934: $3c
    rst $28                                       ; $5935: $ef
    ld h, c                                       ; $5936: $61
    dec b                                         ; $5937: $05
    dec a                                         ; $5938: $3d
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    ld l, d                                       ; $593b: $6a
    ld b, l                                       ; $593c: $45
    rrca                                          ; $593d: $0f
    ld d, [hl]                                    ; $593e: $56
    nop                                           ; $593f: $00
    jr nz, jr_0b3_5942                            ; $5940: $20 $00

jr_0b3_5942:
    nop                                           ; $5942: $00
    sbc b                                         ; $5943: $98

jr_0b3_5944:
    ld a, [hl-]                                   ; $5944: $3a
    ld [$4f24], sp                                ; $5945: $08 $24 $4f
    ld [$0001], sp                                ; $5948: $08 $01 $00
    dec hl                                        ; $594b: $2b
    inc b                                         ; $594c: $04
    ld [hl-], a                                   ; $594d: $32
    inc b                                         ; $594e: $04
    ret c                                         ; $594f: $d8

    jr jr_0b3_5952                                ; $5950: $18 $00

jr_0b3_5952:
    nop                                           ; $5952: $00
    sbc c                                         ; $5953: $99
    ld d, $ff                                     ; $5954: $16 $ff

jr_0b3_5956:
    ld a, a                                       ; $5956: $7f
    dec bc                                        ; $5957: $0b
    dec c                                         ; $5958: $0d
    nop                                           ; $5959: $00
    jr nz, @-$65                                  ; $595a: $20 $99

    ld d, $ff                                     ; $595c: $16 $ff
    ld a, a                                       ; $595e: $7f
    dec bc                                        ; $595f: $0b
    dec c                                         ; $5960: $0d

jr_0b3_5961:
    nop                                           ; $5961: $00
    jr nz, @+$6c                                  ; $5962: $20 $6a

    ld b, l                                       ; $5964: $45
    rrca                                          ; $5965: $0f
    ld d, [hl]                                    ; $5966: $56
    nop                                           ; $5967: $00
    jr nz, jr_0b3_596a                            ; $5968: $20 $00

jr_0b3_596a:
    jr nz, jr_0b3_59d6                            ; $596a: $20 $6a

    ld b, l                                       ; $596c: $45
    rrca                                          ; $596d: $0f
    ld d, [hl]                                    ; $596e: $56
    nop                                           ; $596f: $00

jr_0b3_5970:
    jr nz, jr_0b3_5972                            ; $5970: $20 $00

jr_0b3_5972:
    ld [$2aba], sp                                ; $5972: $08 $ba $2a
    or h                                          ; $5975: $b4
    ld h, d                                       ; $5976: $62
    ld [hl], c                                    ; $5977: $71
    dec d                                         ; $5978: $15
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    or d                                          ; $597b: $b2

jr_0b3_597c:
    dec d                                         ; $597c: $15
    add hl, hl                                    ; $597d: $29
    jr jr_0b3_597c                                ; $597e: $18 $fc

    ld [hl], $00                                  ; $5980: $36 $00
    nop                                           ; $5982: $00
    cpl                                           ; $5983: $2f
    inc b                                         ; $5984: $04
    add hl, bc                                    ; $5985: $09
    nop                                           ; $5986: $00
    sub [hl]                                      ; $5987: $96
    db $10                                        ; $5988: $10
    ld [bc], a                                    ; $5989: $02
    nop                                           ; $598a: $00
    or b                                          ; $598b: $b0
    dec c                                         ; $598c: $0d
    rst $38                                       ; $598d: $ff
    ld bc, $273d                                  ; $598e: $01 $3d $27
    nop                                           ; $5991: $00
    jr nz, jr_0b3_5944                            ; $5992: $20 $b0

    dec c                                         ; $5994: $0d
    rst $38                                       ; $5995: $ff
    ld bc, $273d                                  ; $5996: $01 $3d $27
    nop                                           ; $5999: $00
    jr nz, jr_0b3_5956                            ; $599a: $20 $ba

    ld a, [hl+]                                   ; $599c: $2a
    or h                                          ; $599d: $b4
    ld h, d                                       ; $599e: $62
    ld [hl], c                                    ; $599f: $71
    dec d                                         ; $59a0: $15
    nop                                           ; $59a1: $00
    jr nz, jr_0b3_5a16                            ; $59a2: $20 $72

    ld e, [hl]                                    ; $59a4: $5e

jr_0b3_59a5:
    ld e, d                                       ; $59a5: $5a
    ld [hl], e                                    ; $59a6: $73
    or h                                          ; $59a7: $b4
    ld h, d                                       ; $59a8: $62
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    sbc h                                         ; $59ab: $9c
    ld [hl], a                                    ; $59ac: $77
    db $eb                                        ; $59ad: $eb
    ld [$15b3], sp                                ; $59ae: $08 $b3 $15
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    or d                                          ; $59b3: $b2
    dec e                                         ; $59b4: $1d
    add hl, bc                                    ; $59b5: $09
    jr z, jr_0b3_5970                             ; $59b6: $28 $b8

    ld b, [hl]                                    ; $59b8: $46
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    ld d, b                                       ; $59bb: $50
    ld [$14b8], sp                                ; $59bc: $08 $b8 $14
    daa                                           ; $59bf: $27
    inc b                                         ; $59c0: $04
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    ld d, h                                       ; $59c3: $54
    ld bc, $00cc                                  ; $59c4: $01 $cc $00
    ld e, h                                       ; $59c7: $5c
    ld [de], a                                    ; $59c8: $12
    nop                                           ; $59c9: $00
    jr nz, jr_0b3_5a20                            ; $59ca: $20 $54

    ld bc, $00cc                                  ; $59cc: $01 $cc $00
    ld e, h                                       ; $59cf: $5c
    ld [de], a                                    ; $59d0: $12
    nop                                           ; $59d1: $00
    jr nz, jr_0b3_5970                            ; $59d2: $20 $9c

    ld [hl], a                                    ; $59d4: $77
    db $eb                                        ; $59d5: $eb

jr_0b3_59d6:
    ld [$15b3], sp                                ; $59d6: $08 $b3 $15
    nop                                           ; $59d9: $00
    jr jr_0b3_5a0c                                ; $59da: $18 $30

    ld e, d                                       ; $59dc: $5a
    sbc $7b                                       ; $59dd: $de $7b
    or $66                                        ; $59df: $f6 $66
    ld [hl+], a                                   ; $59e1: $22
    nop                                           ; $59e2: $00
    or e                                          ; $59e3: $b3
    dec d                                         ; $59e4: $15
    add hl, bc                                    ; $59e5: $09
    jr z, jr_0b3_59a5                             ; $59e6: $28 $bd

    ld h, $01                                     ; $59e8: $26 $01
    inc b                                         ; $59ea: $04
    ld d, b                                       ; $59eb: $50

jr_0b3_59ec:
    ld de, $229b                                  ; $59ec: $11 $9b $22
    ld a, [hl]                                    ; $59ef: $7e
    ld e, e                                       ; $59f0: $5b
    nop                                           ; $59f1: $00
    nop                                           ; $59f2: $00
    ld a, [bc]                                    ; $59f3: $0a
    nop                                           ; $59f4: $00
    add hl, bc                                    ; $59f5: $09
    jr z, jr_0b3_59fe                             ; $59f6: $28 $06

    nop                                           ; $59f8: $00
    nop                                           ; $59f9: $00
    inc b                                         ; $59fa: $04
    ld de, $bd09                                  ; $59fb: $11 $09 $bd

jr_0b3_59fe:
    ld a, e                                       ; $59fe: $7b
    ccf                                           ; $59ff: $3f
    ld a, [de]                                    ; $5a00: $1a
    nop                                           ; $5a01: $00
    jr nz, jr_0b3_5a15                            ; $5a02: $20 $11

    add hl, bc                                    ; $5a04: $09
    cp l                                          ; $5a05: $bd
    ld a, e                                       ; $5a06: $7b
    ccf                                           ; $5a07: $3f
    ld a, [de]                                    ; $5a08: $1a
    nop                                           ; $5a09: $00
    jr nz, jr_0b3_5a54                            ; $5a0a: $20 $48

jr_0b3_5a0c:
    ld b, l                                       ; $5a0c: $45
    add hl, bc                                    ; $5a0d: $09
    jr z, @-$41                                   ; $5a0e: $28 $bd

    ld h, $00                                     ; $5a10: $26 $00
    ld [$560f], sp                                ; $5a12: $08 $0f $56

jr_0b3_5a15:
    ld c, b                                       ; $5a15: $48

jr_0b3_5a16:
    inc l                                         ; $5a16: $2c
    ld e, c                                       ; $5a17: $59
    ld [hl], e                                    ; $5a18: $73
    ld [hl+], a                                   ; $5a19: $22
    nop                                           ; $5a1a: $00
    inc c                                         ; $5a1b: $0c
    add hl, bc                                    ; $5a1c: $09
    add hl, bc                                    ; $5a1d: $09
    jr z, jr_0b3_5a58                             ; $5a1e: $28 $38

jr_0b3_5a20:
    ld e, $00                                     ; $5a20: $1e $00

jr_0b3_5a22:
    nop                                           ; $5a22: $00
    db $f4                                        ; $5a23: $f4
    ld hl, $050d                                  ; $5a24: $21 $0d $05
    call c, $002a                                 ; $5a27: $dc $2a $00
    nop                                           ; $5a2a: $00
    add hl, bc                                    ; $5a2b: $09
    jr z, jr_0b3_5a33                             ; $5a2c: $28 $05

    nop                                           ; $5a2e: $00
    add hl, bc                                    ; $5a2f: $09
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00

jr_0b3_5a33:
    ld d, [hl]                                    ; $5a33: $56
    ld d, [hl]                                    ; $5a34: $56
    cp l                                          ; $5a35: $bd
    ld a, e                                       ; $5a36: $7b
    ld c, $10                                     ; $5a37: $0e $10
    nop                                           ; $5a39: $00
    jr nz, @-$11                                  ; $5a3a: $20 $ed

    ld d, c                                       ; $5a3c: $51
    or h                                          ; $5a3d: $b4
    ld h, d                                       ; $5a3e: $62
    rst $30                                       ; $5a3f: $f7
    ld l, d                                       ; $5a40: $6a
    nop                                           ; $5a41: $00
    jr nz, @-$19                                  ; $5a42: $20 $e5

    inc a                                         ; $5a44: $3c
    adc e                                         ; $5a45: $8b
    ld c, c                                       ; $5a46: $49
    daa                                           ; $5a47: $27
    ld b, c                                       ; $5a48: $41
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    ld d, c                                       ; $5a4b: $51
    ld e, d                                       ; $5a4c: $5a
    add hl, bc                                    ; $5a4d: $09
    jr z, jr_0b3_59ec                             ; $5a4e: $28 $9c

    ld [hl], a                                    ; $5a50: $77
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    scf                                           ; $5a53: $37

jr_0b3_5a54:
    ld e, $09                                     ; $5a54: $1e $09
    jr z, jr_0b3_5a22                             ; $5a56: $28 $ca

jr_0b3_5a58:
    inc b                                         ; $5a58: $04
    xor c                                         ; $5a59: $a9
    inc b                                         ; $5a5a: $04
    or e                                          ; $5a5b: $b3
    dec d                                         ; $5a5c: $15
    scf                                           ; $5a5d: $37
    ld e, $0d                                     ; $5a5e: $1e $0d
    add hl, bc                                    ; $5a60: $09
    nop                                           ; $5a61: $00
    nop                                           ; $5a62: $00
    ret z                                         ; $5a63: $c8

    inc c                                         ; $5a64: $0c
    add hl, bc                                    ; $5a65: $09
    jr z, jr_0b3_5a71                             ; $5a66: $28 $09

    nop                                           ; $5a68: $00

jr_0b3_5a69:
    ld bc, $5a00                                  ; $5a69: $01 $00 $5a
    ld [hl], e                                    ; $5a6c: $73
    add hl, bc                                    ; $5a6d: $09
    jr z, jr_0b3_5ae6                             ; $5a6e: $28 $76

    inc c                                         ; $5a70: $0c

jr_0b3_5a71:
    nop                                           ; $5a71: $00
    jr nz, @+$4b                                  ; $5a72: $20 $49

    ld c, c                                       ; $5a74: $49
    ld [hl], d                                    ; $5a75: $72
    ld e, [hl]                                    ; $5a76: $5e
    dec b                                         ; $5a77: $05
    dec a                                         ; $5a78: $3d
    nop                                           ; $5a79: $00
    jr jr_0b3_5a69                                ; $5a7a: $18 $ed

    ld d, l                                       ; $5a7c: $55
    daa                                           ; $5a7d: $27
    ld b, c                                       ; $5a7e: $41
    sub h                                         ; $5a7f: $94
    ld l, [hl]                                    ; $5a80: $6e
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    ld a, [bc]                                    ; $5a83: $0a

jr_0b3_5a84:
    inc l                                         ; $5a84: $2c
    ld a, [hl+]                                   ; $5a85: $2a
    inc l                                         ; $5a86: $2c
    sub h                                         ; $5a87: $94
    ld l, [hl]                                    ; $5a88: $6e
    ld b, e                                       ; $5a89: $43
    nop                                           ; $5a8a: $00
    ld c, a                                       ; $5a8b: $4f
    ld de, $2259                                  ; $5a8c: $11 $59 $22
    ld a, [bc]                                    ; $5a8f: $0a
    inc l                                         ; $5a90: $2c
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    sub d                                         ; $5a93: $92
    dec d                                         ; $5a94: $15
    jp z, $3904                                   ; $5a95: $ca $04 $39

    ld [hl+], a                                   ; $5a98: $22
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    ld e, $2b                                     ; $5a9b: $1e $2b
    ret                                           ; $5a9d: $c9


    ld [$2c2a], sp                                ; $5a9e: $08 $2a $2c
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    ld d, a                                       ; $5aa3: $57
    add hl, hl                                    ; $5aa4: $29
    ld a, [hl+]                                   ; $5aa5: $2a
    inc l                                         ; $5aa6: $2c
    or b                                          ; $5aa7: $b0
    stop                                          ; $5aa8: $10 $00
    nop                                           ; $5aaa: $00
    ld c, b                                       ; $5aab: $48
    ld b, l                                       ; $5aac: $45
    ld sp, $0062                                  ; $5aad: $31 $62 $00
    jr nz, jr_0b3_5ab2                            ; $5ab0: $20 $00

jr_0b3_5ab2:
    ld [$6a31], sp                                ; $5ab2: $08 $31 $6a
    ld l, d                                       ; $5ab5: $6a
    inc [hl]                                      ; $5ab6: $34
    ld e, e                                       ; $5ab7: $5b
    ld [hl], a                                    ; $5ab8: $77
    dec hl                                        ; $5ab9: $2b
    jr nc, jr_0b3_5b07                            ; $5aba: $30 $4b

    jr nc, jr_0b3_5b28                            ; $5abc: $30 $6a

    inc [hl]                                      ; $5abe: $34
    ld e, e                                       ; $5abf: $5b
    ld [hl], a                                    ; $5ac0: $77
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    db $db                                        ; $5ac3: $db
    ld l, $2b                                     ; $5ac4: $2e $2b
    jr nc, jr_0b3_5ad4                            ; $5ac6: $30 $0c

    dec c                                         ; $5ac8: $0d
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    xor b                                         ; $5acb: $a8
    nop                                           ; $5acc: $00
    db $ec                                        ; $5acd: $ec
    inc b                                         ; $5ace: $04
    ld h, h                                       ; $5acf: $64
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    sub d                                         ; $5ad3: $92

jr_0b3_5ad4:
    ld c, e                                       ; $5ad4: $4b
    inc c                                         ; $5ad5: $0c
    add hl, bc                                    ; $5ad6: $09
    or e                                          ; $5ad7: $b3
    ld de, $0000                                  ; $5ad8: $11 $00 $00
    ld c, e                                       ; $5adb: $4b

jr_0b3_5adc:
    jr nc, jr_0b3_5ae6                            ; $5adc: $30 $08

    nop                                           ; $5ade: $00
    ld l, h                                       ; $5adf: $6c
    inc c                                         ; $5ae0: $0c
    nop                                           ; $5ae1: $00
    inc e                                         ; $5ae2: $1c
    db $10                                        ; $5ae3: $10
    ld h, d                                       ; $5ae4: $62
    ld l, d                                       ; $5ae5: $6a

jr_0b3_5ae6:
    jr nc, jr_0b3_5a84                            ; $5ae6: $30 $9c

    ld a, e                                       ; $5ae8: $7b
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    sub h                                         ; $5aeb: $94
    ld l, [hl]                                    ; $5aec: $6e
    ld l, h                                       ; $5aed: $6c
    inc [hl]                                      ; $5aee: $34
    cp l                                          ; $5aef: $bd
    ld a, e                                       ; $5af0: $7b
    ld l, h                                       ; $5af1: $6c
    inc [hl]                                      ; $5af2: $34
    sub h                                         ; $5af3: $94
    ld l, [hl]                                    ; $5af4: $6e
    ld l, h                                       ; $5af5: $6c
    inc [hl]                                      ; $5af6: $34
    cp l                                          ; $5af7: $bd
    ld a, e                                       ; $5af8: $7b
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    ld l, h                                       ; $5afb: $6c
    inc [hl]                                      ; $5afc: $34
    ld a, d                                       ; $5afd: $7a
    ld [hl+], a                                   ; $5afe: $22
    ld [hl+], a                                   ; $5aff: $22
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    ld [hl], b                                    ; $5b03: $70
    dec c                                         ; $5b04: $0d
    xor b                                         ; $5b05: $a8
    inc b                                         ; $5b06: $04

jr_0b3_5b07:
    ld b, h                                       ; $5b07: $44
    nop                                           ; $5b08: $00
    ld bc, $cf00                                  ; $5b09: $01 $00 $cf
    add hl, de                                    ; $5b0c: $19
    pop af                                        ; $5b0d: $f1
    ld c, e                                       ; $5b0e: $4b
    db $eb                                        ; $5b0f: $eb

jr_0b3_5b10:
    inc b                                         ; $5b10: $04
    inc bc                                        ; $5b11: $03
    nop                                           ; $5b12: $00
    ld l, l                                       ; $5b13: $6d
    jr nc, jr_0b3_5b10                            ; $5b14: $30 $fa

    ld l, e                                       ; $5b16: $6b
    dec hl                                        ; $5b17: $2b
    ld l, $00                                     ; $5b18: $2e $00
    inc e                                         ; $5b1a: $1c
    ld b, $41                                     ; $5b1b: $06 $41
    sub h                                         ; $5b1d: $94
    ld l, [hl]                                    ; $5b1e: $6e
    ld l, h                                       ; $5b1f: $6c
    inc [hl]                                      ; $5b20: $34
    nop                                           ; $5b21: $00
    ld [$6610], sp                                ; $5b22: $08 $10 $66
    adc l                                         ; $5b25: $8d
    jr c, jr_0b3_5b40                             ; $5b26: $38 $18

jr_0b3_5b28:
    ld [hl], a                                    ; $5b28: $77
    adc l                                         ; $5b29: $8d
    jr c, @-$51                                   ; $5b2a: $38 $ad

    jr c, jr_0b3_5adc                             ; $5b2c: $38 $ae

    jr c, @+$1a                                   ; $5b2e: $38 $18

    ld [hl], a                                    ; $5b30: $77
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    adc l                                         ; $5b33: $8d
    jr c, jr_0b3_5b67                             ; $5b34: $38 $31

    ld b, [hl]                                    ; $5b36: $46
    xor b                                         ; $5b37: $a8
    nop                                           ; $5b38: $00
    nop                                           ; $5b39: $00
    nop                                           ; $5b3a: $00
    ld sp, $a346                                  ; $5b3b: $31 $46 $a3
    jr jr_0b3_5b41                                ; $5b3e: $18 $01

jr_0b3_5b40:
    nop                                           ; $5b40: $00

jr_0b3_5b41:
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    adc a                                         ; $5b43: $8f
    inc d                                         ; $5b44: $14
    sub a                                         ; $5b45: $97
    ld sp, $0d43                                  ; $5b46: $31 $43 $0d
    nop                                           ; $5b49: $00
    nop                                           ; $5b4a: $00
    jp nc, Jump_0b3_6c2d                          ; $5b4b: $d2 $2d $6c

    inc d                                         ; $5b4e: $14
    or h                                          ; $5b4f: $b4
    ld d, e                                       ; $5b50: $53
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    xor e                                         ; $5b53: $ab
    jr c, @-$30                                   ; $5b54: $38 $ce

    ld e, c                                       ; $5b56: $59
    nop                                           ; $5b57: $00
    jr nz, jr_0b3_5b5a                            ; $5b58: $20 $00

jr_0b3_5b5a:
    db $10                                        ; $5b5a: $10
    ld l, c                                       ; $5b5b: $69
    ld c, c                                       ; $5b5c: $49
    rst $30                                       ; $5b5d: $f7
    ld [hl], d                                    ; $5b5e: $72
    xor [hl]                                      ; $5b5f: $ae
    inc a                                         ; $5b60: $3c
    xor [hl]                                      ; $5b61: $ae
    inc a                                         ; $5b62: $3c
    rst $08                                       ; $5b63: $cf
    inc a                                         ; $5b64: $3c
    rst $08                                       ; $5b65: $cf
    ld b, b                                       ; $5b66: $40

jr_0b3_5b67:
    xor [hl]                                      ; $5b67: $ae
    inc a                                         ; $5b68: $3c
    ld bc, $ae00                                  ; $5b69: $01 $00 $ae
    inc a                                         ; $5b6c: $3c
    or d                                          ; $5b6d: $b2
    ld sp, $18a3                                  ; $5b6e: $31 $a3 $18
    ld h, e                                       ; $5b71: $63
    nop                                           ; $5b72: $00
    ld sp, $ff46                                  ; $5b73: $31 $46 $ff
    ld a, a                                       ; $5b76: $7f
    and e                                         ; $5b77: $a3
    jr jr_0b3_5b9a                                ; $5b78: $18 $20

    nop                                           ; $5b7a: $00
    ld l, l                                       ; $5b7b: $6d
    dec h                                         ; $5b7c: $25
    ld sp, hl                                     ; $5b7d: $f9
    dec l                                         ; $5b7e: $2d
    and a                                         ; $5b7f: $a7
    stop                                          ; $5b80: $10 $00
    nop                                           ; $5b82: $00
    ld [hl], c                                    ; $5b83: $71
    ld b, e                                       ; $5b84: $43
    sbc [hl]                                      ; $5b85: $9e
    dec [hl]                                      ; $5b86: $35
    ld d, c                                       ; $5b87: $51
    inc c                                         ; $5b88: $0c
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    ld [$2f3c], a                                 ; $5b8b: $ea $3c $2f
    ld d, [hl]                                    ; $5b8e: $56
    nop                                           ; $5b8f: $00
    jr nz, jr_0b3_5b92                            ; $5b90: $20 $00

jr_0b3_5b92:
    inc d                                         ; $5b92: $14
    rst $28                                       ; $5b93: $ef
    ld b, b                                       ; $5b94: $40
    ld c, b                                       ; $5b95: $48
    ld b, l                                       ; $5b96: $45
    ld d, c                                       ; $5b97: $51
    ld e, d                                       ; $5b98: $5a
    rst $28                                       ; $5b99: $ef

jr_0b3_5b9a:
    ld b, b                                       ; $5b9a: $40
    db $10                                        ; $5b9b: $10
    ld b, l                                       ; $5b9c: $45
    ld c, b                                       ; $5b9d: $48
    ld b, l                                       ; $5b9e: $45
    ld d, c                                       ; $5b9f: $51
    ld e, d                                       ; $5ba0: $5a
    ld b, h                                       ; $5ba1: $44
    inc b                                         ; $5ba2: $04
    rst $28                                       ; $5ba3: $ef
    ld b, b                                       ; $5ba4: $40
    rst $38                                       ; $5ba5: $ff
    ld a, a                                       ; $5ba6: $7f
    ld [hl], h                                    ; $5ba7: $74
    ld hl, $0000                                  ; $5ba8: $21 $00 $00
    inc [hl]                                      ; $5bab: $34
    ld a, [hl-]                                   ; $5bac: $3a
    sbc a                                         ; $5bad: $9f
    ld h, e                                       ; $5bae: $63
    add [hl]                                      ; $5baf: $86
    nop                                           ; $5bb0: $00
    jr nz, @+$06                                  ; $5bb1: $20 $04

    adc l                                         ; $5bb3: $8d
    dec l                                         ; $5bb4: $2d
    ld a, e                                       ; $5bb5: $7b
    ld l, $ec                                     ; $5bb6: $2e $ec
    inc c                                         ; $5bb8: $0c
    dec b                                         ; $5bb9: $05
    nop                                           ; $5bba: $00
    ret c                                         ; $5bbb: $d8

    inc e                                         ; $5bbc: $1c
    add h                                         ; $5bbd: $84
    ld [de], a                                    ; $5bbe: $12
    push af                                       ; $5bbf: $f5
    ld d, a                                       ; $5bc0: $57
    nop                                           ; $5bc1: $00
    nop                                           ; $5bc2: $00
    cpl                                           ; $5bc3: $2f
    ld d, d                                       ; $5bc4: $52
    ld a, c                                       ; $5bc5: $79
    ld l, e                                       ; $5bc6: $6b
    nop                                           ; $5bc7: $00
    jr nz, jr_0b3_5bca                            ; $5bc8: $20 $00

jr_0b3_5bca:
    inc d                                         ; $5bca: $14
    ld c, b                                       ; $5bcb: $48
    ld b, l                                       ; $5bcc: $45
    ld d, c                                       ; $5bcd: $51
    ld e, d                                       ; $5bce: $5a
    ld de, $0045                                  ; $5bcf: $11 $45 $00
    nop                                           ; $5bd2: $00
    ld de, $be45                                  ; $5bd3: $11 $45 $be
    ld b, a                                       ; $5bd6: $47
    sbc $7b                                       ; $5bd7: $de $7b
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    ld de, $1f45                                  ; $5bdb: $11 $45 $1f
    ld b, e                                       ; $5bde: $43
    and h                                         ; $5bdf: $a4
    inc d                                         ; $5be0: $14
    add l                                         ; $5be1: $85
    db $10                                        ; $5be2: $10
    sub l                                         ; $5be3: $95
    ld hl, $2e1c                                  ; $5be4: $21 $1c $2e

jr_0b3_5be7:
    sbc [hl]                                      ; $5be7: $9e
    ld b, d                                       ; $5be8: $42
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    adc h                                         ; $5beb: $8c
    ld sp, $04e3                                  ; $5bec: $31 $e3 $04
    sub e                                         ; $5bef: $93
    ld c, [hl]                                    ; $5bf0: $4e
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    dec bc                                        ; $5bf3: $0b
    nop                                           ; $5bf4: $00
    sub a                                         ; $5bf5: $97
    inc d                                         ; $5bf6: $14
    ret nz                                        ; $5bf7: $c0

    ld bc, $1c00                                  ; $5bf8: $01 $00 $1c
    ld c, a                                       ; $5bfb: $4f
    ld c, d                                       ; $5bfc: $4a
    ld e, c                                       ; $5bfd: $59

jr_0b3_5bfe:
    ld l, a                                       ; $5bfe: $6f
    pop bc                                        ; $5bff: $c1
    dec b                                         ; $5c00: $05
    nop                                           ; $5c01: $00
    jr jr_0b3_5c2b                                ; $5c02: $18 $27

    ld b, c                                       ; $5c04: $41
    jr c, jr_0b3_5c76                             ; $5c05: $38 $6f

    or c                                          ; $5c07: $b1
    ld d, c                                       ; $5c08: $51
    ld bc, $5200                                  ; $5c09: $01 $00 $52
    ld c, l                                       ; $5c0c: $4d
    rst $38                                       ; $5c0d: $ff
    ld h, a                                       ; $5c0e: $67

jr_0b3_5c0f:
    ld a, [hl+]                                   ; $5c0f: $2a

Jump_0b3_5c10:
    ld hl, $0000                                  ; $5c10: $21 $00 $00
    push bc                                       ; $5c13: $c5
    ld d, $d6                                     ; $5c14: $16 $d6
    dec a                                         ; $5c16: $3d
    add sp, $10                                   ; $5c17: $e8 $10
    add d                                         ; $5c19: $82
    inc d                                         ; $5c1a: $14
    ld l, $25                                     ; $5c1b: $2e $25
    rrca                                          ; $5c1d: $0f
    ld a, $8a                                     ; $5c1e: $3e $8a
    inc c                                         ; $5c20: $0c
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    adc l                                         ; $5c23: $8d
    ld sp, $0160                                  ; $5c24: $31 $60 $01
    add $18                                       ; $5c27: $c6 $18
    jr nz, jr_0b3_5c2b                            ; $5c29: $20 $00

jr_0b3_5c2b:
    jp hl                                         ; $5c2b: $e9


    dec h                                         ; $5c2c: $25
    dec c                                         ; $5c2d: $0d
    nop                                           ; $5c2e: $00
    cp c                                          ; $5c2f: $b9
    inc d                                         ; $5c30: $14
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    ld l, a                                       ; $5c33: $6f
    ld c, d                                       ; $5c34: $4a
    ld a, e                                       ; $5c35: $7b
    ld [hl], a                                    ; $5c36: $77
    nop                                           ; $5c37: $00
    jr nz, jr_0b3_5c3a                            ; $5c38: $20 $00

jr_0b3_5c3a:
    jr jr_0b3_5be7                                ; $5c3a: $18 $ab

    ld c, l                                       ; $5c3c: $4d
    sub $66                                       ; $5c3d: $d6 $66
    sub e                                         ; $5c3f: $93
    ld d, c                                       ; $5c40: $51
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    sub e                                         ; $5c43: $93
    ld d, c                                       ; $5c44: $51
    reti                                          ; $5c45: $d9


    ld h, $3f                                     ; $5c46: $26 $3f
    inc hl                                        ; $5c48: $23
    jr nz, jr_0b3_5c4b                            ; $5c49: $20 $00

jr_0b3_5c4b:
    jp nz, $b00e                                  ; $5c4b: $c2 $0e $b0

    ld hl, $046a                                  ; $5c4e: $21 $6a $04
    ld bc, $4b04                                  ; $5c51: $01 $04 $4b
    add hl, hl                                    ; $5c54: $29
    rst $28                                       ; $5c55: $ef
    add hl, sp                                    ; $5c56: $39
    add $18                                       ; $5c57: $c6 $18
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    ldh [rSB], a                                  ; $5c5b: $e0 $01
    ret z                                         ; $5c5d: $c8

    jr nz, jr_0b3_5c0f                            ; $5c5e: $20 $af

    dec [hl]                                      ; $5c60: $35
    ld b, d                                       ; $5c61: $42
    inc b                                         ; $5c62: $04
    rst $38                                       ; $5c63: $ff
    ld h, a                                       ; $5c64: $67
    ld c, l                                       ; $5c65: $4d
    add hl, de                                    ; $5c66: $19
    sbc d                                         ; $5c67: $9a
    inc d                                         ; $5c68: $14
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    or h                                          ; $5c6b: $b4
    ld h, d                                       ; $5c6c: $62
    cp l                                          ; $5c6d: $bd
    ld [hl], a                                    ; $5c6e: $77

jr_0b3_5c6f:
    nop                                           ; $5c6f: $00
    jr nz, jr_0b3_5c72                            ; $5c70: $20 $00

jr_0b3_5c72:
    jr jr_0b3_5bfe                                ; $5c72: $18 $8a

    ld c, c                                       ; $5c74: $49
    ld a, d                                       ; $5c75: $7a

jr_0b3_5c76:
    ld [hl], e                                    ; $5c76: $73
    ld [hl], d                                    ; $5c77: $72
    ld e, d                                       ; $5c78: $5a
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    ldh a, [rNR11]                                ; $5c7b: $f0 $11
    or h                                          ; $5c7d: $b4
    ld d, l                                       ; $5c7e: $55
    add [hl]                                      ; $5c7f: $86
    inc e                                         ; $5c80: $1c
    ld hl, $7600                                  ; $5c81: $21 $00 $76
    ld de, $01a0                                  ; $5c84: $11 $a0 $01
    cp l                                          ; $5c87: $bd
    ld a, [de]                                    ; $5c88: $1a
    ld b, c                                       ; $5c89: $41
    inc b                                         ; $5c8a: $04
    ld b, b                                       ; $5c8b: $40
    ld [bc], a                                    ; $5c8c: $02
    rst $08                                       ; $5c8d: $cf
    dec [hl]                                      ; $5c8e: $35
    rst $20                                       ; $5c8f: $e7
    inc e                                         ; $5c90: $1c
    ld b, b                                       ; $5c91: $40
    nop                                           ; $5c92: $00
    db $fc                                        ; $5c93: $fc
    ld h, $c0                                     ; $5c94: $26 $c0
    ld b, $ff                                     ; $5c96: $06 $ff
    ld a, a                                       ; $5c98: $7f
    ld bc, $7700                                  ; $5c99: $01 $00 $77
    dec h                                         ; $5c9c: $25
    rst $18                                       ; $5c9d: $df
    ccf                                           ; $5c9e: $3f
    xor l                                         ; $5c9f: $ad
    inc b                                         ; $5ca0: $04
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    rla                                           ; $5ca3: $17
    ld l, e                                       ; $5ca4: $6b
    nop                                           ; $5ca5: $00
    inc e                                         ; $5ca6: $1c
    sbc $7f                                       ; $5ca7: $de $7f
    nop                                           ; $5ca9: $00
    inc e                                         ; $5caa: $1c
    xor h                                         ; $5cab: $ac
    ld c, l                                       ; $5cac: $4d
    or h                                          ; $5cad: $b4
    ld h, d                                       ; $5cae: $62
    sbc e                                         ; $5caf: $9b
    ld [hl], a                                    ; $5cb0: $77
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    inc [hl]                                      ; $5cb3: $34
    ld a, [de]                                    ; $5cb4: $1a
    sbc $63                                       ; $5cb5: $de $63
    sub $59                                       ; $5cb7: $d6 $59
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    ret                                           ; $5cbb: $c9


    ld [$0180], sp                                ; $5cbc: $08 $80 $01
    jr nc, jr_0b3_5cce                            ; $5cbf: $30 $0d

    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    and b                                         ; $5cc3: $a0
    ld bc, $1634                                  ; $5cc4: $01 $34 $16
    jp nz, RST_00                                 ; $5cc7: $c2 $00 $00

    nop                                           ; $5cca: $00
    add hl, sp                                    ; $5ccb: $39
    ld c, $22                                     ; $5ccc: $0e $22

jr_0b3_5cce:
    ld b, $ff                                     ; $5cce: $06 $ff
    ld h, e                                       ; $5cd0: $63
    ld bc, $9900                                  ; $5cd1: $01 $00 $99
    db $10                                        ; $5cd4: $10
    rst $38                                       ; $5cd5: $ff
    ld a, a                                       ; $5cd6: $7f
    ld e, [hl]                                    ; $5cd7: $5e
    ld l, $00                                     ; $5cd8: $2e $00
    jr nz, jr_0b3_5c6f                            ; $5cda: $20 $93

    ld e, [hl]                                    ; $5cdc: $5e
    db $dd                                        ; $5cdd: $dd
    ld a, e                                       ; $5cde: $7b
    jr jr_0b3_5d4c                                ; $5cdf: $18 $6b

    nop                                           ; $5ce1: $00
    jr nz, jr_0b3_5c6f                            ; $5ce2: $20 $8b

    ld c, c                                       ; $5ce4: $49
    push de                                       ; $5ce5: $d5
    ld h, [hl]                                    ; $5ce6: $66
    cpl                                           ; $5ce7: $2f
    ld d, [hl]                                    ; $5ce8: $56
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    rla                                           ; $5ceb: $17
    ld e, [hl]                                    ; $5cec: $5e
    ld h, b                                       ; $5ced: $60
    nop                                           ; $5cee: $00
    jr c, @+$64                                   ; $5cef: $38 $62

    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    or l                                          ; $5cf3: $b5
    ld de, $0120                                  ; $5cf4: $11 $20 $01
    add $04                                       ; $5cf7: $c6 $04
    nop                                           ; $5cf9: $00
    nop                                           ; $5cfa: $00
    add b                                         ; $5cfb: $80
    nop                                           ; $5cfc: $00
    xor b                                         ; $5cfd: $a8
    inc b                                         ; $5cfe: $04
    add b                                         ; $5cff: $80

Call_0b3_5d00:
    ld bc, $0000                                  ; $5d00: $01 $00 $00
    or e                                          ; $5d03: $b3
    dec c                                         ; $5d04: $0d
    add c                                         ; $5d05: $81
    ld b, $fe                                     ; $5d06: $06 $fe
    dec b                                         ; $5d08: $05
    ld bc, $3300                                  ; $5d09: $01 $00 $33
    dec h                                         ; $5d0c: $25
    sbc $7f                                       ; $5d0d: $de $7f
    ld e, a                                       ; $5d0f: $5f
    ld l, $00                                     ; $5d10: $2e $00
    jr nz, @+$53                                  ; $5d12: $20 $51

    ld e, d                                       ; $5d14: $5a
    rst $30                                       ; $5d15: $f7
    ld l, d                                       ; $5d16: $6a
    sbc h                                         ; $5d17: $9c
    ld [hl], a                                    ; $5d18: $77
    nop                                           ; $5d19: $00
    jr nz, jr_0b3_5d64                            ; $5d1a: $20 $48

    ld b, c                                       ; $5d1c: $41
    cpl                                           ; $5d1d: $2f
    ld d, [hl]                                    ; $5d1e: $56
    adc e                                         ; $5d1f: $8b
    ld c, c                                       ; $5d20: $49
    ld b, d                                       ; $5d21: $42
    nop                                           ; $5d22: $00
    ld d, [hl]                                    ; $5d23: $56
    ld h, [hl]                                    ; $5d24: $66
    ld a, a                                       ; $5d25: $7f
    inc hl                                        ; $5d26: $23
    ld d, h                                       ; $5d27: $54
    dec c                                         ; $5d28: $0d
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    ld c, c                                       ; $5d2b: $49
    ld h, $00                                     ; $5d2c: $26 $00
    ld bc, $3f8f                                  ; $5d2e: $01 $8f $3f
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    ld c, b                                       ; $5d33: $48
    ld [hl+], a                                   ; $5d34: $22
    dec c                                         ; $5d35: $0d
    scf                                           ; $5d36: $37
    adc a                                         ; $5d37: $8f
    ccf                                           ; $5d38: $3f
    nop                                           ; $5d39: $00
    nop                                           ; $5d3a: $00
    ld h, c                                       ; $5d3b: $61
    ld b, $d7                                     ; $5d3c: $06 $d7
    dec c                                         ; $5d3e: $0d
    dec bc                                        ; $5d3f: $0b
    add hl, bc                                    ; $5d40: $09
    ld bc, $5700                                  ; $5d41: $01 $00 $57
    ld [$6af7], sp                                ; $5d44: $08 $f7 $6a
    ld e, b                                       ; $5d47: $58
    ld sp, $2000                                  ; $5d48: $31 $00 $20
    db $ed                                        ; $5d4b: $ed

jr_0b3_5d4c:
    ld d, c                                       ; $5d4c: $51
    ld [hl], d                                    ; $5d4d: $72
    ld e, [hl]                                    ; $5d4e: $5e
    cpl                                           ; $5d4f: $2f
    ld d, [hl]                                    ; $5d50: $56
    nop                                           ; $5d51: $00
    jr nz, jr_0b3_5d5a                            ; $5d52: $20 $06

    ld b, c                                       ; $5d54: $41
    ld h, $41                                     ; $5d55: $26 $41
    adc a                                         ; $5d57: $8f
    ccf                                           ; $5d58: $3f
    nop                                           ; $5d59: $00

jr_0b3_5d5a:
    nop                                           ; $5d5a: $00
    sub e                                         ; $5d5b: $93
    ld a, $ff                                     ; $5d5c: $3e $ff
    ld e, e                                       ; $5d5e: $5b
    ld b, l                                       ; $5d5f: $45
    dec e                                         ; $5d60: $1d
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    db $ed                                        ; $5d63: $ed

jr_0b3_5d64:
    ld [hl], $90                                  ; $5d64: $36 $90
    ld b, e                                       ; $5d66: $43
    and b                                         ; $5d67: $a0
    ld bc, $0a42                                  ; $5d68: $01 $42 $0a
    xor b                                         ; $5d6b: $a8
    ld h, $0c                                     ; $5d6c: $26 $0c
    scf                                           ; $5d6e: $37
    add l                                         ; $5d6f: $85
    ld d, $00                                     ; $5d70: $16 $00
    nop                                           ; $5d72: $00
    inc d                                         ; $5d73: $14
    dec c                                         ; $5d74: $0d
    ld h, c                                       ; $5d75: $61
    ld b, $bf                                     ; $5d76: $06 $bf
    ld e, $01                                     ; $5d78: $1e $01
    nop                                           ; $5d7a: $00
    db $ed                                        ; $5d7b: $ed
    ld d, c                                       ; $5d7c: $51
    dec e                                         ; $5d7d: $1d
    ld c, d                                       ; $5d7e: $4a
    ld c, a                                       ; $5d7f: $4f
    ld [$2000], sp                                ; $5d80: $08 $00 $20
    push hl                                       ; $5d83: $e5
    inc a                                         ; $5d84: $3c
    ld c, b                                       ; $5d85: $48
    ld b, l                                       ; $5d86: $45
    ld c, a                                       ; $5d87: $4f
    ld [$2000], sp                                ; $5d88: $08 $00 $20
    xor $5d                                       ; $5d8b: $ee $5d
    sub b                                         ; $5d8d: $90
    ld b, e                                       ; $5d8e: $43
    and b                                         ; $5d8f: $a0
    ld bc, $0000                                  ; $5d90: $01 $00 $00
    xor h                                         ; $5d93: $ac
    ld d, l                                       ; $5d94: $55
    ld b, $3d                                     ; $5d95: $06 $3d
    sbc h                                         ; $5d97: $9c
    ld [hl], d                                    ; $5d98: $72
    nop                                           ; $5d99: $00
    nop                                           ; $5d9a: $00
    and [hl]                                      ; $5d9b: $a6
    ld a, [de]                                    ; $5d9c: $1a
    inc bc                                        ; $5d9d: $03
    ld a, [bc]                                    ; $5d9e: $0a
    dec c                                         ; $5d9f: $0d
    scf                                           ; $5da0: $37

jr_0b3_5da1:
    and b                                         ; $5da1: $a0
    ld bc, $0641                                  ; $5da2: $01 $41 $06
    inc hl                                        ; $5da5: $23
    ld c, $85                                     ; $5da6: $0e $85
    ld d, $00                                     ; $5da8: $16 $00
    nop                                           ; $5daa: $00
    ld b, b                                       ; $5dab: $40
    ld [bc], a                                    ; $5dac: $02
    ld c, e                                       ; $5dad: $4b
    inc b                                         ; $5dae: $04
    ldh [rP1], a                                  ; $5daf: $e0 $00
    ld b, $00                                     ; $5db1: $06 $00
    adc e                                         ; $5db3: $8b
    ld c, l                                       ; $5db4: $4d

jr_0b3_5db5:
    push hl                                       ; $5db5: $e5
    inc a                                         ; $5db6: $3c
    rst $38                                       ; $5db7: $ff
    ld b, c                                       ; $5db8: $41
    nop                                           ; $5db9: $00
    jr nz, jr_0b3_5da1                            ; $5dba: $20 $e5

    inc a                                         ; $5dbc: $3c
    push hl                                       ; $5dbd: $e5
    inc a                                         ; $5dbe: $3c
    rst $38                                       ; $5dbf: $ff

jr_0b3_5dc0:
    ld b, c                                       ; $5dc0: $41
    nop                                           ; $5dc1: $00
    jr nz, @-$58                                  ; $5dc2: $20 $a6

    ld a, [de]                                    ; $5dc4: $1a
    inc bc                                        ; $5dc5: $03
    ld a, [bc]                                    ; $5dc6: $0a
    dec c                                         ; $5dc7: $0d
    scf                                           ; $5dc8: $37
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    xor h                                         ; $5dcb: $ac
    ld d, l                                       ; $5dcc: $55
    cp c                                          ; $5dcd: $b9
    ld [hl], d                                    ; $5dce: $72
    db $eb                                        ; $5dcf: $eb
    ld l, $45                                     ; $5dd0: $2e $45
    inc b                                         ; $5dd2: $04
    db $ec                                        ; $5dd3: $ec
    ld [hl-], a                                   ; $5dd4: $32
    ld hl, $dd06                                  ; $5dd5: $21 $06 $dd
    ld e, $00                                     ; $5dd8: $1e $00
    nop                                           ; $5dda: $00
    ld b, c                                       ; $5ddb: $41
    ld b, $40                                     ; $5ddc: $06 $40
    ld bc, $06a2                                  ; $5dde: $01 $a2 $06
    nop                                           ; $5de1: $00
    nop                                           ; $5de2: $00
    add b                                         ; $5de3: $80
    ld bc, $0621                                  ; $5de4: $01 $21 $06
    ldh [rP1], a                                  ; $5de7: $e0 $00
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    db $10                                        ; $5deb: $10
    ld h, d                                       ; $5dec: $62
    push hl                                       ; $5ded: $e5
    inc a                                         ; $5dee: $3c
    inc c                                         ; $5def: $0c
    nop                                           ; $5df0: $00
    nop                                           ; $5df1: $00
    jr nz, @+$12                                  ; $5df2: $20 $10

    ld h, d                                       ; $5df4: $62
    push hl                                       ; $5df5: $e5
    inc a                                         ; $5df6: $3c
    inc c                                         ; $5df7: $0c
    nop                                           ; $5df8: $00
    nop                                           ; $5df9: $00
    jr nz, @-$12                                  ; $5dfa: $20 $ec

    ld [hl-], a                                   ; $5dfc: $32
    ld hl, $dd06                                  ; $5dfd: $21 $06 $dd
    ld e, $00                                     ; $5e00: $1e $00
    inc b                                         ; $5e02: $04
    ld hl, sp+$76                                 ; $5e03: $f8 $76
    dec b                                         ; $5e05: $05
    ld d, $ff                                     ; $5e06: $16 $ff
    ld a, a                                       ; $5e08: $7f
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    add c                                         ; $5e0b: $81
    dec b                                         ; $5e0c: $05
    ld b, c                                       ; $5e0d: $41
    ld b, $a3                                     ; $5e0e: $06 $a3
    ld c, $00                                     ; $5e10: $0e $00
    nop                                           ; $5e12: $00
    ld b, c                                       ; $5e13: $41
    dec b                                         ; $5e14: $05
    ld bc, $e206                                  ; $5e15: $01 $06 $e2
    ld [$0020], sp                                ; $5e18: $08 $20 $00
    ld [c], a                                     ; $5e1b: $e2
    add hl, bc                                    ; $5e1c: $09
    ld b, c                                       ; $5e1d: $41
    dec b                                         ; $5e1e: $05
    ld b, d                                       ; $5e1f: $42
    ld a, [bc]                                    ; $5e20: $0a
    nop                                           ; $5e21: $00
    ld [$7294], sp                                ; $5e22: $08 $94 $72
    ld a, [bc]                                    ; $5e25: $0a
    nop                                           ; $5e26: $00
    ld a, e                                       ; $5e27: $7b
    ld [hl], a                                    ; $5e28: $77
    nop                                           ; $5e29: $00
    jr nz, jr_0b3_5dc0                            ; $5e2a: $20 $94

    ld [hl], d                                    ; $5e2c: $72
    ld a, [bc]                                    ; $5e2d: $0a
    nop                                           ; $5e2e: $00
    ld a, e                                       ; $5e2f: $7b
    ld [hl], a                                    ; $5e30: $77
    nop                                           ; $5e31: $00
    jr nz, jr_0b3_5db5                            ; $5e32: $20 $81

    dec b                                         ; $5e34: $05
    ld b, c                                       ; $5e35: $41
    ld b, $a3                                     ; $5e36: $06 $a3
    ld c, $00                                     ; $5e38: $0e $00
    nop                                           ; $5e3a: $00
    sbc h                                         ; $5e3b: $9c
    ld [hl], a                                    ; $5e3c: $77
    jp nz, Jump_000_0009                          ; $5e3d: $c2 $09 $00

    jr nz, jr_0b3_5e42                            ; $5e40: $20 $00

jr_0b3_5e42:
    nop                                           ; $5e42: $00
    ld b, e                                       ; $5e43: $43
    ld c, $a4                                     ; $5e44: $0e $a4
    ld [de], a                                    ; $5e46: $12
    ld h, e                                       ; $5e47: $63
    ld c, $00                                     ; $5e48: $0e $00
    nop                                           ; $5e4a: $00
    rrca                                          ; $5e4b: $0f
    ld h, d                                       ; $5e4c: $62
    sbc h                                         ; $5e4d: $9c
    ld a, e                                       ; $5e4e: $7b
    or l                                          ; $5e4f: $b5
    ld l, [hl]                                    ; $5e50: $6e
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    push hl                                       ; $5e53: $e5
    inc a                                         ; $5e54: $3c
    rrca                                          ; $5e55: $0f
    ld e, d                                       ; $5e56: $5a
    ld c, c                                       ; $5e57: $49
    ld c, c                                       ; $5e58: $49
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00

jr_0b3_5e5b:
    rst $30                                       ; $5e5b: $f7
    ld [hl], d                                    ; $5e5c: $72
    sbc $7b                                       ; $5e5d: $de $7b
    nop                                           ; $5e5f: $00
    jr nz, jr_0b3_5e62                            ; $5e60: $20 $00

jr_0b3_5e62:
    jr nz, jr_0b3_5e5b                            ; $5e62: $20 $f7

    ld [hl], d                                    ; $5e64: $72
    sbc $7b                                       ; $5e65: $de $7b
    nop                                           ; $5e67: $00
    jr nz, jr_0b3_5e6a                            ; $5e68: $20 $00

jr_0b3_5e6a:
    jr nz, @+$45                                  ; $5e6a: $20 $43

    ld c, $a4                                     ; $5e6c: $0e $a4
    ld [de], a                                    ; $5e6e: $12
    ld h, e                                       ; $5e6f: $63
    ld c, $00                                     ; $5e70: $0e $00
    jr nz, @-$6b                                  ; $5e72: $20 $93

    ld h, d                                       ; $5e74: $62
    sbc h                                         ; $5e75: $9c
    ld [hl], a                                    ; $5e76: $77
    ld l, c                                       ; $5e77: $69
    ld b, l                                       ; $5e78: $45
    push hl                                       ; $5e79: $e5
    inc a                                         ; $5e7a: $3c
    ld sp, $f766                                  ; $5e7b: $31 $66 $f7
    ld [hl], d                                    ; $5e7e: $72
    ld c, c                                       ; $5e7f: $49
    ld c, l                                       ; $5e80: $4d
    daa                                           ; $5e81: $27
    ld b, l                                       ; $5e82: $45
    sub l                                         ; $5e83: $95
    ld [hl], d                                    ; $5e84: $72
    sbc h                                         ; $5e85: $9c
    ld a, e                                       ; $5e86: $7b
    adc $5d                                       ; $5e87: $ce $5d
    ld l, d                                       ; $5e89: $6a
    ld c, l                                       ; $5e8a: $4d
    sub h                                         ; $5e8b: $94
    ld l, [hl]                                    ; $5e8c: $6e
    jr nc, @+$60                                  ; $5e8d: $30 $5e

    ld e, d                                       ; $5e8f: $5a
    ld [hl], e                                    ; $5e90: $73
    nop                                           ; $5e91: $00
    jr nz, jr_0b3_5f07                            ; $5e92: $20 $73

    ld e, [hl]                                    ; $5e94: $5e
    cp h                                          ; $5e95: $bc
    ld a, e                                       ; $5e96: $7b
    push hl                                       ; $5e97: $e5
    inc a                                         ; $5e98: $3c
    nop                                           ; $5e99: $00
    jr nz, jr_0b3_5f0f                            ; $5e9a: $20 $73

    ld e, [hl]                                    ; $5e9c: $5e
    cp h                                          ; $5e9d: $bc
    ld a, e                                       ; $5e9e: $7b
    push hl                                       ; $5e9f: $e5
    inc a                                         ; $5ea0: $3c
    nop                                           ; $5ea1: $00
    jr nz, jr_0b3_5ea4                            ; $5ea2: $20 $00

jr_0b3_5ea4:
    jr nz, jr_0b3_5ea6                            ; $5ea4: $20 $00

jr_0b3_5ea6:
    jr nz, @+$07                                  ; $5ea6: $20 $05

    add hl, sp                                    ; $5ea8: $39
    nop                                           ; $5ea9: $00
    jr nz, jr_0b3_5eac                            ; $5eaa: $20 $00

jr_0b3_5eac:
    jr nz, jr_0b3_5eae                            ; $5eac: $20 $00

jr_0b3_5eae:
    jr nz, @+$07                                  ; $5eae: $20 $05

    add hl, sp                                    ; $5eb0: $39
    nop                                           ; $5eb1: $00
    jr nz, jr_0b3_5eb4                            ; $5eb2: $20 $00

jr_0b3_5eb4:
    jr nz, jr_0b3_5eb6                            ; $5eb4: $20 $00

jr_0b3_5eb6:
    jr nz, @+$07                                  ; $5eb6: $20 $05

    add hl, sp                                    ; $5eb8: $39
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    nop                                           ; $5ebb: $00
    jr nz, jr_0b3_5f34                            ; $5ebc: $20 $76

    ld [hl], a                                    ; $5ebe: $77
    ld h, h                                       ; $5ebf: $64
    dec [hl]                                      ; $5ec0: $35
    nop                                           ; $5ec1: $00
    jr nz, jr_0b3_5ec4                            ; $5ec2: $20 $00

jr_0b3_5ec4:
    jr nz, jr_0b3_5f3c                            ; $5ec4: $20 $76

    ld [hl], a                                    ; $5ec6: $77
    ld h, h                                       ; $5ec7: $64
    dec [hl]                                      ; $5ec8: $35
    nop                                           ; $5ec9: $00
    jr nz, jr_0b3_5ecc                            ; $5eca: $20 $00

jr_0b3_5ecc:
    jr nz, jr_0b3_5f44                            ; $5ecc: $20 $76

    ld [hl], a                                    ; $5ece: $77
    ld h, h                                       ; $5ecf: $64
    dec [hl]                                      ; $5ed0: $35
    nop                                           ; $5ed1: $00
    jr nz, jr_0b3_5ed4                            ; $5ed2: $20 $00

jr_0b3_5ed4:
    jr nz, jr_0b3_5f4c                            ; $5ed4: $20 $76

    ld [hl], a                                    ; $5ed6: $77
    ld h, h                                       ; $5ed7: $64
    dec [hl]                                      ; $5ed8: $35
    nop                                           ; $5ed9: $00
    jr nz, jr_0b3_5edc                            ; $5eda: $20 $00

jr_0b3_5edc:
    jr nz, jr_0b3_5ede                            ; $5edc: $20 $00

jr_0b3_5ede:
    jr nz, @+$07                                  ; $5ede: $20 $05

    add hl, sp                                    ; $5ee0: $39
    nop                                           ; $5ee1: $00
    jr nz, jr_0b3_5ee4                            ; $5ee2: $20 $00

jr_0b3_5ee4:
    jr nz, jr_0b3_5ee6                            ; $5ee4: $20 $00

jr_0b3_5ee6:
    jr nz, @+$07                                  ; $5ee6: $20 $05

    add hl, sp                                    ; $5ee8: $39
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    jr nz, jr_0b3_5eee                            ; $5eec: $20 $00

jr_0b3_5eee:
    jr nz, jr_0b3_5ef5                            ; $5eee: $20 $05

    add hl, sp                                    ; $5ef0: $39
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    adc e                                         ; $5ef3: $8b
    ld h, d                                       ; $5ef4: $62

jr_0b3_5ef5:
    ld sp, hl                                     ; $5ef5: $f9
    ld a, a                                       ; $5ef6: $7f

jr_0b3_5ef7:
    and b                                         ; $5ef7: $a0
    jr z, jr_0b3_5efa                             ; $5ef8: $28 $00

jr_0b3_5efa:
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    jr nz, jr_0b3_5ef7                            ; $5efc: $20 $f9

    ld a, a                                       ; $5efe: $7f

jr_0b3_5eff:
    and b                                         ; $5eff: $a0
    jr z, jr_0b3_5f02                             ; $5f00: $28 $00

jr_0b3_5f02:
    jr nz, jr_0b3_5f04                            ; $5f02: $20 $00

jr_0b3_5f04:
    jr nz, jr_0b3_5eff                            ; $5f04: $20 $f9

    ld a, a                                       ; $5f06: $7f

jr_0b3_5f07:
    and b                                         ; $5f07: $a0
    jr z, jr_0b3_5f0a                             ; $5f08: $28 $00

jr_0b3_5f0a:
    jr nz, jr_0b3_5f0c                            ; $5f0a: $20 $00

jr_0b3_5f0c:
    jr nz, jr_0b3_5f07                            ; $5f0c: $20 $f9

    ld a, a                                       ; $5f0e: $7f

jr_0b3_5f0f:
    and b                                         ; $5f0f: $a0
    jr z, jr_0b3_5f12                             ; $5f10: $28 $00

jr_0b3_5f12:
    jr nz, jr_0b3_5f14                            ; $5f12: $20 $00

jr_0b3_5f14:
    jr nz, jr_0b3_5f16                            ; $5f14: $20 $00

jr_0b3_5f16:
    jr nz, @+$07                                  ; $5f16: $20 $05

    add hl, sp                                    ; $5f18: $39
    nop                                           ; $5f19: $00
    jr nz, jr_0b3_5f1c                            ; $5f1a: $20 $00

jr_0b3_5f1c:
    jr nz, jr_0b3_5f1e                            ; $5f1c: $20 $00

jr_0b3_5f1e:
    jr nz, jr_0b3_5f25                            ; $5f1e: $20 $05

    add hl, sp                                    ; $5f20: $39
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    rst $30                                       ; $5f23: $f7
    ld a, a                                       ; $5f24: $7f

jr_0b3_5f25:
    nop                                           ; $5f25: $00
    jr nz, jr_0b3_5f2d                            ; $5f26: $20 $05

    add hl, sp                                    ; $5f28: $39
    ld b, b                                       ; $5f29: $40
    db $10                                        ; $5f2a: $10
    xor l                                         ; $5f2b: $ad
    ld h, [hl]                                    ; $5f2c: $66

jr_0b3_5f2d:
    and l                                         ; $5f2d: $a5
    ld b, l                                       ; $5f2e: $45
    reti                                          ; $5f2f: $d9


    ld a, a                                       ; $5f30: $7f
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    ld l, d                                       ; $5f33: $6a

jr_0b3_5f34:
    ld e, [hl]                                    ; $5f34: $5e
    cp b                                          ; $5f35: $b8
    ld a, a                                       ; $5f36: $7f
    nop                                           ; $5f37: $00
    jr nz, jr_0b3_5f3a                            ; $5f38: $20 $00

jr_0b3_5f3a:
    jr nz, jr_0b3_5fa6                            ; $5f3a: $20 $6a

jr_0b3_5f3c:
    ld e, [hl]                                    ; $5f3c: $5e
    cp b                                          ; $5f3d: $b8
    ld a, a                                       ; $5f3e: $7f
    nop                                           ; $5f3f: $00
    jr nz, jr_0b3_5f42                            ; $5f40: $20 $00

jr_0b3_5f42:
    jr nz, jr_0b3_5fae                            ; $5f42: $20 $6a

jr_0b3_5f44:
    ld e, [hl]                                    ; $5f44: $5e
    cp b                                          ; $5f45: $b8
    ld a, a                                       ; $5f46: $7f
    nop                                           ; $5f47: $00
    jr nz, jr_0b3_5f4a                            ; $5f48: $20 $00

jr_0b3_5f4a:
    jr nz, @-$07                                  ; $5f4a: $20 $f7

jr_0b3_5f4c:
    ld a, a                                       ; $5f4c: $7f
    nop                                           ; $5f4d: $00
    jr nz, jr_0b3_5f55                            ; $5f4e: $20 $05

    add hl, sp                                    ; $5f50: $39
    nop                                           ; $5f51: $00
    jr nz, @-$07                                  ; $5f52: $20 $f7

    ld a, a                                       ; $5f54: $7f

jr_0b3_5f55:
    nop                                           ; $5f55: $00
    jr nz, jr_0b3_5f5d                            ; $5f56: $20 $05

    add hl, sp                                    ; $5f58: $39
    nop                                           ; $5f59: $00

jr_0b3_5f5a:
    nop                                           ; $5f5a: $00
    ld h, e                                       ; $5f5b: $63
    dec a                                         ; $5f5c: $3d

jr_0b3_5f5d:
    adc c                                         ; $5f5d: $89
    ld h, d                                       ; $5f5e: $62
    nop                                           ; $5f5f: $00
    jr nz, jr_0b3_5f62                            ; $5f60: $20 $00

jr_0b3_5f62:
    nop                                           ; $5f62: $00
    ld c, c                                       ; $5f63: $49
    ld d, [hl]                                    ; $5f64: $56
    ret nz                                        ; $5f65: $c0

jr_0b3_5f66:
    jr nz, jr_0b3_5fa8                            ; $5f66: $20 $40

    stop                                          ; $5f68: $10 $00
    inc b                                         ; $5f6a: $04
    and $4d                                       ; $5f6b: $e6 $4d
    halt                                          ; $5f6d: $76

jr_0b3_5f6e:
    ld [hl], a                                    ; $5f6e: $77
    ld h, h                                       ; $5f6f: $64
    dec [hl]                                      ; $5f70: $35
    nop                                           ; $5f71: $00
    jr nz, jr_0b3_5f5a                            ; $5f72: $20 $e6

    ld c, l                                       ; $5f74: $4d
    halt                                          ; $5f75: $76
    ld [hl], a                                    ; $5f76: $77
    ld h, h                                       ; $5f77: $64
    dec [hl]                                      ; $5f78: $35
    nop                                           ; $5f79: $00
    jr nz, jr_0b3_5f62                            ; $5f7a: $20 $e6

    ld c, l                                       ; $5f7c: $4d
    halt                                          ; $5f7d: $76
    ld [hl], a                                    ; $5f7e: $77
    ld h, h                                       ; $5f7f: $64
    dec [hl]                                      ; $5f80: $35
    nop                                           ; $5f81: $00
    jr nz, @+$65                                  ; $5f82: $20 $63

    dec a                                         ; $5f84: $3d
    adc c                                         ; $5f85: $89
    ld h, d                                       ; $5f86: $62
    nop                                           ; $5f87: $00
    jr nz, jr_0b3_5f8a                            ; $5f88: $20 $00

jr_0b3_5f8a:
    jr nz, @+$65                                  ; $5f8a: $20 $63

    dec a                                         ; $5f8c: $3d
    adc c                                         ; $5f8d: $89
    ld h, d                                       ; $5f8e: $62
    nop                                           ; $5f8f: $00
    jr nz, jr_0b3_5f92                            ; $5f90: $20 $00

jr_0b3_5f92:
    nop                                           ; $5f92: $00
    ld h, c                                       ; $5f93: $61
    add hl, sp                                    ; $5f94: $39
    bit 5, d                                      ; $5f95: $cb $6a
    jr nz, @+$16                                  ; $5f97: $20 $14

    ld h, b                                       ; $5f99: $60
    db $10                                        ; $5f9a: $10
    dec b                                         ; $5f9b: $05
    ld d, d                                       ; $5f9c: $52
    ld [hl], l                                    ; $5f9d: $75
    ld [hl], a                                    ; $5f9e: $77

jr_0b3_5f9f:
    ld l, d                                       ; $5f9f: $6a
    ld e, d                                       ; $5fa0: $5a
    nop                                           ; $5fa1: $00
    inc b                                         ; $5fa2: $04
    ld c, d                                       ; $5fa3: $4a
    ld e, [hl]                                    ; $5fa4: $5e
    cp b                                          ; $5fa5: $b8

jr_0b3_5fa6:
    ld a, e                                       ; $5fa6: $7b
    ld h, h                                       ; $5fa7: $64

jr_0b3_5fa8:
    dec a                                         ; $5fa8: $3d
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    jr nz, jr_0b3_5f66                            ; $5fac: $20 $b8

jr_0b3_5fae:
    ld a, e                                       ; $5fae: $7b
    ld h, h                                       ; $5faf: $64
    dec a                                         ; $5fb0: $3d
    nop                                           ; $5fb1: $00
    jr nz, jr_0b3_5fb4                            ; $5fb2: $20 $00

jr_0b3_5fb4:
    jr nz, jr_0b3_5f6e                            ; $5fb4: $20 $b8

    ld a, e                                       ; $5fb6: $7b
    ld h, h                                       ; $5fb7: $64
    dec a                                         ; $5fb8: $3d
    nop                                           ; $5fb9: $00
    jr nz, jr_0b3_601d                            ; $5fba: $20 $61

    add hl, sp                                    ; $5fbc: $39
    bit 5, d                                      ; $5fbd: $cb $6a
    jr nz, jr_0b3_5fd5                            ; $5fbf: $20 $14

    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    jr nz, @-$33                                  ; $5fc4: $20 $cb

    ld l, d                                       ; $5fc6: $6a
    jr nz, jr_0b3_5fdd                            ; $5fc7: $20 $14

    nop                                           ; $5fc9: $00
    inc b                                         ; $5fca: $04

jr_0b3_5fcb:
    xor e                                         ; $5fcb: $ab
    ld h, d                                       ; $5fcc: $62
    ld h, d                                       ; $5fcd: $62
    dec a                                         ; $5fce: $3d
    reti                                          ; $5fcf: $d9


    ld a, a                                       ; $5fd0: $7f
    jr nz, jr_0b3_5fd7                            ; $5fd1: $20 $04

jr_0b3_5fd3:
    ld l, h                                       ; $5fd3: $6c
    ld d, [hl]                                    ; $5fd4: $56

jr_0b3_5fd5:
    sub l                                         ; $5fd5: $95
    ld [hl], a                                    ; $5fd6: $77

jr_0b3_5fd7:
    ld bc, $002d                                  ; $5fd7: $01 $2d $00
    nop                                           ; $5fda: $00
    ld h, e                                       ; $5fdb: $63
    dec [hl]                                      ; $5fdc: $35

jr_0b3_5fdd:
    xor $6a                                       ; $5fdd: $ee $6a
    db $e3                                        ; $5fdf: $e3
    ld d, c                                       ; $5fe0: $51
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    rst $38                                       ; $5fe3: $ff
    ld a, a                                       ; $5fe4: $7f
    nop                                           ; $5fe5: $00
    jr nz, jr_0b3_5fcb                            ; $5fe6: $20 $e3

    ld d, c                                       ; $5fe8: $51
    nop                                           ; $5fe9: $00
    jr nz, @+$01                                  ; $5fea: $20 $ff

    ld a, a                                       ; $5fec: $7f
    nop                                           ; $5fed: $00
    jr nz, jr_0b3_5fd3                            ; $5fee: $20 $e3

    ld d, c                                       ; $5ff0: $51
    nop                                           ; $5ff1: $00
    jr nz, jr_0b3_5f9f                            ; $5ff2: $20 $ab

    ld h, d                                       ; $5ff4: $62
    ld h, d                                       ; $5ff5: $62
    dec a                                         ; $5ff6: $3d
    reti                                          ; $5ff7: $d9


    ld a, a                                       ; $5ff8: $7f
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    rst $38                                       ; $5ffb: $ff
    ld a, a                                       ; $5ffc: $7f
    nop                                           ; $5ffd: $00
    jr nz, @-$25                                  ; $5ffe: $20 $d9

    ld a, a                                       ; $6000: $7f
    and e                                         ; $6001: $a3
    jr jr_0b3_6050                                ; $6002: $18 $4c

    ld d, [hl]                                    ; $6004: $56
    ld [hl], l                                    ; $6005: $75
    ld [hl], e                                    ; $6006: $73
    and [hl]                                      ; $6007: $a6
    ld b, l                                       ; $6008: $45
    ld b, [hl]                                    ; $6009: $46
    dec l                                         ; $600a: $2d
    ld [hl], h                                    ; $600b: $74
    ld [hl], a                                    ; $600c: $77
    ei                                            ; $600d: $fb
    ld a, a                                       ; $600e: $7f
    db $ec                                        ; $600f: $ec
    ld b, c                                       ; $6010: $41
    ld b, b                                       ; $6011: $40
    ld [$72ec], sp                                ; $6012: $08 $ec $72
    cp c                                          ; $6015: $b9
    ld a, e                                       ; $6016: $7b
    ld hl, $0031                                  ; $6017: $21 $31 $00
    nop                                           ; $601a: $00
    rst $38                                       ; $601b: $ff
    ld a, a                                       ; $601c: $7f

jr_0b3_601d:
    nop                                           ; $601d: $00
    jr nz, jr_0b3_6041                            ; $601e: $20 $21

    ld sp, $2000                                  ; $6020: $31 $00 $20
    rst $38                                       ; $6023: $ff
    ld a, a                                       ; $6024: $7f
    nop                                           ; $6025: $00
    jr nz, jr_0b3_6049                            ; $6026: $20 $21

    ld sp, $2000                                  ; $6028: $31 $00 $20
    ld c, h                                       ; $602b: $4c
    ld d, [hl]                                    ; $602c: $56
    ld [hl], l                                    ; $602d: $75
    ld [hl], e                                    ; $602e: $73
    and [hl]                                      ; $602f: $a6
    ld b, l                                       ; $6030: $45
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    dec hl                                        ; $6033: $2b
    ld d, d                                       ; $6034: $52
    rst $38                                       ; $6035: $ff
    ld a, a                                       ; $6036: $7f
    ld h, b                                       ; $6037: $60
    inc h                                         ; $6038: $24
    ld b, b                                       ; $6039: $40
    inc c                                         ; $603a: $0c
    ld l, c                                       ; $603b: $69
    ld e, [hl]                                    ; $603c: $5e
    reti                                          ; $603d: $d9


    ld a, a                                       ; $603e: $7f
    ld [bc], a                                    ; $603f: $02
    add hl, hl                                    ; $6040: $29

jr_0b3_6041:
    jr nz, jr_0b3_6047                            ; $6041: $20 $04

    ld b, a                                       ; $6043: $47
    ld d, [hl]                                    ; $6044: $56
    ld b, e                                       ; $6045: $43
    dec [hl]                                      ; $6046: $35

jr_0b3_6047:
    ld d, d                                       ; $6047: $52
    ld [hl], e                                    ; $6048: $73

jr_0b3_6049:
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    rst $08                                       ; $604b: $cf
    ld h, [hl]                                    ; $604c: $66
    add e                                         ; $604d: $83
    ld b, c                                       ; $604e: $41
    reti                                          ; $604f: $d9


jr_0b3_6050:
    ld a, a                                       ; $6050: $7f
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    rst $38                                       ; $6053: $ff
    ld a, a                                       ; $6054: $7f
    ld h, [hl]                                    ; $6055: $66
    ld a, [hl+]                                   ; $6056: $2a
    reti                                          ; $6057: $d9


    ld a, a                                       ; $6058: $7f
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    jr nz, jr_0b3_60c4                            ; $605c: $20 $66

    ld a, [hl+]                                   ; $605e: $2a
    reti                                          ; $605f: $d9


    ld a, a                                       ; $6060: $7f
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    rst $38                                       ; $6063: $ff
    ld a, a                                       ; $6064: $7f
    nop                                           ; $6065: $00
    jr nz, jr_0b3_606a                            ; $6066: $20 $02

    add hl, hl                                    ; $6068: $29
    nop                                           ; $6069: $00

jr_0b3_606a:
    nop                                           ; $606a: $00
    rst $38                                       ; $606b: $ff
    ld a, a                                       ; $606c: $7f
    ld h, [hl]                                    ; $606d: $66
    ld a, [hl+]                                   ; $606e: $2a
    ld h, b                                       ; $606f: $60
    jr jr_0b3_6072                                ; $6070: $18 $00

jr_0b3_6072:
    nop                                           ; $6072: $00
    ld b, d                                       ; $6073: $42
    ld sp, $08a9                                  ; $6074: $31 $a9 $08
    inc b                                         ; $6077: $04
    ld d, d                                       ; $6078: $52
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    ld [c], a                                     ; $607b: $e2
    ld d, c                                       ; $607c: $51
    rst $30                                       ; $607d: $f7
    ld sp, $18c4                                  ; $607e: $31 $c4 $18
    nop                                           ; $6081: $00
    inc b                                         ; $6082: $04
    adc c                                         ; $6083: $89
    add hl, sp                                    ; $6084: $39
    ld [hl], b                                    ; $6085: $70
    ld a, e                                       ; $6086: $7b
    ld b, a                                       ; $6087: $47
    ld e, d                                       ; $6088: $5a
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    ld h, [hl]                                    ; $608b: $66
    ld a, [hl+]                                   ; $608c: $2a
    rst $38                                       ; $608d: $ff
    ld a, a                                       ; $608e: $7f
    ld b, a                                       ; $608f: $47
    ld e, d                                       ; $6090: $5a
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    ld a, a                                       ; $6094: $7f
    nop                                           ; $6095: $00
    jr nz, jr_0b3_60df                            ; $6096: $20 $47

    ld e, d                                       ; $6098: $5a
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    rst $38                                       ; $609b: $ff
    ld a, a                                       ; $609c: $7f
    nop                                           ; $609d: $00
    jr nz, jr_0b3_60a4                            ; $609e: $20 $04

    ld d, d                                       ; $60a0: $52
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    ld h, [hl]                                    ; $60a3: $66

jr_0b3_60a4:
    ld a, [hl+]                                   ; $60a4: $2a
    xor c                                         ; $60a5: $a9
    ld [$5204], sp                                ; $60a6: $08 $04 $52
    rst $20                                       ; $60a9: $e7
    ld l, c                                       ; $60aa: $69
    ld hl, sp+$31                                 ; $60ab: $f8 $31
    ccf                                           ; $60ad: $3f
    ld e, e                                       ; $60ae: $5b
    xor c                                         ; $60af: $a9
    ld [$1800], sp                                ; $60b0: $08 $00 $18
    rst $20                                       ; $60b3: $e7
    ld l, c                                       ; $60b4: $69
    rst $18                                       ; $60b5: $df
    ld b, [hl]                                    ; $60b6: $46
    ld h, $00                                     ; $60b7: $26 $00
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    ld [hl], b                                    ; $60bb: $70
    ld d, [hl]                                    ; $60bc: $56
    ld b, h                                       ; $60bd: $44
    ld sp, $0bff                                  ; $60be: $31 $ff $0b
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    ld h, [hl]                                    ; $60c3: $66

jr_0b3_60c4:
    ld a, [hl+]                                   ; $60c4: $2a
    xor d                                         ; $60c5: $aa
    ld h, [hl]                                    ; $60c6: $66
    ret nz                                        ; $60c7: $c0

    jr z, jr_0b3_60ca                             ; $60c8: $28 $00

jr_0b3_60ca:
    nop                                           ; $60ca: $00
    rst $38                                       ; $60cb: $ff
    ld a, a                                       ; $60cc: $7f
    ld h, [hl]                                    ; $60cd: $66
    ld a, [hl+]                                   ; $60ce: $2a
    nop                                           ; $60cf: $00
    jr nz, jr_0b3_60d2                            ; $60d0: $20 $00

jr_0b3_60d2:
    nop                                           ; $60d2: $00
    rst $38                                       ; $60d3: $ff
    ld a, a                                       ; $60d4: $7f
    ld h, [hl]                                    ; $60d5: $66
    ld a, [hl+]                                   ; $60d6: $2a
    nop                                           ; $60d7: $00
    jr nz, jr_0b3_60db                            ; $60d8: $20 $01

    inc b                                         ; $60da: $04

jr_0b3_60db:
    jp nz, Jump_0b3_7259                          ; $60db: $c2 $59 $72

    ld [hl], a                                    ; $60de: $77

jr_0b3_60df:
    ld h, [hl]                                    ; $60df: $66
    ld a, [hl+]                                   ; $60e0: $2a
    nop                                           ; $60e1: $00
    inc e                                         ; $60e2: $1c
    rst $20                                       ; $60e3: $e7
    ld l, c                                       ; $60e4: $69
    ld d, $3e                                     ; $60e5: $16 $3e
    ld a, a                                       ; $60e7: $7f
    ld h, a                                       ; $60e8: $67
    nop                                           ; $60e9: $00
    nop                                           ; $60ea: $00
    rst $20                                       ; $60eb: $e7
    ld l, c                                       ; $60ec: $69
    ld d, $3e                                     ; $60ed: $16 $3e
    rst $38                                       ; $60ef: $ff
    ld c, [hl]                                    ; $60f0: $4e
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    ld a, [c]                                     ; $60f3: $f2
    dec e                                         ; $60f4: $1d
    ld a, a                                       ; $60f5: $7f
    dec hl                                        ; $60f6: $2b
    nop                                           ; $60f7: $00
    dec l                                         ; $60f8: $2d
    jr nz, jr_0b3_6107                            ; $60f9: $20 $0c

    ld c, c                                       ; $60fb: $49
    ld d, [hl]                                    ; $60fc: $56
    sub a                                         ; $60fd: $97
    ld [hl], a                                    ; $60fe: $77
    ld h, c                                       ; $60ff: $61
    add hl, sp                                    ; $6100: $39
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    rst $38                                       ; $6103: $ff
    ld a, a                                       ; $6104: $7f
    ld h, [hl]                                    ; $6105: $66
    ld a, [hl+]                                   ; $6106: $2a

jr_0b3_6107:
    nop                                           ; $6107: $00
    jr nz, jr_0b3_610a                            ; $6108: $20 $00

jr_0b3_610a:
    nop                                           ; $610a: $00
    rst $38                                       ; $610b: $ff
    ld a, a                                       ; $610c: $7f
    ld h, [hl]                                    ; $610d: $66
    ld a, [hl+]                                   ; $610e: $2a
    ld a, a                                       ; $610f: $7f
    ld h, a                                       ; $6110: $67
    ld bc, $ff00                                  ; $6111: $01 $00 $ff
    dec bc                                        ; $6114: $0b
    adc [hl]                                      ; $6115: $8e
    ld e, [hl]                                    ; $6116: $5e
    db $db                                        ; $6117: $db
    ld a, e                                       ; $6118: $7b
    ld bc, $7a00                                  ; $6119: $01 $00 $7a
    ld b, [hl]                                    ; $611c: $46
    cp a                                          ; $611d: $bf
    ld [hl], a                                    ; $611e: $77
    add hl, bc                                    ; $611f: $09
    dec d                                         ; $6120: $15
    ld bc, $ff00                                  ; $6121: $01 $00 $ff
    dec bc                                        ; $6124: $0b
    jp hl                                         ; $6125: $e9


    dec e                                         ; $6126: $1d
    rst $38                                       ; $6127: $ff
    ld a, a                                       ; $6128: $7f
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    inc l                                         ; $612b: $2c
    ld h, $61                                     ; $612c: $26 $61
    dec a                                         ; $612e: $3d
    sbc e                                         ; $612f: $9b
    ld b, d                                       ; $6130: $42
    jr nz, jr_0b3_613b                            ; $6131: $20 $08

    ld l, e                                       ; $6133: $6b
    ld e, [hl]                                    ; $6134: $5e
    ld h, d                                       ; $6135: $62
    add hl, sp                                    ; $6136: $39
    sub [hl]                                      ; $6137: $96
    ld [hl], a                                    ; $6138: $77
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00

jr_0b3_613b:
    rst $38                                       ; $613b: $ff
    ld a, a                                       ; $613c: $7f
    ld h, [hl]                                    ; $613d: $66
    ld a, [hl+]                                   ; $613e: $2a
    nop                                           ; $613f: $00
    jr nz, jr_0b3_6142                            ; $6140: $20 $00

jr_0b3_6142:
    nop                                           ; $6142: $00
    rst $38                                       ; $6143: $ff
    ld a, a                                       ; $6144: $7f
    ld h, [hl]                                    ; $6145: $66
    ld a, [hl+]                                   ; $6146: $2a
    nop                                           ; $6147: $00
    jr nz, jr_0b3_614a                            ; $6148: $20 $00

jr_0b3_614a:
    nop                                           ; $614a: $00
    jr jr_0b3_6154                                ; $614b: $18 $07

    or b                                          ; $614d: $b0
    ld h, d                                       ; $614e: $62
    inc h                                         ; $614f: $24
    dec l                                         ; $6150: $2d
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    rst $38                                       ; $6153: $ff

jr_0b3_6154:
    dec bc                                        ; $6154: $0b
    dec h                                         ; $6155: $25
    ld hl, $29c8                                  ; $6156: $21 $c8 $29
    ld bc, $ff00                                  ; $6159: $01 $00 $ff
    dec bc                                        ; $615c: $0b
    sbc c                                         ; $615d: $99
    ld [hl], a                                    ; $615e: $77
    xor $01                                       ; $615f: $ee $01
    ld hl, $5904                                  ; $6161: $21 $04 $59
    ld a, $a3                                     ; $6164: $3e $a3
    ld b, c                                       ; $6166: $41
    ccf                                           ; $6167: $3f
    ld e, e                                       ; $6168: $5b
    ld b, b                                       ; $6169: $40
    db $10                                        ; $616a: $10
    xor l                                         ; $616b: $ad
    ld h, d                                       ; $616c: $62
    add e                                         ; $616d: $83
    dec a                                         ; $616e: $3d
    sub a                                         ; $616f: $97
    ld [hl], a                                    ; $6170: $77
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    sbc d                                         ; $6173: $9a
    ld [hl], a                                    ; $6174: $77
    inc h                                         ; $6175: $24
    ld l, $00                                     ; $6176: $2e $00
    jr nz, jr_0b3_617a                            ; $6178: $20 $00

jr_0b3_617a:
    nop                                           ; $617a: $00
    rst $38                                       ; $617b: $ff
    ld a, a                                       ; $617c: $7f
    ld h, [hl]                                    ; $617d: $66
    ld a, [hl+]                                   ; $617e: $2a
    nop                                           ; $617f: $00
    jr nz, jr_0b3_61a2                            ; $6180: $20 $20

    ld [$4de6], sp                                ; $6182: $08 $e6 $4d
    rst $38                                       ; $6185: $ff
    dec bc                                        ; $6186: $0b
    db $10                                        ; $6187: $10
    ld h, a                                       ; $6188: $67
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    adc e                                         ; $618b: $8b
    ld e, [hl]                                    ; $618c: $5e
    rst $38                                       ; $618d: $ff
    ld a, a                                       ; $618e: $7f
    ld d, c                                       ; $618f: $51
    ld [bc], a                                    ; $6190: $02
    ld bc, $3300                                  ; $6191: $01 $00 $33
    ld l, a                                       ; $6194: $6f
    ld e, a                                       ; $6195: $5f
    ld h, e                                       ; $6196: $63
    ld l, a                                       ; $6197: $6f
    ld hl, $0002                                  ; $6198: $21 $02 $00
    ld a, d                                       ; $619b: $7a
    ld b, d                                       ; $619c: $42
    add e                                         ; $619d: $83
    dec a                                         ; $619e: $3d
    add b                                         ; $619f: $80
    jr @+$62                                      ; $61a0: $18 $60

jr_0b3_61a2:
    jr jr_0b3_620e                                ; $61a2: $18 $6a

    ld e, [hl]                                    ; $61a4: $5e
    sub [hl]                                      ; $61a5: $96
    ld [hl], a                                    ; $61a6: $77
    add d                                         ; $61a7: $82
    dec a                                         ; $61a8: $3d
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    rst $38                                       ; $61ab: $ff
    ld a, a                                       ; $61ac: $7f
    ld h, [hl]                                    ; $61ad: $66
    ld a, [hl+]                                   ; $61ae: $2a
    nop                                           ; $61af: $00
    jr nz, jr_0b3_61b2                            ; $61b0: $20 $00

jr_0b3_61b2:
    nop                                           ; $61b2: $00
    rst $38                                       ; $61b3: $ff
    ld a, a                                       ; $61b4: $7f
    ld h, [hl]                                    ; $61b5: $66
    ld a, [hl+]                                   ; $61b6: $2a
    nop                                           ; $61b7: $00
    jr nz, jr_0b3_61ba                            ; $61b8: $20 $00

jr_0b3_61ba:
    nop                                           ; $61ba: $00
    add e                                         ; $61bb: $83
    dec a                                         ; $61bc: $3d
    ld h, $5e                                     ; $61bd: $26 $5e
    ld h, [hl]                                    ; $61bf: $66
    ld a, [hl+]                                   ; $61c0: $2a
    inc bc                                        ; $61c1: $03
    nop                                           ; $61c2: $00
    ld a, c                                       ; $61c3: $79
    ld b, d                                       ; $61c4: $42
    ld [$7f14], a                                 ; $61c5: $ea $14 $7f
    ld h, e                                       ; $61c8: $63
    cp e                                          ; $61c9: $bb
    ld c, d                                       ; $61ca: $4a
    sbc a                                         ; $61cb: $9f
    ld h, e                                       ; $61cc: $63
    rst $38                                       ; $61cd: $ff

jr_0b3_61ce:
    ld c, [hl]                                    ; $61ce: $4e
    ld a, a                                       ; $61cf: $7f
    ld h, a                                       ; $61d0: $67
    ld b, d                                       ; $61d1: $42
    inc b                                         ; $61d2: $04
    push bc                                       ; $61d3: $c5
    ld c, c                                       ; $61d4: $49
    cp e                                          ; $61d5: $bb
    ld c, d                                       ; $61d6: $4a
    db $eb                                        ; $61d7: $eb
    ld [hl], d                                    ; $61d8: $72
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    ld h, d                                       ; $61db: $62
    dec [hl]                                      ; $61dc: $35
    and b                                         ; $61dd: $a0
    jr @-$18                                      ; $61de: $18 $e6

    ld c, c                                       ; $61e0: $49
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    rst $38                                       ; $61e3: $ff

jr_0b3_61e4:
    ld a, a                                       ; $61e4: $7f
    nop                                           ; $61e5: $00
    jr nz, jr_0b3_61ce                            ; $61e6: $20 $e6

jr_0b3_61e8:
    ld c, c                                       ; $61e8: $49
    nop                                           ; $61e9: $00
    nop                                           ; $61ea: $00
    rst $38                                       ; $61eb: $ff
    ld a, a                                       ; $61ec: $7f
    ld h, [hl]                                    ; $61ed: $66
    ld a, [hl+]                                   ; $61ee: $2a
    nop                                           ; $61ef: $00
    jr nz, jr_0b3_61f2                            ; $61f0: $20 $00

jr_0b3_61f2:
    nop                                           ; $61f2: $00
    db $e4                                        ; $61f3: $e4
    ld sp, $5e68                                  ; $61f4: $31 $68 $5e
    db $e4                                        ; $61f7: $e4
    jr nz, jr_0b3_6241                            ; $61f8: $20 $47

    inc b                                         ; $61fa: $04
    sbc a                                         ; $61fb: $9f
    ld h, e                                       ; $61fc: $63
    ld h, b                                       ; $61fd: $60
    dec a                                         ; $61fe: $3d
    sub b                                         ; $61ff: $90
    dec l                                         ; $6200: $2d
    ld bc, $bb00                                  ; $6201: $01 $00 $bb
    ld c, d                                       ; $6204: $4a
    ld a, a                                       ; $6205: $7f
    ld h, a                                       ; $6206: $67
    rst $38                                       ; $6207: $ff
    ld c, [hl]                                    ; $6208: $4e
    ld [hl+], a                                   ; $6209: $22
    nop                                           ; $620a: $00
    add h                                         ; $620b: $84
    add hl, sp                                    ; $620c: $39
    ld [c], a                                     ; $620d: $e2

jr_0b3_620e:
    inc h                                         ; $620e: $24
    daa                                           ; $620f: $27
    ld d, [hl]                                    ; $6210: $56
    ldh [rNR50], a                                ; $6211: $e0 $24
    dec b                                         ; $6213: $05
    ld c, [hl]                                    ; $6214: $4e
    adc e                                         ; $6215: $8b
    ld e, [hl]                                    ; $6216: $5e
    ld b, b                                       ; $6217: $40
    dec [hl]                                      ; $6218: $35
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    xor [hl]                                      ; $621b: $ae
    ld h, [hl]                                    ; $621c: $66
    db $fd                                        ; $621d: $fd
    ld a, a                                       ; $621e: $7f
    nop                                           ; $621f: $00
    jr nz, jr_0b3_6222                            ; $6220: $20 $00

jr_0b3_6222:
    nop                                           ; $6222: $00
    rst $38                                       ; $6223: $ff
    ld a, a                                       ; $6224: $7f
    ld h, [hl]                                    ; $6225: $66
    ld a, [hl+]                                   ; $6226: $2a
    nop                                           ; $6227: $00
    jr nz, jr_0b3_624b                            ; $6228: $20 $21

    ld [$6f10], sp                                ; $622a: $08 $10 $6f
    add e                                         ; $622d: $83
    dec a                                         ; $622e: $3d
    db $db                                        ; $622f: $db
    ld a, a                                       ; $6230: $7f
    ld [bc], a                                    ; $6231: $02
    inc b                                         ; $6232: $04
    ld a, a                                       ; $6233: $7f
    ld h, a                                       ; $6234: $67
    db $e4                                        ; $6235: $e4
    inc [hl]                                      ; $6236: $34
    jr nz, jr_0b3_625d                            ; $6237: $20 $24

    ld bc, $bc00                                  ; $6239: $01 $00 $bc
    ld b, [hl]                                    ; $623c: $46
    dec l                                         ; $623d: $2d
    add hl, de                                    ; $623e: $19
    ld a, a                                       ; $623f: $7f
    ld h, a                                       ; $6240: $67

jr_0b3_6241:
    ld bc, $c300                                  ; $6241: $01 $00 $c3
    ld c, l                                       ; $6244: $4d
    xor d                                         ; $6245: $aa

jr_0b3_6246:
    jr jr_0b3_61e8                                ; $6246: $18 $a0

    inc e                                         ; $6248: $1c
    ld h, b                                       ; $6249: $60
    db $10                                        ; $624a: $10

jr_0b3_624b:
    sub a                                         ; $624b: $97
    ld a, e                                       ; $624c: $7b
    add $45                                       ; $624d: $c6 $45
    ld hl, $0031                                  ; $624f: $21 $31 $00
    nop                                           ; $6252: $00
    ld sp, hl                                     ; $6253: $f9
    ld a, a                                       ; $6254: $7f
    nop                                           ; $6255: $00

jr_0b3_6256:
    jr nz, jr_0b3_6256                            ; $6256: $20 $fe

    ld a, a                                       ; $6258: $7f
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    rst $38                                       ; $625b: $ff
    ld a, a                                       ; $625c: $7f

jr_0b3_625d:
    nop                                           ; $625d: $00
    jr nz, jr_0b3_61e4                            ; $625e: $20 $84

    inc e                                         ; $6260: $1c
    add e                                         ; $6261: $83
    inc d                                         ; $6262: $14
    sub a                                         ; $6263: $97
    ld a, e                                       ; $6264: $7b
    rrca                                          ; $6265: $0f
    ld b, [hl]                                    ; $6266: $46
    ld h, h                                       ; $6267: $64
    add hl, sp                                    ; $6268: $39
    inc hl                                        ; $6269: $23
    nop                                           ; $626a: $00

jr_0b3_626b:
    ld a, a                                       ; $626b: $7f
    ld h, a                                       ; $626c: $67
    bit 0, c                                      ; $626d: $cb $41
    and h                                         ; $626f: $a4
    inc l                                         ; $6270: $2c
    ld [bc], a                                    ; $6271: $02
    nop                                           ; $6272: $00
    ld a, d                                       ; $6273: $7a
    ld a, $2d                                     ; $6274: $3e $2d
    add hl, de                                    ; $6276: $19
    ccf                                           ; $6277: $3f
    ld e, e                                       ; $6278: $5b
    ld bc, $c500                                  ; $6279: $01 $00 $c5
    ld b, l                                       ; $627c: $45
    sub h                                         ; $627d: $94
    ld c, b                                       ; $627e: $48
    xor e                                         ; $627f: $ab
    jr jr_0b3_62e2                                ; $6280: $18 $60

    inc d                                         ; $6282: $14
    ld l, c                                       ; $6283: $69
    ld e, [hl]                                    ; $6284: $5e

jr_0b3_6285:
    or a                                          ; $6285: $b7
    ld a, e                                       ; $6286: $7b
    ld h, [hl]                                    ; $6287: $66
    dec [hl]                                      ; $6288: $35
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    call Call_000_006a                            ; $628b: $cd $6a $00
    jr nz, jr_0b3_6246                            ; $628e: $20 $b6

    ld a, a                                       ; $6290: $7f
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    rst $38                                       ; $6293: $ff
    ld a, a                                       ; $6294: $7f
    nop                                           ; $6295: $00
    jr nz, jr_0b3_6298                            ; $6296: $20 $00

jr_0b3_6298:
    ld [$1040], sp                                ; $6298: $08 $40 $10
    cp c                                          ; $629b: $b9
    ld a, e                                       ; $629c: $7b
    rlca                                          ; $629d: $07
    ld c, [hl]                                    ; $629e: $4e
    ld hl, $0431                                  ; $629f: $21 $31 $04
    nop                                           ; $62a2: $00
    ld a, c                                       ; $62a3: $79
    ld b, d                                       ; $62a4: $42
    ld a, [hl]                                    ; $62a5: $7e
    ld h, b                                       ; $62a6: $60
    or l                                          ; $62a7: $b5
    ld a, a                                       ; $62a8: $7f
    ld b, h                                       ; $62a9: $44
    inc b                                         ; $62aa: $04
    jr c, jr_0b3_62e3                             ; $62ab: $38 $36

    ccf                                           ; $62ad: $3f
    ld e, a                                       ; $62ae: $5f
    dec l                                         ; $62af: $2d
    add hl, de                                    ; $62b0: $19
    ld bc, $6f00                                  ; $62b1: $01 $00 $6f
    jr nc, jr_0b3_62f1                            ; $62b4: $30 $3b

    ld h, c                                       ; $62b6: $61
    db $eb                                        ; $62b7: $eb
    inc d                                         ; $62b8: $14
    add c                                         ; $62b9: $81
    inc d                                         ; $62ba: $14
    xor [hl]                                      ; $62bb: $ae
    ld h, d                                       ; $62bc: $62
    cp d                                          ; $62bd: $ba
    ld a, a                                       ; $62be: $7f
    and e                                         ; $62bf: $a3
    ld b, l                                       ; $62c0: $45
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    bit 4, [hl]                                   ; $62c3: $cb $66
    nop                                           ; $62c5: $00
    jr nz, jr_0b3_626b                            ; $62c6: $20 $a3

    ld b, l                                       ; $62c8: $45
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    rst $38                                       ; $62cb: $ff
    ld a, a                                       ; $62cc: $7f
    nop                                           ; $62cd: $00
    jr nz, jr_0b3_6285                            ; $62ce: $20 $b5

    ld a, a                                       ; $62d0: $7f
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    ld b, c                                       ; $62d3: $41
    dec [hl]                                      ; $62d4: $35
    dec b                                         ; $62d5: $05
    ld d, d                                       ; $62d6: $52
    add b                                         ; $62d7: $80
    inc d                                         ; $62d8: $14
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    ld d, e                                       ; $62db: $53
    ld b, b                                       ; $62dc: $40
    adc d                                         ; $62dd: $8a
    inc e                                         ; $62de: $1c
    ld a, e                                       ; $62df: $7b
    ld d, c                                       ; $62e0: $51
    ld e, d                                       ; $62e1: $5a

jr_0b3_62e2:
    ld a, [hl-]                                   ; $62e2: $3a

jr_0b3_62e3:
    ld e, $53                                     ; $62e3: $1e $53
    ld e, a                                       ; $62e5: $5f
    ld h, e                                       ; $62e6: $63
    ccf                                           ; $62e7: $3f
    ld d, a                                       ; $62e8: $57
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    sub d                                         ; $62eb: $92
    inc a                                         ; $62ec: $3c
    rr h                                          ; $62ed: $cb $1c
    ld a, h                                       ; $62ef: $7c
    ld h, l                                       ; $62f0: $65

jr_0b3_62f1:
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    push hl                                       ; $62f3: $e5
    inc [hl]                                      ; $62f4: $34
    add b                                         ; $62f5: $80
    inc d                                         ; $62f6: $14
    adc h                                         ; $62f7: $8c
    ld d, c                                       ; $62f8: $51
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    rst $38                                       ; $62fb: $ff
    ld a, a                                       ; $62fc: $7f
    nop                                           ; $62fd: $00
    jr nz, @-$72                                  ; $62fe: $20 $8c

    ld d, c                                       ; $6300: $51
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    rst $38                                       ; $6303: $ff
    ld a, a                                       ; $6304: $7f
    nop                                           ; $6305: $00
    jr nz, jr_0b3_6383                            ; $6306: $20 $7b

    ld d, c                                       ; $6308: $51
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    add b                                         ; $630b: $80
    jr jr_0b3_6316                                ; $630c: $18 $08

    inc d                                         ; $630e: $14
    pop bc                                        ; $630f: $c1
    jr nz, jr_0b3_6313                            ; $6310: $20 $01

    nop                                           ; $6312: $00

jr_0b3_6313:
    ld hl, sp+$54                                 ; $6313: $f8 $54
    ld e, e                                       ; $6315: $5b

jr_0b3_6316:
    ld c, d                                       ; $6316: $4a
    ld l, h                                       ; $6317: $6c
    jr nz, jr_0b3_6332                            ; $6318: $20 $18

    ld [hl-], a                                   ; $631a: $32
    cp $52                                        ; $631b: $fe $52
    ccf                                           ; $631d: $3f
    ld e, e                                       ; $631e: $5b
    ld e, a                                       ; $631f: $5f
    ld h, e                                       ; $6320: $63
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    pop de                                        ; $6323: $d1
    inc a                                         ; $6324: $3c
    ld l, d                                       ; $6325: $6a
    inc e                                         ; $6326: $1c
    ld a, [de]                                    ; $6327: $1a
    ld e, l                                       ; $6328: $5d
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    cpl                                           ; $632b: $2f
    ld e, [hl]                                    ; $632c: $5e
    ld h, $39                                     ; $632d: $26 $39
    ld a, c                                       ; $632f: $79
    ld [hl], a                                    ; $6330: $77
    nop                                           ; $6331: $00

jr_0b3_6332:
    nop                                           ; $6332: $00
    rst $38                                       ; $6333: $ff
    ld a, a                                       ; $6334: $7f
    nop                                           ; $6335: $00
    jr nz, jr_0b3_63b1                            ; $6336: $20 $79

    ld [hl], a                                    ; $6338: $77
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    rst $38                                       ; $633b: $ff
    ld a, a                                       ; $633c: $7f
    nop                                           ; $633d: $00

jr_0b3_633e:
    jr nz, jr_0b3_63ac                            ; $633e: $20 $6c

    jr nz, jr_0b3_6362                            ; $6340: $20 $20

    nop                                           ; $6342: $00
    adc c                                         ; $6343: $89
    ld e, c                                       ; $6344: $59
    rst $38                                       ; $6345: $ff
    ld a, a                                       ; $6346: $7f
    ld b, $39                                     ; $6347: $06 $39
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    sub h                                         ; $634b: $94
    ld a, [bc]                                    ; $634c: $0a
    ld a, e                                       ; $634d: $7b
    ld a, $8c                                     ; $634e: $3e $8c
    jr nz, jr_0b3_6352                            ; $6350: $20 $00

jr_0b3_6352:
    nop                                           ; $6352: $00
    sbc $4a                                       ; $6353: $de $4a
    ld [hl], b                                    ; $6355: $70
    ld hl, $5f5f                                  ; $6356: $21 $5f $5f
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    db $10                                        ; $635b: $10
    inc [hl]                                      ; $635c: $34
    ld d, a                                       ; $635d: $57
    ld d, l                                       ; $635e: $55
    rlca                                          ; $635f: $07
    inc d                                         ; $6360: $14
    nop                                           ; $6361: $00

jr_0b3_6362:
    nop                                           ; $6362: $00
    cpl                                           ; $6363: $2f
    ld e, d                                       ; $6364: $5a
    ld a, c                                       ; $6365: $79
    ld [hl], a                                    ; $6366: $77
    push bc                                       ; $6367: $c5
    jr nc, jr_0b3_636a                            ; $6368: $30 $00

jr_0b3_636a:
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    jr nz, jr_0b3_63e7                            ; $636c: $20 $79

    ld [hl], a                                    ; $636e: $77
    push bc                                       ; $636f: $c5
    jr nc, jr_0b3_6372                            ; $6370: $30 $00

jr_0b3_6372:
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    jr nz, jr_0b3_63f1                            ; $6374: $20 $7b

    ld a, $8c                                     ; $6376: $3e $8c
    jr nz, jr_0b3_637a                            ; $6378: $20 $00

jr_0b3_637a:
    nop                                           ; $637a: $00
    sbc h                                         ; $637b: $9c
    dec bc                                        ; $637c: $0b
    or d                                          ; $637d: $b2
    halt                                          ; $637e: $76
    rst $38                                       ; $637f: $ff
    ld a, a                                       ; $6380: $7f
    nop                                           ; $6381: $00
    inc b                                         ; $6382: $04

jr_0b3_6383:
    cp l                                          ; $6383: $bd
    inc bc                                        ; $6384: $03
    sub b                                         ; $6385: $90
    ld hl, $52dc                                  ; $6386: $21 $dc $52
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00

jr_0b3_638b:
    ld [hl], e                                    ; $638b: $73
    ld b, $1e                                     ; $638c: $06 $1e
    ld d, a                                       ; $638e: $57
    cp l                                          ; $638f: $bd
    rlca                                          ; $6390: $07
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    ld e, d                                       ; $6393: $5a
    rlca                                          ; $6394: $07
    daa                                           ; $6395: $27
    dec a                                         ; $6396: $3d
    adc d                                         ; $6397: $8a
    ld bc, $0000                                  ; $6398: $01 $00 $00
    sub c                                         ; $639b: $91
    ld h, [hl]                                    ; $639c: $66
    push hl                                       ; $639d: $e5
    inc [hl]                                      ; $639e: $34
    rst $38                                       ; $639f: $ff
    ld a, a                                       ; $63a0: $7f
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    jr nz, jr_0b3_638b                            ; $63a4: $20 $e5

    inc [hl]                                      ; $63a6: $34
    rst $38                                       ; $63a7: $ff
    ld a, a                                       ; $63a8: $7f
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00

jr_0b3_63ac:
    jr nz, jr_0b3_633e                            ; $63ac: $20 $90

    ld hl, $52dc                                  ; $63ae: $21 $dc $52

jr_0b3_63b1:
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    rst $38                                       ; $63b3: $ff
    inc de                                        ; $63b4: $13
    or e                                          ; $63b5: $b3
    ld l, d                                       ; $63b6: $6a
    push bc                                       ; $63b7: $c5
    inc l                                         ; $63b8: $2c
    ld b, e                                       ; $63b9: $43
    jr jr_0b3_63f4                                ; $63ba: $18 $38

    ld a, [hl+]                                   ; $63bc: $2a
    rst $38                                       ; $63bd: $ff
    rlca                                          ; $63be: $07
    or e                                          ; $63bf: $b3
    ld a, d                                       ; $63c0: $7a
    ld hl, $3a04                                  ; $63c1: $21 $04 $3a
    ld [hl-], a                                   ; $63c4: $32
    ld l, [hl]                                    ; $63c5: $6e
    ld de, $0fff                                  ; $63c6: $11 $ff $0f
    nop                                           ; $63c9: $00
    inc b                                         ; $63ca: $04
    rst $38                                       ; $63cb: $ff
    dec bc                                        ; $63cc: $0b
    sub d                                         ; $63cd: $92
    ld l, d                                       ; $63ce: $6a
    push hl                                       ; $63cf: $e5

jr_0b3_63d0:
    inc a                                         ; $63d0: $3c
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    db $f4                                        ; $63d3: $f4
    ld l, d                                       ; $63d4: $6a
    push hl                                       ; $63d5: $e5
    jr nc, @+$01                                  ; $63d6: $30 $ff

    ld a, a                                       ; $63d8: $7f
    nop                                           ; $63d9: $00
    jr nz, jr_0b3_63d0                            ; $63da: $20 $f4

    ld l, d                                       ; $63dc: $6a
    push hl                                       ; $63dd: $e5
    jr nc, @+$01                                  ; $63de: $30 $ff

    ld a, a                                       ; $63e0: $7f
    nop                                           ; $63e1: $00
    jr nz, jr_0b3_641c                            ; $63e2: $20 $38

    ld a, [hl+]                                   ; $63e4: $2a
    rst $38                                       ; $63e5: $ff
    rlca                                          ; $63e6: $07

jr_0b3_63e7:
    or e                                          ; $63e7: $b3
    ld a, d                                       ; $63e8: $7a
    nop                                           ; $63e9: $00
    inc b                                         ; $63ea: $04
    ld [hl], c                                    ; $63eb: $71
    ld h, [hl]                                    ; $63ec: $66
    ret c                                         ; $63ed: $d8

    ld b, $07                                     ; $63ee: $06 $07
    dec h                                         ; $63f0: $25

jr_0b3_63f1:
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    ld d, e                                       ; $63f3: $53

jr_0b3_63f4:
    ld b, b                                       ; $63f4: $40
    rst $38                                       ; $63f5: $ff
    rrca                                          ; $63f6: $0f
    rst $08                                       ; $63f7: $cf
    add hl, bc                                    ; $63f8: $09
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    push de                                       ; $63fb: $d5
    ld b, $2e                                     ; $63fc: $06 $2e
    jr nc, @+$01                                  ; $63fe: $30 $ff

    dec de                                        ; $6400: $1b
    nop                                           ; $6401: $00
    inc b                                         ; $6402: $04
    or [hl]                                       ; $6403: $b6
    ld b, $69                                     ; $6404: $06 $69
    ld c, l                                       ; $6406: $4d
    or e                                          ; $6407: $b3
    ld h, [hl]                                    ; $6408: $66
    nop                                           ; $6409: $00
    ld [$5e71], sp                                ; $640a: $08 $71 $5e
    daa                                           ; $640d: $27
    dec a                                         ; $640e: $3d
    rst $38                                       ; $640f: $ff
    ld a, a                                       ; $6410: $7f
    nop                                           ; $6411: $00
    jr nz, jr_0b3_6485                            ; $6412: $20 $71

    ld e, [hl]                                    ; $6414: $5e
    daa                                           ; $6415: $27
    dec a                                         ; $6416: $3d
    rst $38                                       ; $6417: $ff
    ld a, a                                       ; $6418: $7f
    nop                                           ; $6419: $00
    jr nz, @+$55                                  ; $641a: $20 $53

jr_0b3_641c:
    ld b, b                                       ; $641c: $40
    rst $38                                       ; $641d: $ff
    rrca                                          ; $641e: $0f
    rst $08                                       ; $641f: $cf

jr_0b3_6420:
    add hl, bc                                    ; $6420: $09
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    ld l, c                                       ; $6423: $69
    ld c, c                                       ; $6424: $49
    ld [hl], c                                    ; $6425: $71
    ld e, [hl]                                    ; $6426: $5e
    ld b, c                                       ; $6427: $41
    jr nz, jr_0b3_642a                            ; $6428: $20 $00

jr_0b3_642a:
    nop                                           ; $642a: $00
    ld d, c                                       ; $642b: $51
    jr c, jr_0b3_6489                             ; $642c: $38 $5b

    ld h, c                                       ; $642e: $61
    inc l                                         ; $642f: $2c
    jr z, jr_0b3_6432                             ; $6430: $28 $00

jr_0b3_6432:
    nop                                           ; $6432: $00
    ld [hl], d                                    ; $6433: $72
    ld b, b                                       ; $6434: $40
    ld e, [hl]                                    ; $6435: $5e
    ld l, c                                       ; $6436: $69
    ld h, l                                       ; $6437: $65
    ld [$0000], sp                                ; $6438: $08 $00 $00
    ld l, b                                       ; $643b: $68
    ld c, l                                       ; $643c: $4d
    ld [hl], l                                    ; $643d: $75
    ld b, $0e                                     ; $643e: $06 $0e
    ld e, d                                       ; $6440: $5a
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    rst $38                                       ; $6443: $ff
    ld a, a                                       ; $6444: $7f
    push hl                                       ; $6445: $e5
    jr nc, jr_0b3_644a                            ; $6446: $30 $02

    inc e                                         ; $6448: $1c
    nop                                           ; $6449: $00

jr_0b3_644a:
    jr nz, @+$01                                  ; $644a: $20 $ff

    ld a, a                                       ; $644c: $7f
    push hl                                       ; $644d: $e5
    jr nc, jr_0b3_6452                            ; $644e: $30 $02

    inc e                                         ; $6450: $1c
    nop                                           ; $6451: $00

jr_0b3_6452:
    jr nz, @+$53                                  ; $6452: $20 $51

    jr c, jr_0b3_64b1                             ; $6454: $38 $5b

    ld h, c                                       ; $6456: $61
    inc l                                         ; $6457: $2c
    jr z, jr_0b3_645a                             ; $6458: $28 $00

jr_0b3_645a:
    nop                                           ; $645a: $00
    ld c, b                                       ; $645b: $48
    ld c, c                                       ; $645c: $49
    rst $38                                       ; $645d: $ff
    ld a, a                                       ; $645e: $7f
    nop                                           ; $645f: $00
    jr nz, jr_0b3_6462                            ; $6460: $20 $00

jr_0b3_6462:
    nop                                           ; $6462: $00
    sub h                                         ; $6463: $94
    ld b, h                                       ; $6464: $44
    db $dd                                        ; $6465: $dd
    ld l, l                                       ; $6466: $6d
    dec b                                         ; $6467: $05
    add hl, sp                                    ; $6468: $39
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    rst $38                                       ; $646b: $ff
    ld a, a                                       ; $646c: $7f
    push hl                                       ; $646d: $e5
    jr nc, jr_0b3_6472                            ; $646e: $30 $02

    inc e                                         ; $6470: $1c
    nop                                           ; $6471: $00

jr_0b3_6472:
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    ld a, a                                       ; $6474: $7f
    push hl                                       ; $6475: $e5
    jr nc, jr_0b3_647a                            ; $6476: $30 $02

    inc e                                         ; $6478: $1c
    nop                                           ; $6479: $00

jr_0b3_647a:
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    nop                                           ; $647d: $00
    jr nz, jr_0b3_6482                            ; $647e: $20 $02

    inc e                                         ; $6480: $1c
    nop                                           ; $6481: $00

jr_0b3_6482:
    jr nz, @+$01                                  ; $6482: $20 $ff

    ld a, a                                       ; $6484: $7f

jr_0b3_6485:
    nop                                           ; $6485: $00
    jr nz, jr_0b3_648a                            ; $6486: $20 $02

    inc e                                         ; $6488: $1c

jr_0b3_6489:
    nop                                           ; $6489: $00

jr_0b3_648a:
    jr nz, jr_0b3_6420                            ; $648a: $20 $94

    ld b, h                                       ; $648c: $44
    db $dd                                        ; $648d: $dd
    ld l, l                                       ; $648e: $6d
    dec b                                         ; $648f: $05
    add hl, sp                                    ; $6490: $39
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    nop                                           ; $6495: $00
    jr nz, jr_0b3_649d                            ; $6496: $20 $05

    add hl, sp                                    ; $6498: $39
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff
    ld a, a                                       ; $649c: $7f

jr_0b3_649d:
    nop                                           ; $649d: $00
    jr nz, @+$07                                  ; $649e: $20 $05

    add hl, sp                                    ; $64a0: $39
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    jr nz, jr_0b3_64a6                            ; $64a4: $20 $00

jr_0b3_64a6:
    jr nz, jr_0b3_64aa                            ; $64a6: $20 $02

    inc e                                         ; $64a8: $1c
    nop                                           ; $64a9: $00

jr_0b3_64aa:
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    jr nz, jr_0b3_64ae                            ; $64ac: $20 $00

jr_0b3_64ae:
    jr nz, jr_0b3_64b2                            ; $64ae: $20 $02

    inc e                                         ; $64b0: $1c

jr_0b3_64b1:
    nop                                           ; $64b1: $00

jr_0b3_64b2:
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    jr nz, jr_0b3_64b6                            ; $64b4: $20 $00

jr_0b3_64b6:
    jr nz, jr_0b3_64ba                            ; $64b6: $20 $02

    inc e                                         ; $64b8: $1c
    nop                                           ; $64b9: $00

jr_0b3_64ba:
    jr nz, jr_0b3_64bc                            ; $64ba: $20 $00

jr_0b3_64bc:
    jr nz, jr_0b3_64be                            ; $64bc: $20 $00

jr_0b3_64be:
    jr nz, jr_0b3_64c2                            ; $64be: $20 $02

    inc e                                         ; $64c0: $1c
    nop                                           ; $64c1: $00

jr_0b3_64c2:
    jr nz, jr_0b3_64c4                            ; $64c2: $20 $00

jr_0b3_64c4:
    jr nz, jr_0b3_64c6                            ; $64c4: $20 $00

jr_0b3_64c6:
    jr nz, jr_0b3_64c8                            ; $64c6: $20 $00

jr_0b3_64c8:
    jr nz, jr_0b3_64ca                            ; $64c8: $20 $00

jr_0b3_64ca:
    jr nz, @+$21                                  ; $64ca: $20 $1f

    ld [hl], h                                    ; $64cc: $74
    rst $38                                       ; $64cd: $ff
    ld a, a                                       ; $64ce: $7f
    nop                                           ; $64cf: $00
    jr nz, jr_0b3_64d2                            ; $64d0: $20 $00

jr_0b3_64d2:
    jr nz, @+$21                                  ; $64d2: $20 $1f

    ld [hl], h                                    ; $64d4: $74
    rst $38                                       ; $64d5: $ff
    ld a, a                                       ; $64d6: $7f
    nop                                           ; $64d7: $00
    jr nz, jr_0b3_64da                            ; $64d8: $20 $00

jr_0b3_64da:
    nop                                           ; $64da: $00
    rst $38                                       ; $64db: $ff
    ld a, a                                       ; $64dc: $7f
    nop                                           ; $64dd: $00
    jr nz, jr_0b3_64e5                            ; $64de: $20 $05

    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    jr nz, jr_0b3_64e9                            ; $64e2: $20 $05

    nop                                           ; $64e4: $00

jr_0b3_64e5:
    nop                                           ; $64e5: $00
    jr nz, jr_0b3_64ed                            ; $64e6: $20 $05

    nop                                           ; $64e8: $00

jr_0b3_64e9:
    nop                                           ; $64e9: $00
    jr nz, jr_0b3_64f1                            ; $64ea: $20 $05

    nop                                           ; $64ec: $00

jr_0b3_64ed:
    nop                                           ; $64ed: $00
    jr nz, jr_0b3_64f5                            ; $64ee: $20 $05

    nop                                           ; $64f0: $00

jr_0b3_64f1:
    nop                                           ; $64f1: $00
    jr nz, jr_0b3_6513                            ; $64f2: $20 $1f

    ld [hl], h                                    ; $64f4: $74

jr_0b3_64f5:
    rst $38                                       ; $64f5: $ff
    ld a, a                                       ; $64f6: $7f
    dec b                                         ; $64f7: $05
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    jr nz, jr_0b3_651b                            ; $64fa: $20 $1f

    ld [hl], h                                    ; $64fc: $74
    rst $38                                       ; $64fd: $ff
    ld a, a                                       ; $64fe: $7f
    nop                                           ; $64ff: $00
    jr nz, jr_0b3_6502                            ; $6500: $20 $00

jr_0b3_6502:
    jr nz, @+$21                                  ; $6502: $20 $1f

    ld [hl], h                                    ; $6504: $74
    rst $38                                       ; $6505: $ff
    ld a, a                                       ; $6506: $7f
    nop                                           ; $6507: $00
    jr nz, jr_0b3_650a                            ; $6508: $20 $00

jr_0b3_650a:
    jr nz, @+$21                                  ; $650a: $20 $1f

    ld [hl], h                                    ; $650c: $74
    rst $38                                       ; $650d: $ff
    ld a, a                                       ; $650e: $7f
    nop                                           ; $650f: $00
    jr nz, jr_0b3_6515                            ; $6510: $20 $03

    nop                                           ; $6512: $00

jr_0b3_6513:
    rst $38                                       ; $6513: $ff
    ld a, a                                       ; $6514: $7f

jr_0b3_6515:
    ld c, a                                       ; $6515: $4f
    ld hl, $2000                                  ; $6516: $21 $00 $20
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00

jr_0b3_651b:
    ld c, a                                       ; $651b: $4f
    ld hl, $1c00                                  ; $651c: $21 $00 $1c
    dec b                                         ; $651f: $05
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    jr nz, @+$51                                  ; $6522: $20 $4f

    ld hl, $1c00                                  ; $6524: $21 $00 $1c
    dec b                                         ; $6527: $05
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    jr nz, jr_0b3_654b                            ; $652a: $20 $1f

    ld [hl], h                                    ; $652c: $74
    rst $38                                       ; $652d: $ff
    ld a, a                                       ; $652e: $7f
    xor a                                         ; $652f: $af
    ld c, b                                       ; $6530: $48
    nop                                           ; $6531: $00
    jr nz, @+$21                                  ; $6532: $20 $1f

    ld [hl], h                                    ; $6534: $74
    rst $38                                       ; $6535: $ff
    ld a, a                                       ; $6536: $7f
    nop                                           ; $6537: $00
    jr nz, jr_0b3_653a                            ; $6538: $20 $00

jr_0b3_653a:
    jr nz, @+$21                                  ; $653a: $20 $1f

    ld [hl], h                                    ; $653c: $74
    rst $38                                       ; $653d: $ff
    ld a, a                                       ; $653e: $7f
    nop                                           ; $653f: $00
    jr nz, jr_0b3_6542                            ; $6540: $20 $00

jr_0b3_6542:
    nop                                           ; $6542: $00
    rst $38                                       ; $6543: $ff
    ld a, a                                       ; $6544: $7f
    nop                                           ; $6545: $00
    jr nz, jr_0b3_6548                            ; $6546: $20 $00

jr_0b3_6548:
    jr nz, jr_0b3_654d                            ; $6548: $20 $03

    nop                                           ; $654a: $00

jr_0b3_654b:
    and [hl]                                      ; $654b: $a6
    ld l, h                                       ; $654c: $6c

jr_0b3_654d:
    rst $38                                       ; $654d: $ff
    ld a, a                                       ; $654e: $7f
    sub c                                         ; $654f: $91
    add hl, hl                                    ; $6550: $29
    nop                                           ; $6551: $00
    jr nz, jr_0b3_65c4                            ; $6552: $20 $70

    dec h                                         ; $6554: $25
    rst $38                                       ; $6555: $ff
    ld a, a                                       ; $6556: $7f
    dec b                                         ; $6557: $05
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    jr nz, jr_0b3_6561                            ; $655a: $20 $05

    nop                                           ; $655c: $00
    rst $38                                       ; $655d: $ff
    ld a, a                                       ; $655e: $7f
    dec b                                         ; $655f: $05
    nop                                           ; $6560: $00

jr_0b3_6561:
    nop                                           ; $6561: $00
    jr nz, jr_0b3_6583                            ; $6562: $20 $1f

    ld [hl], h                                    ; $6564: $74
    rst $38                                       ; $6565: $ff
    ld a, a                                       ; $6566: $7f
    ld bc, $0024                                  ; $6567: $01 $24 $00
    jr nz, @+$01                                  ; $656a: $20 $ff

    ld a, a                                       ; $656c: $7f
    nop                                           ; $656d: $00
    jr nz, jr_0b3_6570                            ; $656e: $20 $00

jr_0b3_6570:
    jr nz, jr_0b3_6572                            ; $6570: $20 $00

jr_0b3_6572:
    jr nz, jr_0b3_6593                            ; $6572: $20 $1f

    ld [hl], h                                    ; $6574: $74
    rst $38                                       ; $6575: $ff
    ld a, a                                       ; $6576: $7f
    dec b                                         ; $6577: $05
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    jr nz, @+$01                                  ; $657a: $20 $ff

    ld a, a                                       ; $657c: $7f
    dec b                                         ; $657d: $05
    nop                                           ; $657e: $00
    ld d, b                                       ; $657f: $50
    dec h                                         ; $6580: $25
    dec b                                         ; $6581: $05
    nop                                           ; $6582: $00

jr_0b3_6583:
    and [hl]                                      ; $6583: $a6
    ld l, b                                       ; $6584: $68
    db $f4                                        ; $6585: $f4
    add hl, sp                                    ; $6586: $39
    dec [hl]                                      ; $6587: $35
    ld a, $00                                     ; $6588: $3e $00
    inc e                                         ; $658a: $1c
    sub c                                         ; $658b: $91
    add hl, hl                                    ; $658c: $29
    inc d                                         ; $658d: $14
    ld a, [hl-]                                   ; $658e: $3a
    dec b                                         ; $658f: $05
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    inc e                                         ; $6592: $1c

jr_0b3_6593:
    rra                                           ; $6593: $1f
    ld [hl], h                                    ; $6594: $74
    dec c                                         ; $6595: $0d
    add hl, de                                    ; $6596: $19
    dec b                                         ; $6597: $05
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    jr nz, jr_0b3_65bb                            ; $659a: $20 $1f

    ld [hl], h                                    ; $659c: $74
    rst $38                                       ; $659d: $ff
    ld a, a                                       ; $659e: $7f
    dec b                                         ; $659f: $05
    nop                                           ; $65a0: $00
    nop                                           ; $65a1: $00
    jr nz, @+$01                                  ; $65a2: $20 $ff

    ld a, a                                       ; $65a4: $7f
    dec b                                         ; $65a5: $05
    nop                                           ; $65a6: $00
    ld d, b                                       ; $65a7: $50
    dec h                                         ; $65a8: $25
    nop                                           ; $65a9: $00
    inc e                                         ; $65aa: $1c
    rra                                           ; $65ab: $1f
    ld [hl], h                                    ; $65ac: $74
    rst $38                                       ; $65ad: $ff
    ld a, a                                       ; $65ae: $7f
    rl h                                          ; $65af: $cb $14
    inc bc                                        ; $65b1: $03
    inc b                                         ; $65b2: $04
    ld l, $21                                     ; $65b3: $2e $21
    rst $38                                       ; $65b5: $ff
    ld a, a                                       ; $65b6: $7f
    db $d3                                        ; $65b7: $d3
    ld sp, $0005                                  ; $65b8: $31 $05 $00

jr_0b3_65bb:
    dec [hl]                                      ; $65bb: $35
    ld a, $06                                     ; $65bc: $3e $06
    inc d                                         ; $65be: $14
    ld d, [hl]                                    ; $65bf: $56
    ld b, [hl]                                    ; $65c0: $46
    inc b                                         ; $65c1: $04
    nop                                           ; $65c2: $00
    db $d3                                        ; $65c3: $d3

jr_0b3_65c4:
    ld sp, $4256                                  ; $65c4: $31 $56 $42
    nop                                           ; $65c7: $00
    jr nz, jr_0b3_65cc                            ; $65c8: $20 $02

    inc c                                         ; $65ca: $0c
    rra                                           ; $65cb: $1f

jr_0b3_65cc:
    ld [hl], h                                    ; $65cc: $74
    ld c, a                                       ; $65cd: $4f
    ld hl, $7fff                                  ; $65ce: $21 $ff $7f
    nop                                           ; $65d1: $00
    jr nz, @+$01                                  ; $65d2: $20 $ff

    ld a, a                                       ; $65d4: $7f
    ld c, a                                       ; $65d5: $4f
    ld hl, $7fff                                  ; $65d6: $21 $ff $7f
    nop                                           ; $65d9: $00
    jr nz, @+$30                                  ; $65da: $20 $2e

    ld hl, $7fff                                  ; $65dc: $21 $ff $7f
    db $d3                                        ; $65df: $d3
    ld sp, $0801                                  ; $65e0: $31 $01 $08
    rra                                           ; $65e3: $1f
    ld [hl], h                                    ; $65e4: $74
    rst $38                                       ; $65e5: $ff
    ld a, a                                       ; $65e6: $7f
    nop                                           ; $65e7: $00
    inc e                                         ; $65e8: $1c
    dec h                                         ; $65e9: $25
    inc b                                         ; $65ea: $04
    and [hl]                                      ; $65eb: $a6
    ld l, h                                       ; $65ec: $6c
    di                                            ; $65ed: $f3
    add hl, sp                                    ; $65ee: $39
    rst $38                                       ; $65ef: $ff
    ld a, a                                       ; $65f0: $7f
    dec b                                         ; $65f1: $05

jr_0b3_65f2:
    nop                                           ; $65f2: $00
    ld d, [hl]                                    ; $65f3: $56
    ld b, d                                       ; $65f4: $42
    ld c, e                                       ; $65f5: $4b
    inc h                                         ; $65f6: $24
    sbc b                                         ; $65f7: $98
    ld c, d                                       ; $65f8: $4a
    inc bc                                        ; $65f9: $03
    nop                                           ; $65fa: $00
    ld d, [hl]                                    ; $65fb: $56
    ld b, d                                       ; $65fc: $42
    rst $38                                       ; $65fd: $ff
    ld a, a                                       ; $65fe: $7f
    ld c, e                                       ; $65ff: $4b
    inc h                                         ; $6600: $24
    ld bc, $1f10                                  ; $6601: $01 $10 $1f

jr_0b3_6604:
    ld [hl], h                                    ; $6604: $74
    rst $38                                       ; $6605: $ff
    ld a, a                                       ; $6606: $7f
    ld c, a                                       ; $6607: $4f
    ld hl, $2000                                  ; $6608: $21 $00 $20
    rra                                           ; $660b: $1f
    ld [hl], h                                    ; $660c: $74
    rst $38                                       ; $660d: $ff
    ld a, a                                       ; $660e: $7f
    ld c, a                                       ; $660f: $4f
    ld hl, $2000                                  ; $6610: $21 $00 $20
    and [hl]                                      ; $6613: $a6
    ld l, h                                       ; $6614: $6c
    di                                            ; $6615: $f3
    add hl, sp                                    ; $6616: $39
    rst $38                                       ; $6617: $ff
    ld a, a                                       ; $6618: $7f
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    rra                                           ; $661b: $1f
    ld [hl], h                                    ; $661c: $74
    rst $38                                       ; $661d: $ff
    ld a, a                                       ; $661e: $7f
    nop                                           ; $661f: $00
    jr nz, jr_0b3_6627                            ; $6620: $20 $05

    nop                                           ; $6622: $00
    and [hl]                                      ; $6623: $a6
    ld l, h                                       ; $6624: $6c
    ld c, $1d                                     ; $6625: $0e $1d

jr_0b3_6627:
    dec [hl]                                      ; $6627: $35
    ld b, d                                       ; $6628: $42
    dec b                                         ; $6629: $05
    nop                                           ; $662a: $00
    or d                                          ; $662b: $b2
    jr c, @+$2d                                   ; $662c: $38 $2b

    jr nz, @-$2c                                  ; $662e: $20 $d2

    inc a                                         ; $6630: $3c
    ld b, $08                                     ; $6631: $06 $08
    and [hl]                                      ; $6633: $a6
    ld l, h                                       ; $6634: $6c
    db $d3                                        ; $6635: $d3
    inc a                                         ; $6636: $3c
    ld [hl], a                                    ; $6637: $77
    ld b, [hl]                                    ; $6638: $46
    ld bc, $1f10                                  ; $6639: $01 $10 $1f
    ld [hl], h                                    ; $663c: $74
    ld [hl], b                                    ; $663d: $70
    dec h                                         ; $663e: $25
    rst $38                                       ; $663f: $ff
    ld a, a                                       ; $6640: $7f
    nop                                           ; $6641: $00
    jr nz, jr_0b3_6663                            ; $6642: $20 $1f

    ld [hl], h                                    ; $6644: $74
    ld [hl], b                                    ; $6645: $70
    dec h                                         ; $6646: $25
    rst $38                                       ; $6647: $ff
    ld a, a                                       ; $6648: $7f
    nop                                           ; $6649: $00
    jr nz, jr_0b3_65f2                            ; $664a: $20 $a6

    ld l, h                                       ; $664c: $6c
    ld c, $1d                                     ; $664d: $0e $1d
    dec [hl]                                      ; $664f: $35
    ld b, d                                       ; $6650: $42
    inc bc                                        ; $6651: $03
    nop                                           ; $6652: $00
    rra                                           ; $6653: $1f
    ld [hl], h                                    ; $6654: $74
    rl h                                          ; $6655: $cb $14
    nop                                           ; $6657: $00
    jr nz, jr_0b3_6604                            ; $6658: $20 $aa

    db $10                                        ; $665a: $10
    and [hl]                                      ; $665b: $a6

jr_0b3_665c:
    ld l, h                                       ; $665c: $6c
    rst $38                                       ; $665d: $ff
    ld a, a                                       ; $665e: $7f
    call nc, $e33d                                ; $665f: $d4 $3d $e3
    nop                                           ; $6662: $00

jr_0b3_6663:
    reti                                          ; $6663: $d9


    ld e, l                                       ; $6664: $5d
    rst $38                                       ; $6665: $ff
    ld a, a                                       ; $6666: $7f
    dec b                                         ; $6667: $05
    daa                                           ; $6668: $27
    add l                                         ; $6669: $85
    nop                                           ; $666a: $00
    ld d, $46                                     ; $666b: $16 $46
    ld e, h                                       ; $666d: $5c
    ld l, d                                       ; $666e: $6a
    rst $38                                       ; $666f: $ff
    ld a, a                                       ; $6670: $7f
    ld bc, $1f00                                  ; $6671: $01 $00 $1f
    ld [hl], h                                    ; $6674: $74
    rst $38                                       ; $6675: $ff
    ld a, a                                       ; $6676: $7f
    ld [hl], b                                    ; $6677: $70
    add hl, hl                                    ; $6678: $29
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    jr nz, @+$01                                  ; $667c: $20 $ff

    ld a, a                                       ; $667e: $7f
    ld [hl], b                                    ; $667f: $70
    add hl, hl                                    ; $6680: $29
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    rst $38                                       ; $6683: $ff
    ld a, a                                       ; $6684: $7f
    nop                                           ; $6685: $00
    jr nz, jr_0b3_665c                            ; $6686: $20 $d4

    dec a                                         ; $6688: $3d
    ld [bc], a                                    ; $6689: $02
    nop                                           ; $668a: $00
    rst $38                                       ; $668b: $ff
    ld a, a                                       ; $668c: $7f
    xor d                                         ; $668d: $aa
    db $10                                        ; $668e: $10
    db $ec                                        ; $668f: $ec
    jr jr_0b3_6697                                ; $6690: $18 $05

    nop                                           ; $6692: $00
    rra                                           ; $6693: $1f
    ld [hl], h                                    ; $6694: $74
    scf                                           ; $6695: $37
    ld d, d                                       ; $6696: $52

jr_0b3_6697:
    ld c, a                                       ; $6697: $4f
    dec h                                         ; $6698: $25
    dec hl                                        ; $6699: $2b
    inc e                                         ; $669a: $1c
    sub [hl]                                      ; $669b: $96
    ld [bc], a                                    ; $669c: $02
    sbc $76                                       ; $669d: $de $76
    rst $38                                       ; $669f: $ff
    ld b, $45                                     ; $66a0: $06 $45
    nop                                           ; $66a2: $00
    ld d, l                                       ; $66a3: $55
    ld [de], a                                    ; $66a4: $12
    rst $18                                       ; $66a5: $df
    halt                                          ; $66a6: $76
    dec bc                                        ; $66a7: $0b
    inc e                                         ; $66a8: $1c
    inc bc                                        ; $66a9: $03
    nop                                           ; $66aa: $00
    ld e, $70                                     ; $66ab: $1e $70
    rst $38                                       ; $66ad: $ff
    ld a, a                                       ; $66ae: $7f
    ld c, a                                       ; $66af: $4f
    ld hl, $0000                                  ; $66b0: $21 $00 $00
    rst $38                                       ; $66b3: $ff
    ld a, a                                       ; $66b4: $7f
    nop                                           ; $66b5: $00
    jr nz, jr_0b3_6707                            ; $66b6: $20 $4f

    ld hl, $0001                                  ; $66b8: $21 $01 $00
    rra                                           ; $66bb: $1f
    ld [hl], h                                    ; $66bc: $74
    rst $38                                       ; $66bd: $ff
    ld a, a                                       ; $66be: $7f
    nop                                           ; $66bf: $00
    jr nz, jr_0b3_66c6                            ; $66c0: $20 $04

    nop                                           ; $66c2: $00
    add h                                         ; $66c3: $84
    ld b, h                                       ; $66c4: $44
    xor d                                         ; $66c5: $aa

jr_0b3_66c6:
    db $10                                        ; $66c6: $10
    and [hl]                                      ; $66c7: $a6
    ld l, h                                       ; $66c8: $6c
    dec b                                         ; $66c9: $05
    nop                                           ; $66ca: $00
    or e                                          ; $66cb: $b3
    dec [hl]                                      ; $66cc: $35
    rra                                           ; $66cd: $1f
    ld [hl], h                                    ; $66ce: $74
    rst $38                                       ; $66cf: $ff
    ld a, a                                       ; $66d0: $7f
    dec bc                                        ; $66d1: $0b
    inc e                                         ; $66d2: $1c
    sub a                                         ; $66d3: $97
    ld c, d                                       ; $66d4: $4a
    ld e, e                                       ; $66d5: $5b
    jr z, @+$01                                   ; $66d6: $28 $ff

    ld a, d                                       ; $66d8: $7a
    ld l, b                                       ; $66d9: $68
    ld [$7aff], sp                                ; $66da: $08 $ff $7a
    rst $38                                       ; $66dd: $ff
    inc bc                                        ; $66de: $03
    db $d3                                        ; $66df: $d3
    dec l                                         ; $66e0: $2d
    dec c                                         ; $66e1: $0d
    dec e                                         ; $66e2: $1d
    rra                                           ; $66e3: $1f
    ld [hl], h                                    ; $66e4: $74
    and l                                         ; $66e5: $a5
    ld l, b                                       ; $66e6: $68
    rst $38                                       ; $66e7: $ff
    ld a, a                                       ; $66e8: $7f
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    rst $38                                       ; $66eb: $ff
    ld a, a                                       ; $66ec: $7f
    and [hl]                                      ; $66ed: $a6
    ld l, b                                       ; $66ee: $68
    nop                                           ; $66ef: $00
    jr nz, jr_0b3_66f6                            ; $66f0: $20 $04

    nop                                           ; $66f2: $00
    rra                                           ; $66f3: $1f
    ld [hl], h                                    ; $66f4: $74
    rst $38                                       ; $66f5: $ff

jr_0b3_66f6:
    ld a, a                                       ; $66f6: $7f
    nop                                           ; $66f7: $00
    jr nz, @+$07                                  ; $66f8: $20 $05

    nop                                           ; $66fa: $00
    xor d                                         ; $66fb: $aa
    db $10                                        ; $66fc: $10
    ld h, a                                       ; $66fd: $67
    ld [$18ec], sp                                ; $66fe: $08 $ec $18
    ld l, b                                       ; $6701: $68
    ld [$741f], sp                                ; $6702: $08 $1f $74
    dec [hl]                                      ; $6705: $35
    ld b, d                                       ; $6706: $42

jr_0b3_6707:
    rst $38                                       ; $6707: $ff
    ld a, a                                       ; $6708: $7f
    jr z, jr_0b3_671b                             ; $6709: $28 $10

    cp $72                                        ; $670b: $fe $72
    ld e, e                                       ; $670d: $5b
    jr z, @+$01                                   ; $670e: $28 $ff

    inc bc                                        ; $6710: $03
    add a                                         ; $6711: $87
    ld [$3e15], sp                                ; $6712: $08 $15 $3e
    rst $38                                       ; $6715: $ff
    inc bc                                        ; $6716: $03
    rra                                           ; $6717: $1f
    ld [hl], h                                    ; $6718: $74
    dec h                                         ; $6719: $25
    inc b                                         ; $671a: $04

jr_0b3_671b:
    and l                                         ; $671b: $a5
    ld h, h                                       ; $671c: $64
    rst $38                                       ; $671d: $ff
    ld a, a                                       ; $671e: $7f
    or c                                          ; $671f: $b1
    dec l                                         ; $6720: $2d
    inc bc                                        ; $6721: $03
    nop                                           ; $6722: $00
    rst $38                                       ; $6723: $ff
    ld a, a                                       ; $6724: $7f
    and l                                         ; $6725: $a5
    ld h, h                                       ; $6726: $64

jr_0b3_6727:
    nop                                           ; $6727: $00
    jr nz, jr_0b3_672b                            ; $6728: $20 $01

    nop                                           ; $672a: $00

jr_0b3_672b:
    rra                                           ; $672b: $1f
    ld [hl], h                                    ; $672c: $74
    rst $38                                       ; $672d: $ff
    ld a, a                                       ; $672e: $7f
    and l                                         ; $672f: $a5
    ld h, b                                       ; $6730: $60
    dec b                                         ; $6731: $05
    nop                                           ; $6732: $00
    xor d                                         ; $6733: $aa
    db $10                                        ; $6734: $10
    ld c, [hl]                                    ; $6735: $4e
    ld hl, $0887                                  ; $6736: $21 $87 $08
    add $00                                       ; $6739: $c6 $00
    rra                                           ; $673b: $1f

jr_0b3_673c:
    ld [hl], h                                    ; $673c: $74
    rst $38                                       ; $673d: $ff
    ld a, a                                       ; $673e: $7f
    di                                            ; $673f: $f3
    add hl, sp                                    ; $6740: $39
    call nz, Call_000_3f00                        ; $6741: $c4 $00 $3f
    ld a, e                                       ; $6744: $7b
    rst $38                                       ; $6745: $ff
    inc bc                                        ; $6746: $03
    dec bc                                        ; $6747: $0b
    inc e                                         ; $6748: $1c
    add a                                         ; $6749: $87
    ld [$741f], sp                                ; $674a: $08 $1f $74
    rst $38                                       ; $674d: $ff
    inc bc                                        ; $674e: $03
    halt                                          ; $674f: $76
    ld c, d                                       ; $6750: $4a
    dec b                                         ; $6751: $05
    nop                                           ; $6752: $00
    and l                                         ; $6753: $a5
    ld h, b                                       ; $6754: $60
    di                                            ; $6755: $f3
    add hl, sp                                    ; $6756: $39
    inc d                                         ; $6757: $14
    ld a, [hl-]                                   ; $6758: $3a
    ld [bc], a                                    ; $6759: $02
    nop                                           ; $675a: $00
    rst $38                                       ; $675b: $ff
    ld a, a                                       ; $675c: $7f
    nop                                           ; $675d: $00
    jr nz, @-$54                                  ; $675e: $20 $aa

    stop                                          ; $6760: $10 $00
    ld [$741f], sp                                ; $6762: $08 $1f $74
    and h                                         ; $6765: $a4
    ld e, h                                       ; $6766: $5c
    rst $38                                       ; $6767: $ff
    ld a, a                                       ; $6768: $7f
    adc c                                         ; $6769: $89
    inc c                                         ; $676a: $0c
    rra                                           ; $676b: $1f
    ld [hl], h                                    ; $676c: $74

jr_0b3_676d:
    rst $38                                       ; $676d: $ff
    ld a, a                                       ; $676e: $7f
    ld l, [hl]                                    ; $676f: $6e
    dec h                                         ; $6770: $25
    adc [hl]                                      ; $6771: $8e
    add hl, hl                                    ; $6772: $29
    rra                                           ; $6773: $1f
    ld [hl], h                                    ; $6774: $74
    rst $38                                       ; $6775: $ff
    inc bc                                        ; $6776: $03
    rst $38                                       ; $6777: $ff
    ld a, a                                       ; $6778: $7f
    add a                                         ; $6779: $87
    inc c                                         ; $677a: $0c
    cp $03                                        ; $677b: $fe $03
    ccf                                           ; $677d: $3f
    ld a, e                                       ; $677e: $7b
    ldh a, [rSC]                                  ; $677f: $f0 $02
    jp nz, $1f00                                  ; $6781: $c2 $00 $1f

    ld [hl], h                                    ; $6784: $74
    rst $38                                       ; $6785: $ff
    inc bc                                        ; $6786: $03
    halt                                          ; $6787: $76
    ld b, [hl]                                    ; $6788: $46
    dec b                                         ; $6789: $05
    nop                                           ; $678a: $00
    ld l, a                                       ; $678b: $6f
    add hl, hl                                    ; $678c: $29
    db $eb                                        ; $678d: $eb
    inc d                                         ; $678e: $14
    jp nc, $2435                                  ; $678f: $d2 $35 $24

    inc b                                         ; $6792: $04
    rst $38                                       ; $6793: $ff
    ld a, a                                       ; $6794: $7f
    nop                                           ; $6795: $00
    jr nz, jr_0b3_673c                            ; $6796: $20 $a4

    ld e, b                                       ; $6798: $58
    ld [bc], a                                    ; $6799: $02
    nop                                           ; $679a: $00
    rst $38                                       ; $679b: $ff
    ld a, a                                       ; $679c: $7f
    and e                                         ; $679d: $a3
    ld d, h                                       ; $679e: $54
    nop                                           ; $679f: $00
    jr nz, jr_0b3_6727                            ; $67a0: $20 $85

    inc b                                         ; $67a2: $04
    rra                                           ; $67a3: $1f
    ld [hl], h                                    ; $67a4: $74
    rst $38                                       ; $67a5: $ff
    ld a, a                                       ; $67a6: $7f
    inc l                                         ; $67a7: $2c
    dec l                                         ; $67a8: $2d
    nop                                           ; $67a9: $00
    ld bc, $741f                                  ; $67aa: $01 $1f $74
    rst $38                                       ; $67ad: $ff
    inc bc                                        ; $67ae: $03
    jr nz, @+$03                                  ; $67af: $20 $01

    ld bc, $ff00                                  ; $67b1: $01 $00 $ff
    inc bc                                        ; $67b4: $03
    add h                                         ; $67b5: $84
    ld d, $e1                                     ; $67b6: $16 $e1
    nop                                           ; $67b8: $00
    jr nz, jr_0b3_67bc                            ; $67b9: $20 $01

    rra                                           ; $67bb: $1f

jr_0b3_67bc:
    ld [hl], h                                    ; $67bc: $74
    rst $38                                       ; $67bd: $ff
    inc bc                                        ; $67be: $03
    pop de                                        ; $67bf: $d1
    ld h, e                                       ; $67c0: $63
    nop                                           ; $67c1: $00
    ld bc, $190c                                  ; $67c2: $01 $0c $19
    dec b                                         ; $67c5: $05
    nop                                           ; $67c6: $00
    or c                                          ; $67c7: $b1
    ld sp, $1c00                                  ; $67c8: $31 $00 $1c
    rra                                           ; $67cb: $1f
    ld [hl], h                                    ; $67cc: $74
    jp $ff50                                      ; $67cd: $c3 $50 $ff


    ld a, a                                       ; $67d0: $7f
    nop                                           ; $67d1: $00

jr_0b3_67d2:
    nop                                           ; $67d2: $00
    rst $38                                       ; $67d3: $ff
    ld a, a                                       ; $67d4: $7f
    nop                                           ; $67d5: $00
    jr nz, jr_0b3_67dd                            ; $67d6: $20 $05

    nop                                           ; $67d8: $00
    ld b, h                                       ; $67d9: $44
    nop                                           ; $67da: $00
    inc a                                         ; $67db: $3c
    ld l, b                                       ; $67dc: $68

jr_0b3_67dd:
    rst $38                                       ; $67dd: $ff
    ld a, a                                       ; $67de: $7f
    ld l, a                                       ; $67df: $6f
    add hl, hl                                    ; $67e0: $29
    nop                                           ; $67e1: $00
    ld bc, $5fef                                  ; $67e2: $01 $ef $5f
    rra                                           ; $67e5: $1f
    ld [hl], h                                    ; $67e6: $74
    dec c                                         ; $67e7: $0d
    jr nz, jr_0b3_676d                            ; $67e8: $20 $83

    nop                                           ; $67ea: $00
    ldh a, [$5f]                                  ; $67eb: $f0 $5f
    rst $38                                       ; $67ed: $ff
    inc bc                                        ; $67ee: $03
    ld l, h                                       ; $67ef: $6c
    ld d, $48                                     ; $67f0: $16 $48
    inc d                                         ; $67f2: $14
    rst $28                                       ; $67f3: $ef
    ld e, a                                       ; $67f4: $5f
    sbc [hl]                                      ; $67f5: $9e
    ld [hl], b                                    ; $67f6: $70
    rst $38                                       ; $67f7: $ff
    ld a, a                                       ; $67f8: $7f
    nop                                           ; $67f9: $00
    ld bc, $5ff0                                  ; $67fa: $01 $f0 $5f
    jp Jump_000_0d4c                              ; $67fd: $c3 $4c $0d


    jr nz, jr_0b3_6802                            ; $6800: $20 $00

jr_0b3_6802:
    inc e                                         ; $6802: $1c
    rra                                           ; $6803: $1f
    ld [hl], h                                    ; $6804: $74
    rst $38                                       ; $6805: $ff
    ld a, a                                       ; $6806: $7f
    jp Jump_000_034c                              ; $6807: $c3 $4c $03


jr_0b3_680a:
    nop                                           ; $680a: $00
    rst $38                                       ; $680b: $ff
    ld a, a                                       ; $680c: $7f
    nop                                           ; $680d: $00
    jr nz, jr_0b3_67d2                            ; $680e: $20 $c2

    ld b, h                                       ; $6810: $44
    ld h, l                                       ; $6811: $65
    inc b                                         ; $6812: $04
    rra                                           ; $6813: $1f
    ld [hl], h                                    ; $6814: $74
    add $40                                       ; $6815: $c6 $40
    rst $38                                       ; $6817: $ff
    ld a, a                                       ; $6818: $7f
    dec c                                         ; $6819: $0d
    jr nz, @+$1f                                  ; $681a: $20 $1d

jr_0b3_681c:
    ld l, c                                       ; $681c: $69
    ldh a, [$5f]                                  ; $681d: $f0 $5f
    rst $38                                       ; $681f: $ff
    ld a, a                                       ; $6820: $7f
    ld c, c                                       ; $6821: $49

jr_0b3_6822:
    db $10                                        ; $6822: $10
    ldh a, [$5f]                                  ; $6823: $f0 $5f
    rst $38                                       ; $6825: $ff
    inc bc                                        ; $6826: $03
    ld e, d                                       ; $6827: $5a
    ld h, l                                       ; $6828: $65
    dec c                                         ; $6829: $0d
    jr nz, jr_0b3_681c                            ; $682a: $20 $f0

    ld e, a                                       ; $682c: $5f
    rra                                           ; $682d: $1f
    ld [hl], h                                    ; $682e: $74
    cp h                                          ; $682f: $bc
    ld l, c                                       ; $6830: $69
    nop                                           ; $6831: $00
    ld bc, $6cbe                                  ; $6832: $01 $be $6c
    ld sp, hl                                     ; $6835: $f9
    ld [hl], e                                    ; $6836: $73
    ld c, c                                       ; $6837: $49
    jr nc, jr_0b3_683a                            ; $6838: $30 $00

jr_0b3_683a:
    inc e                                         ; $683a: $1c
    rra                                           ; $683b: $1f
    ld [hl], h                                    ; $683c: $74
    rst $38                                       ; $683d: $ff
    ld a, a                                       ; $683e: $7f
    adc d                                         ; $683f: $8a
    ld d, h                                       ; $6840: $54
    inc bc                                        ; $6841: $03
    nop                                           ; $6842: $00
    rst $38                                       ; $6843: $ff
    ld a, a                                       ; $6844: $7f
    nop                                           ; $6845: $00
    jr nz, jr_0b3_680a                            ; $6846: $20 $c2

    ld b, h                                       ; $6848: $44
    nop                                           ; $6849: $00
    ld bc, $5ff0                                  ; $684a: $01 $f0 $5f
    jp nz, Jump_000_0540                          ; $684d: $c2 $40 $05

    nop                                           ; $6850: $00
    ld c, $28                                     ; $6851: $0e $28
    db $fd                                        ; $6853: $fd

jr_0b3_6854:
    ld l, b                                       ; $6854: $68
    sbc a                                         ; $6855: $9f
    ld a, a                                       ; $6856: $7f
    sub e                                         ; $6857: $93
    ld c, c                                       ; $6858: $49
    add hl, hl                                    ; $6859: $29
    inc d                                         ; $685a: $14
    rst $38                                       ; $685b: $ff

jr_0b3_685c:
    inc bc                                        ; $685c: $03
    db $eb                                        ; $685d: $eb
    ld e, e                                       ; $685e: $5b
    dec a                                         ; $685f: $3d
    ld [hl], d                                    ; $6860: $72
    ld c, e                                       ; $6861: $4b
    jr nz, jr_0b3_6854                            ; $6862: $20 $f0

    ld e, a                                       ; $6864: $5f
    ld e, [hl]                                    ; $6865: $5e
    ld l, h                                       ; $6866: $6c
    dec a                                         ; $6867: $3d
    halt                                          ; $6868: $76
    add a                                         ; $6869: $87
    jr nc, jr_0b3_685c                            ; $686a: $30 $f0

    ld e, a                                       ; $686c: $5f
    ld a, $70                                     ; $686d: $3e $70
    sbc a                                         ; $686f: $9f
    ld a, a                                       ; $6870: $7f

jr_0b3_6871:
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    rst $38                                       ; $6873: $ff
    ld a, a                                       ; $6874: $7f
    nop                                           ; $6875: $00
    jr nz, @-$3d                                  ; $6876: $20 $c1

    inc a                                         ; $6878: $3c
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    rst $38                                       ; $687b: $ff
    ld a, a                                       ; $687c: $7f
    nop                                           ; $687d: $00
    jr nz, jr_0b3_6885                            ; $687e: $20 $05

    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    ld bc, $5ff0                                  ; $6882: $01 $f0 $5f

jr_0b3_6885:
    dec b                                         ; $6885: $05
    nop                                           ; $6886: $00
    pop bc                                        ; $6887: $c1
    inc a                                         ; $6888: $3c
    dec c                                         ; $6889: $0d
    jr nz, jr_0b3_6822                            ; $688a: $20 $96

    ld l, e                                       ; $688c: $6b
    rra                                           ; $688d: $1f
    ld [hl], h                                    ; $688e: $74
    ld [hl], e                                    ; $688f: $73
    ld b, l                                       ; $6890: $45
    dec h                                         ; $6891: $25
    inc e                                         ; $6892: $1c
    db $d3                                        ; $6893: $d3
    ld d, b                                       ; $6894: $50
    ccf                                           ; $6895: $3f
    ld a, a                                       ; $6896: $7f
    rra                                           ; $6897: $1f
    ld [hl], h                                    ; $6898: $74
    ld a, [bc]                                    ; $6899: $0a
    inc e                                         ; $689a: $1c
    rra                                           ; $689b: $1f
    ld [hl], h                                    ; $689c: $74
    ld a, [hl]                                    ; $689d: $7e
    halt                                          ; $689e: $76
    rst $38                                       ; $689f: $ff
    ld a, a                                       ; $68a0: $7f
    nop                                           ; $68a1: $00
    ld bc, $741f                                  ; $68a2: $01 $1f $74
    rst $30                                       ; $68a5: $f7
    ld l, a                                       ; $68a6: $6f
    pop bc                                        ; $68a7: $c1
    inc [hl]                                      ; $68a8: $34
    ld bc, $ff00                                  ; $68a9: $01 $00 $ff
    ld a, a                                       ; $68ac: $7f
    nop                                           ; $68ad: $00
    jr nz, jr_0b3_6871                            ; $68ae: $20 $c1

    jr c, jr_0b3_68b2                             ; $68b0: $38 $00

jr_0b3_68b2:
    nop                                           ; $68b2: $00
    rst $38                                       ; $68b3: $ff
    ld a, a                                       ; $68b4: $7f

jr_0b3_68b5:
    nop                                           ; $68b5: $00
    jr nz, jr_0b3_68bd                            ; $68b6: $20 $05

    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    ld bc, $5ff0                                  ; $68ba: $01 $f0 $5f

jr_0b3_68bd:
    dec b                                         ; $68bd: $05
    nop                                           ; $68be: $00
    dec b                                         ; $68bf: $05
    nop                                           ; $68c0: $00
    rst $20                                       ; $68c1: $e7
    inc b                                         ; $68c2: $04
    ld e, l                                       ; $68c3: $5d
    ld [hl], b                                    ; $68c4: $70
    ld a, d                                       ; $68c5: $7a
    ld [hl], a                                    ; $68c6: $77
    ld d, a                                       ; $68c7: $57
    inc bc                                        ; $68c8: $03
    rst $28                                       ; $68c9: $ef
    ld b, h                                       ; $68ca: $44
    ld e, [hl]                                    ; $68cb: $5e
    ld a, e                                       ; $68cc: $7b
    rst $18                                       ; $68cd: $df
    ld [hl], h                                    ; $68ce: $74
    or $5d                                        ; $68cf: $f6 $5d
    rlca                                          ; $68d1: $07
    jr nz, @+$21                                  ; $68d2: $20 $1f

    ld [hl], h                                    ; $68d4: $74
    rst $38                                       ; $68d5: $ff
    inc bc                                        ; $68d6: $03
    ld e, a                                       ; $68d7: $5f
    ld a, e                                       ; $68d8: $7b
    nop                                           ; $68d9: $00
    ld bc, $5bee                                  ; $68da: $01 $ee $5b
    jr nc, jr_0b3_68e1                            ; $68dd: $30 $02

    dec b                                         ; $68df: $05

jr_0b3_68e0:
    nop                                           ; $68e0: $00

jr_0b3_68e1:
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    rst $38                                       ; $68e3: $ff
    ld a, a                                       ; $68e4: $7f
    nop                                           ; $68e5: $00
    jr nz, jr_0b3_68ed                            ; $68e6: $20 $05

    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    rst $38                                       ; $68eb: $ff
    ld a, a                                       ; $68ec: $7f

jr_0b3_68ed:
    nop                                           ; $68ed: $00
    jr nz, jr_0b3_6947                            ; $68ee: $20 $57

    inc bc                                        ; $68f0: $03
    ret nz                                        ; $68f1: $c0

    jr nc, jr_0b3_68e0                            ; $68f2: $30 $ec

    ld e, e                                       ; $68f4: $5b
    nop                                           ; $68f5: $00
    ld bc, $5ff0                                  ; $68f6: $01 $f0 $5f
    dec b                                         ; $68f9: $05
    inc e                                         ; $68fa: $1c
    dec de                                        ; $68fb: $1b
    ld l, d                                       ; $68fc: $6a
    rst $38                                       ; $68fd: $ff
    inc bc                                        ; $68fe: $03
    adc l                                         ; $68ff: $8d
    dec c                                         ; $6900: $0d
    ld d, h                                       ; $6901: $54
    ld d, l                                       ; $6902: $55
    ld e, $7b                                     ; $6903: $1e $7b
    ld e, e                                       ; $6905: $5b
    ld l, [hl]                                    ; $6906: $6e
    rst $38                                       ; $6907: $ff
    ld a, a                                       ; $6908: $7f
    rst $38                                       ; $6909: $ff
    inc bc                                        ; $690a: $03
    add hl, bc                                    ; $690b: $09
    inc e                                         ; $690c: $1c
    sbc l                                         ; $690d: $9d
    ld l, h                                       ; $690e: $6c
    ccf                                           ; $690f: $3f
    ld a, e                                       ; $6910: $7b
    ld h, c                                       ; $6911: $61
    nop                                           ; $6912: $00
    rst $28                                       ; $6913: $ef
    ld e, a                                       ; $6914: $5f
    rst $38                                       ; $6915: $ff
    inc bc                                        ; $6916: $03
    ld l, e                                       ; $6917: $6b
    ld bc, $0000                                  ; $6918: $01 $00 $00
    rst $38                                       ; $691b: $ff
    ld a, a                                       ; $691c: $7f
    nop                                           ; $691d: $00
    jr nz, jr_0b3_698b                            ; $691e: $20 $6b

    ld bc, $0000                                  ; $6920: $01 $00 $00
    rst $38                                       ; $6923: $ff
    ld a, a                                       ; $6924: $7f
    nop                                           ; $6925: $00
    jr nz, jr_0b3_68b5                            ; $6926: $20 $8d

    dec c                                         ; $6928: $0d
    nop                                           ; $6929: $00
    ld bc, $5bea                                  ; $692a: $01 $ea $5b
    rst $28                                       ; $692d: $ef
    ld e, e                                       ; $692e: $5b
    rst $28                                       ; $692f: $ef
    ld l, a                                       ; $6930: $6f
    ld l, c                                       ; $6931: $69
    inc d                                         ; $6932: $14
    rst $38                                       ; $6933: $ff
    ld a, [hl]                                    ; $6934: $7e
    ld [hl], d                                    ; $6935: $72
    ld b, c                                       ; $6936: $41
    rst $38                                       ; $6937: $ff
    inc bc                                        ; $6938: $03
    sbc b                                         ; $6939: $98
    ld h, [hl]                                    ; $693a: $66
    rst $18                                       ; $693b: $df
    ld a, a                                       ; $693c: $7f
    dec de                                        ; $693d: $1b
    ld l, a                                       ; $693e: $6f
    rst $38                                       ; $693f: $ff
    ld a, [hl]                                    ; $6940: $7e
    add hl, hl                                    ; $6941: $29
    jr @+$01                                      ; $6942: $18 $ff

    inc bc                                        ; $6944: $03
    ld e, b                                       ; $6945: $58
    ld h, [hl]                                    ; $6946: $66

jr_0b3_6947:
    dec l                                         ; $6947: $2d
    ld b, h                                       ; $6948: $44
    add b                                         ; $6949: $80
    inc b                                         ; $694a: $04
    rst $38                                       ; $694b: $ff
    inc bc                                        ; $694c: $03
    ld a, [c]                                     ; $694d: $f2
    ld h, e                                       ; $694e: $63
    ld l, e                                       ; $694f: $6b
    ld bc, $0000                                  ; $6950: $01 $00 $00
    rst $38                                       ; $6953: $ff
    ld a, a                                       ; $6954: $7f
    nop                                           ; $6955: $00
    jr nz, jr_0b3_69c3                            ; $6956: $20 $6b

    ld bc, $0000                                  ; $6958: $01 $00 $00
    rst $38                                       ; $695b: $ff
    ld a, a                                       ; $695c: $7f
    nop                                           ; $695d: $00
    jr nz, @+$01                                  ; $695e: $20 $ff

    inc bc                                        ; $6960: $03
    nop                                           ; $6961: $00
    ld bc, $57ef                                  ; $6962: $01 $ef $57
    ldh a, [$5f]                                  ; $6965: $f0 $5f
    ldh a, [$63]                                  ; $6967: $f0 $63
    rlca                                          ; $6969: $07
    inc e                                         ; $696a: $1c
    rst $38                                       ; $696b: $ff
    inc bc                                        ; $696c: $03
    jr jr_0b3_69d0                                ; $696d: $18 $61

    ld b, [hl]                                    ; $696f: $46
    ld bc, $4d12                                  ; $6970: $01 $12 $4d
    cp [hl]                                       ; $6973: $be
    ld a, e                                       ; $6974: $7b
    ld e, c                                       ; $6975: $59
    ld l, d                                       ; $6976: $6a
    rst $18                                       ; $6977: $df
    ld [hl], h                                    ; $6978: $74
    ld [bc], a                                    ; $6979: $02
    inc c                                         ; $697a: $0c
    cp $03                                        ; $697b: $fe $03
    ld c, l                                       ; $697d: $4d
    ld b, h                                       ; $697e: $44
    ld l, e                                       ; $697f: $6b
    ld bc, $00c0                                  ; $6980: $01 $c0 $00
    ldh a, [$5f]                                  ; $6983: $f0 $5f
    rst $38                                       ; $6985: $ff
    ld a, a                                       ; $6986: $7f
    ld l, e                                       ; $6987: $6b
    ld bc, $0000                                  ; $6988: $01 $00 $00

jr_0b3_698b:
    nop                                           ; $698b: $00
    jr nz, @+$01                                  ; $698c: $20 $ff

    ld a, a                                       ; $698e: $7f
    ld l, e                                       ; $698f: $6b
    ld bc, $2000                                  ; $6990: $01 $00 $20
    dec a                                         ; $6993: $3d
    ld [hl-], a                                   ; $6994: $32
    jr jr_0b3_69f8                                ; $6995: $18 $61

    ld b, [hl]                                    ; $6997: $46
    ld bc, $0100                                  ; $6998: $01 $00 $01
    ld [de], a                                    ; $699b: $12
    dec c                                         ; $699c: $0d
    dec a                                         ; $699d: $3d
    ld [hl-], a                                   ; $699e: $32
    ld b, [hl]                                    ; $699f: $46
    ld bc, $0d0b                                  ; $69a0: $01 $0b $0d
    rra                                           ; $69a3: $1f
    ld [hl], h                                    ; $69a4: $74
    dec a                                         ; $69a5: $3d
    ld [hl-], a                                   ; $69a6: $32
    rst $38                                       ; $69a7: $ff
    ld a, a                                       ; $69a8: $7f
    dec bc                                        ; $69a9: $0b
    jr c, @+$01                                   ; $69aa: $38 $ff

    ld a, a                                       ; $69ac: $7f
    jr jr_0b3_6a14                                ; $69ad: $18 $65

    sub b                                         ; $69af: $90
    ld c, b                                       ; $69b0: $48
    inc b                                         ; $69b1: $04
    jr jr_0b3_69f1                                ; $69b2: $18 $3d

    ld [hl-], a                                   ; $69b4: $32
    rra                                           ; $69b5: $1f
    ld [hl], h                                    ; $69b6: $74
    inc c                                         ; $69b7: $0c
    ld b, b                                       ; $69b8: $40
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    rst $38                                       ; $69bb: $ff
    ld a, a                                       ; $69bc: $7f
    ld [de], a                                    ; $69bd: $12
    dec c                                         ; $69be: $0d
    ldh [rDIV], a                                 ; $69bf: $e0 $04
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00

jr_0b3_69c3:
    dec a                                         ; $69c3: $3d
    ld [hl-], a                                   ; $69c4: $32
    nop                                           ; $69c5: $00
    jr nz, jr_0b3_69c8                            ; $69c6: $20 $00

jr_0b3_69c8:
    stop                                          ; $69c8: $10 $00
    jr nz, jr_0b3_69cd                            ; $69ca: $20 $01

    nop                                           ; $69cc: $00

jr_0b3_69cd:
    dec a                                         ; $69cd: $3d
    ld [hl-], a                                   ; $69ce: $32
    rst $38                                       ; $69cf: $ff

jr_0b3_69d0:
    ld a, a                                       ; $69d0: $7f
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    rra                                           ; $69d3: $1f
    ld [hl], h                                    ; $69d4: $74
    ld [de], a                                    ; $69d5: $12
    dec c                                         ; $69d6: $0d
    rst $38                                       ; $69d7: $ff
    ld a, a                                       ; $69d8: $7f
    xor l                                         ; $69d9: $ad
    db $10                                        ; $69da: $10
    rst $38                                       ; $69db: $ff
    ld a, a                                       ; $69dc: $7f
    rra                                           ; $69dd: $1f
    ld [hl], h                                    ; $69de: $74
    dec a                                         ; $69df: $3d
    ld [hl-], a                                   ; $69e0: $32
    inc b                                         ; $69e1: $04
    jr jr_0b3_6a21                                ; $69e2: $18 $3d

    ld [hl-], a                                   ; $69e4: $32
    add hl, bc                                    ; $69e5: $09
    jr c, jr_0b3_69f4                             ; $69e6: $38 $0c

    ld c, b                                       ; $69e8: $48
    ld [de], a                                    ; $69e9: $12
    dec c                                         ; $69ea: $0d
    rra                                           ; $69eb: $1f
    ld [hl], h                                    ; $69ec: $74
    dec a                                         ; $69ed: $3d
    ld [hl-], a                                   ; $69ee: $32
    rst $38                                       ; $69ef: $ff
    ld a, a                                       ; $69f0: $7f

jr_0b3_69f1:
    ld [de], a                                    ; $69f1: $12
    dec c                                         ; $69f2: $0d
    dec a                                         ; $69f3: $3d

jr_0b3_69f4:
    ld [hl-], a                                   ; $69f4: $32
    dec a                                         ; $69f5: $3d
    ld [hl-], a                                   ; $69f6: $32
    rst $38                                       ; $69f7: $ff

jr_0b3_69f8:
    ld a, a                                       ; $69f8: $7f
    nop                                           ; $69f9: $00
    db $10                                        ; $69fa: $10
    dec a                                         ; $69fb: $3d
    ld [hl-], a                                   ; $69fc: $32
    nop                                           ; $69fd: $00
    jr nz, jr_0b3_6a00                            ; $69fe: $20 $00

jr_0b3_6a00:
    jr jr_0b3_6a02                                ; $6a00: $18 $00

jr_0b3_6a02:
    jr nz, @+$01                                  ; $6a02: $20 $ff

    ld a, a                                       ; $6a04: $7f
    rra                                           ; $6a05: $1f
    ld [hl], h                                    ; $6a06: $74
    dec a                                         ; $6a07: $3d
    ld [hl-], a                                   ; $6a08: $32
    ld [bc], a                                    ; $6a09: $02
    nop                                           ; $6a0a: $00
    rra                                           ; $6a0b: $1f
    ld [hl], h                                    ; $6a0c: $74
    rst $38                                       ; $6a0d: $ff
    ld a, a                                       ; $6a0e: $7f
    ld [de], a                                    ; $6a0f: $12
    dec c                                         ; $6a10: $0d
    ld [de], a                                    ; $6a11: $12
    dec c                                         ; $6a12: $0d
    dec a                                         ; $6a13: $3d

jr_0b3_6a14:
    ld [hl-], a                                   ; $6a14: $32
    rst $38                                       ; $6a15: $ff
    ld a, a                                       ; $6a16: $7f
    ld [de], a                                    ; $6a17: $12
    dec c                                         ; $6a18: $0d
    ld [de], a                                    ; $6a19: $12
    dec c                                         ; $6a1a: $0d
    dec a                                         ; $6a1b: $3d
    ld [hl-], a                                   ; $6a1c: $32
    nop                                           ; $6a1d: $00
    jr nz, jr_0b3_6a22                            ; $6a1e: $20 $02

    nop                                           ; $6a20: $00

jr_0b3_6a21:
    ld c, b                                       ; $6a21: $48

jr_0b3_6a22:
    nop                                           ; $6a22: $00
    rra                                           ; $6a23: $1f
    ld [hl], h                                    ; $6a24: $74
    rst $38                                       ; $6a25: $ff
    ld a, a                                       ; $6a26: $7f
    di                                            ; $6a27: $f3
    stop                                          ; $6a28: $10 $00
    nop                                           ; $6a2a: $00
    ld [de], a                                    ; $6a2b: $12
    dec c                                         ; $6a2c: $0d
    ld c, b                                       ; $6a2d: $48
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    jr nz, jr_0b3_6a32                            ; $6a30: $20 $00

jr_0b3_6a32:
    jr nz, jr_0b3_6a46                            ; $6a32: $20 $12

    dec c                                         ; $6a34: $0d
    ld c, b                                       ; $6a35: $48
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    jr nz, jr_0b3_6a3a                            ; $6a38: $20 $00

jr_0b3_6a3a:
    jr nz, jr_0b3_6a5b                            ; $6a3a: $20 $1f

    ld [hl], h                                    ; $6a3c: $74
    rst $38                                       ; $6a3d: $ff
    ld a, a                                       ; $6a3e: $7f
    ld [de], a                                    ; $6a3f: $12
    dec c                                         ; $6a40: $0d
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    rra                                           ; $6a43: $1f
    ld [hl], h                                    ; $6a44: $74
    rst $38                                       ; $6a45: $ff

jr_0b3_6a46:
    ld a, a                                       ; $6a46: $7f
    ld c, b                                       ; $6a47: $48
    nop                                           ; $6a48: $00
    ld c, b                                       ; $6a49: $48
    nop                                           ; $6a4a: $00
    ld [de], a                                    ; $6a4b: $12
    dec c                                         ; $6a4c: $0d
    rst $38                                       ; $6a4d: $ff
    ld a, a                                       ; $6a4e: $7f
    ld c, b                                       ; $6a4f: $48
    nop                                           ; $6a50: $00
    ld c, b                                       ; $6a51: $48
    nop                                           ; $6a52: $00
    ld [de], a                                    ; $6a53: $12
    dec c                                         ; $6a54: $0d
    ld c, b                                       ; $6a55: $48
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    jr nz, jr_0b3_6aa2                            ; $6a58: $20 $48

    nop                                           ; $6a5a: $00

jr_0b3_6a5b:
    rra                                           ; $6a5b: $1f
    ld [hl], h                                    ; $6a5c: $74
    rst $38                                       ; $6a5d: $ff
    ld a, a                                       ; $6a5e: $7f
    inc de                                        ; $6a5f: $13
    inc [hl]                                      ; $6a60: $34
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    ld c, b                                       ; $6a63: $48
    nop                                           ; $6a64: $00
    nop                                           ; $6a65: $00
    jr nz, jr_0b3_6a6a                            ; $6a66: $20 $02

    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00

jr_0b3_6a6a:
    jr nz, jr_0b3_6ab4                            ; $6a6a: $20 $48

    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    jr nz, jr_0b3_6a72                            ; $6a6e: $20 $02

    nop                                           ; $6a70: $00
    nop                                           ; $6a71: $00

jr_0b3_6a72:
    jr nz, jr_0b3_6a93                            ; $6a72: $20 $1f

    ld [hl], h                                    ; $6a74: $74
    rst $38                                       ; $6a75: $ff
    ld a, a                                       ; $6a76: $7f
    ld c, b                                       ; $6a77: $48
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    ld a, a                                       ; $6a7c: $7f
    ld c, b                                       ; $6a7d: $48
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    jr nz, jr_0b3_6a82                            ; $6a80: $20 $00

jr_0b3_6a82:
    nop                                           ; $6a82: $00
    ld c, b                                       ; $6a83: $48
    nop                                           ; $6a84: $00
    ld c, b                                       ; $6a85: $48
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    jr nz, jr_0b3_6a8a                            ; $6a88: $20 $00

jr_0b3_6a8a:
    nop                                           ; $6a8a: $00
    rst $38                                       ; $6a8b: $ff
    ld a, a                                       ; $6a8c: $7f
    nop                                           ; $6a8d: $00
    jr nz, jr_0b3_6a92                            ; $6a8e: $20 $02

    nop                                           ; $6a90: $00
    nop                                           ; $6a91: $00

jr_0b3_6a92:
    nop                                           ; $6a92: $00

jr_0b3_6a93:
    rra                                           ; $6a93: $1f
    ld [hl], h                                    ; $6a94: $74
    rst $38                                       ; $6a95: $ff
    ld a, a                                       ; $6a96: $7f
    ld [bc], a                                    ; $6a97: $02
    nop                                           ; $6a98: $00

jr_0b3_6a99:
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    jr nz, jr_0b3_6aa2                            ; $6a9e: $20 $02

    nop                                           ; $6aa0: $00

jr_0b3_6aa1:
    nop                                           ; $6aa1: $00

jr_0b3_6aa2:
    jr nz, @+$01                                  ; $6aa2: $20 $ff

    ld a, a                                       ; $6aa4: $7f
    nop                                           ; $6aa5: $00
    jr nz, jr_0b3_6aaa                            ; $6aa6: $20 $02

    nop                                           ; $6aa8: $00

jr_0b3_6aa9:
    nop                                           ; $6aa9: $00

jr_0b3_6aaa:
    jr nz, jr_0b3_6acb                            ; $6aaa: $20 $1f

    ld [hl], h                                    ; $6aac: $74
    rst $38                                       ; $6aad: $ff
    ld a, a                                       ; $6aae: $7f
    nop                                           ; $6aaf: $00
    jr nz, jr_0b3_6ab2                            ; $6ab0: $20 $00

jr_0b3_6ab2:
    nop                                           ; $6ab2: $00

jr_0b3_6ab3:
    rst $38                                       ; $6ab3: $ff

jr_0b3_6ab4:
    ld a, a                                       ; $6ab4: $7f
    nop                                           ; $6ab5: $00
    jr nz, jr_0b3_6ab8                            ; $6ab6: $20 $00

jr_0b3_6ab8:
    jr nz, jr_0b3_6aba                            ; $6ab8: $20 $00

jr_0b3_6aba:
    nop                                           ; $6aba: $00
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f
    nop                                           ; $6abd: $00
    jr nz, jr_0b3_6ac0                            ; $6abe: $20 $00

jr_0b3_6ac0:
    jr nz, jr_0b3_6ac2                            ; $6ac0: $20 $00

jr_0b3_6ac2:
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    jr nz, jr_0b3_6ac6                            ; $6ac4: $20 $00

jr_0b3_6ac6:
    jr nz, jr_0b3_6aca                            ; $6ac6: $20 $02

    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00

jr_0b3_6aca:
    nop                                           ; $6aca: $00

jr_0b3_6acb:
    rra                                           ; $6acb: $1f
    ld [hl], h                                    ; $6acc: $74
    nop                                           ; $6acd: $00
    jr nz, jr_0b3_6ad2                            ; $6ace: $20 $02

    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00

jr_0b3_6ad2:
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    jr nz, jr_0b3_6ad6                            ; $6ad4: $20 $00

jr_0b3_6ad6:
    jr nz, jr_0b3_6ada                            ; $6ad6: $20 $02

    nop                                           ; $6ad8: $00
    nop                                           ; $6ad9: $00

jr_0b3_6ada:
    jr nz, jr_0b3_6adc                            ; $6ada: $20 $00

jr_0b3_6adc:
    jr nz, jr_0b3_6ade                            ; $6adc: $20 $00

jr_0b3_6ade:
    jr nz, jr_0b3_6ae2                            ; $6ade: $20 $02

    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00

jr_0b3_6ae2:
    jr nz, jr_0b3_6ae4                            ; $6ae2: $20 $00

jr_0b3_6ae4:
    jr nz, @+$01                                  ; $6ae4: $20 $ff

    ld l, e                                       ; $6ae6: $6b
    sbc [hl]                                      ; $6ae7: $9e
    rrca                                          ; $6ae8: $0f
    nop                                           ; $6ae9: $00
    jr nz, jr_0b3_6aec                            ; $6aea: $20 $00

jr_0b3_6aec:
    jr nz, @+$01                                  ; $6aec: $20 $ff

    ld l, e                                       ; $6aee: $6b
    sbc [hl]                                      ; $6aef: $9e
    rrca                                          ; $6af0: $0f
    nop                                           ; $6af1: $00
    jr nz, jr_0b3_6af4                            ; $6af2: $20 $00

jr_0b3_6af4:
    jr nz, @+$01                                  ; $6af4: $20 $ff

    ld l, e                                       ; $6af6: $6b
    sbc [hl]                                      ; $6af7: $9e
    rrca                                          ; $6af8: $0f
    nop                                           ; $6af9: $00

jr_0b3_6afa:
    jr nz, jr_0b3_6a99                            ; $6afa: $20 $9d

    inc bc                                        ; $6afc: $03
    rst $18                                       ; $6afd: $df
    ld c, e                                       ; $6afe: $4b
    sbc [hl]                                      ; $6aff: $9e
    inc bc                                        ; $6b00: $03
    nop                                           ; $6b01: $00

jr_0b3_6b02:
    jr nz, jr_0b3_6aa1                            ; $6b02: $20 $9d

    inc bc                                        ; $6b04: $03
    rst $18                                       ; $6b05: $df
    ld c, e                                       ; $6b06: $4b
    sbc [hl]                                      ; $6b07: $9e
    inc bc                                        ; $6b08: $03
    nop                                           ; $6b09: $00

jr_0b3_6b0a:
    jr nz, jr_0b3_6aa9                            ; $6b0a: $20 $9d

    inc bc                                        ; $6b0c: $03
    rst $18                                       ; $6b0d: $df
    ld c, e                                       ; $6b0e: $4b
    sbc [hl]                                      ; $6b0f: $9e
    inc bc                                        ; $6b10: $03
    nop                                           ; $6b11: $00
    jr nz, @-$61                                  ; $6b12: $20 $9d

    inc bc                                        ; $6b14: $03
    rst $18                                       ; $6b15: $df
    ld c, e                                       ; $6b16: $4b
    sbc [hl]                                      ; $6b17: $9e
    inc bc                                        ; $6b18: $03
    nop                                           ; $6b19: $00
    jr nz, jr_0b3_6b1c                            ; $6b1a: $20 $00

jr_0b3_6b1c:
    jr nz, @+$01                                  ; $6b1c: $20 $ff

    ld l, e                                       ; $6b1e: $6b
    sbc [hl]                                      ; $6b1f: $9e
    rrca                                          ; $6b20: $0f
    nop                                           ; $6b21: $00
    jr nz, @-$77                                  ; $6b22: $20 $87

    nop                                           ; $6b24: $00
    rst $38                                       ; $6b25: $ff
    ld l, e                                       ; $6b26: $6b
    sbc [hl]                                      ; $6b27: $9e
    rrca                                          ; $6b28: $0f
    nop                                           ; $6b29: $00
    jr nz, jr_0b3_6ab3                            ; $6b2a: $20 $87

    nop                                           ; $6b2c: $00
    rst $38                                       ; $6b2d: $ff
    ld l, e                                       ; $6b2e: $6b
    sbc [hl]                                      ; $6b2f: $9e
    rrca                                          ; $6b30: $0f
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    sbc [hl]                                      ; $6b33: $9e
    rrca                                          ; $6b34: $0f

jr_0b3_6b35:
    rst $18                                       ; $6b35: $df
    ld c, e                                       ; $6b36: $4b
    rst $38                                       ; $6b37: $ff
    ld l, a                                       ; $6b38: $6f
    nop                                           ; $6b39: $00
    jr nz, jr_0b3_6afa                            ; $6b3a: $20 $be

    rra                                           ; $6b3c: $1f
    rst $18                                       ; $6b3d: $df
    ld c, e                                       ; $6b3e: $4b
    rst $38                                       ; $6b3f: $ff
    ld l, a                                       ; $6b40: $6f
    nop                                           ; $6b41: $00
    jr nz, jr_0b3_6b02                            ; $6b42: $20 $be

    rra                                           ; $6b44: $1f
    rst $18                                       ; $6b45: $df
    ld c, e                                       ; $6b46: $4b
    rst $38                                       ; $6b47: $ff
    ld l, a                                       ; $6b48: $6f
    nop                                           ; $6b49: $00
    jr nz, jr_0b3_6b0a                            ; $6b4a: $20 $be

    rra                                           ; $6b4c: $1f
    rst $18                                       ; $6b4d: $df
    ld c, e                                       ; $6b4e: $4b
    rst $38                                       ; $6b4f: $ff
    ld l, a                                       ; $6b50: $6f
    nop                                           ; $6b51: $00
    jr nz, @-$77                                  ; $6b52: $20 $87

    nop                                           ; $6b54: $00
    rst $38                                       ; $6b55: $ff
    ld l, e                                       ; $6b56: $6b
    sbc [hl]                                      ; $6b57: $9e
    rrca                                          ; $6b58: $0f
    nop                                           ; $6b59: $00
    jr jr_0b3_6b9a                                ; $6b5a: $18 $3e

    ld b, a                                       ; $6b5c: $47
    sub b                                         ; $6b5d: $90
    ld hl, $0087                                  ; $6b5e: $21 $87 $00
    nop                                           ; $6b61: $00
    jr nz, jr_0b3_6b9e                            ; $6b62: $20 $3a

    inc bc                                        ; $6b64: $03
    cp [hl]                                       ; $6b65: $be
    inc sp                                        ; $6b66: $33
    add a                                         ; $6b67: $87
    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    call z, Call_000_3254                         ; $6b6b: $cc $54 $32
    ld [de], a                                    ; $6b6e: $12
    ld [hl], h                                    ; $6b6f: $74
    ld a, [bc]                                    ; $6b70: $0a
    nop                                           ; $6b71: $00
    jr nz, @-$2f                                  ; $6b72: $20 $cf

    ld de, $0ab6                                  ; $6b74: $11 $b6 $0a
    ld sp, hl                                     ; $6b77: $f9
    ld b, $00                                     ; $6b78: $06 $00
    jr nz, @-$2f                                  ; $6b7a: $20 $cf

    ld de, $0ab6                                  ; $6b7c: $11 $b6 $0a
    ld sp, hl                                     ; $6b7f: $f9
    ld b, $00                                     ; $6b80: $06 $00
    jr nz, @-$2f                                  ; $6b82: $20 $cf

    ld de, $0ab6                                  ; $6b84: $11 $b6 $0a
    ld sp, hl                                     ; $6b87: $f9
    ld b, $00                                     ; $6b88: $06 $00
    jr nz, @+$61                                  ; $6b8a: $20 $5f

    ld b, a                                       ; $6b8c: $47
    add a                                         ; $6b8d: $87
    nop                                           ; $6b8e: $00
    add a                                         ; $6b8f: $87
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    nop                                           ; $6b92: $00
    push af                                       ; $6b93: $f5
    add hl, hl                                    ; $6b94: $29
    ld a, a                                       ; $6b95: $7f
    ld c, a                                       ; $6b96: $4f
    add a                                         ; $6b97: $87
    nop                                           ; $6b98: $00

jr_0b3_6b99:
    ld b, e                                       ; $6b99: $43

jr_0b3_6b9a:
    nop                                           ; $6b9a: $00
    ldh a, [rNR11]                                ; $6b9b: $f0 $11
    nop                                           ; $6b9d: $00

jr_0b3_6b9e:
    jr nz, jr_0b3_6b35                            ; $6b9e: $20 $95

    ld a, [bc]                                    ; $6ba0: $0a
    call z, $cf54                                 ; $6ba1: $cc $54 $cf
    ld de, $0ab6                                  ; $6ba4: $11 $b6 $0a
    ld sp, hl                                     ; $6ba7: $f9
    ld b, $00                                     ; $6ba8: $06 $00
    db $10                                        ; $6baa: $10
    ld de, $cc12                                  ; $6bab: $11 $12 $cc
    ld d, h                                       ; $6bae: $54
    add hl, de                                    ; $6baf: $19
    inc bc                                        ; $6bb0: $03
    ld hl, $e710                                  ; $6bb1: $21 $10 $e7
    jr jr_0b3_6bb6                                ; $6bb4: $18 $00

jr_0b3_6bb6:
    jr nz, @-$73                                  ; $6bb6: $20 $8b

    dec h                                         ; $6bb8: $25
    nop                                           ; $6bb9: $00
    jr nz, @-$17                                  ; $6bba: $20 $e7

    jr jr_0b3_6bbe                                ; $6bbc: $18 $00

jr_0b3_6bbe:
    jr nz, @-$73                                  ; $6bbe: $20 $8b

    dec h                                         ; $6bc0: $25
    nop                                           ; $6bc1: $00
    jr nz, jr_0b3_6c43                            ; $6bc2: $20 $7f

    ld c, a                                       ; $6bc4: $4f
    add a                                         ; $6bc5: $87
    nop                                           ; $6bc6: $00
    sub l                                         ; $6bc7: $95
    ld a, [bc]                                    ; $6bc8: $0a
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    ld d, $2e                                     ; $6bcb: $16 $2e
    ccf                                           ; $6bcd: $3f
    ld b, a                                       ; $6bce: $47
    ld a, d                                       ; $6bcf: $7a
    ld [hl], $00                                  ; $6bd0: $36 $00
    ld [$0a75], sp                                ; $6bd2: $08 $75 $0a
    call z, $3b54                                 ; $6bd5: $cc $54 $3b
    inc bc                                        ; $6bd8: $03
    add l                                         ; $6bd9: $85
    ld [$54cc], sp                                ; $6bda: $08 $cc $54
    ld h, [hl]                                    ; $6bdd: $66
    jr z, @+$2c                                   ; $6bde: $28 $2a

    ld bc, $0c64                                  ; $6be0: $01 $64 $0c
    sbc h                                         ; $6be3: $9c
    inc bc                                        ; $6be4: $03
    call z, $ce54                                 ; $6be5: $cc $54 $ce
    add hl, bc                                    ; $6be8: $09
    adc e                                         ; $6be9: $8b
    ld hl, $27bc                                  ; $6bea: $21 $bc $27
    db $dd                                        ; $6bed: $dd
    ld d, e                                       ; $6bee: $53
    ld [hl], e                                    ; $6bef: $73
    ld a, [hl-]                                   ; $6bf0: $3a
    nop                                           ; $6bf1: $00
    jr nz, jr_0b3_6b99                            ; $6bf2: $20 $a5

    db $10                                        ; $6bf4: $10
    ld hl, $c618                                  ; $6bf5: $21 $18 $c6
    inc e                                         ; $6bf8: $1c
    nop                                           ; $6bf9: $00
    jr nz, @-$77                                  ; $6bfa: $20 $87

    nop                                           ; $6bfc: $00
    or d                                          ; $6bfd: $b2
    dec h                                         ; $6bfe: $25
    dec sp                                        ; $6bff: $3b
    inc bc                                        ; $6c00: $03
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    push af                                       ; $6c03: $f5
    add hl, hl                                    ; $6c04: $29
    ld e, $43                                     ; $6c05: $1e $43
    add a                                         ; $6c07: $87
    nop                                           ; $6c08: $00
    ld bc, $7d00                                  ; $6c09: $01 $00 $7d
    dec bc                                        ; $6c0c: $0b
    call z, $e954                                 ; $6c0d: $cc $54 $e9
    nop                                           ; $6c10: $00
    or c                                          ; $6c11: $b1
    dec b                                         ; $6c12: $05
    sbc $0a                                       ; $6c13: $de $0a
    ld a, $03                                     ; $6c15: $3e $03
    ld e, b                                       ; $6c17: $58
    ld b, $7e                                     ; $6c18: $06 $7e
    inc bc                                        ; $6c1a: $03
    sbc $03                                       ; $6c1b: $de $03
    cp [hl]                                       ; $6c1d: $be
    inc bc                                        ; $6c1e: $03
    cp $03                                        ; $6c1f: $fe $03
    cp $13                                        ; $6c21: $fe $13
    cp $4b                                        ; $6c23: $fe $4b
    cp $37                                        ; $6c25: $fe $37
    cp $5f                                        ; $6c27: $fe $5f
    nop                                           ; $6c29: $00
    jr nz, @+$2b                                  ; $6c2a: $20 $29

    dec l                                         ; $6c2c: $2d

Jump_0b3_6c2d:
    db $10                                        ; $6c2d: $10
    ld [hl], $a5                                  ; $6c2e: $36 $a5
    inc h                                         ; $6c30: $24
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    jr nz, @-$77                                  ; $6c34: $20 $87

    nop                                           ; $6c36: $00
    jp hl                                         ; $6c37: $e9


    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    cp b                                          ; $6c3b: $b8
    dec e                                         ; $6c3c: $1d
    db $dd                                        ; $6c3d: $dd
    ld a, [hl-]                                   ; $6c3e: $3a
    xor c                                         ; $6c3f: $a9
    ld [$0932], sp                                ; $6c40: $08 $32 $09

jr_0b3_6c43:
    rst $18                                       ; $6c43: $df
    ld de, $0a7f                                  ; $6c44: $11 $7f $0a
    rra                                           ; $6c47: $1f
    ld c, $0b                                     ; $6c48: $0e $0b
    ld bc, $0abe                                  ; $6c4a: $01 $be $0a
    di                                            ; $6c4d: $f3
    dec b                                         ; $6c4e: $05
    ld e, $03                                     ; $6c4f: $1e $03
    add l                                         ; $6c51: $85
    nop                                           ; $6c52: $00
    sub e                                         ; $6c53: $93
    ld c, $be                                     ; $6c54: $0e $be
    inc bc                                        ; $6c56: $03
    adc h                                         ; $6c57: $8c
    dec b                                         ; $6c58: $05
    sub h                                         ; $6c59: $94
    ld a, [hl-]                                   ; $6c5a: $3a
    cp $57                                        ; $6c5b: $fe $57
    db $dd                                        ; $6c5d: $dd
    inc de                                        ; $6c5e: $13
    cp $2f                                        ; $6c5f: $fe $2f
    nop                                           ; $6c61: $00
    jr nz, jr_0b3_6c6c                            ; $6c62: $20 $08

    dec e                                         ; $6c64: $1d
    adc $29                                       ; $6c65: $ce $29
    add h                                         ; $6c67: $84
    inc e                                         ; $6c68: $1c
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00

jr_0b3_6c6c:
    jr nz, jr_0b3_6ced                            ; $6c6c: $20 $7f

    ld a, [bc]                                    ; $6c6e: $0a
    rra                                           ; $6c6f: $1f
    ld c, $00                                     ; $6c70: $0e $00
    nop                                           ; $6c72: $00
    ld a, a                                       ; $6c73: $7f
    dec c                                         ; $6c74: $0d
    cp a                                          ; $6c75: $bf

jr_0b3_6c76:
    ld d, e                                       ; $6c76: $53
    add a                                         ; $6c77: $87
    nop                                           ; $6c78: $00
    ld b, h                                       ; $6c79: $44
    nop                                           ; $6c7a: $00
    rst $38                                       ; $6c7b: $ff
    ld de, $050e                                  ; $6c7c: $11 $0e $05
    ld e, a                                       ; $6c7f: $5f
    ld c, $01                                     ; $6c80: $0e $01
    inc b                                         ; $6c82: $04
    db $ed                                        ; $6c83: $ed
    ld d, b                                       ; $6c84: $50
    ld b, e                                       ; $6c85: $43
    jr jr_0b3_6cee                                ; $6c86: $18 $66

    jr z, jr_0b3_6c76                             ; $6c88: $28 $ec

    ld d, b                                       ; $6c8a: $50
    db $ed                                        ; $6c8b: $ed
    ld d, b                                       ; $6c8c: $50
    ld b, e                                       ; $6c8d: $43
    jr jr_0b3_6cf6                                ; $6c8e: $18 $66

    jr z, jr_0b3_6cb3                             ; $6c90: $28 $21

    ld [$175b], sp                                ; $6c92: $08 $5b $17
    db $ec                                        ; $6c95: $ec
    ld c, h                                       ; $6c96: $4c
    ld c, e                                       ; $6c97: $4b
    ld hl, $2000                                  ; $6c98: $21 $00 $20
    ldh a, [$15]                                  ; $6c9b: $f0 $15
    db $ec                                        ; $6c9d: $ec
    ld c, h                                       ; $6c9e: $4c
    ld c, e                                       ; $6c9f: $4b
    ld hl, $0000                                  ; $6ca0: $21 $00 $00
    ld d, e                                       ; $6ca3: $53
    nop                                           ; $6ca4: $00
    sbc a                                         ; $6ca5: $9f
    inc b                                         ; $6ca6: $04
    nop                                           ; $6ca7: $00
    jr nz, jr_0b3_6cf3                            ; $6ca8: $20 $49

    nop                                           ; $6caa: $00
    rra                                           ; $6cab: $1f
    add hl, bc                                    ; $6cac: $09
    ld e, a                                       ; $6cad: $5f
    ld b, a                                       ; $6cae: $47
    or c                                          ; $6caf: $b1
    inc b                                         ; $6cb0: $04
    inc hl                                        ; $6cb1: $23
    nop                                           ; $6cb2: $00

jr_0b3_6cb3:
    db $ed                                        ; $6cb3: $ed
    ld d, b                                       ; $6cb4: $50
    ccf                                           ; $6cb5: $3f
    ld b, a                                       ; $6cb6: $47
    or d                                          ; $6cb7: $b2
    dec h                                         ; $6cb8: $25
    db $ed                                        ; $6cb9: $ed
    ld d, b                                       ; $6cba: $50
    dec c                                         ; $6cbb: $0d
    ld d, c                                       ; $6cbc: $51
    cp $57                                        ; $6cbd: $fe $57
    db $fd                                        ; $6cbf: $fd
    ld bc, $0006                                  ; $6cc0: $01 $06 $00
    db $ed                                        ; $6cc3: $ed

jr_0b3_6cc4:
    ld d, b                                       ; $6cc4: $50
    ld e, l                                       ; $6cc5: $5d
    ld [bc], a                                    ; $6cc6: $02
    sbc a                                         ; $6cc7: $9f
    ld [bc], a                                    ; $6cc8: $02
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    ld e, h                                       ; $6ccb: $5c
    inc bc                                        ; $6ccc: $03
    ld b, $00                                     ; $6ccd: $06 $00
    ld a, a                                       ; $6ccf: $7f
    ld [bc], a                                    ; $6cd0: $02
    nop                                           ; $6cd1: $00
    jr nz, jr_0b3_6cc4                            ; $6cd2: $20 $f0

    ld de, $0e96                                  ; $6cd4: $11 $96 $0e
    ld sp, hl                                     ; $6cd7: $f9
    ld [bc], a                                    ; $6cd8: $02
    nop                                           ; $6cd9: $00
    db $10                                        ; $6cda: $10
    ld de, $3a00                                  ; $6cdb: $11 $00 $3a
    inc bc                                        ; $6cde: $03
    ccf                                           ; $6cdf: $3f
    nop                                           ; $6ce0: $00
    inc bc                                        ; $6ce1: $03
    nop                                           ; $6ce2: $00
    dec c                                         ; $6ce3: $0d
    ld d, c                                       ; $6ce4: $51
    ld a, b                                       ; $6ce5: $78
    ld [hl], $3e                                  ; $6ce6: $36 $3e
    ld b, e                                       ; $6ce8: $43
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    db $ec                                        ; $6ceb: $ec
    ld c, h                                       ; $6cec: $4c

jr_0b3_6ced:
    ld e, a                                       ; $6ced: $5f

jr_0b3_6cee:
    ld c, e                                       ; $6cee: $4b
    add a                                         ; $6cef: $87
    nop                                           ; $6cf0: $00
    dec c                                         ; $6cf1: $0d
    ld d, c                                       ; $6cf2: $51

jr_0b3_6cf3:
    ldh a, [rNR11]                                ; $6cf3: $f0 $11
    sub [hl]                                      ; $6cf5: $96

jr_0b3_6cf6:
    ld c, $f9                                     ; $6cf6: $0e $f9
    ld [bc], a                                    ; $6cf8: $02
    ld b, $00                                     ; $6cf9: $06 $00
    rra                                           ; $6cfb: $1f
    ld bc, $510d                                  ; $6cfc: $01 $0d $51
    ld a, a                                       ; $6cff: $7f
    ld [bc], a                                    ; $6d00: $02
    ld b, $00                                     ; $6d01: $06 $00
    sbc h                                         ; $6d03: $9c
    nop                                           ; $6d04: $00
    dec a                                         ; $6d05: $3d
    ld [bc], a                                    ; $6d06: $02
    ld sp, $0100                                  ; $6d07: $31 $00 $01
    nop                                           ; $6d0a: $00
    ld de, $1912                                  ; $6d0b: $11 $12 $19
    rlca                                          ; $6d0e: $07
    nop                                           ; $6d0f: $00
    jr nz, jr_0b3_6d12                            ; $6d10: $20 $00

jr_0b3_6d12:
    inc b                                         ; $6d12: $04
    ld a, h                                       ; $6d13: $7c
    rla                                           ; $6d14: $17
    dec c                                         ; $6d15: $0d
    ld c, l                                       ; $6d16: $4d
    rst $18                                       ; $6d17: $df
    ld l, e                                       ; $6d18: $6b
    ld [hl+], a                                   ; $6d19: $22
    nop                                           ; $6d1a: $00
    sub c                                         ; $6d1b: $91
    dec l                                         ; $6d1c: $2d
    rra                                           ; $6d1d: $1f
    ld b, e                                       ; $6d1e: $43
    cpl                                           ; $6d1f: $2f
    ld bc, $0000                                  ; $6d20: $01 $00 $00
    dec c                                         ; $6d23: $0d
    ld d, c                                       ; $6d24: $51
    or l                                          ; $6d25: $b5
    ld bc, $0088                                  ; $6d26: $01 $88 $00
    ld b, $00                                     ; $6d29: $06 $00
    dec l                                         ; $6d2b: $2d
    ld c, l                                       ; $6d2c: $4d
    sub h                                         ; $6d2d: $94
    dec b                                         ; $6d2e: $05
    ld e, l                                       ; $6d2f: $5d
    ld b, $08                                     ; $6d30: $06 $08
    nop                                           ; $6d32: $00
    sbc a                                         ; $6d33: $9f
    nop                                           ; $6d34: $00
    dec l                                         ; $6d35: $2d
    ld c, l                                       ; $6d36: $4d
    sbc a                                         ; $6d37: $9f
    ld [bc], a                                    ; $6d38: $02
    dec c                                         ; $6d39: $0d
    nop                                           ; $6d3a: $00
    rla                                           ; $6d3b: $17
    nop                                           ; $6d3c: $00
    db $fc                                        ; $6d3d: $fc
    ld bc, $005f                                  ; $6d3e: $01 $5f $00
    nop                                           ; $6d41: $00
    inc e                                         ; $6d42: $1c
    sub b                                         ; $6d43: $90
    dec c                                         ; $6d44: $0d
    ld a, [hl]                                    ; $6d45: $7e
    dec hl                                        ; $6d46: $2b
    adc [hl]                                      ; $6d47: $8e
    ld c, c                                       ; $6d48: $49
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    ld a, l                                       ; $6d4b: $7d
    inc bc                                        ; $6d4c: $03
    dec l                                         ; $6d4d: $2d
    ld c, l                                       ; $6d4e: $4d
    rst $18                                       ; $6d4f: $df
    ld e, a                                       ; $6d50: $5f
    ld b, e                                       ; $6d51: $43
    nop                                           ; $6d52: $00
    db $fd                                        ; $6d53: $fd
    ld a, $2e                                     ; $6d54: $3e $2e
    dec c                                         ; $6d56: $0d
    sub e                                         ; $6d57: $93
    ld bc, $0000                                  ; $6d58: $01 $00 $00
    dec l                                         ; $6d5b: $2d
    ld c, l                                       ; $6d5c: $4d
    dec c                                         ; $6d5d: $0d
    ld bc, $0087                                  ; $6d5e: $01 $87 $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    ld l, $4d                                     ; $6d63: $2e $4d
    dec c                                         ; $6d65: $0d
    ld bc, $0006                                  ; $6d66: $01 $06 $00
    rlca                                          ; $6d69: $07
    nop                                           ; $6d6a: $00
    ccf                                           ; $6d6b: $3f
    nop                                           ; $6d6c: $00
    dec sp                                        ; $6d6d: $3b
    ld b, $bf                                     ; $6d6e: $06 $bf
    ld a, [hl-]                                   ; $6d70: $3a
    ld b, $00                                     ; $6d71: $06 $00
    cp a                                          ; $6d73: $bf
    ld a, [hl-]                                   ; $6d74: $3a
    ld sp, $3b00                                  ; $6d75: $31 $00 $3b
    nop                                           ; $6d78: $00
    nop                                           ; $6d79: $00
    inc e                                         ; $6d7a: $1c
    adc [hl]                                      ; $6d7b: $8e
    dec a                                         ; $6d7c: $3d
    cp $57                                        ; $6d7d: $fe $57
    db $fd                                        ; $6d7f: $fd
    ld bc, $0401                                  ; $6d80: $01 $01 $04
    cp [hl]                                       ; $6d83: $be
    dec hl                                        ; $6d84: $2b
    ld c, [hl]                                    ; $6d85: $4e
    ld c, l                                       ; $6d86: $4d
    rst $38                                       ; $6d87: $ff
    ld [hl], a                                    ; $6d88: $77
    ld [hl+], a                                   ; $6d89: $22
    nop                                           ; $6d8a: $00
    ld d, [hl]                                    ; $6d8b: $56
    ld [hl-], a                                   ; $6d8c: $32
    ld d, c                                       ; $6d8d: $51
    ld bc, $431f                                  ; $6d8e: $01 $1f $43
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    ld c, [hl]                                    ; $6d93: $4e
    ld c, l                                       ; $6d94: $4d
    dec c                                         ; $6d95: $0d
    ld bc, $0046                                  ; $6d96: $01 $46 $00
    ld bc, $4e00                                  ; $6d99: $01 $00 $4e
    ld c, l                                       ; $6d9c: $4d
    db $ec                                        ; $6d9d: $ec
    nop                                           ; $6d9e: $00
    ld b, [hl]                                    ; $6d9f: $46
    nop                                           ; $6da0: $00
    ld [hl+], a                                   ; $6da1: $22
    nop                                           ; $6da2: $00
    rst $18                                       ; $6da3: $df
    nop                                           ; $6da4: $00
    sbc a                                         ; $6da5: $9f
    ld [de], a                                    ; $6da6: $12
    ld d, $00                                     ; $6da7: $16 $00
    ld [$bf00], sp                                ; $6da9: $08 $00 $bf
    ld a, [hl-]                                   ; $6dac: $3a
    ld e, a                                       ; $6dad: $5f
    nop                                           ; $6dae: $00
    ld sp, $0000                                  ; $6daf: $31 $00 $00
    inc e                                         ; $6db2: $1c
    cp $1b                                        ; $6db3: $fe $1b
    dec hl                                        ; $6db5: $2b
    dec l                                         ; $6db6: $2d
    ld e, a                                       ; $6db7: $5f
    nop                                           ; $6db8: $00
    ld hl, $3a08                                  ; $6db9: $21 $08 $3a
    rla                                           ; $6dbc: $17
    ld c, [hl]                                    ; $6dbd: $4e
    ld c, l                                       ; $6dbe: $4d
    rst $38                                       ; $6dbf: $ff
    ld a, a                                       ; $6dc0: $7f
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    ld d, b                                       ; $6dc3: $50
    ld bc, $0066                                  ; $6dc4: $01 $66 $00
    ld [hl], e                                    ; $6dc7: $73
    ld bc, $0000                                  ; $6dc8: $01 $00 $00
    jr nc, jr_0b3_6dce                            ; $6dcb: $30 $01

    ld d, h                                       ; $6dcd: $54

jr_0b3_6dce:
    ld a, [hl+]                                   ; $6dce: $2a
    ld h, [hl]                                    ; $6dcf: $66
    nop                                           ; $6dd0: $00
    ld bc, $2f00                                  ; $6dd1: $01 $00 $2f
    ld bc, $0006                                  ; $6dd4: $01 $06 $00
    add a                                         ; $6dd7: $87
    nop                                           ; $6dd8: $00
    ld [hl+], a                                   ; $6dd9: $22
    nop                                           ; $6dda: $00
    ccf                                           ; $6ddb: $3f
    nop                                           ; $6ddc: $00
    rst $18                                       ; $6ddd: $df
    ld bc, $0013                                  ; $6dde: $01 $13 $00
    dec bc                                        ; $6de1: $0b
    nop                                           ; $6de2: $00
    db $fd                                        ; $6de3: $fd
    ld a, a                                       ; $6de4: $7f
    rra                                           ; $6de5: $1f
    nop                                           ; $6de6: $00
    sbc a                                         ; $6de7: $9f
    ld a, [hl-]                                   ; $6de8: $3a
    nop                                           ; $6de9: $00
    inc e                                         ; $6dea: $1c
    ld a, e                                       ; $6deb: $7b
    inc bc                                        ; $6dec: $03
    sub b                                         ; $6ded: $90
    nop                                           ; $6dee: $00
    ld c, l                                       ; $6def: $4d
    ld b, l                                       ; $6df0: $45
    ld bc, $6e0c                                  ; $6df1: $01 $0c $6e
    ld c, c                                       ; $6df4: $49
    sbc [hl]                                      ; $6df5: $9e
    rlca                                          ; $6df6: $07
    ld [de], a                                    ; $6df7: $12
    ld a, [bc]                                    ; $6df8: $0a
    nop                                           ; $6df9: $00
    nop                                           ; $6dfa: $00
    cpl                                           ; $6dfb: $2f
    ld bc, $0086                                  ; $6dfc: $01 $86 $00
    ld d, c                                       ; $6dff: $51
    ld bc, $0043                                  ; $6e00: $01 $43 $00
    halt                                          ; $6e03: $76
    ld l, $51                                     ; $6e04: $2e $51
    ld bc, $435c                                  ; $6e06: $01 $5c $43
    ld bc, $7000                                  ; $6e09: $01 $00 $70
    add hl, bc                                    ; $6e0c: $09
    ei                                            ; $6e0d: $fb
    ld a, [hl-]                                   ; $6e0e: $3a
    add a                                         ; $6e0f: $87
    nop                                           ; $6e10: $00
    ld [hl+], a                                   ; $6e11: $22
    nop                                           ; $6e12: $00
    ld [de], a                                    ; $6e13: $12
    nop                                           ; $6e14: $00
    add hl, sp                                    ; $6e15: $39
    ld a, [hl+]                                   ; $6e16: $2a
    ld a, $00                                     ; $6e17: $3e $00
    rlca                                          ; $6e19: $07
    nop                                           ; $6e1a: $00
    ld a, h                                       ; $6e1b: $7c
    ld [hl], $fd                                  ; $6e1c: $36 $fd
    ld a, a                                       ; $6e1e: $7f
    rra                                           ; $6e1f: $1f
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    inc e                                         ; $6e22: $1c
    ld c, e                                       ; $6e23: $4b
    ld bc, $02fc                                  ; $6e24: $01 $fc $02
    ld c, h                                       ; $6e27: $4c
    ld b, c                                       ; $6e28: $41
    ld b, e                                       ; $6e29: $43
    nop                                           ; $6e2a: $00
    di                                            ; $6e2b: $f3
    add hl, bc                                    ; $6e2c: $09
    sbc [hl]                                      ; $6e2d: $9e
    rlca                                          ; $6e2e: $07
    nop                                           ; $6e2f: $00
    jr nz, jr_0b3_6e32                            ; $6e30: $20 $00

jr_0b3_6e32:
    nop                                           ; $6e32: $00
    rlc b                                         ; $6e33: $cb $00
    ld d, c                                       ; $6e35: $51
    ld bc, $0086                                  ; $6e36: $01 $86 $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    dec a                                         ; $6e3b: $3d
    ccf                                           ; $6e3c: $3f
    ld d, b                                       ; $6e3d: $50
    ld bc, $0087                                  ; $6e3e: $01 $87 $00
    inc hl                                        ; $6e41: $23
    nop                                           ; $6e42: $00
    ld a, [c]                                     ; $6e43: $f2
    dec h                                         ; $6e44: $25
    inc e                                         ; $6e45: $1c
    dec sp                                        ; $6e46: $3b
    ld l, $09                                     ; $6e47: $2e $09
    ld b, $00                                     ; $6e49: $06 $00
    ld e, d                                       ; $6e4b: $5a
    ld l, $b7                                     ; $6e4c: $2e $b7
    nop                                           ; $6e4e: $00
    db $fd                                        ; $6e4f: $fd
    ld a, a                                       ; $6e50: $7f
    ld b, a                                       ; $6e51: $47
    nop                                           ; $6e52: $00
    ld l, [hl]                                    ; $6e53: $6e
    ld c, c                                       ; $6e54: $49
    db $fd                                        ; $6e55: $fd
    ld a, a                                       ; $6e56: $7f
    ld a, [$0021]                                 ; $6e57: $fa $21 $00
    inc e                                         ; $6e5a: $1c
    ld c, a                                       ; $6e5b: $4f
    dec b                                         ; $6e5c: $05
    sbc [hl]                                      ; $6e5d: $9e
    ld a, [bc]                                    ; $6e5e: $0a
    ld l, [hl]                                    ; $6e5f: $6e
    ld c, c                                       ; $6e60: $49
    ld b, e                                       ; $6e61: $43
    nop                                           ; $6e62: $00
    sub h                                         ; $6e63: $94
    ld bc, $2000                                  ; $6e64: $01 $00 $20
    ld [hl-], a                                   ; $6e67: $32
    ld c, $00                                     ; $6e68: $0e $00
    nop                                           ; $6e6a: $00
    jp z, $8600                                   ; $6e6b: $ca $00 $86

    nop                                           ; $6e6e: $00
    ld d, c                                       ; $6e6f: $51
    ld bc, $0000                                  ; $6e70: $01 $00 $00
    inc e                                         ; $6e73: $1c
    dec sp                                        ; $6e74: $3b
    jr nc, jr_0b3_6e78                            ; $6e75: $30 $01

    add a                                         ; $6e77: $87

jr_0b3_6e78:
    nop                                           ; $6e78: $00
    ld b, e                                       ; $6e79: $43
    nop                                           ; $6e7a: $00
    inc [hl]                                      ; $6e7b: $34
    ld l, $1c                                     ; $6e7c: $2e $1c
    dec sp                                        ; $6e7e: $3b
    ld l, a                                       ; $6e7f: $6f
    dec d                                         ; $6e80: $15
    ld [hl+], a                                   ; $6e81: $22
    nop                                           ; $6e82: $00
    ld l, $15                                     ; $6e83: $2e $15
    inc a                                         ; $6e85: $3c
    ld a, [hl+]                                   ; $6e86: $2a
    db $eb                                        ; $6e87: $eb
    nop                                           ; $6e88: $00
    inc b                                         ; $6e89: $04
    nop                                           ; $6e8a: $00
    ld l, [hl]                                    ; $6e8b: $6e
    ld b, l                                       ; $6e8c: $45
    reti                                          ; $6e8d: $d9


    dec e                                         ; $6e8e: $1d
    rrca                                          ; $6e8f: $0f
    ld bc, $0001                                  ; $6e90: $01 $01 $00
    db $10                                        ; $6e93: $10
    dec b                                         ; $6e94: $05
    rra                                           ; $6e95: $1f
    ld c, $00                                     ; $6e96: $0e $00
    jr nz, @+$45                                  ; $6e98: $20 $43

    nop                                           ; $6e9a: $00
    ld [hl], e                                    ; $6e9b: $73
    ld bc, $2000                                  ; $6e9c: $01 $00 $20
    ld de, $0012                                  ; $6e9f: $11 $12 $00
    nop                                           ; $6ea2: $00
    ld d, b                                       ; $6ea3: $50
    ld bc, $0066                                  ; $6ea4: $01 $66 $00
    ld [hl], d                                    ; $6ea7: $72
    ld bc, $0043                                  ; $6ea8: $01 $43 $00
    db $db                                        ; $6eab: $db
    ld [hl-], a                                   ; $6eac: $32
    db $ec                                        ; $6ead: $ec
    nop                                           ; $6eae: $00
    ld d, c                                       ; $6eaf: $51
    ld bc, $0000                                  ; $6eb0: $01 $00 $00
    ld a, [c]                                     ; $6eb3: $f2
    dec e                                         ; $6eb4: $1d
    ret                                           ; $6eb5: $c9


    inc b                                         ; $6eb6: $04
    jp c, $0332                                   ; $6eb7: $da $32 $03

    nop                                           ; $6eba: $00
    inc e                                         ; $6ebb: $1c
    ccf                                           ; $6ebc: $3f
    ld [hl], b                                    ; $6ebd: $70
    ld bc, $03fe                                  ; $6ebe: $01 $fe $03
    inc b                                         ; $6ec1: $04
    nop                                           ; $6ec2: $00
    rst $18                                       ; $6ec3: $df
    ld a, [hl-]                                   ; $6ec4: $3a
    ld [hl-], a                                   ; $6ec5: $32

jr_0b3_6ec6:
    ld bc, $03ff                                  ; $6ec6: $01 $ff $03
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    pop de                                        ; $6ecb: $d1
    ld [$117f], sp                                ; $6ecc: $08 $7f $11
    nop                                           ; $6ecf: $00
    jr nz, @+$45                                  ; $6ed0: $20 $43

    nop                                           ; $6ed2: $00
    ld [hl], d                                    ; $6ed3: $72
    ld bc, $2000                                  ; $6ed4: $01 $00 $20
    ld de, $0012                                  ; $6ed7: $11 $12 $00
    nop                                           ; $6eda: $00
    ld d, b                                       ; $6edb: $50
    ld bc, $0066                                  ; $6edc: $01 $66 $00
    ld [hl], d                                    ; $6edf: $72
    ld bc, $0000                                  ; $6ee0: $01 $00 $00
    sbc c                                         ; $6ee3: $99
    ld l, $30                                     ; $6ee4: $2e $30
    ld bc, $0087                                  ; $6ee6: $01 $87 $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    ld d, a                                       ; $6eeb: $57
    ld h, $0b                                     ; $6eec: $26 $0b
    dec b                                         ; $6eee: $05
    sbc c                                         ; $6eef: $99
    ld l, $04                                     ; $6ef0: $2e $04

jr_0b3_6ef2:
    nop                                           ; $6ef2: $00
    inc a                                         ; $6ef3: $3c
    dec bc                                        ; $6ef4: $0b
    ld c, l                                       ; $6ef5: $4d
    dec b                                         ; $6ef6: $05
    sbc a                                         ; $6ef7: $9f
    ld b, a                                       ; $6ef8: $47
    ld h, $00                                     ; $6ef9: $26 $00
    cp e                                          ; $6efb: $bb
    ld [bc], a                                    ; $6efc: $02
    dec l                                         ; $6efd: $2d
    ld bc, $369c                                  ; $6efe: $01 $9c $36
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    add hl, de                                    ; $6f03: $19
    inc bc                                        ; $6f04: $03
    nop                                           ; $6f05: $00
    jr nz, jr_0b3_6ec6                            ; $6f06: $20 $be

    inc de                                        ; $6f08: $13
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    ld [hl], e                                    ; $6f0b: $73
    ld bc, $2000                                  ; $6f0c: $01 $00 $20
    add a                                         ; $6f0f: $87
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    cpl                                           ; $6f13: $2f
    ld bc, $0066                                  ; $6f14: $01 $66 $00
    ld [hl], d                                    ; $6f17: $72
    ld bc, $0023                                  ; $6f18: $01 $23 $00
    scf                                           ; $6f1b: $37
    ld h, $30                                     ; $6f1c: $26 $30
    ld bc, $0086                                  ; $6f1e: $01 $86 $00
    ret z                                         ; $6f21: $c8

    ld [$19d2], sp                                ; $6f22: $08 $d2 $19
    ld [hl], $22                                  ; $6f25: $36 $22
    ld l, a                                       ; $6f27: $6f
    dec c                                         ; $6f28: $0d
    ld [bc], a                                    ; $6f29: $02
    nop                                           ; $6f2a: $00
    ld [hl], a                                    ; $6f2b: $77
    ld [hl+], a                                   ; $6f2c: $22
    call c, $cc03                                 ; $6f2d: $dc $03 $cc
    nop                                           ; $6f30: $00
    inc b                                         ; $6f31: $04
    nop                                           ; $6f32: $00
    dec de                                        ; $6f33: $1b
    ld [bc], a                                    ; $6f34: $02
    ld c, $01                                     ; $6f35: $0e $01
    ccf                                           ; $6f37: $3f
    inc bc                                        ; $6f38: $03
    nop                                           ; $6f39: $00
    jr nz, jr_0b3_6ef2                            ; $6f3a: $20 $b6

    ld a, [bc]                                    ; $6f3c: $0a
    cp [hl]                                       ; $6f3d: $be
    cpl                                           ; $6f3e: $2f
    ld e, e                                       ; $6f3f: $5b
    inc bc                                        ; $6f40: $03
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    sub h                                         ; $6f43: $94
    ld bc, $2000                                  ; $6f44: $01 $00 $20
    add a                                         ; $6f47: $87
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    db $ec                                        ; $6f4b: $ec
    nop                                           ; $6f4c: $00
    add [hl]                                      ; $6f4d: $86
    nop                                           ; $6f4e: $00
    ld d, c                                       ; $6f4f: $51
    ld bc, $0044                                  ; $6f50: $01 $44 $00
    ld d, c                                       ; $6f53: $51
    ld bc, $1df5                                  ; $6f54: $01 $f5 $1d
    adc b                                         ; $6f57: $88
    nop                                           ; $6f58: $00
    ld [$9004], a                                 ; $6f59: $ea $04 $90
    ld de, $092d                                  ; $6f5c: $11 $2d $09
    or d                                          ; $6f5f: $b2
    add hl, de                                    ; $6f60: $19
    ld [bc], a                                    ; $6f61: $02
    nop                                           ; $6f62: $00
    ld a, d                                       ; $6f63: $7a
    ld e, $ec                                     ; $6f64: $1e $ec
    nop                                           ; $6f66: $00
    ld a, $4b                                     ; $6f67: $3e $4b
    inc b                                         ; $6f69: $04
    nop                                           ; $6f6a: $00
    ret c                                         ; $6f6b: $d8

    ld bc, $010e                                  ; $6f6c: $01 $0e $01
    ld e, a                                       ; $6f6f: $5f
    inc bc                                        ; $6f70: $03
    nop                                           ; $6f71: $00
    jr nz, @+$34                                  ; $6f72: $20 $32

    ld [de], a                                    ; $6f74: $12

jr_0b3_6f75:
    ld e, e                                       ; $6f75: $5b
    inc bc                                        ; $6f76: $03
    or a                                          ; $6f77: $b7
    ld a, [bc]                                    ; $6f78: $0a
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    sub h                                         ; $6f7b: $94
    ld bc, $2000                                  ; $6f7c: $01 $00 $20
    add a                                         ; $6f7f: $87
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    jr nc, jr_0b3_6f86                            ; $6f83: $30 $01

    add [hl]                                      ; $6f85: $86

jr_0b3_6f86:
    nop                                           ; $6f86: $00
    ld [hl], d                                    ; $6f87: $72
    ld bc, $0045                                  ; $6f88: $01 $45 $00
    cpl                                           ; $6f8b: $2f
    ld bc, $1192                                  ; $6f8c: $01 $92 $11
    jp z, $a704                                   ; $6f8f: $ca $04 $a7

    nop                                           ; $6f92: $00
    ld c, a                                       ; $6f93: $4f
    dec c                                         ; $6f94: $0d
    jp z, $c800                                   ; $6f95: $ca $00 $c8

    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    ld a, [de]                                    ; $6f9b: $1a
    ld a, [bc]                                    ; $6f9c: $0a
    ld e, $3f                                     ; $6f9d: $1e $3f
    daa                                           ; $6f9f: $27
    nop                                           ; $6fa0: $00
    inc bc                                        ; $6fa1: $03
    nop                                           ; $6fa2: $00
    rst $10                                       ; $6fa3: $d7
    ld bc, $010e                                  ; $6fa4: $01 $0e $01
    db $fc                                        ; $6fa7: $fc
    ld [bc], a                                    ; $6fa8: $02
    nop                                           ; $6fa9: $00
    jr nz, jr_0b3_6fbc                            ; $6faa: $20 $10

    ld d, $96                                     ; $6fac: $16 $96
    ld c, $32                                     ; $6fae: $0e $32
    ld [de], a                                    ; $6fb0: $12
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    add a                                         ; $6fb3: $87
    nop                                           ; $6fb4: $00
    nop                                           ; $6fb5: $00
    jr nz, jr_0b3_7009                            ; $6fb6: $20 $51

    ld bc, $0000                                  ; $6fb8: $01 $00 $00
    dec c                                         ; $6fbb: $0d

jr_0b3_6fbc:
    ld bc, $0086                                  ; $6fbc: $01 $86 $00
    ld d, d                                       ; $6fbf: $52
    ld bc, $0001                                  ; $6fc0: $01 $01 $00
    dec c                                         ; $6fc3: $0d
    ld bc, $0150                                  ; $6fc4: $01 $50 $01
    ld h, l                                       ; $6fc7: $65
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    add a                                         ; $6fcb: $87
    nop                                           ; $6fcc: $00
    xor c                                         ; $6fcd: $a9
    nop                                           ; $6fce: $00
    jp z, Jump_000_2400                           ; $6fcf: $ca $00 $24

    nop                                           ; $6fd2: $00
    or $0d                                        ; $6fd3: $f6 $0d
    ld d, c                                       ; $6fd5: $51
    ld bc, $3efc                                  ; $6fd6: $01 $fc $3e
    inc b                                         ; $6fd9: $04
    nop                                           ; $6fda: $00
    inc de                                        ; $6fdb: $13
    ld c, $9f                                     ; $6fdc: $0e $9f
    ld d, e                                       ; $6fde: $53
    ld c, $01                                     ; $6fdf: $0e $01
    nop                                           ; $6fe1: $00
    jr nz, jr_0b3_6ff5                            ; $6fe2: $20 $11

    ld [de], a                                    ; $6fe4: $12
    ld a, [de]                                    ; $6fe5: $1a
    inc bc                                        ; $6fe6: $03
    ld c, $01                                     ; $6fe7: $0e $01
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    jr nz, jr_0b3_6f75                            ; $6fec: $20 $87

    nop                                           ; $6fee: $00
    ld h, l                                       ; $6fef: $65
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    jr nc, jr_0b3_6ff6                            ; $6ff3: $30 $01

jr_0b3_6ff5:
    xor b                                         ; $6ff5: $a8

jr_0b3_6ff6:
    nop                                           ; $6ff6: $00
    ld [hl], d                                    ; $6ff7: $72
    ld bc, $0000                                  ; $6ff8: $01 $00 $00
    cpl                                           ; $6ffb: $2f
    ld bc, $0066                                  ; $6ffc: $01 $66 $00
    xor c                                         ; $6fff: $a9
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    db $d3                                        ; $7003: $d3
    add hl, de                                    ; $7004: $19
    add a                                         ; $7005: $87
    nop                                           ; $7006: $00
    xor b                                         ; $7007: $a8
    nop                                           ; $7008: $00

jr_0b3_7009:
    inc h                                         ; $7009: $24
    nop                                           ; $700a: $00
    inc d                                         ; $700b: $14
    ld a, [hl+]                                   ; $700c: $2a
    ld d, b                                       ; $700d: $50
    dec b                                         ; $700e: $05
    call c, Call_000_243a                         ; $700f: $dc $3a $24
    nop                                           ; $7012: $00
    ld d, h                                       ; $7013: $54
    ld [de], a                                    ; $7014: $12
    cp [hl]                                       ; $7015: $be
    inc de                                        ; $7016: $13
    dec a                                         ; $7017: $3d
    ld b, e                                       ; $7018: $43
    nop                                           ; $7019: $00
    jr nz, jr_0b3_7036                            ; $701a: $20 $1a

    inc bc                                        ; $701c: $03
    cp [hl]                                       ; $701d: $be
    inc de                                        ; $701e: $13
    dec a                                         ; $701f: $3d
    ld b, e                                       ; $7020: $43
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    jr nz, jr_0b3_708c                            ; $7024: $20 $66

    nop                                           ; $7026: $00
    xor c                                         ; $7027: $a9
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00

jr_0b3_702a:
    nop                                           ; $702a: $00
    dec c                                         ; $702b: $0d
    ld bc, $0173                                  ; $702c: $01 $73 $01
    add a                                         ; $702f: $87
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    add a                                         ; $7033: $87
    nop                                           ; $7034: $00
    xor c                                         ; $7035: $a9

jr_0b3_7036:
    nop                                           ; $7036: $00
    add a                                         ; $7037: $87
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    ldh a, [rSTAT]                                ; $703b: $f0 $41
    xor c                                         ; $703d: $a9
    nop                                           ; $703e: $00
    db $fc                                        ; $703f: $fc
    ld b, d                                       ; $7040: $42
    inc h                                         ; $7041: $24
    nop                                           ; $7042: $00
    di                                            ; $7043: $f3
    ld hl, $012f                                  ; $7044: $21 $2f $01
    db $db                                        ; $7047: $db
    ld [hl], $03                                  ; $7048: $36 $03
    nop                                           ; $704a: $00
    ld a, h                                       ; $704b: $7c
    rrca                                          ; $704c: $0f
    ld a, [hl]                                    ; $704d: $7e
    ld c, e                                       ; $704e: $4b
    ld c, $01                                     ; $704f: $0e $01
    nop                                           ; $7051: $00
    jr nz, jr_0b3_70d0                            ; $7052: $20 $7c

    rrca                                          ; $7054: $0f
    ld a, [hl]                                    ; $7055: $7e
    ld c, e                                       ; $7056: $4b
    ld c, $01                                     ; $7057: $0e $01
    nop                                           ; $7059: $00
    jr nz, @-$77                                  ; $705a: $20 $87

    nop                                           ; $705c: $00
    xor c                                         ; $705d: $a9
    nop                                           ; $705e: $00
    add a                                         ; $705f: $87
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    cp [hl]                                       ; $7063: $be
    inc hl                                        ; $7064: $23
    add a                                         ; $7065: $87
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    jr nz, jr_0b3_706a                            ; $7068: $20 $00

jr_0b3_706a:
    nop                                           ; $706a: $00
    ldh a, [rSTAT]                                ; $706b: $f0 $41
    db $10                                        ; $706d: $10
    ld b, d                                       ; $706e: $42
    nop                                           ; $706f: $00
    jr nz, jr_0b3_7094                            ; $7070: $20 $22

    nop                                           ; $7072: $00
    ld [de], a                                    ; $7073: $12
    ld [hl], $51                                  ; $7074: $36 $51
    ld bc, $3adc                                  ; $7076: $01 $dc $3a
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    ld [hl], c                                    ; $707b: $71
    add hl, bc                                    ; $707c: $09
    ld a, b                                       ; $707d: $78
    ld [hl-], a                                   ; $707e: $32
    ld b, [hl]                                    ; $707f: $46
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    db $10                                        ; $7082: $10
    sbc [hl]                                      ; $7083: $9e

jr_0b3_7084:
    dec sp                                        ; $7084: $3b
    ld l, b                                       ; $7085: $68
    nop                                           ; $7086: $00
    rst $38                                       ; $7087: $ff
    ld l, a                                       ; $7088: $6f
    nop                                           ; $7089: $00
    jr nz, jr_0b3_702a                            ; $708a: $20 $9e

jr_0b3_708c:
    dec sp                                        ; $708c: $3b
    ld l, b                                       ; $708d: $68
    nop                                           ; $708e: $00
    rst $38                                       ; $708f: $ff
    ld l, a                                       ; $7090: $6f
    nop                                           ; $7091: $00
    jr nz, jr_0b3_7084                            ; $7092: $20 $f0

jr_0b3_7094:
    ld b, c                                       ; $7094: $41
    db $10                                        ; $7095: $10
    ld b, d                                       ; $7096: $42
    nop                                           ; $7097: $00
    jr nz, jr_0b3_709a                            ; $7098: $20 $00

jr_0b3_709a:
    ld [$4210], sp                                ; $709a: $08 $10 $42
    sbc l                                         ; $709d: $9d
    inc de                                        ; $709e: $13
    rst $38                                       ; $709f: $ff
    ld h, e                                       ; $70a0: $63
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    db $10                                        ; $70a3: $10
    ld b, d                                       ; $70a4: $42
    sbc l                                         ; $70a5: $9d
    inc de                                        ; $70a6: $13
    rst $38                                       ; $70a7: $ff
    ld h, e                                       ; $70a8: $63
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    ld de, $5312                                  ; $70ab: $11 $12 $53
    ld c, $74                                     ; $70ae: $0e $74
    ld c, $00                                     ; $70b0: $0e $00
    nop                                           ; $70b2: $00
    ld de, $5c12                                  ; $70b3: $11 $12 $5c
    inc bc                                        ; $70b6: $03
    cp [hl]                                       ; $70b7: $be
    dec hl                                        ; $70b8: $2b
    nop                                           ; $70b9: $00
    ld [$06d7], sp                                ; $70ba: $08 $d7 $06
    rst $18                                       ; $70bd: $df
    ld h, e                                       ; $70be: $63
    cp [hl]                                       ; $70bf: $be
    dec de                                        ; $70c0: $1b
    nop                                           ; $70c1: $00
    jr nz, @-$27                                  ; $70c2: $20 $d7

    ld b, $df                                     ; $70c4: $06 $df
    ld h, e                                       ; $70c6: $63
    cp [hl]                                       ; $70c7: $be
    dec de                                        ; $70c8: $1b
    nop                                           ; $70c9: $00
    jr nz, jr_0b3_70dc                            ; $70ca: $20 $10

    ld b, d                                       ; $70cc: $42
    sbc l                                         ; $70cd: $9d
    inc de                                        ; $70ce: $13
    rst $38                                       ; $70cf: $ff

jr_0b3_70d0:
    ld h, e                                       ; $70d0: $63
    nop                                           ; $70d1: $00
    jr nz, jr_0b3_7127                            ; $70d2: $20 $53

    ld c, $de                                     ; $70d4: $0e $de
    ld d, a                                       ; $70d6: $57
    ld a, l                                       ; $70d7: $7d
    rlca                                          ; $70d8: $07
    ld de, $be12                                  ; $70d9: $11 $12 $be

jr_0b3_70dc:
    ld b, a                                       ; $70dc: $47
    ld a, h                                       ; $70dd: $7c
    dec bc                                        ; $70de: $0b
    rst $38                                       ; $70df: $ff
    ld l, a                                       ; $70e0: $6f
    ld de, $7412                                  ; $70e1: $11 $12 $74

jr_0b3_70e4:
    ld c, $b6                                     ; $70e4: $0e $b6
    ld a, [bc]                                    ; $70e6: $0a
    ld [hl-], a                                   ; $70e7: $32
    ld [de], a                                    ; $70e8: $12
    rst $10                                       ; $70e9: $d7
    ld b, $be                                     ; $70ea: $06 $be

jr_0b3_70ec:
    dec sp                                        ; $70ec: $3b
    ld a, l                                       ; $70ed: $7d
    dec bc                                        ; $70ee: $0b
    rst $38                                       ; $70ef: $ff
    ld l, e                                       ; $70f0: $6b
    nop                                           ; $70f1: $00
    jr nz, jr_0b3_70e4                            ; $70f2: $20 $f0

    dec c                                         ; $70f4: $0d
    sbc $53                                       ; $70f5: $de $53
    ld e, e                                       ; $70f7: $5b
    dec bc                                        ; $70f8: $0b
    nop                                           ; $70f9: $00
    jr nz, jr_0b3_70ec                            ; $70fa: $20 $f0

    dec c                                         ; $70fc: $0d
    sbc $53                                       ; $70fd: $de $53
    ld e, e                                       ; $70ff: $5b
    dec bc                                        ; $7100: $0b
    nop                                           ; $7101: $00
    jr nz, jr_0b3_7104                            ; $7102: $20 $00

jr_0b3_7104:
    jr nz, jr_0b3_7106                            ; $7104: $20 $00

jr_0b3_7106:
    jr nz, jr_0b3_7144                            ; $7106: $20 $3c

Jump_0b3_7108:
    dec l                                         ; $7108: $2d

jr_0b3_7109:
    inc hl                                        ; $7109: $23
    inc b                                         ; $710a: $04
    or b                                          ; $710b: $b0
    inc d                                         ; $710c: $14
    nop                                           ; $710d: $00
    jr nz, jr_0b3_7109                            ; $710e: $20 $f9

    jr nz, jr_0b3_7112                            ; $7110: $20 $00

jr_0b3_7112:
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    jr nz, jr_0b3_7116                            ; $7114: $20 $00

jr_0b3_7116:
    jr nz, @-$05                                  ; $7116: $20 $f9

    jr nz, jr_0b3_711a                            ; $7118: $20 $00

jr_0b3_711a:
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    jr nz, @+$01                                  ; $711c: $20 $ff

    dec de                                        ; $711e: $1b
    nop                                           ; $711f: $00
    jr nz, jr_0b3_7122                            ; $7120: $20 $00

jr_0b3_7122:
    jr nz, jr_0b3_7124                            ; $7122: $20 $00

jr_0b3_7124:
    jr nz, @+$01                                  ; $7124: $20 $ff

    dec de                                        ; $7126: $1b

jr_0b3_7127:
    nop                                           ; $7127: $00
    jr nz, jr_0b3_712a                            ; $7128: $20 $00

jr_0b3_712a:
    jr nz, jr_0b3_712c                            ; $712a: $20 $00

jr_0b3_712c:
    jr nz, @+$01                                  ; $712c: $20 $ff

    dec de                                        ; $712e: $1b
    nop                                           ; $712f: $00
    jr nz, jr_0b3_7132                            ; $7130: $20 $00

jr_0b3_7132:
    jr nz, jr_0b3_7134                            ; $7132: $20 $00

jr_0b3_7134:
    jr nz, @+$01                                  ; $7134: $20 $ff

    dec de                                        ; $7136: $1b
    nop                                           ; $7137: $00
    jr nz, jr_0b3_713a                            ; $7138: $20 $00

jr_0b3_713a:
    jr nz, jr_0b3_713c                            ; $713a: $20 $00

jr_0b3_713c:
    jr nz, jr_0b3_713e                            ; $713c: $20 $00

jr_0b3_713e:
    jr nz, @-$05                                  ; $713e: $20 $f9

    jr nz, jr_0b3_7143                            ; $7140: $20 $01

    nop                                           ; $7142: $00

jr_0b3_7143:
    db $10                                        ; $7143: $10

jr_0b3_7144:
    ld [$2000], sp                                ; $7144: $08 $00 $20
    halt                                          ; $7147: $76
    inc d                                         ; $7148: $14
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    ld a, [$0020]                                 ; $714b: $fa $20 $00
    jr nz, jr_0b3_715c                            ; $714e: $20 $0c

    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    inc b                                         ; $7152: $04
    call c, Call_000_2b20                         ; $7153: $dc $20 $2b
    inc b                                         ; $7156: $04
    rst $18                                       ; $7157: $df
    ld b, l                                       ; $7158: $45
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00

jr_0b3_715c:
    jr nz, jr_0b3_7189                            ; $715c: $20 $2b

    inc b                                         ; $715e: $04

jr_0b3_715f:
    rst $18                                       ; $715f: $df
    ld b, l                                       ; $7160: $45
    nop                                           ; $7161: $00
    jr nz, jr_0b3_7164                            ; $7162: $20 $00

jr_0b3_7164:
    jr nz, @+$2d                                  ; $7164: $20 $2b

    inc b                                         ; $7166: $04
    rst $18                                       ; $7167: $df
    ld b, l                                       ; $7168: $45
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    jr nz, @+$2d                                  ; $716c: $20 $2b

jr_0b3_716e:
    inc b                                         ; $716e: $04
    rst $18                                       ; $716f: $df
    ld b, l                                       ; $7170: $45
    nop                                           ; $7171: $00
    jr nz, jr_0b3_716e                            ; $7172: $20 $fa

    jr nz, jr_0b3_7176                            ; $7174: $20 $00

jr_0b3_7176:
    jr nz, jr_0b3_7184                            ; $7176: $20 $0c

    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717a: $00
    dec bc                                        ; $717b: $0b
    nop                                           ; $717c: $00
    nop                                           ; $717d: $00
    jr nz, jr_0b3_7183                            ; $717e: $20 $03

    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00

jr_0b3_7183:
    cp b                                          ; $7183: $b8

jr_0b3_7184:
    jr jr_0b3_7193                                ; $7184: $18 $0d

    inc b                                         ; $7186: $04
    ld a, [hl]                                    ; $7187: $7e
    dec [hl]                                      ; $7188: $35

jr_0b3_7189:
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    db $e4                                        ; $718b: $e4
    jr jr_0b3_71b6                                ; $718c: $18 $28

    dec h                                         ; $718e: $25
    rst $00                                       ; $718f: $c7
    jr jr_0b3_7192                                ; $7190: $18 $00

jr_0b3_7192:
    nop                                           ; $7192: $00

jr_0b3_7193:
    ld e, d                                       ; $7193: $5a
    ld l, e                                       ; $7194: $6b
    nop                                           ; $7195: $00
    jr nz, jr_0b3_715f                            ; $7196: $20 $c7

    jr jr_0b3_719a                                ; $7198: $18 $00

jr_0b3_719a:
    nop                                           ; $719a: $00
    ldh a, [$09]                                  ; $719b: $f0 $09
    nop                                           ; $719d: $00
    jr nz, jr_0b3_71a0                            ; $719e: $20 $00

jr_0b3_71a0:
    ld [$0000], sp                                ; $71a0: $08 $00 $00
    ld d, l                                       ; $71a3: $55
    ld b, $00                                     ; $71a4: $06 $00
    inc e                                         ; $71a6: $1c
    ld h, h                                       ; $71a7: $64
    inc b                                         ; $71a8: $04
    nop                                           ; $71a9: $00
    jr nz, jr_0b3_7164                            ; $71aa: $20 $b8

    jr jr_0b3_71bb                                ; $71ac: $18 $0d

    inc b                                         ; $71ae: $04
    ld a, [hl]                                    ; $71af: $7e
    dec [hl]                                      ; $71b0: $35
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    jr nz, jr_0b3_71bb                            ; $71b4: $20 $05

jr_0b3_71b6:
    nop                                           ; $71b6: $00
    dec bc                                        ; $71b7: $0b
    inc b                                         ; $71b8: $04
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00

jr_0b3_71bb:
    ld a, $2d                                     ; $71bb: $3e $2d
    inc de                                        ; $71bd: $13
    ld [$040b], sp                                ; $71be: $08 $0b $04
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    db $f4                                        ; $71c3: $f4
    ld e, d                                       ; $71c4: $5a
    sbc a                                         ; $71c5: $9f
    add hl, sp                                    ; $71c6: $39
    and d                                         ; $71c7: $a2
    inc d                                         ; $71c8: $14
    nop                                           ; $71c9: $00
    nop                                           ; $71ca: $00

jr_0b3_71cb:
    cp e                                          ; $71cb: $bb
    ld [hl], e                                    ; $71cc: $73
    xor h                                         ; $71cd: $ac
    dec [hl]                                      ; $71ce: $35
    nop                                           ; $71cf: $00
    jr nz, jr_0b3_71d2                            ; $71d0: $20 $00

jr_0b3_71d2:
    nop                                           ; $71d2: $00
    cpl                                           ; $71d3: $2f
    ld [de], a                                    ; $71d4: $12
    ld e, h                                       ; $71d5: $5c
    inc de                                        ; $71d6: $13
    db $e3                                        ; $71d7: $e3
    add hl, de                                    ; $71d8: $19
    add b                                         ; $71d9: $80
    ld [$2247], sp                                ; $71da: $08 $47 $22
    rst $38                                       ; $71dd: $ff
    dec de                                        ; $71de: $1b
    nop                                           ; $71df: $00
    jr nz, jr_0b3_71e2                            ; $71e0: $20 $00

jr_0b3_71e2:
    jr nz, jr_0b3_7222                            ; $71e2: $20 $3e

    dec l                                         ; $71e4: $2d
    inc de                                        ; $71e5: $13
    ld [$040b], sp                                ; $71e6: $08 $0b $04
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    nop                                           ; $71eb: $00
    jr nz, jr_0b3_71ee                            ; $71ec: $20 $00

jr_0b3_71ee:
    ld [$0001], sp                                ; $71ee: $08 $01 $00
    inc b                                         ; $71f1: $04
    nop                                           ; $71f2: $00
    inc d                                         ; $71f3: $14
    ld [$20de], sp                                ; $71f4: $08 $de $20
    ld a, [bc]                                    ; $71f7: $0a
    nop                                           ; $71f8: $00
    ld bc, $b700                                  ; $71f9: $01 $00 $b7
    jr jr_0b3_727d                                ; $71fc: $18 $7f

    dec [hl]                                      ; $71fe: $35
    sbc $20                                       ; $71ff: $de $20
    ld b, c                                       ; $7201: $41
    nop                                           ; $7202: $00
    ld a, a                                       ; $7203: $7f
    dec [hl]                                      ; $7204: $35
    call nc, $ff37                                ; $7205: $d4 $37 $ff
    ld a, a                                       ; $7208: $7f
    nop                                           ; $7209: $00
    inc b                                         ; $720a: $04
    ld c, [hl]                                    ; $720b: $4e
    inc hl                                        ; $720c: $23
    add sp, $11                                   ; $720d: $e8 $11
    db $dd                                        ; $720f: $dd

jr_0b3_7210:
    rla                                           ; $7210: $17

jr_0b3_7211:
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    adc [hl]                                      ; $7213: $8e
    ld a, [de]                                    ; $7214: $1a
    nop                                           ; $7215: $00
    jr nz, jr_0b3_7210                            ; $7216: $20 $f8

    ld c, $00                                     ; $7218: $0e $00
    jr nz, @+$16                                  ; $721a: $20 $14

    ld [$20de], sp                                ; $721c: $08 $de $20
    ld a, [bc]                                    ; $721f: $0a
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00

jr_0b3_7222:
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    jr jr_0b3_71cb                                ; $7224: $18 $a5

    inc d                                         ; $7226: $14
    nop                                           ; $7227: $00

jr_0b3_7228:
    jr nz, jr_0b3_722a                            ; $7228: $20 $00

jr_0b3_722a:
    nop                                           ; $722a: $00
    db $eb                                        ; $722b: $eb
    ld [$0002], sp                                ; $722c: $08 $02 $00
    ld b, $00                                     ; $722f: $06 $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    and l                                         ; $7233: $a5
    ld [$18b1], sp                                ; $7234: $08 $b1 $18
    xor c                                         ; $7237: $a9
    ld [$0020], sp                                ; $7238: $08 $20 $00
    rst $08                                       ; $723b: $cf
    ld a, [de]                                    ; $723c: $1a
    db $fc                                        ; $723d: $fc
    ld h, e                                       ; $723e: $63
    add c                                         ; $723f: $81
    add hl, bc                                    ; $7240: $09
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    ld [hl-], a                                   ; $7243: $32
    ld a, [bc]                                    ; $7244: $0a
    nop                                           ; $7245: $00
    jr nz, jr_0b3_7228                            ; $7246: $20 $e0

    ld [$2000], sp                                ; $7248: $08 $00 $20
    ld [hl-], a                                   ; $724b: $32
    ld a, [bc]                                    ; $724c: $0a
    nop                                           ; $724d: $00
    jr nz, @-$1e                                  ; $724e: $20 $e0

    ld [$2000], sp                                ; $7250: $08 $00 $20

jr_0b3_7253:
    db $eb                                        ; $7253: $eb
    ld [$0002], sp                                ; $7254: $08 $02 $00
    ld b, $00                                     ; $7257: $06 $00

Jump_0b3_7259:
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    rst $38                                       ; $725b: $ff
    ld a, a                                       ; $725c: $7f
    nop                                           ; $725d: $00
    jr nz, jr_0b3_7266                            ; $725e: $20 $06

    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    jp z, Jump_0b3_7108                           ; $7263: $ca $08 $71

jr_0b3_7266:
    dec d                                         ; $7266: $15
    inc c                                         ; $7267: $0c
    dec c                                         ; $7268: $0d
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    adc d                                         ; $726b: $8a
    inc b                                         ; $726c: $04
    ld sp, hl                                     ; $726d: $f9
    add hl, de                                    ; $726e: $19
    dec c                                         ; $726f: $0d
    dec c                                         ; $7270: $0d
    ld hl, $8d00                                  ; $7271: $21 $00 $8d
    ld l, d                                       ; $7274: $6a
    xor l                                         ; $7275: $ad
    add hl, bc                                    ; $7276: $09
    ld a, [hl]                                    ; $7277: $7e
    ld [hl+], a                                   ; $7278: $22
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    adc l                                         ; $727b: $8d
    ld l, [hl]                                    ; $727c: $6e

jr_0b3_727d:
    rst $38                                       ; $727d: $ff
    ld a, a                                       ; $727e: $7f
    nop                                           ; $727f: $00
    jr nz, jr_0b3_7282                            ; $7280: $20 $00

jr_0b3_7282:
    jr nz, jr_0b3_7211                            ; $7282: $20 $8d

    ld l, [hl]                                    ; $7284: $6e
    rst $38                                       ; $7285: $ff
    ld a, a                                       ; $7286: $7f
    nop                                           ; $7287: $00
    jr nz, jr_0b3_728a                            ; $7288: $20 $00

jr_0b3_728a:
    jr nz, @-$34                                  ; $728a: $20 $ca

    ld [$1571], sp                                ; $728c: $08 $71 $15
    inc c                                         ; $728f: $0c
    dec c                                         ; $7290: $0d
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    ld l, l                                       ; $7293: $6d
    ld l, d                                       ; $7294: $6a
    rst $38                                       ; $7295: $ff
    ld a, a                                       ; $7296: $7f
    nop                                           ; $7297: $00
    jr nz, jr_0b3_729a                            ; $7298: $20 $00

jr_0b3_729a:
    nop                                           ; $729a: $00
    dec d                                         ; $729b: $15
    ld e, $dc                                     ; $729c: $1e $dc
    ld a, a                                       ; $729e: $7f
    adc e                                         ; $729f: $8b
    inc b                                         ; $72a0: $04
    ld h, h                                       ; $72a1: $64
    ld [$2a39], sp                                ; $72a2: $08 $39 $2a
    ld [hl], e                                    ; $72a5: $73
    dec c                                         ; $72a6: $0d
    sbc e                                         ; $72a7: $9b
    ld [hl], a                                    ; $72a8: $77
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    ld l, h                                       ; $72ab: $6c
    ld l, d                                       ; $72ac: $6a
    ld a, [hl]                                    ; $72ad: $7e
    ld [hl+], a                                   ; $72ae: $22
    adc [hl]                                      ; $72af: $8e
    inc c                                         ; $72b0: $0c
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    ld l, h                                       ; $72b3: $6c
    ld h, [hl]                                    ; $72b4: $66
    rst $38                                       ; $72b5: $ff
    ld a, a                                       ; $72b6: $7f
    ld l, l                                       ; $72b7: $6d
    ld l, d                                       ; $72b8: $6a
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    jr nz, @+$01                                  ; $72bc: $20 $ff

    ld a, a                                       ; $72be: $7f
    ld l, l                                       ; $72bf: $6d
    ld l, d                                       ; $72c0: $6a
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    rst $38                                       ; $72c3: $ff
    ld a, a                                       ; $72c4: $7f
    nop                                           ; $72c5: $00
    jr nz, jr_0b3_7253                            ; $72c6: $20 $8b

    inc b                                         ; $72c8: $04
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    ld c, e                                       ; $72cb: $4b
    ld h, d                                       ; $72cc: $62
    rst $38                                       ; $72cd: $ff
    ld a, a                                       ; $72ce: $7f
    ld [hl], a                                    ; $72cf: $77
    db $10                                        ; $72d0: $10
    ld b, d                                       ; $72d1: $42
    inc b                                         ; $72d2: $04
    dec c                                         ; $72d3: $0d
    ld [hl+], a                                   ; $72d4: $22
    ld c, e                                       ; $72d5: $4b
    inc b                                         ; $72d6: $04
    inc a                                         ; $72d7: $3c
    ld a, [de]                                    ; $72d8: $1a
    ld bc, $b500                                  ; $72d9: $01 $00 $b5
    dec d                                         ; $72dc: $15
    ld l, c                                       ; $72dd: $69
    inc b                                         ; $72de: $04
    sbc [hl]                                      ; $72df: $9e
    ld [hl+], a                                   ; $72e0: $22
    ld bc, $f700                                  ; $72e1: $01 $00 $f7
    inc d                                         ; $72e4: $14
    ld a, [hl]                                    ; $72e5: $7e
    ld [hl+], a                                   ; $72e6: $22
    ld e, a                                       ; $72e7: $5f
    ld sp, $0000                                  ; $72e8: $31 $00 $00
    ld a, [hl+]                                   ; $72eb: $2a
    ld h, d                                       ; $72ec: $62
    sbc [hl]                                      ; $72ed: $9e
    dec [hl]                                      ; $72ee: $35
    rst $38                                       ; $72ef: $ff
    ld a, a                                       ; $72f0: $7f
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    rst $38                                       ; $72f3: $ff
    ld a, a                                       ; $72f4: $7f
    nop                                           ; $72f5: $00
    jr nz, @+$01                                  ; $72f6: $20 $ff

    ld a, a                                       ; $72f8: $7f
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    rst $38                                       ; $72fb: $ff
    ld a, a                                       ; $72fc: $7f
    nop                                           ; $72fd: $00
    jr nz, @+$3e                                  ; $72fe: $20 $3c

    ld a, [de]                                    ; $7300: $1a
    ld bc, $0a00                                  ; $7301: $01 $00 $0a
    ld e, [hl]                                    ; $7304: $5e
    inc l                                         ; $7305: $2c
    ld [$1479], sp                                ; $7306: $08 $79 $14
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    ld [hl], d                                    ; $730b: $72
    ld de, $1e7d                                  ; $730c: $11 $7d $1e
    add [hl]                                      ; $730f: $86
    inc b                                         ; $7310: $04
    inc hl                                        ; $7311: $23
    nop                                           ; $7312: $00
    ld hl, sp+$19                                 ; $7313: $f8 $19
    rst $08                                       ; $7315: $cf
    nop                                           ; $7316: $00
    ld a, l                                       ; $7317: $7d
    ld e, $01                                     ; $7318: $1e $01
    nop                                           ; $731a: $00
    or d                                          ; $731b: $b2
    inc c                                         ; $731c: $0c
    ld e, a                                       ; $731d: $5f
    ld sp, $040a                                  ; $731e: $31 $0a $04
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    add hl, bc                                    ; $7323: $09
    ld e, d                                       ; $7324: $5a
    ld a, h                                       ; $7325: $7c
    ld sp, $567f                                  ; $7326: $31 $7f $56
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    rst $38                                       ; $732b: $ff
    ld a, a                                       ; $732c: $7f
    add hl, bc                                    ; $732d: $09
    ld e, d                                       ; $732e: $5a
    nop                                           ; $732f: $00
    jr nz, jr_0b3_7332                            ; $7330: $20 $00

jr_0b3_7332:
    nop                                           ; $7332: $00
    add sp, $59                                   ; $7333: $e8 $59
    rst $38                                       ; $7335: $ff
    ld a, a                                       ; $7336: $7f
    nop                                           ; $7337: $00
    jr nz, jr_0b3_733a                            ; $7338: $20 $00

jr_0b3_733a:
    nop                                           ; $733a: $00
    add sp, $59                                   ; $733b: $e8 $59
    add hl, bc                                    ; $733d: $09
    ld e, d                                       ; $733e: $5a
    nop                                           ; $733f: $00
    jr nz, jr_0b3_7342                            ; $7340: $20 $00

jr_0b3_7342:
    nop                                           ; $7342: $00
    add hl, bc                                    ; $7343: $09
    ld e, d                                       ; $7344: $5a
    ld c, a                                       ; $7345: $4f
    add hl, bc                                    ; $7346: $09
    ld sp, hl                                     ; $7347: $f9
    dec d                                         ; $7348: $15
    ld bc, $ee00                                  ; $7349: $01 $00 $ee
    ld [$19d7], sp                                ; $734c: $08 $d7 $19
    ld e, [hl]                                    ; $734f: $5e
    ld [hl+], a                                   ; $7350: $22
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    add sp, $55                                   ; $7353: $e8 $55
    dec a                                         ; $7355: $3d
    ld d, $88                                     ; $7356: $16 $88
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    rst $00                                       ; $735b: $c7
    ld d, l                                       ; $735c: $55
    or [hl]                                       ; $735d: $b6
    ld c, $c6                                     ; $735e: $0e $c6
    inc b                                         ; $7360: $04
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    ret z                                         ; $7363: $c8

    ld d, l                                       ; $7364: $55
    rst $38                                       ; $7365: $ff
    ld a, a                                       ; $7366: $7f
    nop                                           ; $7367: $00
    jr nz, jr_0b3_736a                            ; $7368: $20 $00

jr_0b3_736a:
    nop                                           ; $736a: $00
    rst $38                                       ; $736b: $ff
    ld a, a                                       ; $736c: $7f
    rst $00                                       ; $736d: $c7
    ld d, c                                       ; $736e: $51
    ret z                                         ; $736f: $c8

    ld d, l                                       ; $7370: $55
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    rst $00                                       ; $7373: $c7
    ld d, c                                       ; $7374: $51
    sub $2e                                       ; $7375: $d6 $2e
    cp l                                          ; $7377: $bd
    dec sp                                        ; $7378: $3b
    ld [hl+], a                                   ; $7379: $22
    nop                                           ; $737a: $00
    ld [hl-], a                                   ; $737b: $32
    ld c, $cc                                     ; $737c: $0e $cc
    ld [$229d], sp                                ; $737e: $08 $9d $22
    ld bc, $1000                                  ; $7381: $01 $00 $10
    dec b                                         ; $7384: $05
    inc e                                         ; $7385: $1c
    ld d, $47                                     ; $7386: $16 $47
    nop                                           ; $7388: $00
    ld hl, $a604                                  ; $7389: $21 $04 $a6
    ld d, c                                       ; $738c: $51
    sbc a                                         ; $738d: $9f
    ld [hl+], a                                   ; $738e: $22
    ld [hl], e                                    ; $738f: $73
    ld c, [hl]                                    ; $7390: $4e
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    ld d, e                                       ; $7393: $53
    ld c, $69                                     ; $7394: $0e $69
    dec d                                         ; $7396: $15
    sbc $1f                                       ; $7397: $de $1f
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    and [hl]                                      ; $739b: $a6
    ld c, l                                       ; $739c: $4d
    rst $38                                       ; $739d: $ff
    ld a, a                                       ; $739e: $7f
    nop                                           ; $739f: $00
    jr nz, jr_0b3_73a2                            ; $73a0: $20 $00

jr_0b3_73a2:
    nop                                           ; $73a2: $00
    rst $38                                       ; $73a3: $ff
    ld a, a                                       ; $73a4: $7f
    add [hl]                                      ; $73a5: $86
    ld c, l                                       ; $73a6: $4d
    nop                                           ; $73a7: $00
    jr nz, jr_0b3_73ed                            ; $73a8: $20 $43

    ld [$2339], sp                                ; $73aa: $08 $39 $23
    add [hl]                                      ; $73ad: $86
    ld c, l                                       ; $73ae: $4d
    rst $38                                       ; $73af: $ff
    ld l, a                                       ; $73b0: $6f
    ld bc, $6e00                                  ; $73b1: $01 $00 $6e
    add hl, bc                                    ; $73b4: $09
    rst $10                                       ; $73b5: $d7
    ld [de], a                                    ; $73b6: $12
    add h                                         ; $73b7: $84
    nop                                           ; $73b8: $00
    ld [hl+], a                                   ; $73b9: $22
    nop                                           ; $73ba: $00
    ld de, $3c01                                  ; $73bb: $11 $01 $3c
    ld a, [de]                                    ; $73be: $1a
    db $f4                                        ; $73bf: $f4
    add hl, bc                                    ; $73c0: $09
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    ld a, c                                       ; $73c3: $79
    ld [hl], $7b                                  ; $73c4: $36 $7b
    ld l, a                                       ; $73c6: $6f
    add $1c                                       ; $73c7: $c6 $1c
    ld c, d                                       ; $73c9: $4a
    ld de, $0ef8                                  ; $73ca: $11 $f8 $0e
    rst $38                                       ; $73cd: $ff
    ld e, e                                       ; $73ce: $5b
    sbc h                                         ; $73cf: $9c
    inc de                                        ; $73d0: $13
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    rst $38                                       ; $73d3: $ff
    ld a, a                                       ; $73d4: $7f
    add l                                         ; $73d5: $85
    ld c, c                                       ; $73d6: $49
    nop                                           ; $73d7: $00
    jr nz, jr_0b3_73da                            ; $73d8: $20 $00

jr_0b3_73da:
    nop                                           ; $73da: $00
    rst $38                                       ; $73db: $ff
    ld a, a                                       ; $73dc: $7f
    ld h, h                                       ; $73dd: $64
    ld b, l                                       ; $73de: $45
    nop                                           ; $73df: $00
    jr nz, jr_0b3_73e2                            ; $73e0: $20 $00

jr_0b3_73e2:
    nop                                           ; $73e2: $00
    rst $38                                       ; $73e3: $ff
    cpl                                           ; $73e4: $2f
    ld h, h                                       ; $73e5: $64
    ld b, l                                       ; $73e6: $45
    add hl, sp                                    ; $73e7: $39
    ld e, a                                       ; $73e8: $5f
    ld h, e                                       ; $73e9: $63
    inc b                                         ; $73ea: $04
    cp l                                          ; $73eb: $bd
    inc sp                                        ; $73ec: $33

jr_0b3_73ed:
    rst $38                                       ; $73ed: $ff
    ld a, a                                       ; $73ee: $7f
    adc e                                         ; $73ef: $8b
    add hl, de                                    ; $73f0: $19
    ld b, e                                       ; $73f1: $43
    nop                                           ; $73f2: $00
    dec sp                                        ; $73f3: $3b
    ld a, [de]                                    ; $73f4: $1a
    rrca                                          ; $73f5: $0f
    dec b                                         ; $73f6: $05
    rst $38                                       ; $73f7: $ff
    cpl                                           ; $73f8: $2f
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    rla                                           ; $73fb: $17
    ld [hl+], a                                   ; $73fc: $22
    ld a, [hl-]                                   ; $73fd: $3a
    ld h, a                                       ; $73fe: $67
    ld c, d                                       ; $73ff: $4a
    dec l                                         ; $7400: $2d
    ld b, d                                       ; $7401: $42
    nop                                           ; $7402: $00
    ld a, [hl-]                                   ; $7403: $3a
    dec hl                                        ; $7404: $2b
    ld [hl], e                                    ; $7405: $73
    ld b, $ff                                     ; $7406: $06 $ff
    ld l, e                                       ; $7408: $6b
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    rst $38                                       ; $740b: $ff
    ld a, a                                       ; $740c: $7f
    ld b, h                                       ; $740d: $44
    ld b, l                                       ; $740e: $45
    nop                                           ; $740f: $00
    jr nz, jr_0b3_7412                            ; $7410: $20 $00

jr_0b3_7412:
    nop                                           ; $7412: $00
    rst $38                                       ; $7413: $ff
    ld a, a                                       ; $7414: $7f
    ld b, e                                       ; $7415: $43
    ld b, c                                       ; $7416: $41
    nop                                           ; $7417: $00
    jr nz, jr_0b3_745c                            ; $7418: $20 $42

    nop                                           ; $741a: $00
    ld hl, sp+$2e                                 ; $741b: $f8 $2e
    ld b, h                                       ; $741d: $44
    ld b, c                                       ; $741e: $41
    rst $38                                       ; $741f: $ff
    ld l, a                                       ; $7420: $6f
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    adc $01                                       ; $7423: $ce $01
    adc $39                                       ; $7425: $ce $39
    add [hl]                                      ; $7427: $86
    nop                                           ; $7428: $00
    ld [bc], a                                    ; $7429: $02
    nop                                           ; $742a: $00
    sub l                                         ; $742b: $95
    ld de, $229d                                  ; $742c: $11 $9d $22
    xor d                                         ; $742f: $aa
    nop                                           ; $7430: $00
    ld hl, $5204                                  ; $7431: $21 $04 $52
    ld b, [hl]                                    ; $7434: $46
    jr @+$65                                      ; $7435: $18 $63

    sbc $7b                                       ; $7437: $de $7b
    ld a, [hl+]                                   ; $7439: $2a
    ld bc, $2f7c                                  ; $743a: $01 $7c $2f
    ld d, e                                       ; $743d: $53
    ld a, [bc]                                    ; $743e: $0a
    rst $38                                       ; $743f: $ff
    ld d, e                                       ; $7440: $53
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    rst $38                                       ; $7443: $ff
    ld a, a                                       ; $7444: $7f
    nop                                           ; $7445: $00
    jr nz, jr_0b3_74ab                            ; $7446: $20 $63

    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    rst $38                                       ; $744b: $ff
    ld a, a                                       ; $744c: $7f
    ld [bc], a                                    ; $744d: $02
    dec a                                         ; $744e: $3d
    nop                                           ; $744f: $00
    jr nz, jr_0b3_7473                            ; $7450: $20 $21

    nop                                           ; $7452: $00
    sbc h                                         ; $7453: $9c
    ccf                                           ; $7454: $3f
    ld [hl+], a                                   ; $7455: $22
    dec a                                         ; $7456: $3d
    adc $15                                       ; $7457: $ce $15
    inc h                                         ; $7459: $24
    nop                                           ; $745a: $00
    scf                                           ; $745b: $37

jr_0b3_745c:
    ld [hl-], a                                   ; $745c: $32
    ld c, h                                       ; $745d: $4c
    ld hl, $6f7b                                  ; $745e: $21 $7b $6f
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    ld [hl], h                                    ; $7463: $74
    dec c                                         ; $7464: $0d
    ld e, l                                       ; $7465: $5d
    ld a, [de]                                    ; $7466: $1a
    adc b                                         ; $7467: $88
    inc b                                         ; $7468: $04
    nop                                           ; $7469: $00
    nop                                           ; $746a: $00
    rst $30                                       ; $746b: $f7
    ld e, d                                       ; $746c: $5a
    xor l                                         ; $746d: $ad
    ld sp, $7bff                                  ; $746e: $31 $ff $7b
    ld b, d                                       ; $7471: $42
    nop                                           ; $7472: $00

jr_0b3_7473:
    ld d, e                                       ; $7473: $53
    ld c, $29                                     ; $7474: $0e $29
    ld bc, $2f39                                  ; $7476: $01 $39 $2f
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    rst $38                                       ; $747b: $ff
    ld a, a                                       ; $747c: $7f
    nop                                           ; $747d: $00
    jr nz, jr_0b3_74a1                            ; $747e: $20 $21

    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    rst $38                                       ; $7483: $ff
    ld a, a                                       ; $7484: $7f
    ld bc, $0039                                  ; $7485: $01 $39 $00
    jr nz, @+$05                                  ; $7488: $20 $03

    nop                                           ; $748a: $00
    rst $28                                       ; $748b: $ef
    ld de, $3bdd                                  ; $748c: $11 $dd $3b
    ld bc, $0039                                  ; $748f: $01 $39 $00
    nop                                           ; $7492: $00
    jr c, jr_0b3_74bb                             ; $7493: $38 $26

    sbc h                                         ; $7495: $9c
    ld [hl], e                                    ; $7496: $73
    xor d                                         ; $7497: $aa
    ld [$0822], sp                                ; $7498: $08 $22 $08
    ld a, [hl+]                                   ; $749b: $2a
    dec h                                         ; $749c: $25
    inc e                                         ; $749d: $1c
    ld a, [de]                                    ; $749e: $1a
    rst $28                                       ; $749f: $ef
    nop                                           ; $74a0: $00

jr_0b3_74a1:
    jr nz, jr_0b3_74a7                            ; $74a1: $20 $04

    ld sp, $7b3e                                  ; $74a3: $31 $3e $7b
    ld h, e                                       ; $74a6: $63

jr_0b3_74a7:
    ld l, e                                       ; $74a7: $6b
    ld hl, $0000                                  ; $74a8: $21 $00 $00

jr_0b3_74ab:
    sub $1e                                       ; $74ab: $d6 $1e
    rst $18                                       ; $74ad: $df
    dec a                                         ; $74ae: $3d
    xor b                                         ; $74af: $a8
    inc b                                         ; $74b0: $04
    nop                                           ; $74b1: $00
    nop                                           ; $74b2: $00
    rst $18                                       ; $74b3: $df
    ld b, c                                       ; $74b4: $41
    sbc $7b                                       ; $74b5: $de $7b
    nop                                           ; $74b7: $00
    jr nz, jr_0b3_74ba                            ; $74b8: $20 $00

jr_0b3_74ba:
    nop                                           ; $74ba: $00

jr_0b3_74bb:
    rst $38                                       ; $74bb: $ff
    ld a, a                                       ; $74bc: $7f
    nop                                           ; $74bd: $00
    jr nz, jr_0b3_74c1                            ; $74be: $20 $01

    add hl, sp                                    ; $74c0: $39

jr_0b3_74c1:
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    db $10                                        ; $74c3: $10
    ld a, [de]                                    ; $74c4: $1a
    ld l, e                                       ; $74c5: $6b
    inc b                                         ; $74c6: $04
    ld e, d                                       ; $74c7: $5a
    inc hl                                        ; $74c8: $23
    ld [hl+], a                                   ; $74c9: $22
    nop                                           ; $74ca: $00
    adc $39                                       ; $74cb: $ce $39
    rst $38                                       ; $74cd: $ff
    ld a, a                                       ; $74ce: $7f
    db $fd                                        ; $74cf: $fd
    dec c                                         ; $74d0: $0d
    ld hl, $ee04                                  ; $74d1: $21 $04 $ee
    dec a                                         ; $74d4: $3d
    adc d                                         ; $74d5: $8a
    nop                                           ; $74d6: $00
    rst $20                                       ; $74d7: $e7
    inc e                                         ; $74d8: $1c
    ld [bc], a                                    ; $74d9: $02
    nop                                           ; $74da: $00
    rst $28                                       ; $74db: $ef
    add hl, hl                                    ; $74dc: $29
    sbc $5f                                       ; $74dd: $de $5f
    ld hl, sp+$2a                                 ; $74df: $f8 $2a
    nop                                           ; $74e1: $00
    nop                                           ; $74e2: $00
    ld d, d                                       ; $74e3: $52

jr_0b3_74e4:
    ld d, $ea                                     ; $74e4: $16 $ea
    ld [$359e], sp                                ; $74e6: $08 $9e $35
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    rst $18                                       ; $74eb: $df
    ld b, c                                       ; $74ec: $41
    rst $38                                       ; $74ed: $ff
    ld a, a                                       ; $74ee: $7f
    nop                                           ; $74ef: $00
    jr nz, jr_0b3_74f2                            ; $74f0: $20 $00

jr_0b3_74f2:
    nop                                           ; $74f2: $00
    rst $38                                       ; $74f3: $ff
    ld a, a                                       ; $74f4: $7f

jr_0b3_74f5:
    nop                                           ; $74f5: $00
    jr nz, jr_0b3_74f5                            ; $74f6: $20 $fd

    dec c                                         ; $74f8: $0d
    ld b, h                                       ; $74f9: $44
    nop                                           ; $74fa: $00
    db $10                                        ; $74fb: $10
    ld a, [de]                                    ; $74fc: $1a
    jr nc, jr_0b3_7507                            ; $74fd: $30 $08

    ld a, [hl-]                                   ; $74ff: $3a
    rra                                           ; $7500: $1f
    ld h, $00                                     ; $7501: $26 $00
    rst $38                                       ; $7503: $ff
    inc sp                                        ; $7504: $33
    ld d, d                                       ; $7505: $52
    ld [bc], a                                    ; $7506: $02

jr_0b3_7507:
    rst $38                                       ; $7507: $ff
    ld a, a                                       ; $7508: $7f
    ld [hl+], a                                   ; $7509: $22
    inc b                                         ; $750a: $04
    ld c, $00                                     ; $750b: $0e $00
    ld b, $21                                     ; $750d: $06 $21
    or a                                          ; $750f: $b7
    dec c                                         ; $7510: $0d
    ld [bc], a                                    ; $7511: $02
    nop                                           ; $7512: $00
    rst $28                                       ; $7513: $ef
    ld hl, $3719                                  ; $7514: $21 $19 $37
    jr z, jr_0b3_7519                             ; $7517: $28 $00

jr_0b3_7519:
    ld bc, $db00                                  ; $7519: $01 $00 $db
    jr nz, jr_0b3_74e4                            ; $751c: $20 $c6

    nop                                           ; $751e: $00
    ld e, l                                       ; $751f: $5d
    ld sp, $0000                                  ; $7520: $31 $00 $00
    rst $38                                       ; $7523: $ff
    ld a, a                                       ; $7524: $7f
    nop                                           ; $7525: $00
    jr nz, jr_0b3_7585                            ; $7526: $20 $5d

    ld sp, $0000                                  ; $7528: $31 $00 $00
    rst $38                                       ; $752b: $ff
    ld a, a                                       ; $752c: $7f
    nop                                           ; $752d: $00
    jr nz, @+$01                                  ; $752e: $20 $ff

    ld a, a                                       ; $7530: $7f
    ld bc, $ef00                                  ; $7531: $01 $00 $ef
    dec d                                         ; $7534: $15
    ld d, l                                       ; $7535: $55
    inc c                                         ; $7536: $0c
    ld c, d                                       ; $7537: $4a
    inc b                                         ; $7538: $04
    ld bc, $6a00                                  ; $7539: $01 $00 $6a
    nop                                           ; $753c: $00
    ld [hl], d                                    ; $753d: $72
    inc b                                         ; $753e: $04
    ld h, h                                       ; $753f: $64
    nop                                           ; $7540: $00
    dec h                                         ; $7541: $25
    nop                                           ; $7542: $00
    ld d, l                                       ; $7543: $55
    ld bc, $0410                                  ; $7544: $01 $10 $04
    jr @+$20                                      ; $7547: $18 $1e

    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    ld d, d                                       ; $754b: $52
    ld [hl+], a                                   ; $754c: $22
    db $dd                                        ; $754d: $dd
    ld b, a                                       ; $754e: $47
    add hl, hl                                    ; $754f: $29
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    ld [hl], l                                    ; $7553: $75
    db $10                                        ; $7554: $10
    db $db                                        ; $7555: $db
    jr nz, @+$09                                  ; $7556: $20 $07

    inc b                                         ; $7558: $04
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    rst $38                                       ; $755b: $ff
    ld a, a                                       ; $755c: $7f
    nop                                           ; $755d: $00
    jr nz, @+$09                                  ; $755e: $20 $07

    inc b                                         ; $7560: $04
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    rst $38                                       ; $7563: $ff
    ld a, a                                       ; $7564: $7f
    nop                                           ; $7565: $00
    jr nz, jr_0b3_75cc                            ; $7566: $20 $64

    nop                                           ; $7568: $00
    ld [hl+], a                                   ; $7569: $22
    nop                                           ; $756a: $00
    inc c                                         ; $756b: $0c
    inc b                                         ; $756c: $04
    rrca                                          ; $756d: $0f
    ld c, $34                                     ; $756e: $0e $34
    inc c                                         ; $7570: $0c
    inc bc                                        ; $7571: $03
    nop                                           ; $7572: $00
    inc e                                         ; $7573: $1c
    ld c, $88                                     ; $7574: $0e $88
    nop                                           ; $7576: $00
    inc c                                         ; $7577: $0c
    inc b                                         ; $7578: $04
    add hl, hl                                    ; $7579: $29
    nop                                           ; $757a: $00
    inc sp                                        ; $757b: $33
    ld bc, $163b                                  ; $757c: $01 $3b $16

jr_0b3_757f:
    ld [hl], a                                    ; $757f: $77
    db $10                                        ; $7580: $10
    ld bc, $cf00                                  ; $7581: $01 $00 $cf
    dec d                                         ; $7584: $15

jr_0b3_7585:
    jr jr_0b3_75b6                                ; $7585: $18 $2f

    ld c, e                                       ; $7587: $4b
    inc b                                         ; $7588: $04
    inc bc                                        ; $7589: $03
    nop                                           ; $758a: $00
    rst $38                                       ; $758b: $ff
    ld a, a                                       ; $758c: $7f
    jr nc, @+$0a                                  ; $758d: $30 $08

    ld a, b                                       ; $758f: $78
    inc d                                         ; $7590: $14
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    rst $38                                       ; $7593: $ff
    ld a, a                                       ; $7594: $7f
    nop                                           ; $7595: $00
    jr nz, jr_0b3_7610                            ; $7596: $20 $78

    inc d                                         ; $7598: $14
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    rst $38                                       ; $759b: $ff
    ld a, a                                       ; $759c: $7f
    nop                                           ; $759d: $00
    jr nz, jr_0b3_75ac                            ; $759e: $20 $0c

    inc b                                         ; $75a0: $04
    ld hl, $ff00                                  ; $75a1: $21 $00 $ff
    ld a, a                                       ; $75a4: $7f
    and l                                         ; $75a5: $a5
    inc d                                         ; $75a6: $14
    dec c                                         ; $75a7: $0d
    inc b                                         ; $75a8: $04
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    ld d, e                                       ; $75ab: $53

jr_0b3_75ac:
    dec c                                         ; $75ac: $0d
    xor c                                         ; $75ad: $a9
    ld [$19f7], sp                                ; $75ae: $08 $f7 $19
    inc hl                                        ; $75b1: $23
    nop                                           ; $75b2: $00
    ld d, l                                       ; $75b3: $55
    db $10                                        ; $75b4: $10
    push af                                       ; $75b5: $f5

jr_0b3_75b6:
    ld de, $1cdc                                  ; $75b6: $11 $dc $1c
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    ldh a, [rSTAT]                                ; $75bb: $f0 $41
    rst $20                                       ; $75bd: $e7
    jr @-$06                                      ; $75be: $18 $f8

    ld [de], a                                    ; $75c0: $12
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    rst $38                                       ; $75c3: $ff
    ld a, a                                       ; $75c4: $7f
    jr nc, @+$0a                                  ; $75c5: $30 $08

    ld [$0004], sp                                ; $75c7: $08 $04 $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00

jr_0b3_75cc:
    jr nz, @+$32                                  ; $75cc: $20 $30

    ld [$0408], sp                                ; $75ce: $08 $08 $04
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    jr nz, jr_0b3_757f                            ; $75d4: $20 $a9

    ld [$19f7], sp                                ; $75d6: $08 $f7 $19
    ld bc, $5200                                  ; $75d9: $01 $00 $52
    ld [hl], $ff                                  ; $75dc: $36 $ff
    ld [hl], a                                    ; $75de: $77
    add hl, hl                                    ; $75df: $29
    ld hl, $0023                                  ; $75e0: $21 $23 $00

jr_0b3_75e3:
    adc e                                         ; $75e3: $8b
    dec [hl]                                      ; $75e4: $35
    push de                                       ; $75e5: $d5
    ld h, d                                       ; $75e6: $62
    ld d, d                                       ; $75e7: $52
    add hl, bc                                    ; $75e8: $09
    jr nz, @+$06                                  ; $75e9: $20 $04

    ei                                            ; $75eb: $fb
    inc h                                         ; $75ec: $24
    ld e, a                                       ; $75ed: $5f
    ld sp, $0047                                  ; $75ee: $31 $47 $00
    ld b, d                                       ; $75f1: $42
    inc c                                         ; $75f2: $0c
    ld a, e                                       ; $75f3: $7b
    ld l, a                                       ; $75f4: $6f
    jr z, jr_0b3_7614                             ; $75f5: $28 $1d

    adc $39                                       ; $75f7: $ce $39
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    rst $38                                       ; $75fb: $ff
    ld a, a                                       ; $75fc: $7f
    ld [$2e04], sp                                ; $75fd: $08 $04 $2e
    ld [$0000], sp                                ; $7600: $08 $00 $00
    nop                                           ; $7603: $00
    jr nz, jr_0b3_760e                            ; $7604: $20 $08

    inc b                                         ; $7606: $04
    ld l, $08                                     ; $7607: $2e $08
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    jr nz, jr_0b3_75e3                            ; $760c: $20 $d5

jr_0b3_760e:
    ld h, d                                       ; $760e: $62
    ld d, d                                       ; $760f: $52

jr_0b3_7610:
    add hl, bc                                    ; $7610: $09
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    ld a, e                                       ; $7613: $7b

jr_0b3_7614:
    rrca                                          ; $7614: $0f
    rst $38                                       ; $7615: $ff
    ld [hl], e                                    ; $7616: $73
    xor [hl]                                      ; $7617: $ae
    dec b                                         ; $7618: $05
    ld [bc], a                                    ; $7619: $02
    nop                                           ; $761a: $00
    cp l                                          ; $761b: $bd
    ld [hl], a                                    ; $761c: $77
    rlca                                          ; $761d: $07
    add hl, hl                                    ; $761e: $29
    ld h, a                                       ; $761f: $67
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    ld e, [hl]                                    ; $7623: $5e
    dec l                                         ; $7624: $2d
    ld b, a                                       ; $7625: $47
    nop                                           ; $7626: $00
    push bc                                       ; $7627: $c5
    inc d                                         ; $7628: $14
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    ld [hl], e                                    ; $762b: $73
    ld c, d                                       ; $762c: $4a
    ld a, [hl+]                                   ; $762d: $2a
    dec e                                         ; $762e: $1d
    cp l                                          ; $762f: $bd
    ld [hl], a                                    ; $7630: $77
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    rst $38                                       ; $7633: $ff
    ld a, a                                       ; $7634: $7f
    add hl, hl                                    ; $7635: $29
    inc b                                         ; $7636: $04
    inc bc                                        ; $7637: $03
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    jr nz, @+$01                                  ; $763a: $20 $ff

    ld a, a                                       ; $763c: $7f
    add hl, hl                                    ; $763d: $29
    inc b                                         ; $763e: $04
    inc bc                                        ; $763f: $03
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    jr nz, @-$41                                  ; $7642: $20 $bd

    ld [hl], a                                    ; $7644: $77
    rlca                                          ; $7645: $07
    add hl, hl                                    ; $7646: $29
    ld h, a                                       ; $7647: $67
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764a: $00
    rst $18                                       ; $764b: $df
    rrca                                          ; $764c: $0f
    rst $38                                       ; $764d: $ff
    ld a, a                                       ; $764e: $7f
    add h                                         ; $764f: $84
    nop                                           ; $7650: $00
    inc bc                                        ; $7651: $03
    nop                                           ; $7652: $00
    ei                                            ; $7653: $fb
    jr nz, @+$29                                  ; $7654: $20 $27

    add hl, hl                                    ; $7656: $29
    jr nc, jr_0b3_7661                            ; $7657: $30 $08

    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    sub h                                         ; $765b: $94
    inc d                                         ; $765c: $14
    db $dd                                        ; $765d: $dd
    jr nz, jr_0b3_76be                            ; $765e: $20 $5e

    dec l                                         ; $7660: $2d

jr_0b3_7661:
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    daa                                           ; $7663: $27
    dec h                                         ; $7664: $25
    db $10                                        ; $7665: $10
    ld b, $6b                                     ; $7666: $06 $6b
    ld bc, $0000                                  ; $7668: $01 $00 $00
    rst $38                                       ; $766b: $ff
    ld a, a                                       ; $766c: $7f
    ld h, [hl]                                    ; $766d: $66
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    jr nz, jr_0b3_7672                            ; $7670: $20 $00

jr_0b3_7672:
    jr nz, @+$01                                  ; $7672: $20 $ff

    ld a, a                                       ; $7674: $7f
    ld h, [hl]                                    ; $7675: $66
    nop                                           ; $7676: $00

jr_0b3_7677:
    nop                                           ; $7677: $00
    jr nz, jr_0b3_767a                            ; $7678: $20 $00

jr_0b3_767a:
    jr nz, jr_0b3_7677                            ; $767a: $20 $fb

    jr nz, jr_0b3_76a5                            ; $767c: $20 $27

    add hl, hl                                    ; $767e: $29
    jr nc, @+$0a                                  ; $767f: $30 $08

    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    rst $38                                       ; $7683: $ff
    ld a, a                                       ; $7684: $7f
    ld b, [hl]                                    ; $7685: $46
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    jr nz, jr_0b3_7697                            ; $7688: $20 $0d

    inc b                                         ; $768a: $04

jr_0b3_768b:
    rst $10                                       ; $768b: $d7
    inc e                                         ; $768c: $1c
    inc a                                         ; $768d: $3c
    add hl, hl                                    ; $768e: $29
    jr nc, @+$0a                                  ; $768f: $30 $08

    ld d, l                                       ; $7691: $55
    db $10                                        ; $7692: $10
    ei                                            ; $7693: $fb
    inc h                                         ; $7694: $24
    ld e, l                                       ; $7695: $5d
    dec l                                         ; $7696: $2d

jr_0b3_7697:
    sbc c                                         ; $7697: $99
    jr jr_0b3_769a                                ; $7698: $18 $00

jr_0b3_769a:
    nop                                           ; $769a: $00
    dec c                                         ; $769b: $0d
    inc b                                         ; $769c: $04
    dec h                                         ; $769d: $25
    nop                                           ; $769e: $00
    dec [hl]                                      ; $769f: $35
    inc c                                         ; $76a0: $0c
    ld [hl+], a                                   ; $76a1: $22
    nop                                           ; $76a2: $00
    rst $38                                       ; $76a3: $ff
    ld a, a                                       ; $76a4: $7f

jr_0b3_76a5:
    rrca                                          ; $76a5: $0f
    dec b                                         ; $76a6: $05
    nop                                           ; $76a7: $00
    jr nz, jr_0b3_76aa                            ; $76a8: $20 $00

jr_0b3_76aa:
    jr nz, @+$01                                  ; $76aa: $20 $ff

    ld a, a                                       ; $76ac: $7f
    rrca                                          ; $76ad: $0f
    dec b                                         ; $76ae: $05
    nop                                           ; $76af: $00
    jr nz, jr_0b3_76b2                            ; $76b0: $20 $00

jr_0b3_76b2:
    jr nz, jr_0b3_768b                            ; $76b2: $20 $d7

    inc e                                         ; $76b4: $1c
    inc a                                         ; $76b5: $3c
    add hl, hl                                    ; $76b6: $29
    jr nc, jr_0b3_76c1                            ; $76b7: $30 $08

    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    rst $38                                       ; $76bb: $ff
    ld a, a                                       ; $76bc: $7f
    nop                                           ; $76bd: $00

jr_0b3_76be:
    jr nz, jr_0b3_76e4                            ; $76be: $20 $24

    nop                                           ; $76c0: $00

jr_0b3_76c1:
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    ld c, $04                                     ; $76c3: $0e $04
    ret c                                         ; $76c5: $d8

    inc e                                         ; $76c6: $1c
    inc a                                         ; $76c7: $3c
    dec l                                         ; $76c8: $2d
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    rst $38                                       ; $76cb: $ff
    ld a, a                                       ; $76cc: $7f
    rrca                                          ; $76cd: $0f
    dec b                                         ; $76ce: $05
    nop                                           ; $76cf: $00
    jr nz, jr_0b3_76d2                            ; $76d0: $20 $00

jr_0b3_76d2:
    nop                                           ; $76d2: $00
    rst $38                                       ; $76d3: $ff
    ld a, a                                       ; $76d4: $7f
    rrca                                          ; $76d5: $0f
    dec b                                         ; $76d6: $05
    nop                                           ; $76d7: $00

jr_0b3_76d8:
    jr nz, jr_0b3_76da                            ; $76d8: $20 $00

jr_0b3_76da:
    nop                                           ; $76da: $00
    rst $38                                       ; $76db: $ff
    ld a, a                                       ; $76dc: $7f

jr_0b3_76dd:
    nop                                           ; $76dd: $00
    jr nz, jr_0b3_76e0                            ; $76de: $20 $00

jr_0b3_76e0:
    jr nz, jr_0b3_76e2                            ; $76e0: $20 $00

jr_0b3_76e2:
    jr nz, @+$01                                  ; $76e2: $20 $ff

jr_0b3_76e4:
    ld a, a                                       ; $76e4: $7f
    nop                                           ; $76e5: $00
    jr nz, jr_0b3_76e8                            ; $76e6: $20 $00

jr_0b3_76e8:
    jr nz, jr_0b3_76ea                            ; $76e8: $20 $00

jr_0b3_76ea:
    jr nz, jr_0b3_76fa                            ; $76ea: $20 $0e

    inc b                                         ; $76ec: $04
    ret c                                         ; $76ed: $d8

    inc e                                         ; $76ee: $1c
    inc a                                         ; $76ef: $3c
    dec l                                         ; $76f0: $2d
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    rst $38                                       ; $76f3: $ff
    ld a, a                                       ; $76f4: $7f
    nop                                           ; $76f5: $00
    jr nz, jr_0b3_7734                            ; $76f6: $20 $3c

    dec l                                         ; $76f8: $2d
    nop                                           ; $76f9: $00

jr_0b3_76fa:
    nop                                           ; $76fa: $00
    rst $38                                       ; $76fb: $ff
    ld a, a                                       ; $76fc: $7f
    nop                                           ; $76fd: $00
    jr nz, jr_0b3_773c                            ; $76fe: $20 $3c

    dec l                                         ; $7700: $2d
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    jr nz, jr_0b3_7706                            ; $7704: $20 $00

jr_0b3_7706:
    jr nz, jr_0b3_7708                            ; $7706: $20 $00

jr_0b3_7708:
    jr nz, jr_0b3_770a                            ; $7708: $20 $00

jr_0b3_770a:
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    jr nz, jr_0b3_770e                            ; $770c: $20 $00

jr_0b3_770e:
    jr nz, jr_0b3_7710                            ; $770e: $20 $00

jr_0b3_7710:
    jr nz, jr_0b3_7712                            ; $7710: $20 $00

jr_0b3_7712:
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    jr nz, jr_0b3_7716                            ; $7714: $20 $00

jr_0b3_7716:
    jr nz, jr_0b3_7718                            ; $7716: $20 $00

jr_0b3_7718:
    jr nz, jr_0b3_771a                            ; $7718: $20 $00

jr_0b3_771a:
    jr nz, jr_0b3_771c                            ; $771a: $20 $00

jr_0b3_771c:
    jr nz, jr_0b3_771e                            ; $771c: $20 $00

jr_0b3_771e:
    jr nz, jr_0b3_7720                            ; $771e: $20 $00

jr_0b3_7720:
    jr nz, jr_0b3_7722                            ; $7720: $20 $00

jr_0b3_7722:
    jr nz, jr_0b3_7724                            ; $7722: $20 $00

jr_0b3_7724:
    jr nz, jr_0b3_773e                            ; $7724: $20 $18

    ld [hl], a                                    ; $7726: $77
    ld c, b                                       ; $7727: $48
    ld b, l                                       ; $7728: $45
    nop                                           ; $7729: $00
    jr nz, jr_0b3_772c                            ; $772a: $20 $00

jr_0b3_772c:
    jr nz, jr_0b3_7746                            ; $772c: $20 $18

    ld [hl], a                                    ; $772e: $77
    ld c, b                                       ; $772f: $48
    ld b, l                                       ; $7730: $45
    nop                                           ; $7731: $00
    jr nz, jr_0b3_7734                            ; $7732: $20 $00

jr_0b3_7734:
    jr nz, jr_0b3_774e                            ; $7734: $20 $18

    ld [hl], a                                    ; $7736: $77
    ld c, b                                       ; $7737: $48
    ld b, l                                       ; $7738: $45
    nop                                           ; $7739: $00
    jr nz, jr_0b3_76d8                            ; $773a: $20 $9c

jr_0b3_773c:
    ld a, e                                       ; $773c: $7b
    ld [bc], a                                    ; $773d: $02

jr_0b3_773e:
    inc c                                         ; $773e: $0c
    cp l                                          ; $773f: $bd
    ld a, e                                       ; $7740: $7b
    nop                                           ; $7741: $00
    jr nz, jr_0b3_76dd                            ; $7742: $20 $99

    halt                                          ; $7744: $76
    ld [bc], a                                    ; $7745: $02

jr_0b3_7746:
    inc c                                         ; $7746: $0c
    cp d                                          ; $7747: $ba
    ld a, d                                       ; $7748: $7a
    nop                                           ; $7749: $00
    jr nz, jr_0b3_774e                            ; $774a: $20 $02

    inc c                                         ; $774c: $0c
    ld [bc], a                                    ; $774d: $02

jr_0b3_774e:
    inc c                                         ; $774e: $0c
    cp d                                          ; $774f: $ba
    ld a, d                                       ; $7750: $7a
    nop                                           ; $7751: $00
    jr nz, jr_0b3_7756                            ; $7752: $20 $02

    inc c                                         ; $7754: $0c
    ld [bc], a                                    ; $7755: $02

jr_0b3_7756:
    inc c                                         ; $7756: $0c
    cp d                                          ; $7757: $ba
    ld a, d                                       ; $7758: $7a
    nop                                           ; $7759: $00
    jr nz, jr_0b3_775c                            ; $775a: $20 $00

jr_0b3_775c:
    jr nz, jr_0b3_7776                            ; $775c: $20 $18

    ld [hl], a                                    ; $775e: $77
    ld c, b                                       ; $775f: $48
    ld b, l                                       ; $7760: $45
    nop                                           ; $7761: $00
    jr nz, jr_0b3_7764                            ; $7762: $20 $00

jr_0b3_7764:
    jr nz, jr_0b3_777e                            ; $7764: $20 $18

    ld [hl], a                                    ; $7766: $77
    ld c, b                                       ; $7767: $48
    ld b, l                                       ; $7768: $45
    nop                                           ; $7769: $00
    jr nz, jr_0b3_776c                            ; $776a: $20 $00

jr_0b3_776c:
    jr nz, jr_0b3_7786                            ; $776c: $20 $18

    ld [hl], a                                    ; $776e: $77
    ld c, b                                       ; $776f: $48
    ld b, l                                       ; $7770: $45
    ld bc, $ab08                                  ; $7771: $01 $08 $ab
    ld d, l                                       ; $7774: $55
    sub l                                         ; $7775: $95

jr_0b3_7776:
    ld [hl], d                                    ; $7776: $72
    sbc c                                         ; $7777: $99
    ld a, d                                       ; $7778: $7a
    rst $28                                       ; $7779: $ef
    ld c, h                                       ; $777a: $4c
    or e                                          ; $777b: $b3
    ld e, l                                       ; $777c: $5d
    ld a, b                                       ; $777d: $78

jr_0b3_777e:
    ld [hl], d                                    ; $777e: $72
    push af                                       ; $777f: $f5
    ld h, l                                       ; $7780: $65
    nop                                           ; $7781: $00
    jr nz, jr_0b3_779a                            ; $7782: $20 $16

    ld [hl], d                                    ; $7784: $72
    ld [bc], a                                    ; $7785: $02

jr_0b3_7786:
    inc c                                         ; $7786: $0c
    cp d                                          ; $7787: $ba
    ld a, [hl]                                    ; $7788: $7e

jr_0b3_7789:
    nop                                           ; $7789: $00
    jr nz, jr_0b3_77a2                            ; $778a: $20 $16

    ld [hl], d                                    ; $778c: $72
    ld [bc], a                                    ; $778d: $02
    inc c                                         ; $778e: $0c
    cp d                                          ; $778f: $ba
    ld a, [hl]                                    ; $7790: $7e
    nop                                           ; $7791: $00
    jr nz, jr_0b3_7794                            ; $7792: $20 $00

jr_0b3_7794:
    jr nz, jr_0b3_77ae                            ; $7794: $20 $18

    ld [hl], a                                    ; $7796: $77
    ld c, b                                       ; $7797: $48
    ld b, l                                       ; $7798: $45
    nop                                           ; $7799: $00

jr_0b3_779a:
    jr nz, jr_0b3_779c                            ; $779a: $20 $00

jr_0b3_779c:
    jr nz, jr_0b3_77b6                            ; $779c: $20 $18

    ld [hl], a                                    ; $779e: $77
    ld c, b                                       ; $779f: $48
    ld b, l                                       ; $77a0: $45
    nop                                           ; $77a1: $00

jr_0b3_77a2:
    jr nz, jr_0b3_7789                            ; $77a2: $20 $e5

    inc a                                         ; $77a4: $3c
    rst $28                                       ; $77a5: $ef
    ld h, c                                       ; $77a6: $61
    dec b                                         ; $77a7: $05
    dec a                                         ; $77a8: $3d
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    ld sp, $7855                                  ; $77ab: $31 $55 $78

jr_0b3_77ae:
    ld [hl], d                                    ; $77ae: $72
    ld b, $3d                                     ; $77af: $06 $3d

jr_0b3_77b1:
    inc bc                                        ; $77b1: $03
    inc d                                         ; $77b2: $14
    ld a, [hl+]                                   ; $77b3: $2a
    jr c, @-$51                                   ; $77b4: $38 $ad

jr_0b3_77b6:
    ld c, b                                       ; $77b6: $48
    rlca                                          ; $77b7: $07
    jr z, jr_0b3_77ba                             ; $77b8: $28 $00

jr_0b3_77ba:
    jr nz, jr_0b3_77ca                            ; $77ba: $20 $0e

    ld c, l                                       ; $77bc: $4d
    or e                                          ; $77bd: $b3
    ld h, l                                       ; $77be: $65
    inc bc                                        ; $77bf: $03
    stop                                          ; $77c0: $10 $00
    jr nz, jr_0b3_77d2                            ; $77c2: $20 $0e

    ld c, l                                       ; $77c4: $4d
    or e                                          ; $77c5: $b3
    ld h, l                                       ; $77c6: $65
    inc bc                                        ; $77c7: $03
    stop                                          ; $77c8: $10 $00

jr_0b3_77ca:
    jr nz, jr_0b3_77b1                            ; $77ca: $20 $e5

jr_0b3_77cc:
    inc a                                         ; $77cc: $3c
    rst $28                                       ; $77cd: $ef
    ld h, c                                       ; $77ce: $61
    dec b                                         ; $77cf: $05
    dec a                                         ; $77d0: $3d
    nop                                           ; $77d1: $00

jr_0b3_77d2:
    jr nz, @-$19                                  ; $77d2: $20 $e5

    inc a                                         ; $77d4: $3c
    rst $28                                       ; $77d5: $ef
    ld h, c                                       ; $77d6: $61
    dec b                                         ; $77d7: $05
    dec a                                         ; $77d8: $3d
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    ld l, d                                       ; $77db: $6a
    ld b, l                                       ; $77dc: $45
    jr nc, jr_0b3_7835                            ; $77dd: $30 $56

    nop                                           ; $77df: $00
    jr nz, @+$04                                  ; $77e0: $20 $02

    ld [$7278], sp                                ; $77e2: $08 $78 $72
    ld l, h                                       ; $77e5: $6c
    ld b, b                                       ; $77e6: $40
    db $10                                        ; $77e7: $10
    ld d, c                                       ; $77e8: $51
    ld bc, $9b14                                  ; $77e9: $01 $14 $9b
    ld [hl], a                                    ; $77ec: $77
    ld [$042c], sp                                ; $77ed: $08 $2c $04
    jr jr_0b3_77f3                                ; $77f0: $18 $01

    inc c                                         ; $77f2: $0c

jr_0b3_77f3:
    ret nc                                        ; $77f3: $d0

    ld d, h                                       ; $77f4: $54
    rla                                           ; $77f5: $17
    ld a, d                                       ; $77f6: $7a
    nop                                           ; $77f7: $00
    inc e                                         ; $77f8: $1c
    nop                                           ; $77f9: $00
    jr nz, jr_0b3_77cc                            ; $77fa: $20 $d0

    ld d, h                                       ; $77fc: $54
    rla                                           ; $77fd: $17
    ld a, d                                       ; $77fe: $7a
    nop                                           ; $77ff: $00
    inc e                                         ; $7800: $1c
    nop                                           ; $7801: $00
    jr nz, @+$6c                                  ; $7802: $20 $6a

    ld b, l                                       ; $7804: $45
    jr nc, jr_0b3_785d                            ; $7805: $30 $56

    nop                                           ; $7807: $00
    jr nz, jr_0b3_780a                            ; $7808: $20 $00

jr_0b3_780a:
    jr nz, jr_0b3_7876                            ; $780a: $20 $6a

    ld b, l                                       ; $780c: $45
    jr nc, jr_0b3_7865                            ; $780d: $30 $56

    nop                                           ; $780f: $00
    jr nz, jr_0b3_7812                            ; $7810: $20 $00

jr_0b3_7812:
    inc b                                         ; $7812: $04
    ld d, c                                       ; $7813: $51
    ld e, d                                       ; $7814: $5a
    or $66                                        ; $7815: $f6 $66
    ld a, [hl-]                                   ; $7817: $3a
    ld [hl], a                                    ; $7818: $77
    add hl, bc                                    ; $7819: $09
    inc [hl]                                      ; $781a: $34
    ld [hl], d                                    ; $781b: $72
    ld e, c                                       ; $781c: $59
    adc l                                         ; $781d: $8d
    ld c, b                                       ; $781e: $48
    ld d, a                                       ; $781f: $57
    ld l, [hl]                                    ; $7820: $6e
    ld bc, $1704                                  ; $7821: $01 $04 $17
    ld l, e                                       ; $7824: $6b
    db $dd                                        ; $7825: $dd
    ld a, e                                       ; $7826: $7b
    inc b                                         ; $7827: $04
    jr jr_0b3_782b                                ; $7828: $18 $01

    inc c                                         ; $782a: $0c

jr_0b3_782b:
    rst $30                                       ; $782b: $f7
    ld l, d                                       ; $782c: $6a
    sbc $7f                                       ; $782d: $de $7f
    nop                                           ; $782f: $00
    jr nz, jr_0b3_7832                            ; $7830: $20 $00

jr_0b3_7832:
    jr nz, jr_0b3_782b                            ; $7832: $20 $f7

    ld l, d                                       ; $7834: $6a

jr_0b3_7835:
    sbc $7f                                       ; $7835: $de $7f
    nop                                           ; $7837: $00
    jr nz, jr_0b3_783a                            ; $7838: $20 $00

jr_0b3_783a:
    jr nz, @+$53                                  ; $783a: $20 $51

    ld e, d                                       ; $783c: $5a
    or $66                                        ; $783d: $f6 $66
    ld a, [hl-]                                   ; $783f: $3a
    ld [hl], a                                    ; $7840: $77
    nop                                           ; $7841: $00

jr_0b3_7842:
    jr nz, jr_0b3_78b6                            ; $7842: $20 $72

    ld e, [hl]                                    ; $7844: $5e
    ld e, d                                       ; $7845: $5a
    ld [hl], e                                    ; $7846: $73
    or h                                          ; $7847: $b4
    ld h, d                                       ; $7848: $62
    ld bc, $9904                                  ; $7849: $01 $04 $99
    halt                                          ; $784c: $76
    or e                                          ; $784d: $b3
    ld [bc], a                                    ; $784e: $02
    sbc $7b                                       ; $784f: $de $7b
    dec b                                         ; $7851: $05
    inc e                                         ; $7852: $1c
    ld l, h                                       ; $7853: $6c
    ld b, b                                       ; $7854: $40
    ld sp, $0955                                  ; $7855: $31 $55 $09
    jr nc, jr_0b3_785a                            ; $7858: $30 $00

jr_0b3_785a:
    inc b                                         ; $785a: $04
    or e                                          ; $785b: $b3
    ld [bc], a                                    ; $785c: $02

jr_0b3_785d:
    ld a, d                                       ; $785d: $7a
    ld [hl], e                                    ; $785e: $73
    inc b                                         ; $785f: $04
    inc d                                         ; $7860: $14
    nop                                           ; $7861: $00
    jr nz, jr_0b3_783a                            ; $7862: $20 $d6

    ld h, [hl]                                    ; $7864: $66

jr_0b3_7865:
    sbc $7b                                       ; $7865: $de $7b
    ld e, d                                       ; $7867: $5a
    ld [hl], e                                    ; $7868: $73
    nop                                           ; $7869: $00
    jr nz, jr_0b3_7842                            ; $786a: $20 $d6

    ld h, [hl]                                    ; $786c: $66
    sbc $7b                                       ; $786d: $de $7b
    ld e, d                                       ; $786f: $5a
    ld [hl], e                                    ; $7870: $73
    nop                                           ; $7871: $00
    jr nz, jr_0b3_7877                            ; $7872: $20 $03

    db $10                                        ; $7874: $10
    or e                                          ; $7875: $b3

jr_0b3_7876:
    ld [bc], a                                    ; $7876: $02

jr_0b3_7877:
    sbc $7b                                       ; $7877: $de $7b
    nop                                           ; $7879: $00

jr_0b3_787a:
    jr jr_0b3_78ac                                ; $787a: $18 $30

    ld e, d                                       ; $787c: $5a

jr_0b3_787d:
    sbc $7b                                       ; $787d: $de $7b
    or $66                                        ; $787f: $f6 $66
    ld bc, $3108                                  ; $7881: $01 $08 $31
    ld a, [bc]                                    ; $7884: $0a
    adc l                                         ; $7885: $8d
    ld b, h                                       ; $7886: $44
    or $71                                        ; $7887: $f6 $71
    ld [bc], a                                    ; $7889: $02
    inc c                                         ; $788a: $0c
    rlca                                          ; $788b: $07
    jr z, jr_0b3_7892                             ; $788c: $28 $04

    jr jr_0b3_78ba                                ; $788e: $18 $2a

    jr c, @+$03                                   ; $7890: $38 $01

jr_0b3_7892:
    ld [$02b3], sp                                ; $7892: $08 $b3 $02
    ld h, $00                                     ; $7895: $26 $00
    inc b                                         ; $7897: $04
    inc d                                         ; $7898: $14
    nop                                           ; $7899: $00
    db $10                                        ; $789a: $10
    sub $66                                       ; $789b: $d6 $66
    or e                                          ; $789d: $b3
    ld [bc], a                                    ; $789e: $02
    sbc $7b                                       ; $789f: $de $7b
    nop                                           ; $78a1: $00
    jr nz, jr_0b3_787a                            ; $78a2: $20 $d6

    ld h, [hl]                                    ; $78a4: $66
    or e                                          ; $78a5: $b3
    ld [bc], a                                    ; $78a6: $02
    sbc $7b                                       ; $78a7: $de $7b
    nop                                           ; $78a9: $00
    jr nz, jr_0b3_7876                            ; $78aa: $20 $ca

jr_0b3_78ac:
    jr nc, jr_0b3_78b2                            ; $78ac: $30 $04

    jr @+$71                                      ; $78ae: $18 $6f

    ld c, l                                       ; $78b0: $4d
    inc bc                                        ; $78b1: $03

jr_0b3_78b2:
    db $10                                        ; $78b2: $10
    db $ed                                        ; $78b3: $ed

jr_0b3_78b4:
    ld b, h                                       ; $78b4: $44
    inc d                                         ; $78b5: $14

jr_0b3_78b6:
    ld h, d                                       ; $78b6: $62
    ld b, a                                       ; $78b7: $47
    jr z, @+$03                                   ; $78b8: $28 $01

jr_0b3_78ba:
    ld [$210d], sp                                ; $78ba: $08 $0d $21
    ld [hl], c                                    ; $78bd: $71
    dec l                                         ; $78be: $2d
    inc b                                         ; $78bf: $04
    db $10                                        ; $78c0: $10
    ld [bc], a                                    ; $78c1: $02
    inc c                                         ; $78c2: $0c
    jp z, Jump_0b3_5020                           ; $78c3: $ca $20 $50

    add hl, hl                                    ; $78c6: $29
    sub d                                         ; $78c7: $92
    ld sp, $0801                                  ; $78c8: $31 $01 $08
    ld c, $21                                     ; $78cb: $0e $21
    ld h, $00                                     ; $78cd: $26 $00
    ld l, c                                       ; $78cf: $69

jr_0b3_78d0:
    ld [$1003], sp                                ; $78d0: $08 $03 $10
    ld c, $49                                     ; $78d3: $0e $49
    inc d                                         ; $78d5: $14
    ld h, d                                       ; $78d6: $62
    ld b, a                                       ; $78d7: $47
    inc h                                         ; $78d8: $24
    nop                                           ; $78d9: $00
    inc e                                         ; $78da: $1c
    or h                                          ; $78db: $b4
    ld h, d                                       ; $78dc: $62
    ld [bc], a                                    ; $78dd: $02
    db $10                                        ; $78de: $10
    inc bc                                        ; $78df: $03
    stop                                          ; $78e0: $10 $00
    jr nz, jr_0b3_794c                            ; $78e2: $20 $68

    inc l                                         ; $78e4: $2c
    cpl                                           ; $78e5: $2f
    ld c, l                                       ; $78e6: $4d
    inc b                                         ; $78e7: $04
    inc d                                         ; $78e8: $14
    ld b, a                                       ; $78e9: $47
    jr z, jr_0b3_787d                             ; $78ea: $28 $91

    ld d, l                                       ; $78ec: $55
    db $f4                                        ; $78ed: $f4
    ld e, l                                       ; $78ee: $5d
    db $ec                                        ; $78ef: $ec
    ld b, b                                       ; $78f0: $40
    inc bc                                        ; $78f1: $03
    inc b                                         ; $78f2: $04
    inc c                                         ; $78f3: $0c
    ld hl, $1846                                  ; $78f4: $21 $46 $18
    sub c                                         ; $78f7: $91
    dec l                                         ; $78f8: $2d
    ld [hl+], a                                   ; $78f9: $22
    nop                                           ; $78fa: $00
    inc c                                         ; $78fb: $0c
    dec e                                         ; $78fc: $1d
    and a                                         ; $78fd: $a7
    inc d                                         ; $78fe: $14
    ld [hl], c                                    ; $78ff: $71
    dec l                                         ; $7900: $2d
    ld [bc], a                                    ; $7901: $02
    inc c                                         ; $7902: $0c
    ld c, $21                                     ; $7903: $0e $21
    swap h                                        ; $7905: $cb $34
    ld b, [hl]                                    ; $7907: $46
    inc b                                         ; $7908: $04
    adc c                                         ; $7909: $89
    inc l                                         ; $790a: $2c
    db $d3                                        ; $790b: $d3
    ld e, l                                       ; $790c: $5d
    ld c, a                                       ; $790d: $4f
    ld c, c                                       ; $790e: $49

jr_0b3_790f:
    dec [hl]                                      ; $790f: $35
    ld h, [hl]                                    ; $7910: $66
    nop                                           ; $7911: $00
    jr nz, jr_0b3_7984                            ; $7912: $20 $70

    ld d, c                                       ; $7914: $51
    ld [hl], a                                    ; $7915: $77
    ld l, [hl]                                    ; $7916: $6e
    inc bc                                        ; $7917: $03
    db $10                                        ; $7918: $10
    ld bc, $ee18                                  ; $7919: $01 $18 $ee
    ld e, l                                       ; $791c: $5d
    add [hl]                                      ; $791d: $86
    jr nc, jr_0b3_78b4                            ; $791e: $30 $94

    ld l, [hl]                                    ; $7920: $6e

jr_0b3_7921:
    ld l, b                                       ; $7921: $68
    jr nc, jr_0b3_7994                            ; $7922: $30 $70

    ld d, c                                       ; $7924: $51
    db $ed                                        ; $7925: $ed
    ld b, h                                       ; $7926: $44
    db $d3                                        ; $7927: $d3
    ld e, l                                       ; $7928: $5d
    inc b                                         ; $7929: $04
    inc d                                         ; $792a: $14
    srl b                                         ; $792b: $cb $38
    sub c                                         ; $792d: $91
    ld b, c                                       ; $792e: $41
    adc b                                         ; $792f: $88
    jr nz, jr_0b3_7936                            ; $7930: $20 $04

    inc b                                         ; $7932: $04
    ld [hl], b                                    ; $7933: $70
    dec l                                         ; $7934: $2d
    ld h, a                                       ; $7935: $67

jr_0b3_7936:
    inc h                                         ; $7936: $24
    db $eb                                        ; $7937: $eb
    inc e                                         ; $7938: $1c
    ld h, $20                                     ; $7939: $26 $20
    dec l                                         ; $793b: $2d
    ld b, c                                       ; $793c: $41
    xor d                                         ; $793d: $aa
    jr nc, jr_0b3_78d0                            ; $793e: $30 $90

    ld c, l                                       ; $7940: $4d
    dec h                                         ; $7941: $25
    inc e                                         ; $7942: $1c
    dec c                                         ; $7943: $0d
    ld b, c                                       ; $7944: $41
    or d                                          ; $7945: $b2
    ld d, l                                       ; $7946: $55
    ld l, b                                       ; $7947: $68
    inc l                                         ; $7948: $2c
    nop                                           ; $7949: $00
    inc e                                         ; $794a: $1c
    db $ec                                        ; $794b: $ec

jr_0b3_794c:
    inc a                                         ; $794c: $3c
    ld b, a                                       ; $794d: $47
    jr z, jr_0b3_7985                             ; $794e: $28 $35

    ld h, [hl]                                    ; $7950: $66
    nop                                           ; $7951: $00
    ld [$7318], sp                                ; $7952: $08 $18 $73
    or e                                          ; $7955: $b3
    ld [bc], a                                    ; $7956: $02
    ld c, c                                       ; $7957: $49
    ld c, l                                       ; $7958: $4d
    inc b                                         ; $7959: $04
    jr jr_0b3_790f                                ; $795a: $18 $b3

    ld [bc], a                                    ; $795c: $02
    ld l, e                                       ; $795d: $6b
    jr nc, jr_0b3_798f                            ; $795e: $30 $2f

    ld c, l                                       ; $7960: $4d
    ld l, d                                       ; $7961: $6a
    inc h                                         ; $7962: $24
    ld a, h                                       ; $7963: $7c
    nop                                           ; $7964: $00
    ld l, a                                       ; $7965: $6f
    ld c, c                                       ; $7966: $49
    sbc [hl]                                      ; $7967: $9e
    ld bc, $0499                                  ; $7968: $01 $99 $04
    dec l                                         ; $796b: $2d
    ld b, c                                       ; $796c: $41
    cp a                                          ; $796d: $bf
    dec b                                         ; $796e: $05
    db $d3                                        ; $796f: $d3
    ld e, c                                       ; $7970: $59
    inc bc                                        ; $7971: $03
    db $10                                        ; $7972: $10
    ld [hl], a                                    ; $7973: $77
    db $10                                        ; $7974: $10
    dec c                                         ; $7975: $0d
    dec a                                         ; $7976: $3d
    ld a, h                                       ; $7977: $7c
    add hl, bc                                    ; $7978: $09
    inc bc                                        ; $7979: $03
    db $10                                        ; $797a: $10
    sub e                                         ; $797b: $93
    ld [bc], a                                    ; $797c: $02
    ld l, l                                       ; $797d: $6d
    nop                                           ; $797e: $00
    dec b                                         ; $797f: $05
    jr nz, jr_0b3_7982                            ; $7980: $20 $00

jr_0b3_7982:
    inc e                                         ; $7982: $1c
    sub e                                         ; $7983: $93

jr_0b3_7984:
    ld [bc], a                                    ; $7984: $02

jr_0b3_7985:
    jr nc, jr_0b3_79e9                            ; $7985: $30 $62

    sbc $7f                                       ; $7987: $de $7f
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    sub h                                         ; $798b: $94
    ld l, [hl]                                    ; $798c: $6e
    or e                                          ; $798d: $b3
    ld [bc], a                                    ; $798e: $02

jr_0b3_798f:
    cp l                                          ; $798f: $bd
    ld a, e                                       ; $7990: $7b
    inc bc                                        ; $7991: $03
    db $10                                        ; $7992: $10
    or e                                          ; $7993: $b3

jr_0b3_7994:
    ld [bc], a                                    ; $7994: $02
    ld b, a                                       ; $7995: $47
    jr z, jr_0b3_7921                             ; $7996: $28 $89

    inc [hl]                                      ; $7998: $34
    ld l, b                                       ; $7999: $68
    inc l                                         ; $799a: $2c
    db $fc                                        ; $799b: $fc
    nop                                           ; $799c: $00
    dec d                                         ; $799d: $15
    ld h, d                                       ; $799e: $62
    ld d, d                                       ; $799f: $52
    inc e                                         ; $79a0: $1c
    inc bc                                        ; $79a1: $03
    db $10                                        ; $79a2: $10
    xor d                                         ; $79a3: $aa
    inc [hl]                                      ; $79a4: $34
    ld [hl], a                                    ; $79a5: $77
    inc c                                         ; $79a6: $0c
    ld c, a                                       ; $79a7: $4f
    ld c, l                                       ; $79a8: $4d
    inc bc                                        ; $79a9: $03
    db $10                                        ; $79aa: $10
    cp a                                          ; $79ab: $bf
    ld bc, $006f                                  ; $79ac: $01 $6f $00
    ld l, b                                       ; $79af: $68
    jr z, jr_0b3_7a20                             ; $79b0: $28 $6e

    nop                                           ; $79b2: $00
    or d                                          ; $79b3: $b2
    ld [bc], a                                    ; $79b4: $02
    dec e                                         ; $79b5: $1d
    ld bc, $46ff                                  ; $79b6: $01 $ff $46
    nop                                           ; $79b9: $00
    inc e                                         ; $79ba: $1c
    or d                                          ; $79bb: $b2
    ld [bc], a                                    ; $79bc: $02
    sub h                                         ; $79bd: $94
    ld l, [hl]                                    ; $79be: $6e
    ld b, $41                                     ; $79bf: $06 $41
    nop                                           ; $79c1: $00
    ld [$6610], sp                                ; $79c2: $08 $10 $66
    sub d                                         ; $79c5: $92
    ld [bc], a                                    ; $79c6: $02
    jr jr_0b3_7a40                                ; $79c7: $18 $77

    inc bc                                        ; $79c9: $03
    db $10                                        ; $79ca: $10
    or d                                          ; $79cb: $b2
    ld [bc], a                                    ; $79cc: $02
    sub d                                         ; $79cd: $92
    ld b, $b2                                     ; $79ce: $06 $b2
    ld b, $03                                     ; $79d0: $06 $03
    inc c                                         ; $79d2: $0c
    ld [hl], c                                    ; $79d3: $71
    ld a, [de]                                    ; $79d4: $1a
    rst $38                                       ; $79d5: $ff
    ld a, a                                       ; $79d6: $7f
    ld h, [hl]                                    ; $79d7: $66
    inc a                                         ; $79d8: $3c
    ld [hl+], a                                   ; $79d9: $22
    ld [$3e13], sp                                ; $79da: $08 $13 $3e
    ld hl, $ff68                                  ; $79dd: $21 $68 $ff
    ld a, a                                       ; $79e0: $7f
    ld l, h                                       ; $79e1: $6c
    nop                                           ; $79e2: $00
    ld a, h                                       ; $79e3: $7c
    nop                                           ; $79e4: $00
    cp a                                          ; $79e5: $bf
    ld b, [hl]                                    ; $79e6: $46
    sbc e                                         ; $79e7: $9b
    add hl, bc                                    ; $79e8: $09

jr_0b3_79e9:
    ld l, [hl]                                    ; $79e9: $6e
    nop                                           ; $79ea: $00
    sub c                                         ; $79eb: $91
    ld b, $f8                                     ; $79ec: $06 $f8
    dec l                                         ; $79ee: $2d
    rst $18                                       ; $79ef: $df
    ld b, [hl]                                    ; $79f0: $46
    nop                                           ; $79f1: $00
    inc e                                         ; $79f2: $1c
    adc $59                                       ; $79f3: $ce $59
    sub c                                         ; $79f5: $91
    ld b, $e5                                     ; $79f6: $06 $e5
    inc a                                         ; $79f8: $3c
    nop                                           ; $79f9: $00
    db $10                                        ; $79fa: $10
    sub b                                         ; $79fb: $90
    ld b, $51                                     ; $79fc: $06 $51
    ld h, [hl]                                    ; $79fe: $66
    ld b, $3d                                     ; $79ff: $06 $3d
    sub b                                         ; $7a01: $90
    ld b, $91                                     ; $7a02: $06 $91
    ld b, $51                                     ; $7a04: $06 $51
    ld h, [hl]                                    ; $7a06: $66
    ld b, $3d                                     ; $7a07: $06 $3d
    ld b, e                                       ; $7a09: $43
    ld [$1a53], sp                                ; $7a0a: $08 $53 $1a
    ld hl, $ff68                                  ; $7a0d: $21 $68 $ff
    ld a, a                                       ; $7a10: $7f
    add l                                         ; $7a11: $85
    inc b                                         ; $7a12: $04
    sub $2d                                       ; $7a13: $d6 $2d
    ld hl, $ff60                                  ; $7a15: $21 $60 $ff
    ld a, a                                       ; $7a18: $7f
    ld c, e                                       ; $7a19: $4b
    nop                                           ; $7a1a: $00
    db $dd                                        ; $7a1b: $dd
    nop                                           ; $7a1c: $00
    sub a                                         ; $7a1d: $97
    dec h                                         ; $7a1e: $25
    cp a                                          ; $7a1f: $bf

jr_0b3_7a20:
    ld b, [hl]                                    ; $7a20: $46
    ld l, [hl]                                    ; $7a21: $6e
    nop                                           ; $7a22: $00
    ld d, b                                       ; $7a23: $50
    ld b, $1c                                     ; $7a24: $06 $1c
    ld h, $7c                                     ; $7a26: $26 $7c
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    inc e                                         ; $7a2a: $1c
    cpl                                           ; $7a2b: $2f
    ld d, [hl]                                    ; $7a2c: $56
    ld h, $3d                                     ; $7a2d: $26 $3d
    ld [hl], b                                    ; $7a2f: $70
    ld b, $00                                     ; $7a30: $06 $00
    inc d                                         ; $7a32: $14
    ld c, b                                       ; $7a33: $48
    ld b, l                                       ; $7a34: $45
    ld l, a                                       ; $7a35: $6f
    ld b, $51                                     ; $7a36: $06 $51
    ld e, d                                       ; $7a38: $5a
    ld l, a                                       ; $7a39: $6f
    ld a, [bc]                                    ; $7a3a: $0a
    ld [hl], b                                    ; $7a3b: $70
    ld b, $90                                     ; $7a3c: $06 $90
    ld b, $51                                     ; $7a3e: $06 $51

jr_0b3_7a40:
    ld e, d                                       ; $7a40: $5a
    adc c                                         ; $7a41: $89
    inc b                                         ; $7a42: $04
    ld l, a                                       ; $7a43: $6f
    ld b, $f6                                     ; $7a44: $06 $f6
    ld sp, $3a5b                                  ; $7a46: $31 $5b $3a
    cp b                                          ; $7a49: $b8
    add hl, hl                                    ; $7a4a: $29
    dec sp                                        ; $7a4b: $3b
    ld a, [hl-]                                   ; $7a4c: $3a
    sbc [hl]                                      ; $7a4d: $9e
    ld b, [hl]                                    ; $7a4e: $46
    ld a, h                                       ; $7a4f: $7c
    ld b, d                                       ; $7a50: $42
    ld l, [hl]                                    ; $7a51: $6e
    nop                                           ; $7a52: $00
    ld a, h                                       ; $7a53: $7c
    nop                                           ; $7a54: $00
    ld sp, hl                                     ; $7a55: $f9
    ld sp, $01bf                                  ; $7a56: $31 $bf $01
    ld c, h                                       ; $7a59: $4c
    nop                                           ; $7a5a: $00
    ld c, [hl]                                    ; $7a5b: $4e
    ld b, $df                                     ; $7a5c: $06 $df
    dec b                                         ; $7a5e: $05
    ld a, h                                       ; $7a5f: $7c
    nop                                           ; $7a60: $00
    nop                                           ; $7a61: $00
    inc e                                         ; $7a62: $1c
    dec l                                         ; $7a63: $2d
    ld [de], a                                    ; $7a64: $12
    rrca                                          ; $7a65: $0f
    ld e, d                                       ; $7a66: $5a
    ld e, d                                       ; $7a67: $5a
    ld [hl], e                                    ; $7a68: $73
    nop                                           ; $7a69: $00
    inc d                                         ; $7a6a: $14
    ld c, l                                       ; $7a6b: $4d
    ld a, [bc]                                    ; $7a6c: $0a
    ld c, b                                       ; $7a6d: $48
    ld b, l                                       ; $7a6e: $45
    ld d, c                                       ; $7a6f: $51
    ld e, d                                       ; $7a70: $5a
    ld l, [hl]                                    ; $7a71: $6e
    nop                                           ; $7a72: $00
    ld c, l                                       ; $7a73: $4d
    ld a, [bc]                                    ; $7a74: $0a
    ld l, [hl]                                    ; $7a75: $6e
    ld a, [bc]                                    ; $7a76: $0a
    ld l, l                                       ; $7a77: $6d
    ld a, [bc]                                    ; $7a78: $0a
    ld l, b                                       ; $7a79: $68
    inc b                                         ; $7a7a: $04
    ld e, h                                       ; $7a7b: $5c
    ld a, [hl-]                                   ; $7a7c: $3a
    call c, $dc00                                 ; $7a7d: $dc $00 $dc
    ld d, d                                       ; $7a80: $52
    xor b                                         ; $7a81: $a8
    inc b                                         ; $7a82: $04
    ld a, [$5d31]                                 ; $7a83: $fa $31 $5d
    ld b, d                                       ; $7a86: $42
    sbc [hl]                                      ; $7a87: $9e
    ld c, d                                       ; $7a88: $4a
    ld c, d                                       ; $7a89: $4a
    nop                                           ; $7a8a: $00
    or l                                          ; $7a8b: $b5
    ld [hl], l                                    ; $7a8c: $75
    ld a, h                                       ; $7a8d: $7c
    nop                                           ; $7a8e: $00
    cp l                                          ; $7a8f: $bd
    add hl, bc                                    ; $7a90: $09
    ld c, h                                       ; $7a91: $4c
    ld a, [bc]                                    ; $7a92: $0a
    ld l, [hl]                                    ; $7a93: $6e
    nop                                           ; $7a94: $00
    ld a, h                                       ; $7a95: $7c
    nop                                           ; $7a96: $00
    cp a                                          ; $7a97: $bf
    ld bc, $1c00                                  ; $7a98: $01 $00 $1c
    ld c, h                                       ; $7a9b: $4c
    ld a, [bc]                                    ; $7a9c: $0a
    jr nc, @+$5c                                  ; $7a9d: $30 $5a

    ld e, c                                       ; $7a9f: $59
    ld l, a                                       ; $7aa0: $6f
    nop                                           ; $7aa1: $00
    jr jr_0b3_7acb                                ; $7aa2: $18 $27

    ld b, c                                       ; $7aa4: $41
    ld [hl], d                                    ; $7aa5: $72
    ld e, [hl]                                    ; $7aa6: $5e
    ld c, h                                       ; $7aa7: $4c
    ld a, [bc]                                    ; $7aa8: $0a
    ld c, h                                       ; $7aa9: $4c
    ld a, [bc]                                    ; $7aaa: $0a
    ld c, h                                       ; $7aab: $4c
    ld c, $72                                     ; $7aac: $0e $72
    ld e, [hl]                                    ; $7aae: $5e
    ld c, h                                       ; $7aaf: $4c
    ld a, [bc]                                    ; $7ab0: $0a
    ld [bc], a                                    ; $7ab1: $02
    inc c                                         ; $7ab2: $0c
    sub h                                         ; $7ab3: $94
    ld l, l                                       ; $7ab4: $6d
    inc a                                         ; $7ab5: $3c
    ld a, [hl-]                                   ; $7ab6: $3a
    adc d                                         ; $7ab7: $8a
    inc b                                         ; $7ab8: $04
    jr nc, jr_0b3_7ad4                            ; $7ab9: $30 $19

    db $dd                                        ; $7abb: $dd
    ld a, e                                       ; $7abc: $7b
    sub d                                         ; $7abd: $92
    ld d, d                                       ; $7abe: $52
    ld a, e                                       ; $7abf: $7b
    ld b, d                                       ; $7ac0: $42
    ld c, d                                       ; $7ac1: $4a
    ld [$7194], sp                                ; $7ac2: $08 $94 $71
    or a                                          ; $7ac5: $b7
    add hl, hl                                    ; $7ac6: $29
    dec e                                         ; $7ac7: $1d
    ld bc, $1404                                  ; $7ac8: $01 $04 $14

jr_0b3_7acb:
    ld l, [hl]                                    ; $7acb: $6e
    nop                                           ; $7acc: $00
    dec bc                                        ; $7acd: $0b
    ld a, [bc]                                    ; $7ace: $0a
    dec e                                         ; $7acf: $1d
    ld bc, $1c00                                  ; $7ad0: $01 $00 $1c
    or h                                          ; $7ad3: $b4

jr_0b3_7ad4:
    ld h, d                                       ; $7ad4: $62
    dec hl                                        ; $7ad5: $2b
    ld c, $ff                                     ; $7ad6: $0e $ff
    ld a, a                                       ; $7ad8: $7f
    nop                                           ; $7ad9: $00
    jr @+$2c                                      ; $7ada: $18 $2a

    ld c, $ab                                     ; $7adc: $0e $ab
    ld c, l                                       ; $7ade: $4d
    sub $66                                       ; $7adf: $d6 $66
    inc b                                         ; $7ae1: $04
    inc d                                         ; $7ae2: $14
    add hl, hl                                    ; $7ae3: $29
    ld c, $73                                     ; $7ae4: $0e $73
    ld l, c                                       ; $7ae6: $69
    dec hl                                        ; $7ae7: $2b
    ld c, $8a                                     ; $7ae8: $0e $8a
    ld [$6152], sp                                ; $7aea: $08 $52 $61
    sbc h                                         ; $7aed: $9c
    ld [hl], e                                    ; $7aee: $73
    rla                                           ; $7aef: $17
    ld de, $14ca                                  ; $7af0: $11 $ca $14
    cp h                                          ; $7af3: $bc
    ld [hl], a                                    ; $7af4: $77
    ld d, d                                       ; $7af5: $52
    ld c, d                                       ; $7af6: $4a
    ld a, [de]                                    ; $7af7: $1a
    ld [hl], $00                                  ; $7af8: $36 $00
    nop                                           ; $7afa: $00
    jr nc, jr_0b3_7b5a                            ; $7afb: $30 $5d

    dec e                                         ; $7afd: $1d
    ld bc, $0c6c                                  ; $7afe: $01 $6c $0c
    add hl, hl                                    ; $7b01: $29
    ld [$75b5], sp                                ; $7b02: $08 $b5 $75
    ld [$bf0e], sp                                ; $7b05: $08 $0e $bf
    ld bc, $1c00                                  ; $7b08: $01 $00 $1c
    or h                                          ; $7b0b: $b4
    ld h, d                                       ; $7b0c: $62
    add hl, hl                                    ; $7b0d: $29
    ld c, $bd                                     ; $7b0e: $0e $bd
    ld [hl], a                                    ; $7b10: $77
    nop                                           ; $7b11: $00
    jr @-$74                                      ; $7b12: $18 $8a

    ld c, c                                       ; $7b14: $49
    ld a, d                                       ; $7b15: $7a
    ld [hl], e                                    ; $7b16: $73
    ld [hl], d                                    ; $7b17: $72
    ld e, d                                       ; $7b18: $5a
    inc b                                         ; $7b19: $04
    inc d                                         ; $7b1a: $14
    jr nc, jr_0b3_7b76                            ; $7b1b: $30 $59

    ld [$9312], sp                                ; $7b1d: $08 $12 $93
    ld l, c                                       ; $7b20: $69
    ld l, h                                       ; $7b21: $6c
    inc b                                         ; $7b22: $04
    ld a, d                                       ; $7b23: $7a
    ld l, a                                       ; $7b24: $6f
    jr jr_0b3_7b34                                ; $7b25: $18 $0d

    ld b, [hl]                                    ; $7b27: $46
    inc h                                         ; $7b28: $24
    call z, Call_000_1b10                         ; $7b29: $cc $10 $1b
    ld a, [hl-]                                   ; $7b2c: $3a
    cp h                                          ; $7b2d: $bc
    ld [hl], a                                    ; $7b2e: $77
    sub a                                         ; $7b2f: $97
    dec h                                         ; $7b30: $25
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    inc c                                         ; $7b33: $0c

jr_0b3_7b34:
    dec a                                         ; $7b34: $3d
    add a                                         ; $7b35: $87
    inc e                                         ; $7b36: $1c
    ld d, c                                       ; $7b37: $51
    ld e, l                                       ; $7b38: $5d
    inc b                                         ; $7b39: $04
    inc d                                         ; $7b3a: $14
    sub h                                         ; $7b3b: $94
    ld l, l                                       ; $7b3c: $6d
    and $11                                       ; $7b3d: $e6 $11
    or [hl]                                       ; $7b3f: $b6
    ld a, c                                       ; $7b40: $79
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    rla                                           ; $7b43: $17
    ld l, e                                       ; $7b44: $6b
    nop                                           ; $7b45: $00
    jr nz, @-$20                                  ; $7b46: $20 $de

    ld a, a                                       ; $7b48: $7f
    nop                                           ; $7b49: $00
    inc e                                         ; $7b4a: $1c
    xor h                                         ; $7b4b: $ac
    ld c, l                                       ; $7b4c: $4d
    or h                                          ; $7b4d: $b4
    ld h, d                                       ; $7b4e: $62
    sbc e                                         ; $7b4f: $9b
    ld [hl], a                                    ; $7b50: $77
    inc bc                                        ; $7b51: $03
    db $10                                        ; $7b52: $10
    xor e                                         ; $7b53: $ab
    jr c, jr_0b3_7bc8                             ; $7b54: $38 $72

    ld h, l                                       ; $7b56: $65
    xor $4c                                       ; $7b57: $ee $4c
    ld [bc], a                                    ; $7b59: $02

jr_0b3_7b5a:
    db $10                                        ; $7b5a: $10
    ld l, e                                       ; $7b5b: $6b
    dec l                                         ; $7b5c: $2d
    sub [hl]                                      ; $7b5d: $96
    dec h                                         ; $7b5e: $25
    ld h, a                                       ; $7b5f: $67
    jr @-$75                                      ; $7b60: $18 $89

    ld [$2196], sp                                ; $7b62: $08 $96 $21
    adc h                                         ; $7b65: $8c
    ld sp, $31d9                                  ; $7b66: $31 $d9 $31
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    xor e                                         ; $7b6b: $ab
    inc a                                         ; $7b6c: $3c
    ld l, e                                       ; $7b6d: $6b
    dec l                                         ; $7b6e: $2d
    ld b, l                                       ; $7b6f: $45
    jr jr_0b3_7b72                                ; $7b70: $18 $00

jr_0b3_7b72:
    nop                                           ; $7b72: $00
    sub h                                         ; $7b73: $94
    ld l, l                                       ; $7b74: $6d
    push hl                                       ; $7b75: $e5

jr_0b3_7b76:
    dec d                                         ; $7b76: $15
    inc b                                         ; $7b77: $04
    inc d                                         ; $7b78: $14
    nop                                           ; $7b79: $00
    jr nz, @-$6b                                  ; $7b7a: $20 $93

    ld e, [hl]                                    ; $7b7c: $5e
    db $dd                                        ; $7b7d: $dd
    ld a, e                                       ; $7b7e: $7b
    jr jr_0b3_7bec                                ; $7b7f: $18 $6b

    nop                                           ; $7b81: $00
    jr nz, @-$73                                  ; $7b82: $20 $8b

    ld c, c                                       ; $7b84: $49
    push de                                       ; $7b85: $d5
    ld h, [hl]                                    ; $7b86: $66
    cpl                                           ; $7b87: $2f
    ld d, [hl]                                    ; $7b88: $56
    ld [bc], a                                    ; $7b89: $02
    inc c                                         ; $7b8a: $0c
    xor d                                         ; $7b8b: $aa
    inc a                                         ; $7b8c: $3c
    ld d, d                                       ; $7b8d: $52
    ld h, c                                       ; $7b8e: $61
    ld b, a                                       ; $7b8f: $47
    jr z, jr_0b3_7b95                             ; $7b90: $28 $03

    db $10                                        ; $7b92: $10
    sub $5a                                       ; $7b93: $d6 $5a

jr_0b3_7b95:
    jp hl                                         ; $7b95: $e9


    jr jr_0b3_7b34                                ; $7b96: $18 $9c

    ld [hl], e                                    ; $7b98: $73
    ld [bc], a                                    ; $7b99: $02
    nop                                           ; $7b9a: $00
    ld [hl], h                                    ; $7b9b: $74
    ld c, [hl]                                    ; $7b9c: $4e
    call $9c10                                    ; $7b9d: $cd $10 $9c
    ld [hl], e                                    ; $7ba0: $73
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    jp z, $cf30                                   ; $7ba3: $ca $30 $cf

    add hl, sp                                    ; $7ba6: $39
    dec b                                         ; $7ba7: $05
    inc e                                         ; $7ba8: $1c
    ld [bc], a                                    ; $7ba9: $02
    ld [$4cee], sp                                ; $7baa: $08 $ee $4c
    sbc $7f                                       ; $7bad: $de $7f
    sub h                                         ; $7baf: $94
    ld l, l                                       ; $7bb0: $6d
    nop                                           ; $7bb1: $00
    jr nz, jr_0b3_7c05                            ; $7bb2: $20 $51

    ld e, d                                       ; $7bb4: $5a
    rst $30                                       ; $7bb5: $f7
    ld l, d                                       ; $7bb6: $6a
    sbc h                                         ; $7bb7: $9c
    ld [hl], a                                    ; $7bb8: $77
    nop                                           ; $7bb9: $00
    jr nz, @+$4a                                  ; $7bba: $20 $48

    ld b, c                                       ; $7bbc: $41
    cpl                                           ; $7bbd: $2f
    ld d, [hl]                                    ; $7bbe: $56
    adc e                                         ; $7bbf: $8b
    ld c, c                                       ; $7bc0: $49
    ld [bc], a                                    ; $7bc1: $02
    ld [$6151], sp                                ; $7bc2: $08 $51 $61
    or h                                          ; $7bc5: $b4
    ld h, d                                       ; $7bc6: $62
    ld b, a                                       ; $7bc7: $47

jr_0b3_7bc8:
    jr z, @+$04                                   ; $7bc8: $28 $02

    inc c                                         ; $7bca: $0c
    jr jr_0b3_7c30                                ; $7bcb: $18 $63

    ld c, d                                       ; $7bcd: $4a
    add hl, hl                                    ; $7bce: $29
    ld l, [hl]                                    ; $7bcf: $6e
    nop                                           ; $7bd0: $00
    ld bc, $d600                                  ; $7bd1: $01 $00 $d6
    ld e, d                                       ; $7bd4: $5a
    ld l, [hl]                                    ; $7bd5: $6e
    nop                                           ; $7bd6: $00
    ld a, e                                       ; $7bd7: $7b
    ld l, a                                       ; $7bd8: $6f

jr_0b3_7bd9:
    inc b                                         ; $7bd9: $04
    inc d                                         ; $7bda: $14
    or l                                          ; $7bdb: $b5
    ld d, [hl]                                    ; $7bdc: $56
    ld l, c                                       ; $7bdd: $69
    inc [hl]                                      ; $7bde: $34
    adc h                                         ; $7bdf: $8c
    ld sp, $1003                                  ; $7be0: $31 $03 $10
    ld c, $51                                     ; $7be3: $0e $51
    sub h                                         ; $7be5: $94
    ld l, l                                       ; $7be6: $6d
    rst $30                                       ; $7be7: $f7
    ld l, d                                       ; $7be8: $6a
    nop                                           ; $7be9: $00
    jr nz, jr_0b3_7bd9                            ; $7bea: $20 $ed

jr_0b3_7bec:
    ld d, c                                       ; $7bec: $51
    ld [hl], d                                    ; $7bed: $72
    ld e, [hl]                                    ; $7bee: $5e
    cpl                                           ; $7bef: $2f
    ld d, [hl]                                    ; $7bf0: $56
    nop                                           ; $7bf1: $00
    jr nz, jr_0b3_7bfa                            ; $7bf2: $20 $06

    ld b, c                                       ; $7bf4: $41
    ld h, $41                                     ; $7bf5: $26 $41
    ld l, [hl]                                    ; $7bf7: $6e
    nop                                           ; $7bf8: $00
    nop                                           ; $7bf9: $00

jr_0b3_7bfa:
    nop                                           ; $7bfa: $00
    dec hl                                        ; $7bfb: $2b
    ld b, l                                       ; $7bfc: $45
    sub h                                         ; $7bfd: $94
    ld l, l                                       ; $7bfe: $6d
    ld h, $20                                     ; $7bff: $26 $20
    ld [bc], a                                    ; $7c01: $02
    ld [$39ce], sp                                ; $7c02: $08 $ce $39

jr_0b3_7c05:
    ld l, [hl]                                    ; $7c05: $6e
    nop                                           ; $7c06: $00
    or l                                          ; $7c07: $b5
    ld d, [hl]                                    ; $7c08: $56

jr_0b3_7c09:
    inc bc                                        ; $7c09: $03
    nop                                           ; $7c0a: $00
    or l                                          ; $7c0b: $b5
    ld d, [hl]                                    ; $7c0c: $56
    ld l, [hl]                                    ; $7c0d: $6e
    nop                                           ; $7c0e: $00
    sbc h                                         ; $7c0f: $9c
    ld [hl], e                                    ; $7c10: $73
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    jr jr_0b3_7c78                                ; $7c13: $18 $63

    ld c, b                                       ; $7c15: $48
    jr nc, jr_0b3_7c1c                            ; $7c16: $30 $04

    jr jr_0b3_7c1a                                ; $7c18: $18 $00

jr_0b3_7c1a:
    nop                                           ; $7c1a: $00
    db $eb                                        ; $7c1b: $eb

jr_0b3_7c1c:
    ld b, b                                       ; $7c1c: $40
    sub b                                         ; $7c1d: $90
    ld e, l                                       ; $7c1e: $5d
    dec b                                         ; $7c1f: $05
    inc e                                         ; $7c20: $1c
    nop                                           ; $7c21: $00
    jr nz, jr_0b3_7c09                            ; $7c22: $20 $e5

    inc a                                         ; $7c24: $3c
    ld c, b                                       ; $7c25: $48
    ld b, l                                       ; $7c26: $45
    dec b                                         ; $7c27: $05
    inc e                                         ; $7c28: $1c
    nop                                           ; $7c29: $00
    jr nz, jr_0b3_7c1a                            ; $7c2a: $20 $ee

    ld e, l                                       ; $7c2c: $5d
    ld l, [hl]                                    ; $7c2d: $6e
    nop                                           ; $7c2e: $00
    or l                                          ; $7c2f: $b5

jr_0b3_7c30:
    ld d, [hl]                                    ; $7c30: $56
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    sub d                                         ; $7c33: $92
    ld l, c                                       ; $7c34: $69
    add sp, $3c                                   ; $7c35: $e8 $3c
    ld h, $20                                     ; $7c37: $26 $20
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    sbc h                                         ; $7c3b: $9c
    ld [hl], e                                    ; $7c3c: $73
    call z, Call_000_0410                         ; $7c3d: $cc $10 $04
    db $10                                        ; $7c40: $10

jr_0b3_7c41:
    ld bc, $9400                                  ; $7c41: $01 $00 $94
    ld d, d                                       ; $7c44: $52
    rl h                                          ; $7c45: $cb $14
    sbc h                                         ; $7c47: $9c
    ld [hl], e                                    ; $7c48: $73
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    ld l, c                                       ; $7c4b: $69
    inc [hl]                                      ; $7c4c: $34
    inc b                                         ; $7c4d: $04
    jr jr_0b3_7cb5                                ; $7c4e: $18 $65

    ld [$0000], sp                                ; $7c50: $08 $00 $00
    daa                                           ; $7c53: $27
    ld b, c                                       ; $7c54: $41
    cpl                                           ; $7c55: $2f
    ld d, l                                       ; $7c56: $55
    dec b                                         ; $7c57: $05
    jr jr_0b3_7c5a                                ; $7c58: $18 $00

jr_0b3_7c5a:
    jr nz, jr_0b3_7c41                            ; $7c5a: $20 $e5

    inc a                                         ; $7c5c: $3c
    cpl                                           ; $7c5d: $2f
    ld d, l                                       ; $7c5e: $55
    dec b                                         ; $7c5f: $05
    jr jr_0b3_7c62                                ; $7c60: $18 $00

jr_0b3_7c62:
    jr nz, @-$62                                  ; $7c62: $20 $9c

    ld [hl], e                                    ; $7c64: $73
    call z, Call_000_0410                         ; $7c65: $cc $10 $04
    stop                                          ; $7c68: $10 $00
    nop                                           ; $7c6a: $00
    ld l, $55                                     ; $7c6b: $2e $55
    ld d, h                                       ; $7c6d: $54
    ld [hl], d                                    ; $7c6e: $72
    ld h, $20                                     ; $7c6f: $26 $20
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    inc c                                         ; $7c73: $0c
    ld hl, $1404                                  ; $7c74: $21 $04 $14
    ld l, [hl]                                    ; $7c77: $6e

jr_0b3_7c78:
    nop                                           ; $7c78: $00
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    db $eb                                        ; $7c7b: $eb
    inc e                                         ; $7c7c: $1c
    ld l, [hl]                                    ; $7c7d: $6e
    nop                                           ; $7c7e: $00
    dec h                                         ; $7c7f: $25
    inc b                                         ; $7c80: $04
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    adc d                                         ; $7c83: $8a
    jr c, jr_0b3_7c92                             ; $7c84: $38 $0c

    ld hl, $1805                                  ; $7c86: $21 $05 $18
    ld [bc], a                                    ; $7c89: $02
    ld [$594f], sp                                ; $7c8a: $08 $4f $59
    ld [hl], e                                    ; $7c8d: $73
    ld l, [hl]                                    ; $7c8e: $6e
    add [hl]                                      ; $7c8f: $86
    jr nc, jr_0b3_7c92                            ; $7c90: $30 $00

jr_0b3_7c92:
    jr nz, jr_0b3_7ce3                            ; $7c92: $20 $4f

    ld e, c                                       ; $7c94: $59
    ld [hl], e                                    ; $7c95: $73
    ld l, [hl]                                    ; $7c96: $6e
    add [hl]                                      ; $7c97: $86
    jr nc, jr_0b3_7c9a                            ; $7c98: $30 $00

jr_0b3_7c9a:
    jr nz, jr_0b3_7ca8                            ; $7c9a: $20 $0c

    ld hl, $1404                                  ; $7c9c: $21 $04 $14

jr_0b3_7c9f:
    ld l, [hl]                                    ; $7c9f: $6e
    nop                                           ; $7ca0: $00
    nop                                           ; $7ca1: $00
    ld [$5930], sp                                ; $7ca2: $08 $30 $59
    jr jr_0b3_7d1e                                ; $7ca5: $18 $77

jr_0b3_7ca7:
    ld b, a                                       ; $7ca7: $47

jr_0b3_7ca8:
    inc h                                         ; $7ca8: $24
    ld bc, $ea00                                  ; $7ca9: $01 $00 $ea
    inc e                                         ; $7cac: $1c
    ld l, [hl]                                    ; $7cad: $6e
    nop                                           ; $7cae: $00
    inc b                                         ; $7caf: $04
    inc d                                         ; $7cb0: $14
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    db $eb                                        ; $7cb3: $eb
    inc e                                         ; $7cb4: $1c

jr_0b3_7cb5:
    ld l, [hl]                                    ; $7cb5: $6e
    nop                                           ; $7cb6: $00
    ld h, $00                                     ; $7cb7: $26 $00
    inc bc                                        ; $7cb9: $03
    inc c                                         ; $7cba: $0c
    ld c, c                                       ; $7cbb: $49
    inc [hl]                                      ; $7cbc: $34
    ld b, $20                                     ; $7cbd: $06 $20
    call LCDCInterrupt                            ; $7cbf: $cd $48 $00
    nop                                           ; $7cc2: $00
    db $d3                                        ; $7cc3: $d3
    ld l, l                                       ; $7cc4: $6d
    ld a, e                                       ; $7cc5: $7b
    ld [hl], a                                    ; $7cc6: $77
    inc bc                                        ; $7cc7: $03
    inc e                                         ; $7cc8: $1c
    nop                                           ; $7cc9: $00
    jr nz, jr_0b3_7c9f                            ; $7cca: $20 $d3

    ld l, l                                       ; $7ccc: $6d
    ld a, e                                       ; $7ccd: $7b
    ld [hl], a                                    ; $7cce: $77
    inc bc                                        ; $7ccf: $03
    inc e                                         ; $7cd0: $1c
    nop                                           ; $7cd1: $00
    jr nz, @-$14                                  ; $7cd2: $20 $ea

    inc e                                         ; $7cd4: $1c
    ld l, [hl]                                    ; $7cd5: $6e
    nop                                           ; $7cd6: $00
    inc b                                         ; $7cd7: $04
    inc d                                         ; $7cd8: $14
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    sbc h                                         ; $7cdb: $9c
    ld [hl], a                                    ; $7cdc: $77
    call z, $0244                                 ; $7cdd: $cc $44 $02
    jr nz, jr_0b3_7ce2                            ; $7ce0: $20 $00

jr_0b3_7ce2:
    nop                                           ; $7ce2: $00

jr_0b3_7ce3:
    inc c                                         ; $7ce3: $0c
    ld hl, $0c04                                  ; $7ce4: $21 $04 $0c
    ld l, [hl]                                    ; $7ce7: $6e
    nop                                           ; $7ce8: $00
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    rrca                                          ; $7ceb: $0f
    ld h, d                                       ; $7cec: $62
    sbc h                                         ; $7ced: $9c
    ld a, e                                       ; $7cee: $7b
    or l                                          ; $7cef: $b5
    ld l, [hl]                                    ; $7cf0: $6e
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    push hl                                       ; $7cf3: $e5
    inc a                                         ; $7cf4: $3c
    rrca                                          ; $7cf5: $0f
    ld e, d                                       ; $7cf6: $5a
    ld c, c                                       ; $7cf7: $49
    ld c, c                                       ; $7cf8: $49
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00

jr_0b3_7cfb:
    rst $30                                       ; $7cfb: $f7
    ld [hl], d                                    ; $7cfc: $72
    sbc $7b                                       ; $7cfd: $de $7b
    nop                                           ; $7cff: $00
    jr nz, jr_0b3_7d02                            ; $7d00: $20 $00

jr_0b3_7d02:
    jr nz, jr_0b3_7cfb                            ; $7d02: $20 $f7

    ld [hl], d                                    ; $7d04: $72
    sbc $7b                                       ; $7d05: $de $7b
    nop                                           ; $7d07: $00
    jr nz, jr_0b3_7d0a                            ; $7d08: $20 $00

jr_0b3_7d0a:
    jr nz, jr_0b3_7d18                            ; $7d0a: $20 $0c

    ld hl, $0c04                                  ; $7d0c: $21 $04 $0c
    ld l, [hl]                                    ; $7d0f: $6e
    nop                                           ; $7d10: $00
    nop                                           ; $7d11: $00
    jr nz, jr_0b3_7ca7                            ; $7d12: $20 $93

    ld h, d                                       ; $7d14: $62
    sbc h                                         ; $7d15: $9c
    ld [hl], a                                    ; $7d16: $77
    ld l, c                                       ; $7d17: $69

jr_0b3_7d18:
    ld b, l                                       ; $7d18: $45
    push hl                                       ; $7d19: $e5
    inc a                                         ; $7d1a: $3c
    ld sp, $f766                                  ; $7d1b: $31 $66 $f7

jr_0b3_7d1e:
    ld [hl], d                                    ; $7d1e: $72
    ld c, c                                       ; $7d1f: $49
    ld c, l                                       ; $7d20: $4d
    daa                                           ; $7d21: $27
    ld b, l                                       ; $7d22: $45
    sub l                                         ; $7d23: $95
    ld [hl], d                                    ; $7d24: $72
    sbc h                                         ; $7d25: $9c
    ld a, e                                       ; $7d26: $7b
    adc $5d                                       ; $7d27: $ce $5d
    ld l, d                                       ; $7d29: $6a
    ld c, l                                       ; $7d2a: $4d
    sub h                                         ; $7d2b: $94
    ld l, [hl]                                    ; $7d2c: $6e
    jr nc, @+$60                                  ; $7d2d: $30 $5e

    ld e, d                                       ; $7d2f: $5a
    ld [hl], e                                    ; $7d30: $73
    nop                                           ; $7d31: $00
    jr nz, @+$75                                  ; $7d32: $20 $73

    ld e, [hl]                                    ; $7d34: $5e
    cp h                                          ; $7d35: $bc
    ld a, e                                       ; $7d36: $7b
    push hl                                       ; $7d37: $e5
    inc a                                         ; $7d38: $3c
    nop                                           ; $7d39: $00
    jr nz, @+$75                                  ; $7d3a: $20 $73

    ld e, [hl]                                    ; $7d3c: $5e
    cp h                                          ; $7d3d: $bc
    ld a, e                                       ; $7d3e: $7b
    push hl                                       ; $7d3f: $e5
    inc a                                         ; $7d40: $3c

    db $10, $03, $bd, $01, $44, $ff, $01, $60, $7f, $40, $3f, $02, $00, $7f, $40, $08
    db $ff, $80, $ff, $00, $02, $08, $78, $4c, $6e, $01, $52, $6e, $4a, $60, $80, $f0
    db $1f, $10, $18, $00, $9f, $51, $9f, $51, $ce, $59, $c0, $60, $30, $e1, $33, $20
    db $18, $2e, $00, $20, $1f, $20, $81, $10, $81, $c3, $7e, $30, $18, $e6, $29, $e6
    db $a9, $08, $e7, $a9, $c3, $42, $3e, $18, $ff, $00, $e7, $00, $00, $e6, $01, $e4
    db $02, $80, $c0, $fc, $10, $02, $fe, $01, $52, $08, $38, $44, $01, $62, $09, $3f
    db $40, $1f, $30, $20, $28, $9e, $a1, $02, $08, $20, $0e, $0a, $30, $28, $63, $24
    db $0f, $48, $47, $14, $20, $21, $73, $40, $28, $fe, $02, $08, $82, $7c, $48, $46
    db $50, $28, $f8, $05, $02, $00, $0d, $f0, $18, $d8, $60, $28, $ac, $08, $7f, $ac
    db $20, $b2, $10, $01, $7e, $81, $03, $3c, $62, $01, $01, $c7, $7c, $14, $40, $0a
    db $40, $20, $3f, $20, $02, $58, $cc, $52, $ce, $52, $ce, $10, $50, $87, $85, $b0
    db $28, $cf, $00, $cd, $02, $00, $c9, $04, $01, $80, $f9, $04, $fd, $02, $80, $02
    db $09, $fc, $05, $f9, $05, $f1, $8a, $07, $10, $05, $1f, $f0, $10, $19, $f3, $08
    db $f9, $0a, $04, $f8, $01, $fc, $04, $ff, $ce, $10, $ff, $00, $00, $f2, $01, $f3
    db $00, $f3, $02, $e1, $11, $a2, $6e, $60, $80, $96, $00, $40, $ff, $00, $9a, $28
    db $f8, $00, $0f, $10, $30, $66, $55, $63, $46, $60, $49, $50, $18, $29, $04, $0e
    db $4a, $09, $9f, $51, $66, $19, $00, $e5, $3c, $81, $41, $1d, $a0, $3d, $02, $00
    db $3f, $40, $ef, $18, $e7, $28, $01, $91, $00, $9b, $42, $c3, $04, $d3, $59, $ff
    db $05, $20, $c2, $47, $48, $21, $7e, $81, $42, $e7, $80, $60, $67, $02, $00, $58
    db $29, $00, $01, $3c, $44, $3c, $00, $42, $3c, $42, $bf, $60, $9f, $a0, $07, $00
    db $44, $6f, $08, $0c, $12, $4e, $61, $fe, $10, $11, $0e, $19, $b4, $10, $02, $06
    db $09, $03, $00, $64, $71, $13, $71, $0a, $73, $0b, $00, $e1, $01, $00, $e4, $01
    db $0c, $41, $e0, $30, $f3, $08, $02, $10, $01, $09, $f0, $0a, $f0, $00, $f8, $04
    db $02, $28, $39, $00, $fc, $2c, $08, $fe, $09, $04, $18, $00, $7f, $3c, $00, $00
    db $80, $7c, $14, $fc, $2c, $fc, $54, $fc, $08, $bc, $fc, $5c, $fc, $20, $10, $dc
    db $00, $88, $00, $00, $c1, $00, $63, $00, $77, $41, $7f, $43, $63, $20, $08, $00
    db $01, $00, $fc, $44, $38, $46, $00, $18, $00, $00, $7f, $44, $38, $46, $00, $01
    db $fc, $e0, $00, $f6, $40, $e2, $80, $c6, $00, $8c, $00, $0c, $1c, $04, $3c, $0c
    db $1f, $00, $01, $08, $6a, $7f, $45, $5d, $04, $00, $54, $7e, $08, $74, $10, $3f
    db $96, $39, $00, $ef, $20, $0f, $00, $cf, $20, $ef, $30, $00, $fc, $12, $f8, $05
    db $fb, $0a, $f3, $08, $80, $86, $1a, $8f, $f8, $03, $02, $f1, $18, $f8, $60, $05
    db $78, $01, $14, $0a, $01, $ff, $fc, $03, $84, $40, $cf, $ac, $01, $cf, $00, $df
    db $30, $cf, $50, $00, $03, $22, $37, $84, $87, $08, $a6, $b1, $08, $fe, $0a, $84
    db $8e, $b6, $1a, $e3, $3e, $00, $07, $80, $3c, $46, $fe, $81, $a6, $29, $92, $11
    db $ac, $0a, $00, $00, $7f, $40, $00, $00, $38, $41, $78, $14, $c1, $f8, $81, $4a
    db $12, $05, $70, $18, $e8, $34, $08, $fc, $16, $fe, $02, $6c, $0a

    stop                                          ; $7f7e: $10 $00
    ld [bc], a                                    ; $7f80: $02
    nop                                           ; $7f81: $00
    db $f4                                        ; $7f82: $f4
    xor $ef                                       ; $7f83: $ee $ef
    ldh a, [$f1]                                  ; $7f85: $f0 $f1
    ld a, [c]                                     ; $7f87: $f2
    di                                            ; $7f88: $f3
    db $ed                                        ; $7f89: $ed
    db $ed                                        ; $7f8a: $ed
    db $ed                                        ; $7f8b: $ed
    db $ed                                        ; $7f8c: $ed
    db $ed                                        ; $7f8d: $ed
    db $ed                                        ; $7f8e: $ed
    db $ed                                        ; $7f8f: $ed
    db $ed                                        ; $7f90: $ed
    db $ed                                        ; $7f91: $ed
    push af                                       ; $7f92: $f5
    or $f7                                        ; $7f93: $f6 $f7
    ld hl, sp-$07                                 ; $7f95: $f8 $f9
    ld a, [$edfb]                                 ; $7f97: $fa $fb $ed
    db $ed                                        ; $7f9a: $ed
    db $ed                                        ; $7f9b: $ed
    db $ed                                        ; $7f9c: $ed
    db $ed                                        ; $7f9d: $ed
    db $ed                                        ; $7f9e: $ed
    db $ed                                        ; $7f9f: $ed
    db $ed                                        ; $7fa0: $ed
    db $ed                                        ; $7fa1: $ed
    ld [$0808], sp                                ; $7fa2: $08 $08 $08
    ld [$0808], sp                                ; $7fa5: $08 $08 $08
    ld [$0808], sp                                ; $7fa8: $08 $08 $08
    ld [$0808], sp                                ; $7fab: $08 $08 $08
    ld [$0808], sp                                ; $7fae: $08 $08 $08
    ld [$0808], sp                                ; $7fb1: $08 $08 $08
    ld [$0808], sp                                ; $7fb4: $08 $08 $08
    ld [$0808], sp                                ; $7fb7: $08 $08 $08
    ld [$0808], sp                                ; $7fba: $08 $08 $08
    ld [$0808], sp                                ; $7fbd: $08 $08 $08
    ld [$1f08], sp                                ; $7fc0: $08 $08 $1f
    ld a, h                                       ; $7fc3: $7c
    sbc e                                         ; $7fc4: $9b
    ld [hl], a                                    ; $7fc5: $77
    ld l, d                                       ; $7fc6: $6a
    dec [hl]                                      ; $7fc7: $35
    ld bc, $8c00                                  ; $7fc8: $01 $00 $8c
    ld sp, $02aa                                  ; $7fcb: $31 $aa $02
    rst $38                                       ; $7fce: $ff
    nop                                           ; $7fcf: $00
    dec h                                         ; $7fd0: $25
    nop                                           ; $7fd1: $00
    adc h                                         ; $7fd2: $8c
    ld sp, $0275                                  ; $7fd3: $31 $75 $02
    and h                                         ; $7fd6: $a4
    inc de                                        ; $7fd7: $13
    and b                                         ; $7fd8: $a0
    nop                                           ; $7fd9: $00
    adc h                                         ; $7fda: $8c
    ld sp, $02c3                                  ; $7fdb: $31 $c3 $02
    ret nz                                        ; $7fde: $c0

    ld a, l                                       ; $7fdf: $7d
    dec h                                         ; $7fe0: $25
    nop                                           ; $7fe1: $00
    adc e                                         ; $7fe2: $8b
    add hl, hl                                    ; $7fe3: $29
    ld [hl], a                                    ; $7fe4: $77
    cpl                                           ; $7fe5: $2f
    rlca                                          ; $7fe6: $07
    ld [bc], a                                    ; $7fe7: $02
    and h                                         ; $7fe8: $a4
    nop                                           ; $7fe9: $00
    sub l                                         ; $7fea: $95
    ld d, [hl]                                    ; $7feb: $56
    jr nz, @+$6d                                  ; $7fec: $20 $6b

    dec e                                         ; $7fee: $1d
    ld a, $87                                     ; $7fef: $3e $87
    ld [$394b], sp                                ; $7ff1: $08 $4b $39
    or l                                          ; $7ff4: $b5
    dec d                                         ; $7ff5: $15
    ld c, d                                       ; $7ff6: $4a
    nop                                           ; $7ff7: $00
    nop                                           ; $7ff8: $00
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
