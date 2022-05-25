; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

    ld d, a                                       ; $4000: $57
    dec a                                         ; $4001: $3d
    cp d                                          ; $4002: $ba
    call z, $9235                                 ; $4003: $cc $35 $92
    ld e, d                                       ; $4006: $5a
    rst $00                                       ; $4007: $c7
    jp nz, $d956                                  ; $4008: $c2 $56 $d9

    or d                                          ; $400b: $b2
    cp a                                          ; $400c: $bf
    daa                                           ; $400d: $27
    xor d                                         ; $400e: $aa
    inc a                                         ; $400f: $3c
    di                                            ; $4010: $f3
    dec sp                                        ; $4011: $3b
    dec e                                         ; $4012: $1d
    cpl                                           ; $4013: $2f
    add a                                         ; $4014: $87
    or c                                          ; $4015: $b1
    adc $ae                                       ; $4016: $ce $ae
    ld [hl], l                                    ; $4018: $75
    ld l, c                                       ; $4019: $69
    call nz, $e9e2                                ; $401a: $c4 $e2 $e9
    inc a                                         ; $401d: $3c
    sub d                                         ; $401e: $92
    jp c, $d071                                   ; $401f: $da $71 $d0

    ld l, $87                                     ; $4022: $2e $87
    add hl, hl                                    ; $4024: $29
    di                                            ; $4025: $f3
    ld e, h                                       ; $4026: $5c
    ld d, e                                       ; $4027: $53
    ld e, a                                       ; $4028: $5f
    halt                                          ; $4029: $76
    and d                                         ; $402a: $a2
    and [hl]                                      ; $402b: $a6
    xor c                                         ; $402c: $a9
    call nc, $fd08                                ; $402d: $d4 $08 $fd
    ld c, [hl]                                    ; $4030: $4e
    db $fc                                        ; $4031: $fc
    ld d, e                                       ; $4032: $53
    xor a                                         ; $4033: $af
    db $db                                        ; $4034: $db
    cp h                                          ; $4035: $bc
    db $e4                                        ; $4036: $e4
    push de                                       ; $4037: $d5
    ld a, [hl]                                    ; $4038: $7e
    adc h                                         ; $4039: $8c
    ld e, $b6                                     ; $403a: $1e $b6
    ld a, h                                       ; $403c: $7c
    add hl, bc                                    ; $403d: $09
    sub [hl]                                      ; $403e: $96
    dec a                                         ; $403f: $3d
    sbc [hl]                                      ; $4040: $9e
    ld [hl-], a                                   ; $4041: $32
    rst $28                                       ; $4042: $ef
    ld b, h                                       ; $4043: $44
    cp l                                          ; $4044: $bd
    dec [hl]                                      ; $4045: $35
    cpl                                           ; $4046: $2f
    ld d, b                                       ; $4047: $50
    dec sp                                        ; $4048: $3b
    sub h                                         ; $4049: $94
    ld [$8044], sp                                ; $404a: $08 $44 $80
    rst $38                                       ; $404d: $ff
    ld l, b                                       ; $404e: $68
    xor d                                         ; $404f: $aa
    halt                                          ; $4050: $76
    db $e4                                        ; $4051: $e4
    push bc                                       ; $4052: $c5
    add sp, $61                                   ; $4053: $e8 $61
    xor e                                         ; $4055: $ab
    ld de, $f116                                  ; $4056: $11 $16 $f1
    add h                                         ; $4059: $84
    xor d                                         ; $405a: $aa
    ld de, $2cba                                  ; $405b: $11 $ba $2c
    ld h, [hl]                                    ; $405e: $66
    adc h                                         ; $405f: $8c
    ld e, l                                       ; $4060: $5d
    db $e3                                        ; $4061: $e3
    rst $18                                       ; $4062: $df
    jp nc, $1a2f                                  ; $4063: $d2 $2f $1a

    ld [hl+], a                                   ; $4066: $22
    scf                                           ; $4067: $37
    or a                                          ; $4068: $b7
    and $7d                                       ; $4069: $e6 $7d
    sub c                                         ; $406b: $91
    db $fd                                        ; $406c: $fd
    and l                                         ; $406d: $a5
    ld [hl], b                                    ; $406e: $70
    xor [hl]                                      ; $406f: $ae
    di                                            ; $4070: $f3
    sbc d                                         ; $4071: $9a
    dec h                                         ; $4072: $25
    push af                                       ; $4073: $f5
    xor $7a                                       ; $4074: $ee $7a
    cp e                                          ; $4076: $bb
    cp c                                          ; $4077: $b9
    dec [hl]                                      ; $4078: $35
    inc de                                        ; $4079: $13
    ld l, [hl]                                    ; $407a: $6e
    pop bc                                        ; $407b: $c1
    ld [hl], d                                    ; $407c: $72
    ld l, $a1                                     ; $407d: $2e $a1
    ld a, l                                       ; $407f: $7d
    ret c                                         ; $4080: $d8

    or d                                          ; $4081: $b2
    or h                                          ; $4082: $b4
    add e                                         ; $4083: $83
    ld b, [hl]                                    ; $4084: $46
    call nz, Call_000_11a9                        ; $4085: $c4 $a9 $11
    or a                                          ; $4088: $b7
    pop af                                        ; $4089: $f1
    ld hl, sp+$12                                 ; $408a: $f8 $12
    cp [hl]                                       ; $408c: $be
    add h                                         ; $408d: $84
    dec hl                                        ; $408e: $2b
    or a                                          ; $408f: $b7
    ld b, $21                                     ; $4090: $06 $21
    db $fc                                        ; $4092: $fc
    ld a, e                                       ; $4093: $7b
    and d                                         ; $4094: $a2
    jp z, $bf33                                   ; $4095: $ca $33 $bf

    ld c, e                                       ; $4098: $4b
    ld hl, sp+$5d                                 ; $4099: $f8 $5d
    jp nz, Jump_057_74ef                          ; $409b: $c2 $ef $74

    inc c                                         ; $409e: $0c
    ld hl, $4b64                                  ; $409f: $21 $64 $4b
    ld h, h                                       ; $40a2: $64
    ld c, a                                       ; $40a3: $4f
    cp c                                          ; $40a4: $b9
    cp h                                          ; $40a5: $bc
    or h                                          ; $40a6: $b4
    ld e, [hl]                                    ; $40a7: $5e
    jp z, $3e4b                                   ; $40a8: $ca $4b $3e

    ld a, e                                       ; $40ab: $7b
    jp z, Jump_000_110c                           ; $40ac: $ca $0c $11

    rst $30                                       ; $40af: $f7
    sub l                                         ; $40b0: $95
    ld l, c                                       ; $40b1: $69
    ld b, a                                       ; $40b2: $47
    halt                                          ; $40b3: $76
    ld l, c                                       ; $40b4: $69
    ld b, a                                       ; $40b5: $47
    ld [hl], a                                    ; $40b6: $77
    push de                                       ; $40b7: $d5
    ld e, [hl]                                    ; $40b8: $5e
    ld l, e                                       ; $40b9: $6b
    ld e, $5d                                     ; $40ba: $1e $5d
    ld l, a                                       ; $40bc: $6f
    jp z, Jump_000_33e5                           ; $40bd: $ca $e5 $33

    ld b, d                                       ; $40c0: $42
    ccf                                           ; $40c1: $3f
    db $e3                                        ; $40c2: $e3
    rst $18                                       ; $40c3: $df
    jp nc, Jump_057_7a2f                          ; $40c4: $d2 $2f $7a

    db $fc                                        ; $40c7: $fc
    db $db                                        ; $40c8: $db
    ld c, [hl]                                    ; $40c9: $4e
    ld c, [hl]                                    ; $40ca: $4e
    ld a, h                                       ; $40cb: $7c
    ld e, [hl]                                    ; $40cc: $5e
    or e                                          ; $40cd: $b3
    ld a, b                                       ; $40ce: $78
    ld e, l                                       ; $40cf: $5d
    ld a, [de]                                    ; $40d0: $1a
    and a                                         ; $40d1: $a7
    db $db                                        ; $40d2: $db
    adc a                                         ; $40d3: $8f
    pop de                                        ; $40d4: $d1
    db $ed                                        ; $40d5: $ed
    add a                                         ; $40d6: $87
    call nc, $b708                                ; $40d7: $d4 $08 $b7
    ld [hl], a                                    ; $40da: $77
    push de                                       ; $40db: $d5
    ld h, c                                       ; $40dc: $61
    rst $00                                       ; $40dd: $c7
    or $ce                                        ; $40de: $f6 $ce
    ld sp, hl                                     ; $40e0: $f9
    ld [de], a                                    ; $40e1: $12
    ld e, h                                       ; $40e2: $5c
    jp c, $b911                                   ; $40e3: $da $11 $b9

    xor c                                         ; $40e6: $a9
    add hl, hl                                    ; $40e7: $29
    sub a                                         ; $40e8: $97
    ld [hl], a                                    ; $40e9: $77
    ld e, $6e                                     ; $40ea: $1e $6e
    and $d4                                       ; $40ec: $e6 $d4
    cp e                                          ; $40ee: $bb
    cp l                                          ; $40ef: $bd
    xor e                                         ; $40f0: $ab
    add l                                         ; $40f1: $85
    ld h, c                                       ; $40f2: $61

jr_057_40f3:
    add a                                         ; $40f3: $87
    call nc, $fd08                                ; $40f4: $d4 $08 $fd
    sbc [hl]                                      ; $40f7: $9e
    ld h, e                                       ; $40f8: $63
    ld e, c                                       ; $40f9: $59
    call nc, Call_000_3c45                        ; $40fa: $d4 $45 $3c
    di                                            ; $40fd: $f3
    cp b                                          ; $40fe: $b8
    ld [hl], d                                    ; $40ff: $72
    ld l, e                                       ; $4100: $6b
    adc e                                         ; $4101: $8b
    add hl, de                                    ; $4102: $19
    ld h, e                                       ; $4103: $63
    rst $28                                       ; $4104: $ef
    jr c, jr_057_40f3                             ; $4105: $38 $ec

    adc e                                         ; $4107: $8b
    adc h                                         ; $4108: $8c
    ld [hl], b                                    ; $4109: $70
    push af                                       ; $410a: $f5
    ld b, d                                       ; $410b: $42
    ld [hl], a                                    ; $410c: $77
    ld a, $39                                     ; $410d: $3e $39
    or c                                          ; $410f: $b1
    db $e3                                        ; $4110: $e3
    push af                                       ; $4111: $f5
    sub [hl]                                      ; $4112: $96
    sub a                                         ; $4113: $97
    db $ec                                        ; $4114: $ec
    or h                                          ; $4115: $b4
    ld b, a                                       ; $4116: $47
    sub d                                         ; $4117: $92
    ld d, e                                       ; $4118: $53
    and $7d                                       ; $4119: $e6 $7d
    sub c                                         ; $411b: $91
    pop de                                        ; $411c: $d1
    cp c                                          ; $411d: $b9
    ld b, [hl]                                    ; $411e: $46
    xor l                                         ; $411f: $ad
    cp l                                          ; $4120: $bd
    ldh [$c5], a                                  ; $4121: $e0 $c5
    db $e4                                        ; $4123: $e4
    dec [hl]                                      ; $4124: $35
    inc a                                         ; $4125: $3c
    sub d                                         ; $4126: $92
    jp c, $adcd                                   ; $4127: $da $cd $ad

    sbc c                                         ; $412a: $99
    ld [hl], b                                    ; $412b: $70
    dec bc                                        ; $412c: $0b
    sub [hl]                                      ; $412d: $96
    ld [hl], e                                    ; $412e: $73
    add hl, bc                                    ; $412f: $09
    db $ed                                        ; $4130: $ed
    jp $8816                                      ; $4131: $c3 $16 $88


    nop                                           ; $4134: $00
    dec a                                         ; $4135: $3d

jr_057_4136:
    cp $da                                        ; $4136: $fe $da
    dec h                                         ; $4138: $25
    ld d, $86                                     ; $4139: $16 $86
    db $10                                        ; $413b: $10
    or $b8                                        ; $413c: $f6 $b8
    ldh a, [rNR22]                                ; $413e: $f0 $17
    cpl                                           ; $4140: $2f
    ld sp, $c7ef                                  ; $4141: $31 $ef $c7
    add sp, $65                                   ; $4144: $e8 $65
    inc a                                         ; $4146: $3c
    xor [hl]                                      ; $4147: $ae
    call c, Call_000_399a                         ; $4148: $dc $9a $39
    push af                                       ; $414b: $f5
    nop                                           ; $414c: $00
    rst $38                                       ; $414d: $ff
    ld h, c                                       ; $414e: $61
    ld l, d                                       ; $414f: $6a
    ld c, a                                       ; $4150: $4f
    dec h                                         ; $4151: $25
    xor a                                         ; $4152: $af
    inc a                                         ; $4153: $3c
    jp nz, Jump_057_4e22                          ; $4154: $c2 $22 $4e

    adc l                                         ; $4157: $8d
    nop                                           ; $4158: $00
    dec a                                         ; $4159: $3d
    ret                                           ; $415a: $c9


    dec de                                        ; $415b: $1b
    pop af                                        ; $415c: $f1
    sub h                                         ; $415d: $94
    ld a, [c]                                     ; $415e: $f2
    ld d, d                                       ; $415f: $52
    sbc d                                         ; $4160: $9a
    ld e, [hl]                                    ; $4161: $5e
    inc hl                                        ; $4162: $23
    ld e, h                                       ; $4163: $5c
    sla h                                         ; $4164: $cb $24
    jp hl                                         ; $4166: $e9


    ld d, c                                       ; $4167: $51
    dec bc                                        ; $4168: $0b
    sbc l                                         ; $4169: $9d
    xor [hl]                                      ; $416a: $ae
    ld [hl], d                                    ; $416b: $72
    cpl                                           ; $416c: $2f
    inc b                                         ; $416d: $04
    dec a                                         ; $416e: $3d
    rrca                                          ; $416f: $0f
    cpl                                           ; $4170: $2f
    ld a, $59                                     ; $4171: $3e $59
    ld a, [c]                                     ; $4173: $f2
    rst $10                                       ; $4174: $d7
    db $f4                                        ; $4175: $f4
    ld a, [c]                                     ; $4176: $f2
    ld c, b                                       ; $4177: $48
    ld l, d                                       ; $4178: $6a
    rst $00                                       ; $4179: $c7
    ld [c], a                                     ; $417a: $e2
    ld [hl-], a                                   ; $417b: $32
    call c, $d43d                                 ; $417c: $dc $3d $d4
    jr nc, jr_057_4136                            ; $417f: $30 $b5

    db $e4                                        ; $4181: $e4
    adc a                                         ; $4182: $8f
    cp $22                                        ; $4183: $fe $22
    ld e, [hl]                                    ; $4185: $5e
    adc a                                         ; $4186: $8f
    dec bc                                        ; $4187: $0b
    ld a, a                                       ; $4188: $7f
    ld [hl], c                                    ; $4189: $71
    ld l, d                                       ; $418a: $6a
    inc b                                         ; $418b: $04
    ld [hl], a                                    ; $418c: $77
    jp hl                                         ; $418d: $e9


    sub c                                         ; $418e: $91
    ld e, l                                       ; $418f: $5d
    ld d, e                                       ; $4190: $53
    ld a, [$bb24]                                 ; $4191: $fa $24 $bb
    rla                                           ; $4194: $17
    ld [bc], a                                    ; $4195: $02
    ld a, l                                       ; $4196: $7d
    ld e, $84                                     ; $4197: $1e $84
    ld [hl], b                                    ; $4199: $70
    sub [hl]                                      ; $419a: $96
    and l                                         ; $419b: $a5
    db $db                                        ; $419c: $db
    inc de                                        ; $419d: $13
    push af                                       ; $419e: $f5
    dec h                                         ; $419f: $25
    db $ec                                        ; $41a0: $ec
    dec h                                         ; $41a1: $25
    dec sp                                        ; $41a2: $3b
    pop af                                        ; $41a3: $f1
    or e                                          ; $41a4: $b3
    ld a, b                                       ; $41a5: $78
    daa                                           ; $41a6: $27
    rst $00                                       ; $41a7: $c7
    add sp, $5a                                   ; $41a8: $e8 $5a
    ld c, $b3                                     ; $41aa: $0e $b3
    ld c, h                                       ; $41ac: $4c
    ld h, a                                       ; $41ad: $67
    xor e                                         ; $41ae: $ab
    inc c                                         ; $41af: $0c
    ld [hl], a                                    ; $41b0: $77
    rst $20                                       ; $41b1: $e7
    sub e                                         ; $41b2: $93
    inc de                                        ; $41b3: $13
    dec sp                                        ; $41b4: $3b
    ld e, [hl]                                    ; $41b5: $5e
    ld a, [c]                                     ; $41b6: $f2
    rst $20                                       ; $41b7: $e7
    jp c, $f49f                                   ; $41b8: $da $9f $f4

    ld d, l                                       ; $41bb: $55
    add h                                         ; $41bc: $84
    reti                                          ; $41bd: $d9


    or d                                          ; $41be: $b2
    sub a                                         ; $41bf: $97
    inc l                                         ; $41c0: $2c
    dec b                                         ; $41c1: $05
    ld l, e                                       ; $41c2: $6b
    jp nz, $052b                                  ; $41c3: $c2 $2b $05

    ld de, $b200                                  ; $41c6: $11 $00 $b2
    adc b                                         ; $41c9: $88
    ld b, $42                                     ; $41ca: $06 $42
    ld a, b                                       ; $41cc: $78
    sbc h                                         ; $41cd: $9c
    ld a, [de]                                    ; $41ce: $1a
    ld bc, $493d                                  ; $41cf: $01 $3d $49
    xor [hl]                                      ; $41d2: $ae
    ld de, $a6af                                  ; $41d3: $11 $af $a6
    call z, Call_057_4b63                         ; $41d6: $cc $63 $4b
    db $e4                                        ; $41d9: $e4
    dec e                                         ; $41da: $1d
    add a                                         ; $41db: $87
    ld e, [hl]                                    ; $41dc: $5e
    ld [$fc77], sp                                ; $41dd: $08 $77 $fc
    ld c, a                                       ; $41e0: $4f
    and h                                         ; $41e1: $a4
    ld c, [hl]                                    ; $41e2: $4e
    sbc l                                         ; $41e3: $9d
    ld a, [de]                                    ; $41e4: $1a
    ld bc, $c93d                                  ; $41e5: $01 $3d $c9
    ld e, e                                       ; $41e8: $5b
    ld a, [c]                                     ; $41e9: $f2
    ld l, d                                       ; $41ea: $6a
    jp z, $0bdc                                   ; $41eb: $ca $dc $0b

    ld bc, $2e3d                                  ; $41ee: $01 $3d $2e
    db $fc                                        ; $41f1: $fc
    push bc                                       ; $41f2: $c5
    xor c                                         ; $41f3: $a9
    rlca                                          ; $41f4: $07
    or b                                          ; $41f5: $b0
    ld [hl], d                                    ; $41f6: $72
    ld l, e                                       ; $41f7: $6b
    and $11                                       ; $41f8: $e6 $11
    xor a                                         ; $41fa: $af
    ld b, [hl]                                    ; $41fb: $46
    db $eb                                        ; $41fc: $eb
    ld [hl+], a                                   ; $41fd: $22
    and $11                                       ; $41fe: $e6 $11
    ld d, $71                                     ; $4200: $16 $71
    ld l, d                                       ; $4202: $6a
    inc b                                         ; $4203: $04
    dec a                                         ; $4204: $3d
    xor a                                         ; $4205: $af
    ld c, d                                       ; $4206: $4a
    and e                                         ; $4207: $a3

jr_057_4208:
    sbc l                                         ; $4208: $9d
    jp nc, $a987                                  ; $4209: $d2 $87 $a9

    sub l                                         ; $420c: $95
    sub l                                         ; $420d: $95
    ld a, [c]                                     ; $420e: $f2
    ld [$388b], sp                                ; $420f: $08 $8b $38

jr_057_4212:
    dec [hl]                                      ; $4212: $35
    ld [bc], a                                    ; $4213: $02
    db $dd                                        ; $4214: $dd

jr_057_4215:
    and $25                                       ; $4215: $e6 $25
    xor a                                         ; $4217: $af
    or $77                                        ; $4218: $f6 $77
    cp $61                                        ; $421a: $fe $61
    xor a                                         ; $421c: $af

jr_057_421d:
    ld a, l                                       ; $421d: $7d
    or [hl]                                       ; $421e: $b6
    xor h                                         ; $421f: $ac
    db $e3                                        ; $4220: $e3
    jr nc, jr_057_421d                            ; $4221: $30 $fa

    rst $00                                       ; $4223: $c7
    jr c, @-$19                                   ; $4224: $38 $e5

    jr nc, @-$61                                  ; $4226: $30 $9d

    ld d, e                                       ; $4228: $53
    xor a                                         ; $4229: $af
    rst $08                                       ; $422a: $cf
    jp $a596                                      ; $422b: $c3 $96 $a5


    db $eb                                        ; $422e: $eb
    xor l                                         ; $422f: $ad
    db $e3                                        ; $4230: $e3
    jr nc, jr_057_4215                            ; $4231: $30 $e2

    add hl, hl                                    ; $4233: $29
    push hl                                       ; $4234: $e5
    ld e, c                                       ; $4235: $59
    ld b, $e4                                     ; $4236: $06 $e4
    add a                                         ; $4238: $87
    ld h, b                                       ; $4239: $60
    ld bc, $a6e3                                  ; $423a: $01 $e3 $a6
    ld l, $c1                                     ; $423d: $2e $c1
    ccf                                           ; $423f: $3f
    ld e, $d6                                     ; $4240: $1e $d6
    dec bc                                        ; $4242: $0b
    xor $6e                                       ; $4243: $ee $6e
    bit 7, d                                      ; $4245: $cb $7a
    ld e, h                                       ; $4247: $5c
    ld hl, sp-$75                                 ; $4248: $f8 $8b
    rst $20                                       ; $424a: $e7
    ld a, [de]                                    ; $424b: $1a
    ld e, l                                       ; $424c: $5d
    add $ca                                       ; $424d: $c6 $ca
    call $ca67                                    ; $424f: $cd $67 $ca
    or l                                          ; $4252: $b5
    cpl                                           ; $4253: $2f
    ld h, d                                       ; $4254: $62
    cp b                                          ; $4255: $b8
    ld l, [hl]                                    ; $4256: $6e
    ld a, l                                       ; $4257: $7d

jr_057_4258:
    sbc b                                         ; $4258: $98
    ld e, d                                       ; $4259: $5a
    ld e, c                                       ; $425a: $59
    add hl, hl                                    ; $425b: $29
    adc a                                         ; $425c: $8f
    or b                                          ; $425d: $b0
    adc b                                         ; $425e: $88
    ld d, e                                       ; $425f: $53
    inc hl                                        ; $4260: $23
    db $dd                                        ; $4261: $dd
    and $25                                       ; $4262: $e6 $25
    xor a                                         ; $4264: $af
    or $77                                        ; $4265: $f6 $77
    cp $61                                        ; $4267: $fe $61
    xor a                                         ; $4269: $af

jr_057_426a:
    ld a, l                                       ; $426a: $7d

jr_057_426b:
    or [hl]                                       ; $426b: $b6
    xor h                                         ; $426c: $ac
    db $e3                                        ; $426d: $e3
    jr nc, jr_057_426a                            ; $426e: $30 $fa

    rst $00                                       ; $4270: $c7
    jr c, jr_057_4258                             ; $4271: $38 $e5

    jr nc, jr_057_4212                            ; $4273: $30 $9d

    ld d, e                                       ; $4275: $53
    rst $28                                       ; $4276: $ef
    sub [hl]                                      ; $4277: $96
    ld a, d                                       ; $4278: $7a
    db $eb                                        ; $4279: $eb
    jr c, jr_057_4208                             ; $427a: $38 $8c

    ld a, b                                       ; $427c: $78
    ld c, d                                       ; $427d: $4a
    ld a, c                                       ; $427e: $79
    ld d, $f5                                     ; $427f: $16 $f5
    ld h, [hl]                                    ; $4281: $66
    add hl, de                                    ; $4282: $19
    sub b                                         ; $4283: $90
    rra                                           ; $4284: $1f
    add d                                         ; $4285: $82
    dec b                                         ; $4286: $05
    adc h                                         ; $4287: $8c
    sbc e                                         ; $4288: $9b
    cp d                                          ; $4289: $ba
    inc b                                         ; $428a: $04
    rst $38                                       ; $428b: $ff
    ld a, b                                       ; $428c: $78
    ld e, b                                       ; $428d: $58
    cpl                                           ; $428e: $2f
    cp b                                          ; $428f: $b8
    cp e                                          ; $4290: $bb
    dec l                                         ; $4291: $2d
    ld d, e                                       ; $4292: $53
    ld a, [$3530]                                 ; $4293: $fa $30 $35
    cp d                                          ; $4296: $ba
    adc h                                         ; $4297: $8c
    sub l                                         ; $4298: $95
    sbc e                                         ; $4299: $9b
    rst $08                                       ; $429a: $cf
    jp z, Jump_057_794a                           ; $429b: $ca $4a $79

    dec a                                         ; $429e: $3d
    ld l, $fc                                     ; $429f: $2e $fc
    push bc                                       ; $42a1: $c5
    xor c                                         ; $42a2: $a9
    ld de, $2e3d                                  ; $42a3: $11 $3d $2e
    db $fc                                        ; $42a6: $fc
    push bc                                       ; $42a7: $c5
    xor c                                         ; $42a8: $a9
    ld [hl], a                                    ; $42a9: $77
    ld e, e                                       ; $42aa: $5b
    ld c, l                                       ; $42ab: $4d
    sbc c                                         ; $42ac: $99
    sub a                                         ; $42ad: $97
    xor [hl]                                      ; $42ae: $ae
    scf                                           ; $42af: $37
    ld l, h                                       ; $42b0: $6c
    dec [hl]                                      ; $42b1: $35
    push hl                                       ; $42b2: $e5
    ret nc                                        ; $42b3: $d0

    dec bc                                        ; $42b4: $0b
    ld bc, $1e7d                                  ; $42b5: $01 $7d $1e
    add h                                         ; $42b8: $84
    or b                                          ; $42b9: $b0
    db $e3                                        ; $42ba: $e3
    jr nc, jr_057_426b                            ; $42bb: $30 $ae

    ld e, h                                       ; $42bd: $5c
    ld d, e                                       ; $42be: $53
    ld h, [hl]                                    ; $42bf: $66
    ld [$0221], sp                                ; $42c0: $08 $21 $02
    dec a                                         ; $42c3: $3d
    ret                                           ; $42c4: $c9


    db $db                                        ; $42c5: $db
    adc c                                         ; $42c6: $89
    dec e                                         ; $42c7: $1d
    dec hl                                        ; $42c8: $2b
    ld h, l                                       ; $42c9: $65
    ld [$5f61], sp                                ; $42ca: $08 $61 $5f
    and a                                         ; $42cd: $a7
    and e                                         ; $42ce: $a3
    ld e, l                                       ; $42cf: $5d
    ld a, [c]                                     ; $42d0: $f2
    rst $20                                       ; $42d1: $e7
    ld e, d                                       ; $42d2: $5a
    daa                                           ; $42d3: $27
    adc a                                         ; $42d4: $8f
    and h                                         ; $42d5: $a4
    sub $b1                                       ; $42d6: $d6 $b1
    or b                                          ; $42d8: $b0
    ld d, l                                       ; $42d9: $55
    or [hl]                                       ; $42da: $b6
    ld b, b                                       ; $42db: $40
    inc b                                         ; $42dc: $04
    cp l                                          ; $42dd: $bd
    ld a, a                                       ; $42de: $7f
    adc h                                         ; $42df: $8c
    ld d, e                                       ; $42e0: $53
    ld l, $8f                                     ; $42e1: $2e $8f
    sla e                                         ; $42e3: $cb $23
    xor c                                         ; $42e5: $a9
    jp hl                                         ; $42e6: $e9


    inc e                                         ; $42e7: $1c
    ld a, a                                       ; $42e8: $7f
    adc h                                         ; $42e9: $8c
    inc sp                                        ; $42ea: $33
    or e                                          ; $42eb: $b3
    ld l, e                                       ; $42ec: $6b
    ld e, h                                       ; $42ed: $5c
    cp c                                          ; $42ee: $b9
    dec [hl]                                      ; $42ef: $35
    ld [hl], e                                    ; $42f0: $73
    xor a                                         ; $42f1: $af
    ld [hl], l                                    ; $42f2: $75
    cp e                                          ; $42f3: $bb
    inc a                                         ; $42f4: $3c
    rst $10                                       ; $42f5: $d7
    ld [$f537], sp                                ; $42f6: $08 $37 $f5
    add e                                         ; $42f9: $83
    ld [hl], a                                    ; $42fa: $77
    ld [hl-], a                                   ; $42fb: $32
    sbc $8f                                       ; $42fc: $de $8f
    pop de                                        ; $42fe: $d1
    ld c, e                                       ; $42ff: $4b
    scf                                           ; $4300: $37
    ld c, a                                       ; $4301: $4f
    sub l                                         ; $4302: $95
    ld c, c                                       ; $4303: $49
    ld c, [hl]                                    ; $4304: $4e
    adc l                                         ; $4305: $8d
    nop                                           ; $4306: $00
    ld a, l                                       ; $4307: $7d
    inc e                                         ; $4308: $1c
    sub $cc                                       ; $4309: $d6 $cc
    db $ec                                        ; $430b: $ec
    sbc c                                         ; $430c: $99
    reti                                          ; $430d: $d9


    dec [hl]                                      ; $430e: $35
    xor [hl]                                      ; $430f: $ae
    call c, $799a                                 ; $4310: $dc $9a $79
    xor a                                         ; $4313: $af
    ld e, c                                       ; $4314: $59
    inc c                                         ; $4315: $0c
    rst $10                                       ; $4316: $d7
    rst $00                                       ; $4317: $c7
    ld h, c                                       ; $4318: $61
    ld e, h                                       ; $4319: $5c
    ld e, c                                       ; $431a: $59
    add hl, hl                                    ; $431b: $29
    xor a                                         ; $431c: $af
    db $e3                                        ; $431d: $e3
    or b                                          ; $431e: $b0
    xor b                                         ; $431f: $a8
    adc e                                         ; $4320: $8b
    ld a, b                                       ; $4321: $78
    db $fc                                        ; $4322: $fc
    ld h, d                                       ; $4323: $62
    di                                            ; $4324: $f3
    sub h                                         ; $4325: $94
    ld e, c                                       ; $4326: $59
    cp e                                          ; $4327: $bb
    di                                            ; $4328: $f3
    sub l                                         ; $4329: $95
    ld h, l                                       ; $432a: $65
    dec e                                         ; $432b: $1d
    add a                                         ; $432c: $87
    ld de, $d6af                                  ; $432d: $11 $af $d6
    ld a, h                                       ; $4330: $7c
    ld a, b                                       ; $4331: $78
    add a                                         ; $4332: $87
    ld a, [de]                                    ; $4333: $1a
    sub $78                                       ; $4334: $d6 $78
    add hl, de                                    ; $4336: $19
    ld c, a                                       ; $4337: $4f
    add hl, de                                    ; $4338: $19
    jp Jump_000_24f5                              ; $4339: $c3 $f5 $24


    rst $38                                       ; $433c: $ff
    db $ec                                        ; $433d: $ec
    rst $00                                       ; $433e: $c7
    add sp, $01                                   ; $433f: $e8 $01
    ret z                                         ; $4341: $c8

    ld [hl+], a                                   ; $4342: $22
    sbc d                                         ; $4343: $9a
    push hl                                       ; $4344: $e5
    or b                                          ; $4345: $b0
    sbc [hl]                                      ; $4346: $9e
    ld d, a                                       ; $4347: $57
    and l                                         ; $4348: $a5
    add hl, de                                    ; $4349: $19
    pop af                                        ; $434a: $f1
    sub h                                         ; $434b: $94
    ld a, [c]                                     ; $434c: $f2
    ld l, b                                       ; $434d: $68
    ld e, l                                       ; $434e: $5d
    call nz, $ec3c                                ; $434f: $c4 $3c $ec
    and b                                         ; $4352: $a0
    dec e                                         ; $4353: $1d
    pop af                                        ; $4354: $f1
    sub h                                         ; $4355: $94
    ld a, [c]                                     ; $4356: $f2
    ld a, [hl-]                                   ; $4357: $3a
    ld c, $4b                                     ; $4358: $0e $4b
    ld a, [$9e2a]                                 ; $435a: $fa $2a $9e
    ld [$1352], a                                 ; $435d: $ea $52 $13
    ld a, [bc]                                    ; $4360: $0a
    ld [hl+], a                                   ; $4361: $22
    add hl, hl                                    ; $4362: $29
    call nc, Call_057_7994                        ; $4363: $d4 $94 $79
    xor [hl]                                      ; $4366: $ae
    add hl, hl                                    ; $4367: $29
    ld a, l                                       ; $4368: $7d
    daa                                           ; $4369: $27
    db $e3                                        ; $436a: $e3
    ld de, $f6af                                  ; $436b: $11 $af $f6
    db $e4                                        ; $436e: $e4
    inc h                                         ; $436f: $24
    xor a                                         ; $4370: $af
    call z, Call_057_73a3                         ; $4371: $cc $a3 $73
    ld c, l                                       ; $4374: $4d
    sbc c                                         ; $4375: $99
    reti                                          ; $4376: $d9


    xor c                                         ; $4377: $a9
    ld [hl], a                                    ; $4378: $77
    push af                                       ; $4379: $f5
    ldh a, [rNR22]                                ; $437a: $f0 $17
    db $fd                                        ; $437c: $fd
    sub b                                         ; $437d: $90
    reti                                          ; $437e: $d9


    ld [de], a                                    ; $437f: $12
    add $bf                                       ; $4380: $c6 $bf
    xor l                                         ; $4382: $ad
    ld [hl], a                                    ; $4383: $77
    ld a, l                                       ; $4384: $7d
    sbc d                                         ; $4385: $9a
    cp $12                                        ; $4386: $fe $12
    ldh [$7a], a                                  ; $4388: $e0 $7a
    ld d, e                                       ; $438a: $53
    db $e3                                        ; $438b: $e3
    rst $18                                       ; $438c: $df
    jp nc, Jump_057_7a2f                          ; $438d: $d2 $2f $7a

    db $fc                                        ; $4390: $fc
    db $db                                        ; $4391: $db
    ld c, [hl]                                    ; $4392: $4e
    ld c, [hl]                                    ; $4393: $4e
    ld a, h                                       ; $4394: $7c
    ld e, [hl]                                    ; $4395: $5e
    or e                                          ; $4396: $b3
    ld b, b                                       ; $4397: $40
    inc b                                         ; $4398: $04
    dec a                                         ; $4399: $3d
    ret                                           ; $439a: $c9


    sbc e                                         ; $439b: $9b
    ld [hl], d                                    ; $439c: $72
    ld a, c                                       ; $439d: $79
    sbc h                                         ; $439e: $9c
    rst $30                                       ; $439f: $f7
    inc h                                         ; $43a0: $24
    ld d, b                                       ; $43a1: $50
    and l                                         ; $43a2: $a5
    sbc l                                         ; $43a3: $9d
    ld l, e                                       ; $43a4: $6b
    jp z, Jump_000_1fbc                           ; $43a5: $ca $bc $1f

    and e                                         ; $43a8: $a3
    add a                                         ; $43a9: $87
    sbc a                                         ; $43aa: $9f
    inc b                                         ; $43ab: $04
    adc a                                         ; $43ac: $8f
    xor $aa                                       ; $43ad: $ee $aa
    jp $ed8e                                      ; $43af: $c3 $8e $ed


    sbc l                                         ; $43b2: $9d
    di                                            ; $43b3: $f3
    dec h                                         ; $43b4: $25
    cp b                                          ; $43b5: $b8
    halt                                          ; $43b6: $76
    ld [hl-], a                                   ; $43b7: $32
    ld e, [hl]                                    ; $43b8: $5e
    call nc, Call_000_3c45                        ; $43b9: $d4 $45 $3c
    ld [c], a                                     ; $43bc: $e2
    adc l                                         ; $43bd: $8d
    ld e, a                                       ; $43be: $5f
    ld l, h                                       ; $43bf: $6c
    and $99                                       ; $43c0: $e6 $99
    ld b, a                                       ; $43c2: $47
    db $eb                                        ; $43c3: $eb
    xor l                                         ; $43c4: $ad
    dec h                                         ; $43c5: $25
    add hl, sp                                    ; $43c6: $39
    ld e, $0b                                     ; $43c7: $1e $0b
    cpl                                           ; $43c9: $2f
    db $ed                                        ; $43ca: $ed
    ld a, [bc]                                    ; $43cb: $0a
    ld e, h                                       ; $43cc: $5c
    cp c                                          ; $43cd: $b9
    dec [hl]                                      ; $43ce: $35
    cp b                                          ; $43cf: $b8
    ld l, [hl]                                    ; $43d0: $6e
    sub a                                         ; $43d1: $97
    sub a                                         ; $43d2: $97
    ld a, h                                       ; $43d3: $7c
    ld de, $aed7                                  ; $43d4: $11 $d7 $ae
    ld e, $99                                     ; $43d7: $1e $99
    dec l                                         ; $43d9: $2d
    ld h, c                                       ; $43da: $61
    db $fc                                        ; $43db: $fc
    db $db                                        ; $43dc: $db
    ld a, d                                       ; $43dd: $7a
    rst $10                                       ; $43de: $d7
    and a                                         ; $43df: $a7
    jp hl                                         ; $43e0: $e9


    cpl                                           ; $43e1: $2f
    ld h, c                                       ; $43e2: $61
    sub a                                         ; $43e3: $97
    adc h                                         ; $43e4: $8c

jr_057_43e5:
    ld c, b                                       ; $43e5: $48

jr_057_43e6:
    ld e, h                                       ; $43e6: $5c
    ld [hl], b                                    ; $43e7: $70
    db $dd                                        ; $43e8: $dd
    ld l, $2f                                     ; $43e9: $2e $2f
    ld a, $59                                     ; $43eb: $3e $59
    and b                                         ; $43ed: $a0
    jr nz, @+$04                                  ; $43ee: $20 $02

    db $dd                                        ; $43f0: $dd
    and $25                                       ; $43f1: $e6 $25
    xor a                                         ; $43f3: $af
    ld b, [hl]                                    ; $43f4: $46
    ld e, d                                       ; $43f5: $5a
    ld a, b                                       ; $43f6: $78
    cpl                                           ; $43f7: $2f
    sbc c                                         ; $43f8: $99
    ld [hl], d                                    ; $43f9: $72
    jr @-$49                                      ; $43fa: $18 $b5

    or d                                          ; $43fc: $b2
    ld d, d                                       ; $43fd: $52
    ld e, [hl]                                    ; $43fe: $5e
    ld a, $67                                     ; $43ff: $3e $67
    ld a, [hl-]                                   ; $4401: $3a
    rst $28                                       ; $4402: $ef
    dec h                                         ; $4403: $25

jr_057_4404:
    adc e                                         ; $4404: $8b
    ld a, [c]                                     ; $4405: $f2
    ret                                           ; $4406: $c9


    and a                                         ; $4407: $a7
    db $dd                                        ; $4408: $dd
    jp hl                                         ; $4409: $e9


    xor e                                         ; $440a: $ab
    jp c, Jump_000_130f                           ; $440b: $da $0f $13

    xor d                                         ; $440e: $aa
    sub $71                                       ; $440f: $d6 $71
    jr jr_057_4404                                ; $4411: $18 $f1

    sub h                                         ; $4413: $94
    ld a, [c]                                     ; $4414: $f2
    adc [hl]                                      ; $4415: $8e
    cp h                                          ; $4416: $bc
    jr jr_057_43e6                                ; $4417: $18 $cd

    dec sp                                        ; $4419: $3b
    call nc, Call_057_6b0e                        ; $441a: $d4 $0e $6b
    ld [bc], a                                    ; $441d: $02
    cpl                                           ; $441e: $2f
    db $e3                                        ; $441f: $e3
    add hl, hl                                    ; $4420: $29
    rlca                                          ; $4421: $07
    adc b                                         ; $4422: $88
    nop                                           ; $4423: $00
    db $dd                                        ; $4424: $dd
    and $25                                       ; $4425: $e6 $25
    xor a                                         ; $4427: $af
    ld b, [hl]                                    ; $4428: $46
    ld e, d                                       ; $4429: $5a
    ld a, b                                       ; $442a: $78
    cpl                                           ; $442b: $2f
    sbc c                                         ; $442c: $99
    ld [hl], d                                    ; $442d: $72
    jr jr_057_43e5                                ; $442e: $18 $b5

    or d                                          ; $4430: $b2
    ld d, d                                       ; $4431: $52
    ld e, [hl]                                    ; $4432: $5e

jr_057_4433:
    ld a, $67                                     ; $4433: $3e $67
    ld a, [hl-]                                   ; $4435: $3a
    rst $28                                       ; $4436: $ef
    dec h                                         ; $4437: $25
    adc e                                         ; $4438: $8b
    ld a, [c]                                     ; $4439: $f2

jr_057_443a:
    ret                                           ; $443a: $c9


    rlca                                          ; $443b: $07
    ld de, $5d3d                                  ; $443c: $11 $3d $5d
    dec [hl]                                      ; $443f: $35
    jp nz, Jump_057_5da5                          ; $4440: $c2 $a5 $5d

    ld a, [c]                                     ; $4443: $f2
    ld [hl], a                                    ; $4444: $77
    and d                                         ; $4445: $a2
    sbc $9a                                       ; $4446: $de $9a
    ld b, a                                       ; $4448: $47
    cp b                                          ; $4449: $b8
    dec [hl]                                      ; $444a: $35
    rst $10                                       ; $444b: $d7
    sub d                                         ; $444c: $92
    cp [hl]                                       ; $444d: $be
    jp z, Jump_000_2c4b                           ; $444e: $ca $4b $2c

    ld [c], a                                     ; $4451: $e2
    ld e, d                                       ; $4452: $5a
    ld c, $23                                     ; $4453: $0e $23
    ld a, [hl-]                                   ; $4455: $3a
    ld l, [hl]                                    ; $4456: $6e
    and h                                         ; $4457: $a4
    ld b, a                                       ; $4458: $47
    inc h                                         ; $4459: $24
    xor [hl]                                      ; $445a: $ae
    daa                                           ; $445b: $27
    xor d                                         ; $445c: $aa
    inc c                                         ; $445d: $0c
    rst $10                                       ; $445e: $d7
    rst $28                                       ; $445f: $ef
    sub d                                         ; $4460: $92
    cpl                                           ; $4461: $2f
    ld [c], a                                     ; $4462: $e2
    push hl                                       ; $4463: $e5
    call nz, $f335                                ; $4464: $c4 $35 $f3
    cp b                                          ; $4467: $b8
    ld [hl], d                                    ; $4468: $72
    ld l, e                                       ; $4469: $6b
    jp c, $f329                                   ; $446a: $da $29 $f3

    ld e, h                                       ; $446d: $5c
    dec sp                                        ; $446e: $3b
    sub h                                         ; $446f: $94
    ldh a, [$4e]                                  ; $4470: $f0 $4e
    add $a3                                       ; $4472: $c6 $a3
    cp e                                          ; $4474: $bb
    jp z, $3a35                                   ; $4475: $ca $35 $3a

    or a                                          ; $4478: $b7
    cp b                                          ; $4479: $b8
    di                                            ; $447a: $f3
    jr nc, jr_057_4433                            ; $447b: $30 $b6

    ld b, b                                       ; $447d: $40
    inc b                                         ; $447e: $04
    or a                                          ; $447f: $b7
    ld a, a                                       ; $4480: $7f
    ld h, c                                       ; $4481: $61
    db $ed                                        ; $4482: $ed
    call nc, Call_057_6b9b                        ; $4483: $d4 $9b $6b
    ret                                           ; $4486: $c9


    ld e, a                                       ; $4487: $5f
    ld h, d                                       ; $4488: $62
    ld de, $6a57                                  ; $4489: $11 $57 $6a
    inc b                                         ; $448c: $04
    add b                                         ; $448d: $80
    rst $38                                       ; $448e: $ff
    jp nc, Jump_000_297a                          ; $448f: $d2 $7a $29

    adc a                                         ; $4492: $8f
    and [hl]                                      ; $4493: $a6
    sbc b                                         ; $4494: $98
    ld b, a                                       ; $4495: $47
    scf                                           ; $4496: $37
    sub a                                         ; $4497: $97
    ld b, a                                       ; $4498: $47
    ld h, [hl]                                    ; $4499: $66
    ld c, e                                       ; $449a: $4b
    jr jr_057_443a                                ; $449b: $18 $9d

    ld l, e                                       ; $449d: $6b
    jp z, $86cc                                   ; $449e: $ca $cc $86

    ld [$1c7d], sp                                ; $44a1: $08 $7d $1c
    ld b, [hl]                                    ; $44a4: $46
    rst $38                                       ; $44a5: $ff
    jr jr_057_450f                                ; $44a6: $18 $67

    reti                                          ; $44a8: $d9


    ld d, a                                       ; $44a9: $57
    ld a, l                                       ; $44aa: $7d
    ld b, e                                       ; $44ab: $43
    ld [$93e3], sp                                ; $44ac: $08 $e3 $93
    dec h                                         ; $44af: $25
    ld a, a                                       ; $44b0: $7f
    ccf                                           ; $44b1: $3f
    ld b, [hl]                                    ; $44b2: $46
    cpl                                           ; $44b3: $2f
    ld d, b                                       ; $44b4: $50
    bit 4, c                                      ; $44b5: $cb $61
    ld b, a                                       ; $44b7: $47
    ld e, [hl]                                    ; $44b8: $5e
    adc h                                         ; $44b9: $8c
    ld e, $b6                                     ; $44ba: $1e $b6
    ld e, d                                       ; $44bc: $5a
    ld l, a                                       ; $44bd: $6f
    ld c, l                                       ; $44be: $4d
    xor b                                         ; $44bf: $a8
    xor a                                         ; $44c0: $af
    ld a, d                                       ; $44c1: $7a
    xor l                                         ; $44c2: $ad
    rst $20                                       ; $44c3: $e7
    ret                                           ; $44c4: $c9


    ld e, h                                       ; $44c5: $5c
    db $eb                                        ; $44c6: $eb
    db $e4                                        ; $44c7: $e4
    sbc l                                         ; $44c8: $9d
    sbc b                                         ; $44c9: $98
    ld b, e                                       ; $44ca: $43
    sub d                                         ; $44cb: $92
    inc hl                                        ; $44cc: $23
    cp e                                          ; $44cd: $bb
    sub [hl]                                      ; $44ce: $96
    jp $f312                                      ; $44cf: $c3 $12 $f3


    ld e, [hl]                                    ; $44d2: $5e
    db $e3                                        ; $44d3: $e3
    ld h, l                                       ; $44d4: $65
    inc a                                         ; $44d5: $3c
    and l                                         ; $44d6: $a5
    add hl, hl                                    ; $44d7: $29
    cp b                                          ; $44d8: $b8
    dec sp                                        ; $44d9: $3b
    sbc a                                         ; $44da: $9f
    sbc h                                         ; $44db: $9c
    ret c                                         ; $44dc: $d8

    pop af                                        ; $44dd: $f1
    adc b                                         ; $44de: $88
    daa                                           ; $44df: $27
    ld c, e                                       ; $44e0: $4b
    call z, $ec93                                 ; $44e1: $cc $93 $ec
    ld h, l                                       ; $44e4: $65
    inc a                                         ; $44e5: $3c
    ld h, l                                       ; $44e6: $65
    add hl, de                                    ; $44e7: $19
    sub a                                         ; $44e8: $97
    adc c                                         ; $44e9: $89
    xor h                                         ; $44ea: $ac
    xor h                                         ; $44eb: $ac
    inc a                                         ; $44ec: $3c
    ld b, d                                       ; $44ed: $42
    rla                                           ; $44ee: $17
    ld h, l                                       ; $44ef: $65
    add c                                         ; $44f0: $81
    ld [$e6dd], sp                                ; $44f1: $08 $dd $e6
    ld de, $294f                                  ; $44f4: $11 $4f $29
    xor a                                         ; $44f7: $af
    db $e3                                        ; $44f8: $e3
    or b                                          ; $44f9: $b0
    rra                                           ; $44fa: $1f
    and e                                         ; $44fb: $a3
    rst $00                                       ; $44fc: $c7
    sub [hl]                                      ; $44fd: $96
    ret z                                         ; $44fe: $c8

    inc hl                                        ; $44ff: $23
    add hl, hl                                    ; $4500: $29
    cp b                                          ; $4501: $b8
    sbc [hl]                                      ; $4502: $9e
    db $e4                                        ; $4503: $e4
    sbc a                                         ; $4504: $9f
    ld de, $f64f                                  ; $4505: $11 $4f $f6
    ld h, e                                       ; $4508: $63
    db $f4                                        ; $4509: $f4
    ld [de], a                                    ; $450a: $12
    di                                            ; $450b: $f3
    sub h                                         ; $450c: $94
    ld e, c                                       ; $450d: $59
    cp e                                          ; $450e: $bb

jr_057_450f:
    call nz, $b94a                                ; $450f: $c4 $4a $b9
    sub $71                                       ; $4512: $d6 $71
    jr @+$4b                                      ; $4514: $18 $49

    db $ed                                        ; $4516: $ed
    pop af                                        ; $4517: $f1
    adc b                                         ; $4518: $88
    daa                                           ; $4519: $27
    adc e                                         ; $451a: $8b
    ld c, a                                       ; $451b: $4f
    ld b, [hl]                                    ; $451c: $46
    ld a, a                                       ; $451d: $7f
    ld de, $994f                                  ; $451e: $11 $4f $99
    and a                                         ; $4521: $a7
    inc sp                                        ; $4522: $33
    call c, $199d                                 ; $4523: $dc $9d $19
    ld l, e                                       ; $4526: $6b
    ld [hl], a                                    ; $4527: $77
    xor b                                         ; $4528: $a8
    dec b                                         ; $4529: $05
    xor d                                         ; $452a: $aa
    sub [hl]                                      ; $452b: $96
    ld a, h                                       ; $452c: $7c
    adc b                                         ; $452d: $88
    nop                                           ; $452e: $00
    or a                                          ; $452f: $b7
    rst $20                                       ; $4530: $e7
    ld c, d                                       ; $4531: $4a
    cp a                                          ; $4532: $bf
    inc de                                        ; $4533: $13
    xor l                                         ; $4534: $ad
    cp h                                          ; $4535: $bc
    or h                                          ; $4536: $b4
    rst $38                                       ; $4537: $ff
    ld h, c                                       ; $4538: $61
    db $ed                                        ; $4539: $ed
    ret c                                         ; $453a: $d8

    ld [de], a                                    ; $453b: $12
    ld b, a                                       ; $453c: $47
    dec l                                         ; $453d: $2d
    db $fd                                        ; $453e: $fd
    reti                                          ; $453f: $d9


    jp Jump_000_3b0e                              ; $4540: $c3 $0e $3b


    sub h                                         ; $4543: $94
    ld [$4f5c], sp                                ; $4544: $08 $5c $4f
    sub d                                         ; $4547: $92
    ld c, e                                       ; $4548: $4b
    dec a                                         ; $4549: $3d
    reti                                          ; $454a: $d9


    rst $18                                       ; $454b: $df
    ld l, e                                       ; $454c: $6b
    ld l, l                                       ; $454d: $6d
    adc c                                         ; $454e: $89
    ld c, e                                       ; $454f: $4b
    ld e, c                                       ; $4550: $59
    ld d, $9f                                     ; $4551: $16 $9f
    inc c                                         ; $4553: $0c
    ccf                                           ; $4554: $3f
    add hl, de                                    ; $4555: $19
    sub c                                         ; $4556: $91
    sbc e                                         ; $4557: $9b
    ld a, [c]                                     ; $4558: $f2
    cp d                                          ; $4559: $ba
    inc [hl]                                      ; $455a: $34
    ld e, $b6                                     ; $455b: $1e $b6
    jp c, $cd6b                                   ; $455d: $da $6b $cd

jr_057_4560:
    db $e3                                        ; $4560: $e3
    ld a, [c]                                     ; $4561: $f2
    adc b                                         ; $4562: $88

jr_057_4563:
    xor h                                         ; $4563: $ac
    inc l                                         ; $4564: $2c
    ld e, $49                                     ; $4565: $1e $49
    xor l                                         ; $4567: $ad
    ld l, a                                       ; $4568: $6f
    ld e, c                                       ; $4569: $59
    ld a, b                                       ; $456a: $78
    ld [de], a                                    ; $456b: $12
    ld a, d                                       ; $456c: $7a
    ld hl, $4480                                  ; $456d: $21 $80 $44
    ld c, [hl]                                    ; $4570: $4e
    call nc, $a534                                ; $4571: $d4 $34 $a5
    sbc l                                         ; $4574: $9d
    ld l, e                                       ; $4575: $6b
    jp z, $c93c                                   ; $4576: $ca $3c $c9

    sbc $5f                                       ; $4579: $de $5f
    ld [c], a                                     ; $457b: $e2
    ld l, a                                       ; $457c: $6f
    jp hl                                         ; $457d: $e9


    or l                                          ; $457e: $b5
    ld l, [hl]                                    ; $457f: $6e
    ld a, l                                       ; $4580: $7d
    call nz, $ec6b                                ; $4581: $c4 $6b $ec
    add d                                         ; $4584: $82
    ld [$e429], sp                                ; $4585: $08 $29 $e4
    rst $08                                       ; $4588: $cf
    ld [c], a                                     ; $4589: $e2
    ld [hl], d                                    ; $458a: $72
    ld c, l                                       ; $458b: $4d
    jp hl                                         ; $458c: $e9


    inc hl                                        ; $458d: $23
    xor c                                         ; $458e: $a9
    ld h, c                                       ; $458f: $61
    rlca                                          ; $4590: $07
    db $ed                                        ; $4591: $ed
    xor $cb                                       ; $4592: $ee $cb
    call z, Call_057_5eae                         ; $4594: $cc $ae $5e
    cp e                                          ; $4597: $bb
    di                                            ; $4598: $f3
    ret                                           ; $4599: $c9


    adc c                                         ; $459a: $89
    dec e                                         ; $459b: $1d
    ld c, a                                       ; $459c: $4f
    jp hl                                         ; $459d: $e9


    ld c, e                                       ; $459e: $4b
    db $eb                                        ; $459f: $eb
    and l                                         ; $45a0: $a5
    inc a                                         ; $45a1: $3c
    or [hl]                                       ; $45a2: $b6
    ld b, h                                       ; $45a3: $44
    rrca                                          ; $45a4: $0f
    cp e                                          ; $45a5: $bb
    ld b, [hl]                                    ; $45a6: $46
    ld d, d                                       ; $45a7: $52
    dec sp                                        ; $45a8: $3b
    ld sp, $bf37                                  ; $45a9: $31 $37 $bf
    ld c, d                                       ; $45ac: $4a
    ei                                            ; $45ad: $fb
    dec hl                                        ; $45ae: $2b
    di                                            ; $45af: $f3
    ld [hl], d                                    ; $45b0: $72

jr_057_45b1:
    jr jr_057_45b1                                ; $45b1: $18 $fe

    and d                                         ; $45b3: $a2
    jp z, $a923                                   ; $45b4: $ca $23 $a9

    pop af                                        ; $45b7: $f1
    sub a                                         ; $45b8: $97
    jr nc, jr_057_4560                            ; $45b9: $30 $a5

    rst $28                                       ; $45bb: $ef
    rst $00                                       ; $45bc: $c7
    add sp, $11                                   ; $45bd: $e8 $11
    xor a                                         ; $45bf: $af
    ld h, $d9                                     ; $45c0: $26 $d9
    jp Jump_000_1056                              ; $45c2: $c3 $56 $10


    ld bc, $cb00                                  ; $45c5: $01 $00 $cb
    inc hl                                        ; $45c8: $23
    or d                                          ; $45c9: $b2
    ld [hl], d                                    ; $45ca: $72
    push af                                       ; $45cb: $f5
    ld e, d                                       ; $45cc: $5a
    rst $08                                       ; $45cd: $cf
    sub e                                         ; $45ce: $93
    sub c                                         ; $45cf: $91
    push de                                       ; $45d0: $d5
    sub l                                         ; $45d1: $95
    jr z, jr_057_4563                             ; $45d2: $28 $8f

    ld e, d                                       ; $45d4: $5a

jr_057_45d5:
    call z, Call_057_7b18                         ; $45d5: $cc $18 $7b
    ld [hl], h                                    ; $45d8: $74
    xor [hl]                                      ; $45d9: $ae
    db $f4                                        ; $45da: $f4
    sbc a                                         ; $45db: $9f
    ld h, l                                       ; $45dc: $65
    ld e, h                                       ; $45dd: $5c
    ld h, $b2                                     ; $45de: $26 $b2
    ld [hl-], a                                   ; $45e0: $32
    adc a                                         ; $45e1: $8f
    ret nc                                        ; $45e2: $d0

    ld b, l                                       ; $45e3: $45
    adc l                                         ; $45e4: $8d
    and h                                         ; $45e5: $a4
    halt                                          ; $45e6: $76
    ld [hl], e                                    ; $45e7: $73
    ld l, e                                       ; $45e8: $6b
    ld h, $dc                                     ; $45e9: $26 $dc
    add d                                         ; $45eb: $82
    push hl                                       ; $45ec: $e5
    ret z                                         ; $45ed: $c8

    ld h, e                                       ; $45ee: $63
    ld c, [hl]                                    ; $45ef: $4e
    cp l                                          ; $45f0: $bd
    ld a, e                                       ; $45f1: $7b
    jp Jump_000_0e3a                              ; $45f2: $c3 $3a $0e


    ld c, e                                       ; $45f5: $4b
    xor h                                         ; $45f6: $ac
    sub h                                         ; $45f7: $94
    ld l, e                                       ; $45f8: $6b
    inc h                                         ; $45f9: $24
    or l                                          ; $45fa: $b5
    rst $00                                       ; $45fb: $c7
    inc hl                                        ; $45fc: $23
    sbc [hl]                                      ; $45fd: $9e
    db $ec                                        ; $45fe: $ec
    or h                                          ; $45ff: $b4
    ld b, a                                       ; $4600: $47
    sub d                                         ; $4601: $92
    ei                                            ; $4602: $fb
    ld [hl+], a                                   ; $4603: $22
    db $e3                                        ; $4604: $e3
    jp z, $99ad                                   ; $4605: $ca $ad $99

    ld [hl], a                                    ; $4608: $77

jr_057_4609:
    ld [hl-], a                                   ; $4609: $32
    sbc [hl]                                      ; $460a: $9e
    ld h, l                                       ; $460b: $65
    cpl                                           ; $460c: $2f
    ld l, c                                       ; $460d: $69
    ld d, [hl]                                    ; $460e: $56
    ld a, [c]                                     ; $460f: $f2
    dec h                                         ; $4610: $25
    inc e                                         ; $4611: $1c
    db $fc                                        ; $4612: $fc
    and h                                         ; $4613: $a4
    dec hl                                        ; $4614: $2b
    ld [hl], c                                    ; $4615: $71
    and l                                         ; $4616: $a5
    sbc $5d                                       ; $4617: $de $5d
    ld l, a                                       ; $4619: $6f
    ld sp, hl                                     ; $461a: $f9
    sbc h                                         ; $461b: $9c
    xor c                                         ; $461c: $a9
    ld a, d                                       ; $461d: $7a
    db $e3                                        ; $461e: $e3
    rst $18                                       ; $461f: $df
    sub $5b                                       ; $4620: $d6 $5b
    inc de                                        ; $4622: $13
    ld [$d4ab], a                                 ; $4623: $ea $ab $d4
    ld [$fe3d], sp                                ; $4626: $08 $3d $fe
    rst $20                                       ; $4629: $e7
    ld c, c                                       ; $462a: $49
    ld [$71f5], a                                 ; $462b: $ea $f5 $71
    ld e, b                                       ; $462e: $58
    ld h, d                                       ; $462f: $62
    pop hl                                        ; $4630: $e1
    or a                                          ; $4631: $b7
    rra                                           ; $4632: $1f
    and e                                         ; $4633: $a3
    ld b, a                                       ; $4634: $47
    db $ed                                        ; $4635: $ed
    ld a, b                                       ; $4636: $78
    jp z, $fde5                                   ; $4637: $ca $e5 $fd

    xor c                                         ; $463a: $a9
    rla                                           ; $463b: $17
    jr nz, jr_057_4640                            ; $463c: $20 $02

    add hl, hl                                    ; $463e: $29
    ld c, l                                       ; $463f: $4d

jr_057_4640:
    xor a                                         ; $4640: $af
    sub c                                         ; $4641: $91
    push de                                       ; $4642: $d5
    sub l                                         ; $4643: $95
    jr z, jr_057_45d5                             ; $4644: $28 $8f

    jp c, $1f91                                   ; $4646: $da $91 $1f

    cp l                                          ; $4649: $bd
    db $e3                                        ; $464a: $e3
    jr nc, jr_057_4687                            ; $464b: $30 $3a

    ld d, a                                       ; $464d: $57
    ld a, [$594f]                                 ; $464e: $fa $4f $59
    add $65                                       ; $4651: $c6 $65
    ld [hl+], a                                   ; $4653: $22
    dec hl                                        ; $4654: $2b
    dec hl                                        ; $4655: $2b
    adc a                                         ; $4656: $8f
    ret nc                                        ; $4657: $d0

    ld b, l                                       ; $4658: $45

Jump_057_4659:
    ld e, c                                       ; $4659: $59
    or $a7                                        ; $465a: $f6 $a7
    inc l                                         ; $465c: $2c
    and e                                         ; $465d: $a3
    ld [hl], e                                    ; $465e: $73
    and l                                         ; $465f: $a5
    ld [hl], l                                    ; $4660: $75
    push bc                                       ; $4661: $c5
    ld e, [hl]                                    ; $4662: $5e
    ld a, b                                       ; $4663: $78
    ld [de], a                                    ; $4664: $12
    inc l                                         ; $4665: $2c
    ld [hl], b                                    ; $4666: $70
    db $dd                                        ; $4667: $dd
    sub [hl]                                      ; $4668: $96
    and l                                         ; $4669: $a5
    call Call_000_1e23                            ; $466a: $cd $23 $1e
    add [hl]                                      ; $466d: $86
    inc bc                                        ; $466e: $03
    db $fc                                        ; $466f: $fc
    rst $00                                       ; $4670: $c7
    sub l                                         ; $4671: $95
    ld l, e                                       ; $4672: $6b
    call nz, $9193                                ; $4673: $c4 $93 $91
    push de                                       ; $4676: $d5
    sub l                                         ; $4677: $95
    jr z, jr_057_4609                             ; $4678: $28 $8f

    jp c, $8ee1                                   ; $467a: $da $e1 $8e

    sbc e                                         ; $467d: $9b
    and a                                         ; $467e: $a7
    call z, $9653                                 ; $467f: $cc $53 $96
    dec h                                         ; $4682: $25
    add hl, sp                                    ; $4683: $39
    or d                                          ; $4684: $b2
    dec bc                                        ; $4685: $0b
    ld [hl+], a                                   ; $4686: $22

jr_057_4687:
    db $dd                                        ; $4687: $dd
    sub [hl]                                      ; $4688: $96
    ld [hl], c                                    ; $4689: $71
    sbc c                                         ; $468a: $99
    ret z                                         ; $468b: $c8

    ld [$fd2d], a                                 ; $468c: $ea $2d $fd
    ld h, e                                       ; $468f: $63
    db $ec                                        ; $4690: $ec
    cp h                                          ; $4691: $bc
    pop hl                                        ; $4692: $e1
    sbc a                                         ; $4693: $9f
    ld a, d                                       ; $4694: $7a
    db $fd                                        ; $4695: $fd
    sbc [hl]                                      ; $4696: $9e
    ld h, e                                       ; $4697: $63
    ld e, c                                       ; $4698: $59
    ld [c], a                                     ; $4699: $e2
    rst $08                                       ; $469a: $cf
    ld d, e                                       ; $469b: $53
    ld l, $2f                                     ; $469c: $2e $2f
    db $e3                                        ; $469e: $e3
    db $dd                                        ; $469f: $dd
    and e                                         ; $46a0: $a3
    sbc a                                         ; $46a1: $9f
    di                                            ; $46a2: $f3
    ld a, e                                       ; $46a3: $7b
    xor l                                         ; $46a4: $ad
    adc a                                         ; $46a5: $8f
    jp $a762                                      ; $46a6: $c3 $62 $a7


    adc e                                         ; $46a9: $8b
    ld h, h                                       ; $46aa: $64
    rst $30                                       ; $46ab: $f7
    cpl                                           ; $46ac: $2f
    ld a, e                                       ; $46ad: $7b
    ret                                           ; $46ae: $c9


    inc l                                         ; $46af: $2c
    dec bc                                        ; $46b0: $0b
    push hl                                       ; $46b1: $e5
    add sp, $1a                                   ; $46b2: $e8 $1a
    pop hl                                        ; $46b4: $e1
    jp c, $dd1f                                   ; $46b5: $da $1f $dd

    ret                                           ; $46b8: $c9


Jump_057_46b9:
    or l                                          ; $46b9: $b5
    inc e                                         ; $46ba: $1c
    sub $28                                       ; $46bb: $d6 $28
    ld h, c                                       ; $46bd: $61
    rst $30                                       ; $46be: $f7
    cpl                                           ; $46bf: $2f
    db $e3                                        ; $46c0: $e3
    rst $18                                       ; $46c1: $df
    sub $a3                                       ; $46c2: $d6 $a3
    db $e3                                        ; $46c4: $e3
    and $23                                       ; $46c5: $e6 $23
    ld a, d                                       ; $46c7: $7a
    push de                                       ; $46c8: $d5
    add sp, $5c                                   ; $46c9: $e8 $5c
    and e                                         ; $46cb: $a3
    sub [hl]                                      ; $46cc: $96
    db $e4                                        ; $46cd: $e4
    ret z                                         ; $46ce: $c8

    add [hl]                                      ; $46cf: $86
    db $10                                        ; $46d0: $10
    halt                                          ; $46d1: $76
    ld de, $9dda                                  ; $46d2: $11 $da $9d
    add a                                         ; $46d5: $87
    pop af                                        ; $46d6: $f1
    ld e, e                                       ; $46d7: $5b
    ld a, h                                       ; $46d8: $7c
    ld [hl-], a                                   ; $46d9: $32
    ld h, l                                       ; $46da: $65
    ld e, [hl]                                    ; $46db: $5e
    jp nc, $3d57                                  ; $46dc: $d2 $57 $3d

    adc b                                         ; $46df: $88
    nop                                           ; $46e0: $00
    add b                                         ; $46e1: $80
    ld [hl], e                                    ; $46e2: $73
    ld h, h                                       ; $46e3: $64
    adc a                                         ; $46e4: $8f
    ld c, b                                       ; $46e5: $48
    sbc $d4                                       ; $46e6: $de $d4
    db $eb                                        ; $46e8: $eb
    add l                                         ; $46e9: $85
    nop                                           ; $46ea: $00
    dec a                                         ; $46eb: $3d
    ld e, l                                       ; $46ec: $5d
    dec [hl]                                      ; $46ed: $35
    jp nz, $9da5                                  ; $46ee: $c2 $a5 $9d

    ld [hl], d                                    ; $46f1: $72
    ld a, c                                       ; $46f2: $79
    add a                                         ; $46f3: $87
    ld a, a                                       ; $46f4: $7f

Jump_057_46f5:
    adc h                                         ; $46f5: $8c
    xor [hl]                                      ; $46f6: $ae
    adc c                                         ; $46f7: $89
    rst $08                                       ; $46f8: $cf
    db $db                                        ; $46f9: $db
    rst $18                                       ; $46fa: $df
    ld a, c                                       ; $46fb: $79
    pop de                                        ; $46fc: $d1
    dec [hl]                                      ; $46fd: $35
    push hl                                       ; $46fe: $e5
    ld a, [c]                                     ; $46ff: $f2
    ld a, [hl]                                    ; $4700: $7e
    adc h                                         ; $4701: $8c
    ld e, $f1                                     ; $4702: $1e $f1
    ld l, d                                       ; $4704: $6a
    sub d                                         ; $4705: $92
    dec a                                         ; $4706: $3d
    ld l, h                                       ; $4707: $6c
    dec b                                         ; $4708: $05
    rst $10                                       ; $4709: $d7
    cp e                                          ; $470a: $bb
    add hl, de                                    ; $470b: $19
    ld c, a                                       ; $470c: $4f
    ld e, c                                       ; $470d: $59
    sub [hl]                                      ; $470e: $96
    cp $31                                        ; $470f: $fe $31
    halt                                          ; $4711: $76
    sbc $72                                       ; $4712: $de $72
    sbc b                                         ; $4714: $98
    ld [hl-], a                                   ; $4715: $32
    ld c, a                                       ; $4716: $4f
    ld e, c                                       ; $4717: $59
    sub [hl]                                      ; $4718: $96
    db $e4                                        ; $4719: $e4
    ret z                                         ; $471a: $c8

    ld l, $08                                     ; $471b: $2e $08
    and c                                         ; $471d: $a1
    ld [hl-], a                                   ; $471e: $32
    rst $08                                       ; $471f: $cf

jr_057_4720:
    dec [hl]                                      ; $4720: $35
    rst $38                                       ; $4721: $ff
    sbc l                                         ; $4722: $9d
    rla                                           ; $4723: $17
    add a                                         ; $4724: $87
    db $dd                                        ; $4725: $dd
    ld e, d                                       ; $4726: $5a
    add $eb                                       ; $4727: $c6 $eb
    pop de                                        ; $4729: $d1
    ld [hl], c                                    ; $472a: $71
    di                                            ; $472b: $f3
    ld de, $6abd                                  ; $472c: $11 $bd $6a
    add hl, sp                                    ; $472f: $39
    db $ec                                        ; $4730: $ec
    sbc [hl]                                      ; $4731: $9e
    rra                                           ; $4732: $1f
    ld [hl], e                                    ; $4733: $73
    ld a, e                                       ; $4734: $7b
    ld h, a                                       ; $4735: $67
    or a                                          ; $4736: $b7
    or a                                          ; $4737: $b7
    add a                                         ; $4738: $87
    db $dd                                        ; $4739: $dd
    jr nz, @+$04                                  ; $473a: $20 $02

    add hl, hl                                    ; $473c: $29
    call nc, Call_057_7994                        ; $473d: $d4 $94 $79
    xor [hl]                                      ; $4740: $ae
    ld e, c                                       ; $4741: $59
    halt                                          ; $4742: $76
    rst $08                                       ; $4743: $cf
    adc a                                         ; $4744: $8f
    cp c                                          ; $4745: $b9
    cp l                                          ; $4746: $bd
    or e                                          ; $4747: $b3
    db $db                                        ; $4748: $db
    db $db                                        ; $4749: $db
    jp $fb6e                                      ; $474a: $c3 $6e $fb


    ld [hl+], a                                   ; $474d: $22
    jp hl                                         ; $474e: $e9


    or $44                                        ; $474f: $f6 $44
    sbc c                                         ; $4751: $99
    rst $30                                       ; $4752: $f7
    and a                                         ; $4753: $a7
    call z, $886c                                 ; $4754: $cc $6c $88
    nop                                           ; $4757: $00
    ld a, l                                       ; $4758: $7d
    inc e                                         ; $4759: $1c
    halt                                          ; $475a: $76
    cp [hl]                                       ; $475b: $be
    ld l, e                                       ; $475c: $6b
    ccf                                           ; $475d: $3f
    ld b, [hl]                                    ; $475e: $46
    rst $08                                       ; $475f: $cf
    cp h                                          ; $4760: $bc
    ld e, h                                       ; $4761: $5c
    ld l, d                                       ; $4762: $6a
    ret c                                         ; $4763: $d8

    sub l                                         ; $4764: $95
    ld a, [de]                                    ; $4765: $1a
    ld bc, $ff80                                  ; $4766: $01 $80 $ff
    jr nc, jr_057_4720                            ; $4769: $30 $b5

    inc de                                        ; $476b: $13
    dec [hl]                                      ; $476c: $35
    and d                                         ; $476d: $a2
    cp h                                          ; $476e: $bc
    ld a, h                                       ; $476f: $7c
    adc $a8                                       ; $4770: $ce $a8
    pop de                                        ; $4772: $d1
    ld e, a                                       ; $4773: $5f
    call nz, $71eb                                ; $4774: $c4 $eb $71
    pop hl                                        ; $4777: $e1
    cpl                                           ; $4778: $2f
    sub $ae                                       ; $4779: $d6 $ae
    rst $20                                       ; $477b: $e7
    ld d, l                                       ; $477c: $55
    ld l, c                                       ; $477d: $69
    ldh [rP1], a                                  ; $477e: $e0 $00
    rst $38                                       ; $4780: $ff
    dec h                                         ; $4781: $25
    and $11                                       ; $4782: $e6 $11
    cp d                                          ; $4784: $ba
    call z, $bfb5                                 ; $4785: $cc $b5 $bf
    daa                                           ; $4788: $27
    xor d                                         ; $4789: $aa
    inc a                                         ; $478a: $3c
    di                                            ; $478b: $f3
    dec sp                                        ; $478c: $3b
    dec e                                         ; $478d: $1d
    rst $08                                       ; $478e: $cf
    ld a, h                                       ; $478f: $7c
    ret c                                         ; $4790: $d8

    ld [$46a4], a                                 ; $4791: $ea $a4 $46
    add b                                         ; $4794: $80
    ld e, a                                       ; $4795: $5f
    ld h, h                                       ; $4796: $64
    db $ec                                        ; $4797: $ec
    jp $ddae                                      ; $4798: $c3 $ae $dd


    di                                            ; $479b: $f3
    ld c, [hl]                                    ; $479c: $4e
    inc e                                         ; $479d: $1c
    db $fd                                        ; $479e: $fd
    add h                                         ; $479f: $84
    and a                                         ; $47a0: $a7
    ld e, h                                       ; $47a1: $5c
    sbc $df                                       ; $47a2: $de $df
    call $2b87                                    ; $47a4: $cd $87 $2b
    ld c, e                                       ; $47a7: $4b
    add $9f                                       ; $47a8: $c6 $9f
    xor c                                         ; $47aa: $a9
    ld [de], a                                    ; $47ab: $12
    ld [hl], e                                    ; $47ac: $73
    ld l, d                                       ; $47ad: $6a
    inc b                                         ; $47ae: $04
    dec a                                         ; $47af: $3d
    xor a                                         ; $47b0: $af
    ld c, d                                       ; $47b1: $4a
    sub e                                         ; $47b2: $93
    ld a, d                                       ; $47b3: $7a
    ld a, l                                       ; $47b4: $7d
    inc e                                         ; $47b5: $1c
    ld b, [hl]                                    ; $47b6: $46
    ld d, [hl]                                    ; $47b7: $56
    ld d, a                                       ; $47b8: $57
    and d                                         ; $47b9: $a2
    inc a                                         ; $47ba: $3c
    ld l, d                                       ; $47bb: $6a
    ld c, a                                       ; $47bc: $4f
    dec h                                         ; $47bd: $25
    xor a                                         ; $47be: $af
    inc a                                         ; $47bf: $3c
    push hl                                       ; $47c0: $e5
    and b                                         ; $47c1: $a0
    db $dd                                        ; $47c2: $dd
    db $dd                                        ; $47c3: $dd
    xor a                                         ; $47c4: $af
    pop de                                        ; $47c5: $d1
    ld c, a                                       ; $47c6: $4f
    jp nz, $dbce                                  ; $47c7: $c2 $ce $db

    db $e3                                        ; $47ca: $e3
    add hl, hl                                    ; $47cb: $29
    ld a, l                                       ; $47cc: $7d
    call nz, $ca53                                ; $47cd: $c4 $53 $ca
    or e                                          ; $47d0: $b3
    ld c, h                                       ; $47d1: $4c
    push de                                       ; $47d2: $d5
    dec bc                                        ; $47d3: $0b
    db $10                                        ; $47d4: $10
    ld b, d                                       ; $47d5: $42
    inc b                                         ; $47d6: $04
    add hl, hl                                    ; $47d7: $29
    sbc l                                         ; $47d8: $9d
    ld c, [hl]                                    ; $47d9: $4e
    ld l, d                                       ; $47da: $6a
    inc b                                         ; $47db: $04
    db $dd                                        ; $47dc: $dd
    sub [hl]                                      ; $47dd: $96
    xor c                                         ; $47de: $a9
    ld a, d                                       ; $47df: $7a
    pop bc                                        ; $47e0: $c1
    call nz, $9c3f                                ; $47e1: $c4 $3f $9c
    db $eb                                        ; $47e4: $eb
    ld e, e                                       ; $47e5: $5b
    sub [hl]                                      ; $47e6: $96
    cp h                                          ; $47e7: $bc
    ld e, d                                       ; $47e8: $5a
    ld a, [$2795]                                 ; $47e9: $fa $95 $27
    reti                                          ; $47ec: $d9


    ld d, e                                       ; $47ed: $53
    ld a, [$8e62]                                 ; $47ee: $fa $62 $8e
    db $ec                                        ; $47f1: $ec
    sbc l                                         ; $47f2: $9d
    add a                                         ; $47f3: $87
    or c                                          ; $47f4: $b1
    ld h, l                                       ; $47f5: $65
    ld [hl], h                                    ; $47f6: $74
    xor [hl]                                      ; $47f7: $ae
    ld d, c                                       ; $47f8: $51
    and e                                         ; $47f9: $a3
    xor c                                         ; $47fa: $a9
    ld [hl], l                                    ; $47fb: $75
    rst $10                                       ; $47fc: $d7
    inc bc                                        ; $47fd: $03
    sbc l                                         ; $47fe: $9d
    and a                                         ; $47ff: $a7
    di                                            ; $4800: $f3
    ld e, [hl]                                    ; $4801: $5e
    or d                                          ; $4802: $b2
    ld h, e                                       ; $4803: $63

jr_057_4804:
    add hl, bc                                    ; $4804: $09
    ld l, a                                       ; $4805: $6f
    add hl, sp                                    ; $4806: $39
    inc l                                         ; $4807: $2c
    sub e                                         ; $4808: $93
    db $e4                                        ; $4809: $e4
    rst $18                                       ; $480a: $df
    pop de                                        ; $480b: $d1
    ld c, c                                       ; $480c: $49
    ld a, [c]                                     ; $480d: $f2
    pop bc                                        ; $480e: $c1
    push af                                       ; $480f: $f5
    ld [hl], c                                    ; $4810: $71
    jr jr_057_4804                                ; $4811: $18 $f1

    ld l, d                                       ; $4813: $6a
    db $f4                                        ; $4814: $f4
    adc e                                         ; $4815: $8b
    pop de                                        ; $4816: $d1
    inc a                                         ; $4817: $3c
    ld [c], a                                     ; $4818: $e2
    pop hl                                        ; $4819: $e1
    cp l                                          ; $481a: $bd
    add $70                                       ; $481b: $c6 $70
    ld [hl], a                                    ; $481d: $77
    cp a                                          ; $481e: $bf
    ld b, [hl]                                    ; $481f: $46
    ccf                                           ; $4820: $3f
    add hl, bc                                    ; $4821: $09
    db $e3                                        ; $4822: $e3
    jp z, Jump_057_794a                           ; $4823: $ca $4a $79

    add hl, sp                                    ; $4826: $39
    inc e                                         ; $4827: $1c
    ld l, d                                       ; $4828: $6a
    inc h                                         ; $4829: $24
    dec [hl]                                      ; $482a: $35
    ld [c], a                                     ; $482b: $e2
    rra                                           ; $482c: $1f
    adc $f5                                       ; $482d: $ce $f5
    dec l                                         ; $482f: $2d
    ld d, e                                       ; $4830: $53
    ld e, a                                       ; $4831: $5f
    or h                                          ; $4832: $b4
    dec sp                                        ; $4833: $3b
    call nc, Call_000_2788                        ; $4834: $d4 $88 $27
    dec sp                                        ; $4837: $3b
    sbc h                                         ; $4838: $9c
    sub a                                         ; $4839: $97
    jp $96a1                                      ; $483a: $c3 $a1 $96


    ld c, c                                       ; $483d: $49
    ld [de], a                                    ; $483e: $12
    ld [hl+], a                                   ; $483f: $22
    ld [hl], a                                    ; $4840: $77
    ld e, e                                       ; $4841: $5b
    jr nz, @-$7a                                  ; $4842: $20 $84

    ld [$b737], sp                                ; $4844: $08 $37 $b7
    and $71                                       ; $4847: $e6 $71
    ld a, c                                       ; $4849: $79
    inc [hl]                                      ; $484a: $34
    ld d, l                                       ; $484b: $55
    ld a, e                                       ; $484c: $7b
    ld d, l                                       ; $484d: $55
    ld a, $ac                                     ; $484e: $3e $ac
    ld e, l                                       ; $4850: $5d
    ld c, $eb                                     ; $4851: $0e $eb
    ld e, l                                       ; $4853: $5d
    sbc a                                         ; $4854: $9f
    and [hl]                                      ; $4855: $a6
    cp a                                          ; $4856: $bf
    add h                                         ; $4857: $84
    pop de                                        ; $4858: $d1
    ld d, h                                       ; $4859: $54
    db $ed                                        ; $485a: $ed
    ld [$86cb], a                                 ; $485b: $ea $cb $86
    cp a                                          ; $485e: $bf
    add sp, -$79                                  ; $485f: $e8 $87
    call z, $0096                                 ; $4861: $cc $96 $00
    ld hl, $fabc                                  ; $4864: $21 $bc $fa
    or d                                          ; $4867: $b2
    sub c                                         ; $4868: $91
    reti                                          ; $4869: $d9


    ld [de], a                                    ; $486a: $12
    ld b, [hl]                                    ; $486b: $46
    rst $20                                       ; $486c: $e7
    ld a, [de]                                    ; $486d: $1a
    sub c                                         ; $486e: $91
    cp b                                          ; $486f: $b8
    ld d, d                                       ; $4870: $52
    inc hl                                        ; $4871: $23
    ld d, a                                       ; $4872: $57
    ld e, a                                       ; $4873: $5f
    ld [hl], $22                                  ; $4874: $36 $22
    ld [hl], c                                    ; $4876: $71
    and l                                         ; $4877: $a5
    ld b, [hl]                                    ; $4878: $46
    scf                                           ; $4879: $37
    ld d, a                                       ; $487a: $57
    ld sp, hl                                     ; $487b: $f9
    or b                                          ; $487c: $b0
    ld h, l                                       ; $487d: $65
    ld l, c                                       ; $487e: $69
    rlca                                          ; $487f: $07
    adc l                                         ; $4880: $8d
    adc b                                         ; $4881: $88
    ld l, e                                       ; $4882: $6b
    or c                                          ; $4883: $b1
    push hl                                       ; $4884: $e5
    jr @-$1f                                      ; $4885: $18 $df

    call c, $139a                                 ; $4887: $dc $9a $13
    rst $28                                       ; $488a: $ef
    rrca                                          ; $488b: $0f
    rst $20                                       ; $488c: $e7
    ld a, [bc]                                    ; $488d: $0a
    sub [hl]                                      ; $488e: $96
    push bc                                       ; $488f: $c5
    call nz, $c14d                                ; $4890: $c4 $4d $c1
    db $dd                                        ; $4893: $dd
    db $dd                                        ; $4894: $dd
    push bc                                       ; $4895: $c5
    inc hl                                        ; $4896: $23
    ld e, h                                       ; $4897: $5c
    or l                                          ; $4898: $b5
    ld a, e                                       ; $4899: $7b
    sbc $89                                       ; $489a: $de $89
    ld c, e                                       ; $489c: $4b
    xor h                                         ; $489d: $ac
    ld b, [hl]                                    ; $489e: $46
    db $e4                                        ; $489f: $e4
    call nz, $8bea                                ; $48a0: $c4 $ea $8b
    add h                                         ; $48a3: $84
    daa                                           ; $48a4: $27
    pop bc                                        ; $48a5: $c1
    ld [bc], a                                    ; $48a6: $02
    ld [hl], a                                    ; $48a7: $77
    ld l, a                                       ; $48a8: $6f
    sbc b                                         ; $48a9: $98
    ld d, b                                       ; $48aa: $50
    jp c, Jump_057_57e1                           ; $48ab: $da $e1 $57

    and a                                         ; $48ae: $a7
    or e                                          ; $48af: $b3
    cp a                                          ; $48b0: $bf
    ld h, e                                       ; $48b1: $63
    add hl, bc                                    ; $48b2: $09
    jp c, $d6bd                                   ; $48b3: $da $bd $d6

    inc a                                         ; $48b6: $3c
    ld l, $c3                                     ; $48b7: $2e $c3
    db $dd                                        ; $48b9: $dd
    call c, $fd54                                 ; $48ba: $dc $54 $fd
    ld de, $d6af                                  ; $48bd: $11 $af $d6
    ld [hl], c                                    ; $48c0: $71
    ret c                                         ; $48c1: $d8

    adc c                                         ; $48c2: $89
    rrca                                          ; $48c3: $0f
    ld h, e                                       ; $48c4: $63
    di                                            ; $48c5: $f3
    or b                                          ; $48c6: $b0
    jp $fb4e                                      ; $48c7: $c3 $4e $fb


    ld [hl], c                                    ; $48ca: $71
    add hl, sp                                    ; $48cb: $39
    ld [hl], c                                    ; $48cc: $71
    xor l                                         ; $48cd: $ad
    ld [hl], a                                    ; $48ce: $77
    ld a, l                                       ; $48cf: $7d
    sbc d                                         ; $48d0: $9a
    cp $12                                        ; $48d1: $fe $12
    ld l, $71                                     ; $48d3: $2e $71
    ld [hl], e                                    ; $48d5: $73
    ld [c], a                                     ; $48d6: $e2
    add d                                         ; $48d7: $82
    ld [$66dd], sp                                ; $48d8: $08 $dd $66
    or $88                                        ; $48db: $f6 $88
    ld d, a                                       ; $48dd: $57
    ld c, e                                       ; $48de: $4b
    ld a, [$9e2a]                                 ; $48df: $fa $2a $9e
    or d                                          ; $48e2: $b2
    inc l                                         ; $48e3: $2c
    ld [hl], c                                    ; $48e4: $71
    dec e                                         ; $48e5: $1d
    or $d4                                        ; $48e6: $f6 $d4
    dec bc                                        ; $48e8: $0b
    sub [hl]                                      ; $48e9: $96
    db $fd                                        ; $48ea: $fd
    pop hl                                        ; $48eb: $e1
    rst $08                                       ; $48ec: $cf
    cp h                                          ; $48ed: $bc
    or $13                                        ; $48ee: $f6 $13
    cp b                                          ; $48f0: $b8
    sbc e                                         ; $48f1: $9b
    ld e, e                                       ; $48f2: $5b
    di                                            ; $48f3: $f3
    ld [de], a                                    ; $48f4: $12
    di                                            ; $48f5: $f3
    ld e, $2f                                     ; $48f6: $1e $2f
    ld sp, hl                                     ; $48f8: $f9
    inc hl                                        ; $48f9: $23
    ld e, [hl]                                    ; $48fa: $5e
    dec l                                         ; $48fb: $2d
    and $c3                                       ; $48fc: $e6 $c3
    and $f5                                       ; $48fe: $e6 $f5
    xor [hl]                                      ; $4900: $ae
    ld c, a                                       ; $4901: $4f
    db $d3                                        ; $4902: $d3
    ld e, a                                       ; $4903: $5f
    jp nz, $bf2e                                  ; $4904: $c2 $2e $bf

    ld a, [$e1b2]                                 ; $4907: $fa $b2 $e1
    cpl                                           ; $490a: $2f
    ld a, [$b321]                                 ; $490b: $fa $21 $b3
    dec h                                         ; $490e: $25
    ld b, b                                       ; $490f: $40
    inc b                                         ; $4910: $04
    add hl, hl                                    ; $4911: $29
    ld l, [hl]                                    ; $4912: $6e
    ret                                           ; $4913: $c9


    ld a, d                                       ; $4914: $7a
    xor b                                         ; $4915: $a8
    sub e                                         ; $4916: $93
    ld l, [hl]                                    ; $4917: $6e
    call nc, Call_000_0e59                        ; $4918: $d4 $59 $0e

jr_057_491b:
    inc bc                                        ; $491b: $03
    ldh a, [rNR12]                                ; $491c: $f0 $12
    adc c                                         ; $491e: $89
    dec l                                         ; $491f: $2d
    rst $08                                       ; $4920: $cf
    or l                                          ; $4921: $b5
    di                                            ; $4922: $f3

Jump_057_4923:
    ld b, l                                       ; $4923: $45
    sbc $48                                       ; $4924: $de $48
    ld l, d                                       ; $4926: $6a
    ld sp, hl                                     ; $4927: $f9
    inc e                                         ; $4928: $1c
    cp b                                          ; $4929: $b8
    ld l, [hl]                                    ; $492a: $6e
    adc a                                         ; $492b: $8f
    dec hl                                        ; $492c: $2b
    dec hl                                        ; $492d: $2b
    push hl                                       ; $492e: $e5
    dec h                                         ; $492f: $25
    ld a, a                                       ; $4930: $7f
    ret                                           ; $4931: $c9


Jump_057_4932:
    xor e                                         ; $4932: $ab
    add hl, hl                                    ; $4933: $29
    rst $08                                       ; $4934: $cf
    ld [c], a                                     ; $4935: $e2
    jp $c9de                                      ; $4936: $c3 $de $c9


    ld a, b                                       ; $4939: $78
    ld d, c                                       ; $493a: $51
    rla                                           ; $493b: $17
    pop af                                        ; $493c: $f1
    ld c, [hl]                                    ; $493d: $4e
    and e                                         ; $493e: $a3
    sub [hl]                                      ; $493f: $96
    add d                                         ; $4940: $82
    dec [hl]                                      ; $4941: $35
    pop hl                                        ; $4942: $e1
    sub l                                         ; $4943: $95
    jp c, $a11f                                   ; $4944: $da $1f $a1

    rra                                           ; $4947: $1f
    db $ec                                        ; $4948: $ec
    jp Jump_000_13ae                              ; $4949: $c3 $ae $13


    rra                                           ; $494c: $1f
    ld l, c                                       ; $494d: $69
    add [hl]                                      ; $494e: $86
    ld c, e                                       ; $494f: $4b
    ld [hl], c                                    ; $4950: $71
    ld c, l                                       ; $4951: $4d
    cp c                                          ; $4952: $b9
    inc a                                         ; $4953: $3c
    or c                                          ; $4954: $b1
    ld [hl-], a                                   ; $4955: $32
    ld b, h                                       ; $4956: $44
    rst $30                                       ; $4957: $f7
    ld hl, sp+$6b                                 ; $4958: $f8 $6b
    daa                                           ; $495a: $27
    cp $da                                        ; $495b: $fe $da
    dec h                                         ; $495d: $25
    ld a, l                                       ; $495e: $7d
    push de                                       ; $495f: $d5
    ld c, $b5                                     ; $4960: $0e $b5
    inc hl                                        ; $4962: $23
    cp a                                          ; $4963: $bf
    dec [hl]                                      ; $4964: $35
    db $ed                                        ; $4965: $ed
    ld a, [hl]                                    ; $4966: $7e
    adc h                                         ; $4967: $8c
    sbc [hl]                                      ; $4968: $9e
    ld h, l                                       ; $4969: $65
    pop hl                                        ; $496a: $e1
    ld c, c                                       ; $496b: $49
    jr @+$01                                      ; $496c: $18 $ff

    ld b, $21                                     ; $496e: $06 $21
    ld b, h                                       ; $4970: $44
    db $dd                                        ; $4971: $dd
    and $35                                       ; $4972: $e6 $35
    adc d                                         ; $4974: $8a
    ld e, l                                       ; $4975: $5d
    dec sp                                        ; $4976: $3b
    add hl, de                                    ; $4977: $19
    rst $28                                       ; $4978: $ef
    adc $b2                                       ; $4979: $ce $b2
    add h                                         ; $497b: $84
    ld h, [hl]                                    ; $497c: $66
    adc b                                         ; $497d: $88
    nop                                           ; $497e: $00
    ld [hl], a                                    ; $497f: $77
    db $eb                                        ; $4980: $eb
    cp b                                          ; $4981: $b8
    ld e, c                                       ; $4982: $59
    dec sp                                        ; $4983: $3b
    xor h                                         ; $4984: $ac
    db $e3                                        ; $4985: $e3
    ld h, [hl]                                    ; $4986: $66
    db $ed                                        ; $4987: $ed
    ld b, d                                       ; $4988: $42
    dec d                                         ; $4989: $15
    ld b, h                                       ; $498a: $44
    ld a, l                                       ; $498b: $7d
    sbc $12                                       ; $498c: $de $12
    scf                                           ; $498e: $37
    ld [$3ae1], sp                                ; $498f: $08 $e1 $3a
    ld l, a                                       ; $4992: $6f
    adc c                                         ; $4993: $89
    db $db                                        ; $4994: $db
    jr nz, jr_057_491b                            ; $4995: $20 $84

    add a                                         ; $4997: $87
    jp c, $af89                                   ; $4998: $da $89 $af

    xor l                                         ; $499b: $ad
    db $e3                                        ; $499c: $e3
    or b                                          ; $499d: $b0
    di                                            ; $499e: $f3
    and a                                         ; $499f: $a7
    call z, $a9da                                 ; $49a0: $cc $da $a9
    rlca                                          ; $49a3: $07
    ld hl, $f744                                  ; $49a4: $21 $44 $f7
    sbc l                                         ; $49a7: $9d
    jp $c210                                      ; $49a8: $c3 $10 $c2


    ld e, $17                                     ; $49ab: $1e $17
    cp $62                                        ; $49ad: $fe $62
    ld [$1f61], sp                                ; $49af: $08 $61 $1f
    add a                                         ; $49b2: $87
    ld de, $c55d                                  ; $49b3: $11 $5d $c5
    sbc $8b                                       ; $49b6: $de $8b
    ld d, c                                       ; $49b8: $51
    xor a                                         ; $49b9: $af
    rst $00                                       ; $49ba: $c7
    ld a, e                                       ; $49bb: $7b
    cp h                                          ; $49bc: $bc
    dec sp                                        ; $49bd: $3b
    rl d                                          ; $49be: $cb $12
    sbc d                                         ; $49c0: $9a
    ld [hl], a                                    ; $49c1: $77
    db $e4                                        ; $49c2: $e4
    push bc                                       ; $49c3: $c5
    ld l, b                                       ; $49c4: $68
    ld e, $b6                                     ; $49c5: $1e $b6
    sbc d                                         ; $49c7: $9a
    ld h, h                                       ; $49c8: $64
    dec bc                                        ; $49c9: $0b
    ld e, h                                       ; $49ca: $5c
    rst $08                                       ; $49cb: $cf
    sub e                                         ; $49cc: $93
    or l                                          ; $49cd: $b5
    ld l, $b5                                     ; $49ce: $2e $b5
    or d                                          ; $49d0: $b2
    ld d, d                                       ; $49d1: $52
    db $10                                        ; $49d2: $10
    ld bc, $e6dd                                  ; $49d3: $01 $dd $e6
    ld h, c                                       ; $49d6: $61
    ld l, d                                       ; $49d7: $6a
    call nz, $d25b                                ; $49d8: $c4 $5b $d2
    ld d, a                                       ; $49db: $57
    pop af                                        ; $49dc: $f1
    ld d, d                                       ; $49dd: $52
    sbc d                                         ; $49de: $9a
    ld e, [hl]                                    ; $49df: $5e
    ei                                            ; $49e0: $fb
    and c                                         ; $49e1: $a1
    ld h, e                                       ; $49e2: $63
    ld c, c                                       ; $49e3: $49
    adc l                                         ; $49e4: $8d
    nop                                           ; $49e5: $00
    ld a, l                                       ; $49e6: $7d
    inc e                                         ; $49e7: $1c
    add $95                                       ; $49e8: $c6 $95
    ld l, e                                       ; $49ea: $6b
    jp z, $8b3c                                   ; $49eb: $ca $3c $8b

    ld [hl], d                                    ; $49ee: $72
    dec c                                         ; $49ef: $0d
    ld e, e                                       ; $49f0: $5b
    db $ed                                        ; $49f1: $ed
    pop af                                        ; $49f2: $f1
    adc b                                         ; $49f3: $88
    daa                                           ; $49f4: $27
    and e                                         ; $49f5: $a3
    ld [hl], e                                    ; $49f6: $73
    or c                                          ; $49f7: $b1
    ld e, e                                       ; $49f8: $5b
    ld [hl], e                                    ; $49f9: $73
    dec l                                         ; $49fa: $2d
    and l                                         ; $49fb: $a5
    jp hl                                         ; $49fc: $e9


    dec [hl]                                      ; $49fd: $35
    ld [hl+], a                                   ; $49fe: $22
    ret                                           ; $49ff: $c9


    and l                                         ; $4a00: $a5
    sbc [hl]                                      ; $4a01: $9e
    adc h                                         ; $4a02: $8c
    ld a, b                                       ; $4a03: $78
    or d                                          ; $4a04: $b2
    inc de                                        ; $4a05: $13
    ld e, a                                       ; $4a06: $5f
    ld e, e                                       ; $4a07: $5b
    call z, Call_057_7b18                         ; $4a08: $cc $18 $7b
    rst $00                                       ; $4a0b: $c7
    ld h, c                                       ; $4a0c: $61
    db $fc                                        ; $4a0d: $fc
    db $db                                        ; $4a0e: $db
    ld d, d                                       ; $4a0f: $52
    ret c                                         ; $4a10: $d8

    ld e, a                                       ; $4a11: $5f
    inc l                                         ; $4a12: $2c
    xor c                                         ; $4a13: $a9
    ld de, $ff80                                  ; $4a14: $11 $80 $ff
    ld e, h                                       ; $4a17: $5c
    sub e                                         ; $4a18: $93
    ld l, $c5                                     ; $4a19: $2e $c5
    db $e3                                        ; $4a1b: $e3
    rst $18                                       ; $4a1c: $df
    ld b, [hl]                                    ; $4a1d: $46
    dec l                                         ; $4a1e: $2d
    ld d, b                                       ; $4a1f: $50
    db $e3                                        ; $4a20: $e3
    rst $18                                       ; $4a21: $df
    sub $a3                                       ; $4a22: $d6 $a3
    db $e3                                        ; $4a24: $e3
    and $23                                       ; $4a25: $e6 $23
    ld a, d                                       ; $4a27: $7a
    dec d                                         ; $4a28: $15
    inc e                                         ; $4a29: $1c
    ldh [$bf], a                                  ; $4a2a: $e0 $bf
    or h                                          ; $4a2c: $b4
    ld e, [hl]                                    ; $4a2d: $5e
    jp z, $9d0b                                   ; $4a2e: $ca $0b $9d

    ld e, h                                       ; $4a31: $5c
    inc a                                         ; $4a32: $3c
    ld h, l                                       ; $4a33: $65
    ld e, $9d                                     ; $4a34: $1e $9d
    ld l, e                                       ; $4a36: $6b
    call Call_000_0e12                            ; $4a37: $cd $12 $0e
    ld b, e                                       ; $4a3a: $43
    inc b                                         ; $4a3b: $04
    ld [hl], a                                    ; $4a3c: $77
    ld e, e                                       ; $4a3d: $5b
    sub [hl]                                      ; $4a3e: $96
    db $fc                                        ; $4a3f: $fc
    ld de, $d6af                                  ; $4a40: $11 $af $d6
    ret                                           ; $4a43: $c9


    ei                                            ; $4a44: $fb
    ld [de], a                                    ; $4a45: $12
    inc l                                         ; $4a46: $2c
    ld c, e                                       ; $4a47: $4b
    dec sp                                        ; $4a48: $3b
    ld sp, hl                                     ; $4a49: $f9
    rst $00                                       ; $4a4a: $c7
    sub l                                         ; $4a4b: $95
    ld a, d                                       ; $4a4c: $7a
    rst $30                                       ; $4a4d: $f7
    add [hl]                                      ; $4a4e: $86
    dec h                                         ; $4a4f: $25
    ld a, a                                       ; $4a50: $7f
    daa                                           ; $4a51: $27
    ld [$79ad], a                                 ; $4a52: $ea $ad $79
    sbc l                                         ; $4a55: $9d
    cp h                                          ; $4a56: $bc
    or $e3                                        ; $4a57: $f6 $e3
    ret                                           ; $4a59: $c9


    ld a, b                                       ; $4a5a: $78
    ccf                                           ; $4a5b: $3f
    ld b, [hl]                                    ; $4a5c: $46
    cpl                                           ; $4a5d: $2f
    ld sp, hl                                     ; $4a5e: $f9
    db $ec                                        ; $4a5f: $ec
    ld c, c                                       ; $4a60: $49

jr_057_4a61:
    or $32                                        ; $4a61: $f6 $32
    ld e, [hl]                                    ; $4a63: $5e
    ld a, [bc]                                    ; $4a64: $0a
    ei                                            ; $4a65: $fb
    adc e                                         ; $4a66: $8b
    ld h, l                                       ; $4a67: $65
    ld l, [hl]                                    ; $4a68: $6e
    call Call_057_7bb5                            ; $4a69: $cd $b5 $7b
    db $f4                                        ; $4a6c: $f4
    ld [hl], e                                    ; $4a6d: $73
    ld a, $44                                     ; $4a6e: $3e $44
    or a                                          ; $4a70: $b7
    ld [hl], a                                    ; $4a71: $77
    or l                                          ; $4a72: $b5
    jr nc, jr_057_4a61                            ; $4a73: $30 $ec

    nop                                           ; $4a75: $00
    ld [hl], a                                    ; $4a76: $77
    adc a                                         ; $4a77: $8f
    rrca                                          ; $4a78: $0f
    ld a, e                                       ; $4a79: $7b
    pop hl                                        ; $4a7a: $e1
    ld c, c                                       ; $4a7b: $49
    jr @+$5d                                      ; $4a7c: $18 $5b

    and d                                         ; $4a7e: $a2
    ld l, e                                       ; $4a7f: $6b
    jp z, Jump_000_29e5                           ; $4a80: $ca $e5 $29

    sub a                                         ; $4a83: $97
    daa                                           ; $4a84: $27
    add hl, sp                                    ; $4a85: $39
    adc [hl]                                      ; $4a86: $8e
    di                                            ; $4a87: $f3
    jp nz, $e093                                  ; $4a88: $c2 $93 $e0

    ld e, d                                       ; $4a8b: $5a
    add $a3                                       ; $4a8c: $c6 $a3
    cp e                                          ; $4a8e: $bb
    ld l, d                                       ; $4a8f: $6a
    jp z, $a5e5                                   ; $4a90: $ca $e5 $a5

    ld c, e                                       ; $4a93: $4b
    jp Jump_057_59ae                              ; $4a94: $c3 $ae $59


    halt                                          ; $4a97: $76
    ld h, d                                       ; $4a98: $62
    ld l, [hl]                                    ; $4a99: $6e
    ld l, $07                                     ; $4a9a: $2e $07
    scf                                           ; $4a9c: $37
    db $ed                                        ; $4a9d: $ed
    adc b                                         ; $4a9e: $88
    db $e4                                        ; $4a9f: $e4
    push af                                       ; $4aa0: $f5
    ld b, d                                       ; $4aa1: $42
    add hl, hl                                    ; $4aa2: $29
    ld a, [de]                                    ; $4aa3: $1a
    ld d, c                                       ; $4aa4: $51
    bit 4, c                                      ; $4aa5: $cb $61
    daa                                           ; $4aa7: $27
    ld a, $bc                                     ; $4aa8: $3e $bc
    rst $00                                       ; $4aaa: $c7

jr_057_4aab:
    ld d, e                                       ; $4aab: $53
    and $b9                                       ; $4aac: $e6 $b9
    halt                                          ; $4aae: $76
    sbc d                                         ; $4aaf: $9a
    adc $3c                                       ; $4ab0: $ce $3c
    sub d                                         ; $4ab2: $92
    sbc d                                         ; $4ab3: $9a
    ld a, [c]                                     ; $4ab4: $f2
    jp nz, $cdc3                                  ; $4ab5: $c2 $c3 $cd

    dec sp                                        ; $4ab8: $3b
    ld e, h                                       ; $4ab9: $5c
    adc a                                         ; $4aba: $8f
    and [hl]                                      ; $4abb: $a6
    adc l                                         ; $4abc: $8d
    call Call_057_5959                            ; $4abd: $cd $59 $59
    inc c                                         ; $4ac0: $0c
    rst $10                                       ; $4ac1: $d7
    rst $00                                       ; $4ac2: $c7
    ld h, c                                       ; $4ac3: $61
    call nz, $d1ab                                ; $4ac4: $c4 $ab $d1
    ld h, l                                       ; $4ac7: $65
    xor h                                         ; $4ac8: $ac
    call c, $d67c                                 ; $4ac9: $dc $7c $d6
    inc l                                         ; $4acc: $2c
    pop de                                        ; $4acd: $d1
    ld [c], a                                     ; $4ace: $e2
    sub c                                         ; $4acf: $91
    call nc, $1662                                ; $4ad0: $d4 $62 $16
    adc $65                                       ; $4ad3: $ce $65
    ld e, $fe                                     ; $4ad5: $1e $fe
    call z, $0110                                 ; $4ad7: $cc $10 $01
    add hl, hl                                    ; $4ada: $29
    sbc $a1                                       ; $4adb: $de $a1
    or h                                          ; $4add: $b4
    inc hl                                        ; $4ade: $23
    ld e, h                                       ; $4adf: $5c
    or l                                          ; $4ae0: $b5
    or h                                          ; $4ae1: $b4
    xor e                                         ; $4ae2: $ab
    dec bc                                        ; $4ae3: $0b
    or e                                          ; $4ae4: $b3
    rst $10                                       ; $4ae5: $d7
    di                                            ; $4ae6: $f3
    xor d                                         ; $4ae7: $aa
    inc [hl]                                      ; $4ae8: $34
    cp e                                          ; $4ae9: $bb
    cpl                                           ; $4aea: $2f
    inc sp                                        ; $4aeb: $33
    cp e                                          ; $4aec: $bb
    and [hl]                                      ; $4aed: $a6
    db $f4                                        ; $4aee: $f4
    jr jr_057_4b4e                                ; $4aef: $18 $5d

    or e                                          ; $4af1: $b3
    jr z, jr_057_4aab                             ; $4af2: $28 $b7

    rra                                           ; $4af4: $1f
    sub [hl]                                      ; $4af5: $96
    ld c, c                                       ; $4af6: $49
    ld [de], a                                    ; $4af7: $12
    ld c, $b0                                     ; $4af8: $0e $b0
    add l                                         ; $4afa: $85
    ld b, a                                       ; $4afb: $47
    cp b                                          ; $4afc: $b8
    ld b, [hl]                                    ; $4afd: $46
    ld d, d                                       ; $4afe: $52
    db $eb                                        ; $4aff: $eb
    xor l                                         ; $4b00: $ad
    add hl, bc                                    ; $4b01: $09
    push af                                       ; $4b02: $f5
    dec d                                         ; $4b03: $15
    call c, Call_057_61bd                         ; $4b04: $dc $bd $61
    ccf                                           ; $4b07: $3f
    ld b, [hl]                                    ; $4b08: $46
    rst $28                                       ; $4b09: $ef
    ldh a, [$8f]                                  ; $4b0a: $f0 $8f
    ld [hl], c                                    ; $4b0c: $71
    cpl                                           ; $4b0d: $2f
    add c                                         ; $4b0e: $81
    db $eb                                        ; $4b0f: $eb
    ld a, [hl]                                    ; $4b10: $7e
    dec bc                                        ; $4b11: $0b
    ld d, h                                       ; $4b12: $54
    ld c, l                                       ; $4b13: $4d
    sbc c                                         ; $4b14: $99
    and a                                         ; $4b15: $a7
    ld e, h                                       ; $4b16: $5c
    sbc [hl]                                      ; $4b17: $9e
    ld b, l                                       ; $4b18: $45
    cp l                                          ; $4b19: $bd
    dec h                                         ; $4b1a: $25
    xor [hl]                                      ; $4b1b: $ae
    ld [hl-], a                                   ; $4b1c: $32
    ld b, h                                       ; $4b1d: $44
    dec a                                         ; $4b1e: $3d
    cp $e7                                        ; $4b1f: $fe $e7
    add hl, bc                                    ; $4b21: $09
    call c, $ed9d                                 ; $4b22: $dc $9d $ed
    push de                                       ; $4b25: $d5
    ld hl, sp-$49                                 ; $4b26: $f8 $b7
    ld e, c                                       ; $4b28: $59
    sub $3e                                       ; $4b29: $d6 $3e
    ld e, e                                       ; $4b2b: $5b
    halt                                          ; $4b2c: $76
    ld h, d                                       ; $4b2d: $62
    ld c, $ac                                     ; $4b2e: $0e $ac
    ld d, a                                       ; $4b30: $57
    cpl                                           ; $4b31: $2f
    inc b                                         ; $4b32: $04
    ld a, l                                       ; $4b33: $7d
    inc e                                         ; $4b34: $1c
    ld d, $a8                                     ; $4b35: $16 $a8
    jp c, $d18f                                   ; $4b37: $da $8f $d1

    ei                                            ; $4b3a: $fb
    ld [hl+], a                                   ; $4b3b: $22
    ei                                            ; $4b3c: $fb
    ld d, e                                       ; $4b3d: $53
    sub [hl]                                      ; $4b3e: $96
    and l                                         ; $4b3f: $a5
    call nz, Call_000_2c1c                        ; $4b40: $c4 $1c $2c
    xor c                                         ; $4b43: $a9
    ld de, $aefd                                  ; $4b44: $11 $fd $ae
    sub e                                         ; $4b47: $93
    and a                                         ; $4b48: $a7
    sbc [hl]                                      ; $4b49: $9e
    halt                                          ; $4b4a: $76
    jp z, $d0bc                                   ; $4b4b: $ca $bc $d0

jr_057_4b4e:
    jp hl                                         ; $4b4e: $e9


    xor d                                         ; $4b4f: $aa
    add hl, hl                                    ; $4b50: $29
    ld e, l                                       ; $4b51: $5d
    dec sp                                        ; $4b52: $3b
    ld [hl+], a                                   ; $4b53: $22
    ld sp, hl                                     ; $4b54: $f9
    ld h, a                                       ; $4b55: $67
    adc a                                         ; $4b56: $8f
    and a                                         ; $4b57: $a7
    db $f4                                        ; $4b58: $f4
    dec h                                         ; $4b59: $25
    cp a                                          ; $4b5a: $bf
    dec l                                         ; $4b5b: $2d
    db $dd                                        ; $4b5c: $dd
    cp $08                                        ; $4b5d: $fe $08
    rst $10                                       ; $4b5f: $d7
    ld c, b                                       ; $4b60: $48
    ld l, d                                       ; $4b61: $6a
    cp l                                          ; $4b62: $bd

Call_057_4b63:
    ld e, a                                       ; $4b63: $5f
    db $e3                                        ; $4b64: $e3
    inc h                                         ; $4b65: $24
    rla                                           ; $4b66: $17
    and a                                         ; $4b67: $a7
    ld e, [hl]                                    ; $4b68: $5e
    adc d                                         ; $4b69: $8a
    and a                                         ; $4b6a: $a7
    ld e, h                                       ; $4b6b: $5c
    ld [hl], b                                    ; $4b6c: $70
    db $dd                                        ; $4b6d: $dd
    and $9d                                       ; $4b6e: $e6 $9d
    xor [hl]                                      ; $4b70: $ae
    sub [hl]                                      ; $4b71: $96
    cp h                                          ; $4b72: $bc
    ret z                                         ; $4b73: $c8

    ccf                                           ; $4b74: $3f
    ld a, b                                       ; $4b75: $78
    inc h                                         ; $4b76: $24
    or l                                          ; $4b77: $b5
    db $f4                                        ; $4b78: $f4
    adc e                                         ; $4b79: $8b
    pop de                                        ; $4b7a: $d1
    ld [hl-], a                                   ; $4b7b: $32
    rst $10                                       ; $4b7c: $d7
    inc l                                         ; $4b7d: $2c
    ld b, h                                       ; $4b7e: $44
    and a                                         ; $4b7f: $a7
    xor e                                         ; $4b80: $ab
    db $e4                                        ; $4b81: $e4
    ld c, e                                       ; $4b82: $4b
    cp b                                          ; $4b83: $b8
    inc h                                         ; $4b84: $24
    db $dd                                        ; $4b85: $dd
    or d                                          ; $4b86: $b2
    add d                                         ; $4b87: $82
    ld c, e                                       ; $4b88: $4b
    and c                                         ; $4b89: $a1
    and [hl]                                      ; $4b8a: $a6
    call z, $cd73                                 ; $4b8b: $cc $73 $cd
    ld [hl-], a                                   ; $4b8e: $32
    dec bc                                        ; $4b8f: $0b
    pop de                                        ; $4b90: $d1
    jp hl                                         ; $4b91: $e9


    ld a, [hl+]                                   ; $4b92: $2a
    ld sp, hl                                     ; $4b93: $f9
    ld [de], a                                    ; $4b94: $12
    and [hl]                                      ; $4b95: $a6
    ld e, h                                       ; $4b96: $5c
    ei                                            ; $4b97: $fb
    ld [hl+], a                                   ; $4b98: $22
    sbc $c9                                       ; $4b99: $de $c9
    ld a, b                                       ; $4b9b: $78
    xor [hl]                                      ; $4b9c: $ae
    dec e                                         ; $4b9d: $1d
    sub $04                                       ; $4b9e: $d6 $04
    sbc $89                                       ; $4ba0: $de $89
    ld c, a                                       ; $4ba2: $4f
    add hl, hl                                    ; $4ba3: $29
    db $ed                                        ; $4ba4: $ed
    ld [hl], d                                    ; $4ba5: $72
    ld e, b                                       ; $4ba6: $58
    ld a, [c]                                     ; $4ba7: $f2
    add a                                         ; $4ba8: $87
    xor c                                         ; $4ba9: $a9
    pop de                                        ; $4baa: $d1
    ld e, a                                       ; $4bab: $5f
    call nz, $9653                                ; $4bac: $c4 $53 $96
    dec e                                         ; $4baf: $1d
    ld a, [hl]                                    ; $4bb0: $7e
    ld sp, $b2be                                  ; $4bb1: $31 $be $b2
    ld b, b                                       ; $4bb4: $40
    inc b                                         ; $4bb5: $04
    ld [hl], a                                    ; $4bb6: $77
    ld e, e                                       ; $4bb7: $5b
    ld b, [hl]                                    ; $4bb8: $46
    inc h                                         ; $4bb9: $24
    ld l, a                                       ; $4bba: $6f
    ld b, h                                       ; $4bbb: $44
    ld a, [c]                                     ; $4bbc: $f2
    rst $08                                       ; $4bbd: $cf
    sub h                                         ; $4bbe: $94
    ld a, c                                       ; $4bbf: $79
    daa                                           ; $4bc0: $27
    db $e3                                        ; $4bc1: $e3
    sbc l                                         ; $4bc2: $9d
    ld hl, sp-$6c                                 ; $4bc3: $f8 $94
    ld a, [c]                                     ; $4bc5: $f2
    inc l                                         ; $4bc6: $2c
    ld b, h                                       ; $4bc7: $44
    and a                                         ; $4bc8: $a7
    xor e                                         ; $4bc9: $ab
    db $e4                                        ; $4bca: $e4
    ld c, e                                       ; $4bcb: $4b
    or b                                          ; $4bcc: $b0
    ld l, b                                       ; $4bcd: $68
    ld b, a                                       ; $4bce: $47
    ld a, a                                       ; $4bcf: $7f
    ld de, $f2d7                                  ; $4bd0: $11 $d7 $f2
    add hl, sp                                    ; $4bd3: $39
    and e                                         ; $4bd4: $a3
    cp e                                          ; $4bd5: $bb
    ld [$2f70], a                                 ; $4bd6: $ea $70 $2f
    inc b                                         ; $4bd9: $04
    db $dd                                        ; $4bda: $dd
    and $b9                                       ; $4bdb: $e6 $b9
    or $63                                        ; $4bdd: $f6 $63
    or h                                          ; $4bdf: $b4
    db $e4                                        ; $4be0: $e4
    ld de, $fdae                                  ; $4be1: $11 $ae $fd
    and l                                         ; $4be4: $a5
    call nz, Call_000_2c1c                        ; $4be5: $c4 $1c $2c
    dec sp                                        ; $4be8: $3b
    add hl, de                                    ; $4be9: $19
    cpl                                           ; $4bea: $2f
    ld a, $d9                                     ; $4beb: $3e $d9
    adc c                                         ; $4bed: $89
    ld c, a                                       ; $4bee: $4f
    ld a, c                                       ; $4bef: $79
    jp z, CopyHL2DE_224                           ; $4bf0: $ca $e5 $11

    ret                                           ; $4bf3: $c9


    ccf                                           ; $4bf4: $3f
    ld a, e                                       ; $4bf5: $7b
    inc a                                         ; $4bf6: $3c
    push hl                                       ; $4bf7: $e5
    ld a, [c]                                     ; $4bf8: $f2
    adc b                                         ; $4bf9: $88
    call c, Call_057_6b94                         ; $4bfa: $dc $94 $6b
    jp z, $f1e5                                   ; $4bfd: $ca $e5 $f1

    ld l, a                                       ; $4c00: $6f
    jp $cb0e                                      ; $4c01: $c3 $0e $cb


    ld h, c                                       ; $4c04: $61
    dec a                                         ; $4c05: $3d
    add hl, sp                                    ; $4c06: $39
    add h                                         ; $4c07: $84
    push hl                                       ; $4c08: $e5
    or b                                          ; $4c09: $b0
    jp Jump_000_02df                              ; $4c0a: $c3 $df $02


    ld [hl], a                                    ; $4c0d: $77
    rrca                                          ; $4c0e: $0f
    or l                                          ; $4c0f: $b5
    inc de                                        ; $4c10: $13
    ld e, a                                       ; $4c11: $5f
    ld e, e                                       ; $4c12: $5b
    ld a, [c]                                     ; $4c13: $f2
    and a                                         ; $4c14: $a7
    call c, Call_057_7cbc                         ; $4c15: $dc $bc $7c
    adc $fe                                       ; $4c18: $ce $fe
    jr c, jr_057_4c4b                             ; $4c1a: $38 $2f

    sub h                                         ; $4c1c: $94
    ld c, [hl]                                    ; $4c1d: $4e
    sub d                                         ; $4c1e: $92
    xor [hl]                                      ; $4c1f: $ae
    push hl                                       ; $4c20: $e5
    or b                                          ; $4c21: $b0
    ld h, [hl]                                    ; $4c22: $66
    ld [hl], $44                                  ; $4c23: $36 $44
    dec a                                         ; $4c25: $3d
    ret                                           ; $4c26: $c9


    ccf                                           ; $4c27: $3f
    db $eb                                        ; $4c28: $eb
    jr c, @-$12                                   ; $4c29: $38 $ec

    xor $7e                                       ; $4c2b: $ee $7e
    rst $30                                       ; $4c2d: $f7
    ld b, l                                       ; $4c2e: $45
    and [hl]                                      ; $4c2f: $a6
    ld a, $6b                                     ; $4c30: $3e $6b
    sub a                                         ; $4c32: $97
    db $fc                                        ; $4c33: $fc
    or [hl]                                       ; $4c34: $b6

Jump_057_4c35:
    adc [hl]                                      ; $4c35: $8e
    jp $b788                                      ; $4c36: $c3 $88 $b7


    sbc [hl]                                      ; $4c39: $9e
    inc e                                         ; $4c3a: $1c
    ld [bc], a                                    ; $4c3b: $02
    ld b, h                                       ; $4c3c: $44
    rst $30                                       ; $4c3d: $f7
    sbc $09                                       ; $4c3e: $de $09
    rst $10                                       ; $4c40: $d7
    db $fd                                        ; $4c41: $fd
    ld d, $a8                                     ; $4c42: $16 $a8
    ld e, d                                       ; $4c44: $5a
    rst $00                                       ; $4c45: $c7
    ld h, c                                       ; $4c46: $61
    add hl, sp                                    ; $4c47: $39
    xor h                                         ; $4c48: $ac
    rst $20                                       ; $4c49: $e7
    ld d, l                                       ; $4c4a: $55

jr_057_4c4b:
    ld l, c                                       ; $4c4b: $69
    sub [hl]                                      ; $4c4c: $96
    jp Jump_057_5c7a                              ; $4c4d: $c3 $7a $5c


    ld hl, sp-$75                                 ; $4c50: $f8 $8b
    and a                                         ; $4c52: $a7
    inc l                                         ; $4c53: $2c
    or e                                          ; $4c54: $b3
    ld a, b                                       ; $4c55: $78
    adc c                                         ; $4c56: $89
    cp a                                          ; $4c57: $bf
    dec b                                         ; $4c58: $05
    xor $de                                       ; $4c59: $ee $de
    or b                                          ; $4c5b: $b0
    cp e                                          ; $4c5c: $bb
    ld e, a                                       ; $4c5d: $5f
    and e                                         ; $4c5e: $a3
    sbc a                                         ; $4c5f: $9f
    inc b                                         ; $4c60: $04
    db $ed                                        ; $4c61: $ed
    sub h                                         ; $4c62: $94
    cp [hl]                                       ; $4c63: $be
    ld b, b                                       ; $4c64: $40
    push de                                       ; $4c65: $d5
    or b                                          ; $4c66: $b0
    push de                                       ; $4c67: $d5
    xor $f9                                       ; $4c68: $ee $f9
    ld c, l                                       ; $4c6a: $4d
    ccf                                           ; $4c6b: $3f
    bit 4, c                                      ; $4c6c: $cb $61
    dec a                                         ; $4c6e: $3d
    add hl, sp                                    ; $4c6f: $39
    inc b                                         ; $4c70: $04
    cp b                                          ; $4c71: $b8
    sbc [hl]                                      ; $4c72: $9e
    db $e4                                        ; $4c73: $e4
    sbc a                                         ; $4c74: $9f
    ld c, c                                       ; $4c75: $49
    or [hl]                                       ; $4c76: $b6
    adc h                                         ; $4c77: $8c
    and [hl]                                      ; $4c78: $a6
    ld l, d                                       ; $4c79: $6a
    ld h, h                                       ; $4c7a: $64
    push hl                                       ; $4c7b: $e5
    ld [hl], h                                    ; $4c7c: $74
    inc sp                                        ; $4c7d: $33
    halt                                          ; $4c7e: $76
    ld l, c                                       ; $4c7f: $69
    ld [hl], a                                    ; $4c80: $77
    inc l                                         ; $4c81: $2c
    jp z, $e535                                   ; $4c82: $ca $35 $e5

    ld a, [c]                                     ; $4c85: $f2
    ld [hl-], a                                   ; $4c86: $32
    ld c, c                                       ; $4c87: $49
    xor [hl]                                      ; $4c88: $ae
    cp d                                          ; $4c89: $ba
    sub h                                         ; $4c8a: $94
    rla                                           ; $4c8b: $17
    db $e4                                        ; $4c8c: $e4
    rra                                           ; $4c8d: $1f
    halt                                          ; $4c8e: $76
    dec c                                         ; $4c8f: $0d
    ld e, e                                       ; $4c90: $5b
    adc l                                         ; $4c91: $8d
    ld c, e                                       ; $4c92: $4b
    db $d3                                        ; $4c93: $d3
    sbc d                                         ; $4c94: $9a
    rrca                                          ; $4c95: $0f
    cp a                                          ; $4c96: $bf
    call nz, $1102                                ; $4c97: $c4 $02 $11
    rst $30                                       ; $4c9a: $f7
    ld d, l                                       ; $4c9b: $55
    ld d, a                                       ; $4c9c: $57
    ld [hl-], a                                   ; $4c9d: $32
    ld l, d                                       ; $4c9e: $6a
    ld b, h                                       ; $4c9f: $44
    ld l, [hl]                                    ; $4ca0: $6e
    jp z, $fae3                                   ; $4ca1: $ca $e3 $fa

    call z, $f5da                                 ; $4ca4: $cc $da $f5
    cp h                                          ; $4ca7: $bc
    ld a, [hl+]                                   ; $4ca8: $2a
    dec c                                         ; $4ca9: $0d
    ld e, h                                       ; $4caa: $5c
    ld c, d                                       ; $4cab: $4a
    db $cc, $c1, $32                              ; $4cac: $cc $c1 $32
    rst $10                                       ; $4caf: $d7
    add sp, $57                                   ; $4cb0: $e8 $57
    db $ed                                        ; $4cb2: $ed
    rlca                                          ; $4cb3: $07
    adc b                                         ; $4cb4: $88
    nop                                           ; $4cb5: $00
    dec a                                         ; $4cb6: $3d
    adc c                                         ; $4cb7: $89
    pop af                                        ; $4cb8: $f1
    sub h                                         ; $4cb9: $94
    dec bc                                        ; $4cba: $0b
    ld b, d                                       ; $4cbb: $42
    ld [$ed29], sp                                ; $4cbc: $08 $29 $ed
    ld e, h                                       ; $4cbf: $5c
    ld d, e                                       ; $4cc0: $53
    and $29                                       ; $4cc1: $e6 $29
    rlca                                          ; $4cc3: $07
    adc b                                         ; $4cc4: $88
    nop                                           ; $4cc5: $00
    cp l                                          ; $4cc6: $bd
    or e                                          ; $4cc7: $b3
    jp c, $d9a3                                   ; $4cc8: $da $a3 $d9

    and d                                         ; $4ccb: $a2
    ld e, l                                       ; $4ccc: $5d
    ld l, a                                       ; $4ccd: $6f
    ld c, l                                       ; $4cce: $4d
    xor b                                         ; $4ccf: $a8
    xor a                                         ; $4cd0: $af
    jr nz, jr_057_4cd5                            ; $4cd1: $20 $02

    db $dd                                        ; $4cd3: $dd
    ld h, [hl]                                    ; $4cd4: $66

jr_057_4cd5:
    ld a, [hl]                                    ; $4cd5: $7e
    ld [hl], e                                    ; $4cd6: $73
    xor l                                         ; $4cd7: $ad
    rst $20                                       ; $4cd8: $e7
    ld d, l                                       ; $4cd9: $55
    ld l, c                                       ; $4cda: $69
    halt                                          ; $4cdb: $76
    ld e, a                                       ; $4cdc: $5f
    ld h, [hl]                                    ; $4cdd: $66
    halt                                          ; $4cde: $76
    dec l                                         ; $4cdf: $2d
    add a                                         ; $4ce0: $87
    push af                                       ; $4ce1: $f5
    cp b                                          ; $4ce2: $b8
    ldh a, [rNR22]                                ; $4ce3: $f0 $17
    xor a                                         ; $4ce5: $af
    ld [hl], a                                    ; $4ce6: $77
    dec a                                         ; $4ce7: $3d
    add hl, bc                                    ; $4ce8: $09
    jp c, Jump_000_39b9                           ; $4ce9: $da $b9 $39

    ld [hl], c                                    ; $4cec: $71
    dec l                                         ; $4ced: $2d
    sub e                                         ; $4cee: $93
    and h                                         ; $4cef: $a4
    ld b, a                                       ; $4cf0: $47
    ld d, d                                       ; $4cf1: $52
    dec sp                                        ; $4cf2: $3b
    ld sp, $0b37                                  ; $4cf3: $31 $37 $0b
    call c, Call_057_61bd                         ; $4cf6: $dc $bd $61
    jp z, Jump_057_6fcc                           ; $4cf9: $ca $cc $6f

    xor [hl]                                      ; $4cfc: $ae
    ld bc, $f2c8                                  ; $4cfd: $01 $c8 $f2
    inc b                                         ; $4d00: $04
    xor [hl]                                      ; $4d01: $ae
    rst $20                                       ; $4d02: $e7
    ret                                           ; $4d03: $c9


    ld e, h                                       ; $4d04: $5c
    or e                                          ; $4d05: $b3
    inc l                                         ; $4d06: $2c
    ld e, d                                       ; $4d07: $5a
    ld hl, sp-$17                                 ; $4d08: $f8 $e9
    dec b                                         ; $4d0a: $05
    ld de, $e6dd                                  ; $4d0b: $11 $dd $e6
    or l                                          ; $4d0e: $b5
    or a                                          ; $4d0f: $b7
    db $e4                                        ; $4d10: $e4
    rrca                                          ; $4d11: $0f
    cp e                                          ; $4d12: $bb
    and d                                         ; $4d13: $a2
    rst $00                                       ; $4d14: $c7
    cp a                                          ; $4d15: $bf
    ld l, c                                       ; $4d16: $69
    ld b, a                                       ; $4d17: $47
    cp a                                          ; $4d18: $bf
    ret z                                         ; $4d19: $c8

    rst $38                                       ; $4d1a: $ff
    ld b, h                                       ; $4d1b: $44
    adc b                                         ; $4d1c: $88
    nop                                           ; $4d1d: $00
    db $dd                                        ; $4d1e: $dd
    and $b9                                       ; $4d1f: $e6 $b9
    ld h, [hl]                                    ; $4d21: $66
    sbc c                                         ; $4d22: $99
    add l                                         ; $4d23: $85
    add sp, $74                                   ; $4d24: $e8 $74
    sub l                                         ; $4d26: $95
    ld a, h                                       ; $4d27: $7c
    add hl, bc                                    ; $4d28: $09
    dec sp                                        ; $4d29: $3b
    add hl, de                                    ; $4d2a: $19
    rst $08                                       ; $4d2b: $cf
    or l                                          ; $4d2c: $b5
    inc de                                        ; $4d2d: $13
    sbc a                                         ; $4d2e: $9f
    ld d, d                                       ; $4d2f: $52
    cp e                                          ; $4d30: $bb
    ld h, h                                       ; $4d31: $64
    call nz, Call_000_29ab                        ; $4d32: $c4 $ab $29
    ld a, l                                       ; $4d35: $7d
    rst $00                                       ; $4d36: $c7
    call z, $ec93                                 ; $4d37: $cc $93 $ec
    jp hl                                         ; $4d3a: $e9


    ret                                           ; $4d3b: $c9


    sub e                                         ; $4d3c: $93
    or $43                                        ; $4d3d: $f6 $43
    cpl                                           ; $4d3f: $2f
    inc b                                         ; $4d40: $04
    ld [hl], a                                    ; $4d41: $77
    cp a                                          ; $4d42: $bf
    ld a, [hl-]                                   ; $4d43: $3a
    ld [hl], e                                    ; $4d44: $73
    ld c, l                                       ; $4d45: $4d
    ld c, a                                       ; $4d46: $4f
    sbc [hl]                                      ; $4d47: $9e
    or h                                          ; $4d48: $b4
    rra                                           ; $4d49: $1f
    ld d, $db                                     ; $4d4a: $16 $db
    xor e                                         ; $4d4c: $ab
    db $fd                                        ; $4d4d: $fd
    ret                                           ; $4d4e: $c9


    ld h, e                                       ; $4d4f: $63
    add [hl]                                      ; $4d50: $86
    ld [$1c7d], sp                                ; $4d51: $08 $7d $1c
    add [hl]                                      ; $4d54: $86
    dec l                                         ; $4d55: $2d
    db $ec                                        ; $4d56: $ec
    add hl, bc                                    ; $4d57: $09
    dec [hl]                                      ; $4d58: $35
    ret                                           ; $4d59: $c9


    sbc $9f                                       ; $4d5a: $de $9f
    db $f4                                        ; $4d5c: $f4
    ld d, l                                       ; $4d5d: $55
    add h                                         ; $4d5e: $84
    ld sp, hl                                     ; $4d5f: $f9
    ld b, c                                       ; $4d60: $41

Call_057_4d61:
    inc b                                         ; $4d61: $04
    add hl, hl                                    ; $4d62: $29
    ld sp, $cb07                                  ; $4d63: $31 $07 $cb
    adc b                                         ; $4d66: $88
    ld d, a                                       ; $4d67: $57
    jp $824f                                      ; $4d68: $c3 $4f $82


    ld b, a                                       ; $4d6b: $47
    jr jr_057_4dd1                                ; $4d6c: $18 $63

    or a                                          ; $4d6e: $b7
    rra                                           ; $4d6f: $1f
    ld [$0bb3], sp                                ; $4d70: $08 $b3 $0b
    ld [hl+], a                                   ; $4d73: $22
    rst $30                                       ; $4d74: $f7
    ld e, c                                       ; $4d75: $59
    ld a, b                                       ; $4d76: $78
    cpl                                           ; $4d77: $2f
    sbc c                                         ; $4d78: $99
    ld [hl], d                                    ; $4d79: $72
    jr jr_057_4db1                                ; $4d7a: $18 $35

    and d                                         ; $4d7c: $a2
    db $d3                                        ; $4d7d: $d3
    ld d, a                                       ; $4d7e: $57
    inc hl                                        ; $4d7f: $23
    db $dd                                        ; $4d80: $dd
    cp a                                          ; $4d81: $bf
    adc h                                         ; $4d82: $8c
    ld a, [de]                                    ; $4d83: $1a
    sub c                                         ; $4d84: $91
    sbc e                                         ; $4d85: $9b
    ld a, [c]                                     ; $4d86: $f2
    ld c, b                                       ; $4d87: $48
    ld l, d                                       ; $4d88: $6a
    jp z, $3b58                                   ; $4d89: $ca $58 $3b

    push af                                       ; $4d8c: $f5
    jr nz, jr_057_4d91                            ; $4d8d: $20 $02

    dec a                                         ; $4d8f: $3d
    xor a                                         ; $4d90: $af

jr_057_4d91:
    or l                                          ; $4d91: $b5
    xor h                                         ; $4d92: $ac
    ld e, l                                       ; $4d93: $5d
    ld l, a                                       ; $4d94: $6f
    ld c, l                                       ; $4d95: $4d
    xor b                                         ; $4d96: $a8
    xor a                                         ; $4d97: $af
    jr nz, @+$04                                  ; $4d98: $20 $02

    dec a                                         ; $4d9a: $3d
    cp $da                                        ; $4d9b: $fe $da
    db $dd                                        ; $4d9d: $dd
    ld a, [c]                                     ; $4d9e: $f2
    call nz, Call_057_7d70                        ; $4d9f: $c4 $70 $7d
    inc e                                         ; $4da2: $1c
    halt                                          ; $4da3: $76
    ret z                                         ; $4da4: $c8

    xor [hl]                                      ; $4da5: $ae
    ld h, d                                       ; $4da6: $62
    rst $28                                       ; $4da7: $ef
    push bc                                       ; $4da8: $c5

jr_057_4da9:
    add sp, $7a                                   ; $4da9: $e8 $7a
    inc a                                         ; $4dab: $3c
    nop                                           ; $4dac: $00
    ld e, c                                       ; $4dad: $59
    sbc [hl]                                      ; $4dae: $9e
    adc h                                         ; $4daf: $8c
    ld [hl], b                                    ; $4db0: $70

jr_057_4db1:
    dec l                                         ; $4db1: $2d
    db $e3                                        ; $4db2: $e3
    cp $65                                        ; $4db3: $fe $65
    call nz, $ca53                                ; $4db5: $c4 $53 $ca
    dec sp                                        ; $4db8: $3b
    ld h, [hl]                                    ; $4db9: $66
    sbc [hl]                                      ; $4dba: $9e
    ld h, h                                       ; $4dbb: $64
    ld c, a                                       ; $4dbc: $4f
    ld c, a                                       ; $4dbd: $4f
    sbc [hl]                                      ; $4dbe: $9e
    or h                                          ; $4dbf: $b4
    rra                                           ; $4dc0: $1f
    ld a, d                                       ; $4dc1: $7a
    ld hl, $bf77                                  ; $4dc2: $21 $77 $bf
    ld a, [hl-]                                   ; $4dc5: $3a
    ld [hl], e                                    ; $4dc6: $73
    ld c, l                                       ; $4dc7: $4d
    ld c, a                                       ; $4dc8: $4f
    sbc [hl]                                      ; $4dc9: $9e
    or h                                          ; $4dca: $b4
    rra                                           ; $4dcb: $1f
    ld d, $db                                     ; $4dcc: $16 $db
    xor e                                         ; $4dce: $ab
    db $fd                                        ; $4dcf: $fd
    ret                                           ; $4dd0: $c9


jr_057_4dd1:
    ld h, e                                       ; $4dd1: $63
    add [hl]                                      ; $4dd2: $86
    ld [$e6dd], sp                                ; $4dd3: $08 $dd $e6
    cp c                                          ; $4dd6: $b9
    sub [hl]                                      ; $4dd7: $96
    db $fc                                        ; $4dd8: $fc
    ld [hl], e                                    ; $4dd9: $73
    ld a, b                                       ; $4dda: $78
    sub [hl]                                      ; $4ddb: $96
    jp $f8c6                                      ; $4ddc: $c3 $c6 $f8


    add a                                         ; $4ddf: $87
    dec h                                         ; $4de0: $25
    ld d, [hl]                                    ; $4de1: $56
    db $fc                                        ; $4de2: $fc
    sbc b                                         ; $4de3: $98
    or l                                          ; $4de4: $b5
    ld d, e                                       ; $4de5: $53
    ld h, [hl]                                    ; $4de6: $66
    jr c, jr_057_4da9                             ; $4de7: $38 $c0

    ld a, a                                       ; $4de9: $7f
    sbc b                                         ; $4dea: $98
    ld e, d                                       ; $4deb: $5a
    and b                                         ; $4dec: $a0
    ldh [$ee], a                                  ; $4ded: $e0 $ee
    or [hl]                                       ; $4def: $b6
    adc h                                         ; $4df0: $8c
    ld c, b                                       ; $4df1: $48
    cp $99                                        ; $4df2: $fe $99
    ld h, h                                       ; $4df4: $64
    bit 3, [hl]                                   ; $4df5: $cb $5e
    ld [hl-], a                                   ; $4df7: $32
    push hl                                       ; $4df8: $e5
    ld a, [c]                                     ; $4df9: $f2
    adc [hl]                                      ; $4dfa: $8e
    ld l, e                                       ; $4dfb: $6b
    sub d                                         ; $4dfc: $92
    dec a                                         ; $4dfd: $3d
    dec a                                         ; $4dfe: $3d
    ld a, c                                       ; $4dff: $79
    jp nc, $d07e                                  ; $4e00: $d2 $7e $d0

    xor $35                                       ; $4e03: $ee $35
    ld a, $d4                                     ; $4e05: $3e $d4
    jp c, $9e67                                   ; $4e07: $da $67 $9e

    db $f4                                        ; $4e0a: $f4
    ld d, l                                       ; $4e0b: $55
    ret c                                         ; $4e0c: $d8

    ld h, l                                       ; $4e0d: $65
    db $ed                                        ; $4e0e: $ed
    ld c, $b5                                     ; $4e0f: $0e $b5
    di                                            ; $4e11: $f3
    ld b, a                                       ; $4e12: $47
    rst $10                                       ; $4e13: $d7

jr_057_4e14:
    add e                                         ; $4e14: $83
    ld [$dc29], sp                                ; $4e15: $08 $29 $dc
    ld [hl], c                                    ; $4e18: $71
    adc c                                         ; $4e19: $89
    push bc                                       ; $4e1a: $c5
    ld c, e                                       ; $4e1b: $4b
    ld e, [hl]                                    ; $4e1c: $5e
    sbc l                                         ; $4e1d: $9d
    and $5a                                       ; $4e1e: $e6 $5a
    ld b, d                                       ; $4e20: $42
    push de                                       ; $4e21: $d5

Jump_057_4e22:
    ld c, [hl]                                    ; $4e22: $4e
    db $ec                                        ; $4e23: $ec
    jr c, @+$2f                                   ; $4e24: $38 $2d

    add [hl]                                      ; $4e26: $86
    inc bc                                        ; $4e27: $03
    db $fc                                        ; $4e28: $fc
    add a                                         ; $4e29: $87
    xor c                                         ; $4e2a: $a9
    add l                                         ; $4e2b: $85
    xor h                                         ; $4e2c: $ac
    ld hl, sp+$4d                                 ; $4e2d: $f8 $4d
    ld e, c                                       ; $4e2f: $59
    jr nz, @+$04                                  ; $4e30: $20 $02

    db $dd                                        ; $4e32: $dd
    and $1d                                       ; $4e33: $e6 $1d
    xor $b8                                       ; $4e35: $ee $b8
    call nz, Call_000_25e2                        ; $4e37: $c4 $e2 $25
    xor a                                         ; $4e3a: $af
    ld c, [hl]                                    ; $4e3b: $4e
    ld [hl], e                                    ; $4e3c: $73
    ld l, c                                       ; $4e3d: $69
    rst $20                                       ; $4e3e: $e7
    jp c, $d18f                                   ; $4e3f: $da $8f $d1

    ld a, e                                       ; $4e42: $7b
    xor l                                         ; $4e43: $ad
    pop af                                        ; $4e44: $f1
    ld d, a                                       ; $4e45: $57
    ld c, e                                       ; $4e46: $4b
    call c, $c662                                 ; $4e47: $dc $62 $c6
    ret c                                         ; $4e4a: $d8

    jp nz, $0110                                  ; $4e4b: $c2 $10 $01

    rst $30                                       ; $4e4e: $f7
    sbc b                                         ; $4e4f: $98
    ld h, h                                       ; $4e50: $64
    ld e, l                                       ; $4e51: $5d
    and $da                                       ; $4e52: $e6 $da
    adc a                                         ; $4e54: $8f
    pop de                                        ; $4e55: $d1
    dec sp                                        ; $4e56: $3b
    ld a, l                                       ; $4e57: $7d
    ld d, l                                       ; $4e58: $55
    ei                                            ; $4e59: $fb
    ld h, c                                       ; $4e5a: $61

jr_057_4e5b:
    or c                                          ; $4e5b: $b1
    cp l                                          ; $4e5c: $bd
    jp c, Jump_000_3c9f                           ; $4e5d: $da $9f $3c

    ld h, [hl]                                    ; $4e60: $66
    db $ed                                        ; $4e61: $ed
    or b                                          ; $4e62: $b0
    ld h, l                                       ; $4e63: $65
    jp z, $d732                                   ; $4e64: $ca $32 $d7

    ld h, d                                       ; $4e67: $62
    ld a, e                                       ; $4e68: $7b
    push hl                                       ; $4e69: $e5
    ld a, [c]                                     ; $4e6a: $f2
    inc l                                         ; $4e6b: $2c
    or d                                          ; $4e6c: $b2
    db $e4                                        ; $4e6d: $e4
    ld c, c                                       ; $4e6e: $49
    ei                                            ; $4e6f: $fb
    ld bc, $f722                                  ; $4e70: $01 $22 $f7
    ld d, b                                       ; $4e73: $50
    or l                                          ; $4e74: $b5
    jp $971d                                      ; $4e75: $c3 $1d $97


    ld e, b                                       ; $4e78: $58
    cp h                                          ; $4e79: $bc
    di                                            ; $4e7a: $f3
    ld e, l                                       ; $4e7b: $5d
    ld a, e                                       ; $4e7c: $7b
    inc a                                         ; $4e7d: $3c
    ret                                           ; $4e7e: $c9


    sub [hl]                                      ; $4e7f: $96
    cp c                                          ; $4e80: $b9
    and [hl]                                      ; $4e81: $a6
    cp d                                          ; $4e82: $ba
    jr nc, jr_057_4e14                            ; $4e83: $30 $8f

    ld a, a                                       ; $4e85: $7f
    sbc e                                         ; $4e86: $9b
    ld l, $ca                                     ; $4e87: $2e $ca
    dec d                                         ; $4e89: $15
    sbc [hl]                                      ; $4e8a: $9e
    inc b                                         ; $4e8b: $04
    db $ed                                        ; $4e8c: $ed
    jp nc, $b55d                                  ; $4e8d: $d2 $5d $b5

    db $e4                                        ; $4e90: $e4
    adc a                                         ; $4e91: $8f
    ret z                                         ; $4e92: $c8

    ld c, l                                       ; $4e93: $4d
    ld a, c                                       ; $4e94: $79
    ld sp, hl                                     ; $4e95: $f9
    sbc h                                         ; $4e96: $9c
    pop de                                        ; $4e97: $d1
    push af                                       ; $4e98: $f5
    ld b, [hl]                                    ; $4e99: $46
    adc l                                         ; $4e9a: $8d
    add sp, -$48                                  ; $4e9b: $e8 $b8
    sub c                                         ; $4e9d: $91
    sbc [hl]                                      ; $4e9e: $9e
    ld [hl-], a                                   ; $4e9f: $32
    add [hl]                                      ; $4ea0: $86
    ld [$ff80], sp                                ; $4ea1: $08 $80 $ff
    jr nc, jr_057_4e5b                            ; $4ea4: $30 $b5

    ld [hl], h                                    ; $4ea6: $74
    sub a                                         ; $4ea7: $97
    add $cb                                       ; $4ea8: $c6 $cb
    rst $20                                       ; $4eaa: $e7
    adc h                                         ; $4eab: $8c
    adc $b5                                       ; $4eac: $ce $b5
    jp $971d                                      ; $4eae: $c3 $1d $97


    ld e, b                                       ; $4eb1: $58
    ld a, h                                       ; $4eb2: $7c
    sub [hl]                                      ; $4eb3: $96
    db $fc                                        ; $4eb4: $fc
    sub $31                                       ; $4eb5: $d6 $31
    ld b, h                                       ; $4eb7: $44
    add hl, hl                                    ; $4eb8: $29
    ld sp, $cb07                                  ; $4eb9: $31 $07 $cb
    adc b                                         ; $4ebc: $88
    ld d, a                                       ; $4ebd: $57
    jp $824f                                      ; $4ebe: $c3 $4f $82


    ld b, a                                       ; $4ec1: $47

jr_057_4ec2:
    jr @+$65                                      ; $4ec2: $18 $63

    or a                                          ; $4ec4: $b7
    rra                                           ; $4ec5: $1f
    ld [$0bb3], sp                                ; $4ec6: $08 $b3 $0b
    ld [hl+], a                                   ; $4ec9: $22
    add hl, hl                                    ; $4eca: $29
    sub $ae                                       ; $4ecb: $d6 $ae
    or a                                          ; $4ecd: $b7
    ld h, $d4                                     ; $4ece: $26 $d4
    ld d, a                                       ; $4ed0: $57
    jp c, $9755                                   ; $4ed1: $da $55 $97

    ld a, [c]                                     ; $4ed4: $f2
    add d                                         ; $4ed5: $82

Call_057_4ed6:
    db $fc                                        ; $4ed6: $fc
    jp $d4ae                                      ; $4ed7: $c3 $ae $d4


    db $eb                                        ; $4eda: $eb
    or $9e                                        ; $4edb: $f6 $9e
    xor b                                         ; $4edd: $a8
    ld a, [c]                                     ; $4ede: $f2
    adc b                                         ; $4edf: $88
    ld d, a                                       ; $4ee0: $57
    and e                                         ; $4ee1: $a3
    add hl, hl                                    ; $4ee2: $29
    and $91                                       ; $4ee3: $e6 $91
    sub l                                         ; $4ee5: $95
    db $d3                                        ; $4ee6: $d3
    call $05d8                                    ; $4ee7: $cd $d8 $05
    ld de, $2d80                                  ; $4eea: $11 $80 $2d
    inc a                                         ; $4eed: $3c
    jp nz, $1105                                  ; $4eee: $c2 $05 $11

    ld a, l                                       ; $4ef1: $7d
    inc e                                         ; $4ef2: $1c
    ld b, [hl]                                    ; $4ef3: $46
    ld d, b                                       ; $4ef4: $50
    and h                                         ; $4ef5: $a4
    ld l, e                                       ; $4ef6: $6b
    ld e, a                                       ; $4ef7: $5f
    add d                                         ; $4ef8: $82
    ld h, l                                       ; $4ef9: $65
    xor [hl]                                      ; $4efa: $ae
    sbc l                                         ; $4efb: $9d
    ld hl, sp-$6c                                 ; $4efc: $f8 $94
    ld c, d                                       ; $4efe: $4a
    adc l                                         ; $4eff: $8d
    nop                                           ; $4f00: $00
    add b                                         ; $4f01: $80
    ld b, h                                       ; $4f02: $44
    ld hl, sp+$31                                 ; $4f03: $f8 $31
    rst $28                                       ; $4f05: $ef
    xor $d7                                       ; $4f06: $ee $d7
    add sp, $27                                   ; $4f08: $e8 $27
    ld h, c                                       ; $4f0a: $61
    ld [$1769], a                                 ; $4f0b: $ea $69 $17
    sbc a                                         ; $4f0e: $9f
    sbc h                                         ; $4f0f: $9c
    ret c                                         ; $4f10: $d8

    ld sp, $1084                                  ; $4f11: $31 $84 $10
    ld bc, $c93d                                  ; $4f14: $01 $3d $c9
    db $db                                        ; $4f17: $db
    adc c                                         ; $4f18: $89
    dec e                                         ; $4f19: $1d
    dec hl                                        ; $4f1a: $2b
    push hl                                       ; $4f1b: $e5
    ld e, [hl]                                    ; $4f1c: $5e
    ld [$bf77], sp                                ; $4f1d: $08 $77 $bf
    ld b, [hl]                                    ; $4f20: $46
    ccf                                           ; $4f21: $3f
    add hl, bc                                    ; $4f22: $09
    dec sp                                        ; $4f23: $3b
    ld d, c                                       ; $4f24: $51
    ld l, a                                       ; $4f25: $6f
    call Call_057_643b                            ; $4f26: $cd $3b $64
    ld d, a                                       ; $4f29: $57
    db $f4                                        ; $4f2a: $f4
    ld [hl], d                                    ; $4f2b: $72
    ld e, b                                       ; $4f2c: $58
    jr z, jr_057_4ec2                             ; $4f2d: $28 $93

    db $e3                                        ; $4f2f: $e3
    rla                                           ; $4f30: $17
    rst $30                                       ; $4f31: $f7
    add a                                         ; $4f32: $87
    dec e                                         ; $4f33: $1d
    sub [hl]                                      ; $4f34: $96
    ld a, [hl]                                    ; $4f35: $7e
    sub c                                         ; $4f36: $91
    xor [hl]                                      ; $4f37: $ae
    and a                                         ; $4f38: $a7
    ld e, l                                       ; $4f39: $5d
    ld c, $3b                                     ; $4f3a: $0e $3b
    inc d                                         ; $4f3c: $14
    add h                                         ; $4f3d: $84
    ldh a, [$50]                                  ; $4f3e: $f0 $50
    and e                                         ; $4f40: $a3
    ld a, a                                       ; $4f41: $7f
    adc h                                         ; $4f42: $8c
    db $eb                                        ; $4f43: $eb
    jr c, @-$72                                   ; $4f44: $38 $8c

    ld a, h                                       ; $4f46: $7c
    ld a, [c]                                     ; $4f47: $f2
    ld h, e                                       ; $4f48: $63
    add h                                         ; $4f49: $84
    ld [$ff80], sp                                ; $4f4a: $08 $80 $ff
    ld c, [hl]                                    ; $4f4d: $4e
    db $fc                                        ; $4f4e: $fc
    inc [hl]                                      ; $4f4f: $34
    cp e                                          ; $4f50: $bb
    ld d, $4a                                     ; $4f51: $16 $4a
    daa                                           ; $4f53: $27
    ld c, c                                       ; $4f54: $49

jr_057_4f55:
    jp $f3dd                                      ; $4f55: $c3 $dd $f3


    sbc e                                         ; $4f58: $9b
    ld a, [hl]                                    ; $4f59: $7e
    sub [hl]                                      ; $4f5a: $96
    jp Jump_057_5c7a                              ; $4f5b: $c3 $7a $5c


    ld hl, sp-$75                                 ; $4f5e: $f8 $8b
    or l                                          ; $4f60: $b5
    ld c, e                                       ; $4f61: $4b
    or a                                          ; $4f62: $b7
    ccf                                           ; $4f63: $3f
    ld l, h                                       ; $4f64: $6c
    dec [hl]                                      ; $4f65: $35
    db $ec                                        ; $4f66: $ec
    nop                                           ; $4f67: $00
    rst $10                                       ; $4f68: $d7
    di                                            ; $4f69: $f3
    xor d                                         ; $4f6a: $aa

Jump_057_4f6b:
    inc [hl]                                      ; $4f6b: $34
    jp c, Jump_057_7d29                           ; $4f6c: $da $29 $7d

    add c                                         ; $4f6f: $81
    xor d                                         ; $4f70: $aa
    ld h, c                                       ; $4f71: $61
    xor e                                         ; $4f72: $ab
    db $dd                                        ; $4f73: $dd
    db $fd                                        ; $4f74: $fd
    ld a, [de]                                    ; $4f75: $1a
    db $fd                                        ; $4f76: $fd
    inc h                                         ; $4f77: $24
    inc l                                         ; $4f78: $2c
    add a                                         ; $4f79: $87
    push af                                       ; $4f7a: $f5
    db $e4                                        ; $4f7b: $e4
    db $10                                        ; $4f7c: $10
    ldh [$ba], a                                  ; $4f7d: $e0 $ba
    dec e                                         ; $4f7f: $1d
    ld d, $ca                                     ; $4f80: $16 $ca
    rst $18                                       ; $4f82: $df
    dec [hl]                                      ; $4f83: $35
    ret                                           ; $4f84: $c9


    ld [hl], c                                    ; $4f85: $71
    ccf                                           ; $4f86: $3f
    ld b, [hl]                                    ; $4f87: $46
    ld c, a                                       ; $4f88: $4f
    ld e, c                                       ; $4f89: $59
    or $d5                                        ; $4f8a: $f6 $d5
    rst $08                                       ; $4f8c: $cf
    ld l, h                                       ; $4f8d: $6c
    add hl, de                                    ; $4f8e: $19
    or l                                          ; $4f8f: $b5
    inc de                                        ; $4f90: $13
    rr b                                          ; $4f91: $cb $18
    ld a, e                                       ; $4f93: $7b
    add a                                         ; $4f94: $87
    ld e, d                                       ; $4f95: $5a
    inc sp                                        ; $4f96: $33
    inc sp                                        ; $4f97: $33
    ld b, h                                       ; $4f98: $44
    add hl, hl                                    ; $4f99: $29
    ld c, [hl]                                    ; $4f9a: $4e
    cp l                                          ; $4f9b: $bd
    ld l, [hl]                                    ; $4f9c: $6e
    di                                            ; $4f9d: $f3
    jr nc, jr_057_4f55                            ; $4f9e: $30 $b5

    and h                                         ; $4fa0: $a4
    xor a                                         ; $4fa1: $af
    ld a, [c]                                     ; $4fa2: $f2
    inc l                                         ; $4fa3: $2c
    ld b, h                                       ; $4fa4: $44
    and a                                         ; $4fa5: $a7
    xor e                                         ; $4fa6: $ab
    db $e4                                        ; $4fa7: $e4
    ld c, e                                       ; $4fa8: $4b
    or b                                          ; $4fa9: $b0
    ret nz                                        ; $4faa: $c0

    ld [hl], l                                    ; $4fab: $75
    ld e, e                                       ; $4fac: $5b
    and $9a                                       ; $4fad: $e6 $9a
    ld [$a952], a                                 ; $4faf: $ea $52 $a9
    ld de, $bf37                                  ; $4fb2: $11 $37 $bf
    rla                                           ; $4fb5: $17
    ld b, d                                       ; $4fb6: $42
    jr nz, jr_057_4fc1                            ; $4fb7: $20 $08

    add d                                         ; $4fb9: $82
    ld c, b                                       ; $4fba: $48
    adc l                                         ; $4fbb: $8d
    nop                                           ; $4fbc: $00
    db $fd                                        ; $4fbd: $fd
    ld d, d                                       ; $4fbe: $52
    inc d                                         ; $4fbf: $14
    ld b, c                                       ; $4fc0: $41

jr_057_4fc1:
    ld b, b                                       ; $4fc1: $40
    ld [$2c93], sp                                ; $4fc2: $08 $93 $2c
    adc d                                         ; $4fc5: $8a
    ld hl, $7f84                                  ; $4fc6: $21 $84 $7f
    ld b, h                                       ; $4fc9: $44
    ld d, [hl]                                    ; $4fca: $56
    ld h, [hl]                                    ; $4fcb: $66
    ld [$0221], sp                                ; $4fcc: $08 $21 $02
    dec a                                         ; $4fcf: $3d
    ret                                           ; $4fd0: $c9


    db $db                                        ; $4fd1: $db
    adc c                                         ; $4fd2: $89
    dec e                                         ; $4fd3: $1d
    dec hl                                        ; $4fd4: $2b
    push hl                                       ; $4fd5: $e5
    ld e, [hl]                                    ; $4fd6: $5e
    ld [$4f3d], sp                                ; $4fd7: $08 $3d $4f
    and $5a                                       ; $4fda: $e6 $5a
    ld a, [hl-]                                   ; $4fdc: $3a
    rla                                           ; $4fdd: $17
    ld a, e                                       ; $4fde: $7b
    ld b, d                                       ; $4fdf: $42
    pop bc                                        ; $4fe0: $c1
    push af                                       ; $4fe1: $f5
    ld [hl], c                                    ; $4fe2: $71
    jr jr_057_5046                                ; $4fe3: $18 $61

    halt                                          ; $4fe5: $76
    db $ed                                        ; $4fe6: $ed
    or $96                                        ; $4fe7: $f6 $96
    bit 6, d                                      ; $4fe9: $cb $72
    ldh [rP1], a                                  ; $4feb: $e0 $00
    rst $38                                       ; $4fed: $ff
    ld h, c                                       ; $4fee: $61
    ld l, d                                       ; $4fef: $6a
    inc [hl]                                      ; $4ff0: $34
    dec [hl]                                      ; $4ff1: $35
    push hl                                       ; $4ff2: $e5

jr_057_4ff3:
    jr nc, jr_057_4ff3                            ; $4ff3: $30 $fe

    dec l                                         ; $4ff5: $2d
    db $fd                                        ; $4ff6: $fd
    and d                                         ; $4ff7: $a2
    rst $00                                       ; $4ff8: $c7
    cp a                                          ; $4ff9: $bf
    xor l                                         ; $4ffa: $ad
    or a                                          ; $4ffb: $b7
    ld h, $d4                                     ; $4ffc: $26 $d4
    ld d, a                                       ; $4ffe: $57
    db $10                                        ; $4fff: $10
    ld bc, $2d80                                  ; $5000: $01 $80 $2d
    inc c                                         ; $5003: $0c
    ld hl, $6c04                                  ; $5004: $21 $04 $6c
    sbc [hl]                                      ; $5007: $9e
    jp nc, Jump_000_2447                          ; $5008: $d2 $47 $24

    ld l, a                                       ; $500b: $6f
    jp z, $d73c                                   ; $500c: $ca $3c $d7

    ld c, [hl]                                    ; $500f: $4e
    add $23                                       ; $5010: $c6 $23
    ld e, [hl]                                    ; $5012: $5e
    ld c, l                                       ; $5013: $4d
    sub l                                         ; $5014: $95
    ld c, c                                       ; $5015: $49
    sbc [hl]                                      ; $5016: $9e
    add l                                         ; $5017: $85
    add sp, $74                                   ; $5018: $e8 $74
    sub l                                         ; $501a: $95
    ld a, h                                       ; $501b: $7c
    add hl, bc                                    ; $501c: $09
    ld d, $f7                                     ; $501d: $16 $f7
    ld b, d                                       ; $501f: $42
    or a                                          ; $5020: $b7
    ret                                           ; $5021: $c9


    ld c, [hl]                                    ; $5022: $4e
    add $4b                                       ; $5023: $c6 $4b
    ld a, [hl]                                    ; $5025: $7e
    dec de                                        ; $5026: $1b
    pop af                                        ; $5027: $f1
    sub [hl]                                      ; $5028: $96
    ld l, [hl]                                    ; $5029: $6e
    ld e, c                                       ; $502a: $59
    sbc c                                         ; $502b: $99
    and a                                         ; $502c: $a7
    ld e, h                                       ; $502d: $5c
    ld a, $70                                     ; $502e: $3e $70
    db $fd                                        ; $5030: $fd
    ld c, [hl]                                    ; $5031: $4e
    push de                                       ; $5032: $d5
    adc a                                         ; $5033: $8f
    pop de                                        ; $5034: $d1
    ld d, e                                       ; $5035: $53
    and $11                                       ; $5036: $e6 $11
    cp c                                          ; $5038: $b9
    add hl, hl                                    ; $5039: $29
    rst $10                                       ; $503a: $d7
    jp c, $f64f                                   ; $503b: $da $4f $f6

    ld b, a                                       ; $503e: $47
    inc a                                         ; $503f: $3c
    xor h                                         ; $5040: $ac
    db $dd                                        ; $5041: $dd
    ld [hl], c                                    ; $5042: $71
    ld c, e                                       ; $5043: $4b
    sub [hl]                                      ; $5044: $96
    pop af                                        ; $5045: $f1

jr_057_5046:
    sub h                                         ; $5046: $94
    ld a, c                                       ; $5047: $79
    ld [hl], h                                    ; $5048: $74
    xor [hl]                                      ; $5049: $ae
    db $f4                                        ; $504a: $f4
    inc de                                        ; $504b: $13
    ld [hl], c                                    ; $504c: $71
    adc l                                         ; $504d: $8d
    ld a, b                                       ; $504e: $78
    ld a, b                                       ; $504f: $78
    ld [hl], h                                    ; $5050: $74
    xor [hl]                                      ; $5051: $ae
    cp l                                          ; $5052: $bd
    sub $f8                                       ; $5053: $d6 $f8
    dec hl                                        ; $5055: $2b
    cp b                                          ; $5056: $b8
    cp e                                          ; $5057: $bb
    dec l                                         ; $5058: $2d
    inc hl                                        ; $5059: $23
    sbc [hl]                                      ; $505a: $9e
    adc h                                         ; $505b: $8c
    dec hl                                        ; $505c: $2b
    rst $10                                       ; $505d: $d7
    adc b                                         ; $505e: $88
    daa                                           ; $505f: $27
    dec sp                                        ; $5060: $3b
    ld a, [c]                                     ; $5061: $f2
    adc d                                         ; $5062: $8a
    ld [hl], a                                    ; $5063: $77
    ld [c], a                                     ; $5064: $e2
    ld l, e                                       ; $5065: $6b
    and e                                         ; $5066: $a3
    xor c                                         ; $5067: $a9
    xor c                                         ; $5068: $a9
    ld a, [$7a31]                                 ; $5069: $fa $31 $7a
    sub d                                         ; $506c: $92
    cp l                                          ; $506d: $bd
    sub e                                         ; $506e: $93
    pop af                                        ; $506f: $f1
    jp nz, $11af                                  ; $5070: $c2 $af $11

    rrca                                          ; $5073: $0f
    rst $08                                       ; $5074: $cf
    ret                                           ; $5075: $c9


    rrca                                          ; $5076: $0f
    ld l, e                                       ; $5077: $6b
    ccf                                           ; $5078: $3f
    add c                                         ; $5079: $81
    ld [$9e7d], sp                                ; $507a: $08 $7d $9e
    halt                                          ; $507d: $76
    add a                                         ; $507e: $87
    ld e, d                                       ; $507f: $5a
    ld l, h                                       ; $5080: $6c
    xor a                                         ; $5081: $af
    ld a, b                                       ; $5082: $78
    sub a                                         ; $5083: $97
    db $ec                                        ; $5084: $ec
    xor [hl]                                      ; $5085: $ae
    sbc a                                         ; $5086: $9f
    inc e                                         ; $5087: $1c
    or a                                          ; $5088: $b7
    rra                                           ; $5089: $1f
    rst $08                                       ; $508a: $cf
    cpl                                           ; $508b: $2f
    adc e                                         ; $508c: $8b
    halt                                          ; $508d: $76
    ld b, h                                       ; $508e: $44
    ld c, [hl]                                    ; $508f: $4e
    xor h                                         ; $5090: $ac
    cp [hl]                                       ; $5091: $be
    add h                                         ; $5092: $84
    or d                                          ; $5093: $b2
    ld a, [$6396]                                 ; $5094: $fa $96 $63
    sbc c                                         ; $5097: $99
    ld l, e                                       ; $5098: $6b
    sbc l                                         ; $5099: $9d
    cp h                                          ; $509a: $bc
    ld l, [hl]                                    ; $509b: $6e
    cpl                                           ; $509c: $2f
    ld sp, hl                                     ; $509d: $f9
    rst $00                                       ; $509e: $c7
    ld h, a                                       ; $509f: $67
    add a                                         ; $50a0: $87
    db $fd                                        ; $50a1: $fd
    dec h                                         ; $50a2: $25
    push af                                       ; $50a3: $f5
    xor $b6                                       ; $50a4: $ee $b6
    adc h                                         ; $50a6: $8c
    ld c, b                                       ; $50a7: $48
    adc h                                         ; $50a8: $8c
    rla                                           ; $50a9: $17
    sbc a                                         ; $50aa: $9f
    inc l                                         ; $50ab: $2c
    jp hl                                         ; $50ac: $e9


    xor e                                         ; $50ad: $ab
    cp h                                          ; $50ae: $bc
    sub h                                         ; $50af: $94
    ld a, [hl]                                    ; $50b0: $7e
    and a                                         ; $50b1: $a7
    ld a, h                                       ; $50b2: $7c
    ld c, b                                       ; $50b3: $48
    rst $10                                       ; $50b4: $d7
    db $e3                                        ; $50b5: $e3
    ld e, [hl]                                    ; $50b6: $5e
    ld [$96dd], sp                                ; $50b7: $08 $dd $96
    sbc l                                         ; $50ba: $9d
    add a                                         ; $50bb: $87
    or c                                          ; $50bc: $b1
    ld [hl], a                                    ; $50bd: $77
    ld [hl-], a                                   ; $50be: $32
    sbc $a7                                       ; $50bf: $de $a7
    cp e                                          ; $50c1: $bb
    ld e, d                                       ; $50c2: $5a
    ldh a, [$0e]                                  ; $50c3: $f0 $0e
    ld [hl], a                                    ; $50c5: $77
    ld e, h                                       ; $50c6: $5c
    ld h, d                                       ; $50c7: $62
    pop af                                        ; $50c8: $f1
    sub d                                         ; $50c9: $92
    rst $18                                       ; $50ca: $df
    and [hl]                                      ; $50cb: $a6
    jp z, $a7a4                                   ; $50cc: $ca $a4 $a7

    inc e                                         ; $50cf: $1c
    or h                                          ; $50d0: $b4
    dec sp                                        ; $50d1: $3b
    db $ed                                        ; $50d2: $ed
    rst $00                                       ; $50d3: $c7
    ld c, c                                       ; $50d4: $49
    or [hl]                                       ; $50d5: $b6
    inc l                                         ; $50d6: $2c
    ld e, d                                       ; $50d7: $5a
    ld hl, sp-$17                                 ; $50d8: $f8 $e9
    push hl                                       ; $50da: $e5
    ld a, [de]                                    ; $50db: $1a
    ld d, a                                       ; $50dc: $57
    ld l, $b8                                     ; $50dd: $2e $b8
    ld l, [hl]                                    ; $50df: $6e
    set 1, [hl]                                   ; $50e0: $cb $ce
    jp $3bd8                                      ; $50e2: $c3 $d8 $3b


    add hl, de                                    ; $50e5: $19
    adc a                                         ; $50e6: $8f
    ld a, b                                       ; $50e7: $78
    or l                                          ; $50e8: $b5
    ret c                                         ; $50e9: $d8

    ld e, $2e                                     ; $50ea: $1e $2e
    di                                            ; $50ec: $f3
    adc [hl]                                      ; $50ed: $8e
    jp $b7f8                                      ; $50ee: $c3 $f8 $b7


    or l                                          ; $50f1: $b5
    sbc a                                         ; $50f2: $9f
    sbc b                                         ; $50f3: $98
    ld [hl], a                                    ; $50f4: $77
    xor b                                         ; $50f5: $a8
    dec [hl]                                      ; $50f6: $35
    ld c, e                                       ; $50f7: $4b
    ldh a, [$72]                                  ; $50f8: $f0 $72
    ld e, b                                       ; $50fa: $58
    ld h, d                                       ; $50fb: $62
    ld h, c                                       ; $50fc: $61
    di                                            ; $50fd: $f3
    ld c, b                                       ; $50fe: $48
    ld l, d                                       ; $50ff: $6a
    call nc, $8b12                                ; $5100: $d4 $12 $8b
    ld a, [c]                                     ; $5103: $f2
    ld hl, sp-$49                                 ; $5104: $f8 $b7
    db $f4                                        ; $5106: $f4
    adc e                                         ; $5107: $8b
    ld e, $ff                                     ; $5108: $1e $ff
    ld [hl], $fc                                  ; $510a: $36 $fc
    ld [hl+], a                                   ; $510c: $22
    ld e, e                                       ; $510d: $5b
    jr nz, jr_057_5112                            ; $510e: $20 $02

    add b                                         ; $5110: $80
    ld [hl], e                                    ; $5111: $73

jr_057_5112:
    ld d, e                                       ; $5112: $53
    add $b9                                       ; $5113: $c6 $b9
    jr c, jr_057_514c                             ; $5115: $38 $35

    ld [bc], a                                    ; $5117: $02
    dec a                                         ; $5118: $3d
    xor a                                         ; $5119: $af
    ld c, d                                       ; $511a: $4a
    sub e                                         ; $511b: $93
    ld a, d                                       ; $511c: $7a
    or a                                          ; $511d: $b7
    push de                                       ; $511e: $d5
    sub h                                         ; $511f: $94
    ld a, c                                       ; $5120: $79
    jp hl                                         ; $5121: $e9


    ld a, d                                       ; $5122: $7a
    jp Jump_057_5356                              ; $5123: $c3 $56 $53


    ld c, $bd                                     ; $5126: $0e $bd
    db $10                                        ; $5128: $10
    ld a, l                                       ; $5129: $7d
    ld e, $dc                                     ; $512a: $1e $dc
    db $dd                                        ; $512c: $dd
    sub [hl]                                      ; $512d: $96
    ld e, c                                       ; $512e: $59
    adc b                                         ; $512f: $88
    ld c, [hl]                                    ; $5130: $4e
    ld d, a                                       ; $5131: $57
    ret                                           ; $5132: $c9


    sub a                                         ; $5133: $97
    ld h, b                                       ; $5134: $60
    sbc c                                         ; $5135: $99
    ld l, e                                       ; $5136: $6b
    jp z, Jump_057_74b5                           ; $5137: $ca $b5 $74

    ld l, $b6                                     ; $513a: $2e $b6
    halt                                          ; $513c: $76
    add hl, sp                                    ; $513d: $39
    ld c, h                                       ; $513e: $4c
    ld e, c                                       ; $513f: $59
    and $9a                                       ; $5140: $e6 $9a
    ld [$1052], a                                 ; $5142: $ea $52 $10
    ld bc, $e6dd                                  ; $5145: $01 $dd $e6
    cp c                                          ; $5148: $b9
    ld b, [hl]                                    ; $5149: $46
    ld d, d                                       ; $514a: $52
    db $e3                                        ; $514b: $e3

jr_057_514c:
    xor a                                         ; $514c: $af
    cp h                                          ; $514d: $bc
    adc [hl]                                      ; $514e: $8e
    jp Jump_057_5502                              ; $514f: $c3 $02 $55


    jp c, $bcf5                                   ; $5152: $da $f5 $bc

    ld a, [hl+]                                   ; $5155: $2a
    dec c                                         ; $5156: $0d
    ld e, h                                       ; $5157: $5c
    adc a                                         ; $5158: $8f
    ld l, e                                       ; $5159: $6b
    xor [hl]                                      ; $515a: $ae
    add hl, hl                                    ; $515b: $29
    ld a, l                                       ; $515c: $7d
    ld e, h                                       ; $515d: $5c
    sbc d                                         ; $515e: $9a
    db $10                                        ; $515f: $10
    ldh [$ee], a                                  ; $5160: $e0 $ee
    dec c                                         ; $5162: $0d
    inc hl                                        ; $5163: $23
    db $f4                                        ; $5164: $f4
    inc de                                        ; $5165: $13
    or l                                          ; $5166: $b5
    ld d, e                                       ; $5167: $53
    and $11                                       ; $5168: $e6 $11
    ld d, $e5                                     ; $516a: $16 $e5
    jp c, $8ee1                                   ; $516c: $da $e1 $8e

    ld c, e                                       ; $516f: $4b
    inc l                                         ; $5170: $2c
    ld e, $bf                                     ; $5171: $1e $bf
    ld a, [de]                                    ; $5173: $1a
    db $ed                                        ; $5174: $ed
    rst $18                                       ; $5175: $df
    jr nz, jr_057_517a                            ; $5176: $20 $02

    add b                                         ; $5178: $80
    rst $38                                       ; $5179: $ff

jr_057_517a:
    ld l, b                                       ; $517a: $68
    xor d                                         ; $517b: $aa
    ld d, $33                                     ; $517c: $16 $33
    add $5e                                       ; $517e: $c6 $5e
    ld b, d                                       ; $5180: $42
    push de                                       ; $5181: $d5
    add hl, de                                    ; $5182: $19
    pop de                                        ; $5183: $d1
    ld sp, $0fde                                  ; $5184: $31 $de $0f
    dec e                                         ; $5187: $1d
    dec bc                                        ; $5188: $0b
    ld e, h                                       ; $5189: $5c
    rra                                           ; $518a: $1f
    add a                                         ; $518b: $87
    dec h                                         ; $518c: $25
    ld d, [hl]                                    ; $518d: $56
    jp z, $9235                                   ; $518e: $ca $35 $92

    jp c, $29e3                                   ; $5191: $da $e3 $29

    rst $28                                       ; $5194: $ef
    adc c                                         ; $5195: $89
    ld a, [hl+]                                   ; $5196: $2a
    rst $08                                       ; $5197: $cf
    dec [hl]                                      ; $5198: $35
    push hl                                       ; $5199: $e5
    jp c, Jump_000_0c6b                           ; $519a: $da $6b $0c

    ld de, $e6dd                                  ; $519d: $11 $dd $e6
    dec h                                         ; $51a0: $25
    xor a                                         ; $51a1: $af
    sub $79                                       ; $51a2: $d6 $79
    ret c                                         ; $51a4: $d8

    or d                                          ; $51a5: $b2
    ld [hl], h                                    ; $51a6: $74
    cp l                                          ; $51a7: $bd
    push af                                       ; $51a8: $f5
    sub $84                                       ; $51a9: $d6 $84
    ld a, [$f46a]                                 ; $51ab: $fa $6a $f4
    inc de                                        ; $51ae: $13
    sbc [hl]                                      ; $51af: $9e
    ld [hl], d                                    ; $51b0: $72
    ret c                                         ; $51b1: $d8

    ld e, a                                       ; $51b2: $5f
    ld c, d                                       ; $51b3: $4a
    call z, $02c1                                 ; $51b4: $cc $c1 $02
    ld [hl], a                                    ; $51b7: $77
    rrca                                          ; $51b8: $0f
    dec [hl]                                      ; $51b9: $35
    rst $10                                       ; $51ba: $d7
    sub h                                         ; $51bb: $94
    ld a, c                                       ; $51bc: $79
    sub d                                         ; $51bd: $92
    db $e3                                        ; $51be: $e3
    jp nc, $3c3e                                  ; $51bf: $d2 $3e $3c

    and l                                         ; $51c2: $a5
    cpl                                           ; $51c3: $2f
    ld d, b                                       ; $51c4: $50
    or l                                          ; $51c5: $b5
    ld [hl-], a                                   ; $51c6: $32
    di                                            ; $51c7: $f3
    ld hl, sp-$49                                 ; $51c8: $f8 $b7
    push af                                       ; $51ca: $f5
    xor [hl]                                      ; $51cb: $ae
    ld c, a                                       ; $51cc: $4f
    db $d3                                        ; $51cd: $d3

jr_057_51ce:
    ld e, a                                       ; $51ce: $5f
    ld [bc], a                                    ; $51cf: $02
    ld b, h                                       ; $51d0: $44
    ld [hl], a                                    ; $51d1: $77
    cp a                                          ; $51d2: $bf
    ld a, [hl-]                                   ; $51d3: $3a
    sbc l                                         ; $51d4: $9d
    db $fd                                        ; $51d5: $fd
    dec e                                         ; $51d6: $1d
    ld c, e                                       ; $51d7: $4b
    ret nc                                        ; $51d8: $d0

    xor $be                                       ; $51d9: $ee $be
    call z, $82ec                                 ; $51db: $cc $ec $82
    ld [$fadd], sp                                ; $51de: $08 $dd $fa
    ld e, h                                       ; $51e1: $5c
    and e                                         ; $51e2: $a3
    ld e, l                                       ; $51e3: $5d
    ld [$6187], a                                 ; $51e4: $ea $87 $61
    xor e                                         ; $51e7: $ab
    cp l                                          ; $51e8: $bd
    ld a, [hl+]                                   ; $51e9: $2a
    rra                                           ; $51ea: $1f
    or [hl]                                       ; $51eb: $b6
    ld l, b                                       ; $51ec: $68
    rst $10                                       ; $51ed: $d7
    di                                            ; $51ee: $f3
    xor d                                         ; $51ef: $aa
    inc [hl]                                      ; $51f0: $34
    ld [hl], b                                    ; $51f1: $70
    cp l                                          ; $51f2: $bd
    xor c                                         ; $51f3: $a9
    sub l                                         ; $51f4: $95
    sbc c                                         ; $51f5: $99
    sub a                                         ; $51f6: $97
    ld c, c                                       ; $51f7: $49
    ld [hl], d                                    ; $51f8: $72
    ld a, a                                       ; $51f9: $7f
    cp l                                          ; $51fa: $bd
    db $eb                                        ; $51fb: $eb
    db $d3                                        ; $51fc: $d3
    db $f4                                        ; $51fd: $f4
    sub a                                         ; $51fe: $97
    nop                                           ; $51ff: $00
    ld de, $ebbd                                  ; $5200: $11 $bd $eb
    rra                                           ; $5203: $1f
    ld [hl], e                                    ; $5204: $73
    ld l, c                                       ; $5205: $69
    call nz, $0110                                ; $5206: $c4 $10 $01
    dec a                                         ; $5209: $3d
    xor a                                         ; $520a: $af
    ld c, d                                       ; $520b: $4a
    sub e                                         ; $520c: $93
    ld a, d                                       ; $520d: $7a
    dec a                                         ; $520e: $3d
    ret                                           ; $520f: $c9


    dec de                                        ; $5210: $1b
    pop af                                        ; $5211: $f1
    ld l, d                                       ; $5212: $6a
    daa                                           ; $5213: $27
    halt                                          ; $5214: $76
    xor h                                         ; $5215: $ac
    ld d, h                                       ; $5216: $54
    cpl                                           ; $5217: $2f
    inc b                                         ; $5218: $04
    add b                                         ; $5219: $80
    ld [hl], e                                    ; $521a: $73
    ld d, e                                       ; $521b: $53
    add $b9                                       ; $521c: $c6 $b9
    ld a, b                                       ; $521e: $78
    xor [hl]                                      ; $521f: $ae
    jp hl                                         ; $5220: $e9


    db $ec                                        ; $5221: $ec
    db $fd                                        ; $5222: $fd
    and l                                         ; $5223: $a5
    call nz, Call_000_2c1c                        ; $5224: $c4 $1c $2c
    bit 4, c                                      ; $5227: $cb $61
    adc c                                         ; $5229: $89
    add l                                         ; $522a: $85
    ld e, l                                       ; $522b: $5d
    inc hl                                        ; $522c: $23
    xor c                                         ; $522d: $a9
    ld d, c                                       ; $522e: $51
    and e                                         ; $522f: $a3
    xor c                                         ; $5230: $a9
    pop af                                        ; $5231: $f1
    adc e                                         ; $5232: $8b
    ei                                            ; $5233: $fb
    db $eb                                        ; $5234: $eb
    or $92                                        ; $5235: $f6 $92
    ld a, a                                       ; $5237: $7f
    ld a, h                                       ; $5238: $7c
    halt                                          ; $5239: $76
    ret c                                         ; $523a: $d8

    ld e, a                                       ; $523b: $5f
    ldh [$ee], a                                  ; $523c: $e0 $ee
    dec c                                         ; $523e: $0d
    db $eb                                        ; $523f: $eb
    jr c, jr_057_51ce                             ; $5240: $38 $8c

    dec hl                                        ; $5242: $2b
    rst $10                                       ; $5243: $d7
    ld d, d                                       ; $5244: $52
    sbc d                                         ; $5245: $9a
    ld e, [hl]                                    ; $5246: $5e
    inc hl                                        ; $5247: $23
    ld e, [hl]                                    ; $5248: $5e
    db $ed                                        ; $5249: $ed
    call nz, $e632                                ; $524a: $c4 $32 $e6
    db $dd                                        ; $524d: $dd
    ld e, c                                       ; $524e: $59
    sub [hl]                                      ; $524f: $96
    ret nc                                        ; $5250: $d0

    inc a                                         ; $5251: $3c
    cp $6d                                        ; $5252: $fe $6d
    call nc, $8e88                                ; $5254: $d4 $88 $8e
    dec de                                        ; $5257: $1b
    jp hl                                         ; $5258: $e9


    dec e                                         ; $5259: $1d
    rlca                                          ; $525a: $07
    adc b                                         ; $525b: $88
    nop                                           ; $525c: $00
    ld [hl], a                                    ; $525d: $77
    call nz, $9de8                                ; $525e: $c4 $e8 $9d
    ccf                                           ; $5261: $3f
    ld a, c                                       ; $5262: $79
    adc c                                         ; $5263: $89
    sbc b                                         ; $5264: $98
    ld b, a                                       ; $5265: $47
    inc a                                         ; $5266: $3c
    add hl, sp                                    ; $5267: $39
    xor c                                         ; $5268: $a9
    ld de, $5a77                                  ; $5269: $11 $77 $5a
    ld hl, sp-$17                                 ; $526c: $f8 $e9
    ld h, l                                       ; $526e: $65
    reti                                          ; $526f: $d9


    db $ed                                        ; $5270: $ed
    dec l                                         ; $5271: $2d
    sub a                                         ; $5272: $97
    push hl                                       ; $5273: $e5
    xor h                                         ; $5274: $ac
    xor h                                         ; $5275: $ac
    sub h                                         ; $5276: $94
    ld a, c                                       ; $5277: $79
    ret c                                         ; $5278: $d8

    ld b, c                                       ; $5279: $41
    dec sp                                        ; $527a: $3b
    ld l, h                                       ; $527b: $6c
    sbc c                                         ; $527c: $99
    ld a, [c]                                     ; $527d: $f2
    sbc [hl]                                      ; $527e: $9e
    xor b                                         ; $527f: $a8
    ld a, [c]                                     ; $5280: $f2
    and d                                         ; $5281: $a2
    add l                                         ; $5282: $85
    sbc a                                         ; $5283: $9f
    ld e, [hl]                                    ; $5284: $5e
    ld d, $8f                                     ; $5285: $16 $8f
    dec hl                                        ; $5287: $2b
    rst $10                                       ; $5288: $d7
    ld e, $0f                                     ; $5289: $1e $0f
    ld [hl], b                                    ; $528b: $70
    ld l, [hl]                                    ; $528c: $6e
    jp z, $1738                                   ; $528d: $ca $38 $17

    cpl                                           ; $5290: $2f
    ld sp, hl                                     ; $5291: $f9
    ld l, l                                       ; $5292: $6d
    xor d                                         ; $5293: $aa
    ld c, h                                       ; $5294: $4c
    ld a, d                                       ; $5295: $7a
    ret c                                         ; $5296: $d8

    ld bc, $dbae                                  ; $5297: $01 $ae $db
    cp h                                          ; $529a: $bc
    db $e4                                        ; $529b: $e4
    push de                                       ; $529c: $d5
    ld l, c                                       ; $529d: $69
    xor [hl]                                      ; $529e: $ae
    dec e                                         ; $529f: $1d
    xor $b8                                       ; $52a0: $ee $b8
    call nz, $8862                                ; $52a2: $c4 $62 $88
    nop                                           ; $52a5: $00
    dec a                                         ; $52a6: $3d
    ld c, a                                       ; $52a7: $4f
    and [hl]                                      ; $52a8: $a6
    jp z, Jump_057_6ba4                           ; $52a9: $ca $a4 $6b

    ld sp, hl                                     ; $52ac: $f9
    sbc h                                         ; $52ad: $9c
    cp l                                          ; $52ae: $bd
    sub $3c                                       ; $52af: $d6 $3c
    ld [hl+], a                                   ; $52b1: $22
    ld sp, hl                                     ; $52b2: $f9
    ld h, a                                       ; $52b3: $67
    ld c, d                                       ; $52b4: $4a
    rra                                           ; $52b5: $1f
    sbc l                                         ; $52b6: $9d
    adc e                                         ; $52b7: $8b
    adc a                                         ; $52b8: $8f
    sbc c                                         ; $52b9: $99
    ld e, l                                       ; $52ba: $5d
    and e                                         ; $52bb: $a3
    halt                                          ; $52bc: $76
    cp $e4                                        ; $52bd: $fe $e4
    dec h                                         ; $52bf: $25
    ld h, d                                       ; $52c0: $62
    ld e, $f1                                     ; $52c1: $1e $f1
    db $e4                                        ; $52c3: $e4
    and h                                         ; $52c4: $a4
    ld b, [hl]                                    ; $52c5: $46
    dec a                                         ; $52c6: $3d
    xor a                                         ; $52c7: $af
    ld c, d                                       ; $52c8: $4a
    and e                                         ; $52c9: $a3
    ld e, l                                       ; $52ca: $5d
    rst $00                                       ; $52cb: $c7
    ld h, c                                       ; $52cc: $61
    call nz, $11ab                                ; $52cd: $c4 $ab $11
    ld e, l                                       ; $52d0: $5d
    push bc                                       ; $52d1: $c5
    ld a, e                                       ; $52d2: $7b
    inc a                                         ; $52d3: $3c
    ret nz                                        ; $52d4: $c0

    cp c                                          ; $52d5: $b9
    add hl, hl                                    ; $52d6: $29
    db $e3                                        ; $52d7: $e3
    ld e, h                                       ; $52d8: $5c
    inc a                                         ; $52d9: $3c
    rst $10                                       ; $52da: $d7
    jp z, $8d4a                                   ; $52db: $ca $4a $8d

    adc $b5                                       ; $52de: $ce $b5
    ld e, $1d                                     ; $52e0: $1e $1d
    scf                                           ; $52e2: $37
    rra                                           ; $52e3: $1f
    pop de                                        ; $52e4: $d1
    xor e                                         ; $52e5: $ab
    ldh [rHDMA2], a                               ; $52e6: $e0 $52
    xor b                                         ; $52e8: $a8
    dec [hl]                                      ; $52e9: $35
    ld c, e                                       ; $52ea: $4b
    ldh a, [$92]                                  ; $52eb: $f0 $92
    ccf                                           ; $52ed: $3f
    ld [c], a                                     ; $52ee: $e2
    push de                                       ; $52ef: $d5
    adc b                                         ; $52f0: $88
    add a                                         ; $52f1: $87
    ld b, a                                       ; $52f2: $47
    cp b                                          ; $52f3: $b8
    or h                                          ; $52f4: $b4
    ld [hl], e                                    ; $52f5: $73
    ld c, l                                       ; $52f6: $4d
    jp hl                                         ; $52f7: $e9


    db $e3                                        ; $52f8: $e3
    jp nc, $0084                                  ; $52f9: $d2 $84 $00

    ld [hl], a                                    ; $52fc: $77
    or a                                          ; $52fd: $b7
    ld h, l                                       ; $52fe: $65

jr_057_52ff:
    ld b, d                                       ; $52ff: $42
    dec c                                         ; $5300: $0d
    ld d, e                                       ; $5301: $53
    ld c, e                                       ; $5302: $4b
    cp $68                                        ; $5303: $fe $68
    ld l, d                                       ; $5305: $6a
    ld sp, hl                                     ; $5306: $f9
    sbc h                                         ; $5307: $9c
    or l                                          ; $5308: $b5
    rst $08                                       ; $5309: $cf
    cp h                                          ; $530a: $bc
    db $d3                                        ; $530b: $d3
    sub l                                         ; $530c: $95
    ld [$8044], sp                                ; $530d: $08 $44 $80
    adc [hl]                                      ; $5310: $8e
    ld b, [hl]                                    ; $5311: $46
    jp c, $840f                                   ; $5312: $da $0f $84

    ld sp, hl                                     ; $5315: $f9
    call nz, $9247                                ; $5316: $c4 $47 $92
    sub [hl]                                      ; $5319: $96
    pop hl                                        ; $531a: $e1
    cpl                                           ; $531b: $2f
    db $10                                        ; $531c: $10
    ld b, d                                       ; $531d: $42
    jp nz, $d735                                  ; $531e: $c2 $35 $d7

    sub h                                         ; $5321: $94
    ld h, l                                       ; $5322: $65
    ccf                                           ; $5323: $3f
    ld [hl], h                                    ; $5324: $74
    inc l                                         ; $5325: $2c
    xor c                                         ; $5326: $a9
    ld [hl], a                                    ; $5327: $77
    ld l, a                                       ; $5328: $6f
    sbc b                                         ; $5329: $98
    ld [hl-], a                                   ; $532a: $32
    xor a                                         ; $532b: $af
    db $fd                                        ; $532c: $fd
    db $10                                        ; $532d: $10
    ld e, h                                       ; $532e: $5c
    ld c, e                                       ; $532f: $4b
    xor h                                         ; $5330: $ac
    ld h, [hl]                                    ; $5331: $66
    ld e, c                                       ; $5332: $59
    ld a, e                                       ; $5333: $7b
    inc h                                         ; $5334: $24
    add hl, bc                                    ; $5335: $09
    ld de, $e7b7                                  ; $5336: $11 $b7 $e7
    jp c, $cd6b                                   ; $5339: $da $6b $cd

    db $e3                                        ; $533c: $e3
    rst $18                                       ; $533d: $df
    ld l, b                                       ; $533e: $68
    or a                                          ; $533f: $b7
    and $3a                                       ; $5340: $e6 $3a
    dec sp                                        ; $5342: $3b
    ld d, c                                       ; $5343: $51
    db $d3                                        ; $5344: $d3
    inc d                                         ; $5345: $14
    ld b, h                                       ; $5346: $44

Jump_057_5347:
    or a                                          ; $5347: $b7
    ld a, a                                       ; $5348: $7f
    sub c                                         ; $5349: $91
    push af                                       ; $534a: $f5
    sub $84                                       ; $534b: $d6 $84
    ld a, [$7f6a]                                 ; $534d: $fa $6a $7f
    or a                                          ; $5350: $b7
    or a                                          ; $5351: $b7
    ld e, a                                       ; $5352: $5f
    ld hl, $5f33                                  ; $5353: $21 $33 $5f

Jump_057_5356:
    jp nc, $3a72                                  ; $5356: $d2 $72 $3a

    xor l                                         ; $5359: $ad
    or c                                          ; $535a: $b1
    ld b, b                                       ; $535b: $40
    inc b                                         ; $535c: $04
    ld [hl], a                                    ; $535d: $77
    halt                                          ; $535e: $76
    cp d                                          ; $535f: $ba
    ret z                                         ; $5360: $c8

    jp hl                                         ; $5361: $e9


    ld a, h                                       ; $5362: $7c
    ld e, b                                       ; $5363: $58
    ld d, e                                       ; $5364: $53
    db $10                                        ; $5365: $10
    ld bc, $6677                                  ; $5366: $01 $77 $66
    inc a                                         ; $5369: $3c
    push hl                                       ; $536a: $e5
    jr nc, jr_057_52ff                            ; $536b: $30 $92

    ld a, [de]                                    ; $536d: $1a
    rst $20                                       ; $536e: $e7
    ld h, b                                       ; $536f: $60
    add [hl]                                      ; $5370: $86
    ld [$7fb7], sp                                ; $5371: $08 $b7 $7f
    sub c                                         ; $5374: $91
    ld bc, $22c8                                  ; $5375: $01 $c8 $22
    sbc d                                         ; $5378: $9a
    sub c                                         ; $5379: $91
    call nc, Call_000_0738                        ; $537a: $d4 $38 $07
    inc sp                                        ; $537d: $33
    ld b, h                                       ; $537e: $44
    ld [hl], a                                    ; $537f: $77
    ld h, [hl]                                    ; $5380: $66
    inc a                                         ; $5381: $3c
    push hl                                       ; $5382: $e5
    or b                                          ; $5383: $b0
    sbc h                                         ; $5384: $9c
    cp b                                          ; $5385: $b8
    or $45                                        ; $5386: $f6 $45
    ld c, [hl]                                    ; $5388: $4e
    and a                                         ; $5389: $a7
    res 0, d                                      ; $538a: $cb $82
    nop                                           ; $538c: $00
    ld [hl], a                                    ; $538d: $77
    ld h, [hl]                                    ; $538e: $66
    inc a                                         ; $538f: $3c
    push hl                                       ; $5390: $e5

jr_057_5391:
    jr nc, jr_057_5391                            ; $5391: $30 $fe

    ld l, l                                       ; $5393: $6d
    cp l                                          ; $5394: $bd
    ld e, a                                       ; $5395: $5f
    db $e3                                        ; $5396: $e3
    inc h                                         ; $5397: $24
    rla                                           ; $5398: $17
    ld b, e                                       ; $5399: $43
    inc b                                         ; $539a: $04
    or a                                          ; $539b: $b7
    or h                                          ; $539c: $b4
    ccf                                           ; $539d: $3f
    ret nz                                        ; $539e: $c0

    xor a                                         ; $539f: $af
    dec b                                         ; $53a0: $05
    add [hl]                                      ; $53a1: $86
    ld [$7fb7], sp                                ; $53a2: $08 $b7 $7f
    sub c                                         ; $53a5: $91
    sbc l                                         ; $53a6: $9d
    sbc h                                         ; $53a7: $9c
    ld hl, sp-$44                                 ; $53a8: $f8 $bc
    ld h, [hl]                                    ; $53aa: $66
    sbc c                                         ; $53ab: $99
    ld a, [$1102]                                 ; $53ac: $fa $02 $11
    ld [hl], a                                    ; $53af: $77
    ld h, [hl]                                    ; $53b0: $66
    inc a                                         ; $53b1: $3c
    push hl                                       ; $53b2: $e5

jr_057_53b3:
    jr nc, jr_057_53b3                            ; $53b3: $30 $fe

    ld l, l                                       ; $53b5: $6d
    or a                                          ; $53b6: $b7
    or l                                          ; $53b7: $b5
    rra                                           ; $53b8: $1f
    rst $08                                       ; $53b9: $cf
    cpl                                           ; $53ba: $2f
    cp $d8                                        ; $53bb: $fe $d8
    ld [bc], a                                    ; $53bd: $02
    ld de, $7fb7                                  ; $53be: $11 $b7 $7f
    sub c                                         ; $53c1: $91
    ld a, l                                       ; $53c2: $7d
    add hl, bc                                    ; $53c3: $09
    ld h, l                                       ; $53c4: $65
    push af                                       ; $53c5: $f5
    dec l                                         ; $53c6: $2d
    rst $00                                       ; $53c7: $c7
    dec [hl]                                      ; $53c8: $35
    ld a, [hl-]                                   ; $53c9: $3a
    rst $10                                       ; $53ca: $d7
    ld d, d                                       ; $53cb: $52
    sbc d                                         ; $53cc: $9a
    ld e, [hl]                                    ; $53cd: $5e
    db $10                                        ; $53ce: $10
    ld bc, $b743                                  ; $53cf: $01 $43 $b7
    ccf                                           ; $53d2: $3f
    add hl, bc                                    ; $53d3: $09
    ld d, e                                       ; $53d4: $53
    sub [hl]                                      ; $53d5: $96
    pop de                                        ; $53d6: $d1
    ccf                                           ; $53d7: $3f
    scf                                           ; $53d8: $37
    inc sp                                        ; $53d9: $33
    ld a, e                                       ; $53da: $7b
    pop af                                        ; $53db: $f1
    ret                                           ; $53dc: $c9


    rla                                           ; $53dd: $17
    dec bc                                        ; $53de: $0b
    ld b, h                                       ; $53df: $44
    or a                                          ; $53e0: $b7
    ld a, a                                       ; $53e1: $7f
    sub c                                         ; $53e2: $91
    ld e, l                                       ; $53e3: $5d
    inc sp                                        ; $53e4: $33
    cp l                                          ; $53e5: $bd
    ret c                                         ; $53e6: $d8

    dec [hl]                                      ; $53e7: $35
    cp $6d                                        ; $53e8: $fe $6d
    add b                                         ; $53ea: $80
    adc d                                         ; $53eb: $8a
    ld [hl], e                                    ; $53ec: $73
    set 4, c                                      ; $53ed: $cb $e1
    ld e, e                                       ; $53ef: $5b
    jr nz, jr_057_53f4                            ; $53f0: $20 $02

    or a                                          ; $53f2: $b7
    ld a, a                                       ; $53f3: $7f

jr_057_53f4:
    sub c                                         ; $53f4: $91
    ld e, l                                       ; $53f5: $5d
    inc sp                                        ; $53f6: $33
    cp l                                          ; $53f7: $bd
    ret c                                         ; $53f8: $d8

    dec [hl]                                      ; $53f9: $35
    cp $6d                                        ; $53fa: $fe $6d
    add b                                         ; $53fc: $80
    adc d                                         ; $53fd: $8a
    ld [hl], e                                    ; $53fe: $73
    set 4, c                                      ; $53ff: $cb $e1
    ld e, e                                       ; $5401: $5b
    jr nz, jr_057_5406                            ; $5402: $20 $02

    ld b, e                                       ; $5404: $43
    ld b, e                                       ; $5405: $43

jr_057_5406:
    or a                                          ; $5406: $b7
    ld a, a                                       ; $5407: $7f
    sub c                                         ; $5408: $91
    and l                                         ; $5409: $a5
    inc h                                         ; $540a: $24
    xor a                                         ; $540b: $af
    ret c                                         ; $540c: $d8

    ld d, c                                       ; $540d: $51
    sub a                                         ; $540e: $97
    jp $b1fc                                      ; $540f: $c3 $fc $b1


    dec b                                         ; $5412: $05
    ld [hl+], a                                   ; $5413: $22
    rst $30                                       ; $5414: $f7
    sub d                                         ; $5415: $92
    inc h                                         ; $5416: $24
    pop hl                                        ; $5417: $e1
    ld h, h                                       ; $5418: $64
    ld [hl], h                                    ; $5419: $74
    xor [hl]                                      ; $541a: $ae
    db $f4                                        ; $541b: $f4
    inc de                                        ; $541c: $13
    ld [hl], c                                    ; $541d: $71
    dec sp                                        ; $541e: $3b
    sub [hl]                                      ; $541f: $96
    push hl                                       ; $5420: $e5
    call nz, $e535                                ; $5421: $c4 $35 $e5
    nop                                           ; $5424: $00
    ld de, $3d43                                  ; $5425: $11 $43 $3d
    ld d, $de                                     ; $5428: $16 $de
    db $ed                                        ; $542a: $ed
    cp c                                          ; $542b: $b9
    ld b, d                                       ; $542c: $42
    inc sp                                        ; $542d: $33
    or $b7                                        ; $542e: $f6 $b7
    ld b, b                                       ; $5430: $40
    inc b                                         ; $5431: $04
    ld b, e                                       ; $5432: $43
    ld b, e                                       ; $5433: $43
    nop                                           ; $5434: $00
    ld a, a                                       ; $5435: $7f
    ld c, e                                       ; $5436: $4b
    cp a                                          ; $5437: $bf
    add sp, -$0f                                  ; $5438: $e8 $f1
    ld l, a                                       ; $543a: $6f
    db $eb                                        ; $543b: $eb
    ld sp, hl                                     ; $543c: $f9
    add a                                         ; $543d: $87
    ld [hl], e                                    ; $543e: $73
    ld a, l                                       ; $543f: $7d
    di                                            ; $5440: $f3
    rst $00                                       ; $5441: $c7
    ld d, $88                                     ; $5442: $16 $88
    nop                                           ; $5444: $00
    or a                                          ; $5445: $b7
    ld a, a                                       ; $5446: $7f
    sub c                                         ; $5447: $91
    db $dd                                        ; $5448: $dd
    ld sp, hl                                     ; $5449: $f9
    dec hl                                        ; $544a: $2b
    ld a, [$9892]                                 ; $544b: $fa $92 $98
    adc e                                         ; $544e: $8b
    call $0110                                    ; $544f: $cd $10 $01
    or a                                          ; $5452: $b7
    ld a, a                                       ; $5453: $7f
    sub c                                         ; $5454: $91
    db $dd                                        ; $5455: $dd
    ld sp, hl                                     ; $5456: $f9
    dec hl                                        ; $5457: $2b
    ld a, [$9892]                                 ; $5458: $fa $92 $98
    adc e                                         ; $545b: $8b
    call $0110                                    ; $545c: $cd $10 $01
    ld b, e                                       ; $545f: $43
    ld b, e                                       ; $5460: $43
    ld b, e                                       ; $5461: $43
    nop                                           ; $5462: $00
    ld a, a                                       ; $5463: $7f
    ld c, e                                       ; $5464: $4b
    cp a                                          ; $5465: $bf
    add sp, -$0f                                  ; $5466: $e8 $f1
    ld l, a                                       ; $5468: $6f
    db $eb                                        ; $5469: $eb
    ld sp, hl                                     ; $546a: $f9
    add a                                         ; $546b: $87
    ld [hl], e                                    ; $546c: $73
    ld a, l                                       ; $546d: $7d
    di                                            ; $546e: $f3
    rst $00                                       ; $546f: $c7
    ld d, $88                                     ; $5470: $16 $88
    nop                                           ; $5472: $00
    ld b, e                                       ; $5473: $43
    ld b, e                                       ; $5474: $43
    ld b, e                                       ; $5475: $43
    ld b, e                                       ; $5476: $43
    ld b, e                                       ; $5477: $43
    ld b, e                                       ; $5478: $43
    ld b, e                                       ; $5479: $43
    ld b, e                                       ; $547a: $43
    ld [hl], a                                    ; $547b: $77
    ld [hl], a                                    ; $547c: $77
    pop af                                        ; $547d: $f1
    cp d                                          ; $547e: $ba
    db $eb                                        ; $547f: $eb
    add c                                         ; $5480: $81
    adc $10                                       ; $5481: $ce $10
    ld bc, $a9bd                                  ; $5483: $01 $bd $a9
    pop af                                        ; $5486: $f1
    ld l, a                                       ; $5487: $6f
    inc bc                                        ; $5488: $03
    ld e, b                                       ; $5489: $58
    sbc c                                         ; $548a: $99
    xor $bb                                       ; $548b: $ee $bb
    ld [hl-], a                                   ; $548d: $32
    add $66                                       ; $548e: $c6 $66
    adc b                                         ; $5490: $88
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    ld a, a                                       ; $5493: $7f
    ld c, e                                       ; $5494: $4b
    cp a                                          ; $5495: $bf
    add sp, -$0f                                  ; $5496: $e8 $f1
    ld l, a                                       ; $5498: $6f
    db $eb                                        ; $5499: $eb
    ld e, l                                       ; $549a: $5d
    sbc a                                         ; $549b: $9f
    and [hl]                                      ; $549c: $a6
    cp a                                          ; $549d: $bf
    inc b                                         ; $549e: $04
    adc b                                         ; $549f: $88
    nop                                           ; $54a0: $00
    ld b, e                                       ; $54a1: $43
    ld b, e                                       ; $54a2: $43
    ld b, e                                       ; $54a3: $43
    ld b, e                                       ; $54a4: $43
    ld b, e                                       ; $54a5: $43
    ld b, e                                       ; $54a6: $43
    ld b, e                                       ; $54a7: $43
    ld b, e                                       ; $54a8: $43
    ld b, e                                       ; $54a9: $43
    ld b, e                                       ; $54aa: $43
    add hl, hl                                    ; $54ab: $29
    ld d, h                                       ; $54ac: $54
    xor l                                         ; $54ad: $ad
    rst $00                                       ; $54ae: $c7
    add l                                         ; $54af: $85
    cp a                                          ; $54b0: $bf
    ld hl, sp-$74                                 ; $54b1: $f8 $8c
    xor $6a                                       ; $54b3: $ee $6a
    ld l, [hl]                                    ; $54b5: $6e
    rst $00                                       ; $54b6: $c7
    dec b                                         ; $54b7: $05
    ld de, $ac00                                  ; $54b8: $11 $00 $ac
    call nc, Call_057_5c7a                        ; $54bb: $d4 $7a $5c
    ld hl, sp-$75                                 ; $54be: $f8 $8b
    ld b, a                                       ; $54c0: $47
    rst $10                                       ; $54c1: $d7
    dec de                                        ; $54c2: $1b
    ld d, a                                       ; $54c3: $57
    ld l, [hl]                                    ; $54c4: $6e
    call Call_000_110c                            ; $54c5: $cd $0c $11
    cp l                                          ; $54c8: $bd
    xor c                                         ; $54c9: $a9
    pop af                                        ; $54ca: $f1
    ld l, a                                       ; $54cb: $6f
    db $eb                                        ; $54cc: $eb
    xor l                                         ; $54cd: $ad
    add hl, bc                                    ; $54ce: $09
    push af                                       ; $54cf: $f5
    push de                                       ; $54d0: $d5
    add hl, de                                    ; $54d1: $19
    and c                                         ; $54d2: $a1
    ld h, c                                       ; $54d3: $61
    ld [hl], $44                                  ; $54d4: $36 $44
    cp l                                          ; $54d6: $bd
    xor c                                         ; $54d7: $a9
    pop af                                        ; $54d8: $f1
    ld l, a                                       ; $54d9: $6f
    db $eb                                        ; $54da: $eb
    ld e, l                                       ; $54db: $5d
    sbc a                                         ; $54dc: $9f
    and [hl]                                      ; $54dd: $a6
    cp a                                          ; $54de: $bf
    inc b                                         ; $54df: $04
    adc b                                         ; $54e0: $88
    nop                                           ; $54e1: $00
    or a                                          ; $54e2: $b7
    ld d, e                                       ; $54e3: $53
    db $eb                                        ; $54e4: $eb
    add sp, -$33                                  ; $54e5: $e8 $cd
    db $e4                                        ; $54e7: $e4
    adc e                                         ; $54e8: $8b
    pop de                                        ; $54e9: $d1
    db $10                                        ; $54ea: $10
    ld bc, $9880                                  ; $54eb: $01 $80 $98
    adc $75                                       ; $54ee: $ce $75
    ld [c], a                                     ; $54f0: $e2
    or b                                          ; $54f1: $b0
    push hl                                       ; $54f2: $e5
    ld c, h                                       ; $54f3: $4c
    ccf                                           ; $54f4: $3f
    ld a, [de]                                    ; $54f5: $1a
    ld l, c                                       ; $54f6: $69
    ccf                                           ; $54f7: $3f
    ld b, b                                       ; $54f8: $40
    inc b                                         ; $54f9: $04
    ld b, e                                       ; $54fa: $43
    add b                                         ; $54fb: $80
    ld b, h                                       ; $54fc: $44
    ld c, [hl]                                    ; $54fd: $4e
    ei                                            ; $54fe: $fb
    inc h                                         ; $54ff: $24
    add hl, sp                                    ; $5500: $39
    cp d                                          ; $5501: $ba

Jump_057_5502:
    sbc $d2                                       ; $5502: $de $d2
    ccf                                           ; $5504: $3f
    db $dd                                        ; $5505: $dd
    ld a, [hl]                                    ; $5506: $7e
    ld h, [hl]                                    ; $5507: $66
    ld b, a                                       ; $5508: $47
    inc sp                                        ; $5509: $33
    ld b, h                                       ; $550a: $44
    ld b, e                                       ; $550b: $43
    or a                                          ; $550c: $b7
    ld a, a                                       ; $550d: $7f
    sub c                                         ; $550e: $91
    dec e                                         ; $550f: $1d
    jp nc, $99bf                                  ; $5510: $d2 $bf $99

    ld [hl], a                                    ; $5513: $77
    ld [hl], a                                    ; $5514: $77
    ld d, a                                       ; $5515: $57
    add hl, hl                                    ; $5516: $29
    adc b                                         ; $5517: $88
    nop                                           ; $5518: $00
    ld b, e                                       ; $5519: $43
    rst $30                                       ; $551a: $f7
    sub d                                         ; $551b: $92
    and h                                         ; $551c: $a4
    ld a, d                                       ; $551d: $7a
    ld h, c                                       ; $551e: $61
    rst $30                                       ; $551f: $f7
    db $e4                                        ; $5520: $e4
    ld c, d                                       ; $5521: $4a
    cp e                                          ; $5522: $bb
    jr jr_057_5547                                ; $5523: $18 $22

    ld b, e                                       ; $5525: $43
    or a                                          ; $5526: $b7
    ld a, a                                       ; $5527: $7f
    sub c                                         ; $5528: $91
    ld b, l                                       ; $5529: $45
    ld c, l                                       ; $552a: $4d
    ld l, e                                       ; $552b: $6b
    ld e, a                                       ; $552c: $5f
    add d                                         ; $552d: $82
    ld l, e                                       ; $552e: $6b
    db $fc                                        ; $552f: $fc
    db $db                                        ; $5530: $db
    xor $c9                                       ; $5531: $ee $c9
    sub l                                         ; $5533: $95
    halt                                          ; $5534: $76
    ld sp, $b744                                  ; $5535: $31 $44 $b7
    ld a, a                                       ; $5538: $7f
    sub c                                         ; $5539: $91
    db $dd                                        ; $553a: $dd
    sub e                                         ; $553b: $93
    dec hl                                        ; $553c: $2b
    db $ed                                        ; $553d: $ed
    ld h, d                                       ; $553e: $62
    adc b                                         ; $553f: $88
    nop                                           ; $5540: $00
    or a                                          ; $5541: $b7
    ld [hl], a                                    ; $5542: $77
    push de                                       ; $5543: $d5
    xor $c9                                       ; $5544: $ee $c9
    sub l                                         ; $5546: $95

jr_057_5547:
    halt                                          ; $5547: $76
    pop af                                        ; $5548: $f1
    ld hl, sp-$49                                 ; $5549: $f8 $b7
    db $dd                                        ; $554b: $dd
    ld a, h                                       ; $554c: $7c
    cp b                                          ; $554d: $b8
    or d                                          ; $554e: $b2
    ld h, h                                       ; $554f: $64
    db $fc                                        ; $5550: $fc
    sbc c                                         ; $5551: $99
    ld a, [hl+]                                   ; $5552: $2a
    ld sp, $0443                                  ; $5553: $31 $43 $04
    or a                                          ; $5556: $b7
    or h                                          ; $5557: $b4
    ccf                                           ; $5558: $3f
    ld a, [$68c5]                                 ; $5559: $fa $c5 $68
    sbc $4b                                       ; $555c: $de $4b
    halt                                          ; $555e: $76
    rst $08                                       ; $555f: $cf
    dec sp                                        ; $5560: $3b
    ld de, $b722                                  ; $5561: $11 $22 $b7
    ld a, a                                       ; $5564: $7f
    sub c                                         ; $5565: $91
    sbc l                                         ; $5566: $9d
    ld hl, sp-$6c                                 ; $5567: $f8 $94
    sbc d                                         ; $5569: $9a
    add l                                         ; $556a: $85
    add sp, $74                                   ; $556b: $e8 $74
    sub l                                         ; $556d: $95
    ld a, h                                       ; $556e: $7c
    add hl, bc                                    ; $556f: $09
    db $10                                        ; $5570: $10
    ld bc, $4343                                  ; $5571: $01 $43 $43
    ld b, e                                       ; $5574: $43
    ld b, e                                       ; $5575: $43
    cp l                                          ; $5576: $bd
    xor c                                         ; $5577: $a9
    pop af                                        ; $5578: $f1
    ld l, a                                       ; $5579: $6f
    and e                                         ; $557a: $a3
    ld [hl], e                                    ; $557b: $73
    and l                                         ; $557c: $a5

jr_057_557d:
    ld [hl], l                                    ; $557d: $75
    push bc                                       ; $557e: $c5
    dec bc                                        ; $557f: $0b
    ld c, a                                       ; $5580: $4f
    ld [bc], a                                    ; $5581: $02
    ld b, h                                       ; $5582: $44
    ld [hl], a                                    ; $5583: $77
    ld h, [hl]                                    ; $5584: $66
    inc a                                         ; $5585: $3c
    cp d                                          ; $5586: $ba
    cp $e8                                        ; $5587: $fe $e8
    ld a, d                                       ; $5589: $7a
    ld d, e                                       ; $558a: $53
    dec e                                         ; $558b: $1d
    daa                                           ; $558c: $27
    ld l, [hl]                                    ; $558d: $6e
    ld b, a                                       ; $558e: $47
    ld e, [hl]                                    ; $558f: $5e
    ld e, c                                       ; $5590: $59
    jr nz, jr_057_5595                            ; $5591: $20 $02

    or a                                          ; $5593: $b7
    ld a, a                                       ; $5594: $7f

jr_057_5595:
    sub c                                         ; $5595: $91
    pop de                                        ; $5596: $d1
    ld c, l                                       ; $5597: $4d
    ld h, e                                       ; $5598: $63
    ld d, c                                       ; $5599: $51
    sbc [hl]                                      ; $559a: $9e
    ld [hl], h                                    ; $559b: $74
    push bc                                       ; $559c: $c5
    add sp, $06                                   ; $559d: $e8 $06
    ld de, $bf80                                  ; $559f: $11 $80 $bf
    ret z                                         ; $55a2: $c8

    ld [hl], d                                    ; $55a3: $72
    ld [c], a                                     ; $55a4: $e2
    jp c, $bce9                                   ; $55a5: $da $e9 $bc

    jr jr_057_557d                                ; $55a8: $18 $d3

    push af                                       ; $55aa: $f5

Call_057_55ab:
    ld h, e                                       ; $55ab: $63
    ld [hl], h                                    ; $55ac: $74
    ld b, c                                       ; $55ad: $41
    inc b                                         ; $55ae: $04
    ld [hl], a                                    ; $55af: $77
    ld [hl], l                                    ; $55b0: $75
    sbc l                                         ; $55b1: $9d
    cp c                                          ; $55b2: $b9
    db $fd                                        ; $55b3: $fd
    ld a, b                                       ; $55b4: $78
    ld a, [hl]                                    ; $55b5: $7e
    dec b                                         ; $55b6: $05
    adc d                                         ; $55b7: $8a
    dec l                                         ; $55b8: $2d
    db $10                                        ; $55b9: $10
    ld bc, $7577                                  ; $55ba: $01 $77 $75
    sbc l                                         ; $55bd: $9d
    cp c                                          ; $55be: $b9
    db $fd                                        ; $55bf: $fd
    ld a, b                                       ; $55c0: $78
    ld a, [hl]                                    ; $55c1: $7e
    dec b                                         ; $55c2: $05
    adc d                                         ; $55c3: $8a
    dec l                                         ; $55c4: $2d
    db $10                                        ; $55c5: $10
    ld bc, $7fb7                                  ; $55c6: $01 $b7 $7f
    sub c                                         ; $55c9: $91
    ld [hl], l                                    ; $55ca: $75
    ld a, e                                       ; $55cb: $7b
    ret                                           ; $55cc: $c9


    ccf                                           ; $55cd: $3f
    ld a, $3b                                     ; $55ce: $3e $3b
    db $ec                                        ; $55d0: $ec
    cpl                                           ; $55d1: $2f
    db $10                                        ; $55d2: $10
    ld bc, $a9bd                                  ; $55d3: $01 $bd $a9
    pop af                                        ; $55d6: $f1
    ld l, a                                       ; $55d7: $6f
    ld c, e                                       ; $55d8: $4b
    pop hl                                        ; $55d9: $e1
    ld e, h                                       ; $55da: $5c
    rst $20                                       ; $55db: $e7
    dec [hl]                                      ; $55dc: $35
    dec bc                                        ; $55dd: $0b
    ld b, h                                       ; $55de: $44
    or a                                          ; $55df: $b7
    ld a, a                                       ; $55e0: $7f
    sub c                                         ; $55e1: $91
    push af                                       ; $55e2: $f5
    cp h                                          ; $55e3: $bc
    ld a, [hl+]                                   ; $55e4: $2a
    call Call_057_5c25                            ; $55e5: $cd $25 $5c
    cp c                                          ; $55e8: $b9
    dec [hl]                                      ; $55e9: $35
    db $fc                                        ; $55ea: $fc
    ld b, h                                       ; $55eb: $44
    ld c, [hl]                                    ; $55ec: $4e
    call z, $10c5                                 ; $55ed: $cc $c5 $10
    ld bc, $7fb7                                  ; $55f0: $01 $b7 $7f
    sub c                                         ; $55f3: $91
    push af                                       ; $55f4: $f5
    sub $84                                       ; $55f5: $d6 $84
    ld a, [$7f6a]                                 ; $55f7: $fa $6a $7f
    ld b, h                                       ; $55fa: $44
    ld [c], a                                     ; $55fb: $e2
    sub [hl]                                      ; $55fc: $96
    sbc b                                         ; $55fd: $98
    ld hl, $b702                                  ; $55fe: $21 $02 $b7
    ld a, a                                       ; $5601: $7f
    sub c                                         ; $5602: $91
    sub c                                         ; $5603: $91
    rst $28                                       ; $5604: $ef
    sbc h                                         ; $5605: $9c
    ld e, h                                       ; $5606: $5c
    ld l, d                                       ; $5607: $6a
    db $fc                                        ; $5608: $fc
    db $db                                        ; $5609: $db
    ld a, d                                       ; $560a: $7a
    rst $10                                       ; $560b: $d7
    and a                                         ; $560c: $a7
    jp hl                                         ; $560d: $e9


    cpl                                           ; $560e: $2f
    ld bc, $b722                                  ; $560f: $01 $22 $b7
    ld a, a                                       ; $5612: $7f
    sub c                                         ; $5613: $91
    adc c                                         ; $5614: $89
    rrca                                          ; $5615: $0f
    ld a, e                                       ; $5616: $7b
    db $fc                                        ; $5617: $fc
    or c                                          ; $5618: $b1
    ld hl, $0002                                  ; $5619: $21 $02 $00
    call z, $897a                                 ; $561c: $cc $7a $89
    ld l, e                                       ; $561f: $6b
    ld [hl], h                                    ; $5620: $74
    xor [hl]                                      ; $5621: $ae
    db $f4                                        ; $5622: $f4
    inc de                                        ; $5623: $13
    ld [hl], c                                    ; $5624: $71
    dec sp                                        ; $5625: $3b
    ld a, $e9                                     ; $5626: $3e $e9
    inc e                                         ; $5628: $1c
    ld hl, $4302                                  ; $5629: $21 $02 $43
    or a                                          ; $562c: $b7
    ld d, e                                       ; $562d: $53
    ld [hl], e                                    ; $562e: $73
    ei                                            ; $562f: $fb
    pop af                                        ; $5630: $f1
    db $fc                                        ; $5631: $fc
    jp z, Jump_057_7924                           ; $5632: $ca $24 $79

    ld h, d                                       ; $5635: $62
    ld a, l                                       ; $5636: $7d
    sbc d                                         ; $5637: $9a
    ld e, l                                       ; $5638: $5d
    ld a, e                                       ; $5639: $7b
    ret                                           ; $563a: $c9


    ld d, d                                       ; $563b: $52
    sbc d                                         ; $563c: $9a
    ld e, [hl]                                    ; $563d: $5e
    db $10                                        ; $563e: $10
    ld bc, $4480                                  ; $563f: $01 $80 $44
    ld c, [hl]                                    ; $5642: $4e
    ei                                            ; $5643: $fb
    inc h                                         ; $5644: $24
    add hl, sp                                    ; $5645: $39
    cp d                                          ; $5646: $ba
    sbc $00                                       ; $5647: $de $00
    ld d, [hl]                                    ; $5649: $56
    and [hl]                                      ; $564a: $a6
    ei                                            ; $564b: $fb
    xor [hl]                                      ; $564c: $ae
    adc h                                         ; $564d: $8c
    or c                                          ; $564e: $b1
    add hl, de                                    ; $564f: $19
    ld [hl+], a                                   ; $5650: $22
    or a                                          ; $5651: $b7
    ld a, a                                       ; $5652: $7f
    sub c                                         ; $5653: $91
    add l                                         ; $5654: $85
    adc [hl]                                      ; $5655: $8e
    ld sp, $7c8f                                  ; $5656: $31 $8f $7c
    ld sp, $221a                                  ; $5659: $31 $1a $22
    ld [hl], a                                    ; $565c: $77
    halt                                          ; $565d: $76
    cp d                                          ; $565e: $ba
    ret z                                         ; $565f: $c8

    ld [hl], c                                    ; $5660: $71
    ld l, c                                       ; $5661: $69
    ld e, d                                       ; $5662: $5a
    di                                            ; $5663: $f3
    pop hl                                        ; $5664: $e1
    sub a                                         ; $5665: $97
    ld b, b                                       ; $5666: $40
    inc b                                         ; $5667: $04
    nop                                           ; $5668: $00
    ld a, a                                       ; $5669: $7f
    ld c, e                                       ; $566a: $4b
    cp a                                          ; $566b: $bf
    add sp, -$0f                                  ; $566c: $e8 $f1
    ld l, a                                       ; $566e: $6f
    db $eb                                        ; $566f: $eb
    ld e, l                                       ; $5670: $5d
    sbc a                                         ; $5671: $9f
    and [hl]                                      ; $5672: $a6
    cp a                                          ; $5673: $bf
    inc b                                         ; $5674: $04
    adc b                                         ; $5675: $88
    nop                                           ; $5676: $00
    ld [hl], a                                    ; $5677: $77
    ld h, [hl]                                    ; $5678: $66
    inc a                                         ; $5679: $3c
    ld a, [hl-]                                   ; $567a: $3a
    ld d, a                                       ; $567b: $57
    ld a, [$9eef]                                 ; $567c: $fa $ef $9e
    rst $18                                       ; $567f: $df
    db $f4                                        ; $5680: $f4
    inc bc                                        ; $5681: $03
    ld de, $9977                                  ; $5682: $11 $77 $99
    ld h, a                                       ; $5685: $67
    ld h, [hl]                                    ; $5686: $66
    rst $10                                       ; $5687: $d7
    ld a, d                                       ; $5688: $7a
    ld [hl], h                                    ; $5689: $74
    call c, $447c                                 ; $568a: $dc $7c $44
    xor a                                         ; $568d: $af
    add d                                         ; $568e: $82
    ld [$7f00], sp                                ; $568f: $08 $00 $7f
    ld c, e                                       ; $5692: $4b
    cp a                                          ; $5693: $bf
    add sp, -$0f                                  ; $5694: $e8 $f1
    ld l, a                                       ; $5696: $6f
    inc bc                                        ; $5697: $03
    ld e, b                                       ; $5698: $58
    sbc c                                         ; $5699: $99
    xor $bb                                       ; $569a: $ee $bb
    ld [hl-], a                                   ; $569c: $32
    add $66                                       ; $569d: $c6 $66
    adc b                                         ; $569f: $88
    nop                                           ; $56a0: $00
    or a                                          ; $56a1: $b7
    ld a, a                                       ; $56a2: $7f
    sub c                                         ; $56a3: $91
    db $dd                                        ; $56a4: $dd
    ld sp, hl                                     ; $56a5: $f9
    dec hl                                        ; $56a6: $2b
    ld a, [$9892]                                 ; $56a7: $fa $92 $98
    adc e                                         ; $56aa: $8b
    call $0110                                    ; $56ab: $cd $10 $01
    db $dd                                        ; $56ae: $dd
    rst $38                                       ; $56af: $ff
    add l                                         ; $56b0: $85
    inc l                                         ; $56b1: $2c
    xor a                                         ; $56b2: $af
    dec [hl]                                      ; $56b3: $35
    ld l, h                                       ; $56b4: $6c
    sub c                                         ; $56b5: $91
    cpl                                           ; $56b6: $2f
    pop bc                                        ; $56b7: $c1
    add d                                         ; $56b8: $82
    nop                                           ; $56b9: $00
    dec a                                         ; $56ba: $3d
    adc [hl]                                      ; $56bb: $8e
    rst $00                                       ; $56bc: $c7
    or c                                          ; $56bd: $b1
    db $e3                                        ; $56be: $e3
    sub [hl]                                      ; $56bf: $96
    sub $f9                                       ; $56c0: $d6 $f9
    rst $00                                       ; $56c2: $c7

Call_057_56c3:
Jump_057_56c3:
    adc b                                         ; $56c3: $88
    nop                                           ; $56c4: $00
    scf                                           ; $56c5: $37
    sub e                                         ; $56c6: $93
    sbc c                                         ; $56c7: $99
    dec e                                         ; $56c8: $1d
    ld e, a                                       ; $56c9: $5f
    ld a, l                                       ; $56ca: $7d
    dec e                                         ; $56cb: $1d
    inc hl                                        ; $56cc: $23
    add b                                         ; $56cd: $80
    ld b, d                                       ; $56ce: $42
    ld [hl], e                                    ; $56cf: $73
    ld e, d                                       ; $56d0: $5a
    rst $20                                       ; $56d1: $e7
    rra                                           ; $56d2: $1f
    inc hl                                        ; $56d3: $23
    ld [bc], a                                    ; $56d4: $02
    nop                                           ; $56d5: $00
    ld c, e                                       ; $56d6: $4b
    db $d3                                        ; $56d7: $d3
    sbc d                                         ; $56d8: $9a

jr_057_56d9:
    rrca                                          ; $56d9: $0f
    cp a                                          ; $56da: $bf
    inc h                                         ; $56db: $24
    xor l                                         ; $56dc: $ad
    di                                            ; $56dd: $f3
    adc a                                         ; $56de: $8f
    ld de, $b701                                  ; $56df: $11 $01 $b7
    db $e4                                        ; $56e2: $e4
    ld c, b                                       ; $56e3: $48
    inc a                                         ; $56e4: $3c
    ld d, c                                       ; $56e5: $51
    ld l, [hl]                                    ; $56e6: $6e
    ld [$9dbd], sp                                ; $56e7: $08 $bd $9d
    inc a                                         ; $56ea: $3c
    pop hl                                        ; $56eb: $e1
    or h                                          ; $56ec: $b4
    adc $3f                                       ; $56ed: $ce $3f
    ld b, [hl]                                    ; $56ef: $46
    inc b                                         ; $56f0: $04

jr_057_56f1:
    cp l                                          ; $56f1: $bd
    or e                                          ; $56f2: $b3
    ld h, d                                       ; $56f3: $62
    rst $10                                       ; $56f4: $d7
    ld c, a                                       ; $56f5: $4f
    db $eb                                        ; $56f6: $eb
    db $fc                                        ; $56f7: $fc
    ld h, e                                       ; $56f8: $63
    ld b, h                                       ; $56f9: $44
    or a                                          ; $56fa: $b7
    or a                                          ; $56fb: $b7
    ld e, a                                       ; $56fc: $5f
    ld hl, $ef33                                  ; $56fd: $21 $33 $ef
    adc e                                         ; $5700: $8b
    add h                                         ; $5701: $84
    daa                                           ; $5702: $27
    ld bc, $b701                                  ; $5703: $01 $01 $b7
    or a                                          ; $5706: $b7
    ld e, a                                       ; $5707: $5f
    ld hl, $2f33                                  ; $5708: $21 $33 $2f
    halt                                          ; $570b: $76
    call c, Call_057_6b9a                         ; $570c: $dc $9a $6b
    sub a                                         ; $570f: $97
    inc hl                                        ; $5710: $23
    ld [hl], a                                    ; $5711: $77
    sub [hl]                                      ; $5712: $96
    and $9c                                       ; $5713: $e6 $9c
    ld a, l                                       ; $5715: $7d
    sub c                                         ; $5716: $91
    db $d3                                        ; $5717: $d3
    jp hl                                         ; $5718: $e9


    or d                                          ; $5719: $b2
    jr nz, jr_057_56d9                            ; $571a: $20 $bd

    ld e, a                                       ; $571c: $5f
    db $e3                                        ; $571d: $e3
    inc h                                         ; $571e: $24
    rla                                           ; $571f: $17
    cpl                                           ; $5720: $2f
    halt                                          ; $5721: $76
    call c, Call_057_6b9a                         ; $5722: $dc $9a $6b
    sub a                                         ; $5725: $97
    inc hl                                        ; $5726: $23
    cp l                                          ; $5727: $bd
    ld e, a                                       ; $5728: $5f
    db $e3                                        ; $5729: $e3
    inc h                                         ; $572a: $24
    rla                                           ; $572b: $17
    cpl                                           ; $572c: $2f
    halt                                          ; $572d: $76
    call c, Call_057_6b9a                         ; $572e: $dc $9a $6b
    ld d, a                                       ; $5731: $57
    jr nz, jr_057_56f1                            ; $5732: $20 $bd

    ld e, a                                       ; $5734: $5f
    db $e3                                        ; $5735: $e3
    inc h                                         ; $5736: $24
    rla                                           ; $5737: $17
    cpl                                           ; $5738: $2f
    halt                                          ; $5739: $76
    call c, Call_057_6b9a                         ; $573a: $dc $9a $6b
    ld d, a                                       ; $573d: $57
    ld [hl+], a                                   ; $573e: $22
    cp l                                          ; $573f: $bd
    ld e, a                                       ; $5740: $5f
    db $e3                                        ; $5741: $e3
    inc h                                         ; $5742: $24
    rla                                           ; $5743: $17
    rst $08                                       ; $5744: $cf
    pop af                                        ; $5745: $f1
    sub b                                         ; $5746: $90
    push hl                                       ; $5747: $e5
    ld [hl], e                                    ; $5748: $73
    db $10                                        ; $5749: $10
    rst $30                                       ; $574a: $f7
    ld [hl], $55                                  ; $574b: $36 $55

Jump_057_574d:
    cp d                                          ; $574d: $ba
    ld hl, sp-$44                                 ; $574e: $f8 $bc
    add [hl]                                      ; $5750: $86
    nop                                           ; $5751: $00
    scf                                           ; $5752: $37
    rst $10                                       ; $5753: $d7
    ld h, a                                       ; $5754: $67
    db $fc                                        ; $5755: $fc
    add h                                         ; $5756: $84
    ld a, a                                       ; $5757: $7f
    adc h                                         ; $5758: $8c
    rst $20                                       ; $5759: $e7
    dec [hl]                                      ; $575a: $35
    inc b                                         ; $575b: $04
    nop                                           ; $575c: $00
    db $f4                                        ; $575d: $f4
    jp Jump_000_25f2                              ; $575e: $c3 $f2 $25


    sbc h                                         ; $5761: $9c
    ldh a, [$5a]                                  ; $5762: $f0 $5a
    ld [hl], e                                    ; $5764: $73
    ld a, l                                       ; $5765: $7d
    inc b                                         ; $5766: $04
    scf                                           ; $5767: $37
    rra                                           ; $5768: $1f
    xor [hl]                                      ; $5769: $ae
    inc l                                         ; $576a: $2c
    add hl, de                                    ; $576b: $19
    rst $38                                       ; $576c: $ff
    di                                            ; $576d: $f3
    ld a, [de]                                    ; $576e: $1a
    ld [bc], a                                    ; $576f: $02
    rst $30                                       ; $5770: $f7
    ld h, l                                       ; $5771: $65
    ld h, [hl]                                    ; $5772: $66
    ld d, a                                       ; $5773: $57
    add $08                                       ; $5774: $c6 $08
    add hl, hl                                    ; $5776: $29
    sbc c                                         ; $5777: $99
    ld [hl], h                                    ; $5778: $74
    ei                                            ; $5779: $fb
    ret c                                         ; $577a: $d8

    ld l, c                                       ; $577b: $69
    sbc l                                         ; $577c: $9d
    ld a, a                                       ; $577d: $7f
    adc h                                         ; $577e: $8c
    ld [$e7b7], sp                                ; $577f: $08 $b7 $e7
    jp nz, $e76e                                  ; $5782: $c2 $6e $e7

    dec [hl]                                      ; $5785: $35
    inc b                                         ; $5786: $04
    add hl, hl                                    ; $5787: $29

Jump_057_5788:
    ret                                           ; $5788: $c9


    dec hl                                        ; $5789: $2b
    halt                                          ; $578a: $76
    call nc, $f0e5                                ; $578b: $d4 $e5 $f0
    ld a, c                                       ; $578e: $79
    dec c                                         ; $578f: $0d
    ld bc, $a429                                  ; $5790: $01 $29 $a4
    ld a, a                                       ; $5793: $7f
    inc sp                                        ; $5794: $33
    rst $28                                       ; $5795: $ef
    xor $ae                                       ; $5796: $ee $ae
    ld d, d                                       ; $5798: $52
    ld [$e7b7], sp                                ; $5799: $08 $b7 $e7
    ld c, d                                       ; $579c: $4a
    db $eb                                        ; $579d: $eb
    adc d                                         ; $579e: $8a
    cp l                                          ; $579f: $bd
    inc de                                        ; $57a0: $13
    ld [hl], e                                    ; $57a1: $73
    ret c                                         ; $57a2: $d8

    push hl                                       ; $57a3: $e5
    ld [$e7b7], sp                                ; $57a4: $08 $b7 $e7
    ld c, d                                       ; $57a7: $4a
    db $eb                                        ; $57a8: $eb
    adc d                                         ; $57a9: $8a
    cp l                                          ; $57aa: $bd
    inc de                                        ; $57ab: $13
    ld [hl], e                                    ; $57ac: $73
    ret c                                         ; $57ad: $d8

    dec d                                         ; $57ae: $15
    ld [$e7b7], sp                                ; $57af: $08 $b7 $e7
    ld c, d                                       ; $57b2: $4a
    db $eb                                        ; $57b3: $eb
    adc d                                         ; $57b4: $8a
    cp l                                          ; $57b5: $bd
    inc de                                        ; $57b6: $13
    ld [hl], e                                    ; $57b7: $73
    ret c                                         ; $57b8: $d8

    sub l                                         ; $57b9: $95
    ld [$e7b7], sp                                ; $57ba: $08 $b7 $e7
    ld c, d                                       ; $57bd: $4a
    db $eb                                        ; $57be: $eb
    adc d                                         ; $57bf: $8a
    cp l                                          ; $57c0: $bd
    inc de                                        ; $57c1: $13
    ld [hl], e                                    ; $57c2: $73
    ret c                                         ; $57c3: $d8

    ld d, l                                       ; $57c4: $55
    ld [$e7b7], sp                                ; $57c5: $08 $b7 $e7
    ld c, d                                       ; $57c8: $4a
    db $eb                                        ; $57c9: $eb
    adc d                                         ; $57ca: $8a
    cp l                                          ; $57cb: $bd
    inc de                                        ; $57cc: $13
    ld [hl], e                                    ; $57cd: $73
    ret c                                         ; $57ce: $d8

    push de                                       ; $57cf: $d5
    ld [$e7b7], sp                                ; $57d0: $08 $b7 $e7
    ld c, d                                       ; $57d3: $4a
    db $eb                                        ; $57d4: $eb
    adc d                                         ; $57d5: $8a
    cp l                                          ; $57d6: $bd
    inc de                                        ; $57d7: $13
    ld [hl], e                                    ; $57d8: $73
    ret c                                         ; $57d9: $d8

    dec [hl]                                      ; $57da: $35
    ld [$ff29], sp                                ; $57db: $08 $29 $ff
    or b                                          ; $57de: $b0
    rla                                           ; $57df: $17
    dec sp                                        ; $57e0: $3b

Jump_057_57e1:
    ld l, [hl]                                    ; $57e1: $6e
    call $cbb5                                    ; $57e2: $cd $b5 $cb
    ld de, $ff29                                  ; $57e5: $11 $29 $ff
    or b                                          ; $57e8: $b0
    rla                                           ; $57e9: $17
    dec sp                                        ; $57ea: $3b
    ld l, [hl]                                    ; $57eb: $6e
    call Call_000_2bb5                            ; $57ec: $cd $b5 $2b
    db $10                                        ; $57ef: $10
    add hl, hl                                    ; $57f0: $29
    rst $38                                       ; $57f1: $ff
    or b                                          ; $57f2: $b0
    rla                                           ; $57f3: $17
    dec sp                                        ; $57f4: $3b
    ld l, [hl]                                    ; $57f5: $6e
    call Call_000_2bb5                            ; $57f6: $cd $b5 $2b
    ld de, $ff29                                  ; $57f9: $11 $29 $ff
    or b                                          ; $57fc: $b0
    rla                                           ; $57fd: $17
    dec sp                                        ; $57fe: $3b
    ld l, [hl]                                    ; $57ff: $6e
    call $abb5                                    ; $5800: $cd $b5 $ab
    db $10                                        ; $5803: $10
    add hl, hl                                    ; $5804: $29
    rst $38                                       ; $5805: $ff
    or b                                          ; $5806: $b0
    rla                                           ; $5807: $17
    dec sp                                        ; $5808: $3b
    ld l, [hl]                                    ; $5809: $6e
    call $d935                                    ; $580a: $cd $35 $d9
    push de                                       ; $580d: $d5
    ld [$ff29], sp                                ; $580e: $08 $29 $ff
    or b                                          ; $5811: $b0
    rla                                           ; $5812: $17
    dec sp                                        ; $5813: $3b
    ld l, [hl]                                    ; $5814: $6e
    call Call_057_6bb5                            ; $5815: $cd $b5 $6b
    db $10                                        ; $5818: $10
    rst $30                                       ; $5819: $f7
    db $fd                                        ; $581a: $fd
    ld a, [hl+]                                   ; $581b: $2a
    daa                                           ; $581c: $27
    rra                                           ; $581d: $1f
    sub e                                         ; $581e: $93
    ld h, a                                       ; $581f: $67
    ld sp, $e70b                                  ; $5820: $31 $0b $e7
    ld b, d                                       ; $5823: $42
    nop                                           ; $5824: $00
    inc sp                                        ; $5825: $33
    and $c5                                       ; $5826: $e6 $c5
    or $ce                                        ; $5828: $f6 $ce
    ld [hl], c                                    ; $582a: $71
    ld h, l                                       ; $582b: $65
    adc h                                         ; $582c: $8c
    nop                                           ; $582d: $00
    nop                                           ; $582e: $00
    inc sp                                        ; $582f: $33
    and $c5                                       ; $5830: $e6 $c5
    or $ce                                        ; $5832: $f6 $ce
    ld [hl], c                                    ; $5834: $71
    ld h, l                                       ; $5835: $65
    adc h                                         ; $5836: $8c
    nop                                           ; $5837: $00
    or a                                          ; $5838: $b7
    rst $20                                       ; $5839: $e7
    ld c, d                                       ; $583a: $4a
    db $eb                                        ; $583b: $eb
    adc d                                         ; $583c: $8a
    rla                                           ; $583d: $17
    sbc [hl]                                      ; $583e: $9e
    inc b                                         ; $583f: $04
    inc b                                         ; $5840: $04
    db $dd                                        ; $5841: $dd
    push af                                       ; $5842: $f5
    inc de                                        ; $5843: $13
    ld b, d                                       ; $5844: $42
    ccf                                           ; $5845: $3f
    ld [$2c7d], sp                                ; $5846: $08 $7d $2c
    ld l, h                                       ; $5849: $6c
    sub l                                         ; $584a: $95
    ld de, $5fbd                                  ; $584b: $11 $bd $5f
    db $e3                                        ; $584e: $e3
    inc h                                         ; $584f: $24
    rla                                           ; $5850: $17
    adc a                                         ; $5851: $8f
    ld a, h                                       ; $5852: $7c
    dec d                                         ; $5853: $15
    ld [hl], a                                    ; $5854: $77
    add hl, sp                                    ; $5855: $39
    ld [bc], a                                    ; $5856: $02
    cp l                                          ; $5857: $bd
    dec [hl]                                      ; $5858: $35
    and c                                         ; $5859: $a1
    cp [hl]                                       ; $585a: $be
    ld a, [hl-]                                   ; $585b: $3a
    inc hl                                        ; $585c: $23
    inc [hl]                                      ; $585d: $34
    call z, $eed6                                 ; $585e: $cc $d6 $ee
    adc e                                         ; $5861: $8b
    jr jr_057_5865                                ; $5862: $18 $01

    ld d, a                                       ; $5864: $57

jr_057_5865:
    ret nz                                        ; $5865: $c0

    sbc c                                         ; $5866: $99
    inc bc                                        ; $5867: $03
    ld e, h                                       ; $5868: $5c
    ld a, b                                       ; $5869: $78
    ld [de], a                                    ; $586a: $12
    db $10                                        ; $586b: $10
    ld d, a                                       ; $586c: $57
    jp nz, Jump_000_0399                          ; $586d: $c2 $99 $03

    ld e, h                                       ; $5870: $5c
    ld a, b                                       ; $5871: $78
    ld [de], a                                    ; $5872: $12
    db $10                                        ; $5873: $10
    ld d, a                                       ; $5874: $57
    pop bc                                        ; $5875: $c1
    sbc c                                         ; $5876: $99
    inc bc                                        ; $5877: $03
    ld e, h                                       ; $5878: $5c
    ld a, b                                       ; $5879: $78
    ld [de], a                                    ; $587a: $12
    db $10                                        ; $587b: $10
    ld d, a                                       ; $587c: $57
    jp Jump_000_0399                              ; $587d: $c3 $99 $03


    ld e, h                                       ; $5880: $5c

jr_057_5881:
    ld a, b                                       ; $5881: $78
    ld [de], a                                    ; $5882: $12
    db $10                                        ; $5883: $10
    rst $10                                       ; $5884: $d7
    ret nz                                        ; $5885: $c0

    sbc c                                         ; $5886: $99
    inc bc                                        ; $5887: $03
    ld e, h                                       ; $5888: $5c
    ld a, b                                       ; $5889: $78
    ld [de], a                                    ; $588a: $12
    db $10                                        ; $588b: $10
    rst $10                                       ; $588c: $d7
    jp nz, Jump_000_0399                          ; $588d: $c2 $99 $03

    ld e, h                                       ; $5890: $5c
    ld a, b                                       ; $5891: $78
    ld [de], a                                    ; $5892: $12
    db $10                                        ; $5893: $10
    rst $10                                       ; $5894: $d7
    pop bc                                        ; $5895: $c1
    sbc c                                         ; $5896: $99
    inc bc                                        ; $5897: $03
    ld e, h                                       ; $5898: $5c
    ld a, b                                       ; $5899: $78
    ld [de], a                                    ; $589a: $12
    db $10                                        ; $589b: $10
    ld [hl], a                                    ; $589c: $77
    add hl, sp                                    ; $589d: $39
    ld hl, sp+$74                                 ; $589e: $f8 $74
    ld e, $49                                     ; $58a0: $1e $49
    ld [hl+], a                                   ; $58a2: $22
    ld [hl], a                                    ; $58a3: $77
    cp a                                          ; $58a4: $bf
    ldh a, [$89]                                  ; $58a5: $f0 $89
    ld a, a                                       ; $58a7: $7f
    jr c, jr_057_5881                             ; $58a8: $38 $d7

    rst $30                                       ; $58aa: $f7
    ld a, c                                       ; $58ab: $79
    dec c                                         ; $58ac: $0d
    ld bc, $9a29                                  ; $58ad: $01 $29 $9a
    add sp, -$3d                                  ; $58b0: $e8 $c3
    ld a, [$b743]                                 ; $58b2: $fa $43 $b7
    db $fc                                        ; $58b5: $fc
    ld [hl], h                                    ; $58b6: $74
    ei                                            ; $58b7: $fb
    sbc c                                         ; $58b8: $99
    dec e                                         ; $58b9: $1d
    ld [hl], a                                    ; $58ba: $77
    add hl, sp                                    ; $58bb: $39
    ld [bc], a                                    ; $58bc: $02
    or a                                          ; $58bd: $b7
    db $fc                                        ; $58be: $fc
    ld [hl], h                                    ; $58bf: $74
    ei                                            ; $58c0: $fb
    sbc c                                         ; $58c1: $99
    dec e                                         ; $58c2: $1d
    ld [hl], a                                    ; $58c3: $77
    dec b                                         ; $58c4: $05
    ld [bc], a                                    ; $58c5: $02
    ld [hl], a                                    ; $58c6: $77
    add e                                         ; $58c7: $83
    ld c, [hl]                                    ; $58c8: $4e
    ld de, $c8bd                                  ; $58c9: $11 $bd $c8
    or e                                          ; $58cc: $b3
    sbc b                                         ; $58cd: $98
    add l                                         ; $58ce: $85
    ld [hl], e                                    ; $58cf: $73
    ld hl, $33bd                                  ; $58d0: $21 $bd $33
    ld h, $73                                     ; $58d3: $26 $73
    set 4, c                                      ; $58d5: $cb $e1
    sbc a                                         ; $58d7: $9f
    rst $10                                       ; $58d8: $d7
    db $10                                        ; $58d9: $10
    rst $30                                       ; $58da: $f7
    ld h, l                                       ; $58db: $65
    ld c, h                                       ; $58dc: $4c
    rst $10                                       ; $58dd: $d7
    rst $20                                       ; $58de: $e7
    or e                                          ; $58df: $b3
    sbc b                                         ; $58e0: $98
    add l                                         ; $58e1: $85
    ld [hl], e                                    ; $58e2: $73
    ld hl, $b5b7                                  ; $58e3: $21 $b7 $b5
    rra                                           ; $58e6: $1f
    rst $08                                       ; $58e7: $cf
    xor a                                         ; $58e8: $af
    di                                            ; $58e9: $f3
    ld a, [de]                                    ; $58ea: $1a
    ld [bc], a                                    ; $58eb: $02
    ld [hl], a                                    ; $58ec: $77

Jump_057_58ed:
    sub [hl]                                      ; $58ed: $96
    dec h                                         ; $58ee: $25
    inc [hl]                                      ; $58ef: $34
    sbc a                                         ; $58f0: $9f
    push bc                                       ; $58f1: $c5
    inc l                                         ; $58f2: $2c
    sbc h                                         ; $58f3: $9c
    dec bc                                        ; $58f4: $0b
    ld bc, $4d29                                  ; $58f5: $01 $29 $4d
    xor a                                         ; $58f8: $af
    or e                                          ; $58f9: $b3
    sbc b                                         ; $58fa: $98
    add l                                         ; $58fb: $85
    ld [hl], e                                    ; $58fc: $73
    ld hl, $fc29                                  ; $58fd: $21 $29 $fc
    ld h, e                                       ; $5900: $63
    ei                                            ; $5901: $fb
    ld [de], a                                    ; $5902: $12
    adc $62                                       ; $5903: $ce $62
    ld d, $ce                                     ; $5905: $16 $ce
    add l                                         ; $5907: $85
    nop                                           ; $5908: $00
    ld [hl], a                                    ; $5909: $77
    cp l                                          ; $590a: $bd
    ldh [$aa], a                                  ; $590b: $e0 $aa
    adc h                                         ; $590d: $8c
    ld de, $eb00                                  ; $590e: $11 $00 $eb
    ret                                           ; $5911: $c9


    and c                                         ; $5912: $a1
    ld a, a                                       ; $5913: $7f
    ret nc                                        ; $5914: $d0

    db $eb                                        ; $5915: $eb
    sbc l                                         ; $5916: $9d
    ld c, [hl]                                    ; $5917: $4e
    sub [hl]                                      ; $5918: $96
    ld [hl], e                                    ; $5919: $73
    ld e, [hl]                                    ; $591a: $5e
    ld b, e                                       ; $591b: $43
    nop                                           ; $591c: $00
    dec hl                                        ; $591d: $2b
    db $d3                                        ; $591e: $d3
    ld a, l                                       ; $591f: $7d
    ld d, a                                       ; $5920: $57
    add $08                                       ; $5921: $c6 $08
    or a                                          ; $5923: $b7
    or a                                          ; $5924: $b7
    ld e, a                                       ; $5925: $5f
    ld hl, $2f33                                  ; $5926: $21 $33 $2f
    halt                                          ; $5929: $76
    call c, Call_057_6b9a                         ; $592a: $dc $9a $6b
    ld d, a                                       ; $592d: $57
    jr nz, @-$07                                  ; $592e: $20 $f7

    cp c                                          ; $5930: $b9
    ld a, [hl+]                                   ; $5931: $2a
    ld c, e                                       ; $5932: $4b
    ret c                                         ; $5933: $d8

    push af                                       ; $5934: $f5
    cp e                                          ; $5935: $bb
    ld a, [c]                                     ; $5936: $f2
    jp nc, $10ab                                  ; $5937: $d2 $ab $10

    add hl, hl                                    ; $593a: $29
    ld e, h                                       ; $593b: $5c
    ld c, a                                       ; $593c: $4f
    call nc, $bd43                                ; $593d: $d4 $43 $bd
    ld e, a                                       ; $5940: $5f
    db $e3                                        ; $5941: $e3
    inc h                                         ; $5942: $24
    rla                                           ; $5943: $17
    rst $28                                       ; $5944: $ef
    adc e                                         ; $5945: $8b
    add h                                         ; $5946: $84
    daa                                           ; $5947: $27
    pop hl                                        ; $5948: $e1
    db $10                                        ; $5949: $10
    xor a                                         ; $594a: $af
    dec [hl]                                      ; $594b: $35
    inc b                                         ; $594c: $04
    cp l                                          ; $594d: $bd
    db $eb                                        ; $594e: $eb
    db $d3                                        ; $594f: $d3
    db $f4                                        ; $5950: $f4
    sub a                                         ; $5951: $97
    or b                                          ; $5952: $b0
    and b                                         ; $5953: $a0
    inc sp                                        ; $5954: $33
    ei                                            ; $5955: $fb
    sub d                                         ; $5956: $92
    sub e                                         ; $5957: $93
    inc de                                        ; $5958: $13

Call_057_5959:
    sbc a                                         ; $5959: $9f
    rst $10                                       ; $595a: $d7
    db $10                                        ; $595b: $10
    cp l                                          ; $595c: $bd
    db $eb                                        ; $595d: $eb
    db $d3                                        ; $595e: $d3
    db $f4                                        ; $595f: $f4
    sub a                                         ; $5960: $97
    or b                                          ; $5961: $b0
    ld c, h                                       ; $5962: $4c
    sub d                                         ; $5963: $92
    ld b, h                                       ; $5964: $44
    ld l, [hl]                                    ; $5965: $6e
    ld [$c654], a                                 ; $5966: $ea $54 $c6
    ld [$74b7], sp                                ; $5969: $08 $b7 $74
    ld sp, $663b                                  ; $596c: $31 $3b $66
    ld h, [hl]                                    ; $596f: $66
    inc b                                         ; $5970: $04
    rst $30                                       ; $5971: $f7
    cp h                                          ; $5972: $bc
    inc de                                        ; $5973: $13
    rst $08                                       ; $5974: $cf
    ld h, d                                       ; $5975: $62
    ld d, $ce                                     ; $5976: $16 $ce
    add l                                         ; $5978: $85
    nop                                           ; $5979: $00
    cp l                                          ; $597a: $bd
    ld e, a                                       ; $597b: $5f
    db $e3                                        ; $597c: $e3
    inc h                                         ; $597d: $24
    rla                                           ; $597e: $17
    cpl                                           ; $597f: $2f
    add l                                         ; $5980: $85
    ld [hl], e                                    ; $5981: $73
    sbc l                                         ; $5982: $9d
    rst $10                                       ; $5983: $d7
    inc l                                         ; $5984: $2c
    ld [$5fbd], sp                                ; $5985: $08 $bd $5f
    db $e3                                        ; $5988: $e3
    inc h                                         ; $5989: $24
    rla                                           ; $598a: $17
    rst $28                                       ; $598b: $ef
    xor [hl]                                      ; $598c: $ae
    cp [hl]                                       ; $598d: $be
    jp z, $f495                                   ; $598e: $ca $95 $f4

    ld d, l                                       ; $5991: $55
    ld l, [hl]                                    ; $5992: $6e
    rst $00                                       ; $5993: $c7
    adc h                                         ; $5994: $8c
    nop                                           ; $5995: $00
    rst $30                                       ; $5996: $f7
    push hl                                       ; $5997: $e5
    ld [c], a                                     ; $5998: $e2
    ld [hl-], a                                   ; $5999: $32
    ld [hl], e                                    ; $599a: $73
    ld h, l                                       ; $599b: $65
    adc h                                         ; $599c: $8c
    nop                                           ; $599d: $00
    or a                                          ; $599e: $b7
    pop af                                        ; $599f: $f1
    dec sp                                        ; $59a0: $3b
    dec e                                         ; $59a1: $1d
    rst $28                                       ; $59a2: $ef
    or d                                          ; $59a3: $b2
    push bc                                       ; $59a4: $c5
    adc [hl]                                      ; $59a5: $8e
    ld e, e                                       ; $59a6: $5b
    ld [hl], e                                    ; $59a7: $73
    ld hl, $b5b7                                  ; $59a8: $21 $b7 $b5
    rra                                           ; $59ab: $1f
    rst $08                                       ; $59ac: $cf
    xor a                                         ; $59ad: $af

Jump_057_59ae:
    ld e, l                                       ; $59ae: $5d
    add c                                         ; $59af: $81
    nop                                           ; $59b0: $00
    or a                                          ; $59b1: $b7
    or a                                          ; $59b2: $b7
    ld e, a                                       ; $59b3: $5f
    ld hl, $8f33                                  ; $59b4: $21 $33 $8f
    ld c, b                                       ; $59b7: $48
    call c, $0412                                 ; $59b8: $dc $12 $04
    scf                                           ; $59bb: $37
    rra                                           ; $59bc: $1f
    xor [hl]                                      ; $59bd: $ae
    inc l                                         ; $59be: $2c
    add hl, de                                    ; $59bf: $19
    rst $38                                       ; $59c0: $ff
    add l                                         ; $59c1: $85
    daa                                           ; $59c2: $27
    ld bc, $bd01                                  ; $59c3: $01 $01 $bd
    ld e, a                                       ; $59c6: $5f
    db $e3                                        ; $59c7: $e3
    inc h                                         ; $59c8: $24
    rla                                           ; $59c9: $17
    adc a                                         ; $59ca: $8f
    ld a, h                                       ; $59cb: $7c
    dec d                                         ; $59cc: $15
    ld [hl], a                                    ; $59cd: $77
    dec b                                         ; $59ce: $05
    ld [bc], a                                    ; $59cf: $02
    cp l                                          ; $59d0: $bd
    ld e, a                                       ; $59d1: $5f
    db $e3                                        ; $59d2: $e3
    inc h                                         ; $59d3: $24
    rla                                           ; $59d4: $17
    adc a                                         ; $59d5: $8f
    ld a, h                                       ; $59d6: $7c
    dec d                                         ; $59d7: $15
    ld [hl], a                                    ; $59d8: $77
    dec h                                         ; $59d9: $25
    ld [bc], a                                    ; $59da: $02
    cp l                                          ; $59db: $bd
    ld e, a                                       ; $59dc: $5f
    db $e3                                        ; $59dd: $e3
    inc h                                         ; $59de: $24
    rla                                           ; $59df: $17
    adc a                                         ; $59e0: $8f
    ld a, h                                       ; $59e1: $7c
    dec d                                         ; $59e2: $15
    ld [hl], a                                    ; $59e3: $77
    dec d                                         ; $59e4: $15
    ld [bc], a                                    ; $59e5: $02
    cp l                                          ; $59e6: $bd
    dec [hl]                                      ; $59e7: $35
    and c                                         ; $59e8: $a1
    cp [hl]                                       ; $59e9: $be
    ld a, [hl-]                                   ; $59ea: $3a
    inc hl                                        ; $59eb: $23
    inc [hl]                                      ; $59ec: $34
    call z, Call_057_4ed6                         ; $59ed: $cc $d6 $4e
    ld h, a                                       ; $59f0: $67
    inc hl                                        ; $59f1: $23
    add hl, hl                                    ; $59f2: $29
    rrca                                          ; $59f3: $0f
    scf                                           ; $59f4: $37
    rst $00                                       ; $59f5: $c7
    ld e, h                                       ; $59f6: $5c
    inc e                                         ; $59f7: $1c
    sbc e                                         ; $59f8: $9b
    sbc [hl]                                      ; $59f9: $9e
    ld c, [hl]                                    ; $59fa: $4e
    inc hl                                        ; $59fb: $23
    add hl, hl                                    ; $59fc: $29
    sbc h                                         ; $59fd: $9c
    db $eb                                        ; $59fe: $eb
    cp h                                          ; $59ff: $bc
    ld h, [hl]                                    ; $5a00: $66
    reti                                          ; $5a01: $d9


    dec h                                         ; $5a02: $25
    db $e3                                        ; $5a03: $e3
    adc h                                         ; $5a04: $8c
    ld de, $c63d                                  ; $5a05: $11 $3d $c6
    ret c                                         ; $5a08: $d8

    db $ed                                        ; $5a09: $ed
    add a                                         ; $5a0a: $87
    add l                                         ; $5a0b: $85
    adc h                                         ; $5a0c: $8c
    ld c, c                                       ; $5a0d: $49
    ld d, a                                       ; $5a0e: $57
    add $08                                       ; $5a0f: $c6 $08
    add hl, hl                                    ; $5a11: $29
    or c                                          ; $5a12: $b1
    ld a, [hl]                                    ; $5a13: $7e
    ld [c], a                                     ; $5a14: $e2
    di                                            ; $5a15: $f3
    and d                                         ; $5a16: $a2
    dec bc                                        ; $5a17: $0b
    ld bc, $75bd                                  ; $5a18: $01 $bd $75
    ld h, [hl]                                    ; $5a1b: $66
    xor e                                         ; $5a1c: $ab
    adc h                                         ; $5a1d: $8c
    nop                                           ; $5a1e: $00
    cp l                                          ; $5a1f: $bd
    inc sp                                        ; $5a20: $33
    ld h, $8d                                     ; $5a21: $26 $8d
    push af                                       ; $5a23: $f5
    di                                            ; $5a24: $f3
    ld h, e                                       ; $5a25: $63
    inc a                                         ; $5a26: $3c
    xor a                                         ; $5a27: $af
    ld hl, $33bd                                  ; $5a28: $21 $bd $33
    ld h, $1d                                     ; $5a2b: $26 $1d
    ld [hl], l                                    ; $5a2d: $75
    add hl, sp                                    ; $5a2e: $39
    ld a, h                                       ; $5a2f: $7c
    ld e, [hl]                                    ; $5a30: $5e
    ld b, e                                       ; $5a31: $43
    ld [hl], a                                    ; $5a32: $77
    and $62                                       ; $5a33: $e6 $62
    ld [hl+], a                                   ; $5a35: $22
    ld [hl], c                                    ; $5a36: $71
    ld c, e                                       ; $5a37: $4b
    db $10                                        ; $5a38: $10
    rst $10                                       ; $5a39: $d7
    jp nz, Jump_000_0399                          ; $5a3a: $c2 $99 $03

    inc e                                         ; $5a3d: $1c
    ld h, c                                       ; $5a3e: $61
    adc h                                         ; $5a3f: $8c
    db $dd                                        ; $5a40: $dd
    ld a, [hl]                                    ; $5a41: $7e
    ld e, b                                       ; $5a42: $58
    ld a, b                                       ; $5a43: $78
    ld [de], a                                    ; $5a44: $12
    db $10                                        ; $5a45: $10
    ld [hl], a                                    ; $5a46: $77
    cp $c3                                        ; $5a47: $fe $c3
    ld a, $8b                                     ; $5a49: $3e $8b
    ld e, c                                       ; $5a4b: $59
    jr c, jr_057_5a65                             ; $5a4c: $38 $17

    ld [bc], a                                    ; $5a4e: $02
    nop                                           ; $5a4f: $00
    inc sp                                        ; $5a50: $33
    and $c5                                       ; $5a51: $e6 $c5
    or $ce                                        ; $5a53: $f6 $ce
    ld [hl], c                                    ; $5a55: $71
    ld h, l                                       ; $5a56: $65
    adc h                                         ; $5a57: $8c
    nop                                           ; $5a58: $00
    or a                                          ; $5a59: $b7
    scf                                           ; $5a5a: $37
    adc l                                         ; $5a5b: $8d
    ld b, l                                       ; $5a5c: $45
    ld a, c                                       ; $5a5d: $79
    jp nc, $9b15                                  ; $5a5e: $d2 $15 $9b

    ld l, e                                       ; $5a61: $6b
    pop af                                        ; $5a62: $f1
    dec d                                         ; $5a63: $15
    inc hl                                        ; $5a64: $23

jr_057_5a65:
    add hl, hl                                    ; $5a65: $29
    sbc h                                         ; $5a66: $9c
    db $eb                                        ; $5a67: $eb
    cp h                                          ; $5a68: $bc
    ld h, [hl]                                    ; $5a69: $66
    reti                                          ; $5a6a: $d9


    dec h                                         ; $5a6b: $25
    ld c, e                                       ; $5a6c: $4b
    ld hl, $6b7f                                  ; $5a6d: $21 $7f $6b
    and $b9                                       ; $5a70: $e6 $b9
    halt                                          ; $5a72: $76
    sbc d                                         ; $5a73: $9a
    adc $8c                                       ; $5a74: $ce $8c
    nop                                           ; $5a76: $00
    add hl, hl                                    ; $5a77: $29
    ld e, c                                       ; $5a78: $59
    rla                                           ; $5a79: $17
    ld [hl], l                                    ; $5a7a: $75
    jp hl                                         ; $5a7b: $e9


    db $dd                                        ; $5a7c: $dd
    ld a, [$a0f9]                                 ; $5a7d: $fa $f9 $a0
    ld l, a                                       ; $5a80: $6f
    ret c                                         ; $5a81: $d8

    ld c, l                                       ; $5a82: $4d
    sub a                                         ; $5a83: $97
    rrca                                          ; $5a84: $0f
    ld bc, $fadd                                  ; $5a85: $01 $dd $fa
    ld e, h                                       ; $5a88: $5c
    ei                                            ; $5a89: $fb
    db $eb                                        ; $5a8a: $eb
    cp $2f                                        ; $5a8b: $fe $2f
    ld h, h                                       ; $5a8d: $64
    ld a, c                                       ; $5a8e: $79
    xor l                                         ; $5a8f: $ad
    ld h, c                                       ; $5a90: $61
    adc e                                         ; $5a91: $8b
    ld a, h                                       ; $5a92: $7c
    add hl, bc                                    ; $5a93: $09
    ld d, $88                                     ; $5a94: $16 $88
    nop                                           ; $5a96: $00
    db $dd                                        ; $5a97: $dd
    ld a, [$fb5c]                                 ; $5a98: $fa $5c $fb
    inc bc                                        ; $5a9b: $03
    db $ec                                        ; $5a9c: $ec
    sub $be                                       ; $5a9d: $d6 $be
    add h                                         ; $5a9f: $84
    inc sp                                        ; $5aa0: $33
    jp nz, Jump_000_38f1                          ; $5aa1: $c2 $f1 $38

    halt                                          ; $5aa4: $76
    call c, $3ad2                                 ; $5aa5: $dc $d2 $3a
    rst $38                                       ; $5aa8: $ff
    jr jr_057_5acc                                ; $5aa9: $18 $21

    ld [bc], a                                    ; $5aab: $02
    db $dd                                        ; $5aac: $dd
    ld a, [$fb5c]                                 ; $5aad: $fa $5c $fb
    ld a, e                                       ; $5ab0: $7b
    ld h, h                                       ; $5ab1: $64
    ld h, [hl]                                    ; $5ab2: $66
    rst $00                                       ; $5ab3: $c7
    ld d, a                                       ; $5ab4: $57
    rst $18                                       ; $5ab5: $df
    inc c                                         ; $5ab6: $0c
    ld de, $fadd                                  ; $5ab7: $11 $dd $fa
    ld e, h                                       ; $5aba: $5c
    ei                                            ; $5abb: $fb
    cp e                                          ; $5abc: $bb
    and l                                         ; $5abd: $a5
    ld a, l                                       ; $5abe: $7d
    add hl, bc                                    ; $5abf: $09
    rst $20                                       ; $5ac0: $e7
    jp hl                                         ; $5ac1: $e9


    ld h, a                                       ; $5ac2: $67
    ld a, d                                       ; $5ac3: $7a
    ld l, b                                       ; $5ac4: $68
    ld a, $9c                                     ; $5ac5: $3e $9c
    dec bc                                        ; $5ac7: $0b
    cp a                                          ; $5ac8: $bf
    adc d                                         ; $5ac9: $8a
    ld d, [hl]                                    ; $5aca: $56
    db $10                                        ; $5acb: $10

jr_057_5acc:
    ld bc, $fadd                                  ; $5acc: $01 $dd $fa
    ld e, h                                       ; $5acf: $5c
    ei                                            ; $5ad0: $fb
    cp e                                          ; $5ad1: $bb
    or a                                          ; $5ad2: $b7
    db $fd                                        ; $5ad3: $fd
    db $e4                                        ; $5ad4: $e4
    adc c                                         ; $5ad5: $89
    ld [hl], d                                    ; $5ad6: $72
    sbc l                                         ; $5ad7: $9d
    ld [hl], c                                    ; $5ad8: $71
    ld l, c                                       ; $5ad9: $69
    ld e, d                                       ; $5ada: $5a
    di                                            ; $5adb: $f3
    pop hl                                        ; $5adc: $e1
    sub a                                         ; $5add: $97
    and h                                         ; $5ade: $a4
    ld [hl], l                                    ; $5adf: $75
    cp $31                                        ; $5ae0: $fe $31
    ld b, d                                       ; $5ae2: $42
    inc b                                         ; $5ae3: $04
    db $dd                                        ; $5ae4: $dd

Call_057_5ae5:
    ld a, [$fb5c]                                 ; $5ae5: $fa $5c $fb
    ld c, e                                       ; $5ae8: $4b
    sub c                                         ; $5ae9: $91
    ld e, a                                       ; $5aea: $5f
    and b                                         ; $5aeb: $a0
    and e                                         ; $5aec: $a3
    db $db                                        ; $5aed: $db
    ld a, [$2ddb]                                 ; $5aee: $fa $db $2d
    xor l                                         ; $5af1: $ad
    xor a                                         ; $5af2: $af
    cp b                                          ; $5af3: $b8
    ld [hl], h                                    ; $5af4: $74
    adc [hl]                                      ; $5af5: $8e
    call nz, $e513                                ; $5af6: $c4 $13 $e5
    ld b, $11                                     ; $5af9: $06 $11
    db $dd                                        ; $5afb: $dd
    ld a, [$fb5c]                                 ; $5afc: $fa $5c $fb
    cp e                                          ; $5aff: $bb
    ei                                            ; $5b00: $fb
    xor c                                         ; $5b01: $a9
    add a                                         ; $5b02: $87
    ld [hl], a                                    ; $5b03: $77
    rst $30                                       ; $5b04: $f7
    ld l, e                                       ; $5b05: $6b
    pop af                                        ; $5b06: $f1
    bit 3, c                                      ; $5b07: $cb $59
    ld [hl], b                                    ; $5b09: $70

Call_057_5b0a:
    ld a, [c]                                     ; $5b0a: $f2
    add h                                         ; $5b0b: $84
    ld e, l                                       ; $5b0c: $5d
    and e                                         ; $5b0d: $a3
    ld [hl], e                                    ; $5b0e: $73
    call Call_000_2442                            ; $5b0f: $cd $42 $24
    xor [hl]                                      ; $5b12: $ae
    dec a                                         ; $5b13: $3d
    ld l, c                                       ; $5b14: $69
    ld d, [hl]                                    ; $5b15: $56
    ld a, [c]                                     ; $5b16: $f2
    dec h                                         ; $5b17: $25
    ld b, b                                       ; $5b18: $40
    inc b                                         ; $5b19: $04
    db $dd                                        ; $5b1a: $dd
    ld a, [$fb5c]                                 ; $5b1b: $fa $5c $fb
    ld c, e                                       ; $5b1e: $4b
    pop de                                        ; $5b1f: $d1
    ld h, e                                       ; $5b20: $63
    ld [hl], h                                    ; $5b21: $74
    dec e                                         ; $5b22: $1d
    db $fc                                        ; $5b23: $fc
    sbc b                                         ; $5b24: $98
    rst $08                                       ; $5b25: $cf

jr_057_5b26:
    ldh a, [$0b]                                  ; $5b26: $f0 $0b
    ccf                                           ; $5b28: $3f
    jp z, $113b                                   ; $5b29: $ca $3b $11

    ld [hl+], a                                   ; $5b2c: $22
    db $dd                                        ; $5b2d: $dd
    ld a, [$fb5c]                                 ; $5b2e: $fa $5c $fb
    db $e3                                        ; $5b31: $e3
    jp z, $e1ad                                   ; $5b32: $ca $ad $e1

    daa                                           ; $5b35: $27
    ld [hl], d                                    ; $5b36: $72
    jp nc, $a24f                                  ; $5b37: $d2 $4f $a2

    ld h, l                                       ; $5b3a: $65
    or a                                          ; $5b3b: $b7
    or a                                          ; $5b3c: $b7
    ld e, a                                       ; $5b3d: $5f
    ld hl, $4333                                  ; $5b3e: $21 $33 $43
    inc b                                         ; $5b41: $04
    db $dd                                        ; $5b42: $dd
    ld a, [$fb5c]                                 ; $5b43: $fa $5c $fb
    or e                                          ; $5b46: $b3
    inc l                                         ; $5b47: $2c
    halt                                          ; $5b48: $76
    call c, Call_057_6b9a                         ; $5b49: $dc $9a $6b
    cp d                                          ; $5b4c: $ba
    jr z, jr_057_5b26                             ; $5b4d: $28 $d7

    ld l, [hl]                                    ; $5b4f: $6e
    ld l, a                                       ; $5b50: $6f
    cp a                                          ; $5b51: $bf
    ld b, d                                       ; $5b52: $42
    ld h, [hl]                                    ; $5b53: $66
    add [hl]                                      ; $5b54: $86
    ld [$fadd], sp                                ; $5b55: $08 $dd $fa
    ld e, h                                       ; $5b58: $5c
    inc hl                                        ; $5b59: $23
    xor c                                         ; $5b5a: $a9
    dec h                                         ; $5b5b: $25
    cp $cb                                        ; $5b5c: $fe $cb
    adc c                                         ; $5b5e: $89
    ld l, e                                       ; $5b5f: $6b
    ld e, a                                       ; $5b60: $5f
    db $e4                                        ; $5b61: $e4
    ld [hl], h                                    ; $5b62: $74
    cp d                                          ; $5b63: $ba
    inc l                                         ; $5b64: $2c
    db $10                                        ; $5b65: $10
    ld bc, $fadd                                  ; $5b66: $01 $dd $fa
    ld e, h                                       ; $5b69: $5c
    ei                                            ; $5b6a: $fb
    or e                                          ; $5b6b: $b3
    inc l                                         ; $5b6c: $2c
    halt                                          ; $5b6d: $76
    call c, Call_000_0b9a                         ; $5b6e: $dc $9a $0b
    ld [hl+], a                                   ; $5b71: $22
    db $dd                                        ; $5b72: $dd
    ld a, [$fb5c]                                 ; $5b73: $fa $5c $fb
    or e                                          ; $5b76: $b3
    inc l                                         ; $5b77: $2c
    halt                                          ; $5b78: $76
    call c, Call_000_0b9a                         ; $5b79: $dc $9a $0b
    ld [hl+], a                                   ; $5b7c: $22
    db $dd                                        ; $5b7d: $dd
    ld a, [$fb5c]                                 ; $5b7e: $fa $5c $fb
    or e                                          ; $5b81: $b3
    inc l                                         ; $5b82: $2c
    halt                                          ; $5b83: $76
    call c, Call_000_0b9a                         ; $5b84: $dc $9a $0b
    ld [hl+], a                                   ; $5b87: $22
    db $dd                                        ; $5b88: $dd
    ld a, [$235c]                                 ; $5b89: $fa $5c $23
    xor c                                         ; $5b8c: $a9
    push af                                       ; $5b8d: $f5
    ld a, [hl]                                    ; $5b8e: $7e
    adc l                                         ; $5b8f: $8d
    sub e                                         ; $5b90: $93
    ld e, h                                       ; $5b91: $5c
    ld a, h                                       ; $5b92: $7c
    adc c                                         ; $5b93: $89
    db $e3                                        ; $5b94: $e3
    ld hl, $e7cb                                  ; $5b95: $21 $cb $e7
    ld e, b                                       ; $5b98: $58
    jr nz, @+$04                                  ; $5b99: $20 $02

    db $dd                                        ; $5b9b: $dd
    ld a, [$fb5c]                                 ; $5b9c: $fa $5c $fb
    cp e                                          ; $5b9f: $bb
    or a                                          ; $5ba0: $b7
    xor c                                         ; $5ba1: $a9
    jp nc, $e7c5                                  ; $5ba2: $d2 $c5 $e7

    dec [hl]                                      ; $5ba5: $35
    dec bc                                        ; $5ba6: $0b
    ld b, h                                       ; $5ba7: $44
    db $dd                                        ; $5ba8: $dd
    ld a, [$fb5c]                                 ; $5ba9: $fa $5c $fb
    cp e                                          ; $5bac: $bb
    cp c                                          ; $5bad: $b9
    ld a, $e3                                     ; $5bae: $3e $e3
    daa                                           ; $5bb0: $27
    db $fc                                        ; $5bb1: $fc
    ld h, e                                       ; $5bb2: $63
    inc a                                         ; $5bb3: $3c
    xor a                                         ; $5bb4: $af
    ld e, c                                       ; $5bb5: $59
    jr nz, @+$04                                  ; $5bb6: $20 $02

    db $dd                                        ; $5bb8: $dd
    ld a, [$fb5c]                                 ; $5bb9: $fa $5c $fb
    dec hl                                        ; $5bbc: $2b
    db $fd                                        ; $5bbd: $fd
    or b                                          ; $5bbe: $b0
    ld a, h                                       ; $5bbf: $7c
    add hl, bc                                    ; $5bc0: $09
    daa                                           ; $5bc1: $27
    cp h                                          ; $5bc2: $bc
    sub $5c                                       ; $5bc3: $d6 $5c
    rst $18                                       ; $5bc5: $df
    inc c                                         ; $5bc6: $0c
    ld de, $fadd                                  ; $5bc7: $11 $dd $fa
    ld e, h                                       ; $5bca: $5c
    ei                                            ; $5bcb: $fb
    cp e                                          ; $5bcc: $bb
    ld sp, hl                                     ; $5bcd: $f9
    ld [hl], b                                    ; $5bce: $70
    ld h, l                                       ; $5bcf: $65
    ret                                           ; $5bd0: $c9


    ld hl, sp-$61                                 ; $5bd1: $f8 $9f
    rst $10                                       ; $5bd3: $d7
    inc l                                         ; $5bd4: $2c
    db $10                                        ; $5bd5: $10
    ld bc, $fadd                                  ; $5bd6: $01 $dd $fa
    ld e, h                                       ; $5bd9: $5c
    ei                                            ; $5bda: $fb
    inc hl                                        ; $5bdb: $23
    inc sp                                        ; $5bdc: $33
    or e                                          ; $5bdd: $b3
    dec hl                                        ; $5bde: $2b
    ld h, e                                       ; $5bdf: $63
    ld l, h                                       ; $5be0: $6c
    add [hl]                                      ; $5be1: $86
    ld [$fadd], sp                                ; $5be2: $08 $dd $fa
    ld e, h                                       ; $5be5: $5c
    ei                                            ; $5be6: $fb
    ld c, e                                       ; $5be7: $4b
    ret                                           ; $5be8: $c9


    and h                                         ; $5be9: $a4
    db $db                                        ; $5bea: $db

Jump_057_5beb:
    rst $00                                       ; $5beb: $c7
    ld c, [hl]                                    ; $5bec: $4e
    db $eb                                        ; $5bed: $eb
    db $fc                                        ; $5bee: $fc
    ld h, e                                       ; $5bef: $63
    or h                                          ; $5bf0: $b4
    ld b, b                                       ; $5bf1: $40
    inc b                                         ; $5bf2: $04
    db $dd                                        ; $5bf3: $dd
    ld a, [$fb5c]                                 ; $5bf4: $fa $5c $fb
    cp e                                          ; $5bf7: $bb
    dec a                                         ; $5bf8: $3d
    rla                                           ; $5bf9: $17
    halt                                          ; $5bfa: $76
    dec sp                                        ; $5bfb: $3b
    xor a                                         ; $5bfc: $af
    ld e, c                                       ; $5bfd: $59
    jr nz, @+$04                                  ; $5bfe: $20 $02

    db $dd                                        ; $5c00: $dd
    ld a, [$fb5c]                                 ; $5c01: $fa $5c $fb
    ld c, e                                       ; $5c04: $4b
    ld c, c                                       ; $5c05: $49
    ld e, [hl]                                    ; $5c06: $5e
    or c                                          ; $5c07: $b1
    and e                                         ; $5c08: $a3
    ld l, $87                                     ; $5c09: $2e $87
    rst $08                                       ; $5c0b: $cf
    ld l, e                                       ; $5c0c: $6b
    ld d, $88                                     ; $5c0d: $16 $88
    nop                                           ; $5c0f: $00
    db $dd                                        ; $5c10: $dd
    ld a, [$5788]                                 ; $5c11: $fa $88 $57
    and e                                         ; $5c14: $a3
    ld [hl], l                                    ; $5c15: $75
    ld de, $0ef3                                  ; $5c16: $11 $f3 $0e
    jp hl                                         ; $5c19: $e9


    rst $18                                       ; $5c1a: $df
    call z, $bbbb                                 ; $5c1b: $cc $bb $bb
    xor e                                         ; $5c1e: $ab
    inc d                                         ; $5c1f: $14
    ld b, h                                       ; $5c20: $44
    db $dd                                        ; $5c21: $dd
    ld a, [$fb5c]                                 ; $5c22: $fa $5c $fb

Call_057_5c25:
    cp e                                          ; $5c25: $bb
    inc e                                         ; $5c26: $1c
    xor $38                                       ; $5c27: $ee $38
    sbc [hl]                                      ; $5c29: $9e
    ld c, [hl]                                    ; $5c2a: $4e
    sub [hl]                                      ; $5c2b: $96
    cp l                                          ; $5c2c: $bd
    ld h, h                                       ; $5c2d: $64
    db $dd                                        ; $5c2e: $dd
    sub [hl]                                      ; $5c2f: $96
    pop de                                        ; $5c30: $d1
    cp c                                          ; $5c31: $b9
    jp nc, $62ba                                  ; $5c32: $d2 $ba $62

    rst $28                                       ; $5c35: $ef
    call nz, Call_000_2c1c                        ; $5c36: $c4 $1c $2c
    db $10                                        ; $5c39: $10
    ld bc, $fadd                                  ; $5c3a: $01 $dd $fa
    ld e, h                                       ; $5c3d: $5c
    ei                                            ; $5c3e: $fb

Call_057_5c3f:
    cp e                                          ; $5c3f: $bb
    ld [bc], a                                    ; $5c40: $02
    xor $38                                       ; $5c41: $ee $38
    sbc [hl]                                      ; $5c43: $9e
    ld c, [hl]                                    ; $5c44: $4e
    sub [hl]                                      ; $5c45: $96
    cp l                                          ; $5c46: $bd
    ld h, h                                       ; $5c47: $64
    db $dd                                        ; $5c48: $dd
    sub [hl]                                      ; $5c49: $96

jr_057_5c4a:
    pop de                                        ; $5c4a: $d1
    cp c                                          ; $5c4b: $b9
    jp nc, $62ba                                  ; $5c4c: $d2 $ba $62

    rst $28                                       ; $5c4f: $ef
    call nz, Call_000_2c1c                        ; $5c50: $c4 $1c $2c
    db $10                                        ; $5c53: $10
    ld bc, $fadd                                  ; $5c54: $01 $dd $fa
    ld e, h                                       ; $5c57: $5c
    ei                                            ; $5c58: $fb
    cp e                                          ; $5c59: $bb
    ld [de], a                                    ; $5c5a: $12
    xor $38                                       ; $5c5b: $ee $38
    sbc [hl]                                      ; $5c5d: $9e
    ld c, [hl]                                    ; $5c5e: $4e
    sub [hl]                                      ; $5c5f: $96
    cp l                                          ; $5c60: $bd
    ld h, h                                       ; $5c61: $64
    db $dd                                        ; $5c62: $dd
    sub [hl]                                      ; $5c63: $96
    pop de                                        ; $5c64: $d1
    cp c                                          ; $5c65: $b9
    jp nc, $62ba                                  ; $5c66: $d2 $ba $62

    rst $28                                       ; $5c69: $ef
    call nz, Call_000_2c1c                        ; $5c6a: $c4 $1c $2c
    db $10                                        ; $5c6d: $10
    ld bc, $fadd                                  ; $5c6e: $01 $dd $fa
    ld e, h                                       ; $5c71: $5c
    ei                                            ; $5c72: $fb
    cp e                                          ; $5c73: $bb
    ld a, [bc]                                    ; $5c74: $0a
    xor $38                                       ; $5c75: $ee $38
    sbc [hl]                                      ; $5c77: $9e
    ld c, [hl]                                    ; $5c78: $4e
    sub [hl]                                      ; $5c79: $96

Call_057_5c7a:
Jump_057_5c7a:
    cp l                                          ; $5c7a: $bd
    ld h, h                                       ; $5c7b: $64
    db $dd                                        ; $5c7c: $dd
    sub [hl]                                      ; $5c7d: $96
    pop de                                        ; $5c7e: $d1
    cp c                                          ; $5c7f: $b9
    jp nc, $62ba                                  ; $5c80: $d2 $ba $62

    rst $28                                       ; $5c83: $ef
    call nz, Call_000_2c1c                        ; $5c84: $c4 $1c $2c
    db $10                                        ; $5c87: $10
    ld bc, $fadd                                  ; $5c88: $01 $dd $fa
    ld e, h                                       ; $5c8b: $5c
    ei                                            ; $5c8c: $fb
    cp e                                          ; $5c8d: $bb
    ld a, [de]                                    ; $5c8e: $1a
    xor $38                                       ; $5c8f: $ee $38
    sbc [hl]                                      ; $5c91: $9e
    ld c, [hl]                                    ; $5c92: $4e
    sub [hl]                                      ; $5c93: $96
    cp l                                          ; $5c94: $bd
    ld h, h                                       ; $5c95: $64
    db $dd                                        ; $5c96: $dd
    sub [hl]                                      ; $5c97: $96
    pop de                                        ; $5c98: $d1
    cp c                                          ; $5c99: $b9
    jp nc, $62ba                                  ; $5c9a: $d2 $ba $62

    rst $28                                       ; $5c9d: $ef
    call nz, Call_000_2c1c                        ; $5c9e: $c4 $1c $2c
    db $10                                        ; $5ca1: $10
    ld bc, $fadd                                  ; $5ca2: $01 $dd $fa
    ld e, h                                       ; $5ca5: $5c
    ei                                            ; $5ca6: $fb
    cp e                                          ; $5ca7: $bb
    ld b, $ee                                     ; $5ca8: $06 $ee
    jr c, jr_057_5c4a                             ; $5caa: $38 $9e

    ld c, [hl]                                    ; $5cac: $4e
    sub [hl]                                      ; $5cad: $96
    cp l                                          ; $5cae: $bd
    ld h, h                                       ; $5caf: $64
    db $dd                                        ; $5cb0: $dd
    sub [hl]                                      ; $5cb1: $96
    pop de                                        ; $5cb2: $d1
    cp c                                          ; $5cb3: $b9
    jp nc, $62ba                                  ; $5cb4: $d2 $ba $62

    rst $28                                       ; $5cb7: $ef
    call nz, Call_000_2c1c                        ; $5cb8: $c4 $1c $2c
    db $10                                        ; $5cbb: $10
    ld bc, $fadd                                  ; $5cbc: $01 $dd $fa
    ld e, h                                       ; $5cbf: $5c
    ei                                            ; $5cc0: $fb
    or e                                          ; $5cc1: $b3
    inc l                                         ; $5cc2: $2c
    halt                                          ; $5cc3: $76
    call c, Call_000_0b9a                         ; $5cc4: $dc $9a $0b
    ld [hl+], a                                   ; $5cc7: $22
    db $dd                                        ; $5cc8: $dd
    ld a, [$fb5c]                                 ; $5cc9: $fa $5c $fb
    or e                                          ; $5ccc: $b3
    inc l                                         ; $5ccd: $2c
    halt                                          ; $5cce: $76
    call c, Call_000_0b9a                         ; $5ccf: $dc $9a $0b
    ld [hl+], a                                   ; $5cd2: $22
    db $dd                                        ; $5cd3: $dd
    ld a, [$fb5c]                                 ; $5cd4: $fa $5c $fb
    or e                                          ; $5cd7: $b3
    inc l                                         ; $5cd8: $2c
    halt                                          ; $5cd9: $76
    call c, Call_000_0b9a                         ; $5cda: $dc $9a $0b
    ld [hl+], a                                   ; $5cdd: $22
    db $dd                                        ; $5cde: $dd
    ld a, [$fb5c]                                 ; $5cdf: $fa $5c $fb
    or e                                          ; $5ce2: $b3
    inc l                                         ; $5ce3: $2c
    halt                                          ; $5ce4: $76
    call c, Call_000_0b9a                         ; $5ce5: $dc $9a $0b
    ld [hl+], a                                   ; $5ce8: $22
    db $dd                                        ; $5ce9: $dd
    ld a, [$fb5c]                                 ; $5cea: $fa $5c $fb
    or e                                          ; $5ced: $b3
    inc l                                         ; $5cee: $2c
    halt                                          ; $5cef: $76
    call c, Call_000_0b9a                         ; $5cf0: $dc $9a $0b
    ld [hl+], a                                   ; $5cf3: $22
    db $dd                                        ; $5cf4: $dd
    ld a, [$fb5c]                                 ; $5cf5: $fa $5c $fb
    or e                                          ; $5cf8: $b3
    inc l                                         ; $5cf9: $2c
    halt                                          ; $5cfa: $76
    call c, Call_000_0b9a                         ; $5cfb: $dc $9a $0b
    ld [hl+], a                                   ; $5cfe: $22
    db $dd                                        ; $5cff: $dd
    ld a, [$235c]                                 ; $5d00: $fa $5c $23
    xor c                                         ; $5d03: $a9
    sub c                                         ; $5d04: $91
    sub l                                         ; $5d05: $95
    ld l, c                                       ; $5d06: $69
    sbc a                                         ; $5d07: $9f
    sub e                                         ; $5d08: $93
    ld l, e                                       ; $5d09: $6b
    rst $30                                       ; $5d0a: $f7
    db $fd                                        ; $5d0b: $fd
    ld a, [hl+]                                   ; $5d0c: $2a
    daa                                           ; $5d0d: $27
    rra                                           ; $5d0e: $1f
    sub e                                         ; $5d0f: $93
    ld h, a                                       ; $5d10: $67
    ld sp, $e70b                                  ; $5d11: $31 $0b $e7
    add d                                         ; $5d14: $82
    ld [$fadd], sp                                ; $5d15: $08 $dd $fa
    ld e, h                                       ; $5d18: $5c
    ei                                            ; $5d19: $fb
    inc sp                                        ; $5d1a: $33
    adc a                                         ; $5d1b: $8f
    inc sp                                        ; $5d1c: $33
    and $c5                                       ; $5d1d: $e6 $c5
    or $ce                                        ; $5d1f: $f6 $ce
    ld [hl], c                                    ; $5d21: $71
    ld h, l                                       ; $5d22: $65
    inc c                                         ; $5d23: $0c
    ld de, $fadd                                  ; $5d24: $11 $dd $fa
    ld e, h                                       ; $5d27: $5c
    ei                                            ; $5d28: $fb
    inc sp                                        ; $5d29: $33
    adc a                                         ; $5d2a: $8f
    inc sp                                        ; $5d2b: $33
    and $c5                                       ; $5d2c: $e6 $c5
    or $ce                                        ; $5d2e: $f6 $ce
    ld [hl], c                                    ; $5d30: $71
    ld h, l                                       ; $5d31: $65

jr_057_5d32:
    inc c                                         ; $5d32: $0c
    ld de, $fadd                                  ; $5d33: $11 $dd $fa
    ld e, h                                       ; $5d36: $5c
    ei                                            ; $5d37: $fb
    ld d, e                                       ; $5d38: $53
    sub [hl]                                      ; $5d39: $96
    pop de                                        ; $5d3a: $d1
    cp c                                          ; $5d3b: $b9
    jp nc, $62ba                                  ; $5d3c: $d2 $ba $62

    cpl                                           ; $5d3f: $2f
    inc a                                         ; $5d40: $3c
    add hl, bc                                    ; $5d41: $09
    ld d, $88                                     ; $5d42: $16 $88
    nop                                           ; $5d44: $00
    db $dd                                        ; $5d45: $dd
    ld a, [$fb5c]                                 ; $5d46: $fa $5c $fb
    ld d, e                                       ; $5d49: $53
    push af                                       ; $5d4a: $f5
    inc de                                        ; $5d4b: $13
    ld b, d                                       ; $5d4c: $42
    ccf                                           ; $5d4d: $3f
    ld h, [hl]                                    ; $5d4e: $66
    adc b                                         ; $5d4f: $88
    nop                                           ; $5d50: $00
    db $dd                                        ; $5d51: $dd
    ld a, [$235c]                                 ; $5d52: $fa $5c $23
    xor c                                         ; $5d55: $a9
    ld [hl], l                                    ; $5d56: $75
    inc l                                         ; $5d57: $2c
    ld l, h                                       ; $5d58: $6c
    sub l                                         ; $5d59: $95
    dec l                                         ; $5d5a: $2d
    db $10                                        ; $5d5b: $10
    ld bc, $fadd                                  ; $5d5c: $01 $dd $fa
    ld e, h                                       ; $5d5f: $5c
    db $d3                                        ; $5d60: $d3
    reti                                          ; $5d61: $d9


    ld b, d                                       ; $5d62: $42
    rst $20                                       ; $5d63: $e7
    ld e, d                                       ; $5d64: $5a
    rst $28                                       ; $5d65: $ef
    rst $10                                       ; $5d66: $d7
    jr c, jr_057_5d32                             ; $5d67: $38 $c9

    push bc                                       ; $5d69: $c5
    db $10                                        ; $5d6a: $10
    ld bc, $fadd                                  ; $5d6b: $01 $dd $fa
    ld e, h                                       ; $5d6e: $5c
    ei                                            ; $5d6f: $fb
    ld [hl+], a                                   ; $5d70: $22
    sbc $5f                                       ; $5d71: $de $5f
    ld l, a                                       ; $5d73: $6f
    ld c, l                                       ; $5d74: $4d
    xor b                                         ; $5d75: $a8
    xor a                                         ; $5d76: $af
    adc $08                                       ; $5d77: $ce $08
    dec c                                         ; $5d79: $0d
    or e                                          ; $5d7a: $b3
    ld hl, $dd02                                  ; $5d7b: $21 $02 $dd
    ld a, [$fb5c]                                 ; $5d7e: $fa $5c $fb
    dec bc                                        ; $5d81: $0b
    ld c, a                                       ; $5d82: $4f
    add d                                         ; $5d83: $82
    ld h, l                                       ; $5d84: $65
    ld a, a                                       ; $5d85: $7f
    ld d, a                                       ; $5d86: $57
    ret nz                                        ; $5d87: $c0

    sbc c                                         ; $5d88: $99
    rst $18                                       ; $5d89: $df
    jp hl                                         ; $5d8a: $e9


    jr @+$24                                      ; $5d8b: $18 $22

    db $dd                                        ; $5d8d: $dd
    ld a, [$fb5c]                                 ; $5d8e: $fa $5c $fb

Jump_057_5d91:
    dec bc                                        ; $5d91: $0b
    ld c, a                                       ; $5d92: $4f
    add d                                         ; $5d93: $82
    ld h, l                                       ; $5d94: $65
    ld a, a                                       ; $5d95: $7f
    ld d, a                                       ; $5d96: $57
    jp nz, $df99                                  ; $5d97: $c2 $99 $df

    jp hl                                         ; $5d9a: $e9


    jr @+$24                                      ; $5d9b: $18 $22

    db $dd                                        ; $5d9d: $dd
    ld a, [$fb5c]                                 ; $5d9e: $fa $5c $fb
    dec bc                                        ; $5da1: $0b
    ld c, a                                       ; $5da2: $4f
    add d                                         ; $5da3: $82
    ld h, l                                       ; $5da4: $65

Jump_057_5da5:
    ld a, a                                       ; $5da5: $7f
    ld d, a                                       ; $5da6: $57
    pop bc                                        ; $5da7: $c1
    sbc c                                         ; $5da8: $99
    rst $18                                       ; $5da9: $df
    jp hl                                         ; $5daa: $e9


    jr @+$24                                      ; $5dab: $18 $22

    db $dd                                        ; $5dad: $dd
    ld a, [$fb5c]                                 ; $5dae: $fa $5c $fb
    dec bc                                        ; $5db1: $0b
    ld c, a                                       ; $5db2: $4f
    add d                                         ; $5db3: $82
    ld h, l                                       ; $5db4: $65
    ld a, a                                       ; $5db5: $7f
    ld d, a                                       ; $5db6: $57
    jp $df99                                      ; $5db7: $c3 $99 $df


    jp hl                                         ; $5dba: $e9


    jr @+$24                                      ; $5dbb: $18 $22

    db $dd                                        ; $5dbd: $dd
    ld a, [$fb5c]                                 ; $5dbe: $fa $5c $fb
    dec bc                                        ; $5dc1: $0b
    ld c, a                                       ; $5dc2: $4f
    add d                                         ; $5dc3: $82
    ld h, l                                       ; $5dc4: $65
    ld a, a                                       ; $5dc5: $7f
    rst $10                                       ; $5dc6: $d7
    ret nz                                        ; $5dc7: $c0

    sbc c                                         ; $5dc8: $99
    rst $18                                       ; $5dc9: $df
    jp hl                                         ; $5dca: $e9


    jr @+$24                                      ; $5dcb: $18 $22

    db $dd                                        ; $5dcd: $dd
    ld a, [$fb5c]                                 ; $5dce: $fa $5c $fb
    dec bc                                        ; $5dd1: $0b
    ld c, a                                       ; $5dd2: $4f
    add d                                         ; $5dd3: $82
    ld h, l                                       ; $5dd4: $65
    ld a, a                                       ; $5dd5: $7f
    rst $10                                       ; $5dd6: $d7
    jp nz, $df99                                  ; $5dd7: $c2 $99 $df

    jp hl                                         ; $5dda: $e9


    jr jr_057_5dff                                ; $5ddb: $18 $22

    db $dd                                        ; $5ddd: $dd
    ld a, [$fb5c]                                 ; $5dde: $fa $5c $fb
    dec bc                                        ; $5de1: $0b
    ld c, a                                       ; $5de2: $4f
    add d                                         ; $5de3: $82
    ld h, l                                       ; $5de4: $65
    ld a, a                                       ; $5de5: $7f
    rst $10                                       ; $5de6: $d7
    pop bc                                        ; $5de7: $c1
    sbc c                                         ; $5de8: $99
    rst $18                                       ; $5de9: $df
    jp hl                                         ; $5dea: $e9


    jr jr_057_5e0f                                ; $5deb: $18 $22

    db $dd                                        ; $5ded: $dd
    ld a, [$fb5c]                                 ; $5dee: $fa $5c $fb
    ld l, e                                       ; $5df1: $6b
    ld c, $3e                                     ; $5df2: $0e $3e
    sbc l                                         ; $5df4: $9d
    ld b, a                                       ; $5df5: $47
    sub d                                         ; $5df6: $92
    rrca                                          ; $5df7: $0f
    ld [hl+], a                                   ; $5df8: $22
    db $dd                                        ; $5df9: $dd
    ld a, [$fb5c]                                 ; $5dfa: $fa $5c $fb
    cp e                                          ; $5dfd: $bb
    ei                                            ; $5dfe: $fb

jr_057_5dff:
    add l                                         ; $5dff: $85
    ld c, a                                       ; $5e00: $4f
    db $fc                                        ; $5e01: $fc
    jp $beb9                                      ; $5e02: $c3 $b9 $be


    rst $08                                       ; $5e05: $cf
    ld l, e                                       ; $5e06: $6b
    ld d, $88                                     ; $5e07: $16 $88
    nop                                           ; $5e09: $00
    db $dd                                        ; $5e0a: $dd
    ld a, [$235c]                                 ; $5e0b: $fa $5c $23
    xor c                                         ; $5e0e: $a9

jr_057_5e0f:
    dec e                                         ; $5e0f: $1d
    ld c, l                                       ; $5e10: $4d
    db $f4                                        ; $5e11: $f4
    ld h, c                                       ; $5e12: $61
    db $fd                                        ; $5e13: $fd
    ld b, c                                       ; $5e14: $41
    inc b                                         ; $5e15: $04
    db $dd                                        ; $5e16: $dd
    ld a, [$fb5c]                                 ; $5e17: $fa $5c $fb
    ld c, e                                       ; $5e1a: $4b
    rst $38                                       ; $5e1b: $ff
    ld [hl], h                                    ; $5e1c: $74
    ei                                            ; $5e1d: $fb
    sbc c                                         ; $5e1e: $99
    dec e                                         ; $5e1f: $1d
    call $0110                                    ; $5e20: $cd $10 $01

Call_057_5e23:
    db $dd                                        ; $5e23: $dd
    ld a, [$fb5c]                                 ; $5e24: $fa $5c $fb
    ld c, e                                       ; $5e27: $4b
    rst $38                                       ; $5e28: $ff
    ld [hl], h                                    ; $5e29: $74
    ei                                            ; $5e2a: $fb
    sbc c                                         ; $5e2b: $99
    dec e                                         ; $5e2c: $1d
    call $0110                                    ; $5e2d: $cd $10 $01
    db $dd                                        ; $5e30: $dd
    ld a, [$235c]                                 ; $5e31: $fa $5c $23
    xor c                                         ; $5e34: $a9
    sub c                                         ; $5e35: $91
    sub l                                         ; $5e36: $95
    ld l, c                                       ; $5e37: $69
    sbc a                                         ; $5e38: $9f
    sub e                                         ; $5e39: $93
    ld l, e                                       ; $5e3a: $6b
    ld [hl], a                                    ; $5e3b: $77
    add e                                         ; $5e3c: $83
    ld c, [hl]                                    ; $5e3d: $4e
    ld de, $c8bd                                  ; $5e3e: $11 $bd $c8
    or e                                          ; $5e41: $b3
    sbc b                                         ; $5e42: $98
    add l                                         ; $5e43: $85
    ld [hl], e                                    ; $5e44: $73
    ld b, c                                       ; $5e45: $41
    inc b                                         ; $5e46: $04
    db $dd                                        ; $5e47: $dd
    ld a, [$fb5c]                                 ; $5e48: $fa $5c $fb
    db $eb                                        ; $5e4b: $eb
    sbc l                                         ; $5e4c: $9d
    ld sp, $5b99                                  ; $5e4d: $31 $99 $5b
    ld c, $ff                                     ; $5e50: $0e $ff
    cp h                                          ; $5e52: $bc
    ld h, [hl]                                    ; $5e53: $66
    add c                                         ; $5e54: $81
    ld [$fadd], sp                                ; $5e55: $08 $dd $fa
    ld e, h                                       ; $5e58: $5c
    inc hl                                        ; $5e59: $23
    xor c                                         ; $5e5a: $a9
    pop hl                                        ; $5e5b: $e1
    and a                                         ; $5e5c: $a7
    ld e, $de                                     ; $5e5d: $1e $de
    ld a, l                                       ; $5e5f: $7d
    add hl, de                                    ; $5e60: $19
    db $d3                                        ; $5e61: $d3
    push af                                       ; $5e62: $f5
    ld sp, hl                                     ; $5e63: $f9
    inc l                                         ; $5e64: $2c
    ld h, [hl]                                    ; $5e65: $66
    pop hl                                        ; $5e66: $e1
    ld e, h                                       ; $5e67: $5c
    db $10                                        ; $5e68: $10
    ld bc, $fadd                                  ; $5e69: $01 $dd $fa
    ld e, h                                       ; $5e6c: $5c
    ei                                            ; $5e6d: $fb
    cp e                                          ; $5e6e: $bb
    xor l                                         ; $5e6f: $ad
    db $fd                                        ; $5e70: $fd
    ld a, b                                       ; $5e71: $78
    ld a, [hl]                                    ; $5e72: $7e
    sbc l                                         ; $5e73: $9d
    rst $10                                       ; $5e74: $d7
    inc l                                         ; $5e75: $2c
    db $10                                        ; $5e76: $10
    ld bc, $fadd                                  ; $5e77: $01 $dd $fa
    ld e, h                                       ; $5e7a: $5c
    inc hl                                        ; $5e7b: $23
    xor c                                         ; $5e7c: $a9
    db $dd                                        ; $5e7d: $dd
    ld d, a                                       ; $5e7e: $57
    sbc c                                         ; $5e7f: $99
    or $39                                        ; $5e80: $f6 $39
    cp c                                          ; $5e82: $b9
    halt                                          ; $5e83: $76
    ld h, a                                       ; $5e84: $67
    ld e, c                                       ; $5e85: $59
    ld b, d                                       ; $5e86: $42
    di                                            ; $5e87: $f3
    ld e, c                                       ; $5e88: $59
    call z, $b9c2                                 ; $5e89: $cc $c2 $b9
    jr nz, @+$04                                  ; $5e8c: $20 $02

    db $dd                                        ; $5e8e: $dd
    ld a, [$235c]                                 ; $5e8f: $fa $5c $23
    xor c                                         ; $5e92: $a9
    db $dd                                        ; $5e93: $dd
    ld d, a                                       ; $5e94: $57
    sbc c                                         ; $5e95: $99
    or $39                                        ; $5e96: $f6 $39
    cp c                                          ; $5e98: $b9
    sub [hl]                                      ; $5e99: $96
    jp nc, $3af4                                  ; $5e9a: $d2 $f4 $3a

    adc e                                         ; $5e9d: $8b
    ld e, c                                       ; $5e9e: $59
    jr c, jr_057_5eb8                             ; $5e9f: $38 $17

    ld b, h                                       ; $5ea1: $44
    db $dd                                        ; $5ea2: $dd
    ld a, [$235c]                                 ; $5ea3: $fa $5c $23
    xor c                                         ; $5ea6: $a9
    db $dd                                        ; $5ea7: $dd
    ld d, a                                       ; $5ea8: $57
    sbc c                                         ; $5ea9: $99
    or $39                                        ; $5eaa: $f6 $39
    cp c                                          ; $5eac: $b9
    sub [hl]                                      ; $5ead: $96

Call_057_5eae:
    jp nz, $b63f                                  ; $5eae: $c2 $3f $b6

    cpl                                           ; $5eb1: $2f
    pop hl                                        ; $5eb2: $e1
    inc l                                         ; $5eb3: $2c
    ld h, [hl]                                    ; $5eb4: $66
    pop hl                                        ; $5eb5: $e1
    ld e, h                                       ; $5eb6: $5c
    db $10                                        ; $5eb7: $10

jr_057_5eb8:
    ld bc, $fadd                                  ; $5eb8: $01 $dd $fa
    ld e, h                                       ; $5ebb: $5c
    ei                                            ; $5ebc: $fb
    inc sp                                        ; $5ebd: $33
    xor a                                         ; $5ebe: $af
    cp l                                          ; $5ebf: $bd
    ldh [$aa], a                                  ; $5ec0: $e0 $aa
    adc h                                         ; $5ec2: $8c
    ld hl, $dd02                                  ; $5ec3: $21 $02 $dd
    ld a, [$fb5c]                                 ; $5ec6: $fa $5c $fb
    inc bc                                        ; $5ec9: $03

jr_057_5eca:
    ld e, b                                       ; $5eca: $58
    ld c, a                                       ; $5ecb: $4f
    ld c, $fd                                     ; $5ecc: $0e $fd
    add e                                         ; $5ece: $83
    ld e, [hl]                                    ; $5ecf: $5e
    rst $28                                       ; $5ed0: $ef
    ld [hl], h                                    ; $5ed1: $74
    or d                                          ; $5ed2: $b2
    sbc h                                         ; $5ed3: $9c
    di                                            ; $5ed4: $f3
    sbc d                                         ; $5ed5: $9a
    dec b                                         ; $5ed6: $05
    ld [hl+], a                                   ; $5ed7: $22
    db $dd                                        ; $5ed8: $dd
    ld a, [$fb5c]                                 ; $5ed9: $fa $5c $fb
    inc bc                                        ; $5edc: $03
    ld e, b                                       ; $5edd: $58
    sbc c                                         ; $5ede: $99
    xor $bb                                       ; $5edf: $ee $bb
    ld [hl-], a                                   ; $5ee1: $32
    add $66                                       ; $5ee2: $c6 $66
    adc b                                         ; $5ee4: $88
    nop                                           ; $5ee5: $00
    db $dd                                        ; $5ee6: $dd
    ld a, [$fb5c]                                 ; $5ee7: $fa $5c $fb
    or e                                          ; $5eea: $b3
    inc l                                         ; $5eeb: $2c
    halt                                          ; $5eec: $76
    call c, Call_057_6b9a                         ; $5eed: $dc $9a $6b
    cp d                                          ; $5ef0: $ba
    jr z, jr_057_5eca                             ; $5ef1: $28 $d7

    ld l, [hl]                                    ; $5ef3: $6e
    ld l, a                                       ; $5ef4: $6f
    cp a                                          ; $5ef5: $bf
    ld b, d                                       ; $5ef6: $42
    ld h, [hl]                                    ; $5ef7: $66
    add [hl]                                      ; $5ef8: $86
    ld [$fadd], sp                                ; $5ef9: $08 $dd $fa

jr_057_5efc:
    ld e, h                                       ; $5efc: $5c
    inc hl                                        ; $5efd: $23
    xor c                                         ; $5efe: $a9
    db $dd                                        ; $5eff: $dd
    rst $20                                       ; $5f00: $e7
    xor d                                         ; $5f01: $aa
    inc l                                         ; $5f02: $2c
    ld h, c                                       ; $5f03: $61
    ld a, [c]                                     ; $5f04: $f2
    sub a                                         ; $5f05: $97
    jp $bcb8                                      ; $5f06: $c3 $b8 $bc


    sbc b                                         ; $5f09: $98
    cp h                                          ; $5f0a: $bc
    ld h, d                                       ; $5f0b: $62
    adc b                                         ; $5f0c: $88
    nop                                           ; $5f0d: $00
    db $dd                                        ; $5f0e: $dd
    ld a, [$235c]                                 ; $5f0f: $fa $5c $23
    xor c                                         ; $5f12: $a9
    dec e                                         ; $5f13: $1d
    xor [hl]                                      ; $5f14: $ae
    daa                                           ; $5f15: $27
    ld [$b12d], a                                 ; $5f16: $ea $2d $b1
    jp c, $3917                                   ; $5f19: $da $17 $39

    sbc l                                         ; $5f1c: $9d
    ld l, $0b                                     ; $5f1d: $2e $0b
    ld b, h                                       ; $5f1f: $44
    db $dd                                        ; $5f20: $dd
    ld a, [$fb5c]                                 ; $5f21: $fa $5c $fb
    ei                                            ; $5f24: $fb
    ld [hl+], a                                   ; $5f25: $22
    pop hl                                        ; $5f26: $e1
    ld c, c                                       ; $5f27: $49
    jr c, @-$3a                                   ; $5f28: $38 $c4

    ld l, e                                       ; $5f2a: $6b
    call $9232                                    ; $5f2b: $cd $32 $92
    ld e, d                                       ; $5f2e: $5a
    rst $28                                       ; $5f2f: $ef
    rst $10                                       ; $5f30: $d7
    jr c, jr_057_5efc                             ; $5f31: $38 $c9

    push bc                                       ; $5f33: $c5
    db $10                                        ; $5f34: $10
    ld bc, $fadd                                  ; $5f35: $01 $dd $fa
    ld e, h                                       ; $5f38: $5c
    ei                                            ; $5f39: $fb
    dec bc                                        ; $5f3a: $0b
    ld a, [hl-]                                   ; $5f3b: $3a
    or e                                          ; $5f3c: $b3
    cpl                                           ; $5f3d: $2f
    add hl, sp                                    ; $5f3e: $39
    add hl, sp                                    ; $5f3f: $39
    pop af                                        ; $5f40: $f1
    ld a, c                                       ; $5f41: $79
    call $bfb2                                    ; $5f42: $cd $b2 $bf
    sbc $f5                                       ; $5f45: $de $f5
    ld l, c                                       ; $5f47: $69
    ld a, [$804b]                                 ; $5f48: $fa $4b $80
    ld [$fadd], sp                                ; $5f4b: $08 $dd $fa
    ld e, h                                       ; $5f4e: $5c
    ei                                            ; $5f4f: $fb
    sla h                                         ; $5f50: $cb $24
    ld c, c                                       ; $5f52: $49
    db $e4                                        ; $5f53: $e4
    and [hl]                                      ; $5f54: $a6
    ld c, [hl]                                    ; $5f55: $4e
    ld h, l                                       ; $5f56: $65
    adc h                                         ; $5f57: $8c
    call $ebfb                                    ; $5f58: $cd $fb $eb
    ld e, l                                       ; $5f5b: $5d
    sbc a                                         ; $5f5c: $9f
    and [hl]                                      ; $5f5d: $a6
    cp a                                          ; $5f5e: $bf
    inc b                                         ; $5f5f: $04
    adc b                                         ; $5f60: $88
    nop                                           ; $5f61: $00
    db $dd                                        ; $5f62: $dd
    ld a, [$fb5c]                                 ; $5f63: $fa $5c $fb
    inc sp                                        ; $5f66: $33
    cpl                                           ; $5f67: $2f
    db $dd                                        ; $5f68: $dd
    push bc                                       ; $5f69: $c5
    db $ec                                        ; $5f6a: $ec
    sbc b                                         ; $5f6b: $98
    sbc c                                         ; $5f6c: $99
    ld hl, $dd02                                  ; $5f6d: $21 $02 $dd
    ld a, [$235c]                                 ; $5f70: $fa $5c $23
    xor c                                         ; $5f73: $a9
    db $dd                                        ; $5f74: $dd
    di                                            ; $5f75: $f3
    ld c, [hl]                                    ; $5f76: $4e
    inc a                                         ; $5f77: $3c
    adc e                                         ; $5f78: $8b
    ld e, c                                       ; $5f79: $59
    jr c, @+$19                                   ; $5f7a: $38 $17

    ld b, h                                       ; $5f7c: $44
    db $dd                                        ; $5f7d: $dd
    ld a, [$fb5c]                                 ; $5f7e: $fa $5c $fb
    ld c, e                                       ; $5f81: $4b
    pop hl                                        ; $5f82: $e1
    ld e, h                                       ; $5f83: $5c
    rst $20                                       ; $5f84: $e7
    dec [hl]                                      ; $5f85: $35
    dec bc                                        ; $5f86: $0b
    ld b, h                                       ; $5f87: $44
    db $dd                                        ; $5f88: $dd
    ld a, [$fb5c]                                 ; $5f89: $fa $5c $fb
    ld l, e                                       ; $5f8c: $6b
    ld a, l                                       ; $5f8d: $7d
    sub l                                         ; $5f8e: $95
    dec hl                                        ; $5f8f: $2b
    jp hl                                         ; $5f90: $e9


    xor e                                         ; $5f91: $ab
    call c, $198e                                 ; $5f92: $dc $8e $19
    ld [hl+], a                                   ; $5f95: $22
    db $dd                                        ; $5f96: $dd
    ld a, [$fb5c]                                 ; $5f97: $fa $5c $fb
    inc hl                                        ; $5f9a: $23
    ld [hl], e                                    ; $5f9b: $73
    ld [hl], c                                    ; $5f9c: $71
    sbc c                                         ; $5f9d: $99
    cp c                                          ; $5f9e: $b9
    ld [hl-], a                                   ; $5f9f: $32
    add $66                                       ; $5fa0: $c6 $66
    adc b                                         ; $5fa2: $88
    nop                                           ; $5fa3: $00
    db $dd                                        ; $5fa4: $dd
    ld a, [$fb5c]                                 ; $5fa5: $fa $5c $fb
    or e                                          ; $5fa8: $b3
    inc l                                         ; $5fa9: $2c
    halt                                          ; $5faa: $76
    call c, Call_000_0b9a                         ; $5fab: $dc $9a $0b
    ld [hl+], a                                   ; $5fae: $22
    db $dd                                        ; $5faf: $dd
    ld a, [$fb5c]                                 ; $5fb0: $fa $5c $fb
    ld [hl], e                                    ; $5fb3: $73

jr_057_5fb4:
    ei                                            ; $5fb4: $fb
    pop af                                        ; $5fb5: $f1
    db $fc                                        ; $5fb6: $fc
    ld c, d                                       ; $5fb7: $4a
    or a                                          ; $5fb8: $b7
    daa                                           ; $5fb9: $27
    ld [$384b], a                                 ; $5fba: $ea $4b $38
    sub l                                         ; $5fbd: $95
    ld sp, $4336                                  ; $5fbe: $31 $36 $43
    inc b                                         ; $5fc1: $04
    db $dd                                        ; $5fc2: $dd

jr_057_5fc3:
    ld a, [$fb5c]                                 ; $5fc3: $fa $5c $fb
    db $eb                                        ; $5fc6: $eb
    ld a, c                                       ; $5fc7: $79
    ld d, l                                       ; $5fc8: $55
    sbc d                                         ; $5fc9: $9a
    inc sp                                        ; $5fca: $33
    ld [hl+], a                                   ; $5fcb: $22
    ld [hl], c                                    ; $5fcc: $71
    ld c, e                                       ; $5fcd: $4b
    jr nz, @+$04                                  ; $5fce: $20 $02

    db $dd                                        ; $5fd0: $dd
    ld a, [$fb5c]                                 ; $5fd1: $fa $5c $fb
    ld a, e                                       ; $5fd4: $7b
    add a                                         ; $5fd5: $87
    dec hl                                        ; $5fd6: $2b
    ld c, e                                       ; $5fd7: $4b
    add $3f                                       ; $5fd8: $c6 $3f
    inc a                                         ; $5fda: $3c
    add hl, bc                                    ; $5fdb: $09
    ld d, $88                                     ; $5fdc: $16 $88
    nop                                           ; $5fde: $00
    db $dd                                        ; $5fdf: $dd
    ld a, [$d35c]                                 ; $5fe0: $fa $5c $d3
    reti                                          ; $5fe3: $d9


    ld b, d                                       ; $5fe4: $42
    rst $20                                       ; $5fe5: $e7
    ld e, d                                       ; $5fe6: $5a
    rst $28                                       ; $5fe7: $ef
    rst $10                                       ; $5fe8: $d7
    jr c, jr_057_5fb4                             ; $5fe9: $38 $c9

    push bc                                       ; $5feb: $c5
    db $10                                        ; $5fec: $10
    ld bc, $fadd                                  ; $5fed: $01 $dd $fa
    ld e, h                                       ; $5ff0: $5c
    db $d3                                        ; $5ff1: $d3
    reti                                          ; $5ff2: $d9


    ld b, d                                       ; $5ff3: $42
    rst $20                                       ; $5ff4: $e7
    ld e, d                                       ; $5ff5: $5a
    rst $28                                       ; $5ff6: $ef
    rst $10                                       ; $5ff7: $d7
    jr c, jr_057_5fc3                             ; $5ff8: $38 $c9

    push bc                                       ; $5ffa: $c5
    db $10                                        ; $5ffb: $10
    ld bc, $fadd                                  ; $5ffc: $01 $dd $fa
    ld e, h                                       ; $5fff: $5c
    db $d3                                        ; $6000: $d3
    reti                                          ; $6001: $d9


    ld b, d                                       ; $6002: $42
    rst $20                                       ; $6003: $e7
    ld e, d                                       ; $6004: $5a
    rst $28                                       ; $6005: $ef
    rst $10                                       ; $6006: $d7
    jr c, @-$35                                   ; $6007: $38 $c9

    push bc                                       ; $6009: $c5
    db $10                                        ; $600a: $10
    ld bc, $fadd                                  ; $600b: $01 $dd $fa
    ld e, h                                       ; $600e: $5c
    db $d3                                        ; $600f: $d3
    reti                                          ; $6010: $d9


    ld b, d                                       ; $6011: $42
    rst $20                                       ; $6012: $e7
    ld e, d                                       ; $6013: $5a
    ld l, a                                       ; $6014: $6f
    ld c, l                                       ; $6015: $4d
    xor b                                         ; $6016: $a8
    xor a                                         ; $6017: $af
    adc $08                                       ; $6018: $ce $08
    dec c                                         ; $601a: $0d
    or e                                          ; $601b: $b3
    ld hl, $dd02                                  ; $601c: $21 $02 $dd
    ld a, [$fb5c]                                 ; $601f: $fa $5c $fb
    dec sp                                        ; $6022: $3b
    rrca                                          ; $6023: $0f
    scf                                           ; $6024: $37
    rst $00                                       ; $6025: $c7
    ld e, h                                       ; $6026: $5c
    inc e                                         ; $6027: $1c
    sbc e                                         ; $6028: $9b
    sbc [hl]                                      ; $6029: $9e
    ld c, [hl]                                    ; $602a: $4e
    ld e, a                                       ; $602b: $5f
    ld d, d                                       ; $602c: $52
    add hl, de                                    ; $602d: $19
    ld h, e                                       ; $602e: $63
    inc sp                                        ; $602f: $33
    ld b, h                                       ; $6030: $44
    db $dd                                        ; $6031: $dd
    ld a, [$fb5c]                                 ; $6032: $fa $5c $fb
    ld c, e                                       ; $6035: $4b
    pop hl                                        ; $6036: $e1
    ld e, h                                       ; $6037: $5c
    rst $20                                       ; $6038: $e7
    dec [hl]                                      ; $6039: $35
    dec bc                                        ; $603a: $0b
    ld b, h                                       ; $603b: $44
    db $dd                                        ; $603c: $dd
    ld a, [$fb5c]                                 ; $603d: $fa $5c $fb
    ld d, e                                       ; $6040: $53
    and $11                                       ; $6041: $e6 $11
    add $d8                                       ; $6043: $c6 $d8
    db $ed                                        ; $6045: $ed
    rlca                                          ; $6046: $07
    cpl                                           ; $6047: $2f
    ld h, h                                       ; $6048: $64
    ld c, h                                       ; $6049: $4c
    cp d                                          ; $604a: $ba
    ld [hl-], a                                   ; $604b: $32
    add $66                                       ; $604c: $c6 $66
    adc b                                         ; $604e: $88
    nop                                           ; $604f: $00
    db $dd                                        ; $6050: $dd
    ld a, [$235c]                                 ; $6051: $fa $5c $23
    xor c                                         ; $6054: $a9
    push bc                                       ; $6055: $c5
    inc l                                         ; $6056: $2c
    sbc h                                         ; $6057: $9c
    srl h                                         ; $6058: $cb $3c
    ld a, [hl-]                                   ; $605a: $3a
    rst $10                                       ; $605b: $d7
    ld c, [hl]                                    ; $605c: $4e
    xor h                                         ; $605d: $ac
    sbc a                                         ; $605e: $9f
    ld hl, sp-$44                                 ; $605f: $f8 $bc
    add sp, -$7e                                  ; $6061: $e8 $82
    ld [$fadd], sp                                ; $6063: $08 $dd $fa
    ld e, h                                       ; $6066: $5c
    inc hl                                        ; $6067: $23
    xor c                                         ; $6068: $a9

jr_057_6069:
    dec b                                         ; $6069: $05
    sbc l                                         ; $606a: $9d
    reti                                          ; $606b: $d9


    ld a, [hl+]                                   ; $606c: $2a
    ld e, e                                       ; $606d: $5b
    jr nz, @+$04                                  ; $606e: $20 $02

    db $dd                                        ; $6070: $dd
    ld a, [$fb5c]                                 ; $6071: $fa $5c $fb
    db $eb                                        ; $6074: $eb
    sbc l                                         ; $6075: $9d
    ld sp, $ac69                                  ; $6076: $31 $69 $ac
    sbc a                                         ; $6079: $9f
    rra                                           ; $607a: $1f
    db $e3                                        ; $607b: $e3
    ld a, c                                       ; $607c: $79
    call $1102                                    ; $607d: $cd $02 $11
    db $dd                                        ; $6080: $dd
    ld a, [$fb5c]                                 ; $6081: $fa $5c $fb
    db $eb                                        ; $6084: $eb
    sbc l                                         ; $6085: $9d
    ld sp, $a8e9                                  ; $6086: $31 $e9 $a8
    set 4, c                                      ; $6089: $cb $e1
    di                                            ; $608b: $f3
    sbc d                                         ; $608c: $9a
    dec b                                         ; $608d: $05
    ld [hl+], a                                   ; $608e: $22
    db $dd                                        ; $608f: $dd
    ld a, [$fb5c]                                 ; $6090: $fa $5c $fb

Jump_057_6093:
    adc e                                         ; $6093: $8b
    cp c                                          ; $6094: $b9
    sbc b                                         ; $6095: $98

Call_057_6096:
    ld c, b                                       ; $6096: $48
    call c, Call_000_3312                         ; $6097: $dc $12 $33
    ld b, h                                       ; $609a: $44
    db $dd                                        ; $609b: $dd
    ld a, [$fb5c]                                 ; $609c: $fa $5c $fb
    or e                                          ; $609f: $b3
    adc h                                         ; $60a0: $8c
    jr nc, jr_057_6069                            ; $60a1: $30 $c6

    ld l, [hl]                                    ; $60a3: $6e
    ccf                                           ; $60a4: $3f
    inc l                                         ; $60a5: $2c
    inc a                                         ; $60a6: $3c
    add hl, bc                                    ; $60a7: $09
    db $10                                        ; $60a8: $10
    ld bc, $fadd                                  ; $60a9: $01 $dd $fa
    ld e, h                                       ; $60ac: $5c
    inc hl                                        ; $60ad: $23
    xor c                                         ; $60ae: $a9
    sub c                                         ; $60af: $91
    sub l                                         ; $60b0: $95
    ld l, c                                       ; $60b1: $69
    sbc a                                         ; $60b2: $9f
    sub e                                         ; $60b3: $93
    ld l, e                                       ; $60b4: $6b
    ld [hl], a                                    ; $60b5: $77
    cp $c3                                        ; $60b6: $fe $c3
    ld a, $8b                                     ; $60b8: $3e $8b
    ld e, c                                       ; $60ba: $59
    jr c, jr_057_60d4                             ; $60bb: $38 $17

    ld b, h                                       ; $60bd: $44
    db $dd                                        ; $60be: $dd
    ld a, [$fb5c]                                 ; $60bf: $fa $5c $fb
    inc sp                                        ; $60c2: $33
    adc a                                         ; $60c3: $8f
    inc sp                                        ; $60c4: $33
    and $c5                                       ; $60c5: $e6 $c5
    or $ce                                        ; $60c7: $f6 $ce
    ld [hl], c                                    ; $60c9: $71
    ld h, l                                       ; $60ca: $65
    inc c                                         ; $60cb: $0c
    ld de, $fadd                                  ; $60cc: $11 $dd $fa
    ld e, h                                       ; $60cf: $5c
    ei                                            ; $60d0: $fb
    cp e                                          ; $60d1: $bb
    cp l                                          ; $60d2: $bd
    ld l, c                                       ; $60d3: $69

jr_057_60d4:
    inc l                                         ; $60d4: $2c
    jp z, $ae93                                   ; $60d5: $ca $93 $ae

    ret c                                         ; $60d8: $d8

    ld e, h                                       ; $60d9: $5c
    sub a                                         ; $60da: $97
    ld d, h                                       ; $60db: $54
    add $d8                                       ; $60dc: $c6 $d8
    inc c                                         ; $60de: $0c
    ld de, $fadd                                  ; $60df: $11 $dd $fa
    ld e, h                                       ; $60e2: $5c
    ei                                            ; $60e3: $fb
    dec sp                                        ; $60e4: $3b
    sbc h                                         ; $60e5: $9c
    db $eb                                        ; $60e6: $eb
    cp h                                          ; $60e7: $bc
    ld h, [hl]                                    ; $60e8: $66
    add c                                         ; $60e9: $81
    ld [$ff80], sp                                ; $60ea: $08 $80 $ff
    add hl, sp                                    ; $60ed: $39
    ld h, e                                       ; $60ee: $63
    ld b, a                                       ; $60ef: $47
    ret                                           ; $60f0: $c9


    dec l                                         ; $60f1: $2d
    add a                                         ; $60f2: $87
    ccf                                           ; $60f3: $3f
    ldh a, [$bb]                                  ; $60f4: $f0 $bb
    ld [c], a                                     ; $60f6: $e2
    or d                                          ; $60f7: $b2
    sra [hl]                                      ; $60f8: $cb $2e
    rst $18                                       ; $60fa: $df
    call $81f8                                    ; $60fb: $cd $f8 $81
    di                                            ; $60fe: $f3
    ld l, [hl]                                    ; $60ff: $6e
    inc de                                        ; $6100: $13
    halt                                          ; $6101: $76
    pop af                                        ; $6102: $f1
    ei                                            ; $6103: $fb
    add d                                         ; $6104: $82
    dec l                                         ; $6105: $2d
    xor h                                         ; $6106: $ac
    db $dd                                        ; $6107: $dd
    dec e                                         ; $6108: $1d
    ld [bc], a                                    ; $6109: $02
    ld a, [de]                                    ; $610a: $1a
    ld c, $e4                                     ; $610b: $0e $e4
    ld b, $f2                                     ; $610d: $06 $f2
    ld h, [hl]                                    ; $610f: $66
    db $fc                                        ; $6110: $fc
    ret nz                                        ; $6111: $c0

    ld a, c                                       ; $6112: $79
    or a                                          ; $6113: $b7
    add hl, bc                                    ; $6114: $09
    cp e                                          ; $6115: $bb
    ld hl, sp+$7d                                 ; $6116: $f8 $7d
    pop bc                                        ; $6118: $c1
    ld d, $5e                                     ; $6119: $16 $5e
    ld c, $6b                                     ; $611b: $0e $6b
    add hl, sp                                    ; $611d: $39
    ld h, h                                       ; $611e: $64
    bit 5, [hl]                                   ; $611f: $cb $6e
    add $0f                                       ; $6121: $c6 $0f
    sbc h                                         ; $6123: $9c
    ld [hl], a                                    ; $6124: $77
    sbc e                                         ; $6125: $9b
    or b                                          ; $6126: $b0
    adc e                                         ; $6127: $8b
    rst $18                                       ; $6128: $df
    rla                                           ; $6129: $17
    ld l, h                                       ; $612a: $6c
    pop hl                                        ; $612b: $e1
    ld e, l                                       ; $612c: $5d
    cp d                                          ; $612d: $ba
    sbc $f5                                       ; $612e: $de $f5
    ld c, c                                       ; $6130: $49
    adc $f2                                       ; $6131: $ce $f2
    reti                                          ; $6133: $d9


    ld [hl], e                                    ; $6134: $73
    xor l                                         ; $6135: $ad
    inc e                                         ; $6136: $1c
    cp $e1                                        ; $6137: $fe $e1
    ld [hl], d                                    ; $6139: $72
    or c                                          ; $613a: $b1
    sub a                                         ; $613b: $97
    cp h                                          ; $613c: $bc
    ld [hl-], a                                   ; $613d: $32
    halt                                          ; $613e: $76
    ld b, l                                       ; $613f: $45
    rst $10                                       ; $6140: $d7
    ld hl, sp+$37                                 ; $6141: $f8 $37
    and d                                         ; $6143: $a2
    xor e                                         ; $6144: $ab
    inc l                                         ; $6145: $2c
    jp z, $19bb                                   ; $6146: $ca $bb $19

    ccf                                           ; $6149: $3f
    ld [hl], b                                    ; $614a: $70
    sbc $6d                                       ; $614b: $de $6d
    jp nz, Jump_057_7e2e                          ; $614d: $c2 $2e $7e

    ld e, a                                       ; $6150: $5f
    or b                                          ; $6151: $b0
    add l                                         ; $6152: $85
    or l                                          ; $6153: $b5
    cp e                                          ; $6154: $bb
    ld b, e                                       ; $6155: $43
    ld b, b                                       ; $6156: $40
    jp Jump_000_01fd                              ; $6157: $c3 $fd $01


    ld c, d                                       ; $615a: $4a
    cp c                                          ; $615b: $b9
    ld a, c                                       ; $615c: $79
    add hl, sp                                    ; $615d: $39
    ld e, h                                       ; $615e: $5c
    ld [$5cd6], a                                 ; $615f: $ea $d6 $5c
    ld a, e                                       ; $6162: $7b
    and d                                         ; $6163: $a2
    jp z, Jump_057_4f6b                           ; $6164: $ca $6b $4f

    inc d                                         ; $6167: $14
    inc e                                         ; $6168: $1c
    ret z                                         ; $6169: $c8

    dec c                                         ; $616a: $0d
    db $e4                                        ; $616b: $e4
    db $dd                                        ; $616c: $dd
    ld a, [$00d1]                                 ; $616d: $fa $d1 $00
    db $dd                                        ; $6170: $dd
    call $faba                                    ; $6171: $cd $ba $fa
    ld a, c                                       ; $6174: $79
    nop                                           ; $6175: $00
    ld [hl], e                                    ; $6176: $73
    ld l, [hl]                                    ; $6177: $6e
    ld h, a                                       ; $6178: $67
    ret c                                         ; $6179: $d8

    ld l, d                                       ; $617a: $6a
    db $ed                                        ; $617b: $ed
    rra                                           ; $617c: $1f
    rr c                                          ; $617d: $cb $19
    ld e, l                                       ; $617f: $5d
    ld l, a                                       ; $6180: $6f
    or a                                          ; $6181: $b7
    ccf                                           ; $6182: $3f
    ret nc                                        ; $6183: $d0

    sbc h                                         ; $6184: $9c
    ld l, e                                       ; $6185: $6b
    ld d, a                                       ; $6186: $57
    rrca                                          ; $6187: $0f
    db $e4                                        ; $6188: $e4
    ld b, $f2                                     ; $6189: $06 $f2
    xor [hl]                                      ; $618b: $ae
    dec sp                                        ; $618c: $3b
    ld l, [hl]                                    ; $618d: $6e
    cp l                                          ; $618e: $bd
    db $ed                                        ; $618f: $ed
    sbc [hl]                                      ; $6190: $9e
    sub h                                         ; $6191: $94
    db $db                                        ; $6192: $db
    cp d                                          ; $6193: $ba
    ld [hl], a                                    ; $6194: $77
    dec bc                                        ; $6195: $0b
    or b                                          ; $6196: $b0
    db $dd                                        ; $6197: $dd
    ld [hl], e                                    ; $6198: $73
    rst $00                                       ; $6199: $c7
    dec a                                         ; $619a: $3d
    nop                                           ; $619b: $00
    ld l, a                                       ; $619c: $6f
    cp e                                          ; $619d: $bb
    and a                                         ; $619e: $a7
    ei                                            ; $619f: $fb
    ld e, [hl]                                    ; $61a0: $5e
    inc b                                         ; $61a1: $04
    ldh [rPCM34], a                               ; $61a2: $e0 $77
    push bc                                       ; $61a4: $c5
    ld h, l                                       ; $61a5: $65
    sub a                                         ; $61a6: $97
    ld e, l                                       ; $61a7: $5d
    cp [hl]                                       ; $61a8: $be
    db $db                                        ; $61a9: $db
    sbc d                                         ; $61aa: $9a
    ld b, c                                       ; $61ab: $41
    ld [hl], e                                    ; $61ac: $73
    ld h, l                                       ; $61ad: $65
    ld sp, hl                                     ; $61ae: $f9
    and b                                         ; $61af: $a0
    ld [hl], a                                    ; $61b0: $77
    ld [hl], e                                    ; $61b1: $73
    pop af                                        ; $61b2: $f1
    reti                                          ; $61b3: $d9


    dec e                                         ; $61b4: $1d
    ld [bc], a                                    ; $61b5: $02
    ld a, [de]                                    ; $61b6: $1a
    ld c, $e4                                     ; $61b7: $0e $e4
    call Call_057_79ad                            ; $61b9: $cd $ad $79
    ld h, l                                       ; $61bc: $65

Call_057_61bd:
    and $1f                                       ; $61bd: $e6 $1f
    ld [$6bb3], sp                                ; $61bf: $08 $b3 $6b
    push hl                                       ; $61c2: $e5
    db $e3                                        ; $61c3: $e3
    ld c, d                                       ; $61c4: $4a
    ld e, h                                       ; $61c5: $5c
    inc c                                         ; $61c6: $0c
    ld de, $4b00                                  ; $61c7: $11 $00 $4b
    inc de                                        ; $61ca: $13

Call_057_61cb:
Jump_057_61cb:
    db $e3                                        ; $61cb: $e3
    ld d, d                                       ; $61cc: $52
    nop                                           ; $61cd: $00
    sbc $0c                                       ; $61ce: $de $0c
    nop                                           ; $61d0: $00
    ldh [rNR51], a                                ; $61d1: $e0 $25
    ld d, c                                       ; $61d3: $51
    ld e, $89                                     ; $61d4: $1e $89
    nop                                           ; $61d6: $00
    rst $30                                       ; $61d7: $f7
    db $fc                                        ; $61d8: $fc
    add h                                         ; $61d9: $84
    cp d                                          ; $61da: $ba
    pop hl                                        ; $61db: $e1
    and [hl]                                      ; $61dc: $a6
    res 0, a                                      ; $61dd: $cb $87
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    cp a                                          ; $61e1: $bf
    cp d                                          ; $61e2: $ba
    ld h, c                                       ; $61e3: $61
    scf                                           ; $61e4: $37
    ld e, l                                       ; $61e5: $5d
    ld a, [hl]                                    ; $61e6: $7e
    jp Jump_057_574d                              ; $61e7: $c3 $4d $57


    call c, $d370                                 ; $61ea: $dc $70 $d3
    sub l                                         ; $61ed: $95
    ld b, e                                       ; $61ee: $43
    add b                                         ; $61ef: $80
    jp nc, $47a5                                  ; $61f0: $d2 $a5 $47

    ld e, $c8                                     ; $61f3: $1e $c8
    dec c                                         ; $61f5: $0d
    db $e4                                        ; $61f6: $e4
    ld b, $72                                     ; $61f7: $06 $72
    ld [$e429], sp                                ; $61f9: $08 $29 $e4
    ld l, a                                       ; $61fc: $6f
    ld l, l                                       ; $61fd: $6d
    ld a, a                                       ; $61fe: $7f
    jp hl                                         ; $61ff: $e9


    jp nc, Jump_000_1c23                          ; $6200: $d2 $23 $1c

    ret z                                         ; $6203: $c8

    ld a, e                                       ; $6204: $7b
    inc de                                        ; $6205: $13
    rst $10                                       ; $6206: $d7
    adc c                                         ; $6207: $89
    push af                                       ; $6208: $f5
    sub e                                         ; $6209: $93
    ld e, [hl]                                    ; $620a: $5e
    ld [$6f40], sp                                ; $620b: $08 $40 $6f
    cp b                                          ; $620e: $b8
    jp hl                                         ; $620f: $e9


    ld a, [c]                                     ; $6210: $f2
    ld bc, $e1bb                                  ; $6211: $01 $bb $e1
    and [hl]                                      ; $6214: $a6
    dec hl                                        ; $6215: $2b
    add [hl]                                      ; $6216: $86
    nop                                           ; $6217: $00
    db $dd                                        ; $6218: $dd
    ld d, $f1                                     ; $6219: $16 $f1
    ld [c], a                                     ; $621b: $e2
    ccf                                           ; $621c: $3f
    db $fc                                        ; $621d: $fc
    and $5a                                       ; $621e: $e6 $5a
    and e                                         ; $6220: $a3
    ld c, $a7                                     ; $6221: $0e $a7
    ld b, [hl]                                    ; $6223: $46
    or a                                          ; $6224: $b7
    sub h                                         ; $6225: $94
    ld e, $6f                                     ; $6226: $1e $6f
    ld b, b                                       ; $6228: $40
    sub a                                         ; $6229: $97
    ld e, a                                       ; $622a: $5f
    cp b                                          ; $622b: $b8
    sbc e                                         ; $622c: $9b
    ld l, $1f                                     ; $622d: $2e $1f
    ld [bc], a                                    ; $622f: $02
    ld d, a                                       ; $6230: $57
    ld e, h                                       ; $6231: $5c
    cp b                                          ; $6232: $b8
    sbc e                                         ; $6233: $9b
    ld l, $1f                                     ; $6234: $2e $1f
    ld [bc], a                                    ; $6236: $02
    ld d, a                                       ; $6237: $57
    ld e, [hl]                                    ; $6238: $5e
    cp b                                          ; $6239: $b8
    sbc e                                         ; $623a: $9b
    ld l, $1f                                     ; $623b: $2e $1f
    ld [bc], a                                    ; $623d: $02
    ld d, a                                       ; $623e: $57
    ld e, l                                       ; $623f: $5d
    cp b                                          ; $6240: $b8
    sbc e                                         ; $6241: $9b
    ld l, $1f                                     ; $6242: $2e $1f
    ld [bc], a                                    ; $6244: $02
    or a                                          ; $6245: $b7
    rst $20                                       ; $6246: $e7
    ld a, [de]                                    ; $6247: $1a
    or l                                          ; $6248: $b5
    or $82                                        ; $6249: $f6 $82
    ld l, a                                       ; $624b: $6f
    ld b, b                                       ; $624c: $40
    db $dd                                        ; $624d: $dd
    ld d, $f1                                     ; $624e: $16 $f1
    ld [hl-], a                                   ; $6250: $32
    ld c, c                                       ; $6251: $49
    sbc [hl]                                      ; $6252: $9e
    ld e, b                                       ; $6253: $58
    sbc a                                         ; $6254: $9f
    ld h, [hl]                                    ; $6255: $66
    res 1, b                                      ; $6256: $cb $88
    ld d, a                                       ; $6258: $57
    ld d, e                                       ; $6259: $53
    ld a, [$8c7e]                                 ; $625a: $fa $7e $8c
    ld e, [hl]                                    ; $625d: $5e
    db $eb                                        ; $625e: $eb
    xor e                                         ; $625f: $ab
    ld a, b                                       ; $6260: $78
    ld d, $a1                                     ; $6261: $16 $a1
    ld d, d                                       ; $6263: $52
    inc hl                                        ; $6264: $23
    add hl, hl                                    ; $6265: $29
    rrca                                          ; $6266: $0f
    ld h, e                                       ; $6267: $63
    dec bc                                        ; $6268: $0b
    db $ed                                        ; $6269: $ed
    sub $d2                                       ; $626a: $d6 $d2
    xor a                                         ; $626c: $af
    ld b, [hl]                                    ; $626d: $46
    jr c, jr_057_628e                             ; $626e: $38 $1e

    rst $00                                       ; $6270: $c7
    adc [hl]                                      ; $6271: $8e
    dec de                                        ; $6272: $1b
    ld [bc], a                                    ; $6273: $02
    ld [hl], a                                    ; $6274: $77
    ld h, [hl]                                    ; $6275: $66
    sub d                                         ; $6276: $92
    ld [hl], h                                    ; $6277: $74
    adc l                                         ; $6278: $8d
    ld [hl], b                                    ; $6279: $70
    inc a                                         ; $627a: $3c
    adc [hl]                                      ; $627b: $8e
    dec e                                         ; $627c: $1d
    scf                                           ; $627d: $37
    inc b                                         ; $627e: $04
    ld [hl], a                                    ; $627f: $77
    ei                                            ; $6280: $fb
    sbc h                                         ; $6281: $9c
    cpl                                           ; $6282: $2f
    ld h, c                                       ; $6283: $61
    add h                                         ; $6284: $84
    db $e3                                        ; $6285: $e3
    ld [hl], c                                    ; $6286: $71
    db $ec                                        ; $6287: $ec
    cp b                                          ; $6288: $b8
    ld hl, $5d29                                  ; $6289: $21 $29 $5d
    dec l                                         ; $628c: $2d
    add hl, de                                    ; $628d: $19

jr_057_628e:
    pop hl                                        ; $628e: $e1
    ld a, b                                       ; $628f: $78
    inc e                                         ; $6290: $1c
    dec sp                                        ; $6291: $3b
    ld l, [hl]                                    ; $6292: $6e
    ld [$6e29], sp                                ; $6293: $08 $29 $6e
    ld c, c                                       ; $6296: $49
    ld [hl], l                                    ; $6297: $75
    sub l                                         ; $6298: $95
    ld b, l                                       ; $6299: $45
    ld a, c                                       ; $629a: $79
    add h                                         ; $629b: $84
    db $e3                                        ; $629c: $e3
    ld [hl], c                                    ; $629d: $71
    db $ec                                        ; $629e: $ec
    cp b                                          ; $629f: $b8
    ld hl, $1f37                                  ; $62a0: $21 $37 $1f
    ld a, [hl-]                                   ; $62a3: $3a
    dec hl                                        ; $62a4: $2b
    scf                                           ; $62a5: $37
    db $fd                                        ; $62a6: $fd
    ld d, h                                       ; $62a7: $54
    ld h, [hl]                                    ; $62a8: $66
    inc b                                         ; $62a9: $04
    ld [hl], a                                    ; $62aa: $77
    ld h, a                                       ; $62ab: $67
    adc c                                         ; $62ac: $89
    add a                                         ; $62ad: $87
    ret z                                         ; $62ae: $c8

    ld e, c                                       ; $62af: $59
    ld hl, $bb00                                  ; $62b0: $21 $00 $bb
    ld a, [hl+]                                   ; $62b3: $2a
    ld e, d                                       ; $62b4: $5a
    ld a, c                                       ; $62b5: $79
    ld [c], a                                     ; $62b6: $e2
    db $d3                                        ; $62b7: $d3
    ld e, h                                       ; $62b8: $5c
    ld [$9fdd], sp                                ; $62b9: $08 $dd $9f
    ld sp, hl                                     ; $62bc: $f9
    adc c                                         ; $62bd: $89
    ld b, $01                                     ; $62be: $06 $01
    ld [hl], a                                    ; $62c0: $77
    cp a                                          ; $62c1: $bf
    and [hl]                                      ; $62c2: $a6
    rla                                           ; $62c3: $17
    inc hl                                        ; $62c4: $23
    scf                                           ; $62c5: $37
    or a                                          ; $62c6: $b7
    jp nc, $95c5                                  ; $62c7: $d2 $c5 $95

    add hl, de                                    ; $62ca: $19
    ld bc, $e4b7                                  ; $62cb: $01 $b7 $e4
    adc h                                         ; $62ce: $8c
    ld c, a                                       ; $62cf: $4f
    ld a, e                                       ; $62d0: $7b
    ld [de], a                                    ; $62d1: $12
    ld a, h                                       ; $62d2: $7c
    ld [c], a                                     ; $62d3: $e2
    rla                                           ; $62d4: $17
    ld b, c                                       ; $62d5: $41
    rst $30                                       ; $62d6: $f7
    ld a, l                                       ; $62d7: $7d
    sub c                                         ; $62d8: $91
    sub e                                         ; $62d9: $93
    ld a, h                                       ; $62da: $7c
    ld hl, $087f                                  ; $62db: $21 $7f $08
    ld l, $04                                     ; $62de: $2e $04
    or a                                          ; $62e0: $b7
    inc [hl]                                      ; $62e1: $34
    rst $00                                       ; $62e2: $c7
    ld a, b                                       ; $62e3: $78
    ret z                                         ; $62e4: $c8

    jp nc, $d499                                  ; $62e5: $d2 $99 $d4

    ld e, e                                       ; $62e8: $5b
    ld [c], a                                     ; $62e9: $e2
    ld b, d                                       ; $62ea: $42
    or a                                          ; $62eb: $b7
    db $fc                                        ; $62ec: $fc
    sub $dc                                       ; $62ed: $d6 $dc
    and l                                         ; $62ef: $a5
    ld de, $b723                                  ; $62f0: $11 $23 $b7
    ld a, h                                       ; $62f3: $7c
    and d                                         ; $62f4: $a2
    db $d3                                        ; $62f5: $d3
    ld d, l                                       ; $62f6: $55
    ld a, [c]                                     ; $62f7: $f2
    dec h                                         ; $62f8: $25
    db $10                                        ; $62f9: $10
    cp c                                          ; $62fa: $b9
    inc b                                         ; $62fb: $04
    ld bc, $ed29                                  ; $62fc: $01 $29 $ed
    ld c, c                                       ; $62ff: $49
    jr nc, jr_057_635d                            ; $6300: $30 $5b

    call nz, Call_000_0085                        ; $6302: $c4 $85 $00
    or a                                          ; $6305: $b7
    jr jr_057_6364                                ; $6306: $18 $5c

    ld a, [hl]                                    ; $6308: $7e
    ld [hl], l                                    ; $6309: $75
    ret                                           ; $630a: $c9


    ld h, c                                       ; $630b: $61
    ld a, a                                       ; $630c: $7f
    ld b, c                                       ; $630d: $41
    add hl, hl                                    ; $630e: $29
    ld e, l                                       ; $630f: $5d
    dec l                                         ; $6310: $2d
    sbc c                                         ; $6311: $99
    add l                                         ; $6312: $85
    add sp, $74                                   ; $6313: $e8 $74
    sub l                                         ; $6315: $95
    ld a, h                                       ; $6316: $7c
    add hl, bc                                    ; $6317: $09
    ld b, h                                       ; $6318: $44
    ld l, $41                                     ; $6319: $2e $41
    ld b, b                                       ; $631b: $40
    ld [hl], d                                    ; $631c: $72
    and e                                         ; $631d: $a3
    ld c, a                                       ; $631e: $4f

Call_057_631f:
    ld a, [$1189]                                 ; $631f: $fa $89 $11
    add hl, hl                                    ; $6322: $29
    sbc h                                         ; $6323: $9c
    adc e                                         ; $6324: $8b
    add sp, -$48                                  ; $6325: $e8 $b8
    ld h, c                                       ; $6327: $61
    inc b                                         ; $6328: $04
    ld [hl], a                                    ; $6329: $77
    ld h, a                                       ; $632a: $67
    ld c, $9f                                     ; $632b: $0e $9f
    ld h, [hl]                                    ; $632d: $66
    inc b                                         ; $632e: $04
    ld b, b                                       ; $632f: $40
    ld a, [hl]                                    ; $6330: $7e
    ld [$3016], sp                                ; $6331: $08 $16 $30
    ld l, [hl]                                    ; $6334: $6e
    ld [$fc12], a                                 ; $6335: $ea $12 $fc
    db $e3                                        ; $6338: $e3
    ld h, c                                       ; $6339: $61
    cp l                                          ; $633a: $bd
    db $10                                        ; $633b: $10
    or a                                          ; $633c: $b7
    ld hl, sp-$50                                 ; $633d: $f8 $b0
    rlca                                          ; $633f: $07
    db $e4                                        ; $6340: $e4
    add a                                         ; $6341: $87
    ld h, b                                       ; $6342: $60
    ld bc, $a6e3                                  ; $6343: $01 $e3 $a6
    ld l, $c1                                     ; $6346: $2e $c1
    ccf                                           ; $6348: $3f
    ld e, $d6                                     ; $6349: $1e $d6
    dec bc                                        ; $634b: $0b
    ld bc, $3f80                                  ; $634c: $01 $80 $3f
    ccf                                           ; $634f: $3f
    db $fc                                        ; $6350: $fc
    pop bc                                        ; $6351: $c1
    ld e, [hl]                                    ; $6352: $5e
    ld [c], a                                     ; $6353: $e2
    or $e3                                        ; $6354: $f6 $e3
    ld sp, hl                                     ; $6356: $f9
    add l                                         ; $6357: $85
    nop                                           ; $6358: $00
    add b                                         ; $6359: $80
    ld b, d                                       ; $635a: $42
    ld sp, hl                                     ; $635b: $f9
    inc e                                         ; $635c: $1c

jr_057_635d:
    db $fc                                        ; $635d: $fc
    sub l                                         ; $635e: $95
    ld [hl], d                                    ; $635f: $72
    cp e                                          ; $6360: $bb
    call nz, $c7ed                                ; $6361: $c4 $ed $c7

jr_057_6364:
    di                                            ; $6364: $f3
    dec bc                                        ; $6365: $0b
    ld bc, $2677                                  ; $6366: $01 $77 $26
    ccf                                           ; $6369: $3f
    add $4c                                       ; $636a: $c6 $4c
    sub d                                         ; $636c: $92
    ld l, $d2                                     ; $636d: $2e $d2
    inc h                                         ; $636f: $24
    jp hl                                         ; $6370: $e9


    cp d                                          ; $6371: $ba
    inc b                                         ; $6372: $04
    rst $38                                       ; $6373: $ff
    ld a, b                                       ; $6374: $78
    ld e, b                                       ; $6375: $58
    cpl                                           ; $6376: $2f
    inc b                                         ; $6377: $04
    or a                                          ; $6378: $b7
    ld hl, sp-$50                                 ; $6379: $f8 $b0
    ld [hl], a                                    ; $637b: $77
    ld h, a                                       ; $637c: $67
    ld a, [c]                                     ; $637d: $f2
    ld h, e                                       ; $637e: $63
    call z, $e924                                 ; $637f: $cc $24 $e9
    ld [hl+], a                                   ; $6382: $22
    ld c, l                                       ; $6383: $4d
    sub d                                         ; $6384: $92
    ld l, $04                                     ; $6385: $2e $04
    add b                                         ; $6387: $80
    sbc b                                         ; $6388: $98
    xor $2a                                       ; $6389: $ee $2a
    inc b                                         ; $638b: $04
    ld [hl], a                                    ; $638c: $77
    and $62                                       ; $638d: $e6 $62
    pop de                                        ; $638f: $d1
    ld sp, $dd76                                  ; $6390: $31 $76 $dd
    or b                                          ; $6393: $b0
    sbc e                                         ; $6394: $9b
    ld l, $1f                                     ; $6395: $2e $1f
    ld [bc], a                                    ; $6397: $02
    add b                                         ; $6398: $80
    db $dd                                        ; $6399: $dd
    jp nz, Jump_000_2e62                          ; $639a: $c2 $62 $2e

    ld b, [hl]                                    ; $639d: $46
    or a                                          ; $639e: $b7
    ld l, b                                       ; $639f: $68
    sbc b                                         ; $63a0: $98
    ld de, $2737                                  ; $63a1: $11 $37 $27
    and a                                         ; $63a4: $a7
    jp hl                                         ; $63a5: $e9


    call z, Call_057_7708                         ; $63a6: $cc $08 $77
    or [hl]                                       ; $63a9: $b6
    ld d, a                                       ; $63aa: $57
    db $e3                                        ; $63ab: $e3
    rst $18                                       ; $63ac: $df
    sub [hl]                                      ; $63ad: $96
    sub $30                                       ; $63ae: $d6 $30
    dec sp                                        ; $63b0: $3b
    dec [hl]                                      ; $63b1: $35
    ld [bc], a                                    ; $63b2: $02
    add b                                         ; $63b3: $80
    dec l                                         ; $63b4: $2d
    db $ec                                        ; $63b5: $ec
    ld a, [de]                                    ; $63b6: $1a
    ld c, c                                       ; $63b7: $49
    db $ed                                        ; $63b8: $ed
    adc c                                         ; $63b9: $89
    ld e, b                                       ; $63ba: $58
    halt                                          ; $63bb: $76
    ret z                                         ; $63bc: $c8

    rst $18                                       ; $63bd: $df
    sbc d                                         ; $63be: $9a
    dec bc                                        ; $63bf: $0b
    ld c, $60                                     ; $63c0: $0e $60
    ld l, c                                       ; $63c2: $69
    ld h, d                                       ; $63c3: $62
    call c, $972d                                 ; $63c4: $dc $2d $97
    ld b, h                                       ; $63c7: $44
    ld a, c                                       ; $63c8: $79
    inc h                                         ; $63c9: $24
    ld l, c                                       ; $63ca: $69
    add hl, de                                    ; $63cb: $19
    sbc l                                         ; $63cc: $9d
    ld l, e                                       ; $63cd: $6b
    call nc, $925e                                ; $63ce: $d4 $5e $92
    ld l, $0d                                     ; $63d1: $2e $0d
    ld a, e                                       ; $63d3: $7b
    ld l, c                                       ; $63d4: $69
    dec c                                         ; $63d5: $0d
    or e                                          ; $63d6: $b3
    add hl, de                                    ; $63d7: $19
    ld [hl+], a                                   ; $63d8: $22
    or a                                          ; $63d9: $b7
    ld l, b                                       ; $63da: $68
    sbc b                                         ; $63db: $98
    cp l                                          ; $63dc: $bd
    sub a                                         ; $63dd: $97
    and h                                         ; $63de: $a4
    ld c, e                                       ; $63df: $4b
    ld h, a                                       ; $63e0: $67
    ld c, [hl]                                    ; $63e1: $4e
    adc l                                         ; $63e2: $8d
    nop                                           ; $63e3: $00
    or a                                          ; $63e4: $b7
    ld l, b                                       ; $63e5: $68
    sbc b                                         ; $63e6: $98
    dec a                                         ; $63e7: $3d
    sbc l                                         ; $63e8: $9d
    jp hl                                         ; $63e9: $e9


    xor [hl]                                      ; $63ea: $ae
    ld [c], a                                     ; $63eb: $e2
    call nc, $dd08                                ; $63ec: $d4 $08 $dd
    ld a, [$93e2]                                 ; $63ef: $fa $e2 $93
    db $fd                                        ; $63f2: $fd
    jr jr_057_6432                                ; $63f3: $18 $3d

    ld a, [hl]                                    ; $63f5: $7e
    and e                                         ; $63f6: $a3
    sbc e                                         ; $63f7: $9b
    res 1, e                                      ; $63f8: $cb $8b
    cp c                                          ; $63fa: $b9
    ld a, b                                       ; $63fb: $78
    sub a                                         ; $63fc: $97
    ld c, h                                       ; $63fd: $4c
    ld a, l                                       ; $63fe: $7d
    reti                                          ; $63ff: $d9


    db $ed                                        ; $6400: $ed
    cp c                                          ; $6401: $b9
    db $fd                                        ; $6402: $fd
    cp h                                          ; $6403: $bc
    ld e, e                                       ; $6404: $5b
    jp z, $3fc9                                   ; $6405: $ca $c9 $3f

    ld [hl], e                                    ; $6408: $73
    adc l                                         ; $6409: $8d
    sub $5b                                       ; $640a: $d6 $5b
    ld c, e                                       ; $640c: $4b
    adc l                                         ; $640d: $8d
    nop                                           ; $640e: $00
    db $dd                                        ; $640f: $dd
    ld a, [$5788]                                 ; $6410: $fa $88 $57
    and e                                         ; $6413: $a3
    ld [hl], l                                    ; $6414: $75
    ld de, $ccf3                                  ; $6415: $11 $f3 $cc
    cp e                                          ; $6418: $bb
    push bc                                       ; $6419: $c5
    push de                                       ; $641a: $d5
    add l                                         ; $641b: $85
    reti                                          ; $641c: $d9


    inc hl                                        ; $641d: $23
    inc e                                         ; $641e: $1c
    adc a                                         ; $641f: $8f
    ld l, e                                       ; $6420: $6b
    add hl, sp                                    ; $6421: $39
    adc h                                         ; $6422: $8c
    dec hl                                        ; $6423: $2b
    or a                                          ; $6424: $b7
    add [hl]                                      ; $6425: $86
    dec l                                         ; $6426: $2d
    ld [hl], d                                    ; $6427: $72
    ld c, c                                       ; $6428: $49
    call z, $a9c5                                 ; $6429: $cc $c5 $a9
    ld de, $fadd                                  ; $642c: $11 $dd $fa
    ld c, [hl]                                    ; $642f: $4e
    ld a, h                                       ; $6430: $7c
    ld l, l                                       ; $6431: $6d

jr_057_6432:
    rst $20                                       ; $6432: $e7
    pop hl                                        ; $6433: $e1
    and $91                                       ; $6434: $e6 $91
    call nc, $d77a                                ; $6436: $d4 $7a $d7
    and a                                         ; $6439: $a7
    jp hl                                         ; $643a: $e9


Call_057_643b:
    cpl                                           ; $643b: $2f
    pop hl                                        ; $643c: $e1
    sub d                                         ; $643d: $92
    jp $4639                                      ; $643e: $c3 $39 $46


    ld c, e                                       ; $6441: $4b
    ld l, d                                       ; $6442: $6a
    inc b                                         ; $6443: $04
    db $dd                                        ; $6444: $dd
    ld a, [$7c4e]                                 ; $6445: $fa $4e $7c
    ld l, l                                       ; $6448: $6d
    rlca                                          ; $6449: $07
    cp a                                          ; $644a: $bf
    and $91                                       ; $644b: $e6 $91
    call nc, $a87a                                ; $644d: $d4 $7a $a8
    sub e                                         ; $6450: $93
    ld l, [hl]                                    ; $6451: $6e
    call nc, $e4b9                                ; $6452: $d4 $b9 $e4
    ld [hl], b                                    ; $6455: $70
    adc [hl]                                      ; $6456: $8e
    pop de                                        ; $6457: $d1
    sub d                                         ; $6458: $92
    ld a, [de]                                    ; $6459: $1a
    ld bc, $fadd                                  ; $645a: $01 $dd $fa
    ld c, [hl]                                    ; $645d: $4e
    ld a, h                                       ; $645e: $7c
    ld l, l                                       ; $645f: $6d
    rst $20                                       ; $6460: $e7
    pop hl                                        ; $6461: $e1
    and $91                                       ; $6462: $e6 $91
    call nc, $bc00                                ; $6464: $d4 $00 $bc
    ld b, h                                       ; $6467: $44
    ld h, d                                       ; $6468: $62
    res 2, a                                      ; $6469: $cb $97
    inc e                                         ; $646b: $1c
    adc $31                                       ; $646c: $ce $31
    ld e, d                                       ; $646e: $5a
    ld d, d                                       ; $646f: $52
    inc hl                                        ; $6470: $23
    db $dd                                        ; $6471: $dd
    ld a, [$7c4e]                                 ; $6472: $fa $4e $7c
    ld l, l                                       ; $6475: $6d
    rst $20                                       ; $6476: $e7
    pop hl                                        ; $6477: $e1
    and $91                                       ; $6478: $e6 $91
    call nc, $b052                                ; $647a: $d4 $52 $b0
    ld h, $bc                                     ; $647d: $26 $bc
    ld d, d                                       ; $647f: $52
    sub a                                         ; $6480: $97
    inc e                                         ; $6481: $1c
    adc $31                                       ; $6482: $ce $31
    ld e, d                                       ; $6484: $5a
    ld d, d                                       ; $6485: $52
    inc hl                                        ; $6486: $23
    db $dd                                        ; $6487: $dd
    ld a, [$5788]                                 ; $6488: $fa $88 $57
    ei                                            ; $648b: $fb
    ld sp, $147a                                  ; $648c: $31 $7a $14
    add hl, hl                                    ; $648f: $29
    and $1d                                       ; $6490: $e6 $1d
    ld a, [c]                                     ; $6492: $f2
    or a                                          ; $6493: $b7
    ld h, [hl]                                    ; $6494: $66
    sbc [hl]                                      ; $6495: $9e
    ld b, l                                       ; $6496: $45
    xor b                                         ; $6497: $a8
    call nc, Call_057_7708                        ; $6498: $d4 $08 $77
    ld a, $92                                     ; $649b: $3e $92
    and h                                         ; $649d: $a4
    sbc e                                         ; $649e: $9b
    ld h, [hl]                                    ; $649f: $66
    ret c                                         ; $64a0: $d8

    ld l, d                                       ; $64a1: $6a
    db $dd                                        ; $64a2: $dd
    push af                                       ; $64a3: $f5
    ld b, b                                       ; $64a4: $40
    rst $20                                       ; $64a5: $e7
    pop de                                        ; $64a6: $d1
    cp c                                          ; $64a7: $b9
    ld b, [hl]                                    ; $64a8: $46
    adc l                                         ; $64a9: $8d
    and [hl]                                      ; $64aa: $a6
    add $2f                                       ; $64ab: $c6 $2f
    xor $ef                                       ; $64ad: $ee $ef
    sbc [hl]                                      ; $64af: $9e
    rst $18                                       ; $64b0: $df
    db $f4                                        ; $64b1: $f4
    db $d3                                        ; $64b2: $d3
    rst $38                                       ; $64b3: $ff
    ld l, [hl]                                    ; $64b4: $6e
    rst $08                                       ; $64b5: $cf
    dec d                                         ; $64b6: $15
    sbc d                                         ; $64b7: $9a
    or c                                          ; $64b8: $b1
    ld a, a                                       ; $64b9: $7f
    ld l, d                                       ; $64ba: $6a
    inc b                                         ; $64bb: $04
    rst $30                                       ; $64bc: $f7
    db $e4                                        ; $64bd: $e4
    ld c, d                                       ; $64be: $4a
    cp e                                          ; $64bf: $bb
    ld a, b                                       ; $64c0: $78
    call nz, Call_057_55ab                        ; $64c1: $c4 $ab $55
    rla                                           ; $64c4: $17
    and $d4                                       ; $64c5: $e6 $d4
    ld e, e                                       ; $64c7: $5b
    ld c, d                                       ; $64c8: $4a
    call nc, $9a88                                ; $64c9: $d4 $88 $9a
    ld [hl], d                                    ; $64cc: $72
    jr jr_057_6504                                ; $64cd: $18 $35

    ld a, [$788b]                                 ; $64cf: $fa $8b $78
    call nz, Call_000_10c3                        ; $64d2: $c4 $c3 $10
    ld bc, $7fb7                                  ; $64d5: $01 $b7 $7f
    sub c                                         ; $64d8: $91
    jp hl                                         ; $64d9: $e9


    inc a                                         ; $64da: $3c
    ld [hl+], a                                   ; $64db: $22
    ret                                           ; $64dc: $c9


    and l                                         ; $64dd: $a5
    sbc [hl]                                      ; $64de: $9e
    ld c, h                                       ; $64df: $4c
    jp hl                                         ; $64e0: $e9


    dec sp                                        ; $64e1: $3b
    pop af                                        ; $64e2: $f1
    or l                                          ; $64e3: $b5
    dec [hl]                                      ; $64e4: $35
    ld [$9978], a                                 ; $64e5: $ea $78 $99
    inc h                                         ; $64e8: $24
    and a                                         ; $64e9: $a7
    cp d                                          ; $64ea: $ba
    ld [$46a5], a                                 ; $64eb: $ea $a5 $46
    rst $30                                       ; $64ee: $f7
    ld d, l                                       ; $64ef: $55
    ld d, a                                       ; $64f0: $57
    ld [hl-], a                                   ; $64f1: $32
    ld l, d                                       ; $64f2: $6a
    db $f4                                        ; $64f3: $f4
    sub e                                         ; $64f4: $93
    ldh [$e9], a                                  ; $64f5: $e0 $e9
    and c                                         ; $64f7: $a1
    cp l                                          ; $64f8: $bd
    call nc, $b708                                ; $64f9: $d4 $08 $b7
    ld [hl], a                                    ; $64fc: $77
    or l                                          ; $64fd: $b5
    or b                                          ; $64fe: $b0
    ei                                            ; $64ff: $fb
    ld a, [hl]                                    ; $6500: $7e
    sub l                                         ; $6501: $95
    sub e                                         ; $6502: $93
    adc a                                         ; $6503: $8f

jr_057_6504:
    ret                                           ; $6504: $c9


    or e                                          ; $6505: $b3
    db $e4                                        ; $6506: $e4
    ld c, e                                       ; $6507: $4b
    ld c, h                                       ; $6508: $4c
    adc l                                         ; $6509: $8d
    nop                                           ; $650a: $00
    or a                                          ; $650b: $b7
    sub h                                         ; $650c: $94
    ld h, $84                                     ; $650d: $26 $84
    add hl, hl                                    ; $650f: $29
    set 5, d                                      ; $6510: $cb $ea
    ld b, a                                       ; $6512: $47
    cp $c1                                        ; $6513: $fe $c1
    ld [hl], e                                    ; $6515: $73
    ei                                            ; $6516: $fb
    pop af                                        ; $6517: $f1
    db $fc                                        ; $6518: $fc
    or d                                          ; $6519: $b2
    and h                                         ; $651a: $a4
    ld b, [hl]                                    ; $651b: $46
    or a                                          ; $651c: $b7
    cp b                                          ; $651d: $b8
    cp d                                          ; $651e: $ba
    jr nc, jr_057_659c                            ; $651f: $30 $7b

    add h                                         ; $6521: $84
    db $e3                                        ; $6522: $e3
    ld [hl], c                                    ; $6523: $71
    dec l                                         ; $6524: $2d
    add a                                         ; $6525: $87
    ld [hl], c                                    ; $6526: $71
    push hl                                       ; $6527: $e5
    sub $b0                                       ; $6528: $d6 $b0
    ld b, l                                       ; $652a: $45
    ld l, $89                                     ; $652b: $2e $89
    cp c                                          ; $652d: $b9
    ld a, b                                       ; $652e: $78
    add a                                         ; $652f: $87
    db $fc                                        ; $6530: $fc
    xor l                                         ; $6531: $ad
    and l                                         ; $6532: $a5
    ld b, [hl]                                    ; $6533: $46
    db $dd                                        ; $6534: $dd

Call_057_6535:
    ld a, [$5788]                                 ; $6535: $fa $88 $57
    inc de                                        ; $6538: $13
    ld c, d                                       ; $6539: $4a
    xor c                                         ; $653a: $a9
    sbc c                                         ; $653b: $99
    daa                                           ; $653c: $27
    ld a, [de]                                    ; $653d: $1a
    and $c9                                       ; $653e: $e6 $c9
    ld c, a                                       ; $6540: $4f
    xor b                                         ; $6541: $a8
    call nc, $dd08                                ; $6542: $d4 $08 $dd
    ld a, [$5788]                                 ; $6545: $fa $88 $57
    inc de                                        ; $6548: $13
    ld c, d                                       ; $6549: $4a
    xor c                                         ; $654a: $a9
    sbc c                                         ; $654b: $99
    daa                                           ; $654c: $27
    ld a, [de]                                    ; $654d: $1a
    and $d1                                       ; $654e: $e6 $d1
    cp c                                          ; $6550: $b9
    or b                                          ; $6551: $b0
    sbc e                                         ; $6552: $9b
    db $fc                                        ; $6553: $fc
    add h                                         ; $6554: $84
    ld c, d                                       ; $6555: $4a
    adc l                                         ; $6556: $8d
    nop                                           ; $6557: $00
    add hl, hl                                    ; $6558: $29
    xor h                                         ; $6559: $ac
    xor c                                         ; $655a: $a9
    add sp, $5d                                   ; $655b: $e8 $5d
    ld a, h                                       ; $655d: $7c
    db $d3                                        ; $655e: $d3
    push hl                                       ; $655f: $e5
    ld b, e                                       ; $6560: $43
    or a                                          ; $6561: $b7
    rst $20                                       ; $6562: $e7
    ld a, [hl-]                                   ; $6563: $3a
    ret                                           ; $6564: $c9


    xor e                                         ; $6565: $ab
    ld e, l                                       ; $6566: $5d
    ld a, h                                       ; $6567: $7c
    db $d3                                        ; $6568: $d3
    push hl                                       ; $6569: $e5
    ld b, e                                       ; $656a: $43
    ld [hl], a                                    ; $656b: $77
    cp a                                          ; $656c: $bf
    ldh a, [$2f]                                  ; $656d: $f0 $2f
    add hl, sp                                    ; $656f: $39
    xor h                                         ; $6570: $ac
    xor c                                         ; $6571: $a9
    add sp, $5d                                   ; $6572: $e8 $5d
    ld a, h                                       ; $6574: $7c
    db $d3                                        ; $6575: $d3
    push hl                                       ; $6576: $e5
    ld b, e                                       ; $6577: $43
    ld [hl], a                                    ; $6578: $77
    cp a                                          ; $6579: $bf
    ldh a, [$2f]                                  ; $657a: $f0 $2f
    and c                                         ; $657c: $a1
    ld [hl], e                                    ; $657d: $73
    sbc l                                         ; $657e: $9d
    db $e4                                        ; $657f: $e4
    push de                                       ; $6580: $d5
    ld l, $be                                     ; $6581: $2e $be
    jp hl                                         ; $6583: $e9


jr_057_6584:
    ld a, [c]                                     ; $6584: $f2

jr_057_6585:
    ld hl, $f829                                  ; $6585: $21 $29 $f8
    xor e                                         ; $6588: $ab
    rra                                           ; $6589: $1f
    ld [$2ef3], sp                                ; $658a: $08 $f3 $2e
    cp [hl]                                       ; $658d: $be
    jp hl                                         ; $658e: $e9


    ld a, [c]                                     ; $658f: $f2
    ld hl, $fe29                                  ; $6590: $21 $29 $fe
    add c                                         ; $6593: $81

Jump_057_6594:
    jr nc, jr_057_6585                            ; $6594: $30 $ef

    ld [c], a                                     ; $6596: $e2
    sbc e                                         ; $6597: $9b
    ld l, $1f                                     ; $6598: $2e $1f
    ld [bc], a                                    ; $659a: $02
    db $dd                                        ; $659b: $dd

jr_057_659c:
    and $1d                                       ; $659c: $e6 $1d
    db $fc                                        ; $659e: $fc
    and d                                         ; $659f: $a2
    ld l, e                                       ; $65a0: $6b
    or c                                          ; $65a1: $b1
    ld h, e                                       ; $65a2: $63
    ld c, h                                       ; $65a3: $4c
    ld a, [hl-]                                   ; $65a4: $3a
    ld h, h                                       ; $65a5: $64
    push bc                                       ; $65a6: $c5
    jp c, Jump_000_30e5                           ; $65a7: $da $e5 $30

    ld h, l                                       ; $65aa: $65
    sbc [hl]                                      ; $65ab: $9e
    ld l, e                                       ; $65ac: $6b
    and $c5                                       ; $65ad: $e6 $c5
    ld e, h                                       ; $65af: $5c
    inc a                                         ; $65b0: $3c
    push hl                                       ; $65b1: $e5
    ld e, d                                       ; $65b2: $5a
    ld c, $87                                     ; $65b3: $0e $87
    ld c, d                                       ; $65b5: $4a
    adc l                                         ; $65b6: $8d
    nop                                           ; $65b7: $00
    dec a                                         ; $65b8: $3d
    xor [hl]                                      ; $65b9: $ae
    ld de, $a6af                                  ; $65ba: $11 $af $a6
    db $f4                                        ; $65bd: $f4
    pop de                                        ; $65be: $d1
    cp c                                          ; $65bf: $b9
    ld b, d                                       ; $65c0: $42
    inc sp                                        ; $65c1: $33
    add $0e                                       ; $65c2: $c6 $0e
    cp $96                                        ; $65c4: $fe $96
    xor c                                         ; $65c6: $a9
    cpl                                           ; $65c7: $2f
    jp c, $f3dd                                   ; $65c8: $da $dd $f3

    sbc e                                         ; $65cb: $9b
    ld a, [hl]                                    ; $65cc: $7e
    jr nz, jr_057_65d1                            ; $65cd: $20 $02

    or a                                          ; $65cf: $b7
    sbc b                                         ; $65d0: $98

jr_057_65d1:
    ret z                                         ; $65d1: $c8

    ld c, l                                       ; $65d2: $4d
    ld c, l                                       ; $65d3: $4d
    ld e, c                                       ; $65d4: $59
    and [hl]                                      ; $65d5: $a6
    ld [hl], h                                    ; $65d6: $74
    db $ed                                        ; $65d7: $ed
    ld a, d                                       ; $65d8: $7a

jr_057_65d9:
    ld e, [hl]                                    ; $65d9: $5e
    sub l                                         ; $65da: $95
    ld b, $42                                     ; $65db: $06 $42
    jr c, jr_057_6584                             ; $65dd: $38 $a5

    adc a                                         ; $65df: $8f
    ld a, b                                       ; $65e0: $78
    or l                                          ; $65e1: $b5
    ret nc                                        ; $65e2: $d0

    or c                                          ; $65e3: $b1
    ld c, b                                       ; $65e4: $48
    add $81                                       ; $65e5: $c6 $81
    ld h, d                                       ; $65e7: $62
    ld e, [hl]                                    ; $65e8: $5e
    ei                                            ; $65e9: $fb
    call z, $c97b                                 ; $65ea: $cc $7b $c9
    adc b                                         ; $65ed: $88
    call nz, $a3c5                                ; $65ee: $c4 $c5 $a3
    ld [hl], e                                    ; $65f1: $73
    adc l                                         ; $65f2: $8d
    ld a, [de]                                    ; $65f3: $1a
    ld c, l                                       ; $65f4: $4d
    ld c, l                                       ; $65f5: $4d
    ld e, c                                       ; $65f6: $59
    jr nz, jr_057_65fb                            ; $65f7: $20 $02

    dec a                                         ; $65f9: $3d
    ret                                           ; $65fa: $c9


jr_057_65fb:
    ccf                                           ; $65fb: $3f
    ld d, e                                       ; $65fc: $53
    ld a, [$8c7e]                                 ; $65fd: $fa $7e $8c
    ld e, [hl]                                    ; $6600: $5e
    db $ec                                        ; $6601: $ec
    ld [hl], h                                    ; $6602: $74
    sub c                                         ; $6603: $91
    xor [hl]                                      ; $6604: $ae
    ld [hl], c                                    ; $6605: $71
    push hl                                       ; $6606: $e5
    sub $f0                                       ; $6607: $d6 $f0
    inc de                                        ; $6609: $13
    add hl, sp                                    ; $660a: $39
    ld sp, $6b17                                  ; $660b: $31 $17 $6b
    ld b, a                                       ; $660e: $47
    cp h                                          ; $660f: $bc
    ld e, d                                       ; $6610: $5a
    ld a, [c]                                     ; $6611: $f2
    rst $30                                       ; $6612: $f7
    ld h, e                                       ; $6613: $63
    db $f4                                        ; $6614: $f4
    inc h                                         ; $6615: $24
    ld a, e                                       ; $6616: $7b
    call nc, $bc8e                                ; $6617: $d4 $8e $bc
    jr jr_057_65d9                                ; $661a: $18 $bd

    adc h                                         ; $661c: $8c
    ld hl, $2902                                  ; $661d: $21 $02 $29
    xor [hl]                                      ; $6620: $ae
    jp hl                                         ; $6621: $e9


    cp h                                          ; $6622: $bc
    sub e                                         ; $6623: $93
    pop af                                        ; $6624: $f1
    sub h                                         ; $6625: $94
    ld a, $e2                                     ; $6626: $3e $e2
    push de                                       ; $6628: $d5
    adc b                                         ; $6629: $88
    rst $00                                       ; $662a: $c7
    inc a                                         ; $662b: $3c
    ld h, l                                       ; $662c: $65
    ld e, $f1                                     ; $662d: $1e $f1
    ld c, d                                       ; $662f: $4a
    or c                                          ; $6630: $b1
    halt                                          ; $6631: $76
    dec a                                         ; $6632: $3d
    xor a                                         ; $6633: $af
    ld c, d                                       ; $6634: $4a
    inc bc                                        ; $6635: $03
    or a                                          ; $6636: $b7
    sub h                                         ; $6637: $94
    ld hl, sp-$26                                 ; $6638: $f8 $da
    ld a, [hl-]                                   ; $663a: $3a
    ld c, $a3                                     ; $663b: $0e $a3
    ld a, a                                       ; $663d: $7f
    inc a                                         ; $663e: $3c
    sbc [hl]                                      ; $663f: $9e
    ld [hl], d                                    ; $6640: $72
    ld e, b                                       ; $6641: $58
    ld h, $c9                                     ; $6642: $26 $c9
    ld e, [hl]                                    ; $6644: $5e
    ld [$6677], sp                                ; $6645: $08 $77 $66
    inc a                                         ; $6648: $3c
    push hl                                       ; $6649: $e5
    or b                                          ; $664a: $b0
    cp a                                          ; $664b: $bf
    inc [hl]                                      ; $664c: $34
    push bc                                       ; $664d: $c5
    sub [hl]                                      ; $664e: $96
    add hl, bc                                    ; $664f: $09
    and l                                         ; $6650: $a5
    ld e, l                                       ; $6651: $5d
    rst $08                                       ; $6652: $cf
    xor e                                         ; $6653: $ab
    jp nc, Jump_000_0440                          ; $6654: $d2 $40 $04

    ld h, b                                       ; $6657: $60
    ld l, a                                       ; $6658: $6f
    cp d                                          ; $6659: $ba
    ld a, h                                       ; $665a: $7c
    rla                                           ; $665b: $17
    call c, $c574                                 ; $665c: $dc $74 $c5
    adc $0f                                       ; $665f: $ce $0f
    jp z, $ce35                                   ; $6661: $ca $35 $ce

    db $fc                                        ; $6664: $fc
    ld a, [de]                                    ; $6665: $1a
    ld e, a                                       ; $6666: $5f
    adc b                                         ; $6667: $88
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    db $eb                                        ; $666a: $eb
    ret                                           ; $666b: $c9


    and c                                         ; $666c: $a1
    ld a, a                                       ; $666d: $7f
    ret nc                                        ; $666e: $d0

    db $eb                                        ; $666f: $eb
    sbc l                                         ; $6670: $9d
    ld c, [hl]                                    ; $6671: $4e
    ld d, $04                                     ; $6672: $16 $04

jr_057_6674:
    add b                                         ; $6674: $80
    adc d                                         ; $6675: $8a
    ld [hl], e                                    ; $6676: $73
    set 4, c                                      ; $6677: $cb $e1
    inc hl                                        ; $6679: $23
    or a                                          ; $667a: $b7
    rst $20                                       ; $667b: $e7
    ld a, [hl-]                                   ; $667c: $3a
    ret                                           ; $667d: $c9


    xor e                                         ; $667e: $ab
    pop hl                                        ; $667f: $e1
    call z, $c93b                                 ; $6680: $cc $3b $c9
    dec hl                                        ; $6683: $2b
    halt                                          ; $6684: $76
    call nc, $b0e5                                ; $6685: $d4 $e5 $b0
    dec bc                                        ; $6688: $0b
    ld bc, $37b7                                  ; $6689: $01 $b7 $37
    dec c                                         ; $668c: $0d
    ld a, a                                       ; $668d: $7f
    db $ec                                        ; $668e: $ec
    ld b, d                                       ; $668f: $42
    or a                                          ; $6690: $b7
    rst $20                                       ; $6691: $e7
    jp nz, Jump_057_7b7a                          ; $6692: $c2 $7a $7b

    ld [$bf77], sp                                ; $6695: $08 $77 $bf
    ldh a, [$89]                                  ; $6698: $f0 $89
    ld a, a                                       ; $669a: $7f
    jr c, jr_057_6674                             ; $669b: $38 $d7

    scf                                           ; $669d: $37
    ld [bc], a                                    ; $669e: $02
    db $dd                                        ; $669f: $dd
    and $b9                                       ; $66a0: $e6 $b9
    ld h, $39                                     ; $66a2: $26 $39
    ld l, $ed                                     ; $66a4: $2e $ed
    jp Jump_000_38eb                              ; $66a6: $c3 $eb $38


    db $ec                                        ; $66a9: $ec
    rst $00                                       ; $66aa: $c7
    add sp, $05                                   ; $66ab: $e8 $05
    xor d                                         ; $66ad: $aa
    and [hl]                                      ; $66ae: $a6
    inc l                                         ; $66af: $2c
    ld c, e                                       ; $66b0: $4b
    db $fc                                        ; $66b1: $fc
    dec l                                         ; $66b2: $2d
    ld [hl], b                                    ; $66b3: $70
    db $dd                                        ; $66b4: $dd
    and $c5                                       ; $66b5: $e6 $c5
    daa                                           ; $66b7: $27
    inc hl                                        ; $66b8: $23
    inc l                                         ; $66b9: $2c
    jp z, Jump_057_694b                           ; $66ba: $ca $4b $69

    ld a, d                                       ; $66bd: $7a
    adc l                                         ; $66be: $8d
    ld l, $63                                     ; $66bf: $2e $63
    push hl                                       ; $66c1: $e5
    and $b3                                       ; $66c2: $e6 $b3
    and [hl]                                      ; $66c4: $a6
    sbc a                                         ; $66c5: $9f
    add sp, $5a                                   ; $66c6: $e8 $5a
    jp hl                                         ; $66c8: $e9


    and d                                         ; $66c9: $a2
    jr @+$24                                      ; $66ca: $18 $22

    or a                                          ; $66cc: $b7
    or h                                          ; $66cd: $b4
    ccf                                           ; $66ce: $3f
    jp nz, $b135                                  ; $66cf: $c2 $35 $b1

    or d                                          ; $66d2: $b2
    halt                                          ; $66d3: $76
    dec a                                         ; $66d4: $3d
    xor a                                         ; $66d5: $af
    ld c, d                                       ; $66d6: $4a
    inc bc                                        ; $66d7: $03
    rlca                                          ; $66d8: $07
    ld hl, sp-$4b                                 ; $66d9: $f8 $b5
    ld [hl], b                                    ; $66db: $70
    ld e, h                                       ; $66dc: $5c
    add $59                                       ; $66dd: $c6 $59
    cp [hl]                                       ; $66df: $be
    ld h, l                                       ; $66e0: $65
    ld l, c                                       ; $66e1: $69
    rlca                                          ; $66e2: $07
    adc l                                         ; $66e3: $8d
    adc b                                         ; $66e4: $88
    ld l, e                                       ; $66e5: $6b
    ld b, a                                       ; $66e6: $47
    ld e, [hl]                                    ; $66e7: $5e
    ld sp, $8044                                  ; $66e8: $31 $44 $80
    rst $38                                       ; $66eb: $ff
    jp nc, Jump_000_297a                          ; $66ec: $d2 $7a $29

    rst $28                                       ; $66ef: $ef
    rst $00                                       ; $66f0: $c7
    add sp, $05                                   ; $66f1: $e8 $05
    ld l, d                                       ; $66f3: $6a
    ld h, d                                       ; $66f4: $62
    dec [hl]                                      ; $66f5: $35
    push af                                       ; $66f6: $f5
    ld e, c                                       ; $66f7: $59
    cp e                                          ; $66f8: $bb
    sbc [hl]                                      ; $66f9: $9e
    ld d, a                                       ; $66fa: $57
    and l                                         ; $66fb: $a5
    add c                                         ; $66fc: $81
    inc bc                                        ; $66fd: $03
    db $fc                                        ; $66fe: $fc
    add a                                         ; $66ff: $87
    xor c                                         ; $6700: $a9
    push bc                                       ; $6701: $c5
    adc h                                         ; $6702: $8c
    or c                                          ; $6703: $b1
    sub a                                         ; $6704: $97
    rst $08                                       ; $6705: $cf
    add hl, de                                    ; $6706: $19
    rst $38                                       ; $6707: $ff
    sub [hl]                                      ; $6708: $96
    ld a, [hl]                                    ; $6709: $7e
    pop de                                        ; $670a: $d1
    db $e3                                        ; $670b: $e3
    rst $18                                       ; $670c: $df
    halt                                          ; $670d: $76
    ld [hl], d                                    ; $670e: $72
    ld [c], a                                     ; $670f: $e2
    di                                            ; $6710: $f3
    sbc d                                         ; $6711: $9a
    dec b                                         ; $6712: $05
    ld [hl+], a                                   ; $6713: $22
    ld a, l                                       ; $6714: $7d
    inc e                                         ; $6715: $1c
    halt                                          ; $6716: $76
    inc [hl]                                      ; $6717: $34
    ld [c], a                                     ; $6718: $e2
    or e                                          ; $6719: $b3
    adc [hl]                                      ; $671a: $8e
    jp $ae88                                      ; $671b: $c3 $88 $ae


    ld [hl], d                                    ; $671e: $72
    ld c, l                                       ; $671f: $4d
    or d                                          ; $6720: $b2
    ld h, l                                       ; $6721: $65
    jp z, $b135                                   ; $6722: $ca $35 $b1

    ld [hl-], a                                   ; $6725: $32
    ld e, h                                       ; $6726: $5c
    rra                                           ; $6727: $1f
    add a                                         ; $6728: $87
    push bc                                       ; $6729: $c5
    daa                                           ; $672a: $27
    ei                                            ; $672b: $fb
    ld sp, $817a                                  ; $672c: $31 $7a $81
    sbc d                                         ; $672f: $9a
    ld e, b                                       ; $6730: $58
    ld c, l                                       ; $6731: $4d
    ld a, l                                       ; $6732: $7d
    sbc $0f                                       ; $6733: $de $0f
    dec e                                         ; $6735: $1d
    dec bc                                        ; $6736: $0b
    ld b, h                                       ; $6737: $44
    rst $30                                       ; $6738: $f7
    add sp, -$19                                  ; $6739: $e8 $e7
    db $fc                                        ; $673b: $fc
    cp c                                          ; $673c: $b9
    or $a7                                        ; $673d: $f6 $a7
    inc l                                         ; $673f: $2c
    ld [c], a                                     ; $6740: $e2
    sbc c                                         ; $6741: $99
    rst $18                                       ; $6742: $df
    jp hl                                         ; $6743: $e9


    ld e, b                                       ; $6744: $58
    ldh [rP1], a                                  ; $6745: $e0 $00
    rst $38                                       ; $6747: $ff
    ld h, c                                       ; $6748: $61
    ld l, d                                       ; $6749: $6a
    ld sp, $ec63                                  ; $674a: $31 $63 $ec
    push hl                                       ; $674d: $e5
    ld [hl], e                                    ; $674e: $73
    add $bf                                       ; $674f: $c6 $bf
    adc l                                         ; $6751: $8d
    ld a, b                                       ; $6752: $78
    ld a, b                                       ; $6753: $78
    add a                                         ; $6754: $87
    ld a, [de]                                    ; $6755: $1a
    sbc l                                         ; $6756: $9d
    adc e                                         ; $6757: $8b
    sub a                                         ; $6758: $97
    db $fc                                        ; $6759: $fc
    push bc                                       ; $675a: $c5
    daa                                           ; $675b: $27
    db $10                                        ; $675c: $10
    ld bc, $de7d                                  ; $675d: $01 $7d $de
    add hl, sp                                    ; $6760: $39
    sub h                                         ; $6761: $94
    halt                                          ; $6762: $76
    add h                                         ; $6763: $84
    xor e                                         ; $6764: $ab
    halt                                          ; $6765: $76
    ld e, a                                       ; $6766: $5f
    ld h, [hl]                                    ; $6767: $66
    halt                                          ; $6768: $76
    ld l, c                                       ; $6769: $69
    and a                                         ; $676a: $a7
    db $f4                                        ; $676b: $f4
    cp c                                          ; $676c: $b9
    and [hl]                                      ; $676d: $a6
    or e                                          ; $676e: $b3
    ld h, a                                       ; $676f: $67
    ld h, [hl]                                    ; $6770: $66
    rst $10                                       ; $6771: $d7
    sbc d                                         ; $6772: $9a
    ld b, e                                       ; $6773: $43
    jr nc, jr_057_67f5                            ; $6774: $30 $7f

    push de                                       ; $6776: $d5
    ld l, e                                       ; $6777: $6b
    ld [hl], a                                    ; $6778: $77
    ld h, [hl]                                    ; $6779: $66
    inc a                                         ; $677a: $3c
    push hl                                       ; $677b: $e5

jr_057_677c:
    jr nc, jr_057_677c                            ; $677c: $30 $fe

    dec l                                         ; $677e: $2d
    db $fd                                        ; $677f: $fd
    and d                                         ; $6780: $a2
    rst $00                                       ; $6781: $c7
    cp a                                          ; $6782: $bf
    db $ed                                        ; $6783: $ed
    db $e4                                        ; $6784: $e4
    call nz, Call_000_35e7                        ; $6785: $c4 $e7 $35
    dec bc                                        ; $6788: $0b
    ld e, h                                       ; $6789: $5c
    or a                                          ; $678a: $b7
    sbc c                                         ; $678b: $99
    dec a                                         ; $678c: $3d
    rst $10                                       ; $678d: $d7
    adc $3f                                       ; $678e: $ce $3f
    db $ec                                        ; $6790: $ec
    dec a                                         ; $6791: $3d
    sub l                                         ; $6792: $95
    cp h                                          ; $6793: $bc
    ld a, [hl-]                                   ; $6794: $3a
    ld l, [hl]                                    ; $6795: $6e
    db $10                                        ; $6796: $10
    ld bc, $fadd                                  ; $6797: $01 $dd $fa
    adc b                                         ; $679a: $88
    ld d, a                                       ; $679b: $57
    and e                                         ; $679c: $a3
    add hl, hl                                    ; $679d: $29
    and $59                                       ; $679e: $e6 $59
    or $54                                        ; $67a0: $f6 $54
    ld a, [c]                                     ; $67a2: $f2
    ld [$8db8], a                                 ; $67a3: $ea $b8 $8d
    cp a                                          ; $67a6: $bf
    ld l, d                                       ; $67a7: $6a
    ccf                                           ; $67a8: $3f
    cp b                                          ; $67a9: $b8
    inc c                                         ; $67aa: $0c
    ld [hl], a                                    ; $67ab: $77
    dec de                                        ; $67ac: $1b
    di                                            ; $67ad: $f3
    ldh a, [rNR22]                                ; $67ae: $f0 $17
    db $fd                                        ; $67b0: $fd
    sub b                                         ; $67b1: $90
    reti                                          ; $67b2: $d9


    ld [de], a                                    ; $67b3: $12
    add $bf                                       ; $67b4: $c6 $bf
    xor l                                         ; $67b6: $ad
    ld [hl], a                                    ; $67b7: $77
    ld a, l                                       ; $67b8: $7d
    sbc d                                         ; $67b9: $9a
    cp $12                                        ; $67ba: $fe $12
    ldh [$ee], a                                  ; $67bc: $e0 $ee
    call z, $ca78                                 ; $67be: $cc $78 $ca
    ld h, c                                       ; $67c1: $61
    ld a, a                                       ; $67c2: $7f
    rst $00                                       ; $67c3: $c7
    ld [de], a                                    ; $67c4: $12
    ld h, $14                                     ; $67c5: $26 $14
    ld b, h                                       ; $67c7: $44
    dec a                                         ; $67c8: $3d
    xor a                                         ; $67c9: $af
    ld c, d                                       ; $67ca: $4a
    and e                                         ; $67cb: $a3
    ld e, l                                       ; $67cc: $5d
    call z, $ca78                                 ; $67cd: $cc $78 $ca
    ld h, c                                       ; $67d0: $61
    db $fc                                        ; $67d1: $fc
    ld e, e                                       ; $67d2: $5b
    ld a, [$ef45]                                 ; $67d3: $fa $45 $ef

jr_057_67d6:
    rst $28                                       ; $67d6: $ef
    ld e, b                                       ; $67d7: $58
    jp nz, $eb83                                  ; $67d8: $c2 $83 $eb

    ld [hl], $cf                                  ; $67db: $36 $cf
    push de                                       ; $67dd: $d5
    ld a, a                                       ; $67de: $7f
    adc h                                         ; $67df: $8c
    ld e, $97                                     ; $67e0: $1e $97
    ld h, $f0                                     ; $67e2: $26 $f0
    ld [$74d7], sp                                ; $67e4: $08 $d7 $74
    ld [hl], $84                                  ; $67e7: $36 $84
    ld [hl], b                                    ; $67e9: $70
    jp z, $d73c                                   ; $67ea: $ca $3c $d7

    ld e, d                                       ; $67ed: $5a
    ld e, a                                       ; $67ee: $5f
    push hl                                       ; $67ef: $e5
    ld a, [c]                                     ; $67f0: $f2
    ld [$6a57], sp                                ; $67f1: $08 $57 $6a
    inc b                                         ; $67f4: $04

jr_057_67f5:
    ld a, l                                       ; $67f5: $7d
    inc e                                         ; $67f6: $1c
    ld b, [hl]                                    ; $67f7: $46
    cp h                                          ; $67f8: $bc
    jp c, $cd6b                                   ; $67f9: $da $6b $cd

    ld h, l                                       ; $67fc: $65
    push hl                                       ; $67fd: $e5
    add l                                         ; $67fe: $85
    rst $08                                       ; $67ff: $cf
    inc a                                         ; $6800: $3c
    push hl                                       ; $6801: $e5
    ld a, [c]                                     ; $6802: $f2
    inc l                                         ; $6803: $2c
    ld a, e                                       ; $6804: $7b
    ld a, [hl+]                                   ; $6805: $2a
    ld a, c                                       ; $6806: $79
    ld [hl], l                                    ; $6807: $75
    call c, $ef52                                 ; $6808: $dc $52 $ef
    adc $8c                                       ; $680b: $ce $8c
    and a                                         ; $680d: $a7
    ld e, h                                       ; $680e: $5c
    ld e, $ff                                     ; $680f: $1e $ff
    sub [hl]                                      ; $6811: $96
    ld a, [hl]                                    ; $6812: $7e
    pop de                                        ; $6813: $d1
    db $e3                                        ; $6814: $e3
    rst $18                                       ; $6815: $df
    sub $bb                                       ; $6816: $d6 $bb
    ld a, $4d                                     ; $6818: $3e $4d
    ld a, a                                       ; $681a: $7f
    add hl, bc                                    ; $681b: $09
    inc hl                                        ; $681c: $23
    sub d                                         ; $681d: $92
    ld a, a                                       ; $681e: $7f
    and [hl]                                      ; $681f: $a6
    ld e, h                                       ; $6820: $5c
    sbc $8f                                       ; $6821: $de $8f
    pop de                                        ; $6823: $d1
    ld c, e                                       ; $6824: $4b
    ld a, [hl]                                    ; $6825: $7e
    dec de                                        ; $6826: $1b
    pop af                                        ; $6827: $f1
    add [hl]                                      ; $6828: $86
    cp a                                          ; $6829: $bf
    add sp, -$79                                  ; $682a: $e8 $87
    call z, $9096                                 ; $682c: $cc $96 $90
    ld a, [de]                                    ; $682f: $1a
    ld bc, $de7d                                  ; $6830: $01 $7d $de
    add hl, sp                                    ; $6833: $39

jr_057_6834:
    sub h                                         ; $6834: $94
    halt                                          ; $6835: $76
    dec e                                         ; $6836: $1d
    add a                                         ; $6837: $87
    ld [hl], c                                    ; $6838: $71
    ld h, l                                       ; $6839: $65
    and l                                         ; $683a: $a5
    cp h                                          ; $683b: $bc
    rra                                           ; $683c: $1f
    and e                                         ; $683d: $a3
    and a                                         ; $683e: $a7
    db $f4                                        ; $683f: $f4

jr_057_6840:
    dec h                                         ; $6840: $25
    xor a                                         ; $6841: $af
    halt                                          ; $6842: $76
    jr z, jr_057_67d6                             ; $6843: $28 $91

    ld e, c                                       ; $6845: $59
    ld h, $8f                                     ; $6846: $26 $8f
    reti                                          ; $6848: $d9


    push af                                       ; $6849: $f5
    ld [de], a                                    ; $684a: $12
    pop de                                        ; $684b: $d1
    xor [hl]                                      ; $684c: $ae
    rst $20                                       ; $684d: $e7
    ld d, l                                       ; $684e: $55
    ld l, c                                       ; $684f: $69
    ldh [$fa], a                                  ; $6850: $e0 $fa
    jr c, jr_057_6840                             ; $6852: $38 $ec

    call nz, $f6d7                                ; $6854: $c4 $d7 $f6
    ld h, e                                       ; $6857: $63
    db $f4                                        ; $6858: $f4
    adc $9f                                       ; $6859: $ce $9f
    ld h, h                                       ; $685b: $64
    cpl                                           ; $685c: $2f
    db $e3                                        ; $685d: $e3
    add hl, hl                                    ; $685e: $29
    inc sp                                        ; $685f: $33
    ld e, e                                       ; $6860: $5b
    dec sp                                        ; $6861: $3b
    ld l, h                                       ; $6862: $6c
    sbc c                                         ; $6863: $99
    jp nc, Jump_057_5347                          ; $6864: $d2 $47 $53

    or l                                          ; $6867: $b5
    db $e3                                        ; $6868: $e3
    ld d, c                                       ; $6869: $51
    and e                                         ; $686a: $a3
    sbc e                                         ; $686b: $9b
    ld h, [hl]                                    ; $686c: $66
    db $fc                                        ; $686d: $fc
    ld e, e                                       ; $686e: $5b
    ld a, [$8f45]                                 ; $686f: $fa $45 $8f
    ld a, a                                       ; $6872: $7f
    db $db                                        ; $6873: $db
    or c                                          ; $6874: $b1
    add h                                         ; $6875: $84
    inc bc                                        ; $6876: $03
    ld de, $97b7                                  ; $6877: $11 $b7 $97
    or c                                          ; $687a: $b1
    ld [hl], d                                    ; $687b: $72
    di                                            ; $687c: $f3
    sbc c                                         ; $687d: $99
    adc $d6                                       ; $687e: $ce $d6
    xor $b8                                       ; $6880: $ee $b8
    sub $71                                       ; $6882: $d6 $71
    add b                                         ; $6884: $80
    db $eb                                        ; $6885: $eb
    ld [hl], $2f                                  ; $6886: $36 $2f
    db $dd                                        ; $6888: $dd
    ld a, [hl]                                    ; $6889: $7e
    ld c, l                                       ; $688a: $4d
    ld [hl], d                                    ; $688b: $72
    sbc h                                         ; $688c: $9c
    ld a, [c]                                     ; $688d: $f2
    add hl, sp                                    ; $688e: $39
    adc c                                         ; $688f: $89

jr_057_6890:
    xor e                                         ; $6890: $ab
    inc a                                         ; $6891: $3c
    inc sp                                        ; $6892: $33
    rrca                                          ; $6893: $0f
    ld a, a                                       ; $6894: $7f
    pop de                                        ; $6895: $d1
    rrca                                          ; $6896: $0f
    sbc c                                         ; $6897: $99
    dec l                                         ; $6898: $2d
    ld h, c                                       ; $6899: $61
    db $fc                                        ; $689a: $fc
    db $db                                        ; $689b: $db
    ld a, d                                       ; $689c: $7a
    rst $10                                       ; $689d: $d7
    and a                                         ; $689e: $a7
    jp hl                                         ; $689f: $e9


    cpl                                           ; $68a0: $2f
    ld bc, $27ae                                  ; $68a1: $01 $ae $27
    sub e                                         ; $68a4: $93
    db $e4                                        ; $68a5: $e4
    cp $8e                                        ; $68a6: $fe $8e
    dec h                                         ; $68a8: $25
    ld c, h                                       ; $68a9: $4c
    jr z, jr_057_6834                             ; $68aa: $28 $88

    nop                                           ; $68ac: $00
    ld a, l                                       ; $68ad: $7d
    inc e                                         ; $68ae: $1c
    ld d, $9f                                     ; $68af: $16 $9f
    xor h                                         ; $68b1: $ac
    ld sp, hl                                     ; $68b2: $f9
    ld a, b                                       ; $68b3: $78
    jp z, Jump_000_2761                           ; $68b4: $ca $61 $27

    db $e3                                        ; $68b7: $e3
    ld e, c                                       ; $68b8: $59
    ld b, [hl]                                    ; $68b9: $46
    sub c                                         ; $68ba: $91
    sub [hl]                                      ; $68bb: $96
    and l                                         ; $68bc: $a5
    ld [hl], e                                    ; $68bd: $73
    call nc, $e7ae                                ; $68be: $d4 $ae $e7
    ld d, l                                       ; $68c1: $55
    ld l, c                                       ; $68c2: $69
    halt                                          ; $68c3: $76
    ld e, a                                       ; $68c4: $5f
    ld h, [hl]                                    ; $68c5: $66
    halt                                          ; $68c6: $76
    and l                                         ; $68c7: $a5
    ld e, $c0                                     ; $68c8: $1e $c0
    rst $18                                       ; $68ca: $df
    halt                                          ; $68cb: $76
    ld [hl], d                                    ; $68cc: $72
    ld [c], a                                     ; $68cd: $e2
    di                                            ; $68ce: $f3
    sbc d                                         ; $68cf: $9a
    ld b, l                                       ; $68d0: $45
    cp e                                          ; $68d1: $bb
    ld l, $8d                                     ; $68d2: $2e $8d
    db $d3                                        ; $68d4: $d3
    db $ed                                        ; $68d5: $ed
    rst $00                                       ; $68d6: $c7
    add sp, -$0a                                  ; $68d7: $e8 $f6
    ld b, e                                       ; $68d9: $43
    ld l, d                                       ; $68da: $6a
    inc b                                         ; $68db: $04
    db $dd                                        ; $68dc: $dd
    ld h, [hl]                                    ; $68dd: $66
    or $4e                                        ; $68de: $f6 $4e
    ld a, h                                       ; $68e0: $7c
    ld l, l                                       ; $68e1: $6d
    ld c, d                                       ; $68e2: $4a
    rra                                           ; $68e3: $1f
    ld c, l                                       ; $68e4: $4d
    db $ed                                        ; $68e5: $ed
    ld c, c                                       ; $68e6: $49
    jr z, jr_057_6890                             ; $68e7: $28 $a7

    sbc $e5                                       ; $68e9: $de $e5
    jp $f45f                                      ; $68eb: $c3 $5f $f4


    ld b, e                                       ; $68ee: $43
    ld h, [hl]                                    ; $68ef: $66
    ld c, e                                       ; $68f0: $4b
    jr @+$01                                      ; $68f1: $18 $ff

    or [hl]                                       ; $68f3: $b6
    sbc $f5                                       ; $68f4: $de $f5
    ld l, c                                       ; $68f6: $69
    ld a, [$804b]                                 ; $68f7: $fa $4b $80
    cp e                                          ; $68fa: $bb
    scf                                           ; $68fb: $37
    ld c, h                                       ; $68fc: $4c
    jr z, @-$11                                   ; $68fd: $28 $ed

    ldh a, [$ab]                                  ; $68ff: $f0 $ab
    db $d3                                        ; $6901: $d3
    add hl, de                                    ; $6902: $19
    rst $38                                       ; $6903: $ff
    sub [hl]                                      ; $6904: $96
    ld a, [hl]                                    ; $6905: $7e
    pop de                                        ; $6906: $d1
    ei                                            ; $6907: $fb
    dec sp                                        ; $6908: $3b
    sub [hl]                                      ; $6909: $96
    sub b                                         ; $690a: $90
    ld a, [de]                                    ; $690b: $1a
    ld bc, $ffdd                                  ; $690c: $01 $dd $ff
    sbc h                                         ; $690f: $9c
    scf                                           ; $6910: $37
    jp nz, Jump_057_4c35                          ; $6911: $c2 $35 $4c

    ld c, l                                       ; $6914: $4d
    jp hl                                         ; $6915: $e9


    and e                                         ; $6916: $a3
    xor c                                         ; $6917: $a9
    pop de                                        ; $6918: $d1
    ld e, l                                       ; $6919: $5d
    or l                                          ; $691a: $b5
    adc [hl]                                      ; $691b: $8e
    jp Jump_057_5502                              ; $691c: $c3 $02 $55


    ld [hl], b                                    ; $691f: $70
    scf                                           ; $6920: $37
    or a                                          ; $6921: $b7
    and $f5                                       ; $6922: $e6 $f5
    ld a, [hl]                                    ; $6924: $7e
    adc l                                         ; $6925: $8d
    sub e                                         ; $6926: $93
    ld e, h                                       ; $6927: $5c
    ld a, h                                       ; $6928: $7c
    adc c                                         ; $6929: $89
    sbc e                                         ; $692a: $9b
    inc de                                        ; $692b: $13
    rst $10                                       ; $692c: $d7
    adc $c3                                       ; $692d: $ce $c3
    call $9235                                    ; $692f: $cd $35 $92
    jp c, $ae2d                                   ; $6932: $da $2d $ae

    ld l, $cc                                     ; $6935: $2e $cc
    ld e, $e1                                     ; $6937: $1e $e1
    ld a, b                                       ; $6939: $78
    ld e, h                                       ; $693a: $5c
    bit 4, c                                      ; $693b: $cb $61
    ld e, h                                       ; $693d: $5c
    cp c                                          ; $693e: $b9
    dec [hl]                                      ; $693f: $35
    ld l, h                                       ; $6940: $6c
    sub c                                         ; $6941: $91
    ld c, e                                       ; $6942: $4b
    ld h, d                                       ; $6943: $62
    ld l, $86                                     ; $6944: $2e $86
    cp e                                          ; $6946: $bb
    ld h, e                                       ; $6947: $63
    ld [$f39f], a                                 ; $6948: $ea $9f $f3

Jump_057_694b:
    halt                                          ; $694b: $76
    ld a, e                                       ; $694c: $7b
    ld l, [hl]                                    ; $694d: $6e
    ccf                                           ; $694e: $3f
    ld e, e                                       ; $694f: $5b
    cp h                                          ; $6950: $bc
    or $42                                        ; $6951: $f6 $42
    cp c                                          ; $6953: $b9
    and [hl]                                      ; $6954: $a6
    db $f4                                        ; $6955: $f4
    push bc                                       ; $6956: $c5
    ld e, h                                       ; $6957: $5c
    db $fc                                        ; $6958: $fc
    and [hl]                                      ; $6959: $a6
    cp [hl]                                       ; $695a: $be
    jr @+$70                                      ; $695b: $18 $6e

    or a                                          ; $695d: $b7
    rst $20                                       ; $695e: $e7
    or $f3                                        ; $695f: $f6 $f3
    jp nc, $e4e5                                  ; $6961: $d2 $e5 $e4

    sbc a                                         ; $6964: $9f
    and l                                         ; $6965: $a5
    ei                                            ; $6966: $fb
    ld a, [hl+]                                   ; $6967: $2a
    rst $10                                       ; $6968: $d7
    sub h                                         ; $6969: $94
    cp [hl]                                       ; $696a: $be
    jp nc, $f145                                  ; $696b: $d2 $45 $f1

    ld c, b                                       ; $696e: $48
    ld c, d                                       ; $696f: $4a
    dec sp                                        ; $6970: $3b
    ld l, h                                       ; $6971: $6c

jr_057_6972:
    reti                                          ; $6972: $d9


    db $ed                                        ; $6973: $ed
    cp c                                          ; $6974: $b9
    db $fd                                        ; $6975: $fd
    inc a                                         ; $6976: $3c
    db $fc                                        ; $6977: $fc
    jp nz, $8ed7                                  ; $6978: $c2 $d7 $8e

    ret z                                         ; $697b: $c8

    adc c                                         ; $697c: $89
    push de                                       ; $697d: $d5
    ld l, e                                       ; $697e: $6b
    ld l, c                                       ; $697f: $69
    dec e                                         ; $6980: $1d
    sbc e                                         ; $6981: $9b
    or l                                          ; $6982: $b5
    ld [hl], e                                    ; $6983: $73
    adc l                                         ; $6984: $8d
    adc $b5                                       ; $6985: $ce $b5
    sub e                                         ; $6987: $93
    db $f4                                        ; $6988: $f4
    ld d, l                                       ; $6989: $55
    inc a                                         ; $698a: $3c
    cp $6d                                        ; $698b: $fe $6d
    call nc, $fd54                                ; $698d: $d4 $54 $fd
    call nz, Call_057_61cb                        ; $6990: $c4 $cb $61
    and a                                         ; $6993: $a7
    sbc c                                         ; $6994: $99

jr_057_6995:
    db $f4                                        ; $6995: $f4
    ld c, b                                       ; $6996: $48
    ld a, [bc]                                    ; $6997: $0a
    xor [hl]                                      ; $6998: $ae
    ei                                            ; $6999: $fb
    inc sp                                        ; $699a: $33
    cpl                                           ; $699b: $2f
    or c                                          ; $699c: $b1
    or b                                          ; $699d: $b0
    ld l, e                                       ; $699e: $6b
    inc h                                         ; $699f: $24
    dec [hl]                                      ; $69a0: $35
    push hl                                       ; $69a1: $e5
    jr nc, @-$6c                                  ; $69a2: $30 $92

    ld e, d                                       ; $69a4: $5a
    rst $28                                       ; $69a5: $ef
    rst $10                                       ; $69a6: $d7
    jr c, jr_057_6972                             ; $69a7: $38 $c9

    push bc                                       ; $69a9: $c5
    jp c, $cb61                                   ; $69aa: $da $61 $cb

    sub h                                         ; $69ad: $94
    cp [hl]                                       ; $69ae: $be
    ld hl, sp+$64                                 ; $69af: $f8 $64
    ld hl, $5e2b                                  ; $69b1: $21 $2b $5e
    db $fc                                        ; $69b4: $fc
    ld sp, $247a                                  ; $69b5: $31 $7a $24
    dec [hl]                                      ; $69b8: $35
    ld h, l                                       ; $69b9: $65
    sbc [hl]                                      ; $69ba: $9e
    ld d, b                                       ; $69bb: $50
    ld l, e                                       ; $69bc: $6b
    ccf                                           ; $69bd: $3f
    cp [hl]                                       ; $69be: $be
    call nz, $ae0d                                ; $69bf: $c4 $0d $ae
    ld e, e                                       ; $69c2: $5b
    ld e, a                                       ; $69c3: $5f
    ld a, h                                       ; $69c4: $7c
    or d                                          ; $69c5: $b2
    db $f4                                        ; $69c6: $f4
    dec hl                                        ; $69c7: $2b
    rst $28                                       ; $69c8: $ef
    rst $00                                       ; $69c9: $c7
    add sp, -$6f                                  ; $69ca: $e8 $91
    ld a, [hl-]                                   ; $69cc: $3a
    or e                                          ; $69cd: $b3
    daa                                           ; $69ce: $27
    reti                                          ; $69cf: $d9


    or d                                          ; $69d0: $b2
    sbc b                                         ; $69d1: $98
    adc e                                         ; $69d2: $8b
    rst $30                                       ; $69d3: $f7
    and a                                         ; $69d4: $a7
    call z, Call_000_08b3                         ; $69d5: $cc $b3 $08
    dec b                                         ; $69d8: $05
    ld de, $bd77                                  ; $69d9: $11 $77 $bd
    jr nc, jr_057_6995                            ; $69dc: $30 $b7

    rra                                           ; $69de: $1f
    rst $08                                       ; $69df: $cf
    cpl                                           ; $69e0: $2f
    inc b                                         ; $69e1: $04
    dec a                                         ; $69e2: $3d
    ld l, [hl]                                    ; $69e3: $6e
    rst $00                                       ; $69e4: $c7
    add a                                         ; $69e5: $87
    dec [hl]                                      ; $69e6: $35
    dec d                                         ; $69e7: $15
    cp a                                          ; $69e8: $bf
    inc b                                         ; $69e9: $04
    inc b                                         ; $69ea: $04
    ld [hl], a                                    ; $69eb: $77
    ld h, $af                                     ; $69ec: $26 $af
    ld h, c                                       ; $69ee: $61
    inc hl                                        ; $69ef: $23
    nop                                           ; $69f0: $00
    inc e                                         ; $69f1: $1c
    inc l                                         ; $69f2: $2c
    ld l, $d7                                     ; $69f3: $2e $d7
    sub a                                         ; $69f5: $97
    add b                                         ; $69f6: $80
    nop                                           ; $69f7: $00
    ld [hl], a                                    ; $69f8: $77
    or [hl]                                       ; $69f9: $b6
    sub a                                         ; $69fa: $97
    ld c, [hl]                                    ; $69fb: $4e
    cp e                                          ; $69fc: $bb
    inc e                                         ; $69fd: $1c
    inc b                                         ; $69fe: $04
    ld bc, $9229                                  ; $69ff: $01 $29 $92
    ld c, c                                       ; $6a02: $49
    jp nc, $a65c                                  ; $6a03: $d2 $5c $a6

    ld l, c                                       ; $6a06: $69
    inc b                                         ; $6a07: $04
    add hl, hl                                    ; $6a08: $29
    sub d                                         ; $6a09: $92
    ld c, c                                       ; $6a0a: $49
    jp nc, $cb87                                  ; $6a0b: $d2 $87 $cb

    sbc a                                         ; $6a0e: $9f
    ld b, [hl]                                    ; $6a0f: $46
    or a                                          ; $6a10: $b7
    rst $20                                       ; $6a11: $e7
    ld [c], a                                     ; $6a12: $e2
    jp nc, $b6b4                                  ; $6a13: $d2 $b4 $b6

jr_057_6a16:
    sub b                                         ; $6a16: $90
    dec d                                         ; $6a17: $15
    cp e                                          ; $6a18: $bb
    ld a, $02                                     ; $6a19: $3e $02
    or a                                          ; $6a1b: $b7
    push bc                                       ; $6a1c: $c5
    jp Jump_057_46f5                              ; $6a1d: $c3 $f5 $46


    ld h, [hl]                                    ; $6a20: $66
    ld c, e                                       ; $6a21: $4b
    ld b, b                                       ; $6a22: $40
    dec a                                         ; $6a23: $3d
    ld l, [hl]                                    ; $6a24: $6e
    jp hl                                         ; $6a25: $e9


    or d                                          ; $6a26: $b2
    ld a, [de]                                    ; $6a27: $1a
    sbc l                                         ; $6a28: $9d
    dec hl                                        ; $6a29: $2b
    ld a, h                                       ; $6a2a: $7c
    sbc d                                         ; $6a2b: $9a
    push hl                                       ; $6a2c: $e5
    ld c, e                                       ; $6a2d: $4b
    ld b, b                                       ; $6a2e: $40
    or a                                          ; $6a2f: $b7
    ld [hl], a                                    ; $6a30: $77
    ld e, h                                       ; $6a31: $5c
    ld [hl-], a                                   ; $6a32: $32
    ld a, [hl-]                                   ; $6a33: $3a
    ld d, a                                       ; $6a34: $57
    ld a, [$b889]                                 ; $6a35: $fa $89 $b8
    dec e                                         ; $6a38: $1d
    inc hl                                        ; $6a39: $23
    or a                                          ; $6a3a: $b7
    ld hl, sp+$44                                 ; $6a3b: $f8 $44
    dec c                                         ; $6a3d: $0d
    inc sp                                        ; $6a3e: $33
    ld [bc], a                                    ; $6a3f: $02
    scf                                           ; $6a40: $37
    daa                                           ; $6a41: $27
    call $010a                                    ; $6a42: $cd $0a $01
    add hl, hl                                    ; $6a45: $29
    xor h                                         ; $6a46: $ac
    xor c                                         ; $6a47: $a9

Jump_057_6a48:
    ld l, b                                       ; $6a48: $68
    inc b                                         ; $6a49: $04
    ld [hl], a                                    ; $6a4a: $77
    ld h, [hl]                                    ; $6a4b: $66
    ld a, [c]                                     ; $6a4c: $f2
    inc hl                                        ; $6a4d: $23
    or a                                          ; $6a4e: $b7
    rst $20                                       ; $6a4f: $e7
    and d                                         ; $6a50: $a2
    ld e, l                                       ; $6a51: $5d
    jp z, $87ed                                   ; $6a52: $ca $ed $87

    dec e                                         ; $6a55: $1d
    sub $54                                       ; $6a56: $d6 $54
    inc [hl]                                      ; $6a58: $34
    ld [bc], a                                    ; $6a59: $02
    add hl, hl                                    ; $6a5a: $29
    ld e, l                                       ; $6a5b: $5d
    adc c                                         ; $6a5c: $89
    jr nz, jr_057_6a16                            ; $6a5d: $20 $b7

    dec [hl]                                      ; $6a5f: $35
    ld h, e                                       ; $6a60: $63
    dec bc                                        ; $6a61: $0b
    adc a                                         ; $6a62: $8f
    ld a, a                                       ; $6a63: $7f
    dec de                                        ; $6a64: $1b
    db $dd                                        ; $6a65: $dd
    jp hl                                         ; $6a66: $e9


    xor e                                         ; $6a67: $ab
    db $10                                        ; $6a68: $10
    or a                                          ; $6a69: $b7
    rst $20                                       ; $6a6a: $e7
    ld c, d                                       ; $6a6b: $4a
    ld e, e                                       ; $6a6c: $5b
    sub l                                         ; $6a6d: $95
    ld a, c                                       ; $6a6e: $79
    ld hl, sp-$7b                                 ; $6a6f: $f8 $85
    adc a                                         ; $6a71: $8f
    nop                                           ; $6a72: $00
    cp l                                          ; $6a73: $bd
    ccf                                           ; $6a74: $3f
    call Call_057_631f                            ; $6a75: $cd $1f $63
    ld e, l                                       ; $6a78: $5d
    ld a, $9b                                     ; $6a79: $3e $9b
    ld de, $94b7                                  ; $6a7b: $11 $b7 $94
    adc [hl]                                      ; $6a7e: $8e
    pop af                                        ; $6a7f: $f1
    sub a                                         ; $6a80: $97
    add b                                         ; $6a81: $80
    nop                                           ; $6a82: $00
    db $dd                                        ; $6a83: $dd
    rst $38                                       ; $6a84: $ff
    ld [hl], b                                    ; $6a85: $70
    dec a                                         ; $6a86: $3d
    jp nz, Jump_000_0085                          ; $6a87: $c2 $85 $00

    add b                                         ; $6a8a: $80
    push af                                       ; $6a8b: $f5
    db $10                                        ; $6a8c: $10
    ld a, h                                       ; $6a8d: $7c
    sbc [hl]                                      ; $6a8e: $9e
    inc b                                         ; $6a8f: $04
    inc b                                         ; $6a90: $04
    add hl, hl                                    ; $6a91: $29
    db $fc                                        ; $6a92: $fc
    dec h                                         ; $6a93: $25
    ld e, d                                       ; $6a94: $5a
    sub h                                         ; $6a95: $94
    ld b, a                                       ; $6a96: $47
    or [hl]                                       ; $6a97: $b6
    daa                                           ; $6a98: $27
    db $ec                                        ; $6a99: $ec
    ld b, d                                       ; $6a9a: $42
    nop                                           ; $6a9b: $00
    rlc c                                         ; $6a9c: $cb $01
    ld bc, $39dd                                  ; $6a9e: $01 $dd $39
    or c                                          ; $6aa1: $b1
    jr nz, jr_057_6acd                            ; $6aa2: $20 $29

    sbc h                                         ; $6aa4: $9c
    dec bc                                        ; $6aa5: $0b
    inc hl                                        ; $6aa6: $23
    or a                                          ; $6aa7: $b7
    adc c                                         ; $6aa8: $89
    ld a, [hl+]                                   ; $6aa9: $2a
    adc a                                         ; $6aaa: $8f
    cp $16                                        ; $6aab: $fe $16
    ld h, l                                       ; $6aad: $65
    inc b                                         ; $6aae: $04
    db $dd                                        ; $6aaf: $dd
    add hl, sp                                    ; $6ab0: $39
    db $dd                                        ; $6ab1: $dd
    cp h                                          ; $6ab2: $bc
    db $e3                                        ; $6ab3: $e3
    rra                                           ; $6ab4: $1f
    ld [$21f3], sp                                ; $6ab5: $08 $f3 $21
    or e                                          ; $6ab8: $b3
    dec h                                         ; $6ab9: $25
    jr nz, jr_057_6abc                            ; $6aba: $20 $00

jr_057_6abc:
    sbc h                                         ; $6abc: $9c
    cp b                                          ; $6abd: $b8
    adc [hl]                                      ; $6abe: $8e
    db $eb                                        ; $6abf: $eb
    ld c, e                                       ; $6ac0: $4b
    ld b, b                                       ; $6ac1: $40
    add hl, hl                                    ; $6ac2: $29
    ccf                                           ; $6ac3: $3f
    xor b                                         ; $6ac4: $a8
    db $d3                                        ; $6ac5: $d3
    dec d                                         ; $6ac6: $15
    ld de, $6677                                  ; $6ac7: $11 $77 $66
    and c                                         ; $6aca: $a1
    dec hl                                        ; $6acb: $2b
    dec bc                                        ; $6acc: $0b

jr_057_6acd:
    cp a                                          ; $6acd: $bf
    db $d3                                        ; $6ace: $d3
    ret                                           ; $6acf: $c9


    ld [hl], d                                    ; $6ad0: $72
    ld c, $99                                     ; $6ad1: $0e $99
    dec bc                                        ; $6ad3: $0b
    ld bc, $dd00                                  ; $6ad4: $01 $00 $dd
    inc e                                         ; $6ad7: $1c
    ld [$87d1], a                                 ; $6ad8: $ea $d1 $87
    adc l                                         ; $6adb: $8d
    ld c, c                                       ; $6adc: $49
    scf                                           ; $6add: $37
    inc b                                         ; $6ade: $04
    add hl, hl                                    ; $6adf: $29
    ret                                           ; $6ae0: $c9


    adc e                                         ; $6ae1: $8b
    inc a                                         ; $6ae2: $3c
    ld d, d                                       ; $6ae3: $52
    sub a                                         ; $6ae4: $97
    ret z                                         ; $6ae5: $c8

    ld [$6bb7], sp                                ; $6ae6: $08 $b7 $6b
    ld e, d                                       ; $6ae9: $5a
    dec de                                        ; $6aea: $1b
    ld c, c                                       ; $6aeb: $49
    dec c                                         ; $6aec: $0d
    cp a                                          ; $6aed: $bf
    ldh a, [rNR11]                                ; $6aee: $f0 $11
    nop                                           ; $6af0: $00
    sbc h                                         ; $6af1: $9c
    cp b                                          ; $6af2: $b8
    adc [hl]                                      ; $6af3: $8e
    ld l, e                                       ; $6af4: $6b
    ld hl, sp-$7b                                 ; $6af5: $f8 $85
    adc a                                         ; $6af7: $8f
    nop                                           ; $6af8: $00

jr_057_6af9:
    or a                                          ; $6af9: $b7
    ld l, e                                       ; $6afa: $6b
    ld e, d                                       ; $6afb: $5a
    dec de                                        ; $6afc: $1b
    ld c, c                                       ; $6afd: $49

jr_057_6afe:
    db $ed                                        ; $6afe: $ed
    ld hl, sp+$07                                 ; $6aff: $f8 $07
    jp nz, $008c                                  ; $6b01: $c2 $8c $00

    nop                                           ; $6b04: $00
    ld a, a                                       ; $6b05: $7f
    adc e                                         ; $6b06: $8b
    xor a                                         ; $6b07: $af
    or l                                          ; $6b08: $b5
    sub c                                         ; $6b09: $91
    xor a                                         ; $6b0a: $af
    ld e, $d9                                     ; $6b0b: $1e $d9
    inc [hl]                                      ; $6b0d: $34

Call_057_6b0e:
    ld [$fc29], sp                                ; $6b0e: $08 $29 $fc
    ld c, c                                       ; $6b11: $49
    adc e                                         ; $6b12: $8b
    ld b, d                                       ; $6b13: $42
    dec a                                         ; $6b14: $3d
    ld l, [hl]                                    ; $6b15: $6e
    jp hl                                         ; $6b16: $e9


    or d                                          ; $6b17: $b2
    ld [hl], d                                    ; $6b18: $72
    dec sp                                        ; $6b19: $3b
    ld a, $4f                                     ; $6b1a: $3e $4f
    ld b, d                                       ; $6b1c: $42
    sbc c                                         ; $6b1d: $99
    ld b, h                                       ; $6b1e: $44
    rst $30                                       ; $6b1f: $f7
    db $fc                                        ; $6b20: $fc
    add h                                         ; $6b21: $84
    ld e, d                                       ; $6b22: $5a
    ld h, $49                                     ; $6b23: $26 $49
    inc b                                         ; $6b25: $04
    add b                                         ; $6b26: $80
    cp a                                          ; $6b27: $bf
    ret z                                         ; $6b28: $c8

    adc [hl]                                      ; $6b29: $8e
    ld a, a                                       ; $6b2a: $7f
    jr nz, jr_057_6af9                            ; $6b2b: $20 $cc

    add a                                         ; $6b2d: $87
    call z, $8096                                 ; $6b2e: $cc $96 $80
    nop                                           ; $6b31: $00
    add b                                         ; $6b32: $80
    cp a                                          ; $6b33: $bf
    ret z                                         ; $6b34: $c8

    ldh a, [$0b]                                  ; $6b35: $f0 $0b
    sbc a                                         ; $6b37: $9f
    call z, $8096                                 ; $6b38: $cc $96 $80
    nop                                           ; $6b3b: $00
    or a                                          ; $6b3c: $b7
    ld [hl], a                                    ; $6b3d: $77
    ld e, h                                       ; $6b3e: $5c
    ld [hl-], a                                   ; $6b3f: $32
    db $fc                                        ; $6b40: $fc
    jp nz, $b327                                  ; $6b41: $c2 $27 $b3

    dec h                                         ; $6b44: $25
    jr nz, jr_057_6afe                            ; $6b45: $20 $b7

    ld l, e                                       ; $6b47: $6b
    ld e, d                                       ; $6b48: $5a
    dec de                                        ; $6b49: $1b
    ld c, c                                       ; $6b4a: $49
    db $ed                                        ; $6b4b: $ed
    dec [hl]                                      ; $6b4c: $35
    ld b, [hl]                                    ; $6b4d: $46
    ld [hl], a                                    ; $6b4e: $77
    cp a                                          ; $6b4f: $bf
    ldh a, [$3f]                                  ; $6b50: $f0 $3f
    add $ba                                       ; $6b52: $c6 $ba
    ld a, h                                       ; $6b54: $7c
    ld [hl], $23                                  ; $6b55: $36 $23
    ld [hl], a                                    ; $6b57: $77
    ld h, b                                       ; $6b58: $60
    xor h                                         ; $6b59: $ac
    bit 4, a                                      ; $6b5a: $cb $67
    inc sp                                        ; $6b5c: $33
    ld [bc], a                                    ; $6b5d: $02
    add b                                         ; $6b5e: $80
    jr jr_057_6ba0                                ; $6b5f: $18 $3f

    ld h, [hl]                                    ; $6b61: $66
    or a                                          ; $6b62: $b7
    ld h, e                                       ; $6b63: $63
    inc b                                         ; $6b64: $04
    or a                                          ; $6b65: $b7
    push bc                                       ; $6b66: $c5
    ld b, e                                       ; $6b67: $43
    or [hl]                                       ; $6b68: $b6
    xor h                                         ; $6b69: $ac
    ld e, h                                       ; $6b6a: $5c
    ld d, $e5                                     ; $6b6b: $16 $e5
    pop de                                        ; $6b6d: $d1
    cp c                                          ; $6b6e: $b9
    jp nc, $c44f                                  ; $6b6f: $d2 $4f $c4

    db $ed                                        ; $6b72: $ed
    jr jr_057_6b76                                ; $6b73: $18 $01

    dec a                                         ; $6b75: $3d

jr_057_6b76:
    xor [hl]                                      ; $6b76: $ae
    db $fc                                        ; $6b77: $fc
    ld c, a                                       ; $6b78: $4f
    call c, Call_057_4d61                         ; $6b79: $dc $61 $4d
    ld b, l                                       ; $6b7c: $45
    inc hl                                        ; $6b7d: $23
    or a                                          ; $6b7e: $b7
    db $eb                                        ; $6b7f: $eb
    xor l                                         ; $6b80: $ad
    adc l                                         ; $6b81: $8d
    adc $c5                                       ; $6b82: $ce $c5
    and l                                         ; $6b84: $a5
    ld l, c                                       ; $6b85: $69
    call $18ed                                    ; $6b86: $cd $ed $18
    ld bc, $e677                                  ; $6b89: $01 $77 $e6
    ld h, d                                       ; $6b8c: $62
    adc e                                         ; $6b8d: $8b

Call_057_6b8e:
    rst $10                                       ; $6b8e: $d7
    ld e, [hl]                                    ; $6b8f: $5e
    ld d, b                                       ; $6b90: $50
    sbc [hl]                                      ; $6b91: $9e
    ld h, l                                       ; $6b92: $65
    db $fc                                        ; $6b93: $fc

Call_057_6b94:
    dec de                                        ; $6b94: $1b
    db $ed                                        ; $6b95: $ed
    and [hl]                                      ; $6b96: $a6
    ld a, [hl]                                    ; $6b97: $7e
    sbc b                                         ; $6b98: $98
    db $db                                        ; $6b99: $db

Call_057_6b9a:
    adc a                                         ; $6b9a: $8f

Call_057_6b9b:
    rst $20                                       ; $6b9b: $e7
    ld d, a                                       ; $6b9c: $57
    ld l, d                                       ; $6b9d: $6a
    inc b                                         ; $6b9e: $04
    ld [hl], a                                    ; $6b9f: $77

jr_057_6ba0:
    and $62                                       ; $6ba0: $e6 $62
    adc e                                         ; $6ba2: $8b
    rla                                           ; $6ba3: $17

Jump_057_6ba4:
    ld a, [hl-]                                   ; $6ba4: $3a
    sub [hl]                                      ; $6ba5: $96
    ld c, h                                       ; $6ba6: $4c
    sub d                                         ; $6ba7: $92
    ld h, l                                       ; $6ba8: $65
    ld h, [hl]                                    ; $6ba9: $66
    di                                            ; $6baa: $f3
    inc h                                         ; $6bab: $24
    ld e, e                                       ; $6bac: $5b
    or $92                                        ; $6bad: $f6 $92
    dec e                                         ; $6baf: $1d
    rst $38                                       ; $6bb0: $ff
    ld b, b                                       ; $6bb1: $40
    sbc b                                         ; $6bb2: $98
    rrca                                          ; $6bb3: $0f
    sbc c                                         ; $6bb4: $99

Call_057_6bb5:
    dec l                                         ; $6bb5: $2d
    pop bc                                        ; $6bb6: $c1
    ld h, d                                       ; $6bb7: $62
    adc b                                         ; $6bb8: $88
    nop                                           ; $6bb9: $00
    ld [hl], a                                    ; $6bba: $77
    and $62                                       ; $6bbb: $e6 $62
    adc e                                         ; $6bbd: $8b
    rla                                           ; $6bbe: $17
    ld [hl], l                                    ; $6bbf: $75
    ld de, $c7ef                                  ; $6bc0: $11 $ef $c7
    add sp, $11                                   ; $6bc3: $e8 $11
    dec e                                         ; $6bc5: $1d
    scf                                           ; $6bc6: $37
    jp nc, $0e53                                  ; $6bc7: $d2 $53 $0e

    ld d, e                                       ; $6bca: $53
    ld d, $f1                                     ; $6bcb: $16 $f1
    jp nz, Jump_057_6093                          ; $6bcd: $c2 $93 $60

    add c                                         ; $6bd0: $81
    db $eb                                        ; $6bd1: $eb
    sub $47                                       ; $6bd2: $d6 $47
    cp h                                          ; $6bd4: $bc
    ld a, [de]                                    ; $6bd5: $1a
    ld a, [hl]                                    ; $6bd6: $7e
    pop bc                                        ; $6bd7: $c1
    ld h, h                                       ; $6bd8: $64
    push hl                                       ; $6bd9: $e5
    ld [hl], h                                    ; $6bda: $74
    inc sp                                        ; $6bdb: $33
    halt                                          ; $6bdc: $76
    ld l, c                                       ; $6bdd: $69
    ld b, a                                       ; $6bde: $47
    ld [hl], a                                    ; $6bdf: $77
    dec [hl]                                      ; $6be0: $35
    rst $10                                       ; $6be1: $d7
    sub h                                         ; $6be2: $94
    jp $f24e                                      ; $6be3: $c3 $4e $f2


    ld sp, $5b76                                  ; $6be6: $31 $76 $5b
    ld c, $3b                                     ; $6be9: $0e $3b
    ret                                           ; $6beb: $c9


    adc e                                         ; $6bec: $8b
    ld [hl], b                                    ; $6bed: $70
    db $dd                                        ; $6bee: $dd
    ld a, [$72b8]                                 ; $6bef: $fa $b8 $72

jr_057_6bf2:
    ld c, l                                       ; $6bf2: $4d
    jp hl                                         ; $6bf3: $e9


    adc e                                         ; $6bf4: $8b
    ld c, a                                       ; $6bf5: $4f
    ld b, [hl]                                    ; $6bf6: $46
    cp h                                          ; $6bf7: $bc
    pop hl                                        ; $6bf8: $e1
    ld a, a                                       ; $6bf9: $7f
    ret c                                         ; $6bfa: $d8

    inc a                                         ; $6bfb: $3c
    ret                                           ; $6bfc: $c9


    sub [hl]                                      ; $6bfd: $96
    cp l                                          ; $6bfe: $bd
    ld h, h                                       ; $6bff: $64
    rst $00                                       ; $6c00: $c7
    ccf                                           ; $6c01: $3f
    db $10                                        ; $6c02: $10
    and $43                                       ; $6c03: $e6 $43
    ld h, [hl]                                    ; $6c05: $66
    ld c, e                                       ; $6c06: $4b
    or b                                          ; $6c07: $b0
    jr @+$24                                      ; $6c08: $18 $22

    ld [hl], a                                    ; $6c0a: $77
    and $62                                       ; $6c0b: $e6 $62
    adc e                                         ; $6c0d: $8b
    ld [hl], a                                    ; $6c0e: $77
    ld e, b                                       ; $6c0f: $58
    ld d, e                                       ; $6c10: $53
    pop de                                        ; $6c11: $d1
    cp h                                          ; $6c12: $bc
    db $e3                                        ; $6c13: $e3
    rra                                           ; $6c14: $1f
    ld [$21f3], sp                                ; $6c15: $08 $f3 $21
    or e                                          ; $6c18: $b3
    dec h                                         ; $6c19: $25
    ld e, b                                       ; $6c1a: $58
    inc c                                         ; $6c1b: $0c
    ld [hl], a                                    ; $6c1c: $77
    ei                                            ; $6c1d: $fb
    adc e                                         ; $6c1e: $8b
    db $fc                                        ; $6c1f: $fc
    ld c, a                                       ; $6c20: $4f
    inc e                                         ; $6c21: $1c
    db $dd                                        ; $6c22: $dd

jr_057_6c23:
    push de                                       ; $6c23: $d5
    ld e, h                                       ; $6c24: $5c
    ld d, e                                       ; $6c25: $53
    ld a, [$4f1e]                                 ; $6c26: $fa $1e $4f
    jp hl                                         ; $6c29: $e9


    inc hl                                        ; $6c2a: $23
    call c, $fe3c                                 ; $6c2b: $dc $3c $fe
    jp z, $9a32                                   ; $6c2e: $ca $32 $9a

    xor d                                         ; $6c31: $aa
    pop de                                        ; $6c32: $d1
    call $e5e5                                    ; $6c33: $cd $e5 $e5
    jr nc, jr_057_6bf2                            ; $6c36: $30 $ba

    cp c                                          ; $6c38: $b9
    cp h                                          ; $6c39: $bc
    db $e3                                        ; $6c3a: $e3
    rra                                           ; $6c3b: $1f
    ld [$21f3], sp                                ; $6c3c: $08 $f3 $21
    or e                                          ; $6c3f: $b3
    dec h                                         ; $6c40: $25
    and h                                         ; $6c41: $a4
    ld b, [hl]                                    ; $6c42: $46
    ld [hl], a                                    ; $6c43: $77
    and $62                                       ; $6c44: $e6 $62
    adc e                                         ; $6c46: $8b
    rst $10                                       ; $6c47: $d7
    ld e, [hl]                                    ; $6c48: $5e
    ld [hl], b                                    ; $6c49: $70
    call $ba32                                    ; $6c4a: $cd $32 $ba
    ld h, l                                       ; $6c4d: $65
    cp h                                          ; $6c4e: $bc
    sub a                                         ; $6c4f: $97
    db $ec                                        ; $6c50: $ec
    or b                                          ; $6c51: $b0
    ld c, [hl]                                    ; $6c52: $4e
    ld e, d                                       ; $6c53: $5a
    sub h                                         ; $6c54: $94
    rla                                           ; $6c55: $17
    db $db                                        ; $6c56: $db
    ld c, e                                       ; $6c57: $4b
    and a                                         ; $6c58: $a7
    ld e, l                                       ; $6c59: $5d
    dec sp                                        ; $6c5a: $3b
    add hl, de                                    ; $6c5b: $19
    xor a                                         ; $6c5c: $af
    inc e                                         ; $6c5d: $1c
    call nz, $b135                                ; $6c5e: $c4 $35 $b1
    ld e, d                                       ; $6c61: $5a
    ld c, [hl]                                    ; $6c62: $4e
    ld e, h                                       ; $6c63: $5c
    jp Jump_000_0f99                              ; $6c64: $c3 $99 $0f


    ccf                                           ; $6c67: $3f
    ld d, c                                       ; $6c68: $51
    ld l, $0b                                     ; $6c69: $2e $0b
    ld b, h                                       ; $6c6b: $44
    ld [hl], a                                    ; $6c6c: $77
    and $62                                       ; $6c6d: $e6 $62
    adc e                                         ; $6c6f: $8b
    ld [hl], a                                    ; $6c70: $77
    ld [c], a                                     ; $6c71: $e2
    inc hl                                        ; $6c72: $23
    ld e, l                                       ; $6c73: $5d
    or e                                          ; $6c74: $b3
    inc l                                         ; $6c75: $2c
    ld l, b                                       ; $6c76: $68
    ld e, d                                       ; $6c77: $5a
    or e                                          ; $6c78: $b3
    adc h                                         ; $6c79: $8c
    ld a, b                                       ; $6c7a: $78
    ld [c], a                                     ; $6c7b: $e2
    sbc l                                         ; $6c7c: $9d
    adc h                                         ; $6c7d: $8c
    ld [hl], a                                    ; $6c7e: $77
    ld h, d                                       ; $6c7f: $62
    add hl, de                                    ; $6c80: $19
    ld h, e                                       ; $6c81: $63
    rst $10                                       ; $6c82: $d7
    ld [de], a                                    ; $6c83: $12
    rst $00                                       ; $6c84: $c7
    jr c, jr_057_6c23                             ; $6c85: $38 $9c

    ld sp, hl                                     ; $6c87: $f9
    ldh a, [rNR13]                                ; $6c88: $f0 $13
    push hl                                       ; $6c8a: $e5
    or d                                          ; $6c8b: $b2
    ld b, b                                       ; $6c8c: $40
    inc b                                         ; $6c8d: $04
    ld [hl], a                                    ; $6c8e: $77
    and $62                                       ; $6c8f: $e6 $62
    adc e                                         ; $6c91: $8b
    rst $10                                       ; $6c92: $d7
    ld e, [hl]                                    ; $6c93: $5e
    ld [hl], b                                    ; $6c94: $70
    call $a0b2                                    ; $6c95: $cd $b2 $a0
    or a                                          ; $6c98: $b7
    halt                                          ; $6c99: $76
    inc h                                         ; $6c9a: $24
    sub e                                         ; $6c9b: $93
    db $e4                                        ; $6c9c: $e4
    ld c, [hl]                                    ; $6c9d: $4e
    add $3b                                       ; $6c9e: $c6 $3b
    cp a                                          ; $6ca0: $bf
    ld h, d                                       ; $6ca1: $62
    ld [hl], e                                    ; $6ca2: $73
    xor l                                         ; $6ca3: $ad
    ld [hl], h                                    ; $6ca4: $74
    ld d, c                                       ; $6ca5: $51
    inc a                                         ; $6ca6: $3c
    ld a, [$945b]                                 ; $6ca7: $fa $5b $94
    push hl                                       ; $6caa: $e5
    adc h                                         ; $6cab: $8c
    ret z                                         ; $6cac: $c8

    jp z, Jump_057_61cb                           ; $6cad: $ca $cb $61

    ld [$ae1f], a                                 ; $6cb0: $ea $1f $ae
    ld b, a                                       ; $6cb3: $47
    cp b                                          ; $6cb4: $b8
    ld e, h                                       ; $6cb5: $5c
    inc hl                                        ; $6cb6: $23
    ld e, $86                                     ; $6cb7: $1e $86
    ld [$66dd], sp                                ; $6cb9: $08 $dd $66
    or $62                                        ; $6cbc: $f6 $62
    ld l, $36                                     ; $6cbe: $2e $36
    cpl                                           ; $6cc0: $2f
    db $fc                                        ; $6cc1: $fc
    sbc d                                         ; $6cc2: $9a
    ld [hl], d                                    ; $6cc3: $72
    sbc b                                         ; $6cc4: $98
    ld a, c                                       ; $6cc5: $79
    ld b, a                                       ; $6cc6: $47
    adc a                                         ; $6cc7: $8f
    pop de                                        ; $6cc8: $d1
    push bc                                       ; $6cc9: $c5
    ld e, l                                       ; $6cca: $5d
    sbc d                                         ; $6ccb: $9a
    call nc, Call_057_7708                        ; $6ccc: $d4 $08 $77
    and $62                                       ; $6ccf: $e6 $62
    adc e                                         ; $6cd1: $8b
    ld b, a                                       ; $6cd2: $47
    cp h                                          ; $6cd3: $bc
    ld e, d                                       ; $6cd4: $5a
    ld d, a                                       ; $6cd5: $57
    db $e4                                        ; $6cd6: $e4
    dec a                                         ; $6cd7: $3d
    pop hl                                        ; $6cd8: $e1
    rst $10                                       ; $6cd9: $d7
    jp c, Jump_057_4932                           ; $6cda: $da $32 $49

    ld [hl], $27                                  ; $6cdd: $36 $27
    ld l, [hl]                                    ; $6cdf: $6e
    rst $00                                       ; $6ce0: $c7
    add a                                         ; $6ce1: $87
    call z, $3096                                 ; $6ce2: $cc $96 $30
    and l                                         ; $6ce5: $a5
    rrca                                          ; $6ce6: $0f
    ld h, a                                       ; $6ce7: $67
    and $57                                       ; $6ce8: $e6 $57
    inc hl                                        ; $6cea: $23
    sub d                                         ; $6ceb: $92
    ld a, a                                       ; $6cec: $7f
    and [hl]                                      ; $6ced: $a6
    db $f4                                        ; $6cee: $f4
    dec h                                         ; $6cef: $25
    ld e, a                                       ; $6cf0: $5f
    call nz, Call_057_6535                        ; $6cf1: $c4 $35 $65
    ld de, $662f                                  ; $6cf4: $11 $2f $66
    and c                                         ; $6cf7: $a1
    dec hl                                        ; $6cf8: $2b
    dec bc                                        ; $6cf9: $0b
    cp a                                          ; $6cfa: $bf
    db $d3                                        ; $6cfb: $d3
    ret                                           ; $6cfc: $c9


    ld h, d                                       ; $6cfd: $62
    ld c, c                                       ; $6cfe: $49
    adc l                                         ; $6cff: $8d
    nop                                           ; $6d00: $00
    ld [hl], a                                    ; $6d01: $77
    and $62                                       ; $6d02: $e6 $62
    adc e                                         ; $6d04: $8b
    rst $30                                       ; $6d05: $f7
    sub d                                         ; $6d06: $92
    ld [hl], h                                    ; $6d07: $74
    ld l, c                                       ; $6d08: $69
    ret c                                         ; $6d09: $d8

    dec [hl]                                      ; $6d0a: $35
    db $d3                                        ; $6d0b: $d3
    or h                                          ; $6d0c: $b4
    inc hl                                        ; $6d0d: $23
    ld e, e                                       ; $6d0e: $5b
    or $92                                        ; $6d0f: $f6 $92
    add hl, sp                                    ; $6d11: $39
    or c                                          ; $6d12: $b1
    or b                                          ; $6d13: $b0
    xor $d6                                       ; $6d14: $ee $d6
    cp h                                          ; $6d16: $bc
    ldh a, [rBCPD]                                ; $6d17: $f0 $69
    ld a, [hl]                                    ; $6d19: $7e
    ld [de], a                                    ; $6d1a: $12
    jp z, Jump_057_74e4                           ; $6d1b: $ca $e4 $74

    ld d, c                                       ; $6d1e: $51
    xor [hl]                                      ; $6d1f: $ae
    add hl, hl                                    ; $6d20: $29
    adc e                                         ; $6d21: $8b
    ld a, b                                       ; $6d22: $78
    ld sp, $5d0b                                  ; $6d23: $31 $0b $5d
    ld e, c                                       ; $6d26: $59
    ld hl, sp-$63                                 ; $6d27: $f8 $9d
    ld c, [hl]                                    ; $6d29: $4e
    ld d, $4b                                     ; $6d2a: $16 $4b
    ld l, d                                       ; $6d2c: $6a
    inc b                                         ; $6d2d: $04
    ld [hl], a                                    ; $6d2e: $77
    and $62                                       ; $6d2f: $e6 $62
    adc e                                         ; $6d31: $8b
    sub a                                         ; $6d32: $97
    ld c, c                                       ; $6d33: $49
    sub d                                         ; $6d34: $92
    ld [hl], b                                    ; $6d35: $70
    ld [c], a                                     ; $6d36: $e2
    jp c, $cd6b                                   ; $6d37: $da $6b $cd

    and e                                         ; $6d3a: $a3
    ld [hl], e                                    ; $6d3b: $73
    and l                                         ; $6d3c: $a5
    sbc a                                         ; $6d3d: $9f
    adc b                                         ; $6d3e: $88
    db $db                                        ; $6d3f: $db
    ld [hl], c                                    ; $6d40: $71
    db $ed                                        ; $6d41: $ed
    ld h, h                                       ; $6d42: $64
    inc a                                         ; $6d43: $3c
    and l                                         ; $6d44: $a5
    rrca                                          ; $6d45: $0f
    ld d, e                                       ; $6d46: $53
    call z, $f11e                                 ; $6d47: $cc $1e $f1
    ld b, [hl]                                    ; $6d4a: $46
    ld d, d                                       ; $6d4b: $52
    ld d, e                                       ; $6d4c: $53
    ld c, $a9                                     ; $6d4d: $0e $a9
    ld de, $e677                                  ; $6d4f: $11 $77 $e6
    ld h, d                                       ; $6d52: $62
    adc e                                         ; $6d53: $8b
    ld b, a                                       ; $6d54: $47
    cp h                                          ; $6d55: $bc
    ld e, d                                       ; $6d56: $5a
    add sp, -$1c                                  ; $6d57: $e8 $e4
    ld [c], a                                     ; $6d59: $e2
    add hl, hl                                    ; $6d5a: $29
    di                                            ; $6d5b: $f3
    sub d                                         ; $6d5c: $92
    daa                                           ; $6d5d: $27
    daa                                           ; $6d5e: $27
    cp d                                          ; $6d5f: $ba
    db $fd                                        ; $6d60: $fd
    ldh [$f2], a                                  ; $6d61: $e0 $f2
    xor b                                         ; $6d63: $a8
    dec a                                         ; $6d64: $3d
    add hl, bc                                    ; $6d65: $09
    push af                                       ; $6d66: $f5
    ld c, c                                       ; $6d67: $49
    ld c, a                                       ; $6d68: $4f
    add hl, sp                                    ; $6d69: $39
    and h                                         ; $6d6a: $a4
    ld b, [hl]                                    ; $6d6b: $46
    ld [hl], a                                    ; $6d6c: $77
    and $62                                       ; $6d6d: $e6 $62
    adc e                                         ; $6d6f: $8b
    ld d, a                                       ; $6d70: $57
    ld d, [hl]                                    ; $6d71: $56
    ld a, [$b971]                                 ; $6d72: $fa $71 $b9
    halt                                          ; $6d75: $76
    ld [c], a                                     ; $6d76: $e2
    ld d, e                                       ; $6d77: $53
    sub [hl]                                      ; $6d78: $96
    pop de                                        ; $6d79: $d1
    push af                                       ; $6d7a: $f5
    ld b, [hl]                                    ; $6d7b: $46
    ld l, e                                       ; $6d7c: $6b
    adc $3f                                       ; $6d7d: $ce $3f
    pop de                                        ; $6d7f: $d1
    ld [hl], e                                    ; $6d80: $73
    ld l, e                                       ; $6d81: $6b
    xor [hl]                                      ; $6d82: $ae
    pop hl                                        ; $6d83: $e1
    rla                                           ; $6d84: $17
    cp $89                                        ; $6d85: $fe $89
    sbc $93                                       ; $6d87: $de $93
    ld d, b                                       ; $6d89: $50
    ld h, $53                                     ; $6d8a: $26 $53
    inc hl                                        ; $6d8c: $23
    db $dd                                        ; $6d8d: $dd
    ld a, [$aee8]                                 ; $6d8e: $fa $e8 $ae
    and $9a                                       ; $6d91: $e6 $9a
    ld [hl], d                                    ; $6d93: $72
    ret c                                         ; $6d94: $d8

    ld h, c                                       ; $6d95: $61
    ld d, a                                       ; $6d96: $57
    ld [hl], h                                    ; $6d97: $74
    add hl, de                                    ; $6d98: $19
    xor [hl]                                      ; $6d99: $ae
    ld e, e                                       ; $6d9a: $5b
    rra                                           ; $6d9b: $1f
    ld d, a                                       ; $6d9c: $57
    xor [hl]                                      ; $6d9d: $ae
    dec a                                         ; $6d9e: $3d
    ld e, $e0                                     ; $6d9f: $1e $e0
    ld c, a                                       ; $6da1: $4f
    sub d                                         ; $6da2: $92
    ld d, $95                                     ; $6da3: $16 $95
    cpl                                           ; $6da5: $2f
    and c                                         ; $6da6: $a1
    ld [hl], e                                    ; $6da7: $73
    ld h, c                                       ; $6da8: $61
    scf                                           ; $6da9: $37
    set 4, d                                      ; $6daa: $cb $e2
    sub e                                         ; $6dac: $93
    inc de                                        ; $6dad: $13
    dec sp                                        ; $6dae: $3b
    sbc [hl]                                      ; $6daf: $9e
    ld l, e                                       ; $6db0: $6b
    or c                                          ; $6db1: $b1
    ld e, $cd                                     ; $6db2: $1e $cd
    ccf                                           ; $6db4: $3f
    cp b                                          ; $6db5: $b8
    inc a                                         ; $6db6: $3c
    and c                                         ; $6db7: $a1
    jr nz, @+$04                                  ; $6db8: $20 $02

    ld [hl], a                                    ; $6dba: $77
    and $62                                       ; $6dbb: $e6 $62
    adc e                                         ; $6dbd: $8b
    rst $10                                       ; $6dbe: $d7
    ld e, [hl]                                    ; $6dbf: $5e
    jr nc, @-$6f                                  ; $6dc0: $30 $8f

    di                                            ; $6dc2: $f3
    add sp, $27                                   ; $6dc3: $e8 $27
    sbc h                                         ; $6dc5: $9c
    ld [hl], c                                    ; $6dc6: $71
    ei                                            ; $6dc7: $fb
    ld d, c                                       ; $6dc8: $51
    inc l                                         ; $6dc9: $2c
    jp z, $998b                                   ; $6dca: $ca $8b $99

    db $fc                                        ; $6dcd: $fc
    xor [hl]                                      ; $6dce: $ae
    cp l                                          ; $6dcf: $bd
    ld h, h                                       ; $6dd0: $64
    jp z, $f521                                   ; $6dd1: $ca $21 $f5

    cp d                                          ; $6dd4: $ba
    call $ae3b                                    ; $6dd5: $cd $3b $ae
    jp hl                                         ; $6dd8: $e9


    cp h                                          ; $6dd9: $bc
    sub e                                         ; $6dda: $93
    pop af                                        ; $6ddb: $f1
    ld [hl-], a                                   ; $6ddc: $32

Jump_057_6ddd:
    sbc [hl]                                      ; $6ddd: $9e
    ld a, [c]                                     ; $6dde: $f2
    call nc, Call_057_5c3f                        ; $6ddf: $d4 $3f $5c
    adc a                                         ; $6de2: $8f
    ld [hl], b                                    ; $6de3: $70
    cp c                                          ; $6de4: $b9
    ld b, [hl]                                    ; $6de5: $46
    ld a, a                                       ; $6de6: $7f
    adc e                                         ; $6de7: $8b
    or d                                          ; $6de8: $b2
    ld c, h                                       ; $6de9: $4c
    ld a, l                                       ; $6dea: $7d
    add c                                         ; $6deb: $81
    ld [$e6dd], sp                                ; $6dec: $08 $dd $e6
    dec e                                         ; $6def: $1d
    rst $10                                       ; $6df0: $d7
    ld a, [hl]                                    ; $6df1: $7e
    adc h                                         ; $6df2: $8c
    sbc [hl]                                      ; $6df3: $9e
    adc $3b                                       ; $6df4: $ce $3b
    add hl, de                                    ; $6df6: $19
    cpl                                           ; $6df7: $2f
    db $e3                                        ; $6df8: $e3
    push bc                                       ; $6df9: $c5
    ld e, h                                       ; $6dfa: $5c
    ld l, h                                       ; $6dfb: $6c
    pop af                                        ; $6dfc: $f1
    sub d                                         ; $6dfd: $92
    ld d, a                                       ; $6dfe: $57
    db $e3                                        ; $6dff: $e3
    rst $18                                       ; $6e00: $df
    ld h, $d9                                     ; $6e01: $26 $d9
    ld [hl-], a                                   ; $6e03: $32
    and d                                         ; $6e04: $a2
    db $e3                                        ; $6e05: $e3
    ld b, [hl]                                    ; $6e06: $46
    jp nz, Jump_057_6ddd                          ; $6e07: $c2 $dd $6d

    add hl, de                                    ; $6e0a: $19
    db $fd                                        ; $6e0b: $fd
    dec l                                         ; $6e0c: $2d
    jp z, $f532                                   ; $6e0d: $ca $32 $f5

    ld h, l                                       ; $6e10: $65
    rst $00                                       ; $6e11: $c7
    or l                                          ; $6e12: $b5
    or $99                                        ; $6e13: $f6 $99
    ld [hl], a                                    ; $6e15: $77
    ret c                                         ; $6e16: $d8

    dec d                                         ; $6e17: $15
    ld e, l                                       ; $6e18: $5d
    sbc [hl]                                      ; $6e19: $9e
    adc $10                                       ; $6e1a: $ce $10
    ld bc, $e677                                  ; $6e1c: $01 $77 $e6
    ld h, d                                       ; $6e1f: $62
    adc e                                         ; $6e20: $8b
    ld b, a                                       ; $6e21: $47
    ld d, e                                       ; $6e22: $53
    dec [hl]                                      ; $6e23: $35
    sbc h                                         ; $6e24: $9c
    ld sp, hl                                     ; $6e25: $f9
    ldh a, [rNR13]                                ; $6e26: $f0 $13
    push hl                                       ; $6e28: $e5
    ld [de], a                                    ; $6e29: $12
    ld c, a                                       ; $6e2a: $4f
    ld a, l                                       ; $6e2b: $7d
    pop af                                        ; $6e2c: $f1
    ld hl, sp-$49                                 ; $6e2d: $f8 $b7
    ld d, c                                       ; $6e2f: $51
    dec sp                                        ; $6e30: $3b
    add hl, sp                                    ; $6e31: $39
    ld de, $5ea7                                  ; $6e32: $11 $a7 $5e
    or a                                          ; $6e35: $b7
    rla                                           ; $6e36: $17
    sbc a                                         ; $6e37: $9f
    db $ec                                        ; $6e38: $ec
    cp b                                          ; $6e39: $b8
    dec h                                         ; $6e3a: $25
    ld [hl], h                                    ; $6e3b: $74
    ld d, a                                       ; $6e3c: $57
    dec bc                                        ; $6e3d: $0b
    ld l, [hl]                                    ; $6e3e: $6e
    ccf                                           ; $6e3f: $3f
    db $ec                                        ; $6e40: $ec
    rst $00                                       ; $6e41: $c7
    add sp, $3d                                   ; $6e42: $e8 $3d
    add hl, bc                                    ; $6e44: $09
    push af                                       ; $6e45: $f5
    ld c, c                                       ; $6e46: $49
    ld c, a                                       ; $6e47: $4f
    add hl, sp                                    ; $6e48: $39
    db $ec                                        ; $6e49: $ec
    inc a                                         ; $6e4a: $3c
    call z, $fd5f                                 ; $6e4b: $cc $5f $fd
    or b                                          ; $6e4e: $b0
    sub e                                         ; $6e4f: $93
    pop af                                        ; $6e50: $f1
    sub h                                         ; $6e51: $94
    rst $00                                       ; $6e52: $c7
    xor a                                         ; $6e53: $af
    halt                                          ; $6e54: $76
    inc e                                         ; $6e55: $1c
    ld h, [hl]                                    ; $6e56: $66
    ld e, c                                       ; $6e57: $59
    cp d                                          ; $6e58: $ba
    jp hl                                         ; $6e59: $e9


    and d                                         ; $6e5a: $a2
    jr nz, @+$04                                  ; $6e5b: $20 $02

    ld [hl], a                                    ; $6e5d: $77
    and $62                                       ; $6e5e: $e6 $62
    adc e                                         ; $6e60: $8b
    sub a                                         ; $6e61: $97
    pop af                                        ; $6e62: $f1
    adc c                                         ; $6e63: $89
    adc a                                         ; $6e64: $8f
    ld h, h                                       ; $6e65: $64
    ld c, a                                       ; $6e66: $4f
    or d                                          ; $6e67: $b2
    ld b, a                                       ; $6e68: $47
    ld d, d                                       ; $6e69: $52
    ld l, e                                       ; $6e6a: $6b
    rst $38                                       ; $6e6b: $ff
    or b                                          ; $6e6c: $b0
    ld h, l                                       ; $6e6d: $65
    ld [$f8cb], a                                 ; $6e6e: $ea $cb $f8
    scf                                           ; $6e71: $37
    ld [$2ce1], sp                                ; $6e72: $08 $e1 $2c
    dec sp                                        ; $6e75: $3b
    ld e, h                                       ; $6e76: $5c
    ld a, [hl-]                                   ; $6e77: $3a
    rra                                           ; $6e78: $1f
    db $d3                                        ; $6e79: $d3
    sbc l                                         ; $6e7a: $9d
    cp [hl]                                       ; $6e7b: $be
    xor d                                         ; $6e7c: $aa
    ld d, a                                       ; $6e7d: $57
    ld l, d                                       ; $6e7e: $6a
    inc b                                         ; $6e7f: $04
    ld [hl], a                                    ; $6e80: $77
    and $62                                       ; $6e81: $e6 $62
    adc e                                         ; $6e83: $8b
    ld b, a                                       ; $6e84: $47
    cp h                                          ; $6e85: $bc
    ld e, d                                       ; $6e86: $5a
    add sp, -$1c                                  ; $6e87: $e8 $e4
    ld [c], a                                     ; $6e89: $e2
    pop de                                        ; $6e8a: $d1
    cp c                                          ; $6e8b: $b9
    ld [hl], b                                    ; $6e8c: $70
    or e                                          ; $6e8d: $b3
    ld a, b                                       ; $6e8e: $78
    ld [$678b], a                                 ; $6e8f: $ea $8b $67
    ld d, c                                       ; $6e92: $51
    ld l, a                                       ; $6e93: $6f
    ret c                                         ; $6e94: $d8

    or l                                          ; $6e95: $b5
    inc de                                        ; $6e96: $13
    sbc a                                         ; $6e97: $9f
    ld [hl], d                                    ; $6e98: $72
    ei                                            ; $6e99: $fb
    pop bc                                        ; $6e9a: $c1
    ld c, e                                       ; $6e9b: $4b
    xor h                                         ; $6e9c: $ac
    and [hl]                                      ; $6e9d: $a6
    inc l                                         ; $6e9e: $2c
    ld [c], a                                     ; $6e9f: $e2
    push bc                                       ; $6ea0: $c5
    inc l                                         ; $6ea1: $2c
    ld [hl], h                                    ; $6ea2: $74
    ld h, l                                       ; $6ea3: $65
    pop hl                                        ; $6ea4: $e1
    ld [hl], a                                    ; $6ea5: $77
    ld a, [hl-]                                   ; $6ea6: $3a
    ld e, c                                       ; $6ea7: $59
    inc l                                         ; $6ea8: $2c
    xor c                                         ; $6ea9: $a9
    ld de, $e677                                  ; $6eaa: $11 $77 $e6
    ld h, d                                       ; $6ead: $62
    adc e                                         ; $6eae: $8b
    ld b, a                                       ; $6eaf: $47
    cp h                                          ; $6eb0: $bc
    ld e, d                                       ; $6eb1: $5a
    add sp, -$1c                                  ; $6eb2: $e8 $e4
    ld [c], a                                     ; $6eb4: $e2
    add hl, hl                                    ; $6eb5: $29
    add a                                         ; $6eb6: $87

jr_057_6eb7:
    ld a, l                                       ; $6eb7: $7d
    adc h                                         ; $6eb8: $8c
    ld [hl], l                                    ; $6eb9: $75
    add hl, de                                    ; $6eba: $19
    adc $bc                                       ; $6ebb: $ce $bc
    ldh a, [rBCPD]                                ; $6ebd: $f0 $69
    sub $0e                                       ; $6ebf: $d6 $0e
    ld e, e                                       ; $6ec1: $5b
    sub [hl]                                      ; $6ec2: $96
    ld a, [hl]                                    ; $6ec3: $7e
    push hl                                       ; $6ec4: $e5
    dec h                                         ; $6ec5: $25
    ld d, [hl]                                    ; $6ec6: $56
    ld d, e                                       ; $6ec7: $53
    ld d, $f1                                     ; $6ec8: $16 $f1
    ld h, d                                       ; $6eca: $62
    ld d, $ba                                     ; $6ecb: $16 $ba
    or d                                          ; $6ecd: $b2
    ldh a, [$3b]                                  ; $6ece: $f0 $3b
    sbc l                                         ; $6ed0: $9d
    inc l                                         ; $6ed1: $2c
    ld d, $88                                     ; $6ed2: $16 $88
    nop                                           ; $6ed4: $00
    ld [hl], a                                    ; $6ed5: $77
    and $62                                       ; $6ed6: $e6 $62
    adc e                                         ; $6ed8: $8b
    rst $10                                       ; $6ed9: $d7
    ld e, [hl]                                    ; $6eda: $5e
    ld [hl], b                                    ; $6edb: $70
    call Call_000_3a32                            ; $6edc: $cd $32 $3a
    rla                                           ; $6edf: $17
    db $ed                                        ; $6ee0: $ed
    ld d, d                                       ; $6ee1: $52
    ld l, [hl]                                    ; $6ee2: $6e
    ccf                                           ; $6ee3: $3f
    db $ec                                        ; $6ee4: $ec
    ld [hl], b                                    ; $6ee5: $70
    sub a                                         ; $6ee6: $97
    ld h, [hl]                                    ; $6ee7: $66
    daa                                           ; $6ee8: $27
    db $e3                                        ; $6ee9: $e3
    pop de                                        ; $6eea: $d1
    ld d, h                                       ; $6eeb: $54
    call $97b2                                    ; $6eec: $cd $b2 $97
    inc c                                         ; $6eef: $0c
    ld h, a                                       ; $6ef0: $67
    ld a, $fc                                     ; $6ef1: $3e $fc
    ld b, h                                       ; $6ef3: $44
    cp c                                          ; $6ef4: $b9
    call nz, $dfe3                                ; $6ef5: $c4 $e3 $df
    ld b, [hl]                                    ; $6ef8: $46
    adc l                                         ; $6ef9: $8d
    ld l, [hl]                                    ; $6efa: $6e
    sbc d                                         ; $6efb: $9a
    ret z                                         ; $6efc: $c8

    add [hl]                                      ; $6efd: $86
    ld [$e677], sp                                ; $6efe: $08 $77 $e6
    ld h, d                                       ; $6f01: $62
    adc e                                         ; $6f02: $8b
    rst $10                                       ; $6f03: $d7
    ld e, [hl]                                    ; $6f04: $5e
    ld [hl], b                                    ; $6f05: $70
    dec c                                         ; $6f06: $0d
    db $eb                                        ; $6f07: $eb
    rst $20                                       ; $6f08: $e7
    rst $00                                       ; $6f09: $c7
    cp b                                          ; $6f0a: $b8
    sub e                                         ; $6f0b: $93
    pop af                                        ; $6f0c: $f1
    call nc, Call_057_5c3f                        ; $6f0d: $d4 $3f $5c
    adc a                                         ; $6f10: $8f
    ld [hl], b                                    ; $6f11: $70
    cp c                                          ; $6f12: $b9
    add [hl]                                      ; $6f13: $86
    inc sp                                        ; $6f14: $33
    rra                                           ; $6f15: $1f
    ld a, [hl]                                    ; $6f16: $7e
    and d                                         ; $6f17: $a2
    ld e, h                                       ; $6f18: $5c
    ld [c], a                                     ; $6f19: $e2
    push hl                                       ; $6f1a: $e5
    jr nc, jr_057_6eb7                            ; $6f1b: $30 $9a

    xor d                                         ; $6f1d: $aa
    add hl, hl                                    ; $6f1e: $29
    db $e3                                        ; $6f1f: $e3
    pop af                                        ; $6f20: $f1
    ld l, a                                       ; $6f21: $6f
    and e                                         ; $6f22: $a3
    add $8f                                       ; $6f23: $c6 $8f
    db $f4                                        ; $6f25: $f4
    inc l                                         ; $6f26: $2c
    srl b                                         ; $6f27: $cb $38
    inc a                                         ; $6f29: $3c
    add hl, bc                                    ; $6f2a: $09
    db $10                                        ; $6f2b: $10
    ld bc, $e677                                  ; $6f2c: $01 $77 $e6
    ld h, d                                       ; $6f2f: $62
    adc e                                         ; $6f30: $8b
    rst $10                                       ; $6f31: $d7
    ld e, [hl]                                    ; $6f32: $5e
    ld [hl], b                                    ; $6f33: $70
    dec l                                         ; $6f34: $2d
    db $ed                                        ; $6f35: $ed
    jp z, $07ed                                   ; $6f36: $ca $ed $07

    adc e                                         ; $6f39: $8b
    ld a, [c]                                     ; $6f3a: $f2
    or b                                          ; $6f3b: $b0

jr_057_6f3c:
    ld a, [hl]                                    ; $6f3c: $7e
    ld a, [hl]                                    ; $6f3d: $7e
    adc h                                         ; $6f3e: $8c
    dec sp                                        ; $6f3f: $3b
    add hl, de                                    ; $6f40: $19
    adc a                                         ; $6f41: $8f
    and [hl]                                      ; $6f42: $a6
    ld l, d                                       ; $6f43: $6a
    sub [hl]                                      ; $6f44: $96
    cp l                                          ; $6f45: $bd
    ld h, h                                       ; $6f46: $64
    jr c, jr_057_6f3c                             ; $6f47: $38 $f3

    pop hl                                        ; $6f49: $e1
    daa                                           ; $6f4a: $27
    jp z, $1e25                                   ; $6f4b: $ca $25 $1e

    rst $38                                       ; $6f4e: $ff
    ld [hl], $6a                                  ; $6f4f: $36 $6a
    daa                                           ; $6f51: $27
    daa                                           ; $6f52: $27
    ld h, d                                       ; $6f53: $62
    adc b                                         ; $6f54: $88
    nop                                           ; $6f55: $00
    ld [hl], a                                    ; $6f56: $77
    and $62                                       ; $6f57: $e6 $62
    adc e                                         ; $6f59: $8b
    rst $10                                       ; $6f5a: $d7
    ld e, [hl]                                    ; $6f5b: $5e
    ld d, b                                       ; $6f5c: $50
    ld e, $7e                                     ; $6f5d: $1e $7e
    pop hl                                        ; $6f5f: $e1
    sbc a                                         ; $6f60: $9f
    add sp, -$5b                                  ; $6f61: $e8 $a5
    ld e, e                                       ; $6f63: $5b
    add $87                                       ; $6f64: $c6 $87
    ld e, l                                       ; $6f66: $5d
    xor c                                         ; $6f67: $a9
    ld [hl], a                                    ; $6f68: $77
    ld l, a                                       ; $6f69: $6f
    sbc b                                         ; $6f6a: $98
    ld a, [c]                                     ; $6f6b: $f2
    ld c, $7f                                     ; $6f6c: $0e $7f
    adc c                                         ; $6f6e: $89
    xor [hl]                                      ; $6f6f: $ae
    call nc, $d6eb                                ; $6f70: $d4 $eb $d6
    add a                                         ; $6f73: $87
    ld e, l                                       ; $6f74: $5d
    pop de                                        ; $6f75: $d1
    or l                                          ; $6f76: $b5
    cpl                                           ; $6f77: $2f
    pop bc                                        ; $6f78: $c1
    ld [hl-], a                                   ; $6f79: $32
    cp $12                                        ; $6f7a: $fe $12
    or h                                          ; $6f7c: $b4
    jp $e196                                      ; $6f7d: $c3 $96 $e1


    call z, $9f87                                 ; $6f80: $cc $87 $9f
    jr z, @-$67                                   ; $6f83: $28 $97

    ld a, b                                       ; $6f85: $78
    rst $00                                       ; $6f86: $c7
    dec [hl]                                      ; $6f87: $35
    ld b, l                                       ; $6f88: $45
    ld d, l                                       ; $6f89: $55
    ei                                            ; $6f8a: $fb
    pop bc                                        ; $6f8b: $c1
    db $d3                                        ; $6f8c: $d3
    add hl, de                                    ; $6f8d: $19
    ld [hl+], a                                   ; $6f8e: $22
    ld [hl], a                                    ; $6f8f: $77
    and $62                                       ; $6f90: $e6 $62
    adc e                                         ; $6f92: $8b
    sub a                                         ; $6f93: $97
    db $fc                                        ; $6f94: $fc
    adc d                                         ; $6f95: $8a
    xor [hl]                                      ; $6f96: $ae
    sbc l                                         ; $6f97: $9d
    adc h                                         ; $6f98: $8c
    sub a                                         ; $6f99: $97
    pop af                                        ; $6f9a: $f1
    sub h                                         ; $6f9b: $94
    rla                                           ; $6f9c: $17
    ld a, [hl-]                                   ; $6f9d: $3a
    ld e, l                                       ; $6f9e: $5d
    dec [hl]                                      ; $6f9f: $35
    sbc h                                         ; $6fa0: $9c
    ld sp, hl                                     ; $6fa1: $f9
    ldh a, [rNR13]                                ; $6fa2: $f0 $13
    push hl                                       ; $6fa4: $e5
    ld [de], a                                    ; $6fa5: $12
    adc a                                         ; $6fa6: $8f
    set 0, c                                      ; $6fa7: $cb $c1
    push hl                                       ; $6fa9: $e5
    call nc, $dd08                                ; $6faa: $d4 $08 $dd
    ld a, [$4ed2]                                 ; $6fad: $fa $d2 $4e
    inc e                                         ; $6fb0: $1c
    ld e, h                                       ; $6fb1: $5c
    ld d, e                                       ; $6fb2: $53
    ld c, $4b                                     ; $6fb3: $0e $4b
    call c, $0fd4                                 ; $6fb5: $dc $d4 $0f
    dec sp                                        ; $6fb8: $3b
    cpl                                           ; $6fb9: $2f
    or d                                          ; $6fba: $b2
    pop hl                                        ; $6fbb: $e1
    cp d                                          ; $6fbc: $ba
    call $d4c3                                    ; $6fbd: $cd $c3 $d4
    sub d                                         ; $6fc0: $92
    cp [hl]                                       ; $6fc1: $be
    jp z, $b98b                                   ; $6fc2: $ca $8b $b9

    ret c                                         ; $6fc5: $d8

    ld [c], a                                     ; $6fc6: $e2
    sbc l                                         ; $6fc7: $9d
    adc h                                         ; $6fc8: $8c
    rla                                           ; $6fc9: $17
    ld a, [hl-]                                   ; $6fca: $3a
    ld e, l                                       ; $6fcb: $5d

Jump_057_6fcc:
    dec [hl]                                      ; $6fcc: $35
    ld h, l                                       ; $6fcd: $65
    ld c, [hl]                                    ; $6fce: $4e
    adc l                                         ; $6fcf: $8d
    nop                                           ; $6fd0: $00
    ld [hl], a                                    ; $6fd1: $77
    and $62                                       ; $6fd2: $e6 $62
    adc e                                         ; $6fd4: $8b
    rst $10                                       ; $6fd5: $d7
    ld e, [hl]                                    ; $6fd6: $5e
    ld d, b                                       ; $6fd7: $50
    sbc [hl]                                      ; $6fd8: $9e
    ld a, c                                       ; $6fd9: $79
    ret                                           ; $6fda: $c9


    rla                                           ; $6fdb: $17
    dec d                                         ; $6fdc: $15
    rst $18                                       ; $6fdd: $df
    pop hl                                        ; $6fde: $e1
    sbc l                                         ; $6fdf: $9d
    adc h                                         ; $6fe0: $8c
    sub a                                         ; $6fe1: $97
    ld l, [hl]                                    ; $6fe2: $6e
    call nc, Call_000_2d71                        ; $6fe3: $d4 $71 $2d
    sbc l                                         ; $6fe6: $9d
    adc e                                         ; $6fe7: $8b
    ld h, a                                       ; $6fe8: $67
    add hl, de                                    ; $6fe9: $19
    adc $7c                                       ; $6fea: $ce $7c
    ld hl, sp-$77                                 ; $6fec: $f8 $89
    ld [hl], d                                    ; $6fee: $72
    and l                                         ; $6fef: $a5
    ld b, [hl]                                    ; $6ff0: $46
    ld [hl], a                                    ; $6ff1: $77
    and $62                                       ; $6ff2: $e6 $62
    adc e                                         ; $6ff4: $8b
    sub a                                         ; $6ff5: $97
    pop af                                        ; $6ff6: $f1
    adc c                                         ; $6ff7: $89
    adc a                                         ; $6ff8: $8f
    ld h, h                                       ; $6ff9: $64
    rst $08                                       ; $6ffa: $cf
    ld [hl-], a                                   ; $6ffb: $32
    sbc h                                         ; $6ffc: $9c
    ld sp, hl                                     ; $6ffd: $f9
    ldh a, [rNR13]                                ; $6ffe: $f0 $13
    push hl                                       ; $7000: $e5
    ld a, [de]                                    ; $7001: $1a
    rst $38                                       ; $7002: $ff
    ld b, $21                                     ; $7003: $06 $21
    sbc h                                         ; $7005: $9c
    ld h, h                                       ; $7006: $64
    rst $28                                       ; $7007: $ef
    adc c                                         ; $7008: $89
    sbc b                                         ; $7009: $98
    ld hl, $7702                                  ; $700a: $21 $02 $77
    and $62                                       ; $700d: $e6 $62
    adc e                                         ; $700f: $8b
    and a                                         ; $7010: $a7
    ld [hl], d                                    ; $7011: $72
    cp d                                          ; $7012: $ba
    cp c                                          ; $7013: $b9
    halt                                          ; $7014: $76
    db $fc                                        ; $7015: $fc
    inc bc                                        ; $7016: $03
    ld h, c                                       ; $7017: $61
    ld a, $64                                     ; $7018: $3e $64
    or [hl]                                       ; $701a: $b6
    inc b                                         ; $701b: $04
    adc e                                         ; $701c: $8b
    ld [hl], a                                    ; $701d: $77
    xor b                                         ; $701e: $a8
    dec [hl]                                      ; $701f: $35
    ld c, e                                       ; $7020: $4b
    ldh a, [$94]                                  ; $7021: $f0 $94
    ld b, l                                       ; $7023: $45
    cp h                                          ; $7024: $bc
    sbc b                                         ; $7025: $98
    add l                                         ; $7026: $85
    xor [hl]                                      ; $7027: $ae
    inc l                                         ; $7028: $2c
    db $fc                                        ; $7029: $fc
    ld c, [hl]                                    ; $702a: $4e
    daa                                           ; $702b: $27
    adc e                                         ; $702c: $8b
    ld h, l                                       ; $702d: $65
    ret                                           ; $702e: $c9


    dec hl                                        ; $702f: $2b
    ld d, a                                       ; $7030: $57
    ld l, d                                       ; $7031: $6a
    inc b                                         ; $7032: $04
    ld [hl], a                                    ; $7033: $77
    and $62                                       ; $7034: $e6 $62
    adc e                                         ; $7036: $8b
    daa                                           ; $7037: $27
    ld e, l                                       ; $7038: $5d
    ld a, [de]                                    ; $7039: $1a
    xor [hl]                                      ; $703a: $ae
    rst $10                                       ; $703b: $d7
    cp $71                                        ; $703c: $fe $71
    cp c                                          ; $703e: $b9
    and $c4                                       ; $703f: $e6 $c4
    jp nz, $5bba                                  ; $7041: $c2 $ba $5b

    ld e, e                                       ; $7044: $5b
    ld hl, sp+$34                                 ; $7045: $f8 $34
    rst $08                                       ; $7047: $cf
    xor l                                         ; $7048: $ad
    cp c                                          ; $7049: $b9
    halt                                          ; $704a: $76
    ld [c], a                                     ; $704b: $e2
    ld d, e                                       ; $704c: $53
    ld l, [hl]                                    ; $704d: $6e
    ccf                                           ; $704e: $3f
    inc c                                         ; $704f: $0c
    cp a                                          ; $7050: $bf
    ldh a, [rPCM34]                               ; $7051: $f0 $77
    ld [hl-], a                                   ; $7053: $32
    ld e, [hl]                                    ; $7054: $5e
    ld a, h                                       ; $7055: $7c
    ld [hl-], a                                   ; $7056: $32
    sub d                                         ; $7057: $92
    ld c, d                                       ; $7058: $4a
    ld a, [hl]                                    ; $7059: $7e
    ld b, l                                       ; $705a: $45
    ld c, a                                       ; $705b: $4f
    add hl, sp                                    ; $705c: $39
    and h                                         ; $705d: $a4
    ld b, [hl]                                    ; $705e: $46
    ld [hl], a                                    ; $705f: $77
    and $62                                       ; $7060: $e6 $62
    adc e                                         ; $7062: $8b
    rla                                           ; $7063: $17
    ld a, [hl]                                    ; $7064: $7e
    ld c, l                                       ; $7065: $4d
    add hl, sp                                    ; $7066: $39
    call z, $c3b2                                 ; $7067: $cc $b2 $c3
    xor [hl]                                      ; $706a: $ae
    add sp, -$0e                                  ; $706b: $e8 $f2
    add sp, -$52                                  ; $706d: $e8 $ae
    and $76                                       ; $706f: $e6 $76
    cp h                                          ; $7071: $bc
    sub a                                         ; $7072: $97
    adc h                                         ; $7073: $8c
    ld c, b                                       ; $7074: $48
    ld [hl], d                                    ; $7075: $72
    ld c, l                                       ; $7076: $4d
    jp hl                                         ; $7077: $e9


    dec sp                                        ; $7078: $3b
    pop af                                        ; $7079: $f1
    or l                                          ; $707a: $b5
    dec [hl]                                      ; $707b: $35
    or e                                          ; $707c: $b3
    ld h, a                                       ; $707d: $67
    ld h, [hl]                                    ; $707e: $66
    rst $10                                       ; $707f: $d7
    ld c, [hl]                                    ; $7080: $4e
    ld d, a                                       ; $7081: $57
    ld c, e                                       ; $7082: $4b
    adc $0f                                       ; $7083: $ce $0f
    jp z, Jump_000_1a95                           ; $7085: $ca $95 $1a

    ld bc, $e677                                  ; $7088: $01 $77 $e6
    ld h, d                                       ; $708b: $62
    adc e                                         ; $708c: $8b
    rst $00                                       ; $708d: $c7
    push hl                                       ; $708e: $e5
    jr jr_057_70ee                                ; $708f: $18 $5d

    db $e3                                        ; $7091: $e3
    rst $18                                       ; $7092: $df
    halt                                          ; $7093: $76
    inc e                                         ; $7094: $1c
    add [hl]                                      ; $7095: $86
    or e                                          ; $7096: $b3
    inc e                                         ; $7097: $1c
    ld l, $c3                                     ; $7098: $2e $c3
    db $dd                                        ; $709a: $dd
    ld h, $6b                                     ; $709b: $26 $6b
    sbc a                                         ; $709d: $9f
    dec l                                         ; $709e: $2d
    dec sp                                        ; $709f: $3b
    xor h                                         ; $70a0: $ac
    adc e                                         ; $70a1: $8b
    ld e, d                                       ; $70a2: $5a
    ld h, $c9                                     ; $70a3: $26 $c9
    and $c4                                       ; $70a5: $e6 $c4
    dec [hl]                                      ; $70a7: $35
    and l                                         ; $70a8: $a5
    rrca                                          ; $70a9: $0f
    cp e                                          ; $70aa: $bb
    add [hl]                                      ; $70ab: $86
    ld e, a                                       ; $70ac: $5f
    ld hl, sp-$4d                                 ; $70ad: $f8 $b3
    ret z                                         ; $70af: $c8

    sub d                                         ; $70b0: $92
    daa                                           ; $70b1: $27
    db $ed                                        ; $70b2: $ed
    rlca                                          ; $70b3: $07
    adc b                                         ; $70b4: $88
    nop                                           ; $70b5: $00
    db $dd                                        ; $70b6: $dd
    ld e, [hl]                                    ; $70b7: $5e
    ei                                            ; $70b8: $fb
    db $ec                                        ; $70b9: $ec
    ld de, $371d                                  ; $70ba: $11 $1d $37
    ld a, [c]                                     ; $70bd: $f2
    ld h, h                                       ; $70be: $64
    adc h                                         ; $70bf: $8c
    cp l                                          ; $70c0: $bd
    sbc b                                         ; $70c1: $98
    adc e                                         ; $70c2: $8b
    dec l                                         ; $70c3: $2d
    ld e, $7f                                     ; $70c4: $1e $7f
    ld a, [c]                                     ; $70c6: $f2
    cp b                                          ; $70c7: $b8
    add [hl]                                      ; $70c8: $86
    inc sp                                        ; $70c9: $33
    rra                                           ; $70ca: $1f
    ld a, [hl]                                    ; $70cb: $7e
    and d                                         ; $70cc: $a2
    ld e, h                                       ; $70cd: $5c
    ld [c], a                                     ; $70ce: $e2
    ld h, l                                       ; $70cf: $65
    inc a                                         ; $70d0: $3c
    ld [hl+], a                                   ; $70d1: $22
    ld a, c                                       ; $70d2: $79
    ld d, e                                       ; $70d3: $53
    ld a, [$df92]                                 ; $70d4: $fa $92 $df
    ld d, $3a                                     ; $70d7: $16 $3a
    ld e, l                                       ; $70d9: $5d
    push hl                                       ; $70da: $e5
    adc c                                         ; $70db: $89
    rrca                                          ; $70dc: $0f
    ld a, e                                       ; $70dd: $7b
    pop hl                                        ; $70de: $e1
    ld c, c                                       ; $70df: $49
    ret nc                                        ; $70e0: $d0

    xor $b4                                       ; $70e1: $ee $b4
    rra                                           ; $70e3: $1f
    rst $30                                       ; $70e4: $f7
    ld a, b                                       ; $70e5: $78
    jp z, $4f8b                                   ; $70e6: $ca $8b $4f

    ld b, [hl]                                    ; $70e9: $46
    rst $20                                       ; $70ea: $e7
    ld a, [hl-]                                   ; $70eb: $3a
    ret                                           ; $70ec: $c9


    dec hl                                        ; $70ed: $2b

jr_057_70ee:
    rst $28                                       ; $70ee: $ef
    jr c, jr_057_711d                             ; $70ef: $38 $2c

    ld l, l                                       ; $70f1: $6d
    ld d, l                                       ; $70f2: $55
    add [hl]                                      ; $70f3: $86
    ld [$e677], sp                                ; $70f4: $08 $77 $e6
    ld h, d                                       ; $70f7: $62
    adc e                                         ; $70f8: $8b
    rst $30                                       ; $70f9: $f7
    sub d                                         ; $70fa: $92
    db $d3                                        ; $70fb: $d3
    cp d                                          ; $70fc: $ba
    jp z, $9c35                                   ; $70fd: $ca $35 $9c

    ld sp, hl                                     ; $7100: $f9
    ldh a, [rNR13]                                ; $7101: $f0 $13
    push hl                                       ; $7103: $e5
    ld [de], a                                    ; $7104: $12
    sbc a                                         ; $7105: $9f
    sbc l                                         ; $7106: $9d
    db $e4                                        ; $7107: $e4
    ld b, l                                       ; $7108: $45
    adc a                                         ; $7109: $8f
    call nc, $b225                                ; $710a: $d4 $25 $b2
    ld l, e                                       ; $710d: $6b
    ld [hl], h                                    ; $710e: $74
    xor [hl]                                      ; $710f: $ae
    add hl, hl                                    ; $7110: $29
    add a                                         ; $7111: $87
    sbc l                                         ; $7112: $9d
    or $e3                                        ; $7113: $f6 $e3
    ld e, $4f                                     ; $7115: $1e $4f
    jp hl                                         ; $7117: $e9


    ld l, e                                       ; $7118: $6b
    ld h, [hl]                                    ; $7119: $66
    halt                                          ; $711a: $76
    ld a, c                                       ; $711b: $79
    pop af                                        ; $711c: $f1

jr_057_711d:
    ret                                           ; $711d: $c9


    jp nc, $47a5                                  ; $711e: $d2 $a5 $47

    adc a                                         ; $7121: $8f
    ld c, e                                       ; $7122: $4b
    db $d3                                        ; $7123: $d3
    sbc d                                         ; $7124: $9a
    jp hl                                         ; $7125: $e9


    ld e, h                                       ; $7126: $5c
    cp b                                          ; $7127: $b8
    cp c                                          ; $7128: $b9
    ld b, [hl]                                    ; $7129: $46
    ld d, d                                       ; $712a: $52
    ld d, e                                       ; $712b: $53
    add $10                                       ; $712c: $c6 $10
    ld bc, $e677                                  ; $712e: $01 $77 $e6
    ld h, d                                       ; $7131: $62
    adc e                                         ; $7132: $8b
    rla                                           ; $7133: $17
    ld a, [hl-]                                   ; $7134: $3a
    sub [hl]                                      ; $7135: $96
    ld c, h                                       ; $7136: $4c
    sub d                                         ; $7137: $92
    ld h, l                                       ; $7138: $65
    ld h, [hl]                                    ; $7139: $66
    rst $10                                       ; $713a: $d7
    ldh a, [$0b]                                  ; $713b: $f0 $0b
    sbc a                                         ; $713d: $9f
    call z, Call_057_6096                         ; $713e: $cc $96 $60
    pop af                                        ; $7141: $f1
    ld hl, sp-$49                                 ; $7142: $f8 $b7
    pop hl                                        ; $7144: $e1
    rla                                           ; $7145: $17
    rst $08                                       ; $7146: $cf
    rst $00                                       ; $7147: $c7
    xor a                                         ; $7148: $af
    pop af                                        ; $7149: $f1
    db $e4                                        ; $714a: $e4
    daa                                           ; $714b: $27
    ld d, h                                       ; $714c: $54
    ld l, d                                       ; $714d: $6a
    inc b                                         ; $714e: $04
    ld [hl], a                                    ; $714f: $77
    and $62                                       ; $7150: $e6 $62
    adc e                                         ; $7152: $8b
    ld b, a                                       ; $7153: $47
    ld [hl], a                                    ; $7154: $77
    ld e, h                                       ; $7155: $5c
    ld [c], a                                     ; $7156: $e2
    jp c, $cd6b                                   ; $7157: $da $6b $cd

    jp $fc2f                                      ; $715a: $c3 $2f $fc


    inc de                                        ; $715d: $13
    dec a                                         ; $715e: $3d
    db $d3                                        ; $715f: $d3
    or h                                          ; $7160: $b4
    inc hl                                        ; $7161: $23
    cp e                                          ; $7162: $bb
    halt                                          ; $7163: $76
    ld [hl-], a                                   ; $7164: $32
    ld e, $7f                                     ; $7165: $1e $7f
    push de                                       ; $7167: $d5
    ld a, [hl]                                    ; $7168: $7e
    ld [hl], b                                    ; $7169: $70
    ld a, c                                       ; $716a: $79
    xor [hl]                                      ; $716b: $ae
    and l                                         ; $716c: $a5
    ld c, e                                       ; $716d: $4b
    adc a                                         ; $716e: $8f
    inc a                                         ; $716f: $3c
    sbc h                                         ; $7170: $9c
    ld a, c                                       ; $7171: $79
    jp z, $4201                                   ; $7172: $ca $01 $42

    jr c, @-$01                                   ; $7175: $38 $fd

    ret                                           ; $7177: $c9


    ld sp, $32f3                                  ; $7178: $31 $f3 $32
    sbc [hl]                                      ; $717b: $9e
    ld a, [c]                                     ; $717c: $f2
    ld e, h                                       ; $717d: $5c
    inc de                                        ; $717e: $13
    dec c                                         ; $717f: $0d
    di                                            ; $7180: $f3
    rrca                                          ; $7181: $0f
    sbc [hl]                                      ; $7182: $9e
    ld e, e                                       ; $7183: $5b
    ld [hl], e                                    ; $7184: $73
    db $ed                                        ; $7185: $ed
    call nz, $dca7                                ; $7186: $c4 $a7 $dc
    ld a, [hl]                                    ; $7189: $7e
    jr nc, jr_057_71d0                            ; $718a: $30 $44

    ld [hl], a                                    ; $718c: $77
    and $62                                       ; $718d: $e6 $62
    adc e                                         ; $718f: $8b
    rst $10                                       ; $7190: $d7
    inc e                                         ; $7191: $1c
    ld e, h                                       ; $7192: $5c
    ld a, e                                       ; $7193: $7b
    xor l                                         ; $7194: $ad
    ld a, c                                       ; $7195: $79
    add a                                         ; $7196: $87
    ld a, [hl+]                                   ; $7197: $2a
    adc e                                         ; $7198: $8b
    and a                                         ; $7199: $a7
    cp [hl]                                       ; $719a: $be
    ld a, b                                       ; $719b: $78
    add hl, sp                                    ; $719c: $39
    inc l                                         ; $719d: $2c
    ld [hl], h                                    ; $719e: $74
    inc l                                         ; $719f: $2c
    sbc c                                         ; $71a0: $99
    inc h                                         ; $71a1: $24
    set 1, h                                      ; $71a2: $cb $cc
    xor [hl]                                      ; $71a4: $ae
    dec e                                         ; $71a5: $1d
    rst $38                                       ; $71a6: $ff
    ld b, b                                       ; $71a7: $40
    sbc b                                         ; $71a8: $98
    rrca                                          ; $71a9: $0f
    sbc c                                         ; $71aa: $99
    dec l                                         ; $71ab: $2d
    pop bc                                        ; $71ac: $c1
    ld [c], a                                     ; $71ad: $e2
    pop af                                        ; $71ae: $f1
    ld l, a                                       ; $71af: $6f
    jp $9e2f                                      ; $71b0: $c3 $2f $9e


    adc a                                         ; $71b3: $8f
    ld e, a                                       ; $71b4: $5f
    db $e3                                        ; $71b5: $e3
    ret                                           ; $71b6: $c9


    ld c, a                                       ; $71b7: $4f
    xor b                                         ; $71b8: $a8
    call nc, Call_057_7708                        ; $71b9: $d4 $08 $77
    and $62                                       ; $71bc: $e6 $62
    adc e                                         ; $71be: $8b
    ld b, a                                       ; $71bf: $47
    cp h                                          ; $71c0: $bc
    ld e, d                                       ; $71c1: $5a
    ld hl, sp-$34                                 ; $71c2: $f8 $cc
    ld d, e                                       ; $71c4: $53
    ld c, $10                                     ; $71c5: $0e $10
    jp nz, Jump_057_4659                          ; $71c7: $c2 $59 $46

    cp [hl]                                       ; $71ca: $be
    ld a, d                                       ; $71cb: $7a
    ld h, h                                       ; $71cc: $64
    db $d3                                        ; $71cd: $d3
    db $f4                                        ; $71ce: $f4
    ld c, d                                       ; $71cf: $4a

jr_057_71d0:
    adc l                                         ; $71d0: $8d
    nop                                           ; $71d1: $00
    ld [hl], a                                    ; $71d2: $77
    and $62                                       ; $71d3: $e6 $62
    adc e                                         ; $71d5: $8b
    ld b, a                                       ; $71d6: $47
    cp h                                          ; $71d7: $bc
    ld e, d                                       ; $71d8: $5a
    add sp, -$1c                                  ; $71d9: $e8 $e4
    ld [c], a                                     ; $71db: $e2
    add hl, hl                                    ; $71dc: $29
    add a                                         ; $71dd: $87
    dec e                                         ; $71de: $1d
    db $fc                                        ; $71df: $fc
    adc d                                         ; $71e0: $8a
    ld d, e                                       ; $71e1: $53
    rst $28                                       ; $71e2: $ef
    ld h, [hl]                                    ; $71e3: $66
    pop hl                                        ; $71e4: $e1
    rst $10                                       ; $71e5: $d7
    jp c, $0bf0                                   ; $71e6: $da $f0 $0b

    sbc a                                         ; $71e9: $9f
    call z, $b096                                 ; $71ea: $cc $96 $b0
    sub e                                         ; $71ed: $93
    pop af                                        ; $71ee: $f1
    jp nc, $ba26                                  ; $71ef: $d2 $26 $ba

    ld [de], a                                    ; $71f2: $12
    sbc a                                         ; $71f3: $9f
    pop de                                        ; $71f4: $d1
    cp c                                          ; $71f5: $b9
    ld b, [hl]                                    ; $71f6: $46
    dec l                                         ; $71f7: $2d
    ld e, l                                       ; $71f8: $5d
    ld a, d                                       ; $71f9: $7a
    db $f4                                        ; $71fa: $f4
    cp b                                          ; $71fb: $b8
    inc [hl]                                      ; $71fc: $34
    xor l                                         ; $71fd: $ad
    sbc c                                         ; $71fe: $99
    adc $85                                       ; $71ff: $ce $85
    sbc e                                         ; $7201: $9b
    ld c, e                                       ; $7202: $4b
    dec sp                                        ; $7203: $3b
    rst $10                                       ; $7204: $d7
    jp z, $3f4a                                   ; $7205: $ca $4a $3f

    ld l, $1e                                     ; $7208: $2e $1e
    rst $38                                       ; $720a: $ff
    ld [hl], $e2                                  ; $720b: $36 $e2
    or l                                          ; $720d: $b5
    add h                                         ; $720e: $84
    ld a, h                                       ; $720f: $7c
    push bc                                       ; $7210: $c5
    sub [hl]                                      ; $7211: $96
    call nc, Call_057_7708                        ; $7212: $d4 $08 $77
    and $62                                       ; $7215: $e6 $62
    adc e                                         ; $7217: $8b
    ld b, a                                       ; $7218: $47
    rst $20                                       ; $7219: $e7
    ld [hl+], a                                   ; $721a: $22
    inc e                                         ; $721b: $1c
    adc a                                         ; $721c: $8f
    ld l, e                                       ; $721d: $6b
    jr c, @-$0b                                   ; $721e: $38 $f3

    pop hl                                        ; $7220: $e1
    daa                                           ; $7221: $27
    jp z, $9de5                                   ; $7222: $ca $e5 $9d

    or $e3                                        ; $7225: $f6 $e3
    ld e, $8f                                     ; $7227: $1e $8f
    sub $9c                                       ; $7229: $d6 $9c
    ld a, a                                       ; $722b: $7f
    and d                                         ; $722c: $a2
    rst $30                                       ; $722d: $f7
    inc h                                         ; $722e: $24
    sub h                                         ; $722f: $94
    ret                                           ; $7230: $c9


    pop de                                        ; $7231: $d1
    push af                                       ; $7232: $f5
    and [hl]                                      ; $7233: $a6
    adc h                                         ; $7234: $8c
    ld b, a                                       ; $7235: $47
    cp b                                          ; $7236: $b8
    and l                                         ; $7237: $a5
    set 1, d                                      ; $7238: $cb $ca
    dec [hl]                                      ; $723a: $35
    push hl                                       ; $723b: $e5
    sub b                                         ; $723c: $90
    ld a, [de]                                    ; $723d: $1a
    ld [hl+], a                                   ; $723e: $22
    ld [hl], a                                    ; $723f: $77
    and $62                                       ; $7240: $e6 $62
    adc e                                         ; $7242: $8b
    ld b, a                                       ; $7243: $47
    cp h                                          ; $7244: $bc
    ld e, d                                       ; $7245: $5a
    ld hl, sp-$34                                 ; $7246: $f8 $cc
    ld d, e                                       ; $7248: $53
    ld c, $b3                                     ; $7249: $0e $b3
    ld c, h                                       ; $724b: $4c
    ld a, [hl]                                    ; $724c: $7e
    ld b, d                                       ; $724d: $42
    ld [hl], l                                    ; $724e: $75
    ld b, l                                       ; $724f: $45
    ld sp, hl                                     ; $7250: $f9
    ld [de], a                                    ; $7251: $12
    ld d, d                                       ; $7252: $52
    xor a                                         ; $7253: $af
    db $db                                        ; $7254: $db
    ld [hl+], a                                   ; $7255: $22
    ld e, [hl]                                    ; $7256: $5e
    call z, $fd38                                 ; $7257: $cc $38 $fd
    push hl                                       ; $725a: $e5
    sbc l                                         ; $725b: $9d
    ld c, [hl]                                    ; $725c: $4e
    ld d, $cb                                     ; $725d: $16 $cb
    sub d                                         ; $725f: $92
    ld e, a                                       ; $7260: $5f
    pop de                                        ; $7261: $d1
    or l                                          ; $7262: $b5
    db $f4                                        ; $7263: $f4
    dec hl                                        ; $7264: $2b
    xor a                                         ; $7265: $af
    ld l, a                                       ; $7266: $6f
    ld e, c                                       ; $7267: $59
    ld a, b                                       ; $7268: $78
    ld [de], a                                    ; $7269: $12
    jr nz, @+$04                                  ; $726a: $20 $02

    ld [hl], a                                    ; $726c: $77
    and $62                                       ; $726d: $e6 $62
    adc e                                         ; $726f: $8b
    rla                                           ; $7270: $17
    ld a, [hl]                                    ; $7271: $7e
    ld c, l                                       ; $7272: $4d
    add hl, sp                                    ; $7273: $39
    call z, $d232                                 ; $7274: $cc $32 $d2
    add l                                         ; $7277: $85
    sbc a                                         ; $7278: $9f
    ld e, b                                       ; $7279: $58
    ld a, b                                       ; $727a: $78
    ld e, l                                       ; $727b: $5d
    ld d, c                                       ; $727c: $51
    cp [hl]                                       ; $727d: $be
    add h                                         ; $727e: $84
    db $fd                                        ; $727f: $fd
    dec e                                         ; $7280: $1d
    rst $38                                       ; $7281: $ff
    ld b, b                                       ; $7282: $40
    sbc b                                         ; $7283: $98
    rrca                                          ; $7284: $0f
    sbc c                                         ; $7285: $99
    dec l                                         ; $7286: $2d
    pop bc                                        ; $7287: $c1
    ld [c], a                                     ; $7288: $e2
    call nc, $b6eb                                ; $7289: $d4 $eb $b6
    adc b                                         ; $728c: $88
    rla                                           ; $728d: $17
    inc sp                                        ; $728e: $33
    ld c, [hl]                                    ; $728f: $4e
    ld a, a                                       ; $7290: $7f
    ld a, c                                       ; $7291: $79
    and a                                         ; $7292: $a7
    sub e                                         ; $7293: $93
    push bc                                       ; $7294: $c5
    or d                                          ; $7295: $b2
    db $e4                                        ; $7296: $e4
    ld d, a                                       ; $7297: $57
    ld [hl], h                                    ; $7298: $74
    dec l                                         ; $7299: $2d
    db $fd                                        ; $729a: $fd
    jp z, Jump_057_5beb                           ; $729b: $ca $eb $5b

    ld d, $9e                                     ; $729e: $16 $9e
    inc b                                         ; $72a0: $04
    adc b                                         ; $72a1: $88
    nop                                           ; $72a2: $00
    ld [hl], a                                    ; $72a3: $77
    and $62                                       ; $72a4: $e6 $62
    adc e                                         ; $72a6: $8b
    rla                                           ; $72a7: $17
    ld a, [hl]                                    ; $72a8: $7e
    ld c, l                                       ; $72a9: $4d
    add hl, sp                                    ; $72aa: $39
    call z, $d232                                 ; $72ab: $cc $32 $d2
    add l                                         ; $72ae: $85
    sbc a                                         ; $72af: $9f
    ld e, b                                       ; $72b0: $58
    ld a, b                                       ; $72b1: $78
    ld e, l                                       ; $72b2: $5d
    ld d, c                                       ; $72b3: $51
    cp [hl]                                       ; $72b4: $be
    add h                                         ; $72b5: $84
    db $fd                                        ; $72b6: $fd
    pop hl                                        ; $72b7: $e1

Jump_057_72b8:
    rla                                           ; $72b8: $17
    ld a, $99                                     ; $72b9: $3e $99
    dec l                                         ; $72bb: $2d
    pop bc                                        ; $72bc: $c1
    ld [c], a                                     ; $72bd: $e2
    call nc, $b6eb                                ; $72be: $d4 $eb $b6
    adc b                                         ; $72c1: $88
    rla                                           ; $72c2: $17
    inc sp                                        ; $72c3: $33
    ld c, [hl]                                    ; $72c4: $4e
    ld a, a                                       ; $72c5: $7f
    ld a, c                                       ; $72c6: $79
    and a                                         ; $72c7: $a7
    sub e                                         ; $72c8: $93
    push bc                                       ; $72c9: $c5
    or d                                          ; $72ca: $b2
    db $e4                                        ; $72cb: $e4
    ld d, a                                       ; $72cc: $57
    ld [hl], h                                    ; $72cd: $74
    dec l                                         ; $72ce: $2d
    db $fd                                        ; $72cf: $fd
    jp z, Jump_057_5beb                           ; $72d0: $ca $eb $5b

    ld d, $9e                                     ; $72d3: $16 $9e
    inc b                                         ; $72d5: $04
    adc b                                         ; $72d6: $88
    nop                                           ; $72d7: $00
    scf                                           ; $72d8: $37
    or a                                          ; $72d9: $b7
    and $e1                                       ; $72da: $e6 $e1
    rla                                           ; $72dc: $17
    ld a, $99                                     ; $72dd: $3e $99
    dec l                                         ; $72df: $2d
    pop bc                                        ; $72e0: $c1
    ld [c], a                                     ; $72e1: $e2
    xor c                                         ; $72e2: $a9
    cpl                                           ; $72e3: $2f
    sbc [hl]                                      ; $72e4: $9e
    ld l, e                                       ; $72e5: $6b
    jp hl                                         ; $72e6: $e9


    jp nc, $2f23                                  ; $72e7: $d2 $23 $2f

    sub e                                         ; $72ea: $93
    ld h, h                                       ; $72eb: $64
    ld [$9edd], a                                 ; $72ec: $ea $dd $9e
    adc e                                         ; $72ef: $8b
    halt                                          ; $72f0: $76
    add hl, hl                                    ; $72f1: $29
    or a                                          ; $72f2: $b7
    rra                                           ; $72f3: $1f
    ld d, d                                       ; $72f4: $52
    rst $28                                       ; $72f5: $ef
    or $5c                                        ; $72f6: $f6 $5c
    or h                                          ; $72f8: $b4
    ld c, e                                       ; $72f9: $4b
    cp c                                          ; $72fa: $b9
    db $fd                                        ; $72fb: $fd
    sub b                                         ; $72fc: $90
    ld a, [de]                                    ; $72fd: $1a
    ld bc, $35f7                                  ; $72fe: $01 $f7 $35
    sbc l                                         ; $7301: $9d
    adc a                                         ; $7302: $8f
    db $db                                        ; $7303: $db
    rrca                                          ; $7304: $0f
    and e                                         ; $7305: $a3
    cp e                                          ; $7306: $bb
    sbc d                                         ; $7307: $9a
    ld l, e                                       ; $7308: $6b
    ld c, d                                       ; $7309: $4a
    rst $18                                       ; $730a: $df
    db $e3                                        ; $730b: $e3
    dec e                                         ; $730c: $1d
    rst $38                                       ; $730d: $ff
    ld b, b                                       ; $730e: $40
    sbc b                                         ; $730f: $98
    rst $08                                       ; $7310: $cf
    dec h                                         ; $7311: $25
    bit 4, c                                      ; $7312: $cb $61
    ld hl, sp-$7b                                 ; $7314: $f8 $85
    ld c, a                                       ; $7316: $4f
    ld h, [hl]                                    ; $7317: $66
    ld c, e                                       ; $7318: $4b
    or b                                          ; $7319: $b0
    ld a, b                                       ; $731a: $78
    xor [hl]                                      ; $731b: $ae
    pop af                                        ; $731c: $f1
    ld l, a                                       ; $731d: $6f
    jp hl                                         ; $731e: $e9


    rla                                           ; $731f: $17
    dec a                                         ; $7320: $3d
    sub d                                         ; $7321: $92
    ld a, [de]                                    ; $7322: $1a
    ld a, [hl]                                    ; $7323: $7e
    pop af                                        ; $7324: $f1
    ld a, h                                       ; $7325: $7c
    db $fc                                        ; $7326: $fc
    ld a, [de]                                    ; $7327: $1a
    ld c, a                                       ; $7328: $4f
    ld a, [hl]                                    ; $7329: $7e
    ld b, d                                       ; $732a: $42
    and l                                         ; $732b: $a5
    ld b, [hl]                                    ; $732c: $46
    db $dd                                        ; $732d: $dd
    ld a, [$aa68]                                 ; $732e: $fa $68 $aa
    ld h, [hl]                                    ; $7331: $66
    add hl, de                                    ; $7332: $19
    cp $87                                        ; $7333: $fe $87
    sbc a                                         ; $7335: $9f
    ld b, h                                       ; $7336: $44
    cpl                                           ; $7337: $2f
    db $e3                                        ; $7338: $e3
    dec a                                         ; $7339: $3d
    sbc [hl]                                      ; $733a: $9e
    jp nc, Jump_000_3647                          ; $733b: $d2 $47 $36

    sbc l                                         ; $733e: $9d
    adc a                                         ; $733f: $8f
    db $db                                        ; $7340: $db
    rrca                                          ; $7341: $0f
    ld [hl], e                                    ; $7342: $73
    db $ed                                        ; $7343: $ed
    ld h, e                                       ; $7344: $63
    xor h                                         ; $7345: $ac
    bit 6, b                                      ; $7346: $cb $70
    and $bd                                       ; $7348: $e6 $bd
    sub $86                                       ; $734a: $d6 $86
    ld e, a                                       ; $734c: $5f
    ld hl, sp-$57                                 ; $734d: $f8 $a9
    ld de, $16dd                                  ; $734f: $11 $dd $16
    pop af                                        ; $7352: $f1
    ld h, d                                       ; $7353: $62
    ld l, $8e                                     ; $7354: $2e $8e
    add hl, de                                    ; $7356: $19
    and a                                         ; $7357: $a7
    cp a                                          ; $7358: $bf
    cp h                                          ; $7359: $bc
    db $d3                                        ; $735a: $d3
    ret                                           ; $735b: $c9


    ld h, d                                       ; $735c: $62
    ld e, c                                       ; $735d: $59
    add sp, $74                                   ; $735e: $e8 $74
    push de                                       ; $7360: $d5
    sub h                                         ; $7361: $94
    jp $c63e                                      ; $7362: $c3 $3e $c6


    cp d                                          ; $7365: $ba
    inc c                                         ; $7366: $0c
    ld h, a                                       ; $7367: $67
    sbc $6b                                       ; $7368: $de $6b
    call $127b                                    ; $736a: $cd $7b $12
    jp z, $4ee4                                   ; $736d: $ca $e4 $4e

    add $fb                                       ; $7370: $c6 $fb
    ld sp, $ae7a                                  ; $7372: $31 $7a $ae
    pop hl                                        ; $7375: $e1
    rla                                           ; $7376: $17
    cp $89                                        ; $7377: $fe $89
    sbc [hl]                                      ; $7379: $9e
    ld l, $ca                                     ; $737a: $2e $ca
    dec [hl]                                      ; $737c: $35
    bit 4, d                                      ; $737d: $cb $62
    ld d, $ba                                     ; $737f: $16 $ba
    or d                                          ; $7381: $b2
    ldh a, [$3b]                                  ; $7382: $f0 $3b
    sbc l                                         ; $7384: $9d
    inc l                                         ; $7385: $2c
    db $10                                        ; $7386: $10
    ld bc, $50f7                                  ; $7387: $01 $f7 $50
    dec [hl]                                      ; $738a: $35
    and l                                         ; $738b: $a5
    adc a                                         ; $738c: $8f
    ld a, b                                       ; $738d: $78
    or l                                          ; $738e: $b5
    sbc b                                         ; $738f: $98
    ld [hl], c                                    ; $7390: $71
    ld a, [$8b8b]                                 ; $7391: $fa $8b $8b
    and a                                         ; $7394: $a7
    cp $39                                        ; $7395: $fe $39
    ld e, [hl]                                    ; $7397: $5e
    call z, Call_000_16c5                         ; $7398: $cc $c5 $16
    ld l, e                                       ; $739b: $6b
    ld [hl], a                                    ; $739c: $77
    ld e, h                                       ; $739d: $5c
    jp Jump_000_0f99                              ; $739e: $c3 $99 $0f


    ccf                                           ; $73a1: $3f
    ld d, c                                       ; $73a2: $51

Call_057_73a3:
Jump_057_73a3:
    ld l, $f1                                     ; $73a3: $2e $f1
    ld c, [hl]                                    ; $73a5: $4e
    jp nc, $b157                                  ; $73a6: $d2 $57 $b1

    halt                                          ; $73a9: $76
    daa                                           ; $73aa: $27
    jp hl                                         ; $73ab: $e9


    xor e                                         ; $73ac: $ab
    ld a, b                                       ; $73ad: $78
    daa                                           ; $73ae: $27
    ld a, c                                       ; $73af: $79
    pop de                                        ; $73b0: $d1
    db $d3                                        ; $73b1: $d3
    add hl, de                                    ; $73b2: $19
    ld b, d                                       ; $73b3: $42
    adc b                                         ; $73b4: $88
    nop                                           ; $73b5: $00
    rst $30                                       ; $73b6: $f7
    ld d, b                                       ; $73b7: $50
    dec [hl]                                      ; $73b8: $35
    and l                                         ; $73b9: $a5
    adc a                                         ; $73ba: $8f
    ld a, b                                       ; $73bb: $78
    or l                                          ; $73bc: $b5
    sbc b                                         ; $73bd: $98
    ld [hl], c                                    ; $73be: $71
    ld a, [$8b8b]                                 ; $73bf: $fa $8b $8b
    and a                                         ; $73c2: $a7
    cp $39                                        ; $73c3: $fe $39
    ld e, [hl]                                    ; $73c5: $5e
    call z, Call_000_16c5                         ; $73c6: $cc $c5 $16
    ld l, e                                       ; $73c9: $6b
    rla                                           ; $73ca: $17
    dec sp                                        ; $73cb: $3b
    ld d, $f1                                     ; $73cc: $16 $f1
    sbc c                                         ; $73ce: $99
    ld [hl-], a                                   ; $73cf: $32
    ld c, a                                       ; $73d0: $4f
    rst $20                                       ; $73d1: $e7
    sbc l                                         ; $73d2: $9d
    adc h                                         ; $73d3: $8c
    sub a                                         ; $73d4: $97
    pop af                                        ; $73d5: $f1
    ld e, [hl]                                    ; $73d6: $5e
    ld l, e                                       ; $73d7: $6b
    ld e, $97                                     ; $73d8: $1e $97
    and [hl]                                      ; $73da: $a6
    dec [hl]                                      ; $73db: $35
    db $d3                                        ; $73dc: $d3
    cp c                                          ; $73dd: $b9
    ld [hl], b                                    ; $73de: $70
    ld [hl], e                                    ; $73df: $73
    ld c, l                                       ; $73e0: $4d
    jp hl                                         ; $73e1: $e9


    ld c, e                                       ; $73e2: $4b
    sub a                                         ; $73e3: $97
    ld e, $5d                                     ; $73e4: $1e $5d
    jp c, $86b9                                   ; $73e6: $da $b9 $86

    dec [hl]                                      ; $73e9: $35
    ld e, [hl]                                    ; $73ea: $5e
    xor h                                         ; $73eb: $ac
    ld b, a                                       ; $73ec: $47
    di                                            ; $73ed: $f3
    rrca                                          ; $73ee: $0f
    ld l, $a7                                     ; $73ef: $2e $a7
    ld b, [hl]                                    ; $73f1: $46
    ld [hl], a                                    ; $73f2: $77
    and $62                                       ; $73f3: $e6 $62
    adc e                                         ; $73f5: $8b
    ld b, a                                       ; $73f6: $47
    ld d, e                                       ; $73f7: $53
    or l                                          ; $73f8: $b5
    inc de                                        ; $73f9: $13
    sbc a                                         ; $73fa: $9f
    or d                                          ; $73fb: $b2
    ld a, b                                       ; $73fc: $78
    ld c, d                                       ; $73fd: $4a
    ld e, a                                       ; $73fe: $5f
    add sp, $74                                   ; $73ff: $e8 $74
    push de                                       ; $7401: $d5
    ld [de], a                                    ; $7402: $12
    xor e                                         ; $7403: $ab
    ld e, c                                       ; $7404: $59
    ld d, $b3                                     ; $7405: $16 $b3
    ret nc                                        ; $7407: $d0

    sub l                                         ; $7408: $95
    add l                                         ; $7409: $85
    rst $18                                       ; $740a: $df
    jp hl                                         ; $740b: $e9


    ld h, h                                       ; $740c: $64
    add hl, de                                    ; $740d: $19
    rst $38                                       ; $740e: $ff
    ld [hl], $6a                                  ; $740f: $36 $6a
    jp hl                                         ; $7411: $e9


    or $87                                        ; $7412: $f6 $87
    dec [hl]                                      ; $7414: $35
    sbc $e1                                       ; $7415: $de $e1
    xor [hl]                                      ; $7417: $ae
    ld a, [hl+]                                   ; $7418: $2a
    ld b, e                                       ; $7419: $43
    inc b                                         ; $741a: $04
    dec a                                         ; $741b: $3d
    xor a                                         ; $741c: $af
    ld c, d                                       ; $741d: $4a
    or e                                          ; $741e: $b3
    ei                                            ; $741f: $fb
    ld [hl-], a                                   ; $7420: $32
    or e                                          ; $7421: $b3
    db $eb                                        ; $7422: $eb
    sub d                                         ; $7423: $92
    sbc b                                         ; $7424: $98
    adc e                                         ; $7425: $8b
    call Call_057_5e23                            ; $7426: $cd $23 $5e
    dec l                                         ; $7429: $2d
    ld a, h                                       ; $742a: $7c
    and $29                                       ; $742b: $e6 $29
    add a                                         ; $742d: $87
    cp l                                          ; $742e: $bd
    sub $3c                                       ; $742f: $d6 $3c
    ld l, $4d                                     ; $7431: $2e $4d
    ld l, e                                       ; $7433: $6b
    and [hl]                                      ; $7434: $a6
    ld [hl], e                                    ; $7435: $73
    pop hl                                        ; $7436: $e1
    and $1a                                       ; $7437: $e6 $1a
    ld c, c                                       ; $7439: $49
    dec c                                         ; $743a: $0d
    cp a                                          ; $743b: $bf
    ld a, b                                       ; $743c: $78
    ld a, $7e                                     ; $743d: $3e $7e
    adc l                                         ; $743f: $8d
    daa                                           ; $7440: $27
    ccf                                           ; $7441: $3f
    and c                                         ; $7442: $a1
    or h                                          ; $7443: $b4
    bit 4, c                                      ; $7444: $cb $61
    db $f4                                        ; $7446: $f4
    xor e                                         ; $7447: $ab
    ldh [$98], a                                  ; $7448: $e0 $98
    sub l                                         ; $744a: $95
    ld a, c                                       ; $744b: $79
    ld sp, $5b17                                  ; $744c: $31 $17 $5b
    cp h                                          ; $744f: $bc
    ccf                                           ; $7450: $3f
    push af                                       ; $7451: $f5
    ld h, l                                       ; $7452: $65
    or a                                          ; $7453: $b7
    rst $20                                       ; $7454: $e7
    or $f3                                        ; $7455: $f6 $f3
    xor $7e                                       ; $7457: $ee $7e
    pop hl                                        ; $7459: $e1
    rst $08                                       ; $745a: $cf
    call z, $1dae                                 ; $745b: $cc $ae $1d
    adc $31                                       ; $745e: $ce $31
    and [hl]                                      ; $7460: $a6
    ld b, [hl]                                    ; $7461: $46
    db $dd                                        ; $7462: $dd
    ld a, [$5788]                                 ; $7463: $fa $88 $57
    and e                                         ; $7466: $a3
    add hl, hl                                    ; $7467: $29
    and $59                                       ; $7468: $e6 $59
    ld h, [hl]                                    ; $746a: $66
    sbc d                                         ; $746b: $9a
    halt                                          ; $746c: $76
    db $e4                                        ; $746d: $e4
    sbc l                                         ; $746e: $9d
    adc h                                         ; $746f: $8c
    rla                                           ; $7470: $17
    sbc a                                         ; $7471: $9f
    ld c, h                                       ; $7472: $4c
    rst $20                                       ; $7473: $e7
    jp $f29a                                      ; $7474: $c3 $9a $f2


    add c                                         ; $7477: $81
    cp e                                          ; $7478: $bb
    dec a                                         ; $7479: $3d
    rst $10                                       ; $747a: $d7
    xor b                                         ; $747b: $a8
    jp hl                                         ; $747c: $e9


    ld a, h                                       ; $747d: $7c
    ld e, b                                       ; $747e: $58
    ld d, e                                       ; $747f: $53
    sbc [hl]                                      ; $7480: $9e
    ld h, l                                       ; $7481: $65
    and [hl]                                      ; $7482: $a6
    ld l, c                                       ; $7483: $69
    ld b, a                                       ; $7484: $47
    ld e, $a6                                     ; $7485: $1e $a6
    and [hl]                                      ; $7487: $a6
    db $f4                                        ; $7488: $f4
    ld [hl], c                                    ; $7489: $71
    ld l, c                                       ; $748a: $69
    ld h, d                                       ; $748b: $62
    db $f4                                        ; $748c: $f4
    ld c, b                                       ; $748d: $48
    ld l, d                                       ; $748e: $6a
    add hl, hl                                    ; $748f: $29
    nop                                           ; $7490: $00
    ld l, a                                       ; $7491: $6f
    ld b, $00                                     ; $7492: $06 $00
    ldh a, [$92]                                  ; $7494: $f0 $92
    jr z, @-$6f                                   ; $7496: $28 $8f

    inc h                                         ; $7498: $24
    ld b, a                                       ; $7499: $47
    rst $20                                       ; $749a: $e7
    ld a, [de]                                    ; $749b: $1a
    dec [hl]                                      ; $749c: $35
    jp nz, Jump_000_1ec2                          ; $749d: $c2 $c2 $1e

    ld e, l                                       ; $74a0: $5d
    add $eb                                       ; $74a1: $c6 $eb
    ret                                           ; $74a3: $c9


    adc c                                         ; $74a4: $89
    dec d                                         ; $74a5: $15
    or [hl]                                       ; $74a6: $b6
    ld l, b                                       ; $74a7: $68
    inc l                                         ; $74a8: $2c
    bit 4, c                                      ; $74a9: $cb $61
    add a                                         ; $74ab: $87
    ld e, d                                       ; $74ac: $5a
    ld [c], a                                     ; $74ad: $e2
    ld d, $bc                                     ; $74ae: $16 $bc
    inc d                                         ; $74b0: $14
    ld a, [hl]                                    ; $74b1: $7e
    xor h                                         ; $74b2: $ac
    sbc a                                         ; $74b3: $9f
    ld e, l                                       ; $74b4: $5d

Jump_057_74b5:
    ld a, [hl-]                                   ; $74b5: $3a
    ld b, b                                       ; $74b6: $40
    ld a, h                                       ; $74b7: $7c
    ld e, b                                       ; $74b8: $58
    ld d, e                                       ; $74b9: $53
    ld [hl], b                                    ; $74ba: $70
    or a                                          ; $74bb: $b7
    rst $20                                       ; $74bc: $e7
    ld a, [de]                                    ; $74bd: $1a
    dec [hl]                                      ; $74be: $35
    sbc l                                         ; $74bf: $9d
    rrca                                          ; $74c0: $0f
    ld l, e                                       ; $74c1: $6b
    jp z, $4d33                                   ; $74c2: $ca $33 $4d

    dec sp                                        ; $74c5: $3b
    or d                                          ; $74c6: $b2
    ld h, l                                       ; $74c7: $65
    sbc b                                         ; $74c8: $98
    sbc d                                         ; $74c9: $9a
    jp nc, $33a7                                  ; $74ca: $d2 $a7 $33

    pop hl                                        ; $74cd: $e1
    call nz, $e653                                ; $74ce: $c4 $53 $e6
    dec e                                         ; $74d1: $1d
    or [hl]                                       ; $74d2: $b6
    ld [hl-], a                                   ; $74d3: $32
    adc a                                         ; $74d4: $8f
    and h                                         ; $74d5: $a4
    sub $f3                                       ; $74d6: $d6 $f3
    xor d                                         ; $74d8: $aa
    inc [hl]                                      ; $74d9: $34
    sub a                                         ; $74da: $97
    and h                                         ; $74db: $a4
    ld a, a                                       ; $74dc: $7f
    ld d, e                                       ; $74dd: $53
    and $11                                       ; $74de: $e6 $11
    ld c, c                                       ; $74e0: $49
    xor [hl]                                      ; $74e1: $ae
    add hl, hl                                    ; $74e2: $29
    ld a, l                                       ; $74e3: $7d

Jump_057_74e4:
    ret                                           ; $74e4: $c9


    ld l, a                                       ; $74e5: $6f
    inc hl                                        ; $74e6: $23
    sbc $94                                       ; $74e7: $de $94
    ld b, l                                       ; $74e9: $45
    cp e                                          ; $74ea: $bb
    inc e                                         ; $74eb: $1c
    add $a5                                       ; $74ec: $c6 $a5
    adc c                                         ; $74ee: $89

Jump_057_74ef:
    pop de                                        ; $74ef: $d1
    inc hl                                        ; $74f0: $23
    xor c                                         ; $74f1: $a9
    db $dd                                        ; $74f2: $dd
    ld a, h                                       ; $74f3: $7c
    ld c, c                                       ; $74f4: $49
    sub h                                         ; $74f5: $94
    ld b, a                                       ; $74f6: $47
    sub d                                         ; $74f7: $92
    ld d, $b8                                     ; $74f8: $16 $b8
    dec sp                                        ; $74fa: $3b
    and [hl]                                      ; $74fb: $a6
    call z, $9dec                                 ; $74fc: $cc $ec $9d
    ret c                                         ; $74ff: $d8

    ld [hl], c                                    ; $7500: $71
    pop hl                                        ; $7501: $e1
    db $f4                                        ; $7502: $f4
    ld l, a                                       ; $7503: $6f
    jp z, $9a3c                                   ; $7504: $ca $3c $9a

    xor d                                         ; $7507: $aa
    add hl, hl                                    ; $7508: $29
    ld a, l                                       ; $7509: $7d
    add hl, sp                                    ; $750a: $39
    inc e                                         ; $750b: $1c
    ld l, d                                       ; $750c: $6a
    sbc c                                         ; $750d: $99
    inc h                                         ; $750e: $24
    sbc e                                         ; $750f: $9b
    and $c8                                       ; $7510: $e6 $c8
    sub a                                         ; $7512: $97
    ldh [$5a], a                                  ; $7513: $e0 $5a
    add $3b                                       ; $7515: $c6 $3b
    db $fc                                        ; $7517: $fc
    ld hl, sp+$1f                                 ; $7518: $f8 $1f
    cp $31                                        ; $751a: $fe $31
    ld l, d                                       ; $751c: $6a
    daa                                           ; $751d: $27
    ccf                                           ; $751e: $3f
    and c                                         ; $751f: $a1
    or h                                          ; $7520: $b4
    ld [hl], e                                    ; $7521: $73
    pop de                                        ; $7522: $d1
    xor a                                         ; $7523: $af
    cp [hl]                                       ; $7524: $be
    add h                                         ; $7525: $84
    push hl                                       ; $7526: $e5
    or b                                          ; $7527: $b0
    di                                            ; $7528: $f3
    add e                                         ; $7529: $83
    ld [hl], d                                    ; $752a: $72
    ld b, c                                       ; $752b: $41
    inc b                                         ; $752c: $04
    or a                                          ; $752d: $b7
    rst $20                                       ; $752e: $e7
    ld a, [de]                                    ; $752f: $1a
    or l                                          ; $7530: $b5
    ld [hl], h                                    ; $7531: $74
    jp hl                                         ; $7532: $e9


    pop de                                        ; $7533: $d1
    or e                                          ; $7534: $b3
    call z, $ed34                                 ; $7535: $cc $34 $ed
    ret z                                         ; $7538: $c8

    jp $94d4                                      ; $7539: $c3 $d4 $94


    ld a, $2e                                     ; $753c: $3e $2e
    ld c, l                                       ; $753e: $4d
    adc h                                         ; $753f: $8c
    ld e, $49                                     ; $7540: $1e $49
    dec l                                         ; $7542: $2d
    dec b                                         ; $7543: $05
    ldh [$cd], a                                  ; $7544: $e0 $cd
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    ld e, [hl]                                    ; $7548: $5e
    ld [de], a                                    ; $7549: $12
    push hl                                       ; $754a: $e5
    sub c                                         ; $754b: $91
    db $e4                                        ; $754c: $e4
    add sp, $5c                                   ; $754d: $e8 $5c
    and e                                         ; $754f: $a3
    ld b, [hl]                                    ; $7550: $46
    ld e, b                                       ; $7551: $58
    ret c                                         ; $7552: $d8

    and e                                         ; $7553: $a3
    bit 7, b                                      ; $7554: $cb $78
    dec a                                         ; $7556: $3d
    add hl, sp                                    ; $7557: $39
    or c                                          ; $7558: $b1
    jp nz, $8d16                                  ; $7559: $c2 $16 $8d

    ld b, l                                       ; $755c: $45
    dec sp                                        ; $755d: $3b
    push hl                                       ; $755e: $e5
    ld [hl-], a                                   ; $755f: $32
    or e                                          ; $7560: $b3
    ld l, e                                       ; $7561: $6b
    adc c                                         ; $7562: $89
    ld e, e                                       ; $7563: $5b
    ld [hl], b                                    ; $7564: $70
    ld c, l                                       ; $7565: $4d
    jp hl                                         ; $7566: $e9


    cp e                                          ; $7567: $bb
    adc l                                         ; $7568: $8d
    and [hl]                                      ; $7569: $a6
    dec e                                         ; $756a: $1d
    ld a, c                                       ; $756b: $79
    ld [hl], h                                    ; $756c: $74
    xor [hl]                                      ; $756d: $ae
    dec e                                         ; $756e: $1d
    adc a                                         ; $756f: $8f
    ld c, b                                       ; $7570: $48
    ld a, [hl]                                    ; $7571: $7e
    adc e                                         ; $7572: $8b
    sbc [hl]                                      ; $7573: $9e
    ld l, c                                       ; $7574: $69
    jp c, Jump_057_5d91                           ; $7575: $da $91 $5d

    ld d, e                                       ; $7578: $53
    ld a, [$5788]                                 ; $7579: $fa $88 $57
    ld [hl], b                                    ; $757c: $70
    add b                                         ; $757d: $80
    sbc b                                         ; $757e: $98
    ld [hl], b                                    ; $757f: $70
    ld [hl-], a                                   ; $7580: $32
    ld h, l                                       ; $7581: $65
    sbc c                                         ; $7582: $99
    ld l, c                                       ; $7583: $69
    jp c, Jump_000_2d91                           ; $7584: $da $91 $2d

    ld d, e                                       ; $7587: $53
    ld a, [$df92]                                 ; $7588: $fa $92 $df
    sub [hl]                                      ; $758b: $96
    ld l, $3d                                     ; $758c: $2e $3d
    ld a, d                                       ; $758e: $7a
    add hl, sp                                    ; $758f: $39
    adc h                                         ; $7590: $8c
    ld c, e                                       ; $7591: $4b
    inc de                                        ; $7592: $13
    db $e3                                        ; $7593: $e3
    ld c, b                                       ; $7594: $48
    ld l, d                                       ; $7595: $6a
    scf                                           ; $7596: $37
    ld e, a                                       ; $7597: $5f
    ld [de], a                                    ; $7598: $12
    push hl                                       ; $7599: $e5
    sub c                                         ; $759a: $91
    and h                                         ; $759b: $a4
    dec b                                         ; $759c: $05
    ld [hl+], a                                   ; $759d: $22
    scf                                           ; $759e: $37
    or a                                          ; $759f: $b7
    and $b9                                       ; $75a0: $e6 $b9
    db $fd                                        ; $75a2: $fd
    ld a, b                                       ; $75a3: $78
    ld a, [hl]                                    ; $75a4: $7e
    cp c                                          ; $75a5: $b9
    sub $5e                                       ; $75a6: $d6 $5e
    ldh a, [$d9]                                  ; $75a8: $f0 $d9
    rra                                           ; $75aa: $1f
    pop hl                                        ; $75ab: $e1
    ld a, b                                       ; $75ac: $78
    inc e                                         ; $75ad: $1c
    dec sp                                        ; $75ae: $3b
    ld l, [hl]                                    ; $75af: $6e
    ld l, $b8                                     ; $75b0: $2e $b8
    sbc [hl]                                      ; $75b2: $9e
    db $e4                                        ; $75b3: $e4
    sbc a                                         ; $75b4: $9f
    add hl, hl                                    ; $75b5: $29
    ld a, l                                       ; $75b6: $7d
    adc c                                         ; $75b7: $89
    ld e, e                                       ; $75b8: $5b
    ld [hl], b                                    ; $75b9: $70
    adc l                                         ; $75ba: $8d
    ld e, d                                       ; $75bb: $5a
    cp d                                          ; $75bc: $ba
    db $f4                                        ; $75bd: $f4
    add sp, $11                                   ; $75be: $e8 $11
    adc [hl]                                      ; $75c0: $8e
    rst $00                                       ; $75c1: $c7
    or c                                          ; $75c2: $b1
    db $e3                                        ; $75c3: $e3
    ld h, [hl]                                    ; $75c4: $66
    pop de                                        ; $75c5: $d1
    ld l, $f9                                     ; $75c6: $2e $f9
    rst $00                                       ; $75c8: $c7
    ld h, a                                       ; $75c9: $67
    and $9d                                       ; $75ca: $e6 $9d
    ret c                                         ; $75cc: $d8

    ld [hl], c                                    ; $75cd: $71
    pop hl                                        ; $75ce: $e1

jr_057_75cf:
    db $f4                                        ; $75cf: $f4
    ld l, a                                       ; $75d0: $6f
    jp z, Jump_057_56c3                           ; $75d1: $ca $c3 $56

    ld a, e                                       ; $75d4: $7b
    xor l                                         ; $75d5: $ad
    ld a, c                                       ; $75d6: $79
    ld e, a                                       ; $75d7: $5f
    ld b, d                                       ; $75d8: $42
    ld e, c                                       ; $75d9: $59
    ld a, l                                       ; $75da: $7d
    res 6, c                                      ; $75db: $cb $b1
    ld a, b                                       ; $75dd: $78
    ld c, d                                       ; $75de: $4a
    rra                                           ; $75df: $1f
    pop af                                        ; $75e0: $f1
    ld a, [bc]                                    ; $75e1: $0a
    ld c, $b0                                     ; $75e2: $0e $b0
    ld e, e                                       ; $75e4: $5b
    ret c                                         ; $75e5: $d8

    sub a                                         ; $75e6: $97
    ld d, b                                       ; $75e7: $50
    ld d, [hl]                                    ; $75e8: $56
    rst $18                                       ; $75e9: $df
    ld [hl], d                                    ; $75ea: $72
    inc l                                         ; $75eb: $2c
    sbc [hl]                                      ; $75ec: $9e
    jp nc, $fc97                                  ; $75ed: $d2 $97 $fc

    or [hl]                                       ; $75f0: $b6
    ld [hl], h                                    ; $75f1: $74
    jp hl                                         ; $75f2: $e9


    pop de                                        ; $75f3: $d1
    jp c, Jump_000_30e5                           ; $75f4: $da $e5 $30

    ld l, $4d                                     ; $75f7: $2e $4d
    adc h                                         ; $75f9: $8c
    inc hl                                        ; $75fa: $23
    xor c                                         ; $75fb: $a9
    and l                                         ; $75fc: $a5
    nop                                           ; $75fd: $00
    cp h                                          ; $75fe: $bc
    add hl, de                                    ; $75ff: $19
    nop                                           ; $7600: $00
    ret nz                                        ; $7601: $c0

    ld c, e                                       ; $7602: $4b
    and d                                         ; $7603: $a2
    inc a                                         ; $7604: $3c
    sub d                                         ; $7605: $92
    inc e                                         ; $7606: $1c
    sbc l                                         ; $7607: $9d
    ld l, e                                       ; $7608: $6b
    call nc, $edd2                                ; $7609: $d4 $d2 $ed
    adc c                                         ; $760c: $89
    ld a, [c]                                     ; $760d: $f2
    sub h                                         ; $760e: $94
    ld sp, $dd44                                  ; $760f: $31 $44 $dd
    ld a, [$5788]                                 ; $7612: $fa $88 $57
    sla h                                         ; $7615: $cb $24
    ld a, c                                       ; $7617: $79
    jp c, $270b                                   ; $7618: $da $0b $27

    sbc l                                         ; $761b: $9d
    and e                                         ; $761c: $a3
    ld h, l                                       ; $761d: $65
    add hl, sp                                    ; $761e: $39
    ld [hl], c                                    ; $761f: $71
    db $ed                                        ; $7620: $ed
    ld c, e                                       ; $7621: $4b
    jr z, jr_057_75cf                             ; $7622: $28 $ab

    ld l, a                                       ; $7624: $6f
    add hl, sp                                    ; $7625: $39
    ld l, $b8                                     ; $7626: $2e $b8
    ld a, e                                       ; $7628: $7b
    xor b                                         ; $7629: $a8
    push bc                                       ; $762a: $c5
    daa                                           ; $762b: $27
    ld d, e                                       ; $762c: $53
    ld a, [$c3ce]                                 ; $762d: $fa $ce $c3
    call $fb73                                    ; $7630: $cd $73 $fb
    pop af                                        ; $7633: $f1
    db $fc                                        ; $7634: $fc
    ld a, [$ca12]                                 ; $7635: $fa $12 $ca
    ld [$8e5b], a                                 ; $7638: $ea $5b $8e
    ld l, e                                       ; $763b: $6b
    add hl, sp                                    ; $763c: $39
    xor h                                         ; $763d: $ac
    cp l                                          ; $763e: $bd
    ld d, b                                       ; $763f: $50
    sbc [hl]                                      ; $7640: $9e
    db $db                                        ; $7641: $db
    adc a                                         ; $7642: $8f
    rst $20                                       ; $7643: $e7
    ld d, a                                       ; $7644: $57
    ld h, $c9                                     ; $7645: $26 $c9
    inc de                                        ; $7647: $13
    db $eb                                        ; $7648: $eb
    db $d3                                        ; $7649: $d3
    db $ec                                        ; $764a: $ec
    add d                                         ; $764b: $82
    inc bc                                        ; $764c: $03

jr_057_764d:
    ld e, b                                       ; $764d: $58
    sbc d                                         ; $764e: $9a
    jr jr_057_7698                                ; $764f: $18 $47

    ld d, d                                       ; $7651: $52
    ld c, e                                       ; $7652: $4b
    ld bc, $3378                                  ; $7653: $01 $78 $33
    nop                                           ; $7656: $00
    add b                                         ; $7657: $80
    sub a                                         ; $7658: $97
    ld b, h                                       ; $7659: $44
    ld a, c                                       ; $765a: $79
    inc h                                         ; $765b: $24
    cp c                                          ; $765c: $b9
    inc e                                         ; $765d: $1c
    sub [hl]                                      ; $765e: $96
    cp b                                          ; $765f: $b8
    add l                                         ; $7660: $85
    ld h, l                                       ; $7661: $65
    sub d                                         ; $7662: $92
    inc a                                         ; $7663: $3c
    db $ed                                        ; $7664: $ed
    add l                                         ; $7665: $85
    sub e                                         ; $7666: $93
    adc $d1                                       ; $7667: $ce $d1
    or d                                          ; $7669: $b2
    sbc h                                         ; $766a: $9c
    cp b                                          ; $766b: $b8
    or $25                                        ; $766c: $f6 $25
    sub h                                         ; $766e: $94
    push de                                       ; $766f: $d5
    or a                                          ; $7670: $b7
    inc e                                         ; $7671: $1c
    rst $10                                       ; $7672: $d7
    add sp, $7a                                   ; $7673: $e8 $7a
    inc hl                                        ; $7675: $23
    ld [hl], d                                    ; $7676: $72
    ld h, d                                       ; $7677: $62
    add l                                         ; $7678: $85
    dec l                                         ; $7679: $2d
    ld a, [de]                                    ; $767a: $1a
    set 5, b                                      ; $767b: $cb $e8
    ld e, h                                       ; $767d: $5c
    and e                                         ; $767e: $a3
    sub [hl]                                      ; $767f: $96
    db $fc                                        ; $7680: $fc
    db $e3                                        ; $7681: $e3
    ld a, l                                       ; $7682: $7d
    add hl, bc                                    ; $7683: $09
    ld h, l                                       ; $7684: $65
    push af                                       ; $7685: $f5
    dec l                                         ; $7686: $2d
    rst $00                                       ; $7687: $c7
    ld [c], a                                     ; $7688: $e2
    push hl                                       ; $7689: $e5
    or b                                          ; $768a: $b0
    ld c, h                                       ; $768b: $4c
    sub d                                         ; $768c: $92
    daa                                           ; $768d: $27
    sub $a7                                       ; $768e: $d6 $a7
    ld sp, hl                                     ; $7690: $f9
    and h                                         ; $7691: $a4
    ld [hl], e                                    ; $7692: $73
    or h                                          ; $7693: $b4
    ld b, b                                       ; $7694: $40
    inc b                                         ; $7695: $04
    or a                                          ; $7696: $b7
    rst $20                                       ; $7697: $e7

jr_057_7698:
    ld a, [de]                                    ; $7698: $1a
    or l                                          ; $7699: $b5
    db $e3                                        ; $769a: $e3
    xor c                                         ; $769b: $a9
    cpl                                           ; $769c: $2f
    cp e                                          ; $769d: $bb
    dec a                                         ; $769e: $3d
    or a                                          ; $769f: $b7
    sbc a                                         ; $76a0: $9f
    add a                                         ; $76a1: $87
    ld e, a                                       ; $76a2: $5f
    ld hl, sp-$35                                 ; $76a3: $f8 $cb
    ld h, c                                       ; $76a5: $61
    or a                                          ; $76a6: $b7
    rst $20                                       ; $76a7: $e7
    or $f3                                        ; $76a8: $f6 $f3
    cp b                                          ; $76aa: $b8
    ld a, $d9                                     ; $76ab: $3e $d9
    ld a, $68                                     ; $76ad: $3e $68
    db $fd                                        ; $76af: $fd
    ld l, b                                       ; $76b0: $68
    rst $00                                       ; $76b1: $c7
    and l                                         ; $76b2: $a5
    adc c                                         ; $76b3: $89
    ld [hl], c                                    ; $76b4: $71
    add hl, hl                                    ; $76b5: $29
    nop                                           ; $76b6: $00
    ld l, a                                       ; $76b7: $6f
    ld b, $00                                     ; $76b8: $06 $00
    ldh a, [$92]                                  ; $76ba: $f0 $92
    jr z, jr_057_764d                             ; $76bc: $28 $8f

    inc h                                         ; $76be: $24
    ld b, a                                       ; $76bf: $47
    rst $20                                       ; $76c0: $e7
    ld a, [de]                                    ; $76c1: $1a
    or l                                          ; $76c2: $b5
    sbc b                                         ; $76c3: $98
    ld sp, $f8f6                                  ; $76c4: $31 $f6 $f8
    or a                                          ; $76c7: $b7
    push af                                       ; $76c8: $f5
    db $e4                                        ; $76c9: $e4
    call nz, Call_057_5b0a                        ; $76ca: $c4 $0a $5b
    inc [hl]                                      ; $76cd: $34
    ld d, $ed                                     ; $76ce: $16 $ed
    ld [hl], d                                    ; $76d0: $72
    ld e, b                                       ; $76d1: $58
    ld [c], a                                     ; $76d2: $e2
    ld d, $76                                     ; $76d3: $16 $76
    xor b                                         ; $76d5: $a8
    db $dd                                        ; $76d6: $dd
    sbc [hl]                                      ; $76d7: $9e
    db $db                                        ; $76d8: $db
    rst $08                                       ; $76d9: $cf
    jp $fc2f                                      ; $76da: $c3 $2f $fc


    cp c                                          ; $76dd: $b9
    dec [hl]                                      ; $76de: $35
    rst $10                                       ; $76df: $d7
    ld l, [hl]                                    ; $76e0: $6e
    rst $08                                       ; $76e1: $cf
    db $ed                                        ; $76e2: $ed
    rst $20                                       ; $76e3: $e7
    ld [hl], c                                    ; $76e4: $71
    ld a, l                                       ; $76e5: $7d
    or d                                          ; $76e6: $b2
    ld a, l                                       ; $76e7: $7d
    ret nc                                        ; $76e8: $d0

    ld a, [$0881]                                 ; $76e9: $fa $81 $08
    db $dd                                        ; $76ec: $dd
    ld a, [$7c4e]                                 ; $76ed: $fa $4e $7c
    ld l, l                                       ; $76f0: $6d
    db $fc                                        ; $76f1: $fc
    db $db                                        ; $76f2: $db
    xor b                                         ; $76f3: $a8
    dec b                                         ; $76f4: $05
    ld l, d                                       ; $76f5: $6a
    ld e, a                                       ; $76f6: $5f
    ld h, h                                       ; $76f7: $64
    ld a, a                                       ; $76f8: $7f
    and $dd                                       ; $76f9: $e6 $dd
    db $fd                                        ; $76fb: $fd
    jp nz, $713f                                  ; $76fc: $c2 $3f $71

    cp b                                          ; $76ff: $b8
    adc e                                         ; $7700: $8b
    cp l                                          ; $7701: $bd
    inc e                                         ; $7702: $1c
    ld b, [hl]                                    ; $7703: $46
    cp h                                          ; $7704: $bc
    ld a, [de]                                    ; $7705: $1a
    db $dd                                        ; $7706: $dd
    ld e, h                                       ; $7707: $5c

Call_057_7708:
    ld e, [hl]                                    ; $7708: $5e
    ld a, [c]                                     ; $7709: $f2
    ld e, d                                       ; $770a: $5a
    ret nz                                        ; $770b: $c0

    ld a, d                                       ; $770c: $7a
    ei                                            ; $770d: $fb
    add c                                         ; $770e: $81
    jr nc, @-$43                                  ; $770f: $30 $bb

    ld l, [hl]                                    ; $7711: $6e
    ret c                                         ; $7712: $d8

    db $ed                                        ; $7713: $ed
    cp c                                          ; $7714: $b9
    or b                                          ; $7715: $b0
    db $db                                        ; $7716: $db
    jp c, Jump_000_29ab                           ; $7717: $da $ab $29

    add a                                         ; $771a: $87
    pop de                                        ; $771b: $d1
    cp c                                          ; $771c: $b9
    ld [$e3c7], sp                                ; $771d: $08 $c7 $e3
    ld c, c                                       ; $7720: $49
    or [hl]                                       ; $7721: $b6
    call c, $dbb8                                 ; $7722: $dc $b8 $db
    ld l, b                                       ; $7725: $68
    jp c, $d791                                   ; $7726: $da $91 $d7

    ld e, [hl]                                    ; $7729: $5e
    ld c, l                                       ; $772a: $4d
    add hl, sp                                    ; $772b: $39
    inc l                                         ; $772c: $2c
    ld e, l                                       ; $772d: $5d
    ld a, d                                       ; $772e: $7a
    db $f4                                        ; $772f: $f4
    inc l                                         ; $7730: $2c
    inc sp                                        ; $7731: $33
    ld c, l                                       ; $7732: $4d
    dec sp                                        ; $7733: $3b
    ld a, [c]                                     ; $7734: $f2
    adc l                                         ; $7735: $8d
    cp e                                          ; $7736: $bb
    inc sp                                        ; $7737: $33
    rla                                           ; $7738: $17
    xor a                                         ; $7739: $af
    cp l                                          ; $773a: $bd
    sbc d                                         ; $773b: $9a
    ld [hl], d                                    ; $773c: $72
    ld e, b                                       ; $773d: $58
    ld a, e                                       ; $773e: $7b
    pop bc                                        ; $773f: $c1
    or e                                          ; $7740: $b3
    inc l                                         ; $7741: $2c
    and $62                                       ; $7742: $e6 $62
    db $d3                                        ; $7744: $d3
    or h                                          ; $7745: $b4
    inc hl                                        ; $7746: $23
    rrca                                          ; $7747: $0f
    ld e, e                                       ; $7748: $5b
    dec l                                         ; $7749: $2d
    and $e2                                       ; $774a: $e6 $e2
    ld h, c                                       ; $774c: $61
    xor e                                         ; $774d: $ab
    and l                                         ; $774e: $a5
    ld e, l                                       ; $774f: $5d
    ld e, l                                       ; $7750: $5d
    sbc b                                         ; $7751: $98
    dec a                                         ; $7752: $3d
    jp nz, $b8f1                                  ; $7753: $c2 $f1 $b8

    sub [hl]                                      ; $7756: $96
    jp Jump_057_72b8                              ; $7757: $c3 $b8 $72


    ld l, e                                       ; $775a: $6b
    ret c                                         ; $775b: $d8

    ld [hl+], a                                   ; $775c: $22
    scf                                           ; $775d: $37
    ld l, $87                                     ; $775e: $2e $87
    db $dd                                        ; $7760: $dd
    sbc $34                                       ; $7761: $de $34
    sub c                                         ; $7763: $91
    rst $10                                       ; $7764: $d7
    ld e, [hl]                                    ; $7765: $5e
    ld c, l                                       ; $7766: $4d
    add hl, sp                                    ; $7767: $39
    adc h                                         ; $7768: $8c
    adc $75                                       ; $7769: $ce $75
    cp d                                          ; $776b: $ba
    and d                                         ; $776c: $a2
    ld b, a                                       ; $776d: $47
    db $ed                                        ; $776e: $ed
    or h                                          ; $776f: $b4
    ld c, a                                       ; $7770: $4f
    sub d                                         ; $7771: $92
    sbc [hl]                                      ; $7772: $9e
    ld l, $f2                                     ; $7773: $2e $f2
    add [hl]                                      ; $7775: $86
    cp e                                          ; $7776: $bb
    ret c                                         ; $7777: $d8

    inc c                                         ; $7778: $0c
    rst $10                                       ; $7779: $d7
    db $fd                                        ; $777a: $fd
    push bc                                       ; $777b: $c5
    inc hl                                        ; $777c: $23
    or e                                          ; $777d: $b3
    dec h                                         ; $777e: $25
    adc h                                         ; $777f: $8c
    adc $b5                                       ; $7780: $ce $b5
    db $e3                                        ; $7782: $e3
    rra                                           ; $7783: $1f
    ld [$72f3], sp                                ; $7784: $08 $f3 $72
    jr jr_057_7807                                ; $7787: $18 $7e

    pop hl                                        ; $7789: $e1
    cpl                                           ; $778a: $2f
    ld sp, hl                                     ; $778b: $f9
    rst $00                                       ; $778c: $c7
    ld h, a                                       ; $778d: $67
    ld a, a                                       ; $778e: $7f
    ld [$b21f], a                                 ; $778f: $ea $1f $b2
    dec a                                         ; $7792: $3d
    adc l                                         ; $7793: $8d
    ld a, c                                       ; $7794: $79
    db $fc                                        ; $7795: $fc
    db $db                                        ; $7796: $db
    adc b                                         ; $7797: $88
    ld l, $4d                                     ; $7798: $2e $4d
    add hl, de                                    ; $779a: $19
    ld [hl+], a                                   ; $779b: $22
    add b                                         ; $779c: $80
    db $dd                                        ; $779d: $dd
    ld h, d                                       ; $779e: $62
    add $d8                                       ; $779f: $c6 $d8
    ld [hl-], a                                   ; $77a1: $32
    cp $6d                                        ; $77a2: $fe $6d
    ld [hl], h                                    ; $77a4: $74
    ld l, $ec                                     ; $77a5: $2e $ec
    add $1f                                       ; $77a7: $c6 $1f
    ld e, e                                       ; $77a9: $5b
    ldh [$ee], a                                  ; $77aa: $e0 $ee
    call z, Call_057_77e4                         ; $77ac: $cc $e4 $77
    dec c                                         ; $77af: $0d
    ld a, a                                       ; $77b0: $7f
    pop af                                        ; $77b1: $f1
    jp nc, $1c4e                                  ; $77b2: $d2 $4e $1c

    call c, Call_057_6b8e                         ; $77b5: $dc $8e $6b
    ld [hl], h                                    ; $77b8: $74
    xor [hl]                                      ; $77b9: $ae
    ld d, c                                       ; $77ba: $51
    and e                                         ; $77bb: $a3
    xor c                                         ; $77bc: $a9
    ld e, c                                       ; $77bd: $59
    ld d, [hl]                                    ; $77be: $56
    adc [hl]                                      ; $77bf: $8e
    pop de                                        ; $77c0: $d1
    set 5, c                                      ; $77c1: $cb $e9
    adc [hl]                                      ; $77c3: $8e
    inc hl                                        ; $77c4: $23
    cp e                                          ; $77c5: $bb
    add $bf                                       ; $77c6: $c6 $bf
    adc l                                         ; $77c8: $8d
    jp c, $9c49                                   ; $77c9: $da $49 $9c

    ld a, b                                       ; $77cc: $78
    ld a, a                                       ; $77cd: $7f
    ld c, l                                       ; $77ce: $4d
    and a                                         ; $77cf: $a7
    reti                                          ; $77d0: $d9


    ld [bc], a                                    ; $77d1: $02
    rst $10                                       ; $77d2: $d7
    sub e                                         ; $77d3: $93
    db $fc                                        ; $77d4: $fc
    inc sp                                        ; $77d5: $33
    and l                                         ; $77d6: $a5
    adc a                                         ; $77d7: $8f
    and [hl]                                      ; $77d8: $a6
    ld l, d                                       ; $77d9: $6a
    add hl, sp                                    ; $77da: $39
    db $dd                                        ; $77db: $dd
    ld [hl], c                                    ; $77dc: $71
    ld h, h                                       ; $77dd: $64
    di                                            ; $77de: $f3
    ld [hl-], a                                   ; $77df: $32
    ld c, c                                       ; $77e0: $49
    xor $af                                       ; $77e1: $ee $af
    ld a, [hl]                                    ; $77e3: $7e

Call_057_77e4:
    db $e4                                        ; $77e4: $e4
    rra                                           ; $77e5: $1f

jr_057_77e6:
    ld b, [hl]                                    ; $77e6: $46
    ld [hl], h                                    ; $77e7: $74
    ld l, c                                       ; $77e8: $69
    sub h                                         ; $77e9: $94
    or l                                          ; $77ea: $b5
    adc e                                         ; $77eb: $8b
    ld c, a                                       ; $77ec: $4f
    and [hl]                                      ; $77ed: $a6
    db $f4                                        ; $77ee: $f4
    sub c                                         ; $77ef: $91
    push de                                       ; $77f0: $d5
    sub l                                         ; $77f1: $95
    ld a, b                                       ; $77f2: $78
    ret c                                         ; $77f3: $d8

    ld l, d                                       ; $77f4: $6a
    and $b1                                       ; $77f5: $e6 $b1
    ld b, [hl]                                    ; $77f7: $46
    ld b, d                                       ; $77f8: $42
    ld a, c                                       ; $77f9: $79
    add hl, sp                                    ; $77fa: $39
    db $dd                                        ; $77fb: $dd
    ld [hl], c                                    ; $77fc: $71
    ld h, h                                       ; $77fd: $64
    cp b                                          ; $77fe: $b8
    sbc [hl]                                      ; $77ff: $9e
    db $e4                                        ; $7800: $e4
    sbc a                                         ; $7801: $9f
    add hl, hl                                    ; $7802: $29
    ld a, l                                       ; $7803: $7d
    and c                                         ; $7804: $a1
    db $d3                                        ; $7805: $d3
    ld d, l                                       ; $7806: $55

jr_057_7807:
    and e                                         ; $7807: $a3
    ld [hl], e                                    ; $7808: $73
    dec c                                         ; $7809: $0d
    ccf                                           ; $780a: $3f
    add hl, bc                                    ; $780b: $09
    ld e, $ed                                     ; $780c: $1e $ed
    rst $18                                       ; $780e: $df
    or h                                          ; $780f: $b4
    jp $94d4                                      ; $7810: $c3 $d4 $94


    cp [hl]                                       ; $7813: $be
    jp $d8af                                      ; $7814: $c3 $af $d8


    inc hl                                        ; $7817: $23
    xor c                                         ; $7818: $a9
    adc c                                         ; $7819: $89
    add [hl]                                      ; $781a: $86
    add hl, de                                    ; $781b: $19
    ld [hl+], a                                   ; $781c: $22
    add b                                         ; $781d: $80
    db $dd                                        ; $781e: $dd
    jp nz, Jump_057_6594                          ; $781f: $c2 $94 $65

    push af                                       ; $7822: $f5
    inc hl                                        ; $7823: $23
    rst $38                                       ; $7824: $ff
    ldh [$c5], a                                  ; $7825: $e0 $c5
    adc h                                         ; $7827: $8c
    db $d3                                        ; $7828: $d3
    ld e, a                                       ; $7829: $5f
    sbc $e9                                       ; $782a: $de $e9
    ld h, h                                       ; $782c: $64
    or c                                          ; $782d: $b1
    db $ec                                        ; $782e: $ec
    dec h                                         ; $782f: $25
    inc hl                                        ; $7830: $23
    inc e                                         ; $7831: $1c
    adc a                                         ; $7832: $8f
    ld h, e                                       ; $7833: $63
    rst $00                                       ; $7834: $c7
    ld l, l                                       ; $7835: $6d
    add hl, sp                                    ; $7836: $39
    db $ec                                        ; $7837: $ec
    ld c, e                                       ; $7838: $4b
    jr z, jr_057_77e6                             ; $7839: $28 $ab

    ld l, a                                       ; $783b: $6f
    add hl, sp                                    ; $783c: $39
    xor [hl]                                      ; $783d: $ae
    pop de                                        ; $783e: $d1
    cp c                                          ; $783f: $b9
    ld b, [hl]                                    ; $7840: $46
    dec l                                         ; $7841: $2d
    or [hl]                                       ; $7842: $b6
    ld d, a                                       ; $7843: $57
    sbc $6d                                       ; $7844: $de $6d
    db $ed                                        ; $7846: $ed
    rst $00                                       ; $7847: $c7
    di                                            ; $7848: $f3
    db $eb                                        ; $7849: $eb
    sub d                                         ; $784a: $92
    ld c, h                                       ; $784b: $4c
    sub d                                         ; $784c: $92
    pop hl                                        ; $784d: $e1
    dec h                                         ; $784e: $25
    ld d, $38                                     ; $784f: $16 $38
    add b                                         ; $7851: $80
    and l                                         ; $7852: $a5
    adc c                                         ; $7853: $89
    ld [hl], c                                    ; $7854: $71
    inc h                                         ; $7855: $24
    or l                                          ; $7856: $b5
    ld a, e                                       ; $7857: $7b
    ld c, c                                       ; $7858: $49
    ld [hl], d                                    ; $7859: $72
    ld l, [hl]                                    ; $785a: $6e
    call Call_057_7bb5                            ; $785b: $cd $b5 $7b
    xor h                                         ; $785e: $ac
    ld b, [hl]                                    ; $785f: $46
    rst $20                                       ; $7860: $e7
    ld a, [de]                                    ; $7861: $1a
    or l                                          ; $7862: $b5
    ret nc                                        ; $7863: $d0

    jp hl                                         ; $7864: $e9


    ld a, [hl+]                                   ; $7865: $2a
    ld c, a                                       ; $7866: $4f
    ld a, l                                       ; $7867: $7d
    and $25                                       ; $7868: $e6 $25
    xor a                                         ; $786a: $af
    dec b                                         ; $786b: $05
    cp b                                          ; $786c: $b8
    ld bc, $4d2c                                  ; $786d: $01 $2c $4d
    adc h                                         ; $7870: $8c
    inc hl                                        ; $7871: $23
    xor c                                         ; $7872: $a9
    push af                                       ; $7873: $f5
    ld [hl], h                                    ; $7874: $74
    ld l, c                                       ; $7875: $69
    jp z, Jump_057_73a3                           ; $7876: $ca $a3 $73

    adc l                                         ; $7879: $8d
    ld e, d                                       ; $787a: $5a
    and b                                         ; $787b: $a0
    add $bf                                       ; $787c: $c6 $bf
    ld c, l                                       ; $787e: $4d
    ld a, h                                       ; $787f: $7c
    ret c                                         ; $7880: $d8

    ld c, e                                       ; $7881: $4b
    ld e, [hl]                                    ; $7882: $5e
    dec bc                                        ; $7883: $0b
    jp c, $35b9                                   ; $7884: $da $b9 $35

    rst $10                                       ; $7887: $d7
    cp b                                          ; $7888: $b8
    inc [hl]                                      ; $7889: $34
    ld sp, $a48e                                  ; $788a: $31 $8e $a4
    ld b, $d8                                     ; $788d: $06 $d8
    ld [hl], d                                    ; $788f: $72
    cp b                                          ; $7890: $b8
    inc a                                         ; $7891: $3c
    ld a, [hl-]                                   ; $7892: $3a
    rst $10                                       ; $7893: $d7
    xor b                                         ; $7894: $a8
    dec b                                         ; $7895: $05
    ld l, d                                       ; $7896: $6a
    db $fc                                        ; $7897: $fc
    ld e, e                                       ; $7898: $5b
    ld a, [$2f45]                                 ; $7899: $fa $45 $2f
    add a                                         ; $789c: $87
    sbc l                                         ; $789d: $9d
    ld hl, sp+$69                                 ; $789e: $f8 $69
    or $b0                                        ; $78a0: $f6 $b0
    push hl                                       ; $78a2: $e5
    ld c, e                                       ; $78a3: $4b
    add b                                         ; $78a4: $80
    cp e                                          ; $78a5: $bb
    add a                                         ; $78a6: $87
    xor d                                         ; $78a7: $aa
    add hl, hl                                    ; $78a8: $29
    ld a, l                                       ; $78a9: $7d
    xor [hl]                                      ; $78aa: $ae
    pop de                                        ; $78ab: $d1
    cp c                                          ; $78ac: $b9
    and h                                         ; $78ad: $a4
    ld c, e                                       ; $78ae: $4b
    and e                                         ; $78af: $a3
    add [hl]                                      ; $78b0: $86
    xor l                                         ; $78b1: $ad
    sub [hl]                                      ; $78b2: $96
    cp h                                          ; $78b3: $bc
    ld d, $2c                                     ; $78b4: $16 $2c
    sbc [hl]                                      ; $78b6: $9e
    ld a, [$ed62]                                 ; $78b7: $fa $62 $ed
    cp b                                          ; $78ba: $b8
    inc [hl]                                      ; $78bb: $34
    ld sp, $a6ba                                  ; $78bc: $31 $ba $a6
    db $f4                                        ; $78bf: $f4
    sub c                                         ; $78c0: $91
    call nc, $be6e                                ; $78c1: $d4 $6e $be
    inc h                                         ; $78c4: $24
    jp z, Jump_057_4923                           ; $78c5: $ca $23 $49

    set 5, b                                      ; $78c8: $cb $e8
    ld e, h                                       ; $78ca: $5c
    and e                                         ; $78cb: $a3
    sub [hl]                                      ; $78cc: $96
    halt                                          ; $78cd: $76
    inc l                                         ; $78ce: $2c
    db $d3                                        ; $78cf: $d3
    db $ec                                        ; $78d0: $ec
    add hl, hl                                    ; $78d1: $29
    ld h, e                                       ; $78d2: $63
    cp b                                          ; $78d3: $b8
    and l                                         ; $78d4: $a5
    inc h                                         ; $78d5: $24
    xor a                                         ; $78d6: $af
    ret c                                         ; $78d7: $d8

    jp $e8ae                                      ; $78d8: $c3 $ae $e8


    ld e, d                                       ; $78db: $5a
    ld h, d                                       ; $78dc: $62
    or l                                          ; $78dd: $b5
    di                                            ; $78de: $f3
    sub l                                         ; $78df: $95
    ld h, l                                       ; $78e0: $65
    cpl                                           ; $78e1: $2f
    ld e, c                                       ; $78e2: $59
    ld a, [c]                                     ; $78e3: $f2
    ld e, d                                       ; $78e4: $5a
    or b                                          ; $78e5: $b0
    ld a, b                                       ; $78e6: $78
    ld [$f78b], a                                 ; $78e7: $ea $8b $f7
    inc h                                         ; $78ea: $24
    db $fc                                        ; $78eb: $fc
    ld e, d                                       ; $78ec: $5a
    call z, $8e55                                 ; $78ed: $cc $55 $8e
    db $ec                                        ; $78f0: $ec
    sbc l                                         ; $78f1: $9d
    db $e4                                        ; $78f2: $e4
    push de                                       ; $78f3: $d5
    ld l, $59                                     ; $78f4: $2e $59
    daa                                           ; $78f6: $27
    adc a                                         ; $78f7: $8f
    ld l, [hl]                                    ; $78f8: $6e
    ld l, $6b                                     ; $78f9: $2e $6b
    and a                                         ; $78fb: $a7
    ld a, h                                       ; $78fc: $7c
    jr c, jr_057_792e                             ; $78fd: $38 $2f

    ld l, l                                       ; $78ff: $6d
    ld d, l                                       ; $7900: $55
    ld c, [hl]                                    ; $7901: $4e
    cp l                                          ; $7902: $bd
    push af                                       ; $7903: $f5
    inc h                                         ; $7904: $24
    rst $38                                       ; $7905: $ff
    ld c, h                                       ; $7906: $4c
    jp hl                                         ; $7907: $e9


    and e                                         ; $7908: $a3
    xor c                                         ; $7909: $a9
    ld e, d                                       ; $790a: $5a
    db $fd                                        ; $790b: $fd
    ret z                                         ; $790c: $c8

    ccf                                           ; $790d: $3f
    adc h                                         ; $790e: $8c
    ld [hl], b                                    ; $790f: $70
    inc a                                         ; $7910: $3c

jr_057_7911:
    adc [hl]                                      ; $7911: $8e
    dec e                                         ; $7912: $1d
    or a                                          ; $7913: $b7
    push hl                                       ; $7914: $e5
    or b                                          ; $7915: $b0
    ld a, [$7f91]                                 ; $7916: $fa $91 $7f
    ldh a, [$be]                                  ; $7919: $f0 $be
    add h                                         ; $791b: $84
    or d                                          ; $791c: $b2
    ld a, [$e396]                                 ; $791d: $fa $96 $e3
    jp nc, $788e                                  ; $7920: $d2 $8e $78

    dec [hl]                                      ; $7923: $35

Jump_057_7924:
    and l                                         ; $7924: $a5
    xor a                                         ; $7925: $af
    ld [hl], l                                    ; $7926: $75
    dec e                                         ; $7927: $1d
    ld e, [hl]                                    ; $7928: $5e
    ld h, $c9                                     ; $7929: $26 $c9
    ldh a, [rNR12]                                ; $792b: $f0 $12
    ld c, e                                       ; $792d: $4b

jr_057_792e:
    ld [$eb75], a                                 ; $792e: $ea $75 $eb
    inc hl                                        ; $7931: $23
    ld e, [hl]                                    ; $7932: $5e
    db $ed                                        ; $7933: $ed
    ld a, [c]                                     ; $7934: $f2
    dec hl                                        ; $7935: $2b
    halt                                          ; $7936: $76
    ld a, [hl-]                                   ; $7937: $3a
    ld c, a                                       ; $7938: $4f
    adc [hl]                                      ; $7939: $8e
    ld l, e                                       ; $793a: $6b
    db $fc                                        ; $793b: $fc
    db $db                                        ; $793c: $db
    xor b                                         ; $793d: $a8
    pop de                                        ; $793e: $d1
    ld e, a                                       ; $793f: $5f
    call nz, $9653                                ; $7940: $c4 $53 $96
    push de                                       ; $7943: $d5
    adc a                                         ; $7944: $8f
    db $fc                                        ; $7945: $fc
    add e                                         ; $7946: $83
    rla                                           ; $7947: $17
    inc sp                                        ; $7948: $33
    ld c, [hl]                                    ; $7949: $4e

Jump_057_794a:
    ld a, a                                       ; $794a: $7f
    ld a, c                                       ; $794b: $79
    and a                                         ; $794c: $a7
    sub e                                         ; $794d: $93
    push bc                                       ; $794e: $c5
    ld [bc], a                                    ; $794f: $02
    ld de, $e7b7                                  ; $7950: $11 $b7 $e7
    ld a, [hl-]                                   ; $7953: $3a
    ld e, l                                       ; $7954: $5d
    ld [hl], c                                    ; $7955: $71
    call nc, Call_000_2fe8                        ; $7956: $d4 $e8 $2f
    ld [c], a                                     ; $7959: $e2
    push bc                                       ; $795a: $c5
    ld e, h                                       ; $795b: $5c
    ld c, h                                       ; $795c: $4c
    cp [hl]                                       ; $795d: $be
    or d                                          ; $795e: $b2
    ld a, b                                       ; $795f: $78
    daa                                           ; $7960: $27
    db $e3                                        ; $7961: $e3
    ld de, $e55d                                  ; $7962: $11 $5d $e5
    jp c, Jump_000_1879                           ; $7965: $da $79 $18

    ld e, e                                       ; $7968: $5b
    ldh [$6e], a                                  ; $7969: $e0 $6e
    ld l, a                                       ; $796b: $6f
    ld a, [de]                                    ; $796c: $1a
    and $d1                                       ; $796d: $e6 $d1
    ld e, l                                       ; $796f: $5d
    ld [hl], l                                    ; $7970: $75
    ld a, b                                       ; $7971: $78
    ld hl, sp+$55                                 ; $7972: $f8 $55
    db $ec                                        ; $7974: $ec
    ld a, [hl+]                                   ; $7975: $2a
    bit 6, d                                      ; $7976: $cb $72
    jr jr_057_7911                                ; $7978: $18 $97

    ld h, $c6                                     ; $797a: $26 $c6
    sub c                                         ; $797c: $91
    call nc, $be6e                                ; $797d: $d4 $6e $be
    inc h                                         ; $7980: $24
    jp z, Jump_057_4923                           ; $7981: $ca $23 $49

    set 5, b                                      ; $7984: $cb $e8
    ld e, h                                       ; $7986: $5c
    and e                                         ; $7987: $a3
    sub [hl]                                      ; $7988: $96
    ld e, b                                       ; $7989: $58
    sub h                                         ; $798a: $94
    ld h, a                                       ; $798b: $67
    ld e, [hl]                                    ; $798c: $5e
    call z, $70c5                                 ; $798d: $cc $c5 $70
    inc bc                                        ; $7990: $03
    ld l, h                                       ; $7991: $6c
    ld d, c                                       ; $7992: $51
    ld d, e                                       ; $7993: $53

Call_057_7994:
    and $89                                       ; $7994: $e6 $89
    rrca                                          ; $7996: $0f
    ld a, e                                       ; $7997: $7b
    ld sp, $9b17                                  ; $7998: $31 $17 $9b
    sub a                                         ; $799b: $97
    ld e, b                                       ; $799c: $58
    adc l                                         ; $799d: $8d
    ld e, d                                       ; $799e: $5a
    add sp, $58                                   ; $799f: $e8 $58
    ld hl, sp+$4d                                 ; $79a1: $f8 $4d
    ld e, c                                       ; $79a3: $59
    call nz, Call_000_2b23                        ; $79a4: $c4 $23 $2b
    rra                                           ; $79a7: $1f
    sbc a                                         ; $79a8: $9f
    ld h, e                                       ; $79a9: $63
    add c                                         ; $79aa: $81
    db $eb                                        ; $79ab: $eb
    ld c, c                                       ; $79ac: $49

Call_057_79ad:
    cp $99                                        ; $79ad: $fe $99
    jp nc, $7f47                                  ; $79af: $d2 $47 $7f

    ld de, $ccd7                                  ; $79b2: $11 $d7 $cc
    adc e                                         ; $79b5: $8b
    cp c                                          ; $79b6: $b9
    ld a, b                                       ; $79b7: $78
    daa                                           ; $79b8: $27
    db $e3                                        ; $79b9: $e3
    cp c                                          ; $79ba: $b9
    add [hl]                                      ; $79bb: $86
    ld e, a                                       ; $79bc: $5f
    or h                                          ; $79bd: $b4
    halt                                          ; $79be: $76
    ld [hl], h                                    ; $79bf: $74
    rst $00                                       ; $79c0: $c7
    dec h                                         ; $79c1: $25
    ld a, $53                                     ; $79c2: $3e $53
    rst $38                                       ; $79c4: $ff
    inc e                                         ; $79c5: $1c
    adc a                                         ; $79c6: $8f
    di                                            ; $79c7: $f3
    ld h, d                                       ; $79c8: $62
    ld l, $b6                                     ; $79c9: $2e $b6
    jr @-$50                                      ; $79cb: $18 $ae

    ld e, e                                       ; $79cd: $5b
    rra                                           ; $79ce: $1f
    and [hl]                                      ; $79cf: $a6
    ld b, [hl]                                    ; $79d0: $46
    ld a, a                                       ; $79d1: $7f
    ld de, $e62f                                  ; $79d2: $11 $2f $e6
    ld h, d                                       ; $79d5: $62
    adc e                                         ; $79d6: $8b
    ld [hl], a                                    ; $79d7: $77
    ld [hl-], a                                   ; $79d8: $32
    ld e, $d1                                     ; $79d9: $1e $d1
    ld d, l                                       ; $79db: $55
    xor [hl]                                      ; $79dc: $ae
    sbc l                                         ; $79dd: $9d
    add a                                         ; $79de: $87
    or c                                          ; $79df: $b1
    ld h, l                                       ; $79e0: $65
    add hl, sp                                    ; $79e1: $39
    adc h                                         ; $79e2: $8c
    xor $b8                                       ; $79e3: $ee $b8
    call nz, $ad7b                                ; $79e5: $c4 $7b $ad
    ld a, c                                       ; $79e8: $79
    ld sp, $9317                                  ; $79e9: $31 $17 $93
    xor a                                         ; $79ec: $af
    inc l                                         ; $79ed: $2c
    ld e, $9d                                     ; $79ee: $1e $9d
    ld l, e                                       ; $79f0: $6b
    call nc, Call_000_2f92                        ; $79f1: $d4 $92 $2f
    ld h, d                                       ; $79f4: $62
    adc b                                         ; $79f5: $88
    nop                                           ; $79f6: $00
    dec a                                         ; $79f7: $3d
    ret                                           ; $79f8: $c9


    ccf                                           ; $79f9: $3f
    ld d, e                                       ; $79fa: $53
    ld a, [$d44e]                                 ; $79fb: $fa $4e $d4
    ld e, e                                       ; $79fe: $5b
    di                                            ; $79ff: $f3
    ld [bc], a                                    ; $7a00: $02
    dec [hl]                                      ; $7a01: $35
    push hl                                       ; $7a02: $e5
    or b                                          ; $7a03: $b0
    ld [hl], h                                    ; $7a04: $74
    ld l, $d6                                     ; $7a05: $2e $d6
    adc [hl]                                      ; $7a07: $8e
    ld c, e                                       ; $7a08: $4b
    inc de                                        ; $7a09: $13
    db $e3                                        ; $7a0a: $e3
    nop                                           ; $7a0b: $00
    cp e                                          ; $7a0c: $bb
    add l                                         ; $7a0d: $85
    pop de                                        ; $7a0e: $d1
    cp c                                          ; $7a0f: $b9
    ld b, [hl]                                    ; $7a10: $46
    adc l                                         ; $7a11: $8d
    and [hl]                                      ; $7a12: $a6
    sub [hl]                                      ; $7a13: $96
    ld c, c                                       ; $7a14: $49
    ld [hl], d                                    ; $7a15: $72
    sub [hl]                                      ; $7a16: $96
    push hl                                       ; $7a17: $e5
    ld a, [$7616]                                 ; $7a18: $fa $16 $76
    ld a, l                                       ; $7a1b: $7d
    add hl, bc                                    ; $7a1c: $09
    rlca                                          ; $7a1d: $07
    cp e                                          ; $7a1e: $bb
    xor c                                         ; $7a1f: $a9
    cpl                                           ; $7a20: $2f
    ld h, c                                       ; $7a21: $61
    add hl, de                                    ; $7a22: $19
    adc a                                         ; $7a23: $8f
    ld c, b                                       ; $7a24: $48
    ld [hl], d                                    ; $7a25: $72
    ld c, l                                       ; $7a26: $4d
    jp hl                                         ; $7a27: $e9


    ld [hl], e                                    ; $7a28: $73
    ld b, c                                       ; $7a29: $41
    inc b                                         ; $7a2a: $04
    nop                                           ; $7a2b: $00
    ld c, e                                       ; $7a2c: $4b
    inc de                                        ; $7a2d: $13
    db $e3                                        ; $7a2e: $e3

Jump_057_7a2f:
    ld c, b                                       ; $7a2f: $48
    ld l, d                                       ; $7a30: $6a
    scf                                           ; $7a31: $37
    ld e, a                                       ; $7a32: $5f
    ld [de], a                                    ; $7a33: $12
    push hl                                       ; $7a34: $e5
    sub c                                         ; $7a35: $91
    and h                                         ; $7a36: $a4
    ld h, l                                       ; $7a37: $65
    ld [hl], h                                    ; $7a38: $74
    xor [hl]                                      ; $7a39: $ae
    ld d, c                                       ; $7a3a: $51
    ld l, e                                       ; $7a3b: $6b
    ld h, [hl]                                    ; $7a3c: $66
    rst $08                                       ; $7a3d: $cf
    call z, $9dae                                 ; $7a3e: $cc $ae $9d
    ret c                                         ; $7a41: $d8

    pop de                                        ; $7a42: $d1
    dec de                                        ; $7a43: $1b
    ld a, e                                       ; $7a44: $7b
    and [hl]                                      ; $7a45: $a6
    ld l, c                                       ; $7a46: $69
    ld b, a                                       ; $7a47: $47
    halt                                          ; $7a48: $76
    db $ed                                        ; $7a49: $ed
    ld c, a                                       ; $7a4a: $4f
    ld a, [$c22a]                                 ; $7a4b: $fa $2a $c2
    ld l, h                                       ; $7a4e: $6c
    add hl, de                                    ; $7a4f: $19
    sbc l                                         ; $7a50: $9d
    db $eb                                        ; $7a51: $eb
    ret                                           ; $7a52: $c9


    sub h                                         ; $7a53: $94
    inc bc                                        ; $7a54: $03
    call c, $927a                                 ; $7a55: $dc $7a $92
    ld a, a                                       ; $7a58: $7f
    and [hl]                                      ; $7a59: $a6
    call z, $cd73                                 ; $7a5a: $cc $73 $cd
    ld [hl-], a                                   ; $7a5d: $32
    db $d3                                        ; $7a5e: $d3
    or h                                          ; $7a5f: $b4
    inc hl                                        ; $7a60: $23
    ld c, a                                       ; $7a61: $4f
    cp c                                          ; $7a62: $b9
    or h                                          ; $7a63: $b4
    ld c, e                                       ; $7a64: $4b
    cp $f1                                        ; $7a65: $fe $f1
    sbc c                                         ; $7a67: $99
    ld [hl-], a                                   ; $7a68: $32
    rst $08                                       ; $7a69: $cf
    ld [hl-], a                                   ; $7a6a: $32
    db $ec                                        ; $7a6b: $ec
    and [hl]                                      ; $7a6c: $a6
    cp [hl]                                       ; $7a6d: $be
    add h                                         ; $7a6e: $84
    ld h, l                                       ; $7a6f: $65
    inc a                                         ; $7a70: $3c
    ld [hl+], a                                   ; $7a71: $22
    ld a, c                                       ; $7a72: $79
    ld d, e                                       ; $7a73: $53
    ld a, [$5788]                                 ; $7a74: $fa $88 $57
    and e                                         ; $7a77: $a3
    ld [hl], l                                    ; $7a78: $75
    ld de, $4433                                  ; $7a79: $11 $33 $44
    cp l                                          ; $7a7c: $bd
    xor c                                         ; $7a7d: $a9
    push hl                                       ; $7a7e: $e5
    or b                                          ; $7a7f: $b0
    inc hl                                        ; $7a80: $23
    cpl                                           ; $7a81: $2f
    add $61                                       ; $7a82: $c6 $61
    xor e                                         ; $7a84: $ab
    sub c                                         ; $7a85: $91
    sub l                                         ; $7a86: $95
    ld l, c                                       ; $7a87: $69
    sbc a                                         ; $7a88: $9f
    sub e                                         ; $7a89: $93
    ld l, e                                       ; $7a8a: $6b
    add hl, hl                                    ; $7a8b: $29
    ld c, l                                       ; $7a8c: $4d
    xor a                                         ; $7a8d: $af
    ld h, l                                       ; $7a8e: $65
    inc a                                         ; $7a8f: $3c
    or a                                          ; $7a90: $b7
    rra                                           ; $7a91: $1f
    rst $08                                       ; $7a92: $cf
    xor a                                         ; $7a93: $af
    ld c, h                                       ; $7a94: $4c
    sub d                                         ; $7a95: $92
    daa                                           ; $7a96: $27
    sub $a7                                       ; $7a97: $d6 $a7
    reti                                          ; $7a99: $d9


    ld [c], a                                     ; $7a9a: $e2
    xor c                                         ; $7a9b: $a9

Call_057_7a9c:
    cpl                                           ; $7a9c: $2f
    sub $ae                                       ; $7a9d: $d6 $ae
    rst $20                                       ; $7a9f: $e7
    ld d, l                                       ; $7aa0: $55
    ld l, c                                       ; $7aa1: $69
    jr nz, jr_057_7aa6                            ; $7aa2: $20 $02

    add b                                         ; $7aa4: $80
    ei                                            ; $7aa5: $fb

jr_057_7aa6:
    xor d                                         ; $7aa6: $aa
    inc de                                        ; $7aa7: $13
    or d                                          ; $7aa8: $b2
    jp nc, $fd2e                                  ; $7aa9: $d2 $2e $fd

    jp z, $cfe3                                   ; $7aac: $ca $e3 $cf

    cp h                                          ; $7aaf: $bc
    ccf                                           ; $7ab0: $3f
    ld b, d                                       ; $7ab1: $42
    db $d3                                        ; $7ab2: $d3
    sbc d                                         ; $7ab3: $9a
    push bc                                       ; $7ab4: $c5
    ld [hl], b                                    ; $7ab5: $70
    cp e                                          ; $7ab6: $bb
    ei                                            ; $7ab7: $fb
    ret                                           ; $7ab8: $c9


    ld [de], a                                    ; $7ab9: $12
    di                                            ; $7aba: $f3
    ld e, [hl]                                    ; $7abb: $5e
    ld d, e                                       ; $7abc: $53
    push af                                       ; $7abd: $f5
    ld b, a                                       ; $7abe: $47
    inc h                                         ; $7abf: $24
    cp a                                          ; $7ac0: $bf
    ld b, l                                       ; $7ac1: $45
    rst $28                                       ; $7ac2: $ef
    dec bc                                        ; $7ac3: $0b
    cp e                                          ; $7ac4: $bb
    ld a, h                                       ; $7ac5: $7c
    adc $13                                       ; $7ac6: $ce $13
    or $f8                                        ; $7ac8: $f6 $f8
    ld c, e                                       ; $7aca: $4b
    jr @+$80                                      ; $7acb: $18 $7e

    or d                                          ; $7acd: $b2
    ld hl, sp+$64                                 ; $7ace: $f8 $64
    ld sp, $ec63                                  ; $7ad0: $31 $63 $ec
    push hl                                       ; $7ad3: $e5
    call nz, $1105                                ; $7ad4: $c4 $05 $11
    ld [hl], a                                    ; $7ad7: $77
    ld c, b                                       ; $7ad8: $48
    or b                                          ; $7ad9: $b0
    adc h                                         ; $7ada: $8c
    ld a, b                                       ; $7adb: $78
    or l                                          ; $7adc: $b5
    and a                                         ; $7add: $a7
    jp nz, $3093                                  ; $7ade: $c2 $93 $30

    cp $6d                                        ; $7ae1: $fe $6d
    or a                                          ; $7ae3: $b7
    jr c, @-$6a                                   ; $7ae4: $38 $94

    push hl                                       ; $7ae6: $e5
    sbc b                                         ; $7ae7: $98
    cpl                                           ; $7ae8: $2f
    add hl, sp                                    ; $7ae9: $39
    adc [hl]                                      ; $7aea: $8e
    and a                                         ; $7aeb: $a7
    sub e                                         ; $7aec: $93
    push bc                                       ; $7aed: $c5
    ld [hl-], a                                   ; $7aee: $32
    sbc l                                         ; $7aef: $9d
    dec l                                         ; $7af0: $2d
    db $e3                                        ; $7af1: $e3
    rst $18                                       ; $7af2: $df
    jp c, $b763                                   ; $7af3: $da $63 $b7

    ld h, e                                       ; $7af6: $63
    adc b                                         ; $7af7: $88
    nop                                           ; $7af8: $00
    db $dd                                        ; $7af9: $dd
    ld a, [$7ad2]                                 ; $7afa: $fa $d2 $7a
    add hl, hl                                    ; $7afd: $29
    adc a                                         ; $7afe: $8f
    adc $c5                                       ; $7aff: $ce $c5
    ld l, [hl]                                    ; $7b01: $6e
    call Call_000_2b23                            ; $7b02: $cd $23 $2b
    db $d3                                        ; $7b05: $d3
    ld a, $27                                     ; $7b06: $3e $27
    rst $10                                       ; $7b08: $d7
    xor $2c                                       ; $7b09: $ee $2c
    ld c, e                                       ; $7b0b: $4b
    ld l, b                                       ; $7b0c: $68
    sbc $e3                                       ; $7b0d: $de $e3
    add hl, hl                                    ; $7b0f: $29
    ld a, l                                       ; $7b10: $7d
    call nz, $d1ab                                ; $7b11: $c4 $ab $d1
    cp d                                          ; $7b14: $ba
    adc b                                         ; $7b15: $88
    ld a, c                                       ; $7b16: $79
    sub [hl]                                      ; $7b17: $96

Call_057_7b18:
    ld b, l                                       ; $7b18: $45
    cp l                                          ; $7b19: $bd
    ld b, [hl]                                    ; $7b1a: $46
    rst $20                                       ; $7b1b: $e7
    ld e, d                                       ; $7b1c: $5a
    ei                                            ; $7b1d: $fb
    jp z, Jump_057_58ed                           ; $7b1e: $ca $ed $58

    and [hl]                                      ; $7b21: $a6
    cp [hl]                                       ; $7b22: $be
    ld b, b                                       ; $7b23: $40
    inc b                                         ; $7b24: $04
    ld a, l                                       ; $7b25: $7d
    inc e                                         ; $7b26: $1c
    halt                                          ; $7b27: $76
    and d                                         ; $7b28: $a2
    sbc $9a                                       ; $7b29: $de $9a
    rst $10                                       ; $7b2b: $d7
    dec h                                         ; $7b2c: $25
    daa                                           ; $7b2d: $27
    ld a, d                                       ; $7b2e: $7a
    jp z, Jump_000_1fbc                           ; $7b2f: $ca $bc $1f

    and e                                         ; $7b32: $a3
    sub a                                         ; $7b33: $97
    cp h                                          ; $7b34: $bc
    ld a, [de]                                    ; $7b35: $1a
    xor l                                         ; $7b36: $ad
    or a                                          ; $7b37: $b7
    add $3b                                       ; $7b38: $c6 $3b
    call nc, $93f0                                ; $7b3a: $d4 $f0 $93
    ldh [rLYC], a                                 ; $7b3d: $e0 $45
    ld c, l                                       ; $7b3f: $4d
    ld l, e                                       ; $7b40: $6b
    ld e, a                                       ; $7b41: $5f
    add d                                         ; $7b42: $82
    ld l, e                                       ; $7b43: $6b
    ld a, a                                       ; $7b44: $7f
    db $e4                                        ; $7b45: $e4
    xor e                                         ; $7b46: $ab
    ld l, b                                       ; $7b47: $68
    add c                                         ; $7b48: $81
    ld [$b737], sp                                ; $7b49: $08 $37 $b7
    and $45                                       ; $7b4c: $e6 $45
    ld c, l                                       ; $7b4e: $4d
    ld l, e                                       ; $7b4f: $6b
    ld e, a                                       ; $7b50: $5f
    add d                                         ; $7b51: $82
    push bc                                       ; $7b52: $c5
    ld d, e                                       ; $7b53: $53
    xor [hl]                                      ; $7b54: $ae
    jp hl                                         ; $7b55: $e9


    db $ec                                        ; $7b56: $ec
    add l                                         ; $7b57: $85
    ld c, [hl]                                    ; $7b58: $4e
    ld d, a                                       ; $7b59: $57
    ld c, l                                       ; $7b5a: $4d
    sbc c                                         ; $7b5b: $99
    daa                                           ; $7b5c: $27
    add hl, sp                                    ; $7b5d: $39
    ld e, $6a                                     ; $7b5e: $1e $6a
    daa                                           ; $7b60: $27
    ld [$bb18], a                                 ; $7b61: $ea $18 $bb
    pop af                                        ; $7b64: $f1
    xor b                                         ; $7b65: $a8
    pop af                                        ; $7b66: $f1
    sbc e                                         ; $7b67: $9b
    ld h, l                                       ; $7b68: $65
    add a                                         ; $7b69: $87
    ld a, h                                       ; $7b6a: $7c
    rst $00                                       ; $7b6b: $c7
    push bc                                       ; $7b6c: $c5
    ld a, d                                       ; $7b6d: $7a
    ld b, c                                       ; $7b6e: $41
    inc b                                         ; $7b6f: $04
    db $dd                                        ; $7b70: $dd
    sbc [hl]                                      ; $7b71: $9e
    ld l, b                                       ; $7b72: $68
    cp h                                          ; $7b73: $bc
    ld h, e                                       ; $7b74: $63
    ld a, h                                       ; $7b75: $7c
    and d                                         ; $7b76: $a2
    sub l                                         ; $7b77: $95
    ld [hl], a                                    ; $7b78: $77
    ld h, d                                       ; $7b79: $62

Jump_057_7b7a:
    or [hl]                                       ; $7b7a: $b6
    ld a, b                                       ; $7b7b: $78
    ld hl, sp-$75                                 ; $7b7c: $f8 $8b
    sub a                                         ; $7b7e: $97
    ld l, [hl]                                    ; $7b7f: $6e
    ld e, [hl]                                    ; $7b80: $5e
    sub a                                         ; $7b81: $97
    ld [hl], d                                    ; $7b82: $72
    ld a, e                                       ; $7b83: $7b
    add c                                         ; $7b84: $81
    and a                                         ; $7b85: $a7
    sbc $3a                                       ; $7b86: $de $3a
    ld c, $4b                                     ; $7b88: $0e $4b
    ld e, [hl]                                    ; $7b8a: $5e
    ld c, l                                       ; $7b8b: $4d
    ld h, a                                       ; $7b8c: $67
    adc a                                         ; $7b8d: $8f
    adc $a5                                       ; $7b8e: $ce $a5
    cp $3a                                        ; $7b90: $fe $3a
    ld c, $e3                                     ; $7b92: $0e $e3
    and d                                         ; $7b94: $a2
    ld h, d                                       ; $7b95: $62
    inc [hl]                                      ; $7b96: $34
    adc a                                         ; $7b97: $8f
    and h                                         ; $7b98: $a4
    and $10                                       ; $7b99: $e6 $10
    jr nz, @+$04                                  ; $7b9b: $20 $02

    ld [hl], a                                    ; $7b9d: $77
    call nz, $25e8                                ; $7b9e: $c4 $e8 $25
    and $75                                       ; $7ba1: $e6 $75
    inc e                                         ; $7ba3: $1c
    ld b, [hl]                                    ; $7ba4: $46
    inc h                                         ; $7ba5: $24
    cp c                                          ; $7ba6: $b9
    add sp, $5c                                   ; $7ba7: $e8 $5c
    ld d, e                                       ; $7ba9: $53
    sbc $8f                                       ; $7baa: $de $8f
    pop de                                        ; $7bac: $d1
    dec sp                                        ; $7bad: $3b
    xor [hl]                                      ; $7bae: $ae
    call nz, Call_057_5ae5                        ; $7baf: $c4 $e5 $5a
    call nc, $f6b4                                ; $7bb2: $d4 $b4 $f6

Call_057_7bb5:
    dec h                                         ; $7bb5: $25
    adc h                                         ; $7bb6: $8c
    ld a, a                                       ; $7bb7: $7f
    dec de                                        ; $7bb8: $1b
    cp $4a                                        ; $7bb9: $fe $4a
    cp l                                          ; $7bbb: $bd
    or b                                          ; $7bbc: $b0
    ld c, h                                       ; $7bbd: $4c
    or e                                          ; $7bbe: $b3
    rl b                                          ; $7bbf: $cb $10
    ld bc, $c9b7                                  ; $7bc1: $01 $b7 $c9
    and d                                         ; $7bc4: $a2
    and [hl]                                      ; $7bc5: $a6
    or l                                          ; $7bc6: $b5
    cpl                                           ; $7bc7: $2f
    ld hl, $8694                                  ; $7bc8: $21 $94 $86
    dec a                                         ; $7bcb: $3d
    ld [c], a                                     ; $7bcc: $e2
    add hl, hl                                    ; $7bcd: $29
    push hl                                       ; $7bce: $e5
    dec e                                         ; $7bcf: $1d
    db $fc                                        ; $7bd0: $fc
    ld [hl+], a                                   ; $7bd1: $22
    cpl                                           ; $7bd2: $2f
    inc a                                         ; $7bd3: $3c
    add hl, sp                                    ; $7bd4: $39
    pop de                                        ; $7bd5: $d1
    dec bc                                        ; $7bd6: $0b

jr_057_7bd7:
    ld e, c                                       ; $7bd7: $59
    pop af                                        ; $7bd8: $f1
    ld e, [hl]                                    ; $7bd9: $5e
    adc h                                         ; $7bda: $8c
    ld a, d                                       ; $7bdb: $7a
    dec a                                         ; $7bdc: $3d
    sbc [hl]                                      ; $7bdd: $9e
    ld d, b                                       ; $7bde: $50
    db $10                                        ; $7bdf: $10
    ld bc, $af3d                                  ; $7be0: $01 $3d $af
    and [hl]                                      ; $7be3: $a6
    db $f4                                        ; $7be4: $f4
    dec e                                         ; $7be5: $1d
    inc sp                                        ; $7be6: $33
    rst $08                                       ; $7be7: $cf
    or d                                          ; $7be8: $b2
    xor b                                         ; $7be9: $a8
    ld l, c                                       ; $7bea: $69
    db $ed                                        ; $7beb: $ed
    ld c, e                                       ; $7bec: $4b
    ld e, b                                       ; $7bed: $58
    sbc c                                         ; $7bee: $99
    ld a, c                                       ; $7bef: $79
    ld a, a                                       ; $7bf0: $7f
    ld e, l                                       ; $7bf1: $5d
    sbc d                                         ; $7bf2: $9a
    scf                                           ; $7bf3: $37
    ret                                           ; $7bf4: $c9


    sub [hl]                                      ; $7bf5: $96
    add l                                         ; $7bf6: $85
    daa                                           ; $7bf7: $27
    and c                                         ; $7bf8: $a1
    rst $10                                       ; $7bf9: $d7
    nop                                           ; $7bfa: $00
    ld a, [de]                                    ; $7bfb: $1a
    ld h, e                                       ; $7bfc: $63
    or a                                          ; $7bfd: $b7
    rra                                           ; $7bfe: $1f
    ld h, $9f                                     ; $7bff: $26 $9f
    ld a, $0c                                     ; $7c01: $3e $0c
    ld de, $493d                                  ; $7c03: $11 $3d $49
    ld l, $3a                                     ; $7c06: $2e $3a
    rst $10                                       ; $7c08: $d7
    adc [hl]                                      ; $7c09: $8e
    cp h                                          ; $7c0a: $bc
    jr jr_057_7c6a                                ; $7c0b: $18 $5d

    ld a, e                                       ; $7c0d: $7b
    xor l                                         ; $7c0e: $ad
    ld a, c                                       ; $7c0f: $79
    add hl, de                                    ; $7c10: $19
    cpl                                           ; $7c11: $2f
    ld l, d                                       ; $7c12: $6a
    ld e, d                                       ; $7c13: $5a
    ei                                            ; $7c14: $fb
    ld [de], a                                    ; $7c15: $12
    ld e, h                                       ; $7c16: $5c
    cp l                                          ; $7c17: $bd
    db $10                                        ; $7c18: $10
    ld a, l                                       ; $7c19: $7d
    inc e                                         ; $7c1a: $1c
    halt                                          ; $7c1b: $76
    ld e, [hl]                                    ; $7c1c: $5e
    ld [hl+], a                                   ; $7c1d: $22
    xor [hl]                                      ; $7c1e: $ae
    ld b, l                                       ; $7c1f: $45
    ld c, l                                       ; $7c20: $4d
    ld l, e                                       ; $7c21: $6b
    ld e, a                                       ; $7c22: $5f
    jp nz, $ed79                                  ; $7c23: $c2 $79 $ed

    or c                                          ; $7c26: $b1
    ld h, l                                       ; $7c27: $65
    db $fc                                        ; $7c28: $fc
    db $db                                        ; $7c29: $db
    or b                                          ; $7c2a: $b0
    adc $ec                                       ; $7c2b: $ce $ec
    ld [de], a                                    ; $7c2d: $12
    adc b                                         ; $7c2e: $88
    nop                                           ; $7c2f: $00
    rst $30                                       ; $7c30: $f7
    ld hl, sp-$50                                 ; $7c31: $f8 $b0
    rla                                           ; $7c33: $17
    sbc [hl]                                      ; $7c34: $9e
    add h                                         ; $7c35: $84
    ld [hl], l                                    ; $7c36: $75
    inc e                                         ; $7c37: $1c
    halt                                          ; $7c38: $76
    ld [c], a                                     ; $7c39: $e2
    ld l, e                                       ; $7c3a: $6b
    adc e                                         ; $7c3b: $8b
    db $ed                                        ; $7c3c: $ed
    sub e                                         ; $7c3d: $93
    and h                                         ; $7c3e: $a4
    ld b, a                                       ; $7c3f: $47
    ld d, b                                       ; $7c40: $50
    ld h, l                                       ; $7c41: $65
    sub $8e                                       ; $7c42: $d6 $8e
    dec hl                                        ; $7c44: $2b
    rst $10                                       ; $7c45: $d7
    ld a, [hl-]                                   ; $7c46: $3a
    ld c, $eb                                     ; $7c47: $0e $eb
    jr c, jr_057_7bd7                             ; $7c49: $38 $8c

    ld e, a                                       ; $7c4b: $5f
    call $ba32                                    ; $7c4c: $cd $32 $ba

jr_057_7c4f:
    db $d3                                        ; $7c4f: $d3
    ld d, a                                       ; $7c50: $57
    push bc                                       ; $7c51: $c5
    or $49                                        ; $7c52: $f6 $49
    ld [de], a                                    ; $7c54: $12
    ld [hl+], a                                   ; $7c55: $22
    db $dd                                        ; $7c56: $dd
    sbc $17                                       ; $7c57: $de $17
    ld c, c                                       ; $7c59: $49
    rst $38                                       ; $7c5a: $ff
    halt                                          ; $7c5b: $76
    and d                                         ; $7c5c: $a2
    ld [hl], a                                    ; $7c5d: $77
    or b                                          ; $7c5e: $b0
    ld h, $bc                                     ; $7c5f: $26 $bc
    ld d, d                                       ; $7c61: $52
    ld e, a                                       ; $7c62: $5f
    add d                                         ; $7c63: $82
    push bc                                       ; $7c64: $c5
    xor c                                         ; $7c65: $a9
    sub a                                         ; $7c66: $97
    ld b, d                                       ; $7c67: $42
    ld a, $89                                     ; $7c68: $3e $89

jr_057_7c6a:
    ld a, d                                       ; $7c6a: $7a
    ld [hl], e                                    ; $7c6b: $73
    cp c                                          ; $7c6c: $b9
    ld d, [hl]                                    ; $7c6d: $56
    cp d                                          ; $7c6e: $ba
    jr z, jr_057_7c4f                             ; $7c6f: $28 $de

    ret                                           ; $7c71: $c9


    ld a, b                                       ; $7c72: $78
    call nz, $4713                                ; $7c73: $c4 $13 $47
    ld c, l                                       ; $7c76: $4d
    ld l, e                                       ; $7c77: $6b
    ld e, a                                       ; $7c78: $5f
    add d                                         ; $7c79: $82
    dec hl                                        ; $7c7a: $2b
    dec [hl]                                      ; $7c7b: $35
    ld [bc], a                                    ; $7c7c: $02
    ld [hl], a                                    ; $7c7d: $77
    cp a                                          ; $7c7e: $bf
    ld b, [hl]                                    ; $7c7f: $46
    ccf                                           ; $7c80: $3f
    add hl, bc                                    ; $7c81: $09
    db $d3                                        ; $7c82: $d3
    sbc c                                         ; $7c83: $99
    adc $a5                                       ; $7c84: $ce $a5
    jp z, $ec3c                                   ; $7c86: $ca $3c $ec

jr_057_7c89:
    jr nc, jr_057_7c89                            ; $7c89: $30 $fe

    ld l, l                                       ; $7c8b: $6d
    call nc, $f90e                                ; $7c8c: $d4 $0e $f9
    ld e, e                                       ; $7c8f: $5b
    di                                            ; $7c90: $f3
    and d                                         ; $7c91: $a2
    and [hl]                                      ; $7c92: $a6
    or l                                          ; $7c93: $b5
    cpl                                           ; $7c94: $2f
    ld h, c                                       ; $7c95: $61
    inc h                                         ; $7c96: $24
    or l                                          ; $7c97: $b5
    sub e                                         ; $7c98: $93
    ld c, c                                       ; $7c99: $49
    or a                                          ; $7c9a: $b7
    adc a                                         ; $7c9b: $8f
    ld e, l                                       ; $7c9c: $5d
    ld [hl], b                                    ; $7c9d: $70
    rst $30                                       ; $7c9e: $f7
    db $fc                                        ; $7c9f: $fc
    ld a, b                                       ; $7ca0: $78
    or h                                          ; $7ca1: $b4
    ld d, e                                       ; $7ca2: $53
    and $b9                                       ; $7ca3: $e6 $b9
    ld b, [hl]                                    ; $7ca5: $46
    rst $20                                       ; $7ca6: $e7
    ld a, [de]                                    ; $7ca7: $1a
    db $fd                                        ; $7ca8: $fd
    xor d                                         ; $7ca9: $aa
    db $fd                                        ; $7caa: $fd
    sub b                                         ; $7cab: $90
    ld a, [de]                                    ; $7cac: $1a
    ld bc, $f8b7                                  ; $7cad: $01 $b7 $f8
    or b                                          ; $7cb0: $b0
    ld [hl], c                                    ; $7cb1: $71
    ld l, $cb                                     ; $7cb2: $2e $cb
    ldh a, [$97]                                  ; $7cb4: $f0 $97
    or l                                          ; $7cb6: $b5
    rla                                           ; $7cb7: $17
    ld e, h                                       ; $7cb8: $5c
    or e                                          ; $7cb9: $b3
    ld c, h                                       ; $7cba: $4c
    ld sp, hl                                     ; $7cbb: $f9

Call_057_7cbc:
    or a                                          ; $7cbc: $b7
    rra                                           ; $7cbd: $1f
    ld b, [hl]                                    ; $7cbe: $46
    ld [hl], h                                    ; $7cbf: $74
    ret                                           ; $7cc0: $c9


    ld sp, $3f5d                                  ; $7cc1: $31 $5d $3f
    cp [hl]                                       ; $7cc4: $be
    ld [hl], e                                    ; $7cc5: $73
    ld a, [$0886]                                 ; $7cc6: $fa $86 $08
    db $dd                                        ; $7cc9: $dd
    and $b9                                       ; $7cca: $e6 $b9
    or $63                                        ; $7ccc: $f6 $63
    db $f4                                        ; $7cce: $f4
    ld [hl-], a                                   ; $7ccf: $32
    call $d29e                                    ; $7cd0: $cd $9e $d2
    ld [hl], a                                    ; $7cd3: $77
    ld e, h                                       ; $7cd4: $5c
    adc e                                         ; $7cd5: $8b
    sbc d                                         ; $7cd6: $9a
    sub $be                                       ; $7cd7: $d6 $be
    inc b                                         ; $7cd9: $04
    rst $10                                       ; $7cda: $d7
    cp $94                                        ; $7cdb: $fe $94
    rst $10                                       ; $7cdd: $d7
    sub l                                         ; $7cde: $95
    sub h                                         ; $7cdf: $94
    ld h, a                                       ; $7ce0: $67
    ld a, [hl]                                    ; $7ce1: $7e
    and a                                         ; $7ce2: $a7
    ld h, e                                       ; $7ce3: $63
    ld sp, $b75c                                  ; $7ce4: $31 $5c $b7
    ld [hl], a                                    ; $7ce7: $77
    ld h, d                                       ; $7ce8: $62
    and a                                         ; $7ce9: $a7
    ld c, e                                       ; $7cea: $4b
    call nz, Call_000_1fb5                        ; $7ceb: $c4 $b5 $1f
    and e                                         ; $7cee: $a3
    rst $00                                       ; $7cef: $c7
    push af                                       ; $7cf0: $f5
    ld c, b                                       ; $7cf1: $48
    jp nc, $1105                                  ; $7cf2: $d2 $05 $11

    or a                                          ; $7cf5: $b7
    cp a                                          ; $7cf6: $bf
    ld e, d                                       ; $7cf7: $5a
    daa                                           ; $7cf8: $27
    and a                                         ; $7cf9: $a7
    db $d3                                        ; $7cfa: $d3
    and $e5                                       ; $7cfb: $e6 $e5
    or b                                          ; $7cfd: $b0
    db $d3                                        ; $7cfe: $d3
    call z, $dfe3                                 ; $7cff: $cc $e3 $df
    sub [hl]                                      ; $7d02: $96
    db $fc                                        ; $7d03: $fc
    jp hl                                         ; $7d04: $e9


    ld [de], a                                    ; $7d05: $12
    inc l                                         ; $7d06: $2c
    ld e, $9d                                     ; $7d07: $1e $9d
    xor e                                         ; $7d09: $ab
    ld h, l                                       ; $7d0a: $65
    ld e, [hl]                                    ; $7d0b: $5e
    ld e, c                                       ; $7d0c: $59
    sbc c                                         ; $7d0d: $99
    ld hl, $2902                                  ; $7d0e: $21 $02 $29
    add hl, de                                    ; $7d11: $19
    rrca                                          ; $7d12: $0f
    ccf                                           ; $7d13: $3f
    ld e, c                                       ; $7d14: $59
    ld e, c                                       ; $7d15: $59
    cp c                                          ; $7d16: $b9
    or h                                          ; $7d17: $b4
    dec sp                                        ; $7d18: $3b
    call nc, Call_000_0fda                        ; $7d19: $d4 $da $0f
    pop bc                                        ; $7d1c: $c1
    dec [hl]                                      ; $7d1d: $35
    db $fc                                        ; $7d1e: $fc
    ld b, h                                       ; $7d1f: $44
    cp e                                          ; $7d20: $bb
    di                                            ; $7d21: $f3
    ld e, l                                       ; $7d22: $5d
    and e                                         ; $7d23: $a3
    ld e, a                                       ; $7d24: $5f
    ld e, c                                       ; $7d25: $59
    add [hl]                                      ; $7d26: $86
    cp a                                          ; $7d27: $bf
    db $ec                                        ; $7d28: $ec

Jump_057_7d29:
    or l                                          ; $7d29: $b5
    add $5f                                       ; $7d2a: $c6 $5f
    pop bc                                        ; $7d2c: $c1
    push af                                       ; $7d2d: $f5
    inc a                                         ; $7d2e: $3c
    sbc c                                         ; $7d2f: $99
    ld l, e                                       ; $7d30: $6b
    daa                                           ; $7d31: $27
    ld a, [hl]                                    ; $7d32: $7e
    ld a, [c]                                     ; $7d33: $f2
    sub h                                         ; $7d34: $94
    sub l                                         ; $7d35: $95
    dec bc                                        ; $7d36: $0b
    ld [hl+], a                                   ; $7d37: $22
    ld [hl], a                                    ; $7d38: $77
    jp hl                                         ; $7d39: $e9


    push hl                                       ; $7d3a: $e5
    ld a, [de]                                    ; $7d3b: $1a
    ld c, c                                       ; $7d3c: $49
    dec l                                         ; $7d3d: $2d
    db $e3                                        ; $7d3e: $e3
    db $dd                                        ; $7d3f: $dd
    ld e, [hl]                                    ; $7d40: $5e
    ld a, [$9e7a]                                 ; $7d41: $fa $7a $9e
    inc e                                         ; $7d44: $1c
    res 1, b                                      ; $7d45: $cb $88
    and a                                         ; $7d47: $a7
    sub h                                         ; $7d48: $94
    sub a                                         ; $7d49: $97
    add sp, $22                                   ; $7d4a: $e8 $22
    and $e5                                       ; $7d4c: $e6 $e5
    call nz, $cb35                                ; $7d4e: $c4 $35 $cb
    and d                                         ; $7d51: $a2
    and [hl]                                      ; $7d52: $a6
    or l                                          ; $7d53: $b5
    cpl                                           ; $7d54: $2f
    ld h, c                                       ; $7d55: $61
    ld a, a                                       ; $7d56: $7f
    ld a, l                                       ; $7d57: $7d
    ld d, l                                       ; $7d58: $55
    ei                                            ; $7d59: $fb
    ld h, c                                       ; $7d5a: $61
    pop af                                        ; $7d5b: $f1
    ld h, c                                       ; $7d5c: $61
    or d                                          ; $7d5d: $b2
    rla                                           ; $7d5e: $17
    ld [bc], a                                    ; $7d5f: $02

jr_057_7d60:
    dec a                                         ; $7d60: $3d
    cp d                                          ; $7d61: $ba
    inc l                                         ; $7d62: $2c
    or c                                          ; $7d63: $b1
    adc b                                         ; $7d64: $88
    ld h, l                                       ; $7d65: $65
    ld [$768b], a                                 ; $7d66: $ea $8b $76
    dec a                                         ; $7d69: $3d
    ld l, $fc                                     ; $7d6a: $2e $fc
    push bc                                       ; $7d6c: $c5
    jp c, $d6b9                                   ; $7d6d: $da $b9 $d6

Call_057_7d70:
    ret                                           ; $7d70: $c9


    dec hl                                        ; $7d71: $2b
    adc e                                         ; $7d72: $8b
    rst $20                                       ; $7d73: $e7
    db $10                                        ; $7d74: $10
    ld l, $21                                     ; $7d75: $2e $21
    or d                                          ; $7d77: $b2
    ld [hl-], a                                   ; $7d78: $32
    ld b, e                                       ; $7d79: $43
    inc b                                         ; $7d7a: $04
    ld a, l                                       ; $7d7b: $7d
    inc e                                         ; $7d7c: $1c
    halt                                          ; $7d7d: $76
    inc [hl]                                      ; $7d7e: $34
    ld [hl], d                                    ; $7d7f: $72
    sub [hl]                                      ; $7d80: $96
    db $fc                                        ; $7d81: $fc
    adc d                                         ; $7d82: $8a
    ld l, [hl]                                    ; $7d83: $6e
    ccf                                           ; $7d84: $3f
    xor h                                         ; $7d85: $ac
    db $e3                                        ; $7d86: $e3
    jr nc, jr_057_7d60                            ; $7d87: $30 $d7

    ld h, d                                       ; $7d89: $62
    add $d8                                       ; $7d8a: $c6 $d8
    inc a                                         ; $7d8c: $3c
    sbc l                                         ; $7d8d: $9d
    rst $30                                       ; $7d8e: $f7
    sub d                                         ; $7d8f: $92
    sbc l                                         ; $7d90: $9d
    ld hl, sp+$5a                                 ; $7d91: $f8 $5a
    inc sp                                        ; $7d93: $33
    rst $28                                       ; $7d94: $ef
    ld a, h                                       ; $7d95: $7c
    ld h, l                                       ; $7d96: $65
    ld e, c                                       ; $7d97: $59
    rst $00                                       ; $7d98: $c7
    ld h, c                                       ; $7d99: $61
    ld sp, $f1e3                                  ; $7d9a: $31 $e3 $f1
    ld l, a                                       ; $7d9d: $6f
    db $eb                                        ; $7d9e: $eb
    db $fd                                        ; $7d9f: $fd
    ld a, [de]                                    ; $7da0: $1a
    daa                                           ; $7da1: $27
    cp c                                          ; $7da2: $b9
    jr jr_057_7dc7                                ; $7da3: $18 $22

    rst $30                                       ; $7da5: $f7
    ld h, h                                       ; $7da6: $64
    res 1, b                                      ; $7da7: $cb $88
    ld d, a                                       ; $7da9: $57
    db $e3                                        ; $7daa: $e3
    rst $00                                       ; $7dab: $c7
    cp h                                          ; $7dac: $bc
    ld e, b                                       ; $7dad: $58
    ld c, a                                       ; $7dae: $4f
    cp [hl]                                       ; $7daf: $be
    db $e3                                        ; $7db0: $e3
    adc e                                         ; $7db1: $8b
    ld d, $0f                                     ; $7db2: $16 $0f
    ld a, a                                       ; $7db4: $7f
    or c                                          ; $7db5: $b1
    halt                                          ; $7db6: $76
    ret c                                         ; $7db7: $d8

    or d                                          ; $7db8: $b2
    adc [hl]                                      ; $7db9: $8e
    jp Jump_057_5788                              ; $7dba: $c3 $88 $57


    ei                                            ; $7dbd: $fb
    ld sp, $6c7a                                  ; $7dbe: $31 $7a $6c
    adc c                                         ; $7dc1: $89
    inc a                                         ; $7dc2: $3c
    ld l, d                                       ; $7dc3: $6a
    and l                                         ; $7dc4: $a5
    rlca                                          ; $7dc5: $07
    cpl                                           ; $7dc6: $2f

jr_057_7dc7:
    daa                                           ; $7dc7: $27
    xor [hl]                                      ; $7dc8: $ae
    add hl, hl                                    ; $7dc9: $29
    inc sp                                        ; $7dca: $33
    ld b, h                                       ; $7dcb: $44
    ld [hl], a                                    ; $7dcc: $77
    inc l                                         ; $7dcd: $2c
    and l                                         ; $7dce: $a5
    jp hl                                         ; $7dcf: $e9


    ld [hl], l                                    ; $7dd0: $75
    add $1f                                       ; $7dd1: $c6 $1f
    cp e                                          ; $7dd3: $bb
    ld b, [hl]                                    ; $7dd4: $46
    ld [hl], a                                    ; $7dd5: $77
    dec [hl]                                      ; $7dd6: $35
    sbc a                                         ; $7dd7: $9f
    add hl, hl                                    ; $7dd8: $29
    di                                            ; $7dd9: $f3
    ld c, [hl]                                    ; $7dda: $4e
    add $cb                                       ; $7ddb: $c6 $cb
    ld a, b                                       ; $7ddd: $78
    sub [hl]                                      ; $7dde: $96
    ld h, c                                       ; $7ddf: $61
    ld l, d                                       ; $7de0: $6a
    db $ed                                        ; $7de1: $ed
    rra                                           ; $7de2: $1f
    or $8e                                        ; $7de3: $f6 $8e
    jp Jump_057_6a48                              ; $7de5: $c3 $48 $6a


    ld c, $c1                                     ; $7de8: $0e $c1
    daa                                           ; $7dea: $27
    cp [hl]                                       ; $7deb: $be
    sub $20                                       ; $7dec: $d6 $20
    ld [bc], a                                    ; $7dee: $02
    ld a, l                                       ; $7def: $7d
    inc e                                         ; $7df0: $1c
    and $da                                       ; $7df1: $e6 $da
    and c                                         ; $7df3: $a1
    add $65                                       ; $7df4: $c6 $65
    and $3d                                       ; $7df6: $e6 $3d
    sbc [hl]                                      ; $7df8: $9e
    ld [hl-], a                                   ; $7df9: $32
    rst $08                                       ; $7dfa: $cf
    ld [c], a                                     ; $7dfb: $e2
    jp $c75e                                      ; $7dfc: $c3 $5e $c7


    ld h, c                                       ; $7dff: $61
    call nz, $35ab                                ; $7e00: $c4 $ab $35
    call $f1e1                                    ; $7e03: $cd $e1 $f1
    ld l, a                                       ; $7e06: $6f
    jp c, Jump_057_46b9                           ; $7e07: $da $b9 $46

    dec l                                         ; $7e0a: $2d
    sub [hl]                                      ; $7e0b: $96
    add [hl]                                      ; $7e0c: $86
    db $f4                                        ; $7e0d: $f4
    ld [hl], h                                    ; $7e0e: $74
    ld d, c                                       ; $7e0f: $51
    xor [hl]                                      ; $7e10: $ae
    add hl, hl                                    ; $7e11: $29
    ld e, l                                       ; $7e12: $5d

jr_057_7e13:
    sub h                                         ; $7e13: $94
    ld b, [hl]                                    ; $7e14: $46
    ld e, $44                                     ; $7e15: $1e $44
    ld [hl], a                                    ; $7e17: $77
    ld l, d                                       ; $7e18: $6a
    ld e, d                                       ; $7e19: $5a
    ei                                            ; $7e1a: $fb
    ld [de], a                                    ; $7e1b: $12
    adc $67                                       ; $7e1c: $ce $67
    db $fd                                        ; $7e1e: $fd
    sbc l                                         ; $7e1f: $9d
    ld c, [hl]                                    ; $7e20: $4e
    ld d, $cb                                     ; $7e21: $16 $cb
    sub h                                         ; $7e23: $94
    ld l, e                                       ; $7e24: $6b
    ld a, [hl-]                                   ; $7e25: $3a
    ld a, e                                       ; $7e26: $7b
    xor [hl]                                      ; $7e27: $ae
    and l                                         ; $7e28: $a5
    db $db                                        ; $7e29: $db
    ld h, a                                       ; $7e2a: $67
    sbc $6b                                       ; $7e2b: $de $6b
    ld c, c                                       ; $7e2d: $49

Jump_057_7e2e:
    xor [hl]                                      ; $7e2e: $ae
    or $03                                        ; $7e2f: $f6 $03
    ld b, h                                       ; $7e31: $44
    ld a, l                                       ; $7e32: $7d
    inc e                                         ; $7e33: $1c
    and $da                                       ; $7e34: $e6 $da
    sbc a                                         ; $7e36: $9f
    and d                                         ; $7e37: $a2
    xor d                                         ; $7e38: $aa
    db $fd                                        ; $7e39: $fd
    jr nc, jr_057_7e7e                            ; $7e3a: $30 $42

    rst $00                                       ; $7e3c: $c7
    ld e, l                                       ; $7e3d: $5d
    and l                                         ; $7e3e: $a5
    ld e, l                                       ; $7e3f: $5d
    rst $00                                       ; $7e40: $c7
    ld h, c                                       ; $7e41: $61
    pop hl                                        ; $7e42: $e1
    dec hl                                        ; $7e43: $2b
    push hl                                       ; $7e44: $e5
    jp c, $d18f                                   ; $7e45: $da $8f $d1

    dec sp                                        ; $7e48: $3b
    sbc a                                         ; $7e49: $9f
    reti                                          ; $7e4a: $d9


    inc hl                                        ; $7e4b: $23
    ld e, h                                       ; $7e4c: $5c
    bit 4, c                                      ; $7e4d: $cb $61
    pop af                                        ; $7e4f: $f1
    push bc                                       ; $7e50: $c5
    ld h, [hl]                                    ; $7e51: $66
    adc b                                         ; $7e52: $88
    nop                                           ; $7e53: $00
    add hl, hl                                    ; $7e54: $29
    ld c, l                                       ; $7e55: $4d
    xor a                                         ; $7e56: $af
    cp c                                          ; $7e57: $b9
    or $63                                        ; $7e58: $f6 $63
    db $f4                                        ; $7e5a: $f4
    sub h                                         ; $7e5b: $94
    ld h, l                                       ; $7e5c: $65
    ld d, $1f                                     ; $7e5d: $16 $1f
    or $88                                        ; $7e5f: $f6 $88
    daa                                           ; $7e61: $27
    sub [hl]                                      ; $7e62: $96
    db $fd                                        ; $7e63: $fd
    ld b, l                                       ; $7e64: $45
    cp l                                          ; $7e65: $bd
    ld [de], a                                    ; $7e66: $12
    rrc b                                         ; $7e67: $cb $08
    rla                                           ; $7e69: $17
    ld b, h                                       ; $7e6a: $44
    ld a, l                                       ; $7e6b: $7d
    inc e                                         ; $7e6c: $1c
    ld d, $a8                                     ; $7e6d: $16 $a8
    ld a, [de]                                    ; $7e6f: $1a
    ld c, c                                       ; $7e70: $49
    dec c                                         ; $7e71: $0d
    db $eb                                        ; $7e72: $eb
    rst $20                                       ; $7e73: $e7
    rst $00                                       ; $7e74: $c7
    ld e, b                                       ; $7e75: $58
    add hl, de                                    ; $7e76: $19
    ld h, e                                       ; $7e77: $63
    di                                            ; $7e78: $f3
    ld [hl], d                                    ; $7e79: $72
    jr jr_057_7e13                                ; $7e7a: $18 $97

    push bc                                       ; $7e7c: $c5
    dec [hl]                                      ; $7e7d: $35

jr_057_7e7e:
    sub d                                         ; $7e7e: $92
    sbc d                                         ; $7e7f: $9a
    ld h, h                                       ; $7e80: $64
    rr h                                          ; $7e81: $cb $1c
    add d                                         ; $7e83: $82
    ld b, l                                       ; $7e84: $45
    ld a, c                                       ; $7e85: $79
    and l                                         ; $7e86: $a5
    ld h, c                                       ; $7e87: $61

jr_057_7e88:
    db $ec                                        ; $7e88: $ec
    add d                                         ; $7e89: $82
    ld [$1c7d], sp                                ; $7e8a: $08 $7d $1c
    ld b, [hl]                                    ; $7e8d: $46
    rst $38                                       ; $7e8e: $ff
    jr jr_057_7e88                                ; $7e8f: $18 $f7

    ld h, e                                       ; $7e91: $63
    db $f4                                        ; $7e92: $f4
    ld c, b                                       ; $7e93: $48
    dec a                                         ; $7e94: $3d
    inc b                                         ; $7e95: $04
    or e                                          ; $7e96: $b3
    halt                                          ; $7e97: $76
    add a                                         ; $7e98: $87
    ld e, d                                       ; $7e99: $5a
    rst $00                                       ; $7e9a: $c7
    ld h, c                                       ; $7e9b: $61
    inc [hl]                                      ; $7e9c: $34
    ld d, l                                       ; $7e9d: $55
    ld c, e                                       ; $7e9e: $4b
    cp a                                          ; $7e9f: $bf
    ld a, [c]                                     ; $7ea0: $f2
    ld [$f48a], sp                                ; $7ea1: $08 $8a $f4
    ld c, b                                       ; $7ea4: $48
    ld l, d                                       ; $7ea5: $6a
    ld [hl], h                                    ; $7ea6: $74
    ld a, e                                       ; $7ea7: $7b
    pop af                                        ; $7ea8: $f1
    ld e, b                                       ; $7ea9: $58
    jr nz, jr_057_7eae                            ; $7eaa: $20 $02

    ld [hl], a                                    ; $7eac: $77
    sub [hl]                                      ; $7ead: $96

jr_057_7eae:
    dec h                                         ; $7eae: $25
    inc [hl]                                      ; $7eaf: $34
    adc a                                         ; $7eb0: $8f
    and [hl]                                      ; $7eb1: $a6
    ld l, d                                       ; $7eb2: $6a
    ret                                           ; $7eb3: $c9


    ccf                                           ; $7eb4: $3f
    add a                                         ; $7eb5: $87
    ld b, a                                       ; $7eb6: $47
    ld h, h                                       ; $7eb7: $64
    ld h, l                                       ; $7eb8: $65
    ld e, $49                                     ; $7eb9: $1e $49
    dec l                                         ; $7ebb: $2d
    db $dd                                        ; $7ebc: $dd
    ld [hl], d                                    ; $7ebd: $72
    adc h                                         ; $7ebe: $8c
    sub [hl]                                      ; $7ebf: $96
    dec e                                         ; $7ec0: $1d
    ld a, c                                       ; $7ec1: $79
    push bc                                       ; $7ec2: $c5
    inc hl                                        ; $7ec3: $23
    sub d                                         ; $7ec4: $92
    ld a, a                                       ; $7ec5: $7f
    or $63                                        ; $7ec6: $f6 $63
    db $f4                                        ; $7ec8: $f4
    ld [hl], h                                    ; $7ec9: $74
    ld d, c                                       ; $7eca: $51
    xor [hl]                                      ; $7ecb: $ae
    db $e4                                        ; $7ecc: $e4
    rra                                           ; $7ecd: $1f
    ld sp, hl                                     ; $7ece: $f9
    ld [de], a                                    ; $7ecf: $12
    inc l                                         ; $7ed0: $2c
    inc hl                                        ; $7ed1: $23
    sbc [hl]                                      ; $7ed2: $9e
    sbc h                                         ; $7ed3: $9c
    and l                                         ; $7ed4: $a5
    xor l                                         ; $7ed5: $ad
    jp z, $e3b5                                   ; $7ed6: $ca $b5 $e3

    nop                                           ; $7ed9: $00
    ld de, $55f7                                  ; $7eda: $11 $f7 $55
    and [hl]                                      ; $7edd: $a6
    ld a, l                                       ; $7ede: $7d
    ld c, [hl]                                    ; $7edf: $4e
    xor [hl]                                      ; $7ee0: $ae
    db $dd                                        ; $7ee1: $dd
    dec c                                         ; $7ee2: $0d
    ld a, [hl-]                                   ; $7ee3: $3a
    ld b, l                                       ; $7ee4: $45
    db $f4                                        ; $7ee5: $f4
    ld [hl+], a                                   ; $7ee6: $22
    rst $20                                       ; $7ee7: $e7
    sbc d                                         ; $7ee8: $9a
    ld h, l                                       ; $7ee9: $65
    cp c                                          ; $7eea: $b9
    sub h                                         ; $7eeb: $94
    add l                                         ; $7eec: $85
    db $db                                        ; $7eed: $db
    rrca                                          ; $7eee: $0f
    inc hl                                        ; $7eef: $23
    cp d                                          ; $7ef0: $ba
    call nz, $d738                                ; $7ef1: $c4 $38 $d7
    add sp, $5c                                   ; $7ef4: $e8 $5c
    ld a, e                                       ; $7ef6: $7b
    xor l                                         ; $7ef7: $ad
    ld a, c                                       ; $7ef8: $79
    and c                                         ; $7ef9: $a1
    ld a, $4d                                     ; $7efa: $3e $4d
    ld a, a                                       ; $7efc: $7f
    add hl, bc                                    ; $7efd: $09
    ld d, $43                                     ; $7efe: $16 $43
    inc b                                         ; $7f00: $04
    ld [hl], a                                    ; $7f01: $77
    ld l, d                                       ; $7f02: $6a
    ld e, d                                       ; $7f03: $5a
    ei                                            ; $7f04: $fb
    ld [de], a                                    ; $7f05: $12
    ld l, $11                                     ; $7f06: $2e $11
    ld e, l                                       ; $7f08: $5d
    cp c                                          ; $7f09: $b9
    ld e, l                                       ; $7f0a: $5d
    ld [hl], d                                    ; $7f0b: $72
    ld [hl], h                                    ; $7f0c: $74
    sub d                                         ; $7f0d: $92
    ld a, h                                       ; $7f0e: $7c
    ld c, e                                       ; $7f0f: $4b
    cp $e8                                        ; $7f10: $fe $e8
    rra                                           ; $7f12: $1f
    db $e3                                        ; $7f13: $e3
    ld hl, sp-$49                                 ; $7f14: $f8 $b7
    dec [hl]                                      ; $7f16: $35
    ld e, l                                       ; $7f17: $5d
    ld c, [hl]                                    ; $7f18: $4e
    ld h, a                                       ; $7f19: $67
    ld a, a                                       ; $7f1a: $7f
    ld [$2585], a                                 ; $7f1b: $ea $85 $25
    xor a                                         ; $7f1e: $af
    sub [hl]                                      ; $7f1f: $96
    db $fc                                        ; $7f20: $fc
    adc d                                         ; $7f21: $8a
    ld l, [hl]                                    ; $7f22: $6e
    ccf                                           ; $7f23: $3f
    inc l                                         ; $7f24: $2c
    ld h, h                                       ; $7f25: $64
    sub l                                         ; $7f26: $95
    ld a, [de]                                    ; $7f27: $1a
    ld bc, $1c7d                                  ; $7f28: $01 $7d $1c
    ld b, [hl]                                    ; $7f2b: $46
    cp h                                          ; $7f2c: $bc
    ld a, [de]                                    ; $7f2d: $1a
    db $fd                                        ; $7f2e: $fd
    ld [hl+], a                                   ; $7f2f: $22
    rst $38                                       ; $7f30: $ff
    inc de                                        ; $7f31: $13
    sub a                                         ; $7f32: $97
    halt                                          ; $7f33: $76
    ret nc                                        ; $7f34: $d0

    ld [$5a8f], sp                                ; $7f35: $08 $8f $5a
    ei                                            ; $7f38: $fb
    pop de                                        ; $7f39: $d1
    and e                                         ; $7f3a: $a3
    halt                                          ; $7f3b: $76
    ld h, d                                       ; $7f3c: $62
    db $fd                                        ; $7f3d: $fd
    call nz, Call_057_56c3                        ; $7f3e: $c4 $c3 $56
    and e                                         ; $7f41: $a3
    dec sp                                        ; $7f42: $3b
    ld a, l                                       ; $7f43: $7d
    dec d                                         ; $7f44: $15
    ld l, c                                       ; $7f45: $69
    ld de, $0088                                  ; $7f46: $11 $88 $00
    cp l                                          ; $7f49: $bd
    or e                                          ; $7f4a: $b3
    ld [c], a                                     ; $7f4b: $e2
    dec [hl]                                      ; $7f4c: $35
    daa                                           ; $7f4d: $27
    ld l, $d6                                     ; $7f4e: $2e $d6
    xor [hl]                                      ; $7f50: $ae
    rst $20                                       ; $7f51: $e7
    ld d, l                                       ; $7f52: $55
    ld l, c                                       ; $7f53: $69
    ld d, d                                       ; $7f54: $52
    inc hl                                        ; $7f55: $23
    ld a, l                                       ; $7f56: $7d
    inc e                                         ; $7f57: $1c
    ld d, $9f                                     ; $7f58: $16 $9f
    ld c, h                                       ; $7f5a: $4c
    ld a, h                                       ; $7f5b: $7c
    ret c                                         ; $7f5c: $d8

    or d                                          ; $7f5d: $b2
    rra                                           ; $7f5e: $1f
    and e                                         ; $7f5f: $a3
    sub a                                         ; $7f60: $97
    ld e, b                                       ; $7f61: $58
    ret c                                         ; $7f62: $d8

    db $e3                                        ; $7f63: $e3
    rst $18                                       ; $7f64: $df
    halt                                          ; $7f65: $76
    ld h, d                                       ; $7f66: $62
    ld l, [hl]                                    ; $7f67: $6e
    sub [hl]                                      ; $7f68: $96
    and l                                         ; $7f69: $a5
    dec e                                         ; $7f6a: $1d
    inc [hl]                                      ; $7f6b: $34
    ld [hl+], a                                   ; $7f6c: $22
    xor [hl]                                      ; $7f6d: $ae
    call nc, $b9bb                                ; $7f6e: $d4 $bb $b9
    dec [hl]                                      ; $7f71: $35
    rrca                                          ; $7f72: $0f
    ret z                                         ; $7f73: $c8

    ld l, a                                       ; $7f74: $6f
    db $ec                                        ; $7f75: $ec
    ld a, [hl-]                                   ; $7f76: $3a
    ld d, $d7                                     ; $7f77: $16 $d7
    adc b                                         ; $7f79: $88
    ld d, a                                       ; $7f7a: $57
    dec bc                                        ; $7f7b: $0b
    inc d                                         ; $7f7c: $14
    di                                            ; $7f7d: $f3
    ld c, b                                       ; $7f7e: $48
    ld l, d                                       ; $7f7f: $6a
    cp l                                          ; $7f80: $bd
    ld e, a                                       ; $7f81: $5f
    db $e3                                        ; $7f82: $e3
    inc h                                         ; $7f83: $24
    rla                                           ; $7f84: $17
    ld b, e                                       ; $7f85: $43
    inc b                                         ; $7f86: $04
    or a                                          ; $7f87: $b7
    or a                                          ; $7f88: $b7
    call z, Call_057_7a9c                         ; $7f89: $cc $9c $7a
    ld a, l                                       ; $7f8c: $7d
    inc e                                         ; $7f8d: $1c
    sub [hl]                                      ; $7f8e: $96
    ld l, [hl]                                    ; $7f8f: $6e
    ld e, [hl]                                    ; $7f90: $5e
    ld c, $87                                     ; $7f91: $0e $87
    ld e, d                                       ; $7f93: $5a
    ld a, [c]                                     ; $7f94: $f2
    ld e, d                                       ; $7f95: $5a
    ldh [$f1], a                                  ; $7f96: $e0 $f1
    ld l, a                                       ; $7f98: $6f
    db $eb                                        ; $7f99: $eb
    ld e, l                                       ; $7f9a: $5d
    sbc a                                         ; $7f9b: $9f
    and [hl]                                      ; $7f9c: $a6
    cp a                                          ; $7f9d: $bf
    add h                                         ; $7f9e: $84
    call nc, $f708                                ; $7f9f: $d4 $08 $f7
    ld h, h                                       ; $7fa2: $64
    bit 0, d                                      ; $7fa3: $cb $42
    ld a, l                                       ; $7fa5: $7d
    sbc d                                         ; $7fa6: $9a
    halt                                          ; $7fa7: $76
    adc l                                         ; $7fa8: $8d
    ld a, b                                       ; $7fa9: $78
    dec [hl]                                      ; $7faa: $35
    ld [hl+], a                                   ; $7fab: $22
    add a                                         ; $7fac: $87
    ret nz                                        ; $7fad: $c0

    ld d, $71                                     ; $7fae: $16 $71
    dec l                                         ; $7fb0: $2d
    add a                                         ; $7fb1: $87
    ld b, e                                       ; $7fb2: $43
    ld l, c                                       ; $7fb3: $69
    rst $30                                       ; $7fb4: $f7
    ld h, e                                       ; $7fb5: $63
    db $f4                                        ; $7fb6: $f4
    jp nc, Jump_000_3caf                          ; $7fb7: $d2 $af $3c

    ld [hl], c                                    ; $7fba: $71
    ld a, [hl-]                                   ; $7fbb: $3a
    dec c                                         ; $7fbc: $0d
    ld de, $6a77                                  ; $7fbd: $11 $77 $6a
    ld e, d                                       ; $7fc0: $5a
    ei                                            ; $7fc1: $fb
    ld [de], a                                    ; $7fc2: $12
    ld e, h                                       ; $7fc3: $5c
    inc hl                                        ; $7fc4: $23
    ld e, [hl]                                    ; $7fc5: $5e
    dec l                                         ; $7fc6: $2d
    ld a, $39                                     ; $7fc7: $3e $39
    or c                                          ; $7fc9: $b1
    db $e3                                        ; $7fca: $e3
    db $fd                                        ; $7fcb: $fd
    jr @-$41                                      ; $7fcc: $18 $bd

    ld h, [hl]                                    ; $7fce: $66
    sub d                                         ; $7fcf: $92
    ld [hl], h                                    ; $7fd0: $74
    ld l, c                                       ; $7fd1: $69
    add a                                         ; $7fd2: $87
    dec l                                         ; $7fd3: $2d
    sub e                                         ; $7fd4: $93
    ld l, h                                       ; $7fd5: $6c
    ld e, c                                       ; $7fd6: $59
    xor b                                         ; $7fd7: $a8
    ld c, a                                       ; $7fd8: $4f
    db $d3                                        ; $7fd9: $d3
    xor [hl]                                      ; $7fda: $ae
    ld de, $c6af                                  ; $7fdb: $11 $af $c6
    ld d, $71                                     ; $7fde: $16 $71
    ld b, c                                       ; $7fe0: $41
    inc b                                         ; $7fe1: $04
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
